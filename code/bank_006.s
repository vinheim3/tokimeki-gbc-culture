; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

	ld sp, hl                                        ; $4000: $f9
	ld hl, $455a                                     ; $4001: $21 $5a $45
	db $d3                                           ; $4004: $d3
	call nc, Call_006_5621                           ; $4005: $d4 $21 $56
	ld c, e                                          ; $4008: $4b
	ld hl, $21d5                                     ; $4009: $21 $d5 $21
	nop                                              ; $400c: $00
	ld b, b                                          ; $400d: $40
	nop                                              ; $400e: $00
	add b                                            ; $400f: $80
	ld hl, $457d                                     ; $4010: $21 $7d $45
	ld b, b                                          ; $4013: $40
	adc d                                            ; $4014: $8a
	rst $38                                          ; $4015: $ff
	ld sp, hl                                        ; $4016: $f9
	ld hl, $500e                                     ; $4017: $21 $0e $50
	db $d3                                           ; $401a: $d3
	call nc, $4521                                   ; $401b: $d4 $21 $45
	ld d, c                                          ; $401e: $51
	inc hl                                           ; $401f: $23
	push de                                          ; $4020: $d5
	ld hl, $4b72                                     ; $4021: $21 $72 $4b
	nop                                              ; $4024: $00
	add b                                            ; $4025: $80
	ld hl, $502f                                     ; $4026: $21 $2f $50
	ld b, b                                          ; $4029: $40
	adc d                                            ; $402a: $8a
	rst $38                                          ; $402b: $ff
	ld hl, $514b                                     ; $402c: $21 $4b $51
	ld hl, $519d                                     ; $402f: $21 $9d $51
	ld hl, $51a5                                     ; $4032: $21 $a5 $51
	ld hl, $5201                                     ; $4035: $21 $01 $52
	ld hl, $520a                                     ; $4038: $21 $0a $52
	ld hl, $5272                                     ; $403b: $21 $72 $52
	ld hl, $527b                                     ; $403e: $21 $7b $52
	ld hl, $52d7                                     ; $4041: $21 $d7 $52
	ld hl, $52de                                     ; $4044: $21 $de $52
	ld hl, $5332                                     ; $4047: $21 $32 $53
	ld hl, $533b                                     ; $404a: $21 $3b $53
	ld hl, $53b9                                     ; $404d: $21 $b9 $53
	ld hl, $53c3                                     ; $4050: $21 $c3 $53
	ld hl, $5439                                     ; $4053: $21 $39 $54
	ld hl, $5443                                     ; $4056: $21 $43 $54
	ld hl, $54c4                                     ; $4059: $21 $c4 $54
	ld hl, $54ce                                     ; $405c: $21 $ce $54
	ld hl, $554e                                     ; $405f: $21 $4e $55
	ld hl, $5555                                     ; $4062: $21 $55 $55
	ld hl, $55be                                     ; $4065: $21 $be $55
	ld hl, $55c5                                     ; $4068: $21 $c5 $55
	ld hl, $5636                                     ; $406b: $21 $36 $56
	ld hl, $563d                                     ; $406e: $21 $3d $56
	ld hl, $56ba                                     ; $4071: $21 $ba $56
	rst $38                                          ; $4074: $ff
	ld sp, hl                                        ; $4075: $f9
	ld hl, $5aa5                                     ; $4076: $21 $a5 $5a
	db $d3                                           ; $4079: $d3
	call nc, $5a21                                   ; $407a: $d4 $21 $5a
	ld e, h                                          ; $407d: $5c
	inc hl                                           ; $407e: $23
	push de                                          ; $407f: $d5
	ld hl, $56c1                                     ; $4080: $21 $c1 $56
	nop                                              ; $4083: $00
	add b                                            ; $4084: $80
	ld hl, $5ab2                                     ; $4085: $21 $b2 $5a
	ld b, b                                          ; $4088: $40
	adc d                                            ; $4089: $8a
	rst $38                                          ; $408a: $ff
	ld hl, $5c6a                                     ; $408b: $21 $6a $5c
	ld hl, $5d0c                                     ; $408e: $21 $0c $5d
	ld hl, $5d13                                     ; $4091: $21 $13 $5d
	ld hl, $5d87                                     ; $4094: $21 $87 $5d
	ld hl, $5d8e                                     ; $4097: $21 $8e $5d
	ld hl, $5e15                                     ; $409a: $21 $15 $5e
	ld hl, $5e1c                                     ; $409d: $21 $1c $5e
	ld hl, $5ea8                                     ; $40a0: $21 $a8 $5e
	ld hl, $5eb2                                     ; $40a3: $21 $b2 $5e
	ld hl, $5f50                                     ; $40a6: $21 $50 $5f
	ld hl, $5f5a                                     ; $40a9: $21 $5a $5f
	ld hl, $5ff5                                     ; $40ac: $21 $f5 $5f
	ld hl, $5fff                                     ; $40af: $21 $ff $5f
	ld hl, $6085                                     ; $40b2: $21 $85 $60
	ld hl, $608f                                     ; $40b5: $21 $8f $60
	ld hl, $6123                                     ; $40b8: $21 $23 $61
	ld hl, $612d                                     ; $40bb: $21 $2d $61
	ld hl, $61ad                                     ; $40be: $21 $ad $61
	ld hl, $61b8                                     ; $40c1: $21 $b8 $61
	ld hl, $6289                                     ; $40c4: $21 $89 $62
	rst $38                                          ; $40c7: $ff
	ld sp, hl                                        ; $40c8: $f9
	ld hl, $677f                                     ; $40c9: $21 $7f $67
	db $d3                                           ; $40cc: $d3
	call nc, Call_006_4b21                           ; $40cd: $d4 $21 $4b
	ld l, e                                          ; $40d0: $6b
	dec b                                            ; $40d1: $05
	push de                                          ; $40d2: $d5
	ld hl, $6294                                     ; $40d3: $21 $94 $62
	nop                                              ; $40d6: $00
	add b                                            ; $40d7: $80
	ld hl, $679a                                     ; $40d8: $21 $9a $67
	ret nz                                           ; $40db: $c0

	adc h                                            ; $40dc: $8c
	rst $38                                          ; $40dd: $ff
	ld sp, hl                                        ; $40de: $f9
	ld hl, $6c9a                                     ; $40df: $21 $9a $6c
	db $d3                                           ; $40e2: $d3
	call nc, $6e21                                   ; $40e3: $d4 $21 $6e
	ld l, e                                          ; $40e6: $6b
	ld b, b                                          ; $40e7: $40
	adc d                                            ; $40e8: $8a
	rst $38                                          ; $40e9: $ff
	ld [hl+], a                                      ; $40ea: $22
	nop                                              ; $40eb: $00
	ld b, b                                          ; $40ec: $40
	ld [hl+], a                                      ; $40ed: $22
	ld d, e                                          ; $40ee: $53
	ld b, h                                          ; $40ef: $44
	ld [hl+], a                                      ; $40f0: $22
	ld l, c                                          ; $40f1: $69
	ld b, h                                          ; $40f2: $44
	ld [hl+], a                                      ; $40f3: $22
	sbc $48                                          ; $40f4: $de $48
	rst $38                                          ; $40f6: $ff
	ld sp, hl                                        ; $40f7: $f9
	ld [hl+], a                                      ; $40f8: $22
	ld sp, hl                                        ; $40f9: $f9
	ld c, b                                          ; $40fa: $48
	nop                                              ; $40fb: $00
	add b                                            ; $40fc: $80
	db $fc                                           ; $40fd: $fc
	jr nz, jr_006_4100                               ; $40fe: $20 $00

jr_006_4100:
	ld b, b                                          ; $4100: $40
	ld b, e                                          ; $4101: $43
	push de                                          ; $4102: $d5
	rst $38                                          ; $4103: $ff
	nop                                              ; $4104: $00
	and b                                            ; $4105: $a0
	ld d, b                                          ; $4106: $50
	ld [hl+], a                                      ; $4107: $22
	call $224c                                       ; $4108: $cd $4c $22
	cp b                                             ; $410b: $b8
	ld d, c                                          ; $410c: $51
	rst $38                                          ; $410d: $ff
	ld sp, hl                                        ; $410e: $f9
	ld [hl+], a                                      ; $410f: $22
	push hl                                          ; $4110: $e5
	ld d, c                                          ; $4111: $51
	nop                                              ; $4112: $00
	add b                                            ; $4113: $80
	db $fc                                           ; $4114: $fc
	jr nz, @-$7a                                     ; $4115: $20 $84

	ld b, b                                          ; $4117: $40
	ld b, e                                          ; $4118: $43
	ret c                                            ; $4119: $d8

	rst $38                                          ; $411a: $ff
	ld sp, hl                                        ; $411b: $f9
	ld [hl+], a                                      ; $411c: $22
	inc e                                            ; $411d: $1c
	ld e, [hl]                                       ; $411e: $5e
	db $d3                                           ; $411f: $d3
	call nc, $8322                                   ; $4120: $d4 $22 $83
	ld h, b                                          ; $4123: $60
	inc hl                                           ; $4124: $23
	push de                                          ; $4125: $d5
	ld [hl+], a                                      ; $4126: $22
	ld b, d                                          ; $4127: $42
	ld e, b                                          ; $4128: $58
	nop                                              ; $4129: $00
	add b                                            ; $412a: $80
	ld [hl+], a                                      ; $412b: $22
	dec l                                            ; $412c: $2d
	ld e, [hl]                                       ; $412d: $5e
	ld b, b                                          ; $412e: $40
	adc d                                            ; $412f: $8a
	rst $38                                          ; $4130: $ff
	ld [hl+], a                                      ; $4131: $22
	adc d                                            ; $4132: $8a
	ld h, b                                          ; $4133: $60
	ld [hl+], a                                      ; $4134: $22
	ld b, e                                          ; $4135: $43
	ld h, c                                          ; $4136: $61
	ld [hl+], a                                      ; $4137: $22
	ld c, l                                          ; $4138: $4d
	ld h, c                                          ; $4139: $61
	ld [hl+], a                                      ; $413a: $22
	ld d, c                                          ; $413b: $51
	ld h, d                                          ; $413c: $62
	ld [hl+], a                                      ; $413d: $22
	ld e, e                                          ; $413e: $5b
	ld h, d                                          ; $413f: $62
	ld [hl+], a                                      ; $4140: $22
	jr c, jr_006_41a6                                ; $4141: $38 $63

	ld [hl+], a                                      ; $4143: $22
	ld b, h                                          ; $4144: $44
	ld h, e                                          ; $4145: $63
	ld [hl+], a                                      ; $4146: $22
	cp $63                                           ; $4147: $fe $63
	ld [hl+], a                                      ; $4149: $22
	add hl, bc                                       ; $414a: $09
	ld h, h                                          ; $414b: $64
	ld [hl+], a                                      ; $414c: $22
	jp c, $2264                                      ; $414d: $da $64 $22

	and $64                                          ; $4150: $e6 $64
	ld [hl+], a                                      ; $4152: $22
	xor h                                            ; $4153: $ac
	ld h, l                                          ; $4154: $65
	ld [hl+], a                                      ; $4155: $22
	cp b                                             ; $4156: $b8
	ld h, l                                          ; $4157: $65
	ld [hl+], a                                      ; $4158: $22
	ld [hl], l                                       ; $4159: $75
	ld h, [hl]                                       ; $415a: $66
	ld [hl+], a                                      ; $415b: $22
	add c                                            ; $415c: $81
	ld h, [hl]                                       ; $415d: $66
	ld [hl+], a                                      ; $415e: $22
	dec sp                                           ; $415f: $3b
	ld h, a                                          ; $4160: $67
	ld [hl+], a                                      ; $4161: $22
	ld c, b                                          ; $4162: $48
	ld h, a                                          ; $4163: $67
	ld [hl+], a                                      ; $4164: $22
	rst $38                                          ; $4165: $ff
	ld h, a                                          ; $4166: $67
	ld [hl+], a                                      ; $4167: $22
	inc c                                            ; $4168: $0c
	ld l, b                                          ; $4169: $68
	ld [hl+], a                                      ; $416a: $22
	ret z                                            ; $416b: $c8

	ld l, b                                          ; $416c: $68
	ld [hl+], a                                      ; $416d: $22
	push de                                          ; $416e: $d5
	ld l, b                                          ; $416f: $68
	ld [hl+], a                                      ; $4170: $22
	sub [hl]                                         ; $4171: $96
	ld l, c                                          ; $4172: $69
	ld [hl+], a                                      ; $4173: $22
	and e                                            ; $4174: $a3
	ld l, c                                          ; $4175: $69
	ld [hl+], a                                      ; $4176: $22
	ld [hl], b                                       ; $4177: $70
	ld l, d                                          ; $4178: $6a
	ld [hl+], a                                      ; $4179: $22
	ld a, l                                          ; $417a: $7d
	ld l, d                                          ; $417b: $6a
	ld [hl+], a                                      ; $417c: $22
	sbc [hl]                                         ; $417d: $9e
	ld l, e                                          ; $417e: $6b
	ld [hl+], a                                      ; $417f: $22
	xor e                                            ; $4180: $ab
	ld l, e                                          ; $4181: $6b
	ld [hl+], a                                      ; $4182: $22
	ldh [$6c], a                                     ; $4183: $e0 $6c
	rst $38                                          ; $4185: $ff
	ld [hl+], a                                      ; $4186: $22
	db $ed                                           ; $4187: $ed
	ld l, h                                          ; $4188: $6c
	ld [hl+], a                                      ; $4189: $22
	ld [$226e], sp                                   ; $418a: $08 $6e $22
	dec d                                            ; $418d: $15
	ld l, [hl]                                       ; $418e: $6e
	ld [hl+], a                                      ; $418f: $22
	ld a, [de]                                       ; $4190: $1a
	ld l, a                                          ; $4191: $6f
	ld [hl+], a                                      ; $4192: $22
	inc h                                            ; $4193: $24
	ld l, a                                          ; $4194: $6f
	ld [hl+], a                                      ; $4195: $22
	dec bc                                           ; $4196: $0b
	ld [hl], b                                       ; $4197: $70

jr_006_4198:
	rst $38                                          ; $4198: $ff
	dec h                                            ; $4199: $25
	inc c                                            ; $419a: $0c
	ld b, b                                          ; $419b: $40
	dec h                                            ; $419c: $25
	ld c, e                                          ; $419d: $4b
	ld b, e                                          ; $419e: $43
	dec h                                            ; $419f: $25
	ld [hl], b                                       ; $41a0: $70

jr_006_41a1:
	ld b, e                                          ; $41a1: $43
	dec h                                            ; $41a2: $25
	add c                                            ; $41a3: $81
	ld b, a                                          ; $41a4: $47
	rst $38                                          ; $41a5: $ff

jr_006_41a6:
	ld sp, hl                                        ; $41a6: $f9
	dec h                                            ; $41a7: $25
	xor e                                            ; $41a8: $ab
	ld b, a                                          ; $41a9: $47
	ld b, b                                          ; $41aa: $40
	adc d                                            ; $41ab: $8a
	db $fc                                           ; $41ac: $fc
	jr nz, jr_006_41a1                               ; $41ad: $20 $f2

	ld b, d                                          ; $41af: $42
	ld b, e                                          ; $41b0: $43
	push de                                          ; $41b1: $d5
	rst $38                                          ; $41b2: $ff
	and h                                            ; $41b3: $a4
	and b                                            ; $41b4: $a0
	ld d, b                                          ; $41b5: $50
	dec h                                            ; $41b6: $25
	inc bc                                           ; $41b7: $03
	ld c, c                                          ; $41b8: $49
	dec h                                            ; $41b9: $25
	jr nz, jr_006_4208                               ; $41ba: $20 $4c

	dec h                                            ; $41bc: $25
	inc a                                            ; $41bd: $3c
	ld c, h                                          ; $41be: $4c
	dec h                                            ; $41bf: $25
	adc [hl]                                         ; $41c0: $8e
	ld c, a                                          ; $41c1: $4f
	rst $38                                          ; $41c2: $ff
	dec h                                            ; $41c3: $25
	or [hl]                                          ; $41c4: $b6
	ld c, a                                          ; $41c5: $4f
	dec h                                            ; $41c6: $25
	ld [hl], l                                       ; $41c7: $75
	ld d, e                                          ; $41c8: $53
	dec h                                            ; $41c9: $25
	sbc h                                            ; $41ca: $9c
	ld d, e                                          ; $41cb: $53
	dec h                                            ; $41cc: $25
	db $ed                                           ; $41cd: $ed
	ld d, a                                          ; $41ce: $57
	rst $38                                          ; $41cf: $ff
	ld sp, hl                                        ; $41d0: $f9
	dec h                                            ; $41d1: $25
	inc b                                            ; $41d2: $04
	ld e, b                                          ; $41d3: $58
	ld b, b                                          ; $41d4: $40
	adc d                                            ; $41d5: $8a
	db $fc                                           ; $41d6: $fc
	jr nz, jr_006_4225                               ; $41d7: $20 $4c

	ld b, e                                          ; $41d9: $43
	ld b, e                                          ; $41da: $43
	push de                                          ; $41db: $d5
	rst $38                                          ; $41dc: $ff
	and h                                            ; $41dd: $a4
	and b                                            ; $41de: $a0
	ld d, b                                          ; $41df: $50
	dec h                                            ; $41e0: $25
	ld h, $59                                        ; $41e1: $26 $59
	dec h                                            ; $41e3: $25
	ld [de], a                                       ; $41e4: $12
	ld e, h                                          ; $41e5: $5c
	dec h                                            ; $41e6: $25
	inc a                                            ; $41e7: $3c
	ld e, h                                          ; $41e8: $5c
	dec h                                            ; $41e9: $25
	ld a, [bc]                                       ; $41ea: $0a
	ld e, a                                          ; $41eb: $5f
	rst $38                                          ; $41ec: $ff
	dec h                                            ; $41ed: $25
	ld sp, $255f                                     ; $41ee: $31 $5f $25
	cp a                                             ; $41f1: $bf
	ld h, d                                          ; $41f2: $62
	dec h                                            ; $41f3: $25
	jp hl                                            ; $41f4: $e9


	ld h, d                                          ; $41f5: $62
	dec h                                            ; $41f6: $25
	dec bc                                           ; $41f7: $0b
	ld h, a                                          ; $41f8: $67
	rst $38                                          ; $41f9: $ff
	ld sp, hl                                        ; $41fa: $f9
	dec h                                            ; $41fb: $25
	daa                                              ; $41fc: $27
	ld h, a                                          ; $41fd: $67
	ld b, b                                          ; $41fe: $40
	adc d                                            ; $41ff: $8a
	db $fc                                           ; $4200: $fc
	jr nz, jr_006_4198                               ; $4201: $20 $95

	ld b, e                                          ; $4203: $43
	ld b, e                                          ; $4204: $43
	push de                                          ; $4205: $d5
	rst $38                                          ; $4206: $ff
	and h                                            ; $4207: $a4

jr_006_4208:
	and b                                            ; $4208: $a0
	ld d, b                                          ; $4209: $50
	dec h                                            ; $420a: $25
	sbc d                                            ; $420b: $9a
	ld l, b                                          ; $420c: $68
	dec h                                            ; $420d: $25
	rrca                                             ; $420e: $0f
	ld l, h                                          ; $420f: $6c
	dec h                                            ; $4210: $25
	scf                                              ; $4211: $37
	ld l, h                                          ; $4212: $6c
	dec h                                            ; $4213: $25
	ccf                                              ; $4214: $3f
	ld l, a                                          ; $4215: $6f
	rst $38                                          ; $4216: $ff
	dec h                                            ; $4217: $25
	ld [hl], h                                       ; $4218: $74
	ld l, a                                          ; $4219: $6f
	dec h                                            ; $421a: $25
	add a                                            ; $421b: $87
	ld [hl], h                                       ; $421c: $74
	dec h                                            ; $421d: $25
	or a                                             ; $421e: $b7
	ld [hl], h                                       ; $421f: $74
	dec h                                            ; $4220: $25
	ld hl, sp+$77                                    ; $4221: $f8 $77
	rst $38                                          ; $4223: $ff
	dec h                                            ; $4224: $25

jr_006_4225:
	ld [de], a                                       ; $4225: $12
	ld a, b                                          ; $4226: $78
	dec h                                            ; $4227: $25
	and e                                            ; $4228: $a3
	ld a, b                                          ; $4229: $78
	dec h                                            ; $422a: $25
	xor l                                            ; $422b: $ad
	ld a, b                                          ; $422c: $78
	dec h                                            ; $422d: $25
	ld b, c                                          ; $422e: $41
	ld a, c                                          ; $422f: $79
	dec h                                            ; $4230: $25
	ld c, e                                          ; $4231: $4b
	ld a, c                                          ; $4232: $79

jr_006_4233:
	dec h                                            ; $4233: $25
	sbc $79                                          ; $4234: $de $79
	dec h                                            ; $4236: $25
	add sp, $79                                      ; $4237: $e8 $79
	dec h                                            ; $4239: $25
	ld [hl], b                                       ; $423a: $70
	ld a, d                                          ; $423b: $7a
	rst $38                                          ; $423c: $ff
	ld sp, hl                                        ; $423d: $f9
	dec h                                            ; $423e: $25
	ld [hl], a                                       ; $423f: $77
	ld a, d                                          ; $4240: $7a
	nop                                              ; $4241: $00
	add b                                            ; $4242: $80
	db $fc                                           ; $4243: $fc
	jr nz, jr_006_4233                               ; $4244: $20 $ed

	ld b, e                                          ; $4246: $43
	ld b, e                                          ; $4247: $43
	push de                                          ; $4248: $d5
	rst $38                                          ; $4249: $ff
	nop                                              ; $424a: $00
	xor b                                            ; $424b: $a8
	ld a, b                                          ; $424c: $78
	ld a, [$c150]                                    ; $424d: $fa $50 $c1
	dec a                                            ; $4250: $3d
	jr nz, jr_006_4260                               ; $4251: $20 $0d

	ld a, [wButtonsPressed]                                    ; $4253: $fa $25 $c1
	and $80                                          ; $4256: $e6 $80
	jp z, Jump_006_4260                              ; $4258: $ca $60 $42

	ld a, $0d                                        ; $425b: $3e $0d
	ld [$c151], a                                    ; $425d: $ea $51 $c1

Jump_006_4260:
jr_006_4260:
	ld a, [$c151]                                    ; $4260: $fa $51 $c1
	rst JumpTable                                          ; $4263: $c7
	add d                                            ; $4264: $82
	ld b, d                                          ; $4265: $42
	rst SubAFromHL                                          ; $4266: $d7
	ld b, d                                          ; $4267: $42
	ld e, d                                          ; $4268: $5a
	ld b, e                                          ; $4269: $43
	sub [hl]                                         ; $426a: $96
	ld c, l                                          ; $426b: $4d
	ccf                                              ; $426c: $3f
	ld c, [hl]                                       ; $426d: $4e
	and $4e                                          ; $426e: $e6 $4e
	call c, $8f43                                    ; $4270: $dc $43 $8f
	ld c, a                                          ; $4273: $4f
	push hl                                          ; $4274: $e5
	ld b, h                                          ; $4275: $44
	ld e, e                                          ; $4276: $5b
	ld b, h                                          ; $4277: $44
	ld l, [hl]                                       ; $4278: $6e
	ld b, l                                          ; $4279: $45
	jp hl                                            ; $427a: $e9


	ld b, l                                          ; $427b: $45
	call nz, $a542                                   ; $427c: $c4 $42 $a5
	ld b, d                                          ; $427f: $42
	cp d                                             ; $4280: $ba
	ld b, d                                          ; $4281: $42
	ld a, $01                                        ; $4282: $3e $01
	ld [$c150], a                                    ; $4284: $ea $50 $c1
	call $0911                                       ; $4287: $cd $11 $09
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $428a: $cd $ef $2d
	call $1973                                       ; $428d: $cd $73 $19
	call Call_006_46c1                               ; $4290: $cd $c1 $46
	call $3881                                       ; $4293: $cd $81 $38
	call Call_006_47ef                               ; $4296: $cd $ef $47

Jump_006_4299:
	ld a, [$c151]                                    ; $4299: $fa $51 $c1
	inc a                                            ; $429c: $3c

Jump_006_429d:
	ld [$c151], a                                    ; $429d: $ea $51 $c1
	xor a                                            ; $42a0: $af
	ld [$c152], a                                    ; $42a1: $ea $52 $c1
	ret                                              ; $42a4: $c9


	ld a, [$c150]                                    ; $42a5: $fa $50 $c1
	inc a                                            ; $42a8: $3c
	ld [$c150], a                                    ; $42a9: $ea $50 $c1
	ld bc, $67f6                                     ; $42ac: $01 $f6 $67
	call Call_006_472a                               ; $42af: $cd $2a $47
	ld a, $10                                        ; $42b2: $3e $10
	ld [$c2c7], a                                    ; $42b4: $ea $c7 $c2
	jp Jump_006_4299                                 ; $42b7: $c3 $99 $42


	call $1983                                       ; $42ba: $cd $83 $19
	and a                                            ; $42bd: $a7
	ret nz                                           ; $42be: $c0

	ld a, $0c                                        ; $42bf: $3e $0c
	jp Jump_006_429d                                 ; $42c1: $c3 $9d $42


	ld a, $00                                        ; $42c4: $3e $00
	call $1e2e                                       ; $42c6: $cd $2e $1e
	xor a                                            ; $42c9: $af
	ld [$c150], a                                    ; $42ca: $ea $50 $c1
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $42cd: $cd $ef $2d
	call $0963                                       ; $42d0: $cd $63 $09
	xor a                                            ; $42d3: $af
	jp $068e                                         ; $42d4: $c3 $8e $06


	ld a, [$c152]                                    ; $42d7: $fa $52 $c1
	rst JumpTable                                          ; $42da: $c7
	db $ed                                           ; $42db: $ed
	ld b, d                                          ; $42dc: $42
	rst $38                                          ; $42dd: $ff
	ld b, [hl]                                       ; $42de: $46
	cpl                                              ; $42df: $2f
	ld b, e                                          ; $42e0: $43
	rst $38                                          ; $42e1: $ff
	ld b, [hl]                                       ; $42e2: $46
	ld b, c                                          ; $42e3: $41
	ld b, e                                          ; $42e4: $43
	rst $38                                          ; $42e5: $ff
	ld b, [hl]                                       ; $42e6: $46
	ld d, c                                          ; $42e7: $51
	ld b, e                                          ; $42e8: $43
	dec l                                            ; $42e9: $2d
	ld b, a                                          ; $42ea: $47
	rst SubAFromHL                                          ; $42eb: $d7
	ld b, [hl]                                       ; $42ec: $46
	ld hl, $4000                                     ; $42ed: $21 $00 $40
	call $0aab                                       ; $42f0: $cd $ab $0a
	call Call_006_4b28                               ; $42f3: $cd $28 $4b
	ld bc, $65d6                                     ; $42f6: $01 $d6 $65
	call Call_006_470c                               ; $42f9: $cd $0c $47
	ld bc, $46ce                                     ; $42fc: $01 $ce $46
	xor a                                            ; $42ff: $af
	call $1931                                       ; $4300: $cd $31 $19
	ld a, $18                                        ; $4303: $3e $18
	ld [$c17a], a                                    ; $4305: $ea $7a $c1
	ld a, $77                                        ; $4308: $3e $77
	ld [$c17b], a                                    ; $430a: $ea $7b $c1
	ld a, $47                                        ; $430d: $3e $47
	ld [$c179], a                                    ; $430f: $ea $79 $c1
	ld hl, $2800                                     ; $4312: $21 $00 $28
	call $0955                                       ; $4315: $cd $55 $09
	ld a, $03                                        ; $4318: $3e $03
	ld [$c154], a                                    ; $431a: $ea $54 $c1
	ld hl, $0040                                     ; $431d: $21 $40 $00
	call Call_006_4758                               ; $4320: $cd $58 $47
	ld a, $91                                        ; $4323: $3e $91
	ldh [hDisp0_LCDC], a                                     ; $4325: $e0 $82
	ld a, $0d                                        ; $4327: $3e $0d
	call $068e                                       ; $4329: $cd $8e $06
	jp Jump_006_46df                                 ; $432c: $c3 $df $46


	ld a, $10                                        ; $432f: $3e $10
	call Jump_000_1af7                                       ; $4331: $cd $f7 $1a
	ld a, $30                                        ; $4334: $3e $30
	ld [$c154], a                                    ; $4336: $ea $54 $c1
	ld a, $32                                        ; $4339: $3e $32
	ld [$c155], a                                    ; $433b: $ea $55 $c1
	jp Jump_006_46df                                 ; $433e: $c3 $df $46


	call Call_006_4798                               ; $4341: $cd $98 $47
	ld b, a                                          ; $4344: $47
	ld a, $28                                        ; $4345: $3e $28
	sub b                                            ; $4347: $90
	jr nc, jr_006_434b                               ; $4348: $30 $01

	xor a                                            ; $434a: $af

jr_006_434b:
	ldh [hDisp0_SCX], a                                     ; $434b: $e0 $84
	ret nz                                           ; $434d: $c0

	jp Jump_006_46df                                 ; $434e: $c3 $df $46


	ld bc, $6800                                     ; $4351: $01 $00 $68
	call Call_006_472a                               ; $4354: $cd $2a $47
	jp Jump_006_46df                                 ; $4357: $c3 $df $46


	ld a, [$c152]                                    ; $435a: $fa $52 $c1
	rst JumpTable                                          ; $435d: $c7
	ld [hl], b                                       ; $435e: $70
	ld b, e                                          ; $435f: $43
	rst JumpTable                                          ; $4360: $c7
	ld b, e                                          ; $4361: $43
	dec l                                            ; $4362: $2d
	ld b, a                                          ; $4363: $47
	rst $38                                          ; $4364: $ff
	ld b, [hl]                                       ; $4365: $46
	sub [hl]                                         ; $4366: $96
	ld b, e                                          ; $4367: $43
	rst $38                                          ; $4368: $ff
	ld b, [hl]                                       ; $4369: $46
	sub $43                                          ; $436a: $d6 $43
	dec l                                            ; $436c: $2d
	ld b, a                                          ; $436d: $47
	rst SubAFromHL                                          ; $436e: $d7
	ld b, [hl]                                       ; $436f: $46
	ld a, $18                                        ; $4370: $3e $18
	ld [$c17a], a                                    ; $4372: $ea $7a $c1
	ld a, $77                                        ; $4375: $3e $77
	ld [$c17b], a                                    ; $4377: $ea $7b $c1
	ld hl, $4016                                     ; $437a: $21 $16 $40
	ld bc, $0c00                                     ; $437d: $01 $00 $0c
	call Call_006_4a04                               ; $4380: $cd $04 $4a
	ld a, $22                                        ; $4383: $3e $22
	ld [$c154], a                                    ; $4385: $ea $54 $c1
	ld a, $23                                        ; $4388: $3e $23
	ld [$c155], a                                    ; $438a: $ea $55 $c1
	ld hl, $007b                                     ; $438d: $21 $7b $00
	call Call_006_4758                               ; $4390: $cd $58 $47
	jp Jump_006_46df                                 ; $4393: $c3 $df $46


	ld hl, $402c                                     ; $4396: $21 $2c $40
	call Call_006_48e4                               ; $4399: $cd $e4 $48
	call Call_006_4798                               ; $439c: $cd $98 $47
	cp $60                                           ; $439f: $fe $60
	jr c, jr_006_43a5                                ; $43a1: $38 $02

	ld a, $60                                        ; $43a3: $3e $60

jr_006_43a5:
	or a                                             ; $43a5: $b7
	ret z                                            ; $43a6: $c8

	ld b, a                                          ; $43a7: $47
	ldh a, [hDisp0_SCY]                                     ; $43a8: $f0 $83
	or a                                             ; $43aa: $b7
	jr nz, jr_006_43af                               ; $43ab: $20 $02

	ld a, $98                                        ; $43ad: $3e $98

jr_006_43af:
	ld c, a                                          ; $43af: $4f
	ld a, $98                                        ; $43b0: $3e $98
	sub b                                            ; $43b2: $90
	ldh [hDisp0_SCY], a                                     ; $43b3: $e0 $83
	ld d, a                                          ; $43b5: $57
	ld a, c                                          ; $43b6: $79
	sub d                                            ; $43b7: $92
	ld d, a                                          ; $43b8: $57
	ld a, [$c156]                                    ; $43b9: $fa $56 $c1
	add d                                            ; $43bc: $82
	ld [$c156], a                                    ; $43bd: $ea $56 $c1
	ld a, b                                          ; $43c0: $78
	cp $60                                           ; $43c1: $fe $60
	ret nz                                           ; $43c3: $c0

	jp Jump_006_46df                                 ; $43c4: $c3 $df $46


	ld bc, $65da                                     ; $43c7: $01 $da $65
	call Call_006_470c                               ; $43ca: $cd $0c $47
	ld bc, $6820                                     ; $43cd: $01 $20 $68
	call Call_006_472a                               ; $43d0: $cd $2a $47
	jp Jump_006_46df                                 ; $43d3: $c3 $df $46


	call Call_006_4722                               ; $43d6: $cd $22 $47
	jp Jump_006_46df                                 ; $43d9: $c3 $df $46


	ld a, [$c152]                                    ; $43dc: $fa $52 $c1
	rst JumpTable                                          ; $43df: $c7
	ldh a, [c]                                       ; $43e0: $f2
	ld b, e                                          ; $43e1: $43
	ld c, c                                          ; $43e2: $49
	ld b, h                                          ; $43e3: $44
	dec l                                            ; $43e4: $2d
	ld b, a                                          ; $43e5: $47
	rst $38                                          ; $43e6: $ff
	ld b, [hl]                                       ; $43e7: $46
	jr @+$46                                         ; $43e8: $18 $44

	rst $38                                          ; $43ea: $ff
	ld b, [hl]                                       ; $43eb: $46
	ld d, l                                          ; $43ec: $55
	ld b, h                                          ; $43ed: $44
	dec l                                            ; $43ee: $2d
	ld b, a                                          ; $43ef: $47
	rst SubAFromHL                                          ; $43f0: $d7
	ld b, [hl]                                       ; $43f1: $46
	ld a, $18                                        ; $43f2: $3e $18
	ld [$c17a], a                                    ; $43f4: $ea $7a $c1
	ld a, $77                                        ; $43f7: $3e $77
	ld [$c17b], a                                    ; $43f9: $ea $7b $c1
	ld hl, $4075                                     ; $43fc: $21 $75 $40
	ld bc, $0c00                                     ; $43ff: $01 $00 $0c
	call Call_006_4a04                               ; $4402: $cd $04 $4a
	ld a, $22                                        ; $4405: $3e $22
	ld [$c154], a                                    ; $4407: $ea $54 $c1
	ld a, $22                                        ; $440a: $3e $22
	ld [$c155], a                                    ; $440c: $ea $55 $c1
	ld hl, $0067                                     ; $440f: $21 $67 $00
	call Call_006_4758                               ; $4412: $cd $58 $47
	jp Jump_006_46df                                 ; $4415: $c3 $df $46


	ld hl, $408b                                     ; $4418: $21 $8b $40
	call Call_006_48e4                               ; $441b: $cd $e4 $48
	call Call_006_4798                               ; $441e: $cd $98 $47
	cp $50                                           ; $4421: $fe $50
	jr c, jr_006_4427                                ; $4423: $38 $02

	ld a, $50                                        ; $4425: $3e $50

jr_006_4427:
	or a                                             ; $4427: $b7
	ret z                                            ; $4428: $c8

	ld b, a                                          ; $4429: $47
	ldh a, [hDisp0_SCY]                                     ; $442a: $f0 $83
	or a                                             ; $442c: $b7
	jr nz, jr_006_4431                               ; $442d: $20 $02

	ld a, $98                                        ; $442f: $3e $98

jr_006_4431:
	ld c, a                                          ; $4431: $4f
	ld a, $98                                        ; $4432: $3e $98
	sub b                                            ; $4434: $90
	ldh [hDisp0_SCY], a                                     ; $4435: $e0 $83
	ld d, a                                          ; $4437: $57
	ld a, c                                          ; $4438: $79
	sub d                                            ; $4439: $92
	ld d, a                                          ; $443a: $57
	ld a, [$c156]                                    ; $443b: $fa $56 $c1
	add d                                            ; $443e: $82
	ld [$c156], a                                    ; $443f: $ea $56 $c1
	ld a, b                                          ; $4442: $78
	cp $50                                           ; $4443: $fe $50
	ret nz                                           ; $4445: $c0

	jp Jump_006_46df                                 ; $4446: $c3 $df $46


	ld bc, $65da                                     ; $4449: $01 $da $65
	call Call_006_470c                               ; $444c: $cd $0c $47
	call Call_006_4718                               ; $444f: $cd $18 $47
	jp Jump_006_46df                                 ; $4452: $c3 $df $46


	call Call_006_4727                               ; $4455: $cd $27 $47
	jp Jump_006_46df                                 ; $4458: $c3 $df $46


	ld a, [$c152]                                    ; $445b: $fa $52 $c1
	rst JumpTable                                          ; $445e: $c7
	ld [hl], c                                       ; $445f: $71
	ld b, h                                          ; $4460: $44
	db $d3                                           ; $4461: $d3
	ld b, h                                          ; $4462: $44
	dec l                                            ; $4463: $2d
	ld b, a                                          ; $4464: $47
	rst $38                                          ; $4465: $ff
	ld b, [hl]                                       ; $4466: $46
	jp z, $ff44                                      ; $4467: $ca $44 $ff

	ld b, [hl]                                       ; $446a: $46
	rst SubAFromDE                                          ; $446b: $df
	ld b, h                                          ; $446c: $44
	dec l                                            ; $446d: $2d
	ld b, a                                          ; $446e: $47
	rst SubAFromHL                                          ; $446f: $d7
	ld b, [hl]                                       ; $4470: $46
	ld hl, $40c8                                     ; $4471: $21 $c8 $40
	call $0aab                                       ; $4474: $cd $ab $0a
	ld hl, $0000                                     ; $4477: $21 $00 $00
	call Call_006_4741                               ; $447a: $cd $41 $47
	ld hl, $9800                                     ; $447d: $21 $00 $98
	ld bc, $0514                                     ; $4480: $01 $14 $05
	ld e, $00                                        ; $4483: $1e $00
	call $4824                                       ; $4485: $cd $24 $48
	ld hl, $98a0                                     ; $4488: $21 $a0 $98
	ld bc, $0714                                     ; $448b: $01 $14 $07
	ld e, $cc                                        ; $448e: $1e $cc
	call $4824                                       ; $4490: $cd $24 $48
	ld hl, $9800                                     ; $4493: $21 $00 $98
	ld bc, $0c14                                     ; $4496: $01 $14 $0c
	ld de, $d4d3                                     ; $4499: $11 $d3 $d4
	call Call_006_484a                               ; $449c: $cd $4a $48
	call Call_006_4b96                               ; $449f: $cd $96 $4b
	call $0963                                       ; $44a2: $cd $63 $09
	ld a, $18                                        ; $44a5: $3e $18
	ld [$c17a], a                                    ; $44a7: $ea $7a $c1
	ld a, $77                                        ; $44aa: $3e $77
	ld [$c17b], a                                    ; $44ac: $ea $7b $c1
	ld a, $91                                        ; $44af: $3e $91
	ldh [hDisp0_LCDC], a                                     ; $44b1: $e0 $82
	ld a, $3f                                        ; $44b3: $3e $3f
	ld [$c179], a                                    ; $44b5: $ea $79 $c1
	ld a, $0d                                        ; $44b8: $3e $0d
	call $068e                                       ; $44ba: $cd $8e $06
	ld a, $46                                        ; $44bd: $3e $46
	ld [$c154], a                                    ; $44bf: $ea $54 $c1
	ld a, $25                                        ; $44c2: $3e $25
	ld [$c155], a                                    ; $44c4: $ea $55 $c1
	jp Jump_006_46df                                 ; $44c7: $c3 $df $46


	ldh a, [hDisp0_LCDC]                                     ; $44ca: $f0 $82
	or $08                                           ; $44cc: $f6 $08
	ldh [hDisp0_LCDC], a                                     ; $44ce: $e0 $82
	jp Jump_006_46df                                 ; $44d0: $c3 $df $46


	ld bc, $65da                                     ; $44d3: $01 $da $65
	call Call_006_470c                               ; $44d6: $cd $0c $47
	call Call_006_4718                               ; $44d9: $cd $18 $47
	jp Jump_006_46df                                 ; $44dc: $c3 $df $46


	call Call_006_4722                               ; $44df: $cd $22 $47
	jp Jump_006_46df                                 ; $44e2: $c3 $df $46


	ld a, [$c152]                                    ; $44e5: $fa $52 $c1
	rst JumpTable                                          ; $44e8: $c7
	ei                                               ; $44e9: $fb
	ld b, h                                          ; $44ea: $44
	ld e, h                                          ; $44eb: $5c
	ld b, l                                          ; $44ec: $45
	dec l                                            ; $44ed: $2d
	ld b, a                                          ; $44ee: $47
	rst $38                                          ; $44ef: $ff
	ld b, [hl]                                       ; $44f0: $46
	ld c, e                                          ; $44f1: $4b
	ld b, l                                          ; $44f2: $45
	rst $38                                          ; $44f3: $ff
	ld b, [hl]                                       ; $44f4: $46
	ld l, b                                          ; $44f5: $68
	ld b, l                                          ; $44f6: $45
	dec l                                            ; $44f7: $2d
	ld b, a                                          ; $44f8: $47
	rst SubAFromHL                                          ; $44f9: $d7
	ld b, [hl]                                       ; $44fa: $46
	ld hl, $9800                                     ; $44fb: $21 $00 $98
	ld bc, $1214                                     ; $44fe: $01 $14 $12
	call Call_006_4961                               ; $4501: $cd $61 $49
	ld hl, $9c00                                     ; $4504: $21 $00 $9c
	ld bc, $1214                                     ; $4507: $01 $14 $12
	call Call_006_4961                               ; $450a: $cd $61 $49
	call $0963                                       ; $450d: $cd $63 $09
	call $4c1f                                       ; $4510: $cd $1f $4c
	call Call_006_4c8b                               ; $4513: $cd $8b $4c
	ld hl, $5700                                     ; $4516: $21 $00 $57
	call $095c                                       ; $4519: $cd $5c $09
	ld a, $b0                                        ; $451c: $3e $b0
	ldh [hDisp0_SCX], a                                     ; $451e: $e0 $84
	ld a, $12                                        ; $4520: $3e $12
	ld [$c154], a                                    ; $4522: $ea $54 $c1
	ld a, $46                                        ; $4525: $3e $46
	ld [$c155], a                                    ; $4527: $ea $55 $c1
	ld hl, $0100                                     ; $452a: $21 $00 $01
	call Call_006_4758                               ; $452d: $cd $58 $47
	ld a, $f7                                        ; $4530: $3e $f7
	ldh [hDisp0_LCDC], a                                     ; $4532: $e0 $82
	ld a, $3f                                        ; $4534: $3e $3f
	ld [$c179], a                                    ; $4536: $ea $79 $c1
	ld a, $0d                                        ; $4539: $3e $0d
	call $068e                                       ; $453b: $cd $8e $06
	ld a, $00                                        ; $453e: $3e $00
	ld [$c17a], a                                    ; $4540: $ea $7a $c1
	ld a, $8f                                        ; $4543: $3e $8f
	ld [$c17b], a                                    ; $4545: $ea $7b $c1
	jp Jump_006_46df                                 ; $4548: $c3 $df $46


	call Call_006_4798                               ; $454b: $cd $98 $47
	cp $50                                           ; $454e: $fe $50
	jr c, jr_006_4554                                ; $4550: $38 $02

	ld a, $50                                        ; $4552: $3e $50

jr_006_4554:
	sub $50                                          ; $4554: $d6 $50
	ldh [hDisp0_SCX], a                                     ; $4556: $e0 $84
	ret nz                                           ; $4558: $c0

	jp Jump_006_46df                                 ; $4559: $c3 $df $46


	ld bc, $65de                                     ; $455c: $01 $de $65
	call Call_006_470c                               ; $455f: $cd $0c $47
	call Call_006_471d                               ; $4562: $cd $1d $47
	jp Jump_006_46df                                 ; $4565: $c3 $df $46


	call Call_006_4722                               ; $4568: $cd $22 $47
	jp Jump_006_46df                                 ; $456b: $c3 $df $46


	call Call_006_4574                               ; $456e: $cd $74 $45
	jp Jump_006_45d0                                 ; $4571: $c3 $d0 $45


Call_006_4574:
	ld a, [$c152]                                    ; $4574: $fa $52 $c1
	rst JumpTable                                          ; $4577: $c7
	add [hl]                                         ; $4578: $86
	ld b, l                                          ; $4579: $45
	and h                                            ; $457a: $a4
	ld b, l                                          ; $457b: $45
	dec l                                            ; $457c: $2d
	ld b, a                                          ; $457d: $47
	rst $38                                          ; $457e: $ff
	ld b, [hl]                                       ; $457f: $46
	or l                                             ; $4580: $b5
	ld b, l                                          ; $4581: $45
	dec l                                            ; $4582: $2d
	ld b, a                                          ; $4583: $47
	cp e                                             ; $4584: $bb
	ld b, l                                          ; $4585: $45
	xor a                                            ; $4586: $af
	ld [$c153], a                                    ; $4587: $ea $53 $c1
	call Call_006_4cd6                               ; $458a: $cd $d6 $4c
	call $0963                                       ; $458d: $cd $63 $09
	call Call_006_4d04                               ; $4590: $cd $04 $4d
	ld a, $4e                                        ; $4593: $3e $4e
	ld [$c154], a                                    ; $4595: $ea $54 $c1
	ld a, $9f                                        ; $4598: $3e $9f
	ldh [hDisp0_LCDC], a                                     ; $459a: $e0 $82
	ld a, $10                                        ; $459c: $3e $10
	call $068e                                       ; $459e: $cd $8e $06
	jp Jump_006_46df                                 ; $45a1: $c3 $df $46


	ld bc, $65e4                                     ; $45a4: $01 $e4 $65
	call Call_006_470c                               ; $45a7: $cd $0c $47
	ld bc, $6822                                     ; $45aa: $01 $22 $68
	ld a, $86                                        ; $45ad: $3e $86
	call $188d                                       ; $45af: $cd $8d $18
	jp Jump_006_46df                                 ; $45b2: $c3 $df $46


	call Call_006_4722                               ; $45b5: $cd $22 $47
	jp Jump_006_46df                                 ; $45b8: $c3 $df $46


	ld h, $c2                                        ; $45bb: $26 $c2
	call $2dfc                                       ; $45bd: $cd $fc $2d
	call Call_006_4ced                               ; $45c0: $cd $ed $4c
	ldh a, [hDisp0_LCDC]                                     ; $45c3: $f0 $82
	and $f7                                          ; $45c5: $e6 $f7
	ldh [hDisp0_LCDC], a                                     ; $45c7: $e0 $82
	xor a                                            ; $45c9: $af
	call $068e                                       ; $45ca: $cd $8e $06
	jp Jump_006_4299                                 ; $45cd: $c3 $99 $42


Jump_006_45d0:
	ld a, [$c153]                                    ; $45d0: $fa $53 $c1
	rst JumpTable                                          ; $45d3: $c7
	ret c                                            ; $45d4: $d8

	ld b, l                                          ; $45d5: $45
	db $e4                                           ; $45d6: $e4
	ld b, l                                          ; $45d7: $45
	ld hl, $410e                                     ; $45d8: $21 $0e $41
	call $0aab                                       ; $45db: $cd $ab $0a
	call $4d6d                                       ; $45de: $cd $6d $4d
	jp Jump_006_46ef                                 ; $45e1: $c3 $ef $46


	ld h, $c2                                        ; $45e4: $26 $c2
	jp $16d0                                         ; $45e6: $c3 $d0 $16


	ld a, [$c152]                                    ; $45e9: $fa $52 $c1
	rst JumpTable                                          ; $45ec: $c7
	dec b                                            ; $45ed: $05
	ld b, [hl]                                       ; $45ee: $46
	xor d                                            ; $45ef: $aa
	ld b, [hl]                                       ; $45f0: $46
	dec l                                            ; $45f1: $2d
	ld b, a                                          ; $45f2: $47
	rst $38                                          ; $45f3: $ff
	ld b, [hl]                                       ; $45f4: $46
	dec hl                                           ; $45f5: $2b
	ld b, [hl]                                       ; $45f6: $46
	rst $38                                          ; $45f7: $ff
	ld b, [hl]                                       ; $45f8: $46
	ld e, h                                          ; $45f9: $5c
	ld b, [hl]                                       ; $45fa: $46
	ld a, [hl]                                       ; $45fb: $7e
	ld b, [hl]                                       ; $45fc: $46
	rst $38                                          ; $45fd: $ff
	ld b, [hl]                                       ; $45fe: $46
	or [hl]                                          ; $45ff: $b6
	ld b, [hl]                                       ; $4600: $46
	dec l                                            ; $4601: $2d
	ld b, a                                          ; $4602: $47
	rst SubAFromHL                                          ; $4603: $d7
	ld b, [hl]                                       ; $4604: $46
	ld a, $18                                        ; $4605: $3e $18
	ld [$c17a], a                                    ; $4607: $ea $7a $c1
	ld a, $77                                        ; $460a: $3e $77
	ld [$c17b], a                                    ; $460c: $ea $7b $c1
	ld hl, $411b                                     ; $460f: $21 $1b $41
	ld bc, $1200                                     ; $4612: $01 $00 $12
	call Call_006_4a04                               ; $4615: $cd $04 $4a
	ld a, $22                                        ; $4618: $3e $22
	ld [$c154], a                                    ; $461a: $ea $54 $c1
	ld a, $21                                        ; $461d: $3e $21
	ld [$c155], a                                    ; $461f: $ea $55 $c1
	ld hl, $0090                                     ; $4622: $21 $90 $00
	call Call_006_4758                               ; $4625: $cd $58 $47
	jp Jump_006_46df                                 ; $4628: $c3 $df $46


	ld hl, $4131                                     ; $462b: $21 $31 $41
	call Call_006_48e4                               ; $462e: $cd $e4 $48
	call Call_006_4798                               ; $4631: $cd $98 $47
	cp $70                                           ; $4634: $fe $70
	jr c, jr_006_463a                                ; $4636: $38 $02

	ld a, $70                                        ; $4638: $3e $70

jr_006_463a:
	or a                                             ; $463a: $b7
	ret z                                            ; $463b: $c8

	ld b, a                                          ; $463c: $47
	ldh a, [hDisp0_SCY]                                     ; $463d: $f0 $83
	or a                                             ; $463f: $b7
	jr nz, jr_006_4644                               ; $4640: $20 $02

	ld a, $98                                        ; $4642: $3e $98

jr_006_4644:
	ld c, a                                          ; $4644: $4f
	ld a, $98                                        ; $4645: $3e $98
	sub b                                            ; $4647: $90
	ldh [hDisp0_SCY], a                                     ; $4648: $e0 $83
	ld d, a                                          ; $464a: $57
	ld a, c                                          ; $464b: $79
	sub d                                            ; $464c: $92
	ld d, a                                          ; $464d: $57
	ld a, [$c156]                                    ; $464e: $fa $56 $c1
	add d                                            ; $4651: $82
	ld [$c156], a                                    ; $4652: $ea $56 $c1
	ld a, b                                          ; $4655: $78
	cp $70                                           ; $4656: $fe $70
	ret nz                                           ; $4658: $c0

	jp Jump_006_46df                                 ; $4659: $c3 $df $46


	ld a, [$c156]                                    ; $465c: $fa $56 $c1
	add $18                                          ; $465f: $c6 $18
	ld [$c156], a                                    ; $4661: $ea $56 $c1
	xor a                                            ; $4664: $af
	ld [$c157], a                                    ; $4665: $ea $57 $c1

jr_006_4668:
	ld hl, $4186                                     ; $4668: $21 $86 $41
	call Call_006_48e4                               ; $466b: $cd $e4 $48
	jr nc, jr_006_4668                               ; $466e: $30 $f8

	ldh a, [hDisp0_SCY]                                     ; $4670: $f0 $83
	ld [$c156], a                                    ; $4672: $ea $56 $c1
	ld hl, $0067                                     ; $4675: $21 $67 $00
	call Call_006_4758                               ; $4678: $cd $58 $47
	jp Jump_006_46df                                 ; $467b: $c3 $df $46


	call Call_006_4798                               ; $467e: $cd $98 $47
	cp $18                                           ; $4681: $fe $18
	jr c, jr_006_4687                                ; $4683: $38 $02

	ld a, $18                                        ; $4685: $3e $18

jr_006_4687:
	ld b, a                                          ; $4687: $47
	ld a, $18                                        ; $4688: $3e $18
	sub b                                            ; $468a: $90
	ld [$c17a], a                                    ; $468b: $ea $7a $c1
	ld a, $77                                        ; $468e: $3e $77
	add b                                            ; $4690: $80
	ld [$c17b], a                                    ; $4691: $ea $7b $c1
	ld a, [$c156]                                    ; $4694: $fa $56 $c1
	sub b                                            ; $4697: $90
	jr nc, jr_006_469c                               ; $4698: $30 $02

	add $18                                          ; $469a: $c6 $18

jr_006_469c:
	ldh [hDisp0_SCY], a                                     ; $469c: $e0 $83
	ld a, b                                          ; $469e: $78
	cp $18                                           ; $469f: $fe $18
	ret nz                                           ; $46a1: $c0

	ld a, $5a                                        ; $46a2: $3e $5a
	ld [$c154], a                                    ; $46a4: $ea $54 $c1
	jp Jump_006_46df                                 ; $46a7: $c3 $df $46


	ld bc, $65ea                                     ; $46aa: $01 $ea $65
	call Call_006_470c                               ; $46ad: $cd $0c $47
	call Call_006_4718                               ; $46b0: $cd $18 $47
	jp Jump_006_46df                                 ; $46b3: $c3 $df $46


	call Call_006_4727                               ; $46b6: $cd $27 $47
	ld a, $10                                        ; $46b9: $3e $10
	ld [$c2c7], a                                    ; $46bb: $ea $c7 $c2
	jp Jump_006_46df                                 ; $46be: $c3 $df $46


Call_006_46c1:
	ld a, $f9                                        ; $46c1: $3e $f9
	ld [$c16c], a                                    ; $46c3: $ea $6c $c1
	ld a, $ff                                        ; $46c6: $3e $ff
	ld [$c177], a                                    ; $46c8: $ea $77 $c1
	ld hl, $d4d3                                     ; $46cb: $21 $d3 $d4
	ld a, l                                          ; $46ce: $7d
	ld [$c170], a                                    ; $46cf: $ea $70 $c1
	ld a, h                                          ; $46d2: $7c
	ld [$c171], a                                    ; $46d3: $ea $71 $c1
	ret                                              ; $46d6: $c9


	ld h, $c2                                        ; $46d7: $26 $c2
	call $2dfc                                       ; $46d9: $cd $fc $2d
	jp Jump_006_4299                                 ; $46dc: $c3 $99 $42


Jump_006_46df:
	ld a, [$c152]                                    ; $46df: $fa $52 $c1
	inc a                                            ; $46e2: $3c
	ld [$c152], a                                    ; $46e3: $ea $52 $c1
	ret                                              ; $46e6: $c9


Jump_006_46e7:
	ld a, [$c152]                                    ; $46e7: $fa $52 $c1
	dec a                                            ; $46ea: $3d
	ld [$c152], a                                    ; $46eb: $ea $52 $c1
	ret                                              ; $46ee: $c9


Jump_006_46ef:
	ld a, [$c153]                                    ; $46ef: $fa $53 $c1
	inc a                                            ; $46f2: $3c
	ld [$c153], a                                    ; $46f3: $ea $53 $c1
	ret                                              ; $46f6: $c9


	ld a, [$c153]                                    ; $46f7: $fa $53 $c1
	dec a                                            ; $46fa: $3d
	ld [$c153], a                                    ; $46fb: $ea $53 $c1
	ret                                              ; $46fe: $c9


	call Call_006_4b1e                               ; $46ff: $cd $1e $4b
	ret nz                                           ; $4702: $c0

	ld a, [$c155]                                    ; $4703: $fa $55 $c1
	ld [$c154], a                                    ; $4706: $ea $54 $c1
	jp Jump_006_46df                                 ; $4709: $c3 $df $46


Call_006_470c:
	call $18c4                                       ; $470c: $cd $c4 $18

Jump_006_470f:
	ld a, $e4                                        ; $470f: $3e $e4
	ldh [hDisp0_BGP], a                                     ; $4711: $e0 $85
	ldh [hDisp0_OBP0], a                                     ; $4713: $e0 $86
	ldh [hDisp0_OBP1], a                                     ; $4715: $e0 $87
	ret                                              ; $4717: $c9


Call_006_4718:
	ld bc, $67e0                                     ; $4718: $01 $e0 $67
	jr jr_006_472a                                   ; $471b: $18 $0d

Call_006_471d:
	ld bc, $681e                                     ; $471d: $01 $1e $68
	jr jr_006_472a                                   ; $4720: $18 $08

Call_006_4722:
	ld bc, $67c6                                     ; $4722: $01 $c6 $67
	jr jr_006_472a                                   ; $4725: $18 $03

Call_006_4727:
	ld bc, $67fe                                     ; $4727: $01 $fe $67

Call_006_472a:
jr_006_472a:
	jp $188c                                         ; $472a: $c3 $8c $18


	call $1983                                       ; $472d: $cd $83 $19
	and a                                            ; $4730: $a7
	ret nz                                           ; $4731: $c0

	jp Jump_006_46df                                 ; $4732: $c3 $df $46


	call Call_006_4722                               ; $4735: $cd $22 $47
	jp Jump_006_46df                                 ; $4738: $c3 $df $46


	call Call_006_4727                               ; $473b: $cd $27 $47
	jp Jump_006_46df                                 ; $473e: $c3 $df $46


Call_006_4741:
	ld a, h                                          ; $4741: $7c
	or l                                             ; $4742: $b5
	ld [$c0ea], a                                    ; $4743: $ea $ea $c0
	call $36ce                                       ; $4746: $cd $ce $36
	ld a, $01                                        ; $4749: $3e $01
	ld [$c0db], a                                    ; $474b: $ea $db $c0
	ret                                              ; $474e: $c9


Call_006_474f:
	ld a, [$c0ea]                                    ; $474f: $fa $ea $c0
	or a                                             ; $4752: $b7
	jp nz, $34b5                                     ; $4753: $c2 $b5 $34

	scf                                              ; $4756: $37
	ret                                              ; $4757: $c9


Call_006_4758:
	ld a, l                                          ; $4758: $7d
	ld [$c166], a                                    ; $4759: $ea $66 $c1
	ld a, h                                          ; $475c: $7c
	ld [$c167], a                                    ; $475d: $ea $67 $c1
	ld hl, $0000                                     ; $4760: $21 $00 $00
	ld a, l                                          ; $4763: $7d
	ld [$c164], a                                    ; $4764: $ea $64 $c1
	ld a, h                                          ; $4767: $7c
	ld [$c165], a                                    ; $4768: $ea $65 $c1
	ld a, l                                          ; $476b: $7d
	ld [$c168], a                                    ; $476c: $ea $68 $c1
	ld a, h                                          ; $476f: $7c
	ld [$c169], a                                    ; $4770: $ea $69 $c1
	ret                                              ; $4773: $c9


Call_006_4774:
	ld a, l                                          ; $4774: $7d
	ld [$c168], a                                    ; $4775: $ea $68 $c1
	ld a, h                                          ; $4778: $7c
	ld [$c169], a                                    ; $4779: $ea $69 $c1
	ld a, c                                          ; $477c: $79
	ld [$c16a], a                                    ; $477d: $ea $6a $c1
	ld a, b                                          ; $4780: $78
	ld [$c16b], a                                    ; $4781: $ea $6b $c1
	ld hl, $0000                                     ; $4784: $21 $00 $00
	ld a, l                                          ; $4787: $7d
	ld [$c166], a                                    ; $4788: $ea $66 $c1
	ld a, h                                          ; $478b: $7c
	ld [$c167], a                                    ; $478c: $ea $67 $c1
	ld a, l                                          ; $478f: $7d
	ld [$c164], a                                    ; $4790: $ea $64 $c1
	ld a, h                                          ; $4793: $7c
	ld [$c165], a                                    ; $4794: $ea $65 $c1
	ret                                              ; $4797: $c9


Call_006_4798:
	ld a, [$c169]                                    ; $4798: $fa $69 $c1
	ld b, a                                          ; $479b: $47
	ld a, [$c168]                                    ; $479c: $fa $68 $c1
	ld c, a                                          ; $479f: $4f
	or b                                             ; $47a0: $b0
	jr z, jr_006_47d5                                ; $47a1: $28 $32

	ld a, [$c166]                                    ; $47a3: $fa $66 $c1
	ld l, a                                          ; $47a6: $6f
	ld a, [$c167]                                    ; $47a7: $fa $67 $c1
	ld h, a                                          ; $47aa: $67
	add hl, bc                                       ; $47ab: $09
	ld a, l                                          ; $47ac: $7d
	ld [$c166], a                                    ; $47ad: $ea $66 $c1
	ld a, h                                          ; $47b0: $7c
	ld [$c167], a                                    ; $47b1: $ea $67 $c1
	ld a, [$c16a]                                    ; $47b4: $fa $6a $c1
	ld c, a                                          ; $47b7: $4f
	ld a, [$c16b]                                    ; $47b8: $fa $6b $c1
	ld b, a                                          ; $47bb: $47
	ld a, c                                          ; $47bc: $79
	sub l                                            ; $47bd: $95
	ld a, b                                          ; $47be: $78
	sbc h                                            ; $47bf: $9c
	jr nc, jr_006_47d5                               ; $47c0: $30 $13

	ld a, c                                          ; $47c2: $79
	ld [$c166], a                                    ; $47c3: $ea $66 $c1
	ld a, b                                          ; $47c6: $78
	ld [$c167], a                                    ; $47c7: $ea $67 $c1
	ld bc, $0000                                     ; $47ca: $01 $00 $00
	ld a, c                                          ; $47cd: $79
	ld [$c168], a                                    ; $47ce: $ea $68 $c1
	ld a, b                                          ; $47d1: $78
	ld [$c169], a                                    ; $47d2: $ea $69 $c1

jr_006_47d5:
	ld a, [$c166]                                    ; $47d5: $fa $66 $c1
	ld e, a                                          ; $47d8: $5f
	ld a, [$c167]                                    ; $47d9: $fa $67 $c1
	ld d, a                                          ; $47dc: $57
	ld a, [$c164]                                    ; $47dd: $fa $64 $c1
	ld l, a                                          ; $47e0: $6f
	ld a, [$c165]                                    ; $47e1: $fa $65 $c1
	ld h, a                                          ; $47e4: $67
	add hl, de                                       ; $47e5: $19
	ld a, l                                          ; $47e6: $7d
	ld [$c164], a                                    ; $47e7: $ea $64 $c1
	ld a, h                                          ; $47ea: $7c
	ld [$c165], a                                    ; $47eb: $ea $65 $c1
	ret                                              ; $47ee: $c9


Call_006_47ef:
	ld hl, $9ba0                                     ; $47ef: $21 $a0 $9b
	ld bc, $0320                                     ; $47f2: $01 $20 $03
	ld de, $00a3                                     ; $47f5: $11 $a3 $00
	rst FarCall                                          ; $47f8: $f7
	xor a                                            ; $47f9: $af
	ld b, l                                          ; $47fa: $45
	ld [$a021], sp                                   ; $47fb: $08 $21 $a0
	sbc a                                            ; $47fe: $9f
	ld bc, $0320                                     ; $47ff: $01 $20 $03
	ld de, $00a3                                     ; $4802: $11 $a3 $00
	rst FarCall                                          ; $4805: $f7
	xor a                                            ; $4806: $af
	ld b, l                                          ; $4807: $45
	ld [$a021], sp                                   ; $4808: $08 $21 $a0
	sbc e                                            ; $480b: $9b
	ld bc, $0320                                     ; $480c: $01 $20 $03
	ld de, $0100                                     ; $480f: $11 $00 $01
	rst FarCall                                          ; $4812: $f7
	xor a                                            ; $4813: $af
	ld b, l                                          ; $4814: $45
	ld [$a021], sp                                   ; $4815: $08 $21 $a0
	sbc a                                            ; $4818: $9f
	ld bc, $0320                                     ; $4819: $01 $20 $03
	ld de, $0100                                     ; $481c: $11 $00 $01
	rst FarCall                                          ; $481f: $f7
	xor a                                            ; $4820: $af
	ld b, l                                          ; $4821: $45
	ld [$53c9], sp                                   ; $4822: $08 $c9 $53
	ld a, $20                                        ; $4825: $3e $20
	sub c                                            ; $4827: $91
	ld e, a                                          ; $4828: $5f
	ld a, d                                          ; $4829: $7a

jr_006_482a:
	push bc                                          ; $482a: $c5
	ld d, c                                          ; $482b: $51

jr_006_482c:
	ld b, a                                          ; $482c: $47
	call Call_006_474f                               ; $482d: $cd $4f $47
	jr nc, jr_006_483c                               ; $4830: $30 $0a

	di                                               ; $4832: $f3

jr_006_4833:
	ldh a, [rSTAT]                                   ; $4833: $f0 $41
	bit 1, a                                         ; $4835: $cb $4f
	jr nz, jr_006_4833                               ; $4837: $20 $fa

	ld [hl], b                                       ; $4839: $70
	ei                                               ; $483a: $fb
	inc b                                            ; $483b: $04

jr_006_483c:
	ld a, b                                          ; $483c: $78
	inc hl                                           ; $483d: $23
	dec c                                            ; $483e: $0d
	jr nz, jr_006_482c                               ; $483f: $20 $eb

	ld c, d                                          ; $4841: $4a
	ld d, $00                                        ; $4842: $16 $00
	add hl, de                                       ; $4844: $19
	pop bc                                           ; $4845: $c1
	dec b                                            ; $4846: $05
	jr nz, jr_006_482a                               ; $4847: $20 $e1

	ret                                              ; $4849: $c9


Call_006_484a:
Jump_006_484a:
	ld a, [wInitialA]                                    ; $484a: $fa $00 $c1
	cp $11                                           ; $484d: $fe $11
	ret nz                                           ; $484f: $c0

	ld a, $01                                        ; $4850: $3e $01
	ldh [rVBK], a                                    ; $4852: $e0 $4f
	ld a, $20                                        ; $4854: $3e $20
	sub c                                            ; $4856: $91
	ld [$c0e8], a                                    ; $4857: $ea $e8 $c0
	ld a, c                                          ; $485a: $79
	ld [$c0e9], a                                    ; $485b: $ea $e9 $c0

jr_006_485e:
	ld a, [$c0e9]                                    ; $485e: $fa $e9 $c0
	ld c, a                                          ; $4861: $4f

jr_006_4862:
	call Call_006_474f                               ; $4862: $cd $4f $47
	jr nc, jr_006_4875                               ; $4865: $30 $0e

	di                                               ; $4867: $f3

jr_006_4868:
	ldh a, [rSTAT]                                   ; $4868: $f0 $41
	bit 1, a                                         ; $486a: $cb $4f
	jr nz, jr_006_4868                               ; $486c: $20 $fa

	ld a, [de]                                       ; $486e: $1a
	swap a                                           ; $486f: $cb $37
	and $0f                                          ; $4871: $e6 $0f
	ld [hl], a                                       ; $4873: $77
	ei                                               ; $4874: $fb

jr_006_4875:
	inc hl                                           ; $4875: $23
	dec c                                            ; $4876: $0d
	jr nz, jr_006_487c                               ; $4877: $20 $03

	inc de                                           ; $4879: $13
	jr jr_006_4892                                   ; $487a: $18 $16

jr_006_487c:
	call Call_006_474f                               ; $487c: $cd $4f $47
	jr nc, jr_006_488d                               ; $487f: $30 $0c

	di                                               ; $4881: $f3

jr_006_4882:
	ldh a, [rSTAT]                                   ; $4882: $f0 $41
	bit 1, a                                         ; $4884: $cb $4f
	jr nz, jr_006_4882                               ; $4886: $20 $fa

	ld a, [de]                                       ; $4888: $1a
	and $0f                                          ; $4889: $e6 $0f
	ld [hl], a                                       ; $488b: $77
	ei                                               ; $488c: $fb

jr_006_488d:
	inc hl                                           ; $488d: $23
	inc de                                           ; $488e: $13
	dec c                                            ; $488f: $0d
	jr nz, jr_006_4862                               ; $4890: $20 $d0

jr_006_4892:
	push de                                          ; $4892: $d5
	ld a, [$c0e8]                                    ; $4893: $fa $e8 $c0
	ld e, a                                          ; $4896: $5f
	ld d, $00                                        ; $4897: $16 $00
	add hl, de                                       ; $4899: $19
	pop de                                           ; $489a: $d1
	dec b                                            ; $489b: $05
	jr nz, jr_006_485e                               ; $489c: $20 $c0

	xor a                                            ; $489e: $af
	ldh [rVBK], a                                    ; $489f: $e0 $4f
	ret                                              ; $48a1: $c9


Call_006_48a2:
	ld a, [hl+]                                      ; $48a2: $2a
	ld [$c172], a                                    ; $48a3: $ea $72 $c1
	ld a, [hl+]                                      ; $48a6: $2a
	ld [$c173], a                                    ; $48a7: $ea $73 $c1
	ld a, [hl+]                                      ; $48aa: $2a
	ld [$c174], a                                    ; $48ab: $ea $74 $c1
	ld a, [hl+]                                      ; $48ae: $2a
	ld [$c16d], a                                    ; $48af: $ea $6d $c1
	ld a, [hl+]                                      ; $48b2: $2a
	ld [$c16e], a                                    ; $48b3: $ea $6e $c1
	ld a, [hl+]                                      ; $48b6: $2a
	ld [$c16f], a                                    ; $48b7: $ea $6f $c1
	ld a, e                                          ; $48ba: $7b
	ld [$c175], a                                    ; $48bb: $ea $75 $c1
	ld a, d                                          ; $48be: $7a
	ld [$c176], a                                    ; $48bf: $ea $76 $c1
	ld hl, $c16c                                     ; $48c2: $21 $6c $c1
	jp $0aab                                         ; $48c5: $c3 $ab $0a


Call_006_48c8:
	push bc                                          ; $48c8: $c5
	ld a, [$c157]                                    ; $48c9: $fa $57 $c1
	ld b, a                                          ; $48cc: $47
	ld c, $06                                        ; $48cd: $0e $06
	call BCequBtimesC                                       ; $48cf: $cd $5f $12
	add hl, bc                                       ; $48d2: $09
	pop bc                                           ; $48d3: $c1
	ld a, [hl]                                       ; $48d4: $7e
	cp $ff                                           ; $48d5: $fe $ff
	jr z, jr_006_48e2                                ; $48d7: $28 $09

	ld a, [$c157]                                    ; $48d9: $fa $57 $c1
	inc a                                            ; $48dc: $3c
	ld [$c157], a                                    ; $48dd: $ea $57 $c1
	xor a                                            ; $48e0: $af
	ret                                              ; $48e1: $c9


jr_006_48e2:
	scf                                              ; $48e2: $37
	ret                                              ; $48e3: $c9


Call_006_48e4:
	ld a, [$c156]                                    ; $48e4: $fa $56 $c1
	sub $08                                          ; $48e7: $d6 $08
	ccf                                              ; $48e9: $3f
	ret nc                                           ; $48ea: $d0

	ld [$c156], a                                    ; $48eb: $ea $56 $c1
	call Call_006_48c8                               ; $48ee: $cd $c8 $48
	ret c                                            ; $48f1: $d8

	push hl                                          ; $48f2: $e5
	ld a, [$c158]                                    ; $48f3: $fa $58 $c1
	ld de, $8000                                     ; $48f6: $11 $00 $80
	cp $08                                           ; $48f9: $fe $08
	jr c, jr_006_48ff                                ; $48fb: $38 $02

	ld e, $40                                        ; $48fd: $1e $40

jr_006_48ff:
	ld b, a                                          ; $48ff: $47
	ld c, $14                                        ; $4900: $0e $14
	call BCequBtimesC                                       ; $4902: $cd $5f $12
	ld l, c                                          ; $4905: $69
	ld h, b                                          ; $4906: $60
	ld a, $10                                        ; $4907: $3e $10
	call AHLequAtimesHL                                       ; $4909: $cd $77 $12
	add hl, de                                       ; $490c: $19
	ld e, l                                          ; $490d: $5d
	ld d, h                                          ; $490e: $54
	pop hl                                           ; $490f: $e1
	call Call_006_48a2                               ; $4910: $cd $a2 $48
	ld a, [$c158]                                    ; $4913: $fa $58 $c1
	ld b, a                                          ; $4916: $47
	ld c, $20                                        ; $4917: $0e $20
	call BCequBtimesC                                       ; $4919: $cd $5f $12
	ld hl, $9800                                     ; $491c: $21 $00 $98
	add hl, bc                                       ; $491f: $09
	ld bc, $0114                                     ; $4920: $01 $14 $01
	ld de, $d4d3                                     ; $4923: $11 $d3 $d4
	call Call_006_484a                               ; $4926: $cd $4a $48
	ld a, [$c158]                                    ; $4929: $fa $58 $c1
	or a                                             ; $492c: $b7
	jr nz, jr_006_4931                               ; $492d: $20 $02

	ld a, $13                                        ; $492f: $3e $13

jr_006_4931:
	dec a                                            ; $4931: $3d
	ld [$c158], a                                    ; $4932: $ea $58 $c1
	xor a                                            ; $4935: $af
	ret                                              ; $4936: $c9


Call_006_4937:
	ld a, $20                                        ; $4937: $3e $20
	sub c                                            ; $4939: $91
	ld [$c0eb], a                                    ; $493a: $ea $eb $c0
	ld a, c                                          ; $493d: $79
	ld [$c0ec], a                                    ; $493e: $ea $ec $c0

jr_006_4941:
	ld a, [$c0ec]                                    ; $4941: $fa $ec $c0
	ld c, a                                          ; $4944: $4f

jr_006_4945:
	di                                               ; $4945: $f3

jr_006_4946:
	ldh a, [rSTAT]                                   ; $4946: $f0 $41
	bit 1, a                                         ; $4948: $cb $4f
	jr nz, jr_006_4946                               ; $494a: $20 $fa

	ld a, [hl+]                                      ; $494c: $2a
	ld [de], a                                       ; $494d: $12
	inc de                                           ; $494e: $13
	ei                                               ; $494f: $fb
	dec c                                            ; $4950: $0d
	jr nz, jr_006_4945                               ; $4951: $20 $f2

	ld a, [$c0eb]                                    ; $4953: $fa $eb $c0
	rst AddAOntoHL                                          ; $4956: $ef
	ld a, [$c0eb]                                    ; $4957: $fa $eb $c0
	call $1327                                       ; $495a: $cd $27 $13
	dec b                                            ; $495d: $05
	jr nz, jr_006_4941                               ; $495e: $20 $e1

	ret                                              ; $4960: $c9


Call_006_4961:
	push hl                                          ; $4961: $e5
	push bc                                          ; $4962: $c5
	ld de, $00a0                                     ; $4963: $11 $a0 $00
	rst FarCall                                          ; $4966: $f7
	xor a                                            ; $4967: $af
	ld b, l                                          ; $4968: $45
	ld [$e1c1], sp                                   ; $4969: $08 $c1 $e1
	ld de, $0100                                     ; $496c: $11 $00 $01
	rst FarCall                                          ; $496f: $f7
	xor a                                            ; $4970: $af
	ld b, l                                          ; $4971: $45
	ld [$eac9], sp                                   ; $4972: $08 $c9 $ea
	ld h, c                                          ; $4975: $61
	pop bc                                           ; $4976: $c1
	ld a, l                                          ; $4977: $7d
	ld [$c15d], a                                    ; $4978: $ea $5d $c1
	ld a, h                                          ; $497b: $7c
	ld [$c15e], a                                    ; $497c: $ea $5e $c1
	ld a, e                                          ; $497f: $7b
	ld [$c159], a                                    ; $4980: $ea $59 $c1
	ld a, d                                          ; $4983: $7a
	ld [$c15a], a                                    ; $4984: $ea $5a $c1
	ld a, b                                          ; $4987: $78
	ld [wMenuOptionSelected], a                                    ; $4988: $ea $5f $c1
	ld a, c                                          ; $498b: $79
	ld [$c160], a                                    ; $498c: $ea $60 $c1
	ret                                              ; $498f: $c9


Call_006_4990:
	ldh a, [hDisp0_LCDC]                                     ; $4990: $f0 $82
	and $08                                          ; $4992: $e6 $08
	jr z, jr_006_49a3                                ; $4994: $28 $0d

	ld a, [$c15d]                                    ; $4996: $fa $5d $c1
	ld l, a                                          ; $4999: $6f
	ld a, [$c15e]                                    ; $499a: $fa $5e $c1
	ld h, a                                          ; $499d: $67
	ld de, $8a40                                     ; $499e: $11 $40 $8a
	jr jr_006_49bc                                   ; $49a1: $18 $19

jr_006_49a3:
	ld a, [$c15d]                                    ; $49a3: $fa $5d $c1
	ld l, a                                          ; $49a6: $6f
	ld a, [$c15e]                                    ; $49a7: $fa $5e $c1
	ld h, a                                          ; $49aa: $67
	ld bc, $0400                                     ; $49ab: $01 $00 $04
	add hl, bc                                       ; $49ae: $09
	ld de, $8a40                                     ; $49af: $11 $40 $8a
	ld a, [$c161]                                    ; $49b2: $fa $61 $c1
	and $0f                                          ; $49b5: $e6 $0f
	swap a                                           ; $49b7: $cb $37
	call $1327                                       ; $49b9: $cd $27 $13

jr_006_49bc:
	push de                                          ; $49bc: $d5
	push hl                                          ; $49bd: $e5
	push hl                                          ; $49be: $e5
	ld a, [$c159]                                    ; $49bf: $fa $59 $c1
	ld l, a                                          ; $49c2: $6f
	ld a, [$c15a]                                    ; $49c3: $fa $5a $c1
	ld h, a                                          ; $49c6: $67
	call Call_006_48c8                               ; $49c7: $cd $c8 $48
	jr c, jr_006_4a00                                ; $49ca: $38 $34

	call Call_006_48a2                               ; $49cc: $cd $a2 $48
	ld hl, $d5e3                                     ; $49cf: $21 $e3 $d5
	call Call_006_4741                               ; $49d2: $cd $41 $47
	pop hl                                           ; $49d5: $e1
	ld a, [wMenuOptionSelected]                                    ; $49d6: $fa $5f $c1
	ld b, a                                          ; $49d9: $47
	ld a, [$c160]                                    ; $49da: $fa $60 $c1
	ld c, a                                          ; $49dd: $4f
	ld de, $d4d3                                     ; $49de: $11 $d3 $d4
	call Call_006_484a                               ; $49e1: $cd $4a $48
	ld hl, $d5e3                                     ; $49e4: $21 $e3 $d5
	call Call_006_4741                               ; $49e7: $cd $41 $47
	pop hl                                           ; $49ea: $e1
	pop de                                           ; $49eb: $d1
	ld a, d                                          ; $49ec: $7a
	and $0f                                          ; $49ed: $e6 $0f
	or e                                             ; $49ef: $b3
	swap a                                           ; $49f0: $cb $37
	ld e, a                                          ; $49f2: $5f
	ld a, [wMenuOptionSelected]                                    ; $49f3: $fa $5f $c1
	ld b, a                                          ; $49f6: $47
	ld a, [$c160]                                    ; $49f7: $fa $60 $c1
	ld c, a                                          ; $49fa: $4f
	call $4824                                       ; $49fb: $cd $24 $48
	xor a                                            ; $49fe: $af
	ret                                              ; $49ff: $c9


jr_006_4a00:
	pop hl                                           ; $4a00: $e1
	pop hl                                           ; $4a01: $e1
	pop hl                                           ; $4a02: $e1
	ret                                              ; $4a03: $c9


Call_006_4a04:
	push bc                                          ; $4a04: $c5
	call $0aab                                       ; $4a05: $cd $ab $0a
	pop bc                                           ; $4a08: $c1
	ld hl, $0000                                     ; $4a09: $21 $00 $00
	call Call_006_4741                               ; $4a0c: $cd $41 $47
	ld a, c                                          ; $4a0f: $79
	add b                                            ; $4a10: $80
	sub $13                                          ; $4a11: $d6 $13
	jr nc, jr_006_4a16                               ; $4a13: $30 $01

	xor a                                            ; $4a15: $af

jr_006_4a16:
	ld e, a                                          ; $4a16: $5f
	ld a, b                                          ; $4a17: $78
	sub e                                            ; $4a18: $93
	ld d, a                                          ; $4a19: $57
	push bc                                          ; $4a1a: $c5
	or a                                             ; $4a1b: $b7
	jr z, jr_006_4a32                                ; $4a1c: $28 $14

	push de                                          ; $4a1e: $d5
	ld b, $20                                        ; $4a1f: $06 $20
	call BCequBtimesC                                       ; $4a21: $cd $5f $12
	ld hl, $9800                                     ; $4a24: $21 $00 $98
	add hl, bc                                       ; $4a27: $09
	ld b, d                                          ; $4a28: $42
	ld c, $14                                        ; $4a29: $0e $14
	ld de, $d4d3                                     ; $4a2b: $11 $d3 $d4
	call Call_006_484a                               ; $4a2e: $cd $4a $48
	pop de                                           ; $4a31: $d1

jr_006_4a32:
	ld a, e                                          ; $4a32: $7b
	or a                                             ; $4a33: $b7
	jr z, jr_006_4a4d                                ; $4a34: $28 $17

	ld b, e                                          ; $4a36: $43
	ld c, $14                                        ; $4a37: $0e $14
	push bc                                          ; $4a39: $c5
	ld b, d                                          ; $4a3a: $42
	ld c, $0a                                        ; $4a3b: $0e $0a
	call BCequBtimesC                                       ; $4a3d: $cd $5f $12
	ld hl, $d4d3                                     ; $4a40: $21 $d3 $d4
	add hl, bc                                       ; $4a43: $09
	ld e, l                                          ; $4a44: $5d
	ld d, h                                          ; $4a45: $54
	ld hl, $9800                                     ; $4a46: $21 $00 $98
	pop bc                                           ; $4a49: $c1
	call Call_006_484a                               ; $4a4a: $cd $4a $48

jr_006_4a4d:
	ld hl, $9800                                     ; $4a4d: $21 $00 $98
	call Call_006_4b51                               ; $4a50: $cd $51 $4b
	ld hl, $9c00                                     ; $4a53: $21 $00 $9c
	call Call_006_6ce5                               ; $4a56: $cd $e5 $6c
	pop bc                                           ; $4a59: $c1
	ld a, c                                          ; $4a5a: $79
	or a                                             ; $4a5b: $b7
	jr nz, jr_006_4a60                               ; $4a5c: $20 $02

	ld a, $13                                        ; $4a5e: $3e $13

jr_006_4a60:
	dec a                                            ; $4a60: $3d
	ld [$c158], a                                    ; $4a61: $ea $58 $c1
	xor a                                            ; $4a64: $af
	ld [$c157], a                                    ; $4a65: $ea $57 $c1
	ld a, $08                                        ; $4a68: $3e $08
	ld [$c156], a                                    ; $4a6a: $ea $56 $c1
	ld b, $08                                        ; $4a6d: $06 $08
	call BCequBtimesC                                       ; $4a6f: $cd $5f $12
	ld h, $00                                        ; $4a72: $26 $00
	ld l, c                                          ; $4a74: $69
	call $0955                                       ; $4a75: $cd $55 $09
	ld a, $f1                                        ; $4a78: $3e $f1
	ldh [hDisp0_LCDC], a                                     ; $4a7a: $e0 $82
	ld a, $0e                                        ; $4a7c: $3e $0e
	jp $068e                                         ; $4a7e: $c3 $8e $06


Call_006_4a81:
Jump_006_4a81:
	ld a, [$c163]                                    ; $4a81: $fa $63 $c1
	swap a                                           ; $4a84: $cb $37
	ld b, a                                          ; $4a86: $47
	ld a, [$c162]                                    ; $4a87: $fa $62 $c1
	swap a                                           ; $4a8a: $cb $37
	ld c, a                                          ; $4a8c: $4f
	and $0f                                          ; $4a8d: $e6 $0f
	or b                                             ; $4a8f: $b0
	ld b, a                                          ; $4a90: $47
	ld a, c                                          ; $4a91: $79
	and $f0                                          ; $4a92: $e6 $f0
	ld c, a                                          ; $4a94: $4f
	ld hl, $8000                                     ; $4a95: $21 $00 $80
	add hl, bc                                       ; $4a98: $09
	push hl                                          ; $4a99: $e5
	ld a, [$c159]                                    ; $4a9a: $fa $59 $c1
	ld l, a                                          ; $4a9d: $6f
	ld a, [$c15a]                                    ; $4a9e: $fa $5a $c1
	ld h, a                                          ; $4aa1: $67
	call Call_006_48c8                               ; $4aa2: $cd $c8 $48
	pop de                                           ; $4aa5: $d1
	call Call_006_48a2                               ; $4aa6: $cd $a2 $48
	jr jr_006_4aab                                   ; $4aa9: $18 $00

Call_006_4aab:
Jump_006_4aab:
jr_006_4aab:
	ld a, [$c15b]                                    ; $4aab: $fa $5b $c1
	ld l, a                                          ; $4aae: $6f
	ld a, [$c15c]                                    ; $4aaf: $fa $5c $c1
	ld h, a                                          ; $4ab2: $67
	call Call_006_4741                               ; $4ab3: $cd $41 $47
	ld a, [$c15d]                                    ; $4ab6: $fa $5d $c1
	ld l, a                                          ; $4ab9: $6f
	ld a, [$c15e]                                    ; $4aba: $fa $5e $c1
	ld h, a                                          ; $4abd: $67
	ld a, [wMenuOptionSelected]                                    ; $4abe: $fa $5f $c1
	ld b, a                                          ; $4ac1: $47
	ld a, [$c160]                                    ; $4ac2: $fa $60 $c1
	ld c, a                                          ; $4ac5: $4f
	ld a, [$c162]                                    ; $4ac6: $fa $62 $c1
	ld e, a                                          ; $4ac9: $5f
	call $4824                                       ; $4aca: $cd $24 $48
	ld a, [$c15b]                                    ; $4acd: $fa $5b $c1
	ld l, a                                          ; $4ad0: $6f
	ld a, [$c15c]                                    ; $4ad1: $fa $5c $c1
	ld h, a                                          ; $4ad4: $67
	call Call_006_4741                               ; $4ad5: $cd $41 $47
	ld a, [$c15d]                                    ; $4ad8: $fa $5d $c1
	ld l, a                                          ; $4adb: $6f
	ld a, [$c15e]                                    ; $4adc: $fa $5e $c1
	ld h, a                                          ; $4adf: $67
	ld a, [wMenuOptionSelected]                                    ; $4ae0: $fa $5f $c1
	ld b, a                                          ; $4ae3: $47
	ld a, [$c160]                                    ; $4ae4: $fa $60 $c1
	ld c, a                                          ; $4ae7: $4f
	ld de, $d4d3                                     ; $4ae8: $11 $d3 $d4
	jp Jump_006_484a                                 ; $4aeb: $c3 $4a $48


Call_006_4aee:
Jump_006_4aee:
	ld a, [hl+]                                      ; $4aee: $2a
	ld [$c202], a                                    ; $4aef: $ea $02 $c2
	ld a, [hl+]                                      ; $4af2: $2a
	ld [$c205], a                                    ; $4af3: $ea $05 $c2
	ld a, [hl+]                                      ; $4af6: $2a
	ld [$c207], a                                    ; $4af7: $ea $07 $c2
	ld [$c230], a                                    ; $4afa: $ea $30 $c2
	ld h, $c2                                        ; $4afd: $26 $c2
	ld l, $00                                        ; $4aff: $2e $00
	ld [hl], $01                                     ; $4b01: $36 $01
	ld l, $01                                        ; $4b03: $2e $01
	ld [hl], $00                                     ; $4b05: $36 $00
	ld l, $08                                        ; $4b07: $2e $08
	ld [hl], $43                                     ; $4b09: $36 $43
	inc hl                                           ; $4b0b: $23
	ld [hl], $d5                                     ; $4b0c: $36 $d5
	ret                                              ; $4b0e: $c9


Jump_006_4b0f:
	push bc                                          ; $4b0f: $c5
	ld a, [$c230]                                    ; $4b10: $fa $30 $c2
	ld b, a                                          ; $4b13: $47
	ldh a, [hDisp0_SCX]                                     ; $4b14: $f0 $84
	cpl                                              ; $4b16: $2f
	inc a                                            ; $4b17: $3c
	add b                                            ; $4b18: $80
	ld [$c207], a                                    ; $4b19: $ea $07 $c2
	pop bc                                           ; $4b1c: $c1
	ret                                              ; $4b1d: $c9


Call_006_4b1e:
	ld a, [$c154]                                    ; $4b1e: $fa $54 $c1

Call_006_4b21:
	or a                                             ; $4b21: $b7
	ret z                                            ; $4b22: $c8

	dec a                                            ; $4b23: $3d
	ld [$c154], a                                    ; $4b24: $ea $54 $c1
	ret                                              ; $4b27: $c9


Call_006_4b28:
	ld hl, $0000                                     ; $4b28: $21 $00 $00
	call Call_006_4741                               ; $4b2b: $cd $41 $47
	ld hl, $9800                                     ; $4b2e: $21 $00 $98
	ld bc, $061a                                     ; $4b31: $01 $1a $06
	ld e, $00                                        ; $4b34: $1e $00
	call $4824                                       ; $4b36: $cd $24 $48
	ld hl, $98c0                                     ; $4b39: $21 $c0 $98
	ld bc, $061a                                     ; $4b3c: $01 $1a $06
	ld e, $a4                                        ; $4b3f: $1e $a4
	call $4824                                       ; $4b41: $cd $24 $48
	ld hl, $9800                                     ; $4b44: $21 $00 $98
	ld bc, $0c1a                                     ; $4b47: $01 $1a $0c
	ld de, $d4d3                                     ; $4b4a: $11 $d3 $d4
	call Call_006_484a                               ; $4b4d: $cd $4a $48
	ret                                              ; $4b50: $c9


Call_006_4b51:
	push hl                                          ; $4b51: $e5
	ld hl, $0000                                     ; $4b52: $21 $00 $00
	call Call_006_4741                               ; $4b55: $cd $41 $47
	pop hl                                           ; $4b58: $e1
	push hl                                          ; $4b59: $e5
	ld bc, $0814                                     ; $4b5a: $01 $14 $08
	ld e, $00                                        ; $4b5d: $1e $00
	call $4824                                       ; $4b5f: $cd $24 $48
	pop hl                                           ; $4b62: $e1
	ld bc, $0100                                     ; $4b63: $01 $00 $01
	add hl, bc                                       ; $4b66: $09
	ld bc, $0b14                                     ; $4b67: $01 $14 $0b
	ld e, $a4                                        ; $4b6a: $1e $a4
	call $4824                                       ; $4b6c: $cd $24 $48
	ret                                              ; $4b6f: $c9


Call_006_4b70:
	ld hl, $9800                                     ; $4b70: $21 $00 $98
	ld de, $9c00                                     ; $4b73: $11 $00 $9c
	ld bc, $1320                                     ; $4b76: $01 $20 $13
	call Call_006_4937                               ; $4b79: $cd $37 $49
	ld a, [wInitialA]                                    ; $4b7c: $fa $00 $c1
	cp $11                                           ; $4b7f: $fe $11
	ret nz                                           ; $4b81: $c0

	ld a, $01                                        ; $4b82: $3e $01
	ldh [rVBK], a                                    ; $4b84: $e0 $4f
	ld hl, $9800                                     ; $4b86: $21 $00 $98
	ld de, $9c00                                     ; $4b89: $11 $00 $9c
	ld bc, $1320                                     ; $4b8c: $01 $20 $13
	call Call_006_4937                               ; $4b8f: $cd $37 $49
	xor a                                            ; $4b92: $af
	ldh [rVBK], a                                    ; $4b93: $e0 $4f
	ret                                              ; $4b95: $c9


Call_006_4b96:
	ld hl, $40de                                     ; $4b96: $21 $de $40
	call $0aab                                       ; $4b99: $cd $ab $0a
	call Call_006_4b70                               ; $4b9c: $cd $70 $4b
	push hl                                          ; $4b9f: $e5
	push de                                          ; $4ba0: $d5
	ld hl, $6b6a                                     ; $4ba1: $21 $6a $6b
	ld de, $d5e3                                     ; $4ba4: $11 $e3 $d5
	rst FarCall                                          ; $4ba7: $f7
	call nc, $21cc                                   ; $4ba8: $d4 $cc $21
	pop de                                           ; $4bab: $d1
	pop hl                                           ; $4bac: $e1
	ld hl, $d5e3                                     ; $4bad: $21 $e3 $d5
	call Call_006_4741                               ; $4bb0: $cd $41 $47
	ld hl, $9c09                                     ; $4bb3: $21 $09 $9c
	ld bc, $0506                                     ; $4bb6: $01 $06 $05
	ld e, $a4                                        ; $4bb9: $1e $a4
	call $4824                                       ; $4bbb: $cd $24 $48
	ld hl, $d5e3                                     ; $4bbe: $21 $e3 $d5
	call Call_006_4741                               ; $4bc1: $cd $41 $47
	ld hl, $9c09                                     ; $4bc4: $21 $09 $9c
	ld bc, $0506                                     ; $4bc7: $01 $06 $05
	ld de, $d4d3                                     ; $4bca: $11 $d3 $d4
	jp Jump_006_484a                                 ; $4bcd: $c3 $4a $48


Call_006_4bd0:
	ld hl, $9800                                     ; $4bd0: $21 $00 $98
	ld bc, $1220                                     ; $4bd3: $01 $20 $12
	ld de, $00a3                                     ; $4bd6: $11 $a3 $00
	rst FarCall                                          ; $4bd9: $f7
	xor a                                            ; $4bda: $af
	ld b, l                                          ; $4bdb: $45
	ld [$0021], sp                                   ; $4bdc: $08 $21 $00
	sbc b                                            ; $4bdf: $98
	ld bc, $1220                                     ; $4be0: $01 $20 $12
	ld de, $0100                                     ; $4be3: $11 $00 $01
	rst FarCall                                          ; $4be6: $f7
	xor a                                            ; $4be7: $af
	ld b, l                                          ; $4be8: $45
	ld [$0021], sp                                   ; $4be9: $08 $21 $00
	sbc h                                            ; $4bec: $9c
	ld bc, $0314                                     ; $4bed: $01 $14 $03
	ld de, $00a3                                     ; $4bf0: $11 $a3 $00
	rst FarCall                                          ; $4bf3: $f7
	xor a                                            ; $4bf4: $af
	ld b, l                                          ; $4bf5: $45
	ld [$6021], sp                                   ; $4bf6: $08 $21 $60
	sbc h                                            ; $4bf9: $9c
	ld bc, $0c14                                     ; $4bfa: $01 $14 $0c
	ld de, $00a0                                     ; $4bfd: $11 $a0 $00
	rst FarCall                                          ; $4c00: $f7
	xor a                                            ; $4c01: $af
	ld b, l                                          ; $4c02: $45
	ld [$e021], sp                                   ; $4c03: $08 $21 $e0
	sbc l                                            ; $4c06: $9d
	ld bc, $0314                                     ; $4c07: $01 $14 $03
	ld de, $00a3                                     ; $4c0a: $11 $a3 $00
	rst FarCall                                          ; $4c0d: $f7
	xor a                                            ; $4c0e: $af
	ld b, l                                          ; $4c0f: $45
	ld [$0021], sp                                   ; $4c10: $08 $21 $00
	sbc h                                            ; $4c13: $9c
	ld bc, $1220                                     ; $4c14: $01 $20 $12
	ld de, $0100                                     ; $4c17: $11 $00 $01
	rst FarCall                                          ; $4c1a: $f7
	xor a                                            ; $4c1b: $af
	ld b, l                                          ; $4c1c: $45
	ld [$afc9], sp                                   ; $4c1d: $08 $c9 $af
	ld [$c157], a                                    ; $4c20: $ea $57 $c1
	ld hl, $40ea                                     ; $4c23: $21 $ea $40
	ld a, l                                          ; $4c26: $7d
	ld [$c159], a                                    ; $4c27: $ea $59 $c1
	ld a, h                                          ; $4c2a: $7c
	ld [$c15a], a                                    ; $4c2b: $ea $5a $c1
	ld hl, $0000                                     ; $4c2e: $21 $00 $00
	ld a, l                                          ; $4c31: $7d
	ld [$c15b], a                                    ; $4c32: $ea $5b $c1
	ld a, h                                          ; $4c35: $7c
	ld [$c15c], a                                    ; $4c36: $ea $5c $c1
	ld hl, $0046                                     ; $4c39: $21 $46 $00
	ld a, l                                          ; $4c3c: $7d
	ld [$c162], a                                    ; $4c3d: $ea $62 $c1
	ld a, h                                          ; $4c40: $7c
	ld [$c163], a                                    ; $4c41: $ea $63 $c1
	ld hl, $9c00                                     ; $4c44: $21 $00 $9c
	ld a, l                                          ; $4c47: $7d
	ld [$c15d], a                                    ; $4c48: $ea $5d $c1
	ld a, h                                          ; $4c4b: $7c
	ld [$c15e], a                                    ; $4c4c: $ea $5e $c1
	ld a, $08                                        ; $4c4f: $3e $08
	ld [wMenuOptionSelected], a                                    ; $4c51: $ea $5f $c1
	ld a, $0a                                        ; $4c54: $3e $0a
	ld [$c160], a                                    ; $4c56: $ea $60 $c1
	call Call_006_4a81                               ; $4c59: $cd $81 $4a
	ld hl, $011c                                     ; $4c5c: $21 $1c $01
	ld a, l                                          ; $4c5f: $7d
	ld [$c162], a                                    ; $4c60: $ea $62 $c1
	ld a, h                                          ; $4c63: $7c
	ld [$c163], a                                    ; $4c64: $ea $63 $c1
	ld hl, $9d00                                     ; $4c67: $21 $00 $9d
	ld a, l                                          ; $4c6a: $7d
	ld [$c15d], a                                    ; $4c6b: $ea $5d $c1
	ld a, h                                          ; $4c6e: $7c
	ld [$c15e], a                                    ; $4c6f: $ea $5e $c1
	ld a, $0a                                        ; $4c72: $3e $0a
	ld [wMenuOptionSelected], a                                    ; $4c74: $ea $5f $c1
	ld a, $0a                                        ; $4c77: $3e $0a
	ld [$c160], a                                    ; $4c79: $ea $60 $c1
	call Call_006_4a81                               ; $4c7c: $cd $81 $4a
	ld hl, $40f7                                     ; $4c7f: $21 $f7 $40
	call $0aab                                       ; $4c82: $cd $ab $0a
	ld hl, $4104                                     ; $4c85: $21 $04 $41
	jp Jump_006_4aee                                 ; $4c88: $c3 $ee $4a


Call_006_4c8b:
	xor a                                            ; $4c8b: $af
	ld [$c157], a                                    ; $4c8c: $ea $57 $c1
	push hl                                          ; $4c8f: $e5
	push de                                          ; $4c90: $d5
	ld hl, $4cbb                                     ; $4c91: $21 $bb $4c
	ld de, $d5e3                                     ; $4c94: $11 $e3 $d5
	rst FarCall                                          ; $4c97: $f7
	xor d                                            ; $4c98: $aa
	call z, $d122                                    ; $4c99: $cc $22 $d1
	pop hl                                           ; $4c9c: $e1
	ld hl, $4107                                     ; $4c9d: $21 $07 $41
	ld a, l                                          ; $4ca0: $7d
	ld [$c159], a                                    ; $4ca1: $ea $59 $c1
	ld a, h                                          ; $4ca4: $7c
	ld [$c15a], a                                    ; $4ca5: $ea $5a $c1
	ld hl, $d5e3                                     ; $4ca8: $21 $e3 $d5
	ld a, l                                          ; $4cab: $7d
	ld [$c15b], a                                    ; $4cac: $ea $5b $c1
	ld a, h                                          ; $4caf: $7c
	ld [$c15c], a                                    ; $4cb0: $ea $5c $c1
	ld hl, $00a4                                     ; $4cb3: $21 $a4 $00
	ld a, l                                          ; $4cb6: $7d
	ld [$c162], a                                    ; $4cb7: $ea $62 $c1
	ld a, h                                          ; $4cba: $7c
	ld [$c163], a                                    ; $4cbb: $ea $63 $c1
	ld hl, $9881                                     ; $4cbe: $21 $81 $98
	ld a, l                                          ; $4cc1: $7d
	ld [$c15d], a                                    ; $4cc2: $ea $5d $c1
	ld a, h                                          ; $4cc5: $7c
	ld [$c15e], a                                    ; $4cc6: $ea $5e $c1
	ld a, $0e                                        ; $4cc9: $3e $0e
	ld [wMenuOptionSelected], a                                    ; $4ccb: $ea $5f $c1
	ld a, $0a                                        ; $4cce: $3e $0a
	ld [$c160], a                                    ; $4cd0: $ea $60 $c1
	jp Jump_006_4a81                                 ; $4cd3: $c3 $81 $4a


Call_006_4cd6:
	ld hl, $8a00                                     ; $4cd6: $21 $00 $8a
	ld de, $8fc0                                     ; $4cd9: $11 $c0 $8f
	ld b, $40                                        ; $4cdc: $06 $40

jr_006_4cde:
	di                                               ; $4cde: $f3

jr_006_4cdf:
	ldh a, [rSTAT]                                   ; $4cdf: $f0 $41
	bit 1, a                                         ; $4ce1: $cb $4f
	jr nz, jr_006_4cdf                               ; $4ce3: $20 $fa

	ld a, [hl+]                                      ; $4ce5: $2a
	ld [de], a                                       ; $4ce6: $12
	inc de                                           ; $4ce7: $13
	ei                                               ; $4ce8: $fb
	dec b                                            ; $4ce9: $05
	jr nz, jr_006_4cde                               ; $4cea: $20 $f2

	ret                                              ; $4cec: $c9


Call_006_4ced:
	ld hl, $8fc0                                     ; $4ced: $21 $c0 $8f
	ld de, $8a00                                     ; $4cf0: $11 $00 $8a
	ld b, $40                                        ; $4cf3: $06 $40

jr_006_4cf5:
	di                                               ; $4cf5: $f3

jr_006_4cf6:
	ldh a, [rSTAT]                                   ; $4cf6: $f0 $41
	bit 1, a                                         ; $4cf8: $cb $4f
	jr nz, jr_006_4cf6                               ; $4cfa: $20 $fa

	ld a, [hl+]                                      ; $4cfc: $2a
	ld [de], a                                       ; $4cfd: $12
	inc de                                           ; $4cfe: $13
	ei                                               ; $4cff: $fb
	dec b                                            ; $4d00: $05
	jr nz, jr_006_4cf5                               ; $4d01: $20 $f2

	ret                                              ; $4d03: $c9


Call_006_4d04:
	ld hl, $9800                                     ; $4d04: $21 $00 $98
	ld bc, $0314                                     ; $4d07: $01 $14 $03
	ld de, $00a3                                     ; $4d0a: $11 $a3 $00
	rst FarCall                                          ; $4d0d: $f7
	xor a                                            ; $4d0e: $af
	ld b, l                                          ; $4d0f: $45
	ld [$6021], sp                                   ; $4d10: $08 $21 $60
	sbc b                                            ; $4d13: $98
	ld bc, $0c14                                     ; $4d14: $01 $14 $0c
	ld de, $00a0                                     ; $4d17: $11 $a0 $00
	rst FarCall                                          ; $4d1a: $f7
	xor a                                            ; $4d1b: $af
	ld b, l                                          ; $4d1c: $45
	ld [$e021], sp                                   ; $4d1d: $08 $21 $e0
	sbc c                                            ; $4d20: $99
	ld bc, $0314                                     ; $4d21: $01 $14 $03
	ld de, $00a3                                     ; $4d24: $11 $a3 $00
	rst FarCall                                          ; $4d27: $f7
	xor a                                            ; $4d28: $af
	ld b, l                                          ; $4d29: $45
	ld [$0021], sp                                   ; $4d2a: $08 $21 $00
	sbc b                                            ; $4d2d: $98
	ld bc, $1220                                     ; $4d2e: $01 $20 $12
	ld de, $0100                                     ; $4d31: $11 $00 $01
	rst FarCall                                          ; $4d34: $f7
	xor a                                            ; $4d35: $af
	ld b, l                                          ; $4d36: $45
	ld [$0021], sp                                   ; $4d37: $08 $21 $00
	sbc h                                            ; $4d3a: $9c
	ld bc, $0314                                     ; $4d3b: $01 $14 $03
	ld de, $00ff                                     ; $4d3e: $11 $ff $00
	rst FarCall                                          ; $4d41: $f7
	xor a                                            ; $4d42: $af
	ld b, l                                          ; $4d43: $45
	ld [$6021], sp                                   ; $4d44: $08 $21 $60
	sbc h                                            ; $4d47: $9c
	ld bc, $0c14                                     ; $4d48: $01 $14 $0c
	ld de, $00fc                                     ; $4d4b: $11 $fc $00
	rst FarCall                                          ; $4d4e: $f7
	xor a                                            ; $4d4f: $af
	ld b, l                                          ; $4d50: $45
	ld [$e021], sp                                   ; $4d51: $08 $21 $e0
	sbc l                                            ; $4d54: $9d
	ld bc, $0314                                     ; $4d55: $01 $14 $03
	ld de, $00ff                                     ; $4d58: $11 $ff $00
	rst FarCall                                          ; $4d5b: $f7
	xor a                                            ; $4d5c: $af
	ld b, l                                          ; $4d5d: $45
	ld [$0021], sp                                   ; $4d5e: $08 $21 $00
	sbc h                                            ; $4d61: $9c
	ld bc, $1220                                     ; $4d62: $01 $20 $12
	ld de, $0100                                     ; $4d65: $11 $00 $01
	rst FarCall                                          ; $4d68: $f7
	xor a                                            ; $4d69: $af
	ld b, l                                          ; $4d6a: $45
	ld [$26c9], sp                                   ; $4d6b: $08 $c9 $26
	jp nz, $002e                                     ; $4d6e: $c2 $2e $00

	ld [hl], $01                                     ; $4d71: $36 $01
	ld l, $01                                        ; $4d73: $2e $01
	ld [hl], $00                                     ; $4d75: $36 $00
	ld l, $02                                        ; $4d77: $2e $02
	ld [hl], $00                                     ; $4d79: $36 $00
	ld l, $07                                        ; $4d7b: $2e $07
	ld [hl], $50                                     ; $4d7d: $36 $50
	ld l, $05                                        ; $4d7f: $2e $05
	ld [hl], $90                                     ; $4d81: $36 $90
	ld l, $0d                                        ; $4d83: $2e $0d
	ld [hl], $01                                     ; $4d85: $36 $01
	inc hl                                           ; $4d87: $23
	ld [hl], $40                                     ; $4d88: $36 $40
	ld l, $0c                                        ; $4d8a: $2e $0c
	ld [hl], $01                                     ; $4d8c: $36 $01
	ld l, $08                                        ; $4d8e: $2e $08
	ld [hl], $43                                     ; $4d90: $36 $43
	inc hl                                           ; $4d92: $23
	ld [hl], $d8                                     ; $4d93: $36 $d8
	ret                                              ; $4d95: $c9


	call Call_006_4d9c                               ; $4d96: $cd $9c $4d
	jp Jump_006_4e25                                 ; $4d99: $c3 $25 $4e


Call_006_4d9c:
	ld a, [$c152]                                    ; $4d9c: $fa $52 $c1
	rst JumpTable                                          ; $4d9f: $c7
	or h                                             ; $4da0: $b4
	ld c, l                                          ; $4da1: $4d
	inc e                                            ; $4da2: $1c
	ld c, [hl]                                       ; $4da3: $4e
	dec l                                            ; $4da4: $2d
	ld b, a                                          ; $4da5: $47
	db $ec                                           ; $4da6: $ec
	ld c, l                                          ; $4da7: $4d
	rst $38                                          ; $4da8: $ff
	ld b, [hl]                                       ; $4da9: $46
	ld [$ff4e], sp                                   ; $4daa: $08 $4e $ff
	ld b, [hl]                                       ; $4dad: $46
	dec [hl]                                         ; $4dae: $35
	ld b, a                                          ; $4daf: $47
	dec l                                            ; $4db0: $2d
	ld b, a                                          ; $4db1: $47
	rst SubAFromHL                                          ; $4db2: $d7
	ld b, [hl]                                       ; $4db3: $46
	xor a                                            ; $4db4: $af
	ld [$c153], a                                    ; $4db5: $ea $53 $c1
	call $0963                                       ; $4db8: $cd $63 $09
	call Call_006_4bd0                               ; $4dbb: $cd $d0 $4b
	call Call_006_50c2                               ; $4dbe: $cd $c2 $50
	call Call_006_515a                               ; $4dc1: $cd $5a $51
	ld a, $48                                        ; $4dc4: $3e $48
	ld [$c17c], a                                    ; $4dc6: $ea $7c $c1
	ld a, $a0                                        ; $4dc9: $3e $a0
	ldh [hDisp0_SCX], a                                     ; $4dcb: $e0 $84
	ld hl, $0014                                     ; $4dcd: $21 $14 $00
	ld bc, $0500                                     ; $4dd0: $01 $00 $05
	call Call_006_4774                               ; $4dd3: $cd $74 $47
	ld a, $50                                        ; $4dd6: $3e $50
	ld [$c154], a                                    ; $4dd8: $ea $54 $c1
	ld a, $2b                                        ; $4ddb: $3e $2b
	ld [$c155], a                                    ; $4ddd: $ea $55 $c1
	ld a, $0f                                        ; $4de0: $3e $0f
	call $068e                                       ; $4de2: $cd $8e $06
	ld a, $97                                        ; $4de5: $3e $97
	ldh [hDisp0_LCDC], a                                     ; $4de7: $e0 $82
	jp Jump_006_46df                                 ; $4de9: $c3 $df $46


	call Call_006_4b1e                               ; $4dec: $cd $1e $4b
	call Call_006_4798                               ; $4def: $cd $98 $47
	cp $a0                                           ; $4df2: $fe $a0
	jr c, jr_006_4df8                                ; $4df4: $38 $02

	ld a, $a0                                        ; $4df6: $3e $a0

jr_006_4df8:
	cpl                                              ; $4df8: $2f
	inc a                                            ; $4df9: $3c
	add $a0                                          ; $4dfa: $c6 $a0
	ldh [hDisp0_SCX], a                                     ; $4dfc: $e0 $84
	ret nz                                           ; $4dfe: $c0

	ld hl, $00b9                                     ; $4dff: $21 $b9 $00
	call Call_006_4758                               ; $4e02: $cd $58 $47
	jp Jump_006_46df                                 ; $4e05: $c3 $df $46


	call Call_006_4798                               ; $4e08: $cd $98 $47
	cp $48                                           ; $4e0b: $fe $48
	jr c, jr_006_4e11                                ; $4e0d: $38 $02

	ld a, $48                                        ; $4e0f: $3e $48

jr_006_4e11:
	cpl                                              ; $4e11: $2f
	inc a                                            ; $4e12: $3c
	add $48                                          ; $4e13: $c6 $48
	ld [$c17c], a                                    ; $4e15: $ea $7c $c1
	ret nz                                           ; $4e18: $c0

	jp Jump_006_46df                                 ; $4e19: $c3 $df $46


	ld bc, $65ee                                     ; $4e1c: $01 $ee $65
	call Call_006_470c                               ; $4e1f: $cd $0c $47
	jp Jump_006_46df                                 ; $4e22: $c3 $df $46


Jump_006_4e25:
	ld a, [$c153]                                    ; $4e25: $fa $53 $c1
	rst JumpTable                                          ; $4e28: $c7
	dec l                                            ; $4e29: $2d
	ld c, [hl]                                       ; $4e2a: $4e
	inc a                                            ; $4e2b: $3c
	ld c, [hl]                                       ; $4e2c: $4e
	ld hl, $41a6                                     ; $4e2d: $21 $a6 $41
	call $0aab                                       ; $4e30: $cd $ab $0a
	ld hl, $41b3                                     ; $4e33: $21 $b3 $41
	call Call_006_4aee                               ; $4e36: $cd $ee $4a
	jp Jump_006_46ef                                 ; $4e39: $c3 $ef $46


	jp Jump_006_4b0f                                 ; $4e3c: $c3 $0f $4b


	call Call_006_4e45                               ; $4e3f: $cd $45 $4e
	jp Jump_006_4ecc                                 ; $4e42: $c3 $cc $4e


Call_006_4e45:
	ld a, [$c152]                                    ; $4e45: $fa $52 $c1
	rst JumpTable                                          ; $4e48: $c7
	ld e, l                                          ; $4e49: $5d
	ld c, [hl]                                       ; $4e4a: $4e
	jp $2d4e                                         ; $4e4b: $c3 $4e $2d


	ld b, a                                          ; $4e4e: $47
	sub l                                            ; $4e4f: $95
	ld c, [hl]                                       ; $4e50: $4e
	rst $38                                          ; $4e51: $ff
	ld b, [hl]                                       ; $4e52: $46
	xor a                                            ; $4e53: $af
	ld c, [hl]                                       ; $4e54: $4e
	rst $38                                          ; $4e55: $ff
	ld b, [hl]                                       ; $4e56: $46
	dec [hl]                                         ; $4e57: $35
	ld b, a                                          ; $4e58: $47
	dec l                                            ; $4e59: $2d
	ld b, a                                          ; $4e5a: $47
	rst SubAFromHL                                          ; $4e5b: $d7
	ld b, [hl]                                       ; $4e5c: $46
	xor a                                            ; $4e5d: $af
	ld [$c153], a                                    ; $4e5e: $ea $53 $c1
	call $0963                                       ; $4e61: $cd $63 $09
	call Call_006_4bd0                               ; $4e64: $cd $d0 $4b
	call Call_006_51d6                               ; $4e67: $cd $d6 $51
	call Call_006_526e                               ; $4e6a: $cd $6e $52
	ld a, $48                                        ; $4e6d: $3e $48
	ld [$c17c], a                                    ; $4e6f: $ea $7c $c1
	ld a, $60                                        ; $4e72: $3e $60
	ldh [hDisp0_SCX], a                                     ; $4e74: $e0 $84
	ld hl, $0014                                     ; $4e76: $21 $14 $00
	ld bc, $0500                                     ; $4e79: $01 $00 $05
	call Call_006_4774                               ; $4e7c: $cd $74 $47
	ld a, $50                                        ; $4e7f: $3e $50
	ld [$c154], a                                    ; $4e81: $ea $54 $c1
	ld a, $2b                                        ; $4e84: $3e $2b
	ld [$c155], a                                    ; $4e86: $ea $55 $c1
	ld a, $0f                                        ; $4e89: $3e $0f
	call $068e                                       ; $4e8b: $cd $8e $06
	ld a, $97                                        ; $4e8e: $3e $97
	ldh [hDisp0_LCDC], a                                     ; $4e90: $e0 $82
	jp Jump_006_46df                                 ; $4e92: $c3 $df $46


	call Call_006_4b1e                               ; $4e95: $cd $1e $4b
	call Call_006_4798                               ; $4e98: $cd $98 $47
	cp $a0                                           ; $4e9b: $fe $a0
	jr c, jr_006_4ea1                                ; $4e9d: $38 $02

	ld a, $a0                                        ; $4e9f: $3e $a0

jr_006_4ea1:
	sub $a0                                          ; $4ea1: $d6 $a0
	ldh [hDisp0_SCX], a                                     ; $4ea3: $e0 $84
	ret nz                                           ; $4ea5: $c0

	ld hl, $00b9                                     ; $4ea6: $21 $b9 $00
	call Call_006_4758                               ; $4ea9: $cd $58 $47
	jp Jump_006_46df                                 ; $4eac: $c3 $df $46


	call Call_006_4798                               ; $4eaf: $cd $98 $47
	cp $48                                           ; $4eb2: $fe $48
	jr c, jr_006_4eb8                                ; $4eb4: $38 $02

	ld a, $48                                        ; $4eb6: $3e $48

jr_006_4eb8:
	cpl                                              ; $4eb8: $2f
	inc a                                            ; $4eb9: $3c
	add $48                                          ; $4eba: $c6 $48
	ld [$c17c], a                                    ; $4ebc: $ea $7c $c1
	ret nz                                           ; $4ebf: $c0

	jp Jump_006_46df                                 ; $4ec0: $c3 $df $46


	ld bc, $65f4                                     ; $4ec3: $01 $f4 $65
	call Call_006_470c                               ; $4ec6: $cd $0c $47
	jp Jump_006_46df                                 ; $4ec9: $c3 $df $46


Jump_006_4ecc:
	ld a, [$c153]                                    ; $4ecc: $fa $53 $c1
	rst JumpTable                                          ; $4ecf: $c7
	call nc, $e34e                                   ; $4ed0: $d4 $4e $e3
	ld c, [hl]                                       ; $4ed3: $4e
	ld hl, $41d0                                     ; $4ed4: $21 $d0 $41
	call $0aab                                       ; $4ed7: $cd $ab $0a
	ld hl, $41dd                                     ; $4eda: $21 $dd $41
	call Call_006_4aee                               ; $4edd: $cd $ee $4a
	jp Jump_006_46ef                                 ; $4ee0: $c3 $ef $46


	jp Jump_006_4b0f                                 ; $4ee3: $c3 $0f $4b


	call Call_006_4eec                               ; $4ee6: $cd $ec $4e
	jp Jump_006_4f75                                 ; $4ee9: $c3 $75 $4f


Call_006_4eec:
	ld a, [$c152]                                    ; $4eec: $fa $52 $c1
	rst JumpTable                                          ; $4eef: $c7
	inc b                                            ; $4ef0: $04
	ld c, a                                          ; $4ef1: $4f
	ld l, h                                          ; $4ef2: $6c
	ld c, a                                          ; $4ef3: $4f
	dec l                                            ; $4ef4: $2d
	ld b, a                                          ; $4ef5: $47
	inc a                                            ; $4ef6: $3c
	ld c, a                                          ; $4ef7: $4f
	rst $38                                          ; $4ef8: $ff
	ld b, [hl]                                       ; $4ef9: $46
	ld e, b                                          ; $4efa: $58
	ld c, a                                          ; $4efb: $4f
	rst $38                                          ; $4efc: $ff
	ld b, [hl]                                       ; $4efd: $46
	dec [hl]                                         ; $4efe: $35
	ld b, a                                          ; $4eff: $47
	dec l                                            ; $4f00: $2d
	ld b, a                                          ; $4f01: $47
	rst SubAFromHL                                          ; $4f02: $d7
	ld b, [hl]                                       ; $4f03: $46
	xor a                                            ; $4f04: $af
	ld [$c153], a                                    ; $4f05: $ea $53 $c1
	call $0963                                       ; $4f08: $cd $63 $09
	call Call_006_4bd0                               ; $4f0b: $cd $d0 $4b
	call Call_006_52ea                               ; $4f0e: $cd $ea $52
	call Call_006_5382                               ; $4f11: $cd $82 $53
	ld a, $48                                        ; $4f14: $3e $48
	ld [$c17c], a                                    ; $4f16: $ea $7c $c1
	ld a, $a0                                        ; $4f19: $3e $a0
	ldh [hDisp0_SCX], a                                     ; $4f1b: $e0 $84
	ld hl, $0014                                     ; $4f1d: $21 $14 $00
	ld bc, $0500                                     ; $4f20: $01 $00 $05
	call Call_006_4774                               ; $4f23: $cd $74 $47
	ld a, $50                                        ; $4f26: $3e $50
	ld [$c154], a                                    ; $4f28: $ea $54 $c1
	ld a, $2b                                        ; $4f2b: $3e $2b
	ld [$c155], a                                    ; $4f2d: $ea $55 $c1
	ld a, $0f                                        ; $4f30: $3e $0f
	call $068e                                       ; $4f32: $cd $8e $06
	ld a, $97                                        ; $4f35: $3e $97
	ldh [hDisp0_LCDC], a                                     ; $4f37: $e0 $82
	jp Jump_006_46df                                 ; $4f39: $c3 $df $46


	call Call_006_4b1e                               ; $4f3c: $cd $1e $4b
	call Call_006_4798                               ; $4f3f: $cd $98 $47
	cp $a0                                           ; $4f42: $fe $a0
	jr c, jr_006_4f48                                ; $4f44: $38 $02

	ld a, $a0                                        ; $4f46: $3e $a0

jr_006_4f48:
	cpl                                              ; $4f48: $2f
	inc a                                            ; $4f49: $3c
	add $a0                                          ; $4f4a: $c6 $a0
	ldh [hDisp0_SCX], a                                     ; $4f4c: $e0 $84
	ret nz                                           ; $4f4e: $c0

	ld hl, $00b9                                     ; $4f4f: $21 $b9 $00
	call Call_006_4758                               ; $4f52: $cd $58 $47
	jp Jump_006_46df                                 ; $4f55: $c3 $df $46


	call Call_006_4798                               ; $4f58: $cd $98 $47
	cp $48                                           ; $4f5b: $fe $48
	jr c, jr_006_4f61                                ; $4f5d: $38 $02

	ld a, $48                                        ; $4f5f: $3e $48

jr_006_4f61:
	cpl                                              ; $4f61: $2f
	inc a                                            ; $4f62: $3c
	add $48                                          ; $4f63: $c6 $48
	ld [$c17c], a                                    ; $4f65: $ea $7c $c1
	ret nz                                           ; $4f68: $c0

	jp Jump_006_46df                                 ; $4f69: $c3 $df $46


	ld bc, $65fc                                     ; $4f6c: $01 $fc $65
	call Call_006_470c                               ; $4f6f: $cd $0c $47
	jp Jump_006_46df                                 ; $4f72: $c3 $df $46


Jump_006_4f75:
	ld a, [$c153]                                    ; $4f75: $fa $53 $c1
	rst JumpTable                                          ; $4f78: $c7
	ld a, l                                          ; $4f79: $7d
	ld c, a                                          ; $4f7a: $4f
	adc h                                            ; $4f7b: $8c
	ld c, a                                          ; $4f7c: $4f
	ld hl, $41fa                                     ; $4f7d: $21 $fa $41
	call $0aab                                       ; $4f80: $cd $ab $0a
	ld hl, $4207                                     ; $4f83: $21 $07 $42
	call Call_006_4aee                               ; $4f86: $cd $ee $4a
	jp Jump_006_46ef                                 ; $4f89: $c3 $ef $46


	jp Jump_006_4b0f                                 ; $4f8c: $c3 $0f $4b


	call Call_006_4f95                               ; $4f8f: $cd $95 $4f
	jp Jump_006_505e                                 ; $4f92: $c3 $5e $50


Call_006_4f95:
	ld a, [$c152]                                    ; $4f95: $fa $52 $c1
	rst JumpTable                                          ; $4f98: $c7
	xor a                                            ; $4f99: $af
	ld c, a                                          ; $4f9a: $4f
	ld d, c                                          ; $4f9b: $51
	ld d, b                                          ; $4f9c: $50
	dec l                                            ; $4f9d: $2d
	ld b, a                                          ; $4f9e: $47
	ldh a, [c]                                       ; $4f9f: $f2
	ld c, a                                          ; $4fa0: $4f
	rrca                                             ; $4fa1: $0f
	ld d, b                                          ; $4fa2: $50
	rst $38                                          ; $4fa3: $ff
	ld b, [hl]                                       ; $4fa4: $46
	dec sp                                           ; $4fa5: $3b
	ld d, b                                          ; $4fa6: $50
	rst $38                                          ; $4fa7: $ff
	ld b, [hl]                                       ; $4fa8: $46
	dec sp                                           ; $4fa9: $3b
	ld b, a                                          ; $4faa: $47
	dec l                                            ; $4fab: $2d
	ld b, a                                          ; $4fac: $47
	rst SubAFromHL                                          ; $4fad: $d7
	ld b, [hl]                                       ; $4fae: $46
	xor a                                            ; $4faf: $af
	ld [$c153], a                                    ; $4fb0: $ea $53 $c1
	call $0963                                       ; $4fb3: $cd $63 $09
	ld hl, $9800                                     ; $4fb6: $21 $00 $98
	ld bc, $1220                                     ; $4fb9: $01 $20 $12
	call Call_006_4961                               ; $4fbc: $cd $61 $49
	ld hl, $9c00                                     ; $4fbf: $21 $00 $9c
	ld bc, $1220                                     ; $4fc2: $01 $20 $12
	call Call_006_4961                               ; $4fc5: $cd $61 $49
	ld a, $00                                        ; $4fc8: $3e $00
	ld [$c17a], a                                    ; $4fca: $ea $7a $c1
	ld a, $8f                                        ; $4fcd: $3e $8f
	ld [$c17b], a                                    ; $4fcf: $ea $7b $c1
	ld a, $4f                                        ; $4fd2: $3e $4f
	ld [$c179], a                                    ; $4fd4: $ea $79 $c1
	ld hl, $a500                                     ; $4fd7: $21 $00 $a5
	call $095c                                       ; $4fda: $cd $5c $09
	ld hl, $0195                                     ; $4fdd: $21 $95 $01
	call Call_006_4758                               ; $4fe0: $cd $58 $47
	ld a, $0d                                        ; $4fe3: $3e $0d
	call $068e                                       ; $4fe5: $cd $8e $06
	call Call_006_53fe                               ; $4fe8: $cd $fe $53
	ld a, $bf                                        ; $4feb: $3e $bf
	ldh [hDisp0_LCDC], a                                     ; $4fed: $e0 $82
	jp Jump_006_46df                                 ; $4fef: $c3 $df $46


	call Call_006_4798                               ; $4ff2: $cd $98 $47
	cp $9e                                           ; $4ff5: $fe $9e
	jr c, jr_006_4ffb                                ; $4ff7: $38 $02

	ld a, $9e                                        ; $4ff9: $3e $9e

jr_006_4ffb:
	ld b, a                                          ; $4ffb: $47
	cpl                                              ; $4ffc: $2f
	inc a                                            ; $4ffd: $3c
	add $a5                                          ; $4ffe: $c6 $a5
	ldh [hDisp0_WX], a                                     ; $5000: $e0 $89
	ld a, b                                          ; $5002: $78
	cp $9e                                           ; $5003: $fe $9e
	ret nz                                           ; $5005: $c0

	ldh a, [hDisp0_LCDC]                                     ; $5006: $f0 $82
	and $d7                                          ; $5008: $e6 $d7
	ldh [hDisp0_LCDC], a                                     ; $500a: $e0 $82
	jp Jump_006_46df                                 ; $500c: $c3 $df $46


	ld a, $03                                        ; $500f: $3e $03
	ld [$c154], a                                    ; $5011: $ea $54 $c1
	ld [$c155], a                                    ; $5014: $ea $55 $c1
	call Call_006_4b70                               ; $5017: $cd $70 $4b
	push hl                                          ; $501a: $e5
	push de                                          ; $501b: $d5
	ld hl, $780f                                     ; $501c: $21 $0f $78
	ld de, $d5e3                                     ; $501f: $11 $e3 $d5
	rst FarCall                                          ; $5022: $f7
	rst SubAFromHL                                          ; $5023: $d7
	call z, $d125                                    ; $5024: $cc $25 $d1
	pop hl                                           ; $5027: $e1
	xor a                                            ; $5028: $af
	ld [$c157], a                                    ; $5029: $ea $57 $c1
	call Call_006_547a                               ; $502c: $cd $7a $54
	call Call_006_4990                               ; $502f: $cd $90 $49
	ldh a, [hDisp0_LCDC]                                     ; $5032: $f0 $82
	xor $08                                          ; $5034: $ee $08
	ldh [hDisp0_LCDC], a                                     ; $5036: $e0 $82
	jp Jump_006_46df                                 ; $5038: $c3 $df $46


	call Call_006_4990                               ; $503b: $cd $90 $49
	jr c, jr_006_5049                                ; $503e: $38 $09

	ldh a, [hDisp0_LCDC]                                     ; $5040: $f0 $82
	xor $08                                          ; $5042: $ee $08
	ldh [hDisp0_LCDC], a                                     ; $5044: $e0 $82
	jp Jump_006_46e7                                 ; $5046: $c3 $e7 $46


jr_006_5049:
	ld a, $18                                        ; $5049: $3e $18
	ld [$c154], a                                    ; $504b: $ea $54 $c1
	jp Jump_006_46df                                 ; $504e: $c3 $df $46


	ld bc, $6602                                     ; $5051: $01 $02 $66
	call Call_006_470c                               ; $5054: $cd $0c $47
	ld a, $d0                                        ; $5057: $3e $d0
	ldh [hDisp0_OBP1], a                                     ; $5059: $e0 $87
	jp Jump_006_46df                                 ; $505b: $c3 $df $46


Jump_006_505e:
	ld a, [$c153]                                    ; $505e: $fa $53 $c1
	rst JumpTable                                          ; $5061: $c7
	ld l, h                                          ; $5062: $6c
	ld d, b                                          ; $5063: $50
	add b                                            ; $5064: $80
	ld d, b                                          ; $5065: $50
	sub c                                            ; $5066: $91
	ld d, b                                          ; $5067: $50
	xor l                                            ; $5068: $ad
	ld d, b                                          ; $5069: $50
	pop bc                                           ; $506a: $c1
	ld d, b                                          ; $506b: $50
	ld hl, $423d                                     ; $506c: $21 $3d $42
	call $0aab                                       ; $506f: $cd $ab $0a
	ld hl, $424a                                     ; $5072: $21 $4a $42
	call Call_006_4aee                               ; $5075: $cd $ee $4a
	ld a, $80                                        ; $5078: $3e $80
	ld [$c201], a                                    ; $507a: $ea $01 $c2
	jp Jump_006_46ef                                 ; $507d: $c3 $ef $46


	call Call_006_5488                               ; $5080: $cd $88 $54
	ldh a, [hDisp0_WX]                                     ; $5083: $f0 $89
	cp $07                                           ; $5085: $fe $07
	ret nz                                           ; $5087: $c0

	ld hl, $0156                                     ; $5088: $21 $56 $01
	call Call_006_4758                               ; $508b: $cd $58 $47
	jp Jump_006_46ef                                 ; $508e: $c3 $ef $46


	call Call_006_4798                               ; $5091: $cd $98 $47
	cp $08                                           ; $5094: $fe $08
	jr c, jr_006_509a                                ; $5096: $38 $02

	ld a, $08                                        ; $5098: $3e $08

jr_006_509a:
	cpl                                              ; $509a: $2f
	inc a                                            ; $509b: $3c
	add $a8                                          ; $509c: $c6 $a8
	ld [$c205], a                                    ; $509e: $ea $05 $c2
	cp $a0                                           ; $50a1: $fe $a0
	ret nz                                           ; $50a3: $c0

	ld hl, $0156                                     ; $50a4: $21 $56 $01
	call Call_006_4758                               ; $50a7: $cd $58 $47
	jp Jump_006_46ef                                 ; $50aa: $c3 $ef $46


	call Call_006_4798                               ; $50ad: $cd $98 $47
	cp $08                                           ; $50b0: $fe $08
	jr c, jr_006_50b6                                ; $50b2: $38 $02

	ld a, $08                                        ; $50b4: $3e $08

jr_006_50b6:
	add $a0                                          ; $50b6: $c6 $a0
	ld [$c205], a                                    ; $50b8: $ea $05 $c2
	cp $a8                                           ; $50bb: $fe $a8
	ret nz                                           ; $50bd: $c0

	jp Jump_006_46ef                                 ; $50be: $c3 $ef $46


	ret                                              ; $50c1: $c9


Call_006_50c2:
	xor a                                            ; $50c2: $af
	ld [$c157], a                                    ; $50c3: $ea $57 $c1
	push hl                                          ; $50c6: $e5
	push de                                          ; $50c7: $d5
	ld hl, $4000                                     ; $50c8: $21 $00 $40
	ld de, $d5e3                                     ; $50cb: $11 $e3 $d5
	rst FarCall                                          ; $50ce: $f7
	cp h                                             ; $50cf: $bc
	call z, $d125                                    ; $50d0: $cc $25 $d1
	pop hl                                           ; $50d3: $e1
	ld hl, $4199                                     ; $50d4: $21 $99 $41
	ld a, l                                          ; $50d7: $7d
	ld [$c159], a                                    ; $50d8: $ea $59 $c1
	ld a, h                                          ; $50db: $7c
	ld [$c15a], a                                    ; $50dc: $ea $5a $c1
	ld hl, $d5e3                                     ; $50df: $21 $e3 $d5
	ld a, l                                          ; $50e2: $7d
	ld [$c15b], a                                    ; $50e3: $ea $5b $c1
	ld a, h                                          ; $50e6: $7c
	ld [$c15c], a                                    ; $50e7: $ea $5c $c1
	ld hl, $0000                                     ; $50ea: $21 $00 $00
	ld a, l                                          ; $50ed: $7d
	ld [$c162], a                                    ; $50ee: $ea $62 $c1
	ld a, h                                          ; $50f1: $7c
	ld [$c163], a                                    ; $50f2: $ea $63 $c1
	ld hl, $980a                                     ; $50f5: $21 $0a $98
	ld a, l                                          ; $50f8: $7d
	ld [$c15d], a                                    ; $50f9: $ea $5d $c1
	ld a, h                                          ; $50fc: $7c
	ld [$c15e], a                                    ; $50fd: $ea $5e $c1
	ld a, $09                                        ; $5100: $3e $09
	ld [wMenuOptionSelected], a                                    ; $5102: $ea $5f $c1
	ld a, $0a                                        ; $5105: $3e $0a
	ld [$c160], a                                    ; $5107: $ea $60 $c1
	call Call_006_4a81                               ; $510a: $cd $81 $4a
	ld hl, $9c0a                                     ; $510d: $21 $0a $9c
	ld a, l                                          ; $5110: $7d
	ld [$c15d], a                                    ; $5111: $ea $5d $c1
	ld a, h                                          ; $5114: $7c
	ld [$c15e], a                                    ; $5115: $ea $5e $c1
	call Call_006_4aab                               ; $5118: $cd $ab $4a
	push hl                                          ; $511b: $e5
	push de                                          ; $511c: $d5
	ld hl, $4364                                     ; $511d: $21 $64 $43
	ld de, $d5e3                                     ; $5120: $11 $e3 $d5
	rst FarCall                                          ; $5123: $f7
	cp h                                             ; $5124: $bc
	call z, $d125                                    ; $5125: $cc $25 $d1
	pop hl                                           ; $5128: $e1
	ld hl, $00ce                                     ; $5129: $21 $ce $00
	ld a, l                                          ; $512c: $7d
	ld [$c162], a                                    ; $512d: $ea $62 $c1
	ld a, h                                          ; $5130: $7c
	ld [$c163], a                                    ; $5131: $ea $63 $c1
	ld hl, $992a                                     ; $5134: $21 $2a $99
	ld a, l                                          ; $5137: $7d
	ld [$c15d], a                                    ; $5138: $ea $5d $c1
	ld a, h                                          ; $513b: $7c
	ld [$c15e], a                                    ; $513c: $ea $5e $c1
	ld a, $09                                        ; $513f: $3e $09
	ld [wMenuOptionSelected], a                                    ; $5141: $ea $5f $c1
	ld a, $0a                                        ; $5144: $3e $0a
	ld [$c160], a                                    ; $5146: $ea $60 $c1
	call Call_006_4a81                               ; $5149: $cd $81 $4a
	ld hl, $9d2a                                     ; $514c: $21 $2a $9d
	ld a, l                                          ; $514f: $7d
	ld [$c15d], a                                    ; $5150: $ea $5d $c1
	ld a, h                                          ; $5153: $7c
	ld [$c15e], a                                    ; $5154: $ea $5e $c1
	jp Jump_006_4aab                                 ; $5157: $c3 $ab $4a


Call_006_515a:
	xor a                                            ; $515a: $af
	ld [$c157], a                                    ; $515b: $ea $57 $c1
	push hl                                          ; $515e: $e5
	push de                                          ; $515f: $d5
	ld hl, $48fa                                     ; $5160: $21 $fa $48
	ld de, $d5e3                                     ; $5163: $11 $e3 $d5
	rst FarCall                                          ; $5166: $f7
	push bc                                          ; $5167: $c5
	call z, $d125                                    ; $5168: $cc $25 $d1
	pop hl                                           ; $516b: $e1
	ld hl, $41b6                                     ; $516c: $21 $b6 $41
	ld a, l                                          ; $516f: $7d
	ld [$c159], a                                    ; $5170: $ea $59 $c1
	ld a, h                                          ; $5173: $7c
	ld [$c15a], a                                    ; $5174: $ea $5a $c1
	ld hl, $d5e3                                     ; $5177: $21 $e3 $d5
	ld a, l                                          ; $517a: $7d
	ld [$c15b], a                                    ; $517b: $ea $5b $c1
	ld a, h                                          ; $517e: $7c
	ld [$c15c], a                                    ; $517f: $ea $5c $c1
	ld hl, $0058                                     ; $5182: $21 $58 $00
	ld a, l                                          ; $5185: $7d
	ld [$c162], a                                    ; $5186: $ea $62 $c1
	ld a, h                                          ; $5189: $7c
	ld [$c163], a                                    ; $518a: $ea $63 $c1
	ld hl, $9c60                                     ; $518d: $21 $60 $9c
	ld a, l                                          ; $5190: $7d
	ld [$c15d], a                                    ; $5191: $ea $5d $c1
	ld a, h                                          ; $5194: $7c
	ld [$c15e], a                                    ; $5195: $ea $5e $c1
	ld a, $06                                        ; $5198: $3e $06
	ld [wMenuOptionSelected], a                                    ; $519a: $ea $5f $c1
	ld a, $0c                                        ; $519d: $3e $0c
	ld [$c160], a                                    ; $519f: $ea $60 $c1
	call Call_006_4a81                               ; $51a2: $cd $81 $4a
	push hl                                          ; $51a5: $e5
	push de                                          ; $51a6: $d5
	ld hl, $4c33                                     ; $51a7: $21 $33 $4c
	ld de, $d5e3                                     ; $51aa: $11 $e3 $d5
	rst FarCall                                          ; $51ad: $f7
	push bc                                          ; $51ae: $c5
	call z, $d125                                    ; $51af: $cc $25 $d1
	pop hl                                           ; $51b2: $e1
	ld hl, $0138                                     ; $51b3: $21 $38 $01
	ld a, l                                          ; $51b6: $7d
	ld [$c162], a                                    ; $51b7: $ea $62 $c1
	ld a, h                                          ; $51ba: $7c
	ld [$c163], a                                    ; $51bb: $ea $63 $c1
	ld hl, $9d20                                     ; $51be: $21 $20 $9d
	ld a, l                                          ; $51c1: $7d
	ld [$c15d], a                                    ; $51c2: $ea $5d $c1
	ld a, h                                          ; $51c5: $7c
	ld [$c15e], a                                    ; $51c6: $ea $5e $c1
	ld a, $06                                        ; $51c9: $3e $06
	ld [wMenuOptionSelected], a                                    ; $51cb: $ea $5f $c1
	ld a, $0c                                        ; $51ce: $3e $0c
	ld [$c160], a                                    ; $51d0: $ea $60 $c1
	jp Jump_006_4a81                                 ; $51d3: $c3 $81 $4a


Call_006_51d6:
	xor a                                            ; $51d6: $af
	ld [$c157], a                                    ; $51d7: $ea $57 $c1
	push hl                                          ; $51da: $e5
	push de                                          ; $51db: $d5
	ld hl, $4faa                                     ; $51dc: $21 $aa $4f
	ld de, $d5e3                                     ; $51df: $11 $e3 $d5
	rst FarCall                                          ; $51e2: $f7
	cp h                                             ; $51e3: $bc
	call z, $d125                                    ; $51e4: $cc $25 $d1
	pop hl                                           ; $51e7: $e1
	ld hl, $41c3                                     ; $51e8: $21 $c3 $41
	ld a, l                                          ; $51eb: $7d
	ld [$c159], a                                    ; $51ec: $ea $59 $c1
	ld a, h                                          ; $51ef: $7c
	ld [$c15a], a                                    ; $51f0: $ea $5a $c1
	ld hl, $d5e3                                     ; $51f3: $21 $e3 $d5
	ld a, l                                          ; $51f6: $7d
	ld [$c15b], a                                    ; $51f7: $ea $5b $c1
	ld a, h                                          ; $51fa: $7c
	ld [$c15c], a                                    ; $51fb: $ea $5c $c1
	ld hl, $0000                                     ; $51fe: $21 $00 $00
	ld a, l                                          ; $5201: $7d
	ld [$c162], a                                    ; $5202: $ea $62 $c1
	ld a, h                                          ; $5205: $7c
	ld [$c163], a                                    ; $5206: $ea $63 $c1
	ld hl, $9800                                     ; $5209: $21 $00 $98
	ld a, l                                          ; $520c: $7d
	ld [$c15d], a                                    ; $520d: $ea $5d $c1
	ld a, h                                          ; $5210: $7c
	ld [$c15e], a                                    ; $5211: $ea $5e $c1
	ld a, $09                                        ; $5214: $3e $09
	ld [wMenuOptionSelected], a                                    ; $5216: $ea $5f $c1
	ld a, $0a                                        ; $5219: $3e $0a
	ld [$c160], a                                    ; $521b: $ea $60 $c1
	call Call_006_4a81                               ; $521e: $cd $81 $4a
	ld hl, $9c00                                     ; $5221: $21 $00 $9c
	ld a, l                                          ; $5224: $7d
	ld [$c15d], a                                    ; $5225: $ea $5d $c1
	ld a, h                                          ; $5228: $7c
	ld [$c15e], a                                    ; $5229: $ea $5e $c1
	call Call_006_4aab                               ; $522c: $cd $ab $4a
	push hl                                          ; $522f: $e5
	push de                                          ; $5230: $d5
	ld hl, $5390                                     ; $5231: $21 $90 $53
	ld de, $d5e3                                     ; $5234: $11 $e3 $d5
	rst FarCall                                          ; $5237: $f7
	cp h                                             ; $5238: $bc
	call z, $d125                                    ; $5239: $cc $25 $d1
	pop hl                                           ; $523c: $e1
	ld hl, $00c6                                     ; $523d: $21 $c6 $00
	ld a, l                                          ; $5240: $7d
	ld [$c162], a                                    ; $5241: $ea $62 $c1
	ld a, h                                          ; $5244: $7c
	ld [$c163], a                                    ; $5245: $ea $63 $c1
	ld hl, $9920                                     ; $5248: $21 $20 $99
	ld a, l                                          ; $524b: $7d
	ld [$c15d], a                                    ; $524c: $ea $5d $c1
	ld a, h                                          ; $524f: $7c
	ld [$c15e], a                                    ; $5250: $ea $5e $c1
	ld a, $09                                        ; $5253: $3e $09
	ld [wMenuOptionSelected], a                                    ; $5255: $ea $5f $c1
	ld a, $0a                                        ; $5258: $3e $0a
	ld [$c160], a                                    ; $525a: $ea $60 $c1
	call Call_006_4a81                               ; $525d: $cd $81 $4a
	ld hl, $9d20                                     ; $5260: $21 $20 $9d
	ld a, l                                          ; $5263: $7d
	ld [$c15d], a                                    ; $5264: $ea $5d $c1
	ld a, h                                          ; $5267: $7c
	ld [$c15e], a                                    ; $5268: $ea $5e $c1
	jp Jump_006_4aab                                 ; $526b: $c3 $ab $4a


Call_006_526e:
	xor a                                            ; $526e: $af
	ld [$c157], a                                    ; $526f: $ea $57 $c1
	push hl                                          ; $5272: $e5
	push de                                          ; $5273: $d5
	ld hl, $591d                                     ; $5274: $21 $1d $59
	ld de, $d5e3                                     ; $5277: $11 $e3 $d5
	rst FarCall                                          ; $527a: $f7
	push bc                                          ; $527b: $c5
	call z, $d125                                    ; $527c: $cc $25 $d1
	pop hl                                           ; $527f: $e1
	ld hl, $41e0                                     ; $5280: $21 $e0 $41
	ld a, l                                          ; $5283: $7d
	ld [$c159], a                                    ; $5284: $ea $59 $c1
	ld a, h                                          ; $5287: $7c
	ld [$c15a], a                                    ; $5288: $ea $5a $c1
	ld hl, $d5e3                                     ; $528b: $21 $e3 $d5
	ld a, l                                          ; $528e: $7d
	ld [$c15b], a                                    ; $528f: $ea $5b $c1
	ld a, h                                          ; $5292: $7c
	ld [$c15c], a                                    ; $5293: $ea $5c $c1
	ld hl, $0058                                     ; $5296: $21 $58 $00
	ld a, l                                          ; $5299: $7d
	ld [$c162], a                                    ; $529a: $ea $62 $c1
	ld a, h                                          ; $529d: $7c
	ld [$c163], a                                    ; $529e: $ea $63 $c1
	ld hl, $9c68                                     ; $52a1: $21 $68 $9c
	ld a, l                                          ; $52a4: $7d
	ld [$c15d], a                                    ; $52a5: $ea $5d $c1
	ld a, h                                          ; $52a8: $7c
	ld [$c15e], a                                    ; $52a9: $ea $5e $c1
	ld a, $06                                        ; $52ac: $3e $06
	ld [wMenuOptionSelected], a                                    ; $52ae: $ea $5f $c1
	ld a, $0c                                        ; $52b1: $3e $0c
	ld [$c160], a                                    ; $52b3: $ea $60 $c1
	call Call_006_4a81                               ; $52b6: $cd $81 $4a
	push hl                                          ; $52b9: $e5
	push de                                          ; $52ba: $d5
	ld hl, $5c33                                     ; $52bb: $21 $33 $5c
	ld de, $d5e3                                     ; $52be: $11 $e3 $d5
	rst FarCall                                          ; $52c1: $f7
	push bc                                          ; $52c2: $c5
	call z, $d125                                    ; $52c3: $cc $25 $d1
	pop hl                                           ; $52c6: $e1
	ld hl, $0138                                     ; $52c7: $21 $38 $01
	ld a, l                                          ; $52ca: $7d
	ld [$c162], a                                    ; $52cb: $ea $62 $c1
	ld a, h                                          ; $52ce: $7c
	ld [$c163], a                                    ; $52cf: $ea $63 $c1
	ld hl, $9d28                                     ; $52d2: $21 $28 $9d
	ld a, l                                          ; $52d5: $7d
	ld [$c15d], a                                    ; $52d6: $ea $5d $c1
	ld a, h                                          ; $52d9: $7c
	ld [$c15e], a                                    ; $52da: $ea $5e $c1
	ld a, $06                                        ; $52dd: $3e $06
	ld [wMenuOptionSelected], a                                    ; $52df: $ea $5f $c1
	ld a, $0c                                        ; $52e2: $3e $0c
	ld [$c160], a                                    ; $52e4: $ea $60 $c1
	jp Jump_006_4a81                                 ; $52e7: $c3 $81 $4a


Call_006_52ea:
	xor a                                            ; $52ea: $af
	ld [$c157], a                                    ; $52eb: $ea $57 $c1
	push hl                                          ; $52ee: $e5
	push de                                          ; $52ef: $d5
	ld hl, $5f25                                     ; $52f0: $21 $25 $5f
	ld de, $d5e3                                     ; $52f3: $11 $e3 $d5
	rst FarCall                                          ; $52f6: $f7
	cp h                                             ; $52f7: $bc
	call z, $d125                                    ; $52f8: $cc $25 $d1
	pop hl                                           ; $52fb: $e1
	ld hl, $41ed                                     ; $52fc: $21 $ed $41
	ld a, l                                          ; $52ff: $7d
	ld [$c159], a                                    ; $5300: $ea $59 $c1
	ld a, h                                          ; $5303: $7c
	ld [$c15a], a                                    ; $5304: $ea $5a $c1
	ld hl, $d5e3                                     ; $5307: $21 $e3 $d5
	ld a, l                                          ; $530a: $7d
	ld [$c15b], a                                    ; $530b: $ea $5b $c1
	ld a, h                                          ; $530e: $7c
	ld [$c15c], a                                    ; $530f: $ea $5c $c1
	ld hl, $0000                                     ; $5312: $21 $00 $00
	ld a, l                                          ; $5315: $7d
	ld [$c162], a                                    ; $5316: $ea $62 $c1
	ld a, h                                          ; $5319: $7c
	ld [$c163], a                                    ; $531a: $ea $63 $c1
	ld hl, $980a                                     ; $531d: $21 $0a $98
	ld a, l                                          ; $5320: $7d
	ld [$c15d], a                                    ; $5321: $ea $5d $c1
	ld a, h                                          ; $5324: $7c
	ld [$c15e], a                                    ; $5325: $ea $5e $c1
	ld a, $09                                        ; $5328: $3e $09
	ld [wMenuOptionSelected], a                                    ; $532a: $ea $5f $c1
	ld a, $0a                                        ; $532d: $3e $0a
	ld [$c160], a                                    ; $532f: $ea $60 $c1
	call Call_006_4a81                               ; $5332: $cd $81 $4a
	ld hl, $9c0a                                     ; $5335: $21 $0a $9c
	ld a, l                                          ; $5338: $7d
	ld [$c15d], a                                    ; $5339: $ea $5d $c1
	ld a, h                                          ; $533c: $7c
	ld [$c15e], a                                    ; $533d: $ea $5e $c1
	call Call_006_4aab                               ; $5340: $cd $ab $4a
	push hl                                          ; $5343: $e5
	push de                                          ; $5344: $d5
	ld hl, $62dd                                     ; $5345: $21 $dd $62
	ld de, $d5e3                                     ; $5348: $11 $e3 $d5
	rst FarCall                                          ; $534b: $f7
	cp h                                             ; $534c: $bc
	call z, $d125                                    ; $534d: $cc $25 $d1
	pop hl                                           ; $5350: $e1
	ld hl, $00d0                                     ; $5351: $21 $d0 $00
	ld a, l                                          ; $5354: $7d
	ld [$c162], a                                    ; $5355: $ea $62 $c1
	ld a, h                                          ; $5358: $7c
	ld [$c163], a                                    ; $5359: $ea $63 $c1
	ld hl, $992a                                     ; $535c: $21 $2a $99
	ld a, l                                          ; $535f: $7d
	ld [$c15d], a                                    ; $5360: $ea $5d $c1
	ld a, h                                          ; $5363: $7c
	ld [$c15e], a                                    ; $5364: $ea $5e $c1
	ld a, $09                                        ; $5367: $3e $09
	ld [wMenuOptionSelected], a                                    ; $5369: $ea $5f $c1
	ld a, $0a                                        ; $536c: $3e $0a
	ld [$c160], a                                    ; $536e: $ea $60 $c1
	call Call_006_4a81                               ; $5371: $cd $81 $4a
	ld hl, $9d2a                                     ; $5374: $21 $2a $9d
	ld a, l                                          ; $5377: $7d
	ld [$c15d], a                                    ; $5378: $ea $5d $c1
	ld a, h                                          ; $537b: $7c
	ld [$c15e], a                                    ; $537c: $ea $5e $c1
	jp Jump_006_4aab                                 ; $537f: $c3 $ab $4a


Call_006_5382:
	xor a                                            ; $5382: $af
	ld [$c157], a                                    ; $5383: $ea $57 $c1
	push hl                                          ; $5386: $e5
	push de                                          ; $5387: $d5
	ld hl, $688f                                     ; $5388: $21 $8f $68
	ld de, $d5e3                                     ; $538b: $11 $e3 $d5
	rst FarCall                                          ; $538e: $f7
	cp a                                             ; $538f: $bf
	call z, $d125                                    ; $5390: $cc $25 $d1
	pop hl                                           ; $5393: $e1
	ld hl, $420a                                     ; $5394: $21 $0a $42
	ld a, l                                          ; $5397: $7d
	ld [$c159], a                                    ; $5398: $ea $59 $c1
	ld a, h                                          ; $539b: $7c
	ld [$c15a], a                                    ; $539c: $ea $5a $c1
	ld hl, $d5e3                                     ; $539f: $21 $e3 $d5
	ld a, l                                          ; $53a2: $7d
	ld [$c15b], a                                    ; $53a3: $ea $5b $c1
	ld a, h                                          ; $53a6: $7c
	ld [$c15c], a                                    ; $53a7: $ea $5c $c1
	ld hl, $0052                                     ; $53aa: $21 $52 $00
	ld a, l                                          ; $53ad: $7d
	ld [$c162], a                                    ; $53ae: $ea $62 $c1
	ld a, h                                          ; $53b1: $7c
	ld [$c163], a                                    ; $53b2: $ea $63 $c1
	ld hl, $9c60                                     ; $53b5: $21 $60 $9c
	ld a, l                                          ; $53b8: $7d
	ld [$c15d], a                                    ; $53b9: $ea $5d $c1
	ld a, h                                          ; $53bc: $7c
	ld [$c15e], a                                    ; $53bd: $ea $5e $c1
	ld a, $06                                        ; $53c0: $3e $06
	ld [wMenuOptionSelected], a                                    ; $53c2: $ea $5f $c1
	ld a, $0e                                        ; $53c5: $3e $0e
	ld [$c160], a                                    ; $53c7: $ea $60 $c1
	call Call_006_4a81                               ; $53ca: $cd $81 $4a
	push hl                                          ; $53cd: $e5
	push de                                          ; $53ce: $d5
	ld hl, $6c2c                                     ; $53cf: $21 $2c $6c
	ld de, $d5e3                                     ; $53d2: $11 $e3 $d5
	rst FarCall                                          ; $53d5: $f7
	cp a                                             ; $53d6: $bf
	call z, $d125                                    ; $53d7: $cc $25 $d1
	pop hl                                           ; $53da: $e1
	ld hl, $0132                                     ; $53db: $21 $32 $01
	ld a, l                                          ; $53de: $7d
	ld [$c162], a                                    ; $53df: $ea $62 $c1
	ld a, h                                          ; $53e2: $7c
	ld [$c163], a                                    ; $53e3: $ea $63 $c1
	ld hl, $9d20                                     ; $53e6: $21 $20 $9d
	ld a, l                                          ; $53e9: $7d
	ld [$c15d], a                                    ; $53ea: $ea $5d $c1
	ld a, h                                          ; $53ed: $7c
	ld [$c15e], a                                    ; $53ee: $ea $5e $c1
	ld a, $06                                        ; $53f1: $3e $06
	ld [wMenuOptionSelected], a                                    ; $53f3: $ea $5f $c1
	ld a, $0e                                        ; $53f6: $3e $0e
	ld [$c160], a                                    ; $53f8: $ea $60 $c1
	jp Jump_006_4a81                                 ; $53fb: $c3 $81 $4a


Call_006_53fe:
	xor a                                            ; $53fe: $af
	ld [$c157], a                                    ; $53ff: $ea $57 $c1
	push hl                                          ; $5402: $e5
	push de                                          ; $5403: $d5
	ld hl, $6f62                                     ; $5404: $21 $62 $6f
	ld de, $d5e3                                     ; $5407: $11 $e3 $d5
	rst FarCall                                          ; $540a: $f7
	xor d                                            ; $540b: $aa
	call z, $d125                                    ; $540c: $cc $25 $d1
	pop hl                                           ; $540f: $e1
	ld hl, $4217                                     ; $5410: $21 $17 $42
	ld a, l                                          ; $5413: $7d
	ld [$c159], a                                    ; $5414: $ea $59 $c1
	ld a, h                                          ; $5417: $7c
	ld [$c15a], a                                    ; $5418: $ea $5a $c1
	ld hl, $d5e3                                     ; $541b: $21 $e3 $d5
	ld a, l                                          ; $541e: $7d
	ld [$c15b], a                                    ; $541f: $ea $5b $c1
	ld a, h                                          ; $5422: $7c
	ld [$c15c], a                                    ; $5423: $ea $5c $c1
	ld hl, $002e                                     ; $5426: $21 $2e $00
	ld a, l                                          ; $5429: $7d
	ld [$c162], a                                    ; $542a: $ea $62 $c1
	ld a, h                                          ; $542d: $7c
	ld [$c163], a                                    ; $542e: $ea $63 $c1
	ld hl, $9841                                     ; $5431: $21 $41 $98
	ld a, l                                          ; $5434: $7d
	ld [$c15d], a                                    ; $5435: $ea $5d $c1
	ld a, h                                          ; $5438: $7c
	ld [$c15e], a                                    ; $5439: $ea $5e $c1
	ld a, $08                                        ; $543c: $3e $08
	ld [wMenuOptionSelected], a                                    ; $543e: $ea $5f $c1
	ld a, $12                                        ; $5441: $3e $12
	ld [$c160], a                                    ; $5443: $ea $60 $c1
	call Call_006_4a81                               ; $5446: $cd $81 $4a
	push hl                                          ; $5449: $e5
	push de                                          ; $544a: $d5
	ld hl, $74a5                                     ; $544b: $21 $a5 $74
	ld de, $d5e3                                     ; $544e: $11 $e3 $d5
	rst FarCall                                          ; $5451: $f7
	xor d                                            ; $5452: $aa
	call z, $d125                                    ; $5453: $cc $25 $d1
	pop hl                                           ; $5456: $e1
	ld hl, $00cc                                     ; $5457: $21 $cc $00
	ld a, l                                          ; $545a: $7d
	ld [$c162], a                                    ; $545b: $ea $62 $c1
	ld a, h                                          ; $545e: $7c
	ld [$c163], a                                    ; $545f: $ea $63 $c1
	ld hl, $9941                                     ; $5462: $21 $41 $99
	ld a, l                                          ; $5465: $7d
	ld [$c15d], a                                    ; $5466: $ea $5d $c1
	ld a, h                                          ; $5469: $7c
	ld [$c15e], a                                    ; $546a: $ea $5e $c1
	ld a, $08                                        ; $546d: $3e $08
	ld [wMenuOptionSelected], a                                    ; $546f: $ea $5f $c1
	ld a, $12                                        ; $5472: $3e $12
	ld [$c160], a                                    ; $5474: $ea $60 $c1
	jp Jump_006_4a81                                 ; $5477: $c3 $81 $4a


Call_006_547a:
	ld a, $0a                                        ; $547a: $3e $0a
	ld hl, $98e7                                     ; $547c: $21 $e7 $98
	ld de, $4224                                     ; $547f: $11 $24 $42
	ld bc, $0504                                     ; $5482: $01 $04 $05
	jp $4974                                         ; $5485: $c3 $74 $49


Call_006_5488:
	ldh a, [hDisp0_WX]                                     ; $5488: $f0 $89
	add $71                                          ; $548a: $c6 $71
	ld [$c207], a                                    ; $548c: $ea $07 $c2
	cp $78                                           ; $548f: $fe $78
	jr c, jr_006_549b                                ; $5491: $38 $08

	cp $f0                                           ; $5493: $fe $f0
	jr nc, jr_006_549b                               ; $5495: $30 $04

	xor a                                            ; $5497: $af
	ld [$c201], a                                    ; $5498: $ea $01 $c2

jr_006_549b:
	ret                                              ; $549b: $c9


	ld sp, hl                                        ; $549c: $f9
	inc h                                            ; $549d: $24
	inc d                                            ; $549e: $14
	ld e, d                                          ; $549f: $5a
	nop                                              ; $54a0: $00
	sub b                                            ; $54a1: $90
	inc h                                            ; $54a2: $24
	ld h, [hl]                                       ; $54a3: $66
	ld e, l                                          ; $54a4: $5d
	ret nz                                           ; $54a5: $c0

	sub [hl]                                         ; $54a6: $96
	inc h                                            ; $54a7: $24
	add a                                            ; $54a8: $87
	ld e, l                                          ; $54a9: $5d
	ld b, b                                          ; $54aa: $40
	sub a                                            ; $54ab: $97
	rst $38                                          ; $54ac: $ff
	ld sp, hl                                        ; $54ad: $f9
	inc h                                            ; $54ae: $24
	pop bc                                           ; $54af: $c1
	ld e, l                                          ; $54b0: $5d
	nop                                              ; $54b1: $00
	add b                                            ; $54b2: $80
	db $fc                                           ; $54b3: $fc
	jr nz, jr_006_54f7                               ; $54b4: $20 $41

jr_006_54b6:
	ld b, h                                          ; $54b6: $44
	ld d, e                                          ; $54b7: $53
	ret c                                            ; $54b8: $d8

	rst $38                                          ; $54b9: $ff
	ld sp, hl                                        ; $54ba: $f9
	inc h                                            ; $54bb: $24
	xor c                                            ; $54bc: $a9
	ld h, b                                          ; $54bd: $60
	ld b, b                                          ; $54be: $40
	adc d                                            ; $54bf: $8a
	db $fc                                           ; $54c0: $fc
	jr nz, jr_006_5501                               ; $54c1: $20 $3e

	ld b, l                                          ; $54c3: $45
	ld [hl], e                                       ; $54c4: $73
	reti                                             ; $54c5: $d9


	rst $38                                          ; $54c6: $ff
	ld sp, hl                                        ; $54c7: $f9
	inc h                                            ; $54c8: $24
	ld a, h                                          ; $54c9: $7c
	ld h, e                                          ; $54ca: $63
	ld b, b                                          ; $54cb: $40
	adc d                                            ; $54cc: $8a
	db $fc                                           ; $54cd: $fc
	jr nz, jr_006_553c                               ; $54ce: $20 $6c

	ld b, a                                          ; $54d0: $47
	ld [hl], e                                       ; $54d1: $73
	reti                                             ; $54d2: $d9


	rst $38                                          ; $54d3: $ff
	ld sp, hl                                        ; $54d4: $f9
	inc h                                            ; $54d5: $24
	dec l                                            ; $54d6: $2d
	ld h, d                                          ; $54d7: $62
	ld b, b                                          ; $54d8: $40
	adc d                                            ; $54d9: $8a
	db $fc                                           ; $54da: $fc
	jr nz, jr_006_5525                               ; $54db: $20 $48

	ld c, c                                          ; $54dd: $49
	ld [hl], e                                       ; $54de: $73
	reti                                             ; $54df: $d9


	rst $38                                          ; $54e0: $ff
	ld sp, hl                                        ; $54e1: $f9
	ld a, [hl+]                                      ; $54e2: $2a
	ldh [c], a                                       ; $54e3: $e2
	ld l, d                                          ; $54e4: $6a
	ld b, b                                          ; $54e5: $40
	adc d                                            ; $54e6: $8a
	db $fc                                           ; $54e7: $fc
	jr nz, jr_006_54f4                               ; $54e8: $20 $0a

	ld c, h                                          ; $54ea: $4c
	ld [hl], e                                       ; $54eb: $73
	reti                                             ; $54ec: $d9


	rst $38                                          ; $54ed: $ff
	ld sp, hl                                        ; $54ee: $f9
	ld a, [hl+]                                      ; $54ef: $2a
	ld h, [hl]                                       ; $54f0: $66
	ld l, l                                          ; $54f1: $6d
	ld b, b                                          ; $54f2: $40
	adc d                                            ; $54f3: $8a

jr_006_54f4:
	db $fc                                           ; $54f4: $fc
	jr nz, jr_006_54b6                               ; $54f5: $20 $bf

jr_006_54f7:
	ld c, l                                          ; $54f7: $4d
	ld [hl], e                                       ; $54f8: $73
	reti                                             ; $54f9: $d9


	rst $38                                          ; $54fa: $ff
	ld sp, hl                                        ; $54fb: $f9
	ld a, [hl+]                                      ; $54fc: $2a
	rst SubAFromHL                                          ; $54fd: $d7
	ld l, a                                          ; $54fe: $6f
	ld b, b                                          ; $54ff: $40
	adc d                                            ; $5500: $8a

jr_006_5501:
	db $fc                                           ; $5501: $fc
	jr nz, @-$6e                                     ; $5502: $20 $90

	ld c, a                                          ; $5504: $4f
	ld [hl], e                                       ; $5505: $73
	reti                                             ; $5506: $d9


	rst $38                                          ; $5507: $ff
	ld sp, hl                                        ; $5508: $f9
	ld a, [hl+]                                      ; $5509: $2a
	ld bc, $406c                                     ; $550a: $01 $6c $40
	adc d                                            ; $550d: $8a
	db $fc                                           ; $550e: $fc
	jr nz, jr_006_558f                               ; $550f: $20 $7e

	ld d, c                                          ; $5511: $51
	ld [hl], e                                       ; $5512: $73
	reti                                             ; $5513: $d9


	rst $38                                          ; $5514: $ff
	ld sp, hl                                        ; $5515: $f9
	ld a, [hl+]                                      ; $5516: $2a
	adc e                                            ; $5517: $8b
	ld l, [hl]                                       ; $5518: $6e
	ld b, b                                          ; $5519: $40
	adc d                                            ; $551a: $8a
	db $fc                                           ; $551b: $fc
	jr nz, @+$7b                                     ; $551c: $20 $79

	ld d, e                                          ; $551e: $53
	ld [hl], e                                       ; $551f: $73
	reti                                             ; $5520: $d9


	rst $38                                          ; $5521: $ff
	ld sp, hl                                        ; $5522: $f9
	ld a, [hl+]                                      ; $5523: $2a
	inc sp                                           ; $5524: $33

jr_006_5525:
	ld [hl], c                                       ; $5525: $71
	ld b, b                                          ; $5526: $40
	adc d                                            ; $5527: $8a
	db $fc                                           ; $5528: $fc
	jr nz, jr_006_5592                               ; $5529: $20 $67

	ld d, l                                          ; $552b: $55
	ld [hl], e                                       ; $552c: $73
	reti                                             ; $552d: $d9


	rst $38                                          ; $552e: $ff
	ld sp, hl                                        ; $552f: $f9
	dec h                                            ; $5530: $25
	push bc                                          ; $5531: $c5
	ld a, [hl]                                       ; $5532: $7e
	ld b, b                                          ; $5533: $40
	adc d                                            ; $5534: $8a
	db $fc                                           ; $5535: $fc
	jr nz, jr_006_5566                               ; $5536: $20 $2e

	ld d, a                                          ; $5538: $57
	ld [hl], e                                       ; $5539: $73
	reti                                             ; $553a: $d9


	rst $38                                          ; $553b: $ff

jr_006_553c:
	ld sp, hl                                        ; $553c: $f9
	inc h                                            ; $553d: $24
	ld bc, $5348                                     ; $553e: $01 $48 $53
	ret c                                            ; $5541: $d8

	inc h                                            ; $5542: $24
	ld b, c                                          ; $5543: $41
	ld c, b                                          ; $5544: $48
	sub e                                            ; $5545: $93
	db $db                                           ; $5546: $db
	inc h                                            ; $5547: $24
	ld b, l                                          ; $5548: $45
	ld c, b                                          ; $5549: $48
	di                                               ; $554a: $f3
	reti                                             ; $554b: $d9


	inc h                                            ; $554c: $24
	add l                                            ; $554d: $85
	ld c, b                                          ; $554e: $48
	and b                                            ; $554f: $a0
	db $db                                           ; $5550: $db
	rst $38                                          ; $5551: $ff
	ld sp, hl                                        ; $5552: $f9
	inc h                                            ; $5553: $24
	adc c                                            ; $5554: $89
	ld c, b                                          ; $5555: $48
	ld d, e                                          ; $5556: $53
	ret c                                            ; $5557: $d8

	inc h                                            ; $5558: $24
	ld e, e                                          ; $5559: $5b
	ld c, c                                          ; $555a: $49
	sub e                                            ; $555b: $93
	db $db                                           ; $555c: $db
	inc h                                            ; $555d: $24
	ld h, c                                          ; $555e: $61
	ld c, c                                          ; $555f: $49
	di                                               ; $5560: $f3
	reti                                             ; $5561: $d9


	inc h                                            ; $5562: $24
	inc [hl]                                         ; $5563: $34
	ld c, d                                          ; $5564: $4a
	and b                                            ; $5565: $a0

jr_006_5566:
	db $db                                           ; $5566: $db
	rst $38                                          ; $5567: $ff
	ld sp, hl                                        ; $5568: $f9
	ld hl, $6ca8                                     ; $5569: $21 $a8 $6c
	nop                                              ; $556c: $00
	add b                                            ; $556d: $80
	ld hl, $73f3                                     ; $556e: $21 $f3 $73
	db $d3                                           ; $5571: $d3
	call nc, $21ff                                   ; $5572: $d4 $ff $21
	add hl, de                                       ; $5575: $19
	ld [hl], h                                       ; $5576: $74
	ld hl, $74ca                                     ; $5577: $21 $ca $74
	ld hl, $74ce                                     ; $557a: $21 $ce $74
	ld hl, $75a9                                     ; $557d: $21 $a9 $75
	ld hl, $75ad                                     ; $5580: $21 $ad $75
	ld hl, $763a                                     ; $5583: $21 $3a $76
	ld hl, $7644                                     ; $5586: $21 $44 $76
	ld hl, $76b8                                     ; $5589: $21 $b8 $76
	ld hl, $76c3                                     ; $558c: $21 $c3 $76

jr_006_558f:
	ld hl, $7747                                     ; $558f: $21 $47 $77

jr_006_5592:
	ld hl, $7751                                     ; $5592: $21 $51 $77
	ld hl, $77d8                                     ; $5595: $21 $d8 $77
	ld hl, $77e2                                     ; $5598: $21 $e2 $77
	ld hl, $786b                                     ; $559b: $21 $6b $78
	ld hl, $7876                                     ; $559e: $21 $76 $78
	ld hl, $791c                                     ; $55a1: $21 $1c $79
	ld hl, $7927                                     ; $55a4: $21 $27 $79
	ld hl, $7a13                                     ; $55a7: $21 $13 $7a
	ld hl, $7a1e                                     ; $55aa: $21 $1e $7a
	ld hl, $7b0e                                     ; $55ad: $21 $0e $7b
	ld hl, $7b19                                     ; $55b0: $21 $19 $7b
	ld hl, $7c0d                                     ; $55b3: $21 $0d $7c
	ld hl, $7c18                                     ; $55b6: $21 $18 $7c
	ld hl, $7cef                                     ; $55b9: $21 $ef $7c
	ld hl, $7cf9                                     ; $55bc: $21 $f9 $7c
	ld hl, $7ddb                                     ; $55bf: $21 $db $7d
	rst $38                                          ; $55c2: $ff
	add hl, bc                                       ; $55c3: $09
	rlca                                             ; $55c4: $07
	ld [bc], a                                       ; $55c5: $02
	inc h                                            ; $55c6: $24
	ld a, [hl-]                                      ; $55c7: $3a
	ld c, d                                          ; $55c8: $4a
	ld l, d                                          ; $55c9: $6a
	ld c, d                                          ; $55ca: $4a
	sbc e                                            ; $55cb: $9b
	ld c, d                                          ; $55cc: $4a
	jp nc, $094a                                     ; $55cd: $d2 $4a $09

	ld c, e                                          ; $55d0: $4b
	inc a                                            ; $55d1: $3c
	ld c, e                                          ; $55d2: $4b
	ld l, a                                          ; $55d3: $6f
	ld c, e                                          ; $55d4: $4b
	and h                                            ; $55d5: $a4
	ld c, e                                          ; $55d6: $4b
	rlca                                             ; $55d7: $07
	dec b                                            ; $55d8: $05
	inc bc                                           ; $55d9: $03
	inc h                                            ; $55da: $24
	jp c, $3a4b                                      ; $55db: $da $4b $3a

	ld c, h                                          ; $55de: $4c
	sbc h                                            ; $55df: $9c
	ld c, h                                          ; $55e0: $4c
	cp $4c                                           ; $55e1: $fe $4c
	ld h, b                                          ; $55e3: $60
	ld c, l                                          ; $55e4: $4d
	pop bc                                           ; $55e5: $c1
	ld c, l                                          ; $55e6: $4d
	ld [hl+], a                                      ; $55e7: $22
	ld c, [hl]                                       ; $55e8: $4e
	add h                                            ; $55e9: $84
	ld c, [hl]                                       ; $55ea: $4e
	ld a, [bc]                                       ; $55eb: $0a
	dec b                                            ; $55ec: $05
	inc bc                                           ; $55ed: $03
	inc h                                            ; $55ee: $24
	and $4e                                          ; $55ef: $e6 $4e
	ld b, a                                          ; $55f1: $47
	ld c, a                                          ; $55f2: $4f
	and a                                            ; $55f3: $a7
	ld c, a                                          ; $55f4: $4f
	rlca                                             ; $55f5: $07
	ld d, b                                          ; $55f6: $50
	ld l, b                                          ; $55f7: $68
	ld d, b                                          ; $55f8: $50
	jp z, $2a50                                      ; $55f9: $ca $50 $2a

	ld d, c                                          ; $55fc: $51
	adc d                                            ; $55fd: $8a
	ld d, c                                          ; $55fe: $51
	ld sp, hl                                        ; $55ff: $f9
	inc hl                                           ; $5600: $23
	xor $6d                                          ; $5601: $ee $6d
	nop                                              ; $5603: $00
	add b                                            ; $5604: $80
	inc hl                                           ; $5605: $23
	or [hl]                                          ; $5606: $b6
	ld [hl], h                                       ; $5607: $74
	db $d3                                           ; $5608: $d3
	call nc, $23ff                                   ; $5609: $d4 $ff $23
	adc $74                                          ; $560c: $ce $74
	inc hl                                           ; $560e: $23
	sub l                                            ; $560f: $95
	ld [hl], l                                       ; $5610: $75
	inc hl                                           ; $5611: $23
	sbc c                                            ; $5612: $99
	ld [hl], l                                       ; $5613: $75
	inc hl                                           ; $5614: $23
	ld h, a                                          ; $5615: $67
	halt                                             ; $5616: $76
	inc hl                                           ; $5617: $23
	ld l, a                                          ; $5618: $6f
	halt                                             ; $5619: $76
	inc hl                                           ; $561a: $23
	rla                                              ; $561b: $17
	ld [hl], a                                       ; $561c: $77
	inc hl                                           ; $561d: $23
	jr nz, jr_006_5697                               ; $561e: $20 $77

	inc hl                                           ; $5620: $23

Call_006_5621:
	cp b                                             ; $5621: $b8
	ld [hl], a                                       ; $5622: $77
	inc hl                                           ; $5623: $23
	jp nz, $2377                                     ; $5624: $c2 $77 $23

	ld [hl+], a                                      ; $5627: $22
	ld a, b                                          ; $5628: $78
	inc hl                                           ; $5629: $23
	inc l                                            ; $562a: $2c
	ld a, b                                          ; $562b: $78
	inc hl                                           ; $562c: $23
	sbc a                                            ; $562d: $9f
	ld a, b                                          ; $562e: $78
	inc hl                                           ; $562f: $23
	xor d                                            ; $5630: $aa
	ld a, b                                          ; $5631: $78
	inc hl                                           ; $5632: $23
	ld c, a                                          ; $5633: $4f
	ld a, c                                          ; $5634: $79
	inc hl                                           ; $5635: $23
	ld e, d                                          ; $5636: $5a
	ld a, c                                          ; $5637: $79
	inc hl                                           ; $5638: $23
	dec l                                            ; $5639: $2d
	ld a, d                                          ; $563a: $7a
	inc hl                                           ; $563b: $23
	jr c, jr_006_56b8                                ; $563c: $38 $7a

	inc hl                                           ; $563e: $23
	dec hl                                           ; $563f: $2b
	ld a, e                                          ; $5640: $7b
	inc hl                                           ; $5641: $23
	ld [hl], $7b                                     ; $5642: $36 $7b
	inc hl                                           ; $5644: $23
	jr nc, jr_006_56c3                               ; $5645: $30 $7c

	inc hl                                           ; $5647: $23
	ld a, [hl-]                                      ; $5648: $3a
	ld a, h                                          ; $5649: $7c
	inc hl                                           ; $564a: $23
	ld [hl], $7d                                     ; $564b: $36 $7d
	inc hl                                           ; $564d: $23
	ld b, c                                          ; $564e: $41
	ld a, l                                          ; $564f: $7d
	inc hl                                           ; $5650: $23
	scf                                              ; $5651: $37
	ld a, [hl]                                       ; $5652: $7e
	inc hl                                           ; $5653: $23
	ld b, d                                          ; $5654: $42
	ld a, [hl]                                       ; $5655: $7e
	inc hl                                           ; $5656: $23
	db $fd                                           ; $5657: $fd
	ld a, [hl]                                       ; $5658: $7e
	rst $38                                          ; $5659: $ff
	add hl, bc                                       ; $565a: $09
	rlca                                             ; $565b: $07
	ld [bc], a                                       ; $565c: $02
	ld hl, $7de4                                     ; $565d: $21 $e4 $7d
	inc e                                            ; $5660: $1c
	ld a, [hl]                                       ; $5661: $7e
	ld d, a                                          ; $5662: $57
	ld a, [hl]                                       ; $5663: $7e
	sub d                                            ; $5664: $92
	ld a, [hl]                                       ; $5665: $7e
	bit 7, [hl]                                      ; $5666: $cb $7e
	ld b, $7f                                        ; $5668: $06 $7f
	ld b, h                                          ; $566a: $44
	ld a, a                                          ; $566b: $7f
	add c                                            ; $566c: $81
	ld a, a                                          ; $566d: $7f
	rlca                                             ; $566e: $07
	dec b                                            ; $566f: $05
	inc bc                                           ; $5670: $03
	inc h                                            ; $5671: $24
	rst GetHLinHL                                          ; $5672: $cf
	ld d, e                                          ; $5673: $53
	ld [hl-], a                                      ; $5674: $32
	ld d, h                                          ; $5675: $54
	sub a                                            ; $5676: $97
	ld d, h                                          ; $5677: $54
	ld hl, sp+$54                                    ; $5678: $f8 $54
	ld e, d                                          ; $567a: $5a
	ld d, l                                          ; $567b: $55
	cp [hl]                                          ; $567c: $be
	ld d, l                                          ; $567d: $55
	ld hl, $8156                                     ; $567e: $21 $56 $81
	ld d, [hl]                                       ; $5681: $56
	ld a, [bc]                                       ; $5682: $0a
	dec b                                            ; $5683: $05
	inc bc                                           ; $5684: $03
	inc h                                            ; $5685: $24
	ldh [c], a                                       ; $5686: $e2
	ld d, [hl]                                       ; $5687: $56
	ld c, c                                          ; $5688: $49
	ld d, a                                          ; $5689: $57
	or b                                             ; $568a: $b0
	ld d, a                                          ; $568b: $57
	ld de, $7258                                     ; $568c: $11 $58 $72
	ld e, b                                          ; $568f: $58
	rst SubAFromHL                                          ; $5690: $d7
	ld e, b                                          ; $5691: $58
	dec sp                                           ; $5692: $3b
	ld e, c                                          ; $5693: $59
	sbc c                                            ; $5694: $99
	ld e, c                                          ; $5695: $59
	ld sp, hl                                        ; $5696: $f9

jr_006_5697:
	inc hl                                           ; $5697: $23
	ld h, e                                          ; $5698: $63
	ld d, [hl]                                       ; $5699: $56
	nop                                              ; $569a: $00
	add b                                            ; $569b: $80
	inc hl                                           ; $569c: $23
	rla                                              ; $569d: $17
	ld e, [hl]                                       ; $569e: $5e
	db $d3                                           ; $569f: $d3
	call nc, $23ff                                   ; $56a0: $d4 $ff $23
	ld c, e                                          ; $56a3: $4b
	ld e, [hl]                                       ; $56a4: $5e
	inc hl                                           ; $56a5: $23
	rrca                                             ; $56a6: $0f
	ld e, a                                          ; $56a7: $5f
	inc hl                                           ; $56a8: $23
	ld d, $5f                                        ; $56a9: $16 $5f
	inc hl                                           ; $56ab: $23
	db $ed                                           ; $56ac: $ed
	ld e, a                                          ; $56ad: $5f
	inc hl                                           ; $56ae: $23
	db $f4                                           ; $56af: $f4
	ld e, a                                          ; $56b0: $5f
	inc hl                                           ; $56b1: $23
	add l                                            ; $56b2: $85
	ld h, b                                          ; $56b3: $60
	inc hl                                           ; $56b4: $23
	sub b                                            ; $56b5: $90
	ld h, b                                          ; $56b6: $60
	inc hl                                           ; $56b7: $23

jr_006_56b8:
	dec d                                            ; $56b8: $15
	ld h, c                                          ; $56b9: $61
	inc hl                                           ; $56ba: $23
	jr nz, @+$63                                     ; $56bb: $20 $61

	inc hl                                           ; $56bd: $23
	xor h                                            ; $56be: $ac
	ld h, c                                          ; $56bf: $61
	inc hl                                           ; $56c0: $23
	or a                                             ; $56c1: $b7
	ld h, c                                          ; $56c2: $61

jr_006_56c3:
	inc hl                                           ; $56c3: $23
	ld b, a                                          ; $56c4: $47
	ld h, d                                          ; $56c5: $62
	inc hl                                           ; $56c6: $23
	ld d, d                                          ; $56c7: $52
	ld h, d                                          ; $56c8: $62
	inc hl                                           ; $56c9: $23
	jp hl                                            ; $56ca: $e9


	ld h, d                                          ; $56cb: $62
	inc hl                                           ; $56cc: $23
	db $f4                                           ; $56cd: $f4
	ld h, d                                          ; $56ce: $62
	inc hl                                           ; $56cf: $23
	xor b                                            ; $56d0: $a8
	ld h, e                                          ; $56d1: $63
	inc hl                                           ; $56d2: $23
	or e                                             ; $56d3: $b3
	ld h, e                                          ; $56d4: $63
	inc hl                                           ; $56d5: $23
	or a                                             ; $56d6: $b7
	ld h, h                                          ; $56d7: $64
	inc hl                                           ; $56d8: $23
	jp nz, $2364                                     ; $56d9: $c2 $64 $23

	cp l                                             ; $56dc: $bd
	ld h, l                                          ; $56dd: $65
	inc hl                                           ; $56de: $23
	ret z                                            ; $56df: $c8

	ld h, l                                          ; $56e0: $65
	inc hl                                           ; $56e1: $23
	call nz, $2366                                   ; $56e2: $c4 $66 $23
	rst GetHLinHL                                          ; $56e5: $cf
	ld h, [hl]                                       ; $56e6: $66
	inc hl                                           ; $56e7: $23
	cp e                                             ; $56e8: $bb
	ld h, a                                          ; $56e9: $67
	inc hl                                           ; $56ea: $23
	push bc                                          ; $56eb: $c5
	ld h, a                                          ; $56ec: $67
	inc hl                                           ; $56ed: $23
	xor c                                            ; $56ee: $a9
	ld l, b                                          ; $56ef: $68
	rst $38                                          ; $56f0: $ff
	ld a, [bc]                                       ; $56f1: $0a
	rlca                                             ; $56f2: $07
	ld [bc], a                                       ; $56f3: $02
	inc h                                            ; $56f4: $24
	db $eb                                           ; $56f5: $eb
	ld d, c                                          ; $56f6: $51
	dec h                                            ; $56f7: $25
	ld d, d                                          ; $56f8: $52
	ld h, b                                          ; $56f9: $60
	ld d, d                                          ; $56fa: $52
	sbc h                                            ; $56fb: $9c
	ld d, d                                          ; $56fc: $52
	call c, $1552                                    ; $56fd: $dc $52 $15
	ld d, e                                          ; $5700: $53
	ld d, c                                          ; $5701: $51
	ld d, e                                          ; $5702: $53
	sub b                                            ; $5703: $90
	ld d, e                                          ; $5704: $53
	ld [$0305], sp                                   ; $5705: $08 $05 $03
	inc hl                                           ; $5708: $23
	or e                                             ; $5709: $b3
	ld l, b                                          ; $570a: $68
	add hl, de                                       ; $570b: $19
	ld l, c                                          ; $570c: $69
	ld a, h                                          ; $570d: $7c
	ld l, c                                          ; $570e: $69
	db $dd                                           ; $570f: $dd
	ld l, c                                          ; $5710: $69
	dec a                                            ; $5711: $3d
	ld l, d                                          ; $5712: $6a
	and e                                            ; $5713: $a3
	ld l, d                                          ; $5714: $6a
	ld [$6b6b], sp                                   ; $5715: $08 $6b $6b
	ld l, e                                          ; $5718: $6b
	dec bc                                           ; $5719: $0b
	dec b                                            ; $571a: $05
	ld [bc], a                                       ; $571b: $02
	inc hl                                           ; $571c: $23
	call $136b                                       ; $571d: $cd $6b $13
	ld l, h                                          ; $5720: $6c
	ld e, b                                          ; $5721: $58
	ld l, h                                          ; $5722: $6c
	sbc e                                            ; $5723: $9b
	ld l, h                                          ; $5724: $6c
	rst SubAFromDE                                          ; $5725: $df
	ld l, h                                          ; $5726: $6c
	dec h                                            ; $5727: $25
	ld l, l                                          ; $5728: $6d
	ld l, c                                          ; $5729: $69
	ld l, l                                          ; $572a: $6d
	xor e                                            ; $572b: $ab
	ld l, l                                          ; $572c: $6d
	ld sp, hl                                        ; $572d: $f9
	ld h, $8b                                        ; $572e: $26 $8b
	ld h, l                                          ; $5730: $65
	nop                                              ; $5731: $00
	add b                                            ; $5732: $80
	ld h, $75                                        ; $5733: $26 $75
	ld l, h                                          ; $5735: $6c
	db $d3                                           ; $5736: $d3
	call nc, $26ff                                   ; $5737: $d4 $ff $26
	adc [hl]                                         ; $573a: $8e
	ld l, h                                          ; $573b: $6c
	ld h, $24                                        ; $573c: $26 $24
	ld l, l                                          ; $573e: $6d
	ld h, $2b                                        ; $573f: $26 $2b
	ld l, l                                          ; $5741: $6d
	ld h, $ef                                        ; $5742: $26 $ef
	ld l, l                                          ; $5744: $6d
	ld h, $f6                                        ; $5745: $26 $f6
	ld l, l                                          ; $5747: $6d
	ld h, $9d                                        ; $5748: $26 $9d
	ld l, [hl]                                       ; $574a: $6e
	ld h, $a8                                        ; $574b: $26 $a8
	ld l, [hl]                                       ; $574d: $6e
	ld h, $4c                                        ; $574e: $26 $4c
	ld l, a                                          ; $5750: $6f
	ld h, $57                                        ; $5751: $26 $57
	ld l, a                                          ; $5753: $6f
	ld h, $04                                        ; $5754: $26 $04
	ld [hl], b                                       ; $5756: $70
	ld h, $0f                                        ; $5757: $26 $0f
	ld [hl], b                                       ; $5759: $70
	ld h, $a8                                        ; $575a: $26 $a8
	ld [hl], b                                       ; $575c: $70
	ld h, $b3                                        ; $575d: $26 $b3
	ld [hl], b                                       ; $575f: $70
	ld h, $43                                        ; $5760: $26 $43
	ld [hl], c                                       ; $5762: $71
	ld h, $4e                                        ; $5763: $26 $4e
	ld [hl], c                                       ; $5765: $71
	ld h, $fd                                        ; $5766: $26 $fd
	ld [hl], c                                       ; $5768: $71
	ld h, $08                                        ; $5769: $26 $08
	ld [hl], d                                       ; $576b: $72
	ld h, $fb                                        ; $576c: $26 $fb
	ld [hl], d                                       ; $576e: $72
	ld h, $06                                        ; $576f: $26 $06
	ld [hl], e                                       ; $5771: $73
	ld h, $fb                                        ; $5772: $26 $fb
	ld [hl], e                                       ; $5774: $73
	ld h, $06                                        ; $5775: $26 $06
	ld [hl], h                                       ; $5777: $74
	ld h, $fd                                        ; $5778: $26 $fd
	ld [hl], h                                       ; $577a: $74
	ld h, $05                                        ; $577b: $26 $05

jr_006_577d:
	ld [hl], l                                       ; $577d: $75
	ld h, $f5                                        ; $577e: $26 $f5
	ld [hl], l                                       ; $5780: $75
	ld h, $fd                                        ; $5781: $26 $fd
	ld [hl], l                                       ; $5783: $75
	ld h, $ed                                        ; $5784: $26 $ed
	halt                                             ; $5786: $76
	rst $38                                          ; $5787: $ff
	rlca                                             ; $5788: $07
	ld b, $02                                        ; $5789: $06 $02
	dec h                                            ; $578b: $25
	db $e4                                           ; $578c: $e4
	ld a, e                                          ; $578d: $7b
	rla                                              ; $578e: $17
	ld a, h                                          ; $578f: $7c
	ld c, h                                          ; $5790: $4c
	ld a, h                                          ; $5791: $7c
	add e                                            ; $5792: $83
	ld a, h                                          ; $5793: $7c
	cp e                                             ; $5794: $bb
	ld a, h                                          ; $5795: $7c
	db $ed                                           ; $5796: $ed
	ld a, h                                          ; $5797: $7c
	jr nz, jr_006_5817                               ; $5798: $20 $7d

	ld d, [hl]                                       ; $579a: $56
	ld a, l                                          ; $579b: $7d
	adc h                                            ; $579c: $8c
	ld a, l                                          ; $579d: $7d
	sub e                                            ; $579e: $93
	ld a, l                                          ; $579f: $7d

jr_006_57a0:
	sbc d                                            ; $57a0: $9a
	ld a, l                                          ; $57a1: $7d
	and c                                            ; $57a2: $a1
	ld a, l                                          ; $57a3: $7d
	ld b, $04                                        ; $57a4: $06 $04
	inc bc                                           ; $57a6: $03
	ld h, $f8                                        ; $57a7: $26 $f8
	halt                                             ; $57a9: $76
	ld c, c                                          ; $57aa: $49
	ld [hl], a                                       ; $57ab: $77
	sbc d                                            ; $57ac: $9a
	ld [hl], a                                       ; $57ad: $77
	ld [$3a77], a                                    ; $57ae: $ea $77 $3a
	ld a, b                                          ; $57b1: $78
	adc e                                            ; $57b2: $8b
	ld a, b                                          ; $57b3: $78
	call c, $2978                                    ; $57b4: $dc $78 $29
	ld a, c                                          ; $57b7: $79
	halt                                             ; $57b8: $76
	ld a, c                                          ; $57b9: $79
	rst JumpTable                                          ; $57ba: $c7
	ld a, c                                          ; $57bb: $79
	ld a, [de]                                       ; $57bc: $1a
	ld a, d                                          ; $57bd: $7a
	ld l, d                                          ; $57be: $6a
	ld a, d                                          ; $57bf: $7a
	add hl, bc                                       ; $57c0: $09
	inc b                                            ; $57c1: $04
	ld [bc], a                                       ; $57c2: $02
	ld h, $ba                                        ; $57c3: $26 $ba
	ld a, d                                          ; $57c5: $7a
	nop                                              ; $57c6: $00
	ld a, e                                          ; $57c7: $7b
	ld b, [hl]                                       ; $57c8: $46
	ld a, e                                          ; $57c9: $7b
	adc c                                            ; $57ca: $89
	ld a, e                                          ; $57cb: $7b
	bit 7, e                                         ; $57cc: $cb $7b
	ld de, $577c                                     ; $57ce: $11 $7c $57
	ld a, h                                          ; $57d1: $7c
	sbc d                                            ; $57d2: $9a
	ld a, h                                          ; $57d3: $7c
	call c, $247c                                    ; $57d4: $dc $7c $24
	ld a, l                                          ; $57d7: $7d
	ld l, h                                          ; $57d8: $6c
	ld a, l                                          ; $57d9: $7d
	xor a                                            ; $57da: $af
	ld a, l                                          ; $57db: $7d
	ld sp, hl                                        ; $57dc: $f9
	jr z, jr_006_57df                                ; $57dd: $28 $00

jr_006_57df:
	ld b, b                                          ; $57df: $40
	nop                                              ; $57e0: $00
	add b                                            ; $57e1: $80
	jr z, jr_006_577d                                ; $57e2: $28 $99

	ld b, [hl]                                       ; $57e4: $46
	db $d3                                           ; $57e5: $d3

jr_006_57e6:
	call nc, $28ff                                   ; $57e6: $d4 $ff $28

jr_006_57e9:
	or [hl]                                          ; $57e9: $b6
	ld b, [hl]                                       ; $57ea: $46

jr_006_57eb:
	jr z, @+$62                                      ; $57eb: $28 $60

	ld b, a                                          ; $57ed: $47
	jr z, jr_006_585a                                ; $57ee: $28 $6a

	ld b, a                                          ; $57f0: $47
	jr z, jr_006_5838                                ; $57f1: $28 $45

	ld c, b                                          ; $57f3: $48

jr_006_57f4:
	jr z, jr_006_5845                                ; $57f4: $28 $4f

	ld c, b                                          ; $57f6: $48

jr_006_57f7:
	jr z, jr_006_57e9                                ; $57f7: $28 $f0

jr_006_57f9:
	ld c, b                                          ; $57f9: $48
	jr z, jr_006_57f7                                ; $57fa: $28 $fb

	ld c, b                                          ; $57fc: $48
	jr z, jr_006_5869                                ; $57fd: $28 $6a

	ld c, c                                          ; $57ff: $49
	jr z, jr_006_5877                                ; $5800: $28 $75

	ld c, c                                          ; $5802: $49
	jr z, jr_006_57eb                                ; $5803: $28 $e6

	ld c, c                                          ; $5805: $49
	jr z, jr_006_57f9                                ; $5806: $28 $f1

	ld c, c                                          ; $5808: $49
	jr z, jr_006_5861                                ; $5809: $28 $56

	ld c, d                                          ; $580b: $4a
	jr z, jr_006_586e                                ; $580c: $28 $60

	ld c, d                                          ; $580e: $4a
	jr z, jr_006_57e6                                ; $580f: $28 $d5

	ld c, d                                          ; $5811: $4a
	jr z, jr_006_57f4                                ; $5812: $28 $e0

	ld c, d                                          ; $5814: $4a
	jr z, jr_006_5892                                ; $5815: $28 $7b

jr_006_5817:
	ld c, e                                          ; $5817: $4b
	jr z, jr_006_57a0                                ; $5818: $28 $86

	ld c, e                                          ; $581a: $4b
	jr z, jr_006_5883                                ; $581b: $28 $66

	ld c, h                                          ; $581d: $4c
	jr z, jr_006_5891                                ; $581e: $28 $71

	ld c, h                                          ; $5820: $4c
	jr z, @+$63                                      ; $5821: $28 $61

	ld c, l                                          ; $5823: $4d
	jr z, jr_006_5892                                ; $5824: $28 $6c

	ld c, l                                          ; $5826: $4d
	jr z, jr_006_588b                                ; $5827: $28 $62

	ld c, [hl]                                       ; $5829: $4e
	jr z, @+$6d                                      ; $582a: $28 $6b

	ld c, [hl]                                       ; $582c: $4e
	jr z, jr_006_587b                                ; $582d: $28 $4c

	ld c, a                                          ; $582f: $4f
	jr z, jr_006_5889                                ; $5830: $28 $57

	ld c, a                                          ; $5832: $4f
	jr z, jr_006_5871                                ; $5833: $28 $3c

	ld d, b                                          ; $5835: $50
	rst $38                                          ; $5836: $ff
	ld a, [bc]                                       ; $5837: $0a

jr_006_5838:
	rlca                                             ; $5838: $07
	ld [bc], a                                       ; $5839: $02
	jr z, jr_006_5881                                ; $583a: $28 $45

	ld d, b                                          ; $583c: $50
	ld a, [hl]                                       ; $583d: $7e
	ld d, b                                          ; $583e: $50
	cp d                                             ; $583f: $ba
	ld d, b                                          ; $5840: $50
	push af                                          ; $5841: $f5
	ld d, b                                          ; $5842: $50
	ld [hl-], a                                      ; $5843: $32
	ld d, c                                          ; $5844: $51

jr_006_5845:
	ld l, l                                          ; $5845: $6d
	ld d, c                                          ; $5846: $51
	xor b                                            ; $5847: $a8
	ld d, c                                          ; $5848: $51
	db $e4                                           ; $5849: $e4
	ld d, c                                          ; $584a: $51
	ld [$0305], sp                                   ; $584b: $08 $05 $03
	daa                                              ; $584e: $27
	nop                                              ; $584f: $00
	ld b, b                                          ; $5850: $40
	ld h, b                                          ; $5851: $60
	ld b, b                                          ; $5852: $40
	jp $2040                                         ; $5853: $c3 $40 $20


	ld b, c                                          ; $5856: $41
	ld a, l                                          ; $5857: $7d
	ld b, c                                          ; $5858: $41
	rst SubAFromDE                                          ; $5859: $df

jr_006_585a:
	ld b, c                                          ; $585a: $41
	ld b, d                                          ; $585b: $42
	ld b, d                                          ; $585c: $42
	sbc [hl]                                         ; $585d: $9e
	ld b, d                                          ; $585e: $42
	dec bc                                           ; $585f: $0b
	dec b                                            ; $5860: $05

jr_006_5861:
	ld [bc], a                                       ; $5861: $02
	daa                                              ; $5862: $27
	ld hl, sp+$42                                    ; $5863: $f8 $42
	ld b, c                                          ; $5865: $41
	ld b, e                                          ; $5866: $43
	adc d                                            ; $5867: $8a
	ld b, e                                          ; $5868: $43

jr_006_5869:
	db $d3                                           ; $5869: $d3
	ld b, e                                          ; $586a: $43
	dec de                                           ; $586b: $1b
	ld b, h                                          ; $586c: $44
	ld h, e                                          ; $586d: $63

jr_006_586e:
	ld b, h                                          ; $586e: $44
	xor e                                            ; $586f: $ab
	ld b, h                                          ; $5870: $44

jr_006_5871:
	di                                               ; $5871: $f3
	ld b, h                                          ; $5872: $44
	ld sp, hl                                        ; $5873: $f9
	daa                                              ; $5874: $27
	inc a                                            ; $5875: $3c
	ld b, l                                          ; $5876: $45

jr_006_5877:
	nop                                              ; $5877: $00
	add b                                            ; $5878: $80
	daa                                              ; $5879: $27
	rst SubAFromBC                                          ; $587a: $e7

jr_006_587b:
	ld c, e                                          ; $587b: $4b
	db $d3                                           ; $587c: $d3
	call nc, $27ff                                   ; $587d: $d4 $ff $27
	ld [bc], a                                       ; $5880: $02

jr_006_5881:
	ld c, h                                          ; $5881: $4c
	daa                                              ; $5882: $27

jr_006_5883:
	jp $274c                                         ; $5883: $c3 $4c $27


	call $274c                                       ; $5886: $cd $4c $27

jr_006_5889:
	or c                                             ; $5889: $b1
	ld c, l                                          ; $588a: $4d

jr_006_588b:
	daa                                              ; $588b: $27
	cp d                                             ; $588c: $ba
	ld c, l                                          ; $588d: $4d
	daa                                              ; $588e: $27
	ld c, d                                          ; $588f: $4a
	ld c, [hl]                                       ; $5890: $4e

jr_006_5891:
	daa                                              ; $5891: $27

jr_006_5892:
	ld d, l                                          ; $5892: $55
	ld c, [hl]                                       ; $5893: $4e
	daa                                              ; $5894: $27
	call c, $274e                                    ; $5895: $dc $4e $27
	rst SubAFromBC                                          ; $5898: $e7
	ld c, [hl]                                       ; $5899: $4e
	daa                                              ; $589a: $27
	ld l, h                                          ; $589b: $6c
	ld c, a                                          ; $589c: $4f
	daa                                              ; $589d: $27
	ld [hl], a                                       ; $589e: $77
	ld c, a                                          ; $589f: $4f
	daa                                              ; $58a0: $27
	db $ed                                           ; $58a1: $ed
	ld c, a                                          ; $58a2: $4f
	daa                                              ; $58a3: $27
	ld hl, sp+$4f                                    ; $58a4: $f8 $4f
	daa                                              ; $58a6: $27
	ld a, b                                          ; $58a7: $78
	ld d, b                                          ; $58a8: $50
	daa                                              ; $58a9: $27
	add e                                            ; $58aa: $83
	ld d, b                                          ; $58ab: $50
	daa                                              ; $58ac: $27
	inc h                                            ; $58ad: $24
	ld d, c                                          ; $58ae: $51
	daa                                              ; $58af: $27
	cpl                                              ; $58b0: $2f
	ld d, c                                          ; $58b1: $51
	daa                                              ; $58b2: $27
	add hl, hl                                       ; $58b3: $29
	ld d, d                                          ; $58b4: $52
	daa                                              ; $58b5: $27
	inc [hl]                                         ; $58b6: $34
	ld d, d                                          ; $58b7: $52
	daa                                              ; $58b8: $27
	dec l                                            ; $58b9: $2d
	ld d, e                                          ; $58ba: $53
	daa                                              ; $58bb: $27
	ld [hl], $53                                     ; $58bc: $36 $53
	daa                                              ; $58be: $27
	dec hl                                           ; $58bf: $2b
	ld d, h                                          ; $58c0: $54
	daa                                              ; $58c1: $27
	inc [hl]                                         ; $58c2: $34
	ld d, h                                          ; $58c3: $54
	daa                                              ; $58c4: $27
	rla                                              ; $58c5: $17
	ld d, l                                          ; $58c6: $55
	daa                                              ; $58c7: $27
	rra                                              ; $58c8: $1f
	ld d, l                                          ; $58c9: $55
	daa                                              ; $58ca: $27
	ld hl, sp+$55                                    ; $58cb: $f8 $55
	rst $38                                          ; $58cd: $ff
	ld a, [bc]                                       ; $58ce: $0a
	rlca                                             ; $58cf: $07
	ld bc, $a825                                     ; $58d0: $01 $25 $a8
	ld a, l                                          ; $58d3: $7d
	bit 7, l                                         ; $58d4: $cb $7d
	rst AddAOntoHL                                          ; $58d6: $ef
	ld a, l                                          ; $58d7: $7d
	inc de                                           ; $58d8: $13
	ld a, [hl]                                       ; $58d9: $7e
	scf                                              ; $58da: $37
	ld a, [hl]                                       ; $58db: $7e
	ld e, d                                          ; $58dc: $5a
	ld a, [hl]                                       ; $58dd: $7e
	ld a, l                                          ; $58de: $7d
	ld a, [hl]                                       ; $58df: $7e
	and c                                            ; $58e0: $a1
	ld a, [hl]                                       ; $58e1: $7e
	ld [$0305], sp                                   ; $58e2: $08 $05 $03
	ld a, [hl+]                                      ; $58e5: $2a
	ret                                              ; $58e6: $c9


	ld d, b                                          ; $58e7: $50
	jr z, @+$53                                      ; $58e8: $28 $51

	add [hl]                                         ; $58ea: $86
	ld d, c                                          ; $58eb: $51
	pop hl                                           ; $58ec: $e1
	ld d, c                                          ; $58ed: $51
	dec sp                                           ; $58ee: $3b
	ld d, d                                          ; $58ef: $52
	sbc e                                            ; $58f0: $9b
	ld d, d                                          ; $58f1: $52
	ld a, [$5452]                                    ; $58f2: $fa $52 $54
	ld d, e                                          ; $58f5: $53
	dec bc                                           ; $58f6: $0b
	dec b                                            ; $58f7: $05
	ld [bc], a                                       ; $58f8: $02
	ld a, [hl+]                                      ; $58f9: $2a
	xor l                                            ; $58fa: $ad
	ld d, e                                          ; $58fb: $53
	push af                                          ; $58fc: $f5
	ld d, e                                          ; $58fd: $53
	ld a, $54                                        ; $58fe: $3e $54
	add e                                            ; $5900: $83
	ld d, h                                          ; $5901: $54
	add $54                                          ; $5902: $c6 $54
	inc c                                            ; $5904: $0c
	ld d, l                                          ; $5905: $55
	ld d, e                                          ; $5906: $53
	ld d, l                                          ; $5907: $55
	sub a                                            ; $5908: $97
	ld d, l                                          ; $5909: $55
	ld sp, hl                                        ; $590a: $f9
	ld h, $00                                        ; $590b: $26 $00
	ld b, b                                          ; $590d: $40
	nop                                              ; $590e: $00
	add b                                            ; $590f: $80
	ld h, $92                                        ; $5910: $26 $92
	ld b, [hl]                                       ; $5912: $46
	db $d3                                           ; $5913: $d3
	call nc, $26ff                                   ; $5914: $d4 $ff $26
	and e                                            ; $5917: $a3
	ld b, [hl]                                       ; $5918: $46
	ld h, $67                                        ; $5919: $26 $67
	ld b, a                                          ; $591b: $47
	ld h, $6b                                        ; $591c: $26 $6b
	ld b, a                                          ; $591e: $47
	ld h, $5d                                        ; $591f: $26 $5d
	ld c, b                                          ; $5921: $48
	ld h, $67                                        ; $5922: $26 $67
	ld c, b                                          ; $5924: $48
	ld h, $fa                                        ; $5925: $26 $fa
	ld c, b                                          ; $5927: $48
	ld h, $04                                        ; $5928: $26 $04
	ld c, c                                          ; $592a: $49
	ld h, $9f                                        ; $592b: $26 $9f
	ld c, c                                          ; $592d: $49
	ld h, $aa                                        ; $592e: $26 $aa
	ld c, c                                          ; $5930: $49
	ld h, $4f                                        ; $5931: $26 $4f
	ld c, d                                          ; $5933: $4a
	ld h, $5a                                        ; $5934: $26 $5a
	ld c, d                                          ; $5936: $4a
	ld h, $01                                        ; $5937: $26 $01
	ld c, e                                          ; $5939: $4b
	ld h, $0b                                        ; $593a: $26 $0b
	ld c, e                                          ; $593c: $4b
	ld h, $b8                                        ; $593d: $26 $b8
	ld c, e                                          ; $593f: $4b
	ld h, $c2                                        ; $5940: $26 $c2
	ld c, e                                          ; $5942: $4b
	ld h, $7d                                        ; $5943: $26 $7d
	ld c, h                                          ; $5945: $4c
	ld h, $88                                        ; $5946: $26 $88
	ld c, h                                          ; $5948: $4c
	ld h, $83                                        ; $5949: $26 $83
	ld c, l                                          ; $594b: $4d
	ld h, $8d                                        ; $594c: $26 $8d
	ld c, l                                          ; $594e: $4d
	ld h, $84                                        ; $594f: $26 $84
	ld c, [hl]                                       ; $5951: $4e
	ld h, $8f                                        ; $5952: $26 $8f
	ld c, [hl]                                       ; $5954: $4e
	ld h, $87                                        ; $5955: $26 $87
	ld c, a                                          ; $5957: $4f
	ld h, $92                                        ; $5958: $26 $92
	ld c, a                                          ; $595a: $4f
	ld h, $80                                        ; $595b: $26 $80
	ld d, b                                          ; $595d: $50
	ld h, $8a                                        ; $595e: $26 $8a
	ld d, b                                          ; $5960: $50
	ld h, $6f                                        ; $5961: $26 $6f
	ld d, c                                          ; $5963: $51
	rst $38                                          ; $5964: $ff
	ld a, [bc]                                       ; $5965: $0a
	rlca                                             ; $5966: $07
	ld [bc], a                                       ; $5967: $02
	daa                                              ; $5968: $27
	di                                               ; $5969: $f3
	ld a, h                                          ; $596a: $7c
	add hl, sp                                       ; $596b: $39
	ld a, l                                          ; $596c: $7d
	ld a, a                                          ; $596d: $7f
	ld a, l                                          ; $596e: $7d
	push bc                                          ; $596f: $c5
	ld a, l                                          ; $5970: $7d
	dec bc                                           ; $5971: $0b
	ld a, [hl]                                       ; $5972: $7e
	ld d, c                                          ; $5973: $51
	ld a, [hl]                                       ; $5974: $7e
	sbc b                                            ; $5975: $98
	ld a, [hl]                                       ; $5976: $7e
	rst SubAFromDE                                          ; $5977: $df
	ld a, [hl]                                       ; $5978: $7e
	ld [$0305], sp                                   ; $5979: $08 $05 $03
	ld h, $79                                        ; $597c: $26 $79
	ld d, c                                          ; $597e: $51
	db $db                                           ; $597f: $db
	ld d, c                                          ; $5980: $51
	dec a                                            ; $5981: $3d
	ld d, d                                          ; $5982: $52
	sbc [hl]                                         ; $5983: $9e
	ld d, d                                          ; $5984: $52
	db $fc                                           ; $5985: $fc
	ld d, d                                          ; $5986: $52
	ld e, [hl]                                       ; $5987: $5e
	ld d, e                                          ; $5988: $53
	cp a                                             ; $5989: $bf
	ld d, e                                          ; $598a: $53
	rra                                              ; $598b: $1f
	ld d, h                                          ; $598c: $54
	dec bc                                           ; $598d: $0b
	dec b                                            ; $598e: $05
	ld [bc], a                                       ; $598f: $02
	ld a, [hl+]                                      ; $5990: $2a
	inc b                                            ; $5991: $04
	ld e, h                                          ; $5992: $5c
	ld c, l                                          ; $5993: $4d
	ld e, h                                          ; $5994: $5c
	sub [hl]                                         ; $5995: $96
	ld e, h                                          ; $5996: $5c
	sbc $5c                                          ; $5997: $de $5c
	inc h                                            ; $5999: $24
	ld e, l                                          ; $599a: $5d
	ld l, l                                          ; $599b: $6d
	ld e, l                                          ; $599c: $5d
	or [hl]                                          ; $599d: $b6
	ld e, l                                          ; $599e: $5d
	cp $5d                                           ; $599f: $fe $5d
	ld sp, hl                                        ; $59a1: $f9
	ld h, $7d                                        ; $59a2: $26 $7d
	ld d, h                                          ; $59a4: $54
	nop                                              ; $59a5: $00
	add b                                            ; $59a6: $80
	ld h, $7c                                        ; $59a7: $26 $7c
	ld e, e                                          ; $59a9: $5b
	db $d3                                           ; $59aa: $d3
	call nc, $26ff                                   ; $59ab: $d4 $ff $26
	and e                                            ; $59ae: $a3
	ld e, e                                          ; $59af: $5b
	ld h, $63                                        ; $59b0: $26 $63
	ld e, h                                          ; $59b2: $5c
	ld h, $6c                                        ; $59b3: $26 $6c
	ld e, h                                          ; $59b5: $5c
	ld h, $58                                        ; $59b6: $26 $58
	ld e, l                                          ; $59b8: $5d
	ld h, $61                                        ; $59b9: $26 $61
	ld e, l                                          ; $59bb: $5d
	ld h, $ef                                        ; $59bc: $26 $ef
	ld e, l                                          ; $59be: $5d
	ld h, $f8                                        ; $59bf: $26 $f8
	ld e, l                                          ; $59c1: $5d
	ld h, $65                                        ; $59c2: $26 $65
	ld e, [hl]                                       ; $59c4: $5e
	ld h, $6e                                        ; $59c5: $26 $6e
	ld e, [hl]                                       ; $59c7: $5e
	ld h, $e3                                        ; $59c8: $26 $e3
	ld e, [hl]                                       ; $59ca: $5e
	ld h, $ec                                        ; $59cb: $26 $ec
	ld e, [hl]                                       ; $59cd: $5e
	ld h, $5c                                        ; $59ce: $26 $5c
	ld e, a                                          ; $59d0: $5f
	ld h, $66                                        ; $59d1: $26 $66
	ld e, a                                          ; $59d3: $5f
	ld h, $ef                                        ; $59d4: $26 $ef
	ld e, a                                          ; $59d6: $5f
	ld h, $f8                                        ; $59d7: $26 $f8
	ld e, a                                          ; $59d9: $5f
	ld h, $9b                                        ; $59da: $26 $9b
	ld h, b                                          ; $59dc: $60
	ld h, $a5                                        ; $59dd: $26 $a5
	ld h, b                                          ; $59df: $60
	ld h, $96                                        ; $59e0: $26 $96
	ld h, c                                          ; $59e2: $61
	ld h, $a1                                        ; $59e3: $26 $a1
	ld h, c                                          ; $59e5: $61
	ld h, $96                                        ; $59e6: $26 $96
	ld h, d                                          ; $59e8: $62
	ld h, $9f                                        ; $59e9: $26 $9f
	ld h, d                                          ; $59eb: $62
	ld h, $92                                        ; $59ec: $26 $92
	ld h, e                                          ; $59ee: $63
	ld h, $9a                                        ; $59ef: $26 $9a
	ld h, e                                          ; $59f1: $63
	ld h, $8a                                        ; $59f2: $26 $8a
	ld h, h                                          ; $59f4: $64
	ld h, $95                                        ; $59f5: $26 $95
	ld h, h                                          ; $59f7: $64
	ld h, $83                                        ; $59f8: $26 $83
	ld h, l                                          ; $59fa: $65
	rst $38                                          ; $59fb: $ff
	add hl, bc                                       ; $59fc: $09
	rlca                                             ; $59fd: $07
	ld bc, $da2a                                     ; $59fe: $01 $2a $da
	ld d, l                                          ; $5a01: $55
	cp $55                                           ; $5a02: $fe $55
	ld [hl+], a                                      ; $5a04: $22
	ld d, [hl]                                       ; $5a05: $56
	ld b, a                                          ; $5a06: $47
	ld d, [hl]                                       ; $5a07: $56
	ld l, [hl]                                       ; $5a08: $6e
	ld d, [hl]                                       ; $5a09: $56
	sub d                                            ; $5a0a: $92
	ld d, [hl]                                       ; $5a0b: $56
	or a                                             ; $5a0c: $b7
	ld d, [hl]                                       ; $5a0d: $56
	db $dd                                           ; $5a0e: $dd
	ld d, [hl]                                       ; $5a0f: $56
	ld a, [bc]                                       ; $5a10: $0a
	dec b                                            ; $5a11: $05
	ld [bc], a                                       ; $5a12: $02
	jr z, jr_006_5a81                                ; $5a13: $28 $6c

	ld h, d                                          ; $5a15: $62
	xor h                                            ; $5a16: $ac
	ld h, d                                          ; $5a17: $62
	db $ec                                           ; $5a18: $ec
	ld h, d                                          ; $5a19: $62
	ld a, [hl+]                                      ; $5a1a: $2a
	ld h, e                                          ; $5a1b: $63
	ld h, [hl]                                       ; $5a1c: $66
	ld h, e                                          ; $5a1d: $63
	xor d                                            ; $5a1e: $aa
	ld h, e                                          ; $5a1f: $63
	xor $63                                          ; $5a20: $ee $63
	cpl                                              ; $5a22: $2f
	ld h, h                                          ; $5a23: $64
	ld sp, hl                                        ; $5a24: $f9
	daa                                              ; $5a25: $27
	inc bc                                           ; $5a26: $03
	ld d, [hl]                                       ; $5a27: $56
	nop                                              ; $5a28: $00
	add b                                            ; $5a29: $80
	daa                                              ; $5a2a: $27
	adc d                                            ; $5a2b: $8a
	ld e, h                                          ; $5a2c: $5c
	db $d3                                           ; $5a2d: $d3
	call nc, $27ff                                   ; $5a2e: $d4 $ff $27
	xor c                                            ; $5a31: $a9
	ld e, h                                          ; $5a32: $5c
	daa                                              ; $5a33: $27
	ld d, a                                          ; $5a34: $57
	ld e, l                                          ; $5a35: $5d
	daa                                              ; $5a36: $27
	ld e, a                                          ; $5a37: $5f
	ld e, l                                          ; $5a38: $5d
	daa                                              ; $5a39: $27
	ld b, b                                          ; $5a3a: $40
	ld e, [hl]                                       ; $5a3b: $5e
	daa                                              ; $5a3c: $27
	ld c, b                                          ; $5a3d: $48
	ld e, [hl]                                       ; $5a3e: $5e
	daa                                              ; $5a3f: $27
	push hl                                          ; $5a40: $e5
	ld e, [hl]                                       ; $5a41: $5e
	daa                                              ; $5a42: $27
	ldh a, [$5e]                                     ; $5a43: $f0 $5e
	daa                                              ; $5a45: $27
	ld a, a                                          ; $5a46: $7f
	ld e, a                                          ; $5a47: $5f
	daa                                              ; $5a48: $27
	adc d                                            ; $5a49: $8a
	ld e, a                                          ; $5a4a: $5f
	daa                                              ; $5a4b: $27
	add hl, bc                                       ; $5a4c: $09
	ld h, b                                          ; $5a4d: $60
	daa                                              ; $5a4e: $27
	inc d                                            ; $5a4f: $14
	ld h, b                                          ; $5a50: $60
	daa                                              ; $5a51: $27
	add a                                            ; $5a52: $87
	ld h, b                                          ; $5a53: $60
	daa                                              ; $5a54: $27
	sub d                                            ; $5a55: $92
	ld h, b                                          ; $5a56: $60
	daa                                              ; $5a57: $27
	ld de, $2761                                     ; $5a58: $11 $61 $27
	inc e                                            ; $5a5b: $1c
	ld h, c                                          ; $5a5c: $61
	daa                                              ; $5a5d: $27
	cp a                                             ; $5a5e: $bf
	ld h, c                                          ; $5a5f: $61
	daa                                              ; $5a60: $27
	jp z, $2761                                      ; $5a61: $ca $61 $27

	xor l                                            ; $5a64: $ad
	ld h, d                                          ; $5a65: $62
	daa                                              ; $5a66: $27
	cp b                                             ; $5a67: $b8
	ld h, d                                          ; $5a68: $62
	daa                                              ; $5a69: $27
	xor h                                            ; $5a6a: $ac
	ld h, e                                          ; $5a6b: $63
	daa                                              ; $5a6c: $27
	or a                                             ; $5a6d: $b7
	ld h, e                                          ; $5a6e: $63

jr_006_5a6f:
	daa                                              ; $5a6f: $27
	xor h                                            ; $5a70: $ac
	ld h, h                                          ; $5a71: $64
	daa                                              ; $5a72: $27
	or a                                             ; $5a73: $b7
	ld h, h                                          ; $5a74: $64
	daa                                              ; $5a75: $27
	and l                                            ; $5a76: $a5
	ld h, l                                          ; $5a77: $65
	daa                                              ; $5a78: $27
	xor a                                            ; $5a79: $af

jr_006_5a7a:
	ld h, l                                          ; $5a7a: $65
	daa                                              ; $5a7b: $27
	sbc [hl]                                         ; $5a7c: $9e
	ld h, [hl]                                       ; $5a7d: $66
	rst $38                                          ; $5a7e: $ff
	ld a, [bc]                                       ; $5a7f: $0a
	rlca                                             ; $5a80: $07

jr_006_5a81:
	ld [bc], a                                       ; $5a81: $02
	add hl, hl                                       ; $5a82: $29
	ld [de], a                                       ; $5a83: $12
	ld b, a                                          ; $5a84: $47

jr_006_5a85:
	ccf                                              ; $5a85: $3f
	ld b, a                                          ; $5a86: $47

jr_006_5a87:
	ld l, h                                          ; $5a87: $6c
	ld b, a                                          ; $5a88: $47
	sbc h                                            ; $5a89: $9c
	ld b, a                                          ; $5a8a: $47
	adc $47                                          ; $5a8b: $ce $47
	ld a, [$2847]                                    ; $5a8d: $fa $47 $28
	ld c, b                                          ; $5a90: $48

jr_006_5a91:
	ld d, a                                          ; $5a91: $57
	ld c, b                                          ; $5a92: $48

jr_006_5a93:
	add hl, bc                                       ; $5a93: $09
	dec b                                            ; $5a94: $05

jr_006_5a95:
	inc bc                                           ; $5a95: $03
	ld a, [hl+]                                      ; $5a96: $2a
	inc b                                            ; $5a97: $04
	ld d, a                                          ; $5a98: $57
	ld h, c                                          ; $5a99: $61
	ld d, a                                          ; $5a9a: $57
	cp a                                             ; $5a9b: $bf

jr_006_5a9c:
	ld d, a                                          ; $5a9c: $57
	ld a, [de]                                       ; $5a9d: $1a
	ld e, b                                          ; $5a9e: $58
	ld [hl], c                                       ; $5a9f: $71
	ld e, b                                          ; $5aa0: $58
	call $2a58                                       ; $5aa1: $cd $58 $2a
	ld e, c                                          ; $5aa4: $59
	add l                                            ; $5aa5: $85
	ld e, c                                          ; $5aa6: $59
	inc c                                            ; $5aa7: $0c
	dec b                                            ; $5aa8: $05
	ld [bc], a                                       ; $5aa9: $02
	ld a, [hl+]                                      ; $5aaa: $2a
	call c, $2459                                    ; $5aab: $dc $59 $24
	ld e, d                                          ; $5aae: $5a

jr_006_5aaf:
	ld l, h                                          ; $5aaf: $6c
	ld e, d                                          ; $5ab0: $5a
	or b                                             ; $5ab1: $b0
	ld e, d                                          ; $5ab2: $5a
	ldh a, [$5a]                                     ; $5ab3: $f0 $5a

jr_006_5ab5:
	jr c, jr_006_5b12                                ; $5ab5: $38 $5b

	add b                                            ; $5ab7: $80
	ld e, e                                          ; $5ab8: $5b
	call nz, $f95b                                   ; $5ab9: $c4 $5b $f9
	jr z, @+$21                                      ; $5abc: $28 $1f

	ld d, d                                          ; $5abe: $52
	nop                                              ; $5abf: $00
	add b                                            ; $5ac0: $80

jr_006_5ac1:
	jr z, @+$25                                      ; $5ac1: $28 $23

	ld e, b                                          ; $5ac3: $58
	db $d3                                           ; $5ac4: $d3

jr_006_5ac5:
	call nc, $28ff                                   ; $5ac5: $d4 $ff $28
	jr c, jr_006_5b22                                ; $5ac8: $38 $58

	jr z, jr_006_5ab5                                ; $5aca: $28 $e9

	ld e, b                                          ; $5acc: $58
	jr z, jr_006_5ac1                                ; $5acd: $28 $f2

	ld e, b                                          ; $5acf: $58
	jr z, @-$2e                                      ; $5ad0: $28 $d0

	ld e, c                                          ; $5ad2: $59

jr_006_5ad3:
	jr z, jr_006_5aaf                                ; $5ad3: $28 $da

	ld e, c                                          ; $5ad5: $59
	jr z, @-$74                                      ; $5ad6: $28 $8a

	ld e, d                                          ; $5ad8: $5a
	jr z, jr_006_5a6f                                ; $5ad9: $28 $94

	ld e, d                                          ; $5adb: $5a
	jr z, jr_006_5af7                                ; $5adc: $28 $19

	ld e, e                                          ; $5ade: $5b
	jr z, @+$25                                      ; $5adf: $28 $23

	ld e, e                                          ; $5ae1: $5b
	jr z, jr_006_5a85                                ; $5ae2: $28 $a1

	ld e, e                                          ; $5ae4: $5b
	jr z, jr_006_5a93                                ; $5ae5: $28 $ac

	ld e, e                                          ; $5ae7: $5b
	jr z, jr_006_5b24                                ; $5ae8: $28 $3a

	ld e, h                                          ; $5aea: $5c
	jr z, jr_006_5b32                                ; $5aeb: $28 $45

	ld e, h                                          ; $5aed: $5c
	jr z, jr_006_5ac5                                ; $5aee: $28 $d5

	ld e, h                                          ; $5af0: $5c
	jr z, jr_006_5ad3                                ; $5af1: $28 $e0

	ld e, h                                          ; $5af3: $5c
	jr z, jr_006_5a7a                                ; $5af4: $28 $84

	ld e, l                                          ; $5af6: $5d

jr_006_5af7:
	jr z, jr_006_5a87                                ; $5af7: $28 $8e

	ld e, l                                          ; $5af9: $5d
	jr z, jr_006_5a87                                ; $5afa: $28 $8b

	ld e, [hl]                                       ; $5afc: $5e
	jr z, jr_006_5a93                                ; $5afd: $28 $94

	ld e, [hl]                                       ; $5aff: $5e
	jr z, jr_006_5a91                                ; $5b00: $28 $8f

	ld e, a                                          ; $5b02: $5f
	jr z, jr_006_5a9c                                ; $5b03: $28 $97

	ld e, a                                          ; $5b05: $5f
	jr z, jr_006_5a95                                ; $5b06: $28 $8d

	ld h, b                                          ; $5b08: $60
	jr z, @-$67                                      ; $5b09: $28 $97

	ld h, b                                          ; $5b0b: $60
	jr z, @+$72                                      ; $5b0c: $28 $70

	ld h, c                                          ; $5b0e: $61
	jr z, jr_006_5b8c                                ; $5b0f: $28 $7b

	ld h, c                                          ; $5b11: $61

jr_006_5b12:
	jr z, jr_006_5b76                                ; $5b12: $28 $62

	ld h, d                                          ; $5b14: $62
	rst $38                                          ; $5b15: $ff
	add hl, bc                                       ; $5b16: $09
	ld [$2a01], sp                                   ; $5b17: $08 $01 $2a
	ld b, e                                          ; $5b1a: $43
	ld e, [hl]                                       ; $5b1b: $5e
	ld h, l                                          ; $5b1c: $65
	ld e, [hl]                                       ; $5b1d: $5e
	adc c                                            ; $5b1e: $89
	ld e, [hl]                                       ; $5b1f: $5e
	xor l                                            ; $5b20: $ad
	ld e, [hl]                                       ; $5b21: $5e

jr_006_5b22:
	db $d3                                           ; $5b22: $d3
	ld e, [hl]                                       ; $5b23: $5e

jr_006_5b24:
	db $f4                                           ; $5b24: $f4
	ld e, [hl]                                       ; $5b25: $5e
	ld d, $5f                                        ; $5b26: $16 $5f
	dec sp                                           ; $5b28: $3b
	ld e, a                                          ; $5b29: $5f
	rlca                                             ; $5b2a: $07
	ld b, $03                                        ; $5b2b: $06 $03
	add hl, hl                                       ; $5b2d: $29
	nop                                              ; $5b2e: $00
	ld b, b                                          ; $5b2f: $40
	ld h, b                                          ; $5b30: $60
	ld b, b                                          ; $5b31: $40

jr_006_5b32:
	ret nz                                           ; $5b32: $c0

	ld b, b                                          ; $5b33: $40
	inc e                                            ; $5b34: $1c
	ld b, c                                          ; $5b35: $41
	ld a, b                                          ; $5b36: $78
	ld b, c                                          ; $5b37: $41
	ret c                                            ; $5b38: $d8

	ld b, c                                          ; $5b39: $41
	jr c, @+$44                                      ; $5b3a: $38 $42

	sub e                                            ; $5b3c: $93
	ld b, d                                          ; $5b3d: $42
	ld a, [bc]                                       ; $5b3e: $0a
	ld b, $02                                        ; $5b3f: $06 $02
	add hl, hl                                       ; $5b41: $29
	db $ed                                           ; $5b42: $ed
	ld b, d                                          ; $5b43: $42
	inc [hl]                                         ; $5b44: $34
	ld b, e                                          ; $5b45: $43
	ld a, e                                          ; $5b46: $7b
	ld b, e                                          ; $5b47: $43
	cp a                                             ; $5b48: $bf
	ld b, e                                          ; $5b49: $43
	ld [bc], a                                       ; $5b4a: $02
	ld b, h                                          ; $5b4b: $44
	ld c, c                                          ; $5b4c: $49
	ld b, h                                          ; $5b4d: $44
	sub b                                            ; $5b4e: $90
	ld b, h                                          ; $5b4f: $44
	call nc, $f944                                   ; $5b50: $d4 $44 $f9
	daa                                              ; $5b53: $27
	xor b                                            ; $5b54: $a8
	ld h, [hl]                                       ; $5b55: $66
	nop                                              ; $5b56: $00
	add b                                            ; $5b57: $80
	daa                                              ; $5b58: $27
	ld e, $6d                                        ; $5b59: $1e $6d
	db $d3                                           ; $5b5b: $d3
	call nc, $27ff                                   ; $5b5c: $d4 $ff $27
	ld sp, $276d                                     ; $5b5f: $31 $6d $27
	call z, $276d                                    ; $5b62: $cc $6d $27
	ret nc                                           ; $5b65: $d0

	ld l, l                                          ; $5b66: $6d
	daa                                              ; $5b67: $27
	ld [hl], h                                       ; $5b68: $74
	ld l, [hl]                                       ; $5b69: $6e
	daa                                              ; $5b6a: $27
	ld a, b                                          ; $5b6b: $78
	ld l, [hl]                                       ; $5b6c: $6e
	daa                                              ; $5b6d: $27
	jp hl                                            ; $5b6e: $e9


	ld l, [hl]                                       ; $5b6f: $6e
	daa                                              ; $5b70: $27
	ldh a, [c]                                       ; $5b71: $f2
	ld l, [hl]                                       ; $5b72: $6e
	daa                                              ; $5b73: $27
	ld b, h                                          ; $5b74: $44
	ld l, a                                          ; $5b75: $6f

jr_006_5b76:
	daa                                              ; $5b76: $27
	ld c, l                                          ; $5b77: $4d
	ld l, a                                          ; $5b78: $6f
	daa                                              ; $5b79: $27
	jp z, $276f                                      ; $5b7a: $ca $6f $27

	call nc, $276f                                   ; $5b7d: $d4 $6f $27
	add b                                            ; $5b80: $80
	ld [hl], b                                       ; $5b81: $70
	daa                                              ; $5b82: $27
	adc e                                            ; $5b83: $8b
	ld [hl], b                                       ; $5b84: $70
	daa                                              ; $5b85: $27
	ld c, [hl]                                       ; $5b86: $4e
	ld [hl], c                                       ; $5b87: $71
	daa                                              ; $5b88: $27
	ld e, b                                          ; $5b89: $58
	ld [hl], c                                       ; $5b8a: $71
	daa                                              ; $5b8b: $27

jr_006_5b8c:
	ld sp, $2772                                     ; $5b8c: $31 $72 $27
	dec sp                                           ; $5b8f: $3b
	ld [hl], d                                       ; $5b90: $72
	daa                                              ; $5b91: $27
	ld b, b                                          ; $5b92: $40
	ld [hl], e                                       ; $5b93: $73
	daa                                              ; $5b94: $27
	ld c, c                                          ; $5b95: $49
	ld [hl], e                                       ; $5b96: $73
	daa                                              ; $5b97: $27
	ld b, b                                          ; $5b98: $40
	ld [hl], h                                       ; $5b99: $74
	daa                                              ; $5b9a: $27
	ld c, c                                          ; $5b9b: $49
	ld [hl], h                                       ; $5b9c: $74
	daa                                              ; $5b9d: $27
	dec sp                                           ; $5b9e: $3b
	ld [hl], l                                       ; $5b9f: $75
	daa                                              ; $5ba0: $27
	ld b, e                                          ; $5ba1: $43
	ld [hl], l                                       ; $5ba2: $75
	daa                                              ; $5ba3: $27
	dec l                                            ; $5ba4: $2d
	halt                                             ; $5ba5: $76
	daa                                              ; $5ba6: $27
	scf                                              ; $5ba7: $37
	halt                                             ; $5ba8: $76
	daa                                              ; $5ba9: $27
	inc hl                                           ; $5baa: $23
	ld [hl], a                                       ; $5bab: $77
	rst $38                                          ; $5bac: $ff
	add hl, bc                                       ; $5bad: $09
	rlca                                             ; $5bae: $07
	ld [bc], a                                       ; $5baf: $02
	add hl, hl                                       ; $5bb0: $29
	dec d                                            ; $5bb1: $15
	ld b, l                                          ; $5bb2: $45
	ld d, e                                          ; $5bb3: $53
	ld b, l                                          ; $5bb4: $45
	sub d                                            ; $5bb5: $92
	ld b, l                                          ; $5bb6: $45
	jp nc, $1445                                     ; $5bb7: $d2 $45 $14

	ld b, [hl]                                       ; $5bba: $46
	ld d, d                                          ; $5bbb: $52
	ld b, [hl]                                       ; $5bbc: $46
	sub b                                            ; $5bbd: $90
	ld b, [hl]                                       ; $5bbe: $46
	ret nc                                           ; $5bbf: $d0

	ld b, [hl]                                       ; $5bc0: $46
	rlca                                             ; $5bc1: $07
	dec b                                            ; $5bc2: $05
	inc bc                                           ; $5bc3: $03
	daa                                              ; $5bc4: $27
	dec l                                            ; $5bc5: $2d
	ld [hl], a                                       ; $5bc6: $77
	adc l                                            ; $5bc7: $8d
	ld [hl], a                                       ; $5bc8: $77
	ld [$4577], a                                    ; $5bc9: $ea $77 $45
	ld a, b                                          ; $5bcc: $78
	sbc b                                            ; $5bcd: $98
	ld a, b                                          ; $5bce: $78
	ld hl, sp+$78                                    ; $5bcf: $f8 $78
	ld d, l                                          ; $5bd1: $55
	ld a, c                                          ; $5bd2: $79
	xor [hl]                                         ; $5bd3: $ae
	ld a, c                                          ; $5bd4: $79
	ld a, [bc]                                       ; $5bd5: $0a
	dec b                                            ; $5bd6: $05
	inc bc                                           ; $5bd7: $03
	daa                                              ; $5bd8: $27
	rst $38                                          ; $5bd9: $ff
	ld a, c                                          ; $5bda: $79
	ld h, b                                          ; $5bdb: $60
	ld a, d                                          ; $5bdc: $7a
	pop bc                                           ; $5bdd: $c1
	ld a, d                                          ; $5bde: $7a
	inc e                                            ; $5bdf: $1c
	ld a, e                                          ; $5be0: $7b
	halt                                             ; $5be1: $76
	ld a, e                                          ; $5be2: $7b
	jp c, $3d7b                                      ; $5be3: $da $7b $3d

	ld a, h                                          ; $5be6: $7c
	sbc c                                            ; $5be7: $99
	ld a, h                                          ; $5be8: $7c
	ld sp, hl                                        ; $5be9: $f9
	inc hl                                           ; $5bea: $23
	halt                                             ; $5beb: $76
	ld c, a                                          ; $5bec: $4f
	nop                                              ; $5bed: $00
	adc [hl]                                         ; $5bee: $8e
	inc hl                                           ; $5bef: $23
	ld e, b                                          ; $5bf0: $58
	ld d, h                                          ; $5bf1: $54
	db $d3                                           ; $5bf2: $d3
	call nc, $f9ff                                   ; $5bf3: $d4 $ff $f9
	inc hl                                           ; $5bf6: $23
	adc c                                            ; $5bf7: $89
	ld d, h                                          ; $5bf8: $54
	nop                                              ; $5bf9: $00
	add b                                            ; $5bfa: $80
	inc hl                                           ; $5bfb: $23
	ld c, l                                          ; $5bfc: $4d
	ld d, [hl]                                       ; $5bfd: $56
	db $d3                                           ; $5bfe: $d3
	call nc, $f9ff                                   ; $5bff: $d4 $ff $f9
	ld a, [hl+]                                      ; $5c02: $2a
	nop                                              ; $5c03: $00
	ld b, b                                          ; $5c04: $40
	ld b, b                                          ; $5c05: $40
	adc d                                            ; $5c06: $8a
	ld a, [hl+]                                      ; $5c07: $2a
	ccf                                              ; $5c08: $3f
	ld b, l                                          ; $5c09: $45
	db $d3                                           ; $5c0a: $d3
	call nc, Call_006_70ff                           ; $5c0b: $d4 $ff $70
	add e                                            ; $5c0e: $83
	call $2383                                       ; $5c0f: $cd $83 $23
	add h                                            ; $5c12: $84
	nop                                              ; $5c13: $00
	nop                                              ; $5c14: $00
	dec h                                            ; $5c15: $25
	ld bc, $0042                                     ; $5c16: $01 $42 $00
	ld d, b                                          ; $5c19: $50
	add h                                            ; $5c1a: $84
	ld de, $4101                                     ; $5c1b: $11 $01 $41
	nop                                              ; $5c1e: $00
	adc e                                            ; $5c1f: $8b
	add h                                            ; $5c20: $84
	ld h, a                                          ; $5c21: $67
	ld bc, $003c                                     ; $5c22: $01 $3c $00
	sbc $84                                          ; $5c25: $de $84
	ld e, c                                          ; $5c27: $59
	ld bc, $003f                                     ; $5c28: $01 $3f $00
	ld [$3c85], sp                                   ; $5c2b: $08 $85 $3c
	ld bc, $00a1                                     ; $5c2e: $01 $a1 $00
	ld e, c                                          ; $5c31: $59
	add l                                            ; $5c32: $85
	ld [hl], b                                       ; $5c33: $70
	ld bc, $0049                                     ; $5c34: $01 $49 $00
	ld a, d                                          ; $5c37: $7a
	add l                                            ; $5c38: $85
	ld h, h                                          ; $5c39: $64
	ld bc, $0053                                     ; $5c3a: $01 $53 $00
	add $85                                          ; $5c3d: $c6 $85
	ld b, l                                          ; $5c3f: $45
	ld bc, $004e                                     ; $5c40: $01 $4e $00
	db $fd                                           ; $5c43: $fd
	add l                                            ; $5c44: $85
	ld sp, $3d01                                     ; $5c45: $31 $01 $3d
	nop                                              ; $5c48: $00
	ld d, h                                          ; $5c49: $54
	add [hl]                                         ; $5c4a: $86
	ld l, h                                          ; $5c4b: $6c
	ld bc, $003c                                     ; $5c4c: $01 $3c $00
	ld a, b                                          ; $5c4f: $78
	add [hl]                                         ; $5c50: $86
	ld bc, $4b01                                     ; $5c51: $01 $01 $4b
	nop                                              ; $5c54: $00
	sub c                                            ; $5c55: $91
	add [hl]                                         ; $5c56: $86
	rst $38                                          ; $5c57: $ff
	ld sp, hl                                        ; $5c58: $f9
	inc h                                            ; $5c59: $24
	ld a, $42                                        ; $5c5a: $3e $42
	ld b, b                                          ; $5c5c: $40
	adc d                                            ; $5c5d: $8a
	inc h                                            ; $5c5e: $24
	sub e                                            ; $5c5f: $93
	ld b, d                                          ; $5c60: $42
	db $d3                                           ; $5c61: $d3
	call nc, $f9ff                                   ; $5c62: $d4 $ff $f9
	inc h                                            ; $5c65: $24
	sub [hl]                                         ; $5c66: $96
	ld b, d                                          ; $5c67: $42
	ret nz                                           ; $5c68: $c0

	adc d                                            ; $5c69: $8a
	inc h                                            ; $5c6a: $24
	add e                                            ; $5c6b: $83
	ld b, h                                          ; $5c6c: $44
	db $d3                                           ; $5c6d: $d3
	call nc, $f9ff                                   ; $5c6e: $d4 $ff $f9
	inc h                                            ; $5c71: $24
	sbc [hl]                                         ; $5c72: $9e
	ld b, h                                          ; $5c73: $44
	add b                                            ; $5c74: $80
	adc [hl]                                         ; $5c75: $8e
	inc h                                            ; $5c76: $24
	xor d                                            ; $5c77: $aa
	ld b, l                                          ; $5c78: $45
	db $d3                                           ; $5c79: $d3
	call nc, $f9ff                                   ; $5c7a: $d4 $ff $f9
	inc h                                            ; $5c7d: $24
	xor l                                            ; $5c7e: $ad
	ld b, l                                          ; $5c7f: $45
	nop                                              ; $5c80: $00
	add l                                            ; $5c81: $85
	inc h                                            ; $5c82: $24
	db $fd                                           ; $5c83: $fd
	ld b, a                                          ; $5c84: $47
	db $d3                                           ; $5c85: $d3
	call nc, $02ff                                   ; $5c86: $d4 $ff $02
	ld bc, $0113                                     ; $5c89: $01 $13 $01
	ld hl, $2d01                                     ; $5c8c: $21 $01 $2d
	ld bc, $013b                                     ; $5c8f: $01 $3b $01
	dec sp                                           ; $5c92: $3b
	ld bc, $013b                                     ; $5c93: $01 $3b $01
	dec sp                                           ; $5c96: $3b
	ld bc, $0147                       ; $5c97: $01 $47 $01
	ld d, e                                          ; $5c9a: $53
	ld bc, $0153                                     ; $5c9b: $01 $53 $01
	ld e, l                                          ; $5c9e: $5d
	ld bc, $015d                                     ; $5c9f: $01 $5d $01
	ld e, l                                          ; $5ca2: $5d
	ld bc, $0168                                     ; $5ca3: $01 $68 $01
	ld l, [hl]                                       ; $5ca6: $6e
	ld bc, $0114                                     ; $5ca7: $01 $14 $01
	dec sp                                           ; $5caa: $3b
	ld bc, $22f9                                     ; $5cab: $01 $f9 $22
	ld de, $0070                                     ; $5cae: $11 $70 $00
	add b                                            ; $5cb1: $80
	ld [hl+], a                                      ; $5cb2: $22
	ld e, $75                                        ; $5cb3: $1e $75
	ld b, b                                          ; $5cb5: $40
	adc d                                            ; $5cb6: $8a
	ld [hl+], a                                      ; $5cb7: $22
	db $e4                                           ; $5cb8: $e4
	ld [hl], h                                       ; $5cb9: $74
	db $d3                                           ; $5cba: $d3
	call nc, $b822                                   ; $5cbb: $d4 $22 $b8
	ld a, h                                          ; $5cbe: $7c
	rst $38                                          ; $5cbf: $ff
	rst $38                                          ; $5cc0: $ff
	rst $38                                          ; $5cc1: $ff
	ld sp, hl                                        ; $5cc2: $f9
	inc h                                            ; $5cc3: $24
	or l                                             ; $5cc4: $b5
	ld h, h                                          ; $5cc5: $64
	nop                                              ; $5cc6: $00
	add b                                            ; $5cc7: $80
	inc h                                            ; $5cc8: $24
	cp a                                             ; $5cc9: $bf
	ld l, d                                          ; $5cca: $6a
	ld b, b                                          ; $5ccb: $40
	adc d                                            ; $5ccc: $8a
	inc h                                            ; $5ccd: $24
	add c                                            ; $5cce: $81
	ld l, d                                          ; $5ccf: $6a
	db $d3                                           ; $5cd0: $d3
	call nc, Call_006_6524                           ; $5cd1: $d4 $24 $65
	ld [hl], d                                       ; $5cd4: $72
	rst $38                                          ; $5cd5: $ff
	rst $38                                          ; $5cd6: $ff
	rst $38                                          ; $5cd7: $ff
	ld sp, hl                                        ; $5cd8: $f9
	inc h                                            ; $5cd9: $24
	and h                                            ; $5cda: $a4
	ld [hl], d                                       ; $5cdb: $72
	nop                                              ; $5cdc: $00
	add b                                            ; $5cdd: $80
	inc h                                            ; $5cde: $24
	ld h, a                                          ; $5cdf: $67
	ld a, b                                          ; $5ce0: $78
	ld b, b                                          ; $5ce1: $40
	adc d                                            ; $5ce2: $8a
	inc h                                            ; $5ce3: $24
	add hl, hl                                       ; $5ce4: $29
	ld a, b                                          ; $5ce5: $78
	db $d3                                           ; $5ce6: $d3
	call nc, $8824                                   ; $5ce7: $d4 $24 $88
	ld a, a                                          ; $5cea: $7f
	rst $38                                          ; $5ceb: $ff
	rst $38                                          ; $5cec: $ff
	rst $38                                          ; $5ced: $ff
	ld sp, hl                                        ; $5cee: $f9
	ld a, [hl+]                                      ; $5cef: $2a
	ld e, a                                          ; $5cf0: $5f
	ld e, a                                          ; $5cf1: $5f
	nop                                              ; $5cf2: $00
	add b                                            ; $5cf3: $80
	ld a, [hl+]                                      ; $5cf4: $2a
	inc h                                            ; $5cf5: $24
	ld h, h                                          ; $5cf6: $64
	ld b, b                                          ; $5cf7: $40
	adc d                                            ; $5cf8: $8a
	ld a, [hl+]                                      ; $5cf9: $2a
	ldh a, [$63]                                     ; $5cfa: $f0 $63
	db $d3                                           ; $5cfc: $d3
	call nc, $af2a                                   ; $5cfd: $d4 $2a $af
	ld l, d                                          ; $5d00: $6a
	rst $38                                          ; $5d01: $ff
	rst $38                                          ; $5d02: $ff

jr_006_5d03:
	rst $38                                          ; $5d03: $ff
	ld sp, hl                                        ; $5d04: $f9
	jr z, jr_006_5d76                                ; $5d05: $28 $6f

	ld h, h                                          ; $5d07: $64
	nop                                              ; $5d08: $00
	add b                                            ; $5d09: $80
	jr z, jr_006_5d42                                ; $5d0a: $28 $36

	ld l, d                                          ; $5d0c: $6a
	ld b, b                                          ; $5d0d: $40
	adc d                                            ; $5d0e: $8a
	jr z, @+$06                                      ; $5d0f: $28 $04

	ld l, d                                          ; $5d11: $6a
	db $d3                                           ; $5d12: $d3
	call nc, $b228                                   ; $5d13: $d4 $28 $b2
	ld [hl], c                                       ; $5d16: $71
	rst $38                                          ; $5d17: $ff
	rst $38                                          ; $5d18: $ff
	rst $38                                          ; $5d19: $ff
	ld sp, hl                                        ; $5d1a: $f9
	add hl, hl                                       ; $5d1b: $29
	add c                                            ; $5d1c: $81
	ld [hl], c                                       ; $5d1d: $71
	nop                                              ; $5d1e: $00
	add b                                            ; $5d1f: $80
	add hl, hl                                       ; $5d20: $29
	inc sp                                           ; $5d21: $33
	ld [hl], a                                       ; $5d22: $77
	ld b, b                                          ; $5d23: $40
	adc d                                            ; $5d24: $8a
	add hl, hl                                       ; $5d25: $29
	ldh a, [c]                                       ; $5d26: $f2
	halt                                             ; $5d27: $76
	db $d3                                           ; $5d28: $d3
	call nc, $9529                                   ; $5d29: $d4 $29 $95
	ld a, [hl]                                       ; $5d2c: $7e
	rst $38                                          ; $5d2d: $ff
	rst $38                                          ; $5d2e: $ff
	rst $38                                          ; $5d2f: $ff
	ld sp, hl                                        ; $5d30: $f9
	add hl, hl                                       ; $5d31: $29
	ld e, e                                          ; $5d32: $5b
	ld d, [hl]                                       ; $5d33: $56
	nop                                              ; $5d34: $00
	add b                                            ; $5d35: $80

jr_006_5d36:
	add hl, hl                                       ; $5d36: $29
	db $d3                                           ; $5d37: $d3
	ld e, e                                          ; $5d38: $5b
	ld b, b                                          ; $5d39: $40
	adc d                                            ; $5d3a: $8a
	add hl, hl                                       ; $5d3b: $29
	sbc h                                            ; $5d3c: $9c
	ld e, e                                          ; $5d3d: $5b
	db $d3                                           ; $5d3e: $d3
	call nc, $dd29                                   ; $5d3f: $d4 $29 $dd

jr_006_5d42:
	ld h, e                                          ; $5d42: $63
	rst $38                                          ; $5d43: $ff
	rst $38                                          ; $5d44: $ff
	rst $38                                          ; $5d45: $ff
	ld sp, hl                                        ; $5d46: $f9
	add hl, hl                                       ; $5d47: $29
	adc h                                            ; $5d48: $8c
	ld c, b                                          ; $5d49: $48
	nop                                              ; $5d4a: $00
	add b                                            ; $5d4b: $80
	add hl, hl                                       ; $5d4c: $29
	ld [hl+], a                                      ; $5d4d: $22
	ld c, [hl]                                       ; $5d4e: $4e
	ld b, b                                          ; $5d4f: $40
	adc d                                            ; $5d50: $8a
	add hl, hl                                       ; $5d51: $29
	and $4d                                          ; $5d52: $e6 $4d
	db $d3                                           ; $5d54: $d3
	call nc, $1929                                   ; $5d55: $d4 $29 $19
	ld d, [hl]                                       ; $5d58: $56
	rst $38                                          ; $5d59: $ff
	rst $38                                          ; $5d5a: $ff
	rst $38                                          ; $5d5b: $ff
	ld sp, hl                                        ; $5d5c: $f9
	jr z, @-$07                                      ; $5d5d: $28 $f7

	ld [hl], c                                       ; $5d5f: $71
	nop                                              ; $5d60: $00

jr_006_5d61:
	add b                                            ; $5d61: $80
	jr z, jr_006_5d36                                ; $5d62: $28 $d2

	ld [hl], a                                       ; $5d64: $77
	ld b, b                                          ; $5d65: $40
	adc d                                            ; $5d66: $8a
	jr z, jr_006_5d03                                ; $5d67: $28 $9a

	ld [hl], a                                       ; $5d69: $77
	db $d3                                           ; $5d6a: $d3
	call nc, $c128                                   ; $5d6b: $d4 $28 $c1
	ld a, a                                          ; $5d6e: $7f
	rst $38                                          ; $5d6f: $ff
	rst $38                                          ; $5d70: $ff
	rst $38                                          ; $5d71: $ff
	ld sp, hl                                        ; $5d72: $f9
	add hl, hl                                       ; $5d73: $29
	add hl, de                                       ; $5d74: $19
	ld h, h                                          ; $5d75: $64

jr_006_5d76:
	nop                                              ; $5d76: $00
	add b                                            ; $5d77: $80
	add hl, hl                                       ; $5d78: $29
	sbc h                                            ; $5d79: $9c
	ld l, c                                          ; $5d7a: $69
	ld b, b                                          ; $5d7b: $40
	adc d                                            ; $5d7c: $8a
	add hl, hl                                       ; $5d7d: $29
	ld e, a                                          ; $5d7e: $5f
	ld l, c                                          ; $5d7f: $69
	db $d3                                           ; $5d80: $d3
	call nc, $4629                                   ; $5d81: $d4 $29 $46
	ld [hl], c                                       ; $5d84: $71
	rst $38                                          ; $5d85: $ff
	rst $38                                          ; $5d86: $ff
	rst $38                                          ; $5d87: $ff
	ld sp, hl                                        ; $5d88: $f9
	inc hl                                           ; $5d89: $23
	nop                                              ; $5d8a: $00
	ld b, b                                          ; $5d8b: $40
	nop                                              ; $5d8c: $00
	add b                                            ; $5d8d: $80
	inc hl                                           ; $5d8e: $23
	db $fc                                           ; $5d8f: $fc
	ld b, [hl]                                       ; $5d90: $46
	ld b, b                                          ; $5d91: $40
	adc d                                            ; $5d92: $8a
	inc hl                                           ; $5d93: $23
	rst SubAFromDE                                          ; $5d94: $df
	ld b, [hl]                                       ; $5d95: $46
	db $d3                                           ; $5d96: $d3
	call nc, $2123                                   ; $5d97: $d4 $23 $21
	ld c, a                                          ; $5d9a: $4f
	rst $38                                          ; $5d9b: $ff
	rst $38                                          ; $5d9c: $ff
	rst $38                                          ; $5d9d: $ff
	ld sp, hl                                        ; $5d9e: $f9
	ld a, [hl+]                                      ; $5d9f: $2a
	ld l, b                                          ; $5da0: $68
	ld b, l                                          ; $5da1: $45
	nop                                              ; $5da2: $00
	add b                                            ; $5da3: $80
	ld a, [hl+]                                      ; $5da4: $2a
	rst GetHLinHL                                          ; $5da5: $cf
	ld c, c                                          ; $5da6: $49
	ld b, b                                          ; $5da7: $40
	adc d                                            ; $5da8: $8a
	ld a, [hl+]                                      ; $5da9: $2a
	cp d                                             ; $5daa: $ba
	ld c, c                                          ; $5dab: $49
	db $d3                                           ; $5dac: $d3
	call nc, $8d2a                                   ; $5dad: $d4 $2a $8d
	ld d, b                                          ; $5db0: $50
	rst $38                                          ; $5db1: $ff
	rst $38                                          ; $5db2: $ff
	rst $38                                          ; $5db3: $ff
	cp d                                             ; $5db4: $ba
	add [hl]                                         ; $5db5: $86
	nop                                              ; $5db6: $00
	nop                                              ; $5db7: $00
	and d                                            ; $5db8: $a2
	inc bc                                           ; $5db9: $03
	rst GetHLinHL                                          ; $5dba: $cf
	add [hl]                                         ; $5dbb: $86
	call nc, $0504                                   ; $5dbc: $d4 $04 $05
	ld b, $de                                        ; $5dbf: $06 $de
	add [hl]                                         ; $5dc1: $86
	add hl, bc                                       ; $5dc2: $09
	ld b, $3a                                        ; $5dc3: $06 $3a
	rlca                                             ; $5dc5: $07
	ld [$3d86], a                                    ; $5dc6: $ea $86 $3d
	rlca                                             ; $5dc9: $07
	ld l, [hl]                                       ; $5dca: $6e
	ld [$86f8], sp                                   ; $5dcb: $08 $f8 $86
	ld [hl], d                                       ; $5dce: $72
	ld [$09b7], sp                                   ; $5dcf: $08 $b7 $09
	rlca                                             ; $5dd2: $07
	add a                                            ; $5dd3: $87
	cp d                                             ; $5dd4: $ba
	add hl, bc                                       ; $5dd5: $09
	db $eb                                           ; $5dd6: $eb
	ld a, [bc]                                       ; $5dd7: $0a
	jr jr_006_5d61                                   ; $5dd8: $18 $87

	rst AddAOntoHL                                          ; $5dda: $ef
	ld a, [bc]                                       ; $5ddb: $0a
	jr nz, @+$0e                                     ; $5ddc: $20 $0c

	dec h                                            ; $5dde: $25
	add a                                            ; $5ddf: $87
	inc hl                                           ; $5de0: $23
	inc c                                            ; $5de1: $0c
	ld d, h                                          ; $5de2: $54
	dec c                                            ; $5de3: $0d
	jr c, @-$77                                      ; $5de4: $38 $87

	ld e, b                                          ; $5de6: $58
	dec c                                            ; $5de7: $0d
	or c                                             ; $5de8: $b1
	ld c, $43                                        ; $5de9: $0e $43
	add a                                            ; $5deb: $87
	or e                                             ; $5dec: $b3
	ld c, $e4                                        ; $5ded: $0e $e4
	rrca                                             ; $5def: $0f
	ld d, l                                          ; $5df0: $55
	add a                                            ; $5df1: $87
	add sp, $0f                                      ; $5df2: $e8 $0f
	add hl, de                                       ; $5df4: $19
	ld de, $8761                                     ; $5df5: $11 $61 $87
	dec e                                            ; $5df8: $1d
	ld de, $124e                                     ; $5df9: $11 $4e $12
	ld [hl], h                                       ; $5dfc: $74
	add a                                            ; $5dfd: $87
	ld d, c                                          ; $5dfe: $51
	ld [de], a                                       ; $5dff: $12
	add d                                            ; $5e00: $82
	inc de                                           ; $5e01: $13
	nop                                              ; $5e02: $00
	nop                                              ; $5e03: $00
	ld a, $16                                        ; $5e04: $3e $16
	dec bc                                           ; $5e06: $0b
	rla                                              ; $5e07: $17
	ld sp, hl                                        ; $5e08: $f9
	ld [hl+], a                                      ; $5e09: $22
	or $7c                                           ; $5e0a: $f6 $7c
	ld b, b                                          ; $5e0c: $40
	adc d                                            ; $5e0d: $8a
	ld [hl+], a                                      ; $5e0e: $22
	ld [de], a                                       ; $5e0f: $12
	ld a, [hl]                                       ; $5e10: $7e
	db $d3                                           ; $5e11: $d3
	call nc, $f9ff                                   ; $5e12: $d4 $ff $f9
	ld [hl+], a                                      ; $5e15: $22
	add hl, de                                       ; $5e16: $19
	ld a, [hl]                                       ; $5e17: $7e
	ret nz                                           ; $5e18: $c0

	adc e                                            ; $5e19: $8b
	ld [hl+], a                                      ; $5e1a: $22
	jp c, $d37f                                      ; $5e1b: $da $7f $d3

	call nc, $f9ff                                   ; $5e1e: $d4 $ff $f9
	inc h                                            ; $5e21: $24
	nop                                              ; $5e22: $00
	ld b, b                                          ; $5e23: $40
	nop                                              ; $5e24: $00
	add b                                            ; $5e25: $80
	db $fc                                           ; $5e26: $fc
	jr nz, @+$45                                     ; $5e27: $20 $43

	ld c, e                                          ; $5e29: $4b
	ld d, e                                          ; $5e2a: $53
	ret c                                            ; $5e2b: $d8

	rst $38                                          ; $5e2c: $ff
	ld l, b                                          ; $5e2d: $68
	ld d, l                                          ; $5e2e: $55
	ld [hl], h                                       ; $5e2f: $74
	ld d, l                                          ; $5e30: $55
	ld c, $66                                        ; $5e31: $0e $66
	jp $d755                                         ; $5e33: $c3 $55 $d7


	ld d, l                                          ; $5e36: $55
	db $eb                                           ; $5e37: $eb
	ld d, l                                          ; $5e38: $55
	xor h                                            ; $5e39: $ac
	ld e, h                                          ; $5e3a: $5c
	ld a, $66                                        ; $5e3b: $3e $66
	cp d                                             ; $5e3d: $ba
	ld d, h                                          ; $5e3e: $54
	ld b, $40                                        ; $5e3f: $06 $40
	call c, $e857                                    ; $5e41: $dc $57 $e8
	ld d, a                                          ; $5e44: $57
	ld e, $66                                        ; $5e45: $1e $66
	scf                                              ; $5e47: $37
	ld e, b                                          ; $5e48: $58
	ld c, e                                          ; $5e49: $4b
	ld e, b                                          ; $5e4a: $58
	ld e, a                                          ; $5e4b: $5f
	ld e, b                                          ; $5e4c: $58
	inc b                                            ; $5e4d: $04
	ld e, l                                          ; $5e4e: $5d
	ld c, [hl]                                       ; $5e4f: $4e
	ld h, [hl]                                       ; $5e50: $66
	pop hl                                           ; $5e51: $e1
	ld d, h                                          ; $5e52: $54
	add hl, bc                                       ; $5e53: $09
	ld b, b                                          ; $5e54: $40
	and c                                            ; $5e55: $a1
	ld e, c                                          ; $5e56: $59
	xor l                                            ; $5e57: $ad
	ld e, c                                          ; $5e58: $59
	ld a, [hl+]                                      ; $5e59: $2a
	ld h, [hl]                                       ; $5e5a: $66
	db $fc                                           ; $5e5b: $fc
	ld e, c                                          ; $5e5c: $59
	db $10                                           ; $5e5d: $10
	ld e, d                                          ; $5e5e: $5a
	nop                                              ; $5e5f: $00
	nop                                              ; $5e60: $00
	jr nc, jr_006_5ec0                               ; $5e61: $30 $5d

	ld d, [hl]                                       ; $5e63: $56
	ld h, [hl]                                       ; $5e64: $66
	xor $54                                          ; $5e65: $ee $54
	ld a, [bc]                                       ; $5e67: $0a
	ld b, b                                          ; $5e68: $40
	inc h                                            ; $5e69: $24
	ld e, d                                          ; $5e6a: $5a
	jr nc, jr_006_5ec7                               ; $5e6b: $30 $5a

	ld l, $66                                        ; $5e6d: $2e $66
	ld a, a                                          ; $5e6f: $7f
	ld e, d                                          ; $5e70: $5a
	sub e                                            ; $5e71: $93
	ld e, d                                          ; $5e72: $5a
	and a                                            ; $5e73: $a7
	ld e, d                                          ; $5e74: $5a
	ld b, [hl]                                       ; $5e75: $46
	ld e, l                                          ; $5e76: $5d
	ld e, d                                          ; $5e77: $5a
	ld h, [hl]                                       ; $5e78: $66
	ei                                               ; $5e79: $fb
	ld d, h                                          ; $5e7a: $54
	dec bc                                           ; $5e7b: $0b
	ld b, b                                          ; $5e7c: $40
	nop                                              ; $5e7d: $00
	nop                                              ; $5e7e: $00
	nop                                              ; $5e7f: $00
	nop                                              ; $5e80: $00
	nop                                              ; $5e81: $00
	nop                                              ; $5e82: $00
	nop                                              ; $5e83: $00
	nop                                              ; $5e84: $00
	nop                                              ; $5e85: $00
	nop                                              ; $5e86: $00
	nop                                              ; $5e87: $00
	nop                                              ; $5e88: $00
	nop                                              ; $5e89: $00
	nop                                              ; $5e8a: $00
	nop                                              ; $5e8b: $00
	nop                                              ; $5e8c: $00
	nop                                              ; $5e8d: $00
	nop                                              ; $5e8e: $00
	nop                                              ; $5e8f: $00
	nop                                              ; $5e90: $00
	nop                                              ; $5e91: $00
	nop                                              ; $5e92: $00
	nop                                              ; $5e93: $00
	nop                                              ; $5e94: $00
	nop                                              ; $5e95: $00
	nop                                              ; $5e96: $00
	nop                                              ; $5e97: $00
	nop                                              ; $5e98: $00
	nop                                              ; $5e99: $00
	nop                                              ; $5e9a: $00
	nop                                              ; $5e9b: $00
	nop                                              ; $5e9c: $00
	nop                                              ; $5e9d: $00
	nop                                              ; $5e9e: $00
	nop                                              ; $5e9f: $00
	nop                                              ; $5ea0: $00
	nop                                              ; $5ea1: $00
	nop                                              ; $5ea2: $00
	nop                                              ; $5ea3: $00
	nop                                              ; $5ea4: $00
	nop                                              ; $5ea5: $00
	nop                                              ; $5ea6: $00
	nop                                              ; $5ea7: $00
	nop                                              ; $5ea8: $00
	nop                                              ; $5ea9: $00
	nop                                              ; $5eaa: $00
	nop                                              ; $5eab: $00
	nop                                              ; $5eac: $00
	nop                                              ; $5ead: $00
	nop                                              ; $5eae: $00
	nop                                              ; $5eaf: $00
	nop                                              ; $5eb0: $00
	nop                                              ; $5eb1: $00
	nop                                              ; $5eb2: $00
	nop                                              ; $5eb3: $00
	nop                                              ; $5eb4: $00
	nop                                              ; $5eb5: $00
	nop                                              ; $5eb6: $00
	nop                                              ; $5eb7: $00
	nop                                              ; $5eb8: $00
	dec l                                            ; $5eb9: $2d
	ld d, a                                          ; $5eba: $57
	add hl, sp                                       ; $5ebb: $39
	ld d, a                                          ; $5ebc: $57
	ld a, [de]                                       ; $5ebd: $1a
	ld h, [hl]                                       ; $5ebe: $66
	adc b                                            ; $5ebf: $88

jr_006_5ec0:
	ld d, a                                          ; $5ec0: $57
	and h                                            ; $5ec1: $a4
	ld d, a                                          ; $5ec2: $57
	ret nz                                           ; $5ec3: $c0

	ld d, a                                          ; $5ec4: $57
	xor $5c                                          ; $5ec5: $ee $5c

jr_006_5ec7:
	ld c, d                                          ; $5ec7: $4a
	ld h, [hl]                                       ; $5ec8: $66
	ld [$0c55], sp                                   ; $5ec9: $08 $55 $0c
	ld b, b                                          ; $5ecc: $40
	ld a, [bc]                                       ; $5ecd: $0a
	ld e, c                                          ; $5ece: $59
	ld d, $59                                        ; $5ecf: $16 $59
	ld h, $66                                        ; $5ed1: $26 $66
	ld h, l                                          ; $5ed3: $65
	ld e, c                                          ; $5ed4: $59
	ld a, c                                          ; $5ed5: $79
	ld e, c                                          ; $5ed6: $59
	adc l                                            ; $5ed7: $8d
	ld e, c                                          ; $5ed8: $59
	ld a, [de]                                       ; $5ed9: $1a
	ld e, l                                          ; $5eda: $5d
	ld d, d                                          ; $5edb: $52
	ld h, [hl]                                       ; $5edc: $66
	dec d                                            ; $5edd: $15
	ld d, l                                          ; $5ede: $55
	dec c                                            ; $5edf: $0d
	ld b, b                                          ; $5ee0: $40
	nop                                              ; $5ee1: $00
	nop                                              ; $5ee2: $00
	nop                                              ; $5ee3: $00
	nop                                              ; $5ee4: $00
	nop                                              ; $5ee5: $00
	nop                                              ; $5ee6: $00
	nop                                              ; $5ee7: $00
	nop                                              ; $5ee8: $00
	nop                                              ; $5ee9: $00
	nop                                              ; $5eea: $00
	nop                                              ; $5eeb: $00
	nop                                              ; $5eec: $00
	nop                                              ; $5eed: $00
	nop                                              ; $5eee: $00
	nop                                              ; $5eef: $00
	nop                                              ; $5ef0: $00
	nop                                              ; $5ef1: $00
	nop                                              ; $5ef2: $00
	nop                                              ; $5ef3: $00
	nop                                              ; $5ef4: $00
	cp e                                             ; $5ef5: $bb
	ld e, d                                          ; $5ef6: $5a
	rst JumpTable                                          ; $5ef7: $c7
	ld e, d                                          ; $5ef8: $5a
	ld [hl-], a                                      ; $5ef9: $32
	ld h, [hl]                                       ; $5efa: $66
	ld d, $5b                                        ; $5efb: $16 $5b
	ld a, [hl+]                                      ; $5efd: $2a
	ld e, e                                          ; $5efe: $5b
	ld a, $5b                                        ; $5eff: $3e $5b
	ld e, h                                          ; $5f01: $5c
	ld e, l                                          ; $5f02: $5d
	ld e, [hl]                                       ; $5f03: $5e
	ld h, [hl]                                       ; $5f04: $66
	ld [hl+], a                                      ; $5f05: $22
	ld d, l                                          ; $5f06: $55
	ld c, $40                                        ; $5f07: $0e $40
	nop                                              ; $5f09: $00
	nop                                              ; $5f0a: $00
	nop                                              ; $5f0b: $00
	nop                                              ; $5f0c: $00
	nop                                              ; $5f0d: $00
	nop                                              ; $5f0e: $00
	nop                                              ; $5f0f: $00
	nop                                              ; $5f10: $00
	nop                                              ; $5f11: $00
	nop                                              ; $5f12: $00
	nop                                              ; $5f13: $00
	nop                                              ; $5f14: $00
	nop                                              ; $5f15: $00
	nop                                              ; $5f16: $00
	nop                                              ; $5f17: $00
	nop                                              ; $5f18: $00
	nop                                              ; $5f19: $00
	nop                                              ; $5f1a: $00
	nop                                              ; $5f1b: $00
	nop                                              ; $5f1c: $00
	nop                                              ; $5f1d: $00
	nop                                              ; $5f1e: $00
	nop                                              ; $5f1f: $00
	nop                                              ; $5f20: $00
	nop                                              ; $5f21: $00
	nop                                              ; $5f22: $00
	nop                                              ; $5f23: $00
	nop                                              ; $5f24: $00
	nop                                              ; $5f25: $00
	nop                                              ; $5f26: $00
	nop                                              ; $5f27: $00
	nop                                              ; $5f28: $00
	nop                                              ; $5f29: $00
	nop                                              ; $5f2a: $00
	nop                                              ; $5f2b: $00
	nop                                              ; $5f2c: $00
	nop                                              ; $5f2d: $00
	nop                                              ; $5f2e: $00
	nop                                              ; $5f2f: $00
	nop                                              ; $5f30: $00
	ld d, d                                          ; $5f31: $52
	ld e, e                                          ; $5f32: $5b
	ld e, [hl]                                       ; $5f33: $5e
	ld e, e                                          ; $5f34: $5b
	ld [hl], $66                                     ; $5f35: $36 $66
	xor l                                            ; $5f37: $ad
	ld e, e                                          ; $5f38: $5b
	pop bc                                           ; $5f39: $c1
	ld e, e                                          ; $5f3a: $5b
	push de                                          ; $5f3b: $d5
	ld e, e                                          ; $5f3c: $5b
	ld [hl], d                                       ; $5f3d: $72
	ld e, l                                          ; $5f3e: $5d
	ld h, d                                          ; $5f3f: $62
	ld h, [hl]                                       ; $5f40: $66
	cpl                                              ; $5f41: $2f
	ld d, l                                          ; $5f42: $55
	rrca                                             ; $5f43: $0f
	ld b, b                                          ; $5f44: $40
	rst $38                                          ; $5f45: $ff
	ld d, l                                          ; $5f46: $55
	dec bc                                           ; $5f47: $0b
	ld d, [hl]                                       ; $5f48: $56
	ld [de], a                                       ; $5f49: $12
	ld h, [hl]                                       ; $5f4a: $66
	ld e, d                                          ; $5f4b: $5a
	ld d, [hl]                                       ; $5f4c: $56
	ld l, [hl]                                       ; $5f4d: $6e
	ld d, [hl]                                       ; $5f4e: $56
	add d                                            ; $5f4f: $82
	ld d, [hl]                                       ; $5f50: $56
	jp nz, $425c                                     ; $5f51: $c2 $5c $42

	ld h, [hl]                                       ; $5f54: $66
	rst JumpTable                                          ; $5f55: $c7
	ld d, h                                          ; $5f56: $54
	rlca                                             ; $5f57: $07
	ld b, b                                          ; $5f58: $40
	sub [hl]                                         ; $5f59: $96
	ld d, [hl]                                       ; $5f5a: $56
	and d                                            ; $5f5b: $a2
	ld d, [hl]                                       ; $5f5c: $56
	ld d, $66                                        ; $5f5d: $16 $66
	pop af                                           ; $5f5f: $f1
	ld d, [hl]                                       ; $5f60: $56
	dec b                                            ; $5f61: $05
	ld d, a                                          ; $5f62: $57
	add hl, de                                       ; $5f63: $19
	ld d, a                                          ; $5f64: $57
	ret c                                            ; $5f65: $d8

	ld e, h                                          ; $5f66: $5c
	ld b, [hl]                                       ; $5f67: $46
	ld h, [hl]                                       ; $5f68: $66
	call nc, $0854                                   ; $5f69: $d4 $54 $08
	ld b, b                                          ; $5f6c: $40
	ld [hl], e                                       ; $5f6d: $73
	ld e, b                                          ; $5f6e: $58
	ld a, a                                          ; $5f6f: $7f
	ld e, b                                          ; $5f70: $58
	ld [hl+], a                                      ; $5f71: $22
	ld h, [hl]                                       ; $5f72: $66
	adc $58                                          ; $5f73: $ce $58
	ldh [c], a                                       ; $5f75: $e2
	ld e, b                                          ; $5f76: $58
	or $58                                           ; $5f77: $f6 $58
	inc b                                            ; $5f79: $04
	ld e, l                                          ; $5f7a: $5d
	ld c, [hl]                                       ; $5f7b: $4e
	ld h, [hl]                                       ; $5f7c: $66
	pop hl                                           ; $5f7d: $e1
	ld d, h                                          ; $5f7e: $54
	add hl, bc                                       ; $5f7f: $09
	ld b, b                                          ; $5f80: $40
	nop                                              ; $5f81: $00
	nop                                              ; $5f82: $00
	nop                                              ; $5f83: $00
	nop                                              ; $5f84: $00
	nop                                              ; $5f85: $00
	nop                                              ; $5f86: $00
	nop                                              ; $5f87: $00
	nop                                              ; $5f88: $00
	nop                                              ; $5f89: $00
	nop                                              ; $5f8a: $00
	nop                                              ; $5f8b: $00
	nop                                              ; $5f8c: $00
	nop                                              ; $5f8d: $00
	nop                                              ; $5f8e: $00
	nop                                              ; $5f8f: $00
	nop                                              ; $5f90: $00
	nop                                              ; $5f91: $00
	nop                                              ; $5f92: $00
	nop                                              ; $5f93: $00
	nop                                              ; $5f94: $00

Jump_006_5f95:
	ld a, [$c148]                                    ; $5f95: $fa $48 $c1
	inc a                                            ; $5f98: $3c

Call_006_5f99:
Jump_006_5f99:
	ld [$c148], a                                    ; $5f99: $ea $48 $c1
	xor a                                            ; $5f9c: $af
	ld [$d841], a                                    ; $5f9d: $ea $41 $d8
	ret                                              ; $5fa0: $c9


	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $5fa1: $cd $ef $2d
	jp Jump_006_5f95                                 ; $5fa4: $c3 $95 $5f


Jump_006_5fa7:
	ld a, [$d841]                                    ; $5fa7: $fa $41 $d8
	inc a                                            ; $5faa: $3c
	ld [$d841], a                                    ; $5fab: $ea $41 $d8
	ret                                              ; $5fae: $c9


	ld a, [$d841]                                    ; $5faf: $fa $41 $d8
	dec a                                            ; $5fb2: $3d
	ld [$d841], a                                    ; $5fb3: $ea $41 $d8
	ret                                              ; $5fb6: $c9


Call_006_5fb7:
	ld hl, $8a00                                     ; $5fb7: $21 $00 $8a
	ld bc, $0008                                     ; $5fba: $01 $08 $00
	ld de, $0000                                     ; $5fbd: $11 $00 $00
	call Call_006_69db                               ; $5fc0: $cd $db $69
	ld hl, $8a10                                     ; $5fc3: $21 $10 $8a
	ld bc, $0008                                     ; $5fc6: $01 $08 $00
	ld de, $ff00                                     ; $5fc9: $11 $00 $ff
	call Call_006_69db                               ; $5fcc: $cd $db $69
	ld hl, $8a20                                     ; $5fcf: $21 $20 $8a
	ld bc, $0008                                     ; $5fd2: $01 $08 $00
	ld de, $00ff                                     ; $5fd5: $11 $ff $00
	call Call_006_69db                               ; $5fd8: $cd $db $69
	ld hl, $8a30                                     ; $5fdb: $21 $30 $8a
	ld bc, $0008                                     ; $5fde: $01 $08 $00
	ld de, rIE                                     ; $5fe1: $11 $ff $ff
	jp Jump_006_69db                                 ; $5fe4: $c3 $db $69


Call_006_5fe7:
	ld bc, $46ce                                     ; $5fe7: $01 $ce $46
	xor a                                            ; $5fea: $af
	call $191b                                       ; $5feb: $cd $1b $19
	jp Jump_006_470f                                 ; $5fee: $c3 $0f $47


	call $1983                                       ; $5ff1: $cd $83 $19
	and a                                            ; $5ff4: $a7
	ret nz                                           ; $5ff5: $c0

	jp Jump_006_5f95                                 ; $5ff6: $c3 $95 $5f


	call $1983                                       ; $5ff9: $cd $83 $19
	and a                                            ; $5ffc: $a7
	ret nz                                           ; $5ffd: $c0

	jp Jump_006_5fa7                                 ; $5ffe: $c3 $a7 $5f


Jump_006_6001:
	ld l, $0a                                        ; $6001: $2e $0a
	inc [hl]                                         ; $6003: $34
	ret                                              ; $6004: $c9


Jump_006_6005:
	ld l, $0a                                        ; $6005: $2e $0a
	dec [hl]                                         ; $6007: $35
	ret                                              ; $6008: $c9


Call_006_6009:
	push bc                                          ; $6009: $c5
	sla a                                            ; $600a: $cb $27
	push af                                          ; $600c: $f5
	ld a, [$d842]                                    ; $600d: $fa $42 $d8
	ld b, a                                          ; $6010: $47
	ld c, $14                                        ; $6011: $0e $14
	call BCequBtimesC                                       ; $6013: $cd $5f $12
	ld hl, $5e2d                                     ; $6016: $21 $2d $5e
	add hl, bc                                       ; $6019: $09
	pop af                                           ; $601a: $f1
	rst AddAOntoHL                                          ; $601b: $ef
	ld a, [hl+]                                      ; $601c: $2a
	ld h, [hl]                                       ; $601d: $66
	ld l, a                                          ; $601e: $6f
	pop bc                                           ; $601f: $c1
	ret                                              ; $6020: $c9


Call_006_6021:
	ld l, $0c                                        ; $6021: $2e $0c
	ld [hl], $01                                     ; $6023: $36 $01
	ld l, $0d                                        ; $6025: $2e $0d
	inc [hl]                                         ; $6027: $34
	ld l, $0f                                        ; $6028: $2e $0f
	ld [hl], $00                                     ; $602a: $36 $00
	ret                                              ; $602c: $c9


Call_006_602d:
	ld l, $30                                        ; $602d: $2e $30
	ld [hl], c                                       ; $602f: $71
	inc l                                            ; $6030: $2c
	ld [hl], b                                       ; $6031: $70
	ret                                              ; $6032: $c9


Call_006_6033:
	ld l, $30                                        ; $6033: $2e $30
	ld a, c                                          ; $6035: $79
	sub [hl]                                         ; $6036: $96
	inc l                                            ; $6037: $2c
	ld a, b                                          ; $6038: $78
	sbc [hl]                                         ; $6039: $9e
	ret                                              ; $603a: $c9


Call_006_603b:
	ld l, $30                                        ; $603b: $2e $30
	ld c, [hl]                                       ; $603d: $4e
	inc l                                            ; $603e: $2c
	ld b, [hl]                                       ; $603f: $46
	inc bc                                           ; $6040: $03
	ld [hl], b                                       ; $6041: $70
	dec l                                            ; $6042: $2d
	ld [hl], c                                       ; $6043: $71
	ret                                              ; $6044: $c9


Call_006_6045:
	ld l, $30                                        ; $6045: $2e $30
	ld c, [hl]                                       ; $6047: $4e
	inc l                                            ; $6048: $2c
	ld b, [hl]                                       ; $6049: $46
	dec bc                                           ; $604a: $0b
	ld [hl], b                                       ; $604b: $70
	dec l                                            ; $604c: $2d
	ld [hl], c                                       ; $604d: $71
	ld a, b                                          ; $604e: $78
	or c                                             ; $604f: $b1
	ret                                              ; $6050: $c9


Call_006_6051:
	ld hl, $d844                                     ; $6051: $21 $44 $d8
	ld [hl], c                                       ; $6054: $71
	inc hl                                           ; $6055: $23
	ld [hl], b                                       ; $6056: $70
	ret                                              ; $6057: $c9


Call_006_6058:
	ld hl, $d844                                     ; $6058: $21 $44 $d8
	ld c, [hl]                                       ; $605b: $4e
	inc l                                            ; $605c: $2c
	ld b, [hl]                                       ; $605d: $46
	dec bc                                           ; $605e: $0b
	ld [hl], b                                       ; $605f: $70
	dec l                                            ; $6060: $2d
	ld [hl], c                                       ; $6061: $71
	ld a, b                                          ; $6062: $78
	or c                                             ; $6063: $b1
	ret                                              ; $6064: $c9


Call_006_6065:
	ld a, [$d842]                                    ; $6065: $fa $42 $d8
	ld h, a                                          ; $6068: $67
	cp $10                                           ; $6069: $fe $10
	jr c, jr_006_6073                                ; $606b: $38 $06

	ld h, $01                                        ; $606d: $26 $01
	jr z, jr_006_6073                                ; $606f: $28 $02

	ld h, $06                                        ; $6071: $26 $06

jr_006_6073:
	ld a, h                                          ; $6073: $7c
	ld hl, $a114                                     ; $6074: $21 $14 $a1
	rst AddAOntoHL                                          ; $6077: $ef
	ld a, [hl]                                       ; $6078: $7e
	ret                                              ; $6079: $c9


	ld a, [$c148]                                    ; $607a: $fa $48 $c1
	rst JumpTable                                          ; $607d: $c7
	adc b                                            ; $607e: $88
	ld h, b                                          ; $607f: $60
	xor e                                            ; $6080: $ab
	ld h, b                                          ; $6081: $60
	or a                                             ; $6082: $b7
	ld h, b                                          ; $6083: $60
	pop af                                           ; $6084: $f1
	ld e, a                                          ; $6085: $5f
	cp l                                             ; $6086: $bd
	ld h, b                                          ; $6087: $60
	ld a, $01                                        ; $6088: $3e $01
	ld [$d840], a                                    ; $608a: $ea $40 $d8
	call $1973                                       ; $608d: $cd $73 $19
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $6090: $cd $ef $2d
	ld hl, $6b59                                     ; $6093: $21 $59 $6b
	rst FarCall                                          ; $6096: $f7
	ld c, c                                          ; $6097: $49
	ld l, c                                          ; $6098: $69
	dec b                                            ; $6099: $05
	call $1973                                       ; $609a: $cd $73 $19
	call $0911                                       ; $609d: $cd $11 $09
	call Call_006_5fb7                               ; $60a0: $cd $b7 $5f
	ld a, $59                                        ; $60a3: $3e $59
	call Jump_000_1af7                                       ; $60a5: $cd $f7 $1a
	jp Jump_006_5f95                                 ; $60a8: $c3 $95 $5f


	call Call_006_60ca                               ; $60ab: $cd $ca $60
	call Call_006_61b6                               ; $60ae: $cd $b6 $61
	call Call_006_61ed                               ; $60b1: $cd $ed $61
	jp Jump_006_6293                                 ; $60b4: $c3 $93 $62


	call Call_006_4727                               ; $60b7: $cd $27 $47
	jp Jump_006_5f95                                 ; $60ba: $c3 $95 $5f


	xor a                                            ; $60bd: $af
	ld [$d840], a                                    ; $60be: $ea $40 $d8
	ld [$c148], a                                    ; $60c1: $ea $48 $c1
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $60c4: $cd $ef $2d
	jp $0963                                         ; $60c7: $c3 $63 $09


Call_006_60ca:
	ld a, [$d841]                                    ; $60ca: $fa $41 $d8
	rst JumpTable                                          ; $60cd: $c7
	call nc, $ae60                                   ; $60ce: $d4 $60 $ae
	ld h, c                                          ; $60d1: $61
	sub l                                            ; $60d2: $95
	ld e, a                                          ; $60d3: $5f
	ld hl, $549c                                     ; $60d4: $21 $9c $54
	call $0aab                                       ; $60d7: $cd $ab $0a
	ld hl, $9800                                     ; $60da: $21 $00 $98
	ld bc, $0d20                                     ; $60dd: $01 $20 $0d
	ld de, $00a0                                     ; $60e0: $11 $a0 $00
	rst FarCall                                          ; $60e3: $f7
	xor a                                            ; $60e4: $af
	ld b, l                                          ; $60e5: $45
	ld [$a021], sp                                   ; $60e6: $08 $21 $a0
	sbc c                                            ; $60e9: $99
	ld bc, $0520                                     ; $60ea: $01 $20 $05
	ld de, $00a3                                     ; $60ed: $11 $a3 $00
	rst FarCall                                          ; $60f0: $f7
	xor a                                            ; $60f1: $af
	ld b, l                                          ; $60f2: $45
	ld [$0a21], sp                                   ; $60f3: $08 $21 $0a
	sbc b                                            ; $60f6: $98
	ld bc, $0612                                     ; $60f7: $01 $12 $06
	ld de, $00a3                                     ; $60fa: $11 $a3 $00
	rst FarCall                                          ; $60fd: $f7
	xor a                                            ; $60fe: $af
	ld b, l                                          ; $60ff: $45
	ld [$d621], sp                                   ; $6100: $08 $21 $d6
	sbc b                                            ; $6103: $98
	ld bc, $0803                                     ; $6104: $01 $03 $08
	ld de, $00a3                                     ; $6107: $11 $a3 $00
	rst FarCall                                          ; $610a: $f7
	xor a                                            ; $610b: $af
	ld b, l                                          ; $610c: $45
	ld [$9921], sp                                   ; $610d: $08 $21 $99
	sbc c                                            ; $6110: $99
	ld bc, $0202                                     ; $6111: $01 $02 $02
	ld de, $00a3                                     ; $6114: $11 $a3 $00
	rst FarCall                                          ; $6117: $f7
	xor a                                            ; $6118: $af
	ld b, l                                          ; $6119: $45
	ld [$0021], sp                                   ; $611a: $08 $21 $00
	sbc b                                            ; $611d: $98
	ld bc, $1220                                     ; $611e: $01 $20 $12
	ld de, $0100                                     ; $6121: $11 $00 $01
	rst FarCall                                          ; $6124: $f7
	xor a                                            ; $6125: $af
	ld b, l                                          ; $6126: $45
	ld [$d5e5], sp                                   ; $6127: $08 $e5 $d5
	ld hl, $59f3                                     ; $612a: $21 $f3 $59
	ld de, $d5e3                                     ; $612d: $11 $e3 $d5
	rst FarCall                                          ; $6130: $f7
	add b                                            ; $6131: $80
	call z, $f724                                    ; $6132: $cc $24 $f7
	ld b, c                                          ; $6135: $41
	call z, $d124                                    ; $6136: $cc $24 $d1
	pop hl                                           ; $6139: $e1
	ld hl, $d5e3                                     ; $613a: $21 $e3 $d5
	call Call_006_4741                               ; $613d: $cd $41 $47
	ld hl, $9808                                     ; $6140: $21 $08 $98
	ld bc, $0d14                                     ; $6143: $01 $14 $0d
	ld e, $00                                        ; $6146: $1e $00
	call $4824                                       ; $6148: $cd $24 $48
	push hl                                          ; $614b: $e5
	push de                                          ; $614c: $d5
	ld hl, $5d65                                     ; $614d: $21 $65 $5d
	ld de, $d5e3                                     ; $6150: $11 $e3 $d5
	rst FarCall                                          ; $6153: $f7
	db $dd                                           ; $6154: $dd
	call z, $d124                                    ; $6155: $cc $24 $d1
	pop hl                                           ; $6158: $e1
	ld hl, $d5e3                                     ; $6159: $21 $e3 $d5
	call Call_006_4741                               ; $615c: $cd $41 $47
	ld hl, $99a0                                     ; $615f: $21 $a0 $99
	ld bc, $0108                                     ; $6162: $01 $08 $01
	ld e, $6c                                        ; $6165: $1e $6c
	call $4824                                       ; $6167: $cd $24 $48
	ld hl, $d5e3                                     ; $616a: $21 $e3 $d5
	call Call_006_4741                               ; $616d: $cd $41 $47
	ld hl, $99a8                                     ; $6170: $21 $a8 $99
	ld bc, $0108                                     ; $6173: $01 $08 $01
	ld e, $6c                                        ; $6176: $1e $6c
	call $4824                                       ; $6178: $cd $24 $48
	push hl                                          ; $617b: $e5
	push de                                          ; $617c: $d5
	ld hl, $5d85                                     ; $617d: $21 $85 $5d
	ld de, $d5e3                                     ; $6180: $11 $e3 $d5
	rst FarCall                                          ; $6183: $f7
	jp c, $24cc                                      ; $6184: $da $cc $24

	pop de                                           ; $6187: $d1
	pop hl                                           ; $6188: $e1
	ld hl, $d5e3                                     ; $6189: $21 $e3 $d5
	call Call_006_4741                               ; $618c: $cd $41 $47
	ld hl, $99b0                                     ; $618f: $21 $b0 $99
	ld bc, $010c                                     ; $6192: $01 $0c $01
	ld e, $74                                        ; $6195: $1e $74
	call $4824                                       ; $6197: $cd $24 $48
	ld bc, $6608                                     ; $619a: $01 $08 $66
	call Call_006_470c                               ; $619d: $cd $0c $47
	call Call_006_471d                               ; $61a0: $cd $1d $47
	xor a                                            ; $61a3: $af
	call $068e                                       ; $61a4: $cd $8e $06
	ld a, $87                                        ; $61a7: $3e $87
	ldh [hDisp0_LCDC], a                                     ; $61a9: $e0 $82
	jp Jump_006_5fa7                                 ; $61ab: $c3 $a7 $5f


	ld a, [$c233]                                    ; $61ae: $fa $33 $c2
	or a                                             ; $61b1: $b7
	ret z                                            ; $61b2: $c8

	jp Jump_006_5fa7                                 ; $61b3: $c3 $a7 $5f


Call_006_61b6:
	ld a, [$c20a]                                    ; $61b6: $fa $0a $c2
	rst JumpTable                                          ; $61b9: $c7
	ret nz                                           ; $61ba: $c0

	ld h, c                                          ; $61bb: $61
	call z, $0461                                    ; $61bc: $cc $61 $04
	ld h, b                                          ; $61bf: $60
	ld bc, $005c                                     ; $61c0: $01 $5c $00
	ld hl, $c213                                     ; $61c3: $21 $13 $c2
	ld [hl], c                                       ; $61c6: $71
	inc hl                                           ; $61c7: $23
	ld [hl], b                                       ; $61c8: $70
	jp Jump_006_6001                                 ; $61c9: $c3 $01 $60


	ld h, $c2                                        ; $61cc: $26 $c2
	ld l, $13                                        ; $61ce: $2e $13
	ld e, [hl]                                       ; $61d0: $5e
	inc hl                                           ; $61d1: $23
	ld d, [hl]                                       ; $61d2: $56
	rst FarCall                                          ; $61d3: $f7
	reti                                             ; $61d4: $d9


	dec sp                                           ; $61d5: $3b
	nop                                              ; $61d6: $00
	ld a, d                                          ; $61d7: $7a
	cp $40                                           ; $61d8: $fe $40
	jr c, jr_006_61de                                ; $61da: $38 $02

	ld a, $40                                        ; $61dc: $3e $40

jr_006_61de:
	ldh [hDisp0_SCX], a                                     ; $61de: $e0 $84
	ret c                                            ; $61e0: $d8

	ld a, $ff                                        ; $61e1: $3e $ff
	ld [$c433], a                                    ; $61e3: $ea $33 $c4
	xor a                                            ; $61e6: $af
	ld [$c401], a                                    ; $61e7: $ea $01 $c4
	jp Jump_006_6001                                 ; $61ea: $c3 $01 $60


Call_006_61ed:
	ld a, [$c30a]                                    ; $61ed: $fa $0a $c3
	rst JumpTable                                          ; $61f0: $c7
	db $fd                                           ; $61f1: $fd
	ld h, c                                          ; $61f2: $61
	ld b, c                                          ; $61f3: $41
	ld h, d                                          ; $61f4: $62
	ld e, c                                          ; $61f5: $59
	ld h, d                                          ; $61f6: $62
	ld l, h                                          ; $61f7: $6c
	ld h, d                                          ; $61f8: $62
	ld a, a                                          ; $61f9: $7f
	ld h, d                                          ; $61fa: $62
	inc b                                            ; $61fb: $04
	ld h, b                                          ; $61fc: $60
	ld hl, $54ad                                     ; $61fd: $21 $ad $54
	call $0aab                                       ; $6200: $cd $ab $0a
	ld h, $c3                                        ; $6203: $26 $c3
	ld l, $02                                        ; $6205: $2e $02
	ld [hl], $00                                     ; $6207: $36 $00
	ld l, $05                                        ; $6209: $2e $05
	ld [hl], $80                                     ; $620b: $36 $80
	ld l, $07                                        ; $620d: $2e $07
	ld [hl], $00                                     ; $620f: $36 $00
	ld l, $00                                        ; $6211: $2e $00
	ld [hl], $01                                     ; $6213: $36 $01
	ld l, $01                                        ; $6215: $2e $01
	ld [hl], $00                                     ; $6217: $36 $00
	ld l, $0d                                        ; $6219: $2e $0d
	ld [hl], $02                                     ; $621b: $36 $02
	inc l                                            ; $621d: $2c
	ld [hl], $40                                     ; $621e: $36 $40
	ld l, $0c                                        ; $6220: $2e $0c
	ld [hl], $01                                     ; $6222: $36 $01
	ld l, $08                                        ; $6224: $2e $08
	ld [hl], $53                                     ; $6226: $36 $53
	inc l                                            ; $6228: $2c
	ld [hl], $d8                                     ; $6229: $36 $d8
	ld l, $13                                        ; $622b: $2e $13
	ld [hl], $90                                     ; $622d: $36 $90
	inc l                                            ; $622f: $2c
	ld [hl], $00                                     ; $6230: $36 $00
	jp Jump_006_6001                                 ; $6232: $c3 $01 $60


Call_006_6235:
	ldh a, [hDisp0_SCX]                                     ; $6235: $f0 $84
	cpl                                              ; $6237: $2f
	inc a                                            ; $6238: $3c
	add $78                                          ; $6239: $c6 $78
	ld l, $07                                        ; $623b: $2e $07
	cp [hl]                                          ; $623d: $be
	ret nc                                           ; $623e: $d0

	ld [hl], a                                       ; $623f: $77
	ret                                              ; $6240: $c9


	ld h, $c3                                        ; $6241: $26 $c3
	call $16d0                                       ; $6243: $cd $d0 $16
	ld l, $13                                        ; $6246: $2e $13
	ld e, [hl]                                       ; $6248: $5e
	inc l                                            ; $6249: $2c
	ld d, [hl]                                       ; $624a: $56
	rst FarCall                                          ; $624b: $f7
	reti                                             ; $624c: $d9


	dec sp                                           ; $624d: $3b
	nop                                              ; $624e: $00
	call Call_006_6235                               ; $624f: $cd $35 $62
	ret nc                                           ; $6252: $d0

	call Call_006_6021                               ; $6253: $cd $21 $60
	jp Jump_006_6001                                 ; $6256: $c3 $01 $60


	ld h, $c3                                        ; $6259: $26 $c3
	call $16d0                                       ; $625b: $cd $d0 $16
	call Call_006_6235                               ; $625e: $cd $35 $62
	ld l, $0c                                        ; $6261: $2e $0c
	ld a, [hl]                                       ; $6263: $7e
	or a                                             ; $6264: $b7
	ret nz                                           ; $6265: $c0

	call Call_006_6021                               ; $6266: $cd $21 $60
	jp Jump_006_6001                                 ; $6269: $c3 $01 $60


	ld h, $c3                                        ; $626c: $26 $c3
	call $16d0                                       ; $626e: $cd $d0 $16
	call Call_006_6235                               ; $6271: $cd $35 $62
	ld l, $33                                        ; $6274: $2e $33
	ld a, [hl]                                       ; $6276: $7e
	or a                                             ; $6277: $b7
	ret z                                            ; $6278: $c8

	call Call_006_6021                               ; $6279: $cd $21 $60
	jp Jump_006_6001                                 ; $627c: $c3 $01 $60


	ld h, $c3                                        ; $627f: $26 $c3
	call $16d0                                       ; $6281: $cd $d0 $16
	call Call_006_6235                               ; $6284: $cd $35 $62
	ld l, $0c                                        ; $6287: $2e $0c
	ld a, [hl]                                       ; $6289: $7e
	or a                                             ; $628a: $b7
	ret nz                                           ; $628b: $c0

	cpl                                              ; $628c: $2f
	ld [$c233], a                                    ; $628d: $ea $33 $c2
	jp Jump_006_6001                                 ; $6290: $c3 $01 $60


Jump_006_6293:
	ld a, [$c40a]                                    ; $6293: $fa $0a $c4
	rst JumpTable                                          ; $6296: $c7
	sbc a                                            ; $6297: $9f
	ld h, d                                          ; $6298: $62
	rst SubAFromDE                                          ; $6299: $df
	ld h, d                                          ; $629a: $62
	jp hl                                            ; $629b: $e9


	ld h, d                                          ; $629c: $62
	inc b                                            ; $629d: $04
	ld h, b                                          ; $629e: $60
	ld a, $08                                        ; $629f: $3e $08
	call Call_006_6009                               ; $62a1: $cd $09 $60
	call $0aab                                       ; $62a4: $cd $ab $0a
	ld a, $09                                        ; $62a7: $3e $09
	call Call_006_6009                               ; $62a9: $cd $09 $60
	ld c, l                                          ; $62ac: $4d
	ld b, h                                          ; $62ad: $44
	ld h, $c4                                        ; $62ae: $26 $c4
	ld l, $02                                        ; $62b0: $2e $02
	ld [hl], $a4                                     ; $62b2: $36 $a4
	ld l, $05                                        ; $62b4: $2e $05
	ld [hl], $80                                     ; $62b6: $36 $80
	ld l, $07                                        ; $62b8: $2e $07
	ld [hl], $50                                     ; $62ba: $36 $50
	ld l, $00                                        ; $62bc: $2e $00
	ld [hl], $01                                     ; $62be: $36 $01
	ld l, $01                                        ; $62c0: $2e $01
	ld [hl], $80                                     ; $62c2: $36 $80
	ld l, $03                                        ; $62c4: $2e $03
	ld [hl], $80                                     ; $62c6: $36 $80
	ld l, $10                                        ; $62c8: $2e $10
	ld [hl], $80                                     ; $62ca: $36 $80
	ld l, $0d                                        ; $62cc: $2e $0d
	ld [hl], c                                       ; $62ce: $71
	inc hl                                           ; $62cf: $23
	ld [hl], b                                       ; $62d0: $70
	ld l, $0c                                        ; $62d1: $2e $0c
	ld [hl], $01                                     ; $62d3: $36 $01
	ld l, $08                                        ; $62d5: $2e $08
	ld [hl], $73                                     ; $62d7: $36 $73
	inc hl                                           ; $62d9: $23
	ld [hl], $d9                                     ; $62da: $36 $d9
	jp Jump_006_6001                                 ; $62dc: $c3 $01 $60


	ld h, $c4                                        ; $62df: $26 $c4
	ld l, $33                                        ; $62e1: $2e $33
	ld a, [hl]                                       ; $62e3: $7e
	or a                                             ; $62e4: $b7
	ret z                                            ; $62e5: $c8

	jp Jump_006_6001                                 ; $62e6: $c3 $01 $60


	ld h, $c4                                        ; $62e9: $26 $c4
	call $16d0                                       ; $62eb: $cd $d0 $16
	ld l, $0c                                        ; $62ee: $2e $0c
	ld a, [hl]                                       ; $62f0: $7e
	or a                                             ; $62f1: $b7
	ret nz                                           ; $62f2: $c0

	cpl                                              ; $62f3: $2f
	ld [$c333], a                                    ; $62f4: $ea $33 $c3
	jp Jump_006_6001                                 ; $62f7: $c3 $01 $60


	ld a, [$c148]                                    ; $62fa: $fa $48 $c1
	rst JumpTable                                          ; $62fd: $c7
	ld b, $63                                        ; $62fe: $06 $63
	ld a, [de]                                       ; $6300: $1a
	ld h, e                                          ; $6301: $63
	jr nz, jr_006_6367                               ; $6302: $20 $63

	ld h, $63                                        ; $6304: $26 $63
	ld a, $01                                        ; $6306: $3e $01
	ld [$d840], a                                    ; $6308: $ea $40 $d8
	call $0911                                       ; $630b: $cd $11 $09
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $630e: $cd $ef $2d
	call $1973                                       ; $6311: $cd $73 $19
	call Call_006_46c1                               ; $6314: $cd $c1 $46
	jp Jump_006_5f95                                 ; $6317: $c3 $95 $5f


	call Call_006_6330                               ; $631a: $cd $30 $63
	jp Jump_006_6375                                 ; $631d: $c3 $75 $63


	call Call_006_69a3                               ; $6320: $cd $a3 $69
	jp Jump_006_5f95                                 ; $6323: $c3 $95 $5f


	xor a                                            ; $6326: $af
	ld [$d840], a                                    ; $6327: $ea $40 $d8
	ld [$c148], a                                    ; $632a: $ea $48 $c1
	jp Jump_006_69b1                                 ; $632d: $c3 $b1 $69


Call_006_6330:
	ld a, [$d841]                                    ; $6330: $fa $41 $d8
	rst JumpTable                                          ; $6333: $c7
	ld a, [hl-]                                      ; $6334: $3a
	ld h, e                                          ; $6335: $63
	ld h, l                                          ; $6336: $65
	ld h, e                                          ; $6337: $63
	sub l                                            ; $6338: $95
	ld e, a                                          ; $6339: $5f
	ld a, $18                                        ; $633a: $3e $18
	ld [$c17a], a                                    ; $633c: $ea $7a $c1
	ld a, $77                                        ; $633f: $3e $77
	ld [$c17b], a                                    ; $6341: $ea $7b $c1
	ld a, $00                                        ; $6344: $3e $00
	call Call_006_6009                               ; $6346: $cd $09 $60
	call Call_006_645b                               ; $6349: $cd $5b $64
	call Call_006_5fb7                               ; $634c: $cd $b7 $5f
	call Call_006_47ef                               ; $634f: $cd $ef $47
	ld a, $02                                        ; $6352: $3e $02
	call Call_006_6009                               ; $6354: $cd $09 $60
	ld c, l                                          ; $6357: $4d
	ld b, h                                          ; $6358: $44
	call Call_006_470c                               ; $6359: $cd $0c $47
	call Call_006_5fe7                               ; $635c: $cd $e7 $5f
	call Call_006_471d                               ; $635f: $cd $1d $47
	jp Jump_006_5fa7                                 ; $6362: $c3 $a7 $5f


	ld a, $01                                        ; $6365: $3e $01

jr_006_6367:
	call Call_006_6009                               ; $6367: $cd $09 $60
	call Call_006_6531                               ; $636a: $cd $31 $65
	ld a, [$c233]                                    ; $636d: $fa $33 $c2
	or a                                             ; $6370: $b7
	ret z                                            ; $6371: $c8

	jp Jump_006_5fa7                                 ; $6372: $c3 $a7 $5f


Jump_006_6375:
	ld a, [$c20a]                                    ; $6375: $fa $0a $c2
	rst JumpTable                                          ; $6378: $c7
	ld a, a                                          ; $6379: $7f
	ld h, e                                          ; $637a: $63
	adc e                                            ; $637b: $8b
	ld h, e                                          ; $637c: $63
	inc b                                            ; $637d: $04
	ld h, b                                          ; $637e: $60
	ld bc, $002d                                     ; $637f: $01 $2d $00
	ld hl, $c211                                     ; $6382: $21 $11 $c2
	ld [hl], c                                       ; $6385: $71
	inc hl                                           ; $6386: $23
	ld [hl], b                                       ; $6387: $70
	jp Jump_006_6001                                 ; $6388: $c3 $01 $60


	ld h, $c2                                        ; $638b: $26 $c2
	ld l, $05                                        ; $638d: $2e $05
	ld d, [hl]                                       ; $638f: $56
	ld l, $11                                        ; $6390: $2e $11
	ld c, [hl]                                       ; $6392: $4e
	inc hl                                           ; $6393: $23
	ld b, [hl]                                       ; $6394: $46
	rst FarCall                                          ; $6395: $f7
	db $e4                                           ; $6396: $e4
	dec sp                                           ; $6397: $3b
	nop                                              ; $6398: $00
	ld a, b                                          ; $6399: $78
	cp $68                                           ; $639a: $fe $68
	jr c, jr_006_63a6                                ; $639c: $38 $08

	xor a                                            ; $639e: $af
	ld l, $11                                        ; $639f: $2e $11
	ld [hl+], a                                      ; $63a1: $22
	ld [hl], a                                       ; $63a2: $77
	ld a, $68                                        ; $63a3: $3e $68
	ld b, a                                          ; $63a5: $47

jr_006_63a6:
	cpl                                              ; $63a6: $2f
	inc a                                            ; $63a7: $3c
	add $28                                          ; $63a8: $c6 $28
	cp $98                                           ; $63aa: $fe $98
	jr c, jr_006_63b0                                ; $63ac: $38 $02

	add $98                                          ; $63ae: $c6 $98

jr_006_63b0:
	ldh [hDisp0_SCY], a                                     ; $63b0: $e0 $83
	ld a, b                                          ; $63b2: $78
	sub d                                            ; $63b3: $92
	ld c, a                                          ; $63b4: $4f
	ld a, [$c156]                                    ; $63b5: $fa $56 $c1
	add c                                            ; $63b8: $81
	ld [$c156], a                                    ; $63b9: $ea $56 $c1
	ld a, b                                          ; $63bc: $78
	cp $68                                           ; $63bd: $fe $68
	ret nz                                           ; $63bf: $c0

	ld [$c233], a                                    ; $63c0: $ea $33 $c2
	jp Jump_006_6001                                 ; $63c3: $c3 $01 $60


Call_006_63c6:
	ld b, $09                                        ; $63c6: $06 $09

jr_006_63c8:
	dec b                                            ; $63c8: $05
	ld hl, $0140                                     ; $63c9: $21 $40 $01
	ld a, b                                          ; $63cc: $78
	call AHLequAtimesHL                                       ; $63cd: $cd $77 $12
	ld de, $8a60                                     ; $63d0: $11 $60 $8a
	add hl, de                                       ; $63d3: $19
	ld e, l                                          ; $63d4: $5d
	ld d, h                                          ; $63d5: $54
	push bc                                          ; $63d6: $c5
	ld a, b                                          ; $63d7: $78
	ld hl, $0100                                     ; $63d8: $21 $00 $01
	call AHLequAtimesHL                                       ; $63db: $cd $77 $12
	ld bc, $8300                                     ; $63de: $01 $00 $83
	add hl, bc                                       ; $63e1: $09
	pop bc                                           ; $63e2: $c1
	ld c, $10                                        ; $63e3: $0e $10

jr_006_63e5:
	call $ccb0                                       ; $63e5: $cd $b0 $cc
	dec c                                            ; $63e8: $0d
	jr nz, jr_006_63e5                               ; $63e9: $20 $fa

	ld a, b                                          ; $63eb: $78
	or a                                             ; $63ec: $b7
	jr nz, jr_006_63c8                               ; $63ed: $20 $d9

	ld b, $03                                        ; $63ef: $06 $03

jr_006_63f1:
	dec b                                            ; $63f1: $05
	ld hl, $0140                                     ; $63f2: $21 $40 $01
	ld a, b                                          ; $63f5: $78
	call AHLequAtimesHL                                       ; $63f6: $cd $77 $12
	ld de, $8660                                     ; $63f9: $11 $60 $86
	add hl, de                                       ; $63fc: $19
	ld e, l                                          ; $63fd: $5d
	ld d, h                                          ; $63fe: $54
	push bc                                          ; $63ff: $c5
	ld a, b                                          ; $6400: $78
	ld hl, $0100                                     ; $6401: $21 $00 $01
	call AHLequAtimesHL                                       ; $6404: $cd $77 $12
	ld bc, $8000                                     ; $6407: $01 $00 $80
	add hl, bc                                       ; $640a: $09
	pop bc                                           ; $640b: $c1
	ld c, $10                                        ; $640c: $0e $10

jr_006_640e:
	call $ccb0                                       ; $640e: $cd $b0 $cc
	dec c                                            ; $6411: $0d
	jr nz, jr_006_640e                               ; $6412: $20 $fa

	ld a, b                                          ; $6414: $78
	or a                                             ; $6415: $b7
	jr nz, jr_006_63f1                               ; $6416: $20 $d9

	ret                                              ; $6418: $c9


Call_006_6419:
	ld hl, $d853                                     ; $6419: $21 $53 $d8
	ld b, $03                                        ; $641c: $06 $03
	ld de, $8640                                     ; $641e: $11 $40 $86
	call Call_006_643f                               ; $6421: $cd $3f $64
	ld b, $09                                        ; $6424: $06 $09
	ld de, $8a40                                     ; $6426: $11 $40 $8a
	call Call_006_643f                               ; $6429: $cd $3f $64
	ld hl, $d9f3                                     ; $642c: $21 $f3 $d9
	ld b, $03                                        ; $642f: $06 $03
	ld de, $8760                                     ; $6431: $11 $60 $87
	call Call_006_643f                               ; $6434: $cd $3f $64
	ld b, $09                                        ; $6437: $06 $09
	ld de, $8b60                                     ; $6439: $11 $60 $8b
	jp Jump_006_643f                                 ; $643c: $c3 $3f $64


Call_006_643f:
Jump_006_643f:
jr_006_643f:
	ld c, $20                                        ; $643f: $0e $20

jr_006_6441:
	di                                               ; $6441: $f3

jr_006_6442:
	ldh a, [rSTAT]                                   ; $6442: $f0 $41
	bit 1, a                                         ; $6444: $cb $4f
	jr nz, jr_006_6442                               ; $6446: $20 $fa

	ld a, [hl+]                                      ; $6448: $2a
	ld [de], a                                       ; $6449: $12
	ei                                               ; $644a: $fb
	inc de                                           ; $644b: $13
	dec c                                            ; $644c: $0d
	jr nz, jr_006_6441                               ; $644d: $20 $f2

	push hl                                          ; $644f: $e5
	ld hl, $0120                                     ; $6450: $21 $20 $01
	add hl, de                                       ; $6453: $19
	ld e, l                                          ; $6454: $5d
	ld d, h                                          ; $6455: $54
	pop hl                                           ; $6456: $e1
	dec b                                            ; $6457: $05
	jr nz, jr_006_643f                               ; $6458: $20 $e5

	ret                                              ; $645a: $c9


Call_006_645b:
	call $0986                                       ; $645b: $cd $86 $09
	call $0aab                                       ; $645e: $cd $ab $0a
	call Call_006_63c6                               ; $6461: $cd $c6 $63
	ld hl, $0000                                     ; $6464: $21 $00 $00
	call Call_006_4741                               ; $6467: $cd $41 $47
	ld hl, $98a2                                     ; $646a: $21 $a2 $98
	ld bc, $0c10                                     ; $646d: $01 $10 $0c
	ld de, $d4d3                                     ; $6470: $11 $d3 $d4
	call Call_006_484a                               ; $6473: $cd $4a $48
	ld hl, $553c                                     ; $6476: $21 $3c $55
	call $0aab                                       ; $6479: $cd $ab $0a
	call Call_006_6419                               ; $647c: $cd $19 $64
	ld hl, $98a0                                     ; $647f: $21 $a0 $98
	ld bc, $0c02                                     ; $6482: $01 $02 $0c
	ld de, $db93                                     ; $6485: $11 $93 $db
	call Call_006_484a                               ; $6488: $cd $4a $48
	ld hl, $98b2                                     ; $648b: $21 $b2 $98
	ld bc, $0c02                                     ; $648e: $01 $02 $0c
	ld de, $dba0                                     ; $6491: $11 $a0 $db
	call Call_006_484a                               ; $6494: $cd $4a $48
	ld hl, $5552                                     ; $6497: $21 $52 $55
	call $0aab                                       ; $649a: $cd $ab $0a
	ld hl, $9800                                     ; $649d: $21 $00 $98
	call Call_006_4b51                               ; $64a0: $cd $51 $4b
	ld hl, $9c00                                     ; $64a3: $21 $00 $9c
	call Call_006_6ce5                               ; $64a6: $cd $e5 $6c
	ld a, $04                                        ; $64a9: $3e $04
	ld [$c158], a                                    ; $64ab: $ea $58 $c1
	xor a                                            ; $64ae: $af
	ld [$c157], a                                    ; $64af: $ea $57 $c1
	ld a, $08                                        ; $64b2: $3e $08
	ld [$c156], a                                    ; $64b4: $ea $56 $c1
	ld hl, $0028                                     ; $64b7: $21 $28 $00
	call $0955                                       ; $64ba: $cd $55 $09
	ld a, $51                                        ; $64bd: $3e $51
	ldh [hDisp0_LCDC], a                                     ; $64bf: $e0 $82
	ld a, $0e                                        ; $64c1: $3e $0e
	call $068e                                       ; $64c3: $cd $8e $06
	jp $096e                                         ; $64c6: $c3 $6e $09


Call_006_64c9:
	push hl                                          ; $64c9: $e5
	push hl                                          ; $64ca: $e5
	push de                                          ; $64cb: $d5
	ld a, [$c157]                                    ; $64cc: $fa $57 $c1
	cpl                                              ; $64cf: $2f
	inc a                                            ; $64d0: $3c
	add $0d                                          ; $64d1: $c6 $0d
	ld [$c0d0], a                                    ; $64d3: $ea $d0 $c0
	ld bc, $ffe0                                     ; $64d6: $01 $e0 $ff
	ld l, e                                          ; $64d9: $6b
	ld h, d                                          ; $64da: $62
	add hl, bc                                       ; $64db: $09
	ld e, l                                          ; $64dc: $5d
	ld d, h                                          ; $64dd: $54
	ld a, [$c0d0]                                    ; $64de: $fa $d0 $c0
	ld hl, $0020                                     ; $64e1: $21 $20 $00
	call AHLequAtimesHL                                       ; $64e4: $cd $77 $12
	ld bc, $d853                                     ; $64e7: $01 $53 $d8
	add hl, bc                                       ; $64ea: $09
	ld b, $01                                        ; $64eb: $06 $01
	call Call_006_643f                               ; $64ed: $cd $3f $64
	pop hl                                           ; $64f0: $e1
	ld bc, $0100                                     ; $64f1: $01 $00 $01
	add hl, bc                                       ; $64f4: $09
	ld e, l                                          ; $64f5: $5d
	ld d, h                                          ; $64f6: $54
	ld a, [$c0d0]                                    ; $64f7: $fa $d0 $c0
	ld hl, $0020                                     ; $64fa: $21 $20 $00
	call AHLequAtimesHL                                       ; $64fd: $cd $77 $12
	ld bc, $d9f3                                     ; $6500: $01 $f3 $d9
	add hl, bc                                       ; $6503: $09
	ld b, $01                                        ; $6504: $06 $01
	call Call_006_643f                               ; $6506: $cd $3f $64
	pop hl                                           ; $6509: $e1
	ld bc, $fffe                                     ; $650a: $01 $fe $ff
	add hl, bc                                       ; $650d: $09
	ld bc, $0102                                     ; $650e: $01 $02 $01
	ld a, [$c0d0]                                    ; $6511: $fa $d0 $c0
	ld de, $db93                                     ; $6514: $11 $93 $db
	call $1327                                       ; $6517: $cd $27 $13
	call Call_006_484a                               ; $651a: $cd $4a $48
	pop hl                                           ; $651d: $e1
	ld a, $10                                        ; $651e: $3e $10
	rst AddAOntoHL                                          ; $6520: $ef
	ld bc, $0102                                     ; $6521: $01 $02 $01

Call_006_6524:
	ld a, [$c0d0]                                    ; $6524: $fa $d0 $c0
	ld de, $dba0                                     ; $6527: $11 $a0 $db
	call $1327                                       ; $652a: $cd $27 $13
	call Call_006_484a                               ; $652d: $cd $4a $48
	ret                                              ; $6530: $c9


Call_006_6531:
	ld a, [$c156]                                    ; $6531: $fa $56 $c1
	sub $08                                          ; $6534: $d6 $08
	ccf                                              ; $6536: $3f
	ret nc                                           ; $6537: $d0

	ld [$c156], a                                    ; $6538: $ea $56 $c1
	call Call_006_48c8                               ; $653b: $cd $c8 $48
	ret c                                            ; $653e: $d8

	push hl                                          ; $653f: $e5
	ld a, [$c158]                                    ; $6540: $fa $58 $c1
	ld de, $8020                                     ; $6543: $11 $20 $80
	cp $08                                           ; $6546: $fe $08
	jr c, jr_006_654c                                ; $6548: $38 $02

	ld e, $60                                        ; $654a: $1e $60

jr_006_654c:
	ld b, a                                          ; $654c: $47
	ld c, $14                                        ; $654d: $0e $14
	call BCequBtimesC                                       ; $654f: $cd $5f $12
	ld l, c                                          ; $6552: $69
	ld h, b                                          ; $6553: $60
	ld a, $10                                        ; $6554: $3e $10
	call AHLequAtimesHL                                       ; $6556: $cd $77 $12
	add hl, de                                       ; $6559: $19
	ld e, l                                          ; $655a: $5d
	ld d, h                                          ; $655b: $54
	pop hl                                           ; $655c: $e1
	push de                                          ; $655d: $d5
	call Call_006_48a2                               ; $655e: $cd $a2 $48
	ld a, [$c158]                                    ; $6561: $fa $58 $c1
	ld b, a                                          ; $6564: $47
	ld c, $20                                        ; $6565: $0e $20
	call BCequBtimesC                                       ; $6567: $cd $5f $12
	ld hl, $9802                                     ; $656a: $21 $02 $98
	add hl, bc                                       ; $656d: $09
	push hl                                          ; $656e: $e5
	ld bc, $0110                                     ; $656f: $01 $10 $01
	ld de, $d4d3                                     ; $6572: $11 $d3 $d4
	call Call_006_484a                               ; $6575: $cd $4a $48
	pop hl                                           ; $6578: $e1
	pop de                                           ; $6579: $d1
	call Call_006_64c9                               ; $657a: $cd $c9 $64
	ld a, [$c158]                                    ; $657d: $fa $58 $c1
	or a                                             ; $6580: $b7
	jr nz, jr_006_6585                               ; $6581: $20 $02

	ld a, $13                                        ; $6583: $3e $13

jr_006_6585:
	dec a                                            ; $6585: $3d
	ld [$c158], a                                    ; $6586: $ea $58 $c1
	xor a                                            ; $6589: $af
	ret                                              ; $658a: $c9


Call_006_658b:
	call Call_006_6819                               ; $658b: $cd $19 $68
	ld a, $01                                        ; $658e: $3e $01
	call Call_006_6829                               ; $6590: $cd $29 $68
	jr c, jr_006_65a4                                ; $6593: $38 $0f

	ld a, $02                                        ; $6595: $3e $02
	call Call_006_6829                               ; $6597: $cd $29 $68
	jr c, jr_006_65a4                                ; $659a: $38 $08

	xor a                                            ; $659c: $af
	call Call_006_65ae                               ; $659d: $cd $ae $65
	call Call_006_684e                               ; $65a0: $cd $4e $68
	ret c                                            ; $65a3: $d8

jr_006_65a4:
	ld a, $01                                        ; $65a4: $3e $01
	call Call_006_65ae                               ; $65a6: $cd $ae $65
	ld a, $02                                        ; $65a9: $3e $02
	jp Jump_006_65ae                                 ; $65ab: $c3 $ae $65


Call_006_65ae:
Jump_006_65ae:
	call Call_006_66c3                               ; $65ae: $cd $c3 $66
	ld l, $02                                        ; $65b1: $2e $02
	ld a, [hl]                                       ; $65b3: $7e
	or a                                             ; $65b4: $b7
	ret z                                            ; $65b5: $c8

	call Call_006_6801                               ; $65b6: $cd $01 $68
	ret c                                            ; $65b9: $d8

	ld l, $0c                                        ; $65ba: $2e $0c
	ld a, [hl]                                       ; $65bc: $7e
	or a                                             ; $65bd: $b7
	jr z, jr_006_65e0                                ; $65be: $28 $20

	dec a                                            ; $65c0: $3d
	ld [hl], a                                       ; $65c1: $77
	ret nz                                           ; $65c2: $c0

jr_006_65c3:
	ld l, $0d                                        ; $65c3: $2e $0d
	ld a, [hl+]                                      ; $65c5: $2a
	or a                                             ; $65c6: $b7
	jr z, jr_006_65d1                                ; $65c7: $28 $08

	ld b, [hl]                                       ; $65c9: $46
	cp b                                             ; $65ca: $b8
	jr c, jr_006_65d6                                ; $65cb: $38 $09

	ld a, $ff                                        ; $65cd: $3e $ff
	jr jr_006_65d3                                   ; $65cf: $18 $02

jr_006_65d1:
	ld a, $01                                        ; $65d1: $3e $01

jr_006_65d3:
	ld l, $10                                        ; $65d3: $2e $10
	ld [hl], a                                       ; $65d5: $77

jr_006_65d6:
	ld l, $10                                        ; $65d6: $2e $10
	ld a, [hl]                                       ; $65d8: $7e
	ld l, $0d                                        ; $65d9: $2e $0d
	add [hl]                                         ; $65db: $86
	ld [hl], a                                       ; $65dc: $77
	jp Jump_006_6788                                 ; $65dd: $c3 $88 $67


jr_006_65e0:
	ld l, $0b                                        ; $65e0: $2e $0b
	dec [hl]                                         ; $65e2: $35
	jr z, jr_006_65c3                                ; $65e3: $28 $de

	ret                                              ; $65e5: $c9


	xor a                                            ; $65e6: $af
	call Call_006_66c3                               ; $65e7: $cd $c3 $66
	ld l, $0e                                        ; $65ea: $2e $0e
	ld [hl], b                                       ; $65ec: $70
	ret                                              ; $65ed: $c9


Func_06_65ee::
	xor a                                            ; $65ee: $af
	jp Jump_006_6865                                 ; $65ef: $c3 $65 $68


;
	xor a                                            ; $65f2: $af
	jp Jump_006_6872                                 ; $65f3: $c3 $72 $68


	xor a                                            ; $65f6: $af
	jp Jump_006_685d                                 ; $65f7: $c3 $5d $68


	ld a, $01                                        ; $65fa: $3e $01
	call Call_006_66c3                               ; $65fc: $cd $c3 $66
	call Call_006_6609                               ; $65ff: $cd $09 $66
	ld a, $02                                        ; $6602: $3e $02
	call Call_006_66c3                               ; $6604: $cd $c3 $66
	jr jr_006_6609                                   ; $6607: $18 $00

Call_006_6609:
jr_006_6609:
	ld l, $08                                        ; $6609: $2e $08
	ld [hl], b                                       ; $660b: $70
	ld l, $0b                                        ; $660c: $2e $0b
	ld a, [hl]                                       ; $660e: $7e
	cp b                                             ; $660f: $b8
	ret c                                            ; $6610: $d8

	ld [hl], b                                       ; $6611: $70
	ret                                              ; $6612: $c9


	ld a, b                                          ; $6613: $78
	cp $02                                           ; $6614: $fe $02
	jr z, jr_006_6620                                ; $6616: $28 $08

	ld a, $01                                        ; $6618: $3e $01
	call Call_006_6865                               ; $661a: $cd $65 $68
	ld a, b                                          ; $661d: $78
	or a                                             ; $661e: $b7
	ret nz                                           ; $661f: $c0

jr_006_6620:
	ld a, $02                                        ; $6620: $3e $02
	jp Jump_006_6865                                 ; $6622: $c3 $65 $68


	ld a, b                                          ; $6625: $78
	cp $02                                           ; $6626: $fe $02
	jr z, jr_006_6632                                ; $6628: $28 $08

	ld a, $01                                        ; $662a: $3e $01
	call Call_006_6872                               ; $662c: $cd $72 $68
	ld a, b                                          ; $662f: $78
	or a                                             ; $6630: $b7
	ret nz                                           ; $6631: $c0

jr_006_6632:
	ld a, $02                                        ; $6632: $3e $02
	jp Jump_006_6872                                 ; $6634: $c3 $72 $68


	ld a, b                                          ; $6637: $78
	cp $02                                           ; $6638: $fe $02
	jr z, jr_006_6644                                ; $663a: $28 $08

	ld a, $01                                        ; $663c: $3e $01
	call Call_006_685d                               ; $663e: $cd $5d $68
	ld a, b                                          ; $6641: $78
	or a                                             ; $6642: $b7
	ret nz                                           ; $6643: $c0

jr_006_6644:
	ld a, $02                                        ; $6644: $3e $02
	jp Jump_006_685d                                 ; $6646: $c3 $5d $68


Call_006_6649:
	ld c, $03                                        ; $6649: $0e $03

jr_006_664b:
	ld a, c                                          ; $664b: $79
	dec a                                            ; $664c: $3d
	call Call_006_66c3                               ; $664d: $cd $c3 $66
	ld l, $02                                        ; $6650: $2e $02
	ld a, [hl]                                       ; $6652: $7e
	or a                                             ; $6653: $b7
	jr z, jr_006_6662                                ; $6654: $28 $0c

	ld l, $0f                                        ; $6656: $2e $0f
	ld [hl], b                                       ; $6658: $70
	xor a                                            ; $6659: $af
	ld l, $0d                                        ; $665a: $2e $0d
	ld [hl], a                                       ; $665c: $77
	push bc                                          ; $665d: $c5
	call Call_006_6788                               ; $665e: $cd $88 $67
	pop bc                                           ; $6661: $c1

jr_006_6662:
	dec c                                            ; $6662: $0d
	jr nz, jr_006_664b                               ; $6663: $20 $e6

	jp Jump_006_6819                                 ; $6665: $c3 $19 $68


	ld a, [$c148]                                    ; $6668: $fa $48 $c1
	rst JumpTable                                          ; $666b: $c7
	ld [hl], d                                       ; $666c: $72
	ld h, [hl]                                       ; $666d: $66
	ld a, l                                          ; $666e: $7d
	ld h, [hl]                                       ; $666f: $66
	adc a                                            ; $6670: $8f
	ld h, [hl]                                       ; $6671: $66
	ld a, $01                                        ; $6672: $3e $01
	ld [$d840], a                                    ; $6674: $ea $40 $d8
	call Call_006_6051                               ; $6677: $cd $51 $60
	jp Jump_006_5f95                                 ; $667a: $c3 $95 $5f


	ld a, [wButtonsHeld]                                    ; $667d: $fa $23 $c1
	and $20                                          ; $6680: $e6 $20
	jp nz, Jump_006_5f95                             ; $6682: $c2 $95 $5f

	call Call_006_658b                               ; $6685: $cd $8b $65
	call Call_006_6058                               ; $6688: $cd $58 $60
	ret nz                                           ; $668b: $c0

	jp Jump_006_5f95                                 ; $668c: $c3 $95 $5f


	xor a                                            ; $668f: $af
	ld [$d840], a                                    ; $6690: $ea $40 $d8
	ld [$c148], a                                    ; $6693: $ea $48 $c1
	ret                                              ; $6696: $c9


	ld a, [$c148]                                    ; $6697: $fa $48 $c1
	rst JumpTable                                          ; $669a: $c7
	and e                                            ; $669b: $a3
	ld h, [hl]                                       ; $669c: $66
	or a                                             ; $669d: $b7
	ld h, b                                          ; $669e: $60
	pop af                                           ; $669f: $f1
	ld e, a                                          ; $66a0: $5f
	or b                                             ; $66a1: $b0
	ld h, [hl]                                       ; $66a2: $66
	ld a, $01                                        ; $66a3: $3e $01
	ld [$d840], a                                    ; $66a5: $ea $40 $d8
	ld a, $10                                        ; $66a8: $3e $10
	ld [$c2c7], a                                    ; $66aa: $ea $c7 $c2
	jp Jump_006_5f95                                 ; $66ad: $c3 $95 $5f


	xor a                                            ; $66b0: $af
	ld [$d840], a                                    ; $66b1: $ea $40 $d8
	ld [$c148], a                                    ; $66b4: $ea $48 $c1
	ld a, $00                                        ; $66b7: $3e $00
	call $1e2e                                       ; $66b9: $cd $2e $1e
	xor a                                            ; $66bc: $af
	call $068e                                       ; $66bd: $cd $8e $06
	jp todo_Clears40hBytesAtWramBank0Pages2Plus                                         ; $66c0: $c3 $ef $2d


Call_006_66c3:
	ld h, $c2                                        ; $66c3: $26 $c2
	add h                                            ; $66c5: $84
	ld h, a                                          ; $66c6: $67
	ret                                              ; $66c7: $c9


Call_006_66c8:
	ldh a, [hDisp0_LCDC]                                     ; $66c8: $f0 $82
	and $08                                          ; $66ca: $e6 $08
	xor $08                                          ; $66cc: $ee $08
	ret                                              ; $66ce: $c9


Call_006_66cf:
	push de                                          ; $66cf: $d5
	ld c, a                                          ; $66d0: $4f
	call Call_006_66c8                               ; $66d1: $cd $c8 $66
	ld a, c                                          ; $66d4: $79
	jr nz, jr_006_66ee                               ; $66d5: $20 $17

	ld d, $a4                                        ; $66d7: $16 $a4
	ld bc, $8a40                                     ; $66d9: $01 $40 $8a
	or a                                             ; $66dc: $b7
	jr z, jr_006_6703                                ; $66dd: $28 $24

	ld d, $ac                                        ; $66df: $16 $ac
	ld bc, $8ac0                                     ; $66e1: $01 $c0 $8a
	dec a                                            ; $66e4: $3d
	jr z, jr_006_6703                                ; $66e5: $28 $1c

	ld d, $c4                                        ; $66e7: $16 $c4
	ld bc, $8c40                                     ; $66e9: $01 $40 $8c
	jr jr_006_6703                                   ; $66ec: $18 $15

jr_006_66ee:
	ld d, $a8                                        ; $66ee: $16 $a8
	ld bc, $8a80                                     ; $66f0: $01 $80 $8a
	or a                                             ; $66f3: $b7
	jr z, jr_006_6703                                ; $66f4: $28 $0d

	ld d, $b8                                        ; $66f6: $16 $b8
	ld bc, $8b80                                     ; $66f8: $01 $80 $8b
	dec a                                            ; $66fb: $3d
	jr z, jr_006_6703                                ; $66fc: $28 $05

	ld d, $ca                                        ; $66fe: $16 $ca
	ld bc, $8ca0                                     ; $6700: $01 $a0 $8c

jr_006_6703:
	ld a, d                                          ; $6703: $7a
	pop de                                           ; $6704: $d1
	ret                                              ; $6705: $c9


Call_006_6706:
Jump_006_6706:
	ld b, a                                          ; $6706: $47
	ld e, l                                          ; $6707: $5d
	ld d, h                                          ; $6708: $54
	call Call_006_66c3                               ; $6709: $cd $c3 $66
	ld a, d                                          ; $670c: $7a
	or e                                             ; $670d: $b3
	ret z                                            ; $670e: $c8

	inc b                                            ; $670f: $04
	ld l, $02                                        ; $6710: $2e $02
	ld [hl], b                                       ; $6712: $70
	xor a                                            ; $6713: $af
	ld l, $03                                        ; $6714: $2e $03
	ld [hl], a                                       ; $6716: $77
	ld l, $07                                        ; $6717: $2e $07
	ld a, [de]                                       ; $6719: $1a
	ld [hl], a                                       ; $671a: $77
	inc de                                           ; $671b: $13
	ld l, $05                                        ; $671c: $2e $05
	ld a, [de]                                       ; $671e: $1a
	ld [hl], a                                       ; $671f: $77
	inc de                                           ; $6720: $13
	ld l, $06                                        ; $6721: $2e $06
	ld a, [de]                                       ; $6723: $1a
	ld [hl], a                                       ; $6724: $77
	inc de                                           ; $6725: $13
	ld l, $30                                        ; $6726: $2e $30
	ld a, [de]                                       ; $6728: $1a
	ld [hl], a                                       ; $6729: $77
	inc de                                           ; $672a: $13
	inc hl                                           ; $672b: $23
	ld [hl], e                                       ; $672c: $73
	inc hl                                           ; $672d: $23
	ld [hl], d                                       ; $672e: $72
	ld a, $03                                        ; $672f: $3e $03
	ld l, $08                                        ; $6731: $2e $08
	ld [hl], a                                       ; $6733: $77
	xor a                                            ; $6734: $af
	ld l, $0c                                        ; $6735: $2e $0c
	ld [hl+], a                                      ; $6737: $22
	ld [hl+], a                                      ; $6738: $22
	ld a, $03                                        ; $6739: $3e $03
	ld [hl+], a                                      ; $673b: $22
	xor a                                            ; $673c: $af
	ld [hl+], a                                      ; $673d: $22
	inc a                                            ; $673e: $3c
	ld [hl], a                                       ; $673f: $77
	jp Jump_006_6788                                 ; $6740: $c3 $88 $67


Call_006_6743:
	push hl                                          ; $6743: $e5
	push bc                                          ; $6744: $c5
	push de                                          ; $6745: $d5
	ld a, c                                          ; $6746: $79
	ld hl, $9960                                     ; $6747: $21 $60 $99
	cp $08                                           ; $674a: $fe $08
	jr c, jr_006_6751                                ; $674c: $38 $03

	ld hl, $9700                                     ; $674e: $21 $00 $97

jr_006_6751:
	ld a, b                                          ; $6751: $78
	rst AddAOntoHL                                          ; $6752: $ef
	call Call_006_66c8                               ; $6753: $cd $c8 $66
	jr z, jr_006_675c                                ; $6756: $28 $04

	ld a, $04                                        ; $6758: $3e $04
	add h                                            ; $675a: $84
	ld h, a                                          ; $675b: $67

jr_006_675c:
	ld b, $20                                        ; $675c: $06 $20
	call BCequBtimesC                                       ; $675e: $cd $5f $12
	add hl, bc                                       ; $6761: $09
	ld b, $01                                        ; $6762: $06 $01
	ld c, d                                          ; $6764: $4a
	call $4824                                       ; $6765: $cd $24 $48
	pop de                                           ; $6768: $d1
	pop bc                                           ; $6769: $c1
	pop hl                                           ; $676a: $e1
	ret                                              ; $676b: $c9


Call_006_676c:
	push hl                                          ; $676c: $e5
	call Call_006_66c8                               ; $676d: $cd $c8 $66
	jr z, jr_006_677a                                ; $6770: $28 $08

	ld hl, $9800                                     ; $6772: $21 $00 $98
	ld de, $9c00                                     ; $6775: $11 $00 $9c
	jr jr_006_6780                                   ; $6778: $18 $06

jr_006_677a:
	ld hl, $9c00                                     ; $677a: $21 $00 $9c
	ld de, $9800                                     ; $677d: $11 $00 $98

jr_006_6780:
	ld bc, $1314                                     ; $6780: $01 $14 $13
	call Call_006_4937                               ; $6783: $cd $37 $49
	pop hl                                           ; $6786: $e1
	ret                                              ; $6787: $c9


Call_006_6788:
Jump_006_6788:
	ld a, [$d843]                                    ; $6788: $fa $43 $d8
	or a                                             ; $678b: $b7
	call z, Call_006_676c                            ; $678c: $cc $6c $67
	ld l, $30                                        ; $678f: $2e $30
	ld a, [hl+]                                      ; $6791: $2a
	ld [$c16d], a                                    ; $6792: $ea $6d $c1
	ld a, [hl+]                                      ; $6795: $2a
	ld e, a                                          ; $6796: $5f
	ld d, [hl]                                       ; $6797: $56
	ld l, $0f                                        ; $6798: $2e $0f
	ld a, [hl]                                       ; $679a: $7e
	sla a                                            ; $679b: $cb $27
	sla a                                            ; $679d: $cb $27
	sla a                                            ; $679f: $cb $27
	call $1327                                       ; $67a1: $cd $27 $13
	ld l, $0d                                        ; $67a4: $2e $0d
	ld a, [hl]                                       ; $67a6: $7e
	sla a                                            ; $67a7: $cb $27
	call $1327                                       ; $67a9: $cd $27 $13
	ld a, [de]                                       ; $67ac: $1a
	ld [$c16e], a                                    ; $67ad: $ea $6e $c1
	inc de                                           ; $67b0: $13
	ld a, [de]                                       ; $67b1: $1a
	ld [$c16f], a                                    ; $67b2: $ea $6f $c1
	ld l, $02                                        ; $67b5: $2e $02
	ld a, [hl]                                       ; $67b7: $7e
	dec a                                            ; $67b8: $3d
	call Call_006_66cf                               ; $67b9: $cd $cf $66
	push af                                          ; $67bc: $f5
	ld a, c                                          ; $67bd: $79
	ld [$c170], a                                    ; $67be: $ea $70 $c1
	ld a, b                                          ; $67c1: $78
	ld [$c171], a                                    ; $67c2: $ea $71 $c1
	push hl                                          ; $67c5: $e5
	ld hl, $ff44                                     ; $67c6: $21 $44 $ff
	ld a, $8f                                        ; $67c9: $3e $8f

jr_006_67cb:
	cp [hl]                                          ; $67cb: $be
	jr nc, jr_006_67cb                               ; $67cc: $30 $fd

	ld hl, $c16c                                     ; $67ce: $21 $6c $c1
	call $0aab                                       ; $67d1: $cd $ab $0a
	pop hl                                           ; $67d4: $e1
	pop af                                           ; $67d5: $f1
	ld e, a                                          ; $67d6: $5f
	ld l, $07                                        ; $67d7: $2e $07
	ld b, [hl]                                       ; $67d9: $46
	ld l, $05                                        ; $67da: $2e $05
	ld c, [hl]                                       ; $67dc: $4e
	ld l, $06                                        ; $67dd: $2e $06
	ld d, [hl]                                       ; $67df: $56
	call Call_006_6743                               ; $67e0: $cd $43 $67
	inc c                                            ; $67e3: $0c
	ld a, e                                          ; $67e4: $7b
	add d                                            ; $67e5: $82
	ld e, a                                          ; $67e6: $5f
	call Call_006_6743                               ; $67e7: $cd $43 $67
	ld a, $01                                        ; $67ea: $3e $01
	ld [$d843], a                                    ; $67ec: $ea $43 $d8
	ld l, $0d                                        ; $67ef: $2e $0d
	ld a, [hl]                                       ; $67f1: $7e
	or a                                             ; $67f2: $b7
	jr nz, jr_006_67fc                               ; $67f3: $20 $07

	ld l, $08                                        ; $67f5: $2e $08
	ld a, [hl]                                       ; $67f7: $7e
	ld l, $0b                                        ; $67f8: $2e $0b
	ld [hl], a                                       ; $67fa: $77
	ret                                              ; $67fb: $c9


jr_006_67fc:
	ld l, $0c                                        ; $67fc: $2e $0c
	ld [hl], $03                                     ; $67fe: $36 $03
	ret                                              ; $6800: $c9


Call_006_6801:
	ld l, $0d                                        ; $6801: $2e $0d
	ld b, [hl]                                       ; $6803: $46
	ld l, $03                                        ; $6804: $2e $03
	ld a, [hl]                                       ; $6806: $7e
	dec a                                            ; $6807: $3d
	jr z, jr_006_6814                                ; $6808: $28 $0a

	dec a                                            ; $680a: $3d
	ret nz                                           ; $680b: $c0

	ld l, $0e                                        ; $680c: $2e $0e
	ld a, [hl]                                       ; $680e: $7e
	cp b                                             ; $680f: $b8
	jr z, jr_006_6817                                ; $6810: $28 $05

	xor a                                            ; $6812: $af
	ret                                              ; $6813: $c9


jr_006_6814:
	ld a, b                                          ; $6814: $78
	or a                                             ; $6815: $b7
	ret nz                                           ; $6816: $c0

jr_006_6817:
	scf                                              ; $6817: $37
	ret                                              ; $6818: $c9


Call_006_6819:
Jump_006_6819:
	ld a, [$d843]                                    ; $6819: $fa $43 $d8
	or a                                             ; $681c: $b7
	ret z                                            ; $681d: $c8

	xor a                                            ; $681e: $af
	ld [$d843], a                                    ; $681f: $ea $43 $d8
	ldh a, [hDisp0_LCDC]                                     ; $6822: $f0 $82
	xor $08                                          ; $6824: $ee $08
	ldh [hDisp0_LCDC], a                                     ; $6826: $e0 $82
	ret                                              ; $6828: $c9


Call_006_6829:
	ld b, a                                          ; $6829: $47
	ld a, [wInitialA]                                    ; $682a: $fa $00 $c1
	cp $11                                           ; $682d: $fe $11
	ret z                                            ; $682f: $c8

	ld a, b                                          ; $6830: $78
	call Call_006_66c3                               ; $6831: $cd $c3 $66
	ld l, $02                                        ; $6834: $2e $02
	ld a, [hl]                                       ; $6836: $7e
	or a                                             ; $6837: $b7
	ret z                                            ; $6838: $c8

	ld l, $03                                        ; $6839: $2e $03
	ld a, [hl]                                       ; $683b: $7e
	ld l, $0d                                        ; $683c: $2e $0d
	cp $02                                           ; $683e: $fe $02
	jr z, jr_006_6847                                ; $6840: $28 $05

	ld a, [hl]                                       ; $6842: $7e
	or a                                             ; $6843: $b7
	ret z                                            ; $6844: $c8

	jr jr_006_684b                                   ; $6845: $18 $04

jr_006_6847:
	ld a, [hl+]                                      ; $6847: $2a
	ld b, [hl]                                       ; $6848: $46
	cp b                                             ; $6849: $b8
	ret z                                            ; $684a: $c8

jr_006_684b:
	xor a                                            ; $684b: $af
	ccf                                              ; $684c: $3f
	ret                                              ; $684d: $c9


Call_006_684e:
	ld a, [wInitialA]                                    ; $684e: $fa $00 $c1
	cp $11                                           ; $6851: $fe $11
	ret z                                            ; $6853: $c8

	xor a                                            ; $6854: $af
	call Call_006_66c3                               ; $6855: $cd $c3 $66
	call Call_006_6801                               ; $6858: $cd $01 $68
	ccf                                              ; $685b: $3f
	ret                                              ; $685c: $c9


Call_006_685d:
Jump_006_685d:
	call Call_006_66c3                               ; $685d: $cd $c3 $66
	ld l, $03                                        ; $6860: $2e $03
	ld [hl], $00                                     ; $6862: $36 $00
	ret                                              ; $6864: $c9


Call_006_6865:
Jump_006_6865:
	call Call_006_66c3                               ; $6865: $cd $c3 $66
	ld l, $03                                        ; $6868: $2e $03
	ld [hl], $01                                     ; $686a: $36 $01
	ld l, $10                                        ; $686c: $2e $10
	ld [hl], $ff                                     ; $686e: $36 $ff
	jr jr_006_687d                                   ; $6870: $18 $0b

Call_006_6872:
Jump_006_6872:
	call Call_006_66c3                               ; $6872: $cd $c3 $66
	ld l, $03                                        ; $6875: $2e $03
	ld [hl], $02                                     ; $6877: $36 $02
	ld l, $10                                        ; $6879: $2e $10
	ld [hl], $01                                     ; $687b: $36 $01

jr_006_687d:
	ld l, $0c                                        ; $687d: $2e $0c
	ld a, [hl]                                       ; $687f: $7e
	or a                                             ; $6880: $b7
	ret nz                                           ; $6881: $c0

	ld [hl], $03                                     ; $6882: $36 $03
	ret                                              ; $6884: $c9


	ld a, [$c148]                                    ; $6885: $fa $48 $c1
	rst JumpTable                                          ; $6888: $c7
	sbc c                                            ; $6889: $99
	ld l, b                                          ; $688a: $68
	ld [$1469], sp                                   ; $688b: $08 $69 $14
	ld l, c                                          ; $688e: $69
	ld a, [$c148]                                    ; $688f: $fa $48 $c1
	rst JumpTable                                          ; $6892: $c7
	cp c                                             ; $6893: $b9
	ld l, b                                          ; $6894: $68
	ld [$1469], sp                                   ; $6895: $08 $69 $14
	ld l, c                                          ; $6898: $69
	ld a, $01                                        ; $6899: $3e $01
	ld [$d840], a                                    ; $689b: $ea $40 $d8
	call $0986                                       ; $689e: $cd $86 $09
	ld a, $06                                        ; $68a1: $3e $06
	call Call_006_6009                               ; $68a3: $cd $09 $60
	call Call_006_68d3                               ; $68a6: $cd $d3 $68
	ld a, $07                                        ; $68a9: $3e $07
	call Call_006_6009                               ; $68ab: $cd $09 $60
	ld c, l                                          ; $68ae: $4d
	ld b, h                                          ; $68af: $44
	call Call_006_470c                               ; $68b0: $cd $0c $47
	call $0971                                       ; $68b3: $cd $71 $09
	jp Jump_006_5f95                                 ; $68b6: $c3 $95 $5f


	ld a, $01                                        ; $68b9: $3e $01
	ld [$d840], a                                    ; $68bb: $ea $40 $d8
	call $0986                                       ; $68be: $cd $86 $09
	ld hl, $5d88                                     ; $68c1: $21 $88 $5d
	call Call_006_68d3                               ; $68c4: $cd $d3 $68
	ld bc, $6666                                     ; $68c7: $01 $66 $66
	call Call_006_470c                               ; $68ca: $cd $0c $47
	call $0971                                       ; $68cd: $cd $71 $09
	jp Jump_006_5f95                                 ; $68d0: $c3 $95 $5f


Call_006_68d3:
	push hl                                          ; $68d3: $e5
	ld hl, $9800                                     ; $68d4: $21 $00 $98
	call Call_006_4b51                               ; $68d7: $cd $51 $4b
	pop hl                                           ; $68da: $e1
	call $0aab                                       ; $68db: $cd $ab $0a
	ld hl, $0000                                     ; $68de: $21 $00 $00
	call Call_006_4741                               ; $68e1: $cd $41 $47
	ld hl, $9800                                     ; $68e4: $21 $00 $98
	ld bc, $1214                                     ; $68e7: $01 $14 $12
	ld de, $d4d3                                     ; $68ea: $11 $d3 $d4
	call Call_006_484a                               ; $68ed: $cd $4a $48
	ld a, $3f                                        ; $68f0: $3e $3f
	ld [$c179], a                                    ; $68f2: $ea $79 $c1
	ld a, $00                                        ; $68f5: $3e $00
	ld [$c17a], a                                    ; $68f7: $ea $7a $c1
	ld a, $8f                                        ; $68fa: $3e $8f
	ld [$c17b], a                                    ; $68fc: $ea $7b $c1
	ld a, $91                                        ; $68ff: $3e $91
	ldh [hDisp0_LCDC], a                                     ; $6901: $e0 $82
	ld a, $0d                                        ; $6903: $3e $0d
	jp $068e                                         ; $6905: $c3 $8e $06


	ld a, [wButtonsPressed]                                    ; $6908: $fa $25 $c1
	and $10                                          ; $690b: $e6 $10
	ret z                                            ; $690d: $c8

	call $1973                                       ; $690e: $cd $73 $19
	jp Jump_006_5f95                                 ; $6911: $c3 $95 $5f


	xor a                                            ; $6914: $af
	ld [$d840], a                                    ; $6915: $ea $40 $d8
	ld [$c148], a                                    ; $6918: $ea $48 $c1
	call $0986                                       ; $691b: $cd $86 $09
	call $0911                                       ; $691e: $cd $11 $09
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $6921: $cd $ef $2d
	call $1973                                       ; $6924: $cd $73 $19
	call $0963                                       ; $6927: $cd $63 $09
	xor a                                            ; $692a: $af
	call $068e                                       ; $692b: $cd $8e $06
	jp $0971                                         ; $692e: $c3 $71 $09


	call $0986                                       ; $6931: $cd $86 $09
	ld hl, $5d9e                                     ; $6934: $21 $9e $5d
	call Call_006_68d3                               ; $6937: $cd $d3 $68
	jp $0971                                         ; $693a: $c3 $71 $09


	ld a, [$c148]                                    ; $693d: $fa $48 $c1
	rst JumpTable                                          ; $6940: $c7
	ld b, a                                          ; $6941: $47
	ld l, c                                          ; $6942: $69
	pop af                                           ; $6943: $f1
	ld e, a                                          ; $6944: $5f
	sbc e                                            ; $6945: $9b
	ld l, c                                          ; $6946: $69
	ld a, $01                                        ; $6947: $3e $01
	ld [$d840], a                                    ; $6949: $ea $40 $d8
	ld hl, $9800                                     ; $694c: $21 $00 $98
	call Call_006_4b51                               ; $694f: $cd $51 $4b
	ld hl, $9880                                     ; $6952: $21 $80 $98
	call Call_006_69ed                               ; $6955: $cd $ed $69
	ld a, $0d                                        ; $6958: $3e $0d
	ld [$c186], a                                    ; $695a: $ea $86 $c1
	ld hl, $5be9                                     ; $695d: $21 $e9 $5b
	call $0aab                                       ; $6960: $cd $ab $0a
	ld hl, $9960                                     ; $6963: $21 $60 $99
	ld bc, $0814                                     ; $6966: $01 $14 $08
	ld de, $d4d3                                     ; $6969: $11 $d3 $d4
	call Call_006_484a                               ; $696c: $cd $4a $48
	ld hl, $5bf5                                     ; $696f: $21 $f5 $5b
	call $0aab                                       ; $6972: $cd $ab $0a
	ld hl, $9800                                     ; $6975: $21 $00 $98
	ld bc, $0414                                     ; $6978: $01 $14 $04
	ld de, $d4d3                                     ; $697b: $11 $d3 $d4
	call Call_006_484a                               ; $697e: $cd $4a $48
	ld a, $12                                        ; $6981: $3e $12
	call $068e                                       ; $6983: $cd $8e $06
	ld bc, $663a                                     ; $6986: $01 $3a $66
	call Call_006_470c                               ; $6989: $cd $0c $47
	call Call_006_5fe7                               ; $698c: $cd $e7 $5f
	call Call_006_471d                               ; $698f: $cd $1d $47
	ldh a, [hDisp0_LCDC]                                     ; $6992: $f0 $82
	and $f7                                          ; $6994: $e6 $f7
	ldh [hDisp0_LCDC], a                                     ; $6996: $e0 $82
	jp Jump_006_5f95                                 ; $6998: $c3 $95 $5f


	xor a                                            ; $699b: $af
	ld [$d840], a                                    ; $699c: $ea $40 $d8
	ld [$c148], a                                    ; $699f: $ea $48 $c1
	ret                                              ; $69a2: $c9


Call_006_69a3:
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $69a3: $cd $ef $2d
	ld hl, $9880                                     ; $69a6: $21 $80 $98
	call Call_006_69ed                               ; $69a9: $cd $ed $69
	ld a, $12                                        ; $69ac: $3e $12
	jp $068e                                         ; $69ae: $c3 $8e $06


Jump_006_69b1:
	ld a, $0c                                        ; $69b1: $3e $0c
	ld [$c186], a                                    ; $69b3: $ea $86 $c1
	call Call_006_4b70                               ; $69b6: $cd $70 $4b
	ld a, $ff                                        ; $69b9: $3e $ff
	ld [$c172], a                                    ; $69bb: $ea $72 $c1
	ld a, $03                                        ; $69be: $3e $03
	call Call_006_6009                               ; $69c0: $cd $09 $60
	xor a                                            ; $69c3: $af
	call Call_006_6706                               ; $69c4: $cd $06 $67
	ld a, $04                                        ; $69c7: $3e $04
	call Call_006_6009                               ; $69c9: $cd $09 $60
	ld a, $01                                        ; $69cc: $3e $01
	call Call_006_6706                               ; $69ce: $cd $06 $67
	ld a, $05                                        ; $69d1: $3e $05
	call Call_006_6009                               ; $69d3: $cd $09 $60
	ld a, $02                                        ; $69d6: $3e $02
	jp Jump_006_6706                                 ; $69d8: $c3 $06 $67


Call_006_69db:
Jump_006_69db:
jr_006_69db:
	di                                               ; $69db: $f3

jr_006_69dc:
	ldh a, [rSTAT]                                   ; $69dc: $f0 $41
	bit 1, a                                         ; $69de: $cb $4f
	jr nz, jr_006_69dc                               ; $69e0: $20 $fa

	ld [hl], d                                       ; $69e2: $72
	inc hl                                           ; $69e3: $23
	ld [hl], e                                       ; $69e4: $73
	ei                                               ; $69e5: $fb
	inc hl                                           ; $69e6: $23
	dec bc                                           ; $69e7: $0b
	ld a, b                                          ; $69e8: $78
	or c                                             ; $69e9: $b1
	jr nz, jr_006_69db                               ; $69ea: $20 $ef

	ret                                              ; $69ec: $c9


Call_006_69ed:
	push hl                                          ; $69ed: $e5
	ld hl, $8500                                     ; $69ee: $21 $00 $85
	ld bc, $0140                                     ; $69f1: $01 $40 $01
	ld de, rIE                                     ; $69f4: $11 $ff $ff
	call Call_006_69db                               ; $69f7: $cd $db $69
	pop hl                                           ; $69fa: $e1
	push hl                                          ; $69fb: $e5
	ld bc, $0314                                     ; $69fc: $01 $14 $03
	ld de, $00a3                                     ; $69ff: $11 $a3 $00
	push hl                                          ; $6a02: $e5
	push bc                                          ; $6a03: $c5
	rst FarCall                                          ; $6a04: $f7
	xor a                                            ; $6a05: $af
	ld b, l                                          ; $6a06: $45
	ld [$e1c1], sp                                   ; $6a07: $08 $c1 $e1
	ld de, $0100                                     ; $6a0a: $11 $00 $01
	rst FarCall                                          ; $6a0d: $f7
	xor a                                            ; $6a0e: $af
	ld b, l                                          ; $6a0f: $45
	ld [$0021], sp                                   ; $6a10: $08 $21 $00
	nop                                              ; $6a13: $00
	call Call_006_4741                               ; $6a14: $cd $41 $47
	pop hl                                           ; $6a17: $e1
	ld a, $20                                        ; $6a18: $3e $20
	rst AddAOntoHL                                          ; $6a1a: $ef
	ld bc, $0214                                     ; $6a1b: $01 $14 $02
	ld e, $50                                        ; $6a1e: $1e $50
	jp $4824                                         ; $6a20: $c3 $24 $48


	call Call_006_6a31                               ; $6a23: $cd $31 $6a
	ld a, [$d840]                                    ; $6a26: $fa $40 $d8
	or a                                             ; $6a29: $b7
	ret z                                            ; $6a2a: $c8

	call Call_006_6b33                               ; $6a2b: $cd $33 $6b
	jp Jump_006_6bd1                                 ; $6a2e: $c3 $d1 $6b


Call_006_6a31:
	ld a, [$c148]                                    ; $6a31: $fa $48 $c1
	rst JumpTable                                          ; $6a34: $c7
	ld e, c                                          ; $6a35: $59
	ld l, d                                          ; $6a36: $6a
	sub h                                            ; $6a37: $94
	ld l, d                                          ; $6a38: $6a
	or [hl]                                          ; $6a39: $b6
	ld l, d                                          ; $6a3a: $6a
	jp nz, $f16a                                     ; $6a3b: $c2 $6a $f1

	ld e, a                                          ; $6a3e: $5f
	call nc, $fa6a                                   ; $6a3f: $d4 $6a $fa
	ld b, b                                          ; $6a42: $40
	ret c                                            ; $6a43: $d8

	dec a                                            ; $6a44: $3d
	ret nz                                           ; $6a45: $c0

	ld a, [$a125]                                    ; $6a46: $fa $25 $a1
	dec a                                            ; $6a49: $3d
	or a                                             ; $6a4a: $b7
	ret z                                            ; $6a4b: $c8

	ld a, [wButtonsPressed]                                    ; $6a4c: $fa $25 $c1
	and $80                                          ; $6a4f: $e6 $80
	ret z                                            ; $6a51: $c8

	ld a, $03                                        ; $6a52: $3e $03
	call Call_006_5f99                               ; $6a54: $cd $99 $5f
	scf                                              ; $6a57: $37
	ret                                              ; $6a58: $c9


	ld a, $01                                        ; $6a59: $3e $01
	ld [$d840], a                                    ; $6a5b: $ea $40 $d8
	call $0963                                       ; $6a5e: $cd $63 $09
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $6a61: $cd $ef $2d
	call $1962                                       ; $6a64: $cd $62 $19
	call Call_006_5fb7                               ; $6a67: $cd $b7 $5f
	ld hl, $9800                                     ; $6a6a: $21 $00 $98
	ld bc, $1214                                     ; $6a6d: $01 $14 $12
	ld de, $00a3                                     ; $6a70: $11 $a3 $00
	rst FarCall                                          ; $6a73: $f7
	xor a                                            ; $6a74: $af
	ld b, l                                          ; $6a75: $45
	ld [$0021], sp                                   ; $6a76: $08 $21 $00
	sbc b                                            ; $6a79: $98
	ld bc, $1214                                     ; $6a7a: $01 $14 $12
	ld de, $0100                                     ; $6a7d: $11 $00 $01
	rst FarCall                                          ; $6a80: $f7
	xor a                                            ; $6a81: $af
	ld b, l                                          ; $6a82: $45
	ld [$cdaf], sp                                   ; $6a83: $08 $af $cd
	adc [hl]                                         ; $6a86: $8e
	ld b, $3e                                        ; $6a87: $06 $3e
	ld [de], a                                       ; $6a89: $12
	ld [$c186], a                                    ; $6a8a: $ea $86 $c1
	ld a, $97                                        ; $6a8d: $3e $97
	ldh [hDisp0_LCDC], a                                     ; $6a8f: $e0 $82
	jp Jump_006_5f95                                 ; $6a91: $c3 $95 $5f


	ld hl, $99e0                                     ; $6a94: $21 $e0 $99
	call Call_006_69ed                               ; $6a97: $cd $ed $69
	ld a, $03                                        ; $6a9a: $3e $03
	ld [$d7f9], a                                    ; $6a9c: $ea $f9 $d7
	ld a, $00                                        ; $6a9f: $3e $00
	ld [$d7fa], a                                    ; $6aa1: $ea $fa $d7
	call Call_006_6ae6                               ; $6aa4: $cd $e6 $6a
	ld bc, $6672                                     ; $6aa7: $01 $72 $66
	call Call_006_470c                               ; $6aaa: $cd $0c $47
	call Call_006_5fe7                               ; $6aad: $cd $e7 $5f
	call Call_006_4718                               ; $6ab0: $cd $18 $47
	jp Jump_006_5f95                                 ; $6ab3: $c3 $95 $5f


	call $6a41                                       ; $6ab6: $cd $41 $6a
	ret c                                            ; $6ab9: $d8

	ld a, [$c233]                                    ; $6aba: $fa $33 $c2
	or a                                             ; $6abd: $b7
	ret z                                            ; $6abe: $c8

	jp Jump_006_5f95                                 ; $6abf: $c3 $95 $5f


	ld a, [$d840]                                    ; $6ac2: $fa $40 $d8
	inc a                                            ; $6ac5: $3c
	ld [$d840], a                                    ; $6ac6: $ea $40 $d8
	ld a, $20                                        ; $6ac9: $3e $20
	ld [$c2c7], a                                    ; $6acb: $ea $c7 $c2
	call Call_006_4722                               ; $6ace: $cd $22 $47
	jp Jump_006_5f95                                 ; $6ad1: $c3 $95 $5f


	xor a                                            ; $6ad4: $af
	ld [$d840], a                                    ; $6ad5: $ea $40 $d8
	ld [$c148], a                                    ; $6ad8: $ea $48 $c1
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $6adb: $cd $ef $2d
	ld a, $00                                        ; $6ade: $3e $00
	call $1e2e                                       ; $6ae0: $cd $2e $1e
	jp $0963                                         ; $6ae3: $c3 $63 $09


Call_006_6ae6:
	ld hl, $986a                                     ; $6ae6: $21 $6a $98
	ld bc, $0304                                     ; $6ae9: $01 $04 $03
	ld de, $00a0                                     ; $6aec: $11 $a0 $00
	rst FarCall                                          ; $6aef: $f7
	xor a                                            ; $6af0: $af
	ld b, l                                          ; $6af1: $45
	ld [$0821], sp                                   ; $6af2: $08 $21 $08
	ld e, [hl]                                       ; $6af5: $5e
	call $0aab                                       ; $6af6: $cd $ab $0a
	ld hl, $0000                                     ; $6af9: $21 $00 $00
	call Call_006_4741                               ; $6afc: $cd $41 $47
	ld hl, $98ca                                     ; $6aff: $21 $ca $98
	ld bc, $0406                                     ; $6b02: $01 $06 $04
	ld e, $a4                                        ; $6b05: $1e $a4
	call $4824                                       ; $6b07: $cd $24 $48
	ld hl, $98ca                                     ; $6b0a: $21 $ca $98
	ld bc, $0406                                     ; $6b0d: $01 $06 $04
	ld de, $d4d3                                     ; $6b10: $11 $d3 $d4
	call Call_006_484a                               ; $6b13: $cd $4a $48
	ld hl, $5e14                                     ; $6b16: $21 $14 $5e
	call $0aab                                       ; $6b19: $cd $ab $0a
	ld hl, $9946                                     ; $6b1c: $21 $46 $99
	ld bc, $040e                                     ; $6b1f: $01 $0e $04
	ld e, $bc                                        ; $6b22: $1e $bc
	call $4824                                       ; $6b24: $cd $24 $48
	ld hl, $9946                                     ; $6b27: $21 $46 $99
	ld bc, $040e                                     ; $6b2a: $01 $0e $04
	ld de, $d4d3                                     ; $6b2d: $11 $d3 $d4
	jp Jump_006_484a                                 ; $6b30: $c3 $4a $48


Call_006_6b33:
	ld h, $c2                                        ; $6b33: $26 $c2
	call Call_006_603b                               ; $6b35: $cd $3b $60
	ld a, [$c20a]                                    ; $6b38: $fa $0a $c2
	rst JumpTable                                          ; $6b3b: $c7
	ld b, [hl]                                       ; $6b3c: $46
	ld l, e                                          ; $6b3d: $6b
	ld l, a                                          ; $6b3e: $6f
	ld l, e                                          ; $6b3f: $6b
	sbc d                                            ; $6b40: $9a
	ld l, e                                          ; $6b41: $6b
	jp $046b                                         ; $6b42: $c3 $6b $04


	ld h, b                                          ; $6b45: $60
	ld a, $5c                                        ; $6b46: $3e $5c
	call $1e27                                       ; $6b48: $cd $27 $1e
	ld h, $c2                                        ; $6b4b: $26 $c2
	xor a                                            ; $6b4d: $af
	ld l, $30                                        ; $6b4e: $2e $30
	ld [hl+], a                                      ; $6b50: $22
	ld [hl+], a                                      ; $6b51: $22
	ld [hl], a                                       ; $6b52: $77
	jp Jump_006_6001                                 ; $6b53: $c3 $01 $60


Call_006_6b56:
	push de                                          ; $6b56: $d5
	push af                                          ; $6b57: $f5
	ld l, $32                                        ; $6b58: $2e $32
	ld b, [hl]                                       ; $6b5a: $46
	ld c, $06                                        ; $6b5b: $0e $06
	call BCequBtimesC                                       ; $6b5d: $cd $5f $12
	ld de, $5db4                                     ; $6b60: $11 $b4 $5d
	pop af                                           ; $6b63: $f1
	add c                                            ; $6b64: $81
	call $1327                                       ; $6b65: $cd $27 $13
	ld a, [de]                                       ; $6b68: $1a
	ld c, a                                          ; $6b69: $4f
	inc de                                           ; $6b6a: $13
	ld a, [de]                                       ; $6b6b: $1a
	ld b, a                                          ; $6b6c: $47
	pop de                                           ; $6b6d: $d1
	ret                                              ; $6b6e: $c9


	ld h, $c2                                        ; $6b6f: $26 $c2
	ld a, $02                                        ; $6b71: $3e $02
	call Call_006_6b56                               ; $6b73: $cd $56 $6b
	call Call_006_6033                               ; $6b76: $cd $33 $60
	ret nc                                           ; $6b79: $d0

	ld a, $00                                        ; $6b7a: $3e $00
	call Call_006_6b56                               ; $6b7c: $cd $56 $6b
	ld a, b                                          ; $6b7f: $78
	or c                                             ; $6b80: $b1
	jr z, jr_006_6b8f                                ; $6b81: $28 $0c

	push hl                                          ; $6b83: $e5
	ld l, c                                          ; $6b84: $69
	ld h, b                                          ; $6b85: $60
	ld b, $1e                                        ; $6b86: $06 $1e
	call Func_1c32                                       ; $6b88: $cd $32 $1c
	pop hl                                           ; $6b8b: $e1
	jp Jump_006_6001                                 ; $6b8c: $c3 $01 $60


jr_006_6b8f:
	ld a, $10                                        ; $6b8f: $3e $10
	ld [$c2c7], a                                    ; $6b91: $ea $c7 $c2
	ld [$c333], a                                    ; $6b94: $ea $33 $c3
	jp Jump_006_6001                                 ; $6b97: $c3 $01 $60


	ld h, $c2                                        ; $6b9a: $26 $c2
	ld a, $04                                        ; $6b9c: $3e $04
	call Call_006_6b56                               ; $6b9e: $cd $56 $6b
	call Call_006_6033                               ; $6ba1: $cd $33 $60
	ret nc                                           ; $6ba4: $d0

	ld a, $00                                        ; $6ba5: $3e $00
	call Call_006_6b56                               ; $6ba7: $cd $56 $6b
	ld a, b                                          ; $6baa: $78
	or c                                             ; $6bab: $b1
	jp z, Jump_006_6001                              ; $6bac: $ca $01 $60

	ld l, $32                                        ; $6baf: $2e $32
	inc [hl]                                         ; $6bb1: $34
	push hl                                          ; $6bb2: $e5
	ld hl, $8500                                     ; $6bb3: $21 $00 $85
	ld bc, $0140                                     ; $6bb6: $01 $40 $01
	ld de, rIE                                     ; $6bb9: $11 $ff $ff
	call Call_006_69db                               ; $6bbc: $cd $db $69
	pop hl                                           ; $6bbf: $e1
	jp Jump_006_6005                                 ; $6bc0: $c3 $05 $60


	ld a, $00                                        ; $6bc3: $3e $00
	call $1e2e                                       ; $6bc5: $cd $2e $1e
	ld h, $c2                                        ; $6bc8: $26 $c2
	ld l, $33                                        ; $6bca: $2e $33
	ld [hl], $ff                                     ; $6bcc: $36 $ff
	jp Jump_006_6001                                 ; $6bce: $c3 $01 $60


Jump_006_6bd1:
	ld a, [$c30a]                                    ; $6bd1: $fa $0a $c3
	rst JumpTable                                          ; $6bd4: $c7
	db $dd                                           ; $6bd5: $dd
	ld l, e                                          ; $6bd6: $6b
	inc bc                                           ; $6bd7: $03
	ld l, h                                          ; $6bd8: $6c
	dec de                                           ; $6bd9: $1b
	ld l, h                                          ; $6bda: $6c
	dec hl                                           ; $6bdb: $2b
	ld l, h                                          ; $6bdc: $6c
	ld hl, $5e20                                     ; $6bdd: $21 $20 $5e
	call $0aab                                       ; $6be0: $cd $ab $0a
	ld h, $c3                                        ; $6be3: $26 $c3
	ld l, $02                                        ; $6be5: $2e $02
	ld [hl], $00                                     ; $6be7: $36 $00
	ld l, $05                                        ; $6be9: $2e $05
	ld [hl], $28                                     ; $6beb: $36 $28
	ld l, $07                                        ; $6bed: $2e $07
	ld [hl], $50                                     ; $6bef: $36 $50
	ld l, $00                                        ; $6bf1: $2e $00
	ld [hl], $01                                     ; $6bf3: $36 $01
	ld l, $01                                        ; $6bf5: $2e $01
	ld [hl], $00                                     ; $6bf7: $36 $00
	ld l, $08                                        ; $6bf9: $2e $08
	ld [hl], $53                                     ; $6bfb: $36 $53
	inc hl                                           ; $6bfd: $23
	ld [hl], $d8                                     ; $6bfe: $36 $d8
	jp Jump_006_6001                                 ; $6c00: $c3 $01 $60


	ld h, $c3                                        ; $6c03: $26 $c3
	ld l, $33                                        ; $6c05: $2e $33
	ld a, [hl]                                       ; $6c07: $7e
	or a                                             ; $6c08: $b7
	ret z                                            ; $6c09: $c8

	ld l, $0d                                        ; $6c0a: $2e $0d
	ld [hl], $10                                     ; $6c0c: $36 $10
	inc hl                                           ; $6c0e: $23
	ld [hl], $40                                     ; $6c0f: $36 $40
	ld l, $0c                                        ; $6c11: $2e $0c
	ld [hl], $01                                     ; $6c13: $36 $01
	call $16d0                                       ; $6c15: $cd $d0 $16
	jp Jump_006_6001                                 ; $6c18: $c3 $01 $60


	ld h, $c3                                        ; $6c1b: $26 $c3
	call $16d0                                       ; $6c1d: $cd $d0 $16
	ld l, $0c                                        ; $6c20: $2e $0c
	ld a, [hl]                                       ; $6c22: $7e
	or a                                             ; $6c23: $b7
	ret nz                                           ; $6c24: $c0

	call Call_006_6021                               ; $6c25: $cd $21 $60
	jp Jump_006_6001                                 ; $6c28: $c3 $01 $60


	ld h, $c3                                        ; $6c2b: $26 $c3
	jp $16d0                                         ; $6c2d: $c3 $d0 $16


	call Call_006_6c9b                               ; $6c30: $cd $9b $6c
	jr nc, jr_006_6c3a                               ; $6c33: $30 $05

	ld a, $07                                        ; $6c35: $3e $07
	jp Jump_006_5f99                                 ; $6c37: $c3 $99 $5f


jr_006_6c3a:
	ld a, [$c148]                                    ; $6c3a: $fa $48 $c1
	rst JumpTable                                          ; $6c3d: $c7
	ld d, d                                          ; $6c3e: $52
	ld l, h                                          ; $6c3f: $6c
	db $fc                                           ; $6c40: $fc
	ld l, h                                          ; $6c41: $6c
	ld [hl], a                                       ; $6c42: $77
	ld l, l                                          ; $6c43: $6d
	ld d, b                                          ; $6c44: $50
	ld l, [hl]                                       ; $6c45: $6e
	jr z, jr_006_6cb8                                ; $6c46: $28 $70

	jp nc, $ca70                                     ; $6c48: $d2 $70 $ca

	ld l, h                                          ; $6c4b: $6c
	cp d                                             ; $6c4c: $ba
	ld l, h                                          ; $6c4d: $6c
	pop af                                           ; $6c4e: $f1
	ld e, a                                          ; $6c4f: $5f
	push bc                                          ; $6c50: $c5
	ld l, h                                          ; $6c51: $6c
	ld a, $01                                        ; $6c52: $3e $01
	ld [$d840], a                                    ; $6c54: $ea $40 $d8
	call $1962                                       ; $6c57: $cd $62 $19
	call $0963                                       ; $6c5a: $cd $63 $09
	call Call_006_5fb7                               ; $6c5d: $cd $b7 $5f
	ld hl, $9800                                     ; $6c60: $21 $00 $98
	call Call_006_6ce5                               ; $6c63: $cd $e5 $6c
	ld hl, $9c00                                     ; $6c66: $21 $00 $9c
	call Call_006_6ce5                               ; $6c69: $cd $e5 $6c
	xor a                                            ; $6c6c: $af
	ld [$c14a], a                                    ; $6c6d: $ea $4a $c1
	ld hl, $0000                                     ; $6c70: $21 $00 $00
	call Call_006_4741                               ; $6c73: $cd $41 $47
	ld hl, $00d2                                     ; $6c76: $21 $d2 $00
	ld a, [wInitialA]                                    ; $6c79: $fa $00 $c1
	cp $11                                           ; $6c7c: $fe $11
	jr z, jr_006_6c83                                ; $6c7e: $28 $03

	ld hl, $00b4                                     ; $6c80: $21 $b4 $00

jr_006_6c83:
	ld a, l                                          ; $6c83: $7d
	ld [$d846], a                                    ; $6c84: $ea $46 $d8
	ld a, h                                          ; $6c87: $7c
	ld [$d847], a                                    ; $6c88: $ea $47 $d8
	xor a                                            ; $6c8b: $af
	call $068e                                       ; $6c8c: $cd $8e $06
	ld a, $87                                        ; $6c8f: $3e $87
	ldh [hDisp0_LCDC], a                                     ; $6c91: $e0 $82
	ld a, $4c                                        ; $6c93: $3e $4c
	call Jump_000_1af7                                       ; $6c95: $cd $f7 $1a
	jp Jump_006_5f95                                 ; $6c98: $c3 $95 $5f


Call_006_6c9b:
	ld a, [$d840]                                    ; $6c9b: $fa $40 $d8
	dec a                                            ; $6c9e: $3d
	ret nz                                           ; $6c9f: $c0

	ld a, [wButtonsPressed]                                    ; $6ca0: $fa $25 $c1
	and $80                                          ; $6ca3: $e6 $80
	ret z                                            ; $6ca5: $c8

	call Call_006_6065                               ; $6ca6: $cd $65 $60
	dec a                                            ; $6ca9: $3d
	or a                                             ; $6caa: $b7
	ret z                                            ; $6cab: $c8

	ld a, [$d840]                                    ; $6cac: $fa $40 $d8
	inc a                                            ; $6caf: $3c
	ld [$d840], a                                    ; $6cb0: $ea $40 $d8
	ld a, $07                                        ; $6cb3: $3e $07
	call Call_006_5f99                               ; $6cb5: $cd $99 $5f

jr_006_6cb8:
	scf                                              ; $6cb8: $37
	ret                                              ; $6cb9: $c9


	ld a, $20                                        ; $6cba: $3e $20
	ld [$c2c7], a                                    ; $6cbc: $ea $c7 $c2
	call Call_006_4722                               ; $6cbf: $cd $22 $47
	jp Jump_006_5f95                                 ; $6cc2: $c3 $95 $5f


	ld a, $06                                        ; $6cc5: $3e $06
	jp Jump_006_5f99                                 ; $6cc7: $c3 $99 $5f


	xor a                                            ; $6cca: $af
	ld [$d840], a                                    ; $6ccb: $ea $40 $d8
	ld [$c148], a                                    ; $6cce: $ea $48 $c1
	ld a, $64                                        ; $6cd1: $3e $64
	ld [$c186], a                                    ; $6cd3: $ea $86 $c1
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $6cd6: $cd $ef $2d
	xor a                                            ; $6cd9: $af
	call $068e                                       ; $6cda: $cd $8e $06
	ld a, $00                                        ; $6cdd: $3e $00
	call $1e2e                                       ; $6cdf: $cd $2e $1e
	jp $0963                                         ; $6ce2: $c3 $63 $09


Call_006_6ce5:
	push hl                                          ; $6ce5: $e5
	ld bc, $1220                                     ; $6ce6: $01 $20 $12
	ld de, $00a3                                     ; $6ce9: $11 $a3 $00
	rst FarCall                                          ; $6cec: $f7
	xor a                                            ; $6ced: $af
	ld b, l                                          ; $6cee: $45
	ld [$01e1], sp                                   ; $6cef: $08 $e1 $01
	jr nz, jr_006_6d06                               ; $6cf2: $20 $12

	ld de, $0100                                     ; $6cf4: $11 $00 $01
	rst FarCall                                          ; $6cf7: $f7
	xor a                                            ; $6cf8: $af
	ld b, l                                          ; $6cf9: $45
	ld [$fac9], sp                                   ; $6cfa: $08 $c9 $fa
	ld b, c                                          ; $6cfd: $41
	ret c                                            ; $6cfe: $d8

	rst JumpTable                                          ; $6cff: $c7
	inc c                                            ; $6d00: $0c
	ld l, l                                          ; $6d01: $6d
	ld sp, hl                                        ; $6d02: $f9
	ld e, a                                          ; $6d03: $5f
	ld c, [hl]                                       ; $6d04: $4e
	ld l, l                                          ; $6d05: $6d

jr_006_6d06:
	ld sp, hl                                        ; $6d06: $f9
	ld e, a                                          ; $6d07: $5f
	ld e, d                                          ; $6d08: $5a
	ld l, l                                          ; $6d09: $6d
	sub l                                            ; $6d0a: $95
	ld e, a                                          ; $6d0b: $5f
	ldh a, [hDisp0_LCDC]                                     ; $6d0c: $f0 $82
	or $08                                           ; $6d0e: $f6 $08
	ldh [hDisp0_LCDC], a                                     ; $6d10: $e0 $82
	ld hl, $5c01                                     ; $6d12: $21 $01 $5c
	call $0aab                                       ; $6d15: $cd $ab $0a
	ld hl, $9880                                     ; $6d18: $21 $80 $98
	ld bc, $0a14                                     ; $6d1b: $01 $14 $0a
	ld e, $a4                                        ; $6d1e: $1e $a4
	call $4824                                       ; $6d20: $cd $24 $48
	ld hl, $9880                                     ; $6d23: $21 $80 $98
	ld bc, $0a14                                     ; $6d26: $01 $14 $0a
	ld de, $d4d3                                     ; $6d29: $11 $d3 $d4
	call Call_006_484a                               ; $6d2c: $cd $4a $48
	ld bc, $6676                                     ; $6d2f: $01 $76 $66
	call Call_006_470c                               ; $6d32: $cd $0c $47
	call Call_006_4718                               ; $6d35: $cd $18 $47
	ldh a, [hDisp0_LCDC]                                     ; $6d38: $f0 $82
	and $e7                                          ; $6d3a: $e6 $e7
	ldh [hDisp0_LCDC], a                                     ; $6d3c: $e0 $82
	ld h, $c2                                        ; $6d3e: $26 $c2
	ld a, [$d846]                                    ; $6d40: $fa $46 $d8
	ld c, a                                          ; $6d43: $4f
	ld a, [$d847]                                    ; $6d44: $fa $47 $d8
	ld b, a                                          ; $6d47: $47
	call Call_006_602d                               ; $6d48: $cd $2d $60
	jp Jump_006_5fa7                                 ; $6d4b: $c3 $a7 $5f


	ld h, $c2                                        ; $6d4e: $26 $c2
	call Call_006_6045                               ; $6d50: $cd $45 $60
	ret nz                                           ; $6d53: $c0

	call Call_006_4722                               ; $6d54: $cd $22 $47
	jp Jump_006_5fa7                                 ; $6d57: $c3 $a7 $5f


	ld h, $c2                                        ; $6d5a: $26 $c2
	call $2dfc                                       ; $6d5c: $cd $fc $2d
	jp Jump_006_5fa7                                 ; $6d5f: $c3 $a7 $5f


Call_006_6d62:
	ld hl, $8a40                                     ; $6d62: $21 $40 $8a
	ld bc, $06e0                                     ; $6d65: $01 $e0 $06
	ld de, rIE                                     ; $6d68: $11 $ff $ff
	call Call_006_69db                               ; $6d6b: $cd $db $69
	ld hl, $8000                                     ; $6d6e: $21 $00 $80
	ld bc, $0460                                     ; $6d71: $01 $60 $04
	jp Jump_006_69db                                 ; $6d74: $c3 $db $69


	ld a, [$d841]                                    ; $6d77: $fa $41 $d8
	rst JumpTable                                          ; $6d7a: $c7
	sbc h                                            ; $6d7b: $9c
	ld l, l                                          ; $6d7c: $6d
	ldh a, [$6d]                                     ; $6d7d: $f0 $6d
	ld sp, hl                                        ; $6d7f: $f9
	ld e, a                                          ; $6d80: $5f
	rla                                              ; $6d81: $17
	ld l, [hl]                                       ; $6d82: $6e
	ld sp, hl                                        ; $6d83: $f9
	ld e, a                                          ; $6d84: $5f
	ld h, $6e                                        ; $6d85: $26 $6e
	sub l                                            ; $6d87: $95
	ld e, a                                          ; $6d88: $5f

Call_006_6d89:
	push hl                                          ; $6d89: $e5
	ld l, $32                                        ; $6d8a: $2e $32
	ld a, [hl]                                       ; $6d8c: $7e
	ld b, a                                          ; $6d8d: $47
	ld c, $02                                        ; $6d8e: $0e $02
	call BCequBtimesC                                       ; $6d90: $cd $5f $12
	ld a, c                                          ; $6d93: $79
	ld bc, $5c0d                                     ; $6d94: $01 $0d $5c
	call $132c                                       ; $6d97: $cd $2c $13
	pop hl                                           ; $6d9a: $e1
	ret                                              ; $6d9b: $c9


	ldh a, [hDisp0_LCDC]                                     ; $6d9c: $f0 $82
	or $08                                           ; $6d9e: $f6 $08
	ldh [hDisp0_LCDC], a                                     ; $6da0: $e0 $82
	call Call_006_6d62                               ; $6da2: $cd $62 $6d
	ld a, $64                                        ; $6da5: $3e $64
	ld [$c186], a                                    ; $6da7: $ea $86 $c1
	ld hl, $9800                                     ; $6daa: $21 $00 $98
	ld bc, $0b14                                     ; $6dad: $01 $14 $0b
	ld e, $a4                                        ; $6db0: $1e $a4
	call $4824                                       ; $6db2: $cd $24 $48
	ld hl, $9960                                     ; $6db5: $21 $60 $99
	ld bc, $0714                                     ; $6db8: $01 $14 $07
	ld e, $00                                        ; $6dbb: $1e $00
	call $4824                                       ; $6dbd: $cd $24 $48
	ld hl, $9800                                     ; $6dc0: $21 $00 $98
	ld bc, $1214                                     ; $6dc3: $01 $14 $12
	ld de, $0100                                     ; $6dc6: $11 $00 $01
	rst FarCall                                          ; $6dc9: $f7
	xor a                                            ; $6dca: $af
	ld b, l                                          ; $6dcb: $45
	ld [$033e], sp                                   ; $6dcc: $08 $3e $03
	ld [$d7f9], a                                    ; $6dcf: $ea $f9 $d7
	ld a, $00                                        ; $6dd2: $3e $00
	ld [$d7fa], a                                    ; $6dd4: $ea $fa $d7
	ld a, $57                                        ; $6dd7: $3e $57
	ld [$d84a], a                                    ; $6dd9: $ea $4a $d8
	ld a, $11                                        ; $6ddc: $3e $11
	call $068e                                       ; $6dde: $cd $8e $06
	ldh a, [hDisp0_LCDC]                                     ; $6de1: $f0 $82
	and $f7                                          ; $6de3: $e6 $f7
	ldh [hDisp0_LCDC], a                                     ; $6de5: $e0 $82
	ld h, $c2                                        ; $6de7: $26 $c2
	ld l, $32                                        ; $6de9: $2e $32
	ld [hl], $00                                     ; $6deb: $36 $00
	jp Jump_006_5fa7                                 ; $6ded: $c3 $a7 $5f


	ld h, $c2                                        ; $6df0: $26 $c2
	call Call_006_6d89                               ; $6df2: $cd $89 $6d
	ld l, c                                          ; $6df5: $69
	ld h, b                                          ; $6df6: $60
	ld c, [hl]                                       ; $6df7: $4e
	inc hl                                           ; $6df8: $23
	ld b, [hl]                                       ; $6df9: $46
	ld l, c                                          ; $6dfa: $69
	ld h, b                                          ; $6dfb: $60
	ld b, $1e                                        ; $6dfc: $06 $1e
	call Func_1c32                                       ; $6dfe: $cd $32 $1c
	ld h, $c2                                        ; $6e01: $26 $c2
	ld a, [$d846]                                    ; $6e03: $fa $46 $d8
	ld c, a                                          ; $6e06: $4f
	ld a, [$d847]                                    ; $6e07: $fa $47 $d8
	ld b, a                                          ; $6e0a: $47
	call Call_006_602d                               ; $6e0b: $cd $2d $60
	call Call_006_5fe7                               ; $6e0e: $cd $e7 $5f
	call Call_006_4718                               ; $6e11: $cd $18 $47
	jp Jump_006_5fa7                                 ; $6e14: $c3 $a7 $5f


	ld h, $c2                                        ; $6e17: $26 $c2
	call Call_006_6045                               ; $6e19: $cd $45 $60
	ret nz                                           ; $6e1c: $c0

	ld l, $32                                        ; $6e1d: $2e $32
	inc [hl]                                         ; $6e1f: $34
	call Call_006_4722                               ; $6e20: $cd $22 $47
	jp Jump_006_5fa7                                 ; $6e23: $c3 $a7 $5f


	call Call_006_6d62                               ; $6e26: $cd $62 $6d
	ld h, $c2                                        ; $6e29: $26 $c2
	call Call_006_6d89                               ; $6e2b: $cd $89 $6d
	ld l, c                                          ; $6e2e: $69
	ld h, b                                          ; $6e2f: $60
	ld a, [hl+]                                      ; $6e30: $2a
	or [hl]                                          ; $6e31: $b6
	jp z, Jump_006_5fa7                              ; $6e32: $ca $a7 $5f

	ld a, $01                                        ; $6e35: $3e $01
	ld [$d841], a                                    ; $6e37: $ea $41 $d8
	ret                                              ; $6e3a: $c9


Jump_006_6e3b:
	ld hl, $8f40                                     ; $6e3b: $21 $40 $8f
	ld bc, $0460                                     ; $6e3e: $01 $60 $04
	ld de, rIE                                     ; $6e41: $11 $ff $ff
	call Call_006_69db                               ; $6e44: $cd $db $69
	ld hl, $8500                                     ; $6e47: $21 $00 $85
	ld bc, $0140                                     ; $6e4a: $01 $40 $01
	jp Jump_006_69db                                 ; $6e4d: $c3 $db $69


	ld a, [$d841]                                    ; $6e50: $fa $41 $d8
	rst JumpTable                                          ; $6e53: $c7
	ld [hl], a                                       ; $6e54: $77
	ld l, [hl]                                       ; $6e55: $6e
	add h                                            ; $6e56: $84
	ld l, a                                          ; $6e57: $6f
	call c, $f96f                                    ; $6e58: $dc $6f $f9
	ld e, a                                          ; $6e5b: $5f
	ldh [c], a                                       ; $6e5c: $e2
	ld l, a                                          ; $6e5d: $6f
	ld sp, hl                                        ; $6e5e: $f9
	ld e, a                                          ; $6e5f: $5f
	ldh a, [$6f]                                     ; $6e60: $f0 $6f
	ld bc, $9570                                     ; $6e62: $01 $70 $95
	ld e, a                                          ; $6e65: $5f

Call_006_6e66:
	ld a, [$d848]                                    ; $6e66: $fa $48 $d8
	ld b, a                                          ; $6e69: $47
	ld c, $06                                        ; $6e6a: $0e $06
	call BCequBtimesC                                       ; $6e6c: $cd $5f $12
	ld a, c                                          ; $6e6f: $79
	ld bc, $5c15                                     ; $6e70: $01 $15 $5c
	call $132c                                       ; $6e73: $cd $2c $13
	ret                                              ; $6e76: $c9


	ldh a, [hDisp0_LCDC]                                     ; $6e77: $f0 $82
	or $08                                           ; $6e79: $f6 $08
	ldh [hDisp0_LCDC], a                                     ; $6e7b: $e0 $82
	call Call_006_6d62                               ; $6e7d: $cd $62 $6d
	ld a, $03                                        ; $6e80: $3e $03
	ld [$d7f9], a                                    ; $6e82: $ea $f9 $d7
	ld a, $00                                        ; $6e85: $3e $00
	ld [$d7fa], a                                    ; $6e87: $ea $fa $d7
	ld a, $0b                                        ; $6e8a: $3e $0b
	ld [$c186], a                                    ; $6e8c: $ea $86 $c1
	ld a, $28                                        ; $6e8f: $3e $28
	ld [$c14b], a                                    ; $6e91: $ea $4b $c1
	ld a, $18                                        ; $6e94: $3e $18
	ld [$c14c], a                                    ; $6e96: $ea $4c $c1
	xor a                                            ; $6e99: $af
	ld [$d849], a                                    ; $6e9a: $ea $49 $d8
	ld hl, $0000                                     ; $6e9d: $21 $00 $00
	call $0955                                       ; $6ea0: $cd $55 $09
	ld a, $6f                                        ; $6ea3: $3e $6f
	ld [$d84a], a                                    ; $6ea5: $ea $4a $d8
	xor a                                            ; $6ea8: $af
	ld [$d848], a                                    ; $6ea9: $ea $48 $d8
	jp Jump_006_5fa7                                 ; $6eac: $c3 $a7 $5f


Call_006_6eaf:
	ld hl, $8be0                                     ; $6eaf: $21 $e0 $8b
	ld de, $8a40                                     ; $6eb2: $11 $40 $8a
	ld b, $0a                                        ; $6eb5: $06 $0a

jr_006_6eb7:
	ld c, $80                                        ; $6eb7: $0e $80

jr_006_6eb9:
	di                                               ; $6eb9: $f3

jr_006_6eba:
	ldh a, [rSTAT]                                   ; $6eba: $f0 $41
	bit 1, a                                         ; $6ebc: $cb $4f
	jr nz, jr_006_6eba                               ; $6ebe: $20 $fa

	ld a, [hl+]                                      ; $6ec0: $2a
	ld [de], a                                       ; $6ec1: $12
	ei                                               ; $6ec2: $fb
	inc de                                           ; $6ec3: $13
	dec c                                            ; $6ec4: $0d
	jr nz, jr_006_6eb9                               ; $6ec5: $20 $f2

	push bc                                          ; $6ec7: $c5
	ld bc, $00c0                                     ; $6ec8: $01 $c0 $00
	add hl, bc                                       ; $6ecb: $09
	pop bc                                           ; $6ecc: $c1
	dec b                                            ; $6ecd: $05
	jr nz, jr_006_6eb7                               ; $6ece: $20 $e7

	jp Jump_006_6e3b                                 ; $6ed0: $c3 $3b $6e


Call_006_6ed3:
	push hl                                          ; $6ed3: $e5
	ld bc, $0e0a                                     ; $6ed4: $01 $0a $0e
	ld e, $f4                                        ; $6ed7: $1e $f4
	call $4824                                       ; $6ed9: $cd $24 $48
	pop hl                                           ; $6edc: $e1
	ld bc, $01c0                                     ; $6edd: $01 $c0 $01
	add hl, bc                                       ; $6ee0: $09
	ld bc, $040a                                     ; $6ee1: $01 $0a $04
	ld e, $50                                        ; $6ee4: $1e $50
	call $4824                                       ; $6ee6: $cd $24 $48
	ret                                              ; $6ee9: $c9


Call_006_6eea:
	ld a, [wInitialA]                                    ; $6eea: $fa $00 $c1
	cp $11                                           ; $6eed: $fe $11
	ret nz                                           ; $6eef: $c0

	ld a, $01                                        ; $6ef0: $3e $01
	ldh [rVBK], a                                    ; $6ef2: $e0 $4f
	call Call_006_4937                               ; $6ef4: $cd $37 $49
	xor a                                            ; $6ef7: $af
	ldh [rVBK], a                                    ; $6ef8: $e0 $4f
	ret                                              ; $6efa: $c9


Call_006_6efb:
	ld hl, $9800                                     ; $6efb: $21 $00 $98
	ld de, $9c00                                     ; $6efe: $11 $00 $9c
	ld bc, $1214                                     ; $6f01: $01 $14 $12
	call Call_006_6eea                               ; $6f04: $cd $ea $6e
	call Call_006_6eaf                               ; $6f07: $cd $af $6e
	ld hl, $9800                                     ; $6f0a: $21 $00 $98
	ld bc, $121e                                     ; $6f0d: $01 $1e $12
	ld de, $0100                                     ; $6f10: $11 $00 $01
	rst FarCall                                          ; $6f13: $f7
	xor a                                            ; $6f14: $af
	ld b, l                                          ; $6f15: $45
	ld [$0a21], sp                                   ; $6f16: $08 $21 $0a
	sbc b                                            ; $6f19: $98
	ld bc, $120a                                     ; $6f1a: $01 $0a $12
	ld de, $00a3                                     ; $6f1d: $11 $a3 $00
	rst FarCall                                          ; $6f20: $f7
	xor a                                            ; $6f21: $af
	ld b, l                                          ; $6f22: $45
	ld [$6a21], sp                                   ; $6f23: $08 $21 $6a
	sbc b                                            ; $6f26: $98
	ld bc, $0c0a                                     ; $6f27: $01 $0a $0c
	ld de, $00a0                                     ; $6f2a: $11 $a0 $00
	rst FarCall                                          ; $6f2d: $f7
	xor a                                            ; $6f2e: $af
	ld b, l                                          ; $6f2f: $45
	ld [$8b21], sp                                   ; $6f30: $08 $21 $8b
	sbc b                                            ; $6f33: $98
	ld bc, $0a08                                     ; $6f34: $01 $08 $0a
	ld e, $a4                                        ; $6f37: $1e $a4
	call $4824                                       ; $6f39: $cd $24 $48
	ld hl, $9c26                                     ; $6f3c: $21 $26 $9c
	ld de, $988b                                     ; $6f3f: $11 $8b $98
	ld bc, $0a08                                     ; $6f42: $01 $08 $0a
	call Call_006_6eea                               ; $6f45: $cd $ea $6e
	ld hl, $9800                                     ; $6f48: $21 $00 $98
	call Call_006_6ed3                               ; $6f4b: $cd $d3 $6e
	ld hl, $9814                                     ; $6f4e: $21 $14 $98
	call Call_006_6ed3                               ; $6f51: $cd $d3 $6e
	call Call_006_4b70                               ; $6f54: $cd $70 $4b
	ret                                              ; $6f57: $c9


Call_006_6f58:
	cpl                                              ; $6f58: $2f
	inc a                                            ; $6f59: $3c
	ld c, a                                          ; $6f5a: $4f
	ld h, $c2                                        ; $6f5b: $26 $c2
	ld b, $03                                        ; $6f5d: $06 $03

jr_006_6f5f:
	ld a, c                                          ; $6f5f: $79
	ld l, $07                                        ; $6f60: $2e $07
	add [hl]                                         ; $6f62: $86
	ld [hl], a                                       ; $6f63: $77
	inc h                                            ; $6f64: $24
	dec b                                            ; $6f65: $05
	jr nz, jr_006_6f5f                               ; $6f66: $20 $f7

	ret                                              ; $6f68: $c9


Call_006_6f69:
	ld a, [$d849]                                    ; $6f69: $fa $49 $d8
	ldh [hDisp0_SCX], a                                     ; $6f6c: $e0 $84
	call Call_006_6f58                               ; $6f6e: $cd $58 $6f
	ld a, [$d849]                                    ; $6f71: $fa $49 $d8
	xor $50                                          ; $6f74: $ee $50
	ld [$d849], a                                    ; $6f76: $ea $49 $d8
	ret                                              ; $6f79: $c9


Call_006_6f7a:
	ld a, $0b                                        ; $6f7a: $3e $0b
	ld [$c186], a                                    ; $6f7c: $ea $86 $c1
	ld a, $11                                        ; $6f7f: $3e $11
	jp $068e                                         ; $6f81: $c3 $8e $06


	call Call_006_6e66                               ; $6f84: $cd $66 $6e
	ld l, c                                          ; $6f87: $69
	ld h, b                                          ; $6f88: $60
	ld a, [hl+]                                      ; $6f89: $2a
	ld [$c114], a                                    ; $6f8a: $ea $14 $c1
	ld a, [hl+]                                      ; $6f8d: $2a
	ld [$c117], a                                    ; $6f8e: $ea $17 $c1
	ld c, [hl]                                       ; $6f91: $4e
	inc hl                                           ; $6f92: $23
	ld b, [hl]                                       ; $6f93: $46
	inc hl                                           ; $6f94: $23
	call $3a12                                       ; $6f95: $cd $12 $3a
	push hl                                          ; $6f98: $e5
	call $397f                                       ; $6f99: $cd $7f $39
	call Call_006_6f7a                               ; $6f9c: $cd $7a $6f
	call Call_006_6efb                               ; $6f9f: $cd $fb $6e
	ld a, $01                                        ; $6fa2: $3e $01
	ld [$c117], a                                    ; $6fa4: $ea $17 $c1
	call $371e                                       ; $6fa7: $cd $1e $37
	call Call_006_6f7a                               ; $6faa: $cd $7a $6f
	pop hl                                           ; $6fad: $e1
	ld a, [hl]                                       ; $6fae: $7e
	inc hl                                           ; $6faf: $23
	ld h, [hl]                                       ; $6fb0: $66
	ld l, a                                          ; $6fb1: $6f
	ld b, $1e                                        ; $6fb2: $06 $1e
	call Func_1c32                                       ; $6fb4: $cd $32 $1c
	ld a, [$d846]                                    ; $6fb7: $fa $46 $d8
	ld c, a                                          ; $6fba: $4f
	ld a, [$d847]                                    ; $6fbb: $fa $47 $d8
	ld b, a                                          ; $6fbe: $47
	call Call_006_6051                               ; $6fbf: $cd $51 $60
	call Call_006_6f69                               ; $6fc2: $cd $69 $6f
	call $388c                                       ; $6fc5: $cd $8c $38
	call $2ff9                                       ; $6fc8: $cd $f9 $2f
	ld bc, $46ce                                     ; $6fcb: $01 $ce $46
	xor a                                            ; $6fce: $af
	call $191b                                       ; $6fcf: $cd $1b $19
	ld a, $e4                                        ; $6fd2: $3e $e4
	ldh [hDisp0_BGP], a                                     ; $6fd4: $e0 $85
	call Call_006_4718                               ; $6fd6: $cd $18 $47
	jp Jump_006_5fa7                                 ; $6fd9: $c3 $a7 $5f


	call $3734                                       ; $6fdc: $cd $34 $37
	jp Jump_006_5fa7                                 ; $6fdf: $c3 $a7 $5f


	call Call_006_6058                               ; $6fe2: $cd $58 $60
	ret nz                                           ; $6fe5: $c0

	ld hl, $d848                                     ; $6fe6: $21 $48 $d8
	inc [hl]                                         ; $6fe9: $34
	call Call_006_4722                               ; $6fea: $cd $22 $47
	jp Jump_006_5fa7                                 ; $6fed: $c3 $a7 $5f


	call $3768                                       ; $6ff0: $cd $68 $37
	call Call_006_6e66                               ; $6ff3: $cd $66 $6e
	ld a, [bc]                                       ; $6ff6: $0a
	inc a                                            ; $6ff7: $3c
	jp z, Jump_006_5fa7                              ; $6ff8: $ca $a7 $5f

	ld a, $01                                        ; $6ffb: $3e $01
	ld [$d841], a                                    ; $6ffd: $ea $41 $d8
	ret                                              ; $7000: $c9


	ld hl, $9800                                     ; $7001: $21 $00 $98
	call Call_006_6ce5                               ; $7004: $cd $e5 $6c
	ldh a, [hDisp0_LCDC]                                     ; $7007: $f0 $82
	and $f7                                          ; $7009: $e6 $f7
	ldh [hDisp0_LCDC], a                                     ; $700b: $e0 $82
	ld hl, $9c00                                     ; $700d: $21 $00 $9c
	call Call_006_6ce5                               ; $7010: $cd $e5 $6c
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $7013: $cd $ef $2d
	xor a                                            ; $7016: $af
	ld [$c14b], a                                    ; $7017: $ea $4b $c1
	ld [$c14c], a                                    ; $701a: $ea $4c $c1
	call $0963                                       ; $701d: $cd $63 $09
	ld a, $01                                        ; $7020: $3e $01
	ld [$c186], a                                    ; $7022: $ea $86 $c1
	jp Jump_006_5fa7                                 ; $7025: $c3 $a7 $5f


	ld a, [$d841]                                    ; $7028: $fa $41 $d8
	rst JumpTable                                          ; $702b: $c7
	jr c, jr_006_709e                                ; $702c: $38 $70

	ld sp, hl                                        ; $702e: $f9
	ld e, a                                          ; $702f: $5f
	cp [hl]                                          ; $7030: $be
	ld [hl], b                                       ; $7031: $70
	ld sp, hl                                        ; $7032: $f9
	ld e, a                                          ; $7033: $5f
	jp z, $9570                                      ; $7034: $ca $70 $95

	ld e, a                                          ; $7037: $5f
	ldh a, [hDisp0_LCDC]                                     ; $7038: $f0 $82
	or $08                                           ; $703a: $f6 $08
	ldh [hDisp0_LCDC], a                                     ; $703c: $e0 $82
	ld hl, $9800                                     ; $703e: $21 $00 $98
	call Call_006_6ce5                               ; $7041: $cd $e5 $6c
	ld hl, $5c58                                     ; $7044: $21 $58 $5c
	call $0aab                                       ; $7047: $cd $ab $0a
	ld hl, $9886                                     ; $704a: $21 $86 $98
	ld bc, $0108                                     ; $704d: $01 $08 $01
	ld e, $a4                                        ; $7050: $1e $a4
	call $4824                                       ; $7052: $cd $24 $48
	ld hl, $9886                                     ; $7055: $21 $86 $98
	ld bc, $0108                                     ; $7058: $01 $08 $01
	ld de, $d4d3                                     ; $705b: $11 $d3 $d4
	call Call_006_484a                               ; $705e: $cd $4a $48
	ld hl, $5c64                                     ; $7061: $21 $64 $5c
	call $0aab                                       ; $7064: $cd $ab $0a
	ld hl, $98c4                                     ; $7067: $21 $c4 $98
	ld bc, $050c                                     ; $706a: $01 $0c $05
	ld e, $ac                                        ; $706d: $1e $ac
	call $4824                                       ; $706f: $cd $24 $48
	ld hl, $98c4                                     ; $7072: $21 $c4 $98
	ld bc, $050c                                     ; $7075: $01 $0c $05
	ld de, $d4d3                                     ; $7078: $11 $d3 $d4
	call Call_006_484a                               ; $707b: $cd $4a $48
	ld hl, $5c70                                     ; $707e: $21 $70 $5c
	call $0aab                                       ; $7081: $cd $ab $0a
	ld hl, $9980                                     ; $7084: $21 $80 $99
	ld bc, $0214                                     ; $7087: $01 $14 $02
	ld e, $e8                                        ; $708a: $1e $e8
	call $4824                                       ; $708c: $cd $24 $48
	ld hl, $9980                                     ; $708f: $21 $80 $99
	ld bc, $0214                                     ; $7092: $01 $14 $02
	ld de, $d4d3                                     ; $7095: $11 $d3 $d4
	call Call_006_484a                               ; $7098: $cd $4a $48
	ld bc, $667a                                     ; $709b: $01 $7a $66

jr_006_709e:
	call Call_006_470c                               ; $709e: $cd $0c $47
	call Call_006_4718                               ; $70a1: $cd $18 $47
	xor a                                            ; $70a4: $af
	call $068e                                       ; $70a5: $cd $8e $06
	ldh a, [hDisp0_LCDC]                                     ; $70a8: $f0 $82
	and $e7                                          ; $70aa: $e6 $e7
	ldh [hDisp0_LCDC], a                                     ; $70ac: $e0 $82
	ld h, $c2                                        ; $70ae: $26 $c2
	ld a, [$d846]                                    ; $70b0: $fa $46 $d8
	ld c, a                                          ; $70b3: $4f
	ld a, [$d847]                                    ; $70b4: $fa $47 $d8
	ld b, a                                          ; $70b7: $47
	call Call_006_602d                               ; $70b8: $cd $2d $60
	jp Jump_006_5fa7                                 ; $70bb: $c3 $a7 $5f


	ld h, $c2                                        ; $70be: $26 $c2
	call Call_006_6045                               ; $70c0: $cd $45 $60
	ret nz                                           ; $70c3: $c0

	call Call_006_4722                               ; $70c4: $cd $22 $47
	jp Jump_006_5fa7                                 ; $70c7: $c3 $a7 $5f


	ld h, $c2                                        ; $70ca: $26 $c2
	call $2dfc                                       ; $70cc: $cd $fc $2d
	jp Jump_006_5fa7                                 ; $70cf: $c3 $a7 $5f


	ld a, [$d841]                                    ; $70d2: $fa $41 $d8
	rst JumpTable                                          ; $70d5: $c7
	db $e4                                           ; $70d6: $e4
	ld [hl], b                                       ; $70d7: $70
	ld a, e                                          ; $70d8: $7b
	ld [hl], c                                       ; $70d9: $71
	ld sp, hl                                        ; $70da: $f9
	ld e, a                                          ; $70db: $5f
	add c                                            ; $70dc: $81
	ld [hl], c                                       ; $70dd: $71
	ld sp, hl                                        ; $70de: $f9
	ld e, a                                          ; $70df: $5f
	sub b                                            ; $70e0: $90
	ld [hl], c                                       ; $70e1: $71
	sub l                                            ; $70e2: $95
	ld e, a                                          ; $70e3: $5f
	ldh a, [hDisp0_LCDC]                                     ; $70e4: $f0 $82
	or $08                                           ; $70e6: $f6 $08
	ldh [hDisp0_LCDC], a                                     ; $70e8: $e0 $82
	call Call_006_6d62                               ; $70ea: $cd $62 $6d
	ld hl, $9800                                     ; $70ed: $21 $00 $98
	ld bc, $0ba4                                     ; $70f0: $01 $a4 $0b
	call $390d                                       ; $70f3: $cd $0d $39
	ld hl, $9960                                     ; $70f6: $21 $60 $99
	ld bc, $0714                                     ; $70f9: $01 $14 $07
	ld de, $00a3                                     ; $70fc: $11 $a3 $00

Call_006_70ff:
	rst FarCall                                          ; $70ff: $f7
	xor a                                            ; $7100: $af
	ld b, l                                          ; $7101: $45
	ld [$0021], sp                                   ; $7102: $08 $21 $00
	sbc b                                            ; $7105: $98
	ld bc, $1214                                     ; $7106: $01 $14 $12
	ld de, $0100                                     ; $7109: $11 $00 $01
	rst FarCall                                          ; $710c: $f7
	xor a                                            ; $710d: $af
	ld b, l                                          ; $710e: $45
	ld [$82f0], sp                                   ; $710f: $08 $f0 $82
	and $e7                                          ; $7112: $e6 $e7
	ldh [hDisp0_LCDC], a                                     ; $7114: $e0 $82
	ld hl, $5c7c                                     ; $7116: $21 $7c $5c
	call $0aab                                       ; $7119: $cd $ab $0a
	ld hl, $9d80                                     ; $711c: $21 $80 $9d
	ld bc, $0414                                     ; $711f: $01 $14 $04
	ld e, $50                                        ; $7122: $1e $50
	call $4824                                       ; $7124: $cd $24 $48
	ld hl, $9d80                                     ; $7127: $21 $80 $9d
	ld bc, $0414                                     ; $712a: $01 $14 $04
	ld de, $d4d3                                     ; $712d: $11 $d3 $d4
	call Call_006_484a                               ; $7130: $cd $4a $48
	ld a, $01                                        ; $7133: $3e $01
	ld [$c186], a                                    ; $7135: $ea $86 $c1
	ld bc, $0085                                     ; $7138: $01 $85 $00
	call $3a12                                       ; $713b: $cd $12 $3a
	call $397f                                       ; $713e: $cd $7f $39
	ld a, [$d842]                                    ; $7141: $fa $42 $d8
	ld hl, $5c88                                     ; $7144: $21 $88 $5c
	sla a                                            ; $7147: $cb $27
	rst AddAOntoHL                                          ; $7149: $ef
	ld a, [hl+]                                      ; $714a: $2a
	ld [$c114], a                                    ; $714b: $ea $14 $c1
	ld a, [hl]                                       ; $714e: $7e
	ld [$c117], a                                    ; $714f: $ea $17 $c1
	call $371e                                       ; $7152: $cd $1e $37
	call $388c                                       ; $7155: $cd $8c $38
	call $2ff9                                       ; $7158: $cd $f9 $2f
	ld bc, $667e                                     ; $715b: $01 $7e $66
	call $18aa                                       ; $715e: $cd $aa $18
	ld a, $e4                                        ; $7161: $3e $e4
	ldh [hDisp0_BGP], a                                     ; $7163: $e0 $85
	call Call_006_4718                               ; $7165: $cd $18 $47
	ld a, $57                                        ; $7168: $3e $57
	ld [$d84a], a                                    ; $716a: $ea $4a $d8
	ld a, $11                                        ; $716d: $3e $11
	call $068e                                       ; $716f: $cd $8e $06
	ld bc, $0258                                     ; $7172: $01 $58 $02
	call Call_006_6051                               ; $7175: $cd $51 $60
	jp Jump_006_5fa7                                 ; $7178: $c3 $a7 $5f


	call $3734                                       ; $717b: $cd $34 $37
	jp Jump_006_5fa7                                 ; $717e: $c3 $a7 $5f


	call Call_006_6058                               ; $7181: $cd $58 $60
	ret nz                                           ; $7184: $c0

	ld a, $20                                        ; $7185: $3e $20
	ld [$c2c7], a                                    ; $7187: $ea $c7 $c2
	call Call_006_4722                               ; $718a: $cd $22 $47
	jp Jump_006_5fa7                                 ; $718d: $c3 $a7 $5f


	call $3768                                       ; $7190: $cd $68 $37
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $7193: $cd $ef $2d
	xor a                                            ; $7196: $af
	call $068e                                       ; $7197: $cd $8e $06
	jp Jump_006_5fa7                                 ; $719a: $c3 $a7 $5f


	ld a, [$a1c5]                                    ; $719d: $fa $c5 $a1
	and a                                            ; $71a0: $a7
	ret nz                                           ; $71a1: $c0

	ld a, [$d042]                                    ; $71a2: $fa $42 $d0
	and a                                            ; $71a5: $a7
	jr z, jr_006_71ae                                ; $71a6: $28 $06

	ld a, [wButtonsHeld]                                    ; $71a8: $fa $23 $c1
	bit 5, a                                         ; $71ab: $cb $6f
	ret nz                                           ; $71ad: $c0

jr_006_71ae:
	ld a, c                                          ; $71ae: $79
	ld [$c0e8], a                                    ; $71af: $ea $e8 $c0
	ld a, b                                          ; $71b2: $78
	ld [$c0e9], a                                    ; $71b3: $ea $e9 $c0
	ld hl, $9800                                     ; $71b6: $21 $00 $98
	ld de, $9c00                                     ; $71b9: $11 $00 $9c
	ldh a, [hDisp0_LCDC]                                     ; $71bc: $f0 $82
	bit 3, a                                         ; $71be: $cb $5f
	call z, wSwapDEandHL                                    ; $71c0: $cc $d4 $ce
	push hl                                          ; $71c3: $e5
	push de                                          ; $71c4: $d5
	call Call_006_723e                               ; $71c5: $cd $3e $72
	ldh a, [$8e]                                     ; $71c8: $f0 $8e
	push af                                          ; $71ca: $f5
	ldh a, [hDisp0_SCY]                                     ; $71cb: $f0 $83
	push af                                          ; $71cd: $f5
	ldh a, [hDisp0_LCDC]                                     ; $71ce: $f0 $82
	push af                                          ; $71d0: $f5
	xor $08                                          ; $71d1: $ee $08
	and $ef                                          ; $71d3: $e6 $ef
	di                                               ; $71d5: $f3
	ldh [hDisp0_LCDC], a                                     ; $71d6: $e0 $82
	xor a                                            ; $71d8: $af
	ldh [hDisp0_SCY], a                                     ; $71d9: $e0 $83
	ld a, $13                                        ; $71db: $3e $13
	ldh [$8e], a                                     ; $71dd: $e0 $8e
	call Call_006_7231                               ; $71df: $cd $31 $72
	call Call_006_72dc                               ; $71e2: $cd $dc $72
	xor a                                            ; $71e5: $af
	ldh [$8e], a                                     ; $71e6: $e0 $8e
	call Call_006_7231                               ; $71e8: $cd $31 $72
	ld a, [$c0e8]                                    ; $71eb: $fa $e8 $c0
	ld c, a                                          ; $71ee: $4f
	ld a, [$c0e9]                                    ; $71ef: $fa $e9 $c0
	ld b, a                                          ; $71f2: $47
	call PlaySampledSound                                       ; $71f3: $cd $ef $27
	ld a, $13                                        ; $71f6: $3e $13
	ldh [$8e], a                                     ; $71f8: $e0 $8e
	call Call_006_7231                               ; $71fa: $cd $31 $72
	ld a, $01                                        ; $71fd: $3e $01
	ld [$d843], a                                    ; $71ff: $ea $43 $d8
	ld b, $00                                        ; $7202: $06 $00
	call Call_006_6649                               ; $7204: $cd $49 $66
	ld hl, $8a30                                     ; $7207: $21 $30 $8a
	call Call_006_7267                               ; $720a: $cd $67 $72
	pop af                                           ; $720d: $f1
	di                                               ; $720e: $f3
	ldh [hDisp0_LCDC], a                                     ; $720f: $e0 $82
	pop af                                           ; $7211: $f1
	ldh [hDisp0_SCY], a                                     ; $7212: $e0 $83
	pop af                                           ; $7214: $f1
	ldh [$8e], a                                     ; $7215: $e0 $8e
	call Call_006_7231                               ; $7217: $cd $31 $72
	pop de                                           ; $721a: $d1
	pop hl                                           ; $721b: $e1
	push hl                                          ; $721c: $e5
	push de                                          ; $721d: $d5
	res 7, h                                         ; $721e: $cb $bc
	ld b, $40                                        ; $7220: $06 $40
	ld a, [wInitialA]                                    ; $7222: $fa $00 $c1
	cp $11                                           ; $7225: $fe $11
	call z, Call_006_72e4                            ; $7227: $cc $e4 $72
	pop de                                           ; $722a: $d1
	pop hl                                           ; $722b: $e1
	ld b, $40                                        ; $722c: $06 $40
	jp Jump_006_72e4                                 ; $722e: $c3 $e4 $72


Call_006_7231:
	ld a, $01                                        ; $7231: $3e $01
	ld [$c110], a                                    ; $7233: $ea $10 $c1
	ei                                               ; $7236: $fb

jr_006_7237:
	ld a, [$c110]                                    ; $7237: $fa $10 $c1
	and a                                            ; $723a: $a7
	jr nz, jr_006_7237                               ; $723b: $20 $fa

	ret                                              ; $723d: $c9


Call_006_723e:
	push hl                                          ; $723e: $e5
	push de                                          ; $723f: $d5
	call Call_006_7271                               ; $7240: $cd $71 $72
	pop de                                           ; $7243: $d1
	push de                                          ; $7244: $d5
	ld a, e                                          ; $7245: $7b
	add $60                                          ; $7246: $c6 $60
	ld e, a                                          ; $7248: $5f
	ld a, d                                          ; $7249: $7a
	adc $01                                          ; $724a: $ce $01
	ld d, a                                          ; $724c: $57
	ld a, $e0                                        ; $724d: $3e $e0
	call Call_006_729f                               ; $724f: $cd $9f $72
	pop de                                           ; $7252: $d1
	push de                                          ; $7253: $d5
	call Call_006_72a2                               ; $7254: $cd $a2 $72
	call Call_006_7271                               ; $7257: $cd $71 $72
	pop de                                           ; $725a: $d1
	pop hl                                           ; $725b: $e1
	ld bc, $0380                                     ; $725c: $01 $80 $03
	add hl, bc                                       ; $725f: $09
	xor a                                            ; $7260: $af
	call Call_006_72a2                               ; $7261: $cd $a2 $72
	ld hl, $8df0                                     ; $7264: $21 $f0 $8d

Call_006_7267:
	ld a, $10                                        ; $7267: $3e $10
	ld e, $ff                                        ; $7269: $1e $ff
	call $165f                                       ; $726b: $cd $5f $16
	jp SafelyExecuteDataCopies                                         ; $726e: $c3 $8b $14


Call_006_7271:
	call Call_006_7277                               ; $7271: $cd $77 $72
	call Call_006_7277                               ; $7274: $cd $77 $72

Call_006_7277:
	ld a, [wInitialA]                                    ; $7277: $fa $00 $c1
	cp $11                                           ; $727a: $fe $11
	call z, Call_006_7290                            ; $727c: $cc $90 $72
	ld e, $df                                        ; $727f: $1e $df
	ld a, $14                                        ; $7281: $3e $14
	push hl                                          ; $7283: $e5
	call $165f                                       ; $7284: $cd $5f $16
	call SafelyExecuteDataCopies                                       ; $7287: $cd $8b $14
	pop hl                                           ; $728a: $e1
	ld bc, $0020                                     ; $728b: $01 $20 $00
	add hl, bc                                       ; $728e: $09
	ret                                              ; $728f: $c9


Call_006_7290:
	ld e, $00                                        ; $7290: $1e $00
	ld a, $14                                        ; $7292: $3e $14
	push hl                                          ; $7294: $e5
	res 7, h                                         ; $7295: $cb $bc
	call $165f                                       ; $7297: $cd $5f $16
	call SafelyExecuteDataCopies                                       ; $729a: $cd $8b $14
	pop hl                                           ; $729d: $e1
	ret                                              ; $729e: $c9


Call_006_729f:
	call Call_006_72a2                               ; $729f: $cd $a2 $72

Call_006_72a2:
	call Call_006_72a5                               ; $72a2: $cd $a5 $72

Call_006_72a5:
	call Call_006_72a8                               ; $72a5: $cd $a8 $72

Call_006_72a8:
	push hl                                          ; $72a8: $e5
	push de                                          ; $72a9: $d5
	push af                                          ; $72aa: $f5
	ld a, [wInitialA]                                    ; $72ab: $fa $00 $c1
	cp $11                                           ; $72ae: $fe $11
	call z, Call_006_72cf                            ; $72b0: $cc $cf $72
	ld a, $14                                        ; $72b3: $3e $14
	call EnqueueDataCopyType4FullHeader                                       ; $72b5: $cd $83 $16
	pop af                                           ; $72b8: $f1
	ld b, $14                                        ; $72b9: $06 $14

jr_006_72bb:
	ld [hl+], a                                      ; $72bb: $22
	inc a                                            ; $72bc: $3c
	dec b                                            ; $72bd: $05
	jr nz, jr_006_72bb                               ; $72be: $20 $fb

	push af                                          ; $72c0: $f5
	call SafelyExecuteDataCopies                                       ; $72c1: $cd $8b $14
	pop af                                           ; $72c4: $f1
	pop hl                                           ; $72c5: $e1
	ld bc, $0020                                     ; $72c6: $01 $20 $00
	add hl, bc                                       ; $72c9: $09
	ld e, l                                          ; $72ca: $5d
	ld d, h                                          ; $72cb: $54
	pop hl                                           ; $72cc: $e1
	add hl, bc                                       ; $72cd: $09
	ret                                              ; $72ce: $c9


Call_006_72cf:
	push hl                                          ; $72cf: $e5
	ld a, $14                                        ; $72d0: $3e $14
	res 7, h                                         ; $72d2: $cb $bc
	call $1675                                       ; $72d4: $cd $75 $16
	call SafelyExecuteDataCopies                                       ; $72d7: $cd $8b $14
	pop hl                                           ; $72da: $e1
	ret                                              ; $72db: $c9


Call_006_72dc:
	ld de, $8000                                     ; $72dc: $11 $00 $80
	ld hl, $8800                                     ; $72df: $21 $00 $88
	ld b, $50                                        ; $72e2: $06 $50

Call_006_72e4:
Jump_006_72e4:
jr_006_72e4:
	push bc                                          ; $72e4: $c5
	push hl                                          ; $72e5: $e5
	push de                                          ; $72e6: $d5
	ld a, $10                                        ; $72e7: $3e $10
	call $1675                                       ; $72e9: $cd $75 $16
	call SafelyExecuteDataCopies                                       ; $72ec: $cd $8b $14
	pop hl                                           ; $72ef: $e1
	ld bc, $0010                                     ; $72f0: $01 $10 $00
	add hl, bc                                       ; $72f3: $09
	ld e, l                                          ; $72f4: $5d
	ld d, h                                          ; $72f5: $54
	pop hl                                           ; $72f6: $e1
	add hl, bc                                       ; $72f7: $09
	pop bc                                           ; $72f8: $c1
	dec b                                            ; $72f9: $05
	jr nz, jr_006_72e4                               ; $72fa: $20 $e8

	ret                                              ; $72fc: $c9


	rst $38                                          ; $72fd: $ff
	rst $38                                          ; $72fe: $ff
	rst $38                                          ; $72ff: $ff
	rst $38                                          ; $7300: $ff
	rst $38                                          ; $7301: $ff
	rst $38                                          ; $7302: $ff
	rst $38                                          ; $7303: $ff
	rst $38                                          ; $7304: $ff
	rst $38                                          ; $7305: $ff
	rst $38                                          ; $7306: $ff
	rst $38                                          ; $7307: $ff
	rst $38                                          ; $7308: $ff
	rst $38                                          ; $7309: $ff
	rst $38                                          ; $730a: $ff
	rst $38                                          ; $730b: $ff
	rst $38                                          ; $730c: $ff
	rst $38                                          ; $730d: $ff
	rst $38                                          ; $730e: $ff
	rst $38                                          ; $730f: $ff
	rst $38                                          ; $7310: $ff
	rst $38                                          ; $7311: $ff
	rst $38                                          ; $7312: $ff
	rst $38                                          ; $7313: $ff
	rst $38                                          ; $7314: $ff
	rst $38                                          ; $7315: $ff
	rst $38                                          ; $7316: $ff
	rst $38                                          ; $7317: $ff
	rst $38                                          ; $7318: $ff
	rst $38                                          ; $7319: $ff
	rst $38                                          ; $731a: $ff
	rst $38                                          ; $731b: $ff
	rst $38                                          ; $731c: $ff
	rst $38                                          ; $731d: $ff
	rst $38                                          ; $731e: $ff
	rst $38                                          ; $731f: $ff
	rst $38                                          ; $7320: $ff
	rst $38                                          ; $7321: $ff
	rst $38                                          ; $7322: $ff
	rst $38                                          ; $7323: $ff
	rst $38                                          ; $7324: $ff
	rst $38                                          ; $7325: $ff
	rst $38                                          ; $7326: $ff
	rst $38                                          ; $7327: $ff
	rst $38                                          ; $7328: $ff
	rst $38                                          ; $7329: $ff
	rst $38                                          ; $732a: $ff
	rst $38                                          ; $732b: $ff
	rst $38                                          ; $732c: $ff
	rst $38                                          ; $732d: $ff
	rst $38                                          ; $732e: $ff
	rst $38                                          ; $732f: $ff
	rst $38                                          ; $7330: $ff
	rst $38                                          ; $7331: $ff
	rst $38                                          ; $7332: $ff
	rst $38                                          ; $7333: $ff
	rst $38                                          ; $7334: $ff
	rst $38                                          ; $7335: $ff
	rst $38                                          ; $7336: $ff
	rst $38                                          ; $7337: $ff
	rst $38                                          ; $7338: $ff
	rst $38                                          ; $7339: $ff
	rst $38                                          ; $733a: $ff
	rst $38                                          ; $733b: $ff
	rst $38                                          ; $733c: $ff
	rst $38                                          ; $733d: $ff
	rst $38                                          ; $733e: $ff
	rst $38                                          ; $733f: $ff
	rst $38                                          ; $7340: $ff
	rst $38                                          ; $7341: $ff
	rst $38                                          ; $7342: $ff
	rst $38                                          ; $7343: $ff
	rst $38                                          ; $7344: $ff
	rst $38                                          ; $7345: $ff
	rst $38                                          ; $7346: $ff
	rst $38                                          ; $7347: $ff
	rst $38                                          ; $7348: $ff
	rst $38                                          ; $7349: $ff
	rst $38                                          ; $734a: $ff
	rst $38                                          ; $734b: $ff
	rst $38                                          ; $734c: $ff
	rst $38                                          ; $734d: $ff
	rst $38                                          ; $734e: $ff
	rst $38                                          ; $734f: $ff
	rst $38                                          ; $7350: $ff
	rst $38                                          ; $7351: $ff
	rst $38                                          ; $7352: $ff
	rst $38                                          ; $7353: $ff
	rst $38                                          ; $7354: $ff
	rst $38                                          ; $7355: $ff
	rst $38                                          ; $7356: $ff
	rst $38                                          ; $7357: $ff
	rst $38                                          ; $7358: $ff
	rst $38                                          ; $7359: $ff
	rst $38                                          ; $735a: $ff
	rst $38                                          ; $735b: $ff
	rst $38                                          ; $735c: $ff
	rst $38                                          ; $735d: $ff
	rst $38                                          ; $735e: $ff
	rst $38                                          ; $735f: $ff
	rst $38                                          ; $7360: $ff
	rst $38                                          ; $7361: $ff
	rst $38                                          ; $7362: $ff
	rst $38                                          ; $7363: $ff
	rst $38                                          ; $7364: $ff
	rst $38                                          ; $7365: $ff
	rst $38                                          ; $7366: $ff
	rst $38                                          ; $7367: $ff
	rst $38                                          ; $7368: $ff
	rst $38                                          ; $7369: $ff
	rst $38                                          ; $736a: $ff
	rst $38                                          ; $736b: $ff
	rst $38                                          ; $736c: $ff
	rst $38                                          ; $736d: $ff
	rst $38                                          ; $736e: $ff
	rst $38                                          ; $736f: $ff
	rst $38                                          ; $7370: $ff
	rst $38                                          ; $7371: $ff
	rst $38                                          ; $7372: $ff
	rst $38                                          ; $7373: $ff
	rst $38                                          ; $7374: $ff
	rst $38                                          ; $7375: $ff
	rst $38                                          ; $7376: $ff
	rst $38                                          ; $7377: $ff
	rst $38                                          ; $7378: $ff
	rst $38                                          ; $7379: $ff
	rst $38                                          ; $737a: $ff
	rst $38                                          ; $737b: $ff
	rst $38                                          ; $737c: $ff
	rst $38                                          ; $737d: $ff
	rst $38                                          ; $737e: $ff
	rst $38                                          ; $737f: $ff
	rst $38                                          ; $7380: $ff
	rst $38                                          ; $7381: $ff
	rst $38                                          ; $7382: $ff
	rst $38                                          ; $7383: $ff
	rst $38                                          ; $7384: $ff
	rst $38                                          ; $7385: $ff
	rst $38                                          ; $7386: $ff
	rst $38                                          ; $7387: $ff
	rst $38                                          ; $7388: $ff
	rst $38                                          ; $7389: $ff
	rst $38                                          ; $738a: $ff
	rst $38                                          ; $738b: $ff
	rst $38                                          ; $738c: $ff
	rst $38                                          ; $738d: $ff
	rst $38                                          ; $738e: $ff
	rst $38                                          ; $738f: $ff
	rst $38                                          ; $7390: $ff
	rst $38                                          ; $7391: $ff
	rst $38                                          ; $7392: $ff
	rst $38                                          ; $7393: $ff
	rst $38                                          ; $7394: $ff
	rst $38                                          ; $7395: $ff
	rst $38                                          ; $7396: $ff
	rst $38                                          ; $7397: $ff
	rst $38                                          ; $7398: $ff
	rst $38                                          ; $7399: $ff
	rst $38                                          ; $739a: $ff
	rst $38                                          ; $739b: $ff
	rst $38                                          ; $739c: $ff
	rst $38                                          ; $739d: $ff
	rst $38                                          ; $739e: $ff
	rst $38                                          ; $739f: $ff
	rst $38                                          ; $73a0: $ff
	rst $38                                          ; $73a1: $ff
	rst $38                                          ; $73a2: $ff
	rst $38                                          ; $73a3: $ff
	rst $38                                          ; $73a4: $ff
	rst $38                                          ; $73a5: $ff
	rst $38                                          ; $73a6: $ff
	rst $38                                          ; $73a7: $ff
	rst $38                                          ; $73a8: $ff
	rst $38                                          ; $73a9: $ff
	rst $38                                          ; $73aa: $ff
	rst $38                                          ; $73ab: $ff
	rst $38                                          ; $73ac: $ff
	rst $38                                          ; $73ad: $ff
	rst $38                                          ; $73ae: $ff
	rst $38                                          ; $73af: $ff
	rst $38                                          ; $73b0: $ff
	rst $38                                          ; $73b1: $ff
	rst $38                                          ; $73b2: $ff
	rst $38                                          ; $73b3: $ff
	rst $38                                          ; $73b4: $ff
	rst $38                                          ; $73b5: $ff
	rst $38                                          ; $73b6: $ff
	rst $38                                          ; $73b7: $ff
	rst $38                                          ; $73b8: $ff
	rst $38                                          ; $73b9: $ff
	rst $38                                          ; $73ba: $ff
	rst $38                                          ; $73bb: $ff
	rst $38                                          ; $73bc: $ff
	rst $38                                          ; $73bd: $ff
	rst $38                                          ; $73be: $ff
	rst $38                                          ; $73bf: $ff
	rst $38                                          ; $73c0: $ff
	rst $38                                          ; $73c1: $ff
	rst $38                                          ; $73c2: $ff
	rst $38                                          ; $73c3: $ff
	rst $38                                          ; $73c4: $ff
	rst $38                                          ; $73c5: $ff
	rst $38                                          ; $73c6: $ff
	rst $38                                          ; $73c7: $ff
	rst $38                                          ; $73c8: $ff
	rst $38                                          ; $73c9: $ff
	rst $38                                          ; $73ca: $ff
	rst $38                                          ; $73cb: $ff
	rst $38                                          ; $73cc: $ff
	rst $38                                          ; $73cd: $ff
	rst $38                                          ; $73ce: $ff
	rst $38                                          ; $73cf: $ff
	rst $38                                          ; $73d0: $ff
	rst $38                                          ; $73d1: $ff
	rst $38                                          ; $73d2: $ff
	rst $38                                          ; $73d3: $ff
	rst $38                                          ; $73d4: $ff
	rst $38                                          ; $73d5: $ff
	rst $38                                          ; $73d6: $ff
	rst $38                                          ; $73d7: $ff
	rst $38                                          ; $73d8: $ff
	rst $38                                          ; $73d9: $ff
	rst $38                                          ; $73da: $ff
	rst $38                                          ; $73db: $ff
	rst $38                                          ; $73dc: $ff
	rst $38                                          ; $73dd: $ff
	rst $38                                          ; $73de: $ff
	rst $38                                          ; $73df: $ff
	rst $38                                          ; $73e0: $ff
	rst $38                                          ; $73e1: $ff
	rst $38                                          ; $73e2: $ff
	rst $38                                          ; $73e3: $ff
	rst $38                                          ; $73e4: $ff
	rst $38                                          ; $73e5: $ff
	rst $38                                          ; $73e6: $ff
	rst $38                                          ; $73e7: $ff
	rst $38                                          ; $73e8: $ff
	rst $38                                          ; $73e9: $ff
	rst $38                                          ; $73ea: $ff
	rst $38                                          ; $73eb: $ff
	rst $38                                          ; $73ec: $ff
	rst $38                                          ; $73ed: $ff
	rst $38                                          ; $73ee: $ff
	rst $38                                          ; $73ef: $ff
	rst $38                                          ; $73f0: $ff
	rst $38                                          ; $73f1: $ff
	rst $38                                          ; $73f2: $ff
	rst $38                                          ; $73f3: $ff
	rst $38                                          ; $73f4: $ff
	rst $38                                          ; $73f5: $ff
	rst $38                                          ; $73f6: $ff
	rst $38                                          ; $73f7: $ff
	rst $38                                          ; $73f8: $ff
	rst $38                                          ; $73f9: $ff
	rst $38                                          ; $73fa: $ff
	rst $38                                          ; $73fb: $ff
	rst $38                                          ; $73fc: $ff
	rst $38                                          ; $73fd: $ff
	rst $38                                          ; $73fe: $ff
	rst $38                                          ; $73ff: $ff
	rst $38                                          ; $7400: $ff
	rst $38                                          ; $7401: $ff
	rst $38                                          ; $7402: $ff
	rst $38                                          ; $7403: $ff
	rst $38                                          ; $7404: $ff
	rst $38                                          ; $7405: $ff
	rst $38                                          ; $7406: $ff
	rst $38                                          ; $7407: $ff
	rst $38                                          ; $7408: $ff
	rst $38                                          ; $7409: $ff
	rst $38                                          ; $740a: $ff
	rst $38                                          ; $740b: $ff
	rst $38                                          ; $740c: $ff
	rst $38                                          ; $740d: $ff
	rst $38                                          ; $740e: $ff
	rst $38                                          ; $740f: $ff
	rst $38                                          ; $7410: $ff
	rst $38                                          ; $7411: $ff
	rst $38                                          ; $7412: $ff
	rst $38                                          ; $7413: $ff
	rst $38                                          ; $7414: $ff
	rst $38                                          ; $7415: $ff
	rst $38                                          ; $7416: $ff
	rst $38                                          ; $7417: $ff
	rst $38                                          ; $7418: $ff
	rst $38                                          ; $7419: $ff
	rst $38                                          ; $741a: $ff
	rst $38                                          ; $741b: $ff
	rst $38                                          ; $741c: $ff
	rst $38                                          ; $741d: $ff
	rst $38                                          ; $741e: $ff
	rst $38                                          ; $741f: $ff
	rst $38                                          ; $7420: $ff
	rst $38                                          ; $7421: $ff
	rst $38                                          ; $7422: $ff
	rst $38                                          ; $7423: $ff
	rst $38                                          ; $7424: $ff
	rst $38                                          ; $7425: $ff
	rst $38                                          ; $7426: $ff
	rst $38                                          ; $7427: $ff
	rst $38                                          ; $7428: $ff
	rst $38                                          ; $7429: $ff
	rst $38                                          ; $742a: $ff
	rst $38                                          ; $742b: $ff
	rst $38                                          ; $742c: $ff
	rst $38                                          ; $742d: $ff
	rst $38                                          ; $742e: $ff
	rst $38                                          ; $742f: $ff
	rst $38                                          ; $7430: $ff
	rst $38                                          ; $7431: $ff
	rst $38                                          ; $7432: $ff
	rst $38                                          ; $7433: $ff
	rst $38                                          ; $7434: $ff
	rst $38                                          ; $7435: $ff
	rst $38                                          ; $7436: $ff
	rst $38                                          ; $7437: $ff
	rst $38                                          ; $7438: $ff
	rst $38                                          ; $7439: $ff
	rst $38                                          ; $743a: $ff
	rst $38                                          ; $743b: $ff
	rst $38                                          ; $743c: $ff
	rst $38                                          ; $743d: $ff
	rst $38                                          ; $743e: $ff
	rst $38                                          ; $743f: $ff
	rst $38                                          ; $7440: $ff
	rst $38                                          ; $7441: $ff
	rst $38                                          ; $7442: $ff
	rst $38                                          ; $7443: $ff
	rst $38                                          ; $7444: $ff
	rst $38                                          ; $7445: $ff
	rst $38                                          ; $7446: $ff
	rst $38                                          ; $7447: $ff
	rst $38                                          ; $7448: $ff
	rst $38                                          ; $7449: $ff
	rst $38                                          ; $744a: $ff
	rst $38                                          ; $744b: $ff
	rst $38                                          ; $744c: $ff
	rst $38                                          ; $744d: $ff
	rst $38                                          ; $744e: $ff
	rst $38                                          ; $744f: $ff
	rst $38                                          ; $7450: $ff
	rst $38                                          ; $7451: $ff
	rst $38                                          ; $7452: $ff
	rst $38                                          ; $7453: $ff
	rst $38                                          ; $7454: $ff
	rst $38                                          ; $7455: $ff
	rst $38                                          ; $7456: $ff
	rst $38                                          ; $7457: $ff
	rst $38                                          ; $7458: $ff
	rst $38                                          ; $7459: $ff
	rst $38                                          ; $745a: $ff
	rst $38                                          ; $745b: $ff
	rst $38                                          ; $745c: $ff
	rst $38                                          ; $745d: $ff
	rst $38                                          ; $745e: $ff
	rst $38                                          ; $745f: $ff
	rst $38                                          ; $7460: $ff
	rst $38                                          ; $7461: $ff
	rst $38                                          ; $7462: $ff
	rst $38                                          ; $7463: $ff
	rst $38                                          ; $7464: $ff
	rst $38                                          ; $7465: $ff
	rst $38                                          ; $7466: $ff
	rst $38                                          ; $7467: $ff
	rst $38                                          ; $7468: $ff
	rst $38                                          ; $7469: $ff
	rst $38                                          ; $746a: $ff
	rst $38                                          ; $746b: $ff
	rst $38                                          ; $746c: $ff
	rst $38                                          ; $746d: $ff
	rst $38                                          ; $746e: $ff
	rst $38                                          ; $746f: $ff
	rst $38                                          ; $7470: $ff
	rst $38                                          ; $7471: $ff
	rst $38                                          ; $7472: $ff
	rst $38                                          ; $7473: $ff
	rst $38                                          ; $7474: $ff
	rst $38                                          ; $7475: $ff
	rst $38                                          ; $7476: $ff
	rst $38                                          ; $7477: $ff
	rst $38                                          ; $7478: $ff
	rst $38                                          ; $7479: $ff
	rst $38                                          ; $747a: $ff
	rst $38                                          ; $747b: $ff
	rst $38                                          ; $747c: $ff
	rst $38                                          ; $747d: $ff
	rst $38                                          ; $747e: $ff
	rst $38                                          ; $747f: $ff
	rst $38                                          ; $7480: $ff
	rst $38                                          ; $7481: $ff
	rst $38                                          ; $7482: $ff
	rst $38                                          ; $7483: $ff
	rst $38                                          ; $7484: $ff
	rst $38                                          ; $7485: $ff
	rst $38                                          ; $7486: $ff
	rst $38                                          ; $7487: $ff
	rst $38                                          ; $7488: $ff
	rst $38                                          ; $7489: $ff
	rst $38                                          ; $748a: $ff
	rst $38                                          ; $748b: $ff
	rst $38                                          ; $748c: $ff
	rst $38                                          ; $748d: $ff
	rst $38                                          ; $748e: $ff
	rst $38                                          ; $748f: $ff
	rst $38                                          ; $7490: $ff
	rst $38                                          ; $7491: $ff
	rst $38                                          ; $7492: $ff
	rst $38                                          ; $7493: $ff
	rst $38                                          ; $7494: $ff
	rst $38                                          ; $7495: $ff
	rst $38                                          ; $7496: $ff
	rst $38                                          ; $7497: $ff
	rst $38                                          ; $7498: $ff
	rst $38                                          ; $7499: $ff
	rst $38                                          ; $749a: $ff
	rst $38                                          ; $749b: $ff
	rst $38                                          ; $749c: $ff
	rst $38                                          ; $749d: $ff
	rst $38                                          ; $749e: $ff
	rst $38                                          ; $749f: $ff
	rst $38                                          ; $74a0: $ff
	rst $38                                          ; $74a1: $ff
	rst $38                                          ; $74a2: $ff
	rst $38                                          ; $74a3: $ff
	rst $38                                          ; $74a4: $ff
	rst $38                                          ; $74a5: $ff
	rst $38                                          ; $74a6: $ff
	rst $38                                          ; $74a7: $ff
	rst $38                                          ; $74a8: $ff
	rst $38                                          ; $74a9: $ff
	rst $38                                          ; $74aa: $ff
	rst $38                                          ; $74ab: $ff
	rst $38                                          ; $74ac: $ff
	rst $38                                          ; $74ad: $ff
	rst $38                                          ; $74ae: $ff
	rst $38                                          ; $74af: $ff
	rst $38                                          ; $74b0: $ff
	rst $38                                          ; $74b1: $ff
	rst $38                                          ; $74b2: $ff
	rst $38                                          ; $74b3: $ff
	rst $38                                          ; $74b4: $ff
	rst $38                                          ; $74b5: $ff
	rst $38                                          ; $74b6: $ff
	rst $38                                          ; $74b7: $ff
	rst $38                                          ; $74b8: $ff
	rst $38                                          ; $74b9: $ff
	rst $38                                          ; $74ba: $ff
	rst $38                                          ; $74bb: $ff
	rst $38                                          ; $74bc: $ff
	rst $38                                          ; $74bd: $ff
	rst $38                                          ; $74be: $ff
	rst $38                                          ; $74bf: $ff
	rst $38                                          ; $74c0: $ff
	rst $38                                          ; $74c1: $ff
	rst $38                                          ; $74c2: $ff
	rst $38                                          ; $74c3: $ff
	rst $38                                          ; $74c4: $ff
	rst $38                                          ; $74c5: $ff
	rst $38                                          ; $74c6: $ff
	rst $38                                          ; $74c7: $ff
	rst $38                                          ; $74c8: $ff
	rst $38                                          ; $74c9: $ff
	rst $38                                          ; $74ca: $ff
	rst $38                                          ; $74cb: $ff
	rst $38                                          ; $74cc: $ff
	rst $38                                          ; $74cd: $ff
	rst $38                                          ; $74ce: $ff
	rst $38                                          ; $74cf: $ff
	rst $38                                          ; $74d0: $ff
	rst $38                                          ; $74d1: $ff
	rst $38                                          ; $74d2: $ff
	rst $38                                          ; $74d3: $ff
	rst $38                                          ; $74d4: $ff
	rst $38                                          ; $74d5: $ff
	rst $38                                          ; $74d6: $ff
	rst $38                                          ; $74d7: $ff
	rst $38                                          ; $74d8: $ff
	rst $38                                          ; $74d9: $ff
	rst $38                                          ; $74da: $ff
	rst $38                                          ; $74db: $ff
	rst $38                                          ; $74dc: $ff
	rst $38                                          ; $74dd: $ff
	rst $38                                          ; $74de: $ff
	rst $38                                          ; $74df: $ff
	rst $38                                          ; $74e0: $ff
	rst $38                                          ; $74e1: $ff
	rst $38                                          ; $74e2: $ff
	rst $38                                          ; $74e3: $ff
	rst $38                                          ; $74e4: $ff
	rst $38                                          ; $74e5: $ff
	rst $38                                          ; $74e6: $ff
	rst $38                                          ; $74e7: $ff
	rst $38                                          ; $74e8: $ff
	rst $38                                          ; $74e9: $ff
	rst $38                                          ; $74ea: $ff
	rst $38                                          ; $74eb: $ff
	rst $38                                          ; $74ec: $ff
	rst $38                                          ; $74ed: $ff
	rst $38                                          ; $74ee: $ff
	rst $38                                          ; $74ef: $ff
	rst $38                                          ; $74f0: $ff
	rst $38                                          ; $74f1: $ff
	rst $38                                          ; $74f2: $ff
	rst $38                                          ; $74f3: $ff
	rst $38                                          ; $74f4: $ff
	rst $38                                          ; $74f5: $ff
	rst $38                                          ; $74f6: $ff
	rst $38                                          ; $74f7: $ff
	rst $38                                          ; $74f8: $ff
	rst $38                                          ; $74f9: $ff
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
