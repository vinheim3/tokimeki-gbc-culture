; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $070", ROMX[$4000], BANK[$70]

	ld c, $ea                                        ; $4000: $0e $ea
	ld e, $eb                                        ; $4002: $1e $eb
	rra                                              ; $4004: $1f
	ld [hl], e                                       ; $4005: $73
	sbc [hl]                                         ; $4006: $9e
	push de                                          ; $4007: $d5
	cp $f5                                           ; $4008: $fe $f5
	sbc [hl]                                         ; $400a: $9e
	rst $38                                          ; $400b: $ff
	ld d, $fd                                        ; $400c: $16 $fd
	ld d, $ff                                        ; $400e: $16 $ff
	dec d                                            ; $4010: $15
	db $d3                                           ; $4011: $d3
	ccf                                              ; $4012: $3f
	ld a, [$bb3f]                                    ; $4013: $fa $3f $bb
	ld a, [hl]                                       ; $4016: $7e
	ld a, e                                          ; $4017: $7b
	cp $9a                                           ; $4018: $fe $9a
	rst SubAFromDE                                          ; $401a: $df
	cp $f7                                           ; $401b: $fe $f7
	jp c, Jump_070_7bb7                              ; $401d: $da $b7 $7b

	cp $93                                           ; $4020: $fe $93
	sub $fb                                          ; $4022: $d6 $fb
	jp z, $ebff                                      ; $4024: $ca $ff $eb

	db $fd                                           ; $4027: $fd
	db $ed                                           ; $4028: $ed
	rst $38                                          ; $4029: $ff
	rst AddAOntoHL                                          ; $402a: $ef
	rst $38                                          ; $402b: $ff
	cp a                                             ; $402c: $bf
	rst $38                                          ; $402d: $ff
	ld b, a                                          ; $402e: $47
	jr nz, @+$81                                     ; $402f: $20 $7f

	ld l, [hl]                                       ; $4031: $6e
	sub a                                            ; $4032: $97
	ld sp, $7e0e                                     ; $4033: $31 $0e $7e
	rra                                              ; $4036: $1f
	rst FarCall                                          ; $4037: $f7
	scf                                              ; $4038: $37
	rst SubAFromDE                                          ; $4039: $df
	ld a, a                                          ; $403a: $7f
	ld l, a                                          ; $403b: $6f
	jr nz, jr_070_407d                               ; $403c: $20 $3f

	ld h, b                                          ; $403e: $60
	ld a, a                                          ; $403f: $7f
	sbc $77                                          ; $4040: $de $77
	ld e, [hl]                                       ; $4042: $5e
	sbc l                                            ; $4043: $9d
	rst $38                                          ; $4044: $ff
	ld e, a                                          ; $4045: $5f
	inc bc                                           ; $4046: $03
	ld h, b                                          ; $4047: $60
	inc de                                           ; $4048: $13
	ld h, b                                          ; $4049: $60
	sbc h                                            ; $404a: $9c
	di                                               ; $404b: $f3
	ld e, $f5                                        ; $404c: $1e $f5
	ld a, e                                          ; $404e: $7b
	ld e, [hl]                                       ; $404f: $5e
	sbc l                                            ; $4050: $9d
	ld a, a                                          ; $4051: $7f
	sub [hl]                                         ; $4052: $96
	ccf                                              ; $4053: $3f
	add b                                            ; $4054: $80
	sbc [hl]                                         ; $4055: $9e
	ccf                                              ; $4056: $3f
	ld [hl], e                                       ; $4057: $73
	or [hl]                                          ; $4058: $b6
	sbc b                                            ; $4059: $98
	db $ed                                           ; $405a: $ed
	ld e, $77                                        ; $405b: $1e $77
	cp $bb                                           ; $405d: $fe $bb
	sbc e                                            ; $405f: $9b
	sbc l                                            ; $4060: $9d
	ld b, e                                          ; $4061: $43
	add b                                            ; $4062: $80
	sbc [hl]                                         ; $4063: $9e
	ld a, a                                          ; $4064: $7f
	ld a, d                                          ; $4065: $7a
	call z, $fe77                                    ; $4066: $cc $77 $fe
	sub a                                            ; $4069: $97
	rst SubAFromBC                                          ; $406a: $e7
	nop                                              ; $406b: $00
	db $dd                                           ; $406c: $dd
	ld a, $6e                                        ; $406d: $3e $6e
	rst $38                                          ; $406f: $ff
	ld [hl], a                                       ; $4070: $77
	scf                                              ; $4071: $37
	inc bc                                           ; $4072: $03
	add b                                            ; $4073: $80
	rra                                              ; $4074: $1f
	add b                                            ; $4075: $80
	ld a, e                                          ; $4076: $7b
	cp $9d                                           ; $4077: $fe $9d
	cp a                                             ; $4079: $bf
	sub $5f                                          ; $407a: $d6 $5f
	add b                                            ; $407c: $80

jr_070_407d:
	sub a                                            ; $407d: $97
	db $fc                                           ; $407e: $fc
	adc b                                            ; $407f: $88
	db $ec                                           ; $4080: $ec
	inc e                                            ; $4081: $1c
	or [hl]                                          ; $4082: $b6
	ld a, b                                          ; $4083: $78
	rst SubAFromDE                                          ; $4084: $df
	ldh [$6f], a                                     ; $4085: $e0 $6f
	add b                                            ; $4087: $80
	sbc b                                            ; $4088: $98
	sbc a                                            ; $4089: $9f
	nop                                              ; $408a: $00
	ld h, a                                          ; $408b: $67
	add b                                            ; $408c: $80
	cp l                                             ; $408d: $bd
	or e                                             ; $408e: $b3
	sbc [hl]                                         ; $408f: $9e
	ld d, e                                          ; $4090: $53
	add b                                            ; $4091: $80
	sbc c                                            ; $4092: $99
	ei                                               ; $4093: $fb
	cp h                                             ; $4094: $bc
	ld [hl], $4f                                     ; $4095: $36 $4f
	ld a, l                                          ; $4097: $7d
	inc bc                                           ; $4098: $03
	ld l, a                                          ; $4099: $6f
	add b                                            ; $409a: $80
	ld [hl], a                                       ; $409b: $77
	cp $97                                           ; $409c: $fe $97
	db $e3                                           ; $409e: $e3
	nop                                              ; $409f: $00
	ld l, l                                          ; $40a0: $6d
	ld [hl], e                                       ; $40a1: $73
	cp a                                             ; $40a2: $bf
	ld e, $5f                                        ; $40a3: $1e $5f
	nop                                              ; $40a5: $00
	inc bc                                           ; $40a6: $03
	add b                                            ; $40a7: $80
	ld h, e                                          ; $40a8: $63
	add b                                            ; $40a9: $80
	sbc c                                            ; $40aa: $99
	db $fc                                           ; $40ab: $fc
	ld l, h                                          ; $40ac: $6c
	cp $4e                                           ; $40ad: $fe $4e
	ld a, [$5f8e]                                    ; $40af: $fa $8e $5f
	add b                                            ; $40b2: $80
	adc [hl]                                         ; $40b3: $8e
	rst $38                                          ; $40b4: $ff
	sub [hl]                                         ; $40b5: $96
	dec sp                                           ; $40b6: $3b
	nop                                              ; $40b7: $00
	ld e, l                                          ; $40b8: $5d
	ld h, b                                          ; $40b9: $60
	ld a, b                                          ; $40ba: $78
	jr nz, jr_070_40bd                               ; $40bb: $20 $00

jr_070_40bd:
	nop                                              ; $40bd: $00
	add h                                            ; $40be: $84
	ld c, b                                          ; $40bf: $48
	ld a, b                                          ; $40c0: $78
	jr nc, jr_070_40c3                               ; $40c1: $30 $00

jr_070_40c3:
	nop                                              ; $40c3: $00
	db $10                                           ; $40c4: $10
	ld a, e                                          ; $40c5: $7b
	or $ff                                           ; $40c6: $f6 $ff
	sub e                                            ; $40c8: $93
	inc bc                                           ; $40c9: $03
	nop                                              ; $40ca: $00
	dec de                                           ; $40cb: $1b
	add a                                            ; $40cc: $87
	rst $38                                          ; $40cd: $ff
	rst $38                                          ; $40ce: $ff
	rst AddAOntoHL                                          ; $40cf: $ef
	ld b, c                                          ; $40d0: $41
	jp $c040                                         ; $40d1: $c3 $40 $c0


	ret nz                                           ; $40d4: $c0

	ld h, a                                          ; $40d5: $67
	ldh [$9d], a                                     ; $40d6: $e0 $9d
	db $fc                                           ; $40d8: $fc
	ld a, b                                          ; $40d9: $78
	inc bc                                           ; $40da: $03
	ldh [$73], a                                     ; $40db: $e0 $73
	sbc $7b                                          ; $40dd: $de $7b
	db $fd                                           ; $40df: $fd
	dec hl                                           ; $40e0: $2b
	ldh [$9a], a                                     ; $40e1: $e0 $9a
	ld a, h                                          ; $40e3: $7c
	ld a, b                                          ; $40e4: $78
	jr c, jr_070_415f                                ; $40e5: $38 $78

	db $10                                           ; $40e7: $10
	ld [hl], e                                       ; $40e8: $73
	sbc $57                                          ; $40e9: $de $57
	ldh [$a3], a                                     ; $40eb: $e0 $a3
	ld bc, $ae80                                     ; $40ed: $01 $80 $ae
	sbc e                                            ; $40f0: $9b
	ld a, l                                          ; $40f1: $7d
	ld [hl], $df                                     ; $40f2: $36 $df
	ld [hl], h                                       ; $40f4: $74
	halt                                             ; $40f5: $76
	call c, $8cfa                                    ; $40f6: $dc $fa $8c
	db $fc                                           ; $40f9: $fc
	cp h                                             ; $40fa: $bc
	ld c, b                                          ; $40fb: $48
	db $fc                                           ; $40fc: $fc
	cp [hl]                                          ; $40fd: $be
	ret nz                                           ; $40fe: $c0

	db $ed                                           ; $40ff: $ed
	ld e, $1e                                        ; $4100: $1e $1e
	ccf                                              ; $4102: $3f
	inc sp                                           ; $4103: $33
	ld [hl], e                                       ; $4104: $73
	ld h, a                                          ; $4105: $67
	rst SubAFromBC                                          ; $4106: $e7
	cp a                                             ; $4107: $bf
	ld e, a                                          ; $4108: $5f
	dec d                                            ; $4109: $15
	sbc a                                            ; $410a: $9f
	sbc e                                            ; $410b: $9b
	sub d                                            ; $410c: $92
	sbc h                                            ; $410d: $9c
	add b                                            ; $410e: $80
	adc [hl]                                         ; $410f: $8e
	di                                               ; $4110: $f3
	adc h                                            ; $4111: $8c
	cp a                                             ; $4112: $bf
	ret nz                                           ; $4113: $c0

	cp a                                             ; $4114: $bf
	ret nz                                           ; $4115: $c0

	ld a, a                                          ; $4116: $7f
	ld b, b                                          ; $4117: $40
	ld e, a                                          ; $4118: $5f
	ld h, b                                          ; $4119: $60
	ccf                                              ; $411a: $3f
	jr nz, jr_070_413c                               ; $411b: $20 $1f

	inc e                                            ; $411d: $1c
	cpl                                              ; $411e: $2f
	inc a                                            ; $411f: $3c
	ld a, e                                          ; $4120: $7b
	ld a, h                                          ; $4121: $7c
	push af                                          ; $4122: $f5
	or $a2                                           ; $4123: $f6 $a2
	db $e3                                           ; $4125: $e3
	pop bc                                           ; $4126: $c1
	pop bc                                           ; $4127: $c1
	add b                                            ; $4128: $80
	add b                                            ; $4129: $80
	ld bc, $0301                                     ; $412a: $01 $01 $03
	ld [bc], a                                       ; $412d: $02
	sub b                                            ; $412e: $90
	ccf                                              ; $412f: $3f
	inc a                                            ; $4130: $3c
	ldh a, [$a0]                                     ; $4131: $f0 $a0
	ldh a, [$a0]                                     ; $4133: $f0 $a0
	ldh [$a0], a                                     ; $4135: $e0 $a0
	and b                                            ; $4137: $a0
	ldh [$f0], a                                     ; $4138: $e0 $f0
	ld h, b                                          ; $413a: $60
	ld [hl], b                                       ; $413b: $70

jr_070_413c:
	jr nc, jr_070_4177                               ; $413c: $30 $39

	db $fc                                           ; $413e: $fc
	sbc h                                            ; $413f: $9c
	add b                                            ; $4140: $80
	nop                                              ; $4141: $00
	add c                                            ; $4142: $81
	ld [hl], e                                       ; $4143: $73
	cp $fd                                           ; $4144: $fe $fd
	add b                                            ; $4146: $80
	stop                                             ; $4147: $10 $00
	ld a, [$7b53]                                    ; $4149: $fa $53 $7b
	ld d, a                                          ; $414c: $57
	ld e, [hl]                                       ; $414d: $5e
	ld [hl], a                                       ; $414e: $77
	ld a, a                                          ; $414f: $7f
	ld [hl], h                                       ; $4150: $74
	rst SubAFromHL                                          ; $4151: $d7
	ld a, h                                          ; $4152: $7c
	ld a, a                                          ; $4153: $7f
	sbc $e9                                          ; $4154: $de $e9
	cp a                                             ; $4156: $bf
	ld e, $61                                        ; $4157: $1e $61
	ld a, a                                          ; $4159: $7f
	nop                                              ; $415a: $00
	db $dd                                           ; $415b: $dd
	ld a, $be                                        ; $415c: $3e $be
	ld a, a                                          ; $415e: $7f

jr_070_415f:
	db $d3                                           ; $415f: $d3
	ld [hl], e                                       ; $4160: $73
	and a                                            ; $4161: $a7
	daa                                              ; $4162: $27

jr_070_4163:
	cp l                                             ; $4163: $bd
	ccf                                              ; $4164: $3f
	dec l                                            ; $4165: $2d
	sub e                                            ; $4166: $93
	ccf                                              ; $4167: $3f
	daa                                              ; $4168: $27
	add hl, sp                                       ; $4169: $39
	dec sp                                           ; $416a: $3b
	ld [de], a                                       ; $416b: $12
	rra                                              ; $416c: $1f
	inc c                                            ; $416d: $0c
	rlca                                             ; $416e: $07
	nop                                              ; $416f: $00
	rrca                                             ; $4170: $0f
	nop                                              ; $4171: $00
	rra                                              ; $4172: $1f
	ld [hl], e                                       ; $4173: $73
	cp $80                                           ; $4174: $fe $80
	ccf                                              ; $4176: $3f

jr_070_4177:
	ld bc, $073f                                     ; $4177: $01 $3f $07
	rst $38                                          ; $417a: $ff
	rra                                              ; $417b: $1f
	rst $38                                          ; $417c: $ff
	ld a, l                                          ; $417d: $7d
	rst $38                                          ; $417e: $ff
	ld sp, hl                                        ; $417f: $f9
	rst $38                                          ; $4180: $ff
	pop af                                           ; $4181: $f1
	rst $38                                          ; $4182: $ff
	jp $07fe                                         ; $4183: $c3 $fe $07


	db $fc                                           ; $4186: $fc
	rrca                                             ; $4187: $0f
	ld b, d                                          ; $4188: $42
	ret nz                                           ; $4189: $c0

	ld hl, $a1e0                                     ; $418a: $21 $e0 $a1
	ldh [$d1], a                                     ; $418d: $e0 $d1
	ldh a, [$d1]                                     ; $418f: $f0 $d1
	ld [hl], b                                       ; $4191: $70
	reti                                             ; $4192: $d9


	ld a, c                                          ; $4193: $79
	reti                                             ; $4194: $d9


	add b                                            ; $4195: $80
	ld a, c                                          ; $4196: $79
	db $fc                                           ; $4197: $fc
	db $ec                                           ; $4198: $ec
	cp $4e                                           ; $4199: $fe $4e
	ld a, [$ea0e]                                    ; $419b: $fa $0e $ea
	ld e, $6b                                        ; $419e: $1e $6b
	sbc a                                            ; $41a0: $9f
	di                                               ; $41a1: $f3
	sbc $f5                                          ; $41a2: $de $f5
	sbc [hl]                                         ; $41a4: $9e
	push af                                          ; $41a5: $f5
	ld e, $ff                                        ; $41a6: $1e $ff
	ld d, $fd                                        ; $41a8: $16 $fd
	ld d, $ff                                        ; $41aa: $16 $ff
	dec d                                            ; $41ac: $15
	db $d3                                           ; $41ad: $d3
	ccf                                              ; $41ae: $3f
	ld a, [$bb3f]                                    ; $41af: $fa $3f $bb
	ld a, [hl]                                       ; $41b2: $7e
	ld a, e                                          ; $41b3: $7b
	cp $9a                                           ; $41b4: $fe $9a
	rst SubAFromDE                                          ; $41b6: $df
	cp $f7                                           ; $41b7: $fe $f7
	jp c, Jump_070_7bb7                              ; $41b9: $da $b7 $7b

	cp $93                                           ; $41bc: $fe $93
	sub $fb                                          ; $41be: $d6 $fb
	jp z, $ebff                                      ; $41c0: $ca $ff $eb

	db $fd                                           ; $41c3: $fd
	db $ed                                           ; $41c4: $ed
	rst $38                                          ; $41c5: $ff
	rst AddAOntoHL                                          ; $41c6: $ef
	rst $38                                          ; $41c7: $ff
	cp a                                             ; $41c8: $bf
	rst $38                                          ; $41c9: $ff
	ld b, a                                          ; $41ca: $47
	jr nz, jr_070_4163                               ; $41cb: $20 $96

	rst $38                                          ; $41cd: $ff
	nop                                              ; $41ce: $00
	dec a                                            ; $41cf: $3d
	ld e, $7e                                        ; $41d0: $1e $7e
	ccf                                              ; $41d2: $3f
	di                                               ; $41d3: $f3
	ld [hl], e                                       ; $41d4: $73
	sbc a                                            ; $41d5: $9f
	ld l, e                                          ; $41d6: $6b
	jr nz, jr_070_4218                               ; $41d7: $20 $3f

	ld h, b                                          ; $41d9: $60
	sbc l                                            ; $41da: $9d
	db $e3                                           ; $41db: $e3
	inc e                                            ; $41dc: $1c
	ld [hl], a                                       ; $41dd: $77
	ld e, [hl]                                       ; $41de: $5e
	sbc l                                            ; $41df: $9d
	rst SubAFromBC                                          ; $41e0: $e7
	ld h, a                                          ; $41e1: $67
	inc bc                                           ; $41e2: $03
	ld h, b                                          ; $41e3: $60
	dec de                                           ; $41e4: $1b
	ld h, b                                          ; $41e5: $60
	sbc c                                            ; $41e6: $99
	db $eb                                           ; $41e7: $eb
	rra                                              ; $41e8: $1f
	ld [hl], e                                       ; $41e9: $73
	sbc [hl]                                         ; $41ea: $9e
	push af                                          ; $41eb: $f5
	sbc $77                                          ; $41ec: $de $77
	ld h, b                                          ; $41ee: $60
	ccf                                              ; $41ef: $3f
	add b                                            ; $41f0: $80
	sbc [hl]                                         ; $41f1: $9e
	ccf                                              ; $41f2: $3f
	ld [hl], e                                       ; $41f3: $73
	or [hl]                                          ; $41f4: $b6
	ld a, [hl]                                       ; $41f5: $7e
	sbc b                                            ; $41f6: $98
	sbc d                                            ; $41f7: $9a
	ld [hl], a                                       ; $41f8: $77
	cp $bb                                           ; $41f9: $fe $bb
	sbc e                                            ; $41fb: $9b
	sbc l                                            ; $41fc: $9d
	dec sp                                           ; $41fd: $3b
	add b                                            ; $41fe: $80
	ld a, a                                          ; $41ff: $7f
	sbc $77                                          ; $4200: $de $77
	cp $9e                                           ; $4202: $fe $9e
	rst SubAFromBC                                          ; $4204: $e7
	ld a, d                                          ; $4205: $7a
	ret c                                            ; $4206: $d8

	sub a                                            ; $4207: $97
	ld l, [hl]                                       ; $4208: $6e
	rst $38                                          ; $4209: $ff
	ld [hl], a                                       ; $420a: $77
	scf                                              ; $420b: $37
	ccf                                              ; $420c: $3f
	inc e                                            ; $420d: $1c
	rra                                              ; $420e: $1f
	nop                                              ; $420f: $00
	inc bc                                           ; $4210: $03
	add b                                            ; $4211: $80
	dec sp                                           ; $4212: $3b
	add b                                            ; $4213: $80
	sbc h                                            ; $4214: $9c
	di                                               ; $4215: $f3
	ld e, $f5                                        ; $4216: $1e $f5

jr_070_4218:
	ld a, e                                          ; $4218: $7b
	cp $9d                                           ; $4219: $fe $9d
	cp a                                             ; $421b: $bf
	sub $5f                                          ; $421c: $d6 $5f
	add b                                            ; $421e: $80
	sub a                                            ; $421f: $97
	call z, $bcb8                                    ; $4220: $cc $b8 $bc
	ld a, h                                          ; $4223: $7c
	ld e, [hl]                                       ; $4224: $5e
	ldh [rIE], a                                     ; $4225: $e0 $ff
	add b                                            ; $4227: $80
	ld l, a                                          ; $4228: $6f
	add b                                            ; $4229: $80
	sbc b                                            ; $422a: $98
	sbc a                                            ; $422b: $9f
	nop                                              ; $422c: $00
	ld h, a                                          ; $422d: $67
	add b                                            ; $422e: $80
	cp l                                             ; $422f: $bd
	or e                                             ; $4230: $b3
	sbc [hl]                                         ; $4231: $9e
	ld e, e                                          ; $4232: $5b
	add b                                            ; $4233: $80
	sbc c                                            ; $4234: $99
	ld a, e                                          ; $4235: $7b
	call z, $beff                                    ; $4236: $cc $ff $be
	dec e                                            ; $4239: $1d
	ld h, e                                          ; $423a: $63
	ld h, a                                          ; $423b: $67
	add b                                            ; $423c: $80
	ld [hl], a                                       ; $423d: $77
	cp $99                                           ; $423e: $fe $99
	db $e3                                           ; $4240: $e3
	nop                                              ; $4241: $00
	ld l, l                                          ; $4242: $6d
	ld [hl], e                                       ; $4243: $73
	ccf                                              ; $4244: $3f
	ld e, $03                                        ; $4245: $1e $03
	add b                                            ; $4247: $80
	ld d, a                                          ; $4248: $57
	add b                                            ; $4249: $80
	sbc h                                            ; $424a: $9c
	ld l, h                                          ; $424b: $6c
	cp $ce                                           ; $424c: $fe $ce
	ld d, a                                          ; $424e: $57
	add b                                            ; $424f: $80
	sub c                                            ; $4250: $91
	rst $38                                          ; $4251: $ff
	sub [hl]                                         ; $4252: $96
	jr c, jr_070_4255                                ; $4253: $38 $00

jr_070_4255:
	ld e, h                                          ; $4255: $5c
	ld h, b                                          ; $4256: $60
	ld a, b                                          ; $4257: $78
	jr nz, jr_070_425a                               ; $4258: $20 $00

jr_070_425a:
	nop                                              ; $425a: $00
	call nz, Call_070_7888                           ; $425b: $c4 $88 $78
	ld [hl], b                                       ; $425e: $70

Jump_070_425f:
	ld a, c                                          ; $425f: $79
	ldh a, [$7b]                                     ; $4260: $f0 $7b
	or $ff                                           ; $4262: $f6 $ff
	sub e                                            ; $4264: $93
	inc bc                                           ; $4265: $03
	nop                                              ; $4266: $00
	dec de                                           ; $4267: $1b
	add a                                            ; $4268: $87
	rst $38                                          ; $4269: $ff
	rst $38                                          ; $426a: $ff
	rst AddAOntoHL                                          ; $426b: $ef
	ld b, c                                          ; $426c: $41
	jp $c040                                         ; $426d: $c3 $40 $c0


	ret nz                                           ; $4270: $c0

	ld h, a                                          ; $4271: $67
	ldh [$9d], a                                     ; $4272: $e0 $9d
	db $fc                                           ; $4274: $fc
	ld hl, sp+$0f                                    ; $4275: $f8 $0f
	ldh [$9d], a                                     ; $4277: $e0 $9d
	ld a, h                                          ; $4279: $7c
	ld hl, sp-$22                                    ; $427a: $f8 $de
	ld a, b                                          ; $427c: $78
	sbc h                                            ; $427d: $9c
	jr nc, jr_070_4280                               ; $427e: $30 $00

jr_070_4280:
	nop                                              ; $4280: $00
	ld a, e                                          ; $4281: $7b
	db $fd                                           ; $4282: $fd
	dec hl                                           ; $4283: $2b
	ldh [$9a], a                                     ; $4284: $e0 $9a
	ld a, h                                          ; $4286: $7c
	ld a, b                                          ; $4287: $78
	inc a                                            ; $4288: $3c
	ld a, b                                          ; $4289: $78
	jr c, jr_070_42ff                                ; $428a: $38 $73

	sbc $57                                          ; $428c: $de $57
	ldh [hDisp1_WX], a                                     ; $428e: $e0 $96
	ld bc, $ae80                                     ; $4290: $01 $80 $ae
	sbc e                                            ; $4293: $9b
	ld a, l                                          ; $4294: $7d
	ld [hl], $df                                     ; $4295: $36 $df
	ld [hl], h                                       ; $4297: $74
	halt                                             ; $4298: $76
	call c, $8cfa                                    ; $4299: $dc $fa $8c
	call z, $7cb8                                    ; $429c: $cc $b8 $7c
	db $fc                                           ; $429f: $fc
	cp [hl]                                          ; $42a0: $be
	ret nz                                           ; $42a1: $c0

	db $ed                                           ; $42a2: $ed
	ld e, $1e                                        ; $42a3: $1e $1e
	ccf                                              ; $42a5: $3f
	ld [hl], e                                       ; $42a6: $73
	di                                               ; $42a7: $f3
	and a                                            ; $42a8: $a7
	ld b, a                                          ; $42a9: $47
	sbc a                                            ; $42aa: $9f
	rra                                              ; $42ab: $1f
	dec d                                            ; $42ac: $15
	sbc a                                            ; $42ad: $9f
	sbc e                                            ; $42ae: $9b
	sub d                                            ; $42af: $92
	sbc h                                            ; $42b0: $9c
	add b                                            ; $42b1: $80
	adc [hl]                                         ; $42b2: $8e
	di                                               ; $42b3: $f3
	adc h                                            ; $42b4: $8c
	cp a                                             ; $42b5: $bf
	ret nz                                           ; $42b6: $c0

	cp a                                             ; $42b7: $bf
	ret nz                                           ; $42b8: $c0

	ld a, a                                          ; $42b9: $7f
	ld b, b                                          ; $42ba: $40
	ld e, a                                          ; $42bb: $5f
	ld h, b                                          ; $42bc: $60
	ccf                                              ; $42bd: $3f
	jr nz, jr_070_42df                               ; $42be: $20 $1f

	inc e                                            ; $42c0: $1c
	cpl                                              ; $42c1: $2f
	inc a                                            ; $42c2: $3c
	ld a, e                                          ; $42c3: $7b
	ld a, h                                          ; $42c4: $7c
	push af                                          ; $42c5: $f5
	or $a2                                           ; $42c6: $f6 $a2
	db $e3                                           ; $42c8: $e3
	pop bc                                           ; $42c9: $c1
	pop bc                                           ; $42ca: $c1
	add b                                            ; $42cb: $80
	add b                                            ; $42cc: $80
	ld bc, $0301                                     ; $42cd: $01 $01 $03
	ld [bc], a                                       ; $42d0: $02
	sub b                                            ; $42d1: $90
	ccf                                              ; $42d2: $3f
	inc a                                            ; $42d3: $3c
	ldh a, [$a0]                                     ; $42d4: $f0 $a0
	ldh a, [$a0]                                     ; $42d6: $f0 $a0
	ldh [$a0], a                                     ; $42d8: $e0 $a0
	and b                                            ; $42da: $a0
	ldh [$f0], a                                     ; $42db: $e0 $f0
	ld h, b                                          ; $42dd: $60
	ld [hl], b                                       ; $42de: $70

jr_070_42df:
	jr nc, jr_070_431a                               ; $42df: $30 $39

	db $fc                                           ; $42e1: $fc
	sbc h                                            ; $42e2: $9c
	add b                                            ; $42e3: $80
	nop                                              ; $42e4: $00
	add c                                            ; $42e5: $81
	ld [hl], e                                       ; $42e6: $73
	cp $fd                                           ; $42e7: $fe $fd
	add b                                            ; $42e9: $80
	stop                                             ; $42ea: $10 $00
	ld a, [$7b53]                                    ; $42ec: $fa $53 $7b
	ld d, a                                          ; $42ef: $57
	ld e, [hl]                                       ; $42f0: $5e
	ld [hl], a                                       ; $42f1: $77
	ld a, a                                          ; $42f2: $7f
	ld [hl], h                                       ; $42f3: $74
	rst SubAFromHL                                          ; $42f4: $d7
	ld a, h                                          ; $42f5: $7c
	ld a, e                                          ; $42f6: $7b
	call z, $bfff                                    ; $42f7: $cc $ff $bf
	inc e                                            ; $42fa: $1c
	ld h, e                                          ; $42fb: $63
	ld a, a                                          ; $42fc: $7f
	nop                                              ; $42fd: $00
	db $e3                                           ; $42fe: $e3

jr_070_42ff:
	inc e                                            ; $42ff: $1c
	cp [hl]                                          ; $4300: $be
	ld a, a                                          ; $4301: $7f
	db $d3                                           ; $4302: $d3
	ld [hl], e                                       ; $4303: $73
	and a                                            ; $4304: $a7

jr_070_4305:
	daa                                              ; $4305: $27
	cp l                                             ; $4306: $bd
	ccf                                              ; $4307: $3f
	dec l                                            ; $4308: $2d
	sub e                                            ; $4309: $93
	ccf                                              ; $430a: $3f
	daa                                              ; $430b: $27
	add hl, sp                                       ; $430c: $39
	dec sp                                           ; $430d: $3b
	ld [de], a                                       ; $430e: $12
	rra                                              ; $430f: $1f
	inc c                                            ; $4310: $0c
	rlca                                             ; $4311: $07
	nop                                              ; $4312: $00
	rrca                                             ; $4313: $0f
	nop                                              ; $4314: $00
	rra                                              ; $4315: $1f
	ld [hl], e                                       ; $4316: $73
	cp $80                                           ; $4317: $fe $80
	ccf                                              ; $4319: $3f

jr_070_431a:
	ld bc, $073f                                     ; $431a: $01 $3f $07
	rst $38                                          ; $431d: $ff
	rra                                              ; $431e: $1f
	rst $38                                          ; $431f: $ff
	ld a, l                                          ; $4320: $7d
	rst $38                                          ; $4321: $ff
	ld sp, hl                                        ; $4322: $f9
	rst $38                                          ; $4323: $ff
	pop af                                           ; $4324: $f1
	rst $38                                          ; $4325: $ff
	jp $07fe                                         ; $4326: $c3 $fe $07


	db $fc                                           ; $4329: $fc
	rrca                                             ; $432a: $0f
	ld b, d                                          ; $432b: $42
	ret nz                                           ; $432c: $c0

	ld hl, $a1e0                                     ; $432d: $21 $e0 $a1
	ldh [$d1], a                                     ; $4330: $e0 $d1
	ldh a, [$d1]                                     ; $4332: $f0 $d1
	ld [hl], b                                       ; $4334: $70
	reti                                             ; $4335: $d9


	ld a, c                                          ; $4336: $79
	reti                                             ; $4337: $d9


	add b                                            ; $4338: $80
	ld a, c                                          ; $4339: $79
	db $fc                                           ; $433a: $fc
	db $ec                                           ; $433b: $ec
	cp $4e                                           ; $433c: $fe $4e
	ld a, [$ea0e]                                    ; $433e: $fa $0e $ea
	ld e, $6b                                        ; $4341: $1e $6b
	sbc a                                            ; $4343: $9f
	di                                               ; $4344: $f3
	sbc [hl]                                         ; $4345: $9e
	push af                                          ; $4346: $f5
	sbc $f5                                          ; $4347: $de $f5
	ld e, $ff                                        ; $4349: $1e $ff
	ld d, $fd                                        ; $434b: $16 $fd
	ld d, $ff                                        ; $434d: $16 $ff
	dec d                                            ; $434f: $15
	db $d3                                           ; $4350: $d3
	ccf                                              ; $4351: $3f
	ld a, [$bb3f]                                    ; $4352: $fa $3f $bb
	ld a, [hl]                                       ; $4355: $7e
	ld a, e                                          ; $4356: $7b
	cp $9a                                           ; $4357: $fe $9a
	rst SubAFromDE                                          ; $4359: $df
	cp $f7                                           ; $435a: $fe $f7
	jp c, Jump_070_7bb7                              ; $435c: $da $b7 $7b

	cp $93                                           ; $435f: $fe $93
	sub $fb                                          ; $4361: $d6 $fb
	jp z, $ebff                                      ; $4363: $ca $ff $eb

	db $fd                                           ; $4366: $fd
	db $ed                                           ; $4367: $ed
	rst $38                                          ; $4368: $ff
	rst AddAOntoHL                                          ; $4369: $ef
	rst $38                                          ; $436a: $ff
	cp a                                             ; $436b: $bf
	rst $38                                          ; $436c: $ff
	ld b, a                                          ; $436d: $47
	jr nz, jr_070_4305                               ; $436e: $20 $95

	rst $38                                          ; $4370: $ff
	nop                                              ; $4371: $00
	ccf                                              ; $4372: $3f
	nop                                              ; $4373: $00
	ld e, a                                          ; $4374: $5f
	ld a, $b7                                        ; $4375: $3e $b7
	ld [hl], a                                       ; $4377: $77
	rst $38                                          ; $4378: $ff
	ld a, a                                          ; $4379: $7f
	ld l, a                                          ; $437a: $6f
	jr nz, jr_070_43bc                               ; $437b: $20 $3f

	ld h, b                                          ; $437d: $60
	ld a, a                                          ; $437e: $7f
	sbc $7f                                          ; $437f: $de $7f
	ld e, [hl]                                       ; $4381: $5e
	sbc e                                            ; $4382: $9b
	cp a                                             ; $4383: $bf
	ld a, [hl]                                       ; $4384: $7e
	rst SubAFromBC                                          ; $4385: $e7
	ld h, a                                          ; $4386: $67
	inc bc                                           ; $4387: $03
	ld h, b                                          ; $4388: $60
	dec de                                           ; $4389: $1b
	ld h, b                                          ; $438a: $60
	sub l                                            ; $438b: $95
	db $eb                                           ; $438c: $eb
	rra                                              ; $438d: $1f
	di                                               ; $438e: $f3
	ld e, $b5                                        ; $438f: $1e $b5
	sbc $f5                                          ; $4391: $de $f5
	sbc $ff                                          ; $4393: $de $ff
	ld d, $37                                        ; $4395: $16 $37
	add b                                            ; $4397: $80
	ld [hl], a                                       ; $4398: $77
	or [hl]                                          ; $4399: $b6
	ld a, [hl]                                       ; $439a: $7e
	sbc b                                            ; $439b: $98
	sbc d                                            ; $439c: $9a
	ld [hl], a                                       ; $439d: $77
	cp $bb                                           ; $439e: $fe $bb
	sbc e                                            ; $43a0: $9b
	sbc l                                            ; $43a1: $9d
	inc sp                                           ; $43a2: $33
	add b                                            ; $43a3: $80
	ld [hl], a                                       ; $43a4: $77
	cp $93                                           ; $43a5: $fe $93
	rst SubAFromBC                                          ; $43a7: $e7
	nop                                              ; $43a8: $00
	db $dd                                           ; $43a9: $dd
	ld a, $6e                                        ; $43aa: $3e $6e
	rst $38                                          ; $43ac: $ff
	ld [hl], a                                       ; $43ad: $77
	scf                                              ; $43ae: $37
	ccf                                              ; $43af: $3f
	inc e                                            ; $43b0: $1c
	rra                                              ; $43b1: $1f
	nop                                              ; $43b2: $00
	inc bc                                           ; $43b3: $03
	add b                                            ; $43b4: $80
	inc sp                                           ; $43b5: $33
	add b                                            ; $43b6: $80
	ld a, [hl]                                       ; $43b7: $7e
	ldh [c], a                                       ; $43b8: $e2
	ld a, a                                          ; $43b9: $7f
	cp $9d                                           ; $43ba: $fe $9d

jr_070_43bc:
	cp a                                             ; $43bc: $bf
	sub $57                                          ; $43bd: $d6 $57
	add b                                            ; $43bf: $80
	sbc c                                            ; $43c0: $99
	cp h                                             ; $43c1: $bc
	ld a, h                                          ; $43c2: $7c
	ld e, [hl]                                       ; $43c3: $5e
	ldh [rIE], a                                     ; $43c4: $e0 $ff
	add b                                            ; $43c6: $80
	ld l, a                                          ; $43c7: $6f
	add b                                            ; $43c8: $80
	sbc b                                            ; $43c9: $98
	sbc a                                            ; $43ca: $9f
	nop                                              ; $43cb: $00
	ld h, a                                          ; $43cc: $67
	add b                                            ; $43cd: $80
	cp l                                             ; $43ce: $bd
	or e                                             ; $43cf: $b3
	sbc [hl]                                         ; $43d0: $9e
	ld c, a                                          ; $43d1: $4f
	add b                                            ; $43d2: $80
	sbc l                                            ; $43d3: $9d
	cp [hl]                                          ; $43d4: $be
	dec e                                            ; $43d5: $1d
	ld h, e                                          ; $43d6: $63
	add b                                            ; $43d7: $80
	ld [hl], a                                       ; $43d8: $77
	cp $99                                           ; $43d9: $fe $99
	db $e3                                           ; $43db: $e3
	nop                                              ; $43dc: $00
	ld l, l                                          ; $43dd: $6d
	ld [hl], e                                       ; $43de: $73
	ccf                                              ; $43df: $3f
	ld e, $03                                        ; $43e0: $1e $03
	add b                                            ; $43e2: $80
	ld d, a                                          ; $43e3: $57
	add b                                            ; $43e4: $80
	sbc h                                            ; $43e5: $9c
	ld l, h                                          ; $43e6: $6c
	cp $ce                                           ; $43e7: $fe $ce
	ld d, a                                          ; $43e9: $57
	add b                                            ; $43ea: $80
	sub c                                            ; $43eb: $91
	rst $38                                          ; $43ec: $ff
	sub [hl]                                         ; $43ed: $96
	jr c, jr_070_43f0                                ; $43ee: $38 $00

jr_070_43f0:
	ld e, h                                          ; $43f0: $5c
	ld h, b                                          ; $43f1: $60
	ld a, b                                          ; $43f2: $78
	jr nz, jr_070_43f5                               ; $43f3: $20 $00

jr_070_43f5:
	nop                                              ; $43f5: $00
	ld c, h                                          ; $43f6: $4c
	ret z                                            ; $43f7: $c8

	ld a, b                                          ; $43f8: $78
	jr nc, jr_070_4474                               ; $43f9: $30 $79

	ldh a, [$7b]                                     ; $43fb: $f0 $7b
	or $ff                                           ; $43fd: $f6 $ff
	sub e                                            ; $43ff: $93
	inc bc                                           ; $4400: $03
	nop                                              ; $4401: $00
	dec de                                           ; $4402: $1b
	add a                                            ; $4403: $87
	rst $38                                          ; $4404: $ff
	rst $38                                          ; $4405: $ff
	rst AddAOntoHL                                          ; $4406: $ef
	ld b, c                                          ; $4407: $41
	jp $c040                                         ; $4408: $c3 $40 $c0


	ret nz                                           ; $440b: $c0

	ld h, a                                          ; $440c: $67
	ldh [$9d], a                                     ; $440d: $e0 $9d
	ld a, h                                          ; $440f: $7c
	ld hl, sp+$03                                    ; $4410: $f8 $03
	ldh [$df], a                                     ; $4412: $e0 $df
	ld a, b                                          ; $4414: $78
	ld a, e                                          ; $4415: $7b
	sbc $7b                                          ; $4416: $de $7b
	db $fd                                           ; $4418: $fd
	dec hl                                           ; $4419: $2b
	ldh [$9a], a                                     ; $441a: $e0 $9a
	ld a, h                                          ; $441c: $7c
	ld a, b                                          ; $441d: $78
	jr c, jr_070_4498                                ; $441e: $38 $78

	jr nc, @+$75                                     ; $4420: $30 $73

	sbc $57                                          ; $4422: $de $57
	ldh [hDisp1_OBP0], a                                     ; $4424: $e0 $93
	ld bc, $ae80                                     ; $4426: $01 $80 $ae
	sbc e                                            ; $4429: $9b
	ld a, l                                          ; $442a: $7d
	ld [hl], $df                                     ; $442b: $36 $df
	ld [hl], h                                       ; $442d: $74
	halt                                             ; $442e: $76
	call c, $8cfa                                    ; $442f: $dc $fa $8c
	call z, $7cb8                                    ; $4432: $cc $b8 $7c
	db $fc                                           ; $4435: $fc
	cp d                                             ; $4436: $ba
	call nz, $0cf3                                   ; $4437: $c4 $f3 $0c
	ld e, $3f                                        ; $443a: $1e $3f
	ld [hl], e                                       ; $443c: $73
	di                                               ; $443d: $f3
	and a                                            ; $443e: $a7
	ld b, a                                          ; $443f: $47
	rst SubAFromDE                                          ; $4440: $df
	rra                                              ; $4441: $1f
	dec d                                            ; $4442: $15
	sbc a                                            ; $4443: $9f
	sbc e                                            ; $4444: $9b
	sub d                                            ; $4445: $92
	sbc h                                            ; $4446: $9c
	add b                                            ; $4447: $80
	adc [hl]                                         ; $4448: $8e
	di                                               ; $4449: $f3
	adc h                                            ; $444a: $8c
	cp a                                             ; $444b: $bf
	ret nz                                           ; $444c: $c0

	cp a                                             ; $444d: $bf
	ret nz                                           ; $444e: $c0

	ld a, a                                          ; $444f: $7f
	ld b, b                                          ; $4450: $40
	ld e, a                                          ; $4451: $5f
	ld h, b                                          ; $4452: $60
	ccf                                              ; $4453: $3f
	jr nz, jr_070_4475                               ; $4454: $20 $1f

	inc e                                            ; $4456: $1c
	cpl                                              ; $4457: $2f
	inc a                                            ; $4458: $3c
	ld a, e                                          ; $4459: $7b
	ld a, h                                          ; $445a: $7c
	push af                                          ; $445b: $f5
	or $a2                                           ; $445c: $f6 $a2
	db $e3                                           ; $445e: $e3
	pop bc                                           ; $445f: $c1
	pop bc                                           ; $4460: $c1
	add b                                            ; $4461: $80
	add b                                            ; $4462: $80
	ld bc, $0301                                     ; $4463: $01 $01 $03
	ld [bc], a                                       ; $4466: $02
	sub b                                            ; $4467: $90
	ccf                                              ; $4468: $3f
	inc a                                            ; $4469: $3c
	ldh a, [$a0]                                     ; $446a: $f0 $a0
	ldh a, [$a0]                                     ; $446c: $f0 $a0
	ldh [$a0], a                                     ; $446e: $e0 $a0
	and b                                            ; $4470: $a0
	ldh [$f0], a                                     ; $4471: $e0 $f0
	ld h, b                                          ; $4473: $60

jr_070_4474:
	ld [hl], b                                       ; $4474: $70

jr_070_4475:
	jr nc, jr_070_44b0                               ; $4475: $30 $39

	db $fc                                           ; $4477: $fc
	sbc h                                            ; $4478: $9c
	add b                                            ; $4479: $80
	nop                                              ; $447a: $00
	add c                                            ; $447b: $81
	ld [hl], e                                       ; $447c: $73
	cp $fd                                           ; $447d: $fe $fd
	add b                                            ; $447f: $80
	stop                                             ; $4480: $10 $00
	ld a, [$7b53]                                    ; $4482: $fa $53 $7b
	ld d, a                                          ; $4485: $57
	ld e, [hl]                                       ; $4486: $5e
	ld [hl], a                                       ; $4487: $77
	ld a, a                                          ; $4488: $7f
	ld [hl], h                                       ; $4489: $74
	rst SubAFromHL                                          ; $448a: $d7
	ld a, h                                          ; $448b: $7c
	ld a, e                                          ; $448c: $7b
	call z, $bfdf                                    ; $448d: $cc $df $bf
	inc a                                            ; $4490: $3c
	ld h, e                                          ; $4491: $63
	ld a, a                                          ; $4492: $7f
	nop                                              ; $4493: $00
	jp $be3c                                         ; $4494: $c3 $3c $be


	ld a, a                                          ; $4497: $7f

jr_070_4498:
	di                                               ; $4498: $f3
	ld [hl], e                                       ; $4499: $73
	rst SubAFromBC                                          ; $449a: $e7

jr_070_449b:
	ld h, a                                          ; $449b: $67
	cp l                                             ; $449c: $bd
	ccf                                              ; $449d: $3f
	dec l                                            ; $449e: $2d
	sub e                                            ; $449f: $93
	ccf                                              ; $44a0: $3f
	daa                                              ; $44a1: $27
	add hl, sp                                       ; $44a2: $39
	dec sp                                           ; $44a3: $3b
	ld [de], a                                       ; $44a4: $12
	rra                                              ; $44a5: $1f
	inc c                                            ; $44a6: $0c
	rlca                                             ; $44a7: $07
	nop                                              ; $44a8: $00
	rrca                                             ; $44a9: $0f
	nop                                              ; $44aa: $00
	rra                                              ; $44ab: $1f
	ld [hl], e                                       ; $44ac: $73
	cp $80                                           ; $44ad: $fe $80
	ccf                                              ; $44af: $3f

jr_070_44b0:
	ld bc, $073f                                     ; $44b0: $01 $3f $07
	rst $38                                          ; $44b3: $ff
	rra                                              ; $44b4: $1f
	rst $38                                          ; $44b5: $ff
	ld a, l                                          ; $44b6: $7d
	rst $38                                          ; $44b7: $ff
	ld sp, hl                                        ; $44b8: $f9
	rst $38                                          ; $44b9: $ff
	pop af                                           ; $44ba: $f1
	rst $38                                          ; $44bb: $ff
	jp $07fe                                         ; $44bc: $c3 $fe $07


	db $fc                                           ; $44bf: $fc
	rrca                                             ; $44c0: $0f
	ld b, d                                          ; $44c1: $42
	ret nz                                           ; $44c2: $c0

	ld hl, $a1e0                                     ; $44c3: $21 $e0 $a1
	ldh [$d1], a                                     ; $44c6: $e0 $d1
	ldh a, [$d1]                                     ; $44c8: $f0 $d1
	ld [hl], b                                       ; $44ca: $70
	reti                                             ; $44cb: $d9


	ld a, c                                          ; $44cc: $79
	reti                                             ; $44cd: $d9


	add b                                            ; $44ce: $80
	ld a, c                                          ; $44cf: $79
	db $fc                                           ; $44d0: $fc
	db $ec                                           ; $44d1: $ec
	cp $4e                                           ; $44d2: $fe $4e
	ld a, [$ea0e]                                    ; $44d4: $fa $0e $ea
	ld e, $6b                                        ; $44d7: $1e $6b
	sbc a                                            ; $44d9: $9f
	di                                               ; $44da: $f3
	sbc [hl]                                         ; $44db: $9e
	push af                                          ; $44dc: $f5
	sbc $f5                                          ; $44dd: $de $f5
	ld e, $ff                                        ; $44df: $1e $ff
	ld d, $fd                                        ; $44e1: $16 $fd
	ld d, $ff                                        ; $44e3: $16 $ff
	dec d                                            ; $44e5: $15
	db $d3                                           ; $44e6: $d3
	ccf                                              ; $44e7: $3f
	ld a, [$bb3f]                                    ; $44e8: $fa $3f $bb
	ld a, [hl]                                       ; $44eb: $7e
	ld a, e                                          ; $44ec: $7b
	cp $9a                                           ; $44ed: $fe $9a
	rst SubAFromDE                                          ; $44ef: $df
	cp $f7                                           ; $44f0: $fe $f7
	jp c, Jump_070_7bb7                              ; $44f2: $da $b7 $7b

	cp $93                                           ; $44f5: $fe $93
	sub $fb                                          ; $44f7: $d6 $fb
	jp z, $ebff                                      ; $44f9: $ca $ff $eb

	db $fd                                           ; $44fc: $fd
	db $ed                                           ; $44fd: $ed
	rst $38                                          ; $44fe: $ff
	rst AddAOntoHL                                          ; $44ff: $ef
	rst $38                                          ; $4500: $ff
	cp a                                             ; $4501: $bf
	rst $38                                          ; $4502: $ff
	ld b, a                                          ; $4503: $47
	jr nz, jr_070_449b                               ; $4504: $20 $95

	rst $38                                          ; $4506: $ff
	nop                                              ; $4507: $00
	ccf                                              ; $4508: $3f
	nop                                              ; $4509: $00
	ld e, a                                          ; $450a: $5f
	ld a, $b7                                        ; $450b: $3e $b7
	ld [hl], a                                       ; $450d: $77
	rst $38                                          ; $450e: $ff
	ld a, a                                          ; $450f: $7f
	ld l, a                                          ; $4510: $6f
	jr nz, @+$41                                     ; $4511: $20 $3f

	ld h, b                                          ; $4513: $60
	ld a, a                                          ; $4514: $7f
	sbc $9b                                          ; $4515: $de $9b
	db $e3                                           ; $4517: $e3
	inc e                                            ; $4518: $1c
	cp a                                             ; $4519: $bf
	ld a, [hl]                                       ; $451a: $7e
	inc bc                                           ; $451b: $03
	ld h, b                                          ; $451c: $60
	inc de                                           ; $451d: $13
	ld h, b                                          ; $451e: $60
	sub l                                            ; $451f: $95
	db $eb                                           ; $4520: $eb
	rra                                              ; $4521: $1f
	di                                               ; $4522: $f3
	ld e, $b5                                        ; $4523: $1e $b5
	sbc $f5                                          ; $4525: $de $f5
	sbc $ff                                          ; $4527: $de $ff
	ld d, $37                                        ; $4529: $16 $37
	add b                                            ; $452b: $80
	ld [hl], a                                       ; $452c: $77
	or [hl]                                          ; $452d: $b6
	sbc b                                            ; $452e: $98
	db $ed                                           ; $452f: $ed
	ld e, $77                                        ; $4530: $1e $77
	cp $bb                                           ; $4532: $fe $bb
	sbc e                                            ; $4534: $9b
	sbc l                                            ; $4535: $9d
	inc sp                                           ; $4536: $33
	add b                                            ; $4537: $80
	ld [hl], a                                       ; $4538: $77
	cp $93                                           ; $4539: $fe $93
	rst SubAFromBC                                          ; $453b: $e7
	nop                                              ; $453c: $00
	db $dd                                           ; $453d: $dd
	ld a, $6e                                        ; $453e: $3e $6e
	rst $38                                          ; $4540: $ff
	ld [hl], a                                       ; $4541: $77
	scf                                              ; $4542: $37
	ccf                                              ; $4543: $3f
	inc e                                            ; $4544: $1c
	rra                                              ; $4545: $1f
	nop                                              ; $4546: $00
	inc bc                                           ; $4547: $03
	add b                                            ; $4548: $80
	inc sp                                           ; $4549: $33
	add b                                            ; $454a: $80
	ld a, [hl]                                       ; $454b: $7e
	ldh [c], a                                       ; $454c: $e2
	ld a, a                                          ; $454d: $7f
	cp $9d                                           ; $454e: $fe $9d
	cp a                                             ; $4550: $bf
	sub $5f                                          ; $4551: $d6 $5f
	add b                                            ; $4553: $80
	sub l                                            ; $4554: $95
	db $fc                                           ; $4555: $fc
	adc b                                            ; $4556: $88
	ld l, h                                          ; $4557: $6c
	ld hl, sp-$66                                    ; $4558: $f8 $9a
	db $fc                                           ; $455a: $fc
	db $fd                                           ; $455b: $fd
	ld b, $3f                                        ; $455c: $06 $3f
	ld [bc], a                                       ; $455e: $02
	ld [hl], a                                       ; $455f: $77
	or [hl]                                          ; $4560: $b6
	sbc b                                            ; $4561: $98
	sbc a                                            ; $4562: $9f
	nop                                              ; $4563: $00
	ld h, a                                          ; $4564: $67
	add b                                            ; $4565: $80
	cp l                                             ; $4566: $bd
	or e                                             ; $4567: $b3
	sbc [hl]                                         ; $4568: $9e
	ld d, e                                          ; $4569: $53
	add b                                            ; $456a: $80
	sub a                                            ; $456b: $97
	rst $38                                          ; $456c: $ff
	adc a                                            ; $456d: $8f
	ld e, d                                          ; $456e: $5a
	dec a                                            ; $456f: $3d
	cpl                                              ; $4570: $2f
	ld [hl], b                                       ; $4571: $70
	rst $38                                          ; $4572: $ff
	ld b, b                                          ; $4573: $40
	ld l, a                                          ; $4574: $6f
	ld a, [hl]                                       ; $4575: $7e
	ld a, d                                          ; $4576: $7a
	ld hl, sp-$66                                    ; $4577: $f8 $9a
	nop                                              ; $4579: $00
	ld l, l                                          ; $457a: $6d
	ld [hl], e                                       ; $457b: $73
	ccf                                              ; $457c: $3f
	ld e, $03                                        ; $457d: $1e $03
	add b                                            ; $457f: $80
	dec de                                           ; $4580: $1b
	add b                                            ; $4581: $80
	sub c                                            ; $4582: $91
	rst $38                                          ; $4583: $ff
	sub [hl]                                         ; $4584: $96
	jr c, jr_070_4587                                ; $4585: $38 $00

jr_070_4587:
	ld e, h                                          ; $4587: $5c
	ld h, b                                          ; $4588: $60
	ld a, b                                          ; $4589: $78
	jr nz, jr_070_458c                               ; $458a: $20 $00

jr_070_458c:
	nop                                              ; $458c: $00
	ld h, b                                          ; $458d: $60
	nop                                              ; $458e: $00
	jr c, jr_070_45c1                                ; $458f: $38 $30

	ld a, c                                          ; $4591: $79
	ldh a, [$7b]                                     ; $4592: $f0 $7b
	or $ff                                           ; $4594: $f6 $ff
	sub e                                            ; $4596: $93
	inc bc                                           ; $4597: $03
	nop                                              ; $4598: $00
	dec de                                           ; $4599: $1b
	add a                                            ; $459a: $87
	rst $38                                          ; $459b: $ff
	rst $38                                          ; $459c: $ff
	rst AddAOntoHL                                          ; $459d: $ef
	ld b, c                                          ; $459e: $41
	jp $c040                                         ; $459f: $c3 $40 $c0


	ret nz                                           ; $45a2: $c0

	ld h, a                                          ; $45a3: $67
	ldh [$9d], a                                     ; $45a4: $e0 $9d
	ld [hl], b                                       ; $45a6: $70
	jr nz, @+$05                                     ; $45a7: $20 $03

	ldh [$9e], a                                     ; $45a9: $e0 $9e
	jr nc, jr_070_4624                               ; $45ab: $30 $77

	sbc $7b                                          ; $45ad: $de $7b
	db $fd                                           ; $45af: $fd
	dec de                                           ; $45b0: $1b
	ldh [$9e], a                                     ; $45b1: $e0 $9e
	jr nz, jr_070_4628                               ; $45b3: $20 $73

	sbc $57                                          ; $45b5: $de $57
	ldh [hDisp1_WY], a                                     ; $45b7: $e0 $95
	ld bc, $ae80                                     ; $45b9: $01 $80 $ae
	sbc e                                            ; $45bc: $9b
	ld a, l                                          ; $45bd: $7d
	ld [hl], $df                                     ; $45be: $36 $df
	ld [hl], h                                       ; $45c0: $74

jr_070_45c1:
	halt                                             ; $45c1: $76
	call c, $8cfa                                    ; $45c2: $dc $fa $8c
	call z, Call_070_74b8                            ; $45c5: $cc $b8 $74
	ld hl, sp-$12                                    ; $45c8: $f8 $ee
	inc e                                            ; $45ca: $1c
	ei                                               ; $45cb: $fb
	ld b, $2d                                        ; $45cc: $06 $2d
	ld e, $5e                                        ; $45ce: $1e $5e
	ccf                                              ; $45d0: $3f
	di                                               ; $45d1: $f3
	ld [hl], e                                       ; $45d2: $73
	rst FarCall                                          ; $45d3: $f7
	scf                                              ; $45d4: $37
	dec a                                            ; $45d5: $3d
	sbc a                                            ; $45d6: $9f
	sbc e                                            ; $45d7: $9b
	sub d                                            ; $45d8: $92
	cp h                                             ; $45d9: $bc
	add b                                            ; $45da: $80
	adc [hl]                                         ; $45db: $8e
	ldh a, [hDisp1_LCDC]                                     ; $45dc: $f0 $8f
	cp a                                             ; $45de: $bf
	ret nz                                           ; $45df: $c0

	cp a                                             ; $45e0: $bf
	ret nz                                           ; $45e1: $c0

	ld a, a                                          ; $45e2: $7f
	ld b, b                                          ; $45e3: $40
	ld e, a                                          ; $45e4: $5f
	ld h, b                                          ; $45e5: $60
	ccf                                              ; $45e6: $3f
	jr nz, jr_070_4608                               ; $45e7: $20 $1f

	inc e                                            ; $45e9: $1c
	cpl                                              ; $45ea: $2f
	inc a                                            ; $45eb: $3c
	ld a, e                                          ; $45ec: $7b
	ld a, h                                          ; $45ed: $7c
	push af                                          ; $45ee: $f5
	or $a2                                           ; $45ef: $f6 $a2
	db $e3                                           ; $45f1: $e3
	pop bc                                           ; $45f2: $c1
	pop bc                                           ; $45f3: $c1
	add b                                            ; $45f4: $80
	add b                                            ; $45f5: $80
	ld bc, $0301                                     ; $45f6: $01 $01 $03
	ld [bc], a                                       ; $45f9: $02
	sub b                                            ; $45fa: $90
	ccf                                              ; $45fb: $3f
	inc a                                            ; $45fc: $3c
	ldh a, [$a0]                                     ; $45fd: $f0 $a0
	ldh a, [$a0]                                     ; $45ff: $f0 $a0
	ldh [$a0], a                                     ; $4601: $e0 $a0
	and b                                            ; $4603: $a0
	ldh [$f0], a                                     ; $4604: $e0 $f0
	ld h, b                                          ; $4606: $60
	ld [hl], b                                       ; $4607: $70

jr_070_4608:
	jr nc, jr_070_4643                               ; $4608: $30 $39

	db $fc                                           ; $460a: $fc
	sbc h                                            ; $460b: $9c
	add b                                            ; $460c: $80
	nop                                              ; $460d: $00
	add c                                            ; $460e: $81
	ld [hl], e                                       ; $460f: $73
	cp $fd                                           ; $4610: $fe $fd
	add b                                            ; $4612: $80
	stop                                             ; $4613: $10 $00
	ld a, [$7b53]                                    ; $4615: $fa $53 $7b
	ld d, a                                          ; $4618: $57
	ld e, [hl]                                       ; $4619: $5e
	ld [hl], a                                       ; $461a: $77
	ld a, a                                          ; $461b: $7f
	ld [hl], h                                       ; $461c: $74
	rst SubAFromHL                                          ; $461d: $d7
	ld a, h                                          ; $461e: $7c
	ld a, e                                          ; $461f: $7b
	call z, $8fff                                    ; $4620: $cc $ff $8f
	ld [hl], e                                       ; $4623: $73

jr_070_4624:
	inc a                                            ; $4624: $3c
	ld e, a                                          ; $4625: $5f
	ldh [rIE], a                                     ; $4626: $e0 $ff

jr_070_4628:
	nop                                              ; $4628: $00
	db $dd                                           ; $4629: $dd
	ld a, $fe                                        ; $462a: $3e $fe
	ld a, a                                          ; $462c: $7f
	and a                                            ; $462d: $a7
	rst SubAFromBC                                          ; $462e: $e7
	db $ed                                           ; $462f: $ed

jr_070_4630:
	xor a                                            ; $4630: $af
	dec a                                            ; $4631: $3d
	sub e                                            ; $4632: $93
	ccf                                              ; $4633: $3f
	daa                                              ; $4634: $27
	add hl, sp                                       ; $4635: $39
	dec sp                                           ; $4636: $3b
	ld [de], a                                       ; $4637: $12
	ld a, a                                          ; $4638: $7f
	inc c                                            ; $4639: $0c
	rlca                                             ; $463a: $07
	nop                                              ; $463b: $00
	rrca                                             ; $463c: $0f
	nop                                              ; $463d: $00
	rra                                              ; $463e: $1f
	ld [hl], e                                       ; $463f: $73
	cp $80                                           ; $4640: $fe $80
	ccf                                              ; $4642: $3f

jr_070_4643:
	ld bc, $073f                                     ; $4643: $01 $3f $07
	rst $38                                          ; $4646: $ff
	rra                                              ; $4647: $1f
	rst $38                                          ; $4648: $ff
	ld a, l                                          ; $4649: $7d
	rst $38                                          ; $464a: $ff
	ld sp, hl                                        ; $464b: $f9
	rst $38                                          ; $464c: $ff
	pop af                                           ; $464d: $f1
	rst $38                                          ; $464e: $ff
	jp $07fe                                         ; $464f: $c3 $fe $07


	db $fc                                           ; $4652: $fc
	rrca                                             ; $4653: $0f
	ld b, d                                          ; $4654: $42
	ret nz                                           ; $4655: $c0

	ld hl, $a1e0                                     ; $4656: $21 $e0 $a1
	ldh [$d1], a                                     ; $4659: $e0 $d1
	ldh a, [$d1]                                     ; $465b: $f0 $d1
	ld [hl], b                                       ; $465d: $70
	reti                                             ; $465e: $d9


	ld a, c                                          ; $465f: $79
	reti                                             ; $4660: $d9


	add b                                            ; $4661: $80
	ld a, c                                          ; $4662: $79
	db $fc                                           ; $4663: $fc
	ld c, h                                          ; $4664: $4c
	cp $4e                                           ; $4665: $fe $4e
	ld a, [$ea0e]                                    ; $4667: $fa $0e $ea
	ld e, $eb                                        ; $466a: $1e $eb
	rra                                              ; $466c: $1f
	ld [hl], e                                       ; $466d: $73
	sbc [hl]                                         ; $466e: $9e
	push af                                          ; $466f: $f5
	sbc $b5                                          ; $4670: $de $b5
	sbc $ff                                          ; $4672: $de $ff
	ld d, $fd                                        ; $4674: $16 $fd
	ld d, $ff                                        ; $4676: $16 $ff
	dec d                                            ; $4678: $15
	db $d3                                           ; $4679: $d3
	ccf                                              ; $467a: $3f
	ld a, [$bb3f]                                    ; $467b: $fa $3f $bb
	ld a, [hl]                                       ; $467e: $7e
	ld a, e                                          ; $467f: $7b
	cp $9a                                           ; $4680: $fe $9a
	rst SubAFromDE                                          ; $4682: $df
	cp $f7                                           ; $4683: $fe $f7
	jp c, Jump_070_7bb7                              ; $4685: $da $b7 $7b

	cp $93                                           ; $4688: $fe $93
	sub $fb                                          ; $468a: $d6 $fb
	jp z, $ebff                                      ; $468c: $ca $ff $eb

	db $fd                                           ; $468f: $fd
	db $ed                                           ; $4690: $ed
	rst $38                                          ; $4691: $ff
	rst AddAOntoHL                                          ; $4692: $ef
	rst $38                                          ; $4693: $ff
	cp a                                             ; $4694: $bf
	rst $38                                          ; $4695: $ff
	ccf                                              ; $4696: $3f
	jr nz, jr_070_4630                               ; $4697: $20 $97

	ccf                                              ; $4699: $3f
	nop                                              ; $469a: $00
	ld e, l                                          ; $469b: $5d
	ld a, $f2                                        ; $469c: $3e $f2
	inc sp                                           ; $469e: $33
	rst FarCall                                          ; $469f: $f7
	ld [hl], a                                       ; $46a0: $77
	ld l, a                                          ; $46a1: $6f
	jr nz, jr_070_46db                               ; $46a2: $20 $37

	ld h, b                                          ; $46a4: $60
	ld a, a                                          ; $46a5: $7f
	cp $9a                                           ; $46a6: $fe $9a
	cp l                                             ; $46a8: $bd
	ld a, [hl]                                       ; $46a9: $7e
	ld h, [hl]                                       ; $46aa: $66
	rst SubAFromBC                                          ; $46ab: $e7
	rst AddAOntoHL                                          ; $46ac: $ef
	inc bc                                           ; $46ad: $03
	ld h, b                                          ; $46ae: $60
	rla                                              ; $46af: $17
	ld h, b                                          ; $46b0: $60
	sbc d                                            ; $46b1: $9a
	di                                               ; $46b2: $f3
	ld e, $35                                        ; $46b3: $1e $35
	sbc $f5                                          ; $46b5: $de $f5
	ld a, e                                          ; $46b7: $7b
	ld h, b                                          ; $46b8: $60
	scf                                              ; $46b9: $37
	add b                                            ; $46ba: $80
	ld [hl], a                                       ; $46bb: $77
	or [hl]                                          ; $46bc: $b6
	sbc b                                            ; $46bd: $98
	db $ed                                           ; $46be: $ed
	ld e, $77                                        ; $46bf: $1e $77
	cp $bb                                           ; $46c1: $fe $bb
	sbc e                                            ; $46c3: $9b
	sbc l                                            ; $46c4: $9d
	dec hl                                           ; $46c5: $2b
	add b                                            ; $46c6: $80
	ld a, a                                          ; $46c7: $7f
	cp $9e                                           ; $46c8: $fe $9e
	rst SubAFromBC                                          ; $46ca: $e7
	ld a, d                                          ; $46cb: $7a
	jp c, Jump_070_6e97                              ; $46cc: $da $97 $6e

	rst $38                                          ; $46cf: $ff
	ld [hl], a                                       ; $46d0: $77
	scf                                              ; $46d1: $37
	ccf                                              ; $46d2: $3f
	inc e                                            ; $46d3: $1c
	rra                                              ; $46d4: $1f
	nop                                              ; $46d5: $00
	inc bc                                           ; $46d6: $03
	add b                                            ; $46d7: $80
	inc sp                                           ; $46d8: $33
	add b                                            ; $46d9: $80
	sbc [hl]                                         ; $46da: $9e

jr_070_46db:
	push af                                          ; $46db: $f5
	ld a, e                                          ; $46dc: $7b
	cp $9d                                           ; $46dd: $fe $9d
	cp a                                             ; $46df: $bf
	sub $5f                                          ; $46e0: $d6 $5f
	add b                                            ; $46e2: $80
	sub l                                            ; $46e3: $95
	db $fc                                           ; $46e4: $fc
	adc b                                            ; $46e5: $88
	ld l, h                                          ; $46e6: $6c
	ldh a, [$fa]                                     ; $46e7: $f0 $fa
	inc e                                            ; $46e9: $1c
	db $fd                                           ; $46ea: $fd
	ld b, $3f                                        ; $46eb: $06 $3f
	ld [bc], a                                       ; $46ed: $02
	ld [hl], a                                       ; $46ee: $77
	or [hl]                                          ; $46ef: $b6
	sbc b                                            ; $46f0: $98
	sbc a                                            ; $46f1: $9f
	nop                                              ; $46f2: $00
	ld h, a                                          ; $46f3: $67
	add b                                            ; $46f4: $80
	cp l                                             ; $46f5: $bd
	or e                                             ; $46f6: $b3
	sbc [hl]                                         ; $46f7: $9e
	ld c, e                                          ; $46f8: $4b
	add b                                            ; $46f9: $80
	sbc c                                            ; $46fa: $99
	ld e, e                                          ; $46fb: $5b
	inc a                                            ; $46fc: $3c
	ld l, a                                          ; $46fd: $6f
	ld [hl], b                                       ; $46fe: $70
	cp a                                             ; $46ff: $bf
	ret nz                                           ; $4700: $c0

	ld l, a                                          ; $4701: $6f
	ld a, [hl]                                       ; $4702: $7e
	ld a, a                                          ; $4703: $7f
	cp $99                                           ; $4704: $fe $99
	db $e3                                           ; $4706: $e3
	nop                                              ; $4707: $00
	ld l, l                                          ; $4708: $6d
	ld [hl], e                                       ; $4709: $73
	ccf                                              ; $470a: $3f
	ld e, $03                                        ; $470b: $1e $03
	add b                                            ; $470d: $80
	dec de                                           ; $470e: $1b
	add b                                            ; $470f: $80
	sub c                                            ; $4710: $91
	rst $38                                          ; $4711: $ff
	sub [hl]                                         ; $4712: $96
	jr c, jr_070_4715                                ; $4713: $38 $00

jr_070_4715:
	ld e, h                                          ; $4715: $5c
	ld h, b                                          ; $4716: $60
	ld a, b                                          ; $4717: $78
	jr nz, jr_070_471a                               ; $4718: $20 $00

jr_070_471a:
	nop                                              ; $471a: $00
	ld [hl], b                                       ; $471b: $70
	jr nc, @+$5a                                     ; $471c: $30 $58

	ld c, b                                          ; $471e: $48
	ld a, c                                          ; $471f: $79
	ldh a, [$7b]                                     ; $4720: $f0 $7b
	or $ff                                           ; $4722: $f6 $ff
	sub e                                            ; $4724: $93
	inc bc                                           ; $4725: $03
	nop                                              ; $4726: $00
	dec de                                           ; $4727: $1b
	add a                                            ; $4728: $87
	rst $38                                          ; $4729: $ff
	rst $38                                          ; $472a: $ff
	rst AddAOntoHL                                          ; $472b: $ef
	ld b, c                                          ; $472c: $41
	jp $c040                                         ; $472d: $c3 $40 $c0


	ret nz                                           ; $4730: $c0

	ld e, a                                          ; $4731: $5f
	ldh [$df], a                                     ; $4732: $e0 $df
	ld a, b                                          ; $4734: $78
	rla                                              ; $4735: $17
	ldh [$9e], a                                     ; $4736: $e0 $9e
	ld a, b                                          ; $4738: $78
	ld a, e                                          ; $4739: $7b
	ldh [$9a], a                                     ; $473a: $e0 $9a
	jr nc, @+$3a                                     ; $473c: $30 $38

	nop                                              ; $473e: $00
	nop                                              ; $473f: $00
	jr nc, jr_070_475d                               ; $4740: $30 $1b

	ret nz                                           ; $4742: $c0

	sbc h                                            ; $4743: $9c
	jr c, jr_070_47be                                ; $4744: $38 $78

	jr c, jr_070_47c3                                ; $4746: $38 $7b

	pop hl                                           ; $4748: $e1
	ld a, a                                          ; $4749: $7f
	db $fd                                           ; $474a: $fd
	ld d, a                                          ; $474b: $57
	ldh [$e2], a                                     ; $474c: $e0 $e2
	ld [bc], a                                       ; $474e: $02
	ei                                               ; $474f: $fb
	rst SubAFromDE                                          ; $4750: $df
	ld bc, $029e                                     ; $4751: $01 $9e $02
	sbc $03                                          ; $4754: $de $03
	add a                                            ; $4756: $87
	rlca                                             ; $4757: $07
	inc b                                            ; $4758: $04
	dec c                                            ; $4759: $0d
	dec bc                                           ; $475a: $0b
	dec de                                           ; $475b: $1b
	inc d                                            ; $475c: $14

jr_070_475d:
	rra                                              ; $475d: $1f
	db $10                                           ; $475e: $10
	rra                                              ; $475f: $1f
	db $10                                           ; $4760: $10
	rla                                              ; $4761: $17
	jr jr_070_4773                                   ; $4762: $18 $0f

	ld [$0c0b], sp                                   ; $4764: $08 $0b $0c
	rlca                                             ; $4767: $07
	inc b                                            ; $4768: $04
	dec b                                            ; $4769: $05
	ld b, $03                                        ; $476a: $06 $03
	ld [bc], a                                       ; $476c: $02
	ld [bc], a                                       ; $476d: $02
	inc bc                                           ; $476e: $03
	db $dd                                           ; $476f: $dd
	ld bc, $d867                                     ; $4770: $01 $67 $d8

jr_070_4773:
	db $dd                                           ; $4773: $dd
	ld bc, $d47b                                     ; $4774: $01 $7b $d4
	ld a, a                                          ; $4777: $7f
	db $fd                                           ; $4778: $fd
	add b                                            ; $4779: $80
	ld [bc], a                                       ; $477a: $02
	dec b                                            ; $477b: $05
	ld b, $07                                        ; $477c: $06 $07
	inc b                                            ; $477e: $04
	rlca                                             ; $477f: $07
	inc b                                            ; $4780: $04
	nop                                              ; $4781: $00
	nop                                              ; $4782: $00
	ld a, [hl]                                       ; $4783: $7e
	ld a, [hl]                                       ; $4784: $7e
	add c                                            ; $4785: $81
	rst $38                                          ; $4786: $ff
	ld a, $ff                                        ; $4787: $3e $ff
	jp hl                                            ; $4789: $e9


	rst SubAFromDE                                          ; $478a: $df
	or h                                             ; $478b: $b4
	ld a, a                                          ; $478c: $7f
	ld a, d                                          ; $478d: $7a
	rst GetHLinHL                                          ; $478e: $cf
	push hl                                          ; $478f: $e5
	rra                                              ; $4790: $1f
	push de                                          ; $4791: $d5
	ccf                                              ; $4792: $3f
	or l                                             ; $4793: $b5
	ld a, a                                          ; $4794: $7f
	sbc l                                            ; $4795: $9d

jr_070_4796:
	ld a, a                                          ; $4796: $7f
	rst GetHLinHL                                          ; $4797: $cf
	ccf                                              ; $4798: $3f
	add b                                            ; $4799: $80
	and $1f                                          ; $479a: $e6 $1f
	ldh [c], a                                       ; $479c: $e2
	rra                                              ; $479d: $1f
	pop af                                           ; $479e: $f1
	rrca                                             ; $479f: $0f
	ld hl, sp+$07                                    ; $47a0: $f8 $07
	ld hl, sp+$07                                    ; $47a2: $f8 $07
	db $fc                                           ; $47a4: $fc
	inc bc                                           ; $47a5: $03
	db $fc                                           ; $47a6: $fc
	inc bc                                           ; $47a7: $03
	ld a, h                                          ; $47a8: $7c
	add e                                            ; $47a9: $83
	db $fd                                           ; $47aa: $fd
	add e                                            ; $47ab: $83
	ld sp, hl                                        ; $47ac: $f9
	add a                                            ; $47ad: $87
	ld sp, hl                                        ; $47ae: $f9
	add a                                            ; $47af: $87
	ld a, c                                          ; $47b0: $79
	add a                                            ; $47b1: $87
	pop af                                           ; $47b2: $f1
	rrca                                             ; $47b3: $0f
	ldh a, [c]                                       ; $47b4: $f2
	ld c, $f2                                        ; $47b5: $0e $f2
	ld c, $e2                                        ; $47b7: $0e $e2
	sbc [hl]                                         ; $47b9: $9e
	ld e, $77                                        ; $47ba: $1e $77
	cp $9b                                           ; $47bc: $fe $9b

jr_070_47be:
	db $e3                                           ; $47be: $e3
	rra                                              ; $47bf: $1f
	jp $ed3f                                         ; $47c0: $c3 $3f $ed


jr_070_47c3:
	ld [hl], a                                       ; $47c3: $77

jr_070_47c4:
	sbc [hl]                                         ; $47c4: $9e
	rst SubAFromDE                                          ; $47c5: $df

jr_070_47c6:
	rrca                                             ; $47c6: $0f
	rst SubAFromDE                                          ; $47c7: $df
	ld sp, $01d1                                     ; $47c8: $31 $d1 $01
	ld a, a                                          ; $47cb: $7f
	ld [$0597], a                                    ; $47cc: $ea $97 $05
	rlca                                             ; $47cf: $07
	ld b, $06                                        ; $47d0: $06 $06
	inc b                                            ; $47d2: $04
	inc b                                            ; $47d3: $04
	ld [$f108], sp                                   ; $47d4: $08 $08 $f1
	rst SubAFromDE                                          ; $47d7: $df
	add b                                            ; $47d8: $80
	adc l                                            ; $47d9: $8d
	ld b, b                                          ; $47da: $40
	ret nz                                           ; $47db: $c0

	and b                                            ; $47dc: $a0
	ldh [$60], a                                     ; $47dd: $e0 $60
	ldh [rLCDC], a                                   ; $47df: $e0 $40
	ret nz                                           ; $47e1: $c0

	add c                                            ; $47e2: $81
	add c                                            ; $47e3: $81
	ld [bc], a                                       ; $47e4: $02
	inc bc                                           ; $47e5: $03
	inc b                                            ; $47e6: $04
	rlca                                             ; $47e7: $07
	ld [bc], a                                       ; $47e8: $02
	inc bc                                           ; $47e9: $03
	add c                                            ; $47ea: $81
	add c                                            ; $47eb: $81
	reti                                             ; $47ec: $d9


	add b                                            ; $47ed: $80
	rst SubAFromDE                                          ; $47ee: $df
	add a                                            ; $47ef: $87
	add e                                            ; $47f0: $83
	adc e                                            ; $47f1: $8b
	adc h                                            ; $47f2: $8c
	sub l                                            ; $47f3: $95
	sbc d                                            ; $47f4: $9a
	dec l                                            ; $47f5: $2d
	ld [hl-], a                                      ; $47f6: $32
	dec a                                            ; $47f7: $3d
	ld [hl+], a                                      ; $47f8: $22
	ld e, l                                          ; $47f9: $5d
	ld h, d                                          ; $47fa: $62
	ld a, l                                          ; $47fb: $7d
	ld b, d                                          ; $47fc: $42
	ld a, h                                          ; $47fd: $7c
	ld b, e                                          ; $47fe: $43
	ld a, a                                          ; $47ff: $7f
	ld b, c                                          ; $4800: $41
	cp a                                             ; $4801: $bf
	pop bc                                           ; $4802: $c1
	cp a                                             ; $4803: $bf
	pop bc                                           ; $4804: $c1
	db $fc                                           ; $4805: $fc
	add e                                            ; $4806: $83
	rst $38                                          ; $4807: $ff
	add d                                            ; $4808: $82
	ld a, e                                          ; $4809: $7b
	add [hl]                                         ; $480a: $86
	db $fd                                           ; $480b: $fd
	ld b, $e1                                        ; $480c: $06 $e1
	rst SubAFromDE                                          ; $480e: $df
	inc bc                                           ; $480f: $03
	ld a, a                                          ; $4810: $7f
	jr jr_070_4796                                   ; $4811: $18 $83

	rrca                                             ; $4813: $0f
	dec c                                            ; $4814: $0d
	ld a, [de]                                       ; $4815: $1a
	rla                                              ; $4816: $17
	inc l                                            ; $4817: $2c
	scf                                              ; $4818: $37
	jr c, jr_070_484a                                ; $4819: $38 $2f

	ld d, b                                          ; $481b: $50
	ld a, a                                          ; $481c: $7f
	ld h, c                                          ; $481d: $61
	ld a, a                                          ; $481e: $7f
	rst SubAFromBC                                          ; $481f: $e7
	cp $fb                                           ; $4820: $fe $fb
	db $fc                                           ; $4822: $fc
	cp a                                             ; $4823: $bf
	ret nz                                           ; $4824: $c0

	rst GetHLinHL                                          ; $4825: $cf
	ccf                                              ; $4826: $3f
	db $f4                                           ; $4827: $f4
	ei                                               ; $4828: $fb
	xor l                                            ; $4829: $ad
	ld [hl], d                                       ; $482a: $72
	ld l, l                                          ; $482b: $6d
	di                                               ; $482c: $f3
	rst AddAOntoHL                                          ; $482d: $ef
	or [hl]                                          ; $482e: $b6
	ldh [$c1], a                                     ; $482f: $e0 $c1
	rst SubAFromDE                                          ; $4831: $df
	rst $38                                          ; $4832: $ff
	sbc d                                            ; $4833: $9a
	jp $8100                                         ; $4834: $c3 $00 $81


	nop                                              ; $4837: $00
	ld bc, $fe7b                                     ; $4838: $01 $7b $fe
	sbc [hl]                                         ; $483b: $9e
	sub b                                            ; $483c: $90
	ld a, e                                          ; $483d: $7b
	cp $96                                           ; $483e: $fe $96
	sbc b                                            ; $4840: $98
	nop                                              ; $4841: $00
	jr jr_070_47c4                                   ; $4842: $18 $80

	jr c, jr_070_47c6                                ; $4844: $38 $80

	cp b                                             ; $4846: $b8
	nop                                              ; $4847: $00
	ld [hl], b                                       ; $4848: $70
	ld a, e                                          ; $4849: $7b

jr_070_484a:
	cp $9a                                           ; $484a: $fe $9a
	ldh [rP1], a                                     ; $484c: $e0 $00
	ret nz                                           ; $484e: $c0

	nop                                              ; $484f: $00
	add b                                            ; $4850: $80
	ld h, d                                          ; $4851: $62
	xor $7e                                          ; $4852: $ee $7e
	sub b                                            ; $4854: $90
	rst SubAFromDE                                          ; $4855: $df
	ld bc, $38df                                     ; $4856: $01 $df $38
	adc d                                            ; $4859: $8a
	ld e, a                                          ; $485a: $5f
	ld h, a                                          ; $485b: $67
	cp a                                             ; $485c: $bf
	ret nz                                           ; $485d: $c0

	ld sp, hl                                        ; $485e: $f9
	add [hl]                                         ; $485f: $86
	cp $81                                           ; $4860: $fe $81
	rst $38                                          ; $4862: $ff
	add b                                            ; $4863: $80
	rst $38                                          ; $4864: $ff
	add a                                            ; $4865: $87
	reti                                             ; $4866: $d9


	cp a                                             ; $4867: $bf
	ld a, d                                          ; $4868: $7a
	ld [hl], a                                       ; $4869: $77
	or e                                             ; $486a: $b3
	rst AddAOntoHL                                          ; $486b: $ef
	sbc h                                            ; $486c: $9c
	ld a, a                                          ; $486d: $7f
	ld h, b                                          ; $486e: $60
	ld a, e                                          ; $486f: $7b
	di                                               ; $4870: $f3
	ld a, a                                          ; $4871: $7f
	cp c                                             ; $4872: $b9
	add a                                            ; $4873: $87
	ccf                                              ; $4874: $3f
	rst $38                                          ; $4875: $ff
	rla                                              ; $4876: $17
	ei                                               ; $4877: $fb
	dec a                                            ; $4878: $3d
	db $fc                                           ; $4879: $fc
	ld a, [$f9e6]                                    ; $487a: $fa $e6 $f9
	rra                                              ; $487d: $1f
	rrca                                             ; $487e: $0f
	rlca                                             ; $487f: $07
	pop hl                                           ; $4880: $e1
	rra                                              ; $4881: $1f
	cp $ff                                           ; $4882: $fe $ff
	inc sp                                           ; $4884: $33
	rst $38                                          ; $4885: $ff
	sub $cf                                          ; $4886: $d6 $cf
	xor l                                            ; $4888: $ad
	inc e                                            ; $4889: $1c
	or l                                             ; $488a: $b5
	ld a, c                                          ; $488b: $79
	ldh [$c1], a                                     ; $488c: $e0 $c1
	add b                                            ; $488e: $80
	ret                                              ; $488f: $c9


	rst $38                                          ; $4890: $ff
	add a                                            ; $4891: $87
	db $fd                                           ; $4892: $fd
	rst JumpTable                                          ; $4893: $c7
	db $fc                                           ; $4894: $fc
	db $e3                                           ; $4895: $e3
	cp $a1                                           ; $4896: $fe $a1
	rst $38                                          ; $4898: $ff
	or b                                             ; $4899: $b0
	rst SubAFromDE                                          ; $489a: $df
	ld e, b                                          ; $489b: $58
	rst GetHLinHL                                          ; $489c: $cf
	xor $47                                          ; $489d: $ee $47
	db $d3                                           ; $489f: $d3
	ld h, c                                          ; $48a0: $61
	jr nc, jr_070_4903                               ; $48a1: $30 $60

	ld l, b                                          ; $48a3: $68
	jr nc, jr_070_4902                               ; $48a4: $30 $5c

	jr nc, jr_070_48de                               ; $48a6: $30 $36

	ld e, b                                          ; $48a8: $58
	xor a                                            ; $48a9: $af
	ld e, b                                          ; $48aa: $58
	dec sp                                           ; $48ab: $3b
	call z, $9e33                                    ; $48ac: $cc $33 $9e
	call z, $dffd                                    ; $48af: $cc $fd $df
	ld [$19df], sp                                   ; $48b2: $08 $df $19
	adc d                                            ; $48b5: $8a
	xor a                                            ; $48b6: $af
	cp [hl]                                          ; $48b7: $be
	rst SubAFromHL                                          ; $48b8: $d7
	ld a, a                                          ; $48b9: $7f
	ld a, [$755d]                                    ; $48ba: $fa $5d $75
	db $db                                           ; $48bd: $db
	jp c, rIE                                      ; $48be: $da $ff $ff

	ld a, a                                          ; $48c1: $7f
	ld a, [hl]                                       ; $48c2: $7e
	jp $43fe                                         ; $48c3: $c3 $fe $43


	rst $38                                          ; $48c6: $ff
	rst $38                                          ; $48c7: $ff
	sub $29                                          ; $48c8: $d6 $29
	rst $38                                          ; $48ca: $ff
	ld a, e                                          ; $48cb: $7b
	ld l, b                                          ; $48cc: $68
	ld h, a                                          ; $48cd: $67
	cp $df                                           ; $48ce: $fe $df
	rst $38                                          ; $48d0: $ff
	adc c                                            ; $48d1: $89
	ld l, c                                          ; $48d2: $69
	rst SubAFromDE                                          ; $48d3: $df
	adc l                                            ; $48d4: $8d
	reti                                             ; $48d5: $d9


	ld c, a                                          ; $48d6: $4f
	ld sp, hl                                        ; $48d7: $f9
	ld l, a                                          ; $48d8: $6f
	ccf                                              ; $48d9: $3f
	ld a, l                                          ; $48da: $7d
	sbc b                                            ; $48db: $98
	ret nc                                           ; $48dc: $d0

	or b                                             ; $48dd: $b0

jr_070_48de:
	and e                                            ; $48de: $a3
	rst $38                                          ; $48df: $ff
	rst FarCall                                          ; $48e0: $f7
	ld sp, hl                                        ; $48e1: $f9
	db $fd                                           ; $48e2: $fd
	ret z                                            ; $48e3: $c8

	ld h, a                                          ; $48e4: $67
	or h                                             ; $48e5: $b4
	sub d                                            ; $48e6: $92
	dec de                                           ; $48e7: $1b
	ldh [$bd], a                                     ; $48e8: $e0 $bd
	rst SubAFromDE                                          ; $48ea: $df
	add b                                            ; $48eb: $80
	rst SubAFromDE                                          ; $48ec: $df
	ld h, b                                          ; $48ed: $60
	rst SubAFromDE                                          ; $48ee: $df
	rra                                              ; $48ef: $1f
	rst SubAFromDE                                          ; $48f0: $df
	ret nz                                           ; $48f1: $c0

	sbc [hl]                                         ; $48f2: $9e
	rra                                              ; $48f3: $1f
	ld [hl], e                                       ; $48f4: $73
	sub [hl]                                         ; $48f5: $96
	sbc e                                            ; $48f6: $9b
	pop bc                                           ; $48f7: $c1
	rst $38                                          ; $48f8: $ff
	ld a, l                                          ; $48f9: $7d
	ld a, $63                                        ; $48fa: $3e $63
	and $fc                                          ; $48fc: $e6 $fc

jr_070_48fe:
	sub c                                            ; $48fe: $91
	db $10                                           ; $48ff: $10
	jr nc, jr_070_48fe                               ; $4900: $30 $fc

jr_070_4902:
	db $fc                                           ; $4902: $fc

jr_070_4903:
	rst AddAOntoHL                                          ; $4903: $ef
	di                                               ; $4904: $f3
	ld a, a                                          ; $4905: $7f
	rst $38                                          ; $4906: $ff
	rst SubAFromDE                                          ; $4907: $df
	ldh [$6f], a                                     ; $4908: $e0 $6f
	sbc a                                            ; $490a: $9f
	ld a, a                                          ; $490b: $7f
	ldh [$72], a                                     ; $490c: $e0 $72
	pop de                                           ; $490e: $d1
	sub e                                            ; $490f: $93
	ld c, $e1                                        ; $4910: $0e $e1
	rst $38                                          ; $4912: $ff
	inc e                                            ; $4913: $1c
	rst $38                                          ; $4914: $ff
	set 6, a                                         ; $4915: $cb $f7
	inc a                                            ; $4917: $3c
	di                                               ; $4918: $f3
	dec c                                            ; $4919: $0d
	rst $38                                          ; $491a: $ff
	inc bc                                           ; $491b: $03
	ld [hl], e                                       ; $491c: $73
	jp z, $eb7f                                      ; $491d: $ca $7f $eb

	adc c                                            ; $4920: $89
	ld [hl], b                                       ; $4921: $70
	rst $38                                          ; $4922: $ff
	inc a                                            ; $4923: $3c
	sbc a                                            ; $4924: $9f
	dec bc                                           ; $4925: $0b
	sbc a                                            ; $4926: $9f
	db $ed                                           ; $4927: $ed
	sbc e                                            ; $4928: $9b
	db $ed                                           ; $4929: $ed
	ld a, e                                          ; $492a: $7b
	ld a, l                                          ; $492b: $7d
	dec de                                           ; $492c: $1b
	jp hl                                            ; $492d: $e9


	rst $38                                          ; $492e: $ff
	ld h, l                                          ; $492f: $65
	cp e                                             ; $4930: $bb
	sub $db                                          ; $4931: $d6 $db
	ld l, [hl]                                       ; $4933: $6e
	rst AddAOntoHL                                          ; $4934: $ef
	ei                                               ; $4935: $fb
	ld e, l                                          ; $4936: $5d
	ldh [$c1], a                                     ; $4937: $e0 $c1
	sbc [hl]                                         ; $4939: $9e
	ld a, a                                          ; $493a: $7f
	ld [hl], e                                       ; $493b: $73
	cp $7f                                           ; $493c: $fe $7f
	sbc e                                            ; $493e: $9b
	rst SubAFromDE                                          ; $493f: $df
	db $fc                                           ; $4940: $fc
	halt                                             ; $4941: $76
	inc d                                            ; $4942: $14
	ld l, [hl]                                       ; $4943: $6e
	or $eb                                           ; $4944: $f6 $eb
	rst SubAFromDE                                          ; $4946: $df
	ret nz                                           ; $4947: $c0

	ld a, l                                          ; $4948: $7d
	ld b, b                                          ; $4949: $40
	add b                                            ; $494a: $80
	db $10                                           ; $494b: $10
	ldh a, [hDisp0_WY]                                     ; $494c: $f0 $88
	ld hl, sp-$01                                    ; $494e: $f8 $ff
	rst $38                                          ; $4950: $ff
	db $dd                                           ; $4951: $dd
	ld a, [hl]                                       ; $4952: $7e
	rst JumpTable                                          ; $4953: $c7
	ld a, a                                          ; $4954: $7f
	jp Jump_070_70fc                                 ; $4955: $c3 $fc $70


	rst $38                                          ; $4958: $ff
	ld l, l                                          ; $4959: $6d
	sbc $ba                                          ; $495a: $de $ba
	rst JumpTable                                          ; $495c: $c7
	ld c, a                                          ; $495d: $4f
	pop af                                           ; $495e: $f1
	ld [hl], a                                       ; $495f: $77
	cp b                                             ; $4960: $b8
	ei                                               ; $4961: $fb
	sbc h                                            ; $4962: $9c
	ld l, l                                          ; $4963: $6d
	sbc $3e                                          ; $4964: $de $3e
	rst FarCall                                          ; $4966: $f7
	rla                                              ; $4967: $17
	ei                                               ; $4968: $fb
	cpl                                              ; $4969: $2f
	sbc c                                            ; $496a: $99
	ei                                               ; $496b: $fb
	ld d, $ff                                        ; $496c: $16 $ff
	adc $ff                                          ; $496e: $ce $ff
	ld h, a                                          ; $4970: $67
	ld a, d                                          ; $4971: $7a
	inc h                                            ; $4972: $24
	sub l                                            ; $4973: $95
	cp e                                             ; $4974: $bb
	ld a, a                                          ; $4975: $7f
	db $ed                                           ; $4976: $ed
	ccf                                              ; $4977: $3f
	ld [hl], l                                       ; $4978: $75
	xor a                                            ; $4979: $af
	cp $a7                                           ; $497a: $fe $a7
	cp $a7                                           ; $497c: $fe $a7
	ldh [$c1], a                                     ; $497e: $e0 $c1
	adc e                                            ; $4980: $8b
	sbc a                                            ; $4981: $9f
	rst $38                                          ; $4982: $ff
	sub c                                            ; $4983: $91
	rst $38                                          ; $4984: $ff
	ret nc                                           ; $4985: $d0

	cp a                                             ; $4986: $bf
	ldh [$3f], a                                     ; $4987: $e0 $3f
	pop bc                                           ; $4989: $c1
	ld a, a                                          ; $498a: $7f
	add e                                            ; $498b: $83
	cp $07                                           ; $498c: $fe $07
	db $fc                                           ; $498e: $fc
	rrca                                             ; $498f: $0f
	ld hl, sp+$3f                                    ; $4990: $f8 $3f
	ldh [$a3], a                                     ; $4992: $e0 $a3
	ret nz                                           ; $4994: $c0

	ld [hl], l                                       ; $4995: $75
	ld [hl], d                                       ; $4996: $72
	ld [hl], c                                       ; $4997: $71
	ld l, l                                          ; $4998: $6d
	ld a, h                                          ; $4999: $7c
	adc [hl]                                         ; $499a: $8e
	ld a, e                                          ; $499b: $7b
	rst FarCall                                          ; $499c: $f7
	inc sp                                           ; $499d: $33
	ld d, [hl]                                       ; $499e: $56
	add d                                            ; $499f: $82
	and b                                            ; $49a0: $a0
	ldh a, [$d0]                                     ; $49a1: $f0 $d0
	cp b                                             ; $49a3: $b8
	ld l, b                                          ; $49a4: $68
	ld e, b                                          ; $49a5: $58
	cp b                                             ; $49a6: $b8
	xor h                                            ; $49a7: $ac
	ld e, h                                          ; $49a8: $5c
	ld e, h                                          ; $49a9: $5c
	xor h                                            ; $49aa: $ac
	db $e4                                           ; $49ab: $e4
	sbc h                                            ; $49ac: $9c
	ld h, d                                          ; $49ad: $62
	sbc $d2                                          ; $49ae: $de $d2
	ld l, [hl]                                       ; $49b0: $6e
	or d                                             ; $49b1: $b2
	ld l, [hl]                                       ; $49b2: $6e
	ld a, [$6926]                                    ; $49b3: $fa $26 $69
	or a                                             ; $49b6: $b7
	reti                                             ; $49b7: $d9


	or a                                             ; $49b8: $b7
	sbc l                                            ; $49b9: $9d
	di                                               ; $49ba: $f3
	ld d, l                                          ; $49bb: $55
	ei                                               ; $49bc: $fb
	ld [hl], a                                       ; $49bd: $77
	cp $7e                                           ; $49be: $fe $7e
	ld d, $98                                        ; $49c0: $16 $98
	cp a                                             ; $49c2: $bf
	jp hl                                            ; $49c3: $e9


	cp a                                             ; $49c4: $bf
	jp hl                                            ; $49c5: $e9


	rst $38                                          ; $49c6: $ff
	jp hl                                            ; $49c7: $e9


	ld a, a                                          ; $49c8: $7f
	ld a, e                                          ; $49c9: $7b
	cp $86                                           ; $49ca: $fe $86
	db $fd                                           ; $49cc: $fd
	db $eb                                           ; $49cd: $eb
	db $fd                                           ; $49ce: $fd
	db $eb                                           ; $49cf: $eb
	xor $fa                                          ; $49d0: $ee $fa
	adc $fa                                          ; $49d2: $ce $fa
	sub $fa                                          ; $49d4: $d6 $fa
	jp c, $dcf6                                      ; $49d6: $da $f6 $dc

	db $f4                                           ; $49d9: $f4
	call c, $e4f4                                    ; $49da: $dc $f4 $e4
	ld a, h                                          ; $49dd: $7c
	add sp, $78                                      ; $49de: $e8 $78
	xor b                                            ; $49e0: $a8
	ld hl, sp-$58                                    ; $49e1: $f8 $a8
	ld hl, sp+$28                                    ; $49e3: $f8 $28
	ld a, e                                          ; $49e5: $7b
	db $fc                                           ; $49e6: $fc
	sub a                                            ; $49e7: $97
	add sp, -$08                                     ; $49e8: $e8 $f8
	ld l, b                                          ; $49ea: $68
	ld hl, sp-$58                                    ; $49eb: $f8 $a8
	cp b                                             ; $49ed: $b8
	xor b                                            ; $49ee: $a8
	cp b                                             ; $49ef: $b8
	db $db                                           ; $49f0: $db
	sbc b                                            ; $49f1: $98
	db $db                                           ; $49f2: $db
	adc b                                            ; $49f3: $88
	rst SubAFromDE                                          ; $49f4: $df
	add b                                            ; $49f5: $80
	rst SubAFromDE                                          ; $49f6: $df
	ret nz                                           ; $49f7: $c0

	rst SubAFromDE                                          ; $49f8: $df
	ld b, b                                          ; $49f9: $40
	ld e, a                                          ; $49fa: $5f
	sub d                                            ; $49fb: $92
	add e                                            ; $49fc: $83
	or b                                             ; $49fd: $b0
	ldh a, [$8c]                                     ; $49fe: $f0 $8c
	db $fc                                           ; $4a00: $fc
	ld h, e                                          ; $4a01: $63
	sbc a                                            ; $4a02: $9f
	ld hl, sp+$07                                    ; $4a03: $f8 $07
	cp $01                                           ; $4a05: $fe $01
	rst $38                                          ; $4a07: $ff
	nop                                              ; $4a08: $00
	rst FarCall                                          ; $4a09: $f7
	ld [$08f7], sp                                   ; $4a0a: $08 $f7 $08
	di                                               ; $4a0d: $f3
	inc c                                            ; $4a0e: $0c
	cp c                                             ; $4a0f: $b9
	ld b, [hl]                                       ; $4a10: $46
	reti                                             ; $4a11: $d9


	ld h, $cd                                        ; $4a12: $26 $cd
	ld [hl-], a                                      ; $4a14: $32
	rst SubAFromBC                                          ; $4a15: $e7
	ld a, [de]                                       ; $4a16: $1a
	ld h, e                                          ; $4a17: $63
	sbc [hl]                                         ; $4a18: $9e
	ld d, c                                          ; $4a19: $51
	ld a, [$e08c]                                    ; $4a1a: $fa $8c $e0
	sub b                                            ; $4a1d: $90
	ld [hl], b                                       ; $4a1e: $70
	add sp, $18                                      ; $4a1f: $e8 $18
	db $f4                                           ; $4a21: $f4
	inc c                                            ; $4a22: $0c
	db $f4                                           ; $4a23: $f4
	inc c                                            ; $4a24: $0c
	ldh a, [c]                                       ; $4a25: $f2
	ld c, $ee                                        ; $4a26: $0e $ee
	ld [de], a                                       ; $4a28: $12
	sbc l                                            ; $4a29: $9d
	ld h, e                                          ; $4a2a: $63
	ld a, a                                          ; $4a2b: $7f
	pop bc                                           ; $4a2c: $c1
	cp a                                             ; $4a2d: $bf
	pop bc                                           ; $4a2e: $c1
	ld e, $00                                        ; $4a2f: $1e $00
	db $dd                                           ; $4a31: $dd
	sbc c                                            ; $4a32: $99
	rst SubAFromDE                                          ; $4a33: $df
	xor d                                            ; $4a34: $aa
	sub [hl]                                         ; $4a35: $96
	call z, $aaff                                    ; $4a36: $cc $ff $aa
	xor d                                            ; $4a39: $aa
	sbc c                                            ; $4a3a: $99
	sbc c                                            ; $4a3b: $99
	ld [hl], a                                       ; $4a3c: $77
	xor d                                            ; $4a3d: $aa
	nop                                              ; $4a3e: $00
	ld d, a                                          ; $4a3f: $57
	ei                                               ; $4a40: $fb
	sbc h                                            ; $4a41: $9c
	ld h, [hl]                                       ; $4a42: $66
	xor d                                            ; $4a43: $aa
	ld [hl+], a                                      ; $4a44: $22
	ld [hl], a                                       ; $4a45: $77
	or $df                                           ; $4a46: $f6 $df
	xor d                                            ; $4a48: $aa
	sbc h                                            ; $4a49: $9c
	adc b                                            ; $4a4a: $88
	rst $38                                          ; $4a4b: $ff
	rst $38                                          ; $4a4c: $ff
	rst FarCall                                          ; $4a4d: $f7
	ld bc, $ee80                                     ; $4a4e: $01 $80 $ee
	cp c                                             ; $4a51: $b9
	ld a, l                                          ; $4a52: $7d
	or e                                             ; $4a53: $b3
	ld a, d                                          ; $4a54: $7a
	and a                                            ; $4a55: $a7
	xor $5f                                          ; $4a56: $ee $5f
	sub $bf                                          ; $4a58: $d6 $bf
	or a                                             ; $4a5a: $b7
	ld a, l                                          ; $4a5b: $7d
	ld d, [hl]                                       ; $4a5c: $56
	db $fd                                           ; $4a5d: $fd
	call $cfff                                       ; $4a5e: $cd $ff $cf
	cp $af                                           ; $4a61: $fe $af
	ld hl, sp+$2b                                    ; $4a63: $f8 $2b
	inc a                                            ; $4a65: $3c
	rla                                              ; $4a66: $17
	inc e                                            ; $4a67: $1c
	ld e, $1d                                        ; $4a68: $1e $1d
	dec de                                           ; $4a6a: $1b
	ld d, $1f                                        ; $4a6b: $16 $1f
	ld [de], a                                       ; $4a6d: $12
	rra                                              ; $4a6e: $1f
	sbc c                                            ; $4a6f: $99
	ld [de], a                                       ; $4a70: $12
	add hl, bc                                       ; $4a71: $09
	rrca                                             ; $4a72: $0f
	add hl, bc                                       ; $4a73: $09
	rrca                                             ; $4a74: $0f
	dec b                                            ; $4a75: $05
	sbc $07                                          ; $4a76: $de $07
	adc e                                            ; $4a78: $8b
	ld [$100f], sp                                   ; $4a79: $08 $0f $10
	rra                                              ; $4a7c: $1f
	ld hl, $c23f                                     ; $4a7d: $21 $3f $c2
	cp $04                                           ; $4a80: $fe $04
	db $fc                                           ; $4a82: $fc
	ld [$10f8], sp                                   ; $4a83: $08 $f8 $10
	ldh a, [rAUD4LEN]                                ; $4a86: $f0 $20
	ldh [rLCDC], a                                   ; $4a88: $e0 $40
	ret nz                                           ; $4a8a: $c0

	add b                                            ; $4a8b: $80
	add b                                            ; $4a8c: $80
	db $fd                                           ; $4a8d: $fd
	add b                                            ; $4a8e: $80
	ret                                              ; $4a8f: $c9


	db $eb                                           ; $4a90: $eb
	ld c, [hl]                                       ; $4a91: $4e
	db $db                                           ; $4a92: $db
	db $db                                           ; $4a93: $db
	cp $ff                                           ; $4a94: $fe $ff
	or [hl]                                          ; $4a96: $b6
	di                                               ; $4a97: $f3
	xor [hl]                                         ; $4a98: $ae
	xor [hl]                                         ; $4a99: $ae
	ld a, [$f0fc]                                    ; $4a9a: $fa $fc $f0
	cp [hl]                                          ; $4a9d: $be
	ret nz                                           ; $4a9e: $c0

	rst $38                                          ; $4a9f: $ff
	nop                                              ; $4aa0: $00
	db $e3                                           ; $4aa1: $e3
	inc e                                            ; $4aa2: $1c
	rst $38                                          ; $4aa3: $ff
	ld a, $77                                        ; $4aa4: $3e $77
	rst SubAFromBC                                          ; $4aa6: $e7
	rst SubAFromBC                                          ; $4aa7: $e7
	xor $de                                          ; $4aa8: $ee $de
	cp [hl]                                          ; $4aaa: $be
	inc de                                           ; $4aab: $13
	ld e, $16                                        ; $4aac: $1e $16
	sub [hl]                                         ; $4aae: $96
	inc e                                            ; $4aaf: $1c
	ld a, [$f105]                                    ; $4ab0: $fa $05 $f1
	ld c, $ff                                        ; $4ab3: $0e $ff
	nop                                              ; $4ab5: $00
	rst $38                                          ; $4ab6: $ff
	add b                                            ; $4ab7: $80
	ld a, e                                          ; $4ab8: $7b
	cp $7f                                           ; $4ab9: $fe $7f
	db $e4                                           ; $4abb: $e4
	sub h                                            ; $4abc: $94
	ldh [$df], a                                     ; $4abd: $e0 $df
	ret nc                                           ; $4abf: $d0

	ld c, a                                          ; $4ac0: $4f
	ld c, h                                          ; $4ac1: $4c
	ld b, e                                          ; $4ac2: $43
	ld b, d                                          ; $4ac3: $42
	ld hl, $2021                                     ; $4ac4: $21 $21 $20
	jr nz, @-$01                                     ; $4ac7: $20 $fd

	rst SubAFromDE                                          ; $4ac9: $df
	inc bc                                           ; $4aca: $03
	rst SubAFromDE                                          ; $4acb: $df
	ccf                                              ; $4acc: $3f
	sbc c                                            ; $4acd: $99
	rrca                                             ; $4ace: $0f
	dec bc                                           ; $4acf: $0b
	ld a, [bc]                                       ; $4ad0: $0a
	rrca                                             ; $4ad1: $0f
	rlca                                             ; $4ad2: $07
	ld b, $dd                                        ; $4ad3: $06 $dd
	inc b                                            ; $4ad5: $04
	sbc [hl]                                         ; $4ad6: $9e
	ld bc, $03b6                                     ; $4ad7: $01 $b6 $03
	rlca                                             ; $4ada: $07
	rlca                                             ; $4adb: $07
	inc bc                                           ; $4adc: $03
	ld bc, $0000                                     ; $4add: $01 $00 $00
	jr nz, jr_070_4b36                               ; $4ae0: $20 $54

	cp $7d                                           ; $4ae2: $fe $7d
	add c                                            ; $4ae4: $81
	adc $df                                          ; $4ae5: $ce $df
	jp z, $8bce                                      ; $4ae7: $ca $ce $8b

	add [hl]                                         ; $4aea: $86
	ei                                               ; $4aeb: $fb
	ld sp, hl                                        ; $4aec: $f9
	rst $38                                          ; $4aed: $ff
	rst $38                                          ; $4aee: $ff
	rlca                                             ; $4aef: $07
	rst $38                                          ; $4af0: $ff
	ld bc, $00ff                                     ; $4af1: $01 $ff $00
	jp $fe3c                                         ; $4af4: $c3 $3c $fe


	ld a, a                                          ; $4af7: $7f
	rst SubAFromBC                                          ; $4af8: $e7
	rst SubAFromBC                                          ; $4af9: $e7
	xor [hl]                                         ; $4afa: $ae
	daa                                              ; $4afb: $27
	ld a, $3e                                        ; $4afc: $3e $3e
	inc hl                                           ; $4afe: $23
	ld a, $37                                        ; $4aff: $3e $37
	inc e                                            ; $4b01: $1c
	ccf                                              ; $4b02: $3f
	cp h                                             ; $4b03: $bc
	ld b, e                                          ; $4b04: $43
	rlca                                             ; $4b05: $07
	rlca                                             ; $4b06: $07
	rrca                                             ; $4b07: $0f
	rrca                                             ; $4b08: $0f
	add b                                            ; $4b09: $80
	ld bc, $031f                                     ; $4b0a: $01 $1f $03
	dec e                                            ; $4b0d: $1d
	rlca                                             ; $4b0e: $07
	add hl, sp                                       ; $4b0f: $39
	rrca                                             ; $4b10: $0f
	ld [hl], c                                       ; $4b11: $71
	rra                                              ; $4b12: $1f
	pop hl                                           ; $4b13: $e1
	ld a, a                                          ; $4b14: $7f
	add e                                            ; $4b15: $83
	db $fd                                           ; $4b16: $fd
	rlca                                             ; $4b17: $07
	ld sp, hl                                        ; $4b18: $f9
	rrca                                             ; $4b19: $0f
	pop af                                           ; $4b1a: $f1
	rra                                              ; $4b1b: $1f
	pop hl                                           ; $4b1c: $e1
	ccf                                              ; $4b1d: $3f
	pop bc                                           ; $4b1e: $c1
	rst $38                                          ; $4b1f: $ff
	nop                                              ; $4b20: $00
	or a                                             ; $4b21: $b7
	db $ed                                           ; $4b22: $ed
	cp l                                             ; $4b23: $bd
	db $eb                                           ; $4b24: $eb
	rst $38                                          ; $4b25: $ff
	ei                                               ; $4b26: $fb
	jp c, $80ff                                      ; $4b27: $da $ff $80

	ld [$6e5f], a                                    ; $4b2a: $ea $5f $6e
	cp a                                             ; $4b2d: $bf
	db $ed                                           ; $4b2e: $ed
	ccf                                              ; $4b2f: $3f
	db $fd                                           ; $4b30: $fd
	ccf                                              ; $4b31: $3f
	or $5f                                           ; $4b32: $f6 $5f
	rst FarCall                                          ; $4b34: $f7
	rra                                              ; $4b35: $1f

jr_070_4b36:
	ld [hl], a                                       ; $4b36: $77
	sbc h                                            ; $4b37: $9c
	or a                                             ; $4b38: $b7
	call c, $38ef                                    ; $4b39: $dc $ef $38
	xor $39                                          ; $4b3c: $ee $39
	push af                                          ; $4b3e: $f5
	dec sp                                           ; $4b3f: $3b
	cp [hl]                                          ; $4b40: $be
	ld h, e                                          ; $4b41: $63
	cp $7f                                           ; $4b42: $fe $7f
	jp nc, $525f                                     ; $4b44: $d2 $5f $52

	rst SubAFromDE                                          ; $4b47: $df
	jp c, $df86                                      ; $4b48: $da $86 $df

	xor d                                            ; $4b4b: $aa
	rst AddAOntoHL                                          ; $4b4c: $ef
	add hl, hl                                       ; $4b4d: $29
	rst AddAOntoHL                                          ; $4b4e: $ef
	dec h                                            ; $4b4f: $25
	rst SubAFromBC                                          ; $4b50: $e7
	ld d, $f7                                        ; $4b51: $16 $f7
	sub d                                            ; $4b53: $92
	di                                               ; $4b54: $f3
	adc c                                            ; $4b55: $89
	ld sp, hl                                        ; $4b56: $f9
	adc c                                            ; $4b57: $89
	ld sp, hl                                        ; $4b58: $f9
	ld b, h                                          ; $4b59: $44
	ld a, h                                          ; $4b5a: $7c
	ld b, d                                          ; $4b5b: $42
	ld a, [hl]                                       ; $4b5c: $7e
	inc hl                                           ; $4b5d: $23
	ccf                                              ; $4b5e: $3f
	inc e                                            ; $4b5f: $1c
	inc e                                            ; $4b60: $1c
	ldh [$e0], a                                     ; $4b61: $e0 $e0
	ld d, [hl]                                       ; $4b63: $56
	ldh [$9c], a                                     ; $4b64: $e0 $9c
	ld d, a                                          ; $4b66: $57
	db $fc                                           ; $4b67: $fc
	adc $7a                                          ; $4b68: $ce $7a
	sbc $9d                                          ; $4b6a: $de $9d
	xor a                                            ; $4b6c: $af
	ld a, [$e076]                                    ; $4b6d: $fa $76 $e0
	sbc e                                            ; $4b70: $9b
	rra                                              ; $4b71: $1f
	inc e                                            ; $4b72: $1c
	ld a, [de]                                       ; $4b73: $1a
	rla                                              ; $4b74: $17
	halt                                             ; $4b75: $76
	ldh [$5f], a                                     ; $4b76: $e0 $5f
	nop                                              ; $4b78: $00
	sbc l                                            ; $4b79: $9d
	xor $ba                                          ; $4b7a: $ee $ba
	ld l, a                                          ; $4b7c: $6f
	nop                                              ; $4b7d: $00
	ld e, [hl]                                       ; $4b7e: $5e
	cp $9b                                           ; $4b7f: $fe $9b
	rst SubAFromDE                                          ; $4b81: $df
	cp [hl]                                          ; $4b82: $be
	ld d, $1c                                        ; $4b83: $16 $1c
	ld l, a                                          ; $4b85: $6f
	ld b, b                                          ; $4b86: $40
	sub a                                            ; $4b87: $97
	adc [hl]                                         ; $4b88: $8e
	di                                               ; $4b89: $f3
	ld sp, hl                                        ; $4b8a: $f9
	rst $38                                          ; $4b8b: $ff
	rst FarCall                                          ; $4b8c: $f7
	rrca                                             ; $4b8d: $0f
	db $fd                                           ; $4b8e: $fd
	inc bc                                           ; $4b8f: $03
	ld [hl], a                                       ; $4b90: $77
	ldh [c], a                                       ; $4b91: $e2
	ld e, a                                          ; $4b92: $5f
	ld a, $77                                        ; $4b93: $3e $77
	ld b, b                                          ; $4b95: $40
	scf                                              ; $4b96: $37
	ld h, b                                          ; $4b97: $60
	sbc c                                            ; $4b98: $99
	rst FarCall                                          ; $4b99: $f7
	inc e                                            ; $4b9a: $1c
	ld [hl], a                                       ; $4b9b: $77
	sbc h                                            ; $4b9c: $9c

jr_070_4b9d:
	xor a                                            ; $4b9d: $af
	ld hl, sp+$6f                                    ; $4b9e: $f8 $6f
	ld h, b                                          ; $4ba0: $60
	inc bc                                           ; $4ba1: $03
	add b                                            ; $4ba2: $80
	ld l, e                                          ; $4ba3: $6b
	add b                                            ; $4ba4: $80
	sub a                                            ; $4ba5: $97
	ei                                               ; $4ba6: $fb
	and [hl]                                         ; $4ba7: $a6
	ld a, [$f4ae]                                    ; $4ba8: $fa $ae $f4
	cp b                                             ; $4bab: $b8
	adc $f0                                          ; $4bac: $ce $f0
	ld [hl], a                                       ; $4bae: $77
	sbc [hl]                                         ; $4baf: $9e
	ld [hl], e                                       ; $4bb0: $73
	ld a, h                                          ; $4bb1: $7c
	ld a, a                                          ; $4bb2: $7f
	db $fc                                           ; $4bb3: $fc
	sbc h                                            ; $4bb4: $9c
	ld e, $eb                                        ; $4bb5: $1e $eb
	rst FarCall                                          ; $4bb7: $f7
	ld h, a                                          ; $4bb8: $67
	add b                                            ; $4bb9: $80
	sbc c                                            ; $4bba: $99
	cp [hl]                                          ; $4bbb: $be
	jp $fff1                                         ; $4bbc: $c3 $f1 $ff


	rst GetHLinHL                                          ; $4bbf: $cf
	ccf                                              ; $4bc0: $3f
	ld l, a                                          ; $4bc1: $6f
	add b                                            ; $4bc2: $80
	ld l, a                                          ; $4bc3: $6f
	ldh [c], a                                       ; $4bc4: $e2
	sbc e                                            ; $4bc5: $9b
	db $dd                                           ; $4bc6: $dd
	ld a, $6b                                        ; $4bc7: $3e $6b
	ld [hl], a                                       ; $4bc9: $77
	rra                                              ; $4bca: $1f
	add b                                            ; $4bcb: $80
	ld a, a                                          ; $4bcc: $7f
	cp $7a                                           ; $4bcd: $fe $7a
	ldh [$9e], a                                     ; $4bcf: $e0 $9e
	cp c                                             ; $4bd1: $b9
	ccf                                              ; $4bd2: $3f
	add b                                            ; $4bd3: $80
	sbc c                                            ; $4bd4: $99
	rst GetHLinHL                                          ; $4bd5: $cf
	db $fc                                           ; $4bd6: $fc
	rst GetHLinHL                                          ; $4bd7: $cf
	db $fd                                           ; $4bd8: $fd
	xor [hl]                                         ; $4bd9: $ae
	ei                                               ; $4bda: $fb
	ld l, a                                          ; $4bdb: $6f
	add b                                            ; $4bdc: $80
	ld l, l                                          ; $4bdd: $6d
	ldh [rBGP], a                                    ; $4bde: $e0 $47
	add b                                            ; $4be0: $80
	sbc [hl]                                         ; $4be1: $9e
	ccf                                              ; $4be2: $3f
	ld [hl], d                                       ; $4be3: $72
	cp $77                                           ; $4be4: $fe $77
	sbc [hl]                                         ; $4be6: $9e
	sbc c                                            ; $4be7: $99
	db $fc                                           ; $4be8: $fc
	nop                                              ; $4be9: $00
	db $e3                                           ; $4bea: $e3
	rst JumpTable                                          ; $4beb: $c7
	ld a, $7c                                        ; $4bec: $3e $7c
	ld h, a                                          ; $4bee: $67
	add b                                            ; $4bef: $80
	sbc c                                            ; $4bf0: $99
	rst FarCall                                          ; $4bf1: $f7
	ld sp, hl                                        ; $4bf2: $f9
	call $fb3f                                       ; $4bf3: $cd $3f $fb
	rlca                                             ; $4bf6: $07
	ld h, a                                          ; $4bf7: $67
	add b                                            ; $4bf8: $80
	sbc [hl]                                         ; $4bf9: $9e
	rst JumpTable                                          ; $4bfa: $c7
	cp a                                             ; $4bfb: $bf
	ccf                                              ; $4bfc: $3f
	ld h, c                                          ; $4bfd: $61
	sbc h                                            ; $4bfe: $9c
	ld [hl], e                                       ; $4bff: $73
	ld e, $3f                                        ; $4c00: $1e $3f
	rla                                              ; $4c02: $17
	add b                                            ; $4c03: $80
	sbc l                                            ; $4c04: $9d
	xor [hl]                                         ; $4c05: $ae
	ld sp, hl                                        ; $4c06: $f9
	ld [hl], a                                       ; $4c07: $77
	add b                                            ; $4c08: $80
	sub h                                            ; $4c09: $94
	ld e, l                                          ; $4c0a: $5d
	jr nz, jr_070_4b9d                               ; $4c0b: $20 $90

	ld h, b                                          ; $4c0d: $60
	nop                                              ; $4c0e: $00
	nop                                              ; $4c0f: $00
	ld b, b                                          ; $4c10: $40
	ld [$3008], sp                                   ; $4c11: $08 $08 $30
	nop                                              ; $4c14: $00
	cp h                                             ; $4c15: $bc
	stop                                             ; $4c16: $10 $00
	nop                                              ; $4c18: $00
	nop                                              ; $4c19: $00
	add c                                            ; $4c1a: $81
	sub a                                            ; $4c1b: $97
	ret nz                                           ; $4c1c: $c0

	ei                                               ; $4c1d: $fb
	rst SubAFromBC                                          ; $4c1e: $e7
	cp $9f                                           ; $4c1f: $fe $9f
	call nz, $8383                                   ; $4c21: $c4 $83 $83
	sbc $80                                          ; $4c24: $de $80
	ld l, a                                          ; $4c26: $6f
	ldh [$9c], a                                     ; $4c27: $e0 $9c
	ld e, b                                          ; $4c29: $58
	jr jr_070_4c4c                                   ; $4c2a: $18 $20

	inc de                                           ; $4c2c: $13
	ldh [$9b], a                                     ; $4c2d: $e0 $9b
	jr nc, jr_070_4ca9                               ; $4c2f: $30 $78

	jr c, @+$32                                      ; $4c31: $38 $30

	cp a                                             ; $4c33: $bf
	stop                                             ; $4c34: $10 $00
	ld l, a                                          ; $4c36: $6f
	sbc $3f                                          ; $4c37: $de $3f
	ldh [$9a], a                                     ; $4c39: $e0 $9a
	ld [hl], b                                       ; $4c3b: $70
	ld a, b                                          ; $4c3c: $78
	ld a, b                                          ; $4c3d: $78
	jr c, @+$12                                      ; $4c3e: $38 $10

	ld h, e                                          ; $4c40: $63
	cp [hl]                                          ; $4c41: $be
	ld d, a                                          ; $4c42: $57
	ldh [$f7], a                                     ; $4c43: $e0 $f7
	ld bc, $ee80                                     ; $4c45: $01 $80 $ee
	cp c                                             ; $4c48: $b9
	ld a, l                                          ; $4c49: $7d
	or e                                             ; $4c4a: $b3
	ld a, d                                          ; $4c4b: $7a

jr_070_4c4c:
	and a                                            ; $4c4c: $a7
	xor $5f                                          ; $4c4d: $ee $5f
	sub $bf                                          ; $4c4f: $d6 $bf
	or a                                             ; $4c51: $b7
	ld a, l                                          ; $4c52: $7d
	ld d, l                                          ; $4c53: $55
	rst $38                                          ; $4c54: $ff
	rst GetHLinHL                                          ; $4c55: $cf
	cp $cf                                           ; $4c56: $fe $cf
	db $fc                                           ; $4c58: $fc
	xor a                                            ; $4c59: $af
	ld hl, sp+$2b                                    ; $4c5a: $f8 $2b
	inc a                                            ; $4c5c: $3c
	ld d, $1d                                        ; $4c5d: $16 $1d
	rra                                              ; $4c5f: $1f
	inc e                                            ; $4c60: $1c
	dec de                                           ; $4c61: $1b
	ld d, $1f                                        ; $4c62: $16 $1f
	ld [de], a                                       ; $4c64: $12
	rra                                              ; $4c65: $1f
	sbc c                                            ; $4c66: $99
	ld [de], a                                       ; $4c67: $12
	add hl, bc                                       ; $4c68: $09
	rrca                                             ; $4c69: $0f
	add hl, bc                                       ; $4c6a: $09
	rrca                                             ; $4c6b: $0f
	dec b                                            ; $4c6c: $05
	sbc $07                                          ; $4c6d: $de $07
	adc e                                            ; $4c6f: $8b
	ld [$100f], sp                                   ; $4c70: $08 $0f $10
	rra                                              ; $4c73: $1f
	ld hl, $c23f                                     ; $4c74: $21 $3f $c2
	cp $04                                           ; $4c77: $fe $04
	db $fc                                           ; $4c79: $fc
	ld [$10f8], sp                                   ; $4c7a: $08 $f8 $10
	ldh a, [rAUD4LEN]                                ; $4c7d: $f0 $20
	ldh [rLCDC], a                                   ; $4c7f: $e0 $40
	ret nz                                           ; $4c81: $c0

	add b                                            ; $4c82: $80
	add b                                            ; $4c83: $80
	db $fd                                           ; $4c84: $fd
	add b                                            ; $4c85: $80
	ret                                              ; $4c86: $c9


	db $eb                                           ; $4c87: $eb
	ld c, [hl]                                       ; $4c88: $4e
	db $db                                           ; $4c89: $db
	db $db                                           ; $4c8a: $db
	cp $ff                                           ; $4c8b: $fe $ff
	or [hl]                                          ; $4c8d: $b6
	and a                                            ; $4c8e: $a7
	ld a, [$fafe]                                    ; $4c8f: $fa $fe $fa
	db $fc                                           ; $4c92: $fc
	nop                                              ; $4c93: $00
	cp $00                                           ; $4c94: $fe $00
	rst $38                                          ; $4c96: $ff
	inc a                                            ; $4c97: $3c
	rst FarCall                                          ; $4c98: $f7
	ld a, [hl]                                       ; $4c99: $7e
	ld [hl], e                                       ; $4c9a: $73
	rst SubAFromBC                                          ; $4c9b: $e7
	rst SubAFromBC                                          ; $4c9c: $e7
	xor $fe                                          ; $4c9d: $ee $fe
	cp [hl]                                          ; $4c9f: $be
	cp d                                             ; $4ca0: $ba
	ld a, $12                                        ; $4ca1: $3e $12
	ld a, $16                                        ; $4ca3: $3e $16
	sbc h                                            ; $4ca5: $9c
	inc e                                            ; $4ca6: $1c
	rst $38                                          ; $4ca7: $ff
	nop                                              ; $4ca8: $00

jr_070_4ca9:
	ld [hl], e                                       ; $4ca9: $73
	cp $9e                                           ; $4caa: $fe $9e
	add b                                            ; $4cac: $80
	ld a, e                                          ; $4cad: $7b
	cp $92                                           ; $4cae: $fe $92
	ret nz                                           ; $4cb0: $c0

	rst $38                                          ; $4cb1: $ff
	ldh [$df], a                                     ; $4cb2: $e0 $df
	ret nc                                           ; $4cb4: $d0

	ld c, a                                          ; $4cb5: $4f
	ld c, h                                          ; $4cb6: $4c
	ld b, e                                          ; $4cb7: $43
	ld b, d                                          ; $4cb8: $42
	ld hl, $2021                                     ; $4cb9: $21 $21 $20
	jr nz, @-$01                                     ; $4cbc: $20 $fd

	rst SubAFromDE                                          ; $4cbe: $df
	inc bc                                           ; $4cbf: $03
	rst SubAFromDE                                          ; $4cc0: $df
	ccf                                              ; $4cc1: $3f
	sbc c                                            ; $4cc2: $99
	rrca                                             ; $4cc3: $0f
	dec bc                                           ; $4cc4: $0b
	ld a, [bc]                                       ; $4cc5: $0a
	rrca                                             ; $4cc6: $0f
	rlca                                             ; $4cc7: $07
	ld b, $dd                                        ; $4cc8: $06 $dd
	inc b                                            ; $4cca: $04
	sbc d                                            ; $4ccb: $9a
	ld bc, $0300                                     ; $4ccc: $01 $00 $03
	nop                                              ; $4ccf: $00
	rlca                                             ; $4cd0: $07
	ld a, e                                          ; $4cd1: $7b
	cp $7f                                           ; $4cd2: $fe $7f
	ld a, [$f67f]                                    ; $4cd4: $fa $7f $f6
	ei                                               ; $4cd7: $fb
	adc a                                            ; $4cd8: $8f
	stop                                             ; $4cd9: $10 $00
	jr nc, jr_070_4cdd                               ; $4cdb: $30 $00

jr_070_4cdd:
	ld a, l                                          ; $4cdd: $7d
	adc $df                                          ; $4cde: $ce $df
	jp z, $bfca                                      ; $4ce0: $ca $ca $bf

	cp [hl]                                          ; $4ce3: $be
	rst $38                                          ; $4ce4: $ff
	rst $38                                          ; $4ce5: $ff
	jp $01ff                                         ; $4ce6: $c3 $ff $01


	ld a, e                                          ; $4ce9: $7b
	cp $8f                                           ; $4cea: $fe $8f
	ld a, $e7                                        ; $4cec: $3e $e7
	ld a, a                                          ; $4cee: $7f
	db $e3                                           ; $4cef: $e3
	rst SubAFromBC                                          ; $4cf0: $e7
	xor [hl]                                         ; $4cf1: $ae
	daa                                              ; $4cf2: $27

Call_070_4cf3:
	ld a, $3e                                        ; $4cf3: $3e $3e
	inc sp                                           ; $4cf5: $33
	ld a, $23                                        ; $4cf6: $3e $23
	ld a, $37                                        ; $4cf8: $3e $37
	inc e                                            ; $4cfa: $1c
	ccf                                              ; $4cfb: $3f
	ld l, e                                          ; $4cfc: $6b
	call z, $0f80                                    ; $4cfd: $cc $80 $0f
	nop                                              ; $4d00: $00
	rrca                                             ; $4d01: $0f
	ld bc, $031f                                     ; $4d02: $01 $1f $03
	dec e                                            ; $4d05: $1d
	rlca                                             ; $4d06: $07
	add hl, sp                                       ; $4d07: $39
	rrca                                             ; $4d08: $0f
	ld [hl], c                                       ; $4d09: $71
	rra                                              ; $4d0a: $1f
	pop hl                                           ; $4d0b: $e1
	ld a, a                                          ; $4d0c: $7f
	add e                                            ; $4d0d: $83
	db $fd                                           ; $4d0e: $fd
	rlca                                             ; $4d0f: $07
	ld sp, hl                                        ; $4d10: $f9
	rrca                                             ; $4d11: $0f
	pop af                                           ; $4d12: $f1
	rra                                              ; $4d13: $1f
	pop hl                                           ; $4d14: $e1
	ccf                                              ; $4d15: $3f
	pop bc                                           ; $4d16: $c1
	rst $38                                          ; $4d17: $ff
	nop                                              ; $4d18: $00
	or a                                             ; $4d19: $b7
	db $ed                                           ; $4d1a: $ed
	cp l                                             ; $4d1b: $bd
	db $eb                                           ; $4d1c: $eb
	rst $38                                          ; $4d1d: $ff
	add b                                            ; $4d1e: $80
	ei                                               ; $4d1f: $fb
	jp c, Jump_070_6aff                              ; $4d20: $da $ff $6a

jr_070_4d23:
	rst SubAFromDE                                          ; $4d23: $df
	xor $bf                                          ; $4d24: $ee $bf
	db $ed                                           ; $4d26: $ed
	ccf                                              ; $4d27: $3f
	db $fd                                           ; $4d28: $fd
	ccf                                              ; $4d29: $3f
	or $5f                                           ; $4d2a: $f6 $5f
	ld [hl], a                                       ; $4d2c: $77
	sbc a                                            ; $4d2d: $9f
	or a                                             ; $4d2e: $b7
	call c, $1cf7                                    ; $4d2f: $dc $f7 $1c
	rst AddAOntoHL                                          ; $4d32: $ef
	jr c, jr_070_4d23                                ; $4d33: $38 $ee

	add hl, sp                                       ; $4d35: $39
	push af                                          ; $4d36: $f5
	dec sp                                           ; $4d37: $3b
	cp [hl]                                          ; $4d38: $be
	ld h, e                                          ; $4d39: $63
	cp $7f                                           ; $4d3a: $fe $7f
	jp nc, $835f                                     ; $4d3c: $d2 $5f $83

	ld d, d                                          ; $4d3f: $52
	rst SubAFromDE                                          ; $4d40: $df
	jp c, $aadf                                      ; $4d41: $da $df $aa

	rst AddAOntoHL                                          ; $4d44: $ef
	add hl, hl                                       ; $4d45: $29
	rst AddAOntoHL                                          ; $4d46: $ef
	dec h                                            ; $4d47: $25
	rst SubAFromBC                                          ; $4d48: $e7
	ld d, $f7                                        ; $4d49: $16 $f7
	sub d                                            ; $4d4b: $92
	di                                               ; $4d4c: $f3
	adc c                                            ; $4d4d: $89
	ld sp, hl                                        ; $4d4e: $f9
	adc c                                            ; $4d4f: $89
	ld sp, hl                                        ; $4d50: $f9
	ld b, h                                          ; $4d51: $44
	ld a, h                                          ; $4d52: $7c
	ld b, d                                          ; $4d53: $42
	ld a, [hl]                                       ; $4d54: $7e
	inc hl                                           ; $4d55: $23
	ccf                                              ; $4d56: $3f
	inc e                                            ; $4d57: $1c
	inc e                                            ; $4d58: $1c
	ldh [$e0], a                                     ; $4d59: $e0 $e0
	ld l, $e0                                        ; $4d5b: $2e $e0
	sbc l                                            ; $4d5d: $9d
	rla                                              ; $4d5e: $17
	inc e                                            ; $4d5f: $1c
	ld h, [hl]                                       ; $4d60: $66
	ldh [$67], a                                     ; $4d61: $e0 $67
	nop                                              ; $4d63: $00
	sbc c                                            ; $4d64: $99
	xor e                                            ; $4d65: $ab
	or $f6                                           ; $4d66: $f6 $f6
	ld a, [$08fc]                                    ; $4d68: $fa $fc $08
	ld a, e                                          ; $4d6b: $7b
	nop                                              ; $4d6c: $00
	ld a, e                                          ; $4d6d: $7b
	cp $9a                                           ; $4d6e: $fe $9a
	db $e3                                           ; $4d70: $e3
	inc e                                            ; $4d71: $1c
	rst $38                                          ; $4d72: $ff
	ld a, $77                                        ; $4d73: $3e $77
	ld a, d                                          ; $4d75: $7a
	db $fc                                           ; $4d76: $fc
	sbc [hl]                                         ; $4d77: $9e
	ld a, [de]                                       ; $4d78: $1a
	ld a, e                                          ; $4d79: $7b
	nop                                              ; $4d7a: $00
	ld h, a                                          ; $4d7b: $67
	ld b, b                                          ; $4d7c: $40
	sbc e                                            ; $4d7d: $9b
	ld a, a                                          ; $4d7e: $7f
	jp $81ff                                         ; $4d7f: $c3 $ff $81


	ld a, e                                          ; $4d82: $7b
	ld b, b                                          ; $4d83: $40
	ld a, e                                          ; $4d84: $7b
	ldh [c], a                                       ; $4d85: $e2
	sbc d                                            ; $4d86: $9a
	jp $fe3c                                         ; $4d87: $c3 $3c $fe


	ld a, a                                          ; $4d8a: $7f
	rst SubAFromBC                                          ; $4d8b: $e7
	ld a, e                                          ; $4d8c: $7b
	inc a                                            ; $4d8d: $3c
	sbc [hl]                                         ; $4d8e: $9e
	dec hl                                           ; $4d8f: $2b
	ld [hl], e                                       ; $4d90: $73
	ld b, b                                          ; $4d91: $40
	ccf                                              ; $4d92: $3f
	ld h, b                                          ; $4d93: $60
	sub a                                            ; $4d94: $97
	rst FarCall                                          ; $4d95: $f7
	rra                                              ; $4d96: $1f
	rst FarCall                                          ; $4d97: $f7
	inc e                                            ; $4d98: $1c
	ld [hl], a                                       ; $4d99: $77
	sbc h                                            ; $4d9a: $9c
	xor a                                            ; $4d9b: $af
	ld hl, sp+$6f                                    ; $4d9c: $f8 $6f
	ld h, b                                          ; $4d9e: $60
	ld d, a                                          ; $4d9f: $57
	add b                                            ; $4da0: $80
	sbc c                                            ; $4da1: $99
	ld d, a                                          ; $4da2: $57
	db $fd                                           ; $4da3: $fd
	rst GetHLinHL                                          ; $4da4: $cf
	cp $cd                                           ; $4da5: $fe $cd
	cp $1b                                           ; $4da7: $fe $1b
	add b                                            ; $4da9: $80
	sbc [hl]                                         ; $4daa: $9e
	adc b                                            ; $4dab: $88
	ld l, a                                          ; $4dac: $6f
	add b                                            ; $4dad: $80
	ld [hl], a                                       ; $4dae: $77
	cp $98                                           ; $4daf: $fe $98
	rst SubAFromBC                                          ; $4db1: $e7
	nop                                              ; $4db2: $00
	rst SubAFromDE                                          ; $4db3: $df
	inc a                                            ; $4db4: $3c
	ei                                               ; $4db5: $fb
	rst FarCall                                          ; $4db6: $f7
	ld [hl], $73                                     ; $4db7: $36 $73
	add b                                            ; $4db9: $80
	sbc c                                            ; $4dba: $99
	adc $bb                                          ; $4dbb: $ce $bb
	cp d                                             ; $4dbd: $ba
	rst $38                                          ; $4dbe: $ff
	ld a, a                                          ; $4dbf: $7f
	rst JumpTable                                          ; $4dc0: $c7
	ld h, a                                          ; $4dc1: $67
	add b                                            ; $4dc2: $80
	ld [hl], e                                       ; $4dc3: $73
	ld e, [hl]                                       ; $4dc4: $5e
	sbc d                                            ; $4dc5: $9a
	nop                                              ; $4dc6: $00
	db $dd                                           ; $4dc7: $dd
	ld a, $6b                                        ; $4dc8: $3e $6b
	ld [hl], a                                       ; $4dca: $77
	rra                                              ; $4dcb: $1f
	add b                                            ; $4dcc: $80
	halt                                             ; $4dcd: $76
	ldh [$9d], a                                     ; $4dce: $e0 $9d
	xor [hl]                                         ; $4dd0: $ae
	ld sp, hl                                        ; $4dd1: $f9
	ccf                                              ; $4dd2: $3f
	add b                                            ; $4dd3: $80
	sbc l                                            ; $4dd4: $9d
	adc $ff                                          ; $4dd5: $ce $ff
	daa                                              ; $4dd7: $27
	add b                                            ; $4dd8: $80
	sbc c                                            ; $4dd9: $99
	cp e                                             ; $4dda: $bb
	and $e6                                          ; $4ddb: $e6 $e6
	ld a, [$98fc]                                    ; $4ddd: $fa $fc $98
	ld e, a                                          ; $4de0: $5f
	add b                                            ; $4de1: $80
	ld a, a                                          ; $4de2: $7f
	sbc [hl]                                         ; $4de3: $9e
	ld a, l                                          ; $4de4: $7d
	ldh a, [c]                                       ; $4de5: $f2
	sbc e                                            ; $4de6: $9b
	db $e3                                           ; $4de7: $e3
	rst JumpTable                                          ; $4de8: $c7
	ld a, $7c                                        ; $4de9: $3e $7c
	ld [hl], e                                       ; $4deb: $73
	add b                                            ; $4dec: $80
	sbc d                                            ; $4ded: $9a
	sbc e                                            ; $4dee: $9b
	sbc d                                            ; $4def: $9a
	rst $38                                          ; $4df0: $ff
	ld a, a                                          ; $4df1: $7f
	rst SubAFromBC                                          ; $4df2: $e7
	ld d, a                                          ; $4df3: $57
	add b                                            ; $4df4: $80
	sub a                                            ; $4df5: $97
	jp $3f00                                         ; $4df6: $c3 $00 $3f


	nop                                              ; $4df9: $00
	ld h, c                                          ; $4dfa: $61
	ld [hl], e                                       ; $4dfb: $73
	ld e, $3f                                        ; $4dfc: $1e $3f
	inc bc                                           ; $4dfe: $03
	add b                                            ; $4dff: $80
	sub h                                            ; $4e00: $94
	ld h, e                                          ; $4e01: $63
	ld e, b                                          ; $4e02: $58
	jr nz, @+$12                                     ; $4e03: $20 $10

	ld h, b                                          ; $4e05: $60
	nop                                              ; $4e06: $00
	nop                                              ; $4e07: $00
	ld l, d                                          ; $4e08: $6a
	ld b, [hl]                                       ; $4e09: $46
	jr jr_070_4e48                                   ; $4e0a: $18 $3c

	ld [hl], l                                       ; $4e0c: $75
	ldh a, [$fb]                                     ; $4e0d: $f0 $fb
	sub [hl]                                         ; $4e0f: $96
	add c                                            ; $4e10: $81
	ret nz                                           ; $4e11: $c0

	ei                                               ; $4e12: $fb
	rst SubAFromBC                                          ; $4e13: $e7
	cp $9f                                           ; $4e14: $fe $9f
	call nz, $8383                                   ; $4e16: $c4 $83 $83
	sbc $80                                          ; $4e19: $de $80
	ld e, e                                          ; $4e1b: $5b
	ldh [$9e], a                                     ; $4e1c: $e0 $9e
	jr jr_070_4e87                                   ; $4e1e: $18 $67

	sbc $3f                                          ; $4e20: $de $3f
	ldh [$98], a                                     ; $4e22: $e0 $98
	ld [$3c46], a                                    ; $4e24: $ea $46 $3c
	ld a, h                                          ; $4e27: $7c
	jr jr_070_4e62                                   ; $4e28: $18 $38

	nop                                              ; $4e2a: $00
	ld [hl], a                                       ; $4e2b: $77
	db $dd                                           ; $4e2c: $dd
	dec hl                                           ; $4e2d: $2b
	ldh [$9a], a                                     ; $4e2e: $e0 $9a
	ld a, h                                          ; $4e30: $7c
	ld a, [hl]                                       ; $4e31: $7e
	inc a                                            ; $4e32: $3c
	inc a                                            ; $4e33: $3c
	jr @+$7d                                         ; $4e34: $18 $7b

	pop hl                                           ; $4e36: $e1
	ld [hl], a                                       ; $4e37: $77
	sbc $57                                          ; $4e38: $de $57
	ldh [$e3], a                                     ; $4e3a: $e0 $e3
	ld bc, $ee80                                     ; $4e3c: $01 $80 $ee
	cp c                                             ; $4e3f: $b9
	ld a, l                                          ; $4e40: $7d
	or e                                             ; $4e41: $b3
	ld a, d                                          ; $4e42: $7a
	and a                                            ; $4e43: $a7
	xor $5f                                          ; $4e44: $ee $5f
	sub $bf                                          ; $4e46: $d6 $bf

jr_070_4e48:
	or a                                             ; $4e48: $b7
	ld a, l                                          ; $4e49: $7d
	ld d, [hl]                                       ; $4e4a: $56
	db $fd                                           ; $4e4b: $fd
	call $cfff                                       ; $4e4c: $cd $ff $cf
	cp $af                                           ; $4e4f: $fe $af
	ld hl, sp+$2b                                    ; $4e51: $f8 $2b
	inc a                                            ; $4e53: $3c
	ld d, $1d                                        ; $4e54: $16 $1d
	rra                                              ; $4e56: $1f
	inc e                                            ; $4e57: $1c
	dec de                                           ; $4e58: $1b
	ld d, $1f                                        ; $4e59: $16 $1f
	ld [de], a                                       ; $4e5b: $12
	rra                                              ; $4e5c: $1f
	sbc c                                            ; $4e5d: $99
	ld [de], a                                       ; $4e5e: $12
	add hl, bc                                       ; $4e5f: $09
	rrca                                             ; $4e60: $0f
	add hl, bc                                       ; $4e61: $09

jr_070_4e62:
	rrca                                             ; $4e62: $0f
	dec b                                            ; $4e63: $05
	sbc $07                                          ; $4e64: $de $07
	adc e                                            ; $4e66: $8b
	ld [$100f], sp                                   ; $4e67: $08 $0f $10
	rra                                              ; $4e6a: $1f
	ld hl, $c23f                                     ; $4e6b: $21 $3f $c2
	cp $04                                           ; $4e6e: $fe $04
	db $fc                                           ; $4e70: $fc
	ld [$10f8], sp                                   ; $4e71: $08 $f8 $10
	ldh a, [rAUD4LEN]                                ; $4e74: $f0 $20
	ldh [rLCDC], a                                   ; $4e76: $e0 $40
	ret nz                                           ; $4e78: $c0

	add b                                            ; $4e79: $80
	add b                                            ; $4e7a: $80
	db $fd                                           ; $4e7b: $fd
	add b                                            ; $4e7c: $80
	ret                                              ; $4e7d: $c9


	db $eb                                           ; $4e7e: $eb
	ld c, [hl]                                       ; $4e7f: $4e
	db $db                                           ; $4e80: $db
	db $db                                           ; $4e81: $db
	cp $ff                                           ; $4e82: $fe $ff
	or [hl]                                          ; $4e84: $b6
	ei                                               ; $4e85: $fb
	and [hl]                                         ; $4e86: $a6

jr_070_4e87:
	and [hl]                                         ; $4e87: $a6
	ld a, [$f8fc]                                    ; $4e88: $fa $fc $f8
	cp [hl]                                          ; $4e8b: $be
	ret nz                                           ; $4e8c: $c0

	db $e3                                           ; $4e8d: $e3
	inc e                                            ; $4e8e: $1c
	rst $38                                          ; $4e8f: $ff
	ld a, $77                                        ; $4e90: $3e $77
	rst SubAFromBC                                          ; $4e92: $e7
	rst SubAFromBC                                          ; $4e93: $e7
	xor $fe                                          ; $4e94: $ee $fe
	cp [hl]                                          ; $4e96: $be
	cp d                                             ; $4e97: $ba
	ld a, $12                                        ; $4e98: $3e $12
	ld a, $16                                        ; $4e9a: $3e $16
	ld a, a                                          ; $4e9c: $7f
	ldh a, [c]                                       ; $4e9d: $f2
	cp [hl]                                          ; $4e9e: $be
	rst $38                                          ; $4e9f: $ff
	rst $38                                          ; $4ea0: $ff
	rst $38                                          ; $4ea1: $ff
	sbc [hl]                                         ; $4ea2: $9e
	add b                                            ; $4ea3: $80
	ld a, e                                          ; $4ea4: $7b
	cp $92                                           ; $4ea5: $fe $92
	ret nz                                           ; $4ea7: $c0

	rst $38                                          ; $4ea8: $ff
	ldh [$df], a                                     ; $4ea9: $e0 $df
	ret nc                                           ; $4eab: $d0

	ld c, a                                          ; $4eac: $4f
	ld c, h                                          ; $4ead: $4c
	ld b, e                                          ; $4eae: $43
	ld b, d                                          ; $4eaf: $42
	ld hl, $2021                                     ; $4eb0: $21 $21 $20
	jr nz, @-$01                                     ; $4eb3: $20 $fd

	rst SubAFromDE                                          ; $4eb5: $df
	inc bc                                           ; $4eb6: $03
	rst SubAFromDE                                          ; $4eb7: $df
	ccf                                              ; $4eb8: $3f
	sbc c                                            ; $4eb9: $99
	rrca                                             ; $4eba: $0f
	dec bc                                           ; $4ebb: $0b
	ld a, [bc]                                       ; $4ebc: $0a
	rrca                                             ; $4ebd: $0f
	rlca                                             ; $4ebe: $07
	ld b, $dd                                        ; $4ebf: $06 $dd
	inc b                                            ; $4ec1: $04
	sbc [hl]                                         ; $4ec2: $9e
	ld bc, $03b6                                     ; $4ec3: $01 $b6 $03
	rlca                                             ; $4ec6: $07
	rlca                                             ; $4ec7: $07
	inc bc                                           ; $4ec8: $03
	ld bc, $0000                                     ; $4ec9: $01 $00 $00
	nop                                              ; $4ecc: $00
	db $10                                           ; $4ecd: $10
	jr nc, jr_070_4f4d                               ; $4ece: $30 $7d

	add c                                            ; $4ed0: $81
	adc $df                                          ; $4ed1: $ce $df
	jp z, $8bce                                      ; $4ed3: $ca $ce $8b

	jp nz, $3dbf                                     ; $4ed6: $c2 $bf $3d

	rst $38                                          ; $4ed9: $ff
	rst $38                                          ; $4eda: $ff
	jp $01ff                                         ; $4edb: $c3 $ff $01


	jp $fe3c                                         ; $4ede: $c3 $3c $fe


	ld a, a                                          ; $4ee1: $7f
	rst SubAFromBC                                          ; $4ee2: $e7
	rst SubAFromBC                                          ; $4ee3: $e7
	xor [hl]                                         ; $4ee4: $ae
	daa                                              ; $4ee5: $27
	ld a, $3e                                        ; $4ee6: $3e $3e
	dec sp                                           ; $4ee8: $3b
	ld a, $23                                        ; $4ee9: $3e $23
	ld a, $37                                        ; $4eeb: $3e $37
	inc e                                            ; $4eed: $1c
	ccf                                              ; $4eee: $3f
	cp h                                             ; $4eef: $bc
	inc bc                                           ; $4ef0: $03
	rlca                                             ; $4ef1: $07
	rlca                                             ; $4ef2: $07
	rrca                                             ; $4ef3: $0f
	rrca                                             ; $4ef4: $0f
	add b                                            ; $4ef5: $80
	ld bc, $031f                                     ; $4ef6: $01 $1f $03
	dec e                                            ; $4ef9: $1d
	rlca                                             ; $4efa: $07
	add hl, sp                                       ; $4efb: $39
	rrca                                             ; $4efc: $0f
	ld [hl], c                                       ; $4efd: $71
	rra                                              ; $4efe: $1f
	pop hl                                           ; $4eff: $e1
	ld a, a                                          ; $4f00: $7f
	add e                                            ; $4f01: $83
	db $fd                                           ; $4f02: $fd
	rlca                                             ; $4f03: $07
	ld sp, hl                                        ; $4f04: $f9
	rrca                                             ; $4f05: $0f
	pop af                                           ; $4f06: $f1
	rra                                              ; $4f07: $1f
	pop hl                                           ; $4f08: $e1
	ccf                                              ; $4f09: $3f
	pop bc                                           ; $4f0a: $c1
	rst $38                                          ; $4f0b: $ff
	nop                                              ; $4f0c: $00
	or a                                             ; $4f0d: $b7
	db $ed                                           ; $4f0e: $ed
	cp l                                             ; $4f0f: $bd
	db $eb                                           ; $4f10: $eb
	rst $38                                          ; $4f11: $ff
	ei                                               ; $4f12: $fb
	jp c, $80ff                                      ; $4f13: $da $ff $80

	ld [$6e5f], a                                    ; $4f16: $ea $5f $6e
	cp a                                             ; $4f19: $bf
	db $ed                                           ; $4f1a: $ed
	ccf                                              ; $4f1b: $3f
	db $fd                                           ; $4f1c: $fd
	ccf                                              ; $4f1d: $3f
	or $5f                                           ; $4f1e: $f6 $5f
	ld [hl], a                                       ; $4f20: $77
	sbc a                                            ; $4f21: $9f
	or a                                             ; $4f22: $b7
	call c, $1cf7                                    ; $4f23: $dc $f7 $1c
	rst AddAOntoHL                                          ; $4f26: $ef
	jr c, @-$10                                      ; $4f27: $38 $ee

	add hl, sp                                       ; $4f29: $39
	push af                                          ; $4f2a: $f5
	dec sp                                           ; $4f2b: $3b
	cp [hl]                                          ; $4f2c: $be
	ld h, e                                          ; $4f2d: $63
	cp $7f                                           ; $4f2e: $fe $7f
	jp nc, $525f                                     ; $4f30: $d2 $5f $52

	rst SubAFromDE                                          ; $4f33: $df
	jp c, $df86                                      ; $4f34: $da $86 $df

	xor d                                            ; $4f37: $aa
	rst AddAOntoHL                                          ; $4f38: $ef
	add hl, hl                                       ; $4f39: $29
	rst AddAOntoHL                                          ; $4f3a: $ef
	dec h                                            ; $4f3b: $25
	rst SubAFromBC                                          ; $4f3c: $e7
	ld d, $f7                                        ; $4f3d: $16 $f7
	sub d                                            ; $4f3f: $92
	di                                               ; $4f40: $f3
	adc c                                            ; $4f41: $89
	ld sp, hl                                        ; $4f42: $f9
	adc c                                            ; $4f43: $89
	ld sp, hl                                        ; $4f44: $f9
	ld b, h                                          ; $4f45: $44
	ld a, h                                          ; $4f46: $7c
	ld b, d                                          ; $4f47: $42
	ld a, [hl]                                       ; $4f48: $7e
	inc hl                                           ; $4f49: $23
	ccf                                              ; $4f4a: $3f
	inc e                                            ; $4f4b: $1c
	inc e                                            ; $4f4c: $1c

jr_070_4f4d:
	ldh [$e0], a                                     ; $4f4d: $e0 $e0
	ld l, $e0                                        ; $4f4f: $2e $e0
	sbc l                                            ; $4f51: $9d
	rla                                              ; $4f52: $17
	inc e                                            ; $4f53: $1c
	ld h, [hl]                                       ; $4f54: $66
	ldh [$5f], a                                     ; $4f55: $e0 $5f
	nop                                              ; $4f57: $00
	sbc c                                            ; $4f58: $99
	xor [hl]                                         ; $4f59: $ae
	ldh a, [c]                                       ; $4f5a: $f2
	db $f4                                           ; $4f5b: $f4
	ld hl, sp-$42                                    ; $4f5c: $f8 $be
	ret z                                            ; $4f5e: $c8

	ld [hl], a                                       ; $4f5f: $77
	ld [de], a                                       ; $4f60: $12
	ld h, [hl]                                       ; $4f61: $66
	db $fc                                           ; $4f62: $fc
	sbc [hl]                                         ; $4f63: $9e
	ld a, [de]                                       ; $4f64: $1a
	ld a, e                                          ; $4f65: $7b
	nop                                              ; $4f66: $00
	ld h, a                                          ; $4f67: $67
	ld b, b                                          ; $4f68: $40
	sbc c                                            ; $4f69: $99
	cp l                                             ; $4f6a: $bd
	ld a, a                                          ; $4f6b: $7f
	ld a, a                                          ; $4f6c: $7f
	jp $81ff                                         ; $4f6d: $c3 $ff $81


	ld [hl], a                                       ; $4f70: $77
	ldh [c], a                                       ; $4f71: $e2
	ld h, a                                          ; $4f72: $67
	inc a                                            ; $4f73: $3c
	sbc [hl]                                         ; $4f74: $9e
	dec hl                                           ; $4f75: $2b
	ld [hl], e                                       ; $4f76: $73
	ld b, b                                          ; $4f77: $40
	ccf                                              ; $4f78: $3f
	ld h, b                                          ; $4f79: $60
	sub a                                            ; $4f7a: $97
	rst FarCall                                          ; $4f7b: $f7
	rra                                              ; $4f7c: $1f
	rst FarCall                                          ; $4f7d: $f7
	inc e                                            ; $4f7e: $1c
	ld [hl], a                                       ; $4f7f: $77
	sbc h                                            ; $4f80: $9c
	xor a                                            ; $4f81: $af
	ld hl, sp+$6f                                    ; $4f82: $f8 $6f
	ld h, b                                          ; $4f84: $60
	ld d, a                                          ; $4f85: $57
	add b                                            ; $4f86: $80
	sub a                                            ; $4f87: $97
	ld d, a                                          ; $4f88: $57
	db $fc                                           ; $4f89: $fc
	rst GetHLinHL                                          ; $4f8a: $cf
	db $fd                                           ; $4f8b: $fd
	adc $ff                                          ; $4f8c: $ce $ff
	xor l                                            ; $4f8e: $ad
	ld a, [$8007]                                    ; $4f8f: $fa $07 $80
	ld [hl], a                                       ; $4f92: $77
	cp $98                                           ; $4f93: $fe $98
	rst SubAFromBC                                          ; $4f95: $e7
	nop                                              ; $4f96: $00
	rst SubAFromDE                                          ; $4f97: $df
	inc a                                            ; $4f98: $3c
	ei                                               ; $4f99: $fb
	rst FarCall                                          ; $4f9a: $f7
	ld [hl], $6b                                     ; $4f9b: $36 $6b
	add b                                            ; $4f9d: $80
	sbc c                                            ; $4f9e: $99
	add $bb                                          ; $4f9f: $c6 $bb
	cp c                                             ; $4fa1: $b9
	ld a, a                                          ; $4fa2: $7f
	ld a, a                                          ; $4fa3: $7f
	rst JumpTable                                          ; $4fa4: $c7
	ld l, a                                          ; $4fa5: $6f
	add b                                            ; $4fa6: $80
	ld [hl], e                                       ; $4fa7: $73
	ld e, [hl]                                       ; $4fa8: $5e
	sbc d                                            ; $4fa9: $9a
	nop                                              ; $4faa: $00
	db $dd                                           ; $4fab: $dd
	ld a, $6b                                        ; $4fac: $3e $6b
	ld [hl], a                                       ; $4fae: $77
	ld b, e                                          ; $4faf: $43
	add b                                            ; $4fb0: $80
	sbc [hl]                                         ; $4fb1: $9e
	cp a                                             ; $4fb2: $bf
	ld h, a                                          ; $4fb3: $67
	add b                                            ; $4fb4: $80
	halt                                             ; $4fb5: $76
	ldh [$9d], a                                     ; $4fb6: $e0 $9d
	xor [hl]                                         ; $4fb8: $ae
	ld sp, hl                                        ; $4fb9: $f9
	inc bc                                           ; $4fba: $03
	add b                                            ; $4fbb: $80
	ld d, e                                          ; $4fbc: $53
	add b                                            ; $4fbd: $80
	sbc c                                            ; $4fbe: $99
	cp [hl]                                          ; $4fbf: $be
	ldh [c], a                                       ; $4fc0: $e2
	db $e4                                           ; $4fc1: $e4
	ld hl, sp-$42                                    ; $4fc2: $f8 $be
	ret c                                            ; $4fc4: $d8

	ld e, a                                          ; $4fc5: $5f
	sbc [hl]                                         ; $4fc6: $9e
	sbc c                                            ; $4fc7: $99
	db $fc                                           ; $4fc8: $fc
	nop                                              ; $4fc9: $00
	db $e3                                           ; $4fca: $e3
	rst JumpTable                                          ; $4fcb: $c7
	ld a, $7c                                        ; $4fcc: $3e $7c
	ld l, a                                          ; $4fce: $6f
	add b                                            ; $4fcf: $80
	sbc c                                            ; $4fd0: $99
	and $9b                                          ; $4fd1: $e6 $9b
	sbc c                                            ; $4fd3: $99
	ld a, a                                          ; $4fd4: $7f
	ld a, a                                          ; $4fd5: $7f
	rst SubAFromBC                                          ; $4fd6: $e7
	ld e, a                                          ; $4fd7: $5f
	add b                                            ; $4fd8: $80
	sbc [hl]                                         ; $4fd9: $9e
	jp $3fbf                                         ; $4fda: $c3 $bf $3f


	ld h, c                                          ; $4fdd: $61
	sbc h                                            ; $4fde: $9c
	ld [hl], e                                       ; $4fdf: $73
	ld e, $3f                                        ; $4fe0: $1e $3f
	inc bc                                           ; $4fe2: $03
	add b                                            ; $4fe3: $80
	sub h                                            ; $4fe4: $94
	ld h, e                                          ; $4fe5: $63
	ld e, b                                          ; $4fe6: $58
	jr nz, @+$12                                     ; $4fe7: $20 $10

	ld h, b                                          ; $4fe9: $60
	nop                                              ; $4fea: $00
	nop                                              ; $4feb: $00
	ld b, b                                          ; $4fec: $40
	ld [$3008], sp                                   ; $4fed: $08 $08 $30
	ld [hl], l                                       ; $4ff0: $75
	ldh a, [$fb]                                     ; $4ff1: $f0 $fb
	sub [hl]                                         ; $4ff3: $96
	add c                                            ; $4ff4: $81
	ret nz                                           ; $4ff5: $c0

	ei                                               ; $4ff6: $fb
	rst SubAFromBC                                          ; $4ff7: $e7
	cp $9f                                           ; $4ff8: $fe $9f
	call nz, $8383                                   ; $4ffa: $c4 $83 $83
	sbc $80                                          ; $4ffd: $de $80
	ld l, a                                          ; $4fff: $6f
	ldh [$9b], a                                     ; $5000: $e0 $9b
	jr @+$4e                                         ; $5002: $18 $4c

	db $10                                           ; $5004: $10
	jr c, @+$19                                      ; $5005: $38 $17

	ldh [$9b], a                                     ; $5007: $e0 $9b
	jr c, jr_070_5087                                ; $5009: $38 $7c

	jr nc, jr_070_5085                               ; $500b: $30 $78

	ld e, a                                          ; $500d: $5f
	cp [hl]                                          ; $500e: $be
	ccf                                              ; $500f: $3f
	ldh [$df], a                                     ; $5010: $e0 $df
	ld a, h                                          ; $5012: $7c
	sbc e                                            ; $5013: $9b
	inc a                                            ; $5014: $3c
	ld a, b                                          ; $5015: $78
	jr @+$32                                         ; $5016: $18 $30

	ld [hl], a                                       ; $5018: $77
	ldh [c], a                                       ; $5019: $e2
	ld [hl], a                                       ; $501a: $77
	db $fc                                           ; $501b: $fc
	ld d, a                                          ; $501c: $57
	ldh [$f1], a                                     ; $501d: $e0 $f1
	ld bc, $ee80                                     ; $501f: $01 $80 $ee
	cp c                                             ; $5022: $b9
	ld a, l                                          ; $5023: $7d
	or e                                             ; $5024: $b3
	ld a, d                                          ; $5025: $7a
	and a                                            ; $5026: $a7
	xor $5f                                          ; $5027: $ee $5f
	sub $bf                                          ; $5029: $d6 $bf
	or a                                             ; $502b: $b7
	ld a, l                                          ; $502c: $7d
	ld d, h                                          ; $502d: $54
	rst $38                                          ; $502e: $ff
	rst GetHLinHL                                          ; $502f: $cf
	rst $38                                          ; $5030: $ff
	rst GetHLinHL                                          ; $5031: $cf
	db $fc                                           ; $5032: $fc
	xor a                                            ; $5033: $af
	ld hl, sp+$2b                                    ; $5034: $f8 $2b
	inc a                                            ; $5036: $3c
	rla                                              ; $5037: $17
	inc e                                            ; $5038: $1c
	ld e, $1d                                        ; $5039: $1e $1d
	dec de                                           ; $503b: $1b
	ld d, $1f                                        ; $503c: $16 $1f
	ld [de], a                                       ; $503e: $12
	rra                                              ; $503f: $1f
	sbc c                                            ; $5040: $99
	ld [de], a                                       ; $5041: $12
	add hl, bc                                       ; $5042: $09
	rrca                                             ; $5043: $0f
	add hl, bc                                       ; $5044: $09
	rrca                                             ; $5045: $0f
	dec b                                            ; $5046: $05
	sbc $07                                          ; $5047: $de $07
	adc e                                            ; $5049: $8b
	ld [$100f], sp                                   ; $504a: $08 $0f $10
	rra                                              ; $504d: $1f
	ld hl, $c23f                                     ; $504e: $21 $3f $c2
	cp $04                                           ; $5051: $fe $04
	db $fc                                           ; $5053: $fc
	ld [$10f8], sp                                   ; $5054: $08 $f8 $10
	ldh a, [rAUD4LEN]                                ; $5057: $f0 $20
	ldh [rLCDC], a                                   ; $5059: $e0 $40
	ret nz                                           ; $505b: $c0

	add b                                            ; $505c: $80
	add b                                            ; $505d: $80
	db $fd                                           ; $505e: $fd
	sub b                                            ; $505f: $90
	ret                                              ; $5060: $c9


	db $eb                                           ; $5061: $eb
	ld c, [hl]                                       ; $5062: $4e
	db $db                                           ; $5063: $db
	db $db                                           ; $5064: $db
	cp $ff                                           ; $5065: $fe $ff
	or [hl]                                          ; $5067: $b6
	ei                                               ; $5068: $fb
	and [hl]                                         ; $5069: $a6
	and [hl]                                         ; $506a: $a6
	ld a, [$f8fc]                                    ; $506b: $fa $fc $f8
	cp $bf                                           ; $506e: $fe $bf
	cp $db                                           ; $5070: $fe $db
	sub c                                            ; $5072: $91
	inc a                                            ; $5073: $3c
	cp a                                             ; $5074: $bf
	ld a, [hl]                                       ; $5075: $7e
	ld [hl], a                                       ; $5076: $77
	rst SubAFromBC                                          ; $5077: $e7
	rst SubAFromBC                                          ; $5078: $e7
	xor $be                                          ; $5079: $ee $be
	ld a, $12                                        ; $507b: $3e $12
	ld a, $16                                        ; $507d: $3e $16
	inc e                                            ; $507f: $1c
	rst $38                                          ; $5080: $ff
	cp [hl]                                          ; $5081: $be
	rst $38                                          ; $5082: $ff
	rst $38                                          ; $5083: $ff
	rst $38                                          ; $5084: $ff

jr_070_5085:
	sbc [hl]                                         ; $5085: $9e
	add b                                            ; $5086: $80

jr_070_5087:
	ld a, e                                          ; $5087: $7b
	cp $92                                           ; $5088: $fe $92
	ret nz                                           ; $508a: $c0

	rst $38                                          ; $508b: $ff
	ldh [$df], a                                     ; $508c: $e0 $df
	ret nc                                           ; $508e: $d0

	ld c, a                                          ; $508f: $4f
	ld c, h                                          ; $5090: $4c
	ld b, e                                          ; $5091: $43
	ld b, d                                          ; $5092: $42
	ld hl, $2021                                     ; $5093: $21 $21 $20
	jr nz, @-$01                                     ; $5096: $20 $fd

	rst SubAFromDE                                          ; $5098: $df
	inc bc                                           ; $5099: $03
	rst SubAFromDE                                          ; $509a: $df
	ccf                                              ; $509b: $3f
	sbc c                                            ; $509c: $99
	rrca                                             ; $509d: $0f
	dec bc                                           ; $509e: $0b
	ld a, [bc]                                       ; $509f: $0a
	rrca                                             ; $50a0: $0f
	rlca                                             ; $50a1: $07
	ld b, $dd                                        ; $50a2: $06 $dd
	inc b                                            ; $50a4: $04
	sbc [hl]                                         ; $50a5: $9e
	ld bc, $03b6                                     ; $50a6: $01 $b6 $03
	rlca                                             ; $50a9: $07
	rlca                                             ; $50aa: $07
	inc bc                                           ; $50ab: $03
	ld bc, $0000                                     ; $50ac: $01 $00 $00
	nop                                              ; $50af: $00
	db $10                                           ; $50b0: $10
	jr nc, jr_070_5130                               ; $50b1: $30 $7d

	add c                                            ; $50b3: $81
	adc $df                                          ; $50b4: $ce $df
	jp z, $8bce                                      ; $50b6: $ca $ce $8b

	jp nz, $3fbf                                     ; $50b9: $c2 $bf $3f

	rst $38                                          ; $50bc: $ff
	rst $38                                          ; $50bd: $ff
	pop bc                                           ; $50be: $c1
	rst $38                                          ; $50bf: $ff
	ld bc, $00ff                                     ; $50c0: $01 $ff $00
	rst SubAFromDE                                          ; $50c3: $df
	inc a                                            ; $50c4: $3c
	cp $7f                                           ; $50c5: $fe $7f
	rst SubAFromBC                                          ; $50c7: $e7
	rst SubAFromBC                                          ; $50c8: $e7
	xor [hl]                                         ; $50c9: $ae
	daa                                              ; $50ca: $27
	ld a, $3e                                        ; $50cb: $3e $3e
	dec hl                                           ; $50cd: $2b
	ld a, $37                                        ; $50ce: $3e $37
	inc e                                            ; $50d0: $1c
	ccf                                              ; $50d1: $3f
	cp h                                             ; $50d2: $bc
	inc bc                                           ; $50d3: $03
	rlca                                             ; $50d4: $07
	rlca                                             ; $50d5: $07
	rrca                                             ; $50d6: $0f
	rrca                                             ; $50d7: $0f
	add b                                            ; $50d8: $80
	ld bc, $031f                                     ; $50d9: $01 $1f $03
	dec e                                            ; $50dc: $1d
	rlca                                             ; $50dd: $07
	add hl, sp                                       ; $50de: $39
	rrca                                             ; $50df: $0f
	ld [hl], c                                       ; $50e0: $71
	rra                                              ; $50e1: $1f
	pop hl                                           ; $50e2: $e1
	ld a, a                                          ; $50e3: $7f
	add e                                            ; $50e4: $83
	db $fd                                           ; $50e5: $fd
	rlca                                             ; $50e6: $07
	ld sp, hl                                        ; $50e7: $f9
	rrca                                             ; $50e8: $0f
	pop af                                           ; $50e9: $f1
	rra                                              ; $50ea: $1f
	pop hl                                           ; $50eb: $e1
	ccf                                              ; $50ec: $3f
	pop bc                                           ; $50ed: $c1
	rst $38                                          ; $50ee: $ff
	nop                                              ; $50ef: $00
	or a                                             ; $50f0: $b7
	db $ed                                           ; $50f1: $ed
	cp l                                             ; $50f2: $bd
	db $eb                                           ; $50f3: $eb
	rst $38                                          ; $50f4: $ff
	ei                                               ; $50f5: $fb
	jp c, $80ff                                      ; $50f6: $da $ff $80

	ld l, d                                          ; $50f9: $6a
	rst SubAFromDE                                          ; $50fa: $df
	xor $3f                                          ; $50fb: $ee $3f
	db $ed                                           ; $50fd: $ed
	ccf                                              ; $50fe: $3f
	db $fd                                           ; $50ff: $fd
	ccf                                              ; $5100: $3f
	or $5f                                           ; $5101: $f6 $5f
	rst FarCall                                          ; $5103: $f7
	rra                                              ; $5104: $1f
	ld [hl], a                                       ; $5105: $77
	sbc h                                            ; $5106: $9c
	or a                                             ; $5107: $b7
	call c, $38ef                                    ; $5108: $dc $ef $38
	xor $39                                          ; $510b: $ee $39
	push af                                          ; $510d: $f5
	dec sp                                           ; $510e: $3b
	cp [hl]                                          ; $510f: $be
	ld h, e                                          ; $5110: $63
	cp $7f                                           ; $5111: $fe $7f
	jp nc, $525f                                     ; $5113: $d2 $5f $52

	rst SubAFromDE                                          ; $5116: $df
	jp c, $df86                                      ; $5117: $da $86 $df

	xor d                                            ; $511a: $aa
	rst AddAOntoHL                                          ; $511b: $ef
	add hl, hl                                       ; $511c: $29
	rst AddAOntoHL                                          ; $511d: $ef
	dec h                                            ; $511e: $25
	rst SubAFromBC                                          ; $511f: $e7
	ld d, $f7                                        ; $5120: $16 $f7
	sub d                                            ; $5122: $92
	di                                               ; $5123: $f3
	adc c                                            ; $5124: $89
	ld sp, hl                                        ; $5125: $f9
	adc c                                            ; $5126: $89
	ld sp, hl                                        ; $5127: $f9
	ld b, h                                          ; $5128: $44
	ld a, h                                          ; $5129: $7c
	ld b, d                                          ; $512a: $42
	ld a, [hl]                                       ; $512b: $7e
	inc hl                                           ; $512c: $23
	ccf                                              ; $512d: $3f
	inc e                                            ; $512e: $1c
	inc e                                            ; $512f: $1c

jr_070_5130:
	ldh [$e0], a                                     ; $5130: $e0 $e0
	ld h, $e0                                        ; $5132: $26 $e0
	sbc l                                            ; $5134: $9d
	rra                                              ; $5135: $1f
	inc e                                            ; $5136: $1c
	ld l, [hl]                                       ; $5137: $6e
	ldh [$5f], a                                     ; $5138: $e0 $5f
	nop                                              ; $513a: $00
	sbc c                                            ; $513b: $99
	cp [hl]                                          ; $513c: $be
	ldh [c], a                                       ; $513d: $e2
	db $f4                                           ; $513e: $f4
	ld hl, sp-$12                                    ; $513f: $f8 $ee
	jr jr_070_51ba                                   ; $5141: $18 $77

	ld [de], a                                       ; $5143: $12
	sbc e                                            ; $5144: $9b
	db $e3                                           ; $5145: $e3
	inc e                                            ; $5146: $1c
	rst $38                                          ; $5147: $ff
	ld a, $76                                        ; $5148: $3e $76
	cp $9e                                           ; $514a: $fe $9e
	ld a, [de]                                       ; $514c: $1a
	ld a, e                                          ; $514d: $7b
	nop                                              ; $514e: $00
	ld l, a                                          ; $514f: $6f
	ld b, b                                          ; $5150: $40
	sbc b                                            ; $5151: $98
	ldh [c], a                                       ; $5152: $e2
	sbc a                                            ; $5153: $9f
	rst SubAFromDE                                          ; $5154: $df
	ccf                                              ; $5155: $3f
	ld a, a                                          ; $5156: $7f
	pop hl                                           ; $5157: $e1
	cp a                                             ; $5158: $bf
	ld a, e                                          ; $5159: $7b
	ld [hl], b                                       ; $515a: $70
	ld a, a                                          ; $515b: $7f
	cp $9e                                           ; $515c: $fe $9e
	jp $3e6b                                         ; $515e: $c3 $6b $3e


	ld l, a                                          ; $5161: $6f
	ld b, b                                          ; $5162: $40
	scf                                              ; $5163: $37
	ld h, b                                          ; $5164: $60
	sbc c                                            ; $5165: $99
	rst FarCall                                          ; $5166: $f7
	inc e                                            ; $5167: $1c
	ld [hl], a                                       ; $5168: $77
	sbc h                                            ; $5169: $9c
	xor a                                            ; $516a: $af
	ld hl, sp+$6f                                    ; $516b: $f8 $6f
	ld h, b                                          ; $516d: $60
	ld d, a                                          ; $516e: $57
	add b                                            ; $516f: $80
	sbc c                                            ; $5170: $99
	ld d, [hl]                                       ; $5171: $56
	db $fd                                           ; $5172: $fd
	rst GetHLinHL                                          ; $5173: $cf
	rst $38                                          ; $5174: $ff
	call $17fe                                       ; $5175: $cd $fe $17
	add b                                            ; $5178: $80
	sbc l                                            ; $5179: $9d
	ld l, [hl]                                       ; $517a: $6e
	sbc b                                            ; $517b: $98
	ld l, d                                          ; $517c: $6a
	sub b                                            ; $517d: $90
	cp a                                             ; $517e: $bf
	rst SubAFromBC                                          ; $517f: $e7
	rst SubAFromDE                                          ; $5180: $df
	sbc e                                            ; $5181: $9b
	inc a                                            ; $5182: $3c
	ei                                               ; $5183: $fb
	rst FarCall                                          ; $5184: $f7
	ld [hl], $6b                                     ; $5185: $36 $6b
	add b                                            ; $5187: $80
	sbc c                                            ; $5188: $99
	and $9b                                          ; $5189: $e6 $9b
	rst SubAFromDE                                          ; $518b: $df
	ccf                                              ; $518c: $3f
	ld a, c                                          ; $518d: $79
	rst SubAFromBC                                          ; $518e: $e7
	ld l, a                                          ; $518f: $6f
	add b                                            ; $5190: $80
	ld [hl], e                                       ; $5191: $73
	ld e, [hl]                                       ; $5192: $5e
	sbc d                                            ; $5193: $9a
	nop                                              ; $5194: $00
	db $dd                                           ; $5195: $dd
	ld a, $6b                                        ; $5196: $3e $6b
	ld [hl], a                                       ; $5198: $77
	ld c, e                                          ; $5199: $4b
	add b                                            ; $519a: $80
	sbc [hl]                                         ; $519b: $9e
	cp a                                             ; $519c: $bf
	ld e, a                                          ; $519d: $5f
	add b                                            ; $519e: $80
	ld a, a                                          ; $519f: $7f
	cp $7e                                           ; $51a0: $fe $7e
	ldh [$9d], a                                     ; $51a2: $e0 $9d

jr_070_51a4:
	xor [hl]                                         ; $51a4: $ae
	ld sp, hl                                        ; $51a5: $f9
	inc bc                                           ; $51a6: $03
	add b                                            ; $51a7: $80
	ld d, e                                          ; $51a8: $53
	add b                                            ; $51a9: $80
	sub a                                            ; $51aa: $97
	cp $a2                                           ; $51ab: $fe $a2
	db $ec                                           ; $51ad: $ec
	ldh a, [rAUD2LEN]                                ; $51ae: $f0 $16
	ld hl, sp-$01                                    ; $51b0: $f8 $ff
	ld [$9e67], sp                                   ; $51b2: $08 $67 $9e
	sbc c                                            ; $51b5: $99
	db $fc                                           ; $51b6: $fc
	nop                                              ; $51b7: $00
	db $e3                                           ; $51b8: $e3
	rst JumpTable                                          ; $51b9: $c7

jr_070_51ba:
	ld a, $7c                                        ; $51ba: $3e $7c
	ld l, a                                          ; $51bc: $6f
	add b                                            ; $51bd: $80
	sub l                                            ; $51be: $95
	cp $83                                           ; $51bf: $fe $83
	rst AddAOntoHL                                          ; $51c1: $ef
	rra                                              ; $51c2: $1f
	pop af                                           ; $51c3: $f1
	ccf                                              ; $51c4: $3f
	rst SubAFromDE                                          ; $51c5: $df
	ld h, c                                          ; $51c6: $61
	cp a                                             ; $51c7: $bf
	ret nz                                           ; $51c8: $c0

	ld l, a                                          ; $51c9: $6f
	ldh [c], a                                       ; $51ca: $e2
	sbc [hl]                                         ; $51cb: $9e
	jp $3fbf                                         ; $51cc: $c3 $bf $3f


	ld h, c                                          ; $51cf: $61
	sbc h                                            ; $51d0: $9c
	ld [hl], e                                       ; $51d1: $73
	ld e, $3f                                        ; $51d2: $1e $3f
	ld e, a                                          ; $51d4: $5f
	add b                                            ; $51d5: $80
	sbc l                                            ; $51d6: $9d
	ld [$2f5f], a                                    ; $51d7: $ea $5f $2f
	add b                                            ; $51da: $80
	sbc e                                            ; $51db: $9b
	ld e, b                                          ; $51dc: $58
	jr nz, @+$12                                     ; $51dd: $20 $10

	ld h, b                                          ; $51df: $60
	db $fd                                           ; $51e0: $fd
	sbc l                                            ; $51e1: $9d
	ld c, b                                          ; $51e2: $48
	jr nc, @+$77                                     ; $51e3: $30 $75

	ldh a, [$fb]                                     ; $51e5: $f0 $fb
	sub [hl]                                         ; $51e7: $96
	add c                                            ; $51e8: $81
	ret nz                                           ; $51e9: $c0

	ei                                               ; $51ea: $fb
	rst SubAFromBC                                          ; $51eb: $e7
	cp $9f                                           ; $51ec: $fe $9f
	call nz, $8383                                   ; $51ee: $c4 $83 $83
	sbc $80                                          ; $51f1: $de $80

Jump_070_51f3:
	ld h, a                                          ; $51f3: $67
	ldh [$9c], a                                     ; $51f4: $e0 $9c
	jr nc, jr_070_5230                               ; $51f6: $30 $38

	jr z, jr_070_5275                                ; $51f8: $28 $7b

	pop hl                                           ; $51fa: $e1
	ld l, a                                          ; $51fb: $6f
	sbc $2f                                          ; $51fc: $de $2f
	ldh [$9d], a                                     ; $51fe: $e0 $9d
	jr jr_070_523a                                   ; $5200: $18 $38

	rrca                                             ; $5202: $0f
	ldh [$df], a                                     ; $5203: $e0 $df
	jr c, jr_070_51a4                                ; $5205: $38 $9d

	db $10                                           ; $5207: $10
	jr c, jr_070_5281                                ; $5208: $38 $77

	ldh [$7f], a                                     ; $520a: $e0 $7f
	db $fc                                           ; $520c: $fc
	ld d, a                                          ; $520d: $57
	ldh [$fb], a                                     ; $520e: $e0 $fb
	ld bc, $ee90                                     ; $5210: $01 $90 $ee
	cp c                                             ; $5213: $b9
	ld a, l                                          ; $5214: $7d
	or e                                             ; $5215: $b3
	ld a, d                                          ; $5216: $7a
	and a                                            ; $5217: $a7
	xor $5f                                          ; $5218: $ee $5f
	sub $bf                                          ; $521a: $d6 $bf
	or a                                             ; $521c: $b7
	ld a, l                                          ; $521d: $7d
	ld d, a                                          ; $521e: $57
	db $fc                                           ; $521f: $fc
	rst GetHLinHL                                          ; $5220: $cf
	ld a, e                                          ; $5221: $7b
	cp $8c                                           ; $5222: $fe $8c
	xor a                                            ; $5224: $af
	ld hl, sp+$2b                                    ; $5225: $f8 $2b
	inc a                                            ; $5227: $3c
	rla                                              ; $5228: $17
	inc e                                            ; $5229: $1c
	ld e, $1d                                        ; $522a: $1e $1d
	dec de                                           ; $522c: $1b
	ld d, $1f                                        ; $522d: $16 $1f
	ld [de], a                                       ; $522f: $12

jr_070_5230:
	rra                                              ; $5230: $1f
	ld [de], a                                       ; $5231: $12
	add hl, bc                                       ; $5232: $09
	rrca                                             ; $5233: $0f
	add hl, bc                                       ; $5234: $09
	rrca                                             ; $5235: $0f
	dec b                                            ; $5236: $05
	sbc $07                                          ; $5237: $de $07
	adc e                                            ; $5239: $8b

jr_070_523a:
	ld [$100f], sp                                   ; $523a: $08 $0f $10
	rra                                              ; $523d: $1f
	ld hl, $c23f                                     ; $523e: $21 $3f $c2
	cp $04                                           ; $5241: $fe $04
	db $fc                                           ; $5243: $fc
	ld [$10f8], sp                                   ; $5244: $08 $f8 $10
	ldh a, [rAUD4LEN]                                ; $5247: $f0 $20
	ldh [rLCDC], a                                   ; $5249: $e0 $40
	ret nz                                           ; $524b: $c0

	add b                                            ; $524c: $80
	add b                                            ; $524d: $80
	db $fd                                           ; $524e: $fd
	add b                                            ; $524f: $80
	ret                                              ; $5250: $c9


	db $eb                                           ; $5251: $eb
	ld c, [hl]                                       ; $5252: $4e
	db $db                                           ; $5253: $db
	db $db                                           ; $5254: $db
	cp $ff                                           ; $5255: $fe $ff
	or [hl]                                          ; $5257: $b6
	cp e                                             ; $5258: $bb
	and $e6                                          ; $5259: $e6 $e6
	ld a, [$9cf8]                                    ; $525b: $fa $f8 $9c
	cp $04                                           ; $525e: $fe $04
	cp $00                                           ; $5260: $fe $00
	db $e3                                           ; $5262: $e3
	inc e                                            ; $5263: $1c
	cp a                                             ; $5264: $bf
	ld a, [hl]                                       ; $5265: $7e
	ld [hl], a                                       ; $5266: $77
	rst SubAFromBC                                          ; $5267: $e7
	rst SubAFromBC                                          ; $5268: $e7
	xor $be                                          ; $5269: $ee $be
	ld a, $12                                        ; $526b: $3e $12
	ld a, $16                                        ; $526d: $3e $16
	sbc l                                            ; $526f: $9d
	inc e                                            ; $5270: $1c
	rst $38                                          ; $5271: $ff
	cp [hl]                                          ; $5272: $be

Call_070_5273:
	rst $38                                          ; $5273: $ff
	rst $38                                          ; $5274: $ff

jr_070_5275:
	rst $38                                          ; $5275: $ff
	sbc [hl]                                         ; $5276: $9e
	add b                                            ; $5277: $80
	ld a, e                                          ; $5278: $7b
	cp $92                                           ; $5279: $fe $92
	ret nz                                           ; $527b: $c0

	rst $38                                          ; $527c: $ff
	ldh [$df], a                                     ; $527d: $e0 $df
	ret nc                                           ; $527f: $d0

	ld c, a                                          ; $5280: $4f

jr_070_5281:
	ld c, h                                          ; $5281: $4c
	ld b, e                                          ; $5282: $43
	ld b, d                                          ; $5283: $42
	ld hl, $2021                                     ; $5284: $21 $21 $20
	jr nz, @-$01                                     ; $5287: $20 $fd

	rst SubAFromDE                                          ; $5289: $df
	inc bc                                           ; $528a: $03
	rst SubAFromDE                                          ; $528b: $df
	ccf                                              ; $528c: $3f
	sbc c                                            ; $528d: $99
	rrca                                             ; $528e: $0f
	dec bc                                           ; $528f: $0b
	ld a, [bc]                                       ; $5290: $0a
	rrca                                             ; $5291: $0f
	rlca                                             ; $5292: $07
	ld b, $dd                                        ; $5293: $06 $dd
	inc b                                            ; $5295: $04
	sbc [hl]                                         ; $5296: $9e
	ld bc, $03b6                                     ; $5297: $01 $b6 $03
	rlca                                             ; $529a: $07
	rlca                                             ; $529b: $07
	inc bc                                           ; $529c: $03
	ld bc, $0000                                     ; $529d: $01 $00 $00
	nop                                              ; $52a0: $00
	db $10                                           ; $52a1: $10
	jr nc, jr_070_5321                               ; $52a2: $30 $7d

	add c                                            ; $52a4: $81
	adc $df                                          ; $52a5: $ce $df
	jp z, $8bce                                      ; $52a7: $ca $ce $8b

	ldh a, [c]                                       ; $52aa: $f2
	adc a                                            ; $52ab: $8f
	rst GetHLinHL                                          ; $52ac: $cf
	ccf                                              ; $52ad: $3f
	cp a                                             ; $52ae: $bf
	ld [hl], c                                       ; $52af: $71
	rst $38                                          ; $52b0: $ff
	pop bc                                           ; $52b1: $c1
	ld a, a                                          ; $52b2: $7f
	add b                                            ; $52b3: $80
	rst JumpTable                                          ; $52b4: $c7
	jr c, @+$01                                      ; $52b5: $38 $ff

	ld a, [hl]                                       ; $52b7: $7e
	rst SubAFromBC                                          ; $52b8: $e7
	rst SubAFromBC                                          ; $52b9: $e7
	xor [hl]                                         ; $52ba: $ae
	daa                                              ; $52bb: $27
	ld a, $3e                                        ; $52bc: $3e $3e
	dec hl                                           ; $52be: $2b
	ld a, $37                                        ; $52bf: $3e $37
	inc e                                            ; $52c1: $1c
	ccf                                              ; $52c2: $3f
	cp h                                             ; $52c3: $bc
	inc bc                                           ; $52c4: $03
	rlca                                             ; $52c5: $07
	rlca                                             ; $52c6: $07
	rrca                                             ; $52c7: $0f
	rrca                                             ; $52c8: $0f
	add b                                            ; $52c9: $80
	ld bc, $031f                                     ; $52ca: $01 $1f $03
	dec e                                            ; $52cd: $1d
	rlca                                             ; $52ce: $07
	add hl, sp                                       ; $52cf: $39
	rrca                                             ; $52d0: $0f
	ld [hl], c                                       ; $52d1: $71
	rra                                              ; $52d2: $1f
	pop hl                                           ; $52d3: $e1
	ld a, a                                          ; $52d4: $7f
	add e                                            ; $52d5: $83
	db $fd                                           ; $52d6: $fd
	rlca                                             ; $52d7: $07
	ld sp, hl                                        ; $52d8: $f9
	rrca                                             ; $52d9: $0f
	pop af                                           ; $52da: $f1
	rra                                              ; $52db: $1f
	pop hl                                           ; $52dc: $e1
	ccf                                              ; $52dd: $3f
	pop bc                                           ; $52de: $c1
	rst $38                                          ; $52df: $ff
	nop                                              ; $52e0: $00
	or a                                             ; $52e1: $b7
	db $ed                                           ; $52e2: $ed
	cp l                                             ; $52e3: $bd
	db $eb                                           ; $52e4: $eb
	rst $38                                          ; $52e5: $ff
	ei                                               ; $52e6: $fb
	jp c, $80ff                                      ; $52e7: $da $ff $80

	ld [$ee5f], a                                    ; $52ea: $ea $5f $ee
	ccf                                              ; $52ed: $3f
	db $ed                                           ; $52ee: $ed
	ccf                                              ; $52ef: $3f
	db $fd                                           ; $52f0: $fd
	ccf                                              ; $52f1: $3f
	or $5f                                           ; $52f2: $f6 $5f
	rst FarCall                                          ; $52f4: $f7
	rra                                              ; $52f5: $1f
	ld [hl], a                                       ; $52f6: $77
	sbc h                                            ; $52f7: $9c
	or a                                             ; $52f8: $b7
	call c, $38ef                                    ; $52f9: $dc $ef $38
	xor $39                                          ; $52fc: $ee $39
	push af                                          ; $52fe: $f5
	dec sp                                           ; $52ff: $3b
	cp [hl]                                          ; $5300: $be
	ld h, e                                          ; $5301: $63
	cp $7f                                           ; $5302: $fe $7f
	jp nc, $525f                                     ; $5304: $d2 $5f $52

	rst SubAFromDE                                          ; $5307: $df
	jp c, $df86                                      ; $5308: $da $86 $df

	xor d                                            ; $530b: $aa
	rst AddAOntoHL                                          ; $530c: $ef
	add hl, hl                                       ; $530d: $29
	rst AddAOntoHL                                          ; $530e: $ef
	dec h                                            ; $530f: $25
	rst SubAFromBC                                          ; $5310: $e7
	ld d, $f7                                        ; $5311: $16 $f7
	sub d                                            ; $5313: $92
	di                                               ; $5314: $f3
	adc c                                            ; $5315: $89
	ld sp, hl                                        ; $5316: $f9
	adc c                                            ; $5317: $89
	ld sp, hl                                        ; $5318: $f9
	ld b, h                                          ; $5319: $44
	ld a, h                                          ; $531a: $7c
	ld b, d                                          ; $531b: $42
	ld a, [hl]                                       ; $531c: $7e
	inc hl                                           ; $531d: $23
	ccf                                              ; $531e: $3f
	inc e                                            ; $531f: $1c
	inc e                                            ; $5320: $1c

jr_070_5321:
	ldh [$e0], a                                     ; $5321: $e0 $e0
	ld h, $e0                                        ; $5323: $26 $e0
	sbc l                                            ; $5325: $9d
	rra                                              ; $5326: $1f
	inc e                                            ; $5327: $1c
	ld l, [hl]                                       ; $5328: $6e
	ldh [$5f], a                                     ; $5329: $e0 $5f
	nop                                              ; $532b: $00
	sub [hl]                                         ; $532c: $96
	xor $f2                                          ; $532d: $ee $f2
	db $f4                                           ; $532f: $f4
	sbc b                                            ; $5330: $98
	ld [$ff1c], a                                    ; $5331: $ea $1c $ff
	inc b                                            ; $5334: $04
	rst $38                                          ; $5335: $ff
	ld a, d                                          ; $5336: $7a
	cp $9d                                           ; $5337: $fe $9d
	rst $38                                          ; $5339: $ff
	ld a, $76                                        ; $533a: $3e $76
	cp $9e                                           ; $533c: $fe $9e
	ld a, [de]                                       ; $533e: $1a
	ld a, e                                          ; $533f: $7b
	nop                                              ; $5340: $00
	ld h, a                                          ; $5341: $67
	ld b, b                                          ; $5342: $40
	sub c                                            ; $5343: $91
	rst AddAOntoHL                                          ; $5344: $ef
	rra                                              ; $5345: $1f
	rst $38                                          ; $5346: $ff
	ld sp, $61df                                     ; $5347: $31 $df $61
	cp a                                             ; $534a: $bf
	ret nz                                           ; $534b: $c0

	rst $38                                          ; $534c: $ff
	nop                                              ; $534d: $00
	jp $fe3c                                         ; $534e: $c3 $3c $fe


	ld a, a                                          ; $5351: $7f
	ld [hl], a                                       ; $5352: $77
	ld a, $6f                                        ; $5353: $3e $6f
	ld b, b                                          ; $5355: $40
	ld h, a                                          ; $5356: $67
	ld h, b                                          ; $5357: $60
	sbc l                                            ; $5358: $9d
	ld l, d                                          ; $5359: $6a
	rst SubAFromDE                                          ; $535a: $df
	ld e, a                                          ; $535b: $5f
	ld h, b                                          ; $535c: $60
	sbc c                                            ; $535d: $99
	rst FarCall                                          ; $535e: $f7
	inc e                                            ; $535f: $1c
	ld [hl], a                                       ; $5360: $77
	sbc h                                            ; $5361: $9c
	xor a                                            ; $5362: $af
	ld hl, sp+$6f                                    ; $5363: $f8 $6f
	ld h, b                                          ; $5365: $60
	ld d, a                                          ; $5366: $57
	add b                                            ; $5367: $80
	sbc l                                            ; $5368: $9d
	ld d, l                                          ; $5369: $55
	rst $38                                          ; $536a: $ff
	rra                                              ; $536b: $1f
	add b                                            ; $536c: $80
	sbc c                                            ; $536d: $99
	ei                                               ; $536e: $fb
	and [hl]                                         ; $536f: $a6
	xor [hl]                                         ; $5370: $ae
	ldh a, [c]                                       ; $5371: $f2
	db $f4                                           ; $5372: $f4
	ld hl, sp+$6f                                    ; $5373: $f8 $6f
	add b                                            ; $5375: $80
	ld [hl], a                                       ; $5376: $77
	cp $98                                           ; $5377: $fe $98
	rst SubAFromBC                                          ; $5379: $e7
	nop                                              ; $537a: $00
	rst SubAFromDE                                          ; $537b: $df
	inc a                                            ; $537c: $3c
	ei                                               ; $537d: $fb
	rst FarCall                                          ; $537e: $f7
	ld [hl], $6b                                     ; $537f: $36 $6b
	add b                                            ; $5381: $80
	sbc c                                            ; $5382: $99
	cp $83                                           ; $5383: $fe $83
	rst SubAFromBC                                          ; $5385: $e7
	rra                                              ; $5386: $1f
	ld sp, hl                                        ; $5387: $f9
	ccf                                              ; $5388: $3f
	ld l, a                                          ; $5389: $6f
	add b                                            ; $538a: $80
	ld [hl], a                                       ; $538b: $77
	cp $99                                           ; $538c: $fe $99
	db $e3                                           ; $538e: $e3
	nop                                              ; $538f: $00
	db $dd                                           ; $5390: $dd
	ld a, $6b                                        ; $5391: $3e $6b
	ld [hl], a                                       ; $5393: $77
	ld c, e                                          ; $5394: $4b
	add b                                            ; $5395: $80
	sbc [hl]                                         ; $5396: $9e
	cp a                                             ; $5397: $bf
	ld e, a                                          ; $5398: $5f
	add b                                            ; $5399: $80
	ld a, a                                          ; $539a: $7f
	cp $7e                                           ; $539b: $fe $7e
	ldh [$9d], a                                     ; $539d: $e0 $9d
	xor [hl]                                         ; $539f: $ae
	ld sp, hl                                        ; $53a0: $f9
	inc bc                                           ; $53a1: $03
	add b                                            ; $53a2: $80
	ld d, e                                          ; $53a3: $53
	add b                                            ; $53a4: $80
	sub a                                            ; $53a5: $97
	cp $a2                                           ; $53a6: $fe $a2

jr_070_53a8:
	db $ec                                           ; $53a8: $ec
	ldh a, [$d6]                                     ; $53a9: $f0 $d6
	jr c, jr_070_53a8                                ; $53ab: $38 $fb

	inc c                                            ; $53ad: $0c
	ld l, a                                          ; $53ae: $6f
	ld a, [hl]                                       ; $53af: $7e
	ld a, a                                          ; $53b0: $7f
	sbc [hl]                                         ; $53b1: $9e
	sbc c                                            ; $53b2: $99
	db $fc                                           ; $53b3: $fc
	nop                                              ; $53b4: $00
	db $e3                                           ; $53b5: $e3
	rst JumpTable                                          ; $53b6: $c7
	ld a, $7c                                        ; $53b7: $3e $7c
	ld h, a                                          ; $53b9: $67
	add b                                            ; $53ba: $80
	sub a                                            ; $53bb: $97
	rst FarCall                                          ; $53bc: $f7
	rrca                                             ; $53bd: $0f
	ld sp, hl                                        ; $53be: $f9
	rra                                              ; $53bf: $1f
	rst AddAOntoHL                                          ; $53c0: $ef
	ld sp, $e05f                                     ; $53c1: $31 $5f $e0
	ld a, c                                          ; $53c4: $79
	ld hl, sp-$43                                    ; $53c5: $f8 $bd
	rst $38                                          ; $53c7: $ff
	jp Jump_070_613f                                 ; $53c8: $c3 $3f $61


	sbc h                                            ; $53cb: $9c
	ld [hl], e                                       ; $53cc: $73
	ld e, $3f                                        ; $53cd: $1e $3f
	ld e, a                                          ; $53cf: $5f
	add b                                            ; $53d0: $80
	ld a, d                                          ; $53d1: $7a
	ld h, b                                          ; $53d2: $60
	inc sp                                           ; $53d3: $33
	add b                                            ; $53d4: $80
	sbc e                                            ; $53d5: $9b
	ld e, b                                          ; $53d6: $58
	jr nz, @+$12                                     ; $53d7: $20 $10

	ld h, b                                          ; $53d9: $60
	db $fd                                           ; $53da: $fd
	sbc l                                            ; $53db: $9d
	ld [hl], b                                       ; $53dc: $70
	jr c, jr_070_5454                                ; $53dd: $38 $75

	ldh a, [$fb]                                     ; $53df: $f0 $fb
	sub [hl]                                         ; $53e1: $96
	add c                                            ; $53e2: $81
	ret nz                                           ; $53e3: $c0

	ei                                               ; $53e4: $fb
	rst SubAFromBC                                          ; $53e5: $e7
	cp $9f                                           ; $53e6: $fe $9f
	call nz, $8383                                   ; $53e8: $c4 $83 $83
	sbc $80                                          ; $53eb: $de $80
	ld h, a                                          ; $53ed: $67
	ldh [$9c], a                                     ; $53ee: $e0 $9c
	jr nc, jr_070_542a                               ; $53f0: $30 $38

	jr z, jr_070_546f                                ; $53f2: $28 $7b

	pop hl                                           ; $53f4: $e1
	ld l, a                                          ; $53f5: $6f
	sbc $2f                                          ; $53f6: $de $2f
	ldh [$9e], a                                     ; $53f8: $e0 $9e
	jr jr_070_545f                                   ; $53fa: $18 $63

	cp [hl]                                          ; $53fc: $be
	cpl                                              ; $53fd: $2f
	ldh [$99], a                                     ; $53fe: $e0 $99
	inc a                                            ; $5400: $3c
	jr c, jr_070_541f                                ; $5401: $38 $1c

	jr c, jr_070_5425                                ; $5403: $38 $20

	jr jr_070_547e                                   ; $5405: $18 $77

	call c, $e057                                    ; $5407: $dc $57 $e0
	pop de                                           ; $540a: $d1
	ld [bc], a                                       ; $540b: $02
	di                                               ; $540c: $f3
	rst SubAFromDE                                          ; $540d: $df
	ld bc, $0299                                     ; $540e: $01 $99 $02
	inc bc                                           ; $5411: $03
	rrca                                             ; $5412: $0f
	rrca                                             ; $5413: $0f
	jr nc, jr_070_5446                               ; $5414: $30 $30

	ld d, a                                          ; $5416: $57
	xor $df                                          ; $5417: $ee $df
	rrca                                             ; $5419: $0f
	add e                                            ; $541a: $83
	ld a, c                                          ; $541b: $79
	ld a, [hl]                                       ; $541c: $7e
	rra                                              ; $541d: $1f
	rra                                              ; $541e: $1f

jr_070_541f:
	dec bc                                           ; $541f: $0b
	rrca                                             ; $5420: $0f
	rra                                              ; $5421: $1f
	ld e, $67                                        ; $5422: $1e $67
	ld a, b                                          ; $5424: $78

jr_070_5425:
	sbc h                                            ; $5425: $9c
	db $e3                                           ; $5426: $e3
	ccf                                              ; $5427: $3f
	rst $38                                          ; $5428: $ff
	ldh [c], a                                       ; $5429: $e2

jr_070_542a:
	rst $38                                          ; $542a: $ff
	ld c, l                                          ; $542b: $4d
	ld a, [hl]                                       ; $542c: $7e
	sbc c                                            ; $542d: $99
	rst $38                                          ; $542e: $ff
	xor e                                            ; $542f: $ab
	rst $38                                          ; $5430: $ff
	db $d3                                           ; $5431: $d3
	cp $97                                           ; $5432: $fe $97
	db $fc                                           ; $5434: $fc
	or a                                             ; $5435: $b7
	db $fc                                           ; $5436: $fc
	ldh [$a7], a                                     ; $5437: $e0 $a7
	rst SubAFromDE                                          ; $5439: $df
	rrca                                             ; $543a: $0f
	add b                                            ; $543b: $80
	inc [hl]                                         ; $543c: $34
	dec sp                                           ; $543d: $3b
	ret                                              ; $543e: $c9


	rst FarCall                                          ; $543f: $f7
	ld [de], a                                       ; $5440: $12
	push hl                                          ; $5441: $e5

jr_070_5442:
	cp $ff                                           ; $5442: $fe $ff
	rlc a                                            ; $5444: $cb $07

jr_070_5446:
	and b                                            ; $5446: $a0
	ret nz                                           ; $5447: $c0

	ld a, [$2efc]                                    ; $5448: $fa $fc $2e
	rra                                              ; $544b: $1f
	db $e3                                           ; $544c: $e3
	rra                                              ; $544d: $1f
	db $fc                                           ; $544e: $fc
	rst $38                                          ; $544f: $ff
	jp Jump_070_60ff                                 ; $5450: $c3 $ff $60


	sbc a                                            ; $5453: $9f

jr_070_5454:
	cp $7f                                           ; $5454: $fe $7f
	xor c                                            ; $5456: $a9
	rst SubAFromDE                                          ; $5457: $df
	ld a, e                                          ; $5458: $7b
	sub a                                            ; $5459: $97
	and l                                            ; $545a: $a5
	sbc d                                            ; $545b: $9a
	ld a, $3b                                        ; $545c: $3e $3b
	inc l                                            ; $545e: $2c

jr_070_545f:
	dec sp                                           ; $545f: $3b
	inc e                                            ; $5460: $1c
	ldh [$bd], a                                     ; $5461: $e0 $bd
	db $db                                           ; $5463: $db
	ld bc, $03df                                     ; $5464: $01 $df $03
	ld a, a                                          ; $5467: $7f
	inc b                                            ; $5468: $04
	rst SubAFromDE                                          ; $5469: $df
	inc bc                                           ; $546a: $03
	sbc c                                            ; $546b: $99
	dec b                                            ; $546c: $05
	rlca                                             ; $546d: $07
	dec b                                            ; $546e: $05

jr_070_546f:
	rlca                                             ; $546f: $07
	dec bc                                           ; $5470: $0b
	ld c, $77                                        ; $5471: $0e $77
	cp $9c                                           ; $5473: $fe $9c
	ld de, $101f                                     ; $5475: $11 $1f $10
	ld a, e                                          ; $5478: $7b
	cp $57                                           ; $5479: $fe $57
	jp c, $df7f                                      ; $547b: $da $7f $df

jr_070_547e:
	add b                                            ; $547e: $80
	rrca                                             ; $547f: $0f
	inc c                                            ; $5480: $0c
	rra                                              ; $5481: $1f
	db $10                                           ; $5482: $10
	ccf                                              ; $5483: $3f
	jr nz, @+$41                                     ; $5484: $20 $3f

	inc l                                            ; $5486: $2c
	rra                                              ; $5487: $1f
	inc de                                           ; $5488: $13
	rst $38                                          ; $5489: $ff
	rst $38                                          ; $548a: $ff
	ld h, d                                          ; $548b: $62
	rst $38                                          ; $548c: $ff
	adc h                                            ; $548d: $8c
	rst $38                                          ; $548e: $ff
	db $10                                           ; $548f: $10
	rst $38                                          ; $5490: $ff
	jr nc, jr_070_5442                               ; $5491: $30 $af

	ld l, e                                          ; $5493: $6b
	ld e, a                                          ; $5494: $5f
	rst GetHLinHL                                          ; $5495: $cf
	cp $ab                                           ; $5496: $fe $ab
	ld a, [hl]                                       ; $5498: $7e
	dec e                                            ; $5499: $1d
	dec sp                                           ; $549a: $3b
	cp b                                             ; $549b: $b8
	add hl, de                                       ; $549c: $19
	cp d                                             ; $549d: $ba
	sbc e                                            ; $549e: $9b
	reti                                             ; $549f: $d9


	db $ed                                           ; $54a0: $ed
	db $db                                           ; $54a1: $db
	ld c, c                                          ; $54a2: $49
	ld a, d                                          ; $54a3: $7a
	and $93                                          ; $54a4: $e6 $93
	ld a, [hl]                                       ; $54a6: $7e
	rst $38                                          ; $54a7: $ff
	ld hl, sp-$01                                    ; $54a8: $f8 $ff
	ld e, a                                          ; $54aa: $5f
	cp a                                             ; $54ab: $bf
	db $fd                                           ; $54ac: $fd
	ld d, $96                                        ; $54ad: $16 $96
	dec de                                           ; $54af: $1b
	dec de                                           ; $54b0: $1b
	rrca                                             ; $54b1: $0f
	ldh [$c1], a                                     ; $54b2: $e0 $c1
	add c                                            ; $54b4: $81
	rst SubAFromDE                                          ; $54b5: $df
	pop bc                                           ; $54b6: $c1
	rst SubAFromDE                                          ; $54b7: $df
	jp $c2f7                                         ; $54b8: $c3 $f7 $c2


	rst SubAFromBC                                          ; $54bb: $e7
	add $ce                                          ; $54bc: $c6 $ce
	add [hl]                                         ; $54be: $86
	adc d                                            ; $54bf: $8a
	adc [hl]                                         ; $54c0: $8e
	sbc d                                            ; $54c1: $9a
	adc [hl]                                         ; $54c2: $8e
	sub d                                            ; $54c3: $92
	ld e, $b2                                        ; $54c4: $1e $b2
	ld d, $b2                                        ; $54c6: $16 $b2
	ld d, $23                                        ; $54c8: $16 $23
	ld [hl], $63                                     ; $54ca: $36 $63
	ld h, $c1                                        ; $54cc: $26 $c1
	ld h, a                                          ; $54ce: $67
	add c                                            ; $54cf: $81
	rst JumpTable                                          ; $54d0: $c7
	ld bc, $bcc3                                     ; $54d1: $01 $c3 $bc
	inc bc                                           ; $54d4: $03
	nop                                              ; $54d5: $00
	nop                                              ; $54d6: $00
	nop                                              ; $54d7: $00
	nop                                              ; $54d8: $00
	rst SubAFromDE                                          ; $54d9: $df
	ld a, b                                          ; $54da: $78
	sbc c                                            ; $54db: $99
	db $fc                                           ; $54dc: $fc
	add h                                            ; $54dd: $84
	cp $02                                           ; $54de: $fe $02
	rst $38                                          ; $54e0: $ff
	ld bc, $fe7b                                     ; $54e1: $01 $7b $fe
	add b                                            ; $54e4: $80
	jr @+$01                                         ; $54e5: $18 $ff

	inc c                                            ; $54e7: $0c
	rst $38                                          ; $54e8: $ff
	inc b                                            ; $54e9: $04
	rst $38                                          ; $54ea: $ff
	jp nz, $f13f                                     ; $54eb: $c2 $3f $f1

	rrca                                             ; $54ee: $0f
	rst $38                                          ; $54ef: $ff
	ld sp, $d4ff                                     ; $54f0: $31 $ff $d4
	db $e3                                           ; $54f3: $e3
	ld d, e                                          ; $54f4: $53
	adc a                                            ; $54f5: $8f
	ld b, b                                          ; $54f6: $40
	ccf                                              ; $54f7: $3f
	sbc d                                            ; $54f8: $9a
	ld a, h                                          ; $54f9: $7c
	ld hl, $d0f8                                     ; $54fa: $21 $f8 $d0
	db $e3                                           ; $54fd: $e3
	xor c                                            ; $54fe: $a9
	rst JumpTable                                          ; $54ff: $c7
	pop de                                           ; $5500: $d1
	adc [hl]                                         ; $5501: $8e
	add [hl]                                         ; $5502: $86
	ld sp, hl                                        ; $5503: $f9
	sub c                                            ; $5504: $91
	ld hl, sp-$09                                    ; $5505: $f8 $f7
	adc [hl]                                         ; $5507: $8e
	inc e                                            ; $5508: $1c
	inc sp                                           ; $5509: $33
	adc $fd                                          ; $550a: $ce $fd
	rst $38                                          ; $550c: $ff
	ld b, a                                          ; $550d: $47
	rst $38                                          ; $550e: $ff
	or e                                             ; $550f: $b3
	ld a, a                                          ; $5510: $7f
	ld e, h                                          ; $5511: $5c
	cp a                                             ; $5512: $bf
	ldh [$c1], a                                     ; $5513: $e0 $c1
	sbc [hl]                                         ; $5515: $9e
	add b                                            ; $5516: $80
	cp h                                             ; $5517: $bc
	nop                                              ; $5518: $00
	rra                                              ; $5519: $1f
	rra                                              ; $551a: $1f
	rrca                                             ; $551b: $0f
	ld [$078a], sp                                   ; $551c: $08 $8a $07
	inc e                                            ; $551f: $1c
	rlca                                             ; $5520: $07
	dec bc                                           ; $5521: $0b
	rla                                              ; $5522: $17
	add hl, bc                                       ; $5523: $09
	rla                                              ; $5524: $17
	dec hl                                           ; $5525: $2b
	rla                                              ; $5526: $17
	ld c, [hl]                                       ; $5527: $4e
	inc a                                            ; $5528: $3c
	cp b                                             ; $5529: $b8
	ld [hl], b                                       ; $552a: $70
	db $e3                                           ; $552b: $e3
	ld b, b                                          ; $552c: $40
	ld e, l                                          ; $552d: $5d
	adc $56                                          ; $552e: $ce $56
	ld hl, sp-$51                                    ; $5530: $f8 $af
	ldh a, [$f9]                                     ; $5532: $f0 $f9
	rst SubAFromDE                                          ; $5534: $df
	ld b, b                                          ; $5535: $40
	db $dd                                           ; $5536: $dd
	ld h, b                                          ; $5537: $60
	sub c                                            ; $5538: $91
	ld e, a                                          ; $5539: $5f
	ld a, a                                          ; $553a: $7f
	ld d, c                                          ; $553b: $51
	ld a, a                                          ; $553c: $7f
	rst SubAFromBC                                          ; $553d: $e7
	rst $38                                          ; $553e: $ff
	db $ec                                           ; $553f: $ec
	rst $38                                          ; $5540: $ff
	reti                                             ; $5541: $d9


	rst $38                                          ; $5542: $ff
	ldh a, [c]                                       ; $5543: $f2
	cp a                                             ; $5544: $bf
	rst $38                                          ; $5545: $ff
	rrca                                             ; $5546: $0f

jr_070_5547:
	ld a, e                                          ; $5547: $7b
	ld d, [hl]                                       ; $5548: $56
	add b                                            ; $5549: $80
	and $7b                                          ; $554a: $e6 $7b
	db $e3                                           ; $554c: $e3
	db $fd                                           ; $554d: $fd
	ld sp, hl                                        ; $554e: $f9
	xor $1c                                          ; $554f: $ee $1c
	ld c, e                                          ; $5551: $4b
	ld a, $31                                        ; $5552: $3e $31
	rst $38                                          ; $5554: $ff
	jp nc, Jump_070_60ef                             ; $5555: $d2 $ef $60

	sbc a                                            ; $5558: $9f
	adc h                                            ; $5559: $8c
	ld [hl], e                                       ; $555a: $73
	add hl, hl                                       ; $555b: $29
	rst JumpTable                                          ; $555c: $c7
	sub d                                            ; $555d: $92
	rrca                                             ; $555e: $0f
	ld b, c                                          ; $555f: $41
	ld a, $12                                        ; $5560: $3e $12
	ld sp, hl                                        ; $5562: $f9
	ld h, l                                          ; $5563: $65
	di                                               ; $5564: $f3
	adc d                                            ; $5565: $8a
	rst JumpTable                                          ; $5566: $c7
	ld h, b                                          ; $5567: $60
	sbc a                                            ; $5568: $9f
	add b                                            ; $5569: $80
	sub h                                            ; $556a: $94
	ld a, e                                          ; $556b: $7b
	ld l, e                                          ; $556c: $6b
	rst FarCall                                          ; $556d: $f7
	or h                                             ; $556e: $b4
	rst GetHLinHL                                          ; $556f: $cf
	rst AddAOntoHL                                          ; $5570: $ef
	rra                                              ; $5571: $1f
	add hl, sp                                       ; $5572: $39
	cp $c8                                           ; $5573: $fe $c8
	rst FarCall                                          ; $5575: $f7
	jr nc, jr_070_5547                               ; $5576: $30 $cf

	ld hl, sp+$37                                    ; $5578: $f8 $37
	push af                                          ; $557a: $f5
	rst GetHLinHL                                          ; $557b: $cf
	sbc e                                            ; $557c: $9b
	ld a, [hl]                                       ; $557d: $7e
	halt                                             ; $557e: $76
	db $ed                                           ; $557f: $ed
	call $31bb                                       ; $5580: $cd $bb $31
	rst $38                                          ; $5583: $ff
	and $ff                                          ; $5584: $e6 $ff
	dec a                                            ; $5586: $3d
	ld a, a                                          ; $5587: $7f
	inc de                                           ; $5588: $13
	sbc e                                            ; $5589: $9b
	cp a                                             ; $558a: $bf
	sub [hl]                                         ; $558b: $96
	cp a                                             ; $558c: $bf
	xor h                                            ; $558d: $ac
	ld a, d                                          ; $558e: $7a
	sub d                                            ; $558f: $92
	add [hl]                                         ; $5590: $86
	ld [$cafb], a                                    ; $5591: $ea $fb $ca
	ei                                               ; $5594: $fb
	jp nc, Jump_070_51f3                             ; $5595: $d2 $f3 $51

	ld [hl], c                                       ; $5598: $71
	ld sp, $9931                                     ; $5599: $31 $31 $99
	sbc c                                            ; $559c: $99
	ld hl, sp-$08                                    ; $559d: $f8 $f8
	ld b, $fe                                        ; $559f: $06 $fe
	pop hl                                           ; $55a1: $e1
	rra                                              ; $55a2: $1f
	ldh a, [rIF]                                     ; $55a3: $f0 $0f
	db $fc                                           ; $55a5: $fc
	inc bc                                           ; $55a6: $03
	cp $01                                           ; $55a7: $fe $01
	rst $38                                          ; $55a9: $ff
	cp c                                             ; $55aa: $b9
	rst $38                                          ; $55ab: $ff
	ld bc, $0001                                     ; $55ac: $01 $01 $00
	ret nz                                           ; $55af: $c0

	ldh [$f0], a                                     ; $55b0: $e0 $f0
	inc a                                            ; $55b2: $3c
	sub l                                            ; $55b3: $95
	ret nz                                           ; $55b4: $c0

	ld e, $e0                                        ; $55b5: $1e $e0
	db $e3                                           ; $55b7: $e3
	db $fc                                           ; $55b8: $fc
	db $fc                                           ; $55b9: $fc
	rra                                              ; $55ba: $1f
	dec bc                                           ; $55bb: $0b
	rlca                                             ; $55bc: $07
	nop                                              ; $55bd: $00
	or h                                             ; $55be: $b4
	ldh [rP1], a                                     ; $55bf: $e0 $00
	ld a, a                                          ; $55c1: $7f
	rst $38                                          ; $55c2: $ff
	nop                                              ; $55c3: $00
	nop                                              ; $55c4: $00
	nop                                              ; $55c5: $00
	nop                                              ; $55c6: $00
	nop                                              ; $55c7: $00
	nop                                              ; $55c8: $00
	nop                                              ; $55c9: $00
	nop                                              ; $55ca: $00
	ldh [$8a], a                                     ; $55cb: $e0 $8a
	ldh [$3e], a                                     ; $55cd: $e0 $3e
	cp $70                                           ; $55cf: $fe $70
	ldh a, [$8c]                                     ; $55d1: $f0 $8c
	db $fc                                           ; $55d3: $fc
	ld [bc], a                                       ; $55d4: $02
	cp $e1                                           ; $55d5: $fe $e1
	rst $38                                          ; $55d7: $ff
	ret c                                            ; $55d8: $d8

	rst $38                                          ; $55d9: $ff
	or $3f                                           ; $55da: $f6 $3f
	ld sp, hl                                        ; $55dc: $f9
	adc a                                            ; $55dd: $8f
	sbc h                                            ; $55de: $9c
	add a                                            ; $55df: $87
	ld a, $03                                        ; $55e0: $3e $03
	ld a, d                                          ; $55e2: $7a
	xor d                                            ; $55e3: $aa
	ld a, a                                          ; $55e4: $7f
	call nc, $809a                                   ; $55e5: $d4 $9a $80
	rst $38                                          ; $55e8: $ff
	jp $e7fe                                         ; $55e9: $c3 $fe $e7


	pop hl                                           ; $55ec: $e1
	add b                                            ; $55ed: $80
	ld a, l                                          ; $55ee: $7d
	cp $35                                           ; $55ef: $fe $35
	cp $7b                                           ; $55f1: $fe $7b
	or $b6                                           ; $55f3: $f6 $b6
	ei                                               ; $55f5: $fb
	dec l                                            ; $55f6: $2d
	ei                                               ; $55f7: $fb
	dec a                                            ; $55f8: $3d
	db $eb                                           ; $55f9: $eb
	ld [hl], a                                       ; $55fa: $77
	jp hl                                            ; $55fb: $e9


	or d                                             ; $55fc: $b2
	db $ed                                           ; $55fd: $ed
	ld a, [hl+]                                      ; $55fe: $2a
	push af                                          ; $55ff: $f5
	ld l, e                                          ; $5600: $6b
	db $f4                                           ; $5601: $f4
	cp c                                             ; $5602: $b9
	or $39                                           ; $5603: $f6 $39
	or $75                                           ; $5605: $f6 $75
	ld a, [$fa75]                                    ; $5607: $fa $75 $fa
	or h                                             ; $560a: $b4
	ei                                               ; $560b: $fb
	ld a, $9b                                        ; $560c: $3e $9b
	ei                                               ; $560e: $fb
	ld l, [hl]                                       ; $560f: $6e
	ei                                               ; $5610: $fb
	xor [hl]                                         ; $5611: $ae
	ld a, e                                          ; $5612: $7b
	db $fc                                           ; $5613: $fc
	ld a, a                                          ; $5614: $7f
	cp $80                                           ; $5615: $fe $80
	jp z, $dbff                                      ; $5617: $ca $ff $db

	rst AddAOntoHL                                          ; $561a: $ef
	db $db                                           ; $561b: $db
	rst AddAOntoHL                                          ; $561c: $ef
	ld e, c                                          ; $561d: $59
	rst AddAOntoHL                                          ; $561e: $ef
	ld e, l                                          ; $561f: $5d
	rst AddAOntoHL                                          ; $5620: $ef
	ld d, l                                          ; $5621: $55
	rst AddAOntoHL                                          ; $5622: $ef
	ld d, h                                          ; $5623: $54
	rst AddAOntoHL                                          ; $5624: $ef

jr_070_5625:
	ld d, [hl]                                       ; $5625: $56
	rst AddAOntoHL                                          ; $5626: $ef
	ld l, [hl]                                       ; $5627: $6e
	rst FarCall                                          ; $5628: $f7
	ld h, l                                          ; $5629: $65
	db $fd                                           ; $562a: $fd
	ld d, h                                          ; $562b: $54
	call c, $de52                                    ; $562c: $dc $52 $de
	xor d                                            ; $562f: $aa
	xor $a9                                          ; $5630: $ee $a9
	rst AddAOntoHL                                          ; $5632: $ef
	push hl                                          ; $5633: $e5
	rst SubAFromBC                                          ; $5634: $e7
	ld d, e                                          ; $5635: $53
	sub c                                            ; $5636: $91
	db $d3                                           ; $5637: $d3
	and b                                            ; $5638: $a0
	ld h, b                                          ; $5639: $60
	ret nc                                           ; $563a: $d0

	jr nc, jr_070_5625                               ; $563b: $30 $e8

jr_070_563d:
	jr jr_070_563d                                   ; $563d: $18 $fe

	ld c, $fd                                        ; $563f: $0e $fd
	rlca                                             ; $5641: $07
	cp $03                                           ; $5642: $fe $03
	db $fd                                           ; $5644: $fd

jr_070_5645:
	ld a, e                                          ; $5645: $7b
	inc [hl]                                         ; $5646: $34
	ld a, a                                          ; $5647: $7f
	ld d, h                                          ; $5648: $54
	sbc [hl]                                         ; $5649: $9e
	ccf                                              ; $564a: $3f
	cp h                                             ; $564b: $bc
	rra                                              ; $564c: $1f
	rlca                                             ; $564d: $07
	ld bc, wTaskParam4_word0                                     ; $564e: $01 $c0 $d0
	sub [hl]                                         ; $5651: $96
	ldh [$b8], a                                     ; $5652: $e0 $b8
	ld [hl], b                                       ; $5654: $70
	ld l, $1c                                        ; $5655: $2e $1c
	dec bc                                           ; $5657: $0b
	ld b, $85                                        ; $5658: $06 $85
	inc bc                                           ; $565a: $03
	ld [hl], a                                       ; $565b: $77
	ld a, [hl-]                                      ; $565c: $3a
	ld a, [de]                                       ; $565d: $1a
	ld h, h                                          ; $565e: $64
	add a                                            ; $565f: $87
	add b                                            ; $5660: $80
	ld b, b                                          ; $5661: $40
	ret nz                                           ; $5662: $c0

	jr nz, jr_070_5645                               ; $5663: $20 $e0

	ldh [$a0], a                                     ; $5665: $e0 $a0
	ld d, b                                          ; $5667: $50
	ldh a, [rSVBK]                                   ; $5668: $f0 $70
	ret nc                                           ; $566a: $d0

	xor b                                            ; $566b: $a8
	ld hl, sp-$48                                    ; $566c: $f8 $b8
	add sp, -$68                                     ; $566e: $e8 $98
	ld hl, sp-$2c                                    ; $5670: $f8 $d4
	db $fc                                           ; $5672: $fc
	ld e, h                                          ; $5673: $5c
	db $f4                                           ; $5674: $f4
	call z, $ac74                                    ; $5675: $cc $74 $ac
	ld a, e                                          ; $5678: $7b
	cp $8b                                           ; $5679: $fe $8b
	db $ec                                           ; $567b: $ec
	inc [hl]                                         ; $567c: $34

jr_070_567d:
	ld l, h                                          ; $567d: $6c
	or h                                             ; $567e: $b4
	db $e4                                           ; $567f: $e4
	cp h                                             ; $5680: $bc
	db $f4                                           ; $5681: $f4
	xor h                                            ; $5682: $ac
	or h                                             ; $5683: $b4
	db $ec                                           ; $5684: $ec
	cp b                                             ; $5685: $b8
	add sp, -$28                                     ; $5686: $e8 $d8
	add sp, -$18                                     ; $5688: $e8 $e8
	ret c                                            ; $568a: $d8

	xor b                                            ; $568b: $a8
	ret c                                            ; $568c: $d8

	or b                                             ; $568d: $b0
	ret nc                                           ; $568e: $d0

	ld [hl], a                                       ; $568f: $77
	cp $9c                                           ; $5690: $fe $9c
	sub b                                            ; $5692: $90
	ldh a, [$d0]                                     ; $5693: $f0 $d0
	ld a, e                                          ; $5695: $7b
	cp $df                                           ; $5696: $fe $df
	or b                                             ; $5698: $b0
	rst SubAFromDE                                          ; $5699: $df
	cp b                                             ; $569a: $b8
	db $dd                                           ; $569b: $dd
	jr jr_070_567d                                   ; $569c: $18 $df

	ld [$04df], sp                                   ; $569e: $08 $df $04
	ld [hl], a                                       ; $56a1: $77
	cp b                                             ; $56a2: $b8
	db $dd                                           ; $56a3: $dd
	add b                                            ; $56a4: $80
	ld a, a                                          ; $56a5: $7f
	or h                                             ; $56a6: $b4
	rst SubAFromDE                                          ; $56a7: $df
	ret nz                                           ; $56a8: $c0

	rst SubAFromDE                                          ; $56a9: $df
	ld b, b                                          ; $56aa: $40
	rst SubAFromDE                                          ; $56ab: $df
	jr nz, jr_070_5715                               ; $56ac: $20 $67

	and h                                            ; $56ae: $a4
	ld d, a                                          ; $56af: $57
	sbc d                                            ; $56b0: $9a
	sbc [hl]                                         ; $56b1: $9e
	or b                                             ; $56b2: $b0
	ld a, d                                          ; $56b3: $7a
	adc $9c                                          ; $56b4: $ce $9c
	ld b, d                                          ; $56b6: $42
	cp $21                                           ; $56b7: $fe $21
	ld a, b                                          ; $56b9: $78
	ldh a, [$7f]                                     ; $56ba: $f0 $7f
	cp $91                                           ; $56bc: $fe $91
	ld [$84ff], sp                                   ; $56be: $08 $ff $84
	ld a, a                                          ; $56c1: $7f
	add d                                            ; $56c2: $82
	ld a, a                                          ; $56c3: $7f
	jp nz, $c13f                                     ; $56c4: $c2 $3f $c1

	ccf                                              ; $56c7: $3f
	add b                                            ; $56c8: $80
	rst $38                                          ; $56c9: $ff
	ldh [$7f], a                                     ; $56ca: $e0 $7f
	ld b, a                                          ; $56cc: $47
	ld [hl], b                                       ; $56cd: $70
	ld l, a                                          ; $56ce: $6f
	jr z, @-$69                                      ; $56cf: $28 $95

	db $f4                                           ; $56d1: $f4
	inc c                                            ; $56d2: $0c
	db $f4                                           ; $56d3: $f4
	inc c                                            ; $56d4: $0c
	ld h, d                                          ; $56d5: $62
	sbc [hl]                                         ; $56d6: $9e
	add d                                            ; $56d7: $82
	cp $42                                           ; $56d8: $fe $42
	cp $25                                           ; $56da: $fe $25
	nop                                              ; $56dc: $00
	sub l                                            ; $56dd: $95
	xor d                                            ; $56de: $aa
	adc b                                            ; $56df: $88
	sbc c                                            ; $56e0: $99
	sbc c                                            ; $56e1: $99
	xor d                                            ; $56e2: $aa
	nop                                              ; $56e3: $00
	sbc c                                            ; $56e4: $99
	sbc c                                            ; $56e5: $99
	cp e                                             ; $56e6: $bb
	call z, $fb7b                                    ; $56e7: $cc $7b $fb
	sub [hl]                                         ; $56ea: $96
	inc sp                                           ; $56eb: $33
	call z, $9922                                    ; $56ec: $cc $22 $99
	sbc c                                            ; $56ef: $99
	nop                                              ; $56f0: $00
	call z, $2222                                    ; $56f1: $cc $22 $22
	ld a, e                                          ; $56f4: $7b

jr_070_56f5:
	ei                                               ; $56f5: $fb
	sbc e                                            ; $56f6: $9b
	ld b, b                                          ; $56f7: $40
	ld [hl+], a                                      ; $56f8: $22
	adc b                                            ; $56f9: $88
	nop                                              ; $56fa: $00
	db $dd                                           ; $56fb: $dd
	xor d                                            ; $56fc: $aa
	sbc l                                            ; $56fd: $9d
	sbc c                                            ; $56fe: $99
	adc b                                            ; $56ff: $88
	adc c                                            ; $5700: $89
	ld bc, $a980                                     ; $5701: $01 $80 $a9
	cp $a8                                           ; $5704: $fe $a8
	rst $38                                          ; $5706: $ff
	and b                                            ; $5707: $a0
	rst $38                                          ; $5708: $ff
	ld h, a                                          ; $5709: $67
	ld a, a                                          ; $570a: $7f
	jr nz, jr_070_574c                               ; $570b: $20 $3f

	ld l, l                                          ; $570d: $6d
	ld [hl], e                                       ; $570e: $73
	xor e                                            ; $570f: $ab
	rst FarCall                                          ; $5710: $f7
	rst AddAOntoHL                                          ; $5711: $ef
	cp a                                             ; $5712: $bf
	db $db                                           ; $5713: $db
	cp [hl]                                          ; $5714: $be

jr_070_5715:
	rst SubAFromHL                                          ; $5715: $d7
	cp e                                             ; $5716: $bb
	sub [hl]                                         ; $5717: $96
	ei                                               ; $5718: $fb
	ld e, d                                          ; $5719: $5a
	ld [hl], a                                       ; $571a: $77
	dec a                                            ; $571b: $3d
	inc sp                                           ; $571c: $33
	rra                                              ; $571d: $1f
	db $10                                           ; $571e: $10
	ld e, $11                                        ; $571f: $1e $11
	rra                                              ; $5721: $1f
	sub d                                            ; $5722: $92
	db $10                                           ; $5723: $10
	rrca                                             ; $5724: $0f
	ld [$080f], sp                                   ; $5725: $08 $0f $08
	rlca                                             ; $5728: $07
	inc b                                            ; $5729: $04
	rlca                                             ; $572a: $07
	inc b                                            ; $572b: $04
	inc bc                                           ; $572c: $03
	ld [bc], a                                       ; $572d: $02
	ld bc, $ed01                                     ; $572e: $01 $01 $ed
	add b                                            ; $5731: $80
	cp $18                                           ; $5732: $fe $18
	ld a, [$ed18]                                    ; $5734: $fa $18 $ed
	ld hl, sp-$78                                    ; $5737: $f8 $88
	db $f4                                           ; $5739: $f4
	ret c                                            ; $573a: $d8

	jr nz, jr_070_56f5                               ; $573b: $20 $b8

	ret nz                                           ; $573d: $c0

	ret c                                            ; $573e: $d8

	ldh [$f0], a                                     ; $573f: $e0 $f0
	ldh [rSVBK], a                                   ; $5741: $e0 $70
	ld h, b                                          ; $5743: $60
	ldh [$e0], a                                     ; $5744: $e0 $e0
	and b                                            ; $5746: $a0
	ldh [$3e], a                                     ; $5747: $e0 $3e
	ld h, b                                          ; $5749: $60
	rst SubAFromDE                                          ; $574a: $df
	ret nz                                           ; $574b: $c0

jr_070_574c:
	xor a                                            ; $574c: $af
	nop                                              ; $574d: $00
	ld d, a                                          ; $574e: $57
	jr jr_070_576f                                   ; $574f: $18 $1e

	add b                                            ; $5751: $80
	ld [$0d1e], sp                                   ; $5752: $08 $1e $0d
	rrca                                             ; $5755: $0f
	jr jr_070_5772                                   ; $5756: $18 $1a

	db $10                                           ; $5758: $10
	jr nz, jr_070_577b                               ; $5759: $20 $20

	rrca                                             ; $575b: $0f
	ld b, $11                                        ; $575c: $06 $11
	rrca                                             ; $575e: $0f
	inc sp                                           ; $575f: $33
	inc c                                            ; $5760: $0c
	ccf                                              ; $5761: $3f
	nop                                              ; $5762: $00
	ccf                                              ; $5763: $3f
	rrca                                             ; $5764: $0f
	dec sp                                           ; $5765: $3b
	rra                                              ; $5766: $1f
	cpl                                              ; $5767: $2f
	rlca                                             ; $5768: $07
	inc c                                            ; $5769: $0c
	inc c                                            ; $576a: $0c
	adc [hl]                                         ; $576b: $8e
	ld a, [bc]                                       ; $576c: $0a
	ld c, a                                          ; $576d: $4f

jr_070_576e:
	dec bc                                           ; $576e: $0b

jr_070_576f:
	and h                                            ; $576f: $a4
	dec c                                            ; $5770: $0d
	sbc l                                            ; $5771: $9d

jr_070_5772:
	ld e, a                                          ; $5772: $5f
	inc bc                                           ; $5773: $03
	ld [hl], a                                       ; $5774: $77
	xor e                                            ; $5775: $ab
	ld a, a                                          ; $5776: $7f
	db $fc                                           ; $5777: $fc
	add b                                            ; $5778: $80
	rlca                                             ; $5779: $07
	nop                                              ; $577a: $00

jr_070_577b:
	rrca                                             ; $577b: $0f
	nop                                              ; $577c: $00
	ld e, $01                                        ; $577d: $1e $01
	add hl, sp                                       ; $577f: $39
	rlca                                             ; $5780: $07
	rst SubAFromBC                                          ; $5781: $e7
	rra                                              ; $5782: $1f
	sbc a                                            ; $5783: $9f
	ld a, a                                          ; $5784: $7f
	ldh [rIE], a                                     ; $5785: $e0 $ff
	ldh [$1f], a                                     ; $5787: $e0 $1f
	sbc [hl]                                         ; $5789: $9e
	add c                                            ; $578a: $81
	adc h                                            ; $578b: $8c
	add e                                            ; $578c: $83
	call $8b82                                       ; $578d: $cd $82 $8b
	call nz, wGenericTileDataBuffer                                   ; $5790: $c4 $8f $c1
	ret c                                            ; $5793: $d8

	cp a                                             ; $5794: $bf
	sub a                                            ; $5795: $97
	rst $38                                          ; $5796: $ff
	jp nc, Jump_070_7f80                             ; $5797: $d2 $80 $7f

	sbc $7b                                          ; $579a: $de $7b
	rst $38                                          ; $579c: $ff
	ld a, e                                          ; $579d: $7b
	xor e                                            ; $579e: $ab
	rst $38                                          ; $579f: $ff
	and $ff                                          ; $57a0: $e6 $ff
	rst FarCall                                          ; $57a2: $f7
	ld a, $ff                                        ; $57a3: $3e $ff
	rlca                                             ; $57a5: $07
	cp $83                                           ; $57a6: $fe $83
	rst $38                                          ; $57a8: $ff
	jp $f3fe                                         ; $57a9: $c3 $fe $f3


	jp c, Jump_070_7fe7                              ; $57ac: $da $e7 $7f

	push bc                                          ; $57af: $c5
	push af                                          ; $57b0: $f5
	adc a                                            ; $57b1: $8f
	ld a, $cb                                        ; $57b2: $3e $cb
	ld a, [$7d0f]                                    ; $57b4: $fa $0f $7d
	ld e, $86                                        ; $57b7: $1e $86
	di                                               ; $57b9: $f3
	inc e                                            ; $57ba: $1c
	rst SubAFromDE                                          ; $57bb: $df
	ccf                                              ; $57bc: $3f
	cp d                                             ; $57bd: $ba
	ld a, a                                          ; $57be: $7f
	ld a, e                                          ; $57bf: $7b
	rst $38                                          ; $57c0: $ff
	di                                               ; $57c1: $f3
	rst $38                                          ; $57c2: $ff
	pop hl                                           ; $57c3: $e1
	rst $38                                          ; $57c4: $ff
	adc e                                            ; $57c5: $8b
	rst FarCall                                          ; $57c6: $f7
	dec e                                            ; $57c7: $1d
	xor $34                                          ; $57c8: $ee $34
	ret c                                            ; $57ca: $d8

	ld l, b                                          ; $57cb: $68
	or b                                             ; $57cc: $b0
	ret nc                                           ; $57cd: $d0

	ld h, b                                          ; $57ce: $60
	ldh [$c0], a                                     ; $57cf: $e0 $c0
	ret nz                                           ; $57d1: $c0

	sbc $80                                          ; $57d2: $de $80
	ld e, a                                          ; $57d4: $5f
	jr nz, jr_070_576e                               ; $57d5: $20 $97

	ld l, h                                          ; $57d7: $6c
	ld [hl], e                                       ; $57d8: $73
	xor a                                            ; $57d9: $af
	ldh a, [$ef]                                     ; $57da: $f0 $ef
	or a                                             ; $57dc: $b7
	rst SubAFromDE                                          ; $57dd: $df
	cp a                                             ; $57de: $bf
	ld c, a                                          ; $57df: $4f
	jr nz, jr_070_5841                               ; $57e0: $20 $5f

	ld b, b                                          ; $57e2: $40
	sub l                                            ; $57e3: $95
	ld hl, sp+$00                                    ; $57e4: $f8 $00
	ld hl, sp+$00                                    ; $57e6: $f8 $00
	ldh a, [$c0]                                     ; $57e8: $f0 $c0
	ldh a, [$e0]                                     ; $57ea: $f0 $e0
	ld h, b                                          ; $57ec: $60
	ld h, b                                          ; $57ed: $60
	inc de                                           ; $57ee: $13
	ld b, b                                          ; $57ef: $40
	ld a, a                                          ; $57f0: $7f
	cp $9a                                           ; $57f1: $fe $9a
	rra                                              ; $57f3: $1f
	ccf                                              ; $57f4: $3f
	scf                                              ; $57f5: $37
	dec c                                            ; $57f6: $0d
	dec c                                            ; $57f7: $0d
	ld h, a                                          ; $57f8: $67
	ld b, b                                          ; $57f9: $40
	dec sp                                           ; $57fa: $3b
	ld h, b                                          ; $57fb: $60
	sbc [hl]                                         ; $57fc: $9e
	inc bc                                           ; $57fd: $03
	ld d, a                                          ; $57fe: $57
	ld h, b                                          ; $57ff: $60
	ld c, e                                          ; $5800: $4b
	add b                                            ; $5801: $80
	sbc e                                            ; $5802: $9b
	or b                                             ; $5803: $b0
	rst SubAFromDE                                          ; $5804: $df
	or e                                             ; $5805: $b3
	rst SubAFromDE                                          ; $5806: $df
	ld a, e                                          ; $5807: $7b
	adc $27                                          ; $5808: $ce $27
	add b                                            ; $580a: $80
	sbc d                                            ; $580b: $9a
	ld [hl], b                                       ; $580c: $70
	nop                                              ; $580d: $00
	ldh a, [$80]                                     ; $580e: $f0 $80
	ldh [$7b], a                                     ; $5810: $e0 $7b
	ld a, h                                          ; $5812: $7c
	sbc l                                            ; $5813: $9d
	ld a, $70                                        ; $5814: $3e $70
	rra                                              ; $5816: $1f
	add b                                            ; $5817: $80
	sbc [hl]                                         ; $5818: $9e
	add hl, de                                       ; $5819: $19
	cp $df                                           ; $581a: $fe $df
	rrca                                             ; $581c: $0f
	sbc l                                            ; $581d: $9d
	cp a                                             ; $581e: $bf
	ccf                                              ; $581f: $3f
	dec de                                           ; $5820: $1b
	add b                                            ; $5821: $80
	sbc h                                            ; $5822: $9c
	inc bc                                           ; $5823: $03
	ld a, [hl]                                       ; $5824: $7e
	inc bc                                           ; $5825: $03
	ld a, e                                          ; $5826: $7b
	add b                                            ; $5827: $80
	rst SubAFromDE                                          ; $5828: $df
	push af                                          ; $5829: $f5
	scf                                              ; $582a: $37
	add b                                            ; $582b: $80
	sbc c                                            ; $582c: $99
	or b                                             ; $582d: $b0
	sbc $b1                                          ; $582e: $de $b1
	sub a                                            ; $5830: $97
	cp $5b                                           ; $5831: $fe $5b
	inc hl                                           ; $5833: $23
	add b                                            ; $5834: $80
	sbc h                                            ; $5835: $9c
	jr nc, jr_070_5838                               ; $5836: $30 $00

jr_070_5838:
	ldh [rPCM12], a                                  ; $5838: $e0 $76
	ld a, [hl+]                                      ; $583a: $2a
	sbc [hl]                                         ; $583b: $9e
	ldh a, [rIF]                                     ; $583c: $f0 $0f
	add b                                            ; $583e: $80
	sub l                                            ; $583f: $95
	inc c                                            ; $5840: $0c

jr_070_5841:
	nop                                              ; $5841: $00
	or c                                             ; $5842: $b1
	nop                                              ; $5843: $00
	ld e, h                                          ; $5844: $5c
	inc e                                            ; $5845: $1c
	xor a                                            ; $5846: $af
	rrca                                             ; $5847: $0f
	ld e, a                                          ; $5848: $5f
	rlca                                             ; $5849: $07
	daa                                              ; $584a: $27
	add b                                            ; $584b: $80
	add e                                            ; $584c: $83
	ld a, [$7f07]                                    ; $584d: $fa $07 $7f
	dec b                                            ; $5850: $05
	push af                                          ; $5851: $f5
	rst AddAOntoHL                                          ; $5852: $ef
	ld a, [hl]                                       ; $5853: $7e
	adc e                                            ; $5854: $8b
	rst $38                                          ; $5855: $ff
	nop                                              ; $5856: $00
	cp $13                                           ; $5857: $fe $13
	db $fd                                           ; $5859: $fd
	ld c, $ff                                        ; $585a: $0e $ff
	nop                                              ; $585c: $00
	di                                               ; $585d: $f3
	inc c                                            ; $585e: $0c
	rst $38                                          ; $585f: $ff
	nop                                              ; $5860: $00
	rst $38                                          ; $5861: $ff
	add b                                            ; $5862: $80
	ld a, a                                          ; $5863: $7f
	ld b, b                                          ; $5864: $40
	inc a                                            ; $5865: $3c
	inc hl                                           ; $5866: $23
	rra                                              ; $5867: $1f
	rra                                              ; $5868: $1f
	ld d, l                                          ; $5869: $55
	or [hl]                                          ; $586a: $b6
	ld a, e                                          ; $586b: $7b
	ldh [$9e], a                                     ; $586c: $e0 $9e
	rra                                              ; $586e: $1f
	rlca                                             ; $586f: $07
	ldh [$9c], a                                     ; $5870: $e0 $9c
	ei                                               ; $5872: $fb
	ld c, $ff                                        ; $5873: $0e $ff
	ld a, e                                          ; $5875: $7b
	ldh [c], a                                       ; $5876: $e2
	ld a, e                                          ; $5877: $7b
	sbc $33                                          ; $5878: $de $33
	ldh [$98], a                                     ; $587a: $e0 $98
	rst $38                                          ; $587c: $ff
	rra                                              ; $587d: $1f
	cp $0f                                           ; $587e: $fe $0f
	ei                                               ; $5880: $fb
	ld c, $f7                                        ; $5881: $0e $f7
	ld [hl], a                                       ; $5883: $77
	sbc $9e                                          ; $5884: $de $9e
	adc h                                            ; $5886: $8c
	ccf                                              ; $5887: $3f
	ldh [hDisp1_SCY], a                                     ; $5888: $e0 $90
	ld bc, $a883                                     ; $588a: $01 $83 $a8
	rst $38                                          ; $588d: $ff
	xor e                                            ; $588e: $ab
	rst $38                                          ; $588f: $ff
	and h                                            ; $5890: $a4
	rst $38                                          ; $5891: $ff
	ld h, b                                          ; $5892: $60
	ld a, a                                          ; $5893: $7f
	inc hl                                           ; $5894: $23
	ccf                                              ; $5895: $3f
	ld h, a                                          ; $5896: $67
	ld a, a                                          ; $5897: $7f
	cp l                                             ; $5898: $bd
	rst $38                                          ; $5899: $ff
	db $eb                                           ; $589a: $eb
	cp [hl]                                          ; $589b: $be
	rst SubAFromHL                                          ; $589c: $d7
	cp d                                             ; $589d: $ba
	rst SubAFromHL                                          ; $589e: $d7
	cp e                                             ; $589f: $bb
	sub [hl]                                         ; $58a0: $96
	ei                                               ; $58a1: $fb
	ld e, [hl]                                       ; $58a2: $5e
	ld [hl], e                                       ; $58a3: $73
	dec a                                            ; $58a4: $3d
	inc sp                                           ; $58a5: $33
	rra                                              ; $58a6: $1f
	db $10                                           ; $58a7: $10
	ld [hl], a                                       ; $58a8: $77
	cp $93                                           ; $58a9: $fe $93
	rrca                                             ; $58ab: $0f
	ld [$080f], sp                                   ; $58ac: $08 $0f $08
	rlca                                             ; $58af: $07
	inc b                                            ; $58b0: $04
	rlca                                             ; $58b1: $07
	inc b                                            ; $58b2: $04
	inc bc                                           ; $58b3: $03
	ld [bc], a                                       ; $58b4: $02
	ld bc, $ed01                                     ; $58b5: $01 $01 $ed

jr_070_58b8:
	adc [hl]                                         ; $58b8: $8e
	cp $d8                                           ; $58b9: $fe $d8
	ld a, [hl-]                                      ; $58bb: $3a
	ld hl, sp-$33                                    ; $58bc: $f8 $cd
	jr c, jr_070_58b8                                ; $58be: $38 $f8

	inc b                                            ; $58c0: $04
	ld hl, sp-$40                                    ; $58c1: $f8 $c0
	ld hl, sp-$20                                    ; $58c3: $f8 $e0
	ld a, b                                          ; $58c5: $78
	ld h, b                                          ; $58c6: $60
	jr nc, jr_070_58e9                               ; $58c7: $30 $20

	ldh a, [$de]                                     ; $58c9: $f0 $de
	ldh [$80], a                                     ; $58cb: $e0 $80
	and b                                            ; $58cd: $a0
	ldh [rAUD4LEN], a                                ; $58ce: $e0 $20
	ld h, b                                          ; $58d0: $60
	call nz, $0ec0                                   ; $58d1: $c4 $c0 $0e
	nop                                              ; $58d4: $00
	rla                                              ; $58d5: $17
	jr jr_070_58f6                                   ; $58d6: $18 $1e

	ld [$0d1e], sp                                   ; $58d8: $08 $1e $0d
	rrca                                             ; $58db: $0f
	jr jr_070_58f8                                   ; $58dc: $18 $1a

	db $10                                           ; $58de: $10
	ld hl, $0f21                                     ; $58df: $21 $21 $0f
	rlca                                             ; $58e2: $07
	db $10                                           ; $58e3: $10
	rrca                                             ; $58e4: $0f
	ccf                                              ; $58e5: $3f
	nop                                              ; $58e6: $00
	ccf                                              ; $58e7: $3f
	rlca                                             ; $58e8: $07

jr_070_58e9:
	ccf                                              ; $58e9: $3f
	rrca                                             ; $58ea: $0f
	ld a, [hl-]                                      ; $58eb: $3a
	sub d                                            ; $58ec: $92
	ld e, $2c                                        ; $58ed: $1e $2c
	inc b                                            ; $58ef: $04
	ld c, $0e                                        ; $58f0: $0e $0e
	rrca                                             ; $58f2: $0f
	dec bc                                           ; $58f3: $0b
	rrca                                             ; $58f4: $0f
	dec bc                                           ; $58f5: $0b

jr_070_58f6:
	inc b                                            ; $58f6: $04
	dec c                                            ; $58f7: $0d

jr_070_58f8:
	rra                                              ; $58f8: $1f
	inc bc                                           ; $58f9: $03
	ld [hl], a                                       ; $58fa: $77
	xor e                                            ; $58fb: $ab
	ld a, a                                          ; $58fc: $7f
	db $fc                                           ; $58fd: $fc
	add b                                            ; $58fe: $80
	rlca                                             ; $58ff: $07
	nop                                              ; $5900: $00
	rrca                                             ; $5901: $0f
	nop                                              ; $5902: $00
	ld e, $01                                        ; $5903: $1e $01
	add hl, sp                                       ; $5905: $39
	rlca                                             ; $5906: $07
	rst SubAFromBC                                          ; $5907: $e7
	rra                                              ; $5908: $1f
	sbc a                                            ; $5909: $9f
	ld a, a                                          ; $590a: $7f
	ldh [rIE], a                                     ; $590b: $e0 $ff
	ldh [$1f], a                                     ; $590d: $e0 $1f
	sbc [hl]                                         ; $590f: $9e
	add c                                            ; $5910: $81
	adc h                                            ; $5911: $8c
	add e                                            ; $5912: $83
	call $8b82                                       ; $5913: $cd $82 $8b
	call nz, wGenericTileDataBuffer                                   ; $5916: $c4 $8f $c1
	ret c                                            ; $5919: $d8

	cp a                                             ; $591a: $bf
	sub a                                            ; $591b: $97
	rst $38                                          ; $591c: $ff
	jp nc, Jump_070_7f80                             ; $591d: $d2 $80 $7f

	sbc $fb                                          ; $5920: $de $fb
	rst $38                                          ; $5922: $ff
	ei                                               ; $5923: $fb
	ld l, e                                          ; $5924: $6b
	rst $38                                          ; $5925: $ff
	sub $7f                                          ; $5926: $d6 $7f
	rst FarCall                                          ; $5928: $f7
	adc [hl]                                         ; $5929: $8e
	rst $38                                          ; $592a: $ff
	rst JumpTable                                          ; $592b: $c7
	cp $c3                                           ; $592c: $fe $c3
	rst $38                                          ; $592e: $ff
	db $e3                                           ; $592f: $e3
	cp $f3                                           ; $5930: $fe $f3
	jp c, Jump_070_7fe7                              ; $5932: $da $e7 $7f

	push bc                                          ; $5935: $c5
	push af                                          ; $5936: $f5
	adc a                                            ; $5937: $8f
	ld a, $cb                                        ; $5938: $3e $cb
	ld a, [$7d0f]                                    ; $593a: $fa $0f $7d
	ld e, $86                                        ; $593d: $1e $86
	di                                               ; $593f: $f3
	inc e                                            ; $5940: $1c
	rst SubAFromDE                                          ; $5941: $df
	ccf                                              ; $5942: $3f
	cp d                                             ; $5943: $ba
	ld a, a                                          ; $5944: $7f
	ld a, e                                          ; $5945: $7b
	rst $38                                          ; $5946: $ff
	di                                               ; $5947: $f3
	rst $38                                          ; $5948: $ff
	pop hl                                           ; $5949: $e1
	rst $38                                          ; $594a: $ff
	adc e                                            ; $594b: $8b
	rst FarCall                                          ; $594c: $f7
	dec e                                            ; $594d: $1d
	xor $34                                          ; $594e: $ee $34
	ret c                                            ; $5950: $d8

	ld l, b                                          ; $5951: $68
	or b                                             ; $5952: $b0
	ret nc                                           ; $5953: $d0

	ld h, b                                          ; $5954: $60
	ldh [$c0], a                                     ; $5955: $e0 $c0
	ret nz                                           ; $5957: $c0

	sbc $80                                          ; $5958: $de $80
	ld l, a                                          ; $595a: $6f
	jr nz, @-$6a                                     ; $595b: $20 $94

	ld h, [hl]                                       ; $595d: $66
	ld a, c                                          ; $595e: $79
	inc l                                            ; $595f: $2c
	inc sp                                           ; $5960: $33
	ld l, e                                          ; $5961: $6b
	ld [hl], a                                       ; $5962: $77
	xor a                                            ; $5963: $af
	rst FarCall                                          ; $5964: $f7
	rst $38                                          ; $5965: $ff
	cp [hl]                                          ; $5966: $be
	rst SubAFromDE                                          ; $5967: $df
	ld c, e                                          ; $5968: $4b
	jr nz, jr_070_59ce                               ; $5969: $20 $63

	ld b, b                                          ; $596b: $40
	sbc [hl]                                         ; $596c: $9e
	nop                                              ; $596d: $00
	ld [hl], a                                       ; $596e: $77
	ld a, $03                                        ; $596f: $3e $03
	ld b, b                                          ; $5971: $40
	ld [hl], e                                       ; $5972: $73
	ld a, $9d                                        ; $5973: $3e $9d
	inc a                                            ; $5975: $3c
	inc d                                            ; $5976: $14
	ld e, a                                          ; $5977: $5f
	ld b, b                                          ; $5978: $40
	ld c, e                                          ; $5979: $4b
	ld h, b                                          ; $597a: $60
	sbc h                                            ; $597b: $9c
	ld c, $ff                                        ; $597c: $0e $ff
	add a                                            ; $597e: $87
	ld a, e                                          ; $597f: $7b
	ld h, b                                          ; $5980: $60
	sbc d                                            ; $5981: $9a
	jp $e3fe                                         ; $5982: $c3 $fe $e3


	ld a, [$6ff7]                                    ; $5985: $fa $f7 $6f
	ld h, b                                          ; $5988: $60
	ld h, [hl]                                       ; $5989: $66
	and b                                            ; $598a: $a0
	sub c                                            ; $598b: $91
	ld l, $31                                        ; $598c: $2e $31
	ld l, [hl]                                       ; $598e: $6e
	ld [hl], c                                       ; $598f: $71
	xor a                                            ; $5990: $af
	ldh a, [$ef]                                     ; $5991: $f0 $ef
	or b                                             ; $5993: $b0
	db $d3                                           ; $5994: $d3
	cp a                                             ; $5995: $bf
	rst SubAFromDE                                          ; $5996: $df
	cp a                                             ; $5997: $bf
	sbc a                                            ; $5998: $9f
	rst FarCall                                          ; $5999: $f7
	inc sp                                           ; $599a: $33
	add b                                            ; $599b: $80
	ld a, e                                          ; $599c: $7b
	cp $95                                           ; $599d: $fe $95
	ld [hl], b                                       ; $599f: $70
	nop                                              ; $59a0: $00
	ldh a, [$80]                                     ; $59a1: $f0 $80
	ldh [$c0], a                                     ; $59a3: $e0 $c0
	ldh [$e0], a                                     ; $59a5: $e0 $e0
	jr nc, @+$72                                     ; $59a7: $30 $70

	inc hl                                           ; $59a9: $23
	add b                                            ; $59aa: $80
	ld a, e                                          ; $59ab: $7b
	cp $99                                           ; $59ac: $fe $99
	jr jr_070_59b0                                   ; $59ae: $18 $00

jr_070_59b0:
	rrca                                             ; $59b0: $0f
	rrca                                             ; $59b1: $0f
	ccf                                              ; $59b2: $3f
	ccf                                              ; $59b3: $3f
	dec hl                                           ; $59b4: $2b
	add b                                            ; $59b5: $80
	sbc b                                            ; $59b6: $98
	rlca                                             ; $59b7: $07
	cp $03                                           ; $59b8: $fe $03
	rst $38                                          ; $59ba: $ff
	inc bc                                           ; $59bb: $03
	ld a, [hl]                                       ; $59bc: $7e
	inc bc                                           ; $59bd: $03
	ld a, d                                          ; $59be: $7a
	ldh [$df], a                                     ; $59bf: $e0 $df
	push af                                          ; $59c1: $f5
	dec sp                                           ; $59c2: $3b
	add b                                            ; $59c3: $80
	sbc b                                            ; $59c4: $98
	rst SubAFromDE                                          ; $59c5: $df
	or b                                             ; $59c6: $b0
	sbc $b1                                          ; $59c7: $de $b1
	sbc a                                            ; $59c9: $9f
	or $5f                                           ; $59ca: $f6 $5f
	inc hl                                           ; $59cc: $23
	add b                                            ; $59cd: $80

jr_070_59ce:
	ld a, a                                          ; $59ce: $7f
	cp $9e                                           ; $59cf: $fe $9e
	ldh [$fe], a                                     ; $59d1: $e0 $fe
	rst SubAFromDE                                          ; $59d3: $df
	ldh [rIF], a                                     ; $59d4: $e0 $0f
	add b                                            ; $59d6: $80
	rst $38                                          ; $59d7: $ff
	sbc c                                            ; $59d8: $99
	inc bc                                           ; $59d9: $03
	nop                                              ; $59da: $00
	inc e                                            ; $59db: $1c
	jr jr_070_59ed                                   ; $59dc: $18 $0f

	rrca                                             ; $59de: $0f
	rra                                              ; $59df: $1f
	add b                                            ; $59e0: $80
	adc l                                            ; $59e1: $8d
	ld a, [$7f07]                                    ; $59e2: $fa $07 $7f
	dec h                                            ; $59e5: $25
	push af                                          ; $59e6: $f5
	rst GetHLinHL                                          ; $59e7: $cf
	cp [hl]                                          ; $59e8: $be
	set 7, a                                         ; $59e9: $cb $ff
	nop                                              ; $59eb: $00
	di                                               ; $59ec: $f3

jr_070_59ed:
	rra                                              ; $59ed: $1f
	rst AddAOntoHL                                          ; $59ee: $ef
	rra                                              ; $59ef: $1f
	cp $0f                                           ; $59f0: $fe $0f
	push af                                          ; $59f2: $f5
	ld c, $7b                                        ; $59f3: $0e $7b
	or $98                                           ; $59f5: $f6 $98
	adc h                                            ; $59f7: $8c
	ld a, a                                          ; $59f8: $7f
	ld b, b                                          ; $59f9: $40
	inc a                                            ; $59fa: $3c
	inc hl                                           ; $59fb: $23
	rra                                              ; $59fc: $1f
	rra                                              ; $59fd: $1f
	ld d, l                                          ; $59fe: $55
	or [hl]                                          ; $59ff: $b6
	ld [hl], a                                       ; $5a00: $77
	ldh [$9d], a                                     ; $5a01: $e0 $9d
	xor $1f                                          ; $5a03: $ee $1f
	ld [hl], e                                       ; $5a05: $73
	ldh [c], a                                       ; $5a06: $e2
	sbc h                                            ; $5a07: $9c
	inc c                                            ; $5a08: $0c
	rst $38                                          ; $5a09: $ff
	add b                                            ; $5a0a: $80
	cpl                                              ; $5a0b: $2f

jr_070_5a0c:
	ldh [$9e], a                                     ; $5a0c: $e0 $9e
	rst $38                                          ; $5a0e: $ff
	ld l, a                                          ; $5a0f: $6f
	ldh [c], a                                       ; $5a10: $e2
	ld a, a                                          ; $5a11: $7f
	db $f4                                           ; $5a12: $f4
	dec hl                                           ; $5a13: $2b
	ldh [$9e], a                                     ; $5a14: $e0 $9e
	pop af                                           ; $5a16: $f1
	dec de                                           ; $5a17: $1b
	ldh [$b4], a                                     ; $5a18: $e0 $b4
	ld bc, $a983                                     ; $5a1a: $01 $83 $a9
	cp $ab                                           ; $5a1d: $fe $ab
	rst $38                                          ; $5a1f: $ff
	and h                                            ; $5a20: $a4
	rst $38                                          ; $5a21: $ff
	ld h, [hl]                                       ; $5a22: $66
	ld a, c                                          ; $5a23: $79
	jr z, jr_070_5a5d                                ; $5a24: $28 $37

	ld h, a                                          ; $5a26: $67
	ld a, a                                          ; $5a27: $7f
	cp l                                             ; $5a28: $bd
	rst $38                                          ; $5a29: $ff
	db $eb                                           ; $5a2a: $eb
	cp [hl]                                          ; $5a2b: $be
	rst SubAFromHL                                          ; $5a2c: $d7
	cp d                                             ; $5a2d: $ba
	rst SubAFromHL                                          ; $5a2e: $d7
	cp e                                             ; $5a2f: $bb
	sub [hl]                                         ; $5a30: $96
	ei                                               ; $5a31: $fb
	ld e, [hl]                                       ; $5a32: $5e
	ld [hl], e                                       ; $5a33: $73
	dec a                                            ; $5a34: $3d
	inc sp                                           ; $5a35: $33
	rra                                              ; $5a36: $1f
	db $10                                           ; $5a37: $10
	ld [hl], a                                       ; $5a38: $77
	cp $93                                           ; $5a39: $fe $93
	rrca                                             ; $5a3b: $0f
	ld [$080f], sp                                   ; $5a3c: $08 $0f $08
	rlca                                             ; $5a3f: $07
	inc b                                            ; $5a40: $04
	rlca                                             ; $5a41: $07
	inc b                                            ; $5a42: $04
	inc bc                                           ; $5a43: $03
	ld [bc], a                                       ; $5a44: $02
	ld bc, $ed01                                     ; $5a45: $01 $01 $ed
	adc [hl]                                         ; $5a48: $8e
	cp $18                                           ; $5a49: $fe $18
	ld a, [$6dd8]                                    ; $5a4b: $fa $d8 $6d
	ld hl, sp-$78                                    ; $5a4e: $f8 $88
	ld [hl], h                                       ; $5a50: $74
	ret c                                            ; $5a51: $d8

	jr nz, jr_070_5a0c                               ; $5a52: $20 $b8

	ret nz                                           ; $5a54: $c0

	ret c                                            ; $5a55: $d8

	ldh [rSVBK], a                                   ; $5a56: $e0 $70
	ld h, b                                          ; $5a58: $60
	ldh a, [$de]                                     ; $5a59: $f0 $de
	ldh [$80], a                                     ; $5a5b: $e0 $80

jr_070_5a5d:
	and b                                            ; $5a5d: $a0
	ldh [rAUD4LEN], a                                ; $5a5e: $e0 $20
	ld h, b                                          ; $5a60: $60
	call nz, $0ec0                                   ; $5a61: $c4 $c0 $0e
	nop                                              ; $5a64: $00
	rla                                              ; $5a65: $17
	jr jr_070_5a86                                   ; $5a66: $18 $1e

	ld [$0d1e], sp                                   ; $5a68: $08 $1e $0d
	rrca                                             ; $5a6b: $0f
	jr jr_070_5a88                                   ; $5a6c: $18 $1a

	db $10                                           ; $5a6e: $10
	jr nz, jr_070_5a91                               ; $5a6f: $20 $20

	dec c                                            ; $5a71: $0d
	inc bc                                           ; $5a72: $03
	inc de                                           ; $5a73: $13
	rrca                                             ; $5a74: $0f
	inc sp                                           ; $5a75: $33
	inc c                                            ; $5a76: $0c
	ccf                                              ; $5a77: $3f
	rlca                                             ; $5a78: $07
	ccf                                              ; $5a79: $3f
	rrca                                             ; $5a7a: $0f
	dec sp                                           ; $5a7b: $3b
	sub d                                            ; $5a7c: $92
	rra                                              ; $5a7d: $1f
	ld l, $06                                        ; $5a7e: $2e $06

jr_070_5a80:
	inc c                                            ; $5a80: $0c
	inc c                                            ; $5a81: $0c
	rrca                                             ; $5a82: $0f
	dec bc                                           ; $5a83: $0b
	rrca                                             ; $5a84: $0f
	dec bc                                           ; $5a85: $0b

jr_070_5a86:
	inc b                                            ; $5a86: $04
	dec c                                            ; $5a87: $0d

jr_070_5a88:
	rra                                              ; $5a88: $1f
	inc bc                                           ; $5a89: $03
	ld [hl], a                                       ; $5a8a: $77
	xor e                                            ; $5a8b: $ab
	ld a, a                                          ; $5a8c: $7f
	db $fc                                           ; $5a8d: $fc
	sbc [hl]                                         ; $5a8e: $9e
	rlca                                             ; $5a8f: $07
	cp a                                             ; $5a90: $bf

jr_070_5a91:
	rrca                                             ; $5a91: $0f
	ld e, $80                                        ; $5a92: $1e $80
	ld bc, $0739                                     ; $5a94: $01 $39 $07
	rst SubAFromBC                                          ; $5a97: $e7
	rra                                              ; $5a98: $1f
	sbc a                                            ; $5a99: $9f
	ld a, a                                          ; $5a9a: $7f
	ldh [rIE], a                                     ; $5a9b: $e0 $ff
	ldh [$1f], a                                     ; $5a9d: $e0 $1f
	sbc [hl]                                         ; $5a9f: $9e
	add c                                            ; $5aa0: $81
	adc h                                            ; $5aa1: $8c
	add e                                            ; $5aa2: $83
	call $8b82                                       ; $5aa3: $cd $82 $8b
	call nz, wGenericTileDataBuffer                                   ; $5aa6: $c4 $8f $c1
	ret c                                            ; $5aa9: $d8

	cp a                                             ; $5aaa: $bf
	sub a                                            ; $5aab: $97
	rst $38                                          ; $5aac: $ff
	jp nc, $de7f                                     ; $5aad: $d2 $7f $de

	ld a, e                                          ; $5ab0: $7b
	ld a, a                                          ; $5ab1: $7f
	ei                                               ; $5ab2: $fb
	add b                                            ; $5ab3: $80
	db $eb                                           ; $5ab4: $eb
	rst $38                                          ; $5ab5: $ff
	sub $7f                                          ; $5ab6: $d6 $7f
	rst FarCall                                          ; $5ab8: $f7
	ld c, $ff                                        ; $5ab9: $0e $ff
	add a                                            ; $5abb: $87
	cp $c3                                           ; $5abc: $fe $c3
	rst $38                                          ; $5abe: $ff
	db $e3                                           ; $5abf: $e3
	ld a, [hl]                                       ; $5ac0: $7e
	ld [hl], e                                       ; $5ac1: $73
	jp c, Jump_070_7fe7                              ; $5ac2: $da $e7 $7f

	push bc                                          ; $5ac5: $c5
	push af                                          ; $5ac6: $f5
	adc a                                            ; $5ac7: $8f
	ld a, $cb                                        ; $5ac8: $3e $cb
	ld a, [$7d0f]                                    ; $5aca: $fa $0f $7d
	ld e, $f3                                        ; $5acd: $1e $f3
	inc e                                            ; $5acf: $1c
	rst SubAFromDE                                          ; $5ad0: $df
	ccf                                              ; $5ad1: $3f
	cp d                                             ; $5ad2: $ba
	adc e                                            ; $5ad3: $8b
	ld a, a                                          ; $5ad4: $7f
	ld a, e                                          ; $5ad5: $7b
	rst $38                                          ; $5ad6: $ff
	di                                               ; $5ad7: $f3
	rst $38                                          ; $5ad8: $ff
	pop hl                                           ; $5ad9: $e1
	rst $38                                          ; $5ada: $ff
	adc e                                            ; $5adb: $8b
	rst FarCall                                          ; $5adc: $f7
	dec e                                            ; $5add: $1d
	xor $34                                          ; $5ade: $ee $34
	ret c                                            ; $5ae0: $d8

	ld l, b                                          ; $5ae1: $68
	or b                                             ; $5ae2: $b0
	ret nc                                           ; $5ae3: $d0

	ld h, b                                          ; $5ae4: $60
	ldh [$c0], a                                     ; $5ae5: $e0 $c0
	ret nz                                           ; $5ae7: $c0

	sbc $80                                          ; $5ae8: $de $80
	ld l, a                                          ; $5aea: $6f
	jr nz, jr_070_5a80                               ; $5aeb: $20 $93

	ld h, h                                          ; $5aed: $64
	ld a, e                                          ; $5aee: $7b
	ld l, $31                                        ; $5aef: $2e $31
	ld l, [hl]                                       ; $5af1: $6e
	ld [hl], c                                       ; $5af2: $71
	xor e                                            ; $5af3: $ab
	rst FarCall                                          ; $5af4: $f7
	rst SubAFromBC                                          ; $5af5: $e7
	cp a                                             ; $5af6: $bf
	rst SubAFromDE                                          ; $5af7: $df
	cp [hl]                                          ; $5af8: $be
	ld c, a                                          ; $5af9: $4f
	jr nz, jr_070_5b5b                               ; $5afa: $20 $5f

	ld b, b                                          ; $5afc: $40
	sbc c                                            ; $5afd: $99
	ld hl, sp+$00                                    ; $5afe: $f8 $00
	ld hl, sp-$80                                    ; $5b00: $f8 $80
	ldh a, [$c0]                                     ; $5b02: $f0 $c0
	dec bc                                           ; $5b04: $0b
	ld b, b                                          ; $5b05: $40
	cp a                                             ; $5b06: $bf
	ccf                                              ; $5b07: $3f
	ccf                                              ; $5b08: $3f
	sbc h                                            ; $5b09: $9c
	rrca                                             ; $5b0a: $0f
	rra                                              ; $5b0b: $1f
	rra                                              ; $5b0c: $1f
	ld e, a                                          ; $5b0d: $5f
	ld b, b                                          ; $5b0e: $40
	ld b, e                                          ; $5b0f: $43
	ld h, b                                          ; $5b10: $60
	sbc b                                            ; $5b11: $98
	rlca                                             ; $5b12: $07
	cp $03                                           ; $5b13: $fe $03
	rst $38                                          ; $5b15: $ff
	jp $f3fe                                         ; $5b16: $c3 $fe $f3


	ld h, a                                          ; $5b19: $67
	ld h, b                                          ; $5b1a: $60
	ld d, a                                          ; $5b1b: $57
	add b                                            ; $5b1c: $80
	sub l                                            ; $5b1d: $95
	xor a                                            ; $5b1e: $af
	ldh a, [$ef]                                     ; $5b1f: $f0 $ef
	or b                                             ; $5b21: $b0
	db $d3                                           ; $5b22: $d3
	cp a                                             ; $5b23: $bf
	rst SubAFromDE                                          ; $5b24: $df
	cp a                                             ; $5b25: $bf
	sbc a                                            ; $5b26: $9f
	rst FarCall                                          ; $5b27: $f7
	dec hl                                           ; $5b28: $2b
	add b                                            ; $5b29: $80
	cp a                                             ; $5b2a: $bf
	ld [hl], b                                       ; $5b2b: $70
	ldh a, [$98]                                     ; $5b2c: $f0 $98
	add b                                            ; $5b2e: $80
	ldh [$c0], a                                     ; $5b2f: $e0 $c0
	ldh [$e0], a                                     ; $5b31: $e0 $e0
	jr nc, jr_070_5ba5                               ; $5b33: $30 $70

	dec de                                           ; $5b35: $1b
	add b                                            ; $5b36: $80
	cp a                                             ; $5b37: $bf
	jr jr_070_5b49                                   ; $5b38: $18 $0f

	sbc h                                            ; $5b3a: $9c
	rrca                                             ; $5b3b: $0f
	ccf                                              ; $5b3c: $3f
	ccf                                              ; $5b3d: $3f
	dec de                                           ; $5b3e: $1b
	add b                                            ; $5b3f: $80
	sbc h                                            ; $5b40: $9c
	inc bc                                           ; $5b41: $03
	ld a, [hl]                                       ; $5b42: $7e
	inc bc                                           ; $5b43: $03
	ld a, e                                          ; $5b44: $7b
	add b                                            ; $5b45: $80
	rst SubAFromDE                                          ; $5b46: $df
	push af                                          ; $5b47: $f5
	ld [hl], e                                       ; $5b48: $73

jr_070_5b49:
	add b                                            ; $5b49: $80
	sbc c                                            ; $5b4a: $99
	xor b                                            ; $5b4b: $a8
	rst $38                                          ; $5b4c: $ff

jr_070_5b4d:
	and e                                            ; $5b4d: $a3
	rst $38                                          ; $5b4e: $ff
	ld h, h                                          ; $5b4f: $64
	ld a, a                                          ; $5b50: $7f
	ld h, a                                          ; $5b51: $67
	add b                                            ; $5b52: $80
	sbc b                                            ; $5b53: $98
	rst SubAFromDE                                          ; $5b54: $df
	or b                                             ; $5b55: $b0
	sbc $b1                                          ; $5b56: $de $b1
	sbc a                                            ; $5b58: $9f
	or $5f                                           ; $5b59: $f6 $5f

jr_070_5b5b:
	ld d, a                                          ; $5b5b: $57
	add b                                            ; $5b5c: $80
	sbc b                                            ; $5b5d: $98
	jr jr_070_5b4d                                   ; $5b5e: $18 $ed

	ret c                                            ; $5b60: $d8

	ld l, b                                          ; $5b61: $68
	db $f4                                           ; $5b62: $f4
	sbc b                                            ; $5b63: $98
	ld h, b                                          ; $5b64: $60
	ld [hl], a                                       ; $5b65: $77
	ld a, [hl]                                       ; $5b66: $7e
	ld a, a                                          ; $5b67: $7f
	add b                                            ; $5b68: $80
	ld a, a                                          ; $5b69: $7f
	cp $9e                                           ; $5b6a: $fe $9e
	ldh [$bf], a                                     ; $5b6c: $e0 $bf
	nop                                              ; $5b6e: $00
	ldh [$9e], a                                     ; $5b6f: $e0 $9e
	ldh [rBGP], a                                    ; $5b71: $e0 $47
	add b                                            ; $5b73: $80
	sub a                                            ; $5b74: $97
	ld c, $01                                        ; $5b75: $0e $01
	ld d, $0f                                        ; $5b77: $16 $0f
	cpl                                              ; $5b79: $2f
	rra                                              ; $5b7a: $1f
	daa                                              ; $5b7b: $27
	jr jr_070_5bed                                   ; $5b7c: $18 $6f

	add b                                            ; $5b7e: $80
	rst $38                                          ; $5b7f: $ff
	sbc c                                            ; $5b80: $99
	inc bc                                           ; $5b81: $03
	nop                                              ; $5b82: $00
	inc e                                            ; $5b83: $1c
	jr @+$11                                         ; $5b84: $18 $0f

	rrca                                             ; $5b86: $0f
	ld d, a                                          ; $5b87: $57
	add b                                            ; $5b88: $80
	sbc c                                            ; $5b89: $99
	ld c, e                                          ; $5b8a: $4b
	rst $38                                          ; $5b8b: $ff
	and $ff                                          ; $5b8c: $e6 $ff
	rst FarCall                                          ; $5b8e: $f7
	ld e, $67                                        ; $5b8f: $1e $67
	add b                                            ; $5b91: $80
	add e                                            ; $5b92: $83
	ld a, [$7f07]                                    ; $5b93: $fa $07 $7f
	dec h                                            ; $5b96: $25
	push af                                          ; $5b97: $f5
	rst GetHLinHL                                          ; $5b98: $cf
	cp [hl]                                          ; $5b99: $be
	set 7, a                                         ; $5b9a: $cb $ff
	nop                                              ; $5b9c: $00
	cp $13                                           ; $5b9d: $fe $13
	db $fd                                           ; $5b9f: $fd
	ld c, $ff                                        ; $5ba0: $0e $ff
	nop                                              ; $5ba2: $00
	di                                               ; $5ba3: $f3
	inc c                                            ; $5ba4: $0c

jr_070_5ba5:
	rst $38                                          ; $5ba5: $ff
	nop                                              ; $5ba6: $00
	rst $38                                          ; $5ba7: $ff
	add b                                            ; $5ba8: $80
	ld a, a                                          ; $5ba9: $7f
	ld b, b                                          ; $5baa: $40
	inc a                                            ; $5bab: $3c
	inc hl                                           ; $5bac: $23
	rra                                              ; $5bad: $1f
	rra                                              ; $5bae: $1f
	ld d, l                                          ; $5baf: $55
	or [hl]                                          ; $5bb0: $b6
	ld a, a                                          ; $5bb1: $7f
	ld [$f69d], a                                    ; $5bb2: $ea $9d $f6
	rra                                              ; $5bb5: $1f
	rrca                                             ; $5bb6: $0f
	ldh [$9b], a                                     ; $5bb7: $e0 $9b
	cp $1f                                           ; $5bb9: $fe $1f
	ei                                               ; $5bbb: $fb
	ld c, $6b                                        ; $5bbc: $0e $6b
	sbc $2b                                          ; $5bbe: $de $2b

jr_070_5bc0:
	ldh [$9e], a                                     ; $5bc0: $e0 $9e
	xor $7b                                          ; $5bc2: $ee $7b
	sbc $9e                                          ; $5bc4: $de $9e
	push af                                          ; $5bc6: $f5
	ld [hl], a                                       ; $5bc7: $77
	sbc $9e                                          ; $5bc8: $de $9e
	adc h                                            ; $5bca: $8c
	ccf                                              ; $5bcb: $3f
	ldh [$bb], a                                     ; $5bcc: $e0 $bb
	ld bc, $a983                                     ; $5bce: $01 $83 $a9
	cp $ab                                           ; $5bd1: $fe $ab
	rst $38                                          ; $5bd3: $ff
	and h                                            ; $5bd4: $a4
	rst $38                                          ; $5bd5: $ff
	ld h, [hl]                                       ; $5bd6: $66
	ld a, c                                          ; $5bd7: $79
	jr z, jr_070_5c11                                ; $5bd8: $28 $37

	ld h, a                                          ; $5bda: $67
	ld a, a                                          ; $5bdb: $7f
	cp l                                             ; $5bdc: $bd
	rst $38                                          ; $5bdd: $ff
	db $eb                                           ; $5bde: $eb
	cp [hl]                                          ; $5bdf: $be
	rst SubAFromHL                                          ; $5be0: $d7
	cp d                                             ; $5be1: $ba
	rst SubAFromHL                                          ; $5be2: $d7
	cp e                                             ; $5be3: $bb
	sub [hl]                                         ; $5be4: $96
	ei                                               ; $5be5: $fb
	ld e, [hl]                                       ; $5be6: $5e
	ld [hl], e                                       ; $5be7: $73
	dec a                                            ; $5be8: $3d
	inc sp                                           ; $5be9: $33
	rra                                              ; $5bea: $1f
	db $10                                           ; $5beb: $10
	ld [hl], a                                       ; $5bec: $77

jr_070_5bed:
	cp $93                                           ; $5bed: $fe $93
	rrca                                             ; $5bef: $0f
	ld [$080f], sp                                   ; $5bf0: $08 $0f $08
	rlca                                             ; $5bf3: $07
	inc b                                            ; $5bf4: $04
	rlca                                             ; $5bf5: $07
	inc b                                            ; $5bf6: $04
	inc bc                                           ; $5bf7: $03
	ld [bc], a                                       ; $5bf8: $02
	ld bc, $ed01                                     ; $5bf9: $01 $01 $ed
	adc [hl]                                         ; $5bfc: $8e
	cp $18                                           ; $5bfd: $fe $18
	ld a, [$6dd8]                                    ; $5bff: $fa $d8 $6d
	ld hl, sp-$78                                    ; $5c02: $f8 $88
	ld [hl], h                                       ; $5c04: $74
	ret c                                            ; $5c05: $d8

	jr nz, jr_070_5bc0                               ; $5c06: $20 $b8

	ret nz                                           ; $5c08: $c0

	ret c                                            ; $5c09: $d8

	ldh [rSVBK], a                                   ; $5c0a: $e0 $70
	ld h, b                                          ; $5c0c: $60
	ldh a, [$de]                                     ; $5c0d: $f0 $de
	ldh [$80], a                                     ; $5c0f: $e0 $80

jr_070_5c11:
	and b                                            ; $5c11: $a0
	ldh [rAUD4LEN], a                                ; $5c12: $e0 $20
	ld h, b                                          ; $5c14: $60
	call nz, $0ec0                                   ; $5c15: $c4 $c0 $0e
	nop                                              ; $5c18: $00
	rla                                              ; $5c19: $17
	jr jr_070_5c3a                                   ; $5c1a: $18 $1e

	ld [$0d1e], sp                                   ; $5c1c: $08 $1e $0d
	rrca                                             ; $5c1f: $0f
	jr jr_070_5c3c                                   ; $5c20: $18 $1a

	db $10                                           ; $5c22: $10
	jr nz, jr_070_5c45                               ; $5c23: $20 $20

	dec c                                            ; $5c25: $0d
	inc bc                                           ; $5c26: $03
	inc de                                           ; $5c27: $13
	rrca                                             ; $5c28: $0f
	inc sp                                           ; $5c29: $33
	inc c                                            ; $5c2a: $0c
	ccf                                              ; $5c2b: $3f
	rlca                                             ; $5c2c: $07
	ccf                                              ; $5c2d: $3f
	rrca                                             ; $5c2e: $0f
	dec sp                                           ; $5c2f: $3b
	sub d                                            ; $5c30: $92
	rra                                              ; $5c31: $1f
	ld l, $06                                        ; $5c32: $2e $06

jr_070_5c34:
	inc c                                            ; $5c34: $0c
	inc c                                            ; $5c35: $0c
	rrca                                             ; $5c36: $0f
	dec bc                                           ; $5c37: $0b
	rrca                                             ; $5c38: $0f
	dec bc                                           ; $5c39: $0b

jr_070_5c3a:
	inc b                                            ; $5c3a: $04
	dec c                                            ; $5c3b: $0d

jr_070_5c3c:
	rra                                              ; $5c3c: $1f
	inc bc                                           ; $5c3d: $03
	ld [hl], a                                       ; $5c3e: $77
	xor e                                            ; $5c3f: $ab
	ld a, a                                          ; $5c40: $7f
	db $fc                                           ; $5c41: $fc
	add b                                            ; $5c42: $80
	rlca                                             ; $5c43: $07
	nop                                              ; $5c44: $00

jr_070_5c45:
	rrca                                             ; $5c45: $0f
	nop                                              ; $5c46: $00
	ld e, $01                                        ; $5c47: $1e $01
	add hl, sp                                       ; $5c49: $39
	rlca                                             ; $5c4a: $07
	rst SubAFromBC                                          ; $5c4b: $e7
	rra                                              ; $5c4c: $1f
	sbc a                                            ; $5c4d: $9f
	ld a, a                                          ; $5c4e: $7f
	ldh [rIE], a                                     ; $5c4f: $e0 $ff
	ldh [$1f], a                                     ; $5c51: $e0 $1f
	sbc [hl]                                         ; $5c53: $9e
	add c                                            ; $5c54: $81
	adc h                                            ; $5c55: $8c
	add e                                            ; $5c56: $83
	call $8b82                                       ; $5c57: $cd $82 $8b
	call nz, wGenericTileDataBuffer                                   ; $5c5a: $c4 $8f $c1
	ret c                                            ; $5c5d: $d8

	cp a                                             ; $5c5e: $bf
	sub a                                            ; $5c5f: $97
	rst $38                                          ; $5c60: $ff
	jp nc, Jump_070_7f80                             ; $5c61: $d2 $80 $7f

	sbc $7b                                          ; $5c64: $de $7b
	ld a, a                                          ; $5c66: $7f
	ei                                               ; $5c67: $fb
	db $eb                                           ; $5c68: $eb
	rst $38                                          ; $5c69: $ff
	sub $7f                                          ; $5c6a: $d6 $7f
	rst FarCall                                          ; $5c6c: $f7
	ld c, $ff                                        ; $5c6d: $0e $ff
	add a                                            ; $5c6f: $87
	cp $c3                                           ; $5c70: $fe $c3
	rst $38                                          ; $5c72: $ff
	db $e3                                           ; $5c73: $e3
	ld a, [hl]                                       ; $5c74: $7e
	ld [hl], e                                       ; $5c75: $73
	jp c, Jump_070_7fe7                              ; $5c76: $da $e7 $7f

	push bc                                          ; $5c79: $c5
	push af                                          ; $5c7a: $f5
	adc a                                            ; $5c7b: $8f
	ld a, $cb                                        ; $5c7c: $3e $cb
	ld a, [$7d0f]                                    ; $5c7e: $fa $0f $7d
	ld e, $86                                        ; $5c81: $1e $86
	di                                               ; $5c83: $f3
	inc e                                            ; $5c84: $1c
	rst SubAFromDE                                          ; $5c85: $df
	ccf                                              ; $5c86: $3f
	cp d                                             ; $5c87: $ba
	ld a, a                                          ; $5c88: $7f
	ld a, e                                          ; $5c89: $7b
	rst $38                                          ; $5c8a: $ff
	di                                               ; $5c8b: $f3
	rst $38                                          ; $5c8c: $ff
	pop hl                                           ; $5c8d: $e1
	rst $38                                          ; $5c8e: $ff
	adc e                                            ; $5c8f: $8b
	rst FarCall                                          ; $5c90: $f7
	dec e                                            ; $5c91: $1d
	xor $34                                          ; $5c92: $ee $34
	ret c                                            ; $5c94: $d8

	ld l, b                                          ; $5c95: $68
	or b                                             ; $5c96: $b0
	ret nc                                           ; $5c97: $d0

	ld h, b                                          ; $5c98: $60
	ldh [$c0], a                                     ; $5c99: $e0 $c0
	ret nz                                           ; $5c9b: $c0

	sbc $80                                          ; $5c9c: $de $80
	ld l, a                                          ; $5c9e: $6f
	jr nz, jr_070_5c34                               ; $5c9f: $20 $93

	ld h, h                                          ; $5ca1: $64
	ld a, e                                          ; $5ca2: $7b
	ld l, $31                                        ; $5ca3: $2e $31
	ld l, [hl]                                       ; $5ca5: $6e
	ld [hl], c                                       ; $5ca6: $71
	xor e                                            ; $5ca7: $ab
	rst FarCall                                          ; $5ca8: $f7
	rst SubAFromBC                                          ; $5ca9: $e7
	cp a                                             ; $5caa: $bf
	db $db                                           ; $5cab: $db
	cp [hl]                                          ; $5cac: $be
	ld c, a                                          ; $5cad: $4f
	jr nz, @+$61                                     ; $5cae: $20 $5f

	ld b, b                                          ; $5cb0: $40
	sbc c                                            ; $5cb1: $99
	ld hl, sp+$00                                    ; $5cb2: $f8 $00
	ld hl, sp-$80                                    ; $5cb4: $f8 $80
	ldh a, [$c0]                                     ; $5cb6: $f0 $c0
	dec bc                                           ; $5cb8: $0b
	ld b, b                                          ; $5cb9: $40
	sbc b                                            ; $5cba: $98
	nop                                              ; $5cbb: $00
	ccf                                              ; $5cbc: $3f
	rrca                                             ; $5cbd: $0f
	ccf                                              ; $5cbe: $3f
	rra                                              ; $5cbf: $1f
	cpl                                              ; $5cc0: $2f
	rlca                                             ; $5cc1: $07
	ld e, a                                          ; $5cc2: $5f
	ld b, b                                          ; $5cc3: $40
	ld b, e                                          ; $5cc4: $43
	ld h, b                                          ; $5cc5: $60
	sbc d                                            ; $5cc6: $9a
	rlca                                             ; $5cc7: $07
	cp $83                                           ; $5cc8: $fe $83
	rst $38                                          ; $5cca: $ff
	jp Jump_070_605f                                 ; $5ccb: $c3 $5f $60


	ld d, a                                          ; $5cce: $57
	add b                                            ; $5ccf: $80
	sub l                                            ; $5cd0: $95
	xor a                                            ; $5cd1: $af
	ldh a, [$ef]                                     ; $5cd2: $f0 $ef
	or b                                             ; $5cd4: $b0
	db $d3                                           ; $5cd5: $d3
	cp a                                             ; $5cd6: $bf
	rst SubAFromDE                                          ; $5cd7: $df
	cp a                                             ; $5cd8: $bf
	sbc a                                            ; $5cd9: $9f
	rst FarCall                                          ; $5cda: $f7
	dec hl                                           ; $5cdb: $2b
	add b                                            ; $5cdc: $80
	sub h                                            ; $5cdd: $94
	nop                                              ; $5cde: $00
	ld [hl], b                                       ; $5cdf: $70
	nop                                              ; $5ce0: $00
	ldh a, [$80]                                     ; $5ce1: $f0 $80
	ldh [$c0], a                                     ; $5ce3: $e0 $c0
	ldh [$e0], a                                     ; $5ce5: $e0 $e0
	jr nc, jr_070_5d59                               ; $5ce7: $30 $70

	inc hl                                           ; $5ce9: $23
	add b                                            ; $5cea: $80
	ld a, e                                          ; $5ceb: $7b
	cp $99                                           ; $5cec: $fe $99
	jr jr_070_5cf0                                   ; $5cee: $18 $00

jr_070_5cf0:
	rrca                                             ; $5cf0: $0f
	rrca                                             ; $5cf1: $0f
	ccf                                              ; $5cf2: $3f
	ccf                                              ; $5cf3: $3f
	inc hl                                           ; $5cf4: $23
	add b                                            ; $5cf5: $80
	sbc d                                            ; $5cf6: $9a
	inc bc                                           ; $5cf7: $03
	rst $38                                          ; $5cf8: $ff
	inc bc                                           ; $5cf9: $03
	ld a, [hl]                                       ; $5cfa: $7e
	inc bc                                           ; $5cfb: $03
	ld a, e                                          ; $5cfc: $7b
	add b                                            ; $5cfd: $80
	rst SubAFromDE                                          ; $5cfe: $df
	push af                                          ; $5cff: $f5
	ld [hl], e                                       ; $5d00: $73
	add b                                            ; $5d01: $80
	sbc c                                            ; $5d02: $99
	xor b                                            ; $5d03: $a8
	rst $38                                          ; $5d04: $ff

jr_070_5d05:
	and e                                            ; $5d05: $a3
	rst $38                                          ; $5d06: $ff
	ld h, h                                          ; $5d07: $64
	ld a, a                                          ; $5d08: $7f
	ld h, a                                          ; $5d09: $67
	add b                                            ; $5d0a: $80
	sbc b                                            ; $5d0b: $98
	rst SubAFromDE                                          ; $5d0c: $df
	or b                                             ; $5d0d: $b0
	sbc $b1                                          ; $5d0e: $de $b1
	sbc a                                            ; $5d10: $9f
	or $5f                                           ; $5d11: $f6 $5f
	ld d, a                                          ; $5d13: $57
	add b                                            ; $5d14: $80
	sbc b                                            ; $5d15: $98
	jr jr_070_5d05                                   ; $5d16: $18 $ed

	ret c                                            ; $5d18: $d8

	ld l, b                                          ; $5d19: $68
	db $f4                                           ; $5d1a: $f4
	sbc b                                            ; $5d1b: $98
	ld h, b                                          ; $5d1c: $60
	ld [hl], a                                       ; $5d1d: $77
	ld a, [hl]                                       ; $5d1e: $7e
	ld a, a                                          ; $5d1f: $7f
	add b                                            ; $5d20: $80
	ld a, a                                          ; $5d21: $7f
	cp $9e                                           ; $5d22: $fe $9e
	ldh [$fe], a                                     ; $5d24: $e0 $fe
	rst SubAFromDE                                          ; $5d26: $df
	ldh [rBGP], a                                    ; $5d27: $e0 $47
	add b                                            ; $5d29: $80
	sub a                                            ; $5d2a: $97
	ld c, $01                                        ; $5d2b: $0e $01
	ld d, $0f                                        ; $5d2d: $16 $0f
	cpl                                              ; $5d2f: $2f
	rra                                              ; $5d30: $1f
	daa                                              ; $5d31: $27
	jr jr_070_5da3                                   ; $5d32: $18 $6f

	add b                                            ; $5d34: $80
	rst $38                                          ; $5d35: $ff
	sbc c                                            ; $5d36: $99
	inc bc                                           ; $5d37: $03
	nop                                              ; $5d38: $00
	inc e                                            ; $5d39: $1c
	jr @+$11                                         ; $5d3a: $18 $0f

	rrca                                             ; $5d3c: $0f
	ld d, a                                          ; $5d3d: $57
	add b                                            ; $5d3e: $80
	sbc c                                            ; $5d3f: $99
	ld c, e                                          ; $5d40: $4b
	rst $38                                          ; $5d41: $ff
	and $ff                                          ; $5d42: $e6 $ff
	rst FarCall                                          ; $5d44: $f7
	ld e, $67                                        ; $5d45: $1e $67
	add b                                            ; $5d47: $80
	add e                                            ; $5d48: $83
	ld a, [$7f07]                                    ; $5d49: $fa $07 $7f
	dec h                                            ; $5d4c: $25
	push af                                          ; $5d4d: $f5
	rst GetHLinHL                                          ; $5d4e: $cf
	cp [hl]                                          ; $5d4f: $be
	set 7, a                                         ; $5d50: $cb $ff
	nop                                              ; $5d52: $00

jr_070_5d53:
	rst FarCall                                          ; $5d53: $f7
	jr jr_070_5d53                                   ; $5d54: $18 $fd

	ld c, $ff                                        ; $5d56: $0e $ff
	nop                                              ; $5d58: $00

jr_070_5d59:
	di                                               ; $5d59: $f3
	inc c                                            ; $5d5a: $0c
	rst $38                                          ; $5d5b: $ff
	nop                                              ; $5d5c: $00
	rst $38                                          ; $5d5d: $ff
	add b                                            ; $5d5e: $80
	ld a, a                                          ; $5d5f: $7f
	ld b, b                                          ; $5d60: $40
	inc a                                            ; $5d61: $3c
	inc hl                                           ; $5d62: $23
	rra                                              ; $5d63: $1f
	rra                                              ; $5d64: $1f
	ld d, l                                          ; $5d65: $55
	or [hl]                                          ; $5d66: $b6
	ld a, e                                          ; $5d67: $7b
	ld [$807f], a                                    ; $5d68: $ea $7f $80
	ld a, a                                          ; $5d6b: $7f
	jp z, $e27b                                      ; $5d6c: $ca $7b $e2

	ld a, e                                          ; $5d6f: $7b
	sbc $33                                          ; $5d70: $de $33
	ldh [$9b], a                                     ; $5d72: $e0 $9b
	ei                                               ; $5d74: $fb
	inc e                                            ; $5d75: $1c
	db $ed                                           ; $5d76: $ed
	ld e, $6b                                        ; $5d77: $1e $6b
	cp [hl]                                          ; $5d79: $be
	cpl                                              ; $5d7a: $2f
	ret nz                                           ; $5d7b: $c0

	sbc d                                            ; $5d7c: $9a
	inc e                                            ; $5d7d: $1c
	rst AddAOntoHL                                          ; $5d7e: $ef
	ld e, $fb                                        ; $5d7f: $1e $fb
	ld c, $73                                        ; $5d81: $0e $73
	sbc $9e                                          ; $5d83: $de $9e
	adc h                                            ; $5d85: $8c
	ccf                                              ; $5d86: $3f
	ldh [$a4], a                                     ; $5d87: $e0 $a4
	ld bc, $a983                                     ; $5d89: $01 $83 $a9
	cp $a8                                           ; $5d8c: $fe $a8
	rst $38                                          ; $5d8e: $ff
	and a                                            ; $5d8f: $a7
	rst $38                                          ; $5d90: $ff
	ld l, b                                          ; $5d91: $68
	ld [hl], a                                       ; $5d92: $77
	inc l                                            ; $5d93: $2c
	inc sp                                           ; $5d94: $33
	ld l, c                                          ; $5d95: $69
	ld [hl], a                                       ; $5d96: $77
	and a                                            ; $5d97: $a7
	rst $38                                          ; $5d98: $ff
	rst $38                                          ; $5d99: $ff
	cp a                                             ; $5d9a: $bf
	db $db                                           ; $5d9b: $db
	cp [hl]                                          ; $5d9c: $be
	rst SubAFromHL                                          ; $5d9d: $d7
	cp e                                             ; $5d9e: $bb
	sub [hl]                                         ; $5d9f: $96
	ei                                               ; $5da0: $fb
	ld e, [hl]                                       ; $5da1: $5e
	ld [hl], e                                       ; $5da2: $73

jr_070_5da3:
	dec a                                            ; $5da3: $3d
	inc sp                                           ; $5da4: $33
	rra                                              ; $5da5: $1f
	db $10                                           ; $5da6: $10

jr_070_5da7:
	ld [hl], a                                       ; $5da7: $77
	cp $93                                           ; $5da8: $fe $93
	rrca                                             ; $5daa: $0f
	ld [$080f], sp                                   ; $5dab: $08 $0f $08
	rlca                                             ; $5dae: $07
	inc b                                            ; $5daf: $04
	rlca                                             ; $5db0: $07
	inc b                                            ; $5db1: $04
	inc bc                                           ; $5db2: $03
	ld [bc], a                                       ; $5db3: $02
	ld bc, $ed01                                     ; $5db4: $01 $01 $ed
	add b                                            ; $5db7: $80
	cp $18                                           ; $5db8: $fe $18
	ld a, [$ed18]                                    ; $5dba: $fa $18 $ed
	jr jr_070_5da7                                   ; $5dbd: $18 $e8

	call nc, Call_070_60f8                           ; $5dbf: $d4 $f8 $60
	cp b                                             ; $5dc2: $b8
	ldh a, [$d8]                                     ; $5dc3: $f0 $d8
	ldh a, [$f0]                                     ; $5dc5: $f0 $f0
	ldh [rSVBK], a                                   ; $5dc7: $e0 $70
	ld h, b                                          ; $5dc9: $60
	ldh [$e0], a                                     ; $5dca: $e0 $e0
	and b                                            ; $5dcc: $a0
	ldh [rAUD4LEN], a                                ; $5dcd: $e0 $20
	ld h, b                                          ; $5dcf: $60
	call nz, $0ec0                                   ; $5dd0: $c4 $c0 $0e
	nop                                              ; $5dd3: $00
	rla                                              ; $5dd4: $17
	jr jr_070_5df5                                   ; $5dd5: $18 $1e

	add b                                            ; $5dd7: $80
	ld [$0d1e], sp                                   ; $5dd8: $08 $1e $0d
	rrca                                             ; $5ddb: $0f
	jr jr_070_5df8                                   ; $5ddc: $18 $1a

	db $10                                           ; $5dde: $10
	jr nz, jr_070_5e01                               ; $5ddf: $20 $20

	ld c, $01                                        ; $5de1: $0e $01
	rra                                              ; $5de3: $1f
	rlca                                             ; $5de4: $07
	dec a                                            ; $5de5: $3d
	ld e, $21                                        ; $5de6: $1e $21
	ld e, $2f                                        ; $5de8: $1e $2f
	rra                                              ; $5dea: $1f
	dec sp                                           ; $5deb: $3b
	rra                                              ; $5dec: $1f
	ld l, $06                                        ; $5ded: $2e $06
	inc c                                            ; $5def: $0c
	inc c                                            ; $5df0: $0c
	dec bc                                           ; $5df1: $0b

jr_070_5df2:
	rrca                                             ; $5df2: $0f
	rrca                                             ; $5df3: $0f
	dec bc                                           ; $5df4: $0b

jr_070_5df5:
	inc b                                            ; $5df5: $04
	dec c                                            ; $5df6: $0d
	sbc l                                            ; $5df7: $9d

jr_070_5df8:
	rra                                              ; $5df8: $1f
	inc bc                                           ; $5df9: $03
	ld [hl], a                                       ; $5dfa: $77
	xor e                                            ; $5dfb: $ab
	ld a, a                                          ; $5dfc: $7f
	db $fc                                           ; $5dfd: $fc
	add b                                            ; $5dfe: $80
	rlca                                             ; $5dff: $07
	nop                                              ; $5e00: $00

jr_070_5e01:
	rrca                                             ; $5e01: $0f
	nop                                              ; $5e02: $00

Call_070_5e03:
	ld e, $01                                        ; $5e03: $1e $01
	add hl, sp                                       ; $5e05: $39
	rlca                                             ; $5e06: $07
	rst SubAFromBC                                          ; $5e07: $e7
	rra                                              ; $5e08: $1f
	sbc a                                            ; $5e09: $9f
	ld a, a                                          ; $5e0a: $7f
	ldh [rIE], a                                     ; $5e0b: $e0 $ff
	ldh [$1f], a                                     ; $5e0d: $e0 $1f
	sbc [hl]                                         ; $5e0f: $9e
	add c                                            ; $5e10: $81
	adc h                                            ; $5e11: $8c
	add e                                            ; $5e12: $83
	call $8b82                                       ; $5e13: $cd $82 $8b
	call nz, wGenericTileDataBuffer                                   ; $5e16: $c4 $8f $c1
	ret c                                            ; $5e19: $d8

	cp a                                             ; $5e1a: $bf
	sub a                                            ; $5e1b: $97
	rst $38                                          ; $5e1c: $ff
	jp nc, Jump_070_7f80                             ; $5e1d: $d2 $80 $7f

	sbc $7b                                          ; $5e20: $de $7b
	ld a, a                                          ; $5e22: $7f
	ei                                               ; $5e23: $fb
	db $eb                                           ; $5e24: $eb
	rst $38                                          ; $5e25: $ff
	sub $7f                                          ; $5e26: $d6 $7f
	rst FarCall                                          ; $5e28: $f7
	ld c, $7f                                        ; $5e29: $0e $7f
	add a                                            ; $5e2b: $87
	cp $c3                                           ; $5e2c: $fe $c3
	rst $38                                          ; $5e2e: $ff
	db $e3                                           ; $5e2f: $e3
	ld a, [hl]                                       ; $5e30: $7e
	ld [hl], e                                       ; $5e31: $73
	jp c, Jump_070_7fe7                              ; $5e32: $da $e7 $7f

	push bc                                          ; $5e35: $c5
	push af                                          ; $5e36: $f5
	adc a                                            ; $5e37: $8f
	ld a, $cb                                        ; $5e38: $3e $cb
	ld a, [$7d0f]                                    ; $5e3a: $fa $0f $7d
	ld e, $86                                        ; $5e3d: $1e $86
	di                                               ; $5e3f: $f3
	inc e                                            ; $5e40: $1c
	rst SubAFromDE                                          ; $5e41: $df
	ccf                                              ; $5e42: $3f
	cp d                                             ; $5e43: $ba
	ld a, a                                          ; $5e44: $7f
	ld a, e                                          ; $5e45: $7b
	rst $38                                          ; $5e46: $ff
	di                                               ; $5e47: $f3
	rst $38                                          ; $5e48: $ff
	pop hl                                           ; $5e49: $e1
	rst $38                                          ; $5e4a: $ff
	adc e                                            ; $5e4b: $8b
	rst FarCall                                          ; $5e4c: $f7
	dec e                                            ; $5e4d: $1d
	xor $34                                          ; $5e4e: $ee $34
	ret c                                            ; $5e50: $d8

	ld l, b                                          ; $5e51: $68
	or b                                             ; $5e52: $b0
	ret nc                                           ; $5e53: $d0

	ld h, b                                          ; $5e54: $60
	ldh [$c0], a                                     ; $5e55: $e0 $c0
	ret nz                                           ; $5e57: $c0

	sbc $80                                          ; $5e58: $de $80
	ld h, a                                          ; $5e5a: $67
	jr nz, jr_070_5df2                               ; $5e5b: $20 $95

	ld l, $31                                        ; $5e5d: $2e $31
	ld l, [hl]                                       ; $5e5f: $6e
	ld [hl], c                                       ; $5e60: $71
	xor h                                            ; $5e61: $ac
	di                                               ; $5e62: $f3
	rst SubAFromBC                                          ; $5e63: $e7
	cp a                                             ; $5e64: $bf
	rst SubAFromDE                                          ; $5e65: $df
	cp a                                             ; $5e66: $bf
	ld c, a                                          ; $5e67: $4f
	jr nz, jr_070_5ec5                               ; $5e68: $20 $5b

	ld b, b                                          ; $5e6a: $40
	sbc e                                            ; $5e6b: $9b
	ld [hl], b                                       ; $5e6c: $70
	sbc b                                            ; $5e6d: $98
	ld [hl], b                                       ; $5e6e: $70
	ret nc                                           ; $5e6f: $d0

	inc bc                                           ; $5e70: $03
	ld b, b                                          ; $5e71: $40
	sbc c                                            ; $5e72: $99
	inc sp                                           ; $5e73: $33
	inc c                                            ; $5e74: $0c
	cpl                                              ; $5e75: $2f
	rra                                              ; $5e76: $1f
	ccf                                              ; $5e77: $3f
	rra                                              ; $5e78: $1f
	ld e, a                                          ; $5e79: $5f
	ld b, b                                          ; $5e7a: $40
	ld b, a                                          ; $5e7b: $47
	ld h, b                                          ; $5e7c: $60
	sub l                                            ; $5e7d: $95
	rst $38                                          ; $5e7e: $ff
	rlca                                             ; $5e7f: $07
	ld a, [hl]                                       ; $5e80: $7e
	add e                                            ; $5e81: $83
	cp a                                             ; $5e82: $bf
	jp $e3fe                                         ; $5e83: $c3 $fe $e3


	ld a, [$6ff7]                                    ; $5e86: $fa $f7 $6f
	ld h, b                                          ; $5e89: $60
	ld e, a                                          ; $5e8a: $5f
	add b                                            ; $5e8b: $80
	sub e                                            ; $5e8c: $93
	ld l, a                                          ; $5e8d: $6f
	ld [hl], b                                       ; $5e8e: $70

jr_070_5e8f:
	xor a                                            ; $5e8f: $af
	ldh a, [$ef]                                     ; $5e90: $f0 $ef
	or b                                             ; $5e92: $b0
	rst SubAFromHL                                          ; $5e93: $d7
	cp b                                             ; $5e94: $b8
	rst SubAFromDE                                          ; $5e95: $df
	cp a                                             ; $5e96: $bf
	sbc a                                            ; $5e97: $9f
	rst FarCall                                          ; $5e98: $f7
	cpl                                              ; $5e99: $2f
	add b                                            ; $5e9a: $80
	sub e                                            ; $5e9b: $93
	ret c                                            ; $5e9c: $d8

	jr nc, jr_070_5e8f                               ; $5e9d: $30 $f0

	nop                                              ; $5e9f: $00
	ldh a, [rP1]                                     ; $5ea0: $f0 $00
	ldh [$c0], a                                     ; $5ea2: $e0 $c0
	ldh [$e0], a                                     ; $5ea4: $e0 $e0
	jr nc, jr_070_5f18                               ; $5ea6: $30 $70

	daa                                              ; $5ea8: $27
	add b                                            ; $5ea9: $80
	sub l                                            ; $5eaa: $95
	ccf                                              ; $5eab: $3f
	nop                                              ; $5eac: $00
	ccf                                              ; $5ead: $3f
	nop                                              ; $5eae: $00
	jr jr_070_5eb1                                   ; $5eaf: $18 $00

jr_070_5eb1:
	rrca                                             ; $5eb1: $0f
	rrca                                             ; $5eb2: $0f
	ccf                                              ; $5eb3: $3f
	ccf                                              ; $5eb4: $3f
	daa                                              ; $5eb5: $27
	add b                                            ; $5eb6: $80
	sbc c                                            ; $5eb7: $99
	cp $03                                           ; $5eb8: $fe $03
	rst $38                                          ; $5eba: $ff
	inc bc                                           ; $5ebb: $03
	ld a, [hl]                                       ; $5ebc: $7e
	inc bc                                           ; $5ebd: $03
	ld a, d                                          ; $5ebe: $7a
	ldh [$df], a                                     ; $5ebf: $e0 $df
	push af                                          ; $5ec1: $f5
	dec sp                                           ; $5ec2: $3b
	add b                                            ; $5ec3: $80
	sbc b                                            ; $5ec4: $98

jr_070_5ec5:
	rst SubAFromDE                                          ; $5ec5: $df
	or b                                             ; $5ec6: $b0
	sbc $b1                                          ; $5ec7: $de $b1
	sbc a                                            ; $5ec9: $9f
	or $5f                                           ; $5eca: $f6 $5f
	ld b, e                                          ; $5ecc: $43
	add b                                            ; $5ecd: $80
	sbc e                                            ; $5ece: $9b
	ret c                                            ; $5ecf: $d8

	ld h, b                                          ; $5ed0: $60
	cp b                                             ; $5ed1: $b8
	ld h, b                                          ; $5ed2: $60
	ld a, e                                          ; $5ed3: $7b
	add b                                            ; $5ed4: $80
	sbc e                                            ; $5ed5: $9b
	db $10                                           ; $5ed6: $10
	ld [hl], b                                       ; $5ed7: $70
	nop                                              ; $5ed8: $00
	ldh [$fe], a                                     ; $5ed9: $e0 $fe
	rst SubAFromDE                                          ; $5edb: $df
	ldh [$3b], a                                     ; $5edc: $e0 $3b
	add b                                            ; $5ede: $80
	sbc e                                            ; $5edf: $9b
	inc bc                                           ; $5ee0: $03
	ccf                                              ; $5ee1: $3f
	ld c, $39                                        ; $5ee2: $0e $39
	ld l, e                                          ; $5ee4: $6b
	add b                                            ; $5ee5: $80
	rst $38                                          ; $5ee6: $ff
	sbc c                                            ; $5ee7: $99
	inc bc                                           ; $5ee8: $03
	nop                                              ; $5ee9: $00
	inc e                                            ; $5eea: $1c
	jr jr_070_5efc                                   ; $5eeb: $18 $0f

	rrca                                             ; $5eed: $0f
	rra                                              ; $5eee: $1f
	add b                                            ; $5eef: $80
	adc l                                            ; $5ef0: $8d
	ld a, [$7f07]                                    ; $5ef1: $fa $07 $7f
	dec h                                            ; $5ef4: $25
	push af                                          ; $5ef5: $f5
	rst GetHLinHL                                          ; $5ef6: $cf
	cp [hl]                                          ; $5ef7: $be
	set 7, a                                         ; $5ef8: $cb $ff
	nop                                              ; $5efa: $00
	rst $38                                          ; $5efb: $ff

jr_070_5efc:
	inc c                                            ; $5efc: $0c
	ei                                               ; $5efd: $fb
	ld d, $ff                                        ; $5efe: $16 $ff
	nop                                              ; $5f00: $00
	di                                               ; $5f01: $f3
	inc c                                            ; $5f02: $0c
	ld a, e                                          ; $5f03: $7b
	or $98                                           ; $5f04: $f6 $98
	add b                                            ; $5f06: $80
	ld a, a                                          ; $5f07: $7f
	ld b, b                                          ; $5f08: $40
	inc a                                            ; $5f09: $3c
	inc hl                                           ; $5f0a: $23
	rra                                              ; $5f0b: $1f
	rra                                              ; $5f0c: $1f
	ld d, l                                          ; $5f0d: $55
	or [hl]                                          ; $5f0e: $b6
	ld [hl], a                                       ; $5f0f: $77
	ldh [$9d], a                                     ; $5f10: $e0 $9d
	rst $38                                          ; $5f12: $ff
	ld e, $0f                                        ; $5f13: $1e $0f
	ldh [$9b], a                                     ; $5f15: $e0 $9b
	ei                                               ; $5f17: $fb

jr_070_5f18:
	ld e, $ff                                        ; $5f18: $1e $ff
	ld c, $73                                        ; $5f1a: $0e $73
	sbc $33                                          ; $5f1c: $de $33
	ldh [$99], a                                     ; $5f1e: $e0 $99
	rst AddAOntoHL                                          ; $5f20: $ef
	inc e                                            ; $5f21: $1c
	rst $38                                          ; $5f22: $ff
	ld e, $fb                                        ; $5f23: $1e $fb
	ld c, $73                                        ; $5f25: $0e $73
	sbc $9e                                          ; $5f27: $de $9e
	adc h                                            ; $5f29: $8c
	ccf                                              ; $5f2a: $3f
	ldh [rLCDC], a                                   ; $5f2b: $e0 $40
	inc bc                                           ; $5f2d: $03
	rst SubAFromBC                                          ; $5f2e: $e7
	db $db                                           ; $5f2f: $db
	ld bc, $028d                                     ; $5f30: $01 $8d $02
	inc bc                                           ; $5f33: $03
	ld [bc], a                                       ; $5f34: $02
	inc bc                                           ; $5f35: $03
	dec b                                            ; $5f36: $05
	ld b, $05                                        ; $5f37: $06 $05
	ld b, $0b                                        ; $5f39: $06 $0b
	inc c                                            ; $5f3b: $0c
	dec bc                                           ; $5f3c: $0b
	inc c                                            ; $5f3d: $0c
	rla                                              ; $5f3e: $17
	jr jr_070_5f58                                   ; $5f3f: $18 $17

	jr jr_070_5f72                                   ; $5f41: $18 $2f

	jr nc, jr_070_5fbc                               ; $5f43: $30 $77

	cp $9d                                           ; $5f45: $fe $9d
	ld e, a                                          ; $5f47: $5f
	ld h, b                                          ; $5f48: $60
	ld [hl], a                                       ; $5f49: $77
	cp $9b                                           ; $5f4a: $fe $9b
	cp a                                             ; $5f4c: $bf
	ret nz                                           ; $5f4d: $c0

	cp a                                             ; $5f4e: $bf
	ret nz                                           ; $5f4f: $c0

	ld h, a                                          ; $5f50: $67
	ret c                                            ; $5f51: $d8

	ld e, a                                          ; $5f52: $5f
	jp z, $0689                                      ; $5f53: $ca $89 $06

	rlca                                             ; $5f56: $07
	add hl, bc                                       ; $5f57: $09

jr_070_5f58:
	rrca                                             ; $5f58: $0f

jr_070_5f59:
	ld d, $19                                        ; $5f59: $16 $19
	rra                                              ; $5f5b: $1f
	ld d, $2b                                        ; $5f5c: $16 $2b
	scf                                              ; $5f5e: $37
	ld a, [hl-]                                      ; $5f5f: $3a
	daa                                              ; $5f60: $27
	ld a, $23                                        ; $5f61: $3e $23
	dec a                                            ; $5f63: $3d
	inc hl                                           ; $5f64: $23
	inc a                                            ; $5f65: $3c
	inc hl                                           ; $5f66: $23
	ld a, $21                                        ; $5f67: $3e $21
	ld l, $31                                        ; $5f69: $2e $31
	ld [hl], a                                       ; $5f6b: $77
	cp $77                                           ; $5f6c: $fe $77
	add $8c                                          ; $5f6e: $c6 $8c
	ld c, a                                          ; $5f70: $4f
	ld [hl], b                                       ; $5f71: $70

jr_070_5f72:
	ld e, [hl]                                       ; $5f72: $5e
	ld h, c                                          ; $5f73: $61
	ld e, [hl]                                       ; $5f74: $5e
	ld h, c                                          ; $5f75: $61
	cp h                                             ; $5f76: $bc
	jp $c3bc                                         ; $5f77: $c3 $bc $c3


	ld a, b                                          ; $5f7a: $78
	add a                                            ; $5f7b: $87
	ld a, b                                          ; $5f7c: $78
	add a                                            ; $5f7d: $87
	ld a, c                                          ; $5f7e: $79
	add a                                            ; $5f7f: $87
	rlca                                             ; $5f80: $07
	ld bc, $6b0f                                     ; $5f81: $01 $0f $6b
	cp $9a                                           ; $5f84: $fe $9a
	rra                                              ; $5f86: $1f
	inc bc                                           ; $5f87: $03
	rra                                              ; $5f88: $1f
	inc bc                                           ; $5f89: $03
	ld e, $7b                                        ; $5f8a: $1e $7b
	cp $95                                           ; $5f8c: $fe $95
	ld a, $03                                        ; $5f8e: $3e $03
	ccf                                              ; $5f90: $3f
	inc bc                                           ; $5f91: $03
	ccf                                              ; $5f92: $3f
	dec b                                            ; $5f93: $05
	ccf                                              ; $5f94: $3f
	dec b                                            ; $5f95: $05
	ld a, a                                          ; $5f96: $7f
	inc b                                            ; $5f97: $04
	ld [hl], a                                       ; $5f98: $77
	cp $77                                           ; $5f99: $fe $77
	xor [hl]                                         ; $5f9b: $ae
	add b                                            ; $5f9c: $80
	add [hl]                                         ; $5f9d: $86
	add a                                            ; $5f9e: $87
	ld a, l                                          ; $5f9f: $7d
	cp $8a                                           ; $5fa0: $fe $8a
	db $fd                                           ; $5fa2: $fd
	ld [hl], l                                       ; $5fa3: $75
	ld a, e                                          ; $5fa4: $7b
	ld [hl], e                                       ; $5fa5: $73
	ld a, a                                          ; $5fa6: $7f
	cp e                                             ; $5fa7: $bb
	rst GetHLinHL                                          ; $5fa8: $cf
	rst SubAFromDE                                          ; $5fa9: $df
	rst SubAFromBC                                          ; $5faa: $e7
	rst AddAOntoHL                                          ; $5fab: $ef

jr_070_5fac:
	inc sp                                           ; $5fac: $33
	halt                                             ; $5fad: $76
	sbc e                                            ; $5fae: $9b
	cp e                                             ; $5faf: $bb
	adc $5d                                          ; $5fb0: $ce $5d
	xor $4b                                          ; $5fb2: $ee $4b
	db $fc                                           ; $5fb4: $fc
	ld d, [hl]                                       ; $5fb5: $56
	ld sp, hl                                        ; $5fb6: $f9
	and [hl]                                         ; $5fb7: $a6
	ld sp, hl                                        ; $5fb8: $f9
	adc h                                            ; $5fb9: $8c
	di                                               ; $5fba: $f3
	ld c, l                                          ; $5fbb: $4d

jr_070_5fbc:
	adc a                                            ; $5fbc: $8f
	di                                               ; $5fbd: $f3
	ld c, c                                          ; $5fbe: $49
	rst FarCall                                          ; $5fbf: $f7
	ld b, d                                          ; $5fc0: $42
	cp $42                                           ; $5fc1: $fe $42
	cp $84                                           ; $5fc3: $fe $84
	db $fc                                           ; $5fc5: $fc
	ret z                                            ; $5fc6: $c8

	jr c, jr_070_5f59                                ; $5fc7: $38 $90

	ld [hl], b                                       ; $5fc9: $70
	jr nz, jr_070_5fac                               ; $5fca: $20 $e0

	ld b, b                                          ; $5fcc: $40
	sbc $c0                                          ; $5fcd: $de $c0
	reti                                             ; $5fcf: $d9


	add b                                            ; $5fd0: $80
	ld l, a                                          ; $5fd1: $6f
	ld l, [hl]                                       ; $5fd2: $6e
	ld a, a                                          ; $5fd3: $7f
	dec a                                            ; $5fd4: $3d
	sub e                                            ; $5fd5: $93
	rrca                                             ; $5fd6: $0f
	inc c                                            ; $5fd7: $0c
	ccf                                              ; $5fd8: $3f
	jr nc, @+$01                                     ; $5fd9: $30 $ff

	ldh [$1f], a                                     ; $5fdb: $e0 $1f
	ldh a, [$1f]                                     ; $5fdd: $f0 $1f
	ldh a, [rIF]                                     ; $5fdf: $f0 $0f
	ld hl, sp+$6f                                    ; $5fe1: $f8 $6f
	cp $9c                                           ; $5fe3: $fe $9c
	rlca                                             ; $5fe5: $07
	db $fc                                           ; $5fe6: $fc
	add a                                            ; $5fe7: $87
	ld [hl], a                                       ; $5fe8: $77
	cp $9e                                           ; $5fe9: $fe $9e
	db $fd                                           ; $5feb: $fd
	push hl                                          ; $5fec: $e5
	ld a, e                                          ; $5fed: $7b
	add $9c                                          ; $5fee: $c6 $9c
	inc bc                                           ; $5ff0: $03
	ld b, $07                                        ; $5ff1: $06 $07
	ld l, e                                          ; $5ff3: $6b
	ld b, $8a                                        ; $5ff4: $06 $8a
	rra                                              ; $5ff6: $1f
	dec de                                           ; $5ff7: $1b
	inc e                                            ; $5ff8: $1c
	inc l                                            ; $5ff9: $2c
	inc sp                                           ; $5ffa: $33
	scf                                              ; $5ffb: $37
	dec l                                            ; $5ffc: $2d
	ld l, a                                          ; $5ffd: $6f
	ld e, b                                          ; $5ffe: $58
	ld a, a                                          ; $5fff: $7f
	ld d, c                                          ; $6000: $51
	rst SubAFromDE                                          ; $6001: $df
	or d                                             ; $6002: $b2
	ei                                               ; $6003: $fb
	and [hl]                                         ; $6004: $a6
	rst $38                                          ; $6005: $ff
	and h                                            ; $6006: $a4
	rst $38                                          ; $6007: $ff
	and h                                            ; $6008: $a4
	or [hl]                                          ; $6009: $b6
	db $ed                                           ; $600a: $ed
	ld [hl], a                                       ; $600b: $77
	cp $80                                           ; $600c: $fe $80
	or $fd                                           ; $600e: $f6 $fd
	rrca                                             ; $6010: $0f
	dec e                                            ; $6011: $1d
	scf                                              ; $6012: $37
	call $fdff                                       ; $6013: $cd $ff $fd
	rst SubAFromDE                                          ; $6016: $df
	cp l                                             ; $6017: $bd
	cp a                                             ; $6018: $bf
	ld l, l                                          ; $6019: $6d
	cp e                                             ; $601a: $bb
	ld l, l                                          ; $601b: $6d
	ld a, d                                          ; $601c: $7a
	sbc $7b                                          ; $601d: $de $7b
	rst SubAFromDE                                          ; $601f: $df
	push af                                          ; $6020: $f5
	cp a                                             ; $6021: $bf
	rst FarCall                                          ; $6022: $f7
	cp e                                             ; $6023: $bb
	rst FarCall                                          ; $6024: $f7
	ld e, e                                          ; $6025: $5b
	rst FarCall                                          ; $6026: $f7
	ld e, e                                          ; $6027: $5b
	or a                                             ; $6028: $b7
	db $db                                           ; $6029: $db
	or [hl]                                          ; $602a: $b6
	db $db                                           ; $602b: $db
	sub d                                            ; $602c: $92
	add b                                            ; $602d: $80
	rst $38                                          ; $602e: $ff
	or d                                             ; $602f: $b2
	rst SubAFromDE                                          ; $6030: $df
	cp a                                             ; $6031: $bf
	jp c, $dbbd                                      ; $6032: $da $bd $db

	ld [hl], a                                       ; $6035: $77
	ld d, l                                          ; $6036: $55
	ld d, a                                          ; $6037: $57
	ld [hl], l                                       ; $6038: $75
	ld [hl-], a                                      ; $6039: $32
	inc sp                                           ; $603a: $33
	ld sp, $1031                                     ; $603b: $31 $31 $10
	stop                                             ; $603e: $10 $00
	nop                                              ; $6040: $00
	inc bc                                           ; $6041: $03
	inc bc                                           ; $6042: $03

jr_070_6043:
	rrca                                             ; $6043: $0f
	inc c                                            ; $6044: $0c
	rra                                              ; $6045: $1f
	ld de, $213f                                     ; $6046: $11 $3f $21
	ld a, a                                          ; $6049: $7f
	ld b, c                                          ; $604a: $41
	ld a, a                                          ; $604b: $7f
	ld b, c                                          ; $604c: $41
	sbc e                                            ; $604d: $9b
	cp $83                                           ; $604e: $fe $83
	cp $83                                           ; $6050: $fe $83
	ld a, e                                          ; $6052: $7b
	ld a, c                                          ; $6053: $79
	add [hl]                                         ; $6054: $86
	ld b, $f9                                        ; $6055: $06 $f9
	ld c, $f3                                        ; $6057: $0e $f3
	inc e                                            ; $6059: $1c
	rst FarCall                                          ; $605a: $f7
	jr jr_070_6043                                   ; $605b: $18 $e6

	add hl, sp                                       ; $605d: $39
	db $ec                                           ; $605e: $ec

Jump_070_605f:
	inc sp                                           ; $605f: $33
	rst GetHLinHL                                          ; $6060: $cf
	ld [hl], b                                       ; $6061: $70
	jp $f87c                                         ; $6062: $c3 $7c $f8


	rst $38                                          ; $6065: $ff
	rst SubAFromDE                                          ; $6066: $df
	rst SubAFromBC                                          ; $6067: $e7
	cp h                                             ; $6068: $bc
	call c, $bbfb                                    ; $6069: $dc $fb $bb
	ld h, h                                          ; $606c: $64
	and h                                            ; $606d: $a4
	rst AddAOntoHL                                          ; $606e: $ef
	rst SubAFromDE                                          ; $606f: $df
	inc bc                                           ; $6070: $03
	add b                                            ; $6071: $80
	ld c, $0d                                        ; $6072: $0e $0d
	dec [hl]                                         ; $6074: $35
	dec sp                                           ; $6075: $3b
	ld e, d                                          ; $6076: $5a
	ld h, a                                          ; $6077: $67
	rst FarCall                                          ; $6078: $f7
	rst $38                                          ; $6079: $ff
	ld [hl], l                                       ; $607a: $75
	adc [hl]                                         ; $607b: $8e
	ret z                                            ; $607c: $c8

	rst $38                                          ; $607d: $ff
	ld l, a                                          ; $607e: $6f
	sbc a                                            ; $607f: $9f
	ret c                                            ; $6080: $d8

	ccf                                              ; $6081: $3f
	sub e                                            ; $6082: $93
	ld a, h                                          ; $6083: $7c
	ld l, $ff                                        ; $6084: $2e $ff
	ldh a, [rIE]                                     ; $6086: $f0 $ff
	rst SubAFromBC                                          ; $6088: $e7
	jr c, jr_070_60ac                                ; $6089: $38 $21

	cp $c0                                           ; $608b: $fe $c0
	rst $38                                          ; $608d: $ff
	add $f9                                          ; $608e: $c6 $f9
	ld d, e                                          ; $6090: $53
	sub d                                            ; $6091: $92
	db $ec                                           ; $6092: $ec
	reti                                             ; $6093: $d9


	ld h, [hl]                                       ; $6094: $66
	sub l                                            ; $6095: $95
	ld l, d                                          ; $6096: $6a
	ld a, e                                          ; $6097: $7b
	db $ed                                           ; $6098: $ed
	ld l, l                                          ; $6099: $6d
	or $fe                                           ; $609a: $f6 $fe
	rst SubAFromHL                                          ; $609c: $d7
	rst FarCall                                          ; $609d: $f7
	sbc e                                            ; $609e: $9b
	ldh [$c1], a                                     ; $609f: $e0 $c1
	sub e                                            ; $60a1: $93
	ld h, b                                          ; $60a2: $60
	sbc a                                            ; $60a3: $9f
	ret nz                                           ; $60a4: $c0

	ccf                                              ; $60a5: $3f
	ret nz                                           ; $60a6: $c0

	ccf                                              ; $60a7: $3f
	add b                                            ; $60a8: $80
	ld a, a                                          ; $60a9: $7f
	add b                                            ; $60aa: $80
	ld a, a                                          ; $60ab: $7f

jr_070_60ac:
	nop                                              ; $60ac: $00
	rst $38                                          ; $60ad: $ff
	ld l, a                                          ; $60ae: $6f
	cp $7f                                           ; $60af: $fe $7f
	ldh a, [c]                                       ; $60b1: $f2
	ld a, [hl]                                       ; $60b2: $7e
	jp $ed7f                                         ; $60b3: $c3 $7f $ed


	sub a                                            ; $60b6: $97
	add a                                            ; $60b7: $87
	ld hl, sp+$70                                    ; $60b8: $f8 $70
	ld a, a                                          ; $60ba: $7f
	sbc a                                            ; $60bb: $9f
	sbc a                                            ; $60bc: $9f
	ld l, e                                          ; $60bd: $6b
	ld l, d                                          ; $60be: $6a
	pop af                                           ; $60bf: $f1
	rst SubAFromDE                                          ; $60c0: $df
	rst $38                                          ; $60c1: $ff
	add b                                            ; $60c2: $80
	db $e3                                           ; $60c3: $e3
	db $fc                                           ; $60c4: $fc
	add b                                            ; $60c5: $80
	rst $38                                          ; $60c6: $ff
	ld a, a                                          ; $60c7: $7f
	add b                                            ; $60c8: $80
	ei                                               ; $60c9: $fb
	db $fc                                           ; $60ca: $fc
	inc a                                            ; $60cb: $3c
	jp $00c7                                         ; $60cc: $c3 $c7 $00


	add hl, sp                                       ; $60cf: $39
	ret nz                                           ; $60d0: $c0

	adc [hl]                                         ; $60d1: $8e
	ldh a, [$63]                                     ; $60d2: $f0 $63
	db $fc                                           ; $60d4: $fc
	ld hl, sp+$1f                                    ; $60d5: $f8 $1f
	adc a                                            ; $60d7: $8f
	ld b, $23                                        ; $60d8: $06 $23
	pop bc                                           ; $60da: $c1
	adc c                                            ; $60db: $89
	ld [hl], b                                       ; $60dc: $70
	inc h                                            ; $60dd: $24
	jr @+$14                                         ; $60de: $18 $12

	adc h                                            ; $60e0: $8c
	add hl, bc                                       ; $60e1: $09
	sub b                                            ; $60e2: $90
	add $86                                          ; $60e3: $c6 $86
	ld h, e                                          ; $60e5: $63
	ld h, e                                          ; $60e6: $63
	ld sp, $18b7                                     ; $60e7: $31 $b7 $18
	db $db                                           ; $60ea: $db
	inc c                                            ; $60eb: $0c
	db $fd                                           ; $60ec: $fd
	add [hl]                                         ; $60ed: $86
	ldh a, [c]                                       ; $60ee: $f2

Jump_070_60ef:
	ld c, a                                          ; $60ef: $4f
	ld sp, $e0ff                                     ; $60f0: $31 $ff $e0
	pop bc                                           ; $60f3: $c1
	sbc b                                            ; $60f4: $98
	ret nz                                           ; $60f5: $c0

	ldh [$a0], a                                     ; $60f6: $e0 $a0

Call_070_60f8:
	add b                                            ; $60f8: $80
	and d                                            ; $60f9: $a2
	add c                                            ; $60fa: $81
	add h                                            ; $60fb: $84
	call c, $df80                                    ; $60fc: $dc $80 $df

Jump_070_60ff:
	add c                                            ; $60ff: $81
	sub h                                            ; $6100: $94
	add e                                            ; $6101: $83
	add d                                            ; $6102: $82
	add a                                            ; $6103: $87
	add h                                            ; $6104: $84
	adc a                                            ; $6105: $8f
	adc b                                            ; $6106: $88
	sbc a                                            ; $6107: $9f
	sub b                                            ; $6108: $90
	cp a                                             ; $6109: $bf
	and b                                            ; $610a: $a0
	rst GetHLinHL                                          ; $610b: $cf
	ld a, c                                          ; $610c: $79
	ei                                               ; $610d: $fb
	sbc e                                            ; $610e: $9b
	ld hl, sp-$80                                    ; $610f: $f8 $80
	ld a, a                                          ; $6111: $7f
	ld [hl], b                                       ; $6112: $70
	pop af                                           ; $6113: $f1
	rst SubAFromDE                                          ; $6114: $df
	ldh a, [$80]                                     ; $6115: $f0 $80
	xor $1e                                          ; $6117: $ee $1e
	rra                                              ; $6119: $1f
	pop hl                                           ; $611a: $e1
	inc bc                                           ; $611b: $03
	db $fc                                           ; $611c: $fc
	pop af                                           ; $611d: $f1
	ld c, $7c                                        ; $611e: $0e $7c
	add e                                            ; $6120: $83
	rrca                                             ; $6121: $0f
	ldh a, [$e3]                                     ; $6122: $f0 $e3
	inc e                                            ; $6124: $1c
	jr c, jr_070_612e                                ; $6125: $38 $07

	adc [hl]                                         ; $6127: $8e
	ld bc, $8063                                     ; $6128: $01 $63 $80
	add hl, de                                       ; $612b: $19
	ldh [$c6], a                                     ; $612c: $e0 $c6

jr_070_612e:
	jr c, @-$08                                      ; $612e: $38 $f6

	adc a                                            ; $6130: $8f
	db $dd                                           ; $6131: $dd
	ld h, e                                          ; $6132: $63
	ld h, a                                          ; $6133: $67
	jr c, @+$3e                                      ; $6134: $38 $3c

	sub c                                            ; $6136: $91
	ld e, $ab                                        ; $6137: $1e $ab
	rra                                              ; $6139: $1f
	ld [hl], l                                       ; $613a: $75
	adc a                                            ; $613b: $8f
	sbc d                                            ; $613c: $9a
	rst SubAFromBC                                          ; $613d: $e7
	rst GetHLinHL                                          ; $613e: $cf

Jump_070_613f:
	ld [hl], e                                       ; $613f: $73
	or e                                             ; $6140: $b3
	ld a, l                                          ; $6141: $7d
	ld e, h                                          ; $6142: $5c
	cp a                                             ; $6143: $bf
	add d                                            ; $6144: $82
	inc bc                                           ; $6145: $03
	ld h, b                                          ; $6146: $60
	pop hl                                           ; $6147: $e1
	ld a, h                                          ; $6148: $7c
	jp nz, $049b                                     ; $6149: $c2 $9b $04

	rlca                                             ; $614c: $07
	ld a, e                                          ; $614d: $7b
	db $fc                                           ; $614e: $fc
	ld [hl], h                                       ; $614f: $74
	adc $7c                                          ; $6150: $ce $7c
	call nc, $ea7e                                   ; $6152: $d4 $7e $ea
	ld l, d                                          ; $6155: $6a
	cp l                                             ; $6156: $bd
	ld l, e                                          ; $6157: $6b
	cp $9d                                           ; $6158: $fe $9d
	rrca                                             ; $615a: $0f
	nop                                              ; $615b: $00
	ld a, b                                          ; $615c: $78
	pop bc                                           ; $615d: $c1
	xor $df                                          ; $615e: $ee $df
	add b                                            ; $6160: $80
	sub h                                            ; $6161: $94
	ldh [$60], a                                     ; $6162: $e0 $60
	ret nc                                           ; $6164: $d0

	jr nc, @-$46                                     ; $6165: $30 $b8

	ret z                                            ; $6167: $c8

	ld l, h                                          ; $6168: $6c
	db $f4                                           ; $6169: $f4
	sub [hl]                                         ; $616a: $96
	ld a, d                                          ; $616b: $7a
	db $eb                                           ; $616c: $eb
	ld a, e                                          ; $616d: $7b
	ld [hl], d                                       ; $616e: $72
	add e                                            ; $616f: $83
	jp c, $f5e7                                      ; $6170: $da $e7 $f5

	dec sp                                           ; $6173: $3b
	xor $1d                                          ; $6174: $ee $1d
	ei                                               ; $6176: $fb
	ld b, $bd                                        ; $6177: $06 $bd
	jp $71ee                                         ; $6179: $c3 $ee $71


	ld a, e                                          ; $617c: $7b
	inc e                                            ; $617d: $1c
	ld e, $87                                        ; $617e: $1e $87

Jump_070_6180:
	push bc                                          ; $6180: $c5
	db $e3                                           ; $6181: $e3
	halt                                             ; $6182: $76
	ld sp, hl                                        ; $6183: $f9
	dec e                                            ; $6184: $1d
	cp $b3                                           ; $6185: $fe $b3
	rst GetHLinHL                                          ; $6187: $cf
	xor $f1                                          ; $6188: $ee $f1
	ld a, l                                          ; $618a: $7d
	cp $e0                                           ; $618b: $fe $e0
	pop bc                                           ; $618d: $c1
	ld a, [hl]                                       ; $618e: $7e
	or $67                                           ; $618f: $f6 $67
	ld [hl], d                                       ; $6191: $72
	ld a, a                                          ; $6192: $7f
	or l                                             ; $6193: $b5
	adc h                                            ; $6194: $8c
	db $fc                                           ; $6195: $fc
	nop                                              ; $6196: $00
	ld hl, sp+$00                                    ; $6197: $f8 $00
	ld sp, hl                                        ; $6199: $f9
	nop                                              ; $619a: $00
	di                                               ; $619b: $f3
	nop                                              ; $619c: $00
	di                                               ; $619d: $f3
	ld bc, $01e7                                     ; $619e: $01 $e7 $01

Jump_070_61a1:
	rst SubAFromBC                                          ; $61a1: $e7
	ld [bc], a                                       ; $61a2: $02
	adc $02                                          ; $61a3: $ce $02
	adc $04                                          ; $61a5: $ce $04
	ld e, $78                                        ; $61a7: $1e $78

jr_070_61a9:
	add b                                            ; $61a9: $80
	rst SubAFromDE                                          ; $61aa: $df
	add b                                            ; $61ab: $80
	rst SubAFromDE                                          ; $61ac: $df
	rst $38                                          ; $61ad: $ff
	add h                                            ; $61ae: $84
	rst SubAFromDE                                          ; $61af: $df
	ldh [hDisp0_OBP1], a                                     ; $61b0: $e0 $87
	rst $38                                          ; $61b2: $ff
	ld a, a                                          ; $61b3: $7f
	jp $fc43                                         ; $61b4: $c3 $43 $fc


	and b                                            ; $61b7: $a0
	rst $38                                          ; $61b8: $ff
	ld a, [hl]                                       ; $61b9: $7e
	rst $38                                          ; $61ba: $ff
	cp a                                             ; $61bb: $bf
	ld h, c                                          ; $61bc: $61
	cp a                                             ; $61bd: $bf
	ldh [$60], a                                     ; $61be: $e0 $60
	rst $38                                          ; $61c0: $ff
	inc a                                            ; $61c1: $3c
	rst $38                                          ; $61c2: $ff
	dec sp                                           ; $61c3: $3b
	rst SubAFromBC                                          ; $61c4: $e7
	rst $38                                          ; $61c5: $ff
	pop hl                                           ; $61c6: $e1
	and e                                            ; $61c7: $a3
	ld a, h                                          ; $61c8: $7c
	jr nc, jr_070_61a9                               ; $61c9: $30 $de

	rst $38                                          ; $61cb: $ff
	add e                                            ; $61cc: $83

jr_070_61cd:
	sub $6e                                          ; $61cd: $d6 $6e
	ld l, e                                          ; $61cf: $6b
	rst FarCall                                          ; $61d0: $f7
	halt                                             ; $61d1: $76
	db $db                                           ; $61d2: $db
	db $db                                           ; $61d3: $db
	db $ed                                           ; $61d4: $ed
	xor [hl]                                         ; $61d5: $ae
	push af                                          ; $61d6: $f5
	xor l                                            ; $61d7: $ad
	or $ff                                           ; $61d8: $f6 $ff
	or d                                             ; $61da: $b2
	ld a, [hl]                                       ; $61db: $7e
	sbc e                                            ; $61dc: $9b
	ccf                                              ; $61dd: $3f
	db $db                                           ; $61de: $db
	or [hl]                                          ; $61df: $b6
	sub $56                                          ; $61e0: $d6 $56
	halt                                             ; $61e2: $76
	ld d, d                                          ; $61e3: $52
	ld [hl], d                                       ; $61e4: $72
	ld h, d                                          ; $61e5: $62
	ld h, d                                          ; $61e6: $62
	ld h, b                                          ; $61e7: $60
	ld h, b                                          ; $61e8: $60
	ld [hl], h                                       ; $61e9: $74
	ld [hl], h                                       ; $61ea: $74
	ccf                                              ; $61eb: $3f
	jr nz, jr_070_61cd                               ; $61ec: $20 $df

	ret nz                                           ; $61ee: $c0

	ld a, h                                          ; $61ef: $7c
	ld e, b                                          ; $61f0: $58
	adc d                                            ; $61f1: $8a
	db $10                                           ; $61f2: $10
	ldh a, [$08]                                     ; $61f3: $f0 $08
	ld hl, sp+$7c                                    ; $61f5: $f8 $7c

jr_070_61f7:
	add h                                            ; $61f7: $84
	rst $38                                          ; $61f8: $ff
	inc bc                                           ; $61f9: $03
	ld hl, sp+$00                                    ; $61fa: $f8 $00
	ldh [rP1], a                                     ; $61fc: $e0 $00
	add a                                            ; $61fe: $87
	nop                                              ; $61ff: $00
	rra                                              ; $6200: $1f
	inc bc                                           ; $6201: $03
	ccf                                              ; $6202: $3f
	ld c, $7c                                        ; $6203: $0e $7c
	jr jr_070_61f7                                   ; $6205: $18 $f0

	ld a, b                                          ; $6207: $78
	ld b, c                                          ; $6208: $41
	adc c                                            ; $6209: $89
	jp $0c83                                         ; $620a: $c3 $83 $0c


	adc [hl]                                         ; $620d: $8e
	sub [hl]                                         ; $620e: $96
	jr @+$0e                                         ; $620f: $18 $0c

	jr nc, jr_070_622b                               ; $6211: $30 $18

	ld h, h                                          ; $6213: $64
	or h                                             ; $6214: $b4
	ret z                                            ; $6215: $c8

	ld [hl], b                                       ; $6216: $70
	sbc b                                            ; $6217: $98
	db $10                                           ; $6218: $10
	db $10                                           ; $6219: $10
	ld [hl], b                                       ; $621a: $70
	ld [hl], b                                       ; $621b: $70
	ldh [$a0], a                                     ; $621c: $e0 $a0
	ret nz                                           ; $621e: $c0

	ld b, b                                          ; $621f: $40
	ld [hl], a                                       ; $6220: $77
	cp d                                             ; $6221: $ba
	rst SubAFromDE                                          ; $6222: $df
	ret nz                                           ; $6223: $c0

	ld a, a                                          ; $6224: $7f
	add a                                            ; $6225: $87
	add b                                            ; $6226: $80
	ld h, b                                          ; $6227: $60
	and b                                            ; $6228: $a0
	or b                                             ; $6229: $b0
	ret nc                                           ; $622a: $d0

jr_070_622b:
	ldh a, [rSVBK]                                   ; $622b: $f0 $70
	ld a, b                                          ; $622d: $78
	sbc b                                            ; $622e: $98
	inc e                                            ; $622f: $1c
	db $e4                                           ; $6230: $e4
	or $fa                                           ; $6231: $f6 $fa
	adc l                                            ; $6233: $8d
	adc a                                            ; $6234: $8f
	db $e3                                           ; $6235: $e3

jr_070_6236:
	ld h, e                                          ; $6236: $63
	pop af                                           ; $6237: $f1
	ld de, $c838                                     ; $6238: $11 $38 $c8
	call z, $34f4                                    ; $623b: $cc $f4 $34
	inc a                                            ; $623e: $3c
	jp z, $36ce                                      ; $623f: $ca $ce $36

	or $fa                                           ; $6242: $f6 $fa
	ld a, [$9682]                                    ; $6244: $fa $82 $96
	add d                                            ; $6247: $82
	ret nz                                           ; $6248: $c0

	ld b, b                                          ; $6249: $40
	ldh [rAUD4LEN], a                                ; $624a: $e0 $20
	ld hl, sp-$68                                    ; $624c: $f8 $98
	ld a, [hl]                                       ; $624e: $7e
	ld a, [hl]                                       ; $624f: $7e
	ld d, e                                          ; $6250: $53

jr_070_6251:
	sub d                                            ; $6251: $92
	adc b                                            ; $6252: $88
	ld b, b                                          ; $6253: $40
	jr nz, jr_070_6236                               ; $6254: $20 $e0

	ldh a, [$f0]                                     ; $6256: $f0 $f0
	ret nc                                           ; $6258: $d0

	jr nc, @-$16                                     ; $6259: $30 $e8

	jr jr_070_6251                                   ; $625b: $18 $f4

	inc c                                            ; $625d: $0c
	db $fc                                           ; $625e: $fc
	inc b                                            ; $625f: $04
	ld a, [$cafe]                                    ; $6260: $fa $fe $ca
	ld a, $ea                                        ; $6263: $3e $ea
	ld e, $fa                                        ; $6265: $1e $fa
	ld c, $f6                                        ; $6267: $0e $f6
	ld a, [bc]                                       ; $6269: $0a
	ld [hl], a                                       ; $626a: $77
	cp $23                                           ; $626b: $fe $23
	nop                                              ; $626d: $00
	db $dd                                           ; $626e: $dd
	call z, $1190                                    ; $626f: $cc $90 $11
	call z, $bbcc                                    ; $6272: $cc $cc $bb
	adc b                                            ; $6275: $88
	adc b                                            ; $6276: $88
	nop                                              ; $6277: $00
	call z, $8833                                    ; $6278: $cc $33 $88
	nop                                              ; $627b: $00
	sbc c                                            ; $627c: $99
	sbc c                                            ; $627d: $99
	inc sp                                           ; $627e: $33
	add b                                            ; $627f: $80
	ld a, e                                          ; $6280: $7b
	ei                                               ; $6281: $fb
	sbc [hl]                                         ; $6282: $9e
	ld [hl+], a                                      ; $6283: $22
	ld [hl], a                                       ; $6284: $77
	or $6b                                           ; $6285: $f6 $6b
	ei                                               ; $6287: $fb
	sbc l                                            ; $6288: $9d
	adc b                                            ; $6289: $88
	xor d                                            ; $628a: $aa
	ld a, e                                          ; $628b: $7b
	db $fc                                           ; $628c: $fc
	sbc [hl]                                         ; $628d: $9e
	cp e                                             ; $628e: $bb
	xor d                                            ; $628f: $aa
	ld bc, $db80                                     ; $6290: $01 $80 $db
	adc [hl]                                         ; $6293: $8e
	call $c787                                       ; $6294: $cd $87 $c7
	inc bc                                           ; $6297: $03
	pop bc                                           ; $6298: $c1
	nop                                              ; $6299: $00
	ld hl, sp+$18                                    ; $629a: $f8 $18
	ret nc                                           ; $629c: $d0

	jr c, @-$52                                      ; $629d: $38 $ac

	ld [hl], b                                       ; $629f: $70
	cp $60                                           ; $62a0: $fe $60
	rst $38                                          ; $62a2: $ff
	ld b, b                                          ; $62a3: $40
	ld e, e                                          ; $62a4: $5b
	ld b, a                                          ; $62a5: $47
	inc d                                            ; $62a6: $14
	inc c                                            ; $62a7: $0c
	sbc [hl]                                         ; $62a8: $9e
	adc [hl]                                         ; $62a9: $8e
	db $dd                                           ; $62aa: $dd
	ld e, a                                          ; $62ab: $5f
	push af                                          ; $62ac: $f5
	ld l, l                                          ; $62ad: $6d
	ldh [c], a                                       ; $62ae: $e2
	ld [hl+], a                                      ; $62af: $22
	pop af                                           ; $62b0: $f1
	add l                                            ; $62b1: $85
	or c                                             ; $62b2: $b1
	rst $38                                          ; $62b3: $ff
	ret nc                                           ; $62b4: $d0

	rst $38                                          ; $62b5: $ff
	ret c                                            ; $62b6: $d8

	rst FarCall                                          ; $62b7: $f7
	call nc, Call_070_5273                           ; $62b8: $d4 $73 $52
	ld [hl], c                                       ; $62bb: $71

jr_070_62bc:
	ld d, c                                          ; $62bc: $51
	jr nz, jr_070_62df                               ; $62bd: $20 $20

	and b                                            ; $62bf: $a0
	and b                                            ; $62c0: $a0
	ret nz                                           ; $62c1: $c0

	ret nz                                           ; $62c2: $c0

	inc bc                                           ; $62c3: $03
	inc bc                                           ; $62c4: $03
	db $fc                                           ; $62c5: $fc
	rst $38                                          ; $62c6: $ff
	or b                                             ; $62c7: $b0
	rst GetHLinHL                                          ; $62c8: $cf
	or b                                             ; $62c9: $b0
	rst GetHLinHL                                          ; $62ca: $cf
	jr nc, @+$7d                                     ; $62cb: $30 $7b

	cp $8a                                           ; $62cd: $fe $8a
	ld h, b                                          ; $62cf: $60
	sbc a                                            ; $62d0: $9f
	ld h, b                                          ; $62d1: $60
	sbc a                                            ; $62d2: $9f
	call z, $f3ff                                    ; $62d3: $cc $ff $f3
	ccf                                              ; $62d6: $3f
	sbc a                                            ; $62d7: $9f
	adc [hl]                                         ; $62d8: $8e
	rst JumpTable                                          ; $62d9: $c7
	ret nz                                           ; $62da: $c0

	rrca                                             ; $62db: $0f
	nop                                              ; $62dc: $00
	ld c, $01                                        ; $62dd: $0e $01

jr_070_62df:
	rlca                                             ; $62df: $07
	ld bc, $0106                                     ; $62e0: $01 $06 $01
	inc bc                                           ; $62e3: $03
	cp a                                             ; $62e4: $bf
	add b                                            ; $62e5: $80
	add b                                            ; $62e6: $80
	add b                                            ; $62e7: $80
	add b                                            ; $62e8: $80
	ret nc                                           ; $62e9: $d0

	add b                                            ; $62ea: $80
	sbc c                                            ; $62eb: $99
	ret nz                                           ; $62ec: $c0

	ld a, h                                          ; $62ed: $7c
	ret nz                                           ; $62ee: $c0

	ld a, h                                          ; $62ef: $7c
	ld d, b                                          ; $62f0: $50
	call nc, Call_070_7f98                           ; $62f1: $d4 $98 $7f
	rst $38                                          ; $62f4: $ff
	rst $38                                          ; $62f5: $ff
	ldh [rIE], a                                     ; $62f6: $e0 $ff
	nop                                              ; $62f8: $00
	db $e3                                           ; $62f9: $e3
	ld e, $7f                                        ; $62fa: $1e $7f
	cp $c9                                           ; $62fc: $fe $c9
	ret z                                            ; $62fe: $c8

	db $ed                                           ; $62ff: $ed
	db $ec                                           ; $6300: $ec
	db $dd                                           ; $6301: $dd
	db $fc                                           ; $6302: $fc
	ld d, l                                          ; $6303: $55
	ld e, h                                          ; $6304: $5c
	daa                                              ; $6305: $27
	inc h                                            ; $6306: $24
	sbc h                                            ; $6307: $9c
	rra                                              ; $6308: $1f
	jr jr_070_62bc                                   ; $6309: $18 $b1

	cp h                                             ; $630b: $bc
	ld c, e                                          ; $630c: $4b
	inc bc                                           ; $630d: $03
	rlca                                             ; $630e: $07
	rlca                                             ; $630f: $07
	daa                                              ; $6310: $27
	rst SubAFromDE                                          ; $6311: $df
	rst $38                                          ; $6312: $ff
	add b                                            ; $6313: $80
	ld sp, hl                                        ; $6314: $f9
	and c                                            ; $6315: $a1
	cp $bc                                           ; $6316: $fe $bc
	rst $38                                          ; $6318: $ff
	rst AddAOntoHL                                          ; $6319: $ef
	or a                                             ; $631a: $b7
	cp $ab                                           ; $631b: $fe $ab
	or $bb                                           ; $631d: $f6 $bb
	or $bb                                           ; $631f: $f6 $bb
	and $bb                                          ; $6321: $e6 $bb
	xor l                                            ; $6323: $ad
	rst FarCall                                          ; $6324: $f7
	cp l                                             ; $6325: $bd
	rst SubAFromBC                                          ; $6326: $e7
	ld a, [$f4ce]                                    ; $6327: $fa $ce $f4
	sbc h                                            ; $632a: $9c
	db $ec                                           ; $632b: $ec
	cp h                                             ; $632c: $bc
	ld hl, sp+$38                                    ; $632d: $f8 $38
	ldh a, [rSVBK]                                   ; $632f: $f0 $70
	ldh [$60], a                                     ; $6331: $e0 $60
	call c, $86c0                                    ; $6333: $dc $c0 $86
	ld b, b                                          ; $6336: $40
	ret nz                                           ; $6337: $c0

	ld b, b                                          ; $6338: $40
	ld hl, sp+$78                                    ; $6339: $f8 $78
	db $ec                                           ; $633b: $ec
	ld a, h                                          ; $633c: $7c
	db $e4                                           ; $633d: $e4
	inc a                                            ; $633e: $3c
	ldh [c], a                                       ; $633f: $e2
	ld a, $f3                                        ; $6340: $3e $f3
	rra                                              ; $6342: $1f
	pop af                                           ; $6343: $f1
	rra                                              ; $6344: $1f
	ldh [$3f], a                                     ; $6345: $e0 $3f
	ldh [$7f], a                                     ; $6347: $e0 $7f
	ret nz                                           ; $6349: $c0

	ld a, a                                          ; $634a: $7f
	add b                                            ; $634b: $80
	rst $38                                          ; $634c: $ff
	nop                                              ; $634d: $00
	rst $38                                          ; $634e: $ff
	ccf                                              ; $634f: $3f
	ld b, b                                          ; $6350: $40
	sub l                                            ; $6351: $95
	ld a, a                                          ; $6352: $7f
	ld b, b                                          ; $6353: $40
	dec de                                           ; $6354: $1b
	rlca                                             ; $6355: $07
	sub [hl]                                         ; $6356: $96
	adc [hl]                                         ; $6357: $8e
	rst GetHLinHL                                          ; $6358: $cf
	ld e, a                                          ; $6359: $5f
	db $fd                                           ; $635a: $fd
	ld l, a                                          ; $635b: $6f
	ld [hl], a                                       ; $635c: $77
	ld b, b                                          ; $635d: $40
	ld e, a                                          ; $635e: $5f
	ld h, b                                          ; $635f: $60
	ld a, a                                          ; $6360: $7f
	cp $7f                                           ; $6361: $fe $7f
	ld h, d                                          ; $6363: $62
	ld a, a                                          ; $6364: $7f
	ld e, [hl]                                       ; $6365: $5e

jr_070_6366:
	ld [hl], e                                       ; $6366: $73
	ld h, b                                          ; $6367: $60
	sbc [hl]                                         ; $6368: $9e
	nop                                              ; $6369: $00
	ld b, a                                          ; $636a: $47
	ld h, b                                          ; $636b: $60
	ld a, a                                          ; $636c: $7f
	cp $9b                                           ; $636d: $fe $9b
	cp a                                             ; $636f: $bf
	ld a, [hl]                                       ; $6370: $7e
	ld l, e                                          ; $6371: $6b
	ld [$6073], a                                    ; $6372: $ea $73 $60
	sbc [hl]                                         ; $6375: $9e
	ld a, h                                          ; $6376: $7c
	ld c, a                                          ; $6377: $4f
	ld h, b                                          ; $6378: $60
	scf                                              ; $6379: $37
	and b                                            ; $637a: $a0
	sub h                                            ; $637b: $94
	ccf                                              ; $637c: $3f
	nop                                              ; $637d: $00
	sbc a                                            ; $637e: $9f
	add b                                            ; $637f: $80
	db $db                                           ; $6380: $db
	ld b, a                                          ; $6381: $47
	push hl                                          ; $6382: $e5
	ld l, a                                          ; $6383: $6f
	xor $2e                                          ; $6384: $ee $2e
	di                                               ; $6386: $f3
	ld d, e                                          ; $6387: $53
	and b                                            ; $6388: $a0
	ld [hl], a                                       ; $6389: $77
	ret nc                                           ; $638a: $d0

	ld a, a                                          ; $638b: $7f
	jp z, $819e                                      ; $638c: $ca $9e $81

	cp [hl]                                          ; $638f: $be
	add b                                            ; $6390: $80
	ret nc                                           ; $6391: $d0

	sbc c                                            ; $6392: $99
	ld c, e                                          ; $6393: $4b
	and b                                            ; $6394: $a0
	ld [hl], a                                       ; $6395: $77
	cp $98                                           ; $6396: $fe $98
	rst SubAFromDE                                          ; $6398: $df
	ld a, $fd                                        ; $6399: $3e $fd
	ld a, [hl]                                       ; $639b: $7e
	push de                                          ; $639c: $d5
	db $fc                                           ; $639d: $fc
	and a                                            ; $639e: $a7
	cpl                                              ; $639f: $2f
	and b                                            ; $63a0: $a0
	sub [hl]                                         ; $63a1: $96
	ld [$18f0], sp                                   ; $63a2: $08 $f0 $18
	db $fc                                           ; $63a5: $fc
	jr nc, jr_070_6366                               ; $63a6: $30 $be

	ld h, b                                          ; $63a8: $60
	rst SubAFromDE                                          ; $63a9: $df
	ld h, b                                          ; $63aa: $60
	ld l, a                                          ; $63ab: $6f
	and b                                            ; $63ac: $a0
	sub a                                            ; $63ad: $97
	rst SubAFromDE                                          ; $63ae: $df
	ld b, b                                          ; $63af: $40
	rst AddAOntoHL                                          ; $63b0: $ef
	ld h, b                                          ; $63b1: $60
	xor $21                                          ; $63b2: $ee $21
	rst FarCall                                          ; $63b4: $f7
	or a                                             ; $63b5: $b7
	daa                                              ; $63b6: $27
	and b                                            ; $63b7: $a0
	sbc c                                            ; $63b8: $99
	reti                                             ; $63b9: $d9


	nop                                              ; $63ba: $00
	db $fc                                           ; $63bb: $fc
	ld b, b                                          ; $63bc: $40
	db $fc                                           ; $63bd: $fc
	ret nc                                           ; $63be: $d0

	ld c, a                                          ; $63bf: $4f
	and b                                            ; $63c0: $a0
	ld a, e                                          ; $63c1: $7b
	cp $98                                           ; $63c2: $fe $98
	ld [bc], a                                       ; $63c4: $02
	db $fd                                           ; $63c5: $fd
	ld b, $ff                                        ; $63c6: $06 $ff
	inc e                                            ; $63c8: $1c
	rst $38                                          ; $63c9: $ff
	ld a, b                                          ; $63ca: $78
	ld e, a                                          ; $63cb: $5f
	and b                                            ; $63cc: $a0
	sub a                                            ; $63cd: $97
	cp $01                                           ; $63ce: $fe $01
	db $fd                                           ; $63d0: $fd
	inc bc                                           ; $63d1: $03
	rst $38                                          ; $63d2: $ff
	inc b                                            ; $63d3: $04
	rst $38                                          ; $63d4: $ff
	ld bc, $e47b                                     ; $63d5: $01 $7b $e4
	ld a, [hl]                                       ; $63d8: $7e
	rst GetHLinHL                                          ; $63d9: $cf
	adc d                                            ; $63da: $8a
	ld [hl], b                                       ; $63db: $70
	rra                                              ; $63dc: $1f
	ld e, $f9                                        ; $63dd: $1e $f9
	rst $38                                          ; $63df: $ff
	jr c, @+$01                                      ; $63e0: $38 $ff

	scf                                              ; $63e2: $37
	ld hl, sp+$6f                                    ; $63e3: $f8 $6f
	ldh a, [$df]                                     ; $63e5: $f0 $df
	ldh [$bf], a                                     ; $63e7: $e0 $bf
	ret nz                                           ; $63e9: $c0

	cp a                                             ; $63ea: $bf
	ret nz                                           ; $63eb: $c0

	sbc a                                            ; $63ec: $9f
	ldh [hDisp0_OBP1], a                                     ; $63ed: $e0 $87
	add b                                            ; $63ef: $80
	ld a, e                                          ; $63f0: $7b
	and [hl]                                         ; $63f1: $a6
	sub c                                            ; $63f2: $91
	ld bc, $038f                                     ; $63f3: $01 $8f $03
	dec e                                            ; $63f6: $1d
	ld b, $1a                                        ; $63f7: $06 $1a
	inc c                                            ; $63f9: $0c
	inc a                                            ; $63fa: $3c
	db $10                                           ; $63fb: $10
	ldh a, [$60]                                     ; $63fc: $f0 $60
	ldh [$c0], a                                     ; $63fe: $e0 $c0
	add b                                            ; $6400: $80
	cp e                                             ; $6401: $bb
	nop                                              ; $6402: $00
	ld bc, $0301                                     ; $6403: $01 $01 $03
	rlca                                             ; $6406: $07
	rrca                                             ; $6407: $0f
	sbc [hl]                                         ; $6408: $9e
	ld bc, $c077                                     ; $6409: $01 $77 $c0
	sbc h                                            ; $640c: $9c
	cp $07                                           ; $640d: $fe $07
	rst $38                                          ; $640f: $ff
	ld a, e                                          ; $6410: $7b
	cp b                                             ; $6411: $b8
	daa                                              ; $6412: $27
	ret nz                                           ; $6413: $c0

	sbc [hl]                                         ; $6414: $9e
	adc a                                            ; $6415: $8f
	ld a, e                                          ; $6416: $7b
	jp c, $0f9c                                      ; $6417: $da $9c $0f

	inc bc                                           ; $641a: $03
	sbc l                                            ; $641b: $9d
	dec de                                           ; $641c: $1b
	ret nz                                           ; $641d: $c0

	sbc e                                            ; $641e: $9b
	rst $38                                          ; $641f: $ff
	rlca                                             ; $6420: $07
	rst $38                                          ; $6421: $ff
	inc bc                                           ; $6422: $03
	rra                                              ; $6423: $1f
	add b                                            ; $6424: $80
	sbc e                                            ; $6425: $9b
	adc a                                            ; $6426: $8f
	add b                                            ; $6427: $80
	adc a                                            ; $6428: $8f
	add c                                            ; $6429: $81
	rrca                                             ; $642a: $0f
	add b                                            ; $642b: $80
	ld a, a                                          ; $642c: $7f
	ret nz                                           ; $642d: $c0

	sbc l                                            ; $642e: $9d
	ei                                               ; $642f: $fb
	rlca                                             ; $6430: $07
	ld a, e                                          ; $6431: $7b
	ld a, [$c017]                                    ; $6432: $fa $17 $c0
	sbc [hl]                                         ; $6435: $9e
	add e                                            ; $6436: $83
	daa                                              ; $6437: $27
	add b                                            ; $6438: $80
	cp c                                             ; $6439: $b9
	ld bc, $db80                                     ; $643a: $01 $80 $db
	adc [hl]                                         ; $643d: $8e
	call $c787                                       ; $643e: $cd $87 $c7
	inc bc                                           ; $6441: $03
	reti                                             ; $6442: $d9


	jr c, @-$4e                                      ; $6443: $38 $b0

	ld a, b                                          ; $6445: $78
	ld hl, sp+$60                                    ; $6446: $f8 $60
	db $fc                                           ; $6448: $fc
	ld b, b                                          ; $6449: $40
	cp $40                                           ; $644a: $fe $40
	rst $38                                          ; $644c: $ff
	nop                                              ; $644d: $00
	ld e, a                                          ; $644e: $5f
	rlca                                             ; $644f: $07
	add hl, de                                       ; $6450: $19
	add hl, bc                                       ; $6451: $09
	adc h                                            ; $6452: $8c
	sbc h                                            ; $6453: $9c
	db $db                                           ; $6454: $db
	ld e, a                                          ; $6455: $5f
	push af                                          ; $6456: $f5
	ld h, l                                          ; $6457: $65
	ldh [c], a                                       ; $6458: $e2
	ld [hl+], a                                      ; $6459: $22
	pop af                                           ; $645a: $f1
	add l                                            ; $645b: $85
	or c                                             ; $645c: $b1
	rst $38                                          ; $645d: $ff
	ret nc                                           ; $645e: $d0

	rst $38                                          ; $645f: $ff
	ret c                                            ; $6460: $d8

	rst FarCall                                          ; $6461: $f7
	call nc, Call_070_5273                           ; $6462: $d4 $73 $52
	ld [hl], c                                       ; $6465: $71
	ld d, c                                          ; $6466: $51
	jr nz, @+$22                                     ; $6467: $20 $20

	and b                                            ; $6469: $a0
	and b                                            ; $646a: $a0
	ret nz                                           ; $646b: $c0

	ret nz                                           ; $646c: $c0

	inc bc                                           ; $646d: $03
	inc bc                                           ; $646e: $03
	db $fc                                           ; $646f: $fc
	rst $38                                          ; $6470: $ff
	or b                                             ; $6471: $b0
	rst GetHLinHL                                          ; $6472: $cf
	or b                                             ; $6473: $b0
	rst GetHLinHL                                          ; $6474: $cf
	jr nc, @+$7d                                     ; $6475: $30 $7b

	cp $8a                                           ; $6477: $fe $8a
	ld h, b                                          ; $6479: $60
	sbc a                                            ; $647a: $9f
	ld h, b                                          ; $647b: $60
	sbc a                                            ; $647c: $9f
	call z, $f3ff                                    ; $647d: $cc $ff $f3
	ccf                                              ; $6480: $3f
	sbc a                                            ; $6481: $9f
	adc [hl]                                         ; $6482: $8e
	rst JumpTable                                          ; $6483: $c7
	ret nz                                           ; $6484: $c0

	ld c, $01                                        ; $6485: $0e $01
	rrca                                             ; $6487: $0f
	ld bc, $0107                                     ; $6488: $01 $07 $01
	ld b, $01                                        ; $648b: $06 $01
	inc bc                                           ; $648d: $03
	cp a                                             ; $648e: $bf
	add b                                            ; $648f: $80
	add b                                            ; $6490: $80
	add b                                            ; $6491: $80
	add b                                            ; $6492: $80
	ret nc                                           ; $6493: $d0

	add b                                            ; $6494: $80
	sbc b                                            ; $6495: $98
	ret nz                                           ; $6496: $c0

	ld a, h                                          ; $6497: $7c
	ret nz                                           ; $6498: $c0

	ld a, h                                          ; $6499: $7c
	ld d, b                                          ; $649a: $50
	call nc, Call_070_7f98                           ; $649b: $d4 $98 $7f
	rst $38                                          ; $649e: $ff
	rst $38                                          ; $649f: $ff
	ldh [$c3], a                                     ; $64a0: $e0 $c3
	ld a, $7f                                        ; $64a2: $3e $7f
	cp $9b                                           ; $64a4: $fe $9b
	sbc d                                            ; $64a6: $9a
	ret                                              ; $64a7: $c9


	ret z                                            ; $64a8: $c8

	cp l                                             ; $64a9: $bd
	db $fc                                           ; $64aa: $fc
	push de                                          ; $64ab: $d5
	db $fc                                           ; $64ac: $fc
	ld b, l                                          ; $64ad: $45
	ld d, h                                          ; $64ae: $54
	daa                                              ; $64af: $27
	inc h                                            ; $64b0: $24
	sbc h                                            ; $64b1: $9c
	rra                                              ; $64b2: $1f
	jr jr_070_64e6                                   ; $64b3: $18 $31

	cp h                                             ; $64b5: $bc
	inc bc                                           ; $64b6: $03
	inc bc                                           ; $64b7: $03
	rlca                                             ; $64b8: $07
	rlca                                             ; $64b9: $07
	daa                                              ; $64ba: $27
	rst SubAFromDE                                          ; $64bb: $df
	rst $38                                          ; $64bc: $ff
	add b                                            ; $64bd: $80
	ld sp, hl                                        ; $64be: $f9
	and c                                            ; $64bf: $a1
	cp $bc                                           ; $64c0: $fe $bc
	rst $38                                          ; $64c2: $ff
	rst AddAOntoHL                                          ; $64c3: $ef
	or a                                             ; $64c4: $b7
	cp $ab                                           ; $64c5: $fe $ab
	or $bb                                           ; $64c7: $f6 $bb
	or $bb                                           ; $64c9: $f6 $bb
	and $bb                                          ; $64cb: $e6 $bb
	xor l                                            ; $64cd: $ad
	rst FarCall                                          ; $64ce: $f7
	cp l                                             ; $64cf: $bd
	rst SubAFromBC                                          ; $64d0: $e7
	ld a, [$f4ce]                                    ; $64d1: $fa $ce $f4
	sbc h                                            ; $64d4: $9c
	db $ec                                           ; $64d5: $ec
	cp h                                             ; $64d6: $bc
	ld hl, sp+$38                                    ; $64d7: $f8 $38
	ldh a, [rSVBK]                                   ; $64d9: $f0 $70
	ldh [$60], a                                     ; $64db: $e0 $60
	call c, $86c0                                    ; $64dd: $dc $c0 $86
	ld b, b                                          ; $64e0: $40
	ret nz                                           ; $64e1: $c0

	ld b, b                                          ; $64e2: $40
	ld hl, sp+$78                                    ; $64e3: $f8 $78
	db $ec                                           ; $64e5: $ec

jr_070_64e6:
	ld a, h                                          ; $64e6: $7c
	db $e4                                           ; $64e7: $e4
	inc a                                            ; $64e8: $3c
	ldh [c], a                                       ; $64e9: $e2
	ld a, $f3                                        ; $64ea: $3e $f3
	rra                                              ; $64ec: $1f
	pop af                                           ; $64ed: $f1
	rra                                              ; $64ee: $1f
	ldh [$3f], a                                     ; $64ef: $e0 $3f
	ldh [$7f], a                                     ; $64f1: $e0 $7f
	ret nz                                           ; $64f3: $c0

	ld a, a                                          ; $64f4: $7f
	add b                                            ; $64f5: $80
	rst $38                                          ; $64f6: $ff
	nop                                              ; $64f7: $00
	rst $38                                          ; $64f8: $ff
	ccf                                              ; $64f9: $3f
	ld b, b                                          ; $64fa: $40
	sub l                                            ; $64fb: $95
	ld a, a                                          ; $64fc: $7f
	nop                                              ; $64fd: $00
	rra                                              ; $64fe: $1f
	rlca                                             ; $64ff: $07
	sbc h                                            ; $6500: $9c
	adc h                                            ; $6501: $8c
	rst GetHLinHL                                          ; $6502: $cf
	ld e, a                                          ; $6503: $5f
	db $fd                                           ; $6504: $fd
	ld l, a                                          ; $6505: $6f
	ld [hl], a                                       ; $6506: $77
	ld b, b                                          ; $6507: $40
	ld h, a                                          ; $6508: $67
	ld h, b                                          ; $6509: $60
	sbc [hl]                                         ; $650a: $9e
	rrca                                             ; $650b: $0f
	cp a                                             ; $650c: $bf
	rrca                                             ; $650d: $0f
	rlca                                             ; $650e: $07
	ld a, e                                          ; $650f: $7b
	ld e, [hl]                                       ; $6510: $5e
	ld [hl], e                                       ; $6511: $73
	ld h, b                                          ; $6512: $60
	sbc [hl]                                         ; $6513: $9e
	nop                                              ; $6514: $00
	ld c, a                                          ; $6515: $4f
	ld h, b                                          ; $6516: $60
	ld a, e                                          ; $6517: $7b
	cp c                                             ; $6518: $b9
	sub h                                            ; $6519: $94
	nop                                              ; $651a: $00
	cp a                                             ; $651b: $bf
	ld a, [hl]                                       ; $651c: $7e
	set 1, d                                         ; $651d: $cb $ca
	db $fd                                           ; $651f: $fd
	db $fc                                           ; $6520: $fc
	db $dd                                           ; $6521: $dd
	db $fc                                           ; $6522: $fc
	ld d, l                                          ; $6523: $55
	ld e, h                                          ; $6524: $5c
	ld c, a                                          ; $6525: $4f
	ld h, b                                          ; $6526: $60
	scf                                              ; $6527: $37
	and b                                            ; $6528: $a0
	sub h                                            ; $6529: $94
	ccf                                              ; $652a: $3f
	nop                                              ; $652b: $00
	sbc a                                            ; $652c: $9f
	add b                                            ; $652d: $80
	db $db                                           ; $652e: $db
	ld b, a                                          ; $652f: $47
	push hl                                          ; $6530: $e5
	ld l, a                                          ; $6531: $6f
	xor $2e                                          ; $6532: $ee $2e
	di                                               ; $6534: $f3
	ld c, a                                          ; $6535: $4f
	and b                                            ; $6536: $a0
	cp e                                             ; $6537: $bb
	rlca                                             ; $6538: $07
	inc bc                                           ; $6539: $03
	add c                                            ; $653a: $81
	add b                                            ; $653b: $80
	ret nc                                           ; $653c: $d0

	sbc b                                            ; $653d: $98
	ld c, e                                          ; $653e: $4b
	and b                                            ; $653f: $a0
	ld [hl], a                                       ; $6540: $77
	cp $98                                           ; $6541: $fe $98
	rst SubAFromDE                                          ; $6543: $df
	ld a, $fd                                        ; $6544: $3e $fd
	ld a, [hl]                                       ; $6546: $7e
	push de                                          ; $6547: $d5
	db $fc                                           ; $6548: $fc
	and a                                            ; $6549: $a7
	dec sp                                           ; $654a: $3b
	and b                                            ; $654b: $a0
	sbc h                                            ; $654c: $9c
	pop bc                                           ; $654d: $c1
	nop                                              ; $654e: $00
	ret c                                            ; $654f: $d8

	ld a, e                                          ; $6550: $7b
	sbc [hl]                                         ; $6551: $9e
	sbc c                                            ; $6552: $99
	db $fc                                           ; $6553: $fc
	ld h, b                                          ; $6554: $60
	sbc $60                                          ; $6555: $de $60
	rst $38                                          ; $6557: $ff
	ld b, b                                          ; $6558: $40
	ld l, a                                          ; $6559: $6f
	and b                                            ; $655a: $a0
	sub a                                            ; $655b: $97
	rst SubAFromDE                                          ; $655c: $df
	ld b, b                                          ; $655d: $40
	rst AddAOntoHL                                          ; $655e: $ef
	ld h, b                                          ; $655f: $60
	xor $21                                          ; $6560: $ee $21
	rst FarCall                                          ; $6562: $f7
	or a                                             ; $6563: $b7
	daa                                              ; $6564: $27
	and b                                            ; $6565: $a0
	sbc c                                            ; $6566: $99
	ret c                                            ; $6567: $d8

	nop                                              ; $6568: $00
	db $fc                                           ; $6569: $fc
	ld b, b                                          ; $656a: $40
	db $fc                                           ; $656b: $fc
	ret nc                                           ; $656c: $d0

	ld c, a                                          ; $656d: $4f
	and b                                            ; $656e: $a0
	ld a, e                                          ; $656f: $7b
	cp $98                                           ; $6570: $fe $98
	ld [bc], a                                       ; $6572: $02
	db $fd                                           ; $6573: $fd
	ld b, $ff                                        ; $6574: $06 $ff
	inc e                                            ; $6576: $1c
	rst $38                                          ; $6577: $ff
	ld a, b                                          ; $6578: $78
	ld e, a                                          ; $6579: $5f
	and b                                            ; $657a: $a0
	sub a                                            ; $657b: $97
	cp $01                                           ; $657c: $fe $01
	db $fd                                           ; $657e: $fd
	inc bc                                           ; $657f: $03
	rst $38                                          ; $6580: $ff
	inc b                                            ; $6581: $04
	rst $38                                          ; $6582: $ff
	ld bc, $e47b                                     ; $6583: $01 $7b $e4
	ld a, [hl]                                       ; $6586: $7e
	rst GetHLinHL                                          ; $6587: $cf
	adc d                                            ; $6588: $8a
	ld [hl], b                                       ; $6589: $70
	rra                                              ; $658a: $1f
	ld e, $f9                                        ; $658b: $1e $f9
	rst $38                                          ; $658d: $ff
	jr c, @+$01                                      ; $658e: $38 $ff

	scf                                              ; $6590: $37
	ld hl, sp+$6f                                    ; $6591: $f8 $6f
	ldh a, [$df]                                     ; $6593: $f0 $df
	ldh [$bf], a                                     ; $6595: $e0 $bf
	ret nz                                           ; $6597: $c0

	cp a                                             ; $6598: $bf
	ret nz                                           ; $6599: $c0

	sbc a                                            ; $659a: $9f
	ldh [hDisp0_OBP1], a                                     ; $659b: $e0 $87
	add b                                            ; $659d: $80
	ld a, e                                          ; $659e: $7b
	and [hl]                                         ; $659f: $a6
	sub c                                            ; $65a0: $91
	ld bc, $038f                                     ; $65a1: $01 $8f $03
	dec e                                            ; $65a4: $1d
	ld b, $1a                                        ; $65a5: $06 $1a
	inc c                                            ; $65a7: $0c

jr_070_65a8:
	inc a                                            ; $65a8: $3c
	db $10                                           ; $65a9: $10
	ldh a, [$60]                                     ; $65aa: $f0 $60
	ldh [$c0], a                                     ; $65ac: $e0 $c0
	add b                                            ; $65ae: $80
	cp e                                             ; $65af: $bb
	nop                                              ; $65b0: $00
	ld bc, $0301                                     ; $65b1: $01 $01 $03
	rlca                                             ; $65b4: $07
	rrca                                             ; $65b5: $0f
	sbc [hl]                                         ; $65b6: $9e
	ld bc, $c077                                     ; $65b7: $01 $77 $c0
	sbc h                                            ; $65ba: $9c
	cp $07                                           ; $65bb: $fe $07
	rst $38                                          ; $65bd: $ff
	ld a, e                                          ; $65be: $7b
	cp b                                             ; $65bf: $b8
	daa                                              ; $65c0: $27
	ret nz                                           ; $65c1: $c0

	sbc [hl]                                         ; $65c2: $9e
	adc a                                            ; $65c3: $8f
	ld a, e                                          ; $65c4: $7b
	jp c, $0f9c                                      ; $65c5: $da $9c $0f

	inc bc                                           ; $65c8: $03
	sbc l                                            ; $65c9: $9d
	dec de                                           ; $65ca: $1b
	ret nz                                           ; $65cb: $c0

	sbc e                                            ; $65cc: $9b
	rst $38                                          ; $65cd: $ff
	rlca                                             ; $65ce: $07
	rst $38                                          ; $65cf: $ff
	inc bc                                           ; $65d0: $03
	rra                                              ; $65d1: $1f
	add b                                            ; $65d2: $80
	sbc e                                            ; $65d3: $9b
	adc a                                            ; $65d4: $8f
	add b                                            ; $65d5: $80
	adc a                                            ; $65d6: $8f
	add c                                            ; $65d7: $81
	rra                                              ; $65d8: $1f
	add b                                            ; $65d9: $80
	ld a, a                                          ; $65da: $7f
	ret z                                            ; $65db: $c8

	ld [hl], a                                       ; $65dc: $77
	ret nz                                           ; $65dd: $c0

	sbc l                                            ; $65de: $9d
	ei                                               ; $65df: $fb
	rlca                                             ; $65e0: $07
	ld a, e                                          ; $65e1: $7b
	ld a, [$c033]                                    ; $65e2: $fa $33 $c0
	sub l                                            ; $65e5: $95
	ld b, a                                          ; $65e6: $47
	ret nz                                           ; $65e7: $c0

	rst GetHLinHL                                          ; $65e8: $cf
	ret nz                                           ; $65e9: $c0

	rst GetHLinHL                                          ; $65ea: $cf
	pop bc                                           ; $65eb: $c1
	ld c, a                                          ; $65ec: $4f
	jp $86dd                                         ; $65ed: $c3 $dd $86


	cpl                                              ; $65f0: $2f
	ret nz                                           ; $65f1: $c0

	and b                                            ; $65f2: $a0
	ld bc, $db80                                     ; $65f3: $01 $80 $db
	adc [hl]                                         ; $65f6: $8e
	call $c787                                       ; $65f7: $cd $87 $c7
	inc bc                                           ; $65fa: $03
	pop bc                                           ; $65fb: $c1
	nop                                              ; $65fc: $00
	ret c                                            ; $65fd: $d8

	jr c, jr_070_65a8                                ; $65fe: $38 $a8

	ld [hl], b                                       ; $6600: $70
	db $fc                                           ; $6601: $fc
	ld h, b                                          ; $6602: $60
	sbc $60                                          ; $6603: $de $60
	rst $38                                          ; $6605: $ff
	ld b, b                                          ; $6606: $40
	ld e, a                                          ; $6607: $5f
	rlca                                             ; $6608: $07
	dec e                                            ; $6609: $1d
	dec c                                            ; $660a: $0d
	adc h                                            ; $660b: $8c
	sbc h                                            ; $660c: $9c
	db $db                                           ; $660d: $db
	ld e, a                                          ; $660e: $5f
	push af                                          ; $660f: $f5
	ld l, l                                          ; $6610: $6d
	ldh [c], a                                       ; $6611: $e2
	ld [hl+], a                                      ; $6612: $22
	pop af                                           ; $6613: $f1
	add l                                            ; $6614: $85
	or c                                             ; $6615: $b1
	rst $38                                          ; $6616: $ff
	ret nc                                           ; $6617: $d0

	rst $38                                          ; $6618: $ff
	ret c                                            ; $6619: $d8

	rst FarCall                                          ; $661a: $f7
	call nc, Call_070_5273                           ; $661b: $d4 $73 $52
	ld [hl], c                                       ; $661e: $71
	ld d, c                                          ; $661f: $51
	jr nz, @+$22                                     ; $6620: $20 $20

	and b                                            ; $6622: $a0
	and b                                            ; $6623: $a0
	ret nz                                           ; $6624: $c0

	ret nz                                           ; $6625: $c0

	inc bc                                           ; $6626: $03
	inc bc                                           ; $6627: $03
	db $fc                                           ; $6628: $fc
	rst $38                                          ; $6629: $ff
	or b                                             ; $662a: $b0
	rst GetHLinHL                                          ; $662b: $cf
	or b                                             ; $662c: $b0
	rst GetHLinHL                                          ; $662d: $cf
	jr nc, @+$7d                                     ; $662e: $30 $7b

	cp $8a                                           ; $6630: $fe $8a
	ld h, b                                          ; $6632: $60
	sbc a                                            ; $6633: $9f
	ld h, b                                          ; $6634: $60
	sbc a                                            ; $6635: $9f
	call z, $f3ff                                    ; $6636: $cc $ff $f3
	ccf                                              ; $6639: $3f
	sbc a                                            ; $663a: $9f
	adc [hl]                                         ; $663b: $8e
	rst JumpTable                                          ; $663c: $c7
	ret nz                                           ; $663d: $c0

	ld c, $01                                        ; $663e: $0e $01
	rrca                                             ; $6640: $0f
	ld bc, $0107                                     ; $6641: $01 $07 $01
	ld b, $01                                        ; $6644: $06 $01
	inc bc                                           ; $6646: $03
	cp a                                             ; $6647: $bf
	add b                                            ; $6648: $80
	add b                                            ; $6649: $80
	add b                                            ; $664a: $80
	add b                                            ; $664b: $80
	ret nc                                           ; $664c: $d0

	add b                                            ; $664d: $80
	sbc b                                            ; $664e: $98
	ret nz                                           ; $664f: $c0

	ld a, h                                          ; $6650: $7c
	ret nz                                           ; $6651: $c0

	ld a, h                                          ; $6652: $7c
	ld d, b                                          ; $6653: $50
	call nc, Call_070_7f98                           ; $6654: $d4 $98 $7f
	rst $38                                          ; $6657: $ff
	rst $38                                          ; $6658: $ff
	ldh [rIE], a                                     ; $6659: $e0 $ff
	nop                                              ; $665b: $00
	ld a, a                                          ; $665c: $7f
	cp $db                                           ; $665d: $fe $db
	jp c, $c8c9                                      ; $665f: $da $c9 $c8

	db $fd                                           ; $6662: $fd
	db $fc                                           ; $6663: $fc
	or l                                             ; $6664: $b5
	db $fc                                           ; $6665: $fc
	ld d, l                                          ; $6666: $55
	ld d, h                                          ; $6667: $54
	daa                                              ; $6668: $27
	inc h                                            ; $6669: $24
	sbc h                                            ; $666a: $9c
	rra                                              ; $666b: $1f
	jr jr_070_669f                                   ; $666c: $18 $31

	cp h                                             ; $666e: $bc
	inc bc                                           ; $666f: $03
	inc bc                                           ; $6670: $03
	rlca                                             ; $6671: $07
	rlca                                             ; $6672: $07
	daa                                              ; $6673: $27
	rst SubAFromDE                                          ; $6674: $df
	rst $38                                          ; $6675: $ff
	add b                                            ; $6676: $80
	ld sp, hl                                        ; $6677: $f9
	and c                                            ; $6678: $a1
	cp $bc                                           ; $6679: $fe $bc
	rst $38                                          ; $667b: $ff
	rst AddAOntoHL                                          ; $667c: $ef
	or a                                             ; $667d: $b7
	cp $ab                                           ; $667e: $fe $ab
	or $bb                                           ; $6680: $f6 $bb
	or $bb                                           ; $6682: $f6 $bb
	and $bb                                          ; $6684: $e6 $bb
	xor l                                            ; $6686: $ad
	rst FarCall                                          ; $6687: $f7
	cp l                                             ; $6688: $bd
	rst SubAFromBC                                          ; $6689: $e7
	ld a, [$f4ce]                                    ; $668a: $fa $ce $f4
	sbc h                                            ; $668d: $9c
	db $ec                                           ; $668e: $ec
	cp h                                             ; $668f: $bc
	ld hl, sp+$38                                    ; $6690: $f8 $38
	ldh a, [rSVBK]                                   ; $6692: $f0 $70
	ldh [$60], a                                     ; $6694: $e0 $60
	call c, $86c0                                    ; $6696: $dc $c0 $86
	ld b, b                                          ; $6699: $40
	ret nz                                           ; $669a: $c0

	ld b, b                                          ; $669b: $40
	ld hl, sp+$78                                    ; $669c: $f8 $78
	db $ec                                           ; $669e: $ec

jr_070_669f:
	ld a, h                                          ; $669f: $7c
	db $e4                                           ; $66a0: $e4
	inc a                                            ; $66a1: $3c
	ldh [c], a                                       ; $66a2: $e2
	ld a, $f3                                        ; $66a3: $3e $f3
	rra                                              ; $66a5: $1f
	pop af                                           ; $66a6: $f1
	rra                                              ; $66a7: $1f
	ldh [$3f], a                                     ; $66a8: $e0 $3f
	ldh [$7f], a                                     ; $66aa: $e0 $7f
	ret nz                                           ; $66ac: $c0

	ld a, a                                          ; $66ad: $7f
	add b                                            ; $66ae: $80
	rst $38                                          ; $66af: $ff
	nop                                              ; $66b0: $00
	rst $38                                          ; $66b1: $ff
	ccf                                              ; $66b2: $3f
	ld b, b                                          ; $66b3: $40
	sub l                                            ; $66b4: $95
	ld a, a                                          ; $66b5: $7f
	nop                                              ; $66b6: $00
	rra                                              ; $66b7: $1f
	rlca                                             ; $66b8: $07
	sbc h                                            ; $66b9: $9c
	adc h                                            ; $66ba: $8c
	rst GetHLinHL                                          ; $66bb: $cf
	ld e, a                                          ; $66bc: $5f
	db $fd                                           ; $66bd: $fd
	ld l, a                                          ; $66be: $6f
	ld [hl], a                                       ; $66bf: $77
	ld b, b                                          ; $66c0: $40
	ld h, a                                          ; $66c1: $67
	ld h, b                                          ; $66c2: $60
	sbc [hl]                                         ; $66c3: $9e
	rrca                                             ; $66c4: $0f
	cp a                                             ; $66c5: $bf
	rrca                                             ; $66c6: $0f
	rlca                                             ; $66c7: $07
	ld a, e                                          ; $66c8: $7b
	ld e, [hl]                                       ; $66c9: $5e
	ld [hl], e                                       ; $66ca: $73
	ld h, b                                          ; $66cb: $60
	sbc [hl]                                         ; $66cc: $9e
	nop                                              ; $66cd: $00
	ld b, a                                          ; $66ce: $47
	ld h, b                                          ; $66cf: $60
	ld a, a                                          ; $66d0: $7f
	cp $95                                           ; $66d1: $fe $95
	cp a                                             ; $66d3: $bf
	ld a, [hl]                                       ; $66d4: $7e
	set 1, d                                         ; $66d5: $cb $ca
	db $fd                                           ; $66d7: $fd
	db $fc                                           ; $66d8: $fc
	push af                                          ; $66d9: $f5
	db $fc                                           ; $66da: $fc
	ld d, l                                          ; $66db: $55
	ld [hl], h                                       ; $66dc: $74
	ld c, a                                          ; $66dd: $4f
	ld h, b                                          ; $66de: $60
	scf                                              ; $66df: $37
	and b                                            ; $66e0: $a0
	sub h                                            ; $66e1: $94
	ccf                                              ; $66e2: $3f
	nop                                              ; $66e3: $00
	sbc a                                            ; $66e4: $9f
	add b                                            ; $66e5: $80
	db $db                                           ; $66e6: $db
	ld b, a                                          ; $66e7: $47
	push hl                                          ; $66e8: $e5
	ld l, a                                          ; $66e9: $6f
	xor $2e                                          ; $66ea: $ee $2e
	di                                               ; $66ec: $f3
	ld c, a                                          ; $66ed: $4f
	and b                                            ; $66ee: $a0
	cp e                                             ; $66ef: $bb
	rlca                                             ; $66f0: $07
	inc bc                                           ; $66f1: $03
	add c                                            ; $66f2: $81
	add b                                            ; $66f3: $80
	ret nc                                           ; $66f4: $d0

	sbc b                                            ; $66f5: $98
	ld c, e                                          ; $66f6: $4b
	and b                                            ; $66f7: $a0
	ld [hl], a                                       ; $66f8: $77
	cp $98                                           ; $66f9: $fe $98
	rst SubAFromDE                                          ; $66fb: $df
	ld a, $fd                                        ; $66fc: $3e $fd
	ld a, [hl]                                       ; $66fe: $7e
	push de                                          ; $66ff: $d5
	db $fc                                           ; $6700: $fc
	and a                                            ; $6701: $a7
	inc bc                                           ; $6702: $03
	and b                                            ; $6703: $a0
	ld [hl], a                                       ; $6704: $77
	and b                                            ; $6705: $a0
	sub a                                            ; $6706: $97
	rst SubAFromDE                                          ; $6707: $df
	ld b, b                                          ; $6708: $40
	rst AddAOntoHL                                          ; $6709: $ef
	ld h, b                                          ; $670a: $60
	xor $21                                          ; $670b: $ee $21
	rst FarCall                                          ; $670d: $f7
	or a                                             ; $670e: $b7
	daa                                              ; $670f: $27
	and b                                            ; $6710: $a0
	sbc c                                            ; $6711: $99
	ret c                                            ; $6712: $d8

	nop                                              ; $6713: $00
	db $fc                                           ; $6714: $fc
	ld b, b                                          ; $6715: $40
	db $fc                                           ; $6716: $fc
	ret nc                                           ; $6717: $d0

	ld c, a                                          ; $6718: $4f
	and b                                            ; $6719: $a0
	ld a, e                                          ; $671a: $7b
	cp $98                                           ; $671b: $fe $98
	ld [bc], a                                       ; $671d: $02
	db $fd                                           ; $671e: $fd
	ld b, $ff                                        ; $671f: $06 $ff
	inc e                                            ; $6721: $1c
	rst $38                                          ; $6722: $ff
	ld a, b                                          ; $6723: $78
	ld e, a                                          ; $6724: $5f
	and b                                            ; $6725: $a0
	sub a                                            ; $6726: $97
	cp $01                                           ; $6727: $fe $01
	db $fd                                           ; $6729: $fd
	inc bc                                           ; $672a: $03
	rst $38                                          ; $672b: $ff
	inc b                                            ; $672c: $04
	rst $38                                          ; $672d: $ff
	ld bc, $e47b                                     ; $672e: $01 $7b $e4
	ld a, [hl]                                       ; $6731: $7e
	rst GetHLinHL                                          ; $6732: $cf
	adc d                                            ; $6733: $8a
	ld [hl], b                                       ; $6734: $70
	rra                                              ; $6735: $1f
	ld e, $f9                                        ; $6736: $1e $f9
	rst $38                                          ; $6738: $ff
	jr c, @+$01                                      ; $6739: $38 $ff

	scf                                              ; $673b: $37
	ld hl, sp+$6f                                    ; $673c: $f8 $6f
	ldh a, [$df]                                     ; $673e: $f0 $df
	ldh [$bf], a                                     ; $6740: $e0 $bf
	ret nz                                           ; $6742: $c0

	cp a                                             ; $6743: $bf
	ret nz                                           ; $6744: $c0

	sbc a                                            ; $6745: $9f
	ldh [hDisp0_OBP1], a                                     ; $6746: $e0 $87
	add b                                            ; $6748: $80
	ld a, e                                          ; $6749: $7b
	and [hl]                                         ; $674a: $a6
	sub c                                            ; $674b: $91
	ld bc, $038f                                     ; $674c: $01 $8f $03
	dec e                                            ; $674f: $1d
	ld b, $1a                                        ; $6750: $06 $1a
	inc c                                            ; $6752: $0c
	inc a                                            ; $6753: $3c
	db $10                                           ; $6754: $10
	ldh a, [$60]                                     ; $6755: $f0 $60
	ldh [$c0], a                                     ; $6757: $e0 $c0
	add b                                            ; $6759: $80
	cp e                                             ; $675a: $bb
	nop                                              ; $675b: $00
	ld bc, $0301                                     ; $675c: $01 $01 $03
	rlca                                             ; $675f: $07
	rrca                                             ; $6760: $0f
	sbc [hl]                                         ; $6761: $9e
	ld bc, $c077                                     ; $6762: $01 $77 $c0
	sbc h                                            ; $6765: $9c
	cp $07                                           ; $6766: $fe $07
	rst $38                                          ; $6768: $ff
	ld a, e                                          ; $6769: $7b
	cp b                                             ; $676a: $b8
	daa                                              ; $676b: $27
	ret nz                                           ; $676c: $c0

	sbc [hl]                                         ; $676d: $9e
	adc a                                            ; $676e: $8f
	ld a, e                                          ; $676f: $7b
	jp c, $0f9c                                      ; $6770: $da $9c $0f

	inc bc                                           ; $6773: $03
	sbc l                                            ; $6774: $9d
	dec de                                           ; $6775: $1b
	ret nz                                           ; $6776: $c0

	sbc e                                            ; $6777: $9b
	rst $38                                          ; $6778: $ff
	rlca                                             ; $6779: $07
	rst $38                                          ; $677a: $ff
	inc bc                                           ; $677b: $03
	rra                                              ; $677c: $1f
	add b                                            ; $677d: $80
	sbc e                                            ; $677e: $9b
	adc a                                            ; $677f: $8f
	add b                                            ; $6780: $80
	adc a                                            ; $6781: $8f
	add c                                            ; $6782: $81
	rrca                                             ; $6783: $0f
	add b                                            ; $6784: $80
	ld a, a                                          ; $6785: $7f
	ret nz                                           ; $6786: $c0

	sbc l                                            ; $6787: $9d
	ei                                               ; $6788: $fb
	rlca                                             ; $6789: $07
	ld a, e                                          ; $678a: $7b
	ld a, [$c017]                                    ; $678b: $fa $17 $c0
	sbc [hl]                                         ; $678e: $9e
	add e                                            ; $678f: $83
	daa                                              ; $6790: $27
	add b                                            ; $6791: $80
	sub a                                            ; $6792: $97
	ld bc, $db98                                     ; $6793: $01 $98 $db

jr_070_6796:
	adc [hl]                                         ; $6796: $8e
	call $c787                                       ; $6797: $cd $87 $c7
	inc bc                                           ; $679a: $03
	pop bc                                           ; $679b: $c1
	cp a                                             ; $679c: $bf
	ld hl, sp-$08                                    ; $679d: $f8 $f8
	add b                                            ; $679f: $80
	jr c, jr_070_6796                                ; $67a0: $38 $f4

	ld a, b                                          ; $67a2: $78
	sbc $60                                          ; $67a3: $de $60
	rst $38                                          ; $67a5: $ff
	ld b, b                                          ; $67a6: $40
	ld e, a                                          ; $67a7: $5f
	rlca                                             ; $67a8: $07
	dec e                                            ; $67a9: $1d
	dec c                                            ; $67aa: $0d
	adc h                                            ; $67ab: $8c
	sbc h                                            ; $67ac: $9c
	db $db                                           ; $67ad: $db
	ld e, a                                          ; $67ae: $5f
	db $fd                                           ; $67af: $fd
	ld l, l                                          ; $67b0: $6d
	ldh [c], a                                       ; $67b1: $e2
	ld [hl+], a                                      ; $67b2: $22
	pop af                                           ; $67b3: $f1
	or c                                             ; $67b4: $b1
	rst $38                                          ; $67b5: $ff
	ret nc                                           ; $67b6: $d0

	rst $38                                          ; $67b7: $ff
	ret c                                            ; $67b8: $d8

	rst FarCall                                          ; $67b9: $f7
	call nc, Call_070_5273                           ; $67ba: $d4 $73 $52
	ld [hl], c                                       ; $67bd: $71
	ld d, c                                          ; $67be: $51
	rst SubAFromDE                                          ; $67bf: $df
	jr nz, @-$1f                                     ; $67c0: $20 $df

	and b                                            ; $67c2: $a0
	rst SubAFromDE                                          ; $67c3: $df
	ret nz                                           ; $67c4: $c0

	rst SubAFromDE                                          ; $67c5: $df
	inc bc                                           ; $67c6: $03
	sbc b                                            ; $67c7: $98
	db $fc                                           ; $67c8: $fc
	rst $38                                          ; $67c9: $ff
	or b                                             ; $67ca: $b0
	rst GetHLinHL                                          ; $67cb: $cf
	or b                                             ; $67cc: $b0
	rst GetHLinHL                                          ; $67cd: $cf
	jr nc, @+$7d                                     ; $67ce: $30 $7b

	cp $8a                                           ; $67d0: $fe $8a
	ld h, b                                          ; $67d2: $60
	sbc a                                            ; $67d3: $9f
	ld h, b                                          ; $67d4: $60
	sbc a                                            ; $67d5: $9f
	call z, $f3ff                                    ; $67d6: $cc $ff $f3
	ccf                                              ; $67d9: $3f
	sbc a                                            ; $67da: $9f
	adc [hl]                                         ; $67db: $8e
	rst JumpTable                                          ; $67dc: $c7
	ret nz                                           ; $67dd: $c0

	rrca                                             ; $67de: $0f
	nop                                              ; $67df: $00
	rrca                                             ; $67e0: $0f
	ld bc, $0107                                     ; $67e1: $01 $07 $01
	ld b, $01                                        ; $67e4: $06 $01
	inc bc                                           ; $67e6: $03
	cp a                                             ; $67e7: $bf
	add b                                            ; $67e8: $80
	add b                                            ; $67e9: $80
	add b                                            ; $67ea: $80
	add b                                            ; $67eb: $80
	ret nc                                           ; $67ec: $d0

	add b                                            ; $67ed: $80
	sbc b                                            ; $67ee: $98
	ret nz                                           ; $67ef: $c0

	ld a, h                                          ; $67f0: $7c
	ret nz                                           ; $67f1: $c0

	ld a, h                                          ; $67f2: $7c
	ld d, b                                          ; $67f3: $50
	call nc, Call_070_7f98                           ; $67f4: $d4 $98 $7f
	rst $38                                          ; $67f7: $ff
	rst $38                                          ; $67f8: $ff
	ldh [rIE], a                                     ; $67f9: $e0 $ff
	nop                                              ; $67fb: $00
	cp a                                             ; $67fc: $bf
	ld a, [hl]                                       ; $67fd: $7e
	db $db                                           ; $67fe: $db
	jp c, $c8c9                                      ; $67ff: $da $c9 $c8

	db $fd                                           ; $6802: $fd
	db $fc                                           ; $6803: $fc
	or l                                             ; $6804: $b5
	db $fc                                           ; $6805: $fc
	ld d, l                                          ; $6806: $55
	ld e, h                                          ; $6807: $5c
	daa                                              ; $6808: $27
	inc h                                            ; $6809: $24
	sbc h                                            ; $680a: $9c
	rra                                              ; $680b: $1f
	jr jr_070_683f                                   ; $680c: $18 $31

	cp h                                             ; $680e: $bc
	inc bc                                           ; $680f: $03
	inc bc                                           ; $6810: $03
	rlca                                             ; $6811: $07
	rlca                                             ; $6812: $07
	daa                                              ; $6813: $27
	rst SubAFromDE                                          ; $6814: $df
	rst $38                                          ; $6815: $ff
	add b                                            ; $6816: $80
	ld sp, hl                                        ; $6817: $f9
	and c                                            ; $6818: $a1
	cp $bc                                           ; $6819: $fe $bc
	rst $38                                          ; $681b: $ff
	rst AddAOntoHL                                          ; $681c: $ef
	or a                                             ; $681d: $b7
	cp $ab                                           ; $681e: $fe $ab
	or $bb                                           ; $6820: $f6 $bb
	or $bb                                           ; $6822: $f6 $bb
	and $bb                                          ; $6824: $e6 $bb
	xor l                                            ; $6826: $ad
	rst FarCall                                          ; $6827: $f7
	cp l                                             ; $6828: $bd
	rst SubAFromBC                                          ; $6829: $e7
	ld a, [$f4ce]                                    ; $682a: $fa $ce $f4
	sbc h                                            ; $682d: $9c
	db $ec                                           ; $682e: $ec
	cp h                                             ; $682f: $bc
	ld hl, sp+$38                                    ; $6830: $f8 $38
	ldh a, [rSVBK]                                   ; $6832: $f0 $70
	ldh [$60], a                                     ; $6834: $e0 $60
	call c, $86c0                                    ; $6836: $dc $c0 $86
	ld b, b                                          ; $6839: $40
	ret nz                                           ; $683a: $c0

	ld b, b                                          ; $683b: $40
	ld hl, sp+$78                                    ; $683c: $f8 $78
	db $ec                                           ; $683e: $ec

jr_070_683f:
	ld a, h                                          ; $683f: $7c
	db $e4                                           ; $6840: $e4
	inc a                                            ; $6841: $3c
	ldh [c], a                                       ; $6842: $e2
	ld a, $f3                                        ; $6843: $3e $f3
	rra                                              ; $6845: $1f
	pop af                                           ; $6846: $f1
	rra                                              ; $6847: $1f
	ldh [$3f], a                                     ; $6848: $e0 $3f
	ldh [$7f], a                                     ; $684a: $e0 $7f
	ret nz                                           ; $684c: $c0

	ld a, a                                          ; $684d: $7f
	add b                                            ; $684e: $80
	rst $38                                          ; $684f: $ff
	nop                                              ; $6850: $00
	rst $38                                          ; $6851: $ff
	ccf                                              ; $6852: $3f
	ld b, b                                          ; $6853: $40
	sbc b                                            ; $6854: $98
	ld a, a                                          ; $6855: $7f
	nop                                              ; $6856: $00
	rra                                              ; $6857: $1f
	rlca                                             ; $6858: $07
	sbc h                                            ; $6859: $9c
	adc h                                            ; $685a: $8c
	rst GetHLinHL                                          ; $685b: $cf
	ld l, e                                          ; $685c: $6b
	ld b, b                                          ; $685d: $40
	ld e, e                                          ; $685e: $5b
	ld h, b                                          ; $685f: $60
	ld a, a                                          ; $6860: $7f
	sub d                                            ; $6861: $92
	ld a, e                                          ; $6862: $7b
	ld e, [hl]                                       ; $6863: $5e
	ld [hl], e                                       ; $6864: $73
	ld h, b                                          ; $6865: $60
	sbc [hl]                                         ; $6866: $9e
	nop                                              ; $6867: $00
	ld b, a                                          ; $6868: $47
	ld h, b                                          ; $6869: $60
	ld [hl], a                                       ; $686a: $77
	ld e, [hl]                                       ; $686b: $5e
	sbc l                                            ; $686c: $9d
	set 1, d                                         ; $686d: $cb $ca
	scf                                              ; $686f: $37
	ld h, b                                          ; $6870: $60
	scf                                              ; $6871: $37
	and b                                            ; $6872: $a0
	sub h                                            ; $6873: $94
	ccf                                              ; $6874: $3f
	nop                                              ; $6875: $00
	sbc a                                            ; $6876: $9f
	add b                                            ; $6877: $80
	db $db                                           ; $6878: $db
	ld b, a                                          ; $6879: $47
	push hl                                          ; $687a: $e5
	ld l, a                                          ; $687b: $6f
	xor $2e                                          ; $687c: $ee $2e
	di                                               ; $687e: $f3
	ld c, a                                          ; $687f: $4f
	and b                                            ; $6880: $a0
	cp e                                             ; $6881: $bb
	rlca                                             ; $6882: $07
	inc bc                                           ; $6883: $03
	add c                                            ; $6884: $81
	add b                                            ; $6885: $80
	ret nc                                           ; $6886: $d0

	sbc b                                            ; $6887: $98
	ld c, e                                          ; $6888: $4b
	and b                                            ; $6889: $a0
	ld [hl], a                                       ; $688a: $77
	cp $98                                           ; $688b: $fe $98
	rst SubAFromDE                                          ; $688d: $df
	ld a, $fd                                        ; $688e: $3e $fd
	ld a, [hl]                                       ; $6890: $7e

jr_070_6891:
	push de                                          ; $6891: $d5
	db $fc                                           ; $6892: $fc
	and a                                            ; $6893: $a7
	daa                                              ; $6894: $27
	and b                                            ; $6895: $a0
	sub [hl]                                         ; $6896: $96
	nop                                              ; $6897: $00
	db $fc                                           ; $6898: $fc
	jr c, jr_070_6891                                ; $6899: $38 $f6

	ld a, b                                          ; $689b: $78
	rst SubAFromDE                                          ; $689c: $df
	ld h, b                                          ; $689d: $60
	ld a, a                                          ; $689e: $7f
	ld b, b                                          ; $689f: $40
	ld [hl], a                                       ; $68a0: $77
	and b                                            ; $68a1: $a0
	sub a                                            ; $68a2: $97
	rst SubAFromDE                                          ; $68a3: $df
	ld b, b                                          ; $68a4: $40
	rst AddAOntoHL                                          ; $68a5: $ef
	ld h, b                                          ; $68a6: $60
	xor $21                                          ; $68a7: $ee $21
	rst FarCall                                          ; $68a9: $f7
	or a                                             ; $68aa: $b7
	daa                                              ; $68ab: $27
	and b                                            ; $68ac: $a0
	sbc c                                            ; $68ad: $99
	ret c                                            ; $68ae: $d8

	nop                                              ; $68af: $00
	db $fc                                           ; $68b0: $fc
	ld b, b                                          ; $68b1: $40
	db $fc                                           ; $68b2: $fc
	ret nc                                           ; $68b3: $d0

	ld c, a                                          ; $68b4: $4f
	and b                                            ; $68b5: $a0
	ld a, e                                          ; $68b6: $7b
	cp $98                                           ; $68b7: $fe $98
	ld [bc], a                                       ; $68b9: $02
	db $fd                                           ; $68ba: $fd
	ld b, $ff                                        ; $68bb: $06 $ff
	inc e                                            ; $68bd: $1c
	rst $38                                          ; $68be: $ff
	ld a, b                                          ; $68bf: $78
	ld e, a                                          ; $68c0: $5f
	and b                                            ; $68c1: $a0
	ld a, a                                          ; $68c2: $7f
	db $ec                                           ; $68c3: $ec
	sbc c                                            ; $68c4: $99
	db $fd                                           ; $68c5: $fd
	inc bc                                           ; $68c6: $03
	rst $38                                          ; $68c7: $ff
	inc b                                            ; $68c8: $04
	rst $38                                          ; $68c9: $ff
	ld bc, $e47b                                     ; $68ca: $01 $7b $e4
	ld a, [hl]                                       ; $68cd: $7e
	rst GetHLinHL                                          ; $68ce: $cf
	add b                                            ; $68cf: $80
	ld [hl], b                                       ; $68d0: $70
	rra                                              ; $68d1: $1f
	ld e, $f9                                        ; $68d2: $1e $f9
	rst $38                                          ; $68d4: $ff
	jr c, @+$01                                      ; $68d5: $38 $ff

	scf                                              ; $68d7: $37
	ld hl, sp+$6f                                    ; $68d8: $f8 $6f
	ldh a, [$df]                                     ; $68da: $f0 $df
	ldh [$bf], a                                     ; $68dc: $e0 $bf
	ret nz                                           ; $68de: $c0

	cp a                                             ; $68df: $bf
	ret nz                                           ; $68e0: $c0

	sbc a                                            ; $68e1: $9f
	ldh [rTAC], a                                    ; $68e2: $e0 $07
	nop                                              ; $68e4: $00
	rrca                                             ; $68e5: $0f
	add b                                            ; $68e6: $80
	rrca                                             ; $68e7: $0f
	ld bc, $038f                                     ; $68e8: $01 $8f $03
	dec e                                            ; $68eb: $1d
	ld b, $1a                                        ; $68ec: $06 $1a
	inc c                                            ; $68ee: $0c
	sbc b                                            ; $68ef: $98
	inc a                                            ; $68f0: $3c
	db $10                                           ; $68f1: $10
	ldh a, [$60]                                     ; $68f2: $f0 $60
	ldh [$c0], a                                     ; $68f4: $e0 $c0
	add b                                            ; $68f6: $80
	cp e                                             ; $68f7: $bb
	nop                                              ; $68f8: $00
	ld bc, $0301                                     ; $68f9: $01 $01 $03
	rlca                                             ; $68fc: $07
	rrca                                             ; $68fd: $0f
	ld a, e                                          ; $68fe: $7b
	ret z                                            ; $68ff: $c8

	ld a, e                                          ; $6900: $7b
	ret nz                                           ; $6901: $c0

	sbc d                                            ; $6902: $9a
	rlca                                             ; $6903: $07
	rst $38                                          ; $6904: $ff
	nop                                              ; $6905: $00
	cp $01                                           ; $6906: $fe $01
	rla                                              ; $6908: $17
	ret nz                                           ; $6909: $c0

	sbc h                                            ; $690a: $9c
	rrca                                             ; $690b: $0f
	inc bc                                           ; $690c: $03
	sbc l                                            ; $690d: $9d
	inc de                                           ; $690e: $13
	ret nz                                           ; $690f: $c0

	sbc [hl]                                         ; $6910: $9e
	ei                                               ; $6911: $fb
	ld a, e                                          ; $6912: $7b
	cp [hl]                                          ; $6913: $be
	daa                                              ; $6914: $27
	ret nz                                           ; $6915: $c0

	sbc e                                            ; $6916: $9b
	adc a                                            ; $6917: $8f
	add b                                            ; $6918: $80
	adc a                                            ; $6919: $8f
	add c                                            ; $691a: $81
	rlca                                             ; $691b: $07
	add b                                            ; $691c: $80
	ld a, a                                          ; $691d: $7f
	ret nz                                           ; $691e: $c0

	sbc l                                            ; $691f: $9d
	db $fc                                           ; $6920: $fc
	inc bc                                           ; $6921: $03
	rla                                              ; $6922: $17
	ret nz                                           ; $6923: $c0

	sbc l                                            ; $6924: $9d
	rrca                                             ; $6925: $0f
	add e                                            ; $6926: $83
	daa                                              ; $6927: $27
	ret nz                                           ; $6928: $c0

	sbc [hl]                                         ; $6929: $9e
	ld bc, $db98                                     ; $692a: $01 $98 $db
	adc [hl]                                         ; $692d: $8e
	call $c787                                       ; $692e: $cd $87 $c7
	inc bc                                           ; $6931: $03
	pop bc                                           ; $6932: $c1
	cp [hl]                                          ; $6933: $be
	ld hl, sp-$08                                    ; $6934: $f8 $f8
	sbc $80                                          ; $6936: $de $80
	ld a, $f8                                        ; $6938: $3e $f8
	ld a, [hl]                                       ; $693a: $7e
	rst SubAFromDE                                          ; $693b: $df
	ld h, b                                          ; $693c: $60
	ld e, a                                          ; $693d: $5f
	nop                                              ; $693e: $00
	rla                                              ; $693f: $17
	rrca                                             ; $6940: $0f
	adc h                                            ; $6941: $8c
	sbc h                                            ; $6942: $9c
	sbc $5e                                          ; $6943: $de $5e
	db $fd                                           ; $6945: $fd
	ld l, a                                          ; $6946: $6f
	ldh [c], a                                       ; $6947: $e2
	ld [hl+], a                                      ; $6948: $22
	pop af                                           ; $6949: $f1
	or c                                             ; $694a: $b1
	rst $38                                          ; $694b: $ff
	ret nc                                           ; $694c: $d0

	rst $38                                          ; $694d: $ff
	ret c                                            ; $694e: $d8

	rst FarCall                                          ; $694f: $f7
	call nc, Call_070_5273                           ; $6950: $d4 $73 $52
	ld [hl], c                                       ; $6953: $71
	ld d, c                                          ; $6954: $51
	jr nz, jr_070_6977                               ; $6955: $20 $20

	rst SubAFromDE                                          ; $6957: $df
	and b                                            ; $6958: $a0
	rst SubAFromDE                                          ; $6959: $df
	ret nz                                           ; $695a: $c0

	rst SubAFromDE                                          ; $695b: $df
	inc bc                                           ; $695c: $03
	sbc b                                            ; $695d: $98
	db $fc                                           ; $695e: $fc
	rst $38                                          ; $695f: $ff
	or b                                             ; $6960: $b0
	rst GetHLinHL                                          ; $6961: $cf
	or b                                             ; $6962: $b0
	rst GetHLinHL                                          ; $6963: $cf
	jr nc, @+$7d                                     ; $6964: $30 $7b

	cp $8a                                           ; $6966: $fe $8a
	ld h, b                                          ; $6968: $60
	sbc a                                            ; $6969: $9f
	ld h, b                                          ; $696a: $60
	sbc a                                            ; $696b: $9f
	call z, $f3ff                                    ; $696c: $cc $ff $f3
	ccf                                              ; $696f: $3f
	sbc a                                            ; $6970: $9f
	adc a                                            ; $6971: $8f
	jp nz, $0fc7                                     ; $6972: $c2 $c7 $0f

	ld b, $0f                                        ; $6975: $06 $0f

jr_070_6977:
	nop                                              ; $6977: $00
	ld b, $01                                        ; $6978: $06 $01
	rlca                                             ; $697a: $07
	ld bc, $bf03                                     ; $697b: $01 $03 $bf
	add b                                            ; $697e: $80
	nop                                              ; $697f: $00
	add b                                            ; $6980: $80
	add b                                            ; $6981: $80
	ret nc                                           ; $6982: $d0

	add b                                            ; $6983: $80
	sbc b                                            ; $6984: $98
	ret nz                                           ; $6985: $c0

	ld a, h                                          ; $6986: $7c
	ret nz                                           ; $6987: $c0

	ld a, h                                          ; $6988: $7c
	ld d, b                                          ; $6989: $50
	call nc, Call_070_7f98                           ; $698a: $d4 $98 $7f
	rst $38                                          ; $698d: $ff
	rst $38                                          ; $698e: $ff
	ldh [rIE], a                                     ; $698f: $e0 $ff
	nop                                              ; $6991: $00
	cp a                                             ; $6992: $bf
	ld a, [hl]                                       ; $6993: $7e
	ld a, e                                          ; $6994: $7b
	ld a, [$c8c9]                                    ; $6995: $fa $c9 $c8
	db $ed                                           ; $6998: $ed
	db $ec                                           ; $6999: $ec
	cp l                                             ; $699a: $bd
	db $fc                                           ; $699b: $fc
	ld d, l                                          ; $699c: $55
	ld e, h                                          ; $699d: $5c
	daa                                              ; $699e: $27
	inc h                                            ; $699f: $24
	sbc h                                            ; $69a0: $9c
	rra                                              ; $69a1: $1f
	jr jr_070_69d5                                   ; $69a2: $18 $31

	cp h                                             ; $69a4: $bc
	inc bc                                           ; $69a5: $03
	inc bc                                           ; $69a6: $03
	rlca                                             ; $69a7: $07
	rlca                                             ; $69a8: $07
	daa                                              ; $69a9: $27
	rst SubAFromDE                                          ; $69aa: $df
	rst $38                                          ; $69ab: $ff
	add b                                            ; $69ac: $80
	ld sp, hl                                        ; $69ad: $f9
	and c                                            ; $69ae: $a1
	cp $bc                                           ; $69af: $fe $bc
	rst $38                                          ; $69b1: $ff
	rst AddAOntoHL                                          ; $69b2: $ef
	or a                                             ; $69b3: $b7
	cp $ab                                           ; $69b4: $fe $ab
	or $bb                                           ; $69b6: $f6 $bb
	or $bb                                           ; $69b8: $f6 $bb
	and $bb                                          ; $69ba: $e6 $bb
	xor l                                            ; $69bc: $ad
	rst FarCall                                          ; $69bd: $f7
	cp l                                             ; $69be: $bd
	rst SubAFromBC                                          ; $69bf: $e7
	ld a, [$f4ce]                                    ; $69c0: $fa $ce $f4
	sbc h                                            ; $69c3: $9c
	db $ec                                           ; $69c4: $ec
	cp h                                             ; $69c5: $bc
	ld hl, sp+$38                                    ; $69c6: $f8 $38
	ldh a, [rSVBK]                                   ; $69c8: $f0 $70
	ldh [$60], a                                     ; $69ca: $e0 $60
	call c, $86c0                                    ; $69cc: $dc $c0 $86
	ld b, b                                          ; $69cf: $40
	ret nz                                           ; $69d0: $c0

	ld b, b                                          ; $69d1: $40
	ld hl, sp+$78                                    ; $69d2: $f8 $78
	db $ec                                           ; $69d4: $ec

jr_070_69d5:
	ld a, h                                          ; $69d5: $7c
	db $e4                                           ; $69d6: $e4
	inc a                                            ; $69d7: $3c
	ldh [c], a                                       ; $69d8: $e2
	ld a, $f3                                        ; $69d9: $3e $f3
	rra                                              ; $69db: $1f
	pop af                                           ; $69dc: $f1
	rra                                              ; $69dd: $1f
	ldh [$3f], a                                     ; $69de: $e0 $3f
	ldh [$7f], a                                     ; $69e0: $e0 $7f
	ret nz                                           ; $69e2: $c0

	ld a, a                                          ; $69e3: $7f
	add b                                            ; $69e4: $80
	rst $38                                          ; $69e5: $ff
	nop                                              ; $69e6: $00
	rst $38                                          ; $69e7: $ff
	ccf                                              ; $69e8: $3f
	ld b, b                                          ; $69e9: $40
	sub l                                            ; $69ea: $95
	ld a, a                                          ; $69eb: $7f
	nop                                              ; $69ec: $00
	jr jr_070_69f6                                   ; $69ed: $18 $07

	sub a                                            ; $69ef: $97
	adc a                                            ; $69f0: $8f
	sbc $4e                                          ; $69f1: $de $4e
	db $ed                                           ; $69f3: $ed
	ld a, a                                          ; $69f4: $7f
	ld [hl], a                                       ; $69f5: $77

jr_070_69f6:
	ld b, b                                          ; $69f6: $40
	ld c, a                                          ; $69f7: $4f
	ld h, b                                          ; $69f8: $60
	ld a, a                                          ; $69f9: $7f
	cp $9d                                           ; $69fa: $fe $9d
	inc bc                                           ; $69fc: $03
	ld bc, $6037                                     ; $69fd: $01 $37 $60
	ld [hl], a                                       ; $6a00: $77
	ld e, [hl]                                       ; $6a01: $5e
	sbc d                                            ; $6a02: $9a
	ld l, e                                          ; $6a03: $6b
	ld [$eced], a                                    ; $6a04: $ea $ed $ec
	db $fd                                           ; $6a07: $fd
	ld b, e                                          ; $6a08: $43
	ld h, b                                          ; $6a09: $60
	scf                                              ; $6a0a: $37
	and b                                            ; $6a0b: $a0
	sub h                                            ; $6a0c: $94
	ccf                                              ; $6a0d: $3f
	nop                                              ; $6a0e: $00
	sbc a                                            ; $6a0f: $9f
	add b                                            ; $6a10: $80
	db $db                                           ; $6a11: $db
	ld b, a                                          ; $6a12: $47
	push hl                                          ; $6a13: $e5
	ld l, a                                          ; $6a14: $6f
	xor $2e                                          ; $6a15: $ee $2e
	di                                               ; $6a17: $f3
	ld d, e                                          ; $6a18: $53
	and b                                            ; $6a19: $a0
	ld [hl], a                                       ; $6a1a: $77
	ret nc                                           ; $6a1b: $d0

	ld a, a                                          ; $6a1c: $7f
	jp z, $819e                                      ; $6a1d: $ca $9e $81

	cp [hl]                                          ; $6a20: $be
	add b                                            ; $6a21: $80
	ret nc                                           ; $6a22: $d0

	sbc b                                            ; $6a23: $98
	ld c, e                                          ; $6a24: $4b
	and b                                            ; $6a25: $a0
	ld [hl], a                                       ; $6a26: $77
	cp $98                                           ; $6a27: $fe $98
	rst SubAFromDE                                          ; $6a29: $df
	ld a, $fd                                        ; $6a2a: $3e $fd
	ld a, [hl]                                       ; $6a2c: $7e
	push de                                          ; $6a2d: $d5
	db $fc                                           ; $6a2e: $fc
	and a                                            ; $6a2f: $a7
	inc hl                                           ; $6a30: $23
	and b                                            ; $6a31: $a0
	sbc c                                            ; $6a32: $99
	cp $00                                           ; $6a33: $fe $00
	db $fc                                           ; $6a35: $fc
	ld a, [hl]                                       ; $6a36: $7e
	rst GetHLinHL                                          ; $6a37: $cf
	ld a, [hl]                                       ; $6a38: $7e
	ld l, a                                          ; $6a39: $6f
	and b                                            ; $6a3a: $a0
	sub a                                            ; $6a3b: $97
	rst SubAFromDE                                          ; $6a3c: $df
	ld b, b                                          ; $6a3d: $40
	rst AddAOntoHL                                          ; $6a3e: $ef
	ld h, b                                          ; $6a3f: $60
	xor $21                                          ; $6a40: $ee $21
	rst FarCall                                          ; $6a42: $f7
	or a                                             ; $6a43: $b7
	ld l, a                                          ; $6a44: $6f
	and b                                            ; $6a45: $a0
	sbc c                                            ; $6a46: $99
	jp $0ac7                                         ; $6a47: $c3 $c7 $0a


	rlca                                             ; $6a4a: $07
	rrca                                             ; $6a4b: $0f
	ld b, $57                                        ; $6a4c: $06 $57
	and b                                            ; $6a4e: $a0
	sbc c                                            ; $6a4f: $99
	ret c                                            ; $6a50: $d8

	nop                                              ; $6a51: $00
	db $fc                                           ; $6a52: $fc
	ld b, b                                          ; $6a53: $40
	db $fc                                           ; $6a54: $fc
	ret nc                                           ; $6a55: $d0

	ld c, a                                          ; $6a56: $4f
	and b                                            ; $6a57: $a0
	ld a, e                                          ; $6a58: $7b
	cp $98                                           ; $6a59: $fe $98
	ld [bc], a                                       ; $6a5b: $02
	db $fd                                           ; $6a5c: $fd
	ld b, $ff                                        ; $6a5d: $06 $ff
	inc e                                            ; $6a5f: $1c
	rst $38                                          ; $6a60: $ff
	ld a, b                                          ; $6a61: $78
	ld e, a                                          ; $6a62: $5f
	and b                                            ; $6a63: $a0
	ld a, e                                          ; $6a64: $7b
	db $ec                                           ; $6a65: $ec
	sbc [hl]                                         ; $6a66: $9e
	inc bc                                           ; $6a67: $03
	ld a, e                                          ; $6a68: $7b
	db $ec                                           ; $6a69: $ec
	sbc [hl]                                         ; $6a6a: $9e
	ld bc, $f87b                                     ; $6a6b: $01 $7b $f8
	ld a, [hl]                                       ; $6a6e: $7e
	rst GetHLinHL                                          ; $6a6f: $cf
	add b                                            ; $6a70: $80
	ld [hl], b                                       ; $6a71: $70
	rra                                              ; $6a72: $1f
	ld e, $f9                                        ; $6a73: $1e $f9
	rst $38                                          ; $6a75: $ff
	jr c, @+$01                                      ; $6a76: $38 $ff

	scf                                              ; $6a78: $37
	ld hl, sp+$6f                                    ; $6a79: $f8 $6f
	ldh a, [$df]                                     ; $6a7b: $f0 $df
	ldh [$bf], a                                     ; $6a7d: $e0 $bf
	ret nz                                           ; $6a7f: $c0

	cp a                                             ; $6a80: $bf
	ret nz                                           ; $6a81: $c0

	sbc a                                            ; $6a82: $9f
	ldh [rTAC], a                                    ; $6a83: $e0 $07
	nop                                              ; $6a85: $00
	rrca                                             ; $6a86: $0f
	add b                                            ; $6a87: $80
	rrca                                             ; $6a88: $0f
	ld bc, $038f                                     ; $6a89: $01 $8f $03
	dec e                                            ; $6a8c: $1d
	ld b, $1a                                        ; $6a8d: $06 $1a
	inc c                                            ; $6a8f: $0c
	sbc c                                            ; $6a90: $99
	inc a                                            ; $6a91: $3c
	db $10                                           ; $6a92: $10
	ldh a, [$60]                                     ; $6a93: $f0 $60
	ldh [$c0], a                                     ; $6a95: $e0 $c0
	ld a, d                                          ; $6a97: $7a
	ldh [$bc], a                                     ; $6a98: $e0 $bc
	ld bc, $0301                                     ; $6a9a: $01 $01 $03
	rlca                                             ; $6a9d: $07
	rrca                                             ; $6a9e: $0f
	ld [hl], a                                       ; $6a9f: $77
	ret z                                            ; $6aa0: $c8

	sbc e                                            ; $6aa1: $9b
	inc bc                                           ; $6aa2: $03
	rst $38                                          ; $6aa3: $ff
	ld b, $fe                                        ; $6aa4: $06 $fe
	dec de                                           ; $6aa6: $1b
	ret nz                                           ; $6aa7: $c0

	sbc [hl]                                         ; $6aa8: $9e
	adc a                                            ; $6aa9: $8f
	inc bc                                           ; $6aaa: $03
	ret nz                                           ; $6aab: $c0

	sbc l                                            ; $6aac: $9d
	rst $38                                          ; $6aad: $ff
	rlca                                             ; $6aae: $07
	ld a, e                                          ; $6aaf: $7b
	db $fc                                           ; $6ab0: $fc
	dec de                                           ; $6ab1: $1b
	ret nz                                           ; $6ab2: $c0

	sbc l                                            ; $6ab3: $9d
	adc a                                            ; $6ab4: $8f
	add c                                            ; $6ab5: $81
	rlca                                             ; $6ab6: $07
	ret nz                                           ; $6ab7: $c0

	sbc e                                            ; $6ab8: $9b
	ei                                               ; $6ab9: $fb
	rlca                                             ; $6aba: $07
	db $fd                                           ; $6abb: $fd
	inc bc                                           ; $6abc: $03
	rra                                              ; $6abd: $1f
	ld b, b                                          ; $6abe: $40
	ld a, e                                          ; $6abf: $7b
	ret nz                                           ; $6ac0: $c0

	sbc h                                            ; $6ac1: $9c
	add e                                            ; $6ac2: $83
	dec e                                            ; $6ac3: $1d
	add [hl]                                         ; $6ac4: $86
	cpl                                              ; $6ac5: $2f
	ret nz                                           ; $6ac6: $c0

	ld [bc], a                                       ; $6ac7: $02
	nop                                              ; $6ac8: $00
	ldh [rSC], a                                     ; $6ac9: $e0 $02
	rst AddAOntoHL                                          ; $6acb: $ef
	rst SubAFromDE                                          ; $6acc: $df
	ld bc, $0680                                     ; $6acd: $01 $80 $06
	rlca                                             ; $6ad0: $07
	add hl, de                                       ; $6ad1: $19
	ld e, $27                                        ; $6ad2: $1e $27
	add hl, sp                                       ; $6ad4: $39
	ld e, a                                          ; $6ad5: $5f
	ld h, [hl]                                       ; $6ad6: $66
	cp [hl]                                          ; $6ad7: $be
	ld sp, hl                                        ; $6ad8: $f9
	call c, $39d3                                    ; $6ad9: $dc $d3 $39
	daa                                              ; $6adc: $27
	ld h, e                                          ; $6add: $63
	ld e, a                                          ; $6ade: $5f
	ld c, a                                          ; $6adf: $4f
	ld a, [hl]                                       ; $6ae0: $7e
	sub a                                            ; $6ae1: $97
	db $f4                                           ; $6ae2: $f4
	xor [hl]                                         ; $6ae3: $ae
	jp hl                                            ; $6ae4: $e9


	call z, $99cb                                    ; $6ae5: $cc $cb $99
	sub a                                            ; $6ae8: $97
	sbc c                                            ; $6ae9: $99
	sub a                                            ; $6aea: $97
	ld [hl-], a                                      ; $6aeb: $32
	cpl                                              ; $6aec: $2f
	daa                                              ; $6aed: $27
	sub b                                            ; $6aee: $90
	ld a, $4b                                        ; $6aef: $3e $4b
	ld a, d                                          ; $6af1: $7a
	ld d, [hl]                                       ; $6af2: $56
	ld [hl], l                                       ; $6af3: $75
	ld d, [hl]                                       ; $6af4: $56
	ld [hl], l                                       ; $6af5: $75
	ld h, [hl]                                       ; $6af6: $66
	ld h, l                                          ; $6af7: $65
	ld h, h                                          ; $6af8: $64
	ld h, a                                          ; $6af9: $67
	ld b, l                                          ; $6afa: $45
	ld b, a                                          ; $6afb: $47
	ld b, l                                          ; $6afc: $45
	ld b, a                                          ; $6afd: $47
	db $db                                           ; $6afe: $db

Jump_070_6aff:
	ld [bc], a                                       ; $6aff: $02
	db $eb                                           ; $6b00: $eb
	rst SubAFromDE                                          ; $6b01: $df
	inc bc                                           ; $6b02: $03
	add b                                            ; $6b03: $80
	inc b                                            ; $6b04: $04
	rlca                                             ; $6b05: $07
	ld b, $07                                        ; $6b06: $06 $07
	add hl, bc                                       ; $6b08: $09
	rrca                                             ; $6b09: $0f
	db $10                                           ; $6b0a: $10
	rra                                              ; $6b0b: $1f
	ld [de], a                                       ; $6b0c: $12
	dec e                                            ; $6b0d: $1d
	inc hl                                           ; $6b0e: $23
	inc a                                            ; $6b0f: $3c
	dec h                                            ; $6b10: $25
	ld a, $25                                        ; $6b11: $3e $25
	ld a, $32                                        ; $6b13: $3e $32
	cpl                                              ; $6b15: $2f
	ld e, d                                          ; $6b16: $5a
	ld h, a                                          ; $6b17: $67
	ld e, l                                          ; $6b18: $5d
	ld h, e                                          ; $6b19: $63
	ld c, a                                          ; $6b1a: $4f
	ld [hl], c                                       ; $6b1b: $71
	ld b, [hl]                                       ; $6b1c: $46
	ld a, c                                          ; $6b1d: $79
	ld d, e                                          ; $6b1e: $53
	ld l, h                                          ; $6b1f: $6c
	ld e, c                                          ; $6b20: $59
	ld h, [hl]                                       ; $6b21: $66
	ld a, h                                          ; $6b22: $7c
	sbc [hl]                                         ; $6b23: $9e
	ld h, e                                          ; $6b24: $63
	rst SubAFromBC                                          ; $6b25: $e7
	rst SubAFromDE                                          ; $6b26: $df
	ld bc, $03df                                     ; $6b27: $01 $df $03
	add b                                            ; $6b2a: $80
	ld [bc], a                                       ; $6b2b: $02
	inc bc                                           ; $6b2c: $03
	dec b                                            ; $6b2d: $05
	ld b, $07                                        ; $6b2e: $06 $07
	inc b                                            ; $6b30: $04
	ld a, [bc]                                       ; $6b31: $0a
	dec c                                            ; $6b32: $0d
	dec c                                            ; $6b33: $0d
	ld a, [bc]                                       ; $6b34: $0a
	dec c                                            ; $6b35: $0d
	ld a, [bc]                                       ; $6b36: $0a
	dec de                                           ; $6b37: $1b
	inc d                                            ; $6b38: $14
	dec de                                           ; $6b39: $1b
	inc d                                            ; $6b3a: $14
	ld e, $15                                        ; $6b3b: $1e $15
	ld a, $25                                        ; $6b3d: $3e $25
	or $ed                                           ; $6b3f: $f6 $ed
	rst FarCall                                          ; $6b41: $f7
	dec l                                            ; $6b42: $2d
	ld [hl], a                                       ; $6b43: $77
	db $ed                                           ; $6b44: $ed
	xor a                                            ; $6b45: $af
	db $fd                                           ; $6b46: $fd
	xor [hl]                                         ; $6b47: $ae
	ld a, e                                          ; $6b48: $7b
	or a                                             ; $6b49: $b7
	add b                                            ; $6b4a: $80
	ld a, d                                          ; $6b4b: $7a
	ld c, l                                          ; $6b4c: $4d
	or $fb                                           ; $6b4d: $f6 $fb
	db $fd                                           ; $6b4f: $fd
	cp $3f                                           ; $6b50: $fe $3f
	xor a                                            ; $6b52: $af
	ld [hl], e                                       ; $6b53: $73
	rst FarCall                                          ; $6b54: $f7
	ld a, b                                          ; $6b55: $78
	ld d, b                                          ; $6b56: $50
	rst $38                                          ; $6b57: $ff
	xor e                                            ; $6b58: $ab

jr_070_6b59:
	call c, $9f6d                                    ; $6b59: $dc $6d $9f
	and $1f                                          ; $6b5c: $e6 $1f
	srl [hl]                                         ; $6b5e: $cb $3e
	sub a                                            ; $6b60: $97
	ld a, d                                          ; $6b61: $7a
	or a                                             ; $6b62: $b7
	ld a, d                                          ; $6b63: $7a
	ld l, l                                          ; $6b64: $6d
	di                                               ; $6b65: $f3
	ld a, l                                          ; $6b66: $7d
	db $e3                                           ; $6b67: $e3
	cp d                                             ; $6b68: $ba
	and [hl]                                         ; $6b69: $a6
	ld a, a                                          ; $6b6a: $7f
	cp $95                                           ; $6b6b: $fe $95
	ld a, [de]                                       ; $6b6d: $1a
	ld d, $12                                        ; $6b6e: $16 $12
	ld e, $12                                        ; $6b70: $1e $12
	ld e, $0a                                        ; $6b72: $1e $0a
	ld c, $0a                                        ; $6b74: $0e $0a
	ld c, $dd                                        ; $6b76: $0e $dd
	ld b, $df                                        ; $6b78: $06 $df
	inc bc                                           ; $6b7a: $03
	rst SubAFromDE                                          ; $6b7b: $df
	ld bc, $665f                                     ; $6b7c: $01 $5f $66
	adc d                                            ; $6b7f: $8a
	rrca                                             ; $6b80: $0f
	inc c                                            ; $6b81: $0c
	ld a, a                                          ; $6b82: $7f
	ld [hl], b                                       ; $6b83: $70
	rst $38                                          ; $6b84: $ff
	add b                                            ; $6b85: $80
	ld h, b                                          ; $6b86: $60
	sbc a                                            ; $6b87: $9f
	jr nc, jr_070_6b59                               ; $6b88: $30 $cf

	jr @-$17                                         ; $6b8a: $18 $e7

	sbc b                                            ; $6b8c: $98
	rst SubAFromBC                                          ; $6b8d: $e7
	call z, Call_070_4cf3                            ; $6b8e: $cc $f3 $4c
	di                                               ; $6b91: $f3
	ld h, [hl]                                       ; $6b92: $66
	ld sp, hl                                        ; $6b93: $f9
	ld h, $7b                                        ; $6b94: $26 $7b
	cp $91                                           ; $6b96: $fe $91
	inc de                                           ; $6b98: $13
	db $fc                                           ; $6b99: $fc
	inc de                                           ; $6b9a: $13

jr_070_6b9b:
	db $fc                                           ; $6b9b: $fc
	dec bc                                           ; $6b9c: $0b
	db $fc                                           ; $6b9d: $fc
	adc c                                            ; $6b9e: $89
	cp $89                                           ; $6b9f: $fe $89
	cp $44                                           ; $6ba1: $fe $44
	rst $38                                          ; $6ba3: $ff
	inc h                                            ; $6ba4: $24
	rst $38                                          ; $6ba5: $ff
	scf                                              ; $6ba6: $37
	inc l                                            ; $6ba7: $2c
	ld a, a                                          ; $6ba8: $7f
	ld l, l                                          ; $6ba9: $6d
	add l                                            ; $6baa: $85
	dec a                                            ; $6bab: $3d
	ld a, $d4                                        ; $6bac: $3e $d4
	rst AddAOntoHL                                          ; $6bae: $ef
	adc a                                            ; $6baf: $8f
	rst $38                                          ; $6bb0: $ff
	halt                                             ; $6bb1: $76
	adc a                                            ; $6bb2: $8f
	push bc                                          ; $6bb3: $c5
	ccf                                              ; $6bb4: $3f
	ld a, [hl]                                       ; $6bb5: $7e
	rrca                                             ; $6bb6: $0f
	ld b, l                                          ; $6bb7: $45
	add a                                            ; $6bb8: $87
	rrca                                             ; $6bb9: $0f
	ld b, $54                                        ; $6bba: $06 $54
	cpl                                              ; $6bbc: $2f
	adc a                                            ; $6bbd: $8f
	ld b, a                                          ; $6bbe: $47
	ld [de], a                                       ; $6bbf: $12
	adc a                                            ; $6bc0: $8f
	dec h                                            ; $6bc1: $25
	add d                                            ; $6bc2: $82
	ld c, d                                          ; $6bc3: $4a
	rlca                                             ; $6bc4: $07
	ldh [$c1], a                                     ; $6bc5: $e0 $c1
	rst SubAFromDE                                          ; $6bc7: $df
	ld bc, $07df                                     ; $6bc8: $01 $df $07
	sbc d                                            ; $6bcb: $9a
	jr c, @+$41                                      ; $6bcc: $38 $3f

	ldh [rIE], a                                     ; $6bce: $e0 $ff
	ld bc, $fe7b                                     ; $6bd0: $01 $7b $fe
	sbc c                                            ; $6bd3: $99
	inc bc                                           ; $6bd4: $03
	cp $03                                           ; $6bd5: $fe $03
	cp $fe                                           ; $6bd7: $fe $fe
	ld [bc], a                                       ; $6bd9: $02
	ld [hl], a                                       ; $6bda: $77
	ld sp, hl                                        ; $6bdb: $f9
	ld [hl], e                                       ; $6bdc: $73
	pop af                                           ; $6bdd: $f1
	sbc [hl]                                         ; $6bde: $9e
	nop                                              ; $6bdf: $00
	ld d, a                                          ; $6be0: $57
	cp $9e                                           ; $6be1: $fe $9e
	ld a, a                                          ; $6be3: $7f
	ld a, e                                          ; $6be4: $7b
	cp $9e                                           ; $6be5: $fe $9e
	ccf                                              ; $6be7: $3f
	ldh a, [$df]                                     ; $6be8: $f0 $df
	rra                                              ; $6bea: $1f
	add b                                            ; $6beb: $80
	rst SubAFromBC                                          ; $6bec: $e7
	ld hl, sp-$80                                    ; $6bed: $f8 $80
	ld a, a                                          ; $6bef: $7f
	ld a, a                                          ; $6bf0: $7f
	add b                                            ; $6bf1: $80
	cp h                                             ; $6bf2: $bc
	ld a, a                                          ; $6bf3: $7f
	rst $38                                          ; $6bf4: $ff
	ret nz                                           ; $6bf5: $c0

	ld b, c                                          ; $6bf6: $41
	add b                                            ; $6bf7: $80
	ld a, d                                          ; $6bf8: $7a
	db $fc                                           ; $6bf9: $fc
	rst FarCall                                          ; $6bfa: $f7
	adc [hl]                                         ; $6bfb: $8e
	push bc                                          ; $6bfc: $c5
	inc bc                                           ; $6bfd: $03
	di                                               ; $6bfe: $f3
	ldh [$f5], a                                     ; $6bff: $e0 $f5
	jr jr_070_6b9b                                   ; $6c01: $18 $98

	inc c                                            ; $6c03: $0c
	adc $84                                          ; $6c04: $ce $84
	and $42                                          ; $6c06: $e6 $42
	ld [hl], a                                       ; $6c08: $77
	ld [hl+], a                                      ; $6c09: $22
	ld a, [de]                                       ; $6c0a: $1a
	sbc [hl]                                         ; $6c0b: $9e
	ld hl, $c1e0                                     ; $6c0c: $21 $e0 $c1
	sub [hl]                                         ; $6c0f: $96
	rst $38                                          ; $6c10: $ff
	add e                                            ; $6c11: $83
	db $e3                                           ; $6c12: $e3
	add c                                            ; $6c13: $81
	pop hl                                           ; $6c14: $e1
	add b                                            ; $6c15: $80
	ret nz                                           ; $6c16: $c0

	add b                                            ; $6c17: $80
	add b                                            ; $6c18: $80
	ld hl, sp-$65                                    ; $6c19: $f8 $9b
	sub b                                            ; $6c1b: $90
	ldh [rP1], a                                     ; $6c1c: $e0 $00
	inc e                                            ; $6c1e: $1c
	ld a, e                                          ; $6c1f: $7b
	add [hl]                                         ; $6c20: $86
	sub d                                            ; $6c21: $92
	sbc a                                            ; $6c22: $9f
	rst $38                                          ; $6c23: $ff
	ldh [$f8], a                                     ; $6c24: $e0 $f8
	add b                                            ; $6c26: $80
	ret nz                                           ; $6c27: $c0

	ld b, b                                          ; $6c28: $40
	rst SubAFromBC                                          ; $6c29: $e7
	jr nz, @+$01                                     ; $6c2a: $20 $ff

	jr nz, @+$01                                     ; $6c2c: $20 $ff

	db $10                                           ; $6c2e: $10
	ld a, e                                          ; $6c2f: $7b
	cp $9e                                           ; $6c30: $fe $9e
	ld [$fe7b], sp                                   ; $6c32: $08 $7b $fe
	sbc l                                            ; $6c35: $9d
	inc b                                            ; $6c36: $04
	inc bc                                           ; $6c37: $03
	ld c, c                                          ; $6c38: $49
	add sp, -$21                                     ; $6c39: $e8 $df
	ld hl, sp-$80                                    ; $6c3b: $f8 $80

Jump_070_6c3d:
	rst FarCall                                          ; $6c3d: $f7
	rrca                                             ; $6c3e: $0f
	ld a, $c1                                        ; $6c3f: $3e $c1
	scf                                              ; $6c41: $37
	ld hl, sp-$13                                    ; $6c42: $f8 $ed
	ld e, $3b                                        ; $6c44: $1e $3b
	rst JumpTable                                          ; $6c46: $c7
	adc l                                            ; $6c47: $8d
	ld [hl], e                                       ; $6c48: $73

jr_070_6c49:
	ld e, e                                          ; $6c49: $5b
	inc l                                            ; $6c4a: $2c
	dec l                                            ; $6c4b: $2d
	ld d, $96                                        ; $6c4c: $16 $96
	dec bc                                           ; $6c4e: $0b
	rlc l                                            ; $6c4f: $cb $05
	and e                                            ; $6c51: $a3
	ld b, l                                          ; $6c52: $45
	and l                                            ; $6c53: $a5
	ld b, d                                          ; $6c54: $42
	pop de                                           ; $6c55: $d1
	ld [hl+], a                                      ; $6c56: $22
	ld e, d                                          ; $6c57: $5a
	ld hl, $112b                                     ; $6c58: $21 $2b $11
	adc [hl]                                         ; $6c5b: $8e
	sbc [hl]                                         ; $6c5c: $9e
	ld de, $c1e0                                     ; $6c5d: $11 $e0 $c1
	sbc $ff                                          ; $6c60: $de $ff
	sub a                                            ; $6c62: $97
	ei                                               ; $6c63: $fb
	rst $38                                          ; $6c64: $ff
	pop hl                                           ; $6c65: $e1
	ld a, a                                          ; $6c66: $7f
	ld bc, $003f                                     ; $6c67: $01 $3f $00
	rra                                              ; $6c6a: $1f
	ld a, e                                          ; $6c6b: $7b

jr_070_6c6c:
	cp $9e                                           ; $6c6c: $fe $9e
	rrca                                             ; $6c6e: $0f
	cp $9d                                           ; $6c6f: $fe $9d
	dec b                                            ; $6c71: $05
	inc bc                                           ; $6c72: $03
	ld [hl], a                                       ; $6c73: $77
	ld h, b                                          ; $6c74: $60
	sbc d                                            ; $6c75: $9a
	ld hl, sp-$07                                    ; $6c76: $f8 $f9
	rst $38                                          ; $6c78: $ff
	rlca                                             ; $6c79: $07
	rra                                              ; $6c7a: $1f
	ld a, c                                          ; $6c7b: $79
	xor a                                            ; $6c7c: $af
	sbc e                                            ; $6c7d: $9b
	rst SubAFromBC                                          ; $6c7e: $e7
	inc b                                            ; $6c7f: $04
	rst $38                                          ; $6c80: $ff
	inc b                                            ; $6c81: $04
	ld [hl], e                                       ; $6c82: $73
	ld h, h                                          ; $6c83: $64
	ld [hl], a                                       ; $6c84: $77

jr_070_6c85:
	ld e, h                                          ; $6c85: $5c
	sbc h                                            ; $6c86: $9c
	jr nz, jr_070_6c49                               ; $6c87: $20 $c0

	ld b, b                                          ; $6c89: $40
	rst AddAOntoHL                                          ; $6c8a: $ef
	rst SubAFromDE                                          ; $6c8b: $df
	ldh [hDisp0_SCY], a                                     ; $6c8c: $e0 $83
	ret c                                            ; $6c8e: $d8

	jr c, jr_070_6c85                                ; $6c8f: $38 $f4

	inc c                                            ; $6c91: $0c
	ld a, d                                          ; $6c92: $7a
	add [hl]                                         ; $6c93: $86
	db $dd                                           ; $6c94: $dd
	db $e3                                           ; $6c95: $e3
	ld [hl], b                                       ; $6c96: $70
	rst $38                                          ; $6c97: $ff
	call c, $f33f                                    ; $6c98: $dc $3f $f3
	rrca                                             ; $6c9b: $0f
	rra                                              ; $6c9c: $1f
	ldh [$f3], a                                     ; $6c9d: $e0 $f3
	db $fc                                           ; $6c9f: $fc
	adc [hl]                                         ; $6ca0: $8e
	rst $38                                          ; $6ca1: $ff
	pop af                                           ; $6ca2: $f1
	ld c, a                                          ; $6ca3: $4f
	call c, Call_070_7f63                            ; $6ca4: $dc $63 $7f
	and b                                            ; $6ca7: $a0
	cp a                                             ; $6ca8: $bf
	ret nc                                           ; $6ca9: $d0

	ldh [$c1], a                                     ; $6caa: $e0 $c1
	rst SubAFromDE                                          ; $6cac: $df
	add b                                            ; $6cad: $80
	rst SubAFromDE                                          ; $6cae: $df
	ldh [$9a], a                                     ; $6caf: $e0 $9a
	inc e                                            ; $6cb1: $1c
	db $fc                                           ; $6cb2: $fc
	rlca                                             ; $6cb3: $07
	rst $38                                          ; $6cb4: $ff
	add b                                            ; $6cb5: $80
	ld a, e                                          ; $6cb6: $7b
	cp $8d                                           ; $6cb7: $fe $8d
	ret nz                                           ; $6cb9: $c0

jr_070_6cba:
	ld a, a                                          ; $6cba: $7f
	ret nz                                           ; $6cbb: $c0

	ld a, a                                          ; $6cbc: $7f
	ld b, c                                          ; $6cbd: $41
	ld a, [hl]                                       ; $6cbe: $7e
	pop bc                                           ; $6cbf: $c1
	cp $43                                           ; $6cc0: $fe $43
	ld a, h                                          ; $6cc2: $7c
	add a                                            ; $6cc3: $87
	ld hl, sp-$71                                    ; $6cc4: $f8 $8f
	ldh a, [$3f]                                     ; $6cc6: $f0 $3f
	ret nz                                           ; $6cc8: $c0

	ld a, a                                          ; $6cc9: $7f
	add b                                            ; $6cca: $80
	ld e, [hl]                                       ; $6ccb: $5e
	jr nz, jr_070_6c6c                               ; $6ccc: $20 $9e

	cp $73                                           ; $6cce: $fe $73
	cp $07                                           ; $6cd0: $fe $07
	or h                                             ; $6cd2: $b4
	rst SubAFromDE                                          ; $6cd3: $df
	ret nz                                           ; $6cd4: $c0

	rst SubAFromDE                                          ; $6cd5: $df
	ldh [$80], a                                     ; $6cd6: $e0 $80
	jr nz, jr_070_6cba                               ; $6cd8: $20 $e0

	ret nc                                           ; $6cda: $d0

	jr nc, jr_070_6ced                               ; $6cdb: $30 $10

	ldh a, [$d0]                                     ; $6cdd: $f0 $d0
	ldh a, [$38]                                     ; $6cdf: $f0 $38
	ld hl, sp+$08                                    ; $6ce1: $f8 $08
	ld hl, sp-$38                                    ; $6ce3: $f8 $c8
	jr c, @-$07                                      ; $6ce5: $38 $f7

	rrca                                             ; $6ce7: $0f
	add h                                            ; $6ce8: $84
	rst $38                                          ; $6ce9: $ff
	db $fd                                           ; $6cea: $fd
	ld a, [hl]                                       ; $6ceb: $7e
	db $e4                                           ; $6cec: $e4

jr_070_6ced:
	rra                                              ; $6ced: $1f
	rst FarCall                                          ; $6cee: $f7
	rst GetHLinHL                                          ; $6cef: $cf
	ld [hl], h                                       ; $6cf0: $74
	rst $38                                          ; $6cf1: $ff
	db $fc                                           ; $6cf2: $fc
	rst $38                                          ; $6cf3: $ff
	ld b, $ff                                        ; $6cf4: $06 $ff
	dec c                                            ; $6cf6: $0d
	sbc e                                            ; $6cf7: $9b
	rst $38                                          ; $6cf8: $ff
	db $f4                                           ; $6cf9: $f4
	rst $38                                          ; $6cfa: $ff
	inc c                                            ; $6cfb: $0c
	ld a, e                                          ; $6cfc: $7b
	cp $80                                           ; $6cfd: $fe $80
	ld a, [de]                                       ; $6cff: $1a
	rst $38                                          ; $6d00: $ff
	dec d                                            ; $6d01: $15
	ei                                               ; $6d02: $fb
	or d                                             ; $6d03: $b2
	db $fd                                           ; $6d04: $fd
	db $e3                                           ; $6d05: $e3
	ld a, h                                          ; $6d06: $7c
	pop de                                           ; $6d07: $d1
	ld a, [hl]                                       ; $6d08: $7e
	ret                                              ; $6d09: $c9


	ld a, [hl]                                       ; $6d0a: $7e
	adc h                                            ; $6d0b: $8c
	rst $38                                          ; $6d0c: $ff
	add [hl]                                         ; $6d0d: $86
	rst $38                                          ; $6d0e: $ff
	sub [hl]                                         ; $6d0f: $96
	rst AddAOntoHL                                          ; $6d10: $ef
	ld d, l                                          ; $6d11: $55
	ld l, l                                          ; $6d12: $6d
	ld d, l                                          ; $6d13: $55
	ld l, l                                          ; $6d14: $6d
	ld e, b                                          ; $6d15: $58
	ld l, b                                          ; $6d16: $68
	ld c, b                                          ; $6d17: $48
	ld a, b                                          ; $6d18: $78
	ld c, b                                          ; $6d19: $48
	ld a, b                                          ; $6d1a: $78
	ld d, b                                          ; $6d1b: $50

jr_070_6d1c:
	ld [hl], b                                       ; $6d1c: $70
	ld d, b                                          ; $6d1d: $50
	sbc [hl]                                         ; $6d1e: $9e
	ld [hl], b                                       ; $6d1f: $70
	db $dd                                           ; $6d20: $dd
	ld h, b                                          ; $6d21: $60
	rst SubAFromDE                                          ; $6d22: $df
	ret nz                                           ; $6d23: $c0

	ld e, [hl]                                       ; $6d24: $5e
	add hl, hl                                       ; $6d25: $29
	rst SubAFromDE                                          ; $6d26: $df
	ret nz                                           ; $6d27: $c0

	add b                                            ; $6d28: $80
	ld hl, sp+$38                                    ; $6d29: $f8 $38
	cp $06                                           ; $6d2b: $fe $06
	rst $38                                          ; $6d2d: $ff
	ld bc, $f10e                                     ; $6d2e: $01 $0e $f1

jr_070_6d31:
	inc c                                            ; $6d31: $0c
	di                                               ; $6d32: $f3
	jr jr_070_6d1c                                   ; $6d33: $18 $e7

	add hl, de                                       ; $6d35: $19
	rst SubAFromBC                                          ; $6d36: $e7
	inc sp                                           ; $6d37: $33
	rst GetHLinHL                                          ; $6d38: $cf
	ld [hl-], a                                      ; $6d39: $32
	rst GetHLinHL                                          ; $6d3a: $cf
	ld h, [hl]                                       ; $6d3b: $66
	sbc a                                            ; $6d3c: $9f
	ld h, h                                          ; $6d3d: $64
	sbc a                                            ; $6d3e: $9f
	ld l, h                                          ; $6d3f: $6c
	sbc a                                            ; $6d40: $9f
	ret z                                            ; $6d41: $c8

	ccf                                              ; $6d42: $3f
	ret c                                            ; $6d43: $d8

	ccf                                              ; $6d44: $3f
	ret nc                                           ; $6d45: $d0

	ccf                                              ; $6d46: $3f
	sub c                                            ; $6d47: $91
	sbc c                                            ; $6d48: $99
	ld a, a                                          ; $6d49: $7f
	or c                                             ; $6d4a: $b1
	ld a, a                                          ; $6d4b: $7f
	and d                                            ; $6d4c: $a2
	ld a, a                                          ; $6d4d: $7f
	ld h, h                                          ; $6d4e: $64
	jr c, jr_070_6d31                                ; $6d4f: $38 $e0

	rst SubAFromDE                                          ; $6d51: $df
	ret nz                                           ; $6d52: $c0

	add b                                            ; $6d53: $80
	or b                                             ; $6d54: $b0
	ld [hl], b                                       ; $6d55: $70
	ld l, b                                          ; $6d56: $68
	sbc b                                            ; $6d57: $98
	sub h                                            ; $6d58: $94
	db $ec                                           ; $6d59: $ec
	ld l, d                                          ; $6d5a: $6a
	or $dd                                           ; $6d5b: $f6 $dd
	ccf                                              ; $6d5d: $3f
	ld a, e                                          ; $6d5e: $7b
	adc e                                            ; $6d5f: $8b
	inc e                                            ; $6d60: $1c
	db $e4                                           ; $6d61: $e4
	add $fa                                          ; $6d62: $c6 $fa
	ld [hl], d                                       ; $6d64: $72
	cp $a9                                           ; $6d65: $fe $a9
	ld l, a                                          ; $6d67: $6f
	ld d, l                                          ; $6d68: $55
	or a                                             ; $6d69: $b7
	ld [hl], e                                       ; $6d6a: $73
	sub e                                            ; $6d6b: $93
	xor c                                            ; $6d6c: $a9
	reti                                             ; $6d6d: $d9


	sbc c                                            ; $6d6e: $99
	jp hl                                            ; $6d6f: $e9


	ld e, h                                          ; $6d70: $5c
	db $e4                                           ; $6d71: $e4
	db $ec                                           ; $6d72: $ec
	sub b                                            ; $6d73: $90
	ld [hl], h                                       ; $6d74: $74
	jp c, $aa56                                      ; $6d75: $da $56 $aa

	ld l, [hl]                                       ; $6d78: $6e
	xor d                                            ; $6d79: $aa
	ld l, [hl]                                       ; $6d7a: $6e
	ld h, $e6                                        ; $6d7b: $26 $e6
	ld h, $e6                                        ; $6d7d: $26 $e6
	and d                                            ; $6d7f: $a2
	ldh [c], a                                       ; $6d80: $e2
	ld b, d                                          ; $6d81: $42
	ld b, d                                          ; $6d82: $42
	db $dd                                           ; $6d83: $dd
	ld b, b                                          ; $6d84: $40
	jp hl                                            ; $6d85: $e9


	rst SubAFromDE                                          ; $6d86: $df
	ret nz                                           ; $6d87: $c0

	ld a, a                                          ; $6d88: $7f
	ld [hl+], a                                      ; $6d89: $22
	add c                                            ; $6d8a: $81
	ld h, b                                          ; $6d8b: $60
	ldh [hDisp1_SCY], a                                     ; $6d8c: $e0 $90
	ldh a, [$08]                                     ; $6d8e: $f0 $08
	ld hl, sp+$48                                    ; $6d90: $f8 $48
	cp b                                             ; $6d92: $b8
	call nz, $a43c                                   ; $6d93: $c4 $3c $a4
	ld a, h                                          ; $6d96: $7c
	and h                                            ; $6d97: $a4
	ld a, h                                          ; $6d98: $7c
	ld c, h                                          ; $6d99: $4c
	db $f4                                           ; $6d9a: $f4
	ld e, d                                          ; $6d9b: $5a
	and $ba                                          ; $6d9c: $e6 $ba
	add $f2                                          ; $6d9e: $c6 $f2
	adc [hl]                                         ; $6da0: $8e
	ld h, d                                          ; $6da1: $62
	sbc [hl]                                         ; $6da2: $9e
	jp z, $9a36                                      ; $6da3: $ca $36 $9a

	ld h, [hl]                                       ; $6da6: $66
	ld a, $c6                                        ; $6da7: $3e $c6
	rra                                              ; $6da9: $1f
	nop                                              ; $6daa: $00
	rst SubAFromDE                                          ; $6dab: $df
	adc b                                            ; $6dac: $88
	rst SubAFromDE                                          ; $6dad: $df
	sbc c                                            ; $6dae: $99
	sbc $88                                          ; $6daf: $de $88
	sub h                                            ; $6db1: $94
	call z, $88bb                                    ; $6db2: $cc $bb $88
	ld [$bb99], sp                                   ; $6db5: $08 $99 $bb
	ld de, $0880                                     ; $6db8: $11 $80 $08
	sbc c                                            ; $6dbb: $99
	add b                                            ; $6dbc: $80
	ld l, a                                          ; $6dbd: $6f
	ei                                               ; $6dbe: $fb
	ld a, e                                          ; $6dbf: $7b
	pop af                                           ; $6dc0: $f1
	sbc l                                            ; $6dc1: $9d
	xor d                                            ; $6dc2: $aa
	ld de, $e76f                                     ; $6dc3: $11 $6f $e7
	ld a, e                                          ; $6dc6: $7b
	sbc $00                                          ; $6dc7: $de $00
	ld [bc], a                                       ; $6dc9: $02
	add b                                            ; $6dca: $80
	ld d, e                                          ; $6dcb: $53
	rrca                                             ; $6dcc: $0f
	rla                                              ; $6dcd: $17
	ld c, l                                          ; $6dce: $4d
	daa                                              ; $6dcf: $27
	ld e, l                                          ; $6dd0: $5d
	ld l, l                                          ; $6dd1: $6d
	ld e, b                                          ; $6dd2: $58
	db $ec                                           ; $6dd3: $ec
	ld e, b                                          ; $6dd4: $58
	ld hl, sp+$50                                    ; $6dd5: $f8 $50
	cp b                                             ; $6dd7: $b8
	ret nc                                           ; $6dd8: $d0

	cp $a1                                           ; $6dd9: $fe $a1
	ld a, e                                          ; $6ddb: $7b
	rst SubAFromBC                                          ; $6ddc: $e7
	or $cf                                           ; $6ddd: $f6 $cf
	ei                                               ; $6ddf: $fb
	sbc h                                            ; $6de0: $9c
	sbc a                                            ; $6de1: $9f
	add b                                            ; $6de2: $80
	add [hl]                                         ; $6de3: $86

jr_070_6de4:
	add c                                            ; $6de4: $81
	adc l                                            ; $6de5: $8d
	add e                                            ; $6de6: $83
	rst GetHLinHL                                          ; $6de7: $cf
	add a                                            ; $6de8: $87
	sbc $82                                          ; $6de9: $de $82
	sbc [hl]                                         ; $6deb: $9e
	bit 1, e                                         ; $6dec: $cb $4b
	ldh [c], a                                       ; $6dee: $e2
	jp $c262                                         ; $6def: $c3 $62 $c2


	and c                                            ; $6df2: $a1
	ld h, c                                          ; $6df3: $61
	push af                                          ; $6df4: $f5
	and e                                            ; $6df5: $a3
	pop af                                           ; $6df6: $f1
	ldh [$b2], a                                     ; $6df7: $e0 $b2
	ldh a, [$f9]                                     ; $6df9: $f0 $f9
	or b                                             ; $6dfb: $b0
	rst $38                                          ; $6dfc: $ff
	cp b                                             ; $6dfd: $b8
	rst AddAOntoHL                                          ; $6dfe: $ef
	xor h                                            ; $6dff: $ac
	rst SubAFromBC                                          ; $6e00: $e7
	and [hl]                                         ; $6e01: $a6
	ld b, e                                          ; $6e02: $43
	ld b, e                                          ; $6e03: $43
	ld b, c                                          ; $6e04: $41
	ld b, c                                          ; $6e05: $41
	ld b, b                                          ; $6e06: $40
	ld b, b                                          ; $6e07: $40
	db $fd                                           ; $6e08: $fd
	add b                                            ; $6e09: $80
	ld a, [hl+]                                      ; $6e0a: $2a
	ld de, $109d                                     ; $6e0b: $11 $9d $10
	ld [hl], l                                       ; $6e0e: $75
	sbc b                                            ; $6e0f: $98
	xor e                                            ; $6e10: $ab
	call c, $cebd                                    ; $6e11: $dc $bd $ce
	ld e, d                                          ; $6e14: $5a
	ld l, a                                          ; $6e15: $6f
	dec l                                            ; $6e16: $2d
	scf                                              ; $6e17: $37
	sub l                                            ; $6e18: $95
	call c, $8eca                                    ; $6e19: $dc $ca $8e
	add a                                            ; $6e1c: $87
	rlca                                             ; $6e1d: $07
	ldh [rP1], a                                     ; $6e1e: $e0 $00
	ldh a, [rP1]                                     ; $6e20: $f0 $00
	jr c, jr_070_6de4                                ; $6e22: $38 $c0

	ld hl, sp-$20                                    ; $6e24: $f8 $e0
	jr c, jr_070_6e58                                ; $6e26: $38 $30

	ld a, b                                          ; $6e28: $78
	adc a                                            ; $6e29: $8f
	ld [hl], b                                       ; $6e2a: $70
	ld hl, sp-$20                                    ; $6e2b: $f8 $e0
	and b                                            ; $6e2d: $a0
	ldh [$a0], a                                     ; $6e2e: $e0 $a0
	and b                                            ; $6e30: $a0
	ld b, c                                          ; $6e31: $41
	ld b, b                                          ; $6e32: $40
	and c                                            ; $6e33: $a1
	ret nz                                           ; $6e34: $c0

	ld d, e                                          ; $6e35: $53
	ld bc, $01ab                                     ; $6e36: $01 $ab $01
	ld b, c                                          ; $6e39: $41
	ld hl, sp-$80                                    ; $6e3a: $f8 $80
	ret nz                                           ; $6e3c: $c0

	add b                                            ; $6e3d: $80
	ldh a, [$e0]                                     ; $6e3e: $f0 $e0
	db $f4                                           ; $6e40: $f4
	sbc b                                            ; $6e41: $98
	db $fd                                           ; $6e42: $fd
	adc [hl]                                         ; $6e43: $8e
	rst SubAFromDE                                          ; $6e44: $df
	ld [$8c7b], sp                                   ; $6e45: $08 $7b $8c
	ld a, a                                          ; $6e48: $7f
	call z, Call_070_6ed5                            ; $6e49: $cc $d5 $6e
	xor [hl]                                         ; $6e4c: $ae
	ld [hl], a                                       ; $6e4d: $77
	inc sp                                           ; $6e4e: $33
	rst $38                                          ; $6e4f: $ff
	add hl, de                                       ; $6e50: $19
	rst $38                                          ; $6e51: $ff
	sub h                                            ; $6e52: $94
	rst $38                                          ; $6e53: $ff
	adc $7b                                          ; $6e54: $ce $7b
	scf                                              ; $6e56: $37
	dec a                                            ; $6e57: $3d

jr_070_6e58:
	rrca                                             ; $6e58: $0f
	ld c, $0f                                        ; $6e59: $0e $0f
	add l                                            ; $6e5b: $85
	nop                                              ; $6e5c: $00
	inc e                                            ; $6e5d: $1c
	inc bc                                           ; $6e5e: $03
	ccf                                              ; $6e5f: $3f
	rlca                                             ; $6e60: $07
	inc a                                            ; $6e61: $3c
	inc c                                            ; $6e62: $0c
	ld a, $0e                                        ; $6e63: $3e $0e
	rra                                              ; $6e65: $1f
	rlca                                             ; $6e66: $07
	dec b                                            ; $6e67: $05
	rlca                                             ; $6e68: $07
	dec b                                            ; $6e69: $05
	dec b                                            ; $6e6a: $05
	ld [bc], a                                       ; $6e6b: $02
	ld [bc], a                                       ; $6e6c: $02
	add l                                            ; $6e6d: $85
	inc bc                                           ; $6e6e: $03
	push de                                          ; $6e6f: $d5
	nop                                              ; $6e70: $00
	jp z, $8500                                      ; $6e71: $ca $00 $85

	nop                                              ; $6e74: $00
	ld bc, $fe7b                                     ; $6e75: $01 $7b $fe
	add b                                            ; $6e78: $80
	inc bc                                           ; $6e79: $03
	nop                                              ; $6e7a: $00
	rlca                                             ; $6e7b: $07
	nop                                              ; $6e7c: $00
	rrca                                             ; $6e7d: $0f
	ld bc, $071f                                     ; $6e7e: $01 $1f $07
	ld l, a                                          ; $6e81: $6f
	rra                                              ; $6e82: $1f
	cp a                                             ; $6e83: $bf
	ld a, a                                          ; $6e84: $7f
	cp b                                             ; $6e85: $b8
	rst GetHLinHL                                          ; $6e86: $cf
	ld b, a                                          ; $6e87: $47
	rst $38                                          ; $6e88: $ff
	db $e3                                           ; $6e89: $e3
	ld a, [hl]                                       ; $6e8a: $7e
	and c                                            ; $6e8b: $a1
	ld a, a                                          ; $6e8c: $7f
	sub b                                            ; $6e8d: $90
	ld a, a                                          ; $6e8e: $7f
	ld c, $ff                                        ; $6e8f: $0e $ff
	add l                                            ; $6e91: $85
	rst $38                                          ; $6e92: $ff
	jp nz, Jump_070_71ff                             ; $6e93: $c2 $ff $71

	rst $38                                          ; $6e96: $ff

Jump_070_6e97:
	inc a                                            ; $6e97: $3c
	add b                                            ; $6e98: $80
	rst AddAOntoHL                                          ; $6e99: $ef
	rst SubAFromDE                                          ; $6e9a: $df
	di                                               ; $6e9b: $f3
	rst $38                                          ; $6e9c: $ff
	add hl, sp                                       ; $6e9d: $39
	ld a, a                                          ; $6e9e: $7f
	add c                                            ; $6e9f: $81
	cp a                                             ; $6ea0: $bf
	pop bc                                           ; $6ea1: $c1
	rst $38                                          ; $6ea2: $ff
	pop hl                                           ; $6ea3: $e1
	ld a, a                                          ; $6ea4: $7f
	ld a, c                                          ; $6ea5: $79
	sbc $d3                                          ; $6ea6: $de $d3
	ld e, [hl]                                       ; $6ea8: $5e
	jp Jump_070_425f                                 ; $6ea9: $c3 $5f $42


	cp [hl]                                          ; $6eac: $be
	add l                                            ; $6ead: $85
	cp l                                             ; $6eae: $bd
	rst JumpTable                                          ; $6eaf: $c7
	rst FarCall                                          ; $6eb0: $f7
	rrca                                             ; $6eb1: $0f
	db $fd                                           ; $6eb2: $fd
	rrca                                             ; $6eb3: $0f
	rst AddAOntoHL                                          ; $6eb4: $ef
	dec e                                            ; $6eb5: $1d
	rst $38                                          ; $6eb6: $ff
	dec e                                            ; $6eb7: $1d
	sub l                                            ; $6eb8: $95
	rst FarCall                                          ; $6eb9: $f7
	dec [hl]                                         ; $6eba: $35
	rst SubAFromBC                                          ; $6ebb: $e7
	ld h, l                                          ; $6ebc: $65
	jp nz, $82c2                                     ; $6ebd: $c2 $c2 $82

	add d                                            ; $6ec0: $82
	ld [bc], a                                       ; $6ec1: $02
	ld [bc], a                                       ; $6ec2: $02
	db $fd                                           ; $6ec3: $fd
	ld b, a                                          ; $6ec4: $47
	nop                                              ; $6ec5: $00
	adc e                                            ; $6ec6: $8b
	ld a, a                                          ; $6ec7: $7f
	db $e3                                           ; $6ec8: $e3
	or $cf                                           ; $6ec9: $f6 $cf
	ld sp, hl                                        ; $6ecb: $f9
	sbc [hl]                                         ; $6ecc: $9e
	sbc a                                            ; $6ecd: $9f
	add b                                            ; $6ece: $80
	add a                                            ; $6ecf: $87
	add b                                            ; $6ed0: $80
	adc a                                            ; $6ed1: $8f
	add b                                            ; $6ed2: $80
	ret                                              ; $6ed3: $c9


	add a                                            ; $6ed4: $87

Call_070_6ed5:
	sub $8e                                          ; $6ed5: $d6 $8e
	rst SubAFromDE                                          ; $6ed7: $df
	ld e, a                                          ; $6ed8: $5f
	ld [$03cb], a                                    ; $6ed9: $ea $cb $03
	nop                                              ; $6edc: $00
	dec sp                                           ; $6edd: $3b
	nop                                              ; $6ede: $00
	sbc [hl]                                         ; $6edf: $9e
	ld hl, sp+$7b                                    ; $6ee0: $f8 $7b
	cp $99                                           ; $6ee2: $fe $99
	ret c                                            ; $6ee4: $d8

	ldh [rBCPS], a                                   ; $6ee5: $e0 $68
	ld [hl], b                                       ; $6ee7: $70
	ld hl, sp-$10                                    ; $6ee8: $f8 $f0
	inc bc                                           ; $6eea: $03
	nop                                              ; $6eeb: $00
	inc sp                                           ; $6eec: $33
	nop                                              ; $6eed: $00
	sub l                                            ; $6eee: $95
	rra                                              ; $6eef: $1f
	nop                                              ; $6ef0: $00
	ccf                                              ; $6ef1: $3f
	nop                                              ; $6ef2: $00
	dec sp                                           ; $6ef3: $3b
	rlca                                             ; $6ef4: $07
	ld [hl], $0e                                     ; $6ef5: $36 $0e
	rra                                              ; $6ef7: $1f
	rrca                                             ; $6ef8: $0f
	inc bc                                           ; $6ef9: $03
	nop                                              ; $6efa: $00
	inc sp                                           ; $6efb: $33
	nop                                              ; $6efc: $00
	sub e                                            ; $6efd: $93
	rst $38                                          ; $6efe: $ff
	ld bc, $01ff                                     ; $6eff: $01 $ff $01
	sbc a                                            ; $6f02: $9f
	pop hl                                           ; $6f03: $e1
	ld l, a                                          ; $6f04: $6f
	ld [hl], c                                       ; $6f05: $71
	cp $fb                                           ; $6f06: $fe $fb
	ld e, [hl]                                       ; $6f08: $5e
	db $d3                                           ; $6f09: $d3
	inc bc                                           ; $6f0a: $03
	nop                                              ; $6f0b: $00
	ld h, e                                          ; $6f0c: $63
	nop                                              ; $6f0d: $00
	sbc l                                            ; $6f0e: $9d
	rst $38                                          ; $6f0f: $ff
	and b                                            ; $6f10: $a0
	ld l, a                                          ; $6f11: $6f
	nop                                              ; $6f12: $00
	ld a, a                                          ; $6f13: $7f
	inc b                                            ; $6f14: $04
	ld a, a                                          ; $6f15: $7f
	nop                                              ; $6f16: $00
	ld a, a                                          ; $6f17: $7f
	cp $95                                           ; $6f18: $fe $95
	rst JumpTable                                          ; $6f1a: $c7
	add b                                            ; $6f1b: $80
	rst GetHLinHL                                          ; $6f1c: $cf
	add b                                            ; $6f1d: $80
	rst SubAFromDE                                          ; $6f1e: $df
	ld b, a                                          ; $6f1f: $47
	cp $df                                           ; $6f20: $fe $df
	ld l, d                                          ; $6f22: $6a
	jp z, $0003                                      ; $6f23: $ca $03 $00

	ld h, e                                          ; $6f26: $63
	nop                                              ; $6f27: $00
	sbc l                                            ; $6f28: $9d
	adc d                                            ; $6f29: $8a
	adc $5f                                          ; $6f2a: $ce $5f
	nop                                              ; $6f2c: $00
	ld l, [hl]                                       ; $6f2d: $6e
	db $fc                                           ; $6f2e: $fc
	sbc l                                            ; $6f2f: $9d
	cp b                                             ; $6f30: $b8
	ldh a, [$03]                                     ; $6f31: $f0 $03
	nop                                              ; $6f33: $00
	dec hl                                           ; $6f34: $2b
	nop                                              ; $6f35: $00
	ld [hl], a                                       ; $6f36: $77
	cp $9b                                           ; $6f37: $fe $9b
	rla                                              ; $6f39: $17
	rrca                                             ; $6f3a: $0f
	dec e                                            ; $6f3b: $1d
	rra                                              ; $6f3c: $1f
	inc bc                                           ; $6f3d: $03
	nop                                              ; $6f3e: $00
	dec hl                                           ; $6f3f: $2b
	nop                                              ; $6f40: $00
	ld [hl], a                                       ; $6f41: $77
	cp $99                                           ; $6f42: $fe $99
	cp $e3                                           ; $6f44: $fe $e3
	ld a, [hl]                                       ; $6f46: $7e
	ei                                               ; $6f47: $fb
	ld e, a                                          ; $6f48: $5f
	ld d, d                                          ; $6f49: $52
	inc bc                                           ; $6f4a: $03
	nop                                              ; $6f4b: $00
	ld h, e                                          ; $6f4c: $63
	nop                                              ; $6f4d: $00
	sub d                                            ; $6f4e: $92
	ld a, l                                          ; $6f4f: $7d
	db $e3                                           ; $6f50: $e3
	ei                                               ; $6f51: $fb
	rst JumpTable                                          ; $6f52: $c7
	push af                                          ; $6f53: $f5
	adc [hl]                                         ; $6f54: $8e
	sbc a                                            ; $6f55: $9f
	sbc b                                            ; $6f56: $98
	add a                                            ; $6f57: $87
	add b                                            ; $6f58: $80
	add e                                            ; $6f59: $83
	add b                                            ; $6f5a: $80
	jp $fe77                                         ; $6f5b: $c3 $77 $fe


jr_070_6f5e:
	sub [hl]                                         ; $6f5e: $96
	ld b, b                                          ; $6f5f: $40
	rst SubAFromBC                                          ; $6f60: $e7
	ret nz                                           ; $6f61: $c0

	ld l, a                                          ; $6f62: $6f
	ret nz                                           ; $6f63: $c0

	xor l                                            ; $6f64: $ad
	ld l, [hl]                                       ; $6f65: $6e
	rst FarCall                                          ; $6f66: $f7
	and a                                            ; $6f67: $a7
	inc bc                                           ; $6f68: $03
	nop                                              ; $6f69: $00
	ld a, e                                          ; $6f6a: $7b
	nop                                              ; $6f6b: $00
	sbc c                                            ; $6f6c: $99
	dec d                                            ; $6f6d: $15
	inc e                                            ; $6f6e: $1c
	adc d                                            ; $6f6f: $8a
	adc $47                                          ; $6f70: $ce $47
	add a                                            ; $6f72: $87
	ld d, a                                          ; $6f73: $57
	nop                                              ; $6f74: $00
	ld [hl], a                                       ; $6f75: $77
	cp $7f                                           ; $6f76: $fe $7f
	ldh a, [c]                                       ; $6f78: $f2
	sbc e                                            ; $6f79: $9b
	ld d, c                                          ; $6f7a: $51
	jr nc, jr_070_6f5e                               ; $6f7b: $30 $e1

	ldh [$03], a                                     ; $6f7d: $e0 $03
	nop                                              ; $6f7f: $00
	inc sp                                           ; $6f80: $33
	nop                                              ; $6f81: $00
	ld a, a                                          ; $6f82: $7f
	ld hl, sp+$7f                                    ; $6f83: $f8 $7f
	cp $7f                                           ; $6f85: $fe $7f
	ldh a, [c]                                       ; $6f87: $f2
	sbc e                                            ; $6f88: $9b
	ld a, [bc]                                       ; $6f89: $0a
	inc c                                            ; $6f8a: $0c
	add a                                            ; $6f8b: $87
	rlca                                             ; $6f8c: $07
	inc bc                                           ; $6f8d: $03
	nop                                              ; $6f8e: $00
	cpl                                              ; $6f8f: $2f
	nop                                              ; $6f90: $00
	sub [hl]                                         ; $6f91: $96
	inc bc                                           ; $6f92: $03
	cp $03                                           ; $6f93: $fe $03
	rst $38                                          ; $6f95: $ff
	ld [bc], a                                       ; $6f96: $02
	cp [hl]                                          ; $6f97: $be
	ld [hl], l                                       ; $6f98: $75
	db $fd                                           ; $6f99: $fd
	rst SubAFromBC                                          ; $6f9a: $e7
	cpl                                              ; $6f9b: $2f
	nop                                              ; $6f9c: $00
	rst AddAOntoHL                                          ; $6f9d: $ef
	sbc [hl]                                         ; $6f9e: $9e
	inc bc                                           ; $6f9f: $03
	ld [hl], a                                       ; $6fa0: $77
	add sp, $7f                                      ; $6fa1: $e8 $7f
	sbc e                                            ; $6fa3: $9b
	add sp, -$62                                     ; $6fa4: $e8 $9e
	ret nz                                           ; $6fa6: $c0

	ld [hl], a                                       ; $6fa7: $77
	ld [$809e], sp                                   ; $6fa8: $08 $9e $80
	rst SubAFromBC                                          ; $6fab: $e7
	sbc $03                                          ; $6fac: $de $03
	dec de                                           ; $6fae: $1b
	jp nz, $c07b                                     ; $6faf: $c2 $7b $c0

	rst SubAFromDE                                          ; $6fb2: $df
	ret nz                                           ; $6fb3: $c0

	dec de                                           ; $6fb4: $1b
	jp nz, $c073                                     ; $6fb5: $c2 $73 $c0

	ld a, a                                          ; $6fb8: $7f
	cp a                                             ; $6fb9: $bf
	rla                                              ; $6fba: $17
	add b                                            ; $6fbb: $80
	ld [hl], a                                       ; $6fbc: $77
	cp a                                             ; $6fbd: $bf
	dec de                                           ; $6fbe: $1b
	cp [hl]                                          ; $6fbf: $be
	sbc [hl]                                         ; $6fc0: $9e
	rlca                                             ; $6fc1: $07
	dec bc                                           ; $6fc2: $0b
	cp a                                             ; $6fc3: $bf
	sbc [hl]                                         ; $6fc4: $9e
	ldh [rHDMA3], a                                  ; $6fc5: $e0 $53
	cp a                                             ; $6fc7: $bf
	rst FarCall                                          ; $6fc8: $f7
	ld bc, $5380                                     ; $6fc9: $01 $80 $53
	rrca                                             ; $6fcc: $0f
	rla                                              ; $6fcd: $17
	ld c, l                                          ; $6fce: $4d
	daa                                              ; $6fcf: $27
	ld e, l                                          ; $6fd0: $5d
	ld l, l                                          ; $6fd1: $6d
	ld e, b                                          ; $6fd2: $58
	db $ec                                           ; $6fd3: $ec
	ld e, b                                          ; $6fd4: $58
	ld hl, sp+$50                                    ; $6fd5: $f8 $50
	cp e                                             ; $6fd7: $bb
	db $d3                                           ; $6fd8: $d3
	rst $38                                          ; $6fd9: $ff
	and a                                            ; $6fda: $a7
	ld a, l                                          ; $6fdb: $7d
	xor $ef                                          ; $6fdc: $ee $ef
	ret c                                            ; $6fde: $d8

	rst $38                                          ; $6fdf: $ff
	add b                                            ; $6fe0: $80
	sbc a                                            ; $6fe1: $9f
	add b                                            ; $6fe2: $80
	add a                                            ; $6fe3: $87
	add c                                            ; $6fe4: $81
	adc a                                            ; $6fe5: $8f
	add a                                            ; $6fe6: $87
	sbc $9e                                          ; $6fe7: $de $9e
	call z, $8c82                                    ; $6fe9: $cc $82 $8c
	bit 0, e                                         ; $6fec: $cb $43
	ldh [c], a                                       ; $6fee: $e2
	jp $c262                                         ; $6fef: $c3 $62 $c2


	and c                                            ; $6ff2: $a1
	ld h, c                                          ; $6ff3: $61
	push af                                          ; $6ff4: $f5
	and e                                            ; $6ff5: $a3
	ldh a, [$e0]                                     ; $6ff6: $f0 $e0
	or b                                             ; $6ff8: $b0
	ldh a, [$f8]                                     ; $6ff9: $f0 $f8
	or b                                             ; $6ffb: $b0
	rst $38                                          ; $6ffc: $ff
	cp b                                             ; $6ffd: $b8
	rst AddAOntoHL                                          ; $6ffe: $ef
	xor h                                            ; $6fff: $ac
	rst SubAFromBC                                          ; $7000: $e7
	and [hl]                                         ; $7001: $a6
	ld b, e                                          ; $7002: $43
	ld b, e                                          ; $7003: $43
	ld b, c                                          ; $7004: $41
	ld b, c                                          ; $7005: $41
	ld b, b                                          ; $7006: $40
	ld b, b                                          ; $7007: $40
	db $fd                                           ; $7008: $fd
	add b                                            ; $7009: $80
	ld a, [hl+]                                      ; $700a: $2a
	ld de, $109d                                     ; $700b: $11 $9d $10
	ld [hl], l                                       ; $700e: $75
	sbc b                                            ; $700f: $98
	xor e                                            ; $7010: $ab
	call c, $cebd                                    ; $7011: $dc $bd $ce
	ld e, d                                          ; $7014: $5a
	ld l, a                                          ; $7015: $6f
	xor l                                            ; $7016: $ad
	or a                                             ; $7017: $b7
	dec d                                            ; $7018: $15
	call c, $0eca                                    ; $7019: $dc $ca $0e
	add a                                            ; $701c: $87
	rlca                                             ; $701d: $07
	ldh [rP1], a                                     ; $701e: $e0 $00
	ldh a, [rP1]                                     ; $7020: $f0 $00
	ld hl, sp-$40                                    ; $7022: $f8 $c0
	ld hl, sp-$20                                    ; $7024: $f8 $e0
	jr c, jr_070_7058                                ; $7026: $38 $30

	ld a, b                                          ; $7028: $78
	adc a                                            ; $7029: $8f
	ld [hl], b                                       ; $702a: $70
	ld hl, sp-$20                                    ; $702b: $f8 $e0
	and b                                            ; $702d: $a0
	ldh [$a0], a                                     ; $702e: $e0 $a0
	and b                                            ; $7030: $a0
	ld b, c                                          ; $7031: $41
	ld b, b                                          ; $7032: $40
	and c                                            ; $7033: $a1
	ret nz                                           ; $7034: $c0

	inc bc                                           ; $7035: $03
	ld bc, $0103                                     ; $7036: $01 $03 $01
	ld bc, $80f8                                     ; $7039: $01 $f8 $80
	ret nz                                           ; $703c: $c0

	add b                                            ; $703d: $80
	ldh a, [$e0]                                     ; $703e: $f0 $e0
	db $f4                                           ; $7040: $f4
	sbc b                                            ; $7041: $98
	db $fd                                           ; $7042: $fd
	adc [hl]                                         ; $7043: $8e
	rst SubAFromDE                                          ; $7044: $df
	ld [$8c7b], sp                                   ; $7045: $08 $7b $8c
	ld a, a                                          ; $7048: $7f
	call z, Call_070_6ed5                            ; $7049: $cc $d5 $6e
	xor [hl]                                         ; $704c: $ae
	ld [hl], a                                       ; $704d: $77
	inc sp                                           ; $704e: $33
	rst $38                                          ; $704f: $ff
	add hl, de                                       ; $7050: $19
	rst $38                                          ; $7051: $ff
	sub h                                            ; $7052: $94
	rst $38                                          ; $7053: $ff
	adc $7b                                          ; $7054: $ce $7b
	scf                                              ; $7056: $37
	dec a                                            ; $7057: $3d

jr_070_7058:
	rrca                                             ; $7058: $0f
	ld c, $0f                                        ; $7059: $0e $0f
	add l                                            ; $705b: $85
	nop                                              ; $705c: $00
	rra                                              ; $705d: $1f
	inc bc                                           ; $705e: $03
	ccf                                              ; $705f: $3f
	rlca                                             ; $7060: $07
	inc a                                            ; $7061: $3c
	inc c                                            ; $7062: $0c
	ld a, $0e                                        ; $7063: $3e $0e
	rra                                              ; $7065: $1f
	rlca                                             ; $7066: $07
	dec b                                            ; $7067: $05
	rlca                                             ; $7068: $07
	dec b                                            ; $7069: $05
	dec b                                            ; $706a: $05
	ld [bc], a                                       ; $706b: $02
	ld [bc], a                                       ; $706c: $02
	add l                                            ; $706d: $85
	inc bc                                           ; $706e: $03
	ret nz                                           ; $706f: $c0

	nop                                              ; $7070: $00
	ret nz                                           ; $7071: $c0

	nop                                              ; $7072: $00
	add b                                            ; $7073: $80
	nop                                              ; $7074: $00
	ld bc, $fe7b                                     ; $7075: $01 $7b $fe
	add b                                            ; $7078: $80
	inc bc                                           ; $7079: $03
	nop                                              ; $707a: $00
	rlca                                             ; $707b: $07
	nop                                              ; $707c: $00
	rrca                                             ; $707d: $0f
	ld bc, $071f                                     ; $707e: $01 $1f $07
	ld l, a                                          ; $7081: $6f
	rra                                              ; $7082: $1f
	cp a                                             ; $7083: $bf
	ld a, a                                          ; $7084: $7f
	cp b                                             ; $7085: $b8
	rst GetHLinHL                                          ; $7086: $cf
	ld b, a                                          ; $7087: $47
	rst $38                                          ; $7088: $ff
	db $e3                                           ; $7089: $e3
	ld a, [hl]                                       ; $708a: $7e
	and c                                            ; $708b: $a1
	ld a, a                                          ; $708c: $7f
	sub b                                            ; $708d: $90
	ld a, a                                          ; $708e: $7f
	ld c, $ff                                        ; $708f: $0e $ff
	add l                                            ; $7091: $85
	rst $38                                          ; $7092: $ff
	jp nz, Jump_070_71ff                             ; $7093: $c2 $ff $71

	rst $38                                          ; $7096: $ff
	inc a                                            ; $7097: $3c
	add b                                            ; $7098: $80
	rst AddAOntoHL                                          ; $7099: $ef
	rst SubAFromDE                                          ; $709a: $df
	di                                               ; $709b: $f3
	rst $38                                          ; $709c: $ff
	add hl, sp                                       ; $709d: $39
	rst $38                                          ; $709e: $ff
	add c                                            ; $709f: $81
	rst $38                                          ; $70a0: $ff
	pop hl                                           ; $70a1: $e1
	ld a, a                                          ; $70a2: $7f
	ld a, c                                          ; $70a3: $79
	ccf                                              ; $70a4: $3f
	ld sp, $c3de                                     ; $70a5: $31 $de $c3
	ld e, [hl]                                       ; $70a8: $5e
	jp Jump_070_425f                                 ; $70a9: $c3 $5f $42


	cp [hl]                                          ; $70ac: $be
	add l                                            ; $70ad: $85
	cp l                                             ; $70ae: $bd
	rst JumpTable                                          ; $70af: $c7
	rst FarCall                                          ; $70b0: $f7
	rrca                                             ; $70b1: $0f
	ld a, l                                          ; $70b2: $7d
	rrca                                             ; $70b3: $0f
	rst AddAOntoHL                                          ; $70b4: $ef
	dec e                                            ; $70b5: $1d
	rst $38                                          ; $70b6: $ff
	dec e                                            ; $70b7: $1d
	sub l                                            ; $70b8: $95
	rst FarCall                                          ; $70b9: $f7
	dec [hl]                                         ; $70ba: $35
	rst SubAFromBC                                          ; $70bb: $e7
	ld h, l                                          ; $70bc: $65
	jp nz, $82c2                                     ; $70bd: $c2 $c2 $82

	add d                                            ; $70c0: $82
	ld [bc], a                                       ; $70c1: $02
	ld [bc], a                                       ; $70c2: $02
	db $fd                                           ; $70c3: $fd
	inc hl                                           ; $70c4: $23
	nop                                              ; $70c5: $00
	sub h                                            ; $70c6: $94
	add b                                            ; $70c7: $80
	adc a                                            ; $70c8: $8f
	add b                                            ; $70c9: $80
	res 0, a                                         ; $70ca: $cb $87
	sub $8e                                          ; $70cc: $d6 $8e
	rst SubAFromDE                                          ; $70ce: $df
	ld e, a                                          ; $70cf: $5f
	ld [$03cb], a                                    ; $70d0: $ea $cb $03
	nop                                              ; $70d3: $00
	scf                                              ; $70d4: $37
	nop                                              ; $70d5: $00
	ld a, e                                          ; $70d6: $7b
	cp $99                                           ; $70d7: $fe $99
	ret c                                            ; $70d9: $d8

	ldh [rBCPS], a                                   ; $70da: $e0 $68
	ld [hl], b                                       ; $70dc: $70
	ld hl, sp-$10                                    ; $70dd: $f8 $f0
	inc bc                                           ; $70df: $03
	nop                                              ; $70e0: $00
	cpl                                              ; $70e1: $2f
	nop                                              ; $70e2: $00
	sub [hl]                                         ; $70e3: $96
	nop                                              ; $70e4: $00
	ccf                                              ; $70e5: $3f
	nop                                              ; $70e6: $00
	dec sp                                           ; $70e7: $3b
	rlca                                             ; $70e8: $07
	ld [hl], $0e                                     ; $70e9: $36 $0e
	rra                                              ; $70eb: $1f
	rrca                                             ; $70ec: $0f
	inc bc                                           ; $70ed: $03
	nop                                              ; $70ee: $00
	cpl                                              ; $70ef: $2f
	nop                                              ; $70f0: $00
	sub h                                            ; $70f1: $94
	ld bc, $01ff                                     ; $70f2: $01 $ff $01
	rst SubAFromDE                                          ; $70f5: $df
	pop hl                                           ; $70f6: $e1
	ld l, a                                          ; $70f7: $6f
	ld [hl], c                                       ; $70f8: $71
	cp $fb                                           ; $70f9: $fe $fb
	ld e, [hl]                                       ; $70fb: $5e

Jump_070_70fc:
	db $d3                                           ; $70fc: $d3
	inc bc                                           ; $70fd: $03
	nop                                              ; $70fe: $00
	ld b, e                                          ; $70ff: $43
	nop                                              ; $7100: $00
	ld a, a                                          ; $7101: $7f
	inc b                                            ; $7102: $04
	ld a, a                                          ; $7103: $7f
	nop                                              ; $7104: $00
	ld a, a                                          ; $7105: $7f
	cp $95                                           ; $7106: $fe $95
	rst JumpTable                                          ; $7108: $c7
	add b                                            ; $7109: $80
	rst GetHLinHL                                          ; $710a: $cf
	add b                                            ; $710b: $80
	rst SubAFromDE                                          ; $710c: $df
	ld b, a                                          ; $710d: $47
	cp $df                                           ; $710e: $fe $df
	ld l, d                                          ; $7110: $6a
	jp z, $0003                                      ; $7111: $ca $03 $00

	inc sp                                           ; $7114: $33
	nop                                              ; $7115: $00
	ld l, [hl]                                       ; $7116: $6e
	db $fc                                           ; $7117: $fc
	sbc l                                            ; $7118: $9d
	cp b                                             ; $7119: $b8
	ldh a, [$03]                                     ; $711a: $f0 $03
	nop                                              ; $711c: $00
	dec hl                                           ; $711d: $2b
	nop                                              ; $711e: $00
	ld [hl], a                                       ; $711f: $77
	cp $9b                                           ; $7120: $fe $9b
	rla                                              ; $7122: $17
	rrca                                             ; $7123: $0f
	dec e                                            ; $7124: $1d
	rra                                              ; $7125: $1f
	inc bc                                           ; $7126: $03
	nop                                              ; $7127: $00
	dec hl                                           ; $7128: $2b
	nop                                              ; $7129: $00
	ld [hl], a                                       ; $712a: $77
	cp $99                                           ; $712b: $fe $99
	cp $e3                                           ; $712d: $fe $e3
	ld a, [hl]                                       ; $712f: $7e
	ei                                               ; $7130: $fb

jr_070_7131:
	ld e, a                                          ; $7131: $5f
	ld d, d                                          ; $7132: $52
	inc bc                                           ; $7133: $03
	nop                                              ; $7134: $00
	ld [hl], e                                       ; $7135: $73
	nop                                              ; $7136: $00
	sub l                                            ; $7137: $95
	cp b                                             ; $7138: $b8
	ret nc                                           ; $7139: $d0

	rst $38                                          ; $713a: $ff
	and e                                            ; $713b: $a3
	ld [hl], a                                       ; $713c: $77
	rst AddAOntoHL                                          ; $713d: $ef
	db $eb                                           ; $713e: $eb
	call c, $98f7                                    ; $713f: $dc $f7 $98
	ld [hl], a                                       ; $7142: $77
	nop                                              ; $7143: $00
	sbc h                                            ; $7144: $9c
	add e                                            ; $7145: $83
	add b                                            ; $7146: $80
	jp $fe77                                         ; $7147: $c3 $77 $fe


	sub [hl]                                         ; $714a: $96
	ld b, b                                          ; $714b: $40
	rst SubAFromBC                                          ; $714c: $e7
	ret nz                                           ; $714d: $c0

	ld l, a                                          ; $714e: $6f
	ret nz                                           ; $714f: $c0

	xor l                                            ; $7150: $ad
	ld l, [hl]                                       ; $7151: $6e
	rst FarCall                                          ; $7152: $f7
	and a                                            ; $7153: $a7
	inc bc                                           ; $7154: $03
	nop                                              ; $7155: $00
	sbc b                                            ; $7156: $98
	ld l, a                                          ; $7157: $6f
	dec l                                            ; $7158: $2d
	scf                                              ; $7159: $37
	sub l                                            ; $715a: $95
	call c, $8e4a                                    ; $715b: $dc $4a $8e
	ld c, a                                          ; $715e: $4f
	nop                                              ; $715f: $00
	ld [hl], a                                       ; $7160: $77
	cp $7f                                           ; $7161: $fe $7f
	ldh a, [c]                                       ; $7163: $f2
	sbc e                                            ; $7164: $9b
	ld d, c                                          ; $7165: $51
	jr nc, @-$1d                                     ; $7166: $30 $e1

	ldh [$03], a                                     ; $7168: $e0 $03
	nop                                              ; $716a: $00
	inc sp                                           ; $716b: $33
	nop                                              ; $716c: $00
	ld a, a                                          ; $716d: $7f
	ld hl, sp+$7f                                    ; $716e: $f8 $7f
	cp $7f                                           ; $7170: $fe $7f
	ldh a, [c]                                       ; $7172: $f2
	sbc e                                            ; $7173: $9b
	ld a, [bc]                                       ; $7174: $0a
	inc c                                            ; $7175: $0c
	add a                                            ; $7176: $87
	rlca                                             ; $7177: $07
	inc bc                                           ; $7178: $03
	nop                                              ; $7179: $00
	cpl                                              ; $717a: $2f
	nop                                              ; $717b: $00
	sub [hl]                                         ; $717c: $96
	inc bc                                           ; $717d: $03
	cp $03                                           ; $717e: $fe $03
	rst $38                                          ; $7180: $ff
	ld [bc], a                                       ; $7181: $02
	cp [hl]                                          ; $7182: $be
	ld [hl], l                                       ; $7183: $75
	db $fd                                           ; $7184: $fd
	rst SubAFromBC                                          ; $7185: $e7
	cpl                                              ; $7186: $2f
	nop                                              ; $7187: $00
	rst AddAOntoHL                                          ; $7188: $ef
	sbc [hl]                                         ; $7189: $9e
	inc bc                                           ; $718a: $03
	ld [hl], a                                       ; $718b: $77
	add sp, $5f                                      ; $718c: $e8 $5f
	ld d, a                                          ; $718e: $57
	ldh a, [c]                                       ; $718f: $f2
	rst SubAFromDE                                          ; $7190: $df
	jr nz, jr_070_7131                               ; $7191: $20 $9e

	ret nz                                           ; $7193: $c0

	ld [hl], a                                       ; $7194: $77
	ld [$777f], sp                                   ; $7195: $08 $7f $77
	add sp, -$22                                     ; $7198: $e8 $de
	inc bc                                           ; $719a: $03
	inc hl                                           ; $719b: $23
	jp nz, $c077                                     ; $719c: $c2 $77 $c0

	sbc h                                            ; $719f: $9c
	ldh [$c0], a                                     ; $71a0: $e0 $c0
	ret nz                                           ; $71a2: $c0

	dec de                                           ; $71a3: $1b
	jp nz, $c06f                                     ; $71a4: $c2 $6f $c0

	rra                                              ; $71a7: $1f
	cp a                                             ; $71a8: $bf
	sbc l                                            ; $71a9: $9d
	jr nz, jr_070_71ac                               ; $71aa: $20 $00

jr_070_71ac:
	sbc $e0                                          ; $71ac: $de $e0
	rst SubAFromDE                                          ; $71ae: $df
	ret nz                                           ; $71af: $c0

	and $9e                                          ; $71b0: $e6 $9e
	rlca                                             ; $71b2: $07
	db $dd                                           ; $71b3: $dd
	inc bc                                           ; $71b4: $03
	inc hl                                           ; $71b5: $23
	cp [hl]                                          ; $71b6: $be
	sbc h                                            ; $71b7: $9c
	jr nc, jr_070_71ba                               ; $71b8: $30 $00

jr_070_71ba:
	ldh a, [$dd]                                     ; $71ba: $f0 $dd
	ldh [$63], a                                     ; $71bc: $e0 $63
	cp [hl]                                          ; $71be: $be
	ret c                                            ; $71bf: $d8

	ld bc, $5380                                     ; $71c0: $01 $80 $53
	rrca                                             ; $71c3: $0f
	rla                                              ; $71c4: $17
	ld c, l                                          ; $71c5: $4d
	daa                                              ; $71c6: $27
	ld e, l                                          ; $71c7: $5d
	ld l, l                                          ; $71c8: $6d
	ld e, b                                          ; $71c9: $58
	db $ec                                           ; $71ca: $ec
	ld e, b                                          ; $71cb: $58
	ld hl, sp+$50                                    ; $71cc: $f8 $50
	cp b                                             ; $71ce: $b8
	ret nc                                           ; $71cf: $d0

	rst $38                                          ; $71d0: $ff
	and e                                            ; $71d1: $a3
	ld [hl], a                                       ; $71d2: $77
	rst AddAOntoHL                                          ; $71d3: $ef
	db $eb                                           ; $71d4: $eb
	call c, $98f7                                    ; $71d5: $dc $f7 $98
	sbc a                                            ; $71d8: $9f
	add b                                            ; $71d9: $80
	add [hl]                                         ; $71da: $86

jr_070_71db:
	add c                                            ; $71db: $81
	adc e                                            ; $71dc: $8b
	add a                                            ; $71dd: $87
	sbc $8e                                          ; $71de: $de $8e
	sbc $82                                          ; $71e0: $de $82
	sbc [hl]                                         ; $71e2: $9e
	bit 1, e                                         ; $71e3: $cb $4b
	ld [$62c3], a                                    ; $71e5: $ea $c3 $62
	jp nz, Jump_070_61a1                             ; $71e8: $c2 $a1 $61

	push af                                          ; $71eb: $f5
	and e                                            ; $71ec: $a3
	ldh a, [$e0]                                     ; $71ed: $f0 $e0
	or b                                             ; $71ef: $b0
	ldh a, [$f8]                                     ; $71f0: $f0 $f8
	or b                                             ; $71f2: $b0
	rst $38                                          ; $71f3: $ff
	cp b                                             ; $71f4: $b8
	rst AddAOntoHL                                          ; $71f5: $ef
	xor h                                            ; $71f6: $ac
	rst SubAFromBC                                          ; $71f7: $e7
	and [hl]                                         ; $71f8: $a6
	ld b, e                                          ; $71f9: $43
	ld b, e                                          ; $71fa: $43
	ld b, c                                          ; $71fb: $41
	ld b, c                                          ; $71fc: $41
	ld b, b                                          ; $71fd: $40
	ld b, b                                          ; $71fe: $40

Jump_070_71ff:
	db $fd                                           ; $71ff: $fd
	add b                                            ; $7200: $80
	ld a, [hl+]                                      ; $7201: $2a
	ld de, $109d                                     ; $7202: $11 $9d $10
	ld [hl], l                                       ; $7205: $75
	sbc b                                            ; $7206: $98
	xor e                                            ; $7207: $ab
	call c, $cebd                                    ; $7208: $dc $bd $ce
	ld e, d                                          ; $720b: $5a
	ld l, a                                          ; $720c: $6f
	dec l                                            ; $720d: $2d
	scf                                              ; $720e: $37
	sub l                                            ; $720f: $95
	call c, $8e4a                                    ; $7210: $dc $4a $8e
	add a                                            ; $7213: $87
	rlca                                             ; $7214: $07
	ldh [rP1], a                                     ; $7215: $e0 $00
	ldh a, [rP1]                                     ; $7217: $f0 $00
	jr c, jr_070_71db                                ; $7219: $38 $c0

	ld hl, sp-$20                                    ; $721b: $f8 $e0
	jr c, jr_070_724f                                ; $721d: $38 $30

	ld a, b                                          ; $721f: $78
	adc a                                            ; $7220: $8f
	ld [hl], b                                       ; $7221: $70
	ld hl, sp-$20                                    ; $7222: $f8 $e0
	and b                                            ; $7224: $a0
	ldh [$a0], a                                     ; $7225: $e0 $a0
	and b                                            ; $7227: $a0
	ld b, c                                          ; $7228: $41
	ld b, b                                          ; $7229: $40
	and c                                            ; $722a: $a1
	ret nz                                           ; $722b: $c0

	inc bc                                           ; $722c: $03
	ld bc, $0103                                     ; $722d: $01 $03 $01
	ld bc, $80f8                                     ; $7230: $01 $f8 $80
	ret nz                                           ; $7233: $c0

	add b                                            ; $7234: $80
	ldh a, [$e0]                                     ; $7235: $f0 $e0
	db $f4                                           ; $7237: $f4
	sbc b                                            ; $7238: $98
	db $fd                                           ; $7239: $fd
	adc [hl]                                         ; $723a: $8e
	rst SubAFromDE                                          ; $723b: $df
	ld [$8c7b], sp                                   ; $723c: $08 $7b $8c
	ld a, a                                          ; $723f: $7f
	call z, Call_070_6ed5                            ; $7240: $cc $d5 $6e
	xor [hl]                                         ; $7243: $ae
	ld [hl], a                                       ; $7244: $77
	inc sp                                           ; $7245: $33
	rst $38                                          ; $7246: $ff
	add hl, de                                       ; $7247: $19
	rst $38                                          ; $7248: $ff
	sub h                                            ; $7249: $94
	rst $38                                          ; $724a: $ff
	adc $7b                                          ; $724b: $ce $7b
	scf                                              ; $724d: $37
	dec a                                            ; $724e: $3d

jr_070_724f:
	rrca                                             ; $724f: $0f
	ld c, $0f                                        ; $7250: $0e $0f
	add l                                            ; $7252: $85
	nop                                              ; $7253: $00
	inc e                                            ; $7254: $1c
	inc bc                                           ; $7255: $03
	ccf                                              ; $7256: $3f
	rlca                                             ; $7257: $07
	inc a                                            ; $7258: $3c
	inc c                                            ; $7259: $0c
	ld a, $0e                                        ; $725a: $3e $0e
	rra                                              ; $725c: $1f
	rlca                                             ; $725d: $07
	dec b                                            ; $725e: $05
	rlca                                             ; $725f: $07
	dec b                                            ; $7260: $05
	dec b                                            ; $7261: $05
	ld [bc], a                                       ; $7262: $02
	ld [bc], a                                       ; $7263: $02
	add l                                            ; $7264: $85
	inc bc                                           ; $7265: $03
	ret nz                                           ; $7266: $c0

	nop                                              ; $7267: $00
	ret nz                                           ; $7268: $c0

	nop                                              ; $7269: $00
	add b                                            ; $726a: $80
	nop                                              ; $726b: $00
	ld bc, $fe7b                                     ; $726c: $01 $7b $fe
	add b                                            ; $726f: $80
	inc bc                                           ; $7270: $03
	nop                                              ; $7271: $00
	rlca                                             ; $7272: $07
	nop                                              ; $7273: $00
	rrca                                             ; $7274: $0f
	ld bc, $071f                                     ; $7275: $01 $1f $07
	ld l, a                                          ; $7278: $6f
	rra                                              ; $7279: $1f
	cp a                                             ; $727a: $bf
	ld a, a                                          ; $727b: $7f
	cp b                                             ; $727c: $b8
	rst GetHLinHL                                          ; $727d: $cf
	ld b, a                                          ; $727e: $47
	rst $38                                          ; $727f: $ff
	db $e3                                           ; $7280: $e3
	ld a, [hl]                                       ; $7281: $7e
	and c                                            ; $7282: $a1
	ld a, a                                          ; $7283: $7f
	sub b                                            ; $7284: $90
	ld a, a                                          ; $7285: $7f
	ld c, $ff                                        ; $7286: $0e $ff
	add l                                            ; $7288: $85
	rst $38                                          ; $7289: $ff
	jp nz, Jump_070_71ff                             ; $728a: $c2 $ff $71

	rst $38                                          ; $728d: $ff
	inc a                                            ; $728e: $3c
	add b                                            ; $728f: $80
	rst AddAOntoHL                                          ; $7290: $ef
	rst SubAFromDE                                          ; $7291: $df
	di                                               ; $7292: $f3
	rst $38                                          ; $7293: $ff
	add hl, sp                                       ; $7294: $39
	ld a, a                                          ; $7295: $7f
	add c                                            ; $7296: $81
	rst SubAFromDE                                          ; $7297: $df
	pop hl                                           ; $7298: $e1
	ld a, a                                          ; $7299: $7f
	ld [hl], c                                       ; $729a: $71
	ld a, a                                          ; $729b: $7f
	ld a, c                                          ; $729c: $79
	sbc $d3                                          ; $729d: $de $d3
	ld e, [hl]                                       ; $729f: $5e
	jp Jump_070_425f                                 ; $72a0: $c3 $5f $42


	cp [hl]                                          ; $72a3: $be
	add l                                            ; $72a4: $85
	cp l                                             ; $72a5: $bd
	rst JumpTable                                          ; $72a6: $c7
	rst FarCall                                          ; $72a7: $f7
	rrca                                             ; $72a8: $0f
	ld a, l                                          ; $72a9: $7d
	rrca                                             ; $72aa: $0f
	rst AddAOntoHL                                          ; $72ab: $ef
	dec e                                            ; $72ac: $1d
	rst $38                                          ; $72ad: $ff
	dec e                                            ; $72ae: $1d
	sub l                                            ; $72af: $95
	rst FarCall                                          ; $72b0: $f7
	dec [hl]                                         ; $72b1: $35
	rst SubAFromBC                                          ; $72b2: $e7
	ld h, l                                          ; $72b3: $65
	jp nz, $82c2                                     ; $72b4: $c2 $c2 $82

	add d                                            ; $72b7: $82
	ld [bc], a                                       ; $72b8: $02
	ld [bc], a                                       ; $72b9: $02
	db $fd                                           ; $72ba: $fd
	daa                                              ; $72bb: $27
	nop                                              ; $72bc: $00
	sub e                                            ; $72bd: $93
	add a                                            ; $72be: $87
	add b                                            ; $72bf: $80
	adc a                                            ; $72c0: $8f
	add b                                            ; $72c1: $80
	res 0, a                                         ; $72c2: $cb $87
	sub $8e                                          ; $72c4: $d6 $8e
	rst SubAFromDE                                          ; $72c6: $df
	ld e, a                                          ; $72c7: $5f
	ld [$03cb], a                                    ; $72c8: $ea $cb $03
	nop                                              ; $72cb: $00
	dec sp                                           ; $72cc: $3b
	nop                                              ; $72cd: $00
	sbc [hl]                                         ; $72ce: $9e
	ld hl, sp+$7b                                    ; $72cf: $f8 $7b
	cp $99                                           ; $72d1: $fe $99
	ret c                                            ; $72d3: $d8

	ldh [rBCPS], a                                   ; $72d4: $e0 $68
	ld [hl], b                                       ; $72d6: $70
	ld hl, sp-$10                                    ; $72d7: $f8 $f0
	inc bc                                           ; $72d9: $03
	nop                                              ; $72da: $00
	inc sp                                           ; $72db: $33
	nop                                              ; $72dc: $00
	sub l                                            ; $72dd: $95
	rra                                              ; $72de: $1f
	nop                                              ; $72df: $00
	ccf                                              ; $72e0: $3f
	nop                                              ; $72e1: $00
	dec sp                                           ; $72e2: $3b
	rlca                                             ; $72e3: $07
	ld [hl], $0e                                     ; $72e4: $36 $0e
	rra                                              ; $72e6: $1f
	rrca                                             ; $72e7: $0f
	inc bc                                           ; $72e8: $03
	nop                                              ; $72e9: $00
	inc sp                                           ; $72ea: $33
	nop                                              ; $72eb: $00
	sub e                                            ; $72ec: $93
	rst $38                                          ; $72ed: $ff
	ld bc, $01ff                                     ; $72ee: $01 $ff $01
	rst SubAFromDE                                          ; $72f1: $df
	pop hl                                           ; $72f2: $e1
	ld l, a                                          ; $72f3: $6f
	ld [hl], c                                       ; $72f4: $71
	cp $fb                                           ; $72f5: $fe $fb
	ld e, [hl]                                       ; $72f7: $5e
	db $d3                                           ; $72f8: $d3
	inc bc                                           ; $72f9: $03
	nop                                              ; $72fa: $00
	ld b, e                                          ; $72fb: $43
	nop                                              ; $72fc: $00
	ld a, a                                          ; $72fd: $7f
	inc b                                            ; $72fe: $04
	ld a, a                                          ; $72ff: $7f
	nop                                              ; $7300: $00
	ld a, a                                          ; $7301: $7f
	cp $95                                           ; $7302: $fe $95
	rst JumpTable                                          ; $7304: $c7
	add b                                            ; $7305: $80
	rst GetHLinHL                                          ; $7306: $cf
	add b                                            ; $7307: $80
	rst SubAFromDE                                          ; $7308: $df
	ld b, a                                          ; $7309: $47
	cp $df                                           ; $730a: $fe $df
	ld l, d                                          ; $730c: $6a
	jp z, $0003                                      ; $730d: $ca $03 $00

	inc sp                                           ; $7310: $33
	nop                                              ; $7311: $00
	ld l, [hl]                                       ; $7312: $6e
	db $fc                                           ; $7313: $fc
	sbc l                                            ; $7314: $9d
	cp b                                             ; $7315: $b8
	ldh a, [$03]                                     ; $7316: $f0 $03
	nop                                              ; $7318: $00
	dec hl                                           ; $7319: $2b
	nop                                              ; $731a: $00
	ld [hl], a                                       ; $731b: $77
	cp $9b                                           ; $731c: $fe $9b
	rla                                              ; $731e: $17
	rrca                                             ; $731f: $0f
	dec e                                            ; $7320: $1d
	rra                                              ; $7321: $1f
	inc bc                                           ; $7322: $03
	nop                                              ; $7323: $00
	dec hl                                           ; $7324: $2b
	nop                                              ; $7325: $00
	ld [hl], a                                       ; $7326: $77
	cp $99                                           ; $7327: $fe $99
	cp $e3                                           ; $7329: $fe $e3
	ld a, [hl]                                       ; $732b: $7e
	ei                                               ; $732c: $fb
	ld e, a                                          ; $732d: $5f
	ld d, d                                          ; $732e: $52
	inc bc                                           ; $732f: $03

jr_070_7330:
	nop                                              ; $7330: $00
	dec sp                                           ; $7331: $3b
	nop                                              ; $7332: $00
	sbc h                                            ; $7333: $9c
	add e                                            ; $7334: $83
	add b                                            ; $7335: $80
	jp $fe77                                         ; $7336: $c3 $77 $fe


	sub [hl]                                         ; $7339: $96
	ld b, b                                          ; $733a: $40
	rst SubAFromBC                                          ; $733b: $e7
	ret nz                                           ; $733c: $c0

	ld l, a                                          ; $733d: $6f
	ret nz                                           ; $733e: $c0

	xor l                                            ; $733f: $ad
	ld l, [hl]                                       ; $7340: $6e
	rst FarCall                                          ; $7341: $f7
	and a                                            ; $7342: $a7
	inc bc                                           ; $7343: $03
	nop                                              ; $7344: $00
	inc sp                                           ; $7345: $33
	nop                                              ; $7346: $00
	ld [hl], a                                       ; $7347: $77
	cp $7f                                           ; $7348: $fe $7f
	ldh a, [c]                                       ; $734a: $f2
	sbc e                                            ; $734b: $9b
	ld d, c                                          ; $734c: $51
	jr nc, jr_070_7330                               ; $734d: $30 $e1

	ldh [$03], a                                     ; $734f: $e0 $03
	nop                                              ; $7351: $00
	inc sp                                           ; $7352: $33
	nop                                              ; $7353: $00
	ld a, a                                          ; $7354: $7f
	ld hl, sp+$7f                                    ; $7355: $f8 $7f
	cp $7f                                           ; $7357: $fe $7f

jr_070_7359:
	ldh a, [c]                                       ; $7359: $f2
	sbc e                                            ; $735a: $9b
	ld a, [bc]                                       ; $735b: $0a
	inc c                                            ; $735c: $0c
	add a                                            ; $735d: $87
	rlca                                             ; $735e: $07
	inc bc                                           ; $735f: $03
	nop                                              ; $7360: $00
	cpl                                              ; $7361: $2f
	nop                                              ; $7362: $00
	sub [hl]                                         ; $7363: $96
	inc bc                                           ; $7364: $03
	cp $03                                           ; $7365: $fe $03
	rst $38                                          ; $7367: $ff
	ld [bc], a                                       ; $7368: $02
	cp [hl]                                          ; $7369: $be
	ld [hl], l                                       ; $736a: $75
	db $fd                                           ; $736b: $fd
	rst SubAFromBC                                          ; $736c: $e7
	cpl                                              ; $736d: $2f
	nop                                              ; $736e: $00
	rst AddAOntoHL                                          ; $736f: $ef
	sbc [hl]                                         ; $7370: $9e
	inc bc                                           ; $7371: $03
	ld [hl], a                                       ; $7372: $77
	add sp, $5f                                      ; $7373: $e8 $5f
	ld d, a                                          ; $7375: $57
	ldh a, [c]                                       ; $7376: $f2
	rst SubAFromDE                                          ; $7377: $df
	jr nz, jr_070_7359                               ; $7378: $20 $df

	ret nz                                           ; $737a: $c0

	cp $7f                                           ; $737b: $fe $7f
	ld [hl], a                                       ; $737d: $77
	add sp, -$22                                     ; $737e: $e8 $de
	inc bc                                           ; $7380: $03
	inc hl                                           ; $7381: $23
	jp nz, $c077                                     ; $7382: $c2 $77 $c0

	sbc h                                            ; $7385: $9c
	ldh [$c0], a                                     ; $7386: $e0 $c0
	ret nz                                           ; $7388: $c0

	dec de                                           ; $7389: $1b
	jp nz, $c06f                                     ; $738a: $c2 $6f $c0

	rra                                              ; $738d: $1f
	cp a                                             ; $738e: $bf
	ld a, e                                          ; $738f: $7b
	ret nz                                           ; $7390: $c0

	dec bc                                           ; $7391: $0b
	cp a                                             ; $7392: $bf
	inc bc                                           ; $7393: $03
	ret nz                                           ; $7394: $c0

	ld d, e                                          ; $7395: $53
	cp a                                             ; $7396: $bf
	and $01                                          ; $7397: $e6 $01
	add b                                            ; $7399: $80
	ld d, e                                          ; $739a: $53
	rrca                                             ; $739b: $0f
	rla                                              ; $739c: $17
	ld c, l                                          ; $739d: $4d
	daa                                              ; $739e: $27
	ld e, l                                          ; $739f: $5d
	ld l, l                                          ; $73a0: $6d
	ld e, b                                          ; $73a1: $58
	db $ec                                           ; $73a2: $ec
	ld e, b                                          ; $73a3: $58
	ld hl, sp+$50                                    ; $73a4: $f8 $50
	cp b                                             ; $73a6: $b8
	ret nc                                           ; $73a7: $d0

	db $fc                                           ; $73a8: $fc
	and b                                            ; $73a9: $a0
	ld a, e                                          ; $73aa: $7b
	rst SubAFromBC                                          ; $73ab: $e7
	rst AddAOntoHL                                          ; $73ac: $ef
	rst SubAFromDE                                          ; $73ad: $df
	ei                                               ; $73ae: $fb
	sbc h                                            ; $73af: $9c
	sbc a                                            ; $73b0: $9f
	add b                                            ; $73b1: $80
	add [hl]                                         ; $73b2: $86
	add c                                            ; $73b3: $81
	adc e                                            ; $73b4: $8b
	add a                                            ; $73b5: $87
	sbc $8e                                          ; $73b6: $de $8e
	sbc $82                                          ; $73b8: $de $82
	sbc [hl]                                         ; $73ba: $9e
	bit 1, e                                         ; $73bb: $cb $4b
	ld [$62c3], a                                    ; $73bd: $ea $c3 $62
	jp nz, Jump_070_61a1                             ; $73c0: $c2 $a1 $61

	push af                                          ; $73c3: $f5
	and e                                            ; $73c4: $a3
	ldh a, [$e0]                                     ; $73c5: $f0 $e0
	or b                                             ; $73c7: $b0
	ldh a, [$f8]                                     ; $73c8: $f0 $f8
	or b                                             ; $73ca: $b0
	rst $38                                          ; $73cb: $ff
	cp b                                             ; $73cc: $b8
	rst AddAOntoHL                                          ; $73cd: $ef
	xor h                                            ; $73ce: $ac
	rst SubAFromBC                                          ; $73cf: $e7
	and [hl]                                         ; $73d0: $a6
	ld b, e                                          ; $73d1: $43
	ld b, e                                          ; $73d2: $43
	ld b, c                                          ; $73d3: $41
	ld b, c                                          ; $73d4: $41
	ld b, b                                          ; $73d5: $40
	ld b, b                                          ; $73d6: $40
	db $fd                                           ; $73d7: $fd
	adc d                                            ; $73d8: $8a
	ld a, [hl+]                                      ; $73d9: $2a
	ld de, $109d                                     ; $73da: $11 $9d $10
	ld [hl], l                                       ; $73dd: $75
	sbc b                                            ; $73de: $98
	xor e                                            ; $73df: $ab
	call c, $cebd                                    ; $73e0: $dc $bd $ce
	ld e, d                                          ; $73e3: $5a
	ld l, a                                          ; $73e4: $6f
	dec l                                            ; $73e5: $2d
	scf                                              ; $73e6: $37
	dec d                                            ; $73e7: $15
	inc e                                            ; $73e8: $1c
	adc d                                            ; $73e9: $8a
	adc $87                                          ; $73ea: $ce $87
	add a                                            ; $73ec: $87
	ldh [$bf], a                                     ; $73ed: $e0 $bf
	ldh a, [$38]                                     ; $73ef: $f0 $38
	adc c                                            ; $73f1: $89
	ret nz                                           ; $73f2: $c0

	ld hl, sp-$20                                    ; $73f3: $f8 $e0
	jr c, @+$32                                      ; $73f5: $38 $30

	ld a, b                                          ; $73f7: $78
	ld [hl], b                                       ; $73f8: $70
	ld hl, sp-$20                                    ; $73f9: $f8 $e0
	and b                                            ; $73fb: $a0
	ldh [$a0], a                                     ; $73fc: $e0 $a0
	and b                                            ; $73fe: $a0
	ld b, c                                          ; $73ff: $41
	ld b, b                                          ; $7400: $40
	and c                                            ; $7401: $a1
	ret nz                                           ; $7402: $c0

	inc bc                                           ; $7403: $03
	ld bc, $0103                                     ; $7404: $01 $03 $01
	ld bc, $00bc                                     ; $7407: $01 $bc $00
	nop                                              ; $740a: $00
	nop                                              ; $740b: $00
	nop                                              ; $740c: $00
	ret nz                                           ; $740d: $c0

	add b                                            ; $740e: $80
	add b                                            ; $740f: $80
	ldh a, [$e0]                                     ; $7410: $f0 $e0
	db $f4                                           ; $7412: $f4
	sbc b                                            ; $7413: $98
	db $fd                                           ; $7414: $fd
	adc [hl]                                         ; $7415: $8e
	rst SubAFromDE                                          ; $7416: $df
	ld [$8c7b], sp                                   ; $7417: $08 $7b $8c
	ld a, a                                          ; $741a: $7f
	call z, Call_070_6ed5                            ; $741b: $cc $d5 $6e
	xor [hl]                                         ; $741e: $ae
	ld [hl], a                                       ; $741f: $77
	inc sp                                           ; $7420: $33
	rst $38                                          ; $7421: $ff
	add hl, de                                       ; $7422: $19
	rst $38                                          ; $7423: $ff
	sub h                                            ; $7424: $94
	rst $38                                          ; $7425: $ff
	adc $7b                                          ; $7426: $ce $7b
	scf                                              ; $7428: $37
	dec a                                            ; $7429: $3d
	rrca                                             ; $742a: $0f
	ld c, $0f                                        ; $742b: $0e $0f
	nop                                              ; $742d: $00
	adc h                                            ; $742e: $8c
	inc e                                            ; $742f: $1c
	inc bc                                           ; $7430: $03
	ccf                                              ; $7431: $3f
	rlca                                             ; $7432: $07
	inc a                                            ; $7433: $3c
	inc c                                            ; $7434: $0c
	ld a, $0e                                        ; $7435: $3e $0e
	rra                                              ; $7437: $1f
	rlca                                             ; $7438: $07
	dec b                                            ; $7439: $05
	rlca                                             ; $743a: $07
	dec b                                            ; $743b: $05
	dec b                                            ; $743c: $05
	ld [bc], a                                       ; $743d: $02
	ld [bc], a                                       ; $743e: $02
	add l                                            ; $743f: $85
	inc bc                                           ; $7440: $03
	ret nz                                           ; $7441: $c0

	cp d                                             ; $7442: $ba
	ret nz                                           ; $7443: $c0

	add b                                            ; $7444: $80
	ld bc, $0301                                     ; $7445: $01 $01 $03
	rlca                                             ; $7448: $07
	rrca                                             ; $7449: $0f
	add b                                            ; $744a: $80
	ld bc, $071f                                     ; $744b: $01 $1f $07
	ld l, a                                          ; $744e: $6f
	rra                                              ; $744f: $1f
	cp a                                             ; $7450: $bf
	ld a, a                                          ; $7451: $7f
	cp b                                             ; $7452: $b8
	rst GetHLinHL                                          ; $7453: $cf
	ld b, a                                          ; $7454: $47
	rst $38                                          ; $7455: $ff
	db $e3                                           ; $7456: $e3
	ld a, [hl]                                       ; $7457: $7e
	and c                                            ; $7458: $a1
	ld a, a                                          ; $7459: $7f
	sub b                                            ; $745a: $90
	ld a, a                                          ; $745b: $7f
	ld c, $ff                                        ; $745c: $0e $ff
	add l                                            ; $745e: $85
	rst $38                                          ; $745f: $ff
	jp nz, Jump_070_71ff                             ; $7460: $c2 $ff $71

	rst $38                                          ; $7463: $ff
	inc a                                            ; $7464: $3c
	rst AddAOntoHL                                          ; $7465: $ef
	rst SubAFromDE                                          ; $7466: $df
	di                                               ; $7467: $f3
	rst $38                                          ; $7468: $ff
	add hl, sp                                       ; $7469: $39
	add b                                            ; $746a: $80
	ld a, a                                          ; $746b: $7f
	add c                                            ; $746c: $81
	rst SubAFromDE                                          ; $746d: $df
	pop hl                                           ; $746e: $e1
	ld a, a                                          ; $746f: $7f
	ld [hl], c                                       ; $7470: $71
	ld a, a                                          ; $7471: $7f
	ld a, c                                          ; $7472: $79
	sbc $d3                                          ; $7473: $de $d3
	ld e, [hl]                                       ; $7475: $5e
	jp Jump_070_425f                                 ; $7476: $c3 $5f $42


	cp [hl]                                          ; $7479: $be
	add l                                            ; $747a: $85
	cp l                                             ; $747b: $bd
	rst JumpTable                                          ; $747c: $c7
	rst FarCall                                          ; $747d: $f7
	rrca                                             ; $747e: $0f
	ld a, l                                          ; $747f: $7d
	rrca                                             ; $7480: $0f
	rst AddAOntoHL                                          ; $7481: $ef
	dec e                                            ; $7482: $1d
	rst $38                                          ; $7483: $ff
	dec e                                            ; $7484: $1d
	rst FarCall                                          ; $7485: $f7
	dec [hl]                                         ; $7486: $35
	rst SubAFromBC                                          ; $7487: $e7
	ld h, l                                          ; $7488: $65
	jp nz, $c29a                                     ; $7489: $c2 $9a $c2

	add d                                            ; $748c: $82
	add d                                            ; $748d: $82
	ld [bc], a                                       ; $748e: $02
	ld [bc], a                                       ; $748f: $02
	db $fd                                           ; $7490: $fd
	daa                                              ; $7491: $27
	nop                                              ; $7492: $00
	sub e                                            ; $7493: $93
	add a                                            ; $7494: $87
	add b                                            ; $7495: $80
	adc a                                            ; $7496: $8f
	add b                                            ; $7497: $80
	res 0, a                                         ; $7498: $cb $87
	sub $8e                                          ; $749a: $d6 $8e
	rst SubAFromDE                                          ; $749c: $df
	ld e, a                                          ; $749d: $5f
	ld [$03cb], a                                    ; $749e: $ea $cb $03
	nop                                              ; $74a1: $00
	dec sp                                           ; $74a2: $3b
	nop                                              ; $74a3: $00
	sbc [hl]                                         ; $74a4: $9e
	ld hl, sp-$41                                    ; $74a5: $f8 $bf
	ld hl, sp-$28                                    ; $74a7: $f8 $d8
	sbc d                                            ; $74a9: $9a
	ldh [rBCPS], a                                   ; $74aa: $e0 $68
	ld [hl], b                                       ; $74ac: $70
	ld hl, sp-$10                                    ; $74ad: $f8 $f0
	inc bc                                           ; $74af: $03
	nop                                              ; $74b0: $00
	inc sp                                           ; $74b1: $33
	nop                                              ; $74b2: $00
	sbc [hl]                                         ; $74b3: $9e
	rra                                              ; $74b4: $1f
	cp a                                             ; $74b5: $bf
	ccf                                              ; $74b6: $3f
	dec sp                                           ; $74b7: $3b

Call_070_74b8:
	sbc d                                            ; $74b8: $9a
	rlca                                             ; $74b9: $07
	ld [hl], $0e                                     ; $74ba: $36 $0e
	rra                                              ; $74bc: $1f
	rrca                                             ; $74bd: $0f
	inc bc                                           ; $74be: $03
	nop                                              ; $74bf: $00
	inc sp                                           ; $74c0: $33
	nop                                              ; $74c1: $00
	sub e                                            ; $74c2: $93
	rst $38                                          ; $74c3: $ff
	ld bc, $01ff                                     ; $74c4: $01 $ff $01
	rst SubAFromDE                                          ; $74c7: $df
	pop hl                                           ; $74c8: $e1
	ld l, a                                          ; $74c9: $6f
	ld [hl], c                                       ; $74ca: $71
	cp $fb                                           ; $74cb: $fe $fb
	ld e, [hl]                                       ; $74cd: $5e
	db $d3                                           ; $74ce: $d3
	inc bc                                           ; $74cf: $03
	nop                                              ; $74d0: $00
	ld b, e                                          ; $74d1: $43
	nop                                              ; $74d2: $00
	ld a, a                                          ; $74d3: $7f
	inc b                                            ; $74d4: $04
	ld a, a                                          ; $74d5: $7f
	nop                                              ; $74d6: $00
	ld a, a                                          ; $74d7: $7f
	cp $95                                           ; $74d8: $fe $95
	rst JumpTable                                          ; $74da: $c7
	add b                                            ; $74db: $80
	rst GetHLinHL                                          ; $74dc: $cf
	add b                                            ; $74dd: $80
	rst SubAFromDE                                          ; $74de: $df
	ld b, a                                          ; $74df: $47
	cp $df                                           ; $74e0: $fe $df
	ld l, d                                          ; $74e2: $6a
	jp z, $0003                                      ; $74e3: $ca $03 $00

	inc sp                                           ; $74e6: $33
	nop                                              ; $74e7: $00
	ld l, [hl]                                       ; $74e8: $6e
	db $fc                                           ; $74e9: $fc
	sbc l                                            ; $74ea: $9d
	cp b                                             ; $74eb: $b8
	ldh a, [$03]                                     ; $74ec: $f0 $03
	nop                                              ; $74ee: $00
	dec hl                                           ; $74ef: $2b
	nop                                              ; $74f0: $00
	ld [hl], a                                       ; $74f1: $77
	cp $9b                                           ; $74f2: $fe $9b
	rla                                              ; $74f4: $17
	rrca                                             ; $74f5: $0f
	dec e                                            ; $74f6: $1d
	rra                                              ; $74f7: $1f
	inc bc                                           ; $74f8: $03
	nop                                              ; $74f9: $00
	dec hl                                           ; $74fa: $2b
	nop                                              ; $74fb: $00
	ld [hl], a                                       ; $74fc: $77
	cp $99                                           ; $74fd: $fe $99
	cp $e3                                           ; $74ff: $fe $e3
	ld a, [hl]                                       ; $7501: $7e
	ei                                               ; $7502: $fb
	ld e, a                                          ; $7503: $5f
	ld d, d                                          ; $7504: $52
	inc bc                                           ; $7505: $03
	nop                                              ; $7506: $00
	ld h, e                                          ; $7507: $63
	nop                                              ; $7508: $00
	sub d                                            ; $7509: $92
	ld a, a                                          ; $750a: $7f
	ldh [$fb], a                                     ; $750b: $e0 $fb
	rst JumpTable                                          ; $750d: $c7
	rst AddAOntoHL                                          ; $750e: $ef
	sbc a                                            ; $750f: $9f
	sbc e                                            ; $7510: $9b
	sbc h                                            ; $7511: $9c
	add a                                            ; $7512: $87
	add b                                            ; $7513: $80
	add e                                            ; $7514: $83
	add b                                            ; $7515: $80
	jp $fe77                                         ; $7516: $c3 $77 $fe


jr_070_7519:
	sub [hl]                                         ; $7519: $96
	ld b, b                                          ; $751a: $40
	rst SubAFromBC                                          ; $751b: $e7
	ret nz                                           ; $751c: $c0

	ld l, a                                          ; $751d: $6f
	ret nz                                           ; $751e: $c0

	xor l                                            ; $751f: $ad
	ld l, [hl]                                       ; $7520: $6e
	rst FarCall                                          ; $7521: $f7
	and a                                            ; $7522: $a7
	inc bc                                           ; $7523: $03
	nop                                              ; $7524: $00
	ld [hl], e                                       ; $7525: $73
	nop                                              ; $7526: $00
	sbc c                                            ; $7527: $99
	ld a, [bc]                                       ; $7528: $0a
	ld c, $87                                        ; $7529: $0e $87
	rst JumpTable                                          ; $752b: $c7
	ld h, b                                          ; $752c: $60
	add b                                            ; $752d: $80
	ld e, a                                          ; $752e: $5f
	nop                                              ; $752f: $00
	ld [hl], a                                       ; $7530: $77
	cp $7f                                           ; $7531: $fe $7f
	ldh a, [c]                                       ; $7533: $f2
	sbc e                                            ; $7534: $9b
	ld d, c                                          ; $7535: $51
	jr nc, jr_070_7519                               ; $7536: $30 $e1

	ldh [$03], a                                     ; $7538: $e0 $03
	nop                                              ; $753a: $00
	inc sp                                           ; $753b: $33
	nop                                              ; $753c: $00
	ld a, a                                          ; $753d: $7f
	ld hl, sp+$7f                                    ; $753e: $f8 $7f
	cp $7f                                           ; $7540: $fe $7f
	ldh a, [c]                                       ; $7542: $f2
	sbc e                                            ; $7543: $9b
	ld a, [bc]                                       ; $7544: $0a
	inc c                                            ; $7545: $0c
	add a                                            ; $7546: $87
	rlca                                             ; $7547: $07
	inc bc                                           ; $7548: $03
	nop                                              ; $7549: $00
	cpl                                              ; $754a: $2f
	nop                                              ; $754b: $00
	sub [hl]                                         ; $754c: $96
	inc bc                                           ; $754d: $03
	cp $03                                           ; $754e: $fe $03
	rst $38                                          ; $7550: $ff
	ld [bc], a                                       ; $7551: $02
	cp [hl]                                          ; $7552: $be
	ld [hl], l                                       ; $7553: $75
	db $fd                                           ; $7554: $fd
	rst SubAFromBC                                          ; $7555: $e7
	cpl                                              ; $7556: $2f
	nop                                              ; $7557: $00
	rst AddAOntoHL                                          ; $7558: $ef
	sbc e                                            ; $7559: $9b
	ld [bc], a                                       ; $755a: $02
	ld bc, $0301                                     ; $755b: $01 $01 $03
	push hl                                          ; $755e: $e5
	sbc l                                            ; $755f: $9d
	ldh [$c0], a                                     ; $7560: $e0 $c0
	db $e3                                           ; $7562: $e3
	ld a, e                                          ; $7563: $7b
	jr @+$0d                                         ; $7564: $18 $0b

	ret nz                                           ; $7566: $c0

	sbc l                                            ; $7567: $9d
	ld b, b                                          ; $7568: $40
	add b                                            ; $7569: $80
	rlca                                             ; $756a: $07
	ret nz                                           ; $756b: $c0

	ld a, a                                          ; $756c: $7f
	db $fc                                           ; $756d: $fc
	rst SubAFromBC                                          ; $756e: $e7
	ld a, [hl]                                       ; $756f: $7e
	add $de                                          ; $7570: $c6 $de
	ret nz                                           ; $7572: $c0

	dec de                                           ; $7573: $1b
	cp [hl]                                          ; $7574: $be
	ld [hl], e                                       ; $7575: $73
	ret nz                                           ; $7576: $c0

	dec de                                           ; $7577: $1b
	cp [hl]                                          ; $7578: $be
	ld [hl], e                                       ; $7579: $73
	ret nz                                           ; $757a: $c0

	ld h, e                                          ; $757b: $63
	cp [hl]                                          ; $757c: $be
	ld [$8001], a                                    ; $757d: $ea $01 $80
	ld d, e                                          ; $7580: $53
	rrca                                             ; $7581: $0f
	rla                                              ; $7582: $17
	ld c, l                                          ; $7583: $4d
	daa                                              ; $7584: $27
	ld e, l                                          ; $7585: $5d
	ld l, l                                          ; $7586: $6d
	ld e, b                                          ; $7587: $58
	db $ec                                           ; $7588: $ec
	ld e, b                                          ; $7589: $58
	ld hl, sp+$50                                    ; $758a: $f8 $50
	cp b                                             ; $758c: $b8
	ret nc                                           ; $758d: $d0

	ld hl, sp-$60                                    ; $758e: $f8 $a0
	ld a, [hl]                                       ; $7590: $7e
	ldh [rIE], a                                     ; $7591: $e0 $ff
	rst GetHLinHL                                          ; $7593: $cf
	ld sp, hl                                        ; $7594: $f9
	add a                                            ; $7595: $87
	sbc a                                            ; $7596: $9f
	add b                                            ; $7597: $80
	add a                                            ; $7598: $87
	add b                                            ; $7599: $80
	adc e                                            ; $759a: $8b
	add a                                            ; $759b: $87
	sbc $8e                                          ; $759c: $de $8e
	call c, $9c82                                    ; $759e: $dc $82 $9c
	bit 1, e                                         ; $75a1: $cb $4b
	ld [$62c3], a                                    ; $75a3: $ea $c3 $62
	jp nz, Jump_070_61a1                             ; $75a6: $c2 $a1 $61

	push af                                          ; $75a9: $f5
	and e                                            ; $75aa: $a3
	ldh a, [$e0]                                     ; $75ab: $f0 $e0
	or b                                             ; $75ad: $b0
	ldh a, [$f8]                                     ; $75ae: $f0 $f8
	or b                                             ; $75b0: $b0
	rst $38                                          ; $75b1: $ff
	cp b                                             ; $75b2: $b8
	rst AddAOntoHL                                          ; $75b3: $ef
	xor h                                            ; $75b4: $ac
	rst SubAFromBC                                          ; $75b5: $e7
	and [hl]                                         ; $75b6: $a6
	ld b, e                                          ; $75b7: $43
	ld b, e                                          ; $75b8: $43
	ld b, c                                          ; $75b9: $41
	ld b, c                                          ; $75ba: $41
	ld b, b                                          ; $75bb: $40
	ld b, b                                          ; $75bc: $40
	db $fd                                           ; $75bd: $fd
	add b                                            ; $75be: $80
	ld a, [hl+]                                      ; $75bf: $2a
	ld de, $109d                                     ; $75c0: $11 $9d $10
	ld [hl], l                                       ; $75c3: $75
	sbc b                                            ; $75c4: $98
	xor e                                            ; $75c5: $ab
	call c, $cebd                                    ; $75c6: $dc $bd $ce
	ld e, d                                          ; $75c9: $5a
	ld l, a                                          ; $75ca: $6f
	dec l                                            ; $75cb: $2d
	scf                                              ; $75cc: $37
	dec d                                            ; $75cd: $15
	inc e                                            ; $75ce: $1c
	ld a, [bc]                                       ; $75cf: $0a
	ld c, $87                                        ; $75d0: $0e $87
	rst JumpTable                                          ; $75d2: $c7
	ldh [$e0], a                                     ; $75d3: $e0 $e0
	ld h, b                                          ; $75d5: $60
	ldh a, [$f8]                                     ; $75d6: $f0 $f8
	nop                                              ; $75d8: $00
	cp b                                             ; $75d9: $b8
	ret nz                                           ; $75da: $c0

	ld l, b                                          ; $75db: $68
	ld [hl], b                                       ; $75dc: $70
	ld hl, sp+$7f                                    ; $75dd: $f8 $7f
	ld hl, sp-$6f                                    ; $75df: $f8 $91
	ldh [$a0], a                                     ; $75e1: $e0 $a0
	ldh [$a0], a                                     ; $75e3: $e0 $a0
	and b                                            ; $75e5: $a0
	ld b, c                                          ; $75e6: $41
	ld b, b                                          ; $75e7: $40
	and c                                            ; $75e8: $a1
	ret nz                                           ; $75e9: $c0

	inc bc                                           ; $75ea: $03
	ld bc, $0103                                     ; $75eb: $01 $03 $01
	ld bc, $00bc                                     ; $75ee: $01 $bc $00
	nop                                              ; $75f1: $00
	nop                                              ; $75f2: $00
	nop                                              ; $75f3: $00
	ret nz                                           ; $75f4: $c0

	add b                                            ; $75f5: $80
	add b                                            ; $75f6: $80
	ldh a, [$e0]                                     ; $75f7: $f0 $e0
	db $f4                                           ; $75f9: $f4
	sbc b                                            ; $75fa: $98
	db $fd                                           ; $75fb: $fd
	adc [hl]                                         ; $75fc: $8e
	rst SubAFromDE                                          ; $75fd: $df
	ld [$8c7b], sp                                   ; $75fe: $08 $7b $8c
	ld a, a                                          ; $7601: $7f
	call z, Call_070_6ed5                            ; $7602: $cc $d5 $6e
	xor [hl]                                         ; $7605: $ae
	ld [hl], a                                       ; $7606: $77
	inc sp                                           ; $7607: $33
	rst $38                                          ; $7608: $ff
	add hl, de                                       ; $7609: $19
	rst $38                                          ; $760a: $ff
	sub h                                            ; $760b: $94
	rst $38                                          ; $760c: $ff
	adc $7b                                          ; $760d: $ce $7b
	scf                                              ; $760f: $37
	dec a                                            ; $7610: $3d
	rrca                                             ; $7611: $0f
	rrca                                             ; $7612: $0f
	ld b, $0f                                        ; $7613: $06 $0f
	adc h                                            ; $7615: $8c
	rra                                              ; $7616: $1f
	nop                                              ; $7617: $00
	dec sp                                           ; $7618: $3b
	rlca                                             ; $7619: $07
	inc [hl]                                         ; $761a: $34
	inc c                                            ; $761b: $0c
	ld a, $0e                                        ; $761c: $3e $0e
	rra                                              ; $761e: $1f
	rlca                                             ; $761f: $07
	dec b                                            ; $7620: $05
	rlca                                             ; $7621: $07
	dec b                                            ; $7622: $05
	dec b                                            ; $7623: $05
	ld [bc], a                                       ; $7624: $02
	ld [bc], a                                       ; $7625: $02
	add l                                            ; $7626: $85
	inc bc                                           ; $7627: $03
	ret nz                                           ; $7628: $c0

	cp d                                             ; $7629: $ba
	ret nz                                           ; $762a: $c0

	add b                                            ; $762b: $80
	ld bc, $0301                                     ; $762c: $01 $01 $03
	rlca                                             ; $762f: $07
	rrca                                             ; $7630: $0f
	add b                                            ; $7631: $80
	ld bc, $071f                                     ; $7632: $01 $1f $07
	ld l, a                                          ; $7635: $6f
	rra                                              ; $7636: $1f
	cp a                                             ; $7637: $bf
	ld a, a                                          ; $7638: $7f
	cp b                                             ; $7639: $b8
	rst GetHLinHL                                          ; $763a: $cf
	ld b, a                                          ; $763b: $47
	rst $38                                          ; $763c: $ff
	db $e3                                           ; $763d: $e3
	ld a, [hl]                                       ; $763e: $7e
	and c                                            ; $763f: $a1
	ld a, a                                          ; $7640: $7f
	sub b                                            ; $7641: $90
	ld a, a                                          ; $7642: $7f
	ld c, $ff                                        ; $7643: $0e $ff
	add l                                            ; $7645: $85
	rst $38                                          ; $7646: $ff
	jp nz, Jump_070_71ff                             ; $7647: $c2 $ff $71

	rst $38                                          ; $764a: $ff
	inc a                                            ; $764b: $3c
	rst AddAOntoHL                                          ; $764c: $ef
	rst SubAFromDE                                          ; $764d: $df
	di                                               ; $764e: $f3
	rst $38                                          ; $764f: $ff
	add hl, sp                                       ; $7650: $39
	add b                                            ; $7651: $80
	rst $38                                          ; $7652: $ff
	ld bc, $e1df                                     ; $7653: $01 $df $e1
	rst $38                                          ; $7656: $ff
	pop af                                           ; $7657: $f1
	ld a, a                                          ; $7658: $7f
	ld a, c                                          ; $7659: $79
	sbc $d3                                          ; $765a: $de $d3
	ld e, [hl]                                       ; $765c: $5e
	jp Jump_070_425f                                 ; $765d: $c3 $5f $42


	cp [hl]                                          ; $7660: $be
	add l                                            ; $7661: $85
	cp l                                             ; $7662: $bd
	rst JumpTable                                          ; $7663: $c7
	rst FarCall                                          ; $7664: $f7
	rrca                                             ; $7665: $0f
	ld a, l                                          ; $7666: $7d
	rrca                                             ; $7667: $0f
	rst AddAOntoHL                                          ; $7668: $ef
	dec e                                            ; $7669: $1d
	rst $38                                          ; $766a: $ff
	dec e                                            ; $766b: $1d
	rst FarCall                                          ; $766c: $f7
	dec [hl]                                         ; $766d: $35
	rst SubAFromBC                                          ; $766e: $e7
	ld h, l                                          ; $766f: $65
	jp nz, $c29a                                     ; $7670: $c2 $9a $c2

	add d                                            ; $7673: $82
	add d                                            ; $7674: $82
	ld [bc], a                                       ; $7675: $02
	ld [bc], a                                       ; $7676: $02
	db $fd                                           ; $7677: $fd
	rra                                              ; $7678: $1f
	nop                                              ; $7679: $00
	sub l                                            ; $767a: $95
	adc a                                            ; $767b: $8f
	add b                                            ; $767c: $80
	res 0, a                                         ; $767d: $cb $87
	sub $8e                                          ; $767f: $d6 $8e
	rst SubAFromDE                                          ; $7681: $df
	ld e, a                                          ; $7682: $5f
	ld [$03cb], a                                    ; $7683: $ea $cb $03
	nop                                              ; $7686: $00
	inc sp                                           ; $7687: $33
	nop                                              ; $7688: $00
	ld a, a                                          ; $7689: $7f
	cp $9d                                           ; $768a: $fe $9d
	ret c                                            ; $768c: $d8

	ldh [rPCM12], a                                  ; $768d: $e0 $76
	cp $03                                           ; $768f: $fe $03
	nop                                              ; $7691: $00
	dec hl                                           ; $7692: $2b
	nop                                              ; $7693: $00
	sbc [hl]                                         ; $7694: $9e
	ccf                                              ; $7695: $3f
	ld a, d                                          ; $7696: $7a
	cp $9b                                           ; $7697: $fe $9b
	ld [hl], $0e                                     ; $7699: $36 $0e
	rra                                              ; $769b: $1f
	rrca                                             ; $769c: $0f
	inc bc                                           ; $769d: $03
	nop                                              ; $769e: $00
	dec hl                                           ; $769f: $2b
	nop                                              ; $76a0: $00
	halt                                             ; $76a1: $76
	cp $99                                           ; $76a2: $fe $99
	ld l, a                                          ; $76a4: $6f
	ld [hl], c                                       ; $76a5: $71
	cp $fb                                           ; $76a6: $fe $fb
	ld e, [hl]                                       ; $76a8: $5e
	db $d3                                           ; $76a9: $d3
	inc bc                                           ; $76aa: $03
	nop                                              ; $76ab: $00
	ld b, e                                          ; $76ac: $43
	nop                                              ; $76ad: $00
	ld a, a                                          ; $76ae: $7f
	inc b                                            ; $76af: $04
	ld a, a                                          ; $76b0: $7f
	nop                                              ; $76b1: $00
	ld a, a                                          ; $76b2: $7f
	cp $95                                           ; $76b3: $fe $95
	rst JumpTable                                          ; $76b5: $c7
	add b                                            ; $76b6: $80
	rst GetHLinHL                                          ; $76b7: $cf
	add b                                            ; $76b8: $80
	rst SubAFromDE                                          ; $76b9: $df
	ld b, a                                          ; $76ba: $47
	cp $df                                           ; $76bb: $fe $df
	ld l, d                                          ; $76bd: $6a
	jp z, $0003                                      ; $76be: $ca $03 $00

	inc sp                                           ; $76c1: $33
	nop                                              ; $76c2: $00
	ld l, [hl]                                       ; $76c3: $6e
	db $fc                                           ; $76c4: $fc
	sbc l                                            ; $76c5: $9d
	cp b                                             ; $76c6: $b8
	ldh a, [$03]                                     ; $76c7: $f0 $03
	nop                                              ; $76c9: $00
	dec hl                                           ; $76ca: $2b
	nop                                              ; $76cb: $00
	ld [hl], a                                       ; $76cc: $77
	cp $9b                                           ; $76cd: $fe $9b
	rla                                              ; $76cf: $17
	rrca                                             ; $76d0: $0f
	dec e                                            ; $76d1: $1d
	rra                                              ; $76d2: $1f
	inc bc                                           ; $76d3: $03
	nop                                              ; $76d4: $00
	dec hl                                           ; $76d5: $2b
	nop                                              ; $76d6: $00
	ld [hl], a                                       ; $76d7: $77
	cp $99                                           ; $76d8: $fe $99
	cp $e3                                           ; $76da: $fe $e3
	ld a, [hl]                                       ; $76dc: $7e
	ei                                               ; $76dd: $fb
	ld e, a                                          ; $76de: $5f
	ld d, d                                          ; $76df: $52
	inc bc                                           ; $76e0: $03
	nop                                              ; $76e1: $00
	ld d, a                                          ; $76e2: $57
	nop                                              ; $76e3: $00
	sub l                                            ; $76e4: $95
	adc $fb                                          ; $76e5: $ce $fb
	add a                                            ; $76e7: $87
	add h                                            ; $76e8: $84
	add e                                            ; $76e9: $83
	add a                                            ; $76ea: $87
	add b                                            ; $76eb: $80
	add e                                            ; $76ec: $83
	add b                                            ; $76ed: $80
	jp $fe77                                         ; $76ee: $c3 $77 $fe


	sub [hl]                                         ; $76f1: $96
	ld b, b                                          ; $76f2: $40

jr_070_76f3:
	rst SubAFromBC                                          ; $76f3: $e7
	ret nz                                           ; $76f4: $c0

	ld l, a                                          ; $76f5: $6f
	ret nz                                           ; $76f6: $c0

	xor l                                            ; $76f7: $ad
	ld l, [hl]                                       ; $76f8: $6e
	rst FarCall                                          ; $76f9: $f7
	and a                                            ; $76fa: $a7
	inc bc                                           ; $76fb: $03
	nop                                              ; $76fc: $00
	ld l, e                                          ; $76fd: $6b
	nop                                              ; $76fe: $00
	sub a                                            ; $76ff: $97
	rst JumpTable                                          ; $7700: $c7
	rlca                                             ; $7701: $07
	and b                                            ; $7702: $a0
	ret nz                                           ; $7703: $c0

	ldh a, [$e0]                                     ; $7704: $f0 $e0
	ld a, b                                          ; $7706: $78
	ldh [$66], a                                     ; $7707: $e0 $66
	cp $7f                                           ; $7709: $fe $7f
	cp $99                                           ; $770b: $fe $99
	ldh a, [rP1]                                     ; $770d: $f0 $00
	ld d, c                                          ; $770f: $51
	jr nc, jr_070_76f3                               ; $7710: $30 $e1

	ldh [$03], a                                     ; $7712: $e0 $03
	nop                                              ; $7714: $00
	ld e, e                                          ; $7715: $5b
	nop                                              ; $7716: $00
	sbc e                                            ; $7717: $9b
	rrca                                             ; $7718: $0f
	rlca                                             ; $7719: $07
	ld e, $07                                        ; $771a: $1e $07
	ld l, a                                          ; $771c: $6f
	nop                                              ; $771d: $00
	ld a, [hl]                                       ; $771e: $7e
	ld hl, sp+$7f                                    ; $771f: $f8 $7f
	cp $99                                           ; $7721: $fe $99
	rrca                                             ; $7723: $0f
	nop                                              ; $7724: $00
	ld a, [bc]                                       ; $7725: $0a
	inc c                                            ; $7726: $0c
	add a                                            ; $7727: $87
	rlca                                             ; $7728: $07
	inc bc                                           ; $7729: $03
	nop                                              ; $772a: $00
	ld e, e                                          ; $772b: $5b
	nop                                              ; $772c: $00
	sbc l                                            ; $772d: $9d
	ld a, a                                          ; $772e: $7f
	cp c                                             ; $772f: $b9
	ld h, e                                          ; $7730: $63
	nop                                              ; $7731: $00
	sub [hl]                                         ; $7732: $96
	inc bc                                           ; $7733: $03
	cp $03                                           ; $7734: $fe $03
	rst $38                                          ; $7736: $ff
	ld [bc], a                                       ; $7737: $02
	cp [hl]                                          ; $7738: $be
	ld [hl], l                                       ; $7739: $75
	db $fd                                           ; $773a: $fd
	rst SubAFromBC                                          ; $773b: $e7
	cpl                                              ; $773c: $2f
	nop                                              ; $773d: $00
	rst AddAOntoHL                                          ; $773e: $ef
	ld a, e                                          ; $773f: $7b
	ld e, b                                          ; $7740: $58
	dec hl                                           ; $7741: $2b
	and $67                                          ; $7742: $e6 $67
	ld b, [hl]                                       ; $7744: $46
	sbc [hl]                                         ; $7745: $9e
	ret nz                                           ; $7746: $c0

	ld [hl], e                                       ; $7747: $73
	ld b, $e9                                        ; $7748: $06 $e9
	ld a, e                                          ; $774a: $7b
	ret nz                                           ; $774b: $c0

	ld a, a                                          ; $774c: $7f
	ld e, a                                          ; $774d: $5f
	rrca                                             ; $774e: $0f
	ret nz                                           ; $774f: $c0

	ld a, a                                          ; $7750: $7f
	scf                                              ; $7751: $37
	dec bc                                           ; $7752: $0b
	ret nz                                           ; $7753: $c0

	ld a, a                                          ; $7754: $7f
	db $fd                                           ; $7755: $fd
	rrca                                             ; $7756: $0f
	ret nz                                           ; $7757: $c0

	ld a, a                                          ; $7758: $7f
	db $fd                                           ; $7759: $fd
	rrca                                             ; $775a: $0f
	ret nz                                           ; $775b: $c0

	call c, Call_070_5e03                            ; $775c: $dc $03 $5e
	sub e                                            ; $775f: $93
	ld b, e                                          ; $7760: $43
	ret nz                                           ; $7761: $c0

	db $dd                                           ; $7762: $dd
	ret nz                                           ; $7763: $c0

	rst SubAFromDE                                          ; $7764: $df
	add b                                            ; $7765: $80
	db $fd                                           ; $7766: $fd
	pop af                                           ; $7767: $f1
	ld bc, $5380                                     ; $7768: $01 $80 $53
	rrca                                             ; $776b: $0f
	rla                                              ; $776c: $17
	ld c, l                                          ; $776d: $4d
	daa                                              ; $776e: $27
	ld e, l                                          ; $776f: $5d
	ld l, l                                          ; $7770: $6d
	ld e, b                                          ; $7771: $58
	db $ec                                           ; $7772: $ec
	ld e, b                                          ; $7773: $58
	ld hl, sp+$50                                    ; $7774: $f8 $50
	cp b                                             ; $7776: $b8
	ret nc                                           ; $7777: $d0

	db $fd                                           ; $7778: $fd
	and e                                            ; $7779: $a3
	ld a, e                                          ; $777a: $7b
	rst SubAFromBC                                          ; $777b: $e7
	rst FarCall                                          ; $777c: $f7
	adc $fb                                          ; $777d: $ce $fb
	sbc h                                            ; $777f: $9c
	sbc a                                            ; $7780: $9f
	add b                                            ; $7781: $80
	add [hl]                                         ; $7782: $86

jr_070_7783:
	add c                                            ; $7783: $81
	adc l                                            ; $7784: $8d
	add e                                            ; $7785: $83
	rst GetHLinHL                                          ; $7786: $cf
	add a                                            ; $7787: $87
	sbc $82                                          ; $7788: $de $82
	sbc [hl]                                         ; $778a: $9e
	bit 1, e                                         ; $778b: $cb $4b
	ldh [c], a                                       ; $778d: $e2
	jp $c262                                         ; $778e: $c3 $62 $c2


	and c                                            ; $7791: $a1
	ld h, c                                          ; $7792: $61
	push af                                          ; $7793: $f5
	and e                                            ; $7794: $a3
	ldh a, [$e0]                                     ; $7795: $f0 $e0
	or b                                             ; $7797: $b0
	ldh a, [$f8]                                     ; $7798: $f0 $f8
	or b                                             ; $779a: $b0
	rst $38                                          ; $779b: $ff
	cp b                                             ; $779c: $b8
	rst AddAOntoHL                                          ; $779d: $ef
	xor h                                            ; $779e: $ac
	rst SubAFromBC                                          ; $779f: $e7
	and [hl]                                         ; $77a0: $a6
	ld b, e                                          ; $77a1: $43
	ld b, e                                          ; $77a2: $43
	ld b, c                                          ; $77a3: $41
	ld b, c                                          ; $77a4: $41
	ld b, b                                          ; $77a5: $40
	ld b, b                                          ; $77a6: $40
	db $fd                                           ; $77a7: $fd
	add b                                            ; $77a8: $80
	ld a, [hl+]                                      ; $77a9: $2a
	ld de, $109d                                     ; $77aa: $11 $9d $10
	ld [hl], l                                       ; $77ad: $75
	sbc b                                            ; $77ae: $98
	xor e                                            ; $77af: $ab
	call c, $cebd                                    ; $77b0: $dc $bd $ce
	ld e, d                                          ; $77b3: $5a
	ld l, a                                          ; $77b4: $6f
	dec l                                            ; $77b5: $2d
	scf                                              ; $77b6: $37
	sub l                                            ; $77b7: $95
	call c, $8eca                                    ; $77b8: $dc $ca $8e
	add a                                            ; $77bb: $87
	rlca                                             ; $77bc: $07
	ldh [rP1], a                                     ; $77bd: $e0 $00
	ldh a, [rP1]                                     ; $77bf: $f0 $00
	jr c, jr_070_7783                                ; $77c1: $38 $c0

	ld hl, sp-$20                                    ; $77c3: $f8 $e0
	jr c, jr_070_77f7                                ; $77c5: $38 $30

	ld a, b                                          ; $77c7: $78
	adc a                                            ; $77c8: $8f
	ld [hl], b                                       ; $77c9: $70
	ld hl, sp-$20                                    ; $77ca: $f8 $e0
	and b                                            ; $77cc: $a0
	ldh [$a0], a                                     ; $77cd: $e0 $a0
	and b                                            ; $77cf: $a0
	ld b, c                                          ; $77d0: $41
	ld b, b                                          ; $77d1: $40
	and c                                            ; $77d2: $a1
	ret nz                                           ; $77d3: $c0

	inc bc                                           ; $77d4: $03
	ld bc, $0103                                     ; $77d5: $01 $03 $01
	ld bc, $80f8                                     ; $77d8: $01 $f8 $80
	ret nz                                           ; $77db: $c0

	add b                                            ; $77dc: $80
	ldh a, [$e0]                                     ; $77dd: $f0 $e0
	db $f4                                           ; $77df: $f4
	sbc b                                            ; $77e0: $98
	db $fd                                           ; $77e1: $fd
	adc [hl]                                         ; $77e2: $8e
	rst SubAFromDE                                          ; $77e3: $df
	ld [$8c7b], sp                                   ; $77e4: $08 $7b $8c
	ld a, a                                          ; $77e7: $7f
	call z, Call_070_6ed5                            ; $77e8: $cc $d5 $6e
	xor [hl]                                         ; $77eb: $ae
	ld [hl], a                                       ; $77ec: $77
	inc sp                                           ; $77ed: $33
	rst $38                                          ; $77ee: $ff
	add hl, de                                       ; $77ef: $19
	rst $38                                          ; $77f0: $ff
	sub h                                            ; $77f1: $94
	rst $38                                          ; $77f2: $ff
	adc $7b                                          ; $77f3: $ce $7b
	scf                                              ; $77f5: $37
	dec a                                            ; $77f6: $3d

jr_070_77f7:
	rrca                                             ; $77f7: $0f
	ld c, $0f                                        ; $77f8: $0e $0f
	add l                                            ; $77fa: $85
	nop                                              ; $77fb: $00
	inc e                                            ; $77fc: $1c
	inc bc                                           ; $77fd: $03
	ccf                                              ; $77fe: $3f
	rlca                                             ; $77ff: $07
	inc a                                            ; $7800: $3c
	inc c                                            ; $7801: $0c
	ld a, $0e                                        ; $7802: $3e $0e
	rra                                              ; $7804: $1f
	rlca                                             ; $7805: $07
	dec b                                            ; $7806: $05
	rlca                                             ; $7807: $07
	dec b                                            ; $7808: $05
	dec b                                            ; $7809: $05
	ld [bc], a                                       ; $780a: $02
	ld [bc], a                                       ; $780b: $02
	add l                                            ; $780c: $85
	inc bc                                           ; $780d: $03
	ret nz                                           ; $780e: $c0

	nop                                              ; $780f: $00
	ret nz                                           ; $7810: $c0

	nop                                              ; $7811: $00
	add b                                            ; $7812: $80
	nop                                              ; $7813: $00
	ld bc, $fe7b                                     ; $7814: $01 $7b $fe
	add b                                            ; $7817: $80
	inc bc                                           ; $7818: $03
	nop                                              ; $7819: $00
	rlca                                             ; $781a: $07
	nop                                              ; $781b: $00
	rrca                                             ; $781c: $0f
	ld bc, $071f                                     ; $781d: $01 $1f $07
	ld l, a                                          ; $7820: $6f
	rra                                              ; $7821: $1f
	cp a                                             ; $7822: $bf
	ld a, a                                          ; $7823: $7f
	cp b                                             ; $7824: $b8
	rst GetHLinHL                                          ; $7825: $cf
	ld b, a                                          ; $7826: $47
	rst $38                                          ; $7827: $ff
	db $e3                                           ; $7828: $e3
	ld a, [hl]                                       ; $7829: $7e
	and c                                            ; $782a: $a1
	ld a, a                                          ; $782b: $7f
	sub b                                            ; $782c: $90
	ld a, a                                          ; $782d: $7f
	ld c, $ff                                        ; $782e: $0e $ff
	add l                                            ; $7830: $85
	rst $38                                          ; $7831: $ff
	jp nz, Jump_070_71ff                             ; $7832: $c2 $ff $71

	rst $38                                          ; $7835: $ff
	inc a                                            ; $7836: $3c
	add b                                            ; $7837: $80
	rst AddAOntoHL                                          ; $7838: $ef
	rst SubAFromDE                                          ; $7839: $df
	di                                               ; $783a: $f3
	rst $38                                          ; $783b: $ff
	add hl, sp                                       ; $783c: $39
	ld a, a                                          ; $783d: $7f
	add c                                            ; $783e: $81
	cp a                                             ; $783f: $bf
	pop bc                                           ; $7840: $c1
	rst $38                                          ; $7841: $ff
	pop hl                                           ; $7842: $e1
	ld a, a                                          ; $7843: $7f
	ld a, c                                          ; $7844: $79
	sbc $d3                                          ; $7845: $de $d3
	ld e, [hl]                                       ; $7847: $5e
	jp Jump_070_425f                                 ; $7848: $c3 $5f $42


	cp [hl]                                          ; $784b: $be
	add l                                            ; $784c: $85
	cp l                                             ; $784d: $bd
	rst JumpTable                                          ; $784e: $c7
	rst FarCall                                          ; $784f: $f7
	rrca                                             ; $7850: $0f
	ld a, l                                          ; $7851: $7d
	rrca                                             ; $7852: $0f
	rst AddAOntoHL                                          ; $7853: $ef
	dec e                                            ; $7854: $1d
	rst $38                                          ; $7855: $ff
	dec e                                            ; $7856: $1d
	sub l                                            ; $7857: $95
	rst FarCall                                          ; $7858: $f7
	dec [hl]                                         ; $7859: $35
	rst SubAFromBC                                          ; $785a: $e7
	ld h, l                                          ; $785b: $65
	jp nz, $82c2                                     ; $785c: $c2 $c2 $82

	add d                                            ; $785f: $82
	ld [bc], a                                       ; $7860: $02
	ld [bc], a                                       ; $7861: $02
	db $fd                                           ; $7862: $fd
	daa                                              ; $7863: $27
	nop                                              ; $7864: $00
	sub e                                            ; $7865: $93
	add a                                            ; $7866: $87
	add b                                            ; $7867: $80
	adc a                                            ; $7868: $8f
	add b                                            ; $7869: $80
	ret                                              ; $786a: $c9


	add a                                            ; $786b: $87
	sub $8e                                          ; $786c: $d6 $8e
	rst SubAFromDE                                          ; $786e: $df
	ld e, a                                          ; $786f: $5f
	ld [$03cb], a                                    ; $7870: $ea $cb $03
	nop                                              ; $7873: $00
	dec sp                                           ; $7874: $3b
	nop                                              ; $7875: $00
	sbc [hl]                                         ; $7876: $9e
	ld hl, sp+$7b                                    ; $7877: $f8 $7b
	cp $99                                           ; $7879: $fe $99
	ret c                                            ; $787b: $d8

	ldh [rBCPS], a                                   ; $787c: $e0 $68
	ld [hl], b                                       ; $787e: $70
	ld hl, sp-$10                                    ; $787f: $f8 $f0
	inc bc                                           ; $7881: $03
	nop                                              ; $7882: $00
	inc sp                                           ; $7883: $33
	nop                                              ; $7884: $00
	sub l                                            ; $7885: $95
	rra                                              ; $7886: $1f
	nop                                              ; $7887: $00

Call_070_7888:
	ccf                                              ; $7888: $3f
	nop                                              ; $7889: $00
	dec sp                                           ; $788a: $3b
	rlca                                             ; $788b: $07
	ld [hl], $0e                                     ; $788c: $36 $0e
	rra                                              ; $788e: $1f
	rrca                                             ; $788f: $0f
	inc bc                                           ; $7890: $03
	nop                                              ; $7891: $00
	inc sp                                           ; $7892: $33
	nop                                              ; $7893: $00
	sub e                                            ; $7894: $93
	rst $38                                          ; $7895: $ff
	ld bc, $01ff                                     ; $7896: $01 $ff $01
	sbc a                                            ; $7899: $9f
	pop hl                                           ; $789a: $e1
	ld l, a                                          ; $789b: $6f
	ld [hl], c                                       ; $789c: $71
	cp $fb                                           ; $789d: $fe $fb
	ld e, [hl]                                       ; $789f: $5e
	db $d3                                           ; $78a0: $d3
	inc bc                                           ; $78a1: $03
	nop                                              ; $78a2: $00
	ld b, e                                          ; $78a3: $43
	nop                                              ; $78a4: $00
	ld a, a                                          ; $78a5: $7f
	inc b                                            ; $78a6: $04
	ld a, a                                          ; $78a7: $7f
	nop                                              ; $78a8: $00
	ld a, a                                          ; $78a9: $7f
	cp $95                                           ; $78aa: $fe $95
	rst JumpTable                                          ; $78ac: $c7
	add b                                            ; $78ad: $80
	rst GetHLinHL                                          ; $78ae: $cf
	add b                                            ; $78af: $80
	rst SubAFromDE                                          ; $78b0: $df
	ld b, a                                          ; $78b1: $47
	cp $df                                           ; $78b2: $fe $df
	ld l, d                                          ; $78b4: $6a
	jp z, $0003                                      ; $78b5: $ca $03 $00

	inc sp                                           ; $78b8: $33
	nop                                              ; $78b9: $00
	ld l, [hl]                                       ; $78ba: $6e
	db $fc                                           ; $78bb: $fc
	sbc l                                            ; $78bc: $9d
	cp b                                             ; $78bd: $b8
	ldh a, [$03]                                     ; $78be: $f0 $03
	nop                                              ; $78c0: $00
	dec hl                                           ; $78c1: $2b
	nop                                              ; $78c2: $00
	ld [hl], a                                       ; $78c3: $77
	cp $9b                                           ; $78c4: $fe $9b
	rla                                              ; $78c6: $17
	rrca                                             ; $78c7: $0f
	dec e                                            ; $78c8: $1d
	rra                                              ; $78c9: $1f
	inc bc                                           ; $78ca: $03
	nop                                              ; $78cb: $00
	dec hl                                           ; $78cc: $2b
	nop                                              ; $78cd: $00
	ld [hl], a                                       ; $78ce: $77
	cp $99                                           ; $78cf: $fe $99
	cp $e3                                           ; $78d1: $fe $e3
	ld a, [hl]                                       ; $78d3: $7e
	ei                                               ; $78d4: $fb
	ld e, a                                          ; $78d5: $5f
	ld d, d                                          ; $78d6: $52
	inc bc                                           ; $78d7: $03
	nop                                              ; $78d8: $00
	ld l, e                                          ; $78d9: $6b
	nop                                              ; $78da: $00
	sub b                                            ; $78db: $90
	rst $38                                          ; $78dc: $ff
	and b                                            ; $78dd: $a0
	ld a, l                                          ; $78de: $7d
	db $e3                                           ; $78df: $e3
	ei                                               ; $78e0: $fb
	rst JumpTable                                          ; $78e1: $c7
	rst FarCall                                          ; $78e2: $f7
	adc [hl]                                         ; $78e3: $8e
	sbc a                                            ; $78e4: $9f
	sbc b                                            ; $78e5: $98
	add a                                            ; $78e6: $87
	add b                                            ; $78e7: $80
	add e                                            ; $78e8: $83
	add b                                            ; $78e9: $80
	jp $fe77                                         ; $78ea: $c3 $77 $fe


jr_070_78ed:
	sub [hl]                                         ; $78ed: $96
	ld b, b                                          ; $78ee: $40
	rst SubAFromBC                                          ; $78ef: $e7
	ret nz                                           ; $78f0: $c0

	ld l, a                                          ; $78f1: $6f
	ret nz                                           ; $78f2: $c0

	xor l                                            ; $78f3: $ad
	ld l, [hl]                                       ; $78f4: $6e
	rst FarCall                                          ; $78f5: $f7
	and a                                            ; $78f6: $a7
	inc bc                                           ; $78f7: $03
	nop                                              ; $78f8: $00
	ld a, e                                          ; $78f9: $7b
	nop                                              ; $78fa: $00
	sbc c                                            ; $78fb: $99
	dec d                                            ; $78fc: $15
	inc e                                            ; $78fd: $1c
	adc d                                            ; $78fe: $8a
	adc $c7                                          ; $78ff: $ce $c7
	add a                                            ; $7901: $87
	ld d, a                                          ; $7902: $57
	nop                                              ; $7903: $00
	ld [hl], a                                       ; $7904: $77
	cp $7f                                           ; $7905: $fe $7f
	ldh a, [c]                                       ; $7907: $f2
	sbc e                                            ; $7908: $9b
	ld d, c                                          ; $7909: $51
	jr nc, jr_070_78ed                               ; $790a: $30 $e1

	ldh [$03], a                                     ; $790c: $e0 $03
	nop                                              ; $790e: $00
	inc sp                                           ; $790f: $33
	nop                                              ; $7910: $00
	ld a, a                                          ; $7911: $7f
	ld hl, sp+$7f                                    ; $7912: $f8 $7f
	cp $7f                                           ; $7914: $fe $7f
	ldh a, [c]                                       ; $7916: $f2
	sbc e                                            ; $7917: $9b
	ld a, [bc]                                       ; $7918: $0a
	inc c                                            ; $7919: $0c
	add a                                            ; $791a: $87
	rlca                                             ; $791b: $07
	inc bc                                           ; $791c: $03
	nop                                              ; $791d: $00
	cpl                                              ; $791e: $2f
	nop                                              ; $791f: $00
	sub [hl]                                         ; $7920: $96
	inc bc                                           ; $7921: $03
	cp $03                                           ; $7922: $fe $03
	rst $38                                          ; $7924: $ff
	ld [bc], a                                       ; $7925: $02
	cp [hl]                                          ; $7926: $be
	ld [hl], l                                       ; $7927: $75
	db $fd                                           ; $7928: $fd
	rst SubAFromBC                                          ; $7929: $e7
	cpl                                              ; $792a: $2f
	nop                                              ; $792b: $00
	rst AddAOntoHL                                          ; $792c: $ef
	sbc [hl]                                         ; $792d: $9e
	inc bc                                           ; $792e: $03
	ld [hl], a                                       ; $792f: $77
	add sp, $5f                                      ; $7930: $e8 $5f
	ld d, a                                          ; $7932: $57
	ldh a, [$9e]                                     ; $7933: $f0 $9e
	ret nz                                           ; $7935: $c0

	ld [hl], a                                       ; $7936: $77
	ld [$777f], sp                                   ; $7937: $08 $7f $77
	add sp, $7b                                      ; $793a: $e8 $7b
	jr @+$81                                         ; $793c: $18 $7f

	db $fd                                           ; $793e: $fd
	and $7f                                          ; $793f: $e6 $7f
	ld b, $df                                        ; $7941: $06 $df
	ret nz                                           ; $7943: $c0

	dec de                                           ; $7944: $1b
	pop bc                                           ; $7945: $c1
	ld [hl], e                                       ; $7946: $73
	ret nz                                           ; $7947: $c0

	ld d, [hl]                                       ; $7948: $56
	sub $37                                          ; $7949: $d6 $37
	ret nz                                           ; $794b: $c0

	ld a, a                                          ; $794c: $7f
	db $fc                                           ; $794d: $fc
	rra                                              ; $794e: $1f
	cp [hl]                                          ; $794f: $be
	ld [hl], e                                       ; $7950: $73
	ret nz                                           ; $7951: $c0

	dec de                                           ; $7952: $1b
	ld a, l                                          ; $7953: $7d
	ld [hl], e                                       ; $7954: $73
	ret nz                                           ; $7955: $c0

	ld h, e                                          ; $7956: $63
	ld a, l                                          ; $7957: $7d
	di                                               ; $7958: $f3
	ld [bc], a                                       ; $7959: $02
	push hl                                          ; $795a: $e5
	rst SubAFromDE                                          ; $795b: $df
	inc bc                                           ; $795c: $03
	adc l                                            ; $795d: $8d
	dec b                                            ; $795e: $05
	ld b, $0b                                        ; $795f: $06 $0b
	inc c                                            ; $7961: $0c
	rrca                                             ; $7962: $0f
	add hl, bc                                       ; $7963: $09
	ld e, $13                                        ; $7964: $1e $13
	dec de                                           ; $7966: $1b
	ld d, $1d                                        ; $7967: $16 $1d
	ld d, $1f                                        ; $7969: $16 $1f
	inc d                                            ; $796b: $14
	scf                                              ; $796c: $37
	inc l                                            ; $796d: $2c
	ld a, [hl-]                                      ; $796e: $3a
	dec l                                            ; $796f: $2d
	ldh [$bd], a                                     ; $7970: $e0 $bd
	rst SubAFromDE                                          ; $7972: $df
	ld bc, $03df                                     ; $7973: $01 $df $03
	adc a                                            ; $7976: $8f
	ld [bc], a                                       ; $7977: $02
	inc bc                                           ; $7978: $03
	inc b                                            ; $7979: $04
	rlca                                             ; $797a: $07
	inc c                                            ; $797b: $0c
	rrca                                             ; $797c: $0f
	inc d                                            ; $797d: $14
	rra                                              ; $797e: $1f
	inc d                                            ; $797f: $14
	rra                                              ; $7980: $1f
	jr z, jr_070_79c2                                ; $7981: $28 $3f

	jr z, jr_070_79c4                                ; $7983: $28 $3f

	ld b, b                                          ; $7985: $40
	ld a, a                                          ; $7986: $7f
	ld l, a                                          ; $7987: $6f
	cp $9d                                           ; $7988: $fe $9d
	jr nz, jr_070_79cb                               ; $798a: $20 $3f

	ld [hl], a                                       ; $798c: $77
	cp $9a                                           ; $798d: $fe $9a
	db $10                                           ; $798f: $10
	rra                                              ; $7990: $1f
	db $10                                           ; $7991: $10
	rra                                              ; $7992: $1f
	jr jr_070_7a10                                   ; $7993: $18 $7b

	cp $7f                                           ; $7995: $fe $7f
	db $e4                                           ; $7997: $e4
	sbc l                                            ; $7998: $9d
	ld h, $3f                                        ; $7999: $26 $3f
	ccf                                              ; $799b: $3f
	call nz, $0781                                   ; $799c: $c4 $81 $07
	ld b, $1e                                        ; $799f: $06 $1e
	rra                                              ; $79a1: $1f
	ld a, $31                                        ; $79a2: $3e $31
	ld b, c                                          ; $79a4: $41
	ld a, a                                          ; $79a5: $7f
	di                                               ; $79a6: $f3
	rst $38                                          ; $79a7: $ff
	ld l, a                                          ; $79a8: $6f
	sbc [hl]                                         ; $79a9: $9e
	push af                                          ; $79aa: $f5
	ld c, $b9                                        ; $79ab: $0e $b9
	ld a, [hl]                                       ; $79ad: $7e
	inc [hl]                                         ; $79ae: $34
	rst GetHLinHL                                          ; $79af: $cf
	ld a, [de]                                       ; $79b0: $1a
	dec a                                            ; $79b1: $3d
	ld [hl], l                                       ; $79b2: $75
	inc l                                            ; $79b3: $2c
	xor l                                            ; $79b4: $ad

jr_070_79b5:
	ld b, h                                          ; $79b5: $44
	inc c                                            ; $79b6: $0c
	add $da                                          ; $79b7: $c6 $da
	sub [hl]                                         ; $79b9: $96
	sbc e                                            ; $79ba: $9b
	sub [hl]                                         ; $79bb: $96
	ldh [$a1], a                                     ; $79bc: $e0 $a1
	sub [hl]                                         ; $79be: $96
	jr nc, jr_070_7a00                               ; $79bf: $30 $3f

	ret nz                                           ; $79c1: $c0

jr_070_79c2:
	rst $38                                          ; $79c2: $ff
	add c                                            ; $79c3: $81

jr_070_79c4:
	rst $38                                          ; $79c4: $ff
	ld bc, $03ff                                     ; $79c5: $01 $ff $03
	ld [hl], a                                       ; $79c8: $77
	cp $80                                           ; $79c9: $fe $80

jr_070_79cb:
	cp $07                                           ; $79cb: $fe $07
	rst $38                                          ; $79cd: $ff
	inc b                                            ; $79ce: $04
	db $fc                                           ; $79cf: $fc
	inc b                                            ; $79d0: $04
	cp $04                                           ; $79d1: $fe $04
	rst $38                                          ; $79d3: $ff
	ld c, $ff                                        ; $79d4: $0e $ff

jr_070_79d6:
	dec bc                                           ; $79d6: $0b
	ei                                               ; $79d7: $fb
	dec c                                            ; $79d8: $0d
	db $fd                                           ; $79d9: $fd
	ld c, $fa                                        ; $79da: $0e $fa
	rrca                                             ; $79dc: $0f
	ld sp, hl                                        ; $79dd: $f9
	rrca                                             ; $79de: $0f
	ld a, b                                          ; $79df: $78
	rrca                                             ; $79e0: $0f
	ld a, b                                          ; $79e1: $78
	dec bc                                           ; $79e2: $0b
	ld a, b                                          ; $79e3: $78
	ld [$0438], sp                                   ; $79e4: $08 $38 $04
	inc a                                            ; $79e7: $3c
	inc b                                            ; $79e8: $04
	inc e                                            ; $79e9: $1c
	ld a, a                                          ; $79ea: $7f
	ld d, a                                          ; $79eb: $57
	sbc l                                            ; $79ec: $9d
	inc bc                                           ; $79ed: $03
	adc [hl]                                         ; $79ee: $8e
	di                                               ; $79ef: $f3
	rst SubAFromDE                                          ; $79f0: $df
	rlca                                             ; $79f1: $07
	add b                                            ; $79f2: $80
	ei                                               ; $79f3: $fb
	db $fc                                           ; $79f4: $fc
	jr nc, jr_070_79d6                               ; $79f5: $30 $df

	db $ec                                           ; $79f7: $ec
	ld [hl], b                                       ; $79f8: $70
	or b                                             ; $79f9: $b0
	ret nz                                           ; $79fa: $c0

	ld h, b                                          ; $79fb: $60
	sbc a                                            ; $79fc: $9f
	sbc a                                            ; $79fd: $9f
	db $fc                                           ; $79fe: $fc
	rst AddAOntoHL                                          ; $79ff: $ef

jr_070_7a00:
	ld [hl-], a                                      ; $7a00: $32
	rst AddAOntoHL                                          ; $7a01: $ef
	ld sp, $31df                                     ; $7a02: $31 $df $31
	rst FarCall                                          ; $7a05: $f7
	jr jr_070_79b5                                   ; $7a06: $18 $ad

	jr jr_070_7a47                                   ; $7a08: $18 $3d

	adc b                                            ; $7a0a: $88
	ld d, c                                          ; $7a0b: $51
	adc h                                            ; $7a0c: $8c
	ld d, d                                          ; $7a0d: $52
	adc h                                            ; $7a0e: $8c
	xor b                                            ; $7a0f: $a8

jr_070_7a10:
	ld b, [hl]                                       ; $7a10: $46
	add hl, hl                                       ; $7a11: $29
	sbc [hl]                                         ; $7a12: $9e
	ld b, [hl]                                       ; $7a13: $46
	ldh [$c1], a                                     ; $7a14: $e0 $c1
	add d                                            ; $7a16: $82
	ld a, a                                          ; $7a17: $7f
	db $f4                                           ; $7a18: $f4
	db $fc                                           ; $7a19: $fc
	call nz, $82fe                                   ; $7a1a: $c4 $fe $82
	cp $02                                           ; $7a1d: $fe $02
	adc [hl]                                         ; $7a1f: $8e
	ld [bc], a                                       ; $7a20: $02
	ld b, $02                                        ; $7a21: $06 $02
	ld c, $00                                        ; $7a23: $0e $00
	ld [bc], a                                       ; $7a25: $02
	nop                                              ; $7a26: $00
	ret nz                                           ; $7a27: $c0

	ret nz                                           ; $7a28: $c0

	jr nz, @+$22                                     ; $7a29: $20 $20

	jr nc, jr_070_7a5d                               ; $7a2b: $30 $30

	add b                                            ; $7a2d: $80
	nop                                              ; $7a2e: $00
	ret nz                                           ; $7a2f: $c0

	nop                                              ; $7a30: $00
	jp Jump_070_6180                                 ; $7a31: $c3 $80 $61


	ld a, e                                          ; $7a34: $7b
	adc e                                            ; $7a35: $8b
	rst SubAFromDE                                          ; $7a36: $df
	ldh [$9c], a                                     ; $7a37: $e0 $9c
	rra                                              ; $7a39: $1f
	rst $38                                          ; $7a3a: $ff
	nop                                              ; $7a3b: $00
	ld [hl], a                                       ; $7a3c: $77
	cp $9e                                           ; $7a3d: $fe $9e
	rra                                              ; $7a3f: $1f
	db $fc                                           ; $7a40: $fc
	ld a, a                                          ; $7a41: $7f
	rst SubAFromBC                                          ; $7a42: $e7
	db $f4                                           ; $7a43: $f4
	rst SubAFromDE                                          ; $7a44: $df
	cp $93                                           ; $7a45: $fe $93

jr_070_7a47:
	dec c                                            ; $7a47: $0d
	inc bc                                           ; $7a48: $03
	ld de, $c2e0                                     ; $7a49: $11 $e0 $c2
	inc a                                            ; $7a4c: $3c
	inc de                                           ; $7a4d: $13
	rrca                                             ; $7a4e: $0f
	nop                                              ; $7a4f: $00
	db $e3                                           ; $7a50: $e3
	add b                                            ; $7a51: $80
	ld a, h                                          ; $7a52: $7c
	ld a, e                                          ; $7a53: $7b
	add hl, hl                                       ; $7a54: $29
	adc [hl]                                         ; $7a55: $8e
	ld bc, $8d7a                                     ; $7a56: $01 $7a $8d
	cp e                                             ; $7a59: $bb
	call z, $c4ae                                    ; $7a5a: $cc $ae $c4

jr_070_7a5d:
	adc [hl]                                         ; $7a5d: $8e
	ld h, h                                          ; $7a5e: $64
	sub e                                            ; $7a5f: $93
	ld h, [hl]                                       ; $7a60: $66
	rst JumpTable                                          ; $7a61: $c7
	ld [hl-], a                                      ; $7a62: $32
	ret                                              ; $7a63: $c9


	inc sp                                           ; $7a64: $33
	ld h, e                                          ; $7a65: $63
	add hl, de                                       ; $7a66: $19
	ldh [$c1], a                                     ; $7a67: $e0 $c1
	ld [hl], a                                       ; $7a69: $77
	adc a                                            ; $7a6a: $8f
	sbc [hl]                                         ; $7a6b: $9e
	ld bc, $fe7b                                     ; $7a6c: $01 $7b $fe
	sbc [hl]                                         ; $7a6f: $9e
	inc bc                                           ; $7a70: $03
	ld [hl], e                                       ; $7a71: $73
	cp $9e                                           ; $7a72: $fe $9e
	rlca                                             ; $7a74: $07
	ld a, e                                          ; $7a75: $7b
	cp $98                                           ; $7a76: $fe $98
	rra                                              ; $7a78: $1f
	rlca                                             ; $7a79: $07
	ld a, h                                          ; $7a7a: $7c
	ld a, h                                          ; $7a7b: $7c
	pop bc                                           ; $7a7c: $c1
	ret nz                                           ; $7a7d: $c0

	ccf                                              ; $7a7e: $3f
	ld a, d                                          ; $7a7f: $7a
	xor l                                            ; $7a80: $ad
	adc e                                            ; $7a81: $8b
	db $fd                                           ; $7a82: $fd
	dec a                                            ; $7a83: $3d
	jp $3fc3                                         ; $7a84: $c3 $c3 $3f


	dec a                                            ; $7a87: $3d
	jp $07fe                                         ; $7a88: $c3 $fe $07


	db $fc                                           ; $7a8b: $fc

jr_070_7a8c:
	rrca                                             ; $7a8c: $0f
	ld sp, hl                                        ; $7a8d: $f9
	rra                                              ; $7a8e: $1f
	di                                               ; $7a8f: $f3
	ld a, $26                                        ; $7a90: $3e $26
	ld a, h                                          ; $7a92: $7c
	ld c, h                                          ; $7a93: $4c
	ld hl, sp-$68                                    ; $7a94: $f8 $98
	pop af                                           ; $7a96: $f1
	rst SubAFromDE                                          ; $7a97: $df
	ret nz                                           ; $7a98: $c0

	adc c                                            ; $7a99: $89
	jr nc, jr_070_7a8c                               ; $7a9a: $30 $f0

	call z, $b33c                                    ; $7a9c: $cc $3c $b3
	rst GetHLinHL                                          ; $7a9f: $cf
	ld h, c                                          ; $7aa0: $61
	rst $38                                          ; $7aa1: $ff
	sbc b                                            ; $7aa2: $98
	ld a, a                                          ; $7aa3: $7f
	and $1f                                          ; $7aa4: $e6 $1f
	reti                                             ; $7aa6: $d9


	rst SubAFromBC                                          ; $7aa7: $e7
	ld a, $f9                                        ; $7aa8: $3e $f9
	rst JumpTable                                          ; $7aaa: $c7
	ld a, $71                                        ; $7aab: $3e $71

jr_070_7aad:
	rrca                                             ; $7aad: $0f
	inc c                                            ; $7aae: $0c
	inc bc                                           ; $7aaf: $03
	ld [hl], a                                       ; $7ab0: $77
	dec l                                            ; $7ab1: $2d
	add b                                            ; $7ab2: $80
	ld hl, sp-$01                                    ; $7ab3: $f8 $ff
	rlca                                             ; $7ab5: $07
	rst $38                                          ; $7ab6: $ff
	ld a, b                                          ; $7ab7: $78
	add a                                            ; $7ab8: $87
	cp a                                             ; $7ab9: $bf
	ret nz                                           ; $7aba: $c0

	sbc a                                            ; $7abb: $9f
	ldh [rLCDC], a                                   ; $7abc: $e0 $40
	rst $38                                          ; $7abe: $ff
	ld a, a                                          ; $7abf: $7f
	rst $38                                          ; $7ac0: $ff
	ld l, $f1                                        ; $7ac1: $2e $f1
	cpl                                              ; $7ac3: $2f
	ldh a, [hDisp1_SCY]                                     ; $7ac4: $f0 $90
	rst $38                                          ; $7ac6: $ff
	rst SubAFromDE                                          ; $7ac7: $df
	rst $38                                          ; $7ac8: $ff
	ld l, b                                          ; $7ac9: $68
	rst $38                                          ; $7aca: $ff
	or l                                             ; $7acb: $b5
	cp $ef                                           ; $7acc: $fe $ef
	ld a, [hl]                                       ; $7ace: $7e
	ldh a, [$3f]                                     ; $7acf: $f0 $3f
	rst GetHLinHL                                          ; $7ad1: $cf
	add b                                            ; $7ad2: $80
	ld a, a                                          ; $7ad3: $7f
	rst GetHLinHL                                          ; $7ad4: $cf
	ld a, e                                          ; $7ad5: $7b
	sbc a                                            ; $7ad6: $9f
	pop af                                           ; $7ad7: $f1
	sub e                                            ; $7ad8: $93
	db $fd                                           ; $7ad9: $fd
	rst SubAFromHL                                          ; $7ada: $d7
	cp c                                             ; $7adb: $b9
	xor $b3                                          ; $7adc: $ee $b3
	cp $a7                                           ; $7ade: $fe $a7
	cp c                                             ; $7ae0: $b9
	rst AddAOntoHL                                          ; $7ae1: $ef
	or d                                             ; $7ae2: $b2
	cp $ec                                           ; $7ae3: $fe $ec
	ld a, h                                          ; $7ae5: $7c
	ret nc                                           ; $7ae6: $d0

	ld [hl], b                                       ; $7ae7: $70
	ldh [$60], a                                     ; $7ae8: $e0 $60
	ldh [rAUD4LEN], a                                ; $7aea: $e0 $20
	db $fc                                           ; $7aec: $fc
	inc a                                            ; $7aed: $3c
	db $e3                                           ; $7aee: $e3
	ccf                                              ; $7aef: $3f
	ldh a, [$1f]                                     ; $7af0: $f0 $1f
	sub [hl]                                         ; $7af2: $96
	ld hl, sp+$1f                                    ; $7af3: $f8 $1f
	db $fc                                           ; $7af5: $fc
	rrca                                             ; $7af6: $0f
	cp $0f                                           ; $7af7: $fe $0f
	rst $38                                          ; $7af9: $ff
	rlca                                             ; $7afa: $07
	cp $7b                                           ; $7afb: $fe $7b
	cp $9e                                           ; $7afd: $fe $9e
	db $fc                                           ; $7aff: $fc
	ld a, e                                          ; $7b00: $7b
	ld a, l                                          ; $7b01: $7d
	add b                                            ; $7b02: $80
	ld hl, sp+$0f                                    ; $7b03: $f8 $0f
	ld hl, sp+$1f                                    ; $7b05: $f8 $1f
	ldh a, [$1f]                                     ; $7b07: $f0 $1f
	ldh [$3f], a                                     ; $7b09: $e0 $3f
	pop bc                                           ; $7b0b: $c1
	rst $38                                          ; $7b0c: $ff
	ld b, b                                          ; $7b0d: $40
	ld a, a                                          ; $7b0e: $7f
	add b                                            ; $7b0f: $80
	rst $38                                          ; $7b10: $ff
	and b                                            ; $7b11: $a0
	rst $38                                          ; $7b12: $ff
	ld h, b                                          ; $7b13: $60
	rst $38                                          ; $7b14: $ff
	ret nz                                           ; $7b15: $c0

	rst $38                                          ; $7b16: $ff
	add b                                            ; $7b17: $80
	rst $38                                          ; $7b18: $ff
	nop                                              ; $7b19: $00
	db $fc                                           ; $7b1a: $fc
	nop                                              ; $7b1b: $00
	di                                               ; $7b1c: $f3
	ld bc, $83e7                                     ; $7b1d: $01 $e7 $83
	rst GetHLinHL                                          ; $7b20: $cf
	ld b, $98                                        ; $7b21: $06 $98
	rra                                              ; $7b23: $1f
	inc c                                            ; $7b24: $0c
	ccf                                              ; $7b25: $3f
	jr jr_070_7ba7                                   ; $7b26: $18 $7f

	ld sp, $23ff                                     ; $7b28: $31 $ff $23
	jr jr_070_7aad                                   ; $7b2b: $18 $80

	add b                                            ; $7b2d: $80
	ret nz                                           ; $7b2e: $c0

	ret nz                                           ; $7b2f: $c0

	ld h, b                                          ; $7b30: $60
	ldh [$30], a                                     ; $7b31: $e0 $30
	ldh a, [$98]                                     ; $7b33: $f0 $98
	ld hl, sp+$48                                    ; $7b35: $f8 $48
	ld hl, sp-$54                                    ; $7b37: $f8 $ac
	db $fc                                           ; $7b39: $fc
	call nc, $36fc                                   ; $7b3a: $d4 $fc $36
	cp $1b                                           ; $7b3d: $fe $1b
	rst $38                                          ; $7b3f: $ff
	dec bc                                           ; $7b40: $0b
	rst $38                                          ; $7b41: $ff
	add [hl]                                         ; $7b42: $86
	rst $38                                          ; $7b43: $ff
	ld [hl], h                                       ; $7b44: $74
	rst $38                                          ; $7b45: $ff
	adc h                                            ; $7b46: $8c
	ld a, a                                          ; $7b47: $7f
	ldh a, [c]                                       ; $7b48: $f2
	rrca                                             ; $7b49: $0f
	rra                                              ; $7b4a: $1f
	rst $38                                          ; $7b4b: $ff
	adc d                                            ; $7b4c: $8a
	ldh [c], a                                       ; $7b4d: $e2
	rst $38                                          ; $7b4e: $ff
	inc e                                            ; $7b4f: $1c
	rst SubAFromBC                                          ; $7b50: $e7
	db $fc                                           ; $7b51: $fc
	rra                                              ; $7b52: $1f
	ld h, h                                          ; $7b53: $64
	rst $38                                          ; $7b54: $ff
	adc l                                            ; $7b55: $8d
	or $35                                           ; $7b56: $f6 $35
	adc $e5                                          ; $7b58: $ce $e5
	ld e, $da                                        ; $7b5a: $1e $da
	ccf                                              ; $7b5c: $3f
	ld l, d                                          ; $7b5d: $6a
	rst $38                                          ; $7b5e: $ff
	sub d                                            ; $7b5f: $92
	rst $38                                          ; $7b60: $ff
	ld de, $fe7b                                     ; $7b61: $11 $7b $fe
	sub c                                            ; $7b64: $91
	ld [hl-], a                                      ; $7b65: $32
	cp $2a                                           ; $7b66: $fe $2a
	xor $4a                                          ; $7b68: $ee $4a
	adc $8a                                          ; $7b6a: $ce $8a
	adc [hl]                                         ; $7b6c: $8e
	ld a, [bc]                                       ; $7b6d: $0a
	ld c, $05                                        ; $7b6e: $0e $05
	rlca                                             ; $7b70: $07
	dec b                                            ; $7b71: $05
	rlca                                             ; $7b72: $07
	db $dd                                           ; $7b73: $dd
	inc bc                                           ; $7b74: $03
	rst SubAFromDE                                          ; $7b75: $df
	ld bc, $b06f                                     ; $7b76: $01 $6f $b0
	sbc [hl]                                         ; $7b79: $9e
	ld b, b                                          ; $7b7a: $40
	ld a, e                                          ; $7b7b: $7b
	ld b, $9a                                        ; $7b7c: $06 $9a
	jr @-$06                                         ; $7b7e: $18 $f8

	inc b                                            ; $7b80: $04
	db $fc                                           ; $7b81: $fc
	inc bc                                           ; $7b82: $03
	ld a, c                                          ; $7b83: $79
	add d                                            ; $7b84: $82
	ld a, a                                          ; $7b85: $7f
	inc de                                           ; $7b86: $13
	ld a, a                                          ; $7b87: $7f
	db $fc                                           ; $7b88: $fc
	ld a, a                                          ; $7b89: $7f
	inc d                                            ; $7b8a: $14
	sbc d                                            ; $7b8b: $9a
	inc e                                            ; $7b8c: $1c
	rst $38                                          ; $7b8d: $ff
	jr nc, @+$01                                     ; $7b8e: $30 $ff

	ldh [rPCM34], a                                  ; $7b90: $e0 $77
	ld l, h                                          ; $7b92: $6c
	ld h, e                                          ; $7b93: $63
	cp $75                                           ; $7b94: $fe $75
	ld l, b                                          ; $7b96: $68
	sub c                                            ; $7b97: $91
	add [hl]                                         ; $7b98: $86
	cp $8d                                           ; $7b99: $fe $8d
	db $fc                                           ; $7b9b: $fc
	add hl, de                                       ; $7b9c: $19
	ld sp, hl                                        ; $7b9d: $f9
	inc sp                                           ; $7b9e: $33
	pop af                                           ; $7b9f: $f1
	ld h, e                                          ; $7ba0: $63
	db $e3                                           ; $7ba1: $e3
	rst JumpTable                                          ; $7ba2: $c7
	jp nz, $8287                                     ; $7ba3: $c2 $87 $82

	ld l, h                                          ; $7ba6: $6c

jr_070_7ba7:
	sub d                                            ; $7ba7: $92
	add b                                            ; $7ba8: $80
	rrca                                             ; $7ba9: $0f
	dec c                                            ; $7baa: $0d
	ld a, $32                                        ; $7bab: $3e $32
	or $ce                                           ; $7bad: $f6 $ce
	db $fc                                           ; $7baf: $fc
	db $fc                                           ; $7bb0: $fc
	ei                                               ; $7bb1: $fb
	rlca                                             ; $7bb2: $07
	ld c, $f1                                        ; $7bb3: $0e $f1
	di                                               ; $7bb5: $f3
	db $fc                                           ; $7bb6: $fc

Jump_070_7bb7:
	rst AddAOntoHL                                          ; $7bb7: $ef
	rra                                              ; $7bb8: $1f
	cp h                                             ; $7bb9: $bc
	rst JumpTable                                          ; $7bba: $c7
	ld l, [hl]                                       ; $7bbb: $6e
	di                                               ; $7bbc: $f3
	sbc a                                            ; $7bbd: $9f

jr_070_7bbe:
	ld a, c                                          ; $7bbe: $79
	ld l, [hl]                                       ; $7bbf: $6e
	sbc l                                            ; $7bc0: $9d
	or l                                             ; $7bc1: $b5
	adc $5b                                          ; $7bc2: $ce $5b
	and $2e                                          ; $7bc4: $e6 $2e
	di                                               ; $7bc6: $f3
	or l                                             ; $7bc7: $b5
	adc d                                            ; $7bc8: $8a
	ld a, e                                          ; $7bc9: $7b
	rst SubAFromDE                                          ; $7bca: $df
	add hl, sp                                       ; $7bcb: $39
	jp c, Jump_070_6c3d                              ; $7bcc: $da $3d $6c

	sbc a                                            ; $7bcf: $9f
	ld l, h                                          ; $7bd0: $6c
	sbc a                                            ; $7bd1: $9f
	ld l, d                                          ; $7bd2: $6a
	sbc e                                            ; $7bd3: $9b
	ld [$a99b], a                                    ; $7bd4: $ea $9b $a9
	reti                                             ; $7bd7: $d9


	ld c, c                                          ; $7bd8: $49
	ld a, c                                          ; $7bd9: $79
	ld c, c                                          ; $7bda: $49
	ld a, c                                          ; $7bdb: $79
	jr z, @+$3a                                      ; $7bdc: $28 $38

	db $dd                                           ; $7bde: $dd
	jr nc, jr_070_7bbe                               ; $7bdf: $30 $dd

	jr nz, jr_070_7c1a                               ; $7be1: $20 $37

	inc h                                            ; $7be3: $24
	rst SubAFromDE                                          ; $7be4: $df
	ldh [$df], a                                     ; $7be5: $e0 $df
	ld hl, sp-$63                                    ; $7be7: $f8 $9d
	ld c, $fe                                        ; $7be9: $0e $fe
	ld l, a                                          ; $7beb: $6f
	halt                                             ; $7bec: $76
	ld l, a                                          ; $7bed: $6f
	cp $7f                                           ; $7bee: $fe $7f
	ld [hl], d                                       ; $7bf0: $72
	ld a, [hl]                                       ; $7bf1: $7e
	pop bc                                           ; $7bf2: $c1
	sbc c                                            ; $7bf3: $99
	ld a, a                                          ; $7bf4: $7f
	ldh a, [$f0]                                     ; $7bf5: $f0 $f0
	ldh [$c0], a                                     ; $7bf7: $e0 $c0
	ld b, b                                          ; $7bf9: $40
	db $dd                                           ; $7bfa: $dd
	add b                                            ; $7bfb: $80

jr_070_7bfc:
	halt                                             ; $7bfc: $76
	jr nz, jr_070_7c7c                               ; $7bfd: $20 $7d

	cp l                                             ; $7bff: $bd
	ld a, l                                          ; $7c00: $7d
	sbc l                                            ; $7c01: $9d
	sbc [hl]                                         ; $7c02: $9e
	ld a, a                                          ; $7c03: $7f
	ld a, e                                          ; $7c04: $7b
	call nc, $80df                                   ; $7c05: $d4 $df $80
	ld c, [hl]                                       ; $7c08: $4e
	ld b, b                                          ; $7c09: $40
	add l                                            ; $7c0a: $85
	or b                                             ; $7c0b: $b0
	ld [hl], b                                       ; $7c0c: $70
	ret c                                            ; $7c0d: $d8

	jr c, jr_070_7bfc                                ; $7c0e: $38 $ec

jr_070_7c10:
	sbc h                                            ; $7c10: $9c
	db $e4                                           ; $7c11: $e4
	ld a, h                                          ; $7c12: $7c
	ld [hl], d                                       ; $7c13: $72
	cp [hl]                                          ; $7c14: $be
	jp c, $b5be                                      ; $7c15: $da $be $b5

	rst SubAFromHL                                          ; $7c18: $d7
	db $eb                                           ; $7c19: $eb

jr_070_7c1a:
	ld e, e                                          ; $7c1a: $5b
	reti                                             ; $7c1b: $d9


	ld l, c                                          ; $7c1c: $69
	or l                                             ; $7c1d: $b5
	ld l, l                                          ; $7c1e: $6d
	inc [hl]                                         ; $7c1f: $34
	db $fc                                           ; $7c20: $fc
	xor d                                            ; $7c21: $aa
	xor $d6                                          ; $7c22: $ee $d6
	or $dd                                           ; $7c24: $f6 $dd
	or d                                             ; $7c26: $b2
	db $dd                                           ; $7c27: $dd
	sub b                                            ; $7c28: $90
	reti                                             ; $7c29: $d9


	add b                                            ; $7c2a: $80
	ld l, a                                          ; $7c2b: $6f
	ret nc                                           ; $7c2c: $d0

	adc c                                            ; $7c2d: $89
	jr nz, jr_070_7c10                               ; $7c2e: $20 $e0

	db $10                                           ; $7c30: $10
	ldh a, [$08]                                     ; $7c31: $f0 $08
	ld hl, sp+$08                                    ; $7c33: $f8 $08
	ld hl, sp-$3c                                    ; $7c35: $f8 $c4
	db $fc                                           ; $7c37: $fc
	ldh [c], a                                       ; $7c38: $e2
	ld a, $f2                                        ; $7c39: $3e $f2
	ld e, $11                                        ; $7c3b: $1e $11
	rra                                              ; $7c3d: $1f
	add hl, bc                                       ; $7c3e: $09
	rrca                                             ; $7c3f: $0f
	ld a, c                                          ; $7c40: $79
	rrca                                             ; $7c41: $0f
	db $fd                                           ; $7c42: $fd
	rlca                                             ; $7c43: $07
	ld [hl], a                                       ; $7c44: $77
	cp $7f                                           ; $7c45: $fe $7f
	inc de                                           ; $7c47: $13
	sbc l                                            ; $7c48: $9d
	di                                               ; $7c49: $f3
	inc bc                                           ; $7c4a: $03
	inc h                                            ; $7c4b: $24
	nop                                              ; $7c4c: $00
	sub b                                            ; $7c4d: $90
	call z, $9988                                    ; $7c4e: $cc $88 $99
	cp e                                             ; $7c51: $bb
	xor d                                            ; $7c52: $aa
	adc b                                            ; $7c53: $88
	ld [$cb99], sp                                   ; $7c54: $08 $99 $cb
	ld [hl+], a                                      ; $7c57: $22
	add b                                            ; $7c58: $80
	ld [$8099], sp                                   ; $7c59: $08 $99 $80
	ld de, $fb73                                     ; $7c5c: $11 $73 $fb
	sub h                                            ; $7c5f: $94
	adc b                                            ; $7c60: $88
	nop                                              ; $7c61: $00
	adc b                                            ; $7c62: $88
	cp e                                             ; $7c63: $bb
	inc sp                                           ; $7c64: $33
	adc b                                            ; $7c65: $88
	add b                                            ; $7c66: $80
	adc b                                            ; $7c67: $88
	xor d                                            ; $7c68: $aa
	ld [hl+], a                                      ; $7c69: $22
	adc b                                            ; $7c6a: $88
	ld [hl], e                                       ; $7c6b: $73
	db $fc                                           ; $7c6c: $fc
	sbc [hl]                                         ; $7c6d: $9e
	and d                                            ; $7c6e: $a2
	push bc                                          ; $7c6f: $c5
	ld bc, $3b80                                     ; $7c70: $01 $80 $3b
	dec l                                            ; $7c73: $2d
	dec a                                            ; $7c74: $3d
	dec hl                                           ; $7c75: $2b
	ld l, [hl]                                       ; $7c76: $6e
	ld e, e                                          ; $7c77: $5b
	ld a, d                                          ; $7c78: $7a
	ld d, a                                          ; $7c79: $57
	sbc h                                            ; $7c7a: $9c
	rst FarCall                                          ; $7c7b: $f7

jr_070_7c7c:
	db $f4                                           ; $7c7c: $f4
	rst AddAOntoHL                                          ; $7c7d: $ef
	ld l, c                                          ; $7c7e: $69
	ld a, a                                          ; $7c7f: $7f
	ld d, d                                          ; $7c80: $52
	ld a, a                                          ; $7c81: $7f
	db $fc                                           ; $7c82: $fc
	rst $38                                          ; $7c83: $ff
	dec l                                            ; $7c84: $2d
	dec sp                                           ; $7c85: $3b
	ld l, l                                          ; $7c86: $6d
	ld e, d                                          ; $7c87: $5a
	ld l, a                                          ; $7c88: $6f
	ld e, h                                          ; $7c89: $5c
	rst SubAFromHL                                          ; $7c8a: $d7
	cp h                                             ; $7c8b: $bc
	cp a                                             ; $7c8c: $bf
	db $f4                                           ; $7c8d: $f4
	db $dd                                           ; $7c8e: $dd
	rst SubAFromHL                                          ; $7c8f: $d7
	or a                                             ; $7c90: $b7
	adc b                                            ; $7c91: $88
	xor [hl]                                         ; $7c92: $ae
	xor e                                            ; $7c93: $ab
	cp [hl]                                          ; $7c94: $be
	ld l, [hl]                                       ; $7c95: $6e
	ld e, e                                          ; $7c96: $5b
	ld e, a                                          ; $7c97: $5f
	ld a, e                                          ; $7c98: $7b
	xor e                                            ; $7c99: $ab
	rst AddAOntoHL                                          ; $7c9a: $ef
	rst SubAFromHL                                          ; $7c9b: $d7
	rst SubAFromDE                                          ; $7c9c: $df
	sub a                                            ; $7c9d: $97
	sbc a                                            ; $7c9e: $9f
	sbc d                                            ; $7c9f: $9a
	sbc e                                            ; $7ca0: $9b
	dec de                                           ; $7ca1: $1b
	ld a, [de]                                       ; $7ca2: $1a
	inc de                                           ; $7ca3: $13
	ld [de], a                                       ; $7ca4: $12
	inc de                                           ; $7ca5: $13
	inc de                                           ; $7ca6: $13
	inc bc                                           ; $7ca7: $03
	inc bc                                           ; $7ca8: $03
	db $dd                                           ; $7ca9: $dd
	ld [bc], a                                       ; $7caa: $02
	ei                                               ; $7cab: $fb
	add b                                            ; $7cac: $80
	cp [hl]                                          ; $7cad: $be
	inc de                                           ; $7cae: $13
	ld d, l                                          ; $7caf: $55
	dec sp                                           ; $7cb0: $3b
	dec a                                            ; $7cb1: $3d

jr_070_7cb2:
	ld l, e                                          ; $7cb2: $6b
	db $eb                                           ; $7cb3: $eb
	ld l, l                                          ; $7cb4: $6d
	ld l, a                                          ; $7cb5: $6f
	push bc                                          ; $7cb6: $c5
	call nz, $e287                                   ; $7cb7: $c4 $87 $e2
	inc bc                                           ; $7cba: $03
	ei                                               ; $7cbb: $fb
	add hl, sp                                       ; $7cbc: $39
	ld [hl], c                                       ; $7cbd: $71
	ld hl, sp-$24                                    ; $7cbe: $f8 $dc
	ldh [$7c], a                                     ; $7cc0: $e0 $7c
	nop                                              ; $7cc2: $00
	ld a, $00                                        ; $7cc3: $3e $00
	halt                                             ; $7cc5: $76
	jr c, jr_070_7cb2                                ; $7cc6: $38 $ea

	ld l, h                                          ; $7cc8: $6c
	and $e4                                          ; $7cc9: $e6 $e4
	call c, $fc80                                    ; $7ccb: $dc $80 $fc
	ld e, h                                          ; $7cce: $5c
	ld e, h                                          ; $7ccf: $5c
	ld d, h                                          ; $7cd0: $54
	ld d, h                                          ; $7cd1: $54
	jr z, @+$2e                                      ; $7cd2: $28 $2c

	ld a, l                                          ; $7cd4: $7d
	jr @-$7b                                         ; $7cd5: $18 $83

	inc bc                                           ; $7cd7: $03
	db $d3                                           ; $7cd8: $d3
	ld [bc], a                                       ; $7cd9: $02
	xor c                                            ; $7cda: $a9
	add b                                            ; $7cdb: $80
	ret nz                                           ; $7cdc: $c0

	add b                                            ; $7cdd: $80

jr_070_7cde:
	rst $38                                          ; $7cde: $ff
	ret nz                                           ; $7cdf: $c0

	ld e, a                                          ; $7ce0: $5f
	ld h, b                                          ; $7ce1: $60
	cpl                                              ; $7ce2: $2f
	jr nc, jr_070_7cfc                               ; $7ce3: $30 $17

	jr jr_070_7cf2                                   ; $7ce5: $18 $0b

	inc c                                            ; $7ce7: $0c
	rlca                                             ; $7ce8: $07
	ld b, $03                                        ; $7ce9: $06 $03
	inc bc                                           ; $7ceb: $03
	rst SubAFromDE                                          ; $7cec: $df
	rrca                                             ; $7ced: $0f
	add b                                            ; $7cee: $80
	ld d, h                                          ; $7cef: $54
	inc hl                                           ; $7cf0: $23
	ld b, h                                          ; $7cf1: $44

jr_070_7cf2:
	or e                                             ; $7cf2: $b3
	db $d3                                           ; $7cf3: $d3
	cp c                                             ; $7cf4: $b9
	sbc d                                            ; $7cf5: $9a
	db $fd                                           ; $7cf6: $fd
	call c, $ee77                                    ; $7cf7: $dc $77 $ee
	cp e                                             ; $7cfa: $bb
	cp a                                             ; $7cfb: $bf

jr_070_7cfc:
	sbc c                                            ; $7cfc: $99
	ld e, a                                          ; $7cfd: $5f
	call $e1e6                                       ; $7cfe: $cd $e6 $e1
	ld h, e                                          ; $7d01: $63
	nop                                              ; $7d02: $00
	rlca                                             ; $7d03: $07
	nop                                              ; $7d04: $00

jr_070_7d05:
	rrca                                             ; $7d05: $0f
	nop                                              ; $7d06: $00
	ld c, $01                                        ; $7d07: $0e $01
	dec c                                            ; $7d09: $0d
	inc bc                                           ; $7d0a: $03
	rrca                                             ; $7d0b: $0f
	inc bc                                           ; $7d0c: $03
	dec b                                            ; $7d0d: $05
	call c, $9701                                    ; $7d0e: $dc $01 $97
	add b                                            ; $7d11: $80
	ld bc, $00c0                                     ; $7d12: $01 $c0 $00
	pop bc                                           ; $7d15: $c1
	nop                                              ; $7d16: $00
	add l                                            ; $7d17: $85
	nop                                              ; $7d18: $00
	ld l, e                                          ; $7d19: $6b
	adc l                                            ; $7d1a: $8d
	db $fc                                           ; $7d1b: $fc
	add b                                            ; $7d1c: $80
	ld bc, $0300                                     ; $7d1d: $01 $00 $03
	nop                                              ; $7d20: $00
	adc a                                            ; $7d21: $8f
	inc bc                                           ; $7d22: $03
	rst $38                                          ; $7d23: $ff
	call z, $1965                                    ; $7d24: $cc $65 $19
	or b                                             ; $7d27: $b0
	dec c                                            ; $7d28: $0d
	ld [hl], $8d                                     ; $7d29: $36 $8d
	sbc h                                            ; $7d2b: $9c
	rst JumpTable                                          ; $7d2c: $c7
	ld e, d                                          ; $7d2d: $5a
	rst SubAFromBC                                          ; $7d2e: $e7
	ld a, [hl+]                                      ; $7d2f: $2a
	rst FarCall                                          ; $7d30: $f7
	sub c                                            ; $7d31: $91
	rst $38                                          ; $7d32: $ff
	jp hl                                            ; $7d33: $e9


	rst $38                                          ; $7d34: $ff
	ld a, h                                          ; $7d35: $7c
	rst $38                                          ; $7d36: $ff

jr_070_7d37:
	rst AddAOntoHL                                          ; $7d37: $ef
	dec de                                           ; $7d38: $1b
	rst $38                                          ; $7d39: $ff
	ld bc, $80ff                                     ; $7d3a: $01 $ff $80
	nop                                              ; $7d3d: $00
	rst SubAFromDE                                          ; $7d3e: $df
	ldh [$37], a                                     ; $7d3f: $e0 $37
	jr c, jr_070_7cde                                ; $7d41: $38 $9b

	sbc h                                            ; $7d43: $9c
	ld a, a                                          ; $7d44: $7f
	cp $77                                           ; $7d45: $fe $77
	ld [hl], h                                       ; $7d47: $74
	ld d, e                                          ; $7d48: $53
	ld d, b                                          ; $7d49: $50
	and a                                            ; $7d4a: $a7
	or b                                             ; $7d4b: $b0
	rst AddAOntoHL                                          ; $7d4c: $ef
	ldh [rIE], a                                     ; $7d4d: $e0 $ff
	nop                                              ; $7d4f: $00
	ld e, a                                          ; $7d50: $5f
	nop                                              ; $7d51: $00
	cp a                                             ; $7d52: $bf
	nop                                              ; $7d53: $00
	ccf                                              ; $7d54: $3f
	nop                                              ; $7d55: $00
	ld a, a                                          ; $7d56: $7f
	ld bc, $037f                                     ; $7d57: $01 $7f $03

jr_070_7d5a:
	rst $38                                          ; $7d5a: $ff
	ld b, $95                                        ; $7d5b: $06 $95
	rst $38                                          ; $7d5d: $ff
	inc c                                            ; $7d5e: $0c
	db $fc                                           ; $7d5f: $fc
	jr nc, jr_070_7d5a                               ; $7d60: $30 $f8

jr_070_7d62:
	ret nz                                           ; $7d62: $c0

	ldh [rP1], a                                     ; $7d63: $e0 $00

jr_070_7d65:
	ret nz                                           ; $7d65: $c0

	nop                                              ; $7d66: $00
	inc de                                           ; $7d67: $13
	nop                                              ; $7d68: $00
	sbc h                                            ; $7d69: $9c
	sub $b7                                          ; $7d6a: $d6 $b7
	xor [hl]                                         ; $7d6c: $ae
	daa                                              ; $7d6d: $27
	jr nz, jr_070_7d05                               ; $7d6e: $20 $95

	ld a, [hl]                                       ; $7d70: $7e
	nop                                              ; $7d71: $00
	or [hl]                                          ; $7d72: $b6
	ld a, b                                          ; $7d73: $78
	ld h, d                                          ; $7d74: $62
	db $e4                                           ; $7d75: $e4
	db $fc                                           ; $7d76: $fc
	db $fc                                           ; $7d77: $fc
	ld e, h                                          ; $7d78: $5c
	ld a, h                                          ; $7d79: $7c
	inc bc                                           ; $7d7a: $03
	jr nz, jr_070_7db0                               ; $7d7b: $20 $33

jr_070_7d7d:
	jr nz, @+$71                                     ; $7d7d: $20 $6f

	ld e, $9d                                        ; $7d7f: $1e $9d
	rlca                                             ; $7d81: $07
	inc bc                                           ; $7d82: $03
	inc bc                                           ; $7d83: $03
	jr nz, @+$2d                                     ; $7d84: $20 $2b

	jr nz, @+$81                                     ; $7d86: $20 $7f

	cp $97                                           ; $7d88: $fe $97
	rst AddAOntoHL                                          ; $7d8a: $ef
	ldh a, [$9b]                                     ; $7d8b: $f0 $9b
	sbc h                                            ; $7d8d: $9c
	rst $38                                          ; $7d8e: $ff
	cp $77                                           ; $7d8f: $fe $77
	db $f4                                           ; $7d91: $f4
	inc bc                                           ; $7d92: $03
	jr nz, @+$05                                     ; $7d93: $20 $03

	jr nz, @+$49                                     ; $7d95: $20 $47

	jr nz, jr_070_7d37                               ; $7d97: $20 $9e

	db $fc                                           ; $7d99: $fc
	ld a, e                                          ; $7d9a: $7b
	ld [hl+], a                                      ; $7d9b: $22
	ld a, a                                          ; $7d9c: $7f
	ld e, $77                                        ; $7d9d: $1e $77
	inc e                                            ; $7d9f: $1c
	sbc e                                            ; $7da0: $9b
	inc a                                            ; $7da1: $3c
	ld a, b                                          ; $7da2: $78
	call c, $03fc                                    ; $7da3: $dc $fc $03
	jr nz, @+$2d                                     ; $7da6: $20 $2b

	jr nz, jr_070_7e21                               ; $7da8: $20 $77

	cp $9e                                           ; $7daa: $fe $9e
	dec b                                            ; $7dac: $05
	sbc $03                                          ; $7dad: $de $03
	inc bc                                           ; $7daf: $03

jr_070_7db0:
	jr nz, jr_070_7ddd                               ; $7db0: $20 $2b

	jr nz, jr_070_7e2b                               ; $7db2: $20 $77

	cp $99                                           ; $7db4: $fe $99
	rst FarCall                                          ; $7db6: $f7
	ld hl, sp+$7f                                    ; $7db7: $f8 $7f
	cp $57                                           ; $7db9: $fe $57
	ld d, h                                          ; $7dbb: $54
	inc bc                                           ; $7dbc: $03
	jr nz, jr_070_7e12                               ; $7dbd: $20 $53

	jr nz, @-$63                                     ; $7dbf: $20 $9b

	inc l                                            ; $7dc1: $2c
	dec sp                                           ; $7dc2: $3b
	ld l, l                                          ; $7dc3: $6d
	ld e, e                                          ; $7dc4: $5b
	daa                                              ; $7dc5: $27
	jr nz, jr_070_7d62                               ; $7dc6: $20 $9a

	di                                               ; $7dc8: $f3
	ld bc, $38f9                                     ; $7dc9: $01 $f9 $38
	ld [hl], h                                       ; $7dcc: $74
	ld a, e                                          ; $7dcd: $7b
	ld e, $6f                                        ; $7dce: $1e $6f
	jr nz, jr_070_7d65                               ; $7dd0: $20 $93

	ld e, $00                                        ; $7dd2: $1e $00
	inc e                                            ; $7dd4: $1c
	nop                                              ; $7dd5: $00
	inc a                                            ; $7dd6: $3c
	nop                                              ; $7dd7: $00
	ld a, h                                          ; $7dd8: $7c
	nop                                              ; $7dd9: $00
	ld h, h                                          ; $7dda: $64
	ld l, h                                          ; $7ddb: $6c
	ld a, l                                          ; $7ddc: $7d

jr_070_7ddd:
	jr c, @+$05                                      ; $7ddd: $38 $03

	jr nz, jr_070_7e50                               ; $7ddf: $20 $6f

	jr nz, jr_070_7d7d                               ; $7de1: $20 $9a

	call z, $e1e7                                    ; $7de3: $cc $e7 $e1
	ld h, d                                          ; $7de6: $62
	ld bc, $205f                                     ; $7de7: $01 $5f $20
	ld a, a                                          ; $7dea: $7f
	or $7f                                           ; $7deb: $f6 $7f
	jr c, jr_070_7e6e                                ; $7ded: $38 $7f

	cp $9b                                           ; $7def: $fe $9b
	add d                                            ; $7df1: $82
	inc bc                                           ; $7df2: $03
	pop bc                                           ; $7df3: $c1
	ld bc, $2003                                     ; $7df4: $01 $03 $20
	ld l, e                                          ; $7df7: $6b
	jr nz, jr_070_7e79                               ; $7df8: $20 $7f

	ld h, b                                          ; $7dfa: $60
	sbc e                                            ; $7dfb: $9b
	ccf                                              ; $7dfc: $3f

jr_070_7dfd:
	ei                                               ; $7dfd: $fb
	rst AddAOntoHL                                          ; $7dfe: $ef
	dec e                                            ; $7dff: $1d
	ld h, a                                          ; $7e00: $67
	jr nz, jr_070_7e72                               ; $7e01: $20 $6f

	cp $9b                                           ; $7e03: $fe $9b
	xor a                                            ; $7e05: $af
	ld e, $ff                                        ; $7e06: $1e $ff
	ld hl, sp+$27                                    ; $7e08: $f8 $27
	jr nz, jr_070_7dfd                               ; $7e0a: $20 $f1

	rst SubAFromDE                                          ; $7e0c: $df
	ld bc, $dfe5                                     ; $7e0d: $01 $e5 $df
	jr nz, @-$62                                     ; $7e10: $20 $9c

jr_070_7e12:
	ldh [rLCDC], a                                   ; $7e12: $e0 $40
	nop                                              ; $7e14: $00
	dec sp                                           ; $7e15: $3b
	jp z, $c003                                      ; $7e16: $ca $03 $c0

	ld a, [$309a]                                    ; $7e19: $fa $9a $30
	db $10                                           ; $7e1c: $10
	ldh a, [$e0]                                     ; $7e1d: $f0 $e0

jr_070_7e1f:
	ldh [rAUD2ENV], a                                ; $7e1f: $e0 $17

jr_070_7e21:
	pop bc                                           ; $7e21: $c1
	ld a, e                                          ; $7e22: $7b
	ret nz                                           ; $7e23: $c0

	rla                                              ; $7e24: $17
	cp a                                             ; $7e25: $bf
	ld a, e                                          ; $7e26: $7b
	ret nz                                           ; $7e27: $c0

	rst SubAFromDE                                          ; $7e28: $df
	ldh a, [$df]                                     ; $7e29: $f0 $df

jr_070_7e2b:
	ldh [$7b], a                                     ; $7e2b: $e0 $7b
	ld a, h                                          ; $7e2d: $7c
	inc bc                                           ; $7e2e: $03
	ret nz                                           ; $7e2f: $c0

	rra                                              ; $7e30: $1f
	ret nz                                           ; $7e31: $c0

	ld d, e                                          ; $7e32: $53
	cp [hl]                                          ; $7e33: $be
	ret z                                            ; $7e34: $c8

	ld bc, $3b80                                     ; $7e35: $01 $80 $3b
	dec l                                            ; $7e38: $2d
	dec a                                            ; $7e39: $3d
	dec hl                                           ; $7e3a: $2b
	ld l, [hl]                                       ; $7e3b: $6e
	ld e, e                                          ; $7e3c: $5b
	ld a, d                                          ; $7e3d: $7a
	ld d, a                                          ; $7e3e: $57
	sbc h                                            ; $7e3f: $9c
	rst FarCall                                          ; $7e40: $f7
	db $f4                                           ; $7e41: $f4
	rst AddAOntoHL                                          ; $7e42: $ef
	ld l, c                                          ; $7e43: $69
	ld a, a                                          ; $7e44: $7f
	ld d, d                                          ; $7e45: $52
	ld a, a                                          ; $7e46: $7f
	db $fd                                           ; $7e47: $fd
	rst $38                                          ; $7e48: $ff
	dec l                                            ; $7e49: $2d
	dec sp                                           ; $7e4a: $3b
	ld l, l                                          ; $7e4b: $6d
	ld e, d                                          ; $7e4c: $5a
	ld l, a                                          ; $7e4d: $6f
	ld e, h                                          ; $7e4e: $5c
	rst SubAFromHL                                          ; $7e4f: $d7

jr_070_7e50:
	cp h                                             ; $7e50: $bc
	cp [hl]                                          ; $7e51: $be
	push af                                          ; $7e52: $f5
	db $dd                                           ; $7e53: $dd
	rst SubAFromHL                                          ; $7e54: $d7
	or a                                             ; $7e55: $b7
	adc b                                            ; $7e56: $88
	xor [hl]                                         ; $7e57: $ae
	xor e                                            ; $7e58: $ab
	cp [hl]                                          ; $7e59: $be
	ld l, [hl]                                       ; $7e5a: $6e
	ld e, e                                          ; $7e5b: $5b
	ld e, a                                          ; $7e5c: $5f
	ld a, e                                          ; $7e5d: $7b
	xor e                                            ; $7e5e: $ab
	rst AddAOntoHL                                          ; $7e5f: $ef
	rst SubAFromHL                                          ; $7e60: $d7
	rst SubAFromDE                                          ; $7e61: $df
	sub a                                            ; $7e62: $97
	sbc a                                            ; $7e63: $9f
	sbc d                                            ; $7e64: $9a
	sbc e                                            ; $7e65: $9b
	dec de                                           ; $7e66: $1b
	ld a, [de]                                       ; $7e67: $1a
	inc de                                           ; $7e68: $13
	ld [de], a                                       ; $7e69: $12
	inc de                                           ; $7e6a: $13
	inc de                                           ; $7e6b: $13
	inc bc                                           ; $7e6c: $03
	inc bc                                           ; $7e6d: $03

jr_070_7e6e:
	db $dd                                           ; $7e6e: $dd
	ld [bc], a                                       ; $7e6f: $02
	ei                                               ; $7e70: $fb
	add b                                            ; $7e71: $80

jr_070_7e72:
	cp [hl]                                          ; $7e72: $be
	inc de                                           ; $7e73: $13
	ld d, l                                          ; $7e74: $55
	dec sp                                           ; $7e75: $3b
	dec a                                            ; $7e76: $3d
	ld l, e                                          ; $7e77: $6b
	db $eb                                           ; $7e78: $eb

jr_070_7e79:
	ld l, l                                          ; $7e79: $6d
	ld l, a                                          ; $7e7a: $6f
	push bc                                          ; $7e7b: $c5
	call nz, $fa87                                   ; $7e7c: $c4 $87 $fa
	ld [hl], e                                       ; $7e7f: $73
	db $eb                                           ; $7e80: $eb
	pop af                                           ; $7e81: $f1
	cp c                                             ; $7e82: $b9
	ret nz                                           ; $7e83: $c0

	db $fc                                           ; $7e84: $fc
	nop                                              ; $7e85: $00
	ld a, h                                          ; $7e86: $7c
	nop                                              ; $7e87: $00
	ld c, $30                                        ; $7e88: $0e $30
	or $78                                           ; $7e8a: $f6 $78
	ld [$e6ec], a                                    ; $7e8c: $ea $ec $e6
	db $e4                                           ; $7e8f: $e4
	ld e, h                                          ; $7e90: $5c
	add b                                            ; $7e91: $80
	ld a, h                                          ; $7e92: $7c
	ld e, h                                          ; $7e93: $5c
	ld e, h                                          ; $7e94: $5c
	ld d, h                                          ; $7e95: $54
	ld d, h                                          ; $7e96: $54
	jr z, @+$2e                                      ; $7e97: $28 $2c

	ld a, l                                          ; $7e99: $7d
	jr jr_070_7e1f                                   ; $7e9a: $18 $83

	inc bc                                           ; $7e9c: $03
	add e                                            ; $7e9d: $83
	ld [bc], a                                       ; $7e9e: $02
	add c                                            ; $7e9f: $81
	add b                                            ; $7ea0: $80
	ret nz                                           ; $7ea1: $c0

	add b                                            ; $7ea2: $80
	rst $38                                          ; $7ea3: $ff
	ret nz                                           ; $7ea4: $c0

	ld e, a                                          ; $7ea5: $5f
	ld h, b                                          ; $7ea6: $60
	cpl                                              ; $7ea7: $2f
	jr nc, jr_070_7ec1                               ; $7ea8: $30 $17

	jr jr_070_7eb7                                   ; $7eaa: $18 $0b

	inc c                                            ; $7eac: $0c
	rlca                                             ; $7ead: $07
	ld b, $03                                        ; $7eae: $06 $03
	inc bc                                           ; $7eb0: $03
	rst SubAFromDE                                          ; $7eb1: $df
	rrca                                             ; $7eb2: $0f
	add b                                            ; $7eb3: $80
	ld d, h                                          ; $7eb4: $54
	inc hl                                           ; $7eb5: $23
	ld b, h                                          ; $7eb6: $44

jr_070_7eb7:
	or e                                             ; $7eb7: $b3
	db $d3                                           ; $7eb8: $d3
	cp c                                             ; $7eb9: $b9
	sbc d                                            ; $7eba: $9a
	db $fd                                           ; $7ebb: $fd
	call c, $ee77                                    ; $7ebc: $dc $77 $ee
	cp e                                             ; $7ebf: $bb
	cp a                                             ; $7ec0: $bf

jr_070_7ec1:
	sbc c                                            ; $7ec1: $99
	ld e, [hl]                                       ; $7ec2: $5e
	call $e0e7                                       ; $7ec3: $cd $e7 $e0
	ld h, e                                          ; $7ec6: $63

jr_070_7ec7:
	nop                                              ; $7ec7: $00
	rlca                                             ; $7ec8: $07
	nop                                              ; $7ec9: $00
	rrca                                             ; $7eca: $0f
	nop                                              ; $7ecb: $00
	ld c, $01                                        ; $7ecc: $0e $01
	dec c                                            ; $7ece: $0d
	inc bc                                           ; $7ecf: $03
	rrca                                             ; $7ed0: $0f
	inc bc                                           ; $7ed1: $03
	dec b                                            ; $7ed2: $05
	call c, $9801                                    ; $7ed3: $dc $01 $98
	add b                                            ; $7ed6: $80
	ld bc, $00c0                                     ; $7ed7: $01 $c0 $00
	pop bc                                           ; $7eda: $c1
	nop                                              ; $7edb: $00
	add b                                            ; $7edc: $80
	db $f4                                           ; $7edd: $f4
	add b                                            ; $7ede: $80
	ld bc, $0300                                     ; $7edf: $01 $00 $03
	nop                                              ; $7ee2: $00
	adc a                                            ; $7ee3: $8f
	inc bc                                           ; $7ee4: $03
	rst $38                                          ; $7ee5: $ff
	call z, $1965                                    ; $7ee6: $cc $65 $19
	or b                                             ; $7ee9: $b0
	dec c                                            ; $7eea: $0d
	ld [hl], $8d                                     ; $7eeb: $36 $8d
	sbc h                                            ; $7eed: $9c
	rst JumpTable                                          ; $7eee: $c7

jr_070_7eef:
	ld e, d                                          ; $7eef: $5a
	rst SubAFromBC                                          ; $7ef0: $e7
	ld a, [hl+]                                      ; $7ef1: $2a
	rst FarCall                                          ; $7ef2: $f7
	sub c                                            ; $7ef3: $91
	rst $38                                          ; $7ef4: $ff
	jp hl                                            ; $7ef5: $e9


	rst $38                                          ; $7ef6: $ff
	cp h                                             ; $7ef7: $bc
	ld a, a                                          ; $7ef8: $7f
	rst $38                                          ; $7ef9: $ff
	dec bc                                           ; $7efa: $0b
	rst $38                                          ; $7efb: $ff
	ld bc, $891f                                     ; $7efc: $01 $1f $89
	ldh [$f7], a                                     ; $7eff: $e0 $f7
	ld hl, sp-$65                                    ; $7f01: $f8 $9b
	sbc h                                            ; $7f03: $9c
	ld c, a                                          ; $7f04: $4f
	adc $77                                          ; $7f05: $ce $77
	ld a, h                                          ; $7f07: $7c
	ld [hl], a                                       ; $7f08: $77
	ld [hl], h                                       ; $7f09: $74
	ld d, e                                          ; $7f0a: $53
	ld d, b                                          ; $7f0b: $50
	and a                                            ; $7f0c: $a7
	or b                                             ; $7f0d: $b0
	rst AddAOntoHL                                          ; $7f0e: $ef
	ldh [rIE], a                                     ; $7f0f: $e0 $ff
	nop                                              ; $7f11: $00
	rra                                              ; $7f12: $1f
	nop                                              ; $7f13: $00
	ccf                                              ; $7f14: $3f
	ld a, e                                          ; $7f15: $7b
	cp $8f                                           ; $7f16: $fe $8f
	ld a, a                                          ; $7f18: $7f
	ld bc, $037f                                     ; $7f19: $01 $7f $03
	rst $38                                          ; $7f1c: $ff
	ld b, $ff                                        ; $7f1d: $06 $ff
	inc c                                            ; $7f1f: $0c
	db $fc                                           ; $7f20: $fc
	jr nc, @-$06                                     ; $7f21: $30 $f8

	ret nz                                           ; $7f23: $c0

jr_070_7f24:
	ldh [rP1], a                                     ; $7f24: $e0 $00
	ret nz                                           ; $7f26: $c0

jr_070_7f27:
	nop                                              ; $7f27: $00
	rra                                              ; $7f28: $1f
	nop                                              ; $7f29: $00
	sbc c                                            ; $7f2a: $99
	cp a                                             ; $7f2b: $bf
	db $f4                                           ; $7f2c: $f4
	db $dd                                           ; $7f2d: $dd
	sub $b7                                          ; $7f2e: $d6 $b7
	xor [hl]                                         ; $7f30: $ae
	cpl                                              ; $7f31: $2f

jr_070_7f32:
	jr nz, jr_070_7ec7                               ; $7f32: $20 $93

	ld a, $00                                        ; $7f34: $3e $00
	ld c, [hl]                                       ; $7f36: $4e
	jr nc, jr_070_7eef                               ; $7f37: $30 $b6

	ld a, b                                          ; $7f39: $78
	ld h, d                                          ; $7f3a: $62
	db $e4                                           ; $7f3b: $e4
	db $fc                                           ; $7f3c: $fc
	db $fc                                           ; $7f3d: $fc
	ld e, h                                          ; $7f3e: $5c
	ld a, h                                          ; $7f3f: $7c
	inc bc                                           ; $7f40: $03
	jr nz, @+$35                                     ; $7f41: $20 $33

	jr nz, jr_070_7fb4                               ; $7f43: $20 $6f

	ld e, $9d                                        ; $7f45: $1e $9d
	rlca                                             ; $7f47: $07
	inc bc                                           ; $7f48: $03
	inc bc                                           ; $7f49: $03
	jr nz, jr_070_7f7f                               ; $7f4a: $20 $33

	jr nz, jr_070_7fcd                               ; $7f4c: $20 $7f

	ld [hl-], a                                      ; $7f4e: $32
	sub a                                            ; $7f4f: $97
	rrca                                             ; $7f50: $0f
	ldh a, [$f7]                                     ; $7f51: $f0 $f7
	ld hl, sp-$31                                    ; $7f53: $f8 $cf
	call z, $fe77                                    ; $7f55: $cc $77 $fe
	inc bc                                           ; $7f58: $03
	jr nz, @+$05                                     ; $7f59: $20 $03

	jr nz, jr_070_7f9c                               ; $7f5b: $20 $3f

	jr nz, jr_070_7fde                               ; $7f5d: $20 $7f

	cp $9e                                           ; $7f5f: $fe $9e
	ld a, [hl]                                       ; $7f61: $7e
	ld a, e                                          ; $7f62: $7b

Call_070_7f63:
	ld e, $7f                                        ; $7f63: $1e $7f
	cp $7f                                           ; $7f65: $fe $7f
	ld a, [$3c9b]                                    ; $7f67: $fa $9b $3c
	ld a, b                                          ; $7f6a: $78
	call c, $03fc                                    ; $7f6b: $dc $fc $03
	jr nz, jr_070_7f9b                               ; $7f6e: $20 $2b

	jr nz, jr_070_7fe9                               ; $7f70: $20 $77

	cp $9e                                           ; $7f72: $fe $9e
	dec b                                            ; $7f74: $05
	sbc $03                                          ; $7f75: $de $03
	inc bc                                           ; $7f77: $03
	jr nz, jr_070_7fad                               ; $7f78: $20 $33

	jr nz, jr_070_7feb                               ; $7f7a: $20 $6f

	cp $7f                                           ; $7f7c: $fe $7f
	inc e                                            ; $7f7e: $1c

jr_070_7f7f:
	sbc e                                            ; $7f7f: $9b

Jump_070_7f80:
	ld a, a                                          ; $7f80: $7f
	cp $57                                           ; $7f81: $fe $57
	ld d, h                                          ; $7f83: $54
	inc bc                                           ; $7f84: $03
	jr nz, jr_070_7fe2                               ; $7f85: $20 $5b

	jr nz, jr_070_7f27                               ; $7f87: $20 $9e

	db $fc                                           ; $7f89: $fc
	dec de                                           ; $7f8a: $1b
	jr nz, jr_070_7f24                               ; $7f8b: $20 $97

	ldh [c], a                                       ; $7f8d: $e2
	inc bc                                           ; $7f8e: $03
	ei                                               ; $7f8f: $fb
	ld a, c                                          ; $7f90: $79
	pop hl                                           ; $7f91: $e1
	ld hl, sp+$7c                                    ; $7f92: $f8 $7c
	add b                                            ; $7f94: $80
	ld h, a                                          ; $7f95: $67
	jr nz, jr_070_7f32                               ; $7f96: $20 $9a

Call_070_7f98:
	ld e, $00                                        ; $7f98: $1e $00
	inc e                                            ; $7f9a: $1c

jr_070_7f9b:
	nop                                              ; $7f9b: $00

jr_070_7f9c:
	inc a                                            ; $7f9c: $3c
	ld a, d                                          ; $7f9d: $7a
	ld [hl-], a                                      ; $7f9e: $32
	sbc e                                            ; $7f9f: $9b
	ld h, h                                          ; $7fa0: $64
	ld l, h                                          ; $7fa1: $6c
	ld a, l                                          ; $7fa2: $7d
	jr c, @+$05                                      ; $7fa3: $38 $03

	jr nz, @+$75                                     ; $7fa5: $20 $73

	jr nz, @-$63                                     ; $7fa7: $20 $9b

	ld e, a                                          ; $7fa9: $5f
	call $e1e6                                       ; $7faa: $cd $e6 $e1

jr_070_7fad:
	ld d, a                                          ; $7fad: $57
	jr nz, @+$81                                     ; $7fae: $20 $7f

	or $7f                                           ; $7fb0: $f6 $7f
	jr c, @+$81                                      ; $7fb2: $38 $7f

jr_070_7fb4:
	cp $9b                                           ; $7fb4: $fe $9b
	add d                                            ; $7fb6: $82
	inc bc                                           ; $7fb7: $03
	pop bc                                           ; $7fb8: $c1
	ld bc, $2003                                     ; $7fb9: $01 $03 $20

jr_070_7fbc:
	ld l, e                                          ; $7fbc: $6b
	jr nz, @-$61                                     ; $7fbd: $20 $9d

	inc a                                            ; $7fbf: $3c
	rst $38                                          ; $7fc0: $ff
	ld d, a                                          ; $7fc1: $57
	jr nz, @+$71                                     ; $7fc2: $20 $6f

	cp $9b                                           ; $7fc4: $fe $9b
	xor a                                            ; $7fc6: $af
	ld e, $ff                                        ; $7fc7: $1e $ff
	ld hl, sp+$27                                    ; $7fc9: $f8 $27
	jr nz, @-$0d                                     ; $7fcb: $20 $f1

jr_070_7fcd:
	rst SubAFromDE                                          ; $7fcd: $df
	ld bc, $dfe5                                     ; $7fce: $01 $e5 $df
	db $10                                           ; $7fd1: $10
	sbc l                                            ; $7fd2: $9d
	ldh [rAUD4LEN], a                                ; $7fd3: $e0 $20
	dec sp                                           ; $7fd5: $3b
	rlc e                                            ; $7fd6: $cb $03
	ret nz                                           ; $7fd8: $c0

	ld h, e                                          ; $7fd9: $63
	ret nz                                           ; $7fda: $c0

	sbc [hl]                                         ; $7fdb: $9e
	jr nc, jr_070_7fbc                               ; $7fdc: $30 $de

jr_070_7fde:
	ldh a, [$9d]                                     ; $7fde: $f0 $9d
	ldh [$60], a                                     ; $7fe0: $e0 $60

jr_070_7fe2:
	inc bc                                           ; $7fe2: $03
	ret nz                                           ; $7fe3: $c0

	jp hl                                            ; $7fe4: $e9


	sbc [hl]                                         ; $7fe5: $9e
	ld d, b                                          ; $7fe6: $50

Jump_070_7fe7:
	ld [hl], e                                       ; $7fe7: $73
	ret nz                                           ; $7fe8: $c0

jr_070_7fe9:
	sbc [hl]                                         ; $7fe9: $9e
	ret nz                                           ; $7fea: $c0

jr_070_7feb:
	dec de                                           ; $7feb: $1b
	cp a                                             ; $7fec: $bf
	sbc $01                                          ; $7fed: $de $01
	inc de                                           ; $7fef: $13
	ret nz                                           ; $7ff0: $c0

	sub a                                            ; $7ff1: $97
	ld hl, sp-$10                                    ; $7ff2: $f8 $f0
	ld hl, sp-$10                                    ; $7ff4: $f8 $f0
	ld a, b                                          ; $7ff6: $78
	ldh a, [$60]                                     ; $7ff7: $f0 $60
	ld [hl], b                                       ; $7ff9: $70
	ld h, a                                          ; $7ffa: $67
	cp l                                             ; $7ffb: $bd
	sbc a                                            ; $7ffc: $9f
	ld bc, $3b80                                     ; $7ffd: $01 $80 $3b
