; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $085", ROMX[$4000], BANK[$85]

	db $e4                                           ; $4000: $e4
	nop                                              ; $4001: $00
	or c                                             ; $4002: $b1
	ld bc, $07d1                                     ; $4003: $01 $d1 $07
	ret nz                                           ; $4006: $c0

	ld [hl+], a                                      ; $4007: $22
	pop de                                           ; $4008: $d1
	ret c                                            ; $4009: $d8

	db $e4                                           ; $400a: $e4
	nop                                              ; $400b: $00
	ld [bc], a                                       ; $400c: $02
	add hl, bc                                       ; $400d: $09
	sub b                                            ; $400e: $90
	pop bc                                           ; $400f: $c1
	ld l, l                                          ; $4010: $6d
	ret c                                            ; $4011: $d8

	ret nz                                           ; $4012: $c0

	ld de, $00e3                                     ; $4013: $11 $e3 $00
	ld b, d                                          ; $4016: $42
	pop hl                                           ; $4017: $e1
	ld [bc], a                                       ; $4018: $02
	ld [bc], a                                       ; $4019: $02
	db $18, $c0                                      ; $401a: $18 $c0
	ld bc, $09a0                                     ; $401c: $01 $a0 $09
	ld [bc], a                                       ; $401f: $02
	ld d, d                                          ; $4020: $52
	add d                                            ; $4021: $82
	ret nz                                           ; $4022: $c0

	dec de                                           ; $4023: $1b
	ret c                                            ; $4024: $d8

	ld [bc], a                                       ; $4025: $02
	ret nc                                           ; $4026: $d0

	pop de                                           ; $4027: $d1
	ld [hl+], a                                      ; $4028: $22
	ret nz                                           ; $4029: $c0

	ld bc, $01a0                                     ; $402a: $01 $a0 $01
	nop                                              ; $402d: $00
	dec bc                                           ; $402e: $0b
	ret nz                                           ; $402f: $c0

	ld bc, $09a0                                     ; $4030: $01 $a0 $09
	ld [bc], a                                       ; $4033: $02
	ld h, h                                          ; $4034: $64
	pop hl                                           ; $4035: $e1
	ccf                                              ; $4036: $3f
	inc b                                            ; $4037: $04
	ld [de], a                                       ; $4038: $12
	ret nz                                           ; $4039: $c0

	ld bc, $09a0                                     ; $403a: $01 $a0 $09
	ld [bc], a                                       ; $403d: $02
	ld l, e                                          ; $403e: $6b
	ldh [rP1], a                                     ; $403f: $e0 $00
	ld e, a                                          ; $4041: $5f
	ret nz                                           ; $4042: $c0

	ld bc, $09a0                                     ; $4043: $01 $a0 $09
	ld [bc], a                                       ; $4046: $02
	ld a, c                                          ; $4047: $79
	ldh [rTIMA], a                                   ; $4048: $e0 $05
	or e                                             ; $404a: $b3
	ld [bc], a                                       ; $404b: $02
	jp nc, $22d3                                     ; $404c: $d2 $d3 $22

	ret nz                                           ; $404f: $c0

	ld bc, $01a0                                     ; $4050: $01 $a0 $01
	nop                                              ; $4053: $00
	dec bc                                           ; $4054: $0b
	ret nz                                           ; $4055: $c0

	ld bc, $09a0                                     ; $4056: $01 $a0 $09
	ld [bc], a                                       ; $4059: $02
	ld a, a                                          ; $405a: $7f
	pop hl                                           ; $405b: $e1
	ccf                                              ; $405c: $3f
	inc b                                            ; $405d: $04
	ld [de], a                                       ; $405e: $12
	ret nz                                           ; $405f: $c0

	ld bc, $09a0                                     ; $4060: $01 $a0 $09
	ld [bc], a                                       ; $4063: $02
	add [hl]                                         ; $4064: $86
	ldh [rP1], a                                     ; $4065: $e0 $00
	add hl, sp                                       ; $4067: $39
	ret nz                                           ; $4068: $c0

	ld bc, $09a0                                     ; $4069: $01 $a0 $09
	ld [bc], a                                       ; $406c: $02
	adc a                                            ; $406d: $8f
	ldh [rTIMA], a                                   ; $406e: $e0 $05
	adc l                                            ; $4070: $8d
	ld bc, $25d4                                     ; $4071: $01 $d4 $25
	ret nz                                           ; $4074: $c0

	ld bc, $01a0                                     ; $4075: $01 $a0 $01
	nop                                              ; $4078: $00
	ld l, d                                          ; $4079: $6a
	ret nz                                           ; $407a: $c0

	ld bc, $09a0                                     ; $407b: $01 $a0 $09

jr_085_407e:
	ld [bc], a                                       ; $407e: $02
	sub l                                            ; $407f: $95
	pop hl                                           ; $4080: $e1
	ccf                                              ; $4081: $3f
	inc b                                            ; $4082: $04
	ld [de], a                                       ; $4083: $12
	ret nz                                           ; $4084: $c0

	ld bc, $09a0                                     ; $4085: $01 $a0 $09
	ld [bc], a                                       ; $4088: $02
	sbc b                                            ; $4089: $98
	ldh [rP1], a                                     ; $408a: $e0 $00
	inc d                                            ; $408c: $14
	ret nz                                           ; $408d: $c0

	ld bc, $09a0                                     ; $408e: $01 $a0 $09
	ld [bc], a                                       ; $4091: $02
	and [hl]                                         ; $4092: $a6
	ret nz                                           ; $4093: $c0

	ld bc, $01a0                                     ; $4094: $01 $a0 $01
	ld [bc], a                                       ; $4097: $02
	ld a, $c1                                        ; $4098: $3e $c1
	ld e, e                                          ; $409a: $5b
	push hl                                          ; $409b: $e5
	inc sp                                           ; $409c: $33
	nop                                              ; $409d: $00
	nop                                              ; $409e: $00
	ld [de], a                                       ; $409f: $12
	ret nz                                           ; $40a0: $c0

	ld bc, $01a0                                     ; $40a1: $01 $a0 $01
	ld [bc], a                                       ; $40a4: $02
	xor l                                            ; $40a5: $ad
	ret nz                                           ; $40a6: $c0

	ld bc, $09a0                                     ; $40a7: $01 $a0 $09
	ld [bc], a                                       ; $40aa: $02
	ret nz                                           ; $40ab: $c0

	ret nz                                           ; $40ac: $c0

	ld bc, $01a0                                     ; $40ad: $01 $a0 $01
	ld [bc], a                                       ; $40b0: $02
	rst JumpTable                                          ; $40b1: $c7
	add hl, bc                                       ; $40b2: $09
	add a                                            ; $40b3: $87
	ret nz                                           ; $40b4: $c0

	ld de, $00e3                                     ; $40b5: $11 $e3 $00
	ld e, h                                          ; $40b8: $5c
	pop hl                                           ; $40b9: $e1
	ld [bc], a                                       ; $40ba: $02
	ld [bc], a                                       ; $40bb: $02
	jr jr_085_407e                                   ; $40bc: $18 $c0

	ld bc, $09a0                                     ; $40be: $01 $a0 $09
	ld [bc], a                                       ; $40c1: $02
	call nc, $c082                                   ; $40c2: $d4 $82 $c0
	dec de                                           ; $40c5: $1b
	ret c                                            ; $40c6: $d8

	ld [bc], a                                       ; $40c7: $02
	ret nc                                           ; $40c8: $d0

	pop de                                           ; $40c9: $d1
	ld e, $c0                                        ; $40ca: $1e $c0
	ld bc, $01a0                                     ; $40cc: $01 $a0 $01
	nop                                              ; $40cf: $00
	dec bc                                           ; $40d0: $0b
	ldh [rP1], a                                     ; $40d1: $e0 $00
	ld l, c                                          ; $40d3: $69
	ret nz                                           ; $40d4: $c0

	ld bc, $09a0                                     ; $40d5: $01 $a0 $09
	ld [bc], a                                       ; $40d8: $02
	jp c, $01c0                                      ; $40d9: $da $c0 $01

	and b                                            ; $40dc: $a0
	ld bc, $e702                                     ; $40dd: $01 $02 $e7
	ret nz                                           ; $40e0: $c0

	ld bc, $09a0                                     ; $40e1: $01 $a0 $09
	ld [bc], a                                       ; $40e4: $02
	ldh a, [$e0]                                     ; $40e5: $f0 $e0
	dec b                                            ; $40e7: $05
	dec d                                            ; $40e8: $15
	ld [bc], a                                       ; $40e9: $02
	jp nc, $24d3                                     ; $40ea: $d2 $d3 $24

	ret nz                                           ; $40ed: $c0

	ld bc, $01a0                                     ; $40ee: $01 $a0 $01
	nop                                              ; $40f1: $00
	dec bc                                           ; $40f2: $0b
	ldh [rP1], a                                     ; $40f3: $e0 $00
	ld b, a                                          ; $40f5: $47
	ret nz                                           ; $40f6: $c0

	ld bc, $01a0                                     ; $40f7: $01 $a0 $01
	ld [bc], a                                       ; $40fa: $02
	cp $c0                                           ; $40fb: $fe $c0
	ld bc, $09a0                                     ; $40fd: $01 $a0 $09
	inc bc                                           ; $4100: $03
	ld [bc], a                                       ; $4101: $02
	ret nz                                           ; $4102: $c0

	ld bc, $01a0                                     ; $4103: $01 $a0 $01
	inc bc                                           ; $4106: $03
	dec c                                            ; $4107: $0d
	ret nz                                           ; $4108: $c0

	ld bc, $09a0                                     ; $4109: $01 $a0 $09
	inc bc                                           ; $410c: $03
	inc d                                            ; $410d: $14
	ldh [rDIV], a                                    ; $410e: $e0 $04

jr_085_4110:
	db $ed                                           ; $4110: $ed
	ld bc, $21d4                                     ; $4111: $01 $d4 $21
	ret nz                                           ; $4114: $c0

	ld bc, $01a0                                     ; $4115: $01 $a0 $01
	nop                                              ; $4118: $00
	ld l, d                                          ; $4119: $6a
	ldh [rP1], a                                     ; $411a: $e0 $00
	jr nz, @-$3e                                     ; $411c: $20 $c0

	ld bc, $09a0                                     ; $411e: $01 $a0 $09
	inc bc                                           ; $4121: $03
	inc e                                            ; $4122: $1c
	ret nz                                           ; $4123: $c0

	ld bc, $01a0                                     ; $4124: $01 $a0 $01
	inc bc                                           ; $4127: $03
	ld a, [hl+]                                      ; $4128: $2a
	ret nz                                           ; $4129: $c0

	ld bc, $09a0                                     ; $412a: $01 $a0 $09
	inc bc                                           ; $412d: $03
	jr c, @-$3e                                      ; $412e: $38 $c0

	ld bc, $01a0                                     ; $4130: $01 $a0 $01
	inc bc                                           ; $4133: $03
	dec sp                                           ; $4134: $3b
	pop bc                                           ; $4135: $c1
	ld e, e                                          ; $4136: $5b
	push hl                                          ; $4137: $e5
	inc sp                                           ; $4138: $33
	nop                                              ; $4139: $00
	nop                                              ; $413a: $00
	ld [$32e1], sp                                   ; $413b: $08 $e1 $32
	nop                                              ; $413e: $00
	ld e, l                                          ; $413f: $5d
	pop hl                                           ; $4140: $e1
	ld [bc], a                                       ; $4141: $02
	ld [bc], a                                       ; $4142: $02
	jr jr_085_414e                                   ; $4143: $18 $09

	xor e                                            ; $4145: $ab
	ret nz                                           ; $4146: $c0

	ld de, $00e3                                     ; $4147: $11 $e3 $00
	ld e, h                                          ; $414a: $5c
	pop hl                                           ; $414b: $e1
	ld [bc], a                                       ; $414c: $02
	ld [bc], a                                       ; $414d: $02

jr_085_414e:
	jr jr_085_4110                                   ; $414e: $18 $c0

	ld bc, $09a0                                     ; $4150: $01 $a0 $09
	ld [bc], a                                       ; $4153: $02
	call nc, $c082                                   ; $4154: $d4 $82 $c0
	dec de                                           ; $4157: $1b
	ret c                                            ; $4158: $d8

	ld [bc], a                                       ; $4159: $02
	ret nc                                           ; $415a: $d0

	pop de                                           ; $415b: $d1
	inc sp                                           ; $415c: $33
	ret nz                                           ; $415d: $c0

	ld bc, $01a0                                     ; $415e: $01 $a0 $01
	nop                                              ; $4161: $00
	dec bc                                           ; $4162: $0b
	ldh [rP1], a                                     ; $4163: $e0 $00
	adc l                                            ; $4165: $8d
	ret nz                                           ; $4166: $c0

	ld bc, $09a0                                     ; $4167: $01 $a0 $09
	inc bc                                           ; $416a: $03
	ld b, c                                          ; $416b: $41
	ret nz                                           ; $416c: $c0

	ld bc, $01a0                                     ; $416d: $01 $a0 $01
	inc bc                                           ; $4170: $03
	ld c, h                                          ; $4171: $4c
	ret nz                                           ; $4172: $c0

	ld bc, $09a0                                     ; $4173: $01 $a0 $09
	inc bc                                           ; $4176: $03
	ld d, b                                          ; $4177: $50
	ret nz                                           ; $4178: $c0

	ld bc, $01a0                                     ; $4179: $01 $a0 $01
	inc bc                                           ; $417c: $03
	ld e, b                                          ; $417d: $58
	ret nz                                           ; $417e: $c0

	ld bc, $09a0                                     ; $417f: $01 $a0 $09
	inc bc                                           ; $4182: $03
	ld h, [hl]                                       ; $4183: $66
	ret nz                                           ; $4184: $c0

	ld bc, $01a0                                     ; $4185: $01 $a0 $01
	inc bc                                           ; $4188: $03
	ld l, [hl]                                       ; $4189: $6e
	ret nz                                           ; $418a: $c0

	ld bc, $09a0                                     ; $418b: $01 $a0 $09
	inc bc                                           ; $418e: $03
	ld [hl], l                                       ; $418f: $75
	ld [bc], a                                       ; $4190: $02
	jp nc, $33d3                                     ; $4191: $d2 $d3 $33

jr_085_4194:
	ret nz                                           ; $4194: $c0

	ld bc, $01a0                                     ; $4195: $01 $a0 $01
	nop                                              ; $4198: $00
	dec bc                                           ; $4199: $0b
	ldh [rP1], a                                     ; $419a: $e0 $00
	ld d, [hl]                                       ; $419c: $56
	ret nz                                           ; $419d: $c0

	ld bc, $09a0                                     ; $419e: $01 $a0 $09
	inc bc                                           ; $41a1: $03
	ld a, e                                          ; $41a2: $7b
	ret nz                                           ; $41a3: $c0

	ld bc, $01a0                                     ; $41a4: $01 $a0 $01
	inc bc                                           ; $41a7: $03
	ld c, h                                          ; $41a8: $4c
	ret nz                                           ; $41a9: $c0

	ld bc, $09a0                                     ; $41aa: $01 $a0 $09
	inc bc                                           ; $41ad: $03
	add [hl]                                         ; $41ae: $86
	ret nz                                           ; $41af: $c0

	ld bc, $01a0                                     ; $41b0: $01 $a0 $01
	inc bc                                           ; $41b3: $03
	ld e, b                                          ; $41b4: $58
	ret nz                                           ; $41b5: $c0

	ld bc, $09a0                                     ; $41b6: $01 $a0 $09
	inc bc                                           ; $41b9: $03
	ld h, [hl]                                       ; $41ba: $66
	ret nz                                           ; $41bb: $c0

	ld bc, $01a0                                     ; $41bc: $01 $a0 $01
	inc bc                                           ; $41bf: $03
	ld l, [hl]                                       ; $41c0: $6e
	ret nz                                           ; $41c1: $c0

	ld bc, $09a0                                     ; $41c2: $01 $a0 $09
	inc bc                                           ; $41c5: $03
	ld [hl], l                                       ; $41c6: $75
	ld bc, $21d4                                     ; $41c7: $01 $d4 $21
	ret nz                                           ; $41ca: $c0

	ld bc, $01a0                                     ; $41cb: $01 $a0 $01
	nop                                              ; $41ce: $00
	ld l, d                                          ; $41cf: $6a
	ldh [rP1], a                                     ; $41d0: $e0 $00
	jr nz, jr_085_4194                               ; $41d2: $20 $c0

	ld bc, $09a0                                     ; $41d4: $01 $a0 $09
	inc bc                                           ; $41d7: $03
	adc [hl]                                         ; $41d8: $8e
	ret nz                                           ; $41d9: $c0

	ld bc, $01a0                                     ; $41da: $01 $a0 $01
	inc bc                                           ; $41dd: $03
	sub [hl]                                         ; $41de: $96
	ret nz                                           ; $41df: $c0

	ld bc, $09a0                                     ; $41e0: $01 $a0 $09
	inc bc                                           ; $41e3: $03
	jr c, @-$3e                                      ; $41e4: $38 $c0

	ld bc, $01a0                                     ; $41e6: $01 $a0 $01
	ld [bc], a                                       ; $41e9: $02
	ld a, $c1                                        ; $41ea: $3e $c1
	ld e, e                                          ; $41ec: $5b
	push hl                                          ; $41ed: $e5
	inc sp                                           ; $41ee: $33
	nop                                              ; $41ef: $00
	nop                                              ; $41f0: $00
	ld [$32e1], sp                                   ; $41f1: $08 $e1 $32
	nop                                              ; $41f4: $00
	xor a                                            ; $41f5: $af
	pop hl                                           ; $41f6: $e1
	ld [bc], a                                       ; $41f7: $02
	ld [bc], a                                       ; $41f8: $02
	jr @+$0b                                         ; $41f9: $18 $09

	add hl, de                                       ; $41fb: $19
	add d                                            ; $41fc: $82
	ret nz                                           ; $41fd: $c0

	add b                                            ; $41fe: $80
	ld bc, $03d3                                     ; $41ff: $01 $d3 $03
	db $e4                                           ; $4202: $e4
	ld bc, $017e                                     ; $4203: $01 $7e $01
	jp nc, $e403                                     ; $4206: $d2 $03 $e4

	nop                                              ; $4209: $00
	cp b                                             ; $420a: $b8
	ld bc, $07d1                                     ; $420b: $01 $d1 $07
	ret nz                                           ; $420e: $c0

	ld [hl+], a                                      ; $420f: $22
	pop de                                           ; $4210: $d1
	ret c                                            ; $4211: $d8

	db $e4                                           ; $4212: $e4
	nop                                              ; $4213: $00
	ld [bc], a                                       ; $4214: $02
	add hl, bc                                       ; $4215: $09
	sbc a                                            ; $4216: $9f
	ret nz                                           ; $4217: $c0

	ld de, $00e3                                     ; $4218: $11 $e3 $00
	ld e, c                                          ; $421b: $59
	pop hl                                           ; $421c: $e1
	ld [bc], a                                       ; $421d: $02
	ld [bc], a                                       ; $421e: $02
	jr @-$3e                                         ; $421f: $18 $c0

	ld bc, $09a0                                     ; $4221: $01 $a0 $09
	inc bc                                           ; $4224: $03
	sbc h                                            ; $4225: $9c
	add d                                            ; $4226: $82
	ret nz                                           ; $4227: $c0

	dec de                                           ; $4228: $1b
	ret c                                            ; $4229: $d8

	ld [bc], a                                       ; $422a: $02
	ret nc                                           ; $422b: $d0

	pop de                                           ; $422c: $d1
	ld a, [hl+]                                      ; $422d: $2a
	ret nz                                           ; $422e: $c0

	ld bc, $01a0                                     ; $422f: $01 $a0 $01
	inc bc                                           ; $4232: $03
	and l                                            ; $4233: $a5
	ret nz                                           ; $4234: $c0

	ld bc, $09a0                                     ; $4235: $01 $a0 $09
	inc bc                                           ; $4238: $03
	or d                                             ; $4239: $b2
	ldh [rP1], a                                     ; $423a: $e0 $00
	ld a, e                                          ; $423c: $7b
	ret nz                                           ; $423d: $c0

	ld bc, $01a0                                     ; $423e: $01 $a0 $01
	inc bc                                           ; $4241: $03
	or [hl]                                          ; $4242: $b6
	ret nz                                           ; $4243: $c0

	ld bc, $09a0                                     ; $4244: $01 $a0 $09
	inc bc                                           ; $4247: $03
	cp c                                             ; $4248: $b9
	ret nz                                           ; $4249: $c0

	ld bc, $01a0                                     ; $424a: $01 $a0 $01
	inc bc                                           ; $424d: $03
	push bc                                          ; $424e: $c5
	ret nz                                           ; $424f: $c0

	ld bc, $09a0                                     ; $4250: $01 $a0 $09
	inc bc                                           ; $4253: $03
	call $03e0                                       ; $4254: $cd $e0 $03
	and [hl]                                         ; $4257: $a6
	ld [bc], a                                       ; $4258: $02

jr_085_4259:
	jp nc, $2ad3                                     ; $4259: $d2 $d3 $2a

	ret nz                                           ; $425c: $c0

	ld bc, $01a0                                     ; $425d: $01 $a0 $01
	inc bc                                           ; $4260: $03
	and l                                            ; $4261: $a5
	ret nz                                           ; $4262: $c0

	ld bc, $09a0                                     ; $4263: $01 $a0 $09
	inc bc                                           ; $4266: $03
	or d                                             ; $4267: $b2
	ldh [rP1], a                                     ; $4268: $e0 $00
	ld c, l                                          ; $426a: $4d
	ret nz                                           ; $426b: $c0

	ld bc, $01a0                                     ; $426c: $01 $a0 $01
	inc bc                                           ; $426f: $03
	or [hl]                                          ; $4270: $b6
	ret nz                                           ; $4271: $c0

	ld bc, $09a0                                     ; $4272: $01 $a0 $09
	inc bc                                           ; $4275: $03
	push de                                          ; $4276: $d5
	ret nz                                           ; $4277: $c0

	ld bc, $01a0                                     ; $4278: $01 $a0 $01
	inc bc                                           ; $427b: $03
	push bc                                          ; $427c: $c5
	ret nz                                           ; $427d: $c0

	ld bc, $09a0                                     ; $427e: $01 $a0 $09
	inc bc                                           ; $4281: $03
	add [hl]                                         ; $4282: $86
	ldh [$03], a                                     ; $4283: $e0 $03
	ld a, b                                          ; $4285: $78
	ld bc, $27d4                                     ; $4286: $01 $d4 $27
	ret nz                                           ; $4289: $c0

	ld bc, $01a0                                     ; $428a: $01 $a0 $01

jr_085_428d:
	nop                                              ; $428d: $00
	ld l, d                                          ; $428e: $6a
	ret nz                                           ; $428f: $c0

	ld bc, $09a0                                     ; $4290: $01 $a0 $09
	inc bc                                           ; $4293: $03
	db $e4                                           ; $4294: $e4
	ldh [rP1], a                                     ; $4295: $e0 $00
	jr nz, jr_085_4259                               ; $4297: $20 $c0

	ld bc, $09a0                                     ; $4299: $01 $a0 $09
	inc bc                                           ; $429c: $03
	ld [$01c0], a                                    ; $429d: $ea $c0 $01
	and b                                            ; $42a0: $a0
	ld bc, $c503                                     ; $42a1: $01 $03 $c5
	ret nz                                           ; $42a4: $c0

	ld bc, $09a0                                     ; $42a5: $01 $a0 $09
	inc bc                                           ; $42a8: $03
	ld sp, hl                                        ; $42a9: $f9
	ret nz                                           ; $42aa: $c0

	ld bc, $01a0                                     ; $42ab: $01 $a0 $01
	ld [bc], a                                       ; $42ae: $02
	ld a, $c1                                        ; $42af: $3e $c1
	ld e, e                                          ; $42b1: $5b
	push hl                                          ; $42b2: $e5
	inc sp                                           ; $42b3: $33
	nop                                              ; $42b4: $00
	nop                                              ; $42b5: $00
	ld a, [bc]                                       ; $42b6: $0a
	ret nz                                           ; $42b7: $c0

	or e                                             ; $42b8: $b3
	ret nz                                           ; $42b9: $c0

	inc c                                            ; $42ba: $0c
	ldh [$50], a                                     ; $42bb: $e0 $50
	pop hl                                           ; $42bd: $e1
	ld [bc], a                                       ; $42be: $02
	ld [bc], a                                       ; $42bf: $02
	db $10                                           ; $42c0: $10
	add hl, bc                                       ; $42c1: $09
	cp [hl]                                          ; $42c2: $be
	ret nz                                           ; $42c3: $c0

	ld de, $00e3                                     ; $42c4: $11 $e3 $00
	ld e, d                                          ; $42c7: $5a
	pop hl                                           ; $42c8: $e1
	ld [bc], a                                       ; $42c9: $02
	ld [bc], a                                       ; $42ca: $02
	jr jr_085_428d                                   ; $42cb: $18 $c0

	ld bc, $09a0                                     ; $42cd: $01 $a0 $09
	inc b                                            ; $42d0: $04
	ld bc, $01c0                                     ; $42d1: $01 $c0 $01
	and b                                            ; $42d4: $a0
	ld bc, $0504                                     ; $42d5: $01 $04 $05
	add d                                            ; $42d8: $82
	ret nz                                           ; $42d9: $c0

	dec de                                           ; $42da: $1b
	ret c                                            ; $42db: $d8

	ld [bc], a                                       ; $42dc: $02
	ret nc                                           ; $42dd: $d0

	pop de                                           ; $42de: $d1
	ld [hl-], a                                      ; $42df: $32
	ret nz                                           ; $42e0: $c0

	ld bc, $09a0                                     ; $42e1: $01 $a0 $09
	inc b                                            ; $42e4: $04
	dec bc                                           ; $42e5: $0b
	ret nz                                           ; $42e6: $c0

	ld bc, $01a0                                     ; $42e7: $01 $a0 $01
	inc b                                            ; $42ea: $04
	inc de                                           ; $42eb: $13
	ret nz                                           ; $42ec: $c0

	ld bc, $09a0                                     ; $42ed: $01 $a0 $09
	inc b                                            ; $42f0: $04
	dec de                                           ; $42f1: $1b
	ret nz                                           ; $42f2: $c0

	ld bc, $01a0                                     ; $42f3: $01 $a0 $01
	inc b                                            ; $42f6: $04
	rra                                              ; $42f7: $1f
	ret nz                                           ; $42f8: $c0

	ld bc, $09a0                                     ; $42f9: $01 $a0 $09
	inc b                                            ; $42fc: $04
	ld h, $c0                                        ; $42fd: $26 $c0
	ld bc, $01a0                                     ; $42ff: $01 $a0 $01
	inc b                                            ; $4302: $04
	ld [hl], $c0                                     ; $4303: $36 $c0
	ld bc, $09a0                                     ; $4305: $01 $a0 $09
	inc b                                            ; $4308: $04
	ccf                                              ; $4309: $3f
	pop bc                                           ; $430a: $c1
	ld e, e                                          ; $430b: $5b
	ret nz                                           ; $430c: $c0

	ld bc, $01a0                                     ; $430d: $01 $a0 $01
	inc b                                            ; $4310: $04
	ld c, c                                          ; $4311: $49
	ld [bc], a                                       ; $4312: $02
	jp nc, $3ed3                                     ; $4313: $d2 $d3 $3e

	ret nz                                           ; $4316: $c0

	ld bc, $09a0                                     ; $4317: $01 $a0 $09
	inc b                                            ; $431a: $04
	ld d, l                                          ; $431b: $55
	ret nz                                           ; $431c: $c0

	ld bc, $01a0                                     ; $431d: $01 $a0 $01
	inc b                                            ; $4320: $04
	ld e, e                                          ; $4321: $5b
	ret nz                                           ; $4322: $c0

	ld bc, $09a0                                     ; $4323: $01 $a0 $09
	inc b                                            ; $4326: $04
	ld h, a                                          ; $4327: $67
	ret nz                                           ; $4328: $c0

	ld bc, $01a0                                     ; $4329: $01 $a0 $01
	inc b                                            ; $432c: $04
	ld l, [hl]                                       ; $432d: $6e
	ret nz                                           ; $432e: $c0

	ld bc, $09a0                                     ; $432f: $01 $a0 $09
	inc b                                            ; $4332: $04
	halt                                             ; $4333: $76
	ret nz                                           ; $4334: $c0

	ld bc, $01a0                                     ; $4335: $01 $a0 $01
	inc b                                            ; $4338: $04
	add a                                            ; $4339: $87
	ret nz                                           ; $433a: $c0

	ld bc, $09a0                                     ; $433b: $01 $a0 $09
	inc b                                            ; $433e: $04
	sub d                                            ; $433f: $92
	ret nz                                           ; $4340: $c0

	ld bc, $01a0                                     ; $4341: $01 $a0 $01
	inc b                                            ; $4344: $04
	sbc e                                            ; $4345: $9b
	ret nz                                           ; $4346: $c0

	ld bc, $09a0                                     ; $4347: $01 $a0 $09
	inc b                                            ; $434a: $04
	and h                                            ; $434b: $a4
	pop bc                                           ; $434c: $c1

jr_085_434d:
	ld e, e                                          ; $434d: $5b
	ret nz                                           ; $434e: $c0

	ld bc, $01a0                                     ; $434f: $01 $a0 $01
	inc b                                            ; $4352: $04
	xor e                                            ; $4353: $ab
	ld bc, $26d4                                     ; $4354: $01 $d4 $26
	ret nz                                           ; $4357: $c0

	ld bc, $09a0                                     ; $4358: $01 $a0 $09
	inc b                                            ; $435b: $04
	or [hl]                                          ; $435c: $b6
	ret nz                                           ; $435d: $c0

	ld bc, $01a0                                     ; $435e: $01 $a0 $01
	inc b                                            ; $4361: $04
	or a                                             ; $4362: $b7
	ret nz                                           ; $4363: $c0

	ld bc, $09a0                                     ; $4364: $01 $a0 $09
	inc b                                            ; $4367: $04
	add $c0                                          ; $4368: $c6 $c0
	ld bc, $01a0                                     ; $436a: $01 $a0 $01
	inc b                                            ; $436d: $04
	call $01c0                                       ; $436e: $cd $c0 $01
	and b                                            ; $4371: $a0
	add hl, bc                                       ; $4372: $09
	inc b                                            ; $4373: $04
	sub $c1                                          ; $4374: $d6 $c1
	ld e, e                                          ; $4376: $5b
	ret nz                                           ; $4377: $c0

	ld bc, $01a0                                     ; $4378: $01 $a0 $01
	inc b                                            ; $437b: $04
	rst SubAFromDE                                          ; $437c: $df
	push hl                                          ; $437d: $e5
	inc sp                                           ; $437e: $33
	nop                                              ; $437f: $00
	nop                                              ; $4380: $00
	add hl, bc                                       ; $4381: $09
	adc l                                            ; $4382: $8d
	ret nz                                           ; $4383: $c0

	ld de, $00e3                                     ; $4384: $11 $e3 $00
	ld e, b                                          ; $4387: $58
	pop hl                                           ; $4388: $e1
	ld [bc], a                                       ; $4389: $02
	ld [bc], a                                       ; $438a: $02
	jr jr_085_434d                                   ; $438b: $18 $c0

	ld bc, $09a0                                     ; $438d: $01 $a0 $09
	inc b                                            ; $4390: $04
	db $eb                                           ; $4391: $eb
	add d                                            ; $4392: $82
	ret nz                                           ; $4393: $c0

	dec de                                           ; $4394: $1b
	ret c                                            ; $4395: $d8

	ld [bc], a                                       ; $4396: $02
	ret nc                                           ; $4397: $d0

	pop de                                           ; $4398: $d1
	dec l                                            ; $4399: $2d
	ret nz                                           ; $439a: $c0

	ld bc, $01a0                                     ; $439b: $01 $a0 $01
	nop                                              ; $439e: $00
	dec bc                                           ; $439f: $0b
	ret nz                                           ; $43a0: $c0

	ld bc, $09a0                                     ; $43a1: $01 $a0 $09
	nop                                              ; $43a4: $00
	inc d                                            ; $43a5: $14
	ret nz                                           ; $43a6: $c0

	ld bc, $01a0                                     ; $43a7: $01 $a0 $01
	nop                                              ; $43aa: $00
	and c                                            ; $43ab: $a1
	ret nz                                           ; $43ac: $c0

	ld bc, $09a0                                     ; $43ad: $01 $a0 $09
	nop                                              ; $43b0: $00
	ld hl, $01c0                                     ; $43b1: $21 $c0 $01
	and b                                            ; $43b4: $a0
	ld bc, $f204                                     ; $43b5: $01 $04 $f2
	ret nz                                           ; $43b8: $c0

	ld bc, $09a0                                     ; $43b9: $01 $a0 $09
	inc b                                            ; $43bc: $04
	ld hl, sp-$40                                    ; $43bd: $f8 $c0
	ld bc, $01a0                                     ; $43bf: $01 $a0 $01
	dec b                                            ; $43c2: $05
	ld [bc], a                                       ; $43c3: $02

jr_085_43c4:
	ldh [$fa], a                                     ; $43c4: $e0 $fa
	ret nc                                           ; $43c6: $d0

	ld [bc], a                                       ; $43c7: $02
	jp nc, $1bd3                                     ; $43c8: $d2 $d3 $1b

	ret nz                                           ; $43cb: $c0

	ld bc, $01a0                                     ; $43cc: $01 $a0 $01
	nop                                              ; $43cf: $00
	dec bc                                           ; $43d0: $0b
	ret nz                                           ; $43d1: $c0

	ld bc, $09a0                                     ; $43d2: $01 $a0 $09
	nop                                              ; $43d5: $00
	add $c0                                          ; $43d6: $c6 $c0
	ld bc, $01a0                                     ; $43d8: $01 $a0 $01
	dec b                                            ; $43db: $05

jr_085_43dc:
	inc c                                            ; $43dc: $0c
	ret nz                                           ; $43dd: $c0

	ld bc, $09a0                                     ; $43de: $01 $a0 $09
	dec b                                            ; $43e1: $05
	jr jr_085_43c4                                   ; $43e2: $18 $e0

	ld a, [$01e4]                                    ; $43e4: $fa $e4 $01
	call nc, $c021                                   ; $43e7: $d4 $21 $c0
	ld bc, $01a0                                     ; $43ea: $01 $a0 $01
	nop                                              ; $43ed: $00
	dec bc                                           ; $43ee: $0b
	ret nz                                           ; $43ef: $c0

	ld bc, $09a0                                     ; $43f0: $01 $a0 $09
	dec b                                            ; $43f3: $05
	ld [hl+], a                                      ; $43f4: $22
	ret nz                                           ; $43f5: $c0

	ld bc, $01a0                                     ; $43f6: $01 $a0 $01
	dec b                                            ; $43f9: $05
	inc l                                            ; $43fa: $2c
	ret nz                                           ; $43fb: $c0

	ld bc, $09a0                                     ; $43fc: $01 $a0 $09
	dec b                                            ; $43ff: $05
	scf                                              ; $4400: $37
	ret nz                                           ; $4401: $c0

	ld bc, $01a0                                     ; $4402: $01 $a0 $01
	dec b                                            ; $4405: $05
	ld b, h                                          ; $4406: $44
	ldh [$fb], a                                     ; $4407: $e0 $fb
	dec b                                            ; $4409: $05
	pop bc                                           ; $440a: $c1
	ld e, e                                          ; $440b: $5b
	push hl                                          ; $440c: $e5
	inc sp                                           ; $440d: $33
	nop                                              ; $440e: $00
	nop                                              ; $440f: $00
	add hl, bc                                       ; $4410: $09
	inc l                                            ; $4411: $2c
	ret nz                                           ; $4412: $c0

	ld de, $00e3                                     ; $4413: $11 $e3 $00
	ld e, e                                          ; $4416: $5b
	pop hl                                           ; $4417: $e1
	ld [bc], a                                       ; $4418: $02
	ld [bc], a                                       ; $4419: $02
	jr jr_085_43dc                                   ; $441a: $18 $c0

	ld bc, $09a0                                     ; $441c: $01 $a0 $09
	dec b                                            ; $441f: $05
	ld c, a                                          ; $4420: $4f
	add d                                            ; $4421: $82
	ret nz                                           ; $4422: $c0

	add b                                            ; $4423: $80
	ld bc, $07d3                                     ; $4424: $01 $d3 $07
	ret nz                                           ; $4427: $c0

	ld [hl+], a                                      ; $4428: $22
	pop de                                           ; $4429: $d1
	ret c                                            ; $442a: $d8

	db $e4                                           ; $442b: $e4
	ld bc, $0118                                     ; $442c: $01 $18 $01
	jp nc, $e403                                     ; $442f: $d2 $03 $e4

	nop                                              ; $4432: $00
	and c                                            ; $4433: $a1
	ld bc, $07d1                                     ; $4434: $01 $d1 $07
	ret nz                                           ; $4437: $c0

	ld [hl+], a                                      ; $4438: $22
	pop de                                           ; $4439: $d1
	ret c                                            ; $443a: $d8

	db $e4                                           ; $443b: $e4
	nop                                              ; $443c: $00
	ld [bc], a                                       ; $443d: $02
	add hl, bc                                       ; $443e: $09
	sub e                                            ; $443f: $93
	add d                                            ; $4440: $82
	ret nz                                           ; $4441: $c0

	dec de                                           ; $4442: $1b
	ret c                                            ; $4443: $d8

	ld [bc], a                                       ; $4444: $02
	ret nc                                           ; $4445: $d0

	pop de                                           ; $4446: $d1
	ld a, [hl+]                                      ; $4447: $2a
	ret nz                                           ; $4448: $c0

	ld bc, $01a0                                     ; $4449: $01 $a0 $01
	nop                                              ; $444c: $00
	dec bc                                           ; $444d: $0b
	ldh [rSB], a                                     ; $444e: $e0 $01
	ld [hl], d                                       ; $4450: $72
	ret nz                                           ; $4451: $c0

	ld bc, $09a0                                     ; $4452: $01 $a0 $09
	dec b                                            ; $4455: $05
	ld d, e                                          ; $4456: $53
	ret nz                                           ; $4457: $c0

	ld bc, $01a0                                     ; $4458: $01 $a0 $01
	dec b                                            ; $445b: $05
	ld e, d                                          ; $445c: $5a
	ret nz                                           ; $445d: $c0

	ld bc, $09a0                                     ; $445e: $01 $a0 $09
	dec b                                            ; $4461: $05
	ld h, c                                          ; $4462: $61
	ret nz                                           ; $4463: $c0

	ld bc, $01a0                                     ; $4464: $01 $a0 $01
	dec b                                            ; $4467: $05
	ld l, c                                          ; $4468: $69
	ret nz                                           ; $4469: $c0

	ld bc, $09a0                                     ; $446a: $01 $a0 $09
	dec b                                            ; $446d: $05
	ld l, [hl]                                       ; $446e: $6e
	ldh [rSB], a                                     ; $446f: $e0 $01
	ld e, d                                          ; $4471: $5a
	ld [bc], a                                       ; $4472: $02
	jp nc, $2ad3                                     ; $4473: $d2 $d3 $2a

	ret nz                                           ; $4476: $c0

	ld bc, $01a0                                     ; $4477: $01 $a0 $01
	nop                                              ; $447a: $00
	dec bc                                           ; $447b: $0b
	ldh [rSB], a                                     ; $447c: $e0 $01
	ld b, h                                          ; $447e: $44
	ret nz                                           ; $447f: $c0

	ld bc, $09a0                                     ; $4480: $01 $a0 $09
	dec b                                            ; $4483: $05
	ld [hl], h                                       ; $4484: $74
	ret nz                                           ; $4485: $c0

	ld bc, $01a0                                     ; $4486: $01 $a0 $01
	dec b                                            ; $4489: $05
	ld a, c                                          ; $448a: $79
	ret nz                                           ; $448b: $c0

	ld bc, $09a0                                     ; $448c: $01 $a0 $09
	dec b                                            ; $448f: $05
	add b                                            ; $4490: $80
	ret nz                                           ; $4491: $c0

	ld bc, $01a0                                     ; $4492: $01 $a0 $01
	dec b                                            ; $4495: $05
	adc a                                            ; $4496: $8f
	ret nz                                           ; $4497: $c0

	ld bc, $09a0                                     ; $4498: $01 $a0 $09
	dec b                                            ; $449b: $05
	sub l                                            ; $449c: $95
	ldh [rSB], a                                     ; $449d: $e0 $01
	inc l                                            ; $449f: $2c
	ld bc, _EnterNamesAndDates                                     ; $44a0: $01 $d4 $2a
	ret nz                                           ; $44a3: $c0

	ld bc, $01a0                                     ; $44a4: $01 $a0 $01
	nop                                              ; $44a7: $00
	ld l, d                                          ; $44a8: $6a
	ldh [rSB], a                                     ; $44a9: $e0 $01
	rla                                              ; $44ab: $17
	ret nz                                           ; $44ac: $c0

	ld bc, $09a0                                     ; $44ad: $01 $a0 $09
	dec b                                            ; $44b0: $05
	sbc e                                            ; $44b1: $9b
	ret nz                                           ; $44b2: $c0

	ld bc, $01a0                                     ; $44b3: $01 $a0 $01
	dec b                                            ; $44b6: $05
	and c                                            ; $44b7: $a1
	ret nz                                           ; $44b8: $c0

	ld bc, $09a0                                     ; $44b9: $01 $a0 $09
	dec b                                            ; $44bc: $05
	xor b                                            ; $44bd: $a8
	ret nz                                           ; $44be: $c0

	ld bc, $01a0                                     ; $44bf: $01 $a0 $01
	dec b                                            ; $44c2: $05
	xor a                                            ; $44c3: $af
	ret nz                                           ; $44c4: $c0

	ld bc, $09a0                                     ; $44c5: $01 $a0 $09
	dec b                                            ; $44c8: $05
	or l                                             ; $44c9: $b5
	ldh [rSB], a                                     ; $44ca: $e0 $01
	ld e, $c1                                        ; $44cc: $1e $c1
	ld e, e                                          ; $44ce: $5b
	push hl                                          ; $44cf: $e5
	inc sp                                           ; $44d0: $33
	nop                                              ; $44d1: $00
	nop                                              ; $44d2: $00
	add hl, bc                                       ; $44d3: $09
	ld l, a                                          ; $44d4: $6f
	add d                                            ; $44d5: $82
	ret nz                                           ; $44d6: $c0

	dec de                                           ; $44d7: $1b
	ret c                                            ; $44d8: $d8

	ld [bc], a                                       ; $44d9: $02
	ret nc                                           ; $44da: $d0

	pop de                                           ; $44db: $d1
	ld e, $c0                                        ; $44dc: $1e $c0
	ld bc, $01a0                                     ; $44de: $01 $a0 $01
	nop                                              ; $44e1: $00
	dec bc                                           ; $44e2: $0b
	ldh [rP1], a                                     ; $44e3: $e0 $00
	db $dd                                           ; $44e5: $dd
	ret nz                                           ; $44e6: $c0

	ld bc, $09a0                                     ; $44e7: $01 $a0 $09
	dec b                                            ; $44ea: $05
	cp d                                             ; $44eb: $ba
	ret nz                                           ; $44ec: $c0

	ld bc, $01a0                                     ; $44ed: $01 $a0 $01
	dec b                                            ; $44f0: $05
	add $c0                                          ; $44f1: $c6 $c0
	ld bc, $09a0                                     ; $44f3: $01 $a0 $09
	dec b                                            ; $44f6: $05
	ret nc                                           ; $44f7: $d0

	ldh [rP1], a                                     ; $44f8: $e0 $00
	pop de                                           ; $44fa: $d1
	ld [bc], a                                       ; $44fb: $02
	jp nc, $1ed3                                     ; $44fc: $d2 $d3 $1e

	ret nz                                           ; $44ff: $c0

	ld bc, $01a0                                     ; $4500: $01 $a0 $01
	nop                                              ; $4503: $00
	dec bc                                           ; $4504: $0b
	ldh [rP1], a                                     ; $4505: $e0 $00
	cp e                                             ; $4507: $bb
	ret nz                                           ; $4508: $c0

	ld bc, $09a0                                     ; $4509: $01 $a0 $09
	dec b                                            ; $450c: $05
	jp c, $01c0                                      ; $450d: $da $c0 $01

	and b                                            ; $4510: $a0
	ld bc, $c605                                     ; $4511: $01 $05 $c6
	ret nz                                           ; $4514: $c0

	ld bc, $09a0                                     ; $4515: $01 $a0 $09
	dec b                                            ; $4518: $05
	ret nc                                           ; $4519: $d0

	ldh [rP1], a                                     ; $451a: $e0 $00
	xor a                                            ; $451c: $af
	ld bc, $1ed4                                     ; $451d: $01 $d4 $1e
	ret nz                                           ; $4520: $c0

	ld bc, $01a0                                     ; $4521: $01 $a0 $01
	nop                                              ; $4524: $00
	ld l, d                                          ; $4525: $6a
	ldh [rP1], a                                     ; $4526: $e0 $00
	sbc d                                            ; $4528: $9a
	ret nz                                           ; $4529: $c0

	ld bc, $09a0                                     ; $452a: $01 $a0 $09
	dec b                                            ; $452d: $05
	ld [$01c0], a                                    ; $452e: $ea $c0 $01
	and b                                            ; $4531: $a0
	ld bc, $c605                                     ; $4532: $01 $05 $c6
	ret nz                                           ; $4535: $c0

	ld bc, $09a0                                     ; $4536: $01 $a0 $09
	dec b                                            ; $4539: $05
	ld a, [$00e0]                                    ; $453a: $fa $e0 $00
	xor l                                            ; $453d: $ad
	pop bc                                           ; $453e: $c1
	ld e, e                                          ; $453f: $5b
	push hl                                          ; $4540: $e5
	inc sp                                           ; $4541: $33
	nop                                              ; $4542: $00
	nop                                              ; $4543: $00
	add hl, bc                                       ; $4544: $09
	ld a, e                                          ; $4545: $7b
	add d                                            ; $4546: $82
	ret nz                                           ; $4547: $c0

	dec de                                           ; $4548: $1b
	ret c                                            ; $4549: $d8

	ld [bc], a                                       ; $454a: $02
	ret nc                                           ; $454b: $d0

	pop de                                           ; $454c: $d1
	ld e, $c0                                        ; $454d: $1e $c0
	ld bc, $01a0                                     ; $454f: $01 $a0 $01
	nop                                              ; $4552: $00
	dec bc                                           ; $4553: $0b
	ldh [rP1], a                                     ; $4554: $e0 $00
	ld l, h                                          ; $4556: $6c
	ret nz                                           ; $4557: $c0

	ld bc, $09a0                                     ; $4558: $01 $a0 $09
	ld b, $02                                        ; $455b: $06 $02
	ret nz                                           ; $455d: $c0

	ld bc, $01a0                                     ; $455e: $01 $a0 $01
	ld b, $0e                                        ; $4561: $06 $0e
	ret nz                                           ; $4563: $c0

	ld bc, $09a0                                     ; $4564: $01 $a0 $09
	ld b, $17                                        ; $4567: $06 $17
	ldh [rP1], a                                     ; $4569: $e0 $00
	ld h, b                                          ; $456b: $60
	ld [bc], a                                       ; $456c: $02
	jp nc, $2ad3                                     ; $456d: $d2 $d3 $2a

	ret nz                                           ; $4570: $c0

	ld bc, $01a0                                     ; $4571: $01 $a0 $01
	nop                                              ; $4574: $00
	dec bc                                           ; $4575: $0b
	ldh [rP1], a                                     ; $4576: $e0 $00
	ld c, d                                          ; $4578: $4a
	ret nz                                           ; $4579: $c0

	ld bc, $09a0                                     ; $457a: $01 $a0 $09

jr_085_457d:
	ld b, $1d                                        ; $457d: $06 $1d
	ret nz                                           ; $457f: $c0

	ld bc, $01a0                                     ; $4580: $01 $a0 $01
	ld b, $2a                                        ; $4583: $06 $2a
	ret nz                                           ; $4585: $c0

	ld bc, $09a0                                     ; $4586: $01 $a0 $09
	ld b, $31                                        ; $4589: $06 $31
	ret nz                                           ; $458b: $c0

	ld bc, $01a0                                     ; $458c: $01 $a0 $01
	ld b, $41                                        ; $458f: $06 $41
	ret nz                                           ; $4591: $c0

	ld bc, $09a0                                     ; $4592: $01 $a0 $09
	ld b, $4e                                        ; $4595: $06 $4e
	ldh [rP1], a                                     ; $4597: $e0 $00
	ld [hl-], a                                      ; $4599: $32
	ld bc, $1ed4                                     ; $459a: $01 $d4 $1e
	ret nz                                           ; $459d: $c0

	ld bc, $01a0                                     ; $459e: $01 $a0 $01
	nop                                              ; $45a1: $00
	ld l, d                                          ; $45a2: $6a
	ldh [rP1], a                                     ; $45a3: $e0 $00
	dec e                                            ; $45a5: $1d
	ret nz                                           ; $45a6: $c0

	ld bc, $09a0                                     ; $45a7: $01 $a0 $09
	ld b, $55                                        ; $45aa: $06 $55
	ret nz                                           ; $45ac: $c0

	ld bc, $01a0                                     ; $45ad: $01 $a0 $01
	ld b, $63                                        ; $45b0: $06 $63
	ret nz                                           ; $45b2: $c0

	ld bc, $09a0                                     ; $45b3: $01 $a0 $09
	ld b, $6b                                        ; $45b6: $06 $6b
	ldh [rP1], a                                     ; $45b8: $e0 $00
	jr nc, jr_085_457d                               ; $45ba: $30 $c1

	ld e, e                                          ; $45bc: $5b
	push hl                                          ; $45bd: $e5
	inc sp                                           ; $45be: $33
	nop                                              ; $45bf: $00
	nop                                              ; $45c0: $00
	ld [$32e1], sp                                   ; $45c1: $08 $e1 $32
	ld bc, $e19c                                     ; $45c4: $01 $9c $e1
	ld [bc], a                                       ; $45c7: $02
	ld [bc], a                                       ; $45c8: $02
	jr @+$20                                         ; $45c9: $18 $1e

	ret nz                                           ; $45cb: $c0

	ld bc, $01a0                                     ; $45cc: $01 $a0 $01
	ld bc, $c0ce                                     ; $45cf: $01 $ce $c0
	ld bc, $09a0                                     ; $45d2: $01 $a0 $09
	ld bc, $c0d7                                     ; $45d5: $01 $d7 $c0
	ld bc, $01a0                                     ; $45d8: $01 $a0 $01
	ld bc, wGenericTileDataBytesToCopyUntil21h                                     ; $45db: $01 $e4 $c0
	ld bc, $09a0                                     ; $45de: $01 $a0 $09
	ld bc, $c0ea                                     ; $45e1: $01 $ea $c0
	ld bc, $01a0                                     ; $45e4: $01 $a0 $01
	ld bc, $12f0                                     ; $45e7: $01 $f0 $12
	ret nz                                           ; $45ea: $c0

	ld bc, $01a0                                     ; $45eb: $01 $a0 $01
	ld bc, $c0ce                                     ; $45ee: $01 $ce $c0
	ld bc, $09a0                                     ; $45f1: $01 $a0 $09
	ld b, $71                                        ; $45f4: $06 $71
	ret nz                                           ; $45f6: $c0

	ld bc, $01a0                                     ; $45f7: $01 $a0 $01
	ld [bc], a                                       ; $45fa: $02
	ld a, $18                                        ; $45fb: $3e $18
	ret nz                                           ; $45fd: $c0

	ld bc, $01a0                                     ; $45fe: $01 $a0 $01
	ld b, $7d                                        ; $4601: $06 $7d
	ret nz                                           ; $4603: $c0

	ld bc, $09a0                                     ; $4604: $01 $a0 $09
	inc bc                                           ; $4607: $03
	ld h, [hl]                                       ; $4608: $66
	ret nz                                           ; $4609: $c0

	ld bc, $01a0                                     ; $460a: $01 $a0 $01
	inc bc                                           ; $460d: $03
	ld l, [hl]                                       ; $460e: $6e
	ret nz                                           ; $460f: $c0

	ld bc, $09a0                                     ; $4610: $01 $a0 $09
	inc bc                                           ; $4613: $03
	ld [hl], l                                       ; $4614: $75
	rlca                                             ; $4615: $07
	rlca                                             ; $4616: $07
	add hl, bc                                       ; $4617: $09
	rra                                              ; $4618: $1f
	pop hl                                           ; $4619: $e1
	ld [bc], a                                       ; $461a: $02
	ld [bc], a                                       ; $461b: $02
	ld b, b                                          ; $461c: $40
	add c                                            ; $461d: $81
	ret nz                                           ; $461e: $c0

	add b                                            ; $461f: $80

jr_085_4620:
	ld bc, $0bd3                                     ; $4620: $01 $d3 $0b
	ret nz                                           ; $4623: $c0

	ld hl, $dad2                                     ; $4624: $21 $d2 $da
	ret nz                                           ; $4627: $c0

	ld [hl+], a                                      ; $4628: $22
	pop de                                           ; $4629: $d1
	jp c, $01e4                                      ; $462a: $da $e4 $01

	scf                                              ; $462d: $37
	ld bc, $07d2                                     ; $462e: $01 $d2 $07
	ret nz                                           ; $4631: $c0

	ld hl, $dad1                                     ; $4632: $21 $d1 $da
	db $e4                                           ; $4635: $e4
	nop                                              ; $4636: $00
	ld [bc], a                                       ; $4637: $02
	add hl, bc                                       ; $4638: $09
	pop bc                                           ; $4639: $c1
	jr z, jr_085_463c                                ; $463a: $28 $00

jr_085_463c:
	add b                                            ; $463c: $80
	nop                                              ; $463d: $00
	ret c                                            ; $463e: $d8

	add e                                            ; $463f: $83
	ret nz                                           ; $4640: $c0

	dec de                                           ; $4641: $1b
	jp c, $d002                                      ; $4642: $da $02 $d0

	pop de                                           ; $4645: $d1
	inc sp                                           ; $4646: $33
	ldh [rTAC], a                                    ; $4647: $e0 $07
	sbc l                                            ; $4649: $9d
	ldh [$0a], a                                     ; $464a: $e0 $0a
	inc hl                                           ; $464c: $23
	ret nz                                           ; $464d: $c0

	ld bc, $06a0                                     ; $464e: $01 $a0 $06
	nop                                              ; $4651: $00
	ld bc, $01c0                                     ; $4652: $01 $c0 $01
	and b                                            ; $4655: $a0
	ld bc, $0700                                     ; $4656: $01 $00 $07
	ret nz                                           ; $4659: $c0

	ld bc, $06a0                                     ; $465a: $01 $a0 $06
	nop                                              ; $465d: $00
	jr jr_085_4620                                   ; $465e: $18 $c0

	ld bc, $01a0                                     ; $4660: $01 $a0 $01
	nop                                              ; $4663: $00
	inc hl                                           ; $4664: $23
	ret nz                                           ; $4665: $c0

	ld bc, $06a0                                     ; $4666: $01 $a0 $06
	nop                                              ; $4669: $00
	inc [hl]                                         ; $466a: $34
	ret nz                                           ; $466b: $c0

	ld bc, $01a0                                     ; $466c: $01 $a0 $01
	nop                                              ; $466f: $00
	ld a, [hl-]                                      ; $4670: $3a
	ret nz                                           ; $4671: $c0

	ld bc, $06a0                                     ; $4672: $01 $a0 $06
	nop                                              ; $4675: $00
	ld b, c                                          ; $4676: $41
	ldh [$09], a                                     ; $4677: $e0 $09
	adc h                                            ; $4679: $8c
	ld [bc], a                                       ; $467a: $02
	jp nc, Jump_085_65d3                             ; $467b: $d2 $d3 $65

	ret nz                                           ; $467e: $c0

	ld bc, $06a0                                     ; $467f: $01 $a0 $06
	nop                                              ; $4682: $00
	ld b, [hl]                                       ; $4683: $46
	ret nz                                           ; $4684: $c0

	ld bc, $01a0                                     ; $4685: $01 $a0 $01
	nop                                              ; $4688: $00
	ld c, c                                          ; $4689: $49
	ret nz                                           ; $468a: $c0

	ld bc, $06a0                                     ; $468b: $01 $a0 $06
	nop                                              ; $468e: $00
	ld d, h                                          ; $468f: $54
	ret nz                                           ; $4690: $c0

	ld bc, $01a0                                     ; $4691: $01 $a0 $01
	nop                                              ; $4694: $00
	ld e, a                                          ; $4695: $5f
	ret nz                                           ; $4696: $c0

	ld bc, $06a0                                     ; $4697: $01 $a0 $06
	nop                                              ; $469a: $00
	ld l, [hl]                                       ; $469b: $6e
	ret nz                                           ; $469c: $c0

	ld bc, $01a0                                     ; $469d: $01 $a0 $01
	nop                                              ; $46a0: $00
	ld [hl], l                                       ; $46a1: $75
	ret nz                                           ; $46a2: $c0

	ld bc, $06a0                                     ; $46a3: $01 $a0 $06
	nop                                              ; $46a6: $00
	ld a, l                                          ; $46a7: $7d
	ret nz                                           ; $46a8: $c0

	ld bc, $01a0                                     ; $46a9: $01 $a0 $01
	nop                                              ; $46ac: $00
	adc e                                            ; $46ad: $8b
	ret nz                                           ; $46ae: $c0

	ld bc, $06a0                                     ; $46af: $01 $a0 $06
	nop                                              ; $46b2: $00
	sbc h                                            ; $46b3: $9c
	ret nz                                           ; $46b4: $c0

	ld bc, $01a0                                     ; $46b5: $01 $a0 $01
	nop                                              ; $46b8: $00
	inc hl                                           ; $46b9: $23
	ret nz                                           ; $46ba: $c0

	ld bc, $06a0                                     ; $46bb: $01 $a0 $06
	nop                                              ; $46be: $00
	and b                                            ; $46bf: $a0
	ret nz                                           ; $46c0: $c0

	ld bc, $01a0                                     ; $46c1: $01 $a0 $01
	nop                                              ; $46c4: $00
	and [hl]                                         ; $46c5: $a6
	ret nz                                           ; $46c6: $c0

	ld bc, $06a0                                     ; $46c7: $01 $a0 $06
	nop                                              ; $46ca: $00
	or e                                             ; $46cb: $b3
	ret nz                                           ; $46cc: $c0

	ld bc, $01a0                                     ; $46cd: $01 $a0 $01
	nop                                              ; $46d0: $00
	cp e                                             ; $46d1: $bb
	ldh [$09], a                                     ; $46d2: $e0 $09
	ld h, a                                          ; $46d4: $67
	ret nz                                           ; $46d5: $c0

	ld bc, $01a0                                     ; $46d6: $01 $a0 $01
	nop                                              ; $46d9: $00
	jp nz, $01c0                                     ; $46da: $c2 $c0 $01

	and b                                            ; $46dd: $a0
	ld b, $00                                        ; $46de: $06 $00
	call nz, $5bc1                                   ; $46e0: $c4 $c1 $5b
	ld bc, $4bd4                                     ; $46e3: $01 $d4 $4b
	ret nz                                           ; $46e6: $c0

	ld bc, $06a0                                     ; $46e7: $01 $a0 $06
	nop                                              ; $46ea: $00
	rst JumpTable                                          ; $46eb: $c7
	ret nz                                           ; $46ec: $c0

	ld bc, $01a0                                     ; $46ed: $01 $a0 $01
	nop                                              ; $46f0: $00
	ld c, c                                          ; $46f1: $49
	ret nz                                           ; $46f2: $c0

	ld bc, $06a0                                     ; $46f3: $01 $a0 $06
	nop                                              ; $46f6: $00
	set 0, b                                         ; $46f7: $cb $c0
	ld bc, $01a0                                     ; $46f9: $01 $a0 $01
	nop                                              ; $46fc: $00
	ld e, a                                          ; $46fd: $5f
	ret nz                                           ; $46fe: $c0

	ld bc, $06a0                                     ; $46ff: $01 $a0 $06
	nop                                              ; $4702: $00
	ld l, [hl]                                       ; $4703: $6e
	ret nz                                           ; $4704: $c0

	ld bc, $01a0                                     ; $4705: $01 $a0 $01
	nop                                              ; $4708: $00
	rlca                                             ; $4709: $07
	ret nz                                           ; $470a: $c0

	ld bc, $06a0                                     ; $470b: $01 $a0 $06
	nop                                              ; $470e: $00
	push de                                          ; $470f: $d5
	ret nz                                           ; $4710: $c0

	ld bc, $01a0                                     ; $4711: $01 $a0 $01
	nop                                              ; $4714: $00
	inc hl                                           ; $4715: $23
	ret nz                                           ; $4716: $c0

	ld bc, $06a0                                     ; $4717: $01 $a0 $06
	nop                                              ; $471a: $00
	ldh [$c0], a                                     ; $471b: $e0 $c0
	ld bc, $01a0                                     ; $471d: $01 $a0 $01
	nop                                              ; $4720: $00
	jp hl                                            ; $4721: $e9


	ret nz                                           ; $4722: $c0

	ld bc, $06a0                                     ; $4723: $01 $a0 $06
	nop                                              ; $4726: $00
	db $f4                                           ; $4727: $f4
	ret nz                                           ; $4728: $c0

	ld bc, $01a0                                     ; $4729: $01 $a0 $01
	nop                                              ; $472c: $00
	ld a, [hl-]                                      ; $472d: $3a
	ldh [$09], a                                     ; $472e: $e0 $09
	ld e, $01                                        ; $4730: $1e $01
	push de                                          ; $4732: $d5
	dec hl                                           ; $4733: $2b
	ldh [$09], a                                     ; $4734: $e0 $09
	ld b, [hl]                                       ; $4736: $46
	ret nz                                           ; $4737: $c0

	ld bc, $01a0                                     ; $4738: $01 $a0 $01
	nop                                              ; $473b: $00
	ei                                               ; $473c: $fb
	ret nz                                           ; $473d: $c0

	ld bc, $06a0                                     ; $473e: $01 $a0 $06
	ld bc, $c00c                                     ; $4741: $01 $0c $c0
	ld bc, $01a0                                     ; $4744: $01 $a0 $01
	ld bc, $c014                                     ; $4747: $01 $14 $c0
	ld bc, $06a0                                     ; $474a: $01 $a0 $06
	ld bc, $c118                                     ; $474d: $01 $18 $c1
	ld e, e                                          ; $4750: $5b
	ret nz                                           ; $4751: $c0

	ld bc, $01a0                                     ; $4752: $01 $a0 $01
	ld bc, $401d                                     ; $4755: $01 $1d $40
	add b                                            ; $4758: $80
	nop                                              ; $4759: $00
	ret c                                            ; $475a: $d8

	nop                                              ; $475b: $00
	add b                                            ; $475c: $80
	nop                                              ; $475d: $00
	ld a, a                                          ; $475e: $7f
	push hl                                          ; $475f: $e5
	inc sp                                           ; $4760: $33
	nop                                              ; $4761: $00
	nop                                              ; $4762: $00
	add hl, bc                                       ; $4763: $09
	ret nz                                           ; $4764: $c0

	call c, $c083                                    ; $4765: $dc $83 $c0
	dec de                                           ; $4768: $1b
	jp c, $d002                                      ; $4769: $da $02 $d0

	pop de                                           ; $476c: $d1
	ld c, d                                          ; $476d: $4a
	ret nz                                           ; $476e: $c0

	ld bc, $06a0                                     ; $476f: $01 $a0 $06
	ld bc, $c028                                     ; $4772: $01 $28 $c0
	ld bc, $01a0                                     ; $4775: $01 $a0 $01
	ld bc, $c030                                     ; $4778: $01 $30 $c0
	ld bc, $06a0                                     ; $477b: $01 $a0 $06
	ld bc, $c03a                                     ; $477e: $01 $3a $c0
	ld bc, $01a0                                     ; $4781: $01 $a0 $01
	ld bc, $c044                                     ; $4784: $01 $44 $c0
	ld bc, $06a0                                     ; $4787: $01 $a0 $06
	ld bc, $c04e                                     ; $478a: $01 $4e $c0
	ld bc, $01a0                                     ; $478d: $01 $a0 $01
	ld bc, $c057                                     ; $4790: $01 $57 $c0
	ld bc, $06a0                                     ; $4793: $01 $a0 $06
	ld bc, $c065                                     ; $4796: $01 $65 $c0
	ld bc, $01a0                                     ; $4799: $01 $a0 $01
	ld bc, $c06b                                     ; $479c: $01 $6b $c0
	ld bc, $06a0                                     ; $479f: $01 $a0 $06
	ld bc, $c06f                                     ; $47a2: $01 $6f $c0
	ld bc, $01a0                                     ; $47a5: $01 $a0 $01
	ld bc, $c07d                                     ; $47a8: $01 $7d $c0
	ld bc, $06a0                                     ; $47ab: $01 $a0 $06
	ld bc, $c18e                                     ; $47ae: $01 $8e $c1
	ld e, e                                          ; $47b1: $5b
	ret nz                                           ; $47b2: $c0

	ld bc, $01a0                                     ; $47b3: $01 $a0 $01
	ld bc, $029a                                     ; $47b6: $01 $9a $02
	jp nc, $2dd3                                     ; $47b9: $d2 $d3 $2d

	ret nz                                           ; $47bc: $c0

	ld bc, $06a0                                     ; $47bd: $01 $a0 $06
	nop                                              ; $47c0: $00
	ld b, [hl]                                       ; $47c1: $46
	ret nz                                           ; $47c2: $c0

	ld bc, $01a0                                     ; $47c3: $01 $a0 $01
	ld bc, $c030                                     ; $47c6: $01 $30 $c0
	ld bc, $06a0                                     ; $47c9: $01 $a0 $06
	ld bc, $c09e                                     ; $47cc: $01 $9e $c0
	ld bc, $01a0                                     ; $47cf: $01 $a0 $01
	ld bc, $c044                                     ; $47d2: $01 $44 $c0
	ld bc, $06a0                                     ; $47d5: $01 $a0 $06
	ld bc, $c0a9                                     ; $47d8: $01 $a9 $c0
	ld bc, $01a0                                     ; $47db: $01 $a0 $01
	ld bc, $c057                                     ; $47de: $01 $57 $c0
	ld bc, $06a0                                     ; $47e1: $01 $a0 $06
	ld bc, $e0af                                     ; $47e4: $01 $af $e0
	ld [$0138], sp                                   ; $47e7: $08 $38 $01
	call nc, $c044                                   ; $47ea: $d4 $44 $c0
	ld bc, $06a0                                     ; $47ed: $01 $a0 $06
	nop                                              ; $47f0: $00
	ld b, [hl]                                       ; $47f1: $46
	ret nz                                           ; $47f2: $c0

	ld bc, $01a0                                     ; $47f3: $01 $a0 $01
	ld bc, $c030                                     ; $47f6: $01 $30 $c0
	ld bc, $06a0                                     ; $47f9: $01 $a0 $06
	ld bc, $c0b4                                     ; $47fc: $01 $b4 $c0
	ld bc, $01a0                                     ; $47ff: $01 $a0 $01
	ld bc, $c0bb                                     ; $4802: $01 $bb $c0
	ld bc, $06a0                                     ; $4805: $01 $a0 $06
	ld bc, $c0c3                                     ; $4808: $01 $c3 $c0
	ld bc, $01a0                                     ; $480b: $01 $a0 $01
	ld bc, $c0d2                                     ; $480e: $01 $d2 $c0
	ld bc, $06a0                                     ; $4811: $01 $a0 $06
	ld bc, $c0e0                                     ; $4814: $01 $e0 $c0
	ld bc, $01a0                                     ; $4817: $01 $a0 $01
	ld bc, $c057                                     ; $481a: $01 $57 $c0
	ld bc, $06a0                                     ; $481d: $01 $a0 $06
	ld bc, $c0af                                     ; $4820: $01 $af $c0
	ld bc, $01a0                                     ; $4823: $01 $a0 $01
	ld bc, wGenericTileDataFinalDest+1                                     ; $4826: $01 $e7 $c0
	ld bc, $06a0                                     ; $4829: $01 $a0 $06
	ld bc, $c1f5                                     ; $482c: $01 $f5 $c1
	ld e, e                                          ; $482f: $5b
	ld bc, $0bd5                                     ; $4830: $01 $d5 $0b
	ldh [$08], a                                     ; $4833: $e0 $08
	ld b, a                                          ; $4835: $47
	pop bc                                           ; $4836: $c1
	ld e, e                                          ; $4837: $5b
	ret nz                                           ; $4838: $c0

	ld bc, $01a0                                     ; $4839: $01 $a0 $01
	ld bc, $e51d                                     ; $483c: $01 $1d $e5
	inc sp                                           ; $483f: $33
	nop                                              ; $4840: $00
	nop                                              ; $4841: $00
	add hl, bc                                       ; $4842: $09
	rra                                              ; $4843: $1f
	ret nz                                           ; $4844: $c0

	ld hl, $dad2                                     ; $4845: $21 $d2 $da
	pop hl                                           ; $4848: $e1
	ld [bc], a                                       ; $4849: $02
	ld [bc], a                                       ; $484a: $02
	ld b, b                                          ; $484b: $40
	add c                                            ; $484c: $81
	ret nz                                           ; $484d: $c0

	add b                                            ; $484e: $80
	ld bc, $07d3                                     ; $484f: $01 $d3 $07
	ret nz                                           ; $4852: $c0

	ld [hl+], a                                      ; $4853: $22
	jp nc, $e4da                                     ; $4854: $d2 $da $e4

	nop                                              ; $4857: $00
	di                                               ; $4858: $f3
	ld bc, $07d2                                     ; $4859: $01 $d2 $07
	ret nz                                           ; $485c: $c0

	ld [hl+], a                                      ; $485d: $22
	pop de                                           ; $485e: $d1
	jp c, $00e4                                      ; $485f: $da $e4 $00

	ld [bc], a                                       ; $4862: $02
	add hl, bc                                       ; $4863: $09
	ret nz                                           ; $4864: $c0

	db $e4                                           ; $4865: $e4
	add e                                            ; $4866: $83
	ret nz                                           ; $4867: $c0

	dec de                                           ; $4868: $1b
	jp c, $d002                                      ; $4869: $da $02 $d0

	pop de                                           ; $486c: $d1
	dec [hl]                                         ; $486d: $35
	ldh [rTIMA], a                                   ; $486e: $e0 $05
	halt                                             ; $4870: $76
	ldh [rTAC], a                                    ; $4871: $e0 $07
	db $fc                                           ; $4873: $fc
	ret nz                                           ; $4874: $c0

	ld bc, $06a0                                     ; $4875: $01 $a0 $06
	ld bc, $c0ff                                     ; $4878: $01 $ff $c0
	ld bc, $01a0                                     ; $487b: $01 $a0 $01
	ld [bc], a                                       ; $487e: $02
	add hl, bc                                       ; $487f: $09
	ret nz                                           ; $4880: $c0

	ld bc, $06a0                                     ; $4881: $01 $a0 $06
	ld [bc], a                                       ; $4884: $02
	ld d, $e1                                        ; $4885: $16 $e1
	ld [hl-], a                                      ; $4887: $32
	nop                                              ; $4888: $00
	add hl, hl                                       ; $4889: $29
	pop hl                                           ; $488a: $e1
	ld [bc], a                                       ; $488b: $02
	ld [bc], a                                       ; $488c: $02
	ld c, b                                          ; $488d: $48
	ret nz                                           ; $488e: $c0

	ld bc, $06a0                                     ; $488f: $01 $a0 $06
	ld [bc], a                                       ; $4892: $02
	rla                                              ; $4893: $17
	ret nz                                           ; $4894: $c0

	ld bc, $01a0                                     ; $4895: $01 $a0 $01
	ld [bc], a                                       ; $4898: $02
	inc h                                            ; $4899: $24
	ret nz                                           ; $489a: $c0

	ld bc, $06a0                                     ; $489b: $01 $a0 $06
	nop                                              ; $489e: $00
	ld b, c                                          ; $489f: $41
	ldh [rTAC], a                                    ; $48a0: $e0 $07
	ld h, e                                          ; $48a2: $63
	ld [bc], a                                       ; $48a3: $02
	jp nc, $4fd3                                     ; $48a4: $d2 $d3 $4f

	ret nz                                           ; $48a7: $c0

	ld bc, $06a0                                     ; $48a8: $01 $a0 $06
	nop                                              ; $48ab: $00
	ld b, [hl]                                       ; $48ac: $46
	ret nz                                           ; $48ad: $c0

	ld bc, $01a0                                     ; $48ae: $01 $a0 $01
	nop                                              ; $48b1: $00
	ld c, c                                          ; $48b2: $49
	ret nz                                           ; $48b3: $c0

	ld bc, $06a0                                     ; $48b4: $01 $a0 $06
	nop                                              ; $48b7: $00
	ld d, h                                          ; $48b8: $54
	ret nz                                           ; $48b9: $c0

	ld bc, $01a0                                     ; $48ba: $01 $a0 $01
	nop                                              ; $48bd: $00
	ld e, a                                          ; $48be: $5f
	ret nz                                           ; $48bf: $c0

	ld bc, $06a0                                     ; $48c0: $01 $a0 $06
	ld [bc], a                                       ; $48c3: $02
	inc [hl]                                         ; $48c4: $34
	ret nz                                           ; $48c5: $c0

	ld bc, $01a0                                     ; $48c6: $01 $a0 $01
	ld [bc], a                                       ; $48c9: $02
	add hl, bc                                       ; $48ca: $09
	ret nz                                           ; $48cb: $c0

	ld bc, $06a0                                     ; $48cc: $01 $a0 $06
	ld [bc], a                                       ; $48cf: $02
	ld d, $e1                                        ; $48d0: $16 $e1
	ld [hl-], a                                      ; $48d2: $32
	nop                                              ; $48d3: $00
	add hl, hl                                       ; $48d4: $29
	pop hl                                           ; $48d5: $e1
	ld [bc], a                                       ; $48d6: $02
	ld [bc], a                                       ; $48d7: $02
	ld c, b                                          ; $48d8: $48
	ret nz                                           ; $48d9: $c0

	ld bc, $06a0                                     ; $48da: $01 $a0 $06
	ld [bc], a                                       ; $48dd: $02
	dec a                                            ; $48de: $3d
	ret nz                                           ; $48df: $c0

	ld bc, $01a0                                     ; $48e0: $01 $a0 $01
	ld [bc], a                                       ; $48e3: $02
	ld c, l                                          ; $48e4: $4d
	ldh [rTAC], a                                    ; $48e5: $e0 $07
	ld d, h                                          ; $48e7: $54
	ret nz                                           ; $48e8: $c0

	ld bc, $01a0                                     ; $48e9: $01 $a0 $01
	nop                                              ; $48ec: $00
	jp nz, $01c0                                     ; $48ed: $c2 $c0 $01

	and b                                            ; $48f0: $a0
	ld b, $00                                        ; $48f1: $06 $00
	call nz, $5bc1                                   ; $48f3: $c4 $c1 $5b
	ld bc, $3bd4                                     ; $48f6: $01 $d4 $3b
	ret nz                                           ; $48f9: $c0

	ld bc, $06a0                                     ; $48fa: $01 $a0 $06
	nop                                              ; $48fd: $00
	rst JumpTable                                          ; $48fe: $c7
	ret nz                                           ; $48ff: $c0

	ld bc, $01a0                                     ; $4900: $01 $a0 $01
	nop                                              ; $4903: $00
	ld c, c                                          ; $4904: $49
	ret nz                                           ; $4905: $c0

	ld bc, $06a0                                     ; $4906: $01 $a0 $06
	nop                                              ; $4909: $00
	set 0, b                                         ; $490a: $cb $c0
	ld bc, $01a0                                     ; $490c: $01 $a0 $01
	nop                                              ; $490f: $00
	ld e, a                                          ; $4910: $5f
	ret nz                                           ; $4911: $c0

	ld bc, $01a0                                     ; $4912: $01 $a0 $01
	ld [bc], a                                       ; $4915: $02
	ld d, h                                          ; $4916: $54
	ret nz                                           ; $4917: $c0

	ld bc, $06a0                                     ; $4918: $01 $a0 $06
	ld [bc], a                                       ; $491b: $02
	ld d, $e1                                        ; $491c: $16 $e1
	ld [hl-], a                                      ; $491e: $32
	nop                                              ; $491f: $00
	add hl, hl                                       ; $4920: $29
	pop hl                                           ; $4921: $e1
	ld [bc], a                                       ; $4922: $02
	ld [bc], a                                       ; $4923: $02
	ld c, b                                          ; $4924: $48
	ret nz                                           ; $4925: $c0

	ld bc, $06a0                                     ; $4926: $01 $a0 $06
	ld [bc], a                                       ; $4929: $02
	ld e, d                                          ; $492a: $5a
	ret nz                                           ; $492b: $c0

	ld bc, $01a0                                     ; $492c: $01 $a0 $01
	ld [bc], a                                       ; $492f: $02
	ld l, b                                          ; $4930: $68
	ldh [rTAC], a                                    ; $4931: $e0 $07
	dec de                                           ; $4933: $1b
	ld bc, $0fd5                                     ; $4934: $01 $d5 $0f
	ldh [rSB], a                                     ; $4937: $e0 $01
	ld a, [hl-]                                      ; $4939: $3a
	pop hl                                           ; $493a: $e1
	ld [hl-], a                                      ; $493b: $32
	nop                                              ; $493c: $00
	add hl, hl                                       ; $493d: $29
	ret nz                                           ; $493e: $c0

	jp z, $01c0                                      ; $493f: $ca $c0 $01

	and b                                            ; $4942: $a0
	ld bc, $7002                                     ; $4943: $01 $02 $70
	push hl                                          ; $4946: $e5
	inc sp                                           ; $4947: $33
	nop                                              ; $4948: $00
	nop                                              ; $4949: $00
	add hl, bc                                       ; $494a: $09
	pop bc                                           ; $494b: $c1
	dec h                                            ; $494c: $25
	add e                                            ; $494d: $83
	ret nz                                           ; $494e: $c0

	dec de                                           ; $494f: $1b
	jp c, $d002                                      ; $4950: $da $02 $d0

	pop de                                           ; $4953: $d1
	ld e, e                                          ; $4954: $5b
	ldh [rDIV], a                                    ; $4955: $e0 $04
	adc a                                            ; $4957: $8f
	ret nz                                           ; $4958: $c0

	ld bc, $06a0                                     ; $4959: $01 $a0 $06
	ld bc, $c03a                                     ; $495c: $01 $3a $c0
	ld bc, $01a0                                     ; $495f: $01 $a0 $01
	ld [bc], a                                       ; $4962: $02
	ld a, l                                          ; $4963: $7d
	ret nz                                           ; $4964: $c0

	ld bc, $06a0                                     ; $4965: $01 $a0 $06
	ld [bc], a                                       ; $4968: $02
	ld d, $e1                                        ; $4969: $16 $e1
	ld [hl-], a                                      ; $496b: $32
	nop                                              ; $496c: $00
	add c                                            ; $496d: $81
	pop hl                                           ; $496e: $e1
	ld [bc], a                                       ; $496f: $02
	ld [bc], a                                       ; $4970: $02
	ld c, b                                          ; $4971: $48
	ret nz                                           ; $4972: $c0

	ld bc, $06a0                                     ; $4973: $01 $a0 $06
	ld [bc], a                                       ; $4976: $02
	add a                                            ; $4977: $87
	ret nz                                           ; $4978: $c0

	ld bc, $01a0                                     ; $4979: $01 $a0 $01
	ld [bc], a                                       ; $497c: $02
	adc [hl]                                         ; $497d: $8e
	ret nz                                           ; $497e: $c0

	ld bc, $06a0                                     ; $497f: $01 $a0 $06
	ld [bc], a                                       ; $4982: $02
	sub e                                            ; $4983: $93
	ret nz                                           ; $4984: $c0

	ld bc, $01a0                                     ; $4985: $01 $a0 $01
	ld [bc], a                                       ; $4988: $02
	and l                                            ; $4989: $a5
	ret nz                                           ; $498a: $c0

	ld bc, $06a0                                     ; $498b: $01 $a0 $06
	ld bc, $c065                                     ; $498e: $01 $65 $c0
	ld bc, $01a0                                     ; $4991: $01 $a0 $01
	ld bc, $c06b                                     ; $4994: $01 $6b $c0
	ld bc, $06a0                                     ; $4997: $01 $a0 $06
	ld bc, $c06f                                     ; $499a: $01 $6f $c0
	ld bc, $01a0                                     ; $499d: $01 $a0 $01
	ld bc, $c07d                                     ; $49a0: $01 $7d $c0
	ld bc, $06a0                                     ; $49a3: $01 $a0 $06
	ld bc, $c18e                                     ; $49a6: $01 $8e $c1
	ld e, e                                          ; $49a9: $5b
	ret nz                                           ; $49aa: $c0

	ld bc, $01a0                                     ; $49ab: $01 $a0 $01
	ld bc, $029a                                     ; $49ae: $01 $9a $02
	jp nc, $47d3                                     ; $49b1: $d2 $d3 $47

	ret nz                                           ; $49b4: $c0

	ld bc, $06a0                                     ; $49b5: $01 $a0 $06
	nop                                              ; $49b8: $00
	ld b, [hl]                                       ; $49b9: $46
	ret nz                                           ; $49ba: $c0

	ld bc, $01a0                                     ; $49bb: $01 $a0 $01
	nop                                              ; $49be: $00
	ld c, c                                          ; $49bf: $49
	ret nz                                           ; $49c0: $c0

	ld bc, $06a0                                     ; $49c1: $01 $a0 $06
	ld bc, $c09e                                     ; $49c4: $01 $9e $c0
	ld bc, $01a0                                     ; $49c7: $01 $a0 $01
	ld [bc], a                                       ; $49ca: $02
	ld a, l                                          ; $49cb: $7d
	ret nz                                           ; $49cc: $c0

	ld bc, $06a0                                     ; $49cd: $01 $a0 $06
	ld [bc], a                                       ; $49d0: $02
	ld d, $e1                                        ; $49d1: $16 $e1
	ld [hl-], a                                      ; $49d3: $32
	nop                                              ; $49d4: $00
	add c                                            ; $49d5: $81
	pop hl                                           ; $49d6: $e1
	ld [bc], a                                       ; $49d7: $02
	ld [bc], a                                       ; $49d8: $02
	ld c, b                                          ; $49d9: $48
	ret nz                                           ; $49da: $c0

	ld bc, $06a0                                     ; $49db: $01 $a0 $06
	ld [bc], a                                       ; $49de: $02
	xor l                                            ; $49df: $ad
	ret nz                                           ; $49e0: $c0

	ld bc, $01a0                                     ; $49e1: $01 $a0 $01
	ld [bc], a                                       ; $49e4: $02
	or l                                             ; $49e5: $b5
	ret nz                                           ; $49e6: $c0

	ld bc, $06a0                                     ; $49e7: $01 $a0 $06
	ld [bc], a                                       ; $49ea: $02
	cp b                                             ; $49eb: $b8
	ret nz                                           ; $49ec: $c0

	ld bc, $01a0                                     ; $49ed: $01 $a0 $01
	ld [bc], a                                       ; $49f0: $02
	call nz, $01c0                                   ; $49f1: $c4 $c0 $01
	and b                                            ; $49f4: $a0
	ld b, $02                                        ; $49f5: $06 $02
	call $06e0                                       ; $49f7: $cd $e0 $06
	ld h, $01                                        ; $49fa: $26 $01
	call nc, $c05e                                   ; $49fc: $d4 $5e $c0
	ld bc, $06a0                                     ; $49ff: $01 $a0 $06
	nop                                              ; $4a02: $00
	rst JumpTable                                          ; $4a03: $c7
	ret nz                                           ; $4a04: $c0

	ld bc, $01a0                                     ; $4a05: $01 $a0 $01
	nop                                              ; $4a08: $00
	ld c, c                                          ; $4a09: $49
	ret nz                                           ; $4a0a: $c0

	ld bc, $06a0                                     ; $4a0b: $01 $a0 $06
	ld [bc], a                                       ; $4a0e: $02
	push de                                          ; $4a0f: $d5
	ret nz                                           ; $4a10: $c0

	ld bc, $01a0                                     ; $4a11: $01 $a0 $01
	ld [bc], a                                       ; $4a14: $02
	sbc $c0                                          ; $4a15: $de $c0
	ld bc, $06a0                                     ; $4a17: $01 $a0 $06
	ld [bc], a                                       ; $4a1a: $02
	rst SubAFromBC                                          ; $4a1b: $e7
	ret nz                                           ; $4a1c: $c0

	ld bc, $01a0                                     ; $4a1d: $01 $a0 $01
	ld [bc], a                                       ; $4a20: $02
	rst FarCall                                          ; $4a21: $f7
	ret nz                                           ; $4a22: $c0

	ld bc, $06a0                                     ; $4a23: $01 $a0 $06
	ld [bc], a                                       ; $4a26: $02
	ld d, $e1                                        ; $4a27: $16 $e1
	ld [hl-], a                                      ; $4a29: $32
	nop                                              ; $4a2a: $00
	add c                                            ; $4a2b: $81
	pop hl                                           ; $4a2c: $e1
	ld [bc], a                                       ; $4a2d: $02
	ld [bc], a                                       ; $4a2e: $02
	ld c, b                                          ; $4a2f: $48
	ret nz                                           ; $4a30: $c0

	ld bc, $06a0                                     ; $4a31: $01 $a0 $06
	inc bc                                           ; $4a34: $03
	inc bc                                           ; $4a35: $03
	ret nz                                           ; $4a36: $c0

	ld bc, $01a0                                     ; $4a37: $01 $a0 $01
	inc bc                                           ; $4a3a: $03
	db $10                                           ; $4a3b: $10
	ret nz                                           ; $4a3c: $c0

	ld bc, $06a0                                     ; $4a3d: $01 $a0 $06
	inc bc                                           ; $4a40: $03
	ld d, $c0                                        ; $4a41: $16 $c0
	ld bc, $01a0                                     ; $4a43: $01 $a0 $01

jr_085_4a46:
	inc bc                                           ; $4a46: $03
	ld e, $c0                                        ; $4a47: $1e $c0
	ld bc, $06a0                                     ; $4a49: $01 $a0 $06
	ld bc, $c0af                                     ; $4a4c: $01 $af $c0
	ld bc, $01a0                                     ; $4a4f: $01 $a0 $01
	ld bc, wGenericTileDataFinalDest+1                                     ; $4a52: $01 $e7 $c0
	ld bc, $06a0                                     ; $4a55: $01 $a0 $06
	ld bc, $c1f5                                     ; $4a58: $01 $f5 $c1
	ld e, e                                          ; $4a5b: $5b
	ld bc, $0fd5                                     ; $4a5c: $01 $d5 $0f
	ldh [rP1], a                                     ; $4a5f: $e0 $00
	ld [de], a                                       ; $4a61: $12
	pop hl                                           ; $4a62: $e1
	ld [hl-], a                                      ; $4a63: $32
	nop                                              ; $4a64: $00
	add c                                            ; $4a65: $81
	ret nz                                           ; $4a66: $c0

	jp z, $01c0                                      ; $4a67: $ca $c0 $01

	and b                                            ; $4a6a: $a0
	ld bc, $7002                                     ; $4a6b: $01 $02 $70
	push hl                                          ; $4a6e: $e5
	inc sp                                           ; $4a6f: $33
	nop                                              ; $4a70: $00
	nop                                              ; $4a71: $00
	ld e, $c0                                        ; $4a72: $1e $c0
	ld bc, $06a0                                     ; $4a74: $01 $a0 $06
	inc bc                                           ; $4a77: $03
	ld hl, $01c0                                     ; $4a78: $21 $c0 $01
	and b                                            ; $4a7b: $a0
	ld bc, $2803                                     ; $4a7c: $01 $03 $28
	ret nz                                           ; $4a7f: $c0

	ld bc, $06a0                                     ; $4a80: $01 $a0 $06
	inc bc                                           ; $4a83: $03
	jr nc, jr_085_4a46                               ; $4a84: $30 $c0

	ld bc, $01a0                                     ; $4a86: $01 $a0 $01
	inc bc                                           ; $4a89: $03
	ld [hl], $c0                                     ; $4a8a: $36 $c0
	ld bc, $06a0                                     ; $4a8c: $01 $a0 $06
	inc bc                                           ; $4a8f: $03
	ld c, b                                          ; $4a90: $48
	add hl, bc                                       ; $4a91: $09
	inc de                                           ; $4a92: $13
	ret nz                                           ; $4a93: $c0

	ld hl, $dad2                                     ; $4a94: $21 $d2 $da
	add c                                            ; $4a97: $81
	ret nz                                           ; $4a98: $c0

	add b                                            ; $4a99: $80
	ld bc, $03d3                                     ; $4a9a: $01 $d3 $03
	db $e4                                           ; $4a9d: $e4
	ld [bc], a                                       ; $4a9e: $02
	ld c, c                                          ; $4a9f: $49
	ld bc, $03d2                                     ; $4aa0: $01 $d2 $03
	db $e4                                           ; $4aa3: $e4
	nop                                              ; $4aa4: $00
	ld [bc], a                                       ; $4aa5: $02
	add hl, bc                                       ; $4aa6: $09
	jp nz, $833e                                     ; $4aa7: $c2 $3e $83

	ret nz                                           ; $4aaa: $c0

	dec de                                           ; $4aab: $1b
	jp c, $d002                                      ; $4aac: $da $02 $d0

	pop de                                           ; $4aaf: $d1
	cp d                                             ; $4ab0: $ba
	pop hl                                           ; $4ab1: $e1
	ld [bc], a                                       ; $4ab2: $02
	ld [bc], a                                       ; $4ab3: $02
	ld b, b                                          ; $4ab4: $40
	ret nz                                           ; $4ab5: $c0

	ld bc, $06a0                                     ; $4ab6: $01 $a0 $06
	inc bc                                           ; $4ab9: $03
	ld d, e                                          ; $4aba: $53
	ret nz                                           ; $4abb: $c0

	ld bc, $01a0                                     ; $4abc: $01 $a0 $01
	inc bc                                           ; $4abf: $03
	ld e, b                                          ; $4ac0: $58
	ret nz                                           ; $4ac1: $c0

	ld bc, $06a0                                     ; $4ac2: $01 $a0 $06
	inc bc                                           ; $4ac5: $03
	ld e, l                                          ; $4ac6: $5d
	ret nz                                           ; $4ac7: $c0

	ld bc, $01a0                                     ; $4ac8: $01 $a0 $01
	inc bc                                           ; $4acb: $03
	ld h, d                                          ; $4acc: $62
	ret nz                                           ; $4acd: $c0

	ld bc, $06a0                                     ; $4ace: $01 $a0 $06
	inc bc                                           ; $4ad1: $03
	ld l, [hl]                                       ; $4ad2: $6e
	ret nz                                           ; $4ad3: $c0

	or e                                             ; $4ad4: $b3
	pop hl                                           ; $4ad5: $e1
	ld [bc], a                                       ; $4ad6: $02
	ld [bc], a                                       ; $4ad7: $02
	call z, $01c0                                    ; $4ad8: $cc $c0 $01
	and b                                            ; $4adb: $a0
	rlca                                             ; $4adc: $07
	inc bc                                           ; $4add: $03
	ld a, d                                          ; $4ade: $7a
	ret nz                                           ; $4adf: $c0

	or e                                             ; $4ae0: $b3
	pop hl                                           ; $4ae1: $e1
	ld [bc], a                                       ; $4ae2: $02
	ld [bc], a                                       ; $4ae3: $02
	ld b, b                                          ; $4ae4: $40
	ret nz                                           ; $4ae5: $c0

	ld bc, $06a0                                     ; $4ae6: $01 $a0 $06
	inc bc                                           ; $4ae9: $03
	add c                                            ; $4aea: $81
	ret nz                                           ; $4aeb: $c0

	ld bc, $01a0                                     ; $4aec: $01 $a0 $01
	inc bc                                           ; $4aef: $03
	sub c                                            ; $4af0: $91
	ret nz                                           ; $4af1: $c0

	or e                                             ; $4af2: $b3
	pop hl                                           ; $4af3: $e1
	ld [bc], a                                       ; $4af4: $02
	ld [bc], a                                       ; $4af5: $02
	call z, $01c0                                    ; $4af6: $cc $c0 $01
	and b                                            ; $4af9: $a0
	rlca                                             ; $4afa: $07
	inc bc                                           ; $4afb: $03
	sub l                                            ; $4afc: $95
	ret nz                                           ; $4afd: $c0

	ld bc, $01a0                                     ; $4afe: $01 $a0 $01
	inc bc                                           ; $4b01: $03
	xor c                                            ; $4b02: $a9
	ret nz                                           ; $4b03: $c0

	ld bc, $06a0                                     ; $4b04: $01 $a0 $06
	inc bc                                           ; $4b07: $03
	xor l                                            ; $4b08: $ad
	ret nz                                           ; $4b09: $c0

	ld bc, $07a0                                     ; $4b0a: $01 $a0 $07
	inc bc                                           ; $4b0d: $03
	or a                                             ; $4b0e: $b7
	ret nz                                           ; $4b0f: $c0

	ld bc, $01a0                                     ; $4b10: $01 $a0 $01
	inc bc                                           ; $4b13: $03
	cp l                                             ; $4b14: $bd
	ret nz                                           ; $4b15: $c0

	ld bc, $06a0                                     ; $4b16: $01 $a0 $06
	inc bc                                           ; $4b19: $03
	pop bc                                           ; $4b1a: $c1
	ret nz                                           ; $4b1b: $c0

	ld bc, $07a0                                     ; $4b1c: $01 $a0 $07
	inc bc                                           ; $4b1f: $03
	ret z                                            ; $4b20: $c8

	ret nz                                           ; $4b21: $c0

	ld bc, $06a0                                     ; $4b22: $01 $a0 $06
	inc bc                                           ; $4b25: $03
	push de                                          ; $4b26: $d5
	ret nz                                           ; $4b27: $c0

	ld bc, $07a0                                     ; $4b28: $01 $a0 $07
	inc bc                                           ; $4b2b: $03
	reti                                             ; $4b2c: $d9


	ret nz                                           ; $4b2d: $c0

	or e                                             ; $4b2e: $b3
	pop hl                                           ; $4b2f: $e1
	ld [bc], a                                       ; $4b30: $02
	ld [bc], a                                       ; $4b31: $02
	ld b, b                                          ; $4b32: $40
	ret nz                                           ; $4b33: $c0

	ld bc, $06a0                                     ; $4b34: $01 $a0 $06
	inc bc                                           ; $4b37: $03
	db $db                                           ; $4b38: $db
	ret nz                                           ; $4b39: $c0

	ld bc, $01a0                                     ; $4b3a: $01 $a0 $01
	inc bc                                           ; $4b3d: $03
	rst SubAFromBC                                          ; $4b3e: $e7
	ret nz                                           ; $4b3f: $c0

	ld bc, $06a0                                     ; $4b40: $01 $a0 $06
	inc bc                                           ; $4b43: $03
	db $ed                                           ; $4b44: $ed
	ret nz                                           ; $4b45: $c0

	ld bc, $01a0                                     ; $4b46: $01 $a0 $01
	inc bc                                           ; $4b49: $03
	rst FarCall                                          ; $4b4a: $f7
	ret nz                                           ; $4b4b: $c0

	ld bc, $06a0                                     ; $4b4c: $01 $a0 $06
	inc b                                            ; $4b4f: $04
	nop                                              ; $4b50: $00
	ret nz                                           ; $4b51: $c0

	ld bc, $01a0                                     ; $4b52: $01 $a0 $01
	inc b                                            ; $4b55: $04
	ld [$01c0], sp                                   ; $4b56: $08 $c0 $01
	and b                                            ; $4b59: $a0
	rlca                                             ; $4b5a: $07
	inc b                                            ; $4b5b: $04
	inc de                                           ; $4b5c: $13
	ret nz                                           ; $4b5d: $c0

	ld bc, $06a0                                     ; $4b5e: $01 $a0 $06
	inc b                                            ; $4b61: $04
	ld a, [de]                                       ; $4b62: $1a
	pop bc                                           ; $4b63: $c1
	ld e, e                                          ; $4b64: $5b
	ret nz                                           ; $4b65: $c0

	ld bc, $01a0                                     ; $4b66: $01 $a0 $01
	inc b                                            ; $4b69: $04
	jr z, @+$04                                      ; $4b6a: $28 $02

	jp nc, $9cd3                                     ; $4b6c: $d2 $d3 $9c

	pop hl                                           ; $4b6f: $e1
	ld [bc], a                                       ; $4b70: $02
	ld [bc], a                                       ; $4b71: $02
	ld b, b                                          ; $4b72: $40
	ret nz                                           ; $4b73: $c0

	ld bc, $06a0                                     ; $4b74: $01 $a0 $06
	inc bc                                           ; $4b77: $03
	ld d, e                                          ; $4b78: $53
	ret nz                                           ; $4b79: $c0

	ld bc, $01a0                                     ; $4b7a: $01 $a0 $01
	inc bc                                           ; $4b7d: $03
	ld e, b                                          ; $4b7e: $58
	ret nz                                           ; $4b7f: $c0

	ld bc, $06a0                                     ; $4b80: $01 $a0 $06
	inc b                                            ; $4b83: $04
	ld l, $c0                                        ; $4b84: $2e $c0
	ld bc, $01a0                                     ; $4b86: $01 $a0 $01
	inc bc                                           ; $4b89: $03
	ld h, d                                          ; $4b8a: $62
	ret nz                                           ; $4b8b: $c0

	ld bc, $06a0                                     ; $4b8c: $01 $a0 $06
	inc b                                            ; $4b8f: $04
	inc [hl]                                         ; $4b90: $34
	ret nz                                           ; $4b91: $c0

	or e                                             ; $4b92: $b3
	pop hl                                           ; $4b93: $e1
	ld [bc], a                                       ; $4b94: $02
	ld [bc], a                                       ; $4b95: $02
	call z, $01c0                                    ; $4b96: $cc $c0 $01
	and b                                            ; $4b99: $a0
	rlca                                             ; $4b9a: $07
	inc bc                                           ; $4b9b: $03
	ld a, d                                          ; $4b9c: $7a
	ret nz                                           ; $4b9d: $c0

	or e                                             ; $4b9e: $b3
	pop hl                                           ; $4b9f: $e1
	ld [bc], a                                       ; $4ba0: $02
	ld [bc], a                                       ; $4ba1: $02
	ld b, b                                          ; $4ba2: $40
	ret nz                                           ; $4ba3: $c0

	ld bc, $06a0                                     ; $4ba4: $01 $a0 $06
	inc b                                            ; $4ba7: $04
	ld a, $c0                                        ; $4ba8: $3e $c0
	ld bc, $01a0                                     ; $4baa: $01 $a0 $01
	inc bc                                           ; $4bad: $03
	sub c                                            ; $4bae: $91
	ret nz                                           ; $4baf: $c0

	or e                                             ; $4bb0: $b3
	pop hl                                           ; $4bb1: $e1
	ld [bc], a                                       ; $4bb2: $02
	ld [bc], a                                       ; $4bb3: $02
	call z, $01c0                                    ; $4bb4: $cc $c0 $01
	and b                                            ; $4bb7: $a0
	rlca                                             ; $4bb8: $07
	inc bc                                           ; $4bb9: $03
	sub l                                            ; $4bba: $95
	ret nz                                           ; $4bbb: $c0

	ld bc, $01a0                                     ; $4bbc: $01 $a0 $01
	inc bc                                           ; $4bbf: $03
	xor c                                            ; $4bc0: $a9
	ret nz                                           ; $4bc1: $c0

	ld bc, $06a0                                     ; $4bc2: $01 $a0 $06
	inc bc                                           ; $4bc5: $03
	xor l                                            ; $4bc6: $ad
	ret nz                                           ; $4bc7: $c0

	ld bc, $07a0                                     ; $4bc8: $01 $a0 $07
	inc bc                                           ; $4bcb: $03
	or a                                             ; $4bcc: $b7
	ret nz                                           ; $4bcd: $c0

	ld bc, $01a0                                     ; $4bce: $01 $a0 $01
	inc bc                                           ; $4bd1: $03
	cp l                                             ; $4bd2: $bd
	ret nz                                           ; $4bd3: $c0

	ld bc, $06a0                                     ; $4bd4: $01 $a0 $06
	inc b                                            ; $4bd7: $04
	ld c, c                                          ; $4bd8: $49
	ret nz                                           ; $4bd9: $c0

	ld bc, $07a0                                     ; $4bda: $01 $a0 $07
	inc bc                                           ; $4bdd: $03
	ret z                                            ; $4bde: $c8

	ret nz                                           ; $4bdf: $c0

	ld bc, $06a0                                     ; $4be0: $01 $a0 $06
	inc b                                            ; $4be3: $04
	ld d, e                                          ; $4be4: $53
	ret nz                                           ; $4be5: $c0

	ld bc, $07a0                                     ; $4be6: $01 $a0 $07
	inc bc                                           ; $4be9: $03
	reti                                             ; $4bea: $d9


	ret nz                                           ; $4beb: $c0

	or e                                             ; $4bec: $b3
	pop hl                                           ; $4bed: $e1
	ld [bc], a                                       ; $4bee: $02
	ld [bc], a                                       ; $4bef: $02
	ld b, b                                          ; $4bf0: $40
	ret nz                                           ; $4bf1: $c0

	ld bc, $06a0                                     ; $4bf2: $01 $a0 $06
	inc b                                            ; $4bf5: $04
	ld e, b                                          ; $4bf6: $58
	ret nz                                           ; $4bf7: $c0

	ld bc, $01a0                                     ; $4bf8: $01 $a0 $01
	inc bc                                           ; $4bfb: $03
	rst SubAFromBC                                          ; $4bfc: $e7
	ret nz                                           ; $4bfd: $c0

	ld bc, $06a0                                     ; $4bfe: $01 $a0 $06
	inc b                                            ; $4c01: $04
	ld e, l                                          ; $4c02: $5d
	pop bc                                           ; $4c03: $c1
	ld e, e                                          ; $4c04: $5b
	ret nz                                           ; $4c05: $c0

	ld bc, $01a0                                     ; $4c06: $01 $a0 $01
	inc b                                            ; $4c09: $04
	ld h, [hl]                                       ; $4c0a: $66
	ld bc, $84d4                                     ; $4c0b: $01 $d4 $84
	pop hl                                           ; $4c0e: $e1
	ld [bc], a                                       ; $4c0f: $02
	ld [bc], a                                       ; $4c10: $02
	ld b, b                                          ; $4c11: $40
	ret nz                                           ; $4c12: $c0

	ld bc, $06a0                                     ; $4c13: $01 $a0 $06
	inc bc                                           ; $4c16: $03
	ld d, e                                          ; $4c17: $53
	ret nz                                           ; $4c18: $c0

	ld bc, $01a0                                     ; $4c19: $01 $a0 $01
	inc bc                                           ; $4c1c: $03
	ld e, b                                          ; $4c1d: $58
	ret nz                                           ; $4c1e: $c0

	ld bc, $06a0                                     ; $4c1f: $01 $a0 $06
	inc b                                            ; $4c22: $04
	ld l, $c0                                        ; $4c23: $2e $c0
	ld bc, $01a0                                     ; $4c25: $01 $a0 $01
	inc bc                                           ; $4c28: $03
	ld h, d                                          ; $4c29: $62
	ret nz                                           ; $4c2a: $c0

	ld bc, $06a0                                     ; $4c2b: $01 $a0 $06
	inc b                                            ; $4c2e: $04
	inc [hl]                                         ; $4c2f: $34
	ret nz                                           ; $4c30: $c0

	or e                                             ; $4c31: $b3
	pop hl                                           ; $4c32: $e1
	ld [bc], a                                       ; $4c33: $02
	ld [bc], a                                       ; $4c34: $02
	call z, $01c0                                    ; $4c35: $cc $c0 $01
	and b                                            ; $4c38: $a0
	rlca                                             ; $4c39: $07
	inc bc                                           ; $4c3a: $03
	ld a, d                                          ; $4c3b: $7a
	ret nz                                           ; $4c3c: $c0

	or e                                             ; $4c3d: $b3
	pop hl                                           ; $4c3e: $e1
	ld [bc], a                                       ; $4c3f: $02
	ld [bc], a                                       ; $4c40: $02
	ld b, b                                          ; $4c41: $40
	ret nz                                           ; $4c42: $c0

	ld bc, $06a0                                     ; $4c43: $01 $a0 $06
	inc b                                            ; $4c46: $04
	ld a, $c0                                        ; $4c47: $3e $c0
	ld bc, $01a0                                     ; $4c49: $01 $a0 $01
	inc bc                                           ; $4c4c: $03
	sub c                                            ; $4c4d: $91
	ret nz                                           ; $4c4e: $c0

	or e                                             ; $4c4f: $b3
	pop hl                                           ; $4c50: $e1
	ld [bc], a                                       ; $4c51: $02
	ld [bc], a                                       ; $4c52: $02
	call z, $01c0                                    ; $4c53: $cc $c0 $01
	and b                                            ; $4c56: $a0
	rlca                                             ; $4c57: $07
	inc bc                                           ; $4c58: $03
	sub l                                            ; $4c59: $95
	ret nz                                           ; $4c5a: $c0

	ld bc, $01a0                                     ; $4c5b: $01 $a0 $01
	inc bc                                           ; $4c5e: $03
	xor c                                            ; $4c5f: $a9
	ret nz                                           ; $4c60: $c0

	ld bc, $06a0                                     ; $4c61: $01 $a0 $06
	inc bc                                           ; $4c64: $03
	xor l                                            ; $4c65: $ad
	ret nz                                           ; $4c66: $c0

	ld bc, $07a0                                     ; $4c67: $01 $a0 $07
	inc bc                                           ; $4c6a: $03
	or a                                             ; $4c6b: $b7
	ret nz                                           ; $4c6c: $c0

	ld bc, $01a0                                     ; $4c6d: $01 $a0 $01
	inc bc                                           ; $4c70: $03
	cp l                                             ; $4c71: $bd
	ret nz                                           ; $4c72: $c0

	ld bc, $06a0                                     ; $4c73: $01 $a0 $06
	inc b                                            ; $4c76: $04
	ld l, h                                          ; $4c77: $6c
	ret nz                                           ; $4c78: $c0

	ld bc, $07a0                                     ; $4c79: $01 $a0 $07
	inc b                                            ; $4c7c: $04
	ld [hl], d                                       ; $4c7d: $72
	ret nz                                           ; $4c7e: $c0

	or e                                             ; $4c7f: $b3
	pop hl                                           ; $4c80: $e1
	ld [bc], a                                       ; $4c81: $02
	ld [bc], a                                       ; $4c82: $02
	ld b, b                                          ; $4c83: $40
	ret nz                                           ; $4c84: $c0

	ld bc, $06a0                                     ; $4c85: $01 $a0 $06
	inc b                                            ; $4c88: $04
	ld a, e                                          ; $4c89: $7b
	pop bc                                           ; $4c8a: $c1
	ld e, e                                          ; $4c8b: $5b
	ret nz                                           ; $4c8c: $c0

	ld bc, $01a0                                     ; $4c8d: $01 $a0 $01
	inc b                                            ; $4c90: $04
	ld h, [hl]                                       ; $4c91: $66
	ld bc, $4ed5                                     ; $4c92: $01 $d5 $4e
	pop hl                                           ; $4c95: $e1
	ld [bc], a                                       ; $4c96: $02
	ld [bc], a                                       ; $4c97: $02
	call z, $01c0                                    ; $4c98: $cc $c0 $01
	and b                                            ; $4c9b: $a0
	rlca                                             ; $4c9c: $07
	inc b                                            ; $4c9d: $04
	ld a, a                                          ; $4c9e: $7f
	ret nz                                           ; $4c9f: $c0

	ld bc, $01a0                                     ; $4ca0: $01 $a0 $01
	inc b                                            ; $4ca3: $04
	adc d                                            ; $4ca4: $8a
	ret nz                                           ; $4ca5: $c0

	ld bc, $07a0                                     ; $4ca6: $01 $a0 $07
	inc b                                            ; $4ca9: $04
	sub d                                            ; $4caa: $92
	ret nz                                           ; $4cab: $c0

	ld bc, $01a0                                     ; $4cac: $01 $a0 $01
	inc b                                            ; $4caf: $04
	sbc a                                            ; $4cb0: $9f
	ret nz                                           ; $4cb1: $c0

	ld bc, $07a0                                     ; $4cb2: $01 $a0 $07
	inc b                                            ; $4cb5: $04
	and [hl]                                         ; $4cb6: $a6
	ret nz                                           ; $4cb7: $c0

	ld bc, $01a0                                     ; $4cb8: $01 $a0 $01
	inc b                                            ; $4cbb: $04
	or d                                             ; $4cbc: $b2
	ret nz                                           ; $4cbd: $c0

	ld bc, $07a0                                     ; $4cbe: $01 $a0 $07
	inc b                                            ; $4cc1: $04
	or [hl]                                          ; $4cc2: $b6
	ret nz                                           ; $4cc3: $c0

	ld bc, $01a0                                     ; $4cc4: $01 $a0 $01
	inc b                                            ; $4cc7: $04
	cp [hl]                                          ; $4cc8: $be
	ret nz                                           ; $4cc9: $c0

	ld bc, $07a0                                     ; $4cca: $01 $a0 $07
	inc b                                            ; $4ccd: $04
	push bc                                          ; $4cce: $c5
	ret nz                                           ; $4ccf: $c0

	ld bc, $01a0                                     ; $4cd0: $01 $a0 $01
	inc b                                            ; $4cd3: $04
	db $d3                                           ; $4cd4: $d3
	ret nz                                           ; $4cd5: $c0

	ld bc, $07a0                                     ; $4cd6: $01 $a0 $07
	inc b                                            ; $4cd9: $04
	db $db                                           ; $4cda: $db
	pop bc                                           ; $4cdb: $c1
	ld e, e                                          ; $4cdc: $5b
	ret nz                                           ; $4cdd: $c0

	ld bc, $01a0                                     ; $4cde: $01 $a0 $01
	inc b                                            ; $4ce1: $04
	jp hl                                            ; $4ce2: $e9


	push hl                                          ; $4ce3: $e5
	inc sp                                           ; $4ce4: $33
	nop                                              ; $4ce5: $00
	nop                                              ; $4ce6: $00
	add hl, bc                                       ; $4ce7: $09
	ret nz                                           ; $4ce8: $c0

	ei                                               ; $4ce9: $fb
	pop hl                                           ; $4cea: $e1
	ld [bc], a                                       ; $4ceb: $02
	ld [bc], a                                       ; $4cec: $02
	ld b, b                                          ; $4ced: $40
	add e                                            ; $4cee: $83
	ret nz                                           ; $4cef: $c0

	dec de                                           ; $4cf0: $1b
	jp c, $d002                                      ; $4cf1: $da $02 $d0

	pop de                                           ; $4cf4: $d1
	ld c, l                                          ; $4cf5: $4d
	ldh [rP1], a                                     ; $4cf6: $e0 $00
	xor $c0                                          ; $4cf8: $ee $c0
	ld bc, $06a0                                     ; $4cfa: $01 $a0 $06
	ld bc, $c03a                                     ; $4cfd: $01 $3a $c0
	ld bc, $01a0                                     ; $4d00: $01 $a0 $01
	inc b                                            ; $4d03: $04
	ldh a, [c]                                       ; $4d04: $f2
	ret nz                                           ; $4d05: $c0

	ld bc, $06a0                                     ; $4d06: $01 $a0 $06
	inc b                                            ; $4d09: $04
	ei                                               ; $4d0a: $fb
	ret nz                                           ; $4d0b: $c0

	ld bc, $01a0                                     ; $4d0c: $01 $a0 $01
	dec b                                            ; $4d0f: $05
	ld b, $c0                                        ; $4d10: $06 $c0
	ld bc, $06a0                                     ; $4d12: $01 $a0 $06
	dec b                                            ; $4d15: $05
	db $10                                           ; $4d16: $10
	ret nz                                           ; $4d17: $c0

	ld bc, $01a0                                     ; $4d18: $01 $a0 $01
	dec b                                            ; $4d1b: $05
	ld a, [de]                                       ; $4d1c: $1a
	ret nz                                           ; $4d1d: $c0

	ld bc, $06a0                                     ; $4d1e: $01 $a0 $06
	ld bc, $c065                                     ; $4d21: $01 $65 $c0
	ld bc, $01a0                                     ; $4d24: $01 $a0 $01
	ld bc, $c06b                                     ; $4d27: $01 $6b $c0
	ld bc, $06a0                                     ; $4d2a: $01 $a0 $06
	ld bc, $c06f                                     ; $4d2d: $01 $6f $c0
	ld bc, $01a0                                     ; $4d30: $01 $a0 $01
	ld bc, $c07d                                     ; $4d33: $01 $7d $c0
	ld bc, $06a0                                     ; $4d36: $01 $a0 $06
	ld bc, $c18e                                     ; $4d39: $01 $8e $c1
	ld e, e                                          ; $4d3c: $5b
	ret nz                                           ; $4d3d: $c0

	ld bc, $01a0                                     ; $4d3e: $01 $a0 $01
	ld bc, $029a                                     ; $4d41: $01 $9a $02
	jp nc, $45d3                                     ; $4d44: $d2 $d3 $45

	ret nz                                           ; $4d47: $c0

	ld bc, $06a0                                     ; $4d48: $01 $a0 $06
	nop                                              ; $4d4b: $00
	ld b, [hl]                                       ; $4d4c: $46
	ret nz                                           ; $4d4d: $c0

	ld bc, $01a0                                     ; $4d4e: $01 $a0 $01
	nop                                              ; $4d51: $00
	ld c, c                                          ; $4d52: $49
	ret nz                                           ; $4d53: $c0

	ld bc, $06a0                                     ; $4d54: $01 $a0 $06
	ld bc, $c09e                                     ; $4d57: $01 $9e $c0
	ld bc, $01a0                                     ; $4d5a: $01 $a0 $01
	inc b                                            ; $4d5d: $04
	ldh a, [c]                                       ; $4d5e: $f2
	ret nz                                           ; $4d5f: $c0

	ld bc, $06a0                                     ; $4d60: $01 $a0 $06
	dec b                                            ; $4d63: $05
	rra                                              ; $4d64: $1f
	ret nz                                           ; $4d65: $c0

	ld bc, $01a0                                     ; $4d66: $01 $a0 $01
	dec b                                            ; $4d69: $05
	ld l, $c0                                        ; $4d6a: $2e $c0
	ld bc, $06a0                                     ; $4d6c: $01 $a0 $06
	dec b                                            ; $4d6f: $05
	ld a, [hl-]                                      ; $4d70: $3a
	ret nz                                           ; $4d71: $c0

	ld bc, $01a0                                     ; $4d72: $01 $a0 $01
	dec b                                            ; $4d75: $05
	ccf                                              ; $4d76: $3f
	ret nz                                           ; $4d77: $c0

	ld bc, $06a0                                     ; $4d78: $01 $a0 $06
	dec b                                            ; $4d7b: $05
	ld c, b                                          ; $4d7c: $48
	ret nz                                           ; $4d7d: $c0

	ld bc, $01a0                                     ; $4d7e: $01 $a0 $01
	dec b                                            ; $4d81: $05
	ld c, l                                          ; $4d82: $4d
	ret nz                                           ; $4d83: $c0

	ld bc, $06a0                                     ; $4d84: $01 $a0 $06
	ld bc, $e065                                     ; $4d87: $01 $65 $e0
	ld [bc], a                                       ; $4d8a: $02
	sub l                                            ; $4d8b: $95
	ld bc, $44d4                                     ; $4d8c: $01 $d4 $44
	ret nz                                           ; $4d8f: $c0

	ld bc, $06a0                                     ; $4d90: $01 $a0 $06
	nop                                              ; $4d93: $00
	rst JumpTable                                          ; $4d94: $c7
	ret nz                                           ; $4d95: $c0

	ld bc, $01a0                                     ; $4d96: $01 $a0 $01
	nop                                              ; $4d99: $00
	ld c, c                                          ; $4d9a: $49
	ret nz                                           ; $4d9b: $c0

	ld bc, $06a0                                     ; $4d9c: $01 $a0 $06
	ld [bc], a                                       ; $4d9f: $02
	push de                                          ; $4da0: $d5
	ret nz                                           ; $4da1: $c0

	ld bc, $01a0                                     ; $4da2: $01 $a0 $01
	ld [bc], a                                       ; $4da5: $02
	sbc $c0                                          ; $4da6: $de $c0
	ld bc, $06a0                                     ; $4da8: $01 $a0 $06
	ld [bc], a                                       ; $4dab: $02
	rst SubAFromBC                                          ; $4dac: $e7
	ret nz                                           ; $4dad: $c0

	ld bc, $01a0                                     ; $4dae: $01 $a0 $01
	dec b                                            ; $4db1: $05
	ld e, l                                          ; $4db2: $5d
	ret nz                                           ; $4db3: $c0

	ld bc, $06a0                                     ; $4db4: $01 $a0 $06
	dec b                                            ; $4db7: $05
	ld l, h                                          ; $4db8: $6c
	ret nz                                           ; $4db9: $c0

	ld bc, $01a0                                     ; $4dba: $01 $a0 $01
	dec b                                            ; $4dbd: $05
	ld l, $c0                                        ; $4dbe: $2e $c0
	ld bc, $06a0                                     ; $4dc0: $01 $a0 $06
	dec b                                            ; $4dc3: $05
	ld a, l                                          ; $4dc4: $7d
	ret nz                                           ; $4dc5: $c0

	ld bc, $01a0                                     ; $4dc6: $01 $a0 $01
	ld bc, wGenericTileDataFinalDest+1                                     ; $4dc9: $01 $e7 $c0
	ld bc, $06a0                                     ; $4dcc: $01 $a0 $06
	ld bc, $c1f5                                     ; $4dcf: $01 $f5 $c1
	ld e, e                                          ; $4dd2: $5b
	ld bc, $0bd5                                     ; $4dd3: $01 $d5 $0b
	ldh [rSC], a                                     ; $4dd6: $e0 $02
	and h                                            ; $4dd8: $a4
	pop bc                                           ; $4dd9: $c1
	ld e, e                                          ; $4dda: $5b
	ret nz                                           ; $4ddb: $c0

	ld bc, $01a0                                     ; $4ddc: $01 $a0 $01
	ld bc, $e51d                                     ; $4ddf: $01 $1d $e5
	inc sp                                           ; $4de2: $33
	nop                                              ; $4de3: $00
	nop                                              ; $4de4: $00
	inc c                                            ; $4de5: $0c
	ret nz                                           ; $4de6: $c0

	ld bc, $06a0                                     ; $4de7: $01 $a0 $06
	dec b                                            ; $4dea: $05
	add [hl]                                         ; $4deb: $86
	ret nz                                           ; $4dec: $c0

	ld bc, $01a0                                     ; $4ded: $01 $a0 $01
	nop                                              ; $4df0: $00
	ld c, c                                          ; $4df1: $49
	add hl, bc                                       ; $4df2: $09
	rla                                              ; $4df3: $17
	ret nz                                           ; $4df4: $c0

	ld hl, $dad2                                     ; $4df5: $21 $d2 $da
	add c                                            ; $4df8: $81
	ret nz                                           ; $4df9: $c0

	add b                                            ; $4dfa: $80
	ld bc, $07d3                                     ; $4dfb: $01 $d3 $07
	ret nz                                           ; $4dfe: $c0

	ld [hl+], a                                      ; $4dff: $22
	pop de                                           ; $4e00: $d1
	jp c, $01e4                                      ; $4e01: $da $e4 $01

	ccf                                              ; $4e04: $3f
	ld bc, $03d2                                     ; $4e05: $01 $d2 $03
	db $e4                                           ; $4e08: $e4
	nop                                              ; $4e09: $00
	ld [bc], a                                       ; $4e0a: $02
	add hl, bc                                       ; $4e0b: $09
	pop bc                                           ; $4e0c: $c1
	inc [hl]                                         ; $4e0d: $34
	add e                                            ; $4e0e: $83
	ret nz                                           ; $4e0f: $c0

	dec de                                           ; $4e10: $1b
	jp c, $d002                                      ; $4e11: $da $02 $d0

	pop de                                           ; $4e14: $d1
	ld e, d                                          ; $4e15: $5a
	pop hl                                           ; $4e16: $e1
	ld [bc], a                                       ; $4e17: $02
	ld [bc], a                                       ; $4e18: $02
	ld b, b                                          ; $4e19: $40
	ret nz                                           ; $4e1a: $c0

	ld bc, $06a0                                     ; $4e1b: $01 $a0 $06
	ld bc, $c028                                     ; $4e1e: $01 $28 $c0
	ld bc, $01a0                                     ; $4e21: $01 $a0 $01
	ld bc, $c030                                     ; $4e24: $01 $30 $c0
	ld bc, $06a0                                     ; $4e27: $01 $a0 $06
	ld bc, $c03a                                     ; $4e2a: $01 $3a $c0
	ld bc, $01a0                                     ; $4e2d: $01 $a0 $01
	dec b                                            ; $4e30: $05
	adc h                                            ; $4e31: $8c
	ret nz                                           ; $4e32: $c0

	ld bc, $06a0                                     ; $4e33: $01 $a0 $06
	dec b                                            ; $4e36: $05
	sub [hl]                                         ; $4e37: $96
	ret nz                                           ; $4e38: $c0

	ld bc, $01a0                                     ; $4e39: $01 $a0 $01
	dec b                                            ; $4e3c: $05
	and b                                            ; $4e3d: $a0
	ret nz                                           ; $4e3e: $c0

	ld bc, $06a0                                     ; $4e3f: $01 $a0 $06
	dec b                                            ; $4e42: $05
	xor h                                            ; $4e43: $ac
	ret nz                                           ; $4e44: $c0

	ld bc, $01a0                                     ; $4e45: $01 $a0 $01
	dec b                                            ; $4e48: $05
	or h                                             ; $4e49: $b4
	ret nz                                           ; $4e4a: $c0

	ld bc, $06a0                                     ; $4e4b: $01 $a0 $06
	dec b                                            ; $4e4e: $05
	cp l                                             ; $4e4f: $bd
	ret nz                                           ; $4e50: $c0

	ld bc, $01a0                                     ; $4e51: $01 $a0 $01
	ld bc, $c06b                                     ; $4e54: $01 $6b $c0
	ld bc, $06a0                                     ; $4e57: $01 $a0 $06
	ld bc, $c06f                                     ; $4e5a: $01 $6f $c0
	ld bc, $01a0                                     ; $4e5d: $01 $a0 $01
	dec b                                            ; $4e60: $05
	push bc                                          ; $4e61: $c5
	ret nz                                           ; $4e62: $c0

	ld bc, $06a0                                     ; $4e63: $01 $a0 $06
	ld bc, $c18e                                     ; $4e66: $01 $8e $c1
	ld e, e                                          ; $4e69: $5b
	ret nz                                           ; $4e6a: $c0

	ld bc, $01a0                                     ; $4e6b: $01 $a0 $01
	ld bc, $029a                                     ; $4e6e: $01 $9a $02
	jp nc, Jump_085_6dd3                             ; $4e71: $d2 $d3 $6d

	pop hl                                           ; $4e74: $e1
	ld [bc], a                                       ; $4e75: $02
	ld [bc], a                                       ; $4e76: $02
	ld b, b                                          ; $4e77: $40
	ret nz                                           ; $4e78: $c0

	ld bc, $06a0                                     ; $4e79: $01 $a0 $06
	nop                                              ; $4e7c: $00
	ld b, [hl]                                       ; $4e7d: $46
	ret nz                                           ; $4e7e: $c0

	ld bc, $01a0                                     ; $4e7f: $01 $a0 $01
	ld bc, $c030                                     ; $4e82: $01 $30 $c0
	ld bc, $06a0                                     ; $4e85: $01 $a0 $06
	ld bc, $c09e                                     ; $4e88: $01 $9e $c0
	ld bc, $01a0                                     ; $4e8b: $01 $a0 $01
	dec b                                            ; $4e8e: $05
	adc h                                            ; $4e8f: $8c
	ret nz                                           ; $4e90: $c0

	ld bc, $06a0                                     ; $4e91: $01 $a0 $06
	dec b                                            ; $4e94: $05
	jp nc, $01c0                                     ; $4e95: $d2 $c0 $01

	and b                                            ; $4e98: $a0
	ld bc, $db05                                     ; $4e99: $01 $05 $db
	ret nz                                           ; $4e9c: $c0

	ld bc, $06a0                                     ; $4e9d: $01 $a0 $06
	dec b                                            ; $4ea0: $05
	db $e3                                           ; $4ea1: $e3
	ret nz                                           ; $4ea2: $c0

	ld bc, $01a0                                     ; $4ea3: $01 $a0 $01
	dec b                                            ; $4ea6: $05
	ldh a, [$c0]                                     ; $4ea7: $f0 $c0
	ld bc, $06a0                                     ; $4ea9: $01 $a0 $06
	ld b, $01                                        ; $4eac: $06 $01
	ret nz                                           ; $4eae: $c0

	ld bc, $01a0                                     ; $4eaf: $01 $a0 $01
	ld b, $09                                        ; $4eb2: $06 $09
	ret nz                                           ; $4eb4: $c0

	ld bc, $06a0                                     ; $4eb5: $01 $a0 $06
	ld b, $0f                                        ; $4eb8: $06 $0f
	ret nz                                           ; $4eba: $c0

	ld bc, $01a0                                     ; $4ebb: $01 $a0 $01
	ld b, $17                                        ; $4ebe: $06 $17
	ret nz                                           ; $4ec0: $c0

	ld bc, $06a0                                     ; $4ec1: $01 $a0 $06
	ld b, $1d                                        ; $4ec4: $06 $1d
	ret nz                                           ; $4ec6: $c0

	ld bc, $01a0                                     ; $4ec7: $01 $a0 $01
	ld b, $2a                                        ; $4eca: $06 $2a
	ret nz                                           ; $4ecc: $c0

	ld bc, $06a0                                     ; $4ecd: $01 $a0 $06
	ld b, $36                                        ; $4ed0: $06 $36
	ret nz                                           ; $4ed2: $c0

	ld bc, $01a0                                     ; $4ed3: $01 $a0 $01
	ld b, $3d                                        ; $4ed6: $06 $3d
	ret nz                                           ; $4ed8: $c0

	ld bc, $06a0                                     ; $4ed9: $01 $a0 $06
	ld b, $42                                        ; $4edc: $06 $42
	ldh [rSB], a                                     ; $4ede: $e0 $01
	ld b, b                                          ; $4ee0: $40
	ld bc, $54d4                                     ; $4ee1: $01 $d4 $54
	pop hl                                           ; $4ee4: $e1
	ld [bc], a                                       ; $4ee5: $02
	ld [bc], a                                       ; $4ee6: $02
	ld b, b                                          ; $4ee7: $40
	ret nz                                           ; $4ee8: $c0

	ld bc, $06a0                                     ; $4ee9: $01 $a0 $06
	nop                                              ; $4eec: $00
	ld b, [hl]                                       ; $4eed: $46
	ret nz                                           ; $4eee: $c0

	ld bc, $01a0                                     ; $4eef: $01 $a0 $01
	ld bc, $c030                                     ; $4ef2: $01 $30 $c0
	ld bc, $06a0                                     ; $4ef5: $01 $a0 $06
	ld bc, $c0b4                                     ; $4ef8: $01 $b4 $c0
	ld bc, $01a0                                     ; $4efb: $01 $a0 $01
	ld bc, $c0bb                                     ; $4efe: $01 $bb $c0
	ld bc, $06a0                                     ; $4f01: $01 $a0 $06
	ld [bc], a                                       ; $4f04: $02
	rst SubAFromBC                                          ; $4f05: $e7
	ret nz                                           ; $4f06: $c0

	ld bc, $01a0                                     ; $4f07: $01 $a0 $01
	ld b, $4a                                        ; $4f0a: $06 $4a
	ret nz                                           ; $4f0c: $c0

	ld bc, $06a0                                     ; $4f0d: $01 $a0 $06
	ld b, $57                                        ; $4f10: $06 $57
	ret nz                                           ; $4f12: $c0

	ld bc, $01a0                                     ; $4f13: $01 $a0 $01
	ld b, $60                                        ; $4f16: $06 $60
	ret nz                                           ; $4f18: $c0

	ld bc, $06a0                                     ; $4f19: $01 $a0 $06
	ld b, $01                                        ; $4f1c: $06 $01
	ret nz                                           ; $4f1e: $c0

	ld bc, $01a0                                     ; $4f1f: $01 $a0 $01
	ld b, $71                                        ; $4f22: $06 $71
	ret nz                                           ; $4f24: $c0

	ld bc, $06a0                                     ; $4f25: $01 $a0 $06
	ld b, $7c                                        ; $4f28: $06 $7c
	ret nz                                           ; $4f2a: $c0

	ld bc, $01a0                                     ; $4f2b: $01 $a0 $01

jr_085_4f2e:
	ld bc, wGenericTileDataFinalDest+1                                     ; $4f2e: $01 $e7 $c0
	ld bc, $06a0                                     ; $4f31: $01 $a0 $06
	ld b, $86                                        ; $4f34: $06 $86
	pop bc                                           ; $4f36: $c1
	ld e, e                                          ; $4f37: $5b
	ld bc, $03d5                                     ; $4f38: $01 $d5 $03
	ldh [rP1], a                                     ; $4f3b: $e0 $00
	xor l                                            ; $4f3d: $ad
	push hl                                          ; $4f3e: $e5
	inc sp                                           ; $4f3f: $33
	nop                                              ; $4f40: $00
	nop                                              ; $4f41: $00
	add hl, bc                                       ; $4f42: $09
	and l                                            ; $4f43: $a5
	add e                                            ; $4f44: $83
	ret nz                                           ; $4f45: $c0

	dec de                                           ; $4f46: $1b
	jp c, $d002                                      ; $4f47: $da $02 $d0

	pop de                                           ; $4f4a: $d1
	jr z, jr_085_4f2e                                ; $4f4b: $28 $e1

	ld [bc], a                                       ; $4f4d: $02
	ld [bc], a                                       ; $4f4e: $02
	ld b, b                                          ; $4f4f: $40
	ret nz                                           ; $4f50: $c0

	ld bc, $06a0                                     ; $4f51: $01 $a0 $06
	ld bc, $c028                                     ; $4f54: $01 $28 $c0
	ld bc, $01a0                                     ; $4f57: $01 $a0 $01
	ld bc, $e030                                     ; $4f5a: $01 $30 $e0
	ld bc, $c011                                     ; $4f5d: $01 $11 $c0
	ld bc, $06a0                                     ; $4f60: $01 $a0 $06
	ld b, $90                                        ; $4f63: $06 $90
	ret nz                                           ; $4f65: $c0

	ld bc, $01a0                                     ; $4f66: $01 $a0 $01
	ld b, $9b                                        ; $4f69: $06 $9b
	ret nz                                           ; $4f6b: $c0

	ld bc, $06a0                                     ; $4f6c: $01 $a0 $06
	nop                                              ; $4f6f: $00
	ld b, c                                          ; $4f70: $41
	ldh [rP1], a                                     ; $4f71: $e0 $00
	sub d                                            ; $4f73: $92
	ld [bc], a                                       ; $4f74: $02
	jp nc, $39d3                                     ; $4f75: $d2 $d3 $39

	pop hl                                           ; $4f78: $e1
	ld [bc], a                                       ; $4f79: $02
	ld [bc], a                                       ; $4f7a: $02
	ld b, b                                          ; $4f7b: $40
	ret nz                                           ; $4f7c: $c0

	ld bc, $06a0                                     ; $4f7d: $01 $a0 $06
	nop                                              ; $4f80: $00
	ld b, [hl]                                       ; $4f81: $46
	ret nz                                           ; $4f82: $c0

	ld bc, $01a0                                     ; $4f83: $01 $a0 $01
	ld bc, $c030                                     ; $4f86: $01 $30 $c0
	ld bc, $06a0                                     ; $4f89: $01 $a0 $06
	nop                                              ; $4f8c: $00
	ld d, h                                          ; $4f8d: $54
	ret nz                                           ; $4f8e: $c0

	ld bc, $01a0                                     ; $4f8f: $01 $a0 $01
	nop                                              ; $4f92: $00
	ld e, a                                          ; $4f93: $5f
	ret nz                                           ; $4f94: $c0

	ld bc, $06a0                                     ; $4f95: $01 $a0 $06
	ld b, $a6                                        ; $4f98: $06 $a6
	ret nz                                           ; $4f9a: $c0

	ld bc, $01a0                                     ; $4f9b: $01 $a0 $01
	ld b, $9b                                        ; $4f9e: $06 $9b
	ldh [rP1], a                                     ; $4fa0: $e0 $00
	sbc c                                            ; $4fa2: $99
	ret nz                                           ; $4fa3: $c0

	ld bc, $01a0                                     ; $4fa4: $01 $a0 $01
	ld b, $b0                                        ; $4fa7: $06 $b0
	ret nz                                           ; $4fa9: $c0

	ld bc, $06a0                                     ; $4faa: $01 $a0 $06
	ld b, $b7                                        ; $4fad: $06 $b7
	pop bc                                           ; $4faf: $c1
	ld e, e                                          ; $4fb0: $5b
	ld bc, $2bd4                                     ; $4fb1: $01 $d4 $2b
	pop hl                                           ; $4fb4: $e1
	ld [bc], a                                       ; $4fb5: $02
	ld [bc], a                                       ; $4fb6: $02
	ld b, b                                          ; $4fb7: $40
	ret nz                                           ; $4fb8: $c0

	ld bc, $06a0                                     ; $4fb9: $01 $a0 $06
	nop                                              ; $4fbc: $00
	ld b, [hl]                                       ; $4fbd: $46
	ret nz                                           ; $4fbe: $c0

	ld bc, $01a0                                     ; $4fbf: $01 $a0 $01
	ld bc, $c030                                     ; $4fc2: $01 $30 $c0
	ld bc, $06a0                                     ; $4fc5: $01 $a0 $06
	ld b, $bc                                        ; $4fc8: $06 $bc
	ret nz                                           ; $4fca: $c0

	ld bc, $01a0                                     ; $4fcb: $01 $a0 $01
	ld b, $c4                                        ; $4fce: $06 $c4
	ret nz                                           ; $4fd0: $c0

	ld bc, $06a0                                     ; $4fd1: $01 $a0 $06
	ld b, $a6                                        ; $4fd4: $06 $a6
	ret nz                                           ; $4fd6: $c0

	ld bc, $01a0                                     ; $4fd7: $01 $a0 $01
	ld b, $9b                                        ; $4fda: $06 $9b
	ldh [rP1], a                                     ; $4fdc: $e0 $00
	ld [hl], b                                       ; $4fde: $70
	ld bc, $03d5                                     ; $4fdf: $01 $d5 $03
	ldh [rP1], a                                     ; $4fe2: $e0 $00
	ld b, $e5                                        ; $4fe4: $06 $e5
	inc sp                                           ; $4fe6: $33
	nop                                              ; $4fe7: $00
	nop                                              ; $4fe8: $00
	ld a, [de]                                       ; $4fe9: $1a
	or b                                             ; $4fea: $b0
	ld a, a                                          ; $4feb: $7f
	rrca                                             ; $4fec: $0f
	pop hl                                           ; $4fed: $e1
	ld [bc], a                                       ; $4fee: $02
	ld [bc], a                                       ; $4fef: $02
	ld b, b                                          ; $4ff0: $40
	ldh [rP1], a                                     ; $4ff1: $e0 $00
	adc c                                            ; $4ff3: $89
	pop bc                                           ; $4ff4: $c1
	ld e, e                                          ; $4ff5: $5b
	ret nz                                           ; $4ff6: $c0

	ld bc, $01a0                                     ; $4ff7: $01 $a0 $01
	ld b, $d2                                        ; $4ffa: $06 $d2
	rst $38                                          ; $4ffc: $ff
	ld b, $c0                                        ; $4ffd: $06 $c0
	ld bc, $01a0                                     ; $4fff: $01 $a0 $01
	ld b, $df                                        ; $5002: $06 $df
	ld a, [de]                                       ; $5004: $1a
	ret nz                                           ; $5005: $c0

	ld bc, $01a0                                     ; $5006: $01 $a0 $01
	ld b, $e7                                        ; $5009: $06 $e7
	ret nz                                           ; $500b: $c0

	ld bc, $06a0                                     ; $500c: $01 $a0 $06

jr_085_500f:
	ld b, $eb                                        ; $500f: $06 $eb
	ret nz                                           ; $5011: $c0

	ld bc, $01a0                                     ; $5012: $01 $a0 $01
	ld b, $f9                                        ; $5015: $06 $f9
	ret nz                                           ; $5017: $c0

	ld bc, $06a0                                     ; $5018: $01 $a0 $06
	rlca                                             ; $501b: $07
	dec b                                            ; $501c: $05
	pop bc                                           ; $501d: $c1
	ld e, e                                          ; $501e: $5b
	ld a, [de]                                       ; $501f: $1a
	ret nz                                           ; $5020: $c0

	ld bc, $01a0                                     ; $5021: $01 $a0 $01
	ld bc, $c06b                                     ; $5024: $01 $6b $c0
	ld bc, $06a0                                     ; $5027: $01 $a0 $06
	rlca                                             ; $502a: $07
	ld c, $c0                                        ; $502b: $0e $c0
	ld bc, $01a0                                     ; $502d: $01 $a0 $01
	rlca                                             ; $5030: $07
	dec e                                            ; $5031: $1d
	ret nz                                           ; $5032: $c0

	ld bc, $06a0                                     ; $5033: $01 $a0 $06
	rlca                                             ; $5036: $07
	dec h                                            ; $5037: $25
	pop bc                                           ; $5038: $c1
	ld e, e                                          ; $5039: $5b
	ld [de], a                                       ; $503a: $12
	ret nz                                           ; $503b: $c0

	ld bc, $06a0                                     ; $503c: $01 $a0 $06
	nop                                              ; $503f: $00
	ld b, c                                          ; $5040: $41
	ret nz                                           ; $5041: $c0

	ld bc, $01a0                                     ; $5042: $01 $a0 $01
	ld b, $e7                                        ; $5045: $06 $e7
	ret nz                                           ; $5047: $c0

	ld bc, $06a0                                     ; $5048: $01 $a0 $06
	rlca                                             ; $504b: $07
	dec l                                            ; $504c: $2d
	jr nz, jr_085_500f                               ; $504d: $20 $c0

	ld bc, $06a0                                     ; $504f: $01 $a0 $06
	nop                                              ; $5052: $00

jr_085_5053:
	ld b, c                                          ; $5053: $41
	ret nz                                           ; $5054: $c0

	ld bc, $01a0                                     ; $5055: $01 $a0 $01
	ld b, $e7                                        ; $5058: $06 $e7
	ret nz                                           ; $505a: $c0

	ld bc, $06a0                                     ; $505b: $01 $a0 $06
	rlca                                             ; $505e: $07
	dec a                                            ; $505f: $3d
	ret nz                                           ; $5060: $c0

	ld bc, $01a0                                     ; $5061: $01 $a0 $01
	nop                                              ; $5064: $00
	jp nz, $01c0                                     ; $5065: $c2 $c0 $01

	and b                                            ; $5068: $a0
	ld b, $07                                        ; $5069: $06 $07
	ld c, e                                          ; $506b: $4b
	pop bc                                           ; $506c: $c1
	ld e, e                                          ; $506d: $5b
	inc c                                            ; $506e: $0c
	ret nz                                           ; $506f: $c0

	ld bc, $06a0                                     ; $5070: $01 $a0 $06
	rlca                                             ; $5073: $07
	ld d, b                                          ; $5074: $50
	ret nz                                           ; $5075: $c0

	ld bc, $01a0                                     ; $5076: $01 $a0 $01
	nop                                              ; $5079: $00
	ld e, a                                          ; $507a: $5f
	ld [de], a                                       ; $507b: $12
	ret nz                                           ; $507c: $c0

	ld bc, $06a0                                     ; $507d: $01 $a0 $06
	rlca                                             ; $5080: $07
	ld e, c                                          ; $5081: $59
	ret nz                                           ; $5082: $c0

	ld bc, $01a0                                     ; $5083: $01 $a0 $01
	rlca                                             ; $5086: $07
	ld e, h                                          ; $5087: $5c
	ret nz                                           ; $5088: $c0

	ld bc, $06a0                                     ; $5089: $01 $a0 $06
	rlca                                             ; $508c: $07
	ld h, d                                          ; $508d: $62
	rlca                                             ; $508e: $07
	rlca                                             ; $508f: $07
	add hl, bc                                       ; $5090: $09
	jr nz, jr_085_5053                               ; $5091: $20 $c0

	ld hl, $dad2                                     ; $5093: $21 $d2 $da
	add e                                            ; $5096: $83
	ret nz                                           ; $5097: $c0

	call c, $01d4                                    ; $5098: $dc $d4 $01
	ret nc                                           ; $509b: $d0

	inc bc                                           ; $509c: $03
	db $e4                                           ; $509d: $e4
	nop                                              ; $509e: $00
	inc d                                            ; $509f: $14
	ld bc, $03d1                                     ; $50a0: $01 $d1 $03
	db $e4                                           ; $50a3: $e4
	inc b                                            ; $50a4: $04
	ld [hl], a                                       ; $50a5: $77
	ld bc, $03d2                                     ; $50a6: $01 $d2 $03
	db $e4                                           ; $50a9: $e4
	ld bc, $015f                                     ; $50aa: $01 $5f $01
	db $d3                                           ; $50ad: $d3
	inc bc                                           ; $50ae: $03
	db $e4                                           ; $50af: $e4
	inc bc                                           ; $50b0: $03
	inc h                                            ; $50b1: $24
	add hl, bc                                       ; $50b2: $09
	inc de                                           ; $50b3: $13
	add c                                            ; $50b4: $81
	ret nz                                           ; $50b5: $c0

	add b                                            ; $50b6: $80
	ld bc, $07d3                                     ; $50b7: $01 $d3 $07
	ret nz                                           ; $50ba: $c0

	ld [hl+], a                                      ; $50bb: $22
	pop de                                           ; $50bc: $d1
	jp c, $00e4                                      ; $50bd: $da $e4 $00

	rlc c                                            ; $50c0: $cb $01
	jp nc, $e403                                     ; $50c2: $d2 $03 $e4

	nop                                              ; $50c5: $00
	ld [bc], a                                       ; $50c6: $02
	add hl, bc                                       ; $50c7: $09
	ret nz                                           ; $50c8: $c0

	ret nz                                           ; $50c9: $c0

	ret nz                                           ; $50ca: $c0

	ld de, $00e3                                     ; $50cb: $11 $e3 $00
	ld d, [hl]                                       ; $50ce: $56
	pop hl                                           ; $50cf: $e1
	ld [bc], a                                       ; $50d0: $02
	ld [bc], a                                       ; $50d1: $02
	ld c, b                                          ; $50d2: $48
	add d                                            ; $50d3: $82
	ret nz                                           ; $50d4: $c0

	dec de                                           ; $50d5: $1b
	jp c, $d002                                      ; $50d6: $da $02 $d0

	pop de                                           ; $50d9: $d1
	ld [hl], $c0                                     ; $50da: $36 $c0
	ld bc, $06a0                                     ; $50dc: $01 $a0 $06
	nop                                              ; $50df: $00
	ld bc, $01c0                                     ; $50e0: $01 $c0 $01
	and b                                            ; $50e3: $a0
	ld bc, $0c00                                     ; $50e4: $01 $00 $0c
	ret nz                                           ; $50e7: $c0

	ld bc, $06a0                                     ; $50e8: $01 $a0 $06
	nop                                              ; $50eb: $00
	inc de                                           ; $50ec: $13
	ret nz                                           ; $50ed: $c0

	ld bc, $01a0                                     ; $50ee: $01 $a0 $01
	nop                                              ; $50f1: $00
	inc e                                            ; $50f2: $1c
	ret nz                                           ; $50f3: $c0

	ld bc, $06a0                                     ; $50f4: $01 $a0 $06
	nop                                              ; $50f7: $00
	inc h                                            ; $50f8: $24
	ret nz                                           ; $50f9: $c0

	ld bc, $01a0                                     ; $50fa: $01 $a0 $01
	nop                                              ; $50fd: $00
	ld l, $c0                                        ; $50fe: $2e $c0
	ld bc, $06a0                                     ; $5100: $01 $a0 $06
	nop                                              ; $5103: $00
	scf                                              ; $5104: $37
	ret nz                                           ; $5105: $c0

	ld bc, $01a0                                     ; $5106: $01 $a0 $01
	nop                                              ; $5109: $00
	ccf                                              ; $510a: $3f
	ret nz                                           ; $510b: $c0

	ld bc, $06a0                                     ; $510c: $01 $a0 $06
	nop                                              ; $510f: $00
	ld c, d                                          ; $5110: $4a
	ld [bc], a                                       ; $5111: $02
	jp nc, $36d3                                     ; $5112: $d2 $d3 $36

	ret nz                                           ; $5115: $c0

	ld bc, $06a0                                     ; $5116: $01 $a0 $06
	nop                                              ; $5119: $00
	ld d, c                                          ; $511a: $51
	ret nz                                           ; $511b: $c0

	ld bc, $01a0                                     ; $511c: $01 $a0 $01
	nop                                              ; $511f: $00
	inc c                                            ; $5120: $0c
	ret nz                                           ; $5121: $c0

	ld bc, $06a0                                     ; $5122: $01 $a0 $06
	nop                                              ; $5125: $00
	ld e, e                                          ; $5126: $5b
	ret nz                                           ; $5127: $c0

	ld bc, $01a0                                     ; $5128: $01 $a0 $01
	nop                                              ; $512b: $00
	ld h, l                                          ; $512c: $65
	ret nz                                           ; $512d: $c0

	ld bc, $06a0                                     ; $512e: $01 $a0 $06
	nop                                              ; $5131: $00
	ld l, h                                          ; $5132: $6c
	ret nz                                           ; $5133: $c0

	ld bc, $01a0                                     ; $5134: $01 $a0 $01
	nop                                              ; $5137: $00
	ld l, $c0                                        ; $5138: $2e $c0
	ld bc, $06a0                                     ; $513a: $01 $a0 $06
	nop                                              ; $513d: $00
	halt                                             ; $513e: $76
	ret nz                                           ; $513f: $c0

	ld bc, $01a0                                     ; $5140: $01 $a0 $01
	nop                                              ; $5143: $00
	ccf                                              ; $5144: $3f
	ret nz                                           ; $5145: $c0

	ld bc, $06a0                                     ; $5146: $01 $a0 $06
	nop                                              ; $5149: $00
	ld a, a                                          ; $514a: $7f
	ld bc, $36d4                                     ; $514b: $01 $d4 $36
	ret nz                                           ; $514e: $c0

	ld bc, $06a0                                     ; $514f: $01 $a0 $06
	nop                                              ; $5152: $00
	ld bc, $01c0                                     ; $5153: $01 $c0 $01
	and b                                            ; $5156: $a0
	ld bc, $0c00                                     ; $5157: $01 $00 $0c
	ret nz                                           ; $515a: $c0

	ld bc, $06a0                                     ; $515b: $01 $a0 $06
	nop                                              ; $515e: $00
	add h                                            ; $515f: $84
	ret nz                                           ; $5160: $c0

	ld bc, $01a0                                     ; $5161: $01 $a0 $01
	nop                                              ; $5164: $00
	adc [hl]                                         ; $5165: $8e
	ret nz                                           ; $5166: $c0

	ld bc, $06a0                                     ; $5167: $01 $a0 $06
	nop                                              ; $516a: $00
	sbc a                                            ; $516b: $9f
	ret nz                                           ; $516c: $c0

	ld bc, $01a0                                     ; $516d: $01 $a0 $01
	nop                                              ; $5170: $00
	ld l, $c0                                        ; $5171: $2e $c0
	ld bc, $06a0                                     ; $5173: $01 $a0 $06
	nop                                              ; $5176: $00
	xor b                                            ; $5177: $a8
	ret nz                                           ; $5178: $c0

	ld bc, $01a0                                     ; $5179: $01 $a0 $01
	nop                                              ; $517c: $00
	ccf                                              ; $517d: $3f
	ret nz                                           ; $517e: $c0

	ld bc, $06a0                                     ; $517f: $01 $a0 $06
	nop                                              ; $5182: $00
	xor a                                            ; $5183: $af
	pop bc                                           ; $5184: $c1
	ld e, e                                          ; $5185: $5b
	push hl                                          ; $5186: $e5
	inc sp                                           ; $5187: $33
	nop                                              ; $5188: $00
	nop                                              ; $5189: $00
	add hl, bc                                       ; $518a: $09
	ld a, l                                          ; $518b: $7d
	ret nz                                           ; $518c: $c0

	ld de, $00e3                                     ; $518d: $11 $e3 $00
	ld e, e                                          ; $5190: $5b

jr_085_5191:
	pop hl                                           ; $5191: $e1
	ld [bc], a                                       ; $5192: $02
	ld [bc], a                                       ; $5193: $02
	ld c, b                                          ; $5194: $48
	ldh [rDIV], a                                    ; $5195: $e0 $04
	jp z, $01c0                                      ; $5197: $ca $c0 $01

	and b                                            ; $519a: $a0
	ld bc, $b200                                     ; $519b: $01 $00 $b2
	pop hl                                           ; $519e: $e1
	ld [hl-], a                                      ; $519f: $32
	ld bc, $e112                                     ; $51a0: $01 $12 $e1
	ld [bc], a                                       ; $51a3: $02
	ld [bc], a                                       ; $51a4: $02
	ld c, b                                          ; $51a5: $48
	add d                                            ; $51a6: $82
	ret nz                                           ; $51a7: $c0

	dec de                                           ; $51a8: $1b
	jp c, $d002                                      ; $51a9: $da $02 $d0

	pop de                                           ; $51ac: $d1
	ld e, $c0                                        ; $51ad: $1e $c0
	ld bc, $06a0                                     ; $51af: $01 $a0 $06
	nop                                              ; $51b2: $00
	cp e                                             ; $51b3: $bb
	ret nz                                           ; $51b4: $c0

	ld bc, $01a0                                     ; $51b5: $01 $a0 $01
	nop                                              ; $51b8: $00
	add $c0                                          ; $51b9: $c6 $c0
	ld bc, $06a0                                     ; $51bb: $01 $a0 $06
	nop                                              ; $51be: $00
	call $01c0                                       ; $51bf: $cd $c0 $01
	and b                                            ; $51c2: $a0
	ld bc, $d500                                     ; $51c3: $01 $00 $d5
	ret nz                                           ; $51c6: $c0

	ld bc, $06a0                                     ; $51c7: $01 $a0 $06
	nop                                              ; $51ca: $00
	jp c, $d202                                      ; $51cb: $da $02 $d2

	db $d3                                           ; $51ce: $d3
	jr jr_085_5191                                   ; $51cf: $18 $c0

	ld bc, $06a0                                     ; $51d1: $01 $a0 $06
	nop                                              ; $51d4: $00
	push hl                                          ; $51d5: $e5
	ret nz                                           ; $51d6: $c0

	ld bc, $01a0                                     ; $51d7: $01 $a0 $01
	nop                                              ; $51da: $00
	db $eb                                           ; $51db: $eb
	ret nz                                           ; $51dc: $c0

	ld bc, $06a0                                     ; $51dd: $01 $a0 $06
	nop                                              ; $51e0: $00
	ld sp, hl                                        ; $51e1: $f9
	ret nz                                           ; $51e2: $c0

	ld bc, $01a0                                     ; $51e3: $01 $a0 $01
	nop                                              ; $51e6: $00
	db $fd                                           ; $51e7: $fd
	ld bc, $18d4                                     ; $51e8: $01 $d4 $18
	ret nz                                           ; $51eb: $c0

	ld bc, $06a0                                     ; $51ec: $01 $a0 $06
	ld bc, $c002                                     ; $51ef: $01 $02 $c0
	ld bc, $01a0                                     ; $51f2: $01 $a0 $01
	nop                                              ; $51f5: $00
	add $c0                                          ; $51f6: $c6 $c0
	ld bc, $06a0                                     ; $51f8: $01 $a0 $06
	ld bc, $c00f                                     ; $51fb: $01 $0f $c0
	ld bc, $01a0                                     ; $51fe: $01 $a0 $01
	ld bc, $c116                                     ; $5201: $01 $16 $c1
	ld e, e                                          ; $5204: $5b
	push hl                                          ; $5205: $e5
	inc sp                                           ; $5206: $33
	nop                                              ; $5207: $00
	nop                                              ; $5208: $00
	add hl, bc                                       ; $5209: $09
	rrca                                             ; $520a: $0f
	add c                                            ; $520b: $81
	ret nz                                           ; $520c: $c0

	add b                                            ; $520d: $80
	ld bc, $03d3                                     ; $520e: $01 $d3 $03
	db $e4                                           ; $5211: $e4
	nop                                              ; $5212: $00
	rst SubAFromBC                                          ; $5213: $e7
	ld bc, $03d2                                     ; $5214: $01 $d2 $03
	db $e4                                           ; $5217: $e4
	nop                                              ; $5218: $00
	ld [bc], a                                       ; $5219: $02
	add hl, bc                                       ; $521a: $09
	ret nz                                           ; $521b: $c0

	call c, $11c0                                    ; $521c: $dc $c0 $11
	db $e3                                           ; $521f: $e3
	nop                                              ; $5220: $00
	ld e, d                                          ; $5221: $5a
	pop hl                                           ; $5222: $e1
	ld [bc], a                                       ; $5223: $02
	ld [bc], a                                       ; $5224: $02
	ld c, b                                          ; $5225: $48
	ret nz                                           ; $5226: $c0

	ld bc, $06a0                                     ; $5227: $01 $a0 $06
	ld bc, $c01c                                     ; $522a: $01 $1c $c0
	ld bc, $01a0                                     ; $522d: $01 $a0 $01
	ld bc, $8221                                     ; $5230: $01 $21 $82
	ret nz                                           ; $5233: $c0

	dec de                                           ; $5234: $1b
	jp c, $d002                                      ; $5235: $da $02 $d0

	pop de                                           ; $5238: $d1
	ld a, $c0                                        ; $5239: $3e $c0
	ld bc, $06a0                                     ; $523b: $01 $a0 $06
	ld bc, $c025                                     ; $523e: $01 $25 $c0
	ld bc, $01a0                                     ; $5241: $01 $a0 $01
	ld bc, $c02d                                     ; $5244: $01 $2d $c0
	ld bc, $06a0                                     ; $5247: $01 $a0 $06
	ld bc, $c035                                     ; $524a: $01 $35 $c0
	ld bc, $01a0                                     ; $524d: $01 $a0 $01
	ld bc, $c039                                     ; $5250: $01 $39 $c0
	ld bc, $06a0                                     ; $5253: $01 $a0 $06
	ld bc, $c04a                                     ; $5256: $01 $4a $c0
	ld bc, $01a0                                     ; $5259: $01 $a0 $01
	ld bc, $c053                                     ; $525c: $01 $53 $c0
	ld bc, $06a0                                     ; $525f: $01 $a0 $06
	ld bc, $c05c                                     ; $5262: $01 $5c $c0
	ld bc, $01a0                                     ; $5265: $01 $a0 $01
	ld bc, $c065                                     ; $5268: $01 $65 $c0
	ld bc, $06a0                                     ; $526b: $01 $a0 $06
	ld bc, $c16f                                     ; $526e: $01 $6f $c1
	ld e, e                                          ; $5271: $5b
	ret nz                                           ; $5272: $c0

	ld bc, $01a0                                     ; $5273: $01 $a0 $01
	ld bc, $0277                                     ; $5276: $01 $77 $02
	jp nc, $3ed3                                     ; $5279: $d2 $d3 $3e

	ret nz                                           ; $527c: $c0

	ld bc, $06a0                                     ; $527d: $01 $a0 $06
	ld bc, $c08c                                     ; $5280: $01 $8c $c0
	ld bc, $01a0                                     ; $5283: $01 $a0 $01
	ld bc, $c039                                     ; $5286: $01 $39 $c0
	ld bc, $06a0                                     ; $5289: $01 $a0 $06
	ld bc, $c092                                     ; $528c: $01 $92 $c0
	ld bc, $01a0                                     ; $528f: $01 $a0 $01
	ld bc, $c098                                     ; $5292: $01 $98 $c0
	ld bc, $06a0                                     ; $5295: $01 $a0 $06
	ld bc, $c09f                                     ; $5298: $01 $9f $c0
	ld bc, $01a0                                     ; $529b: $01 $a0 $01
	ld bc, $c0a8                                     ; $529e: $01 $a8 $c0
	ld bc, $06a0                                     ; $52a1: $01 $a0 $06
	ld bc, $c0b8                                     ; $52a4: $01 $b8 $c0
	ld bc, $01a0                                     ; $52a7: $01 $a0 $01
	ld bc, $c0c2                                     ; $52aa: $01 $c2 $c0
	ld bc, $06a0                                     ; $52ad: $01 $a0 $06
	ld bc, $c1cd                                     ; $52b0: $01 $cd $c1
	ld e, e                                          ; $52b3: $5b
	ret nz                                           ; $52b4: $c0

	ld bc, $01a0                                     ; $52b5: $01 $a0 $01
	ld bc, $0177                                     ; $52b8: $01 $77 $01
	call nc, $c036                                   ; $52bb: $d4 $36 $c0
	ld bc, $06a0                                     ; $52be: $01 $a0 $06
	ld bc, $c0d1                                     ; $52c1: $01 $d1 $c0
	ld bc, $01a0                                     ; $52c4: $01 $a0 $01
	ld bc, $c0d9                                     ; $52c7: $01 $d9 $c0
	ld bc, $06a0                                     ; $52ca: $01 $a0 $06
	ld bc, $c1ea                                     ; $52cd: $01 $ea $c1
	ld e, e                                          ; $52d0: $5b
	ret nz                                           ; $52d1: $c0

	ld bc, $01a0                                     ; $52d2: $01 $a0 $01
	ld bc, $e1f6                                     ; $52d5: $01 $f6 $e1
	ld [bc], a                                       ; $52d8: $02
	ld [bc], a                                       ; $52d9: $02
	call z, $01c0                                    ; $52da: $cc $c0 $01
	and b                                            ; $52dd: $a0
	rlca                                             ; $52de: $07
	ld bc, $c0fd                                     ; $52df: $01 $fd $c0
	ld bc, $01a0                                     ; $52e2: $01 $a0 $01
	ld [bc], a                                       ; $52e5: $02
	rlca                                             ; $52e6: $07
	ret nz                                           ; $52e7: $c0

	ld bc, $07a0                                     ; $52e8: $01 $a0 $07
	ld [bc], a                                       ; $52eb: $02
	ld [de], a                                       ; $52ec: $12
	ret nz                                           ; $52ed: $c0

	ld bc, $01a0                                     ; $52ee: $01 $a0 $01
	ld [bc], a                                       ; $52f1: $02
	dec de                                           ; $52f2: $1b
	pop bc                                           ; $52f3: $c1
	ld e, e                                          ; $52f4: $5b
	push hl                                          ; $52f5: $e5
	inc sp                                           ; $52f6: $33
	nop                                              ; $52f7: $00
	nop                                              ; $52f8: $00
	add hl, bc                                       ; $52f9: $09
	ret nz                                           ; $52fa: $c0

	ret c                                            ; $52fb: $d8

	ret nz                                           ; $52fc: $c0

	ld de, $00e3                                     ; $52fd: $11 $e3 $00
	ld e, b                                          ; $5300: $58
	pop hl                                           ; $5301: $e1
	ld [bc], a                                       ; $5302: $02
	ld [bc], a                                       ; $5303: $02
	ld c, b                                          ; $5304: $48
	add d                                            ; $5305: $82
	ret nz                                           ; $5306: $c0

	dec de                                           ; $5307: $1b
	jp c, $d002                                      ; $5308: $da $02 $d0

	pop de                                           ; $530b: $d1
	inc [hl]                                         ; $530c: $34
	ret nz                                           ; $530d: $c0

	ld bc, $06a0                                     ; $530e: $01 $a0 $06
	ld [bc], a                                       ; $5311: $02
	jr z, @-$3e                                      ; $5312: $28 $c0

	ld bc, $01a0                                     ; $5314: $01 $a0 $01
	ld [bc], a                                       ; $5317: $02
	ld [hl-], a                                      ; $5318: $32
	ret nz                                           ; $5319: $c0

	ld bc, $06a0                                     ; $531a: $01 $a0 $06
	ld [bc], a                                       ; $531d: $02
	ld a, [hl-]                                      ; $531e: $3a
	ret nz                                           ; $531f: $c0

	ld bc, $01a0                                     ; $5320: $01 $a0 $01
	ld [bc], a                                       ; $5323: $02
	ld b, [hl]                                       ; $5324: $46
	pop hl                                           ; $5325: $e1
	ld [bc], a                                       ; $5326: $02
	rlca                                             ; $5327: $07
	sbc e                                            ; $5328: $9b
	ret nz                                           ; $5329: $c0

	ld bc, $01a0                                     ; $532a: $01 $a0 $01
	ld [bc], a                                       ; $532d: $02
	ld d, a                                          ; $532e: $57
	ret nz                                           ; $532f: $c0

	ld bc, $06a0                                     ; $5330: $01 $a0 $06
	ld [bc], a                                       ; $5333: $02
	ld e, c                                          ; $5334: $59
	ret nz                                           ; $5335: $c0

	ld bc, $01a0                                     ; $5336: $01 $a0 $01
	nop                                              ; $5339: $00
	push de                                          ; $533a: $d5
	ret nz                                           ; $533b: $c0

	ld bc, $06a0                                     ; $533c: $01 $a0 $06
	nop                                              ; $533f: $00
	jp c, $d202                                      ; $5340: $da $02 $d2

	db $d3                                           ; $5343: $d3
	ld b, b                                          ; $5344: $40
	ret nz                                           ; $5345: $c0

	ld bc, $06a0                                     ; $5346: $01 $a0 $06
	ld [bc], a                                       ; $5349: $02
	ld e, a                                          ; $534a: $5f
	ret nz                                           ; $534b: $c0

	ld bc, $01a0                                     ; $534c: $01 $a0 $01

jr_085_534f:
	ld [bc], a                                       ; $534f: $02
	ld [hl-], a                                      ; $5350: $32
	ret nz                                           ; $5351: $c0

	ld bc, $06a0                                     ; $5352: $01 $a0 $06
	ld [bc], a                                       ; $5355: $02
	ld l, c                                          ; $5356: $69
	ret nz                                           ; $5357: $c0

	ld bc, $01a0                                     ; $5358: $01 $a0 $01
	ld [bc], a                                       ; $535b: $02
	ld [hl], d                                       ; $535c: $72
	ret nz                                           ; $535d: $c0

	ld bc, $06a0                                     ; $535e: $01 $a0 $06
	ld [bc], a                                       ; $5361: $02
	add c                                            ; $5362: $81
	ret nz                                           ; $5363: $c0

	ld bc, $01a0                                     ; $5364: $01 $a0 $01
	ld [bc], a                                       ; $5367: $02
	adc h                                            ; $5368: $8c
	pop hl                                           ; $5369: $e1
	ld [bc], a                                       ; $536a: $02
	rlca                                             ; $536b: $07
	sbc e                                            ; $536c: $9b
	ret nz                                           ; $536d: $c0

	ld bc, $01a0                                     ; $536e: $01 $a0 $01
	ld [bc], a                                       ; $5371: $02
	ld d, a                                          ; $5372: $57
	ret nz                                           ; $5373: $c0

	ld bc, $06a0                                     ; $5374: $01 $a0 $06
	ld [bc], a                                       ; $5377: $02
	sbc h                                            ; $5378: $9c
	ret nz                                           ; $5379: $c0

	ld bc, $01a0                                     ; $537a: $01 $a0 $01
	nop                                              ; $537d: $00
	push de                                          ; $537e: $d5
	ret nz                                           ; $537f: $c0

	ld bc, $06a0                                     ; $5380: $01 $a0 $06
	ld [bc], a                                       ; $5383: $02
	and c                                            ; $5384: $a1
	ld bc, $46d4                                     ; $5385: $01 $d4 $46
	ret nz                                           ; $5388: $c0

	ld bc, $06a0                                     ; $5389: $01 $a0 $06
	ld [bc], a                                       ; $538c: $02
	jr z, jr_085_534f                                ; $538d: $28 $c0

	ld bc, $01a0                                     ; $538f: $01 $a0 $01
	ld [bc], a                                       ; $5392: $02
	ld [hl-], a                                      ; $5393: $32
	ret nz                                           ; $5394: $c0

	ld bc, $06a0                                     ; $5395: $01 $a0 $06
	ld [bc], a                                       ; $5398: $02
	and l                                            ; $5399: $a5
	ret nz                                           ; $539a: $c0

	ld bc, $01a0                                     ; $539b: $01 $a0 $01
	ld [bc], a                                       ; $539e: $02
	ld [hl], d                                       ; $539f: $72
	ret nz                                           ; $53a0: $c0

	ld bc, $06a0                                     ; $53a1: $01 $a0 $06
	ld [bc], a                                       ; $53a4: $02
	or c                                             ; $53a5: $b1
	ret nz                                           ; $53a6: $c0

	ld bc, $01a0                                     ; $53a7: $01 $a0 $01
	ld [bc], a                                       ; $53aa: $02
	cp c                                             ; $53ab: $b9
	ret nz                                           ; $53ac: $c0

	ld bc, $06a0                                     ; $53ad: $01 $a0 $06
	ld [bc], a                                       ; $53b0: $02
	pop bc                                           ; $53b1: $c1
	pop hl                                           ; $53b2: $e1
	ld [bc], a                                       ; $53b3: $02
	rlca                                             ; $53b4: $07
	sbc e                                            ; $53b5: $9b
	ret nz                                           ; $53b6: $c0

	ld bc, $01a0                                     ; $53b7: $01 $a0 $01
	ld [bc], a                                       ; $53ba: $02
	ld d, a                                          ; $53bb: $57
	ret nz                                           ; $53bc: $c0

	ld bc, $06a0                                     ; $53bd: $01 $a0 $06
	ld [bc], a                                       ; $53c0: $02
	adc $c0                                          ; $53c1: $ce $c0
	ld bc, $01a0                                     ; $53c3: $01 $a0 $01
	nop                                              ; $53c6: $00
	push de                                          ; $53c7: $d5
	ret nz                                           ; $53c8: $c0

	ld bc, $06a0                                     ; $53c9: $01 $a0 $06
	ld [bc], a                                       ; $53cc: $02
	and c                                            ; $53cd: $a1
	pop bc                                           ; $53ce: $c1
	ld e, e                                          ; $53cf: $5b
	push hl                                          ; $53d0: $e5
	inc sp                                           ; $53d1: $33
	nop                                              ; $53d2: $00
	nop                                              ; $53d3: $00
	add hl, bc                                       ; $53d4: $09
	dec l                                            ; $53d5: $2d
	ret nz                                           ; $53d6: $c0

	ld de, $00e3                                     ; $53d7: $11 $e3 $00
	ld e, e                                          ; $53da: $5b
	pop hl                                           ; $53db: $e1
	ld [bc], a                                       ; $53dc: $02
	ld [bc], a                                       ; $53dd: $02
	ld c, b                                          ; $53de: $48
	ldh [rSC], a                                     ; $53df: $e0 $02
	add b                                            ; $53e1: $80
	ret nz                                           ; $53e2: $c0

	ld bc, $01a0                                     ; $53e3: $01 $a0 $01
	ld [bc], a                                       ; $53e6: $02
	sub $e1                                          ; $53e7: $d6 $e1
	ld [hl-], a                                      ; $53e9: $32
	ld bc, $e19c                                     ; $53ea: $01 $9c $e1
	ld [bc], a                                       ; $53ed: $02
	ld [bc], a                                       ; $53ee: $02
	ld c, b                                          ; $53ef: $48
	add c                                            ; $53f0: $81
	ret nz                                           ; $53f1: $c0

	add b                                            ; $53f2: $80
	ld bc, $03d3                                     ; $53f3: $01 $d3 $03
	db $e4                                           ; $53f6: $e4
	nop                                              ; $53f7: $00
	cp a                                             ; $53f8: $bf
	ld bc, $07d2                                     ; $53f9: $01 $d2 $07
	ret nz                                           ; $53fc: $c0

	ld [hl+], a                                      ; $53fd: $22
	pop de                                           ; $53fe: $d1
	jp c, $00e4                                      ; $53ff: $da $e4 $00

	ld [bc], a                                       ; $5402: $02
	add hl, bc                                       ; $5403: $09
	or c                                             ; $5404: $b1
	add d                                            ; $5405: $82
	ret nz                                           ; $5406: $c0

	dec de                                           ; $5407: $1b
	jp c, $d002                                      ; $5408: $da $02 $d0

	pop de                                           ; $540b: $d1
	inc h                                            ; $540c: $24
	ret nz                                           ; $540d: $c0

	ld bc, $01a0                                     ; $540e: $01 $a0 $01
	ld [bc], a                                       ; $5411: $02
	ldh [$c0], a                                     ; $5412: $e0 $c0
	ld bc, $06a0                                     ; $5414: $01 $a0 $06
	ld [bc], a                                       ; $5417: $02
	db $e4                                           ; $5418: $e4
	ret nz                                           ; $5419: $c0

	ld bc, $01a0                                     ; $541a: $01 $a0 $01
	ld [bc], a                                       ; $541d: $02
	rst AddAOntoHL                                          ; $541e: $ef
	ret nz                                           ; $541f: $c0

	ld bc, $06a0                                     ; $5420: $01 $a0 $06
	ld [bc], a                                       ; $5423: $02
	ld a, [$01c0]                                    ; $5424: $fa $c0 $01
	and b                                            ; $5427: $a0
	ld bc, $0403                                     ; $5428: $01 $03 $04
	ret nz                                           ; $542b: $c0

	ld bc, $06a0                                     ; $542c: $01 $a0 $06
	nop                                              ; $542f: $00
	jp c, $d202                                      ; $5430: $da $02 $d2

	db $d3                                           ; $5433: $d3
	ld c, [hl]                                       ; $5434: $4e
	ret nz                                           ; $5435: $c0

	ld bc, $06a0                                     ; $5436: $01 $a0 $06
	inc bc                                           ; $5439: $03
	dec bc                                           ; $543a: $0b
	ret nz                                           ; $543b: $c0

	ld bc, $01a0                                     ; $543c: $01 $a0 $01
	inc bc                                           ; $543f: $03
	inc de                                           ; $5440: $13
	ret nz                                           ; $5441: $c0

	ld bc, $06a0                                     ; $5442: $01 $a0 $06
	inc bc                                           ; $5445: $03
	ld a, [de]                                       ; $5446: $1a
	ret nz                                           ; $5447: $c0

	ld bc, $01a0                                     ; $5448: $01 $a0 $01
	inc bc                                           ; $544b: $03
	daa                                              ; $544c: $27
	ret nz                                           ; $544d: $c0

	ld bc, $06a0                                     ; $544e: $01 $a0 $06
	inc bc                                           ; $5451: $03
	ld a, [hl-]                                      ; $5452: $3a
	ret nz                                           ; $5453: $c0

	ld bc, $01a0                                     ; $5454: $01 $a0 $01
	inc bc                                           ; $5457: $03
	ld b, d                                          ; $5458: $42
	ret nz                                           ; $5459: $c0

	ld bc, $06a0                                     ; $545a: $01 $a0 $06
	inc bc                                           ; $545d: $03
	ld c, c                                          ; $545e: $49
	ret nz                                           ; $545f: $c0

	ld bc, $01a0                                     ; $5460: $01 $a0 $01
	inc bc                                           ; $5463: $03
	ld d, c                                          ; $5464: $51
	ret nz                                           ; $5465: $c0

	ld bc, $06a0                                     ; $5466: $01 $a0 $06
	inc bc                                           ; $5469: $03
	ld d, a                                          ; $546a: $57
	ret nz                                           ; $546b: $c0

	ld bc, $01a0                                     ; $546c: $01 $a0 $01
	inc bc                                           ; $546f: $03
	ld h, h                                          ; $5470: $64
	ret nz                                           ; $5471: $c0

	ld bc, $06a0                                     ; $5472: $01 $a0 $06
	inc bc                                           ; $5475: $03
	ld [hl], b                                       ; $5476: $70
	ret nz                                           ; $5477: $c0

	ld bc, $01a0                                     ; $5478: $01 $a0 $01
	inc bc                                           ; $547b: $03
	ld [hl], a                                       ; $547c: $77
	ret nz                                           ; $547d: $c0

	ld bc, $06a0                                     ; $547e: $01 $a0 $06
	inc bc                                           ; $5481: $03
	ld a, l                                          ; $5482: $7d
	ld bc, _EnterNamesAndDates                                     ; $5483: $01 $d4 $2a
	ret nz                                           ; $5486: $c0

	ld bc, $01a0                                     ; $5487: $01 $a0 $01
	ld [bc], a                                       ; $548a: $02
	ldh [$c0], a                                     ; $548b: $e0 $c0
	ld bc, $06a0                                     ; $548d: $01 $a0 $06
	inc bc                                           ; $5490: $03
	add c                                            ; $5491: $81
	ret nz                                           ; $5492: $c0

	ld bc, $01a0                                     ; $5493: $01 $a0 $01
	inc bc                                           ; $5496: $03

jr_085_5497:
	adc d                                            ; $5497: $8a
	ret nz                                           ; $5498: $c0

	ld bc, $06a0                                     ; $5499: $01 $a0 $06
	inc bc                                           ; $549c: $03
	ld a, [hl-]                                      ; $549d: $3a
	ret nz                                           ; $549e: $c0

	ld bc, $01a0                                     ; $549f: $01 $a0 $01
	inc bc                                           ; $54a2: $03
	sbc h                                            ; $54a3: $9c
	ret nz                                           ; $54a4: $c0

	ld bc, $06a0                                     ; $54a5: $01 $a0 $06
	inc bc                                           ; $54a8: $03
	and [hl]                                         ; $54a9: $a6
	ret nz                                           ; $54aa: $c0

	ld bc, $01a0                                     ; $54ab: $01 $a0 $01
	inc bc                                           ; $54ae: $03
	or c                                             ; $54af: $b1
	pop bc                                           ; $54b0: $c1
	ld e, e                                          ; $54b1: $5b
	push hl                                          ; $54b2: $e5
	inc sp                                           ; $54b3: $33
	nop                                              ; $54b4: $00
	nop                                              ; $54b5: $00
	add hl, bc                                       ; $54b6: $09
	ld h, e                                          ; $54b7: $63
	add d                                            ; $54b8: $82
	ret nz                                           ; $54b9: $c0

	dec de                                           ; $54ba: $1b
	jp c, $d002                                      ; $54bb: $da $02 $d0

	pop de                                           ; $54be: $d1
	ld [de], a                                       ; $54bf: $12
	ret nz                                           ; $54c0: $c0

	ld bc, $06a0                                     ; $54c1: $01 $a0 $06
	inc bc                                           ; $54c4: $03
	or a                                             ; $54c5: $b7
	ret nz                                           ; $54c6: $c0

	ld bc, $01a0                                     ; $54c7: $01 $a0 $01
	inc bc                                           ; $54ca: $03
	push bc                                          ; $54cb: $c5
	ret nz                                           ; $54cc: $c0

	ld bc, $06a0                                     ; $54cd: $01 $a0 $06
	nop                                              ; $54d0: $00
	jp c, $d202                                      ; $54d1: $da $02 $d2

	db $d3                                           ; $54d4: $d3
	jr jr_085_5497                                   ; $54d5: $18 $c0

	ld bc, $06a0                                     ; $54d7: $01 $a0 $06
	inc bc                                           ; $54da: $03
	jp nc, $01c0                                     ; $54db: $d2 $c0 $01

	and b                                            ; $54de: $a0
	ld bc, $dc03                                     ; $54df: $01 $03 $dc
	ret nz                                           ; $54e2: $c0

	ld bc, $06a0                                     ; $54e3: $01 $a0 $06
	inc bc                                           ; $54e6: $03
	push hl                                          ; $54e7: $e5
	ret nz                                           ; $54e8: $c0

	ld bc, $01a0                                     ; $54e9: $01 $a0 $01
	nop                                              ; $54ec: $00
	db $fd                                           ; $54ed: $fd
	ld bc, $24d4                                     ; $54ee: $01 $d4 $24
	ret nz                                           ; $54f1: $c0

	ld bc, $06a0                                     ; $54f2: $01 $a0 $06
	inc bc                                           ; $54f5: $03
	add sp, -$40                                     ; $54f6: $e8 $c0
	ld bc, $01a0                                     ; $54f8: $01 $a0 $01
	inc bc                                           ; $54fb: $03
	rst AddAOntoHL                                          ; $54fc: $ef
	ret nz                                           ; $54fd: $c0

	ld bc, $06a0                                     ; $54fe: $01 $a0 $06
	inc bc                                           ; $5501: $03
	ld hl, sp-$40                                    ; $5502: $f8 $c0
	ld bc, $01a0                                     ; $5504: $01 $a0 $01
	inc bc                                           ; $5507: $03
	rst $38                                          ; $5508: $ff
	ret nz                                           ; $5509: $c0

	ld bc, $06a0                                     ; $550a: $01 $a0 $06
	inc b                                            ; $550d: $04
	rrca                                             ; $550e: $0f
	ret nz                                           ; $550f: $c0

	ld bc, $01a0                                     ; $5510: $01 $a0 $01
	inc b                                            ; $5513: $04
	inc d                                            ; $5514: $14
	pop bc                                           ; $5515: $c1
	ld e, e                                          ; $5516: $5b
	push hl                                          ; $5517: $e5
	inc sp                                           ; $5518: $33
	nop                                              ; $5519: $00
	nop                                              ; $551a: $00
	add hl, bc                                       ; $551b: $09
	ccf                                              ; $551c: $3f
	ret nz                                           ; $551d: $c0

	ld de, $00e3                                     ; $551e: $11 $e3 $00
	ld e, h                                          ; $5521: $5c
	pop hl                                           ; $5522: $e1
	ld [bc], a                                       ; $5523: $02
	ld [bc], a                                       ; $5524: $02
	ld c, b                                          ; $5525: $48
	add c                                            ; $5526: $81
	ret nz                                           ; $5527: $c0

	dec de                                           ; $5528: $1b
	jp c, $d003                                      ; $5529: $da $03 $d0

	pop de                                           ; $552c: $d1
	call nc, $c006                                   ; $552d: $d4 $06 $c0
	ld bc, $06a0                                     ; $5530: $01 $a0 $06
	inc b                                            ; $5533: $04
	dec de                                           ; $5534: $1b
	ld [bc], a                                       ; $5535: $02
	jp nc, $06d3                                     ; $5536: $d2 $d3 $06

	ret nz                                           ; $5539: $c0

	ld bc, $06a0                                     ; $553a: $01 $a0 $06
	inc b                                            ; $553d: $04
	dec h                                            ; $553e: $25
	ret nz                                           ; $553f: $c0

	ld bc, $01a0                                     ; $5540: $01 $a0 $01
	inc b                                            ; $5543: $04
	cpl                                              ; $5544: $2f
	add c                                            ; $5545: $81
	ret nz                                           ; $5546: $c0

	add b                                            ; $5547: $80
	ld bc, $07d3                                     ; $5548: $01 $d3 $07
	ret nz                                           ; $554b: $c0

	ld [hl+], a                                      ; $554c: $22
	jp nc, $e4da                                     ; $554d: $d2 $da $e4

	nop                                              ; $5550: $00
	ld a, a                                          ; $5551: $7f
	ld bc, $07d2                                     ; $5552: $01 $d2 $07
	ret nz                                           ; $5555: $c0

	ld [hl+], a                                      ; $5556: $22
	pop de                                           ; $5557: $d1
	jp c, $00e4                                      ; $5558: $da $e4 $00

	ld [bc], a                                       ; $555b: $02
	add hl, bc                                       ; $555c: $09
	ld [hl], c                                       ; $555d: $71
	pop hl                                           ; $555e: $e1
	ld [hl-], a                                      ; $555f: $32
	nop                                              ; $5560: $00
	ld c, l                                          ; $5561: $4d
	pop hl                                           ; $5562: $e1
	ld [bc], a                                       ; $5563: $02
	ld [bc], a                                       ; $5564: $02
	ld c, b                                          ; $5565: $48
	add d                                            ; $5566: $82
	ret nz                                           ; $5567: $c0

	dec de                                           ; $5568: $1b
	jp c, $d002                                      ; $5569: $da $02 $d0

	pop de                                           ; $556c: $d1
	inc h                                            ; $556d: $24
	ret nz                                           ; $556e: $c0

	ld bc, $06a0                                     ; $556f: $01 $a0 $06
	inc b                                            ; $5572: $04
	dec a                                            ; $5573: $3d
	ret nz                                           ; $5574: $c0

	ld bc, $01a0                                     ; $5575: $01 $a0 $01
	inc bc                                           ; $5578: $03
	rst AddAOntoHL                                          ; $5579: $ef
	ret nz                                           ; $557a: $c0

	ld bc, $06a0                                     ; $557b: $01 $a0 $06
	inc bc                                           ; $557e: $03
	ld hl, sp-$40                                    ; $557f: $f8 $c0
	ld bc, $01a0                                     ; $5581: $01 $a0 $01
	inc bc                                           ; $5584: $03
	rst $38                                          ; $5585: $ff
	ret nz                                           ; $5586: $c0

	ld bc, $06a0                                     ; $5587: $01 $a0 $06
	inc b                                            ; $558a: $04
	ld c, e                                          ; $558b: $4b
	ret nz                                           ; $558c: $c0

	ld bc, $01a0                                     ; $558d: $01 $a0 $01
	inc b                                            ; $5590: $04
	inc d                                            ; $5591: $14
	ld [bc], a                                       ; $5592: $02
	jp nc, $18d3                                     ; $5593: $d2 $d3 $18

	ret nz                                           ; $5596: $c0

	ld bc, $06a0                                     ; $5597: $01 $a0 $06
	inc b                                            ; $559a: $04
	ld d, [hl]                                       ; $559b: $56
	ret nz                                           ; $559c: $c0

	ld bc, $01a0                                     ; $559d: $01 $a0 $01
	inc b                                            ; $55a0: $04
	ld h, [hl]                                       ; $55a1: $66
	ret nz                                           ; $55a2: $c0

	ld bc, $06a0                                     ; $55a3: $01 $a0 $06
	inc b                                            ; $55a6: $04
	halt                                             ; $55a7: $76
	ret nz                                           ; $55a8: $c0

	ld bc, $01a0                                     ; $55a9: $01 $a0 $01
	nop                                              ; $55ac: $00
	db $fd                                           ; $55ad: $fd
	ld bc, $18d4                                     ; $55ae: $01 $d4 $18
	ret nz                                           ; $55b1: $c0

	ld bc, $06a0                                     ; $55b2: $01 $a0 $06
	inc b                                            ; $55b5: $04
	ld a, a                                          ; $55b6: $7f
	ret nz                                           ; $55b7: $c0

	ld bc, $01a0                                     ; $55b8: $01 $a0 $01
	inc b                                            ; $55bb: $04
	adc l                                            ; $55bc: $8d
	ret nz                                           ; $55bd: $c0

	ld bc, $06a0                                     ; $55be: $01 $a0 $06
	inc b                                            ; $55c1: $04
	sub l                                            ; $55c2: $95
	ret nz                                           ; $55c3: $c0

	ld bc, $01a0                                     ; $55c4: $01 $a0 $01
	inc b                                            ; $55c7: $04
	sbc b                                            ; $55c8: $98
	pop bc                                           ; $55c9: $c1
	ld e, e                                          ; $55ca: $5b
	push hl                                          ; $55cb: $e5
	inc sp                                           ; $55cc: $33
	nop                                              ; $55cd: $00
	nop                                              ; $55ce: $00
	add hl, bc                                       ; $55cf: $09
	adc a                                            ; $55d0: $8f
	pop hl                                           ; $55d1: $e1
	ld [hl-], a                                      ; $55d2: $32
	nop                                              ; $55d3: $00
	xor a                                            ; $55d4: $af
	pop hl                                           ; $55d5: $e1
	ld [bc], a                                       ; $55d6: $02
	ld [bc], a                                       ; $55d7: $02
	ld c, b                                          ; $55d8: $48
	add d                                            ; $55d9: $82
	ret nz                                           ; $55da: $c0

	dec de                                           ; $55db: $1b
	jp c, $d002                                      ; $55dc: $da $02 $d0

	pop de                                           ; $55df: $d1
	inc h                                            ; $55e0: $24
	ret nz                                           ; $55e1: $c0

	ld bc, $06a0                                     ; $55e2: $01 $a0 $06
	inc b                                            ; $55e5: $04
	sbc [hl]                                         ; $55e6: $9e
	ret nz                                           ; $55e7: $c0

	ld bc, $01a0                                     ; $55e8: $01 $a0 $01
	inc b                                            ; $55eb: $04
	and l                                            ; $55ec: $a5
	ret nz                                           ; $55ed: $c0

	ld bc, $06a0                                     ; $55ee: $01 $a0 $06
	inc b                                            ; $55f1: $04
	xor c                                            ; $55f2: $a9
	ret nz                                           ; $55f3: $c0

	ld bc, $01a0                                     ; $55f4: $01 $a0 $01
	inc b                                            ; $55f7: $04
	cp c                                             ; $55f8: $b9
	ret nz                                           ; $55f9: $c0

	ld bc, $06a0                                     ; $55fa: $01 $a0 $06
	inc b                                            ; $55fd: $04
	call $01c0                                       ; $55fe: $cd $c0 $01
	and b                                            ; $5601: $a0
	ld bc, $d204                                     ; $5602: $01 $04 $d2
	ld [bc], a                                       ; $5605: $02
	jp nc, $2ad3                                     ; $5606: $d2 $d3 $2a

	ret nz                                           ; $5609: $c0

	ld bc, $06a0                                     ; $560a: $01 $a0 $06
	inc b                                            ; $560d: $04
	rst SubAFromHL                                          ; $560e: $d7
	ret nz                                           ; $560f: $c0

	ld bc, $01a0                                     ; $5610: $01 $a0 $01
	inc b                                            ; $5613: $04
	ldh [$c0], a                                     ; $5614: $e0 $c0
	ld bc, $06a0                                     ; $5616: $01 $a0 $06
	inc b                                            ; $5619: $04
	ldh a, [$c0]                                     ; $561a: $f0 $c0
	ld bc, $01a0                                     ; $561c: $01 $a0 $01
	inc b                                            ; $561f: $04
	db $fc                                           ; $5620: $fc
	ret nz                                           ; $5621: $c0

	ld bc, $06a0                                     ; $5622: $01 $a0 $06
	dec b                                            ; $5625: $05
	dec b                                            ; $5626: $05
	ret nz                                           ; $5627: $c0

	ld bc, $01a0                                     ; $5628: $01 $a0 $01
	dec b                                            ; $562b: $05
	dec bc                                           ; $562c: $0b
	ret nz                                           ; $562d: $c0

	ld bc, $06a0                                     ; $562e: $01 $a0 $06
	ld [bc], a                                       ; $5631: $02
	and c                                            ; $5632: $a1
	ld bc, $24d4                                     ; $5633: $01 $d4 $24
	ret nz                                           ; $5636: $c0

	ld bc, $06a0                                     ; $5637: $01 $a0 $06
	dec b                                            ; $563a: $05
	db $10                                           ; $563b: $10
	ret nz                                           ; $563c: $c0

	ld bc, $01a0                                     ; $563d: $01 $a0 $01
	dec b                                            ; $5640: $05
	dec e                                            ; $5641: $1d
	ret nz                                           ; $5642: $c0

	ld bc, $06a0                                     ; $5643: $01 $a0 $06
	dec b                                            ; $5646: $05
	inc hl                                           ; $5647: $23
	ret nz                                           ; $5648: $c0

	ld bc, $01a0                                     ; $5649: $01 $a0 $01
	dec b                                            ; $564c: $05
	dec hl                                           ; $564d: $2b
	ret nz                                           ; $564e: $c0

	ld bc, $06a0                                     ; $564f: $01 $a0 $06
	dec b                                            ; $5652: $05
	ld [hl-], a                                      ; $5653: $32
	ret nz                                           ; $5654: $c0

	ld bc, $01a0                                     ; $5655: $01 $a0 $01
	nop                                              ; $5658: $00
	db $fd                                           ; $5659: $fd
	pop bc                                           ; $565a: $c1
	ld e, e                                          ; $565b: $5b
	push hl                                          ; $565c: $e5
	inc sp                                           ; $565d: $33
	nop                                              ; $565e: $00
	nop                                              ; $565f: $00
	add hl, de                                       ; $5660: $19
	add c                                            ; $5661: $81
	ret nz                                           ; $5662: $c0

	dec de                                           ; $5663: $1b
	jp c, $d003                                      ; $5664: $da $03 $d0

	pop de                                           ; $5667: $d1
	call nc, $c006                                   ; $5668: $d4 $06 $c0
	ld bc, $06a0                                     ; $566b: $01 $a0 $06
	dec b                                            ; $566e: $05
	scf                                              ; $566f: $37
	ld [bc], a                                       ; $5670: $02
	jp nc, $06d3                                     ; $5671: $d2 $d3 $06

	ret nz                                           ; $5674: $c0

	ld bc, $06a0                                     ; $5675: $01 $a0 $06
	dec b                                            ; $5678: $05
	ccf                                              ; $5679: $3f
	rlca                                             ; $567a: $07
	rlca                                             ; $567b: $07
	add hl, bc                                       ; $567c: $09
	ld hl, $21c0                                     ; $567d: $21 $c0 $21
	jp nc, $c0dd                                     ; $5680: $d2 $dd $c0

	ld [hl+], a                                      ; $5683: $22
	pop de                                           ; $5684: $d1
	db $dd                                           ; $5685: $dd
	pop hl                                           ; $5686: $e1
	ld [bc], a                                       ; $5687: $02
	ld [bc], a                                       ; $5688: $02
	ld [hl], b                                       ; $5689: $70
	add d                                            ; $568a: $82
	ret nz                                           ; $568b: $c0

	add b                                            ; $568c: $80
	ld bc, $03d3                                     ; $568d: $01 $d3 $03
	db $e4                                           ; $5690: $e4
	ld bc, $016e                                     ; $5691: $01 $6e $01
	jp nc, $e403                                     ; $5694: $d2 $03 $e4

	nop                                              ; $5697: $00
	cp b                                             ; $5698: $b8
	ld bc, $03d1                                     ; $5699: $01 $d1 $03
	db $e4                                           ; $569c: $e4
	nop                                              ; $569d: $00
	ld [bc], a                                       ; $569e: $02
	add hl, bc                                       ; $569f: $09
	xor [hl]                                         ; $56a0: $ae
	nop                                              ; $56a1: $00
	add b                                            ; $56a2: $80
	nop                                              ; $56a3: $00
	reti                                             ; $56a4: $d9


	add d                                            ; $56a5: $82
	ret nz                                           ; $56a6: $c0

	dec de                                           ; $56a7: $1b
	db $dd                                           ; $56a8: $dd
	ld [bc], a                                       ; $56a9: $02
	ret nc                                           ; $56aa: $d0

	pop de                                           ; $56ab: $d1
	ld [hl], $c0                                     ; $56ac: $36 $c0
	ld bc, $0aa0                                     ; $56ae: $01 $a0 $0a
	nop                                              ; $56b1: $00
	ld bc, $01c0                                     ; $56b2: $01 $c0 $01
	and b                                            ; $56b5: $a0
	ld bc, $0200                                     ; $56b6: $01 $00 $02
	ret nz                                           ; $56b9: $c0

	ld bc, $0aa0                                     ; $56ba: $01 $a0 $0a
	nop                                              ; $56bd: $00
	rlca                                             ; $56be: $07
	ret nz                                           ; $56bf: $c0

	ld bc, $01a0                                     ; $56c0: $01 $a0 $01
	nop                                              ; $56c3: $00
	dec c                                            ; $56c4: $0d
	ret nz                                           ; $56c5: $c0

	ld bc, $0aa0                                     ; $56c6: $01 $a0 $0a
	nop                                              ; $56c9: $00
	inc d                                            ; $56ca: $14
	ret nz                                           ; $56cb: $c0

	ld bc, $01a0                                     ; $56cc: $01 $a0 $01
	nop                                              ; $56cf: $00
	dec h                                            ; $56d0: $25
	ret nz                                           ; $56d1: $c0

	ld bc, $0aa0                                     ; $56d2: $01 $a0 $0a
	nop                                              ; $56d5: $00
	ld a, [hl+]                                      ; $56d6: $2a
	ret nz                                           ; $56d7: $c0

	ld bc, $01a0                                     ; $56d8: $01 $a0 $01
	nop                                              ; $56db: $00
	add hl, sp                                       ; $56dc: $39
	ret nz                                           ; $56dd: $c0

	ld bc, $0aa0                                     ; $56de: $01 $a0 $0a
	nop                                              ; $56e1: $00
	dec a                                            ; $56e2: $3d
	inc bc                                           ; $56e3: $03
	jp nc, $d4d3                                     ; $56e4: $d2 $d3 $d4

	ld [hl], $c0                                     ; $56e7: $36 $c0
	ld bc, $0aa0                                     ; $56e9: $01 $a0 $0a
	nop                                              ; $56ec: $00
	ld b, [hl]                                       ; $56ed: $46
	ret nz                                           ; $56ee: $c0

	ld bc, $01a0                                     ; $56ef: $01 $a0 $01
	nop                                              ; $56f2: $00
	ld [bc], a                                       ; $56f3: $02
	ret nz                                           ; $56f4: $c0

	ld bc, $0aa0                                     ; $56f5: $01 $a0 $0a
	nop                                              ; $56f8: $00
	ld b, a                                          ; $56f9: $47
	ret nz                                           ; $56fa: $c0

	ld bc, $01a0                                     ; $56fb: $01 $a0 $01
	nop                                              ; $56fe: $00
	dec c                                            ; $56ff: $0d
	ret nz                                           ; $5700: $c0

	ld bc, $0aa0                                     ; $5701: $01 $a0 $0a
	nop                                              ; $5704: $00
	ld c, [hl]                                       ; $5705: $4e
	ret nz                                           ; $5706: $c0

	ld bc, $01a0                                     ; $5707: $01 $a0 $01
	nop                                              ; $570a: $00
	dec h                                            ; $570b: $25
	ret nz                                           ; $570c: $c0

	ld bc, $0aa0                                     ; $570d: $01 $a0 $0a
	nop                                              ; $5710: $00
	ld d, [hl]                                       ; $5711: $56
	ret nz                                           ; $5712: $c0

	ld bc, $01a0                                     ; $5713: $01 $a0 $01
	nop                                              ; $5716: $00
	add hl, sp                                       ; $5717: $39
	ret nz                                           ; $5718: $c0

	ld bc, $0aa0                                     ; $5719: $01 $a0 $0a
	nop                                              ; $571c: $00
	ld e, h                                          ; $571d: $5c
	ld bc, $28d5                                     ; $571e: $01 $d5 $28
	ret nz                                           ; $5721: $c0

	ld bc, $0aa0                                     ; $5722: $01 $a0 $0a
	nop                                              ; $5725: $00
	ld h, d                                          ; $5726: $62
	ret nz                                           ; $5727: $c0

	ld bc, $01a0                                     ; $5728: $01 $a0 $01
	nop                                              ; $572b: $00
	ld h, [hl]                                       ; $572c: $66
	ret nz                                           ; $572d: $c0

	ld bc, $0aa0                                     ; $572e: $01 $a0 $0a
	nop                                              ; $5731: $00
	ld l, d                                          ; $5732: $6a
	ret nz                                           ; $5733: $c0

	ld bc, $01a0                                     ; $5734: $01 $a0 $01
	nop                                              ; $5737: $00
	ld l, a                                          ; $5738: $6f
	ret nz                                           ; $5739: $c0

	ld bc, $0aa0                                     ; $573a: $01 $a0 $0a
	nop                                              ; $573d: $00
	ld [hl], l                                       ; $573e: $75
	ret nz                                           ; $573f: $c0

	ld bc, $01a0                                     ; $5740: $01 $a0 $01
	nop                                              ; $5743: $00
	ld a, c                                          ; $5744: $79
	ld b, b                                          ; $5745: $40
	add b                                            ; $5746: $80
	nop                                              ; $5747: $00
	reti                                             ; $5748: $d9


	pop bc                                           ; $5749: $c1
	ld e, e                                          ; $574a: $5b
	push hl                                          ; $574b: $e5
	inc sp                                           ; $574c: $33
	nop                                              ; $574d: $00
	nop                                              ; $574e: $00
	add hl, bc                                       ; $574f: $09
	xor [hl]                                         ; $5750: $ae
	nop                                              ; $5751: $00
	add b                                            ; $5752: $80
	nop                                              ; $5753: $00
	jp c, $c082                                      ; $5754: $da $82 $c0

	dec de                                           ; $5757: $1b
	db $dd                                           ; $5758: $dd
	ld [bc], a                                       ; $5759: $02
	ret nc                                           ; $575a: $d0

	pop de                                           ; $575b: $d1
	ld [hl], $c0                                     ; $575c: $36 $c0
	ld bc, $0aa0                                     ; $575e: $01 $a0 $0a
	nop                                              ; $5761: $00
	ld bc, $01c0                                     ; $5762: $01 $c0 $01
	and b                                            ; $5765: $a0
	ld bc, $7c00                                     ; $5766: $01 $00 $7c
	ret nz                                           ; $5769: $c0

	ld bc, $0aa0                                     ; $576a: $01 $a0 $0a
	nop                                              ; $576d: $00
	add b                                            ; $576e: $80
	ret nz                                           ; $576f: $c0

	ld bc, $01a0                                     ; $5770: $01 $a0 $01
	nop                                              ; $5773: $00
	add a                                            ; $5774: $87
	ret nz                                           ; $5775: $c0

	ld bc, $0aa0                                     ; $5776: $01 $a0 $0a
	nop                                              ; $5779: $00
	adc l                                            ; $577a: $8d
	ret nz                                           ; $577b: $c0

	ld bc, $01a0                                     ; $577c: $01 $a0 $01
	nop                                              ; $577f: $00
	sbc c                                            ; $5780: $99
	ret nz                                           ; $5781: $c0

	ld bc, $0aa0                                     ; $5782: $01 $a0 $0a
	nop                                              ; $5785: $00
	and e                                            ; $5786: $a3
	ret nz                                           ; $5787: $c0

	ld bc, $01a0                                     ; $5788: $01 $a0 $01
	nop                                              ; $578b: $00
	add hl, sp                                       ; $578c: $39
	ret nz                                           ; $578d: $c0

	ld bc, $0aa0                                     ; $578e: $01 $a0 $0a
	nop                                              ; $5791: $00
	xor [hl]                                         ; $5792: $ae
	inc bc                                           ; $5793: $03
	jp nc, $d4d3                                     ; $5794: $d2 $d3 $d4

	ld [hl], $c0                                     ; $5797: $36 $c0
	ld bc, $0aa0                                     ; $5799: $01 $a0 $0a
	nop                                              ; $579c: $00
	ld b, [hl]                                       ; $579d: $46
	ret nz                                           ; $579e: $c0

	ld bc, $01a0                                     ; $579f: $01 $a0 $01
	nop                                              ; $57a2: $00
	ld [bc], a                                       ; $57a3: $02
	ret nz                                           ; $57a4: $c0

	ld bc, $0aa0                                     ; $57a5: $01 $a0 $0a
	nop                                              ; $57a8: $00
	or a                                             ; $57a9: $b7
	ret nz                                           ; $57aa: $c0

	ld bc, $01a0                                     ; $57ab: $01 $a0 $01
	nop                                              ; $57ae: $00
	add a                                            ; $57af: $87
	ret nz                                           ; $57b0: $c0

	ld bc, $0aa0                                     ; $57b1: $01 $a0 $0a
	nop                                              ; $57b4: $00
	cp l                                             ; $57b5: $bd
	ret nz                                           ; $57b6: $c0

	ld bc, $01a0                                     ; $57b7: $01 $a0 $01
	nop                                              ; $57ba: $00
	sbc c                                            ; $57bb: $99
	ret nz                                           ; $57bc: $c0

	ld bc, $0aa0                                     ; $57bd: $01 $a0 $0a
	nop                                              ; $57c0: $00
	add $c0                                          ; $57c1: $c6 $c0
	ld bc, $01a0                                     ; $57c3: $01 $a0 $01
	nop                                              ; $57c6: $00
	add hl, sp                                       ; $57c7: $39
	ret nz                                           ; $57c8: $c0

	ld bc, $0aa0                                     ; $57c9: $01 $a0 $0a
	nop                                              ; $57cc: $00
	ld e, h                                          ; $57cd: $5c
	ld bc, $28d5                                     ; $57ce: $01 $d5 $28
	ret nz                                           ; $57d1: $c0

	ld bc, $0aa0                                     ; $57d2: $01 $a0 $0a
	nop                                              ; $57d5: $00
	ld h, d                                          ; $57d6: $62
	ret nz                                           ; $57d7: $c0

	ld bc, $01a0                                     ; $57d8: $01 $a0 $01
	nop                                              ; $57db: $00
	ld h, [hl]                                       ; $57dc: $66
	ret nz                                           ; $57dd: $c0

	ld bc, $0aa0                                     ; $57de: $01 $a0 $0a
	nop                                              ; $57e1: $00
	ld l, d                                          ; $57e2: $6a
	ret nz                                           ; $57e3: $c0

	ld bc, $01a0                                     ; $57e4: $01 $a0 $01
	nop                                              ; $57e7: $00
	sbc c                                            ; $57e8: $99
	ret nz                                           ; $57e9: $c0

	ld bc, $0aa0                                     ; $57ea: $01 $a0 $0a
	nop                                              ; $57ed: $00
	adc $c0                                          ; $57ee: $ce $c0
	ld bc, $01a0                                     ; $57f0: $01 $a0 $01
	nop                                              ; $57f3: $00
	ld a, c                                          ; $57f4: $79
	ld b, b                                          ; $57f5: $40
	add b                                            ; $57f6: $80
	nop                                              ; $57f7: $00
	jp c, $5bc1                                      ; $57f8: $da $c1 $5b

	push hl                                          ; $57fb: $e5
	inc sp                                           ; $57fc: $33
	nop                                              ; $57fd: $00
	nop                                              ; $57fe: $00
	add hl, bc                                       ; $57ff: $09
	ld l, h                                          ; $5800: $6c
	add d                                            ; $5801: $82
	ret nz                                           ; $5802: $c0

	dec de                                           ; $5803: $1b
	db $dd                                           ; $5804: $dd
	ld [bc], a                                       ; $5805: $02
	ret nc                                           ; $5806: $d0

	pop de                                           ; $5807: $d1
	dec de                                           ; $5808: $1b
	ret nz                                           ; $5809: $c0

	ld bc, $0aa0                                     ; $580a: $01 $a0 $0a
	nop                                              ; $580d: $00
	sub $c0                                          ; $580e: $d6 $c0
	ld bc, $01a0                                     ; $5810: $01 $a0 $01
	nop                                              ; $5813: $00
	call c, $01c0                                    ; $5814: $dc $c0 $01
	and b                                            ; $5817: $a0
	ld a, [bc]                                       ; $5818: $0a
	nop                                              ; $5819: $00
	pop hl                                           ; $581a: $e1
	ret nz                                           ; $581b: $c0

	ld bc, $01a0                                     ; $581c: $01 $a0 $01
	nop                                              ; $581f: $00
	jp hl                                            ; $5820: $e9


	ldh [rTMA], a                                    ; $5821: $e0 $06
	add c                                            ; $5823: $81
	inc bc                                           ; $5824: $03
	jp nc, $d4d3                                     ; $5825: $d2 $d3 $d4

	inc hl                                           ; $5828: $23
	ret nz                                           ; $5829: $c0

	ld bc, $0aa0                                     ; $582a: $01 $a0 $0a
	nop                                              ; $582d: $00
	ldh a, [$c0]                                     ; $582e: $f0 $c0
	ld bc, $01a0                                     ; $5830: $01 $a0 $01
	nop                                              ; $5833: $00
	di                                               ; $5834: $f3
	ret nz                                           ; $5835: $c0

	ld bc, $0aa0                                     ; $5836: $01 $a0 $0a
	nop                                              ; $5839: $00
	ld hl, sp-$40                                    ; $583a: $f8 $c0
	ld bc, $01a0                                     ; $583c: $01 $a0 $01
	nop                                              ; $583f: $00
	jp hl                                            ; $5840: $e9


	ldh [rTMA], a                                    ; $5841: $e0 $06
	ld d, h                                          ; $5843: $54
	ret nz                                           ; $5844: $c0

	ld bc, $0aa0                                     ; $5845: $01 $a0 $0a
	nop                                              ; $5848: $00
	ld e, h                                          ; $5849: $5c
	pop bc                                           ; $584a: $c1
	ld e, e                                          ; $584b: $5b
	ld bc, $1ad5                                     ; $584c: $01 $d5 $1a
	ret nz                                           ; $584f: $c0

	ld bc, $0aa0                                     ; $5850: $01 $a0 $0a
	nop                                              ; $5853: $00
	ld h, d                                          ; $5854: $62
	ret nz                                           ; $5855: $c0

	ld bc, $01a0                                     ; $5856: $01 $a0 $01
	ld bc, $c002                                     ; $5859: $01 $02 $c0
	ld bc, $0aa0                                     ; $585c: $01 $a0 $0a
	ld bc, $c107                                     ; $585f: $01 $07 $c1
	ld e, e                                          ; $5862: $5b
	ret nz                                           ; $5863: $c0

	ld bc, $01a0                                     ; $5864: $01 $a0 $01
	ld bc, $e50f                                     ; $5867: $01 $0f $e5
	inc sp                                           ; $586a: $33
	nop                                              ; $586b: $00
	nop                                              ; $586c: $00
	add hl, bc                                       ; $586d: $09
	dec h                                            ; $586e: $25
	ret nz                                           ; $586f: $c0

	ld hl, $ddd2                                     ; $5870: $21 $d2 $dd
	pop hl                                           ; $5873: $e1
	ld [bc], a                                       ; $5874: $02
	ld [bc], a                                       ; $5875: $02
	ld [hl], b                                       ; $5876: $70
	add d                                            ; $5877: $82
	ret nz                                           ; $5878: $c0

	add b                                            ; $5879: $80
	ld bc, $07d3                                     ; $587a: $01 $d3 $07
	ret nz                                           ; $587d: $c0

	ld [hl+], a                                      ; $587e: $22
	pop de                                           ; $587f: $d1
	db $dd                                           ; $5880: $dd
	db $e4                                           ; $5881: $e4
	ld bc, $01fb                                     ; $5882: $01 $fb $01
	jp nc, $c007                                     ; $5885: $d2 $07 $c0

	ld [hl+], a                                      ; $5888: $22
	pop de                                           ; $5889: $d1
	db $dd                                           ; $588a: $dd
	db $e4                                           ; $588b: $e4
	ld bc, $0159                                     ; $588c: $01 $59 $01
	pop de                                           ; $588f: $d1
	inc bc                                           ; $5890: $03
	db $e4                                           ; $5891: $e4
	nop                                              ; $5892: $00
	ld [bc], a                                       ; $5893: $02
	add hl, bc                                       ; $5894: $09
	ret nz                                           ; $5895: $c0

	adc $82                                          ; $5896: $ce $82
	ret nz                                           ; $5898: $c0

	dec de                                           ; $5899: $1b
	db $dd                                           ; $589a: $dd
	ld [bc], a                                       ; $589b: $02
	ret nc                                           ; $589c: $d0

	pop de                                           ; $589d: $d1
	ld c, d                                          ; $589e: $4a
	ret nz                                           ; $589f: $c0

	ld bc, $0aa0                                     ; $58a0: $01 $a0 $0a
	nop                                              ; $58a3: $00
	ld bc, $01c0                                     ; $58a4: $01 $c0 $01
	and b                                            ; $58a7: $a0
	ld bc, $1201                                     ; $58a8: $01 $01 $12
	ret nz                                           ; $58ab: $c0

	ld bc, $0aa0                                     ; $58ac: $01 $a0 $0a
	ld bc, $c01b                                     ; $58af: $01 $1b $c0
	ld bc, $01a0                                     ; $58b2: $01 $a0 $01
	ld bc, $c020                                     ; $58b5: $01 $20 $c0
	ld bc, $0aa0                                     ; $58b8: $01 $a0 $0a
	ld bc, $c034                                     ; $58bb: $01 $34 $c0
	ld bc, $01a0                                     ; $58be: $01 $a0 $01
	ld bc, $c039                                     ; $58c1: $01 $39 $c0
	ld bc, $0aa0                                     ; $58c4: $01 $a0 $0a
	ld bc, $c049                                     ; $58c7: $01 $49 $c0
	ld bc, $01a0                                     ; $58ca: $01 $a0 $01
	ld bc, $c04a                                     ; $58cd: $01 $4a $c0
	ld bc, $0aa0                                     ; $58d0: $01 $a0 $0a
	ld bc, $c04e                                     ; $58d3: $01 $4e $c0
	ld bc, $01a0                                     ; $58d6: $01 $a0 $01
	ld bc, $e05b                                     ; $58d9: $01 $5b $e0
	nop                                              ; $58dc: $00
	adc c                                            ; $58dd: $89
	ldh [rTIMA], a                                   ; $58de: $e0 $05
	or a                                             ; $58e0: $b7
	ret nz                                           ; $58e1: $c0

	ld bc, $0aa0                                     ; $58e2: $01 $a0 $0a
	ld bc, $c160                                     ; $58e5: $01 $60 $c1
	ld e, e                                          ; $58e8: $5b
	inc bc                                           ; $58e9: $03
	jp nc, $d4d3                                     ; $58ea: $d2 $d3 $d4

	ld d, [hl]                                       ; $58ed: $56
	ret nz                                           ; $58ee: $c0

	ld bc, $0aa0                                     ; $58ef: $01 $a0 $0a
	nop                                              ; $58f2: $00
	ld b, [hl]                                       ; $58f3: $46
	ret nz                                           ; $58f4: $c0

	ld bc, $01a0                                     ; $58f5: $01 $a0 $01
	ld bc, $c012                                     ; $58f8: $01 $12 $c0
	ld bc, $0aa0                                     ; $58fb: $01 $a0 $0a
	ld bc, $c06b                                     ; $58fe: $01 $6b $c0
	ld bc, $01a0                                     ; $5901: $01 $a0 $01
	ld bc, $c020                                     ; $5904: $01 $20 $c0
	ld bc, $0aa0                                     ; $5907: $01 $a0 $0a
	ld bc, $c034                                     ; $590a: $01 $34 $c0
	ld bc, $01a0                                     ; $590d: $01 $a0 $01
	ld bc, $c06f                                     ; $5910: $01 $6f $c0
	ld bc, $0aa0                                     ; $5913: $01 $a0 $0a
	ld bc, $c049                                     ; $5916: $01 $49 $c0
	ld bc, $01a0                                     ; $5919: $01 $a0 $01
	ld bc, $c04a                                     ; $591c: $01 $4a $c0
	ld bc, $0aa0                                     ; $591f: $01 $a0 $0a
	ld bc, $c07b                                     ; $5922: $01 $7b $c0
	ld bc, $01a0                                     ; $5925: $01 $a0 $01
	ld bc, $e084                                     ; $5928: $01 $84 $e0
	nop                                              ; $592b: $00
	ld a, [hl-]                                      ; $592c: $3a
	ldh [rTIMA], a                                   ; $592d: $e0 $05
	ld l, b                                          ; $592f: $68
	ret nz                                           ; $5930: $c0

	ld bc, $01a0                                     ; $5931: $01 $a0 $01
	ld bc, $c08a                                     ; $5934: $01 $8a $c0
	ld bc, $0aa0                                     ; $5937: $01 $a0 $0a
	ld bc, $c190                                     ; $593a: $01 $90 $c1
	ld e, e                                          ; $593d: $5b
	ret nz                                           ; $593e: $c0

	ld bc, $01a0                                     ; $593f: $01 $a0 $01
	ld bc, $019b                                     ; $5942: $01 $9b $01
	push de                                          ; $5945: $d5
	ld a, [de]                                       ; $5946: $1a
	ret nz                                           ; $5947: $c0

	ld bc, $0aa0                                     ; $5948: $01 $a0 $0a
	nop                                              ; $594b: $00
	ld h, d                                          ; $594c: $62
	ret nz                                           ; $594d: $c0

	ld bc, $01a0                                     ; $594e: $01 $a0 $01
	ld bc, $c012                                     ; $5951: $01 $12 $c0
	ld bc, $0aa0                                     ; $5954: $01 $a0 $0a
	ld bc, $c1a1                                     ; $5957: $01 $a1 $c1
	ld e, e                                          ; $595a: $5b
	ret nz                                           ; $595b: $c0

	ld bc, $01a0                                     ; $595c: $01 $a0 $01
	ld bc, $e5a3                                     ; $595f: $01 $a3 $e5
	inc sp                                           ; $5962: $33
	nop                                              ; $5963: $00
	nop                                              ; $5964: $00
	ld a, a                                          ; $5965: $7f
	pop hl                                           ; $5966: $e1
	ld [hl-], a                                      ; $5967: $32
	nop                                              ; $5968: $00
	nop                                              ; $5969: $00
	pop hl                                           ; $596a: $e1
	ld [bc], a                                       ; $596b: $02
	ld [bc], a                                       ; $596c: $02
	ld a, b                                          ; $596d: $78
	ld h, d                                          ; $596e: $62
	ld hl, sp-$79                                    ; $596f: $f8 $87
	ld [bc], a                                       ; $5971: $02
	sub c                                            ; $5972: $91
	ldh [rAUD3HIGH], a                               ; $5973: $e0 $1e
	ld a, [de]                                       ; $5975: $1a
	pop hl                                           ; $5976: $e1
	ld [bc], a                                       ; $5977: $02
	inc bc                                           ; $5978: $03
	dec de                                           ; $5979: $1b
	ret nz                                           ; $597a: $c0

	dec h                                            ; $597b: $25
	pop de                                           ; $597c: $d1
	db $dd                                           ; $597d: $dd
	ret nz                                           ; $597e: $c0

	ld bc, $0aa0                                     ; $597f: $01 $a0 $0a
	ld bc, $c0aa                                     ; $5982: $01 $aa $c0
	ld bc, $01a0                                     ; $5985: $01 $a0 $01
	ld bc, $c0ab                                     ; $5988: $01 $ab $c0
	ld bc, $0aa0                                     ; $598b: $01 $a0 $0a
	ld bc, $f8b9                                     ; $598e: $01 $b9 $f8
	add a                                            ; $5991: $87
	ld [bc], a                                       ; $5992: $02
	sub c                                            ; $5993: $91
	ldh [rDMA], a                                    ; $5994: $e0 $46
	ld d, $e1                                        ; $5996: $16 $e1
	ld [bc], a                                       ; $5998: $02
	inc bc                                           ; $5999: $03
	rla                                              ; $599a: $17
	ret nz                                           ; $599b: $c0

	ld bc, $0aa0                                     ; $599c: $01 $a0 $0a
	ld bc, $c0c0                                     ; $599f: $01 $c0 $c0
	ld bc, $01a0                                     ; $59a2: $01 $a0 $01
	ld bc, $c0c5                                     ; $59a5: $01 $c5 $c0
	ld bc, $0aa0                                     ; $59a8: $01 $a0 $0a
	ld bc, $f8d8                                     ; $59ab: $01 $d8 $f8
	add a                                            ; $59ae: $87
	ld [bc], a                                       ; $59af: $02
	sub c                                            ; $59b0: $91
	ldh [$5a], a                                     ; $59b1: $e0 $5a
	ld d, $e1                                        ; $59b3: $16 $e1
	ld [bc], a                                       ; $59b5: $02
	inc bc                                           ; $59b6: $03
	inc de                                           ; $59b7: $13
	ret nz                                           ; $59b8: $c0

	ld bc, $0aa0                                     ; $59b9: $01 $a0 $0a
	ld bc, $c0df                                     ; $59bc: $01 $df $c0
	ld bc, $01a0                                     ; $59bf: $01 $a0 $01
	ld bc, wGenericTileDataDest+1                                     ; $59c2: $01 $e3 $c0
	ld bc, $0aa0                                     ; $59c5: $01 $a0 $0a
	ld bc, $1ae6                                     ; $59c8: $01 $e6 $1a
	pop hl                                           ; $59cb: $e1
	ld [bc], a                                       ; $59cc: $02
	inc bc                                           ; $59cd: $03
	inc de                                           ; $59ce: $13
	ret nz                                           ; $59cf: $c0

	ld [hl+], a                                      ; $59d0: $22
	pop de                                           ; $59d1: $d1
	db $dd                                           ; $59d2: $dd
	ret nz                                           ; $59d3: $c0

	ld bc, $0aa0                                     ; $59d4: $01 $a0 $0a
	ld bc, $c0e9                                     ; $59d7: $01 $e9 $c0
	ld bc, $01a0                                     ; $59da: $01 $a0 $01
	ld bc, $c0ec                                     ; $59dd: $01 $ec $c0
	ld bc, $0aa0                                     ; $59e0: $01 $a0 $0a
	ld bc, $09f1                                     ; $59e3: $01 $f1 $09
	sub [hl]                                         ; $59e6: $96
	add d                                            ; $59e7: $82
	ret nz                                           ; $59e8: $c0

	dec de                                           ; $59e9: $1b
	db $dd                                           ; $59ea: $dd
	ld [bc], a                                       ; $59eb: $02
	ret nc                                           ; $59ec: $d0

	pop de                                           ; $59ed: $d1
	ld sp, $01c0                                     ; $59ee: $31 $c0 $01
	and b                                            ; $59f1: $a0

jr_085_59f2:
	ld a, [bc]                                       ; $59f2: $0a
	nop                                              ; $59f3: $00
	ld bc, $01c0                                     ; $59f4: $01 $c0 $01
	and b                                            ; $59f7: $a0
	ld bc, $f901                                     ; $59f8: $01 $01 $f9
	ret nz                                           ; $59fb: $c0

	ld bc, $0aa0                                     ; $59fc: $01 $a0 $0a
	ld bc, $e1fe                                     ; $59ff: $01 $fe $e1
	ld [hl-], a                                      ; $5a02: $32
	nop                                              ; $5a03: $00
	add hl, hl                                       ; $5a04: $29
	pop hl                                           ; $5a05: $e1
	ld [bc], a                                       ; $5a06: $02
	ld [bc], a                                       ; $5a07: $02
	ld a, b                                          ; $5a08: $78
	ret nz                                           ; $5a09: $c0

	ld bc, $0aa0                                     ; $5a0a: $01 $a0 $0a
	ld [bc], a                                       ; $5a0d: $02
	dec b                                            ; $5a0e: $05
	ret nz                                           ; $5a0f: $c0

	ld bc, $01a0                                     ; $5a10: $01 $a0 $01
	ld [bc], a                                       ; $5a13: $02
	dec c                                            ; $5a14: $0d
	ldh [rDIV], a                                    ; $5a15: $e0 $04
	add b                                            ; $5a17: $80
	ret nz                                           ; $5a18: $c0

	ld bc, $0aa0                                     ; $5a19: $01 $a0 $0a
	ld [bc], a                                       ; $5a1c: $02
	ld [de], a                                       ; $5a1d: $12
	pop bc                                           ; $5a1e: $c1
	ld e, e                                          ; $5a1f: $5b
	inc bc                                           ; $5a20: $03
	jp nc, $d4d3                                     ; $5a21: $d2 $d3 $d4

	inc sp                                           ; $5a24: $33
	ret nz                                           ; $5a25: $c0

	ld bc, $0aa0                                     ; $5a26: $01 $a0 $0a
	nop                                              ; $5a29: $00
	ld b, [hl]                                       ; $5a2a: $46
	ret nz                                           ; $5a2b: $c0

	ld bc, $01a0                                     ; $5a2c: $01 $a0 $01
	ld [bc], a                                       ; $5a2f: $02
	jr jr_085_59f2                                   ; $5a30: $18 $c0

	ld bc, $0aa0                                     ; $5a32: $01 $a0 $0a
	ld [bc], a                                       ; $5a35: $02
	ld e, $e1                                        ; $5a36: $1e $e1
	ld [hl-], a                                      ; $5a38: $32
	nop                                              ; $5a39: $00
	add hl, hl                                       ; $5a3a: $29
	pop hl                                           ; $5a3b: $e1
	ld [bc], a                                       ; $5a3c: $02
	ld [bc], a                                       ; $5a3d: $02
	ld a, b                                          ; $5a3e: $78
	ret nz                                           ; $5a3f: $c0

	jp z, $01c0                                      ; $5a40: $ca $c0 $01

	and b                                            ; $5a43: $a0
	ld a, [bc]                                       ; $5a44: $0a
	ld [bc], a                                       ; $5a45: $02
	ld [hl+], a                                      ; $5a46: $22
	ret nz                                           ; $5a47: $c0

	ld bc, $01a0                                     ; $5a48: $01 $a0 $01
	ld [bc], a                                       ; $5a4b: $02
	jr z, @-$1e                                      ; $5a4c: $28 $e0

	inc b                                            ; $5a4e: $04
	ld c, b                                          ; $5a4f: $48
	ret nz                                           ; $5a50: $c0

	ld bc, $0aa0                                     ; $5a51: $01 $a0 $0a
	nop                                              ; $5a54: $00
	ld e, h                                          ; $5a55: $5c
	pop bc                                           ; $5a56: $c1
	ld e, e                                          ; $5a57: $5b
	ld bc, $1ed5                                     ; $5a58: $01 $d5 $1e
	ret nz                                           ; $5a5b: $c0

	ld bc, $0aa0                                     ; $5a5c: $01 $a0 $0a
	nop                                              ; $5a5f: $00
	ld h, d                                          ; $5a60: $62
	ret nz                                           ; $5a61: $c0

	ld bc, $01a0                                     ; $5a62: $01 $a0 $01
	ld [bc], a                                       ; $5a65: $02
	jr @-$3e                                         ; $5a66: $18 $c0

	ld bc, $0aa0                                     ; $5a68: $01 $a0 $0a
	ld [bc], a                                       ; $5a6b: $02
	inc l                                            ; $5a6c: $2c
	pop hl                                           ; $5a6d: $e1
	ld [hl-], a                                      ; $5a6e: $32
	nop                                              ; $5a6f: $00
	add hl, hl                                       ; $5a70: $29
	ret nz                                           ; $5a71: $c0

	jp z, $01c0                                      ; $5a72: $ca $c0 $01

	and b                                            ; $5a75: $a0
	ld bc, $3002                                     ; $5a76: $01 $02 $30
	push hl                                          ; $5a79: $e5
	inc sp                                           ; $5a7a: $33
	nop                                              ; $5a7b: $00
	nop                                              ; $5a7c: $00
	add hl, bc                                       ; $5a7d: $09
	and [hl]                                         ; $5a7e: $a6
	add d                                            ; $5a7f: $82
	ret nz                                           ; $5a80: $c0

	dec de                                           ; $5a81: $1b
	db $dd                                           ; $5a82: $dd
	ld [bc], a                                       ; $5a83: $02
	ret nc                                           ; $5a84: $d0

	pop de                                           ; $5a85: $d1
	ld a, [hl-]                                      ; $5a86: $3a
	ret nz                                           ; $5a87: $c0

	ld bc, $0aa0                                     ; $5a88: $01 $a0 $0a
	nop                                              ; $5a8b: $00
	ld bc, $01c0                                     ; $5a8c: $01 $c0 $01
	and b                                            ; $5a8f: $a0
	ld bc, $f901                                     ; $5a90: $01 $01 $f9

jr_085_5a93:
	ret nz                                           ; $5a93: $c0

	ld bc, $0aa0                                     ; $5a94: $01 $a0 $0a
	ld [bc], a                                       ; $5a97: $02
	ld a, [hl-]                                      ; $5a98: $3a
	pop hl                                           ; $5a99: $e1
	ld [hl-], a                                      ; $5a9a: $32
	nop                                              ; $5a9b: $00
	add c                                            ; $5a9c: $81
	pop hl                                           ; $5a9d: $e1
	ld [bc], a                                       ; $5a9e: $02
	ld [bc], a                                       ; $5a9f: $02
	ld a, b                                          ; $5aa0: $78
	ret nz                                           ; $5aa1: $c0

	ld bc, $0aa0                                     ; $5aa2: $01 $a0 $0a
	ld [bc], a                                       ; $5aa5: $02
	ld b, b                                          ; $5aa6: $40
	ret nz                                           ; $5aa7: $c0

	ld bc, $01a0                                     ; $5aa8: $01 $a0 $01
	ld [bc], a                                       ; $5aab: $02
	ld c, h                                          ; $5aac: $4c
	ret nz                                           ; $5aad: $c0

	ld bc, $0aa0                                     ; $5aae: $01 $a0 $0a
	ld [bc], a                                       ; $5ab1: $02
	ld d, b                                          ; $5ab2: $50
	ret nz                                           ; $5ab3: $c0

	ld bc, $01a0                                     ; $5ab4: $01 $a0 $01
	nop                                              ; $5ab7: $00
	add hl, sp                                       ; $5ab8: $39
	ret nz                                           ; $5ab9: $c0

	ld bc, $0aa0                                     ; $5aba: $01 $a0 $0a
	ld [bc], a                                       ; $5abd: $02
	ld [de], a                                       ; $5abe: $12
	pop bc                                           ; $5abf: $c1
	ld e, e                                          ; $5ac0: $5b
	inc bc                                           ; $5ac1: $03
	jp nc, $d4d3                                     ; $5ac2: $d2 $d3 $d4

	ld a, [hl-]                                      ; $5ac5: $3a
	ret nz                                           ; $5ac6: $c0

	ld bc, $0aa0                                     ; $5ac7: $01 $a0 $0a
	nop                                              ; $5aca: $00
	ld b, [hl]                                       ; $5acb: $46
	ret nz                                           ; $5acc: $c0

	ld bc, $01a0                                     ; $5acd: $01 $a0 $01

jr_085_5ad0:
	ld [bc], a                                       ; $5ad0: $02
	jr jr_085_5a93                                   ; $5ad1: $18 $c0

	ld bc, $0aa0                                     ; $5ad3: $01 $a0 $0a
	ld [bc], a                                       ; $5ad6: $02
	ld d, h                                          ; $5ad7: $54
	pop hl                                           ; $5ad8: $e1
	ld [hl-], a                                      ; $5ad9: $32
	nop                                              ; $5ada: $00
	add c                                            ; $5adb: $81
	pop hl                                           ; $5adc: $e1
	ld [bc], a                                       ; $5add: $02
	ld [bc], a                                       ; $5ade: $02
	ld a, b                                          ; $5adf: $78
	ret nz                                           ; $5ae0: $c0

	ld bc, $0aa0                                     ; $5ae1: $01 $a0 $0a
	ld [bc], a                                       ; $5ae4: $02
	ld e, c                                          ; $5ae5: $59
	ret nz                                           ; $5ae6: $c0

	ld bc, $01a0                                     ; $5ae7: $01 $a0 $01
	ld [bc], a                                       ; $5aea: $02
	ld h, h                                          ; $5aeb: $64
	ret nz                                           ; $5aec: $c0

	ld bc, $0aa0                                     ; $5aed: $01 $a0 $0a
	ld [bc], a                                       ; $5af0: $02
	ld l, d                                          ; $5af1: $6a
	ret nz                                           ; $5af2: $c0

	ld bc, $01a0                                     ; $5af3: $01 $a0 $01
	nop                                              ; $5af6: $00
	add hl, sp                                       ; $5af7: $39
	ret nz                                           ; $5af8: $c0

	ld bc, $0aa0                                     ; $5af9: $01 $a0 $0a
	nop                                              ; $5afc: $00
	ld e, h                                          ; $5afd: $5c
	pop bc                                           ; $5afe: $c1
	ld e, e                                          ; $5aff: $5b
	ld bc, $1ed5                                     ; $5b00: $01 $d5 $1e
	ret nz                                           ; $5b03: $c0

	ld bc, $0aa0                                     ; $5b04: $01 $a0 $0a
	nop                                              ; $5b07: $00
	ld h, d                                          ; $5b08: $62
	ret nz                                           ; $5b09: $c0

	ld bc, $01a0                                     ; $5b0a: $01 $a0 $01
	ld [bc], a                                       ; $5b0d: $02
	jr jr_085_5ad0                                   ; $5b0e: $18 $c0

	ld bc, $0aa0                                     ; $5b10: $01 $a0 $0a
	ld [bc], a                                       ; $5b13: $02
	ld [hl], h                                       ; $5b14: $74
	pop hl                                           ; $5b15: $e1
	ld [hl-], a                                      ; $5b16: $32
	nop                                              ; $5b17: $00
	add c                                            ; $5b18: $81
	ret nz                                           ; $5b19: $c0

	jp z, $01c0                                      ; $5b1a: $ca $c0 $01

	and b                                            ; $5b1d: $a0
	ld bc, $3002                                     ; $5b1e: $01 $02 $30
	push hl                                          ; $5b21: $e5
	inc sp                                           ; $5b22: $33
	nop                                              ; $5b23: $00
	nop                                              ; $5b24: $00
	add hl, bc                                       ; $5b25: $09
	dec h                                            ; $5b26: $25
	pop hl                                           ; $5b27: $e1
	ld [bc], a                                       ; $5b28: $02
	ld [bc], a                                       ; $5b29: $02
	ld [hl], b                                       ; $5b2a: $70
	add d                                            ; $5b2b: $82
	ret nz                                           ; $5b2c: $c0

	add b                                            ; $5b2d: $80
	ld bc, $07d3                                     ; $5b2e: $01 $d3 $07
	ret nz                                           ; $5b31: $c0

	ld hl, $ddd1                                     ; $5b32: $21 $d1 $dd
	db $e4                                           ; $5b35: $e4
	ld bc, $0146                             ; $5b36: $01 $46 $01
	jp nc, $c007                                     ; $5b39: $d2 $07 $c0

	ld hl, $ddd2                                     ; $5b3c: $21 $d2 $dd
	db $e4                                           ; $5b3f: $e4
	nop                                              ; $5b40: $00
	add $01                                          ; $5b41: $c6 $01
	pop de                                           ; $5b43: $d1
	rlca                                             ; $5b44: $07
	ret nz                                           ; $5b45: $c0

	ld hl, $ddd1                                     ; $5b46: $21 $d1 $dd
	db $e4                                           ; $5b49: $e4
	nop                                              ; $5b4a: $00
	ld [bc], a                                       ; $5b4b: $02
	add hl, bc                                       ; $5b4c: $09
	cp b                                             ; $5b4d: $b8
	add d                                            ; $5b4e: $82
	ret nz                                           ; $5b4f: $c0

	dec de                                           ; $5b50: $1b
	db $dd                                           ; $5b51: $dd
	ld [bc], a                                       ; $5b52: $02
	ret nc                                           ; $5b53: $d0

	pop de                                           ; $5b54: $d1
	ld b, l                                          ; $5b55: $45
	ret nz                                           ; $5b56: $c0

	ld bc, $0aa0                                     ; $5b57: $01 $a0 $0a
	nop                                              ; $5b5a: $00
	ld bc, $01c0                                     ; $5b5b: $01 $c0 $01
	and b                                            ; $5b5e: $a0
	ld bc, $7a02                                     ; $5b5f: $01 $02 $7a
	ret nz                                           ; $5b62: $c0

	ld bc, $0aa0                                     ; $5b63: $01 $a0 $0a
	ld [bc], a                                       ; $5b66: $02
	add d                                            ; $5b67: $82
	pop hl                                           ; $5b68: $e1
	ld [bc], a                                       ; $5b69: $02
	rlca                                             ; $5b6a: $07
	cp a                                             ; $5b6b: $bf
	ret nz                                           ; $5b6c: $c0

	ld bc, $01a0                                     ; $5b6d: $01 $a0 $01
	ld [bc], a                                       ; $5b70: $02
	adc b                                            ; $5b71: $88
	ld h, b                                          ; $5b72: $60
	ei                                               ; $5b73: $fb
	pop bc                                           ; $5b74: $c1
	ld c, l                                          ; $5b75: $4d
	ldh [$64], a                                     ; $5b76: $e0 $64
	inc c                                            ; $5b78: $0c
	ret nz                                           ; $5b79: $c0

	ld bc, $0aa0                                     ; $5b7a: $01 $a0 $0a
	ld [bc], a                                       ; $5b7d: $02
	adc h                                            ; $5b7e: $8c
	ret nz                                           ; $5b7f: $c0

	ld bc, $01a0                                     ; $5b80: $01 $a0 $01
	ld [bc], a                                       ; $5b83: $02
	sub c                                            ; $5b84: $91
	inc c                                            ; $5b85: $0c
	ret nz                                           ; $5b86: $c0

	ld bc, $0aa0                                     ; $5b87: $01 $a0 $0a
	ld [bc], a                                       ; $5b8a: $02
	sbc b                                            ; $5b8b: $98
	ret nz                                           ; $5b8c: $c0

	ld bc, $01a0                                     ; $5b8d: $01 $a0 $01
	ld [bc], a                                       ; $5b90: $02
	sbc [hl]                                         ; $5b91: $9e
	ldh [$03], a                                     ; $5b92: $e0 $03
	inc bc                                           ; $5b94: $03
	ret nz                                           ; $5b95: $c0

	ld bc, $0aa0                                     ; $5b96: $01 $a0 $0a
	ld [bc], a                                       ; $5b99: $02
	and l                                            ; $5b9a: $a5
	inc bc                                           ; $5b9b: $03
	jp nc, $d4d3                                     ; $5b9c: $d2 $d3 $d4

	ld b, l                                          ; $5b9f: $45
	ret nz                                           ; $5ba0: $c0

	ld bc, $0aa0                                     ; $5ba1: $01 $a0 $0a
	nop                                              ; $5ba4: $00
	ld b, [hl]                                       ; $5ba5: $46
	ret nz                                           ; $5ba6: $c0

	ld bc, $01a0                                     ; $5ba7: $01 $a0 $01
	ld [bc], a                                       ; $5baa: $02
	ld a, d                                          ; $5bab: $7a
	ret nz                                           ; $5bac: $c0

	ld bc, $0aa0                                     ; $5bad: $01 $a0 $0a
	ld [bc], a                                       ; $5bb0: $02
	xor h                                            ; $5bb1: $ac
	pop hl                                           ; $5bb2: $e1
	ld [bc], a                                       ; $5bb3: $02
	rlca                                             ; $5bb4: $07
	cp a                                             ; $5bb5: $bf
	ret nz                                           ; $5bb6: $c0

	ld bc, $01a0                                     ; $5bb7: $01 $a0 $01
	ld [bc], a                                       ; $5bba: $02
	adc b                                            ; $5bbb: $88
	ld h, b                                          ; $5bbc: $60
	ei                                               ; $5bbd: $fb
	pop bc                                           ; $5bbe: $c1
	ld c, l                                          ; $5bbf: $4d
	ldh [$64], a                                     ; $5bc0: $e0 $64
	inc c                                            ; $5bc2: $0c
	ret nz                                           ; $5bc3: $c0

	ld bc, $0aa0                                     ; $5bc4: $01 $a0 $0a
	ld [bc], a                                       ; $5bc7: $02
	or e                                             ; $5bc8: $b3
	ret nz                                           ; $5bc9: $c0

	ld bc, $01a0                                     ; $5bca: $01 $a0 $01
	ld [bc], a                                       ; $5bcd: $02
	sub c                                            ; $5bce: $91
	inc c                                            ; $5bcf: $0c
	ret nz                                           ; $5bd0: $c0

	ld bc, $0aa0                                     ; $5bd1: $01 $a0 $0a
	ld [bc], a                                       ; $5bd4: $02
	or [hl]                                          ; $5bd5: $b6
	ret nz                                           ; $5bd6: $c0

	ld bc, $01a0                                     ; $5bd7: $01 $a0 $01
	ld [bc], a                                       ; $5bda: $02
	sbc [hl]                                         ; $5bdb: $9e
	ldh [rSC], a                                     ; $5bdc: $e0 $02
	cp c                                             ; $5bde: $b9
	ret nz                                           ; $5bdf: $c0

	ld bc, $0aa0                                     ; $5be0: $01 $a0 $0a
	nop                                              ; $5be3: $00
	ld e, h                                          ; $5be4: $5c
	ld bc, $18d5                                     ; $5be5: $01 $d5 $18
	ret nz                                           ; $5be8: $c0

	ld bc, $0aa0                                     ; $5be9: $01 $a0 $0a
	ld [bc], a                                       ; $5bec: $02
	cp a                                             ; $5bed: $bf
	ret nz                                           ; $5bee: $c0

	ld bc, $01a0                                     ; $5bef: $01 $a0 $01
	ld [bc], a                                       ; $5bf2: $02
	ld a, d                                          ; $5bf3: $7a
	ret nz                                           ; $5bf4: $c0

	ld bc, $0aa0                                     ; $5bf5: $01 $a0 $0a
	ld [bc], a                                       ; $5bf8: $02
	jp nz, $01c0                                     ; $5bf9: $c2 $c0 $01

	and b                                            ; $5bfc: $a0
	ld bc, $7900                                     ; $5bfd: $01 $00 $79
	pop bc                                           ; $5c00: $c1
	ld e, e                                          ; $5c01: $5b
	push hl                                          ; $5c02: $e5
	inc sp                                           ; $5c03: $33
	nop                                              ; $5c04: $00
	nop                                              ; $5c05: $00
	add hl, bc                                       ; $5c06: $09
	ld [hl], h                                       ; $5c07: $74
	add d                                            ; $5c08: $82
	ret nz                                           ; $5c09: $c0

	dec de                                           ; $5c0a: $1b
	db $dd                                           ; $5c0b: $dd
	ld [bc], a                                       ; $5c0c: $02
	ret nc                                           ; $5c0d: $d0

	pop de                                           ; $5c0e: $d1
	ld h, $c0                                        ; $5c0f: $26 $c0
	ld bc, $0aa0                                     ; $5c11: $01 $a0 $0a
	ld [bc], a                                       ; $5c14: $02
	jp z, $01c0                                      ; $5c15: $ca $c0 $01

	and b                                            ; $5c18: $a0
	ld bc, $d102                                     ; $5c19: $01 $02 $d1
	ret nz                                           ; $5c1c: $c0

	ld bc, $0aa0                                     ; $5c1d: $01 $a0 $0a
	ld [bc], a                                       ; $5c20: $02
	rst SubAFromHL                                          ; $5c21: $d7
	ret nz                                           ; $5c22: $c0

	ld bc, $01a0                                     ; $5c23: $01 $a0 $01
	ld [bc], a                                       ; $5c26: $02
	db $db                                           ; $5c27: $db
	ret nz                                           ; $5c28: $c0

	ld bc, $0aa0                                     ; $5c29: $01 $a0 $0a
	ld [bc], a                                       ; $5c2c: $02
	pop hl                                           ; $5c2d: $e1
	pop bc                                           ; $5c2e: $c1
	ld e, e                                          ; $5c2f: $5b
	ret nz                                           ; $5c30: $c0

	ld bc, $01a0                                     ; $5c31: $01 $a0 $01
	ld [bc], a                                       ; $5c34: $02
	rst SubAFromBC                                          ; $5c35: $e7
	inc bc                                           ; $5c36: $03
	jp nc, $d4d3                                     ; $5c37: $d2 $d3 $d4

	ld h, $c0                                        ; $5c3a: $26 $c0
	ld bc, $0aa0                                     ; $5c3c: $01 $a0 $0a
	nop                                              ; $5c3f: $00
	ld b, [hl]                                       ; $5c40: $46
	ret nz                                           ; $5c41: $c0

	ld bc, $01a0                                     ; $5c42: $01 $a0 $01
	ld [bc], a                                       ; $5c45: $02
	pop de                                           ; $5c46: $d1
	ret nz                                           ; $5c47: $c0

	ld bc, $0aa0                                     ; $5c48: $01 $a0 $0a
	ld [bc], a                                       ; $5c4b: $02
	db $ec                                           ; $5c4c: $ec
	ret nz                                           ; $5c4d: $c0

	ld bc, $01a0                                     ; $5c4e: $01 $a0 $01
	ld [bc], a                                       ; $5c51: $02
	db $db                                           ; $5c52: $db
	ret nz                                           ; $5c53: $c0

	ld bc, $0aa0                                     ; $5c54: $01 $a0 $0a
	ld [bc], a                                       ; $5c57: $02
	ldh a, [$c1]                                     ; $5c58: $f0 $c1
	ld e, e                                          ; $5c5a: $5b
	ret nz                                           ; $5c5b: $c0

	ld bc, $01a0                                     ; $5c5c: $01 $a0 $01
	ld [bc], a                                       ; $5c5f: $02
	rst SubAFromBC                                          ; $5c60: $e7
	ld bc, $14d5                                     ; $5c61: $01 $d5 $14
	ret nz                                           ; $5c64: $c0

	ld bc, $0aa0                                     ; $5c65: $01 $a0 $0a
	ld bc, $c0aa                                     ; $5c68: $01 $aa $c0
	ld bc, $01a0                                     ; $5c6b: $01 $a0 $01
	ld [bc], a                                       ; $5c6e: $02
	ei                                               ; $5c6f: $fb
	pop bc                                           ; $5c70: $c1
	ld e, e                                          ; $5c71: $5b
	ret nz                                           ; $5c72: $c0

	ld bc, $01a0                                     ; $5c73: $01 $a0 $01
	ld [bc], a                                       ; $5c76: $02
	rst $38                                          ; $5c77: $ff
	push hl                                          ; $5c78: $e5
	inc sp                                           ; $5c79: $33
	nop                                              ; $5c7a: $00
	nop                                              ; $5c7b: $00
	add hl, bc                                       ; $5c7c: $09
	sbc b                                            ; $5c7d: $98
	add d                                            ; $5c7e: $82
	ret nz                                           ; $5c7f: $c0

	dec de                                           ; $5c80: $1b
	db $dd                                           ; $5c81: $dd
	ld [bc], a                                       ; $5c82: $02
	ret nc                                           ; $5c83: $d0

	pop de                                           ; $5c84: $d1
	dec sp                                           ; $5c85: $3b
	ret nz                                           ; $5c86: $c0

	ld bc, $0aa0                                     ; $5c87: $01 $a0 $0a
	nop                                              ; $5c8a: $00
	ld bc, $01c0                                     ; $5c8b: $01 $c0 $01
	and b                                            ; $5c8e: $a0
	ld bc, $7c00                                     ; $5c8f: $01 $00 $7c
	ret nz                                           ; $5c92: $c0

	ld bc, $0aa0                                     ; $5c93: $01 $a0 $0a
	inc bc                                           ; $5c96: $03
	rlca                                             ; $5c97: $07
	ret nz                                           ; $5c98: $c0

	ld bc, $01a0                                     ; $5c99: $01 $a0 $01
	inc bc                                           ; $5c9c: $03
	ld c, $c0                                        ; $5c9d: $0e $c0
	ld bc, $0aa0                                     ; $5c9f: $01 $a0 $0a
	inc bc                                           ; $5ca2: $03
	ld [de], a                                       ; $5ca3: $12
	ret nz                                           ; $5ca4: $c0

	ld bc, $01a0                                     ; $5ca5: $01 $a0 $01
	inc bc                                           ; $5ca8: $03
	ld d, $c0                                        ; $5ca9: $16 $c0
	ld bc, $0aa0                                     ; $5cab: $01 $a0 $0a
	inc bc                                           ; $5cae: $03
	ld e, $c0                                        ; $5caf: $1e $c0
	ld bc, $01a0                                     ; $5cb1: $01 $a0 $01
	inc bc                                           ; $5cb4: $03
	add hl, hl                                       ; $5cb5: $29
	ldh [rSB], a                                     ; $5cb6: $e0 $01
	rst SubAFromDE                                          ; $5cb8: $df
	ret nz                                           ; $5cb9: $c0

	ld bc, $0aa0                                     ; $5cba: $01 $a0 $0a
	ld [bc], a                                       ; $5cbd: $02
	and l                                            ; $5cbe: $a5
	pop bc                                           ; $5cbf: $c1
	ld e, e                                          ; $5cc0: $5b
	inc bc                                           ; $5cc1: $03
	jp nc, $d4d3                                     ; $5cc2: $d2 $d3 $d4

	cpl                                              ; $5cc5: $2f
	ret nz                                           ; $5cc6: $c0

	ld bc, $0aa0                                     ; $5cc7: $01 $a0 $0a
	nop                                              ; $5cca: $00
	ld b, [hl]                                       ; $5ccb: $46
	ret nz                                           ; $5ccc: $c0

	ld bc, $01a0                                     ; $5ccd: $01 $a0 $01
	nop                                              ; $5cd0: $00
	ld a, h                                          ; $5cd1: $7c
	ret nz                                           ; $5cd2: $c0

	ld bc, $0aa0                                     ; $5cd3: $01 $a0 $0a
	inc bc                                           ; $5cd6: $03
	ld sp, $01c0                                     ; $5cd7: $31 $c0 $01
	and b                                            ; $5cda: $a0
	ld bc, $3603                                     ; $5cdb: $01 $03 $36
	ret nz                                           ; $5cde: $c0

	ld bc, $0aa0                                     ; $5cdf: $01 $a0 $0a
	inc bc                                           ; $5ce2: $03
	dec sp                                           ; $5ce3: $3b
	ret nz                                           ; $5ce4: $c0

	ld bc, $01a0                                     ; $5ce5: $01 $a0 $01
	inc bc                                           ; $5ce8: $03
	ld a, $e0                                        ; $5ce9: $3e $e0
	ld bc, $c0ab                                     ; $5ceb: $01 $ab $c0
	ld bc, $0aa0                                     ; $5cee: $01 $a0 $0a
	nop                                              ; $5cf1: $00
	ld e, h                                          ; $5cf2: $5c
	pop bc                                           ; $5cf3: $c1
	ld e, e                                          ; $5cf4: $5b
	ld bc, $1ad5                                     ; $5cf5: $01 $d5 $1a
	ret nz                                           ; $5cf8: $c0

	ld bc, $0aa0                                     ; $5cf9: $01 $a0 $0a
	nop                                              ; $5cfc: $00
	ld h, d                                          ; $5cfd: $62
	ret nz                                           ; $5cfe: $c0

	ld bc, $01a0                                     ; $5cff: $01 $a0 $01
	ld bc, $c002                                     ; $5d02: $01 $02 $c0
	ld bc, $0aa0                                     ; $5d05: $01 $a0 $0a
	inc bc                                           ; $5d08: $03
	ld b, c                                          ; $5d09: $41
	pop bc                                           ; $5d0a: $c1
	ld e, e                                          ; $5d0b: $5b
	ret nz                                           ; $5d0c: $c0

	ld bc, $01a0                                     ; $5d0d: $01 $a0 $01
	inc bc                                           ; $5d10: $03
	ld c, e                                          ; $5d11: $4b
	push hl                                          ; $5d12: $e5
	inc sp                                           ; $5d13: $33
	nop                                              ; $5d14: $00
	nop                                              ; $5d15: $00
	add hl, bc                                       ; $5d16: $09
	dec e                                            ; $5d17: $1d
	ret nz                                           ; $5d18: $c0

	ld hl, $ddd2                                     ; $5d19: $21 $d2 $dd
	ret nz                                           ; $5d1c: $c0

	ld [hl+], a                                      ; $5d1d: $22
	pop de                                           ; $5d1e: $d1
	db $dd                                           ; $5d1f: $dd
	add d                                            ; $5d20: $82

jr_085_5d21:
	ret nz                                           ; $5d21: $c0

	add b                                            ; $5d22: $80
	ld bc, $03d3                                     ; $5d23: $01 $d3 $03
	db $e4                                           ; $5d26: $e4
	nop                                              ; $5d27: $00
	and $01                                          ; $5d28: $e6 $01
	jp nc, $e403                                     ; $5d2a: $d2 $03 $e4

	nop                                              ; $5d2d: $00
	add c                                            ; $5d2e: $81
	ld bc, $03d1                                     ; $5d2f: $01 $d1 $03
	db $e4                                           ; $5d32: $e4
	nop                                              ; $5d33: $00
	ld [bc], a                                       ; $5d34: $02
	add hl, bc                                       ; $5d35: $09
	ld [hl], a                                       ; $5d36: $77
	add d                                            ; $5d37: $82
	ret nz                                           ; $5d38: $c0

	dec de                                           ; $5d39: $1b
	db $dd                                           ; $5d3a: $dd
	ld [bc], a                                       ; $5d3b: $02
	ret nc                                           ; $5d3c: $d0

	pop de                                           ; $5d3d: $d1
	jr nc, jr_085_5d21                               ; $5d3e: $30 $e1

	ld [bc], a                                       ; $5d40: $02
	ld [bc], a                                       ; $5d41: $02
	ld [hl], b                                       ; $5d42: $70
	ret nz                                           ; $5d43: $c0

	ld bc, $0aa0                                     ; $5d44: $01 $a0 $0a
	nop                                              ; $5d47: $00
	sub $c0                                          ; $5d48: $d6 $c0
	ld bc, $01a0                                     ; $5d4a: $01 $a0 $01
	inc bc                                           ; $5d4d: $03
	ld c, [hl]                                       ; $5d4e: $4e
	ret nz                                           ; $5d4f: $c0

	ld bc, $0aa0                                     ; $5d50: $01 $a0 $0a
	inc bc                                           ; $5d53: $03
	ld d, h                                          ; $5d54: $54
	ret nz                                           ; $5d55: $c0

jr_085_5d56:
	ld bc, $01a0                                     ; $5d56: $01 $a0 $01
	inc bc                                           ; $5d59: $03
	ld e, a                                          ; $5d5a: $5f
	ret nz                                           ; $5d5b: $c0

	ld bc, $0aa0                                     ; $5d5c: $01 $a0 $0a
	inc bc                                           ; $5d5f: $03
	ld l, l                                          ; $5d60: $6d
	ret nz                                           ; $5d61: $c0

	ld bc, $01a0                                     ; $5d62: $01 $a0 $01
	nop                                              ; $5d65: $00
	add hl, sp                                       ; $5d66: $39
	ret nz                                           ; $5d67: $c0

	ld bc, $0aa0                                     ; $5d68: $01 $a0 $0a
	inc bc                                           ; $5d6b: $03
	ld a, a                                          ; $5d6c: $7f
	pop bc                                           ; $5d6d: $c1
	ld e, e                                          ; $5d6e: $5b
	inc bc                                           ; $5d6f: $03
	jp nc, $d4d3                                     ; $5d70: $d2 $d3 $d4

	jr nc, jr_085_5d56                               ; $5d73: $30 $e1

	ld [bc], a                                       ; $5d75: $02
	ld [bc], a                                       ; $5d76: $02
	ld [hl], b                                       ; $5d77: $70
	ret nz                                           ; $5d78: $c0

	ld bc, $0aa0                                     ; $5d79: $01 $a0 $0a
	nop                                              ; $5d7c: $00
	ldh a, [$c0]                                     ; $5d7d: $f0 $c0
	ld bc, $01a0                                     ; $5d7f: $01 $a0 $01
	inc bc                                           ; $5d82: $03
	ld c, [hl]                                       ; $5d83: $4e
	ret nz                                           ; $5d84: $c0

	ld bc, $0aa0                                     ; $5d85: $01 $a0 $0a
	inc bc                                           ; $5d88: $03
	add [hl]                                         ; $5d89: $86
	ret nz                                           ; $5d8a: $c0

	ld bc, $01a0                                     ; $5d8b: $01 $a0 $01
	inc bc                                           ; $5d8e: $03
	adc l                                            ; $5d8f: $8d
	ret nz                                           ; $5d90: $c0

	ld bc, $0aa0                                     ; $5d91: $01 $a0 $0a
	inc bc                                           ; $5d94: $03
	sub a                                            ; $5d95: $97
	ret nz                                           ; $5d96: $c0

	ld bc, $01a0                                     ; $5d97: $01 $a0 $01
	nop                                              ; $5d9a: $00
	add hl, sp                                       ; $5d9b: $39
	ret nz                                           ; $5d9c: $c0

	ld bc, $0aa0                                     ; $5d9d: $01 $a0 $0a
	nop                                              ; $5da0: $00
	ld e, h                                          ; $5da1: $5c
	pop bc                                           ; $5da2: $c1
	ld e, e                                          ; $5da3: $5b
	ld bc, $03d5                                     ; $5da4: $01 $d5 $03
	ldh [rP1], a                                     ; $5da7: $e0 $00
	call nz, $33e5                                   ; $5da9: $c4 $e5 $33
	nop                                              ; $5dac: $00
	nop                                              ; $5dad: $00
	add hl, bc                                       ; $5dae: $09
	ld e, l                                          ; $5daf: $5d
	add d                                            ; $5db0: $82
	ret nz                                           ; $5db1: $c0

	dec de                                           ; $5db2: $1b
	db $dd                                           ; $5db3: $dd
	ld [bc], a                                       ; $5db4: $02
	ret nc                                           ; $5db5: $d0

	pop de                                           ; $5db6: $d1
	rra                                              ; $5db7: $1f
	pop hl                                           ; $5db8: $e1
	ld [bc], a                                       ; $5db9: $02
	ld [bc], a                                       ; $5dba: $02
	ld [hl], b                                       ; $5dbb: $70
	ret nz                                           ; $5dbc: $c0

	ld bc, $0aa0                                     ; $5dbd: $01 $a0 $0a
	nop                                              ; $5dc0: $00
	sub $c0                                          ; $5dc1: $d6 $c0
	ld bc, $01a0                                     ; $5dc3: $01 $a0 $01
	inc bc                                           ; $5dc6: $03
	ld c, [hl]                                       ; $5dc7: $4e
	ret nz                                           ; $5dc8: $c0

	ld bc, $0aa0                                     ; $5dc9: $01 $a0 $0a
	inc bc                                           ; $5dcc: $03
	and e                                            ; $5dcd: $a3
	ret nz                                           ; $5dce: $c0

	ld bc, $01a0                                     ; $5dcf: $01 $a0 $01
	ld [bc], a                                       ; $5dd2: $02
	dec c                                            ; $5dd3: $0d
	ldh [rP1], a                                     ; $5dd4: $e0 $00
	adc $03                                          ; $5dd6: $ce $03
	jp nc, $d4d3                                     ; $5dd8: $d2 $d3 $d4

	daa                                              ; $5ddb: $27
	pop hl                                           ; $5ddc: $e1
	ld [bc], a                                       ; $5ddd: $02
	ld [bc], a                                       ; $5dde: $02
	ld [hl], b                                       ; $5ddf: $70
	ret nz                                           ; $5de0: $c0

	ld bc, $0aa0                                     ; $5de1: $01 $a0 $0a
	inc bc                                           ; $5de4: $03
	and a                                            ; $5de5: $a7
	ret nz                                           ; $5de6: $c0

	ld bc, $01a0                                     ; $5de7: $01 $a0 $01
	inc bc                                           ; $5dea: $03
	ld c, [hl]                                       ; $5deb: $4e
	ret nz                                           ; $5dec: $c0

	ld bc, $0aa0                                     ; $5ded: $01 $a0 $0a
	inc bc                                           ; $5df0: $03
	xor d                                            ; $5df1: $aa
	ret nz                                           ; $5df2: $c0

	ld bc, $01a0                                     ; $5df3: $01 $a0 $01
	ld [bc], a                                       ; $5df6: $02
	dec c                                            ; $5df7: $0d
	ldh [rP1], a                                     ; $5df8: $e0 $00
	sbc l                                            ; $5dfa: $9d
	ret nz                                           ; $5dfb: $c0

	ld bc, $0aa0                                     ; $5dfc: $01 $a0 $0a
	nop                                              ; $5dff: $00
	ld e, h                                          ; $5e00: $5c
	pop bc                                           ; $5e01: $c1
	ld e, e                                          ; $5e02: $5b
	ld bc, $03d5                                     ; $5e03: $01 $d5 $03
	ldh [rP1], a                                     ; $5e06: $e0 $00
	ld h, l                                          ; $5e08: $65
	push hl                                          ; $5e09: $e5
	inc sp                                           ; $5e0a: $33
	nop                                              ; $5e0b: $00
	nop                                              ; $5e0c: $00
	add hl, bc                                       ; $5e0d: $09
	ld e, l                                          ; $5e0e: $5d
	add d                                            ; $5e0f: $82
	ret nz                                           ; $5e10: $c0

	dec de                                           ; $5e11: $1b
	db $dd                                           ; $5e12: $dd
	ld [bc], a                                       ; $5e13: $02
	ret nc                                           ; $5e14: $d0

	pop de                                           ; $5e15: $d1
	rra                                              ; $5e16: $1f
	pop hl                                           ; $5e17: $e1
	ld [bc], a                                       ; $5e18: $02
	ld [bc], a                                       ; $5e19: $02
	ld [hl], b                                       ; $5e1a: $70
	ret nz                                           ; $5e1b: $c0

	ld bc, $0aa0                                     ; $5e1c: $01 $a0 $0a
	nop                                              ; $5e1f: $00
	sub $c0                                          ; $5e20: $d6 $c0
	ld bc, $01a0                                     ; $5e22: $01 $a0 $01
	inc bc                                           ; $5e25: $03
	ld c, [hl]                                       ; $5e26: $4e
	ret nz                                           ; $5e27: $c0

	ld bc, $0aa0                                     ; $5e28: $01 $a0 $0a
	inc bc                                           ; $5e2b: $03
	or e                                             ; $5e2c: $b3
	ret nz                                           ; $5e2d: $c0

	ld bc, $01a0                                     ; $5e2e: $01 $a0 $01
	inc bc                                           ; $5e31: $03
	cp h                                             ; $5e32: $bc
	ldh [rP1], a                                     ; $5e33: $e0 $00
	ld l, a                                          ; $5e35: $6f
	inc bc                                           ; $5e36: $03
	jp nc, $d4d3                                     ; $5e37: $d2 $d3 $d4

	daa                                              ; $5e3a: $27
	pop hl                                           ; $5e3b: $e1
	ld [bc], a                                       ; $5e3c: $02
	ld [bc], a                                       ; $5e3d: $02
	ld [hl], b                                       ; $5e3e: $70
	ret nz                                           ; $5e3f: $c0

	ld bc, $0aa0                                     ; $5e40: $01 $a0 $0a
	inc bc                                           ; $5e43: $03
	and a                                            ; $5e44: $a7
	ret nz                                           ; $5e45: $c0

	ld bc, $01a0                                     ; $5e46: $01 $a0 $01
	inc bc                                           ; $5e49: $03
	ld c, [hl]                                       ; $5e4a: $4e
	ret nz                                           ; $5e4b: $c0

	ld bc, $0aa0                                     ; $5e4c: $01 $a0 $0a
	inc bc                                           ; $5e4f: $03
	ret nz                                           ; $5e50: $c0

	ret nz                                           ; $5e51: $c0

	ld bc, $01a0                                     ; $5e52: $01 $a0 $01
	inc bc                                           ; $5e55: $03
	jp z, $00e0                                      ; $5e56: $ca $e0 $00

	ld a, $c0                                        ; $5e59: $3e $c0
	ld bc, $0aa0                                     ; $5e5b: $01 $a0 $0a
	nop                                              ; $5e5e: $00
	ld e, h                                          ; $5e5f: $5c
	pop bc                                           ; $5e60: $c1
	ld e, e                                          ; $5e61: $5b
	ld bc, $03d5                                     ; $5e62: $01 $d5 $03
	ldh [rP1], a                                     ; $5e65: $e0 $00
	ld b, $e5                                        ; $5e67: $06 $e5
	inc sp                                           ; $5e69: $33
	nop                                              ; $5e6a: $00
	nop                                              ; $5e6b: $00
	add hl, hl                                       ; $5e6c: $29
	or b                                             ; $5e6d: $b0
	ld a, a                                          ; $5e6e: $7f
	ld e, $e1                                        ; $5e6f: $1e $e1
	ld [bc], a                                       ; $5e71: $02
	ld [bc], a                                       ; $5e72: $02
	ld [hl], b                                       ; $5e73: $70
	ret nz                                           ; $5e74: $c0

	ld bc, $0aa0                                     ; $5e75: $01 $a0 $0a
	ld bc, $c0aa                                     ; $5e78: $01 $aa $c0
	ld bc, $01a0                                     ; $5e7b: $01 $a0 $01
	ld bc, $c002                                     ; $5e7e: $01 $02 $c0
	ld bc, $0aa0                                     ; $5e81: $01 $a0 $0a
	inc bc                                           ; $5e84: $03
	jp nc, $5bc1                                     ; $5e85: $d2 $c1 $5b

	ret nz                                           ; $5e88: $c0

	ld bc, $01a0                                     ; $5e89: $01 $a0 $01
	inc bc                                           ; $5e8c: $03
	ld c, e                                          ; $5e8d: $4b
	rst $38                                          ; $5e8e: $ff
	ld b, $c0                                        ; $5e8f: $06 $c0
	ld bc, $01a0                                     ; $5e91: $01 $a0 $01
	inc bc                                           ; $5e94: $03
	rst SubAFromDE                                          ; $5e95: $df
	inc c                                            ; $5e96: $0c
	ret nz                                           ; $5e97: $c0

	ld bc, $0aa0                                     ; $5e98: $01 $a0 $0a
	inc bc                                           ; $5e9b: $03
	rst SubAFromBC                                          ; $5e9c: $e7
	ret nz                                           ; $5e9d: $c0

	ld bc, $01a0                                     ; $5e9e: $01 $a0 $01
	nop                                              ; $5ea1: $00
	add hl, sp                                       ; $5ea2: $39
	inc d                                            ; $5ea3: $14
	ret nz                                           ; $5ea4: $c0

	ld bc, $0aa0                                     ; $5ea5: $01 $a0 $0a
	inc bc                                           ; $5ea8: $03
	db $ec                                           ; $5ea9: $ec
	ret nz                                           ; $5eaa: $c0

	ld bc, $01a0                                     ; $5eab: $01 $a0 $01
	nop                                              ; $5eae: $00
	add hl, sp                                       ; $5eaf: $39
	ret nz                                           ; $5eb0: $c0

	ld bc, $0aa0                                     ; $5eb1: $01 $a0 $0a
	ld [bc], a                                       ; $5eb4: $02
	and l                                            ; $5eb5: $a5
	pop bc                                           ; $5eb6: $c1
	ld e, e                                          ; $5eb7: $5b
	rlca                                             ; $5eb8: $07
	rlca                                             ; $5eb9: $07
	add hl, bc                                       ; $5eba: $09
	jr nz, @-$3e                                     ; $5ebb: $20 $c0

	ld hl, $ddd2                                     ; $5ebd: $21 $d2 $dd
	add e                                            ; $5ec0: $83
	ret nz                                           ; $5ec1: $c0

	call c, $01d4                                    ; $5ec2: $dc $d4 $01
	ret nc                                           ; $5ec5: $d0

	inc bc                                           ; $5ec6: $03
	db $e4                                           ; $5ec7: $e4
	nop                                              ; $5ec8: $00
	inc d                                            ; $5ec9: $14
	ld bc, $03d1                                     ; $5eca: $01 $d1 $03
	db $e4                                           ; $5ecd: $e4
	inc b                                            ; $5ece: $04
	ld h, b                                          ; $5ecf: $60
	ld bc, $03d2                                     ; $5ed0: $01 $d2 $03
	db $e4                                           ; $5ed3: $e4
	ld bc, $017a                                     ; $5ed4: $01 $7a $01
	db $d3                                           ; $5ed7: $d3
	inc bc                                           ; $5ed8: $03
	db $e4                                           ; $5ed9: $e4
	inc bc                                           ; $5eda: $03
	inc c                                            ; $5edb: $0c
	add hl, bc                                       ; $5edc: $09
	dec d                                            ; $5edd: $15
	add d                                            ; $5ede: $82
	ret nz                                           ; $5edf: $c0

	add b                                            ; $5ee0: $80
	ld bc, $03d3                                     ; $5ee1: $01 $d3 $03
	db $e4                                           ; $5ee4: $e4
	ld bc, $0118                                     ; $5ee5: $01 $18 $01
	jp nc, $e403                                     ; $5ee8: $d2 $03 $e4

	nop                                              ; $5eeb: $00
	ld a, [hl]                                       ; $5eec: $7e
	ld bc, $03d1                                     ; $5eed: $01 $d1 $03
	db $e4                                           ; $5ef0: $e4
	nop                                              ; $5ef1: $00
	ld [bc], a                                       ; $5ef2: $02
	add hl, bc                                       ; $5ef3: $09
	ld [hl], h                                       ; $5ef4: $74
	ret nz                                           ; $5ef5: $c0

	ld de, $00e3                                     ; $5ef6: $11 $e3 $00
	ld d, [hl]                                       ; $5ef9: $56
	pop hl                                           ; $5efa: $e1
	ld [bc], a                                       ; $5efb: $02
	ld [bc], a                                       ; $5efc: $02
	ld a, b                                          ; $5efd: $78
	ret nz                                           ; $5efe: $c0

	ld bc, $0aa0                                     ; $5eff: $01 $a0 $0a
	nop                                              ; $5f02: $00
	ld bc, $01c0                                     ; $5f03: $01 $c0 $01
	and b                                            ; $5f06: $a0
	ld bc, $0800                                     ; $5f07: $01 $00 $08
	ret nz                                           ; $5f0a: $c0

	ld bc, $0aa0                                     ; $5f0b: $01 $a0 $0a
	nop                                              ; $5f0e: $00
	ld de, $01c0                                     ; $5f0f: $11 $c0 $01
	and b                                            ; $5f12: $a0
	ld bc, $1500                                     ; $5f13: $01 $00 $15
	ret nz                                           ; $5f16: $c0

	ld bc, $0aa0                                     ; $5f17: $01 $a0 $0a
	nop                                              ; $5f1a: $00
	inc e                                            ; $5f1b: $1c
	pop hl                                           ; $5f1c: $e1
	ld [bc], a                                       ; $5f1d: $02
	rlca                                             ; $5f1e: $07
	sbc e                                            ; $5f1f: $9b
	add c                                            ; $5f20: $81
	ret nz                                           ; $5f21: $c0

	dec de                                           ; $5f22: $1b
	db $dd                                           ; $5f23: $dd
	ld [bc], a                                       ; $5f24: $02
	ret nc                                           ; $5f25: $d0

	pop de                                           ; $5f26: $d1
	ld e, $c0                                        ; $5f27: $1e $c0
	ld bc, $0aa0                                     ; $5f29: $01 $a0 $0a
	nop                                              ; $5f2c: $00
	ld e, $c0                                        ; $5f2d: $1e $c0
	ld bc, $01a0                                     ; $5f2f: $01 $a0 $01
	nop                                              ; $5f32: $00
	add hl, hl                                       ; $5f33: $29
	ret nz                                           ; $5f34: $c0

	ld bc, $0aa0                                     ; $5f35: $01 $a0 $0a
	nop                                              ; $5f38: $00
	ld [hl-], a                                      ; $5f39: $32
	ret nz                                           ; $5f3a: $c0

	ld bc, $01a0                                     ; $5f3b: $01 $a0 $01
	nop                                              ; $5f3e: $00
	ld [hl], $c0                                     ; $5f3f: $36 $c0
	ld bc, $0aa0                                     ; $5f41: $01 $a0 $0a
	nop                                              ; $5f44: $00
	dec sp                                           ; $5f45: $3b
	inc bc                                           ; $5f46: $03
	jp nc, $d4d3                                     ; $5f47: $d2 $d3 $d4

	jr @-$3e                                         ; $5f4a: $18 $c0

	ld bc, $0aa0                                     ; $5f4c: $01 $a0 $0a
	nop                                              ; $5f4f: $00
	dec a                                            ; $5f50: $3d
	ret nz                                           ; $5f51: $c0

	ld bc, $01a0                                     ; $5f52: $01 $a0 $01
	nop                                              ; $5f55: $00
	ld b, [hl]                                       ; $5f56: $46
	ret nz                                           ; $5f57: $c0

	ld bc, $0aa0                                     ; $5f58: $01 $a0 $0a
	nop                                              ; $5f5b: $00
	ld c, l                                          ; $5f5c: $4d
	ret nz                                           ; $5f5d: $c0

	ld bc, $01a0                                     ; $5f5e: $01 $a0 $01
	nop                                              ; $5f61: $00
	ld d, c                                          ; $5f62: $51
	pop bc                                           ; $5f63: $c1
	ld e, e                                          ; $5f64: $5b
	push hl                                          ; $5f65: $e5
	inc sp                                           ; $5f66: $33
	nop                                              ; $5f67: $00
	nop                                              ; $5f68: $00
	add hl, bc                                       ; $5f69: $09
	sub d                                            ; $5f6a: $92
	ret nz                                           ; $5f6b: $c0

	ld de, $00e3                                     ; $5f6c: $11 $e3 $00
	ld d, [hl]                                       ; $5f6f: $56
	pop hl                                           ; $5f70: $e1
	ld [bc], a                                       ; $5f71: $02
	ld [bc], a                                       ; $5f72: $02
	ld a, b                                          ; $5f73: $78
	ret nz                                           ; $5f74: $c0

	ld bc, $0aa0                                     ; $5f75: $01 $a0 $0a
	nop                                              ; $5f78: $00
	ld bc, $01c0                                     ; $5f79: $01 $c0 $01
	and b                                            ; $5f7c: $a0
	ld bc, $5500                                     ; $5f7d: $01 $00 $55
	ret nz                                           ; $5f80: $c0

	ld bc, $0aa0                                     ; $5f81: $01 $a0 $0a
	nop                                              ; $5f84: $00
	ld de, $01c0                                     ; $5f85: $11 $c0 $01
	and b                                            ; $5f88: $a0
	ld bc, $1500                                     ; $5f89: $01 $00 $15
	ret nz                                           ; $5f8c: $c0

	ld bc, $0aa0                                     ; $5f8d: $01 $a0 $0a
	nop                                              ; $5f90: $00
	inc e                                            ; $5f91: $1c
	pop hl                                           ; $5f92: $e1
	ld [bc], a                                       ; $5f93: $02
	rlca                                             ; $5f94: $07
	sbc e                                            ; $5f95: $9b
	add d                                            ; $5f96: $82
	ret nz                                           ; $5f97: $c0

	dec de                                           ; $5f98: $1b
	db $dd                                           ; $5f99: $dd
	ld [bc], a                                       ; $5f9a: $02
	ret nc                                           ; $5f9b: $d0

	pop de                                           ; $5f9c: $d1
	jr @-$3e                                         ; $5f9d: $18 $c0

	ld bc, $0aa0                                     ; $5f9f: $01 $a0 $0a
	nop                                              ; $5fa2: $00
	ld h, b                                          ; $5fa3: $60
	ret nz                                           ; $5fa4: $c0

	ld bc, $01a0                                     ; $5fa5: $01 $a0 $01
	nop                                              ; $5fa8: $00
	ld l, b                                          ; $5fa9: $68
	ret nz                                           ; $5faa: $c0

	ld bc, $0aa0                                     ; $5fab: $01 $a0 $0a
	nop                                              ; $5fae: $00
	ld [hl], h                                       ; $5faf: $74
	ret nz                                           ; $5fb0: $c0

	ld bc, $01a0                                     ; $5fb1: $01 $a0 $01
	nop                                              ; $5fb4: $00
	ld a, c                                          ; $5fb5: $79
	ld [bc], a                                       ; $5fb6: $02
	jp nc, $18d3                                     ; $5fb7: $d2 $d3 $18

	ret nz                                           ; $5fba: $c0

	ld bc, $0aa0                                     ; $5fbb: $01 $a0 $0a
	nop                                              ; $5fbe: $00
	ld a, [hl]                                       ; $5fbf: $7e
	ret nz                                           ; $5fc0: $c0

	ld bc, $01a0                                     ; $5fc1: $01 $a0 $01
	nop                                              ; $5fc4: $00
	adc b                                            ; $5fc5: $88
	ret nz                                           ; $5fc6: $c0

	ld bc, $0aa0                                     ; $5fc7: $01 $a0 $0a
	nop                                              ; $5fca: $00
	sub b                                            ; $5fcb: $90
	ret nz                                           ; $5fcc: $c0

	ld bc, $01a0                                     ; $5fcd: $01 $a0 $01
	nop                                              ; $5fd0: $00
	ld a, c                                          ; $5fd1: $79
	ld bc, $22d4                                     ; $5fd2: $01 $d4 $22
	ret nz                                           ; $5fd5: $c0

	ld bc, $0aa0                                     ; $5fd6: $01 $a0 $0a
	nop                                              ; $5fd9: $00
	sub h                                            ; $5fda: $94
	ret nz                                           ; $5fdb: $c0

	ld bc, $01a0                                     ; $5fdc: $01 $a0 $01
	nop                                              ; $5fdf: $00
	sbc d                                            ; $5fe0: $9a
	pop hl                                           ; $5fe1: $e1
	ld [bc], a                                       ; $5fe2: $02
	rlca                                             ; $5fe3: $07
	and h                                            ; $5fe4: $a4
	ret nz                                           ; $5fe5: $c0

	ld bc, $01a0                                     ; $5fe6: $01 $a0 $01
	nop                                              ; $5fe9: $00
	and h                                            ; $5fea: $a4
	ret nz                                           ; $5feb: $c0

	ld bc, $0aa0                                     ; $5fec: $01 $a0 $0a
	nop                                              ; $5fef: $00
	xor b                                            ; $5ff0: $a8
	ret nz                                           ; $5ff1: $c0

	ld bc, $01a0                                     ; $5ff2: $01 $a0 $01
	nop                                              ; $5ff5: $00
	ld d, c                                          ; $5ff6: $51
	pop bc                                           ; $5ff7: $c1
	ld e, e                                          ; $5ff8: $5b
	push hl                                          ; $5ff9: $e5
	inc sp                                           ; $5ffa: $33
	nop                                              ; $5ffb: $00
	nop                                              ; $5ffc: $00
	add hl, bc                                       ; $5ffd: $09
	ld c, a                                          ; $5ffe: $4f
	ret nz                                           ; $5fff: $c0

	ld de, $00e3                                     ; $6000: $11 $e3 $00
	ld e, e                                          ; $6003: $5b
	pop hl                                           ; $6004: $e1
	ld [bc], a                                       ; $6005: $02
	ld [bc], a                                       ; $6006: $02
	ld a, b                                          ; $6007: $78
	ret nz                                           ; $6008: $c0

	ld bc, $0aa0                                     ; $6009: $01 $a0 $0a
	nop                                              ; $600c: $00
	or e                                             ; $600d: $b3
	pop hl                                           ; $600e: $e1
	ld [hl-], a                                      ; $600f: $32
	ld bc, $e112                                     ; $6010: $01 $12 $e1
	ld [bc], a                                       ; $6013: $02
	ld [bc], a                                       ; $6014: $02
	ld a, b                                          ; $6015: $78
	ret nz                                           ; $6016: $c0

Call_085_6017:
Jump_085_6017:
	ld bc, $0aa0                                     ; $6017: $01 $a0 $0a
	nop                                              ; $601a: $00
	cp d                                             ; $601b: $ba
	ret nz                                           ; $601c: $c0

	ld bc, $01a0                                     ; $601d: $01 $a0 $01
	nop                                              ; $6020: $00
	pop bc                                           ; $6021: $c1
	pop hl                                           ; $6022: $e1
	ld [bc], a                                       ; $6023: $02
	inc bc                                           ; $6024: $03
	dec de                                           ; $6025: $1b
	ret nz                                           ; $6026: $c0

	ld bc, $0aa0                                     ; $6027: $01 $a0 $0a
	nop                                              ; $602a: $00
	call z, $01c0                                    ; $602b: $cc $c0 $01
	and b                                            ; $602e: $a0
	ld bc, $cd00                                     ; $602f: $01 $00 $cd
	ret nz                                           ; $6032: $c0

	ld bc, $0aa0                                     ; $6033: $01 $a0 $0a
	nop                                              ; $6036: $00
	call z, $01c0                                    ; $6037: $cc $c0 $01
	and b                                            ; $603a: $a0
	ld bc, $d000                                     ; $603b: $01 $00 $d0
	pop hl                                           ; $603e: $e1
	ld [bc], a                                       ; $603f: $02
	inc bc                                           ; $6040: $03
	daa                                              ; $6041: $27
	ret nz                                           ; $6042: $c0

	ld bc, $0aa0                                     ; $6043: $01 $a0 $0a
	nop                                              ; $6046: $00
	jp nc, $5bc1                                     ; $6047: $d2 $c1 $5b

	push hl                                          ; $604a: $e5
	inc sp                                           ; $604b: $33
	nop                                              ; $604c: $00
	nop                                              ; $604d: $00
	add hl, bc                                       ; $604e: $09
	add hl, de                                       ; $604f: $19
	add d                                            ; $6050: $82
	ret nz                                           ; $6051: $c0

	add b                                            ; $6052: $80
	ld bc, $03d3                                     ; $6053: $01 $d3 $03
	db $e4                                           ; $6056: $e4
	ld bc, $0119                                     ; $6057: $01 $19 $01
	jp nc, $c007                                     ; $605a: $d2 $07 $c0

	ld [hl+], a                                      ; $605d: $22
	pop de                                           ; $605e: $d1
	db $dd                                           ; $605f: $dd
	db $e4                                           ; $6060: $e4
	nop                                              ; $6061: $00
	and e                                            ; $6062: $a3
	ld bc, $03d1                                     ; $6063: $01 $d1 $03
	db $e4                                           ; $6066: $e4
	nop                                              ; $6067: $00
	ld [bc], a                                       ; $6068: $02
	add hl, bc                                       ; $6069: $09
	adc [hl]                                         ; $606a: $8e
	ret nz                                           ; $606b: $c0

	ld de, $00e3                                     ; $606c: $11 $e3 $00
	ld e, c                                          ; $606f: $59
	pop hl                                           ; $6070: $e1
	ld [bc], a                                       ; $6071: $02
	ld [bc], a                                       ; $6072: $02
	ld a, b                                          ; $6073: $78
	add c                                            ; $6074: $81
	ret nz                                           ; $6075: $c0

	dec de                                           ; $6076: $1b
	db $dd                                           ; $6077: $dd
	ld [bc], a                                       ; $6078: $02
	ret nc                                           ; $6079: $d0

	pop de                                           ; $607a: $d1
	add hl, sp                                       ; $607b: $39
	ret nz                                           ; $607c: $c0

	ld bc, $0aa0                                     ; $607d: $01 $a0 $0a
	nop                                              ; $6080: $00
	db $d3                                           ; $6081: $d3
	ret nz                                           ; $6082: $c0

	ld bc, $01a0                                     ; $6083: $01 $a0 $01
	nop                                              ; $6086: $00
	rst SubAFromHL                                          ; $6087: $d7
	ret nz                                           ; $6088: $c0

	ld bc, $0aa0                                     ; $6089: $01 $a0 $0a
	nop                                              ; $608c: $00
	db $db                                           ; $608d: $db
	ldh [rP1], a                                     ; $608e: $e0 $00
	ld l, d                                          ; $6090: $6a
	ret nz                                           ; $6091: $c0

	ld bc, $01a0                                     ; $6092: $01 $a0 $01
	nop                                              ; $6095: $00
	ldh [$c0], a                                     ; $6096: $e0 $c0
	ld bc, $0aa0                                     ; $6098: $01 $a0 $0a
	nop                                              ; $609b: $00
	ldh [c], a                                       ; $609c: $e2
	ret nz                                           ; $609d: $c0

	ld bc, $01a0                                     ; $609e: $01 $a0 $01
	nop                                              ; $60a1: $00
	push af                                          ; $60a2: $f5
	ret nz                                           ; $60a3: $c0

	ld bc, $0aa0                                     ; $60a4: $01 $a0 $0a
	nop                                              ; $60a7: $00
	db $fd                                           ; $60a8: $fd
	ret nz                                           ; $60a9: $c0

	ld bc, $01a0                                     ; $60aa: $01 $a0 $01
	nop                                              ; $60ad: $00
	ld [hl], $c0                                     ; $60ae: $36 $c0
	ld bc, $0aa0                                     ; $60b0: $01 $a0 $0a
	ld bc, $0301                                     ; $60b3: $01 $01 $03
	jp nc, $d4d3                                     ; $60b6: $d2 $d3 $d4

	add hl, sp                                       ; $60b9: $39
	ret nz                                           ; $60ba: $c0

	ld bc, $0aa0                                     ; $60bb: $01 $a0 $0a
	nop                                              ; $60be: $00
	db $d3                                           ; $60bf: $d3
	ret nz                                           ; $60c0: $c0

	ld bc, $01a0                                     ; $60c1: $01 $a0 $01
	nop                                              ; $60c4: $00
	rst SubAFromHL                                          ; $60c5: $d7
	ret nz                                           ; $60c6: $c0

	ld bc, $0aa0                                     ; $60c7: $01 $a0 $0a
	ld bc, $e003                                     ; $60ca: $01 $03 $e0
	nop                                              ; $60cd: $00
	inc l                                            ; $60ce: $2c
	ret nz                                           ; $60cf: $c0

	ld bc, $01a0                                     ; $60d0: $01 $a0 $01
	nop                                              ; $60d3: $00
	ldh [$c0], a                                     ; $60d4: $e0 $c0
	ld bc, $0aa0                                     ; $60d6: $01 $a0 $0a
	ld bc, $c009                                     ; $60d9: $01 $09 $c0
	ld bc, $01a0                                     ; $60dc: $01 $a0 $01
	nop                                              ; $60df: $00
	push af                                          ; $60e0: $f5
	ret nz                                           ; $60e1: $c0

	ld bc, $0aa0                                     ; $60e2: $01 $a0 $0a
	ld bc, $c019                                     ; $60e5: $01 $19 $c0
	ld bc, $01a0                                     ; $60e8: $01 $a0 $01
	ld bc, $c01e                                     ; $60eb: $01 $1e $c0
	ld bc, $0aa0                                     ; $60ee: $01 $a0 $0a
	nop                                              ; $60f1: $00
	jp nc, $5bc1                                     ; $60f2: $d2 $c1 $5b

	push hl                                          ; $60f5: $e5
	inc sp                                           ; $60f6: $33
	nop                                              ; $60f7: $00
	nop                                              ; $60f8: $00
	ld a, [bc]                                       ; $60f9: $0a
	ret nz                                           ; $60fa: $c0

	or e                                             ; $60fb: $b3
	ret nz                                           ; $60fc: $c0

	inc c                                            ; $60fd: $0c
	ldh [$3c], a                                     ; $60fe: $e0 $3c
	pop hl                                           ; $6100: $e1
	ld [bc], a                                       ; $6101: $02
	ld [bc], a                                       ; $6102: $02
	ld [hl], b                                       ; $6103: $70
	add hl, bc                                       ; $6104: $09
	ld l, d                                          ; $6105: $6a
	ret nz                                           ; $6106: $c0

	ld de, $00e3                                     ; $6107: $11 $e3 $00
	ld e, d                                          ; $610a: $5a
	pop hl                                           ; $610b: $e1
	ld [bc], a                                       ; $610c: $02
	ld [bc], a                                       ; $610d: $02
	ld a, b                                          ; $610e: $78
	ret nz                                           ; $610f: $c0

	ld bc, $0aa0                                     ; $6110: $01 $a0 $0a
	ld bc, $c027                                     ; $6113: $01 $27 $c0
	ld bc, $01a0                                     ; $6116: $01 $a0 $01
	ld bc, $812a                                     ; $6119: $01 $2a $81
	ret nz                                           ; $611c: $c0

	dec de                                           ; $611d: $1b
	db $dd                                           ; $611e: $dd
	ld [bc], a                                       ; $611f: $02
	ret nc                                           ; $6120: $d0

	pop de                                           ; $6121: $d1
	ld e, $c0                                        ; $6122: $1e $c0
	ld bc, $0aa0                                     ; $6124: $01 $a0 $0a
	ld bc, $c02e                                     ; $6127: $01 $2e $c0
	ld bc, $01a0                                     ; $612a: $01 $a0 $01
	ld bc, $c034                                     ; $612d: $01 $34 $c0
	ld bc, $0aa0                                     ; $6130: $01 $a0 $0a
	ld bc, $c037                                     ; $6133: $01 $37 $c0
	ld bc, $01a0                                     ; $6136: $01 $a0 $01
	ld bc, $c03d                                     ; $6139: $01 $3d $c0
	ld bc, $0aa0                                     ; $613c: $01 $a0 $0a
	ld bc, $0341                                     ; $613f: $01 $41 $03
	jp nc, $d4d3                                     ; $6142: $d2 $d3 $d4

	ld [de], a                                       ; $6145: $12
	ret nz                                           ; $6146: $c0

	ld bc, $0aa0                                     ; $6147: $01 $a0 $0a
	ld bc, $c04d                                     ; $614a: $01 $4d $c0
	ld bc, $01a0                                     ; $614d: $01 $a0 $01
	ld bc, $c034                                     ; $6150: $01 $34 $c0
	ld bc, $0aa0                                     ; $6153: $01 $a0 $0a
	ld bc, $c158                                     ; $6156: $01 $58 $c1
	ld e, e                                          ; $6159: $5b
	ret nz                                           ; $615a: $c0

	ld bc, $01a0                                     ; $615b: $01 $a0 $01
	ld bc, $c061                                     ; $615e: $01 $61 $c0
	ld bc, $26a0                                     ; $6161: $01 $a0 $26
	ld bc, $c069                                     ; $6164: $01 $69 $c0
	ld bc, $01a0                                     ; $6167: $01 $a0 $01
	ld bc, $e56c                                     ; $616a: $01 $6c $e5
	inc sp                                           ; $616d: $33
	nop                                              ; $616e: $00
	nop                                              ; $616f: $00
	add hl, bc                                       ; $6170: $09
	ld [hl], h                                       ; $6171: $74
	ret nz                                           ; $6172: $c0

	ld de, $00e3                                     ; $6173: $11 $e3 $00
	ld e, b                                          ; $6176: $58
	pop hl                                           ; $6177: $e1
	ld [bc], a                                       ; $6178: $02
	ld [bc], a                                       ; $6179: $02
	ld a, b                                          ; $617a: $78
	ret nz                                           ; $617b: $c0

	ld bc, $0aa0                                     ; $617c: $01 $a0 $0a
	ld bc, $c075                                     ; $617f: $01 $75 $c0
	ld bc, $01a0                                     ; $6182: $01 $a0 $01
	ld bc, $c07b                                     ; $6185: $01 $7b $c0
	ld bc, $0aa0                                     ; $6188: $01 $a0 $0a
	ld bc, $c081                                     ; $618b: $01 $81 $c0
	ld bc, $01a0                                     ; $618e: $01 $a0 $01
	ld bc, $c083                                     ; $6191: $01 $83 $c0
	ld bc, $0aa0                                     ; $6194: $01 $a0 $0a
	ld bc, $e186                                     ; $6197: $01 $86 $e1
	ld [bc], a                                       ; $619a: $02
	rlca                                             ; $619b: $07
	sbc e                                            ; $619c: $9b
	add c                                            ; $619d: $81
	ret nz                                           ; $619e: $c0

	dec de                                           ; $619f: $1b
	db $dd                                           ; $61a0: $dd
	ld [bc], a                                       ; $61a1: $02
	ret nc                                           ; $61a2: $d0

	pop de                                           ; $61a3: $d1
	ld e, $c0                                        ; $61a4: $1e $c0
	ld bc, $0aa0                                     ; $61a6: $01 $a0 $0a
	ld bc, $c089                                     ; $61a9: $01 $89 $c0
	ld bc, $01a0                                     ; $61ac: $01 $a0 $01
	ld bc, $c092                                     ; $61af: $01 $92 $c0
	ld bc, $0aa0                                     ; $61b2: $01 $a0 $0a
	ld bc, $c095                                     ; $61b5: $01 $95 $c0
	ld bc, $01a0                                     ; $61b8: $01 $a0 $01
	ld bc, $c0a3                                     ; $61bb: $01 $a3 $c0
	ld bc, $0aa0                                     ; $61be: $01 $a0 $0a
	ld bc, $03ac                                     ; $61c1: $01 $ac $03
	jp nc, $d4d3                                     ; $61c4: $d2 $d3 $d4

	jr @-$3e                                         ; $61c7: $18 $c0

	ld bc, $0aa0                                     ; $61c9: $01 $a0 $0a
	ld bc, $c0ae                                     ; $61cc: $01 $ae $c0
	ld bc, $01a0                                     ; $61cf: $01 $a0 $01
	ld bc, $c0ba                                     ; $61d2: $01 $ba $c0
	ld bc, $0aa0                                     ; $61d5: $01 $a0 $0a
	ld bc, $c0c3                                     ; $61d8: $01 $c3 $c0
	ld bc, $01a0                                     ; $61db: $01 $a0 $01
	nop                                              ; $61de: $00
	ld d, c                                          ; $61df: $51
	pop bc                                           ; $61e0: $c1
	ld e, e                                          ; $61e1: $5b
	push hl                                          ; $61e2: $e5
	inc sp                                           ; $61e3: $33
	nop                                              ; $61e4: $00
	nop                                              ; $61e5: $00
	add hl, bc                                       ; $61e6: $09
	inc l                                            ; $61e7: $2c
	ret nz                                           ; $61e8: $c0

	ld de, $00e3                                     ; $61e9: $11 $e3 $00
	ld e, e                                          ; $61ec: $5b
	pop hl                                           ; $61ed: $e1
	ld [bc], a                                       ; $61ee: $02
	ld [bc], a                                       ; $61ef: $02
	ld a, b                                          ; $61f0: $78
	ret nz                                           ; $61f1: $c0

	ld bc, $0aa0                                     ; $61f2: $01 $a0 $0a
	ld bc, $e1ce                                     ; $61f5: $01 $ce $e1
	ld [hl-], a                                      ; $61f8: $32
	ld bc, $e19c                                     ; $61f9: $01 $9c $e1
	ld [bc], a                                       ; $61fc: $02
	ld [bc], a                                       ; $61fd: $02
	ld a, b                                          ; $61fe: $78
	add d                                            ; $61ff: $82
	ret nz                                           ; $6200: $c0

	add b                                            ; $6201: $80
	ld bc, $03d3                                     ; $6202: $01 $d3 $03
	db $e4                                           ; $6205: $e4
	nop                                              ; $6206: $00
	rst SubAFromHL                                          ; $6207: $d7
	ld bc, $03d2                                     ; $6208: $01 $d2 $03
	db $e4                                           ; $620b: $e4
	nop                                              ; $620c: $00
	ld h, l                                          ; $620d: $65
	ld bc, $03d1                                     ; $620e: $01 $d1 $03
	db $e4                                           ; $6211: $e4
	nop                                              ; $6212: $00
	ld [bc], a                                       ; $6213: $02
	add hl, bc                                       ; $6214: $09
	ld e, e                                          ; $6215: $5b
	ret nz                                           ; $6216: $c0

	ld bc, $0aa0                                     ; $6217: $01 $a0 $0a
	ld bc, $c0d5                                     ; $621a: $01 $d5 $c0
	ld bc, $01a0                                     ; $621d: $01 $a0 $01
	ld bc, $c0da                                     ; $6220: $01 $da $c0
	ld bc, $0aa0                                     ; $6223: $01 $a0 $0a
	ld bc, wGenericTileDataDest                                     ; $6226: $01 $e2 $c0
	ld bc, $01a0                                     ; $6229: $01 $a0 $01
	ld bc, $81e9                                     ; $622c: $01 $e9 $81
	ret nz                                           ; $622f: $c0

	dec de                                           ; $6230: $1b
	db $dd                                           ; $6231: $dd
	ld [bc], a                                       ; $6232: $02
	ret nc                                           ; $6233: $d0

	pop de                                           ; $6234: $d1
	ld e, $c0                                        ; $6235: $1e $c0
	ld bc, $0aa0                                     ; $6237: $01 $a0 $0a
	ld bc, $c0f2                                     ; $623a: $01 $f2 $c0
	ld bc, $01a0                                     ; $623d: $01 $a0 $01
	ld bc, $c0fc                                     ; $6240: $01 $fc $c0
	ld bc, $0aa0                                     ; $6243: $01 $a0 $0a
	ld [bc], a                                       ; $6246: $02
	ld b, $c0                                        ; $6247: $06 $c0
	ld bc, $01a0                                     ; $6249: $01 $a0 $01
	ld [bc], a                                       ; $624c: $02
	ld a, [bc]                                       ; $624d: $0a
	ret nz                                           ; $624e: $c0

	ld bc, $0aa0                                     ; $624f: $01 $a0 $0a
	ld bc, $0301                                     ; $6252: $01 $01 $03
	jp nc, $d4d3                                     ; $6255: $d2 $d3 $d4

	ld [de], a                                       ; $6258: $12
	ret nz                                           ; $6259: $c0

	ld bc, $0aa0                                     ; $625a: $01 $a0 $0a
	ld [bc], a                                       ; $625d: $02
	rrca                                             ; $625e: $0f
	ret nz                                           ; $625f: $c0

	ld bc, $01a0                                     ; $6260: $01 $a0 $01
	ld [bc], a                                       ; $6263: $02
	db $10                                           ; $6264: $10
	ret nz                                           ; $6265: $c0

	ld bc, $0aa0                                     ; $6266: $01 $a0 $0a
	nop                                              ; $6269: $00
	jp nc, $5bc1                                     ; $626a: $d2 $c1 $5b

	push hl                                          ; $626d: $e5
	inc sp                                           ; $626e: $33
	nop                                              ; $626f: $00
	nop                                              ; $6270: $00
	add hl, bc                                       ; $6271: $09
	ld l, d                                          ; $6272: $6a
	add c                                            ; $6273: $81
	ret nz                                           ; $6274: $c0

	dec de                                           ; $6275: $1b
	db $dd                                           ; $6276: $dd
	ld [bc], a                                       ; $6277: $02
	ret nc                                           ; $6278: $d0

	pop de                                           ; $6279: $d1
	ld e, $c0                                        ; $627a: $1e $c0
	ld bc, $0aa0                                     ; $627c: $01 $a0 $0a
	ld [bc], a                                       ; $627f: $02
	ld d, $c0                                        ; $6280: $16 $c0
	ld bc, $01a0                                     ; $6282: $01 $a0 $01
	ld [bc], a                                       ; $6285: $02
	inc e                                            ; $6286: $1c
	ret nz                                           ; $6287: $c0

	ld bc, $0aa0                                     ; $6288: $01 $a0 $0a
	ld [bc], a                                       ; $628b: $02
	ld [hl+], a                                      ; $628c: $22
	ret nz                                           ; $628d: $c0

	ld bc, $01a0                                     ; $628e: $01 $a0 $01
	nop                                              ; $6291: $00
	ld [hl], $c0                                     ; $6292: $36 $c0
	ld bc, $0aa0                                     ; $6294: $01 $a0 $0a
	ld bc, $0301                                     ; $6297: $01 $01 $03
	jp nc, $d4d3                                     ; $629a: $d2 $d3 $d4

	add hl, sp                                       ; $629d: $39
	ret nz                                           ; $629e: $c0

	ld bc, $0aa0                                     ; $629f: $01 $a0 $0a
	ld [bc], a                                       ; $62a2: $02
	ld a, [hl+]                                      ; $62a3: $2a
	ld h, b                                          ; $62a4: $60
	ei                                               ; $62a5: $fb
	ret nz                                           ; $62a6: $c0

	add e                                            ; $62a7: $83
	db $d3                                           ; $62a8: $d3
	ldh [$64], a                                     ; $62a9: $e0 $64
	ld [de], a                                       ; $62ab: $12
	ret nz                                           ; $62ac: $c0

	ld bc, $01a0                                     ; $62ad: $01 $a0 $01
	ld [bc], a                                       ; $62b0: $02
	inc sp                                           ; $62b1: $33
	ret nz                                           ; $62b2: $c0

	ld bc, $0aa0                                     ; $62b3: $01 $a0 $0a
	ld [bc], a                                       ; $62b6: $02
	dec sp                                           ; $62b7: $3b
	ret nz                                           ; $62b8: $c0

	ld bc, $01a0                                     ; $62b9: $01 $a0 $01
	nop                                              ; $62bc: $00
	ld [hl], $12                                     ; $62bd: $36 $12
	ret nz                                           ; $62bf: $c0

	ld bc, $01a0                                     ; $62c0: $01 $a0 $01
	ld [bc], a                                       ; $62c3: $02
	ld b, h                                          ; $62c4: $44
	ret nz                                           ; $62c5: $c0

	ld bc, $0aa0                                     ; $62c6: $01 $a0 $0a
	ld [bc], a                                       ; $62c9: $02
	ld c, h                                          ; $62ca: $4c
	ret nz                                           ; $62cb: $c0

	ld bc, $01a0                                     ; $62cc: $01 $a0 $01
	ld [bc], a                                       ; $62cf: $02
	ld d, d                                          ; $62d0: $52
	ret nz                                           ; $62d1: $c0

	ld bc, $0aa0                                     ; $62d2: $01 $a0 $0a
	nop                                              ; $62d5: $00
	jp nc, $5bc1                                     ; $62d6: $d2 $c1 $5b

	push hl                                          ; $62d9: $e5
	inc sp                                           ; $62da: $33
	nop                                              ; $62db: $00
	nop                                              ; $62dc: $00
	add hl, bc                                       ; $62dd: $09
	ld c, a                                          ; $62de: $4f
	add c                                            ; $62df: $81
	ret nz                                           ; $62e0: $c0

	dec de                                           ; $62e1: $1b
	db $dd                                           ; $62e2: $dd
	ld [bc], a                                       ; $62e3: $02
	ret nc                                           ; $62e4: $d0

	pop de                                           ; $62e5: $d1
	ld e, $c0                                        ; $62e6: $1e $c0
	ld bc, $0aa0                                     ; $62e8: $01 $a0 $0a
	ld [bc], a                                       ; $62eb: $02
	ld e, d                                          ; $62ec: $5a
	ret nz                                           ; $62ed: $c0

	ld bc, $01a0                                     ; $62ee: $01 $a0 $01
	ld [bc], a                                       ; $62f1: $02
	ld h, d                                          ; $62f2: $62
	ret nz                                           ; $62f3: $c0

	ld bc, $0aa0                                     ; $62f4: $01 $a0 $0a
	ld [bc], a                                       ; $62f7: $02
	ld [hl], e                                       ; $62f8: $73
	ret nz                                           ; $62f9: $c0

	ld bc, $01a0                                     ; $62fa: $01 $a0 $01
	nop                                              ; $62fd: $00
	ld [hl], $c0                                     ; $62fe: $36 $c0
	ld bc, $0aa0                                     ; $6300: $01 $a0 $0a
	ld [bc], a                                       ; $6303: $02
	ld a, b                                          ; $6304: $78
	inc bc                                           ; $6305: $03
	jp nc, $d4d3                                     ; $6306: $d2 $d3 $d4

	ld e, $c0                                        ; $6309: $1e $c0
	ld bc, $0aa0                                     ; $630b: $01 $a0 $0a
	ld [bc], a                                       ; $630e: $02
	ld a, d                                          ; $630f: $7a
	ret nz                                           ; $6310: $c0

	ld bc, $01a0                                     ; $6311: $01 $a0 $01
	ld [bc], a                                       ; $6314: $02
	add l                                            ; $6315: $85
	ret nz                                           ; $6316: $c0

	ld bc, $0aa0                                     ; $6317: $01 $a0 $0a
	ld [bc], a                                       ; $631a: $02
	adc l                                            ; $631b: $8d
	ret nz                                           ; $631c: $c0

	ld bc, $01a0                                     ; $631d: $01 $a0 $01
	ld [bc], a                                       ; $6320: $02
	db $10                                           ; $6321: $10
	ret nz                                           ; $6322: $c0

	ld bc, $0aa0                                     ; $6323: $01 $a0 $0a
	nop                                              ; $6326: $00
	jp nc, $5bc1                                     ; $6327: $d2 $c1 $5b

	push hl                                          ; $632a: $e5
	inc sp                                           ; $632b: $33
	nop                                              ; $632c: $00
	nop                                              ; $632d: $00
	add hl, bc                                       ; $632e: $09
	dec e                                            ; $632f: $1d
	add d                                            ; $6330: $82
	ret nz                                           ; $6331: $c0

	add b                                            ; $6332: $80
	ld bc, $07d3                                     ; $6333: $01 $d3 $07
	ret nz                                           ; $6336: $c0

	ld [hl+], a                                      ; $6337: $22
	pop de                                           ; $6338: $d1
	db $dd                                           ; $6339: $dd
	db $e4                                           ; $633a: $e4
	ld bc, $010c                                     ; $633b: $01 $0c $01
	jp nc, $c007                                     ; $633e: $d2 $07 $c0

	ld [hl+], a                                      ; $6341: $22
	pop de                                           ; $6342: $d1
	db $dd                                           ; $6343: $dd
	db $e4                                           ; $6344: $e4
	nop                                              ; $6345: $00
	adc b                                            ; $6346: $88
	ld bc, $03d1                                     ; $6347: $01 $d1 $03
	db $e4                                           ; $634a: $e4
	nop                                              ; $634b: $00
	ld [bc], a                                       ; $634c: $02
	add hl, bc                                       ; $634d: $09
	ld a, [hl]                                       ; $634e: $7e
	ret nz                                           ; $634f: $c0

	ld de, $00e3                                     ; $6350: $11 $e3 $00
	ld b, d                                          ; $6353: $42
	pop hl                                           ; $6354: $e1
	ld [bc], a                                       ; $6355: $02
	ld [bc], a                                       ; $6356: $02
	ld a, b                                          ; $6357: $78
	ret nz                                           ; $6358: $c0

	ld bc, $0aa0                                     ; $6359: $01 $a0 $0a
	ld [bc], a                                       ; $635c: $02
	sub d                                            ; $635d: $92
	ret nz                                           ; $635e: $c0

	ld bc, $01a0                                     ; $635f: $01 $a0 $01
	ld [bc], a                                       ; $6362: $02
	sbc l                                            ; $6363: $9d
	add d                                            ; $6364: $82
	ret nz                                           ; $6365: $c0

	dec de                                           ; $6366: $1b
	db $dd                                           ; $6367: $dd
	ld [bc], a                                       ; $6368: $02
	ret nc                                           ; $6369: $d0

	pop de                                           ; $636a: $d1
	inc e                                            ; $636b: $1c
	ret nz                                           ; $636c: $c0

	ld bc, $0aa0                                     ; $636d: $01 $a0 $0a
	ld [bc], a                                       ; $6370: $02
	or c                                             ; $6371: $b1
	ret nz                                           ; $6372: $c0

	ld bc, $01a0                                     ; $6373: $01 $a0 $01
	ld [bc], a                                       ; $6376: $02
	cp [hl]                                          ; $6377: $be
	pop hl                                           ; $6378: $e1
	ld b, e                                          ; $6379: $43
	ld [bc], a                                       ; $637a: $02
	jp hl                                            ; $637b: $e9


	ret nz                                           ; $637c: $c0

	ld bc, $01a0                                     ; $637d: $01 $a0 $01
	ld [bc], a                                       ; $6380: $02
	db $10                                           ; $6381: $10
	ret nz                                           ; $6382: $c0

	ld bc, $0aa0                                     ; $6383: $01 $a0 $0a
	ld bc, $0201                                     ; $6386: $01 $01 $02
	jp nc, $1cd3                                     ; $6389: $d2 $d3 $1c

	ret nz                                           ; $638c: $c0

	ld bc, $0aa0                                     ; $638d: $01 $a0 $0a
	ld [bc], a                                       ; $6390: $02
	add $c0                                          ; $6391: $c6 $c0
	ld bc, $01a0                                     ; $6393: $01 $a0 $01
	ld [bc], a                                       ; $6396: $02
	adc $e1                                          ; $6397: $ce $e1
	ld b, e                                          ; $6399: $43
	ld [bc], a                                       ; $639a: $02
	jp hl                                            ; $639b: $e9


	ret nz                                           ; $639c: $c0

	ld bc, $01a0                                     ; $639d: $01 $a0 $01
	ld [bc], a                                       ; $63a0: $02
	sub $c0                                          ; $63a1: $d6 $c0
	ld bc, $0aa0                                     ; $63a3: $01 $a0 $0a
	ld bc, $0101                                     ; $63a6: $01 $01 $01
	call nc, $c01c                                   ; $63a9: $d4 $1c $c0
	ld bc, $0aa0                                     ; $63ac: $01 $a0 $0a
	ld [bc], a                                       ; $63af: $02
	db $db                                           ; $63b0: $db
	ret nz                                           ; $63b1: $c0

	ld bc, $01a0                                     ; $63b2: $01 $a0 $01
	ld [bc], a                                       ; $63b5: $02
	push hl                                          ; $63b6: $e5
	pop hl                                           ; $63b7: $e1
	ld b, e                                          ; $63b8: $43
	ld [bc], a                                       ; $63b9: $02
	jp hl                                            ; $63ba: $e9


	ret nz                                           ; $63bb: $c0

	ld bc, $01a0                                     ; $63bc: $01 $a0 $01
	nop                                              ; $63bf: $00
	ld [hl], $c0                                     ; $63c0: $36 $c0
	ld bc, $0aa0                                     ; $63c2: $01 $a0 $0a
	nop                                              ; $63c5: $00
	jp nc, $5bc1                                     ; $63c6: $d2 $c1 $5b

	push hl                                          ; $63c9: $e5
	inc sp                                           ; $63ca: $33
	nop                                              ; $63cb: $00
	nop                                              ; $63cc: $00
	add hl, bc                                       ; $63cd: $09
	ld a, b                                          ; $63ce: $78
	ret nz                                           ; $63cf: $c0

	ld de, $00e3                                     ; $63d0: $11 $e3 $00
	ld e, h                                          ; $63d3: $5c
	pop hl                                           ; $63d4: $e1
	ld [bc], a                                       ; $63d5: $02
	ld [bc], a                                       ; $63d6: $02
	ld a, b                                          ; $63d7: $78
	ret nz                                           ; $63d8: $c0

	ld bc, $0aa0                                     ; $63d9: $01 $a0 $0a
	ld [bc], a                                       ; $63dc: $02
	add sp, -$40                                     ; $63dd: $e8 $c0
	ld bc, $01a0                                     ; $63df: $01 $a0 $01
	ld [bc], a                                       ; $63e2: $02
	ldh a, [$e1]                                     ; $63e3: $f0 $e1
	ld [hl-], a                                      ; $63e5: $32
	nop                                              ; $63e6: $00
	ld e, l                                          ; $63e7: $5d
	pop hl                                           ; $63e8: $e1
	ld [bc], a                                       ; $63e9: $02
	ld [bc], a                                       ; $63ea: $02
	ld a, b                                          ; $63eb: $78
	add c                                            ; $63ec: $81
	ret nz                                           ; $63ed: $c0

	dec de                                           ; $63ee: $1b
	db $dd                                           ; $63ef: $dd
	ld [bc], a                                       ; $63f0: $02
	ret nc                                           ; $63f1: $d0

	pop de                                           ; $63f2: $d1
	ld a, [hl+]                                      ; $63f3: $2a
	ret nz                                           ; $63f4: $c0

	ld bc, $0aa0                                     ; $63f5: $01 $a0 $0a
	ld [bc], a                                       ; $63f8: $02
	ld hl, sp-$40                                    ; $63f9: $f8 $c0
	ld bc, $01a0                                     ; $63fb: $01 $a0 $01
	ld [bc], a                                       ; $63fe: $02
	db $fd                                           ; $63ff: $fd
	ret nz                                           ; $6400: $c0

	ld bc, $0aa0                                     ; $6401: $01 $a0 $0a
	inc bc                                           ; $6404: $03
	ld bc, $01c0                                     ; $6405: $01 $c0 $01
	and b                                            ; $6408: $a0
	ld bc, $0703                                     ; $6409: $01 $03 $07
	ret nz                                           ; $640c: $c0

	ld bc, $0aa0                                     ; $640d: $01 $a0 $0a
	inc bc                                           ; $6410: $03
	inc c                                            ; $6411: $0c
	ret nz                                           ; $6412: $c0

	ld bc, $01a0                                     ; $6413: $01 $a0 $01
	nop                                              ; $6416: $00
	ld [hl], $c0                                     ; $6417: $36 $c0
	ld bc, $0aa0                                     ; $6419: $01 $a0 $0a
	inc bc                                           ; $641c: $03
	ld de, $d203                                     ; $641d: $11 $03 $d2
	db $d3                                           ; $6420: $d3
	call nc, $c01e                                   ; $6421: $d4 $1e $c0
	ld bc, $0aa0                                     ; $6424: $01 $a0 $0a
	inc bc                                           ; $6427: $03
	inc de                                           ; $6428: $13
	ret nz                                           ; $6429: $c0

	ld bc, $01a0                                     ; $642a: $01 $a0 $01
	inc bc                                           ; $642d: $03
	rla                                              ; $642e: $17
	ret nz                                           ; $642f: $c0

	ld bc, $0aa0                                     ; $6430: $01 $a0 $0a
	inc bc                                           ; $6433: $03
	inc e                                            ; $6434: $1c
	ret nz                                           ; $6435: $c0

	ld bc, $01a0                                     ; $6436: $01 $a0 $01
	inc bc                                           ; $6439: $03
	inc hl                                           ; $643a: $23
	ret nz                                           ; $643b: $c0

	ld bc, $0aa0                                     ; $643c: $01 $a0 $0a
	inc bc                                           ; $643f: $03
	dec l                                            ; $6440: $2d
	pop bc                                           ; $6441: $c1
	ld e, e                                          ; $6442: $5b
	push hl                                          ; $6443: $e5
	inc sp                                           ; $6444: $33
	nop                                              ; $6445: $00
	nop                                              ; $6446: $00
	add hl, bc                                       ; $6447: $09
	ld a, b                                          ; $6448: $78
	ret nz                                           ; $6449: $c0

	ld de, $00e3                                     ; $644a: $11 $e3 $00
	ld e, h                                          ; $644d: $5c
	pop hl                                           ; $644e: $e1
	ld [bc], a                                       ; $644f: $02
	ld [bc], a                                       ; $6450: $02
	ld a, b                                          ; $6451: $78
	ret nz                                           ; $6452: $c0

	ld bc, $0aa0                                     ; $6453: $01 $a0 $0a
	ld [bc], a                                       ; $6456: $02
	add sp, -$40                                     ; $6457: $e8 $c0
	ld bc, $01a0                                     ; $6459: $01 $a0 $01
	inc bc                                           ; $645c: $03
	cpl                                              ; $645d: $2f
	pop hl                                           ; $645e: $e1
	ld [hl-], a                                      ; $645f: $32
	nop                                              ; $6460: $00
	xor a                                            ; $6461: $af
	pop hl                                           ; $6462: $e1
	ld [bc], a                                       ; $6463: $02
	ld [bc], a                                       ; $6464: $02
	ld a, b                                          ; $6465: $78
	add c                                            ; $6466: $81
	ret nz                                           ; $6467: $c0

	dec de                                           ; $6468: $1b
	db $dd                                           ; $6469: $dd
	ld [bc], a                                       ; $646a: $02
	ret nc                                           ; $646b: $d0

	pop de                                           ; $646c: $d1
	ld e, $c0                                        ; $646d: $1e $c0
	ld bc, $0aa0                                     ; $646f: $01 $a0 $0a
	inc bc                                           ; $6472: $03
	inc sp                                           ; $6473: $33
	ret nz                                           ; $6474: $c0

	ld bc, $01a0                                     ; $6475: $01 $a0 $01
	inc bc                                           ; $6478: $03
	scf                                              ; $6479: $37
	ret nz                                           ; $647a: $c0

	ld bc, $0aa0                                     ; $647b: $01 $a0 $0a
	inc bc                                           ; $647e: $03
	ccf                                              ; $647f: $3f
	ret nz                                           ; $6480: $c0

	ld bc, $01a0                                     ; $6481: $01 $a0 $01
	inc bc                                           ; $6484: $03
	ld b, a                                          ; $6485: $47
	ret nz                                           ; $6486: $c0

	ld bc, $0aa0                                     ; $6487: $01 $a0 $0a
	ld bc, $0301                                     ; $648a: $01 $01 $03
	jp nc, $d4d3                                     ; $648d: $d2 $d3 $d4

	ld a, [hl+]                                      ; $6490: $2a
	ret nz                                           ; $6491: $c0

	ld bc, $0aa0                                     ; $6492: $01 $a0 $0a
	inc bc                                           ; $6495: $03
	ld d, h                                          ; $6496: $54
	ret nz                                           ; $6497: $c0

	ld bc, $01a0                                     ; $6498: $01 $a0 $01
	inc bc                                           ; $649b: $03
	ld e, d                                          ; $649c: $5a
	ret nz                                           ; $649d: $c0

	ld bc, $0aa0                                     ; $649e: $01 $a0 $0a
	inc bc                                           ; $64a1: $03
	ld e, a                                          ; $64a2: $5f
	ret nz                                           ; $64a3: $c0

	ld bc, $01a0                                     ; $64a4: $01 $a0 $01
	inc bc                                           ; $64a7: $03
	ld l, a                                          ; $64a8: $6f
	ret nz                                           ; $64a9: $c0

	ld bc, $0aa0                                     ; $64aa: $01 $a0 $0a
	inc bc                                           ; $64ad: $03
	ld [hl], l                                       ; $64ae: $75
	ret nz                                           ; $64af: $c0

	ld bc, $01a0                                     ; $64b0: $01 $a0 $01
	inc bc                                           ; $64b3: $03
	ld a, c                                          ; $64b4: $79
	ret nz                                           ; $64b5: $c0

	ld bc, $0aa0                                     ; $64b6: $01 $a0 $0a
	inc bc                                           ; $64b9: $03
	add b                                            ; $64ba: $80
	pop bc                                           ; $64bb: $c1
	ld e, e                                          ; $64bc: $5b
	push hl                                          ; $64bd: $e5
	inc sp                                           ; $64be: $33
	nop                                              ; $64bf: $00
	nop                                              ; $64c0: $00
	rlca                                             ; $64c1: $07
	rlca                                             ; $64c2: $07
	jr c, jr_085_64e7                                ; $64c3: $38 $22

	pop bc                                           ; $64c5: $c1
	cp l                                             ; $64c6: $bd
	pop de                                           ; $64c7: $d1
	pop bc                                           ; $64c8: $c1
	dec sp                                           ; $64c9: $3b
	ret nz                                           ; $64ca: $c0

	add hl, bc                                       ; $64cb: $09
	db $e3                                           ; $64cc: $e3
	nop                                              ; $64cd: $00
	dec c                                            ; $64ce: $0d
	add c                                            ; $64cf: $81
	adc e                                            ; $64d0: $8b
	nop                                              ; $64d1: $00
	sbc $04                                          ; $64d2: $de $04
	or b                                             ; $64d4: $b0
	add c                                            ; $64d5: $81
	or b                                             ; $64d6: $b0
	add l                                            ; $64d7: $85
	ld b, $c0                                        ; $64d8: $06 $c0
	ld bc, $01a0                                     ; $64da: $01 $a0 $01
	nop                                              ; $64dd: $00
	ld bc, $0600                                     ; $64de: $01 $00 $06
	ret nz                                           ; $64e1: $c0

	ld bc, $01a0                                     ; $64e2: $01 $a0 $01
	nop                                              ; $64e5: $00
	add hl, bc                                       ; $64e6: $09

jr_085_64e7:
	sbc h                                            ; $64e7: $9c
	jp nc, $80c0                                     ; $64e8: $d2 $c0 $80

	ld bc, $30d3                                     ; $64eb: $01 $d3 $30
	nop                                              ; $64ee: $00
	rrca                                             ; $64ef: $0f
	add hl, bc                                       ; $64f0: $09
	inc c                                            ; $64f1: $0c
	ret nz                                           ; $64f2: $c0

	ld bc, $01a0                                     ; $64f3: $01 $a0 $01
	nop                                              ; $64f6: $00
	inc d                                            ; $64f7: $14
	ret nc                                           ; $64f8: $d0

	adc e                                            ; $64f9: $8b
	and b                                            ; $64fa: $a0
	nop                                              ; $64fb: $00
	or b                                             ; $64fc: $b0
	add [hl]                                         ; $64fd: $86
	nop                                              ; $64fe: $00
	ld e, $09                                        ; $64ff: $1e $09
	inc c                                            ; $6501: $0c
	ret nz                                           ; $6502: $c0

	ld bc, $01a0                                     ; $6503: $01 $a0 $01
	nop                                              ; $6506: $00
	ld [hl+], a                                      ; $6507: $22
	ret nc                                           ; $6508: $d0

	adc e                                            ; $6509: $8b
	and b                                            ; $650a: $a0
	nop                                              ; $650b: $00
	or b                                             ; $650c: $b0
	add a                                            ; $650d: $87
	nop                                              ; $650e: $00
	dec hl                                           ; $650f: $2b
	add hl, bc                                       ; $6510: $09
	inc c                                            ; $6511: $0c
	ret nz                                           ; $6512: $c0

	ld bc, $01a0                                     ; $6513: $01 $a0 $01
	nop                                              ; $6516: $00
	ld sp, $8bd0                                     ; $6517: $31 $d0 $8b
	and b                                            ; $651a: $a0
	nop                                              ; $651b: $00
	or b                                             ; $651c: $b0
	adc b                                            ; $651d: $88
	ld bc, $30d2                                     ; $651e: $01 $d2 $30
	nop                                              ; $6521: $00
	dec sp                                           ; $6522: $3b
	add hl, bc                                       ; $6523: $09
	inc c                                            ; $6524: $0c
	ret nz                                           ; $6525: $c0

	ld bc, $01a0                                     ; $6526: $01 $a0 $01
	nop                                              ; $6529: $00
	dec a                                            ; $652a: $3d
	ret nc                                           ; $652b: $d0

	adc e                                            ; $652c: $8b
	and b                                            ; $652d: $a0
	nop                                              ; $652e: $00
	or b                                             ; $652f: $b0
	add [hl]                                         ; $6530: $86
	nop                                              ; $6531: $00
	ld b, e                                          ; $6532: $43
	add hl, bc                                       ; $6533: $09
	inc c                                            ; $6534: $0c
	ret nz                                           ; $6535: $c0

	ld bc, $01a0                                     ; $6536: $01 $a0 $01
	nop                                              ; $6539: $00
	ld c, b                                          ; $653a: $48
	ret nc                                           ; $653b: $d0

	adc e                                            ; $653c: $8b
	and b                                            ; $653d: $a0
	nop                                              ; $653e: $00
	or b                                             ; $653f: $b0
	add a                                            ; $6540: $87
	nop                                              ; $6541: $00
	ld d, d                                          ; $6542: $52
	add hl, bc                                       ; $6543: $09
	inc c                                            ; $6544: $0c
	ret nz                                           ; $6545: $c0

	ld bc, $01a0                                     ; $6546: $01 $a0 $01
	nop                                              ; $6549: $00
	ld d, [hl]                                       ; $654a: $56
	ret nc                                           ; $654b: $d0

	adc e                                            ; $654c: $8b
	and b                                            ; $654d: $a0
	nop                                              ; $654e: $00
	or b                                             ; $654f: $b0
	adc b                                            ; $6550: $88
	ld bc, $30d1                                     ; $6551: $01 $d1 $30
	nop                                              ; $6554: $00
	ld e, a                                          ; $6555: $5f
	add hl, bc                                       ; $6556: $09

jr_085_6557:
	inc c                                            ; $6557: $0c
	ret nz                                           ; $6558: $c0

	ld bc, $01a0                                     ; $6559: $01 $a0 $01
	nop                                              ; $655c: $00
	ld h, h                                          ; $655d: $64
	ret nc                                           ; $655e: $d0

	adc e                                            ; $655f: $8b
	and b                                            ; $6560: $a0
	nop                                              ; $6561: $00
	or b                                             ; $6562: $b0
	add [hl]                                         ; $6563: $86
	nop                                              ; $6564: $00
	ld l, [hl]                                       ; $6565: $6e
	add hl, bc                                       ; $6566: $09
	inc c                                            ; $6567: $0c
	ret nz                                           ; $6568: $c0

	ld bc, $01a0                                     ; $6569: $01 $a0 $01
	nop                                              ; $656c: $00
	ld [hl], d                                       ; $656d: $72
	ret nc                                           ; $656e: $d0

	adc e                                            ; $656f: $8b
	and b                                            ; $6570: $a0
	nop                                              ; $6571: $00
	or b                                             ; $6572: $b0
	add a                                            ; $6573: $87
	nop                                              ; $6574: $00
	ld a, e                                          ; $6575: $7b
	add hl, bc                                       ; $6576: $09
	inc c                                            ; $6577: $0c
	ret nz                                           ; $6578: $c0

	ld bc, $01a0                                     ; $6579: $01 $a0 $01
	nop                                              ; $657c: $00
	ld a, a                                          ; $657d: $7f
	ret nc                                           ; $657e: $d0

	adc e                                            ; $657f: $8b
	and b                                            ; $6580: $a0
	nop                                              ; $6581: $00
	or b                                             ; $6582: $b0
	adc b                                            ; $6583: $88
	rrca                                             ; $6584: $0f
	ei                                               ; $6585: $fb
	db $fc                                           ; $6586: $fc
	adc e                                            ; $6587: $8b
	nop                                              ; $6588: $00
	sbc $b0                                          ; $6589: $de $b0
	rra                                              ; $658b: $1f
	inc b                                            ; $658c: $04
	push hl                                          ; $658d: $e5
	nop                                              ; $658e: $00
	add hl, hl                                       ; $658f: $29
	ld [hl], e                                       ; $6590: $73
	db $e4                                           ; $6591: $e4
	nop                                              ; $6592: $00
	ld [bc], a                                       ; $6593: $02
	add hl, bc                                       ; $6594: $09
	pop bc                                           ; $6595: $c1
	ld l, l                                          ; $6596: $6d
	db $fd                                           ; $6597: $fd
	pop bc                                           ; $6598: $c1
	ld l, d                                          ; $6599: $6a
	adc e                                            ; $659a: $8b
	nop                                              ; $659b: $00
	sbc $02                                          ; $659c: $de $02
	or b                                             ; $659e: $b0
	ld [bc], a                                       ; $659f: $02
	jr c, jr_085_6602                                ; $65a0: $38 $60

	db $fc                                           ; $65a2: $fc
	adc e                                            ; $65a3: $8b
	nop                                              ; $65a4: $00
	jr z, jr_085_6557                                ; $65a5: $28 $b0

	dec bc                                           ; $65a7: $0b
	rlca                                             ; $65a8: $07
	ldh [rSB], a                                     ; $65a9: $e0 $01
	ld a, l                                          ; $65ab: $7d
	pop bc                                           ; $65ac: $c1
	dec sp                                           ; $65ad: $3b
	ret nz                                           ; $65ae: $c0

	push af                                          ; $65af: $f5
	inc h                                            ; $65b0: $24
	pop bc                                           ; $65b1: $c1
	ld e, c                                          ; $65b2: $59
	db $e3                                           ; $65b3: $e3
	nop                                              ; $65b4: $00
	inc a                                            ; $65b5: $3c
	ret nz                                           ; $65b6: $c0

	ld bc, $01a0                                     ; $65b7: $01 $a0 $01
	nop                                              ; $65ba: $00
	add a                                            ; $65bb: $87
	pop hl                                           ; $65bc: $e1
	ld [bc], a                                       ; $65bd: $02
	nop                                              ; $65be: $00
	ret nz                                           ; $65bf: $c0

	ldh [rSB], a                                     ; $65c0: $e0 $01
	adc e                                            ; $65c2: $8b
	ret nz                                           ; $65c3: $c0

jr_085_65c4:
	ld bc, $01a0                                     ; $65c4: $01 $a0 $01
	nop                                              ; $65c7: $00
	adc e                                            ; $65c8: $8b
	ldh [rSC], a                                     ; $65c9: $e0 $02
	ldh a, [$e0]                                     ; $65cb: $f0 $e0
	inc bc                                           ; $65cd: $03
	inc hl                                           ; $65ce: $23
	pop bc                                           ; $65cf: $c1
	dec sp                                           ; $65d0: $3b
	nop                                              ; $65d1: $00
	add b                                            ; $65d2: $80

Jump_085_65d3:
	ld bc, $e5ae                                     ; $65d3: $01 $ae $e5
	ld bc, $cc15                                     ; $65d6: $01 $15 $cc
	ld [bc], a                                       ; $65d9: $02
	or b                                             ; $65da: $b0
	add c                                            ; $65db: $81
	inc d                                            ; $65dc: $14
	ret nz                                           ; $65dd: $c0

	ld bc, $01a0                                     ; $65de: $01 $a0 $01
	nop                                              ; $65e1: $00
	adc a                                            ; $65e2: $8f
	ldh [rSC], a                                     ; $65e3: $e0 $02
	sub $e0                                          ; $65e5: $d6 $e0
	inc bc                                           ; $65e7: $03
	ld [hl], l                                       ; $65e8: $75
	nop                                              ; $65e9: $00
	add b                                            ; $65ea: $80
	nop                                              ; $65eb: $00
	db $dd                                           ; $65ec: $dd
	push hl                                          ; $65ed: $e5
	inc de                                           ; $65ee: $13
	ld bc, $02ce                                     ; $65ef: $01 $ce $02
	or b                                             ; $65f2: $b0
	rra                                              ; $65f3: $1f
	ld a, [bc]                                       ; $65f4: $0a
	ldh [rSC], a                                     ; $65f5: $e0 $02
	call nz, $03e0                                   ; $65f7: $c4 $e0 $03
	ld h, e                                          ; $65fa: $63
	push hl                                          ; $65fb: $e5
	nop                                              ; $65fc: $00
	add hl, hl                                       ; $65fd: $29
	or c                                             ; $65fe: $b1
	ld [bc], a                                       ; $65ff: $02
	or b                                             ; $6600: $b0
	add l                                            ; $6601: $85

jr_085_6602:
	jr jr_085_65c4                                   ; $6602: $18 $c0

	ld bc, $01a0                                     ; $6604: $01 $a0 $01
	nop                                              ; $6607: $00
	adc a                                            ; $6608: $8f
	ldh [rSC], a                                     ; $6609: $e0 $02
	or b                                             ; $660b: $b0
	ldh [$03], a                                     ; $660c: $e0 $03
	ld c, a                                          ; $660e: $4f
	ret nz                                           ; $660f: $c0

	ld bc, $02a0                                     ; $6610: $01 $a0 $02
	nop                                              ; $6613: $00
	sub c                                            ; $6614: $91
	ret nz                                           ; $6615: $c0

	set 4, l                                         ; $6616: $cb $e5
	ld bc, $b119                                     ; $6618: $01 $19 $b1
	ld b, $b0                                        ; $661b: $06 $b0
	dec e                                            ; $661d: $1d
	or b                                             ; $661e: $b0
	adc c                                            ; $661f: $89
	or b                                             ; $6620: $b0
	ld [hl], h                                       ; $6621: $74
	inc e                                            ; $6622: $1c
	ldh [rSB], a                                     ; $6623: $e0 $01
	inc bc                                           ; $6625: $03
	nop                                              ; $6626: $00
	add b                                            ; $6627: $80
	nop                                              ; $6628: $00
	jp z, $3bc1                                      ; $6629: $ca $c1 $3b

	ret nz                                           ; $662c: $c0

	push af                                          ; $662d: $f5
	ld h, b                                          ; $662e: $60
	db $fc                                           ; $662f: $fc
	adc e                                            ; $6630: $8b
	nop                                              ; $6631: $00
	sbc $b0                                          ; $6632: $de $b0
	ld [hl], h                                       ; $6634: $74
	inc b                                            ; $6635: $04
	push hl                                          ; $6636: $e5
	ld bc, $b119                                     ; $6637: $01 $19 $b1
	inc b                                            ; $663a: $04
	push hl                                          ; $663b: $e5
	nop                                              ; $663c: $00
	inc h                                            ; $663d: $24
	call c, $b002                                    ; $663e: $dc $02 $b0
	ld [hl], b                                       ; $6641: $70
	rra                                              ; $6642: $1f
	ret nz                                           ; $6643: $c0

	ld bc, $01a0                                     ; $6644: $01 $a0 $01
	nop                                              ; $6647: $00
	add a                                            ; $6648: $87
	pop hl                                           ; $6649: $e1
	ld [bc], a                                       ; $664a: $02
	nop                                              ; $664b: $00
	ret nz                                           ; $664c: $c0

	ldh [rP1], a                                     ; $664d: $e0 $00
	cp $c0                                           ; $664f: $fe $c0
	ld bc, $01a0                                     ; $6651: $01 $a0 $01
	nop                                              ; $6654: $00
	adc e                                            ; $6655: $8b
	ldh [rSC], a                                     ; $6656: $e0 $02
	ld h, e                                          ; $6658: $63
	ldh [rSC], a                                     ; $6659: $e0 $02
	sub [hl]                                         ; $665b: $96
	pop bc                                           ; $665c: $c1
	dec sp                                           ; $665d: $3b
	push hl                                          ; $665e: $e5
	ld e, h                                          ; $665f: $5c
	dec b                                            ; $6660: $05
	xor c                                            ; $6661: $a9
	ld [bc], a                                       ; $6662: $02
	or b                                             ; $6663: $b0
	ld l, l                                          ; $6664: $6d
	ld [hl+], a                                      ; $6665: $22
	ldh [rP1], a                                     ; $6666: $e0 $00
	ret nz                                           ; $6668: $c0

	nop                                              ; $6669: $00
	add b                                            ; $666a: $80
	nop                                              ; $666b: $00
	jp z, $fefb                                      ; $666c: $ca $fb $fe

	dec c                                            ; $666f: $0d
	db $fc                                           ; $6670: $fc
	ret nz                                           ; $6671: $c0

	ld h, h                                          ; $6672: $64
	jp nc, $c0fc                                     ; $6673: $d2 $fc $c0

	ld h, l                                          ; $6676: $65
	reti                                             ; $6677: $d9


	db $fc                                           ; $6678: $fc
	ret nz                                           ; $6679: $c0

	ld h, [hl]                                       ; $667a: $66
	ldh [rAUD1LOW], a                                ; $667b: $e0 $13
	inc b                                            ; $667d: $04
	pop hl                                           ; $667e: $e1
	ld e, h                                          ; $667f: $5c
	dec b                                            ; $6680: $05
	dec sp                                           ; $6681: $3b
	ret nz                                           ; $6682: $c0

	push af                                          ; $6683: $f5
	push hl                                          ; $6684: $e5
	ld bc, $b119                                     ; $6685: $01 $19 $b1
	ld [bc], a                                       ; $6688: $02
	or b                                             ; $6689: $b0
	adc d                                            ; $668a: $8a
	ld a, b                                          ; $668b: $78
	ld h, b                                          ; $668c: $60
	add b                                            ; $668d: $80
	nop                                              ; $668e: $00
	ld l, c                                          ; $668f: $69
	jr c, @-$3e                                      ; $6690: $38 $c0

	ld bc, $01a0                                     ; $6692: $01 $a0 $01
	nop                                              ; $6695: $00
	sub e                                            ; $6696: $93
	ret nz                                           ; $6697: $c0

	ld bc, $01a0                                     ; $6698: $01 $a0 $01
	nop                                              ; $669b: $00
	sbc a                                            ; $669c: $9f
	ldh [rP1], a                                     ; $669d: $e0 $00
	ld h, [hl]                                       ; $669f: $66
	ldh [rP1], a                                     ; $66a0: $e0 $00
	xor e                                            ; $66a2: $ab
	ret nz                                           ; $66a3: $c0

	ld bc, $01a0                                     ; $66a4: $01 $a0 $01
	nop                                              ; $66a7: $00
	adc e                                            ; $66a8: $8b
	ldh [rSC], a                                     ; $66a9: $e0 $02
	db $10                                           ; $66ab: $10
	ld h, b                                          ; $66ac: $60
	cp $12                                           ; $66ad: $fe $12
	rst $38                                          ; $66af: $ff
	ld a, [bc]                                       ; $66b0: $0a
	db $fc                                           ; $66b1: $fc
	ret nz                                           ; $66b2: $c0

	dec de                                           ; $66b3: $1b
	ret nc                                           ; $66b4: $d0

	ret nc                                           ; $66b5: $d0

	db $fc                                           ; $66b6: $fc
	ret nz                                           ; $66b7: $c0

	dec de                                           ; $66b8: $1b
	ret nc                                           ; $66b9: $d0

	pop de                                           ; $66ba: $d1
	db $fd                                           ; $66bb: $fd
	adc e                                            ; $66bc: $8b
	and b                                            ; $66bd: $a0
	nop                                              ; $66be: $00
	or b                                             ; $66bf: $b0
	adc b                                            ; $66c0: $88
	inc bc                                           ; $66c1: $03
	ldh [rSC], a                                     ; $66c2: $e0 $02
	ld a, [$e003]                                    ; $66c4: $fa $03 $e0
	ld [bc], a                                       ; $66c7: $02
	add hl, hl                                       ; $66c8: $29
	ld [hl-], a                                      ; $66c9: $32
	ldh [rP1], a                                     ; $66ca: $e0 $00
	xor h                                            ; $66cc: $ac
	ret nz                                           ; $66cd: $c0

	ld bc, $01a0                                     ; $66ce: $01 $a0 $01
	nop                                              ; $66d1: $00
	xor d                                            ; $66d2: $aa
	ldh [rSB], a                                     ; $66d3: $e0 $01
	ld b, $c0                                        ; $66d5: $06 $c0
	ld bc, $01a0                                     ; $66d7: $01 $a0 $01
	nop                                              ; $66da: $00
	cp c                                             ; $66db: $b9
	pop bc                                           ; $66dc: $c1
	ld e, c                                          ; $66dd: $59
	db $e3                                           ; $66de: $e3
	nop                                              ; $66df: $00
	ld a, a                                          ; $66e0: $7f
	nop                                              ; $66e1: $00
	add b                                            ; $66e2: $80
	ld [bc], a                                       ; $66e3: $02
	sbc c                                            ; $66e4: $99
	pop hl                                           ; $66e5: $e1
	ld [bc], a                                       ; $66e6: $02
	nop                                              ; $66e7: $00
	ret c                                            ; $66e8: $d8

	ldh [rSB], a                                     ; $66e9: $e0 $01
	ld [hl+], a                                      ; $66eb: $22
	ret nz                                           ; $66ec: $c0

	ld bc, $01a0                                     ; $66ed: $01 $a0 $01
	nop                                              ; $66f0: $00
	adc e                                            ; $66f1: $8b
	ldh [rSB], a                                     ; $66f2: $e0 $01
	rst JumpTable                                          ; $66f4: $c7
	ldh [rSB], a                                     ; $66f5: $e0 $01
	ld a, [$8000]                                    ; $66f7: $fa $00 $80
	ld [bc], a                                       ; $66fa: $02
	sbc d                                            ; $66fb: $9a
	pop bc                                           ; $66fc: $c1
	dec sp                                           ; $66fd: $3b
	pop bc                                           ; $66fe: $c1
	dec b                                            ; $66ff: $05
	push hl                                          ; $6700: $e5
	ld d, a                                          ; $6701: $57
	nop                                              ; $6702: $00
	ret c                                            ; $6703: $d8

	ld [hl+], a                                      ; $6704: $22
	ld h, b                                          ; $6705: $60
	cp $12                                           ; $6706: $fe $12
	rst $38                                          ; $6708: $ff
	ld a, [bc]                                       ; $6709: $0a
	db $fc                                           ; $670a: $fc
	ret nz                                           ; $670b: $c0

	dec de                                           ; $670c: $1b
	ret nc                                           ; $670d: $d0

	ret nc                                           ; $670e: $d0

	db $fc                                           ; $670f: $fc
	ret nz                                           ; $6710: $c0

	dec de                                           ; $6711: $1b
	ret nc                                           ; $6712: $d0

	pop de                                           ; $6713: $d1
	db $fd                                           ; $6714: $fd
	adc e                                            ; $6715: $8b
	and b                                            ; $6716: $a0
	nop                                              ; $6717: $00
	or b                                             ; $6718: $b0
	adc b                                            ; $6719: $88
	rlca                                             ; $671a: $07
	ret nz                                           ; $671b: $c0

	and a                                            ; $671c: $a7
	ret nc                                           ; $671d: $d0

	db $d3                                           ; $671e: $d3
	db $dd                                           ; $671f: $dd
	ret nz                                           ; $6720: $c0

	and l                                            ; $6721: $a5
	inc b                                            ; $6722: $04
	pop hl                                           ; $6723: $e1
	ld [bc], a                                       ; $6724: $02
	nop                                              ; $6725: $00
	ret c                                            ; $6726: $d8

	inc h                                            ; $6727: $24
	ldh [rP1], a                                     ; $6728: $e0 $00
	ld c, [hl]                                       ; $672a: $4e
	ret nz                                           ; $672b: $c0

	ld bc, $01a0                                     ; $672c: $01 $a0 $01
	nop                                              ; $672f: $00
	jp nz, $00e0                                     ; $6730: $c2 $e0 $00

	xor b                                            ; $6733: $a8
	pop bc                                           ; $6734: $c1
	ld e, c                                          ; $6735: $59
	db $e3                                           ; $6736: $e3
	nop                                              ; $6737: $00
	ld h, c                                          ; $6738: $61
	pop hl                                           ; $6739: $e1
	ld [bc], a                                       ; $673a: $02
	nop                                              ; $673b: $00
	ret c                                            ; $673c: $d8

	ldh [rP1], a                                     ; $673d: $e0 $00
	adc $c0                                          ; $673f: $ce $c0
	ld bc, $01a0                                     ; $6741: $01 $a0 $01
	nop                                              ; $6744: $00
	adc e                                            ; $6745: $8b
	ldh [rSB], a                                     ; $6746: $e0 $01
	ld [hl], e                                       ; $6748: $73
	ldh [rSB], a                                     ; $6749: $e0 $01
	and [hl]                                         ; $674b: $a6
	ld a, [hl+]                                      ; $674c: $2a
	add e                                            ; $674d: $83
	ret nz                                           ; $674e: $c0

	dec de                                           ; $674f: $1b
	ret nc                                           ; $6750: $d0

	ld [bc], a                                       ; $6751: $02
	ret nc                                           ; $6752: $d0

	pop de                                           ; $6753: $d1
	ld b, $c0                                        ; $6754: $06 $c0
	ld bc, $02a0                                     ; $6756: $01 $a0 $02
	nop                                              ; $6759: $00
	jp nc, $d202                                     ; $675a: $d2 $02 $d2

	db $d3                                           ; $675d: $d3
	ld b, $c0                                        ; $675e: $06 $c0
	ld bc, $02a0                                     ; $6760: $01 $a0 $02
	nop                                              ; $6763: $00
	rst SubAFromHL                                          ; $6764: $d7
	ld bc, $06d4                                     ; $6765: $01 $d4 $06
	ret nz                                           ; $6768: $c0

	ld bc, $02a0                                     ; $6769: $01 $a0 $02
	nop                                              ; $676c: $00
	reti                                             ; $676d: $d9


	ld bc, $06d5                                     ; $676e: $01 $d5 $06
	ret nz                                           ; $6771: $c0

	ld bc, $02a0                                     ; $6772: $01 $a0 $02
	nop                                              ; $6775: $00
	db $dd                                           ; $6776: $dd
	ld h, d                                          ; $6777: $62
	ret nz                                           ; $6778: $c0

	ld bc, $01a0                                     ; $6779: $01 $a0 $01
	nop                                              ; $677c: $00
	pop hl                                           ; $677d: $e1
	pop hl                                           ; $677e: $e1
	ld [bc], a                                       ; $677f: $02
	ld c, $65                                        ; $6780: $0e $65
	pop bc                                           ; $6782: $c1

jr_085_6783:
	rlca                                             ; $6783: $07
	jp nc, $c0d0                                     ; $6784: $d2 $d0 $c0

	ld bc, $02a0                                     ; $6787: $01 $a0 $02
	nop                                              ; $678a: $00
	db $ed                                           ; $678b: $ed
	ret nz                                           ; $678c: $c0

	ld bc, $01a0                                     ; $678d: $01 $a0 $01
	nop                                              ; $6790: $00
	pop af                                           ; $6791: $f1
	add e                                            ; $6792: $83
	ret nz                                           ; $6793: $c0

	dec de                                           ; $6794: $1b
	ret nc                                           ; $6795: $d0

	ld [bc], a                                       ; $6796: $02
	ret nc                                           ; $6797: $d0

	pop de                                           ; $6798: $d1
	ld [de], a                                       ; $6799: $12
	ret nz                                           ; $679a: $c0

	ld bc, $02a0                                     ; $679b: $01 $a0 $02
	nop                                              ; $679e: $00
	or $c0                                           ; $679f: $f6 $c0
	ld bc, $01a0                                     ; $67a1: $01 $a0 $01
	nop                                              ; $67a4: $00
	ld hl, sp-$40                                    ; $67a5: $f8 $c0
	ld bc, $02a0                                     ; $67a7: $01 $a0 $02
	nop                                              ; $67aa: $00
	db $fc                                           ; $67ab: $fc
	ld [bc], a                                       ; $67ac: $02
	jp nc, $06d3                                     ; $67ad: $d2 $d3 $06

	ret nz                                           ; $67b0: $c0

	ld bc, $02a0                                     ; $67b1: $01 $a0 $02
	ld bc, $0101                                     ; $67b4: $01 $01 $01
	call nc, $c006                                   ; $67b7: $d4 $06 $c0
	ld bc, $02a0                                     ; $67ba: $01 $a0 $02
	ld bc, $0105                                     ; $67bd: $01 $05 $01
	push de                                          ; $67c0: $d5
	jr jr_085_6783                                   ; $67c1: $18 $c0

	ld bc, $02a0                                     ; $67c3: $01 $a0 $02
	ld bc, $c00b                                     ; $67c6: $01 $0b $c0
	ld bc, $01a0                                     ; $67c9: $01 $a0 $01
	ld bc, $c010                                     ; $67cc: $01 $10 $c0
	ld bc, $02a0                                     ; $67cf: $01 $a0 $02
	ld bc, $c01c                                     ; $67d2: $01 $1c $c0
	ld bc, $01a0                                     ; $67d5: $01 $a0 $01
	ld bc, $3123                                     ; $67d8: $01 $23 $31
	add d                                            ; $67db: $82
	ret nz                                           ; $67dc: $c0

	dec de                                           ; $67dd: $1b
	ret nc                                           ; $67de: $d0

	inc b                                            ; $67df: $04
	ret nc                                           ; $67e0: $d0

	pop de                                           ; $67e1: $d1
	jp nc, $06d3                                     ; $67e2: $d2 $d3 $06

	ret nz                                           ; $67e5: $c0

	ld bc, $02a0                                     ; $67e6: $01 $a0 $02
	ld bc, $0126                                     ; $67e9: $01 $26 $01
	call nc, $c006                                   ; $67ec: $d4 $06 $c0
	ld bc, $02a0                                     ; $67ef: $01 $a0 $02
	ld bc, $0130                                     ; $67f2: $01 $30 $01
	push de                                          ; $67f5: $d5
	ld b, $c0                                        ; $67f6: $06 $c0
	ld bc, $02a0                                     ; $67f8: $01 $a0 $02
	ld bc, $c032                                     ; $67fb: $01 $32 $c0
	ld bc, $01a0                                     ; $67fe: $01 $a0 $01
	ld bc, $c036                                     ; $6801: $01 $36 $c0
	dec bc                                           ; $6804: $0b
	db $e3                                           ; $6805: $e3
	nop                                              ; $6806: $00
	ld a, a                                          ; $6807: $7f
	ret nz                                           ; $6808: $c0

	nop                                              ; $6809: $00
	ld bc, $7c3c                                     ; $680a: $01 $3c $7c
	add d                                            ; $680d: $82
	ret nz                                           ; $680e: $c0

	dec de                                           ; $680f: $1b
	ret nc                                           ; $6810: $d0

	inc b                                            ; $6811: $04
	ret nc                                           ; $6812: $d0

	pop de                                           ; $6813: $d1
	jp nc, $56d3                                     ; $6814: $d2 $d3 $56

	ret nz                                           ; $6817: $c0

	ld bc, $02a0                                     ; $6818: $01 $a0 $02
	ld bc, $623f                                     ; $681b: $01 $3f $62
	add b                                            ; $681e: $80
	ld [bc], a                                       ; $681f: $02
	sbc e                                            ; $6820: $9b
	inc h                                            ; $6821: $24
	ret nz                                           ; $6822: $c0

	ld bc, $01a0                                     ; $6823: $01 $a0 $01
	ld bc, $c049                                     ; $6826: $01 $49 $c0
	ld bc, $02a0                                     ; $6829: $01 $a0 $02
	ld bc, $c054                                     ; $682c: $01 $54 $c0
	ld bc, $01a0                                     ; $682f: $01 $a0 $01
	ld bc, $c05b                                     ; $6832: $01 $5b $c0
	ld bc, $02a0                                     ; $6835: $01 $a0 $02
	ld bc, $c06b                                     ; $6838: $01 $6b $c0
	ld bc, $01a0                                     ; $683b: $01 $a0 $01
	ld bc, $c077                                     ; $683e: $01 $77 $c0
	ld bc, $02a0                                     ; $6841: $01 $a0 $02
	ld bc, $807c                                     ; $6844: $01 $7c $80
	ld [bc], a                                       ; $6847: $02
	sbc h                                            ; $6848: $9c
	rrca                                             ; $6849: $0f
	ret nz                                           ; $684a: $c0

	ld bc, $01a0                                     ; $684b: $01 $a0 $01
	ld bc, $c049                                     ; $684e: $01 $49 $c0
	ld bc, $02a0                                     ; $6851: $01 $a0 $02
	ld bc, $e089                                     ; $6854: $01 $89 $e0
	nop                                              ; $6857: $00
	ld [hl-], a                                      ; $6858: $32
	add b                                            ; $6859: $80
	ld [bc], a                                       ; $685a: $02
	sbc l                                            ; $685b: $9d
	rrca                                             ; $685c: $0f
	ret nz                                           ; $685d: $c0

	ld bc, $01a0                                     ; $685e: $01 $a0 $01
	ld bc, $c049                                     ; $6861: $01 $49 $c0
	ld bc, $02a0                                     ; $6864: $01 $a0 $02
	ld bc, $e090                                     ; $6867: $01 $90 $e0
	nop                                              ; $686a: $00
	rra                                              ; $686b: $1f
	nop                                              ; $686c: $00
	ld bc, $06d4                                     ; $686d: $01 $d4 $06
	ret nz                                           ; $6870: $c0

	ld bc, $02a0                                     ; $6871: $01 $a0 $02
	ld bc, $0196                                     ; $6874: $01 $96 $01
	push de                                          ; $6877: $d5
	ld b, $c0                                        ; $6878: $06 $c0
	ld bc, $02a0                                     ; $687a: $01 $a0 $02
	ld bc, $429d                                     ; $687d: $01 $9d $42
	add b                                            ; $6880: $80
	ld [bc], a                                       ; $6881: $02
	sbc e                                            ; $6882: $9b
	add b                                            ; $6883: $80
	ld [bc], a                                       ; $6884: $02
	sbc h                                            ; $6885: $9c
	add b                                            ; $6886: $80
	ld [bc], a                                       ; $6887: $02
	sbc l                                            ; $6888: $9d
	jr nc, jr_085_68eb                               ; $6889: $30 $60

	add b                                            ; $688b: $80
	ld [bc], a                                       ; $688c: $02
	ld a, [de]                                       ; $688d: $1a
	ld [de], a                                       ; $688e: $12
	ret nz                                           ; $688f: $c0

	ld bc, $01a0                                     ; $6890: $01 $a0 $01
	ld bc, $c0a2                                     ; $6893: $01 $a2 $c0
	ld bc, $02a0                                     ; $6896: $01 $a0 $02
	ld bc, $c0ab                                     ; $6899: $01 $ab $c0
	ld bc, $01a0                                     ; $689c: $01 $a0 $01
	ld bc, $12b6                                     ; $689f: $01 $b6 $12
	ret nz                                           ; $68a2: $c0

	ld bc, $01a0                                     ; $68a3: $01 $a0 $01
	ld bc, $c0bf                                     ; $68a6: $01 $bf $c0
	ld bc, $02a0                                     ; $68a9: $01 $a0 $02
	ld bc, $c0c7                                     ; $68ac: $01 $c7 $c0
	ld bc, $01a0                                     ; $68af: $01 $a0 $01
	ld bc, $c0cb                                     ; $68b2: $01 $cb $c0
	ld bc, $02a0                                     ; $68b5: $01 $a0 $02
	ld bc, $357c                                     ; $68b8: $01 $7c $35
	add e                                            ; $68bb: $83
	ret nz                                           ; $68bc: $c0

	dec de                                           ; $68bd: $1b
	ret nc                                           ; $68be: $d0

	ld [bc], a                                       ; $68bf: $02
	ret nc                                           ; $68c0: $d0

	pop de                                           ; $68c1: $d1
	dec bc                                           ; $68c2: $0b
	pop bc                                           ; $68c3: $c1
	or d                                             ; $68c4: $b2
	db $e3                                           ; $68c5: $e3
	nop                                              ; $68c6: $00
	add hl, bc                                       ; $68c7: $09
	ret nz                                           ; $68c8: $c0

	ld bc, $02a0                                     ; $68c9: $01 $a0 $02
	ld bc, $02d7                                     ; $68cc: $01 $d7 $02
	jp nc, $06d3                                     ; $68cf: $d2 $d3 $06

	ret nz                                           ; $68d2: $c0

	ld bc, $02a0                                     ; $68d3: $01 $a0 $02
	ld bc, $01dd                                     ; $68d6: $01 $dd $01
	call nc, $c006                                   ; $68d9: $d4 $06 $c0
	ld bc, $02a0                                     ; $68dc: $01 $a0 $02
	ld bc, $01dd                                     ; $68df: $01 $dd $01
	push de                                          ; $68e2: $d5
	ld b, $c0                                        ; $68e3: $06 $c0
	ld bc, $02a0                                     ; $68e5: $01 $a0 $02
	ld bc, wGenericTileDataBytesToCopyUntil21h                                     ; $68e8: $01 $e4 $c0

jr_085_68eb:
	ld bc, $01a0                                     ; $68eb: $01 $a0 $01
	ld bc, $6be8                                     ; $68ee: $01 $e8 $6b
	add d                                            ; $68f1: $82
	adc e                                            ; $68f2: $8b
	and b                                            ; $68f3: $a0
	nop                                              ; $68f4: $00
	ld [bc], a                                       ; $68f5: $02
	or b                                             ; $68f6: $b0
	add [hl]                                         ; $68f7: $86
	inc hl                                           ; $68f8: $23
	ret nz                                           ; $68f9: $c0

	ld [hl+], a                                      ; $68fa: $22
	db $d3                                           ; $68fb: $d3
	ret nc                                           ; $68fc: $d0

	ret nz                                           ; $68fd: $c0

	ld hl, $d0d2                                     ; $68fe: $21 $d2 $d0
	ret nz                                           ; $6901: $c0

	ld h, $df                                        ; $6902: $26 $df
	ret nc                                           ; $6904: $d0

	pop hl                                           ; $6905: $e1
	ld [bc], a                                       ; $6906: $02
	inc bc                                           ; $6907: $03
	inc de                                           ; $6908: $13
	pop bc                                           ; $6909: $c1
	or d                                             ; $690a: $b2
	db $e3                                           ; $690b: $e3
	nop                                              ; $690c: $00
	ld a, [bc]                                       ; $690d: $0a
	ret nz                                           ; $690e: $c0

	ld bc, $02a0                                     ; $690f: $01 $a0 $02
	ld bc, $c1ee                                     ; $6912: $01 $ee $c1
	ld e, e                                          ; $6915: $5b
	ret nz                                           ; $6916: $c0

	ld bc, $01a0                                     ; $6917: $01 $a0 $01
	ld bc, $02fc                                     ; $691a: $01 $fc $02
	or b                                             ; $691d: $b0
	add a                                            ; $691e: $87
	ld e, $c0                                        ; $691f: $1e $c0
	ld [hl+], a                                      ; $6921: $22
	jp nc, $c0d0                                     ; $6922: $d2 $d0 $c0

	ld hl, $d0d1                                     ; $6925: $21 $d1 $d0
	ret nz                                           ; $6928: $c0

	ld h, $da                                        ; $6929: $26 $da
	ret nc                                           ; $692b: $d0

	pop hl                                           ; $692c: $e1
	ld [bc], a                                       ; $692d: $02
	inc bc                                           ; $692e: $03
	rla                                              ; $692f: $17
	ret nz                                           ; $6930: $c0

	ld bc, $02a0                                     ; $6931: $01 $a0 $02
	ld [bc], a                                       ; $6934: $02
	dec b                                            ; $6935: $05
	pop bc                                           ; $6936: $c1
	ld e, e                                          ; $6937: $5b
	ret nz                                           ; $6938: $c0

	ld bc, $01a0                                     ; $6939: $01 $a0 $01
	ld [bc], a                                       ; $693c: $02
	dec bc                                           ; $693d: $0b
	ld [bc], a                                       ; $693e: $02
	or b                                             ; $693f: $b0
	adc b                                            ; $6940: $88
	ld a, [de]                                       ; $6941: $1a
	ret nz                                           ; $6942: $c0

	ld hl, $d0d1                                     ; $6943: $21 $d1 $d0
	ret nz                                           ; $6946: $c0

	inc hl                                           ; $6947: $23
	jp c, $e1d0                                      ; $6948: $da $d0 $e1

	ld [bc], a                                       ; $694b: $02
	inc bc                                           ; $694c: $03
	dec de                                           ; $694d: $1b
	ret nz                                           ; $694e: $c0

	ld bc, $02a0                                     ; $694f: $01 $a0 $02
	ld [bc], a                                       ; $6952: $02
	inc d                                            ; $6953: $14
	pop bc                                           ; $6954: $c1
	ld e, e                                          ; $6955: $5b
	ret nz                                           ; $6956: $c0

	ld bc, $01a0                                     ; $6957: $01 $a0 $01
	ld [bc], a                                       ; $695a: $02
	jr nz, jr_085_69bd                               ; $695b: $20 $60

	add d                                            ; $695d: $82
	adc e                                            ; $695e: $8b
	and b                                            ; $695f: $a0
	nop                                              ; $6960: $00
	ld [bc], a                                       ; $6961: $02
	or b                                             ; $6962: $b0
	add [hl]                                         ; $6963: $86
	inc e                                            ; $6964: $1c
	ret nz                                           ; $6965: $c0

jr_085_6966:
	ld [hl+], a                                      ; $6966: $22
	db $d3                                           ; $6967: $d3
	ret nc                                           ; $6968: $d0

	ret nz                                           ; $6969: $c0

	ld hl, $d0d2                                     ; $696a: $21 $d2 $d0
	ret nz                                           ; $696d: $c0

	ld h, $df                                        ; $696e: $26 $df
	ret nc                                           ; $6970: $d0

	pop hl                                           ; $6971: $e1
	ld [bc], a                                       ; $6972: $02
	inc bc                                           ; $6973: $03
	inc de                                           ; $6974: $13
	ret nz                                           ; $6975: $c0

	ld bc, $02a0                                     ; $6976: $01 $a0 $02
	ld bc, $c0ee                                     ; $6979: $01 $ee $c0
	ld bc, $01a0                                     ; $697c: $01 $a0 $01
	ld [bc], a                                       ; $697f: $02
	ld h, $02                                        ; $6980: $26 $02
	or b                                             ; $6982: $b0
	add a                                            ; $6983: $87
	inc e                                            ; $6984: $1c
	ret nz                                           ; $6985: $c0

	ld [hl+], a                                      ; $6986: $22
	jp nc, $c0d0                                     ; $6987: $d2 $d0 $c0

	ld hl, $d0d1                                     ; $698a: $21 $d1 $d0
	ret nz                                           ; $698d: $c0

	ld h, $da                                        ; $698e: $26 $da
	ret nc                                           ; $6990: $d0

	pop hl                                           ; $6991: $e1
	ld [bc], a                                       ; $6992: $02
	inc bc                                           ; $6993: $03
	rla                                              ; $6994: $17
	ret nz                                           ; $6995: $c0

	ld bc, $02a0                                     ; $6996: $01 $a0 $02
	ld [bc], a                                       ; $6999: $02
	dec b                                            ; $699a: $05
	ret nz                                           ; $699b: $c0

	ld bc, $01a0                                     ; $699c: $01 $a0 $01
	ld [bc], a                                       ; $699f: $02
	cpl                                              ; $69a0: $2f
	ld [bc], a                                       ; $69a1: $02
	or b                                             ; $69a2: $b0
	adc b                                            ; $69a3: $88
	jr jr_085_6966                                   ; $69a4: $18 $c0

	ld hl, $d0d1                                     ; $69a6: $21 $d1 $d0
	ret nz                                           ; $69a9: $c0

	inc hl                                           ; $69aa: $23
	jp c, $e1d0                                      ; $69ab: $da $d0 $e1

	ld [bc], a                                       ; $69ae: $02
	inc bc                                           ; $69af: $03
	dec de                                           ; $69b0: $1b
	ret nz                                           ; $69b1: $c0

	ld bc, $02a0                                     ; $69b2: $01 $a0 $02
	ld [bc], a                                       ; $69b5: $02
	inc d                                            ; $69b6: $14
	ret nz                                           ; $69b7: $c0

	ld bc, $01a0                                     ; $69b8: $01 $a0 $01
	ld [bc], a                                       ; $69bb: $02
	add hl, sp                                       ; $69bc: $39

jr_085_69bd:
	ld b, b                                          ; $69bd: $40
	add c                                            ; $69be: $81
	adc e                                            ; $69bf: $8b
	and b                                            ; $69c0: $a0
	nop                                              ; $69c1: $00
	ld [bc], a                                       ; $69c2: $02
	or b                                             ; $69c3: $b0
	add [hl]                                         ; $69c4: $86
	ld a, [de]                                       ; $69c5: $1a
	ret nz                                           ; $69c6: $c0

	ld [hl+], a                                      ; $69c7: $22
	db $d3                                           ; $69c8: $d3
	ret nc                                           ; $69c9: $d0

	ret nz                                           ; $69ca: $c0

	ld hl, $d0d2                                     ; $69cb: $21 $d2 $d0
	ret nz                                           ; $69ce: $c0

	ld h, $df                                        ; $69cf: $26 $df
	ret nc                                           ; $69d1: $d0

	ret nz                                           ; $69d2: $c0

	ld bc, $02a0                                     ; $69d3: $01 $a0 $02
	ld bc, $c1ee                                     ; $69d6: $01 $ee $c1
	ld e, e                                          ; $69d9: $5b
	ret nz                                           ; $69da: $c0

	ld bc, $01a0                                     ; $69db: $01 $a0 $01
	ld [bc], a                                       ; $69de: $02
	ccf                                              ; $69df: $3f
	ld [bc], a                                       ; $69e0: $02
	or b                                             ; $69e1: $b0
	add a                                            ; $69e2: $87
	ld a, [de]                                       ; $69e3: $1a
	ret nz                                           ; $69e4: $c0

	ld [hl+], a                                      ; $69e5: $22
	jp nc, $c0d0                                     ; $69e6: $d2 $d0 $c0

	ld hl, $d0d1                                     ; $69e9: $21 $d1 $d0
	ret nz                                           ; $69ec: $c0

	ld h, $da                                        ; $69ed: $26 $da
	ret nc                                           ; $69ef: $d0

	ret nz                                           ; $69f0: $c0

	ld bc, $02a0                                     ; $69f1: $01 $a0 $02
	ld [bc], a                                       ; $69f4: $02
	dec b                                            ; $69f5: $05
	pop bc                                           ; $69f6: $c1
	ld e, e                                          ; $69f7: $5b
	ret nz                                           ; $69f8: $c0

	ld bc, $01a0                                     ; $69f9: $01 $a0 $01
	ld [bc], a                                       ; $69fc: $02
	dec bc                                           ; $69fd: $0b
	rlca                                             ; $69fe: $07
	rlca                                             ; $69ff: $07
	add hl, bc                                       ; $6a00: $09
	dec de                                           ; $6a01: $1b
	ei                                               ; $6a02: $fb
	cp $0a                                           ; $6a03: $fe $0a
	db $fc                                           ; $6a05: $fc
	ret nz                                           ; $6a06: $c0

	ld h, l                                          ; $6a07: $65
	ret nz                                           ; $6a08: $c0

	ld [hl], c                                       ; $6a09: $71
	db $fc                                           ; $6a0a: $fc
	ret nz                                           ; $6a0b: $c0

	ld h, [hl]                                       ; $6a0c: $66
	ret nz                                           ; $6a0d: $c0

	ld [hl], d                                       ; $6a0e: $72
	add hl, bc                                       ; $6a0f: $09
	ei                                               ; $6a10: $fb
	pop af                                           ; $6a11: $f1
	add b                                            ; $6a12: $80
	nop                                              ; $6a13: $00
	dec [hl]                                         ; $6a14: $35
	inc bc                                           ; $6a15: $03
	ldh [rP1], a                                     ; $6a16: $e0 $00
	ld b, $e5                                        ; $6a18: $06 $e5
	ld bc, $0000                                     ; $6a1a: $01 $00 $00
	pop bc                                           ; $6a1d: $c1
	dec hl                                           ; $6a1e: $2b
	ret nc                                           ; $6a1f: $d0

	add e                                            ; $6a20: $83
	ld [bc], a                                       ; $6a21: $02
	ld l, l                                          ; $6a22: $6d
	ret nz                                           ; $6a23: $c0

	ld b, h                                          ; $6a24: $44
	ld h, b                                          ; $6a25: $60
	db $fc                                           ; $6a26: $fc
	add e                                            ; $6a27: $83
	ld [bc], a                                       ; $6a28: $02
	ld l, l                                          ; $6a29: $6d
	rst SubAFromDE                                          ; $6a2a: $df
	db $10                                           ; $6a2b: $10
	ret nz                                           ; $6a2c: $c0

	ld bc, $01a0                                     ; $6a2d: $01 $a0 $01
	nop                                              ; $6a30: $00
	ld bc, $0cc0                                     ; $6a31: $01 $c0 $0c
	ldh [rAUD3HIGH], a                               ; $6a34: $e0 $1e
	ret nz                                           ; $6a36: $c0

	ld bc, $01a0                                     ; $6a37: $01 $a0 $01
	nop                                              ; $6a3a: $00
	ld b, $c1                                        ; $6a3b: $06 $c1
	inc c                                            ; $6a3d: $0c
	ret nc                                           ; $6a3e: $d0

	add c                                            ; $6a3f: $81
	and b                                            ; $6a40: $a0
	nop                                              ; $6a41: $00
	pop de                                           ; $6a42: $d1
	db $fd                                           ; $6a43: $fd
	ld [hl], h                                       ; $6a44: $74
	adc e                                            ; $6a45: $8b
	nop                                              ; $6a46: $00
	ld [$b002], a                                    ; $6a47: $ea $02 $b0
	ld e, $16                                        ; $6a4a: $1e $16
	pop bc                                           ; $6a4c: $c1
	ld d, e                                          ; $6a4d: $53
	ret nz                                           ; $6a4e: $c0

	inc d                                            ; $6a4f: $14
	db $e3                                           ; $6a50: $e3
	nop                                              ; $6a51: $00
	ld e, a                                          ; $6a52: $5f
	ret nz                                           ; $6a53: $c0

	dec bc                                           ; $6a54: $0b
	db $e3                                           ; $6a55: $e3
	nop                                              ; $6a56: $00
	ld [de], a                                       ; $6a57: $12
	ret nz                                           ; $6a58: $c0

	nop                                              ; $6a59: $00
	nop                                              ; $6a5a: $00
	ld [de], a                                       ; $6a5b: $12
	ret nz                                           ; $6a5c: $c0

	ld bc, $01a0                                     ; $6a5d: $01 $a0 $01
	nop                                              ; $6a60: $00
	rla                                              ; $6a61: $17
	ld [bc], a                                       ; $6a62: $02
	or b                                             ; $6a63: $b0
	ld [hl], b                                       ; $6a64: $70
	ld [de], a                                       ; $6a65: $12
	ei                                               ; $6a66: $fb
	db $fc                                           ; $6a67: $fc
	add e                                            ; $6a68: $83
	ld [bc], a                                       ; $6a69: $02
	ld l, l                                          ; $6a6a: $6d
	jp c, $d006                                      ; $6a6b: $da $06 $d0

	add e                                            ; $6a6e: $83
	ld [bc], a                                       ; $6a6f: $02
	ld l, l                                          ; $6a70: $6d
	ret nz                                           ; $6a71: $c0

	ld b, l                                          ; $6a72: $45
	pop bc                                           ; $6a73: $c1
	ld e, c                                          ; $6a74: $59
	db $e3                                           ; $6a75: $e3
	nop                                              ; $6a76: $00
	ld l, e                                          ; $6a77: $6b
	ld [bc], a                                       ; $6a78: $02
	or b                                             ; $6a79: $b0
	adc e                                            ; $6a7a: $8b
	dec b                                            ; $6a7b: $05
	ret nc                                           ; $6a7c: $d0

	add c                                            ; $6a7d: $81
	and b                                            ; $6a7e: $a0
	nop                                              ; $6a7f: $00
	jp nc, $b002                                     ; $6a80: $d2 $02 $b0

	adc h                                            ; $6a83: $8c
	ld a, [bc]                                       ; $6a84: $0a
	pop bc                                           ; $6a85: $c1
	ld e, c                                          ; $6a86: $59
	db $e3                                           ; $6a87: $e3
	nop                                              ; $6a88: $00
	inc a                                            ; $6a89: $3c
	ret nc                                           ; $6a8a: $d0

	add c                                            ; $6a8b: $81
	and b                                            ; $6a8c: $a0
	nop                                              ; $6a8d: $00
	db $d3                                           ; $6a8e: $d3
	ld [bc], a                                       ; $6a8f: $02
	or b                                             ; $6a90: $b0
	adc d                                            ; $6a91: $8a
	db $10                                           ; $6a92: $10
	ld h, b                                          ; $6a93: $60
	add b                                            ; $6a94: $80
	ld [bc], a                                       ; $6a95: $02
	sbc d                                            ; $6a96: $9a
	dec b                                            ; $6a97: $05
	pop bc                                           ; $6a98: $c1
	ld e, c                                          ; $6a99: $59
	db $e3                                           ; $6a9a: $e3
	nop                                              ; $6a9b: $00
	ld a, b                                          ; $6a9c: $78
	dec b                                            ; $6a9d: $05
	pop bc                                           ; $6a9e: $c1
	ld e, c                                          ; $6a9f: $59
	db $e3                                           ; $6aa0: $e3
	nop                                              ; $6aa1: $00
	ld [hl], a                                       ; $6aa2: $77
	nop                                              ; $6aa3: $00
	inc d                                            ; $6aa4: $14
	pop bc                                           ; $6aa5: $c1
	ld e, c                                          ; $6aa6: $59
	db $e3                                           ; $6aa7: $e3
	nop                                              ; $6aa8: $00
	ld e, a                                          ; $6aa9: $5f
	ret nz                                           ; $6aaa: $c0

	dec bc                                           ; $6aab: $0b
	db $e3                                           ; $6aac: $e3
	nop                                              ; $6aad: $00
	ld [de], a                                       ; $6aae: $12
	ret nz                                           ; $6aaf: $c0

	nop                                              ; $6ab0: $00
	nop                                              ; $6ab1: $00
	ld [de], a                                       ; $6ab2: $12
	ret nz                                           ; $6ab3: $c0

	ld bc, $01a0                                     ; $6ab4: $01 $a0 $01
	nop                                              ; $6ab7: $00
	rla                                              ; $6ab8: $17
	pop bc                                           ; $6ab9: $c1
	ld [hl], a                                       ; $6aba: $77
	ret nz                                           ; $6abb: $c0

	add hl, bc                                       ; $6abc: $09
	db $e3                                           ; $6abd: $e3
	nop                                              ; $6abe: $00
	dec c                                            ; $6abf: $0d
	ret nz                                           ; $6ac0: $c0

	inc c                                            ; $6ac1: $0c
	ldh [rAUD3HIGH], a                               ; $6ac2: $e0 $1e
	ei                                               ; $6ac4: $fb
	ld hl, sp-$40                                    ; $6ac5: $f8 $c0
	rla                                              ; $6ac7: $17
	add e                                            ; $6ac8: $83
	ld [bc], a                                       ; $6ac9: $02
	ld l, l                                          ; $6aca: $6d
	ldh [$3c], a                                     ; $6acb: $e0 $3c
	ld [de], a                                       ; $6acd: $12
	pop bc                                           ; $6ace: $c1
	ld b, a                                          ; $6acf: $47
	add e                                            ; $6ad0: $83
	ld [bc], a                                       ; $6ad1: $02
	ld l, l                                          ; $6ad2: $6d
	ldh [rP1], a                                     ; $6ad3: $e0 $00
	halt                                             ; $6ad5: $76
	ldh [rSB], a                                     ; $6ad6: $e0 $01
	ld a, [bc]                                       ; $6ad8: $0a
	ldh [rSC], a                                     ; $6ad9: $e0 $02
	and b                                            ; $6adb: $a0
	ret nz                                           ; $6adc: $c0

	jp c, $d8d5                                      ; $6add: $da $d5 $d8

	ei                                               ; $6ae0: $fb
	ei                                               ; $6ae1: $fb
	add c                                            ; $6ae2: $81
	and b                                            ; $6ae3: $a0
	nop                                              ; $6ae4: $00
	jp nc, $d02d                                     ; $6ae5: $d2 $2d $d0

	add e                                            ; $6ae8: $83
	ld [bc], a                                       ; $6ae9: $02
	ld l, l                                          ; $6aea: $6d
	ret nz                                           ; $6aeb: $c0

	ld b, l                                          ; $6aec: $45
	ei                                               ; $6aed: $fb
	cp $0d                                           ; $6aee: $fe $0d
	db $fd                                           ; $6af0: $fd
	add e                                            ; $6af1: $83
	ld [bc], a                                       ; $6af2: $02
	ld l, l                                          ; $6af3: $6d
	rst SubAFromDE                                          ; $6af4: $df
	ld hl, sp-$40                                    ; $6af5: $f8 $c0
	rla                                              ; $6af7: $17
	add e                                            ; $6af8: $83
	ld [bc], a                                       ; $6af9: $02
	ld l, l                                          ; $6afa: $6d
	ldh [$3c], a                                     ; $6afb: $e0 $3c
	ld d, $c0                                        ; $6afd: $16 $c0
	inc c                                            ; $6aff: $0c
	ldh [rAUD3HIGH], a                               ; $6b00: $e0 $1e
	pop bc                                           ; $6b02: $c1
	ld b, a                                          ; $6b03: $47
	add e                                            ; $6b04: $83

jr_085_6b05:
	ld [bc], a                                       ; $6b05: $02
	ld l, l                                          ; $6b06: $6d
	ldh [rP1], a                                     ; $6b07: $e0 $00
	ld b, d                                          ; $6b09: $42
	ldh [rP1], a                                     ; $6b0a: $e0 $00
	sub $e0                                          ; $6b0c: $d6 $e0
	ld [bc], a                                       ; $6b0e: $02
	ld l, h                                          ; $6b0f: $6c
	ret nz                                           ; $6b10: $c0

	jp c, $d8d3                                      ; $6b11: $da $d3 $d8

	ei                                               ; $6b14: $fb
	ei                                               ; $6b15: $fb
	add c                                            ; $6b16: $81
	and b                                            ; $6b17: $a0
	nop                                              ; $6b18: $00
	db $d3                                           ; $6b19: $d3
	dec l                                            ; $6b1a: $2d
	ret nc                                           ; $6b1b: $d0

	add e                                            ; $6b1c: $83
	ld [bc], a                                       ; $6b1d: $02
	ld l, l                                          ; $6b1e: $6d
	ret nz                                           ; $6b1f: $c0

	ld b, [hl]                                       ; $6b20: $46
	ei                                               ; $6b21: $fb
	cp $0d                                           ; $6b22: $fe $0d
	db $fd                                           ; $6b24: $fd
	add e                                            ; $6b25: $83
	ld [bc], a                                       ; $6b26: $02
	ld l, l                                          ; $6b27: $6d
	rst SubAFromDE                                          ; $6b28: $df
	ld hl, sp-$40                                    ; $6b29: $f8 $c0
	rla                                              ; $6b2b: $17
	add e                                            ; $6b2c: $83
	ld [bc], a                                       ; $6b2d: $02
	ld l, l                                          ; $6b2e: $6d
	ldh [$3c], a                                     ; $6b2f: $e0 $3c
	ld d, $c0                                        ; $6b31: $16 $c0
	inc c                                            ; $6b33: $0c
	ldh [rAUD3HIGH], a                               ; $6b34: $e0 $1e
	pop bc                                           ; $6b36: $c1
	ld b, a                                          ; $6b37: $47
	add e                                            ; $6b38: $83
	ld [bc], a                                       ; $6b39: $02
	ld l, l                                          ; $6b3a: $6d
	ldh [rP1], a                                     ; $6b3b: $e0 $00
	ld c, $e0                                        ; $6b3d: $0e $e0
	nop                                              ; $6b3f: $00
	and d                                            ; $6b40: $a2
	ldh [rSC], a                                     ; $6b41: $e0 $02
	jr c, jr_085_6b05                                ; $6b43: $38 $c0

	jp c, $d8d3                                      ; $6b45: $da $d3 $d8

	pop bc                                           ; $6b48: $c1
	ld a, b                                          ; $6b49: $78
	sub [hl]                                         ; $6b4a: $96
	ld h, b                                          ; $6b4b: $60
	db $fc                                           ; $6b4c: $fc
	adc e                                            ; $6b4d: $8b
	nop                                              ; $6b4e: $00
	ld [$70b0], a                                    ; $6b4f: $ea $b0 $70
	dec b                                            ; $6b52: $05
	ret nz                                           ; $6b53: $c0

	xor b                                            ; $6b54: $a8
	add e                                            ; $6b55: $83
	ld [bc], a                                       ; $6b56: $02
	ld l, l                                          ; $6b57: $6d
	dec b                                            ; $6b58: $05
	ret nz                                           ; $6b59: $c0

	xor c                                            ; $6b5a: $a9
	add e                                            ; $6b5b: $83
	ld [bc], a                                       ; $6b5c: $02
	ld l, l                                          ; $6b5d: $6d
	ret nz                                           ; $6b5e: $c0

	xor h                                            ; $6b5f: $ac
	ret nz                                           ; $6b60: $c0

	and l                                            ; $6b61: $a5
	db $fd                                           ; $6b62: $fd
	ld a, l                                          ; $6b63: $7d
	add e                                            ; $6b64: $83
	ld [bc], a                                       ; $6b65: $02
	ld l, l                                          ; $6b66: $6d
	ld bc, $0cd0                                     ; $6b67: $01 $d0 $0c
	ret nz                                           ; $6b6a: $c0

	ld bc, $02a0                                     ; $6b6b: $01 $a0 $02
	nop                                              ; $6b6e: $00
	dec e                                            ; $6b6f: $1d
	ret nz                                           ; $6b70: $c0

	ld bc, $01a0                                     ; $6b71: $01 $a0 $01
	nop                                              ; $6b74: $00
	rra                                              ; $6b75: $1f
	ld bc, $0cd1                                     ; $6b76: $01 $d1 $0c
	ret nz                                           ; $6b79: $c0

	ld bc, $03a0                                     ; $6b7a: $01 $a0 $03
	nop                                              ; $6b7d: $00
	inc hl                                           ; $6b7e: $23
	ret nz                                           ; $6b7f: $c0

	ld bc, $01a0                                     ; $6b80: $01 $a0 $01
	nop                                              ; $6b83: $00
	ld h, $01                                        ; $6b84: $26 $01
	jp nc, $c00c                                     ; $6b86: $d2 $0c $c0

	ld bc, $04a0                                     ; $6b89: $01 $a0 $04
	nop                                              ; $6b8c: $00
	dec e                                            ; $6b8d: $1d
	ret nz                                           ; $6b8e: $c0

	ld bc, $01a0                                     ; $6b8f: $01 $a0 $01
	nop                                              ; $6b92: $00
	ld a, [hl+]                                      ; $6b93: $2a
	ld bc, $0cd3                                     ; $6b94: $01 $d3 $0c
	ret nz                                           ; $6b97: $c0

	ld bc, $05a0                                     ; $6b98: $01 $a0 $05
	nop                                              ; $6b9b: $00
	ld l, $c0                                        ; $6b9c: $2e $c0
	ld bc, $01a0                                     ; $6b9e: $01 $a0 $01
	nop                                              ; $6ba1: $00
	jr nc, jr_085_6ba5                               ; $6ba2: $30 $01

	rst SubAFromHL                                          ; $6ba4: $d7

jr_085_6ba5:
	inc c                                            ; $6ba5: $0c
	ret nz                                           ; $6ba6: $c0

	ld bc, $08a0                                     ; $6ba7: $01 $a0 $08
	nop                                              ; $6baa: $00
	dec e                                            ; $6bab: $1d
	ret nz                                           ; $6bac: $c0

	ld bc, $01a0                                     ; $6bad: $01 $a0 $01
	nop                                              ; $6bb0: $00
	inc [hl]                                         ; $6bb1: $34
	ld bc, $0cd8                                     ; $6bb2: $01 $d8 $0c
	ret nz                                           ; $6bb5: $c0

	ld bc, $09a0                                     ; $6bb6: $01 $a0 $09
	nop                                              ; $6bb9: $00
	dec e                                            ; $6bba: $1d
	ret nz                                           ; $6bbb: $c0

	ld bc, $01a0                                     ; $6bbc: $01 $a0 $01
	nop                                              ; $6bbf: $00
	jr c, @+$03                                      ; $6bc0: $38 $01

	jp c, $c00c                                      ; $6bc2: $da $0c $c0

	ld bc, $06a0                                     ; $6bc5: $01 $a0 $06
	nop                                              ; $6bc8: $00
	dec e                                            ; $6bc9: $1d
	ret nz                                           ; $6bca: $c0

	ld bc, $01a0                                     ; $6bcb: $01 $a0 $01
	nop                                              ; $6bce: $00
	inc a                                            ; $6bcf: $3c
	ld bc, $0cdd                                     ; $6bd0: $01 $dd $0c
	ret nz                                           ; $6bd3: $c0

	ld bc, $0aa0                                     ; $6bd4: $01 $a0 $0a
	nop                                              ; $6bd7: $00
	dec e                                            ; $6bd8: $1d
	ret nz                                           ; $6bd9: $c0

	ld bc, $01a0                                     ; $6bda: $01 $a0 $01
	nop                                              ; $6bdd: $00
	ld b, b                                          ; $6bde: $40
	nop                                              ; $6bdf: $00
	nop                                              ; $6be0: $00
	pop bc                                           ; $6be1: $c1
	sub a                                            ; $6be2: $97
	db $fd                                           ; $6be3: $fd
	pop bc                                           ; $6be4: $c1
	adc e                                            ; $6be5: $8b
	add e                                            ; $6be6: $83
	ld [bc], a                                       ; $6be7: $02
	ld l, l                                          ; $6be8: $6d
	ld bc, $2cd0                                     ; $6be9: $01 $d0 $2c
	pop bc                                           ; $6bec: $c1
	or d                                             ; $6bed: $b2
	db $e3                                           ; $6bee: $e3
	nop                                              ; $6bef: $00
	ld [bc], a                                       ; $6bf0: $02
	ret nz                                           ; $6bf1: $c0

	ld bc, $02a0                                     ; $6bf2: $01 $a0 $02
	nop                                              ; $6bf5: $00
	ld b, h                                          ; $6bf6: $44
	ei                                               ; $6bf7: $fb
	cp $06                                           ; $6bf8: $fe $06
	add b                                            ; $6bfa: $80
	ld [bc], a                                       ; $6bfb: $02
	sbc [hl]                                         ; $6bfc: $9e
	add b                                            ; $6bfd: $80
	ld [bc], a                                       ; $6bfe: $02
	sbc a                                            ; $6bff: $9f
	ld b, $c0                                        ; $6c00: $06 $c0
	ld bc, $02a0                                     ; $6c02: $01 $a0 $02
	nop                                              ; $6c05: $00
	ld c, h                                          ; $6c06: $4c
	ret nz                                           ; $6c07: $c0

	ld bc, $01a0                                     ; $6c08: $01 $a0 $01
	nop                                              ; $6c0b: $00
	ld e, b                                          ; $6c0c: $58
	pop bc                                           ; $6c0d: $c1
	or d                                             ; $6c0e: $b2
	db $e3                                           ; $6c0f: $e3
	nop                                              ; $6c10: $00
	inc bc                                           ; $6c11: $03
	ret nz                                           ; $6c12: $c0

	ld bc, $02a0                                     ; $6c13: $01 $a0 $02
	nop                                              ; $6c16: $00
	ld h, c                                          ; $6c17: $61
	ld bc, $33d1                                     ; $6c18: $01 $d1 $33
	pop bc                                           ; $6c1b: $c1
	or d                                             ; $6c1c: $b2
	db $e3                                           ; $6c1d: $e3
	nop                                              ; $6c1e: $00
	daa                                              ; $6c1f: $27
	ret nz                                           ; $6c20: $c0

	ld bc, $03a0                                     ; $6c21: $01 $a0 $03
	nop                                              ; $6c24: $00
	ld l, d                                          ; $6c25: $6a
	ret nz                                           ; $6c26: $c0

	ld bc, $01a0                                     ; $6c27: $01 $a0 $01
	nop                                              ; $6c2a: $00
	ld [hl], c                                       ; $6c2b: $71
	ret nz                                           ; $6c2c: $c0

	ld bc, $03a0                                     ; $6c2d: $01 $a0 $03
	nop                                              ; $6c30: $00
	ld [hl], l                                       ; $6c31: $75
	ret nz                                           ; $6c32: $c0

	ld bc, $01a0                                     ; $6c33: $01 $a0 $01
	nop                                              ; $6c36: $00
	ld a, l                                          ; $6c37: $7d
	ret nz                                           ; $6c38: $c0

	ld bc, $03a0                                     ; $6c39: $01 $a0 $03
	nop                                              ; $6c3c: $00
	add l                                            ; $6c3d: $85
	ei                                               ; $6c3e: $fb
	cp $06                                           ; $6c3f: $fe $06
	add b                                            ; $6c41: $80
	ld [bc], a                                       ; $6c42: $02
	sbc [hl]                                         ; $6c43: $9e
	add b                                            ; $6c44: $80
	ld [bc], a                                       ; $6c45: $02
	and b                                            ; $6c46: $a0
	ld b, $c0                                        ; $6c47: $06 $c0
	ld bc, $03a0                                     ; $6c49: $01 $a0 $03
	nop                                              ; $6c4c: $00
	adc d                                            ; $6c4d: $8a
	ld bc, $33d2                                     ; $6c4e: $01 $d2 $33
	pop bc                                           ; $6c51: $c1
	or d                                             ; $6c52: $b2
	db $e3                                           ; $6c53: $e3
	nop                                              ; $6c54: $00
	inc [hl]                                         ; $6c55: $34
	ret nz                                           ; $6c56: $c0

	ld bc, $04a0                                     ; $6c57: $01 $a0 $04
	nop                                              ; $6c5a: $00
	sub [hl]                                         ; $6c5b: $96
	ret nz                                           ; $6c5c: $c0

	ld bc, $01a0                                     ; $6c5d: $01 $a0 $01
	nop                                              ; $6c60: $00
	sbc [hl]                                         ; $6c61: $9e
	ret nz                                           ; $6c62: $c0

	ld bc, $04a0                                     ; $6c63: $01 $a0 $04
	nop                                              ; $6c66: $00
	and e                                            ; $6c67: $a3
	ei                                               ; $6c68: $fb
	cp $06                                           ; $6c69: $fe $06
	add b                                            ; $6c6b: $80
	ld [bc], a                                       ; $6c6c: $02
	sbc [hl]                                         ; $6c6d: $9e
	add b                                            ; $6c6e: $80
	ld [bc], a                                       ; $6c6f: $02
	and c                                            ; $6c70: $a1
	ld [de], a                                       ; $6c71: $12
	ret nz                                           ; $6c72: $c0

	ld bc, $01a0                                     ; $6c73: $01 $a0 $01
	nop                                              ; $6c76: $00
	xor l                                            ; $6c77: $ad
	ret nz                                           ; $6c78: $c0

	ld bc, $04a0                                     ; $6c79: $01 $a0 $04
	nop                                              ; $6c7c: $00
	cp l                                             ; $6c7d: $bd
	ret nz                                           ; $6c7e: $c0

	ld bc, $01a0                                     ; $6c7f: $01 $a0 $01
	nop                                              ; $6c82: $00
	add $01                                          ; $6c83: $c6 $01
	db $d3                                           ; $6c85: $d3
	daa                                              ; $6c86: $27
	pop bc                                           ; $6c87: $c1
	or d                                             ; $6c88: $b2
	db $e3                                           ; $6c89: $e3
	nop                                              ; $6c8a: $00
	ld b, h                                          ; $6c8b: $44
	ret nz                                           ; $6c8c: $c0

	ld bc, $05a0                                     ; $6c8d: $01 $a0 $05
	nop                                              ; $6c90: $00
	call z, $01c0                                    ; $6c91: $cc $c0 $01
	and b                                            ; $6c94: $a0
	ld bc, $7100                                     ; $6c95: $01 $00 $71
	ei                                               ; $6c98: $fb
	cp $06                                           ; $6c99: $fe $06
	add b                                            ; $6c9b: $80
	ld [bc], a                                       ; $6c9c: $02
	sbc [hl]                                         ; $6c9d: $9e
	add b                                            ; $6c9e: $80
	ld [bc], a                                       ; $6c9f: $02
	and d                                            ; $6ca0: $a2
	ld b, $c0                                        ; $6ca1: $06 $c0
	ld bc, $05a0                                     ; $6ca3: $01 $a0 $05
	nop                                              ; $6ca6: $00
	push de                                          ; $6ca7: $d5
	ret nz                                           ; $6ca8: $c0

	ld bc, $05a0                                     ; $6ca9: $01 $a0 $05
	nop                                              ; $6cac: $00
	rst SubAFromDE                                          ; $6cad: $df
	ld bc, $33d7                                     ; $6cae: $01 $d7 $33
	pop bc                                           ; $6cb1: $c1
	or d                                             ; $6cb2: $b2
	db $e3                                           ; $6cb3: $e3
	nop                                              ; $6cb4: $00
	ld c, a                                          ; $6cb5: $4f
	ret nz                                           ; $6cb6: $c0

	ld bc, $08a0                                     ; $6cb7: $01 $a0 $08
	nop                                              ; $6cba: $00
	rst SubAFromBC                                          ; $6cbb: $e7
	ret nz                                           ; $6cbc: $c0

	ld bc, $01a0                                     ; $6cbd: $01 $a0 $01
	nop                                              ; $6cc0: $00
	ld [hl], c                                       ; $6cc1: $71
	ret nz                                           ; $6cc2: $c0

	ld bc, $08a0                                     ; $6cc3: $01 $a0 $08
	nop                                              ; $6cc6: $00
	db $eb                                           ; $6cc7: $eb
	ei                                               ; $6cc8: $fb
	cp $06                                           ; $6cc9: $fe $06
	add b                                            ; $6ccb: $80
	ld [bc], a                                       ; $6ccc: $02
	sbc [hl]                                         ; $6ccd: $9e
	add b                                            ; $6cce: $80
	ld [bc], a                                       ; $6ccf: $02
	and e                                            ; $6cd0: $a3
	ld [de], a                                       ; $6cd1: $12
	ret nz                                           ; $6cd2: $c0

	ld bc, $01a0                                     ; $6cd3: $01 $a0 $01
	nop                                              ; $6cd6: $00
	xor l                                            ; $6cd7: $ad
	ret nz                                           ; $6cd8: $c0

	ld bc, $08a0                                     ; $6cd9: $01 $a0 $08
	nop                                              ; $6cdc: $00
	ld sp, hl                                        ; $6cdd: $f9
	ret nz                                           ; $6cde: $c0

	ld bc, $01a0                                     ; $6cdf: $01 $a0 $01
	nop                                              ; $6ce2: $00
	add $01                                          ; $6ce3: $c6 $01
	ret c                                            ; $6ce5: $d8

	daa                                              ; $6ce6: $27
	ei                                               ; $6ce7: $fb
	cp $06                                           ; $6ce8: $fe $06
	add b                                            ; $6cea: $80
	ld [bc], a                                       ; $6ceb: $02
	sbc [hl]                                         ; $6cec: $9e
	add b                                            ; $6ced: $80
	ld [bc], a                                       ; $6cee: $02
	and h                                            ; $6cef: $a4
	ld b, $c0                                        ; $6cf0: $06 $c0
	ld bc, $09a0                                     ; $6cf2: $01 $a0 $09
	ld bc, $c105                                     ; $6cf5: $01 $05 $c1
	or d                                             ; $6cf8: $b2
	db $e3                                           ; $6cf9: $e3
	nop                                              ; $6cfa: $00
	ld h, d                                          ; $6cfb: $62
	ret nz                                           ; $6cfc: $c0

	ld bc, $09a0                                     ; $6cfd: $01 $a0 $09
	ld bc, $c00f                                     ; $6d00: $01 $0f $c0
	ld bc, $01a0                                     ; $6d03: $01 $a0 $01
	nop                                              ; $6d06: $00
	ld [hl], c                                       ; $6d07: $71
	ret nz                                           ; $6d08: $c0

	ld bc, $09a0                                     ; $6d09: $01 $a0 $09
	ld bc, $0117                                     ; $6d0c: $01 $17 $01
	jp c, $c133                                      ; $6d0f: $da $33 $c1

	or d                                             ; $6d12: $b2
	db $e3                                           ; $6d13: $e3
	nop                                              ; $6d14: $00
	ld l, [hl]                                       ; $6d15: $6e
	ret nz                                           ; $6d16: $c0

	ld bc, $06a0                                     ; $6d17: $01 $a0 $06
	ld bc, $c023                                     ; $6d1a: $01 $23 $c0
	ld bc, $01a0                                     ; $6d1d: $01 $a0 $01
	ld bc, $c02a                                     ; $6d20: $01 $2a $c0
	ld bc, $06a0                                     ; $6d23: $01 $a0 $06
	ld bc, $c02c                                     ; $6d26: $01 $2c $c0
	ld bc, $01a0                                     ; $6d29: $01 $a0 $01
	ld bc, $c037                                     ; $6d2c: $01 $37 $c0
	ld bc, $06a0                                     ; $6d2f: $01 $a0 $06
	ld bc, $fb41                                     ; $6d32: $01 $41 $fb
	cp $06                                           ; $6d35: $fe $06
	add b                                            ; $6d37: $80
	ld [bc], a                                       ; $6d38: $02
	sbc [hl]                                         ; $6d39: $9e
	add b                                            ; $6d3a: $80
	ld [bc], a                                       ; $6d3b: $02
	and l                                            ; $6d3c: $a5
	ld b, $c0                                        ; $6d3d: $06 $c0
	ld bc, $06a0                                     ; $6d3f: $01 $a0 $06
	nop                                              ; $6d42: $00
	push de                                          ; $6d43: $d5
	ld bc, $28dd                                     ; $6d44: $01 $dd $28
	pop bc                                           ; $6d47: $c1
	or d                                             ; $6d48: $b2
	db $e3                                           ; $6d49: $e3
	nop                                              ; $6d4a: $00
	ld a, [hl]                                       ; $6d4b: $7e
	ret nz                                           ; $6d4c: $c0

	ld bc, $0aa0                                     ; $6d4d: $01 $a0 $0a
	ld bc, $c045                                     ; $6d50: $01 $45 $c0
	ld bc, $01a0                                     ; $6d53: $01 $a0 $01
	ld bc, $604f                                     ; $6d56: $01 $4f $60
	cp $06                                           ; $6d59: $fe $06
	add b                                            ; $6d5b: $80
	ld [bc], a                                       ; $6d5c: $02
	sbc [hl]                                         ; $6d5d: $9e
	add b                                            ; $6d5e: $80
	ld [bc], a                                       ; $6d5f: $02
	and [hl]                                         ; $6d60: $a6
	ld b, $c0                                        ; $6d61: $06 $c0
	ld bc, $0aa0                                     ; $6d63: $01 $a0 $0a
	ld bc, $0658                                     ; $6d66: $01 $58 $06
	ret nz                                           ; $6d69: $c0

	ld bc, $0aa0                                     ; $6d6a: $01 $a0 $0a
	ld bc, $0069                                     ; $6d6d: $01 $69 $00
	nop                                              ; $6d70: $00
	ei                                               ; $6d71: $fb
	add b                                            ; $6d72: $80
	ld [bc], a                                       ; $6d73: $02
	sbc [hl]                                         ; $6d74: $9e
	inc b                                            ; $6d75: $04
	ld b, b                                          ; $6d76: $40
	add b                                            ; $6d77: $80
	ld [bc], a                                       ; $6d78: $02
	sbc [hl]                                         ; $6d79: $9e
	ld [$5bc1], sp                                   ; $6d7a: $08 $c1 $5b
	ret nz                                           ; $6d7d: $c0

	ld bc, $01a0                                     ; $6d7e: $01 $a0 $01
	ld bc, $386c                                     ; $6d81: $01 $6c $38
	add hl, bc                                       ; $6d84: $09
	pop bc                                           ; $6d85: $c1
	cp l                                             ; $6d86: $bd
	pop de                                           ; $6d87: $d1
	ret nz                                           ; $6d88: $c0

	ld bc, $01a0                                     ; $6d89: $01 $a0 $01
	ld bc, $9c7a                                     ; $6d8c: $01 $7a $9c
	jp nc, $80c0                                     ; $6d8f: $d2 $c0 $80

	ld bc, $30d3                                     ; $6d92: $01 $d3 $30
	ld bc, $0981                                     ; $6d95: $01 $81 $09
	inc c                                            ; $6d98: $0c
	ret nz                                           ; $6d99: $c0

	ld bc, $01a0                                     ; $6d9a: $01 $a0 $01
	ld bc, $d083                                     ; $6d9d: $01 $83 $d0
	adc e                                            ; $6da0: $8b
	and b                                            ; $6da1: $a0
	ld [bc], a                                       ; $6da2: $02
	or b                                             ; $6da3: $b0
	add [hl]                                         ; $6da4: $86
	ld bc, $098b                                     ; $6da5: $01 $8b $09
	inc c                                            ; $6da8: $0c
	ret nz                                           ; $6da9: $c0

	ld bc, $01a0                                     ; $6daa: $01 $a0 $01
	ld bc, $d08f                                     ; $6dad: $01 $8f $d0
	adc e                                            ; $6db0: $8b
	and b                                            ; $6db1: $a0
	ld [bc], a                                       ; $6db2: $02
	or b                                             ; $6db3: $b0
	add a                                            ; $6db4: $87
	ld bc, $0997                                     ; $6db5: $01 $97 $09
	inc c                                            ; $6db8: $0c
	ret nz                                           ; $6db9: $c0

	ld bc, $01a0                                     ; $6dba: $01 $a0 $01
	ld bc, $d09b                                     ; $6dbd: $01 $9b $d0
	adc e                                            ; $6dc0: $8b
	and b                                            ; $6dc1: $a0
	ld [bc], a                                       ; $6dc2: $02
	or b                                             ; $6dc3: $b0
	adc b                                            ; $6dc4: $88
	ld bc, $30d2                                     ; $6dc5: $01 $d2 $30
	ld bc, $09a3                                     ; $6dc8: $01 $a3 $09
	inc c                                            ; $6dcb: $0c
	ret nz                                           ; $6dcc: $c0

	ld bc, $01a0                                     ; $6dcd: $01 $a0 $01
	ld bc, $d0ab                                     ; $6dd0: $01 $ab $d0

Jump_085_6dd3:
	adc e                                            ; $6dd3: $8b
	and b                                            ; $6dd4: $a0
	ld [bc], a                                       ; $6dd5: $02
	or b                                             ; $6dd6: $b0
	add [hl]                                         ; $6dd7: $86
	ld bc, $09b7                                     ; $6dd8: $01 $b7 $09
	inc c                                            ; $6ddb: $0c
	ret nz                                           ; $6ddc: $c0

	ld bc, $01a0                                     ; $6ddd: $01 $a0 $01
	ld bc, wTaskParam3_word0                                     ; $6de0: $01 $bc $d0
	adc e                                            ; $6de3: $8b
	and b                                            ; $6de4: $a0
	ld [bc], a                                       ; $6de5: $02
	or b                                             ; $6de6: $b0
	add a                                            ; $6de7: $87
	ld bc, $09c5                                     ; $6de8: $01 $c5 $09
	inc c                                            ; $6deb: $0c
	ret nz                                           ; $6dec: $c0

	ld bc, $01a0                                     ; $6ded: $01 $a0 $01
	ld bc, $d0c9                                     ; $6df0: $01 $c9 $d0
	adc e                                            ; $6df3: $8b
	and b                                            ; $6df4: $a0
	ld [bc], a                                       ; $6df5: $02
	or b                                             ; $6df6: $b0
	adc b                                            ; $6df7: $88
	ld bc, $30d1                                     ; $6df8: $01 $d1 $30
	ld bc, $09d2                                     ; $6dfb: $01 $d2 $09
	inc c                                            ; $6dfe: $0c
	ret nz                                           ; $6dff: $c0

	ld bc, $01a0                                     ; $6e00: $01 $a0 $01
	ld bc, $d0d7                                     ; $6e03: $01 $d7 $d0
	adc e                                            ; $6e06: $8b
	and b                                            ; $6e07: $a0
	ld [bc], a                                       ; $6e08: $02
	or b                                             ; $6e09: $b0
	add [hl]                                         ; $6e0a: $86
	ld bc, $09e1                                     ; $6e0b: $01 $e1 $09
	inc c                                            ; $6e0e: $0c
	ret nz                                           ; $6e0f: $c0

	ld bc, $01a0                                     ; $6e10: $01 $a0 $01
	ld bc, $d0e7                                     ; $6e13: $01 $e7 $d0
	adc e                                            ; $6e16: $8b
	and b                                            ; $6e17: $a0
	ld [bc], a                                       ; $6e18: $02
	or b                                             ; $6e19: $b0
	add a                                            ; $6e1a: $87
	ld bc, $09f1                                     ; $6e1b: $01 $f1 $09
	inc c                                            ; $6e1e: $0c
	ret nz                                           ; $6e1f: $c0

	ld bc, $01a0                                     ; $6e20: $01 $a0 $01
	ld bc, $d0f8                                     ; $6e23: $01 $f8 $d0
	adc e                                            ; $6e26: $8b
	and b                                            ; $6e27: $a0
	ld [bc], a                                       ; $6e28: $02
	or b                                             ; $6e29: $b0
	adc b                                            ; $6e2a: $88
	inc bc                                           ; $6e2b: $03
	db $e4                                           ; $6e2c: $e4
	nop                                              ; $6e2d: $00
	ld [bc], a                                       ; $6e2e: $02
	add hl, bc                                       ; $6e2f: $09
	ret nz                                           ; $6e30: $c0

	pop af                                           ; $6e31: $f1
	ret nz                                           ; $6e32: $c0

	set 0, b                                         ; $6e33: $cb $c0
	rrca                                             ; $6e35: $0f
	db $e3                                           ; $6e36: $e3
	nop                                              ; $6e37: $00
	inc a                                            ; $6e38: $3c
	ret nz                                           ; $6e39: $c0

	ld bc, $01a0                                     ; $6e3a: $01 $a0 $01
	ld [bc], a                                       ; $6e3d: $02
	inc bc                                           ; $6e3e: $03
	pop hl                                           ; $6e3f: $e1
	ld [bc], a                                       ; $6e40: $02
	ld bc, $8308                                     ; $6e41: $01 $08 $83
	ret nz                                           ; $6e44: $c0

	dec de                                           ; $6e45: $1b
	pop de                                           ; $6e46: $d1
	ld [bc], a                                       ; $6e47: $02
	ret nc                                           ; $6e48: $d0

	pop de                                           ; $6e49: $d1
	ld b, $c0                                        ; $6e4a: $06 $c0
	ld bc, $03a0                                     ; $6e4c: $01 $a0 $03
	ld [bc], a                                       ; $6e4f: $02
	rlca                                             ; $6e50: $07
	ld [bc], a                                       ; $6e51: $02
	jp nc, $06d3                                     ; $6e52: $d2 $d3 $06

	ret nz                                           ; $6e55: $c0

	ld bc, $03a0                                     ; $6e56: $01 $a0 $03
	ld [bc], a                                       ; $6e59: $02
	inc c                                            ; $6e5a: $0c
	ld bc, $06d4                                     ; $6e5b: $01 $d4 $06
	ret nz                                           ; $6e5e: $c0

	ld bc, $03a0                                     ; $6e5f: $01 $a0 $03
	ld [bc], a                                       ; $6e62: $02
	db $10                                           ; $6e63: $10
	ld bc, $06d5                                     ; $6e64: $01 $d5 $06
	ret nz                                           ; $6e67: $c0

	ld bc, $03a0                                     ; $6e68: $01 $a0 $03
	ld [bc], a                                       ; $6e6b: $02
	dec d                                            ; $6e6c: $15
	ret nz                                           ; $6e6d: $c0

	ld bc, $01a0                                     ; $6e6e: $01 $a0 $01
	ld [bc], a                                       ; $6e71: $02
	inc e                                            ; $6e72: $1c
	add e                                            ; $6e73: $83
	ret nz                                           ; $6e74: $c0

	dec de                                           ; $6e75: $1b
	pop de                                           ; $6e76: $d1
	ld [bc], a                                       ; $6e77: $02
	ret nc                                           ; $6e78: $d0

	pop de                                           ; $6e79: $d1
	ld b, $c0                                        ; $6e7a: $06 $c0
	ld bc, $03a0                                     ; $6e7c: $01 $a0 $03
	ld [bc], a                                       ; $6e7f: $02
	inc h                                            ; $6e80: $24
	ld [bc], a                                       ; $6e81: $02
	jp nc, $06d3                                     ; $6e82: $d2 $d3 $06

	ret nz                                           ; $6e85: $c0

	ld bc, $03a0                                     ; $6e86: $01 $a0 $03
	ld [bc], a                                       ; $6e89: $02
	ld sp, $d401                                     ; $6e8a: $31 $01 $d4
	ld b, $c0                                        ; $6e8d: $06 $c0
	ld bc, $03a0                                     ; $6e8f: $01 $a0 $03
	ld [bc], a                                       ; $6e92: $02
	jr c, jr_085_6e96                                ; $6e93: $38 $01

	push de                                          ; $6e95: $d5

jr_085_6e96:
	ld b, $c0                                        ; $6e96: $06 $c0
	ld bc, $03a0                                     ; $6e98: $01 $a0 $03
	ld [bc], a                                       ; $6e9b: $02
	ld b, b                                          ; $6e9c: $40
	ret nz                                           ; $6e9d: $c0

	ld bc, $01a0                                     ; $6e9e: $01 $a0 $01
	ld [bc], a                                       ; $6ea1: $02
	ld b, a                                          ; $6ea2: $47
	add d                                            ; $6ea3: $82
	adc e                                            ; $6ea4: $8b
	and b                                            ; $6ea5: $a0
	ld [bc], a                                       ; $6ea6: $02
	ld [bc], a                                       ; $6ea7: $02
	or b                                             ; $6ea8: $b0
	add [hl]                                         ; $6ea9: $86
	dec [hl]                                         ; $6eaa: $35
	ld h, b                                          ; $6eab: $60
	db $fd                                           ; $6eac: $fd
	ret nz                                           ; $6ead: $c0

	dec de                                           ; $6eae: $1b
	pop de                                           ; $6eaf: $d1
	push de                                          ; $6eb0: $d5
	rrca                                             ; $6eb1: $0f
	pop hl                                           ; $6eb2: $e1
	ld [bc], a                                       ; $6eb3: $02
	inc bc                                           ; $6eb4: $03
	inc de                                           ; $6eb5: $13
	pop bc                                           ; $6eb6: $c1
	or d                                             ; $6eb7: $b2
	db $e3                                           ; $6eb8: $e3
	nop                                              ; $6eb9: $00
	ld a, [hl+]                                      ; $6eba: $2a
	ret nz                                           ; $6ebb: $c0

	ld bc, $03a0                                     ; $6ebc: $01 $a0 $03
	ld [bc], a                                       ; $6ebf: $02
	ld c, [hl]                                       ; $6ec0: $4e
	ld a, [bc]                                       ; $6ec1: $0a
	pop hl                                           ; $6ec2: $e1
	ld [bc], a                                       ; $6ec3: $02
	inc bc                                           ; $6ec4: $03
	rla                                              ; $6ec5: $17
	ret nz                                           ; $6ec6: $c0

	ld bc, $03a0                                     ; $6ec7: $01 $a0 $03
	ld [bc], a                                       ; $6eca: $02
	ld e, e                                          ; $6ecb: $5b
	pop bc                                           ; $6ecc: $c1
	ld e, e                                          ; $6ecd: $5b
	ret nz                                           ; $6ece: $c0

	ld bc, $01a0                                     ; $6ecf: $01 $a0 $01
	ld [bc], a                                       ; $6ed2: $02
	ld l, b                                          ; $6ed3: $68
	ret nz                                           ; $6ed4: $c0

	ld [hl+], a                                      ; $6ed5: $22
	db $d3                                           ; $6ed6: $d3
	pop de                                           ; $6ed7: $d1
	ret nz                                           ; $6ed8: $c0

	ld hl, $d1d2                                     ; $6ed9: $21 $d2 $d1
	ret nz                                           ; $6edc: $c0

	ld h, $df                                        ; $6edd: $26 $df
	pop de                                           ; $6edf: $d1
	ld [bc], a                                       ; $6ee0: $02
	or b                                             ; $6ee1: $b0
	add a                                            ; $6ee2: $87
	ld e, $c0                                        ; $6ee3: $1e $c0
	ld [hl+], a                                      ; $6ee5: $22
	jp nc, $c0d1                                     ; $6ee6: $d2 $d1 $c0

	ld hl, $d1d1                                     ; $6ee9: $21 $d1 $d1
	ret nz                                           ; $6eec: $c0

	ld h, $da                                        ; $6eed: $26 $da
	pop de                                           ; $6eef: $d1
	pop hl                                           ; $6ef0: $e1
	ld [bc], a                                       ; $6ef1: $02
	inc bc                                           ; $6ef2: $03
	rla                                              ; $6ef3: $17
	ret nz                                           ; $6ef4: $c0

	ld bc, $03a0                                     ; $6ef5: $01 $a0 $03
	ld [bc], a                                       ; $6ef8: $02
	ld [hl], d                                       ; $6ef9: $72
	pop bc                                           ; $6efa: $c1
	ld e, e                                          ; $6efb: $5b
	ret nz                                           ; $6efc: $c0

	ld bc, $01a0                                     ; $6efd: $01 $a0 $01
	ld [bc], a                                       ; $6f00: $02
	ld a, c                                          ; $6f01: $79
	ld [bc], a                                       ; $6f02: $02
	or b                                             ; $6f03: $b0
	adc b                                            ; $6f04: $88
	ld a, [de]                                       ; $6f05: $1a
	ret nz                                           ; $6f06: $c0

	ld hl, $d1d1                                     ; $6f07: $21 $d1 $d1
	ret nz                                           ; $6f0a: $c0

	inc hl                                           ; $6f0b: $23
	jp c, $e1d1                                      ; $6f0c: $da $d1 $e1

	ld [bc], a                                       ; $6f0f: $02
	inc bc                                           ; $6f10: $03
	dec de                                           ; $6f11: $1b
	ret nz                                           ; $6f12: $c0

	ld bc, $03a0                                     ; $6f13: $01 $a0 $03
	ld [bc], a                                       ; $6f16: $02
	add d                                            ; $6f17: $82
	pop bc                                           ; $6f18: $c1
	ld e, e                                          ; $6f19: $5b
	ret nz                                           ; $6f1a: $c0

	ld bc, $01a0                                     ; $6f1b: $01 $a0 $01
	ld [bc], a                                       ; $6f1e: $02
	adc l                                            ; $6f1f: $8d
	db $e4                                           ; $6f20: $e4
	dec c                                            ; $6f21: $0d
	jp z, $0938                                      ; $6f22: $ca $38 $09

	pop bc                                           ; $6f25: $c1
	cp l                                             ; $6f26: $bd
	pop de                                           ; $6f27: $d1
	ret nz                                           ; $6f28: $c0

	ld bc, $01a0                                     ; $6f29: $01 $a0 $01
	ld [bc], a                                       ; $6f2c: $02
	sub e                                            ; $6f2d: $93
	sbc h                                            ; $6f2e: $9c
	jp nc, $80c0                                     ; $6f2f: $d2 $c0 $80

	ld bc, $30d3                                     ; $6f32: $01 $d3 $30
	ld [bc], a                                       ; $6f35: $02
	sbc d                                            ; $6f36: $9a
	add hl, bc                                       ; $6f37: $09
	inc c                                            ; $6f38: $0c
	ret nz                                           ; $6f39: $c0

	ld bc, $01a0                                     ; $6f3a: $01 $a0 $01
	ld [bc], a                                       ; $6f3d: $02
	and e                                            ; $6f3e: $a3
	ret nc                                           ; $6f3f: $d0

	adc e                                            ; $6f40: $8b
	and b                                            ; $6f41: $a0
	ld c, $b0                                        ; $6f42: $0e $b0
	add [hl]                                         ; $6f44: $86
	ld [bc], a                                       ; $6f45: $02
	or b                                             ; $6f46: $b0
	add hl, bc                                       ; $6f47: $09
	inc c                                            ; $6f48: $0c
	ret nz                                           ; $6f49: $c0

	ld bc, $01a0                                     ; $6f4a: $01 $a0 $01
	ld [bc], a                                       ; $6f4d: $02
	or e                                             ; $6f4e: $b3
	ret nc                                           ; $6f4f: $d0

	adc e                                            ; $6f50: $8b
	and b                                            ; $6f51: $a0
	ld c, $b0                                        ; $6f52: $0e $b0
	add a                                            ; $6f54: $87
	ld [bc], a                                       ; $6f55: $02
	cp e                                             ; $6f56: $bb
	add hl, bc                                       ; $6f57: $09
	inc c                                            ; $6f58: $0c
	ret nz                                           ; $6f59: $c0

	ld bc, $01a0                                     ; $6f5a: $01 $a0 $01
	ld [bc], a                                       ; $6f5d: $02
	ret nz                                           ; $6f5e: $c0

	ret nc                                           ; $6f5f: $d0

	adc e                                            ; $6f60: $8b
	and b                                            ; $6f61: $a0
	ld c, $b0                                        ; $6f62: $0e $b0
	adc b                                            ; $6f64: $88
	ld bc, $30d2                                     ; $6f65: $01 $d2 $30
	ld [bc], a                                       ; $6f68: $02
	ret                                              ; $6f69: $c9


	add hl, bc                                       ; $6f6a: $09
	inc c                                            ; $6f6b: $0c
	ret nz                                           ; $6f6c: $c0

	ld bc, $01a0                                     ; $6f6d: $01 $a0 $01
	ld [bc], a                                       ; $6f70: $02
	sub $d0                                          ; $6f71: $d6 $d0
	adc e                                            ; $6f73: $8b
	and b                                            ; $6f74: $a0
	ld c, $b0                                        ; $6f75: $0e $b0
	add [hl]                                         ; $6f77: $86
	ld [bc], a                                       ; $6f78: $02
	rst SubAFromBC                                          ; $6f79: $e7
	add hl, bc                                       ; $6f7a: $09
	inc c                                            ; $6f7b: $0c
	ret nz                                           ; $6f7c: $c0

	ld bc, $01a0                                     ; $6f7d: $01 $a0 $01
	ld [bc], a                                       ; $6f80: $02
	db $ed                                           ; $6f81: $ed
	ret nc                                           ; $6f82: $d0

	adc e                                            ; $6f83: $8b
	and b                                            ; $6f84: $a0
	ld c, $b0                                        ; $6f85: $0e $b0
	add a                                            ; $6f87: $87
	ld [bc], a                                       ; $6f88: $02
	ld sp, hl                                        ; $6f89: $f9
	add hl, bc                                       ; $6f8a: $09
	inc c                                            ; $6f8b: $0c
	ret nz                                           ; $6f8c: $c0

	ld bc, $01a0                                     ; $6f8d: $01 $a0 $01
	ld [bc], a                                       ; $6f90: $02
	rst $38                                          ; $6f91: $ff
	ret nc                                           ; $6f92: $d0

	adc e                                            ; $6f93: $8b
	and b                                            ; $6f94: $a0
	ld c, $b0                                        ; $6f95: $0e $b0
	adc b                                            ; $6f97: $88
	ld bc, $30d1                                     ; $6f98: $01 $d1 $30
	inc bc                                           ; $6f9b: $03
	ld a, [bc]                                       ; $6f9c: $0a
	add hl, bc                                       ; $6f9d: $09
	inc c                                            ; $6f9e: $0c
	ret nz                                           ; $6f9f: $c0

	ld bc, $01a0                                     ; $6fa0: $01 $a0 $01
	inc bc                                           ; $6fa3: $03
	inc de                                           ; $6fa4: $13
	ret nc                                           ; $6fa5: $d0

	adc e                                            ; $6fa6: $8b
	and b                                            ; $6fa7: $a0
	ld c, $b0                                        ; $6fa8: $0e $b0
	add [hl]                                         ; $6faa: $86
	inc bc                                           ; $6fab: $03
	ld hl, $0c09                                     ; $6fac: $21 $09 $0c
	ret nz                                           ; $6faf: $c0

	ld bc, $01a0                                     ; $6fb0: $01 $a0 $01
	inc bc                                           ; $6fb3: $03
	inc h                                            ; $6fb4: $24
	ret nc                                           ; $6fb5: $d0

	adc e                                            ; $6fb6: $8b
	and b                                            ; $6fb7: $a0
	ld c, $b0                                        ; $6fb8: $0e $b0
	add a                                            ; $6fba: $87
	inc bc                                           ; $6fbb: $03
	inc l                                            ; $6fbc: $2c
	add hl, bc                                       ; $6fbd: $09
	inc c                                            ; $6fbe: $0c
	ret nz                                           ; $6fbf: $c0

	ld bc, $01a0                                     ; $6fc0: $01 $a0 $01
	inc bc                                           ; $6fc3: $03
	cpl                                              ; $6fc4: $2f
	ret nc                                           ; $6fc5: $d0

	adc e                                            ; $6fc6: $8b
	and b                                            ; $6fc7: $a0
	ld c, $b0                                        ; $6fc8: $0e $b0
	adc b                                            ; $6fca: $88
	inc bc                                           ; $6fcb: $03
	db $e4                                           ; $6fcc: $e4
	nop                                              ; $6fcd: $00
	ld [bc], a                                       ; $6fce: $02
	add hl, bc                                       ; $6fcf: $09
	ret nz                                           ; $6fd0: $c0

	ldh a, [$c0]                                     ; $6fd1: $f0 $c0
	set 0, b                                         ; $6fd3: $cb $c0
	rrca                                             ; $6fd5: $0f
	db $e3                                           ; $6fd6: $e3
	nop                                              ; $6fd7: $00
	inc a                                            ; $6fd8: $3c
	ret nz                                           ; $6fd9: $c0

	ld bc, $01a0                                     ; $6fda: $01 $a0 $01
	inc bc                                           ; $6fdd: $03
	ld [hl], $e1                                     ; $6fde: $36 $e1
	ld [bc], a                                       ; $6fe0: $02
	ld bc, $8350                                     ; $6fe1: $01 $50 $83
	ret nz                                           ; $6fe4: $c0

	dec de                                           ; $6fe5: $1b
	jp nc, $d002                                     ; $6fe6: $d2 $02 $d0

	pop de                                           ; $6fe9: $d1
	ld b, $c0                                        ; $6fea: $06 $c0
	ld bc, $04a0                                     ; $6fec: $01 $a0 $04
	inc bc                                           ; $6fef: $03
	ld a, [hl-]                                      ; $6ff0: $3a
	ld [bc], a                                       ; $6ff1: $02
	jp nc, $06d3                                     ; $6ff2: $d2 $d3 $06

	ret nz                                           ; $6ff5: $c0

	ld bc, $04a0                                     ; $6ff6: $01 $a0 $04
	inc bc                                           ; $6ff9: $03
	ccf                                              ; $6ffa: $3f
	ld bc, $06d4                                     ; $6ffb: $01 $d4 $06
	ret nz                                           ; $6ffe: $c0

	ld bc, $04a0                                     ; $6fff: $01 $a0 $04
	inc bc                                           ; $7002: $03
	ld b, e                                          ; $7003: $43
	ld bc, $06d5                                     ; $7004: $01 $d5 $06
	ret nz                                           ; $7007: $c0

	ld bc, $04a0                                     ; $7008: $01 $a0 $04
	inc bc                                           ; $700b: $03
	ld b, l                                          ; $700c: $45
	ret nz                                           ; $700d: $c0

	ld bc, $01a0                                     ; $700e: $01 $a0 $01
	ld [bc], a                                       ; $7011: $02
	inc e                                            ; $7012: $1c
	add e                                            ; $7013: $83
	ret nz                                           ; $7014: $c0

	dec de                                           ; $7015: $1b
	jp nc, $d002                                     ; $7016: $d2 $02 $d0

	pop de                                           ; $7019: $d1
	ld b, $c0                                        ; $701a: $06 $c0
	ld bc, $04a0                                     ; $701c: $01 $a0 $04
	inc bc                                           ; $701f: $03
	ld c, b                                          ; $7020: $48
	ld [bc], a                                       ; $7021: $02
	jp nc, $0bd3                                     ; $7022: $d2 $d3 $0b

	pop bc                                           ; $7025: $c1
	or d                                             ; $7026: $b2
	db $e3                                           ; $7027: $e3
	nop                                              ; $7028: $00
	ld [hl], $c0                                     ; $7029: $36 $c0
	ld bc, $04a0                                     ; $702b: $01 $a0 $04
	inc bc                                           ; $702e: $03
	ld e, c                                          ; $702f: $59
	ld bc, $06d4                                     ; $7030: $01 $d4 $06
	ret nz                                           ; $7033: $c0

	ld bc, $04a0                                     ; $7034: $01 $a0 $04
	inc bc                                           ; $7037: $03
	ld h, d                                          ; $7038: $62
	ld bc, $06d5                                     ; $7039: $01 $d5 $06
	ret nz                                           ; $703c: $c0

	ld bc, $04a0                                     ; $703d: $01 $a0 $04
	inc bc                                           ; $7040: $03
	ld l, c                                          ; $7041: $69
	ret nz                                           ; $7042: $c0

	ld bc, $01a0                                     ; $7043: $01 $a0 $01
	inc bc                                           ; $7046: $03
	ld l, l                                          ; $7047: $6d
	add d                                            ; $7048: $82
	adc e                                            ; $7049: $8b
	and b                                            ; $704a: $a0
	ld c, $02                                        ; $704b: $0e $02
	or b                                             ; $704d: $b0
	add [hl]                                         ; $704e: $86
	cpl                                              ; $704f: $2f
	ld h, b                                          ; $7050: $60
	db $fd                                           ; $7051: $fd
	ret nz                                           ; $7052: $c0

	dec de                                           ; $7053: $1b
	jp nc, $04d5                                     ; $7054: $d2 $d5 $04

	pop hl                                           ; $7057: $e1
	ld [bc], a                                       ; $7058: $02
	inc bc                                           ; $7059: $03
	inc de                                           ; $705a: $13
	inc b                                            ; $705b: $04
	pop hl                                           ; $705c: $e1
	ld [bc], a                                       ; $705d: $02
	inc bc                                           ; $705e: $03
	rla                                              ; $705f: $17
	pop bc                                           ; $7060: $c1
	or d                                             ; $7061: $b2
	db $e3                                           ; $7062: $e3
	nop                                              ; $7063: $00
	scf                                              ; $7064: $37
	ret nz                                           ; $7065: $c0

	ld bc, $04a0                                     ; $7066: $01 $a0 $04
	inc bc                                           ; $7069: $03
	ld [hl], e                                       ; $706a: $73
	pop bc                                           ; $706b: $c1
	ld e, e                                          ; $706c: $5b
	ret nz                                           ; $706d: $c0

	ld bc, $01a0                                     ; $706e: $01 $a0 $01
	ld [bc], a                                       ; $7071: $02
	ld l, b                                          ; $7072: $68
	ret nz                                           ; $7073: $c0

	ld [hl+], a                                      ; $7074: $22
	db $d3                                           ; $7075: $d3
	jp nc, $21c0                                     ; $7076: $d2 $c0 $21

	jp nc, $c0d2                                     ; $7079: $d2 $d2 $c0

	ld h, $df                                        ; $707c: $26 $df
	jp nc, $b002                                     ; $707e: $d2 $02 $b0

	add a                                            ; $7081: $87
	ld e, $c0                                        ; $7082: $1e $c0
	ld [hl+], a                                      ; $7084: $22
	jp nc, $c0d2                                     ; $7085: $d2 $d2 $c0

	ld hl, $d2d1                                     ; $7088: $21 $d1 $d2
	ret nz                                           ; $708b: $c0

	ld h, $da                                        ; $708c: $26 $da
	jp nc, $02e1                                     ; $708e: $d2 $e1 $02

	inc bc                                           ; $7091: $03
	rla                                              ; $7092: $17
	ret nz                                           ; $7093: $c0

	ld bc, $04a0                                     ; $7094: $01 $a0 $04
	inc bc                                           ; $7097: $03
	add c                                            ; $7098: $81
	pop bc                                           ; $7099: $c1
	ld e, e                                          ; $709a: $5b
	ret nz                                           ; $709b: $c0

	ld bc, $01a0                                     ; $709c: $01 $a0 $01
	ld [bc], a                                       ; $709f: $02
	ld a, c                                          ; $70a0: $79
	ld [bc], a                                       ; $70a1: $02
	or b                                             ; $70a2: $b0
	adc b                                            ; $70a3: $88
	ld a, [de]                                       ; $70a4: $1a
	ret nz                                           ; $70a5: $c0

	ld hl, $d2d1                                     ; $70a6: $21 $d1 $d2
	ret nz                                           ; $70a9: $c0

	inc hl                                           ; $70aa: $23
	jp c, $e1d2                                      ; $70ab: $da $d2 $e1

	ld [bc], a                                       ; $70ae: $02
	inc bc                                           ; $70af: $03
	dec de                                           ; $70b0: $1b
	ret nz                                           ; $70b1: $c0

	ld bc, $04a0                                     ; $70b2: $01 $a0 $04
	inc bc                                           ; $70b5: $03
	adc b                                            ; $70b6: $88
	pop bc                                           ; $70b7: $c1
	ld e, e                                          ; $70b8: $5b
	ret nz                                           ; $70b9: $c0

	ld bc, $01a0                                     ; $70ba: $01 $a0 $01
	ld [bc], a                                       ; $70bd: $02
	adc l                                            ; $70be: $8d
	db $e4                                           ; $70bf: $e4
	inc c                                            ; $70c0: $0c
	dec hl                                           ; $70c1: $2b
	jr c, jr_085_70cd                                ; $70c2: $38 $09

	pop bc                                           ; $70c4: $c1
	cp l                                             ; $70c5: $bd
	pop de                                           ; $70c6: $d1
	ret nz                                           ; $70c7: $c0

	ld bc, $01a0                                     ; $70c8: $01 $a0 $01
	ld [bc], a                                       ; $70cb: $02
	sub e                                            ; $70cc: $93

jr_085_70cd:
	sbc h                                            ; $70cd: $9c
	jp nc, $80c0                                     ; $70ce: $d2 $c0 $80

	ld bc, $30d3                                     ; $70d1: $01 $d3 $30
	inc bc                                           ; $70d4: $03
	sub l                                            ; $70d5: $95
	add hl, bc                                       ; $70d6: $09
	inc c                                            ; $70d7: $0c
	ret nz                                           ; $70d8: $c0

	ld bc, $01a0                                     ; $70d9: $01 $a0 $01
	inc bc                                           ; $70dc: $03
	sbc l                                            ; $70dd: $9d
	ret nc                                           ; $70de: $d0

	adc e                                            ; $70df: $8b
	and b                                            ; $70e0: $a0
	ld a, [de]                                       ; $70e1: $1a
	or b                                             ; $70e2: $b0
	add [hl]                                         ; $70e3: $86
	inc bc                                           ; $70e4: $03
	xor d                                            ; $70e5: $aa
	add hl, bc                                       ; $70e6: $09
	inc c                                            ; $70e7: $0c
	ret nz                                           ; $70e8: $c0

	ld bc, $01a0                                     ; $70e9: $01 $a0 $01
	inc bc                                           ; $70ec: $03
	or d                                             ; $70ed: $b2
	ret nc                                           ; $70ee: $d0

	adc e                                            ; $70ef: $8b
	and b                                            ; $70f0: $a0
	ld a, [de]                                       ; $70f1: $1a
	or b                                             ; $70f2: $b0
	add a                                            ; $70f3: $87
	inc bc                                           ; $70f4: $03
	cp a                                             ; $70f5: $bf
	add hl, bc                                       ; $70f6: $09
	inc c                                            ; $70f7: $0c
	ret nz                                           ; $70f8: $c0

	ld bc, $01a0                                     ; $70f9: $01 $a0 $01
	inc bc                                           ; $70fc: $03
	jp $8bd0                                         ; $70fd: $c3 $d0 $8b


	and b                                            ; $7100: $a0
	ld a, [de]                                       ; $7101: $1a
	or b                                             ; $7102: $b0
	adc b                                            ; $7103: $88
	ld bc, $30d2                                     ; $7104: $01 $d2 $30
	inc bc                                           ; $7107: $03
	rrc c                                            ; $7108: $cb $09
	inc c                                            ; $710a: $0c
	ret nz                                           ; $710b: $c0

	ld bc, $01a0                                     ; $710c: $01 $a0 $01
	inc bc                                           ; $710f: $03
	call nc, $8bd0                                   ; $7110: $d4 $d0 $8b
	and b                                            ; $7113: $a0
	ld a, [de]                                       ; $7114: $1a
	or b                                             ; $7115: $b0
	add [hl]                                         ; $7116: $86
	inc bc                                           ; $7117: $03
	inc l                                            ; $7118: $2c
	add hl, bc                                       ; $7119: $09
	inc c                                            ; $711a: $0c
	ret nz                                           ; $711b: $c0

	ld bc, $01a0                                     ; $711c: $01 $a0 $01
	inc bc                                           ; $711f: $03
	cpl                                              ; $7120: $2f
	ret nc                                           ; $7121: $d0

	adc e                                            ; $7122: $8b
	and b                                            ; $7123: $a0
	ld a, [de]                                       ; $7124: $1a
	or b                                             ; $7125: $b0
	add a                                            ; $7126: $87
	inc bc                                           ; $7127: $03
	ldh [c], a                                       ; $7128: $e2
	add hl, bc                                       ; $7129: $09
	inc c                                            ; $712a: $0c
	ret nz                                           ; $712b: $c0

	ld bc, $01a0                                     ; $712c: $01 $a0 $01
	inc bc                                           ; $712f: $03
	add sp, -$30                                     ; $7130: $e8 $d0
	adc e                                            ; $7132: $8b
	and b                                            ; $7133: $a0
	ld a, [de]                                       ; $7134: $1a
	or b                                             ; $7135: $b0
	adc b                                            ; $7136: $88
	ld bc, $30d1                                     ; $7137: $01 $d1 $30
	inc bc                                           ; $713a: $03
	ldh a, [c]                                       ; $713b: $f2
	add hl, bc                                       ; $713c: $09
	inc c                                            ; $713d: $0c
	ret nz                                           ; $713e: $c0

	ld bc, $01a0                                     ; $713f: $01 $a0 $01
	inc bc                                           ; $7142: $03
	ld hl, sp-$30                                    ; $7143: $f8 $d0
	adc e                                            ; $7145: $8b
	and b                                            ; $7146: $a0
	ld a, [de]                                       ; $7147: $1a
	or b                                             ; $7148: $b0
	add [hl]                                         ; $7149: $86
	inc b                                            ; $714a: $04
	inc b                                            ; $714b: $04
	add hl, bc                                       ; $714c: $09
	inc c                                            ; $714d: $0c
	ret nz                                           ; $714e: $c0

	ld bc, $01a0                                     ; $714f: $01 $a0 $01
	inc b                                            ; $7152: $04
	ld [$8bd0], sp                                   ; $7153: $08 $d0 $8b
	and b                                            ; $7156: $a0
	ld a, [de]                                       ; $7157: $1a
	or b                                             ; $7158: $b0
	add a                                            ; $7159: $87
	inc b                                            ; $715a: $04
	db $10                                           ; $715b: $10
	add hl, bc                                       ; $715c: $09
	inc c                                            ; $715d: $0c
	ret nz                                           ; $715e: $c0

	ld bc, $01a0                                     ; $715f: $01 $a0 $01
	inc b                                            ; $7162: $04
	inc d                                            ; $7163: $14
	ret nc                                           ; $7164: $d0

	adc e                                            ; $7165: $8b
	and b                                            ; $7166: $a0
	ld a, [de]                                       ; $7167: $1a
	or b                                             ; $7168: $b0
	adc b                                            ; $7169: $88
	inc bc                                           ; $716a: $03
	db $e4                                           ; $716b: $e4
	nop                                              ; $716c: $00

jr_085_716d:
	ld [bc], a                                       ; $716d: $02
	add hl, bc                                       ; $716e: $09
	ret nz                                           ; $716f: $c0

	pop af                                           ; $7170: $f1
	ret nz                                           ; $7171: $c0

	set 0, b                                         ; $7172: $cb $c0
	rrca                                             ; $7174: $0f
	db $e3                                           ; $7175: $e3
	nop                                              ; $7176: $00
	inc a                                            ; $7177: $3c
	ret nz                                           ; $7178: $c0

	ld bc, $01a0                                     ; $7179: $01 $a0 $01
	inc b                                            ; $717c: $04
	inc e                                            ; $717d: $1c
	pop hl                                           ; $717e: $e1
	ld [bc], a                                       ; $717f: $02
	ld bc, $8398                                     ; $7180: $01 $98 $83
	ret nz                                           ; $7183: $c0

	dec de                                           ; $7184: $1b
	db $d3                                           ; $7185: $d3
	ld [bc], a                                       ; $7186: $02
	ret nc                                           ; $7187: $d0

	pop de                                           ; $7188: $d1
	ld b, $c0                                        ; $7189: $06 $c0
	ld bc, $05a0                                     ; $718b: $01 $a0 $05
	inc b                                            ; $718e: $04
	jr nz, @+$04                                     ; $718f: $20 $02

	jp nc, $06d3                                     ; $7191: $d2 $d3 $06

	ret nz                                           ; $7194: $c0

	ld bc, $05a0                                     ; $7195: $01 $a0 $05
	inc b                                            ; $7198: $04
	ld h, $01                                        ; $7199: $26 $01
	call nc, $c006                                   ; $719b: $d4 $06 $c0
	ld bc, $05a0                                     ; $719e: $01 $a0 $05
	inc b                                            ; $71a1: $04
	inc l                                            ; $71a2: $2c
	ld bc, $06d5                                     ; $71a3: $01 $d5 $06
	ret nz                                           ; $71a6: $c0

	ld bc, $05a0                                     ; $71a7: $01 $a0 $05
	inc b                                            ; $71aa: $04
	jr nc, jr_085_716d                               ; $71ab: $30 $c0

	ld bc, $01a0                                     ; $71ad: $01 $a0 $01
	ld [bc], a                                       ; $71b0: $02
	inc e                                            ; $71b1: $1c
	add e                                            ; $71b2: $83
	ret nz                                           ; $71b3: $c0

	dec de                                           ; $71b4: $1b
	db $d3                                           ; $71b5: $d3
	ld [bc], a                                       ; $71b6: $02
	ret nc                                           ; $71b7: $d0

	pop de                                           ; $71b8: $d1
	ld b, $c0                                        ; $71b9: $06 $c0
	ld bc, $05a0                                     ; $71bb: $01 $a0 $05
	inc b                                            ; $71be: $04
	inc sp                                           ; $71bf: $33
	ld [bc], a                                       ; $71c0: $02
	jp nc, $06d3                                     ; $71c1: $d2 $d3 $06

	ret nz                                           ; $71c4: $c0

	ld bc, $05a0                                     ; $71c5: $01 $a0 $05
	inc b                                            ; $71c8: $04
	ld b, b                                          ; $71c9: $40
	ld bc, $06d4                                     ; $71ca: $01 $d4 $06
	ret nz                                           ; $71cd: $c0

	ld bc, $05a0                                     ; $71ce: $01 $a0 $05
	inc b                                            ; $71d1: $04
	ld c, b                                          ; $71d2: $48
	ld bc, $06d5                                     ; $71d3: $01 $d5 $06
	ret nz                                           ; $71d6: $c0

	ld bc, $05a0                                     ; $71d7: $01 $a0 $05
	inc b                                            ; $71da: $04
	ld d, b                                          ; $71db: $50
	ret nz                                           ; $71dc: $c0

	ld bc, $01a0                                     ; $71dd: $01 $a0 $01
	inc bc                                           ; $71e0: $03
	ld l, l                                          ; $71e1: $6d
	add d                                            ; $71e2: $82
	adc e                                            ; $71e3: $8b
	and b                                            ; $71e4: $a0
	ld a, [de]                                       ; $71e5: $1a
	ld [bc], a                                       ; $71e6: $02
	or b                                             ; $71e7: $b0
	add [hl]                                         ; $71e8: $86
	dec [hl]                                         ; $71e9: $35
	ld h, b                                          ; $71ea: $60
	db $fd                                           ; $71eb: $fd
	ret nz                                           ; $71ec: $c0

	dec de                                           ; $71ed: $1b
	db $d3                                           ; $71ee: $d3
	push de                                          ; $71ef: $d5
	rrca                                             ; $71f0: $0f
	pop hl                                           ; $71f1: $e1
	ld [bc], a                                       ; $71f2: $02
	inc bc                                           ; $71f3: $03
	inc de                                           ; $71f4: $13
	pop bc                                           ; $71f5: $c1
	or d                                             ; $71f6: $b2
	db $e3                                           ; $71f7: $e3
	nop                                              ; $71f8: $00
	ld b, [hl]                                       ; $71f9: $46
	ret nz                                           ; $71fa: $c0

	ld bc, $05a0                                     ; $71fb: $01 $a0 $05
	inc b                                            ; $71fe: $04
	ld d, a                                          ; $71ff: $57
	ld a, [bc]                                       ; $7200: $0a
	pop hl                                           ; $7201: $e1
	ld [bc], a                                       ; $7202: $02
	inc bc                                           ; $7203: $03
	rla                                              ; $7204: $17
	ret nz                                           ; $7205: $c0

	ld bc, $05a0                                     ; $7206: $01 $a0 $05
	inc b                                            ; $7209: $04
	ld h, a                                          ; $720a: $67
	pop bc                                           ; $720b: $c1
	ld e, e                                          ; $720c: $5b
	ret nz                                           ; $720d: $c0

	ld bc, $01a0                                     ; $720e: $01 $a0 $01
	ld [bc], a                                       ; $7211: $02
	ld l, b                                          ; $7212: $68
	ret nz                                           ; $7213: $c0

	ld [hl+], a                                      ; $7214: $22
	db $d3                                           ; $7215: $d3
	db $d3                                           ; $7216: $d3
	ret nz                                           ; $7217: $c0

	ld hl, $d3d2                                     ; $7218: $21 $d2 $d3
	ret nz                                           ; $721b: $c0

	ld h, $df                                        ; $721c: $26 $df
	db $d3                                           ; $721e: $d3
	ld [bc], a                                       ; $721f: $02
	or b                                             ; $7220: $b0
	add a                                            ; $7221: $87
	ld e, $c0                                        ; $7222: $1e $c0
	ld [hl+], a                                      ; $7224: $22
	jp nc, $c0d3                                     ; $7225: $d2 $d3 $c0

	ld hl, $d3d1                                     ; $7228: $21 $d1 $d3
	ret nz                                           ; $722b: $c0

	ld h, $da                                        ; $722c: $26 $da
	db $d3                                           ; $722e: $d3
	pop hl                                           ; $722f: $e1
	ld [bc], a                                       ; $7230: $02
	inc bc                                           ; $7231: $03
	rla                                              ; $7232: $17
	ret nz                                           ; $7233: $c0

	ld bc, $05a0                                     ; $7234: $01 $a0 $05
	inc b                                            ; $7237: $04
	ld [hl], b                                       ; $7238: $70
	pop bc                                           ; $7239: $c1
	ld e, e                                          ; $723a: $5b
	ret nz                                           ; $723b: $c0

	ld bc, $01a0                                     ; $723c: $01 $a0 $01
	ld [bc], a                                       ; $723f: $02
	ld a, c                                          ; $7240: $79
	ld [bc], a                                       ; $7241: $02
	or b                                             ; $7242: $b0
	adc b                                            ; $7243: $88
	ld a, [de]                                       ; $7244: $1a
	ret nz                                           ; $7245: $c0

	ld hl, $d3d1                                     ; $7246: $21 $d1 $d3
	ret nz                                           ; $7249: $c0

	inc hl                                           ; $724a: $23
	jp c, $e1d3                                      ; $724b: $da $d3 $e1

	ld [bc], a                                       ; $724e: $02
	inc bc                                           ; $724f: $03
	dec de                                           ; $7250: $1b
	ret nz                                           ; $7251: $c0

	ld bc, $05a0                                     ; $7252: $01 $a0 $05
	inc b                                            ; $7255: $04
	ld a, e                                          ; $7256: $7b
	pop bc                                           ; $7257: $c1
	ld e, e                                          ; $7258: $5b
	ret nz                                           ; $7259: $c0

	ld bc, $01a0                                     ; $725a: $01 $a0 $01
	ld [bc], a                                       ; $725d: $02
	adc l                                            ; $725e: $8d
	db $e4                                           ; $725f: $e4
	ld a, [bc]                                       ; $7260: $0a
	adc e                                            ; $7261: $8b
	jr c, jr_085_726d                                ; $7262: $38 $09

	pop bc                                           ; $7264: $c1
	cp l                                             ; $7265: $bd
	pop de                                           ; $7266: $d1
	ret nz                                           ; $7267: $c0

	ld bc, $01a0                                     ; $7268: $01 $a0 $01
	ld [bc], a                                       ; $726b: $02
	sub e                                            ; $726c: $93

jr_085_726d:
	sbc h                                            ; $726d: $9c
	jp nc, $80c0                                     ; $726e: $d2 $c0 $80

	ld bc, $30d3                                     ; $7271: $01 $d3 $30
	inc b                                            ; $7274: $04
	add d                                            ; $7275: $82
	add hl, bc                                       ; $7276: $09
	inc c                                            ; $7277: $0c
	ret nz                                           ; $7278: $c0

	ld bc, $01a0                                     ; $7279: $01 $a0 $01
	inc b                                            ; $727c: $04
	adc c                                            ; $727d: $89
	ret nc                                           ; $727e: $d0

	adc e                                            ; $727f: $8b
	and b                                            ; $7280: $a0
	ld h, $b0                                        ; $7281: $26 $b0
	add [hl]                                         ; $7283: $86
	inc b                                            ; $7284: $04
	sub [hl]                                         ; $7285: $96
	add hl, bc                                       ; $7286: $09
	inc c                                            ; $7287: $0c
	ret nz                                           ; $7288: $c0

	ld bc, $01a0                                     ; $7289: $01 $a0 $01
	inc b                                            ; $728c: $04
	sbc d                                            ; $728d: $9a
	ret nc                                           ; $728e: $d0

	adc e                                            ; $728f: $8b
	and b                                            ; $7290: $a0
	ld h, $b0                                        ; $7291: $26 $b0
	add a                                            ; $7293: $87
	inc b                                            ; $7294: $04
	and d                                            ; $7295: $a2
	add hl, bc                                       ; $7296: $09
	inc c                                            ; $7297: $0c
	ret nz                                           ; $7298: $c0

	ld bc, $01a0                                     ; $7299: $01 $a0 $01
	inc b                                            ; $729c: $04
	and a                                            ; $729d: $a7
	ret nc                                           ; $729e: $d0

	adc e                                            ; $729f: $8b
	and b                                            ; $72a0: $a0
	ld h, $b0                                        ; $72a1: $26 $b0
	adc b                                            ; $72a3: $88
	ld bc, $30d2                                     ; $72a4: $01 $d2 $30
	inc b                                            ; $72a7: $04
	or b                                             ; $72a8: $b0
	add hl, bc                                       ; $72a9: $09
	inc c                                            ; $72aa: $0c
	ret nz                                           ; $72ab: $c0

	ld bc, $01a0                                     ; $72ac: $01 $a0 $01
	inc b                                            ; $72af: $04
	or e                                             ; $72b0: $b3
	ret nc                                           ; $72b1: $d0

	adc e                                            ; $72b2: $8b
	and b                                            ; $72b3: $a0
	ld h, $b0                                        ; $72b4: $26 $b0
	add [hl]                                         ; $72b6: $86
	inc b                                            ; $72b7: $04
	cp e                                             ; $72b8: $bb
	add hl, bc                                       ; $72b9: $09
	inc c                                            ; $72ba: $0c
	ret nz                                           ; $72bb: $c0

	ld bc, $01a0                                     ; $72bc: $01 $a0 $01
	inc b                                            ; $72bf: $04
	ret nz                                           ; $72c0: $c0

	ret nc                                           ; $72c1: $d0

	adc e                                            ; $72c2: $8b
	and b                                            ; $72c3: $a0
	ld h, $b0                                        ; $72c4: $26 $b0
	add a                                            ; $72c6: $87
	inc b                                            ; $72c7: $04
	ret                                              ; $72c8: $c9


	add hl, bc                                       ; $72c9: $09
	inc c                                            ; $72ca: $0c
	ret nz                                           ; $72cb: $c0

	ld bc, $01a0                                     ; $72cc: $01 $a0 $01
	inc b                                            ; $72cf: $04
	call $8bd0                                       ; $72d0: $cd $d0 $8b
	and b                                            ; $72d3: $a0
	ld h, $b0                                        ; $72d4: $26 $b0
	adc b                                            ; $72d6: $88
	ld bc, $30d1                                     ; $72d7: $01 $d1 $30
	inc b                                            ; $72da: $04
	push de                                          ; $72db: $d5
	add hl, bc                                       ; $72dc: $09
	inc c                                            ; $72dd: $0c
	ret nz                                           ; $72de: $c0

	ld bc, $01a0                                     ; $72df: $01 $a0 $01
	inc b                                            ; $72e2: $04
	jp c, $8bd0                                      ; $72e3: $da $d0 $8b

	and b                                            ; $72e6: $a0
	ld h, $b0                                        ; $72e7: $26 $b0
	add [hl]                                         ; $72e9: $86
	inc b                                            ; $72ea: $04
	db $e4                                           ; $72eb: $e4
	add hl, bc                                       ; $72ec: $09
	inc c                                            ; $72ed: $0c
	ret nz                                           ; $72ee: $c0

	ld bc, $01a0                                     ; $72ef: $01 $a0 $01
	inc b                                            ; $72f2: $04
	jp hl                                            ; $72f3: $e9


	ret nc                                           ; $72f4: $d0

	adc e                                            ; $72f5: $8b
	and b                                            ; $72f6: $a0
	ld h, $b0                                        ; $72f7: $26 $b0
	add a                                            ; $72f9: $87
	inc b                                            ; $72fa: $04
	db $f4                                           ; $72fb: $f4
	add hl, bc                                       ; $72fc: $09
	inc c                                            ; $72fd: $0c
	ret nz                                           ; $72fe: $c0

	ld bc, $01a0                                     ; $72ff: $01 $a0 $01
	inc b                                            ; $7302: $04
	ei                                               ; $7303: $fb
	ret nc                                           ; $7304: $d0

	adc e                                            ; $7305: $8b
	and b                                            ; $7306: $a0
	ld h, $b0                                        ; $7307: $26 $b0
	adc b                                            ; $7309: $88
	inc bc                                           ; $730a: $03
	db $e4                                           ; $730b: $e4
	nop                                              ; $730c: $00
	ld [bc], a                                       ; $730d: $02
	add hl, bc                                       ; $730e: $09
	pop bc                                           ; $730f: $c1
	ld b, b                                          ; $7310: $40
	add d                                            ; $7311: $82
	adc e                                            ; $7312: $8b
	nop                                              ; $7313: $00
	or $02                                           ; $7314: $f6 $02
	or b                                             ; $7316: $b0
	ld [bc], a                                       ; $7317: $02
	ld c, d                                          ; $7318: $4a
	ret nz                                           ; $7319: $c0

	set 0, b                                         ; $731a: $cb $c0
	rrca                                             ; $731c: $0f
	db $e3                                           ; $731d: $e3
	nop                                              ; $731e: $00
	inc a                                            ; $731f: $3c
	ret nz                                           ; $7320: $c0

	ld bc, $01a0                                     ; $7321: $01 $a0 $01
	dec b                                            ; $7324: $05
	rlca                                             ; $7325: $07
	pop hl                                           ; $7326: $e1
	ld [bc], a                                       ; $7327: $02
	ld bc, $83e0                                     ; $7328: $01 $e0 $83
	ret nz                                           ; $732b: $c0

	dec de                                           ; $732c: $1b
	rst SubAFromHL                                          ; $732d: $d7
	ld [bc], a                                       ; $732e: $02
	ret nc                                           ; $732f: $d0

	pop de                                           ; $7330: $d1
	ld b, $c0                                        ; $7331: $06 $c0
	ld bc, $08a0                                     ; $7333: $01 $a0 $08
	dec b                                            ; $7336: $05
	dec bc                                           ; $7337: $0b
	ld [bc], a                                       ; $7338: $02
	jp nc, $06d3                                     ; $7339: $d2 $d3 $06

	ret nz                                           ; $733c: $c0

	ld bc, $08a0                                     ; $733d: $01 $a0 $08
	dec b                                            ; $7340: $05
	ld [de], a                                       ; $7341: $12
	ld bc, $06d4                                     ; $7342: $01 $d4 $06
	ret nz                                           ; $7345: $c0

	ld bc, $08a0                                     ; $7346: $01 $a0 $08
	dec b                                            ; $7349: $05
	add hl, de                                       ; $734a: $19
	ld bc, $06d5                                     ; $734b: $01 $d5 $06
	ret nz                                           ; $734e: $c0

	ld bc, $08a0                                     ; $734f: $01 $a0 $08
	dec b                                            ; $7352: $05
	ld e, $c0                                        ; $7353: $1e $c0
	ld bc, $01a0                                     ; $7355: $01 $a0 $01
	ld [bc], a                                       ; $7358: $02
	inc e                                            ; $7359: $1c
	ldh [rP1], a                                     ; $735a: $e0 $00
	or $e0                                           ; $735c: $f6 $e0
	ld bc, $e424                                     ; $735e: $01 $24 $e4
	add hl, bc                                       ; $7361: $09
	adc d                                            ; $7362: $8a
	ld [bc], a                                       ; $7363: $02
	or b                                             ; $7364: $b0
	dec e                                            ; $7365: $1d
	ret nz                                           ; $7366: $c0

	jp nc, $01c0                                     ; $7367: $d2 $c0 $01

	and b                                            ; $736a: $a0
	ld bc, $2505                                     ; $736b: $01 $05 $25
	ld h, b                                          ; $736e: $60
	add b                                            ; $736f: $80
	nop                                              ; $7370: $00
	ld a, d                                          ; $7371: $7a
	cp l                                             ; $7372: $bd
	pop hl                                           ; $7373: $e1
	ld [bc], a                                       ; $7374: $02
	ld c, $65                                        ; $7375: $0e $65
	pop bc                                           ; $7377: $c1
	rlca                                             ; $7378: $07
	jp nc, $c0d0                                     ; $7379: $d2 $d0 $c0

	ld bc, $08a0                                     ; $737c: $01 $a0 $08
	dec b                                            ; $737f: $05
	ld sp, $01c0                                     ; $7380: $31 $c0 $01
	and b                                            ; $7383: $a0
	ld bc, $3505                                     ; $7384: $01 $05 $35
	add e                                            ; $7387: $83
	ret nz                                           ; $7388: $c0

	dec de                                           ; $7389: $1b
	rst SubAFromHL                                          ; $738a: $d7
	ld [bc], a                                       ; $738b: $02
	ret nc                                           ; $738c: $d0

	pop de                                           ; $738d: $d1
	ld b, $c0                                        ; $738e: $06 $c0
	ld bc, $08a0                                     ; $7390: $01 $a0 $08
	dec b                                            ; $7393: $05
	ld a, [hl-]                                      ; $7394: $3a
	ld [bc], a                                       ; $7395: $02
	jp nc, $06d3                                     ; $7396: $d2 $d3 $06

	ret nz                                           ; $7399: $c0

	ld bc, $08a0                                     ; $739a: $01 $a0 $08
	dec b                                            ; $739d: $05
	ld c, d                                          ; $739e: $4a
	ld bc, $06d4                                     ; $739f: $01 $d4 $06
	ret nz                                           ; $73a2: $c0

	ld bc, $08a0                                     ; $73a3: $01 $a0 $08
	dec b                                            ; $73a6: $05
	ld e, a                                          ; $73a7: $5f
	ld bc, $12d5                                     ; $73a8: $01 $d5 $12
	ret nz                                           ; $73ab: $c0

	ld bc, $08a0                                     ; $73ac: $01 $a0 $08
	dec b                                            ; $73af: $05
	ld h, h                                          ; $73b0: $64
	ret nz                                           ; $73b1: $c0

	ld bc, $01a0                                     ; $73b2: $01 $a0 $01
	dec b                                            ; $73b5: $05
	ld l, d                                          ; $73b6: $6a
	ret nz                                           ; $73b7: $c0

	ld bc, $08a0                                     ; $73b8: $01 $a0 $08
	dec b                                            ; $73bb: $05
	ld l, a                                          ; $73bc: $6f
	ret nz                                           ; $73bd: $c0

	ld bc, $01a0                                     ; $73be: $01 $a0 $01
	dec b                                            ; $73c1: $05
	add b                                            ; $73c2: $80
	add d                                            ; $73c3: $82
	ret nz                                           ; $73c4: $c0

	dec de                                           ; $73c5: $1b
	rst SubAFromHL                                          ; $73c6: $d7
	inc b                                            ; $73c7: $04
	ret nc                                           ; $73c8: $d0

	pop de                                           ; $73c9: $d1
	jp nc, $06d3                                     ; $73ca: $d2 $d3 $06

	ret nz                                           ; $73cd: $c0

	ld bc, $08a0                                     ; $73ce: $01 $a0 $08
	dec b                                            ; $73d1: $05
	sub b                                            ; $73d2: $90
	ld bc, $06d4                                     ; $73d3: $01 $d4 $06
	ret nz                                           ; $73d6: $c0

	ld bc, $08a0                                     ; $73d7: $01 $a0 $08
	dec b                                            ; $73da: $05
	sbc d                                            ; $73db: $9a
	ld bc, $06d5                                     ; $73dc: $01 $d5 $06
	ret nz                                           ; $73df: $c0

	ld bc, $08a0                                     ; $73e0: $01 $a0 $08
	dec b                                            ; $73e3: $05
	and a                                            ; $73e4: $a7
	ret nz                                           ; $73e5: $c0

	ld bc, $01a0                                     ; $73e6: $01 $a0 $01
	dec b                                            ; $73e9: $05
	or e                                             ; $73ea: $b3
	ldh [$08], a                                     ; $73eb: $e0 $08
	push af                                          ; $73ed: $f5
	ret nz                                           ; $73ee: $c0

	ld bc, $01a0                                     ; $73ef: $01 $a0 $01
	dec b                                            ; $73f2: $05
	cp c                                             ; $73f3: $b9
	pop bc                                           ; $73f4: $c1
	ld e, c                                          ; $73f5: $59
	db $e3                                           ; $73f6: $e3
	nop                                              ; $73f7: $00
	ld a, a                                          ; $73f8: $7f
	pop hl                                           ; $73f9: $e1
	ld [bc], a                                       ; $73fa: $02
	ld bc, $82f8                                     ; $73fb: $01 $f8 $82
	ret nz                                           ; $73fe: $c0

	dec de                                           ; $73ff: $1b
	rst SubAFromHL                                          ; $7400: $d7
	inc b                                            ; $7401: $04
	ret nc                                           ; $7402: $d0

	pop de                                           ; $7403: $d1
	jp nc, $06d3                                     ; $7404: $d2 $d3 $06

	ret nz                                           ; $7407: $c0

	ld bc, $08a0                                     ; $7408: $01 $a0 $08
	dec b                                            ; $740b: $05
	jp nz, $d401                                     ; $740c: $c2 $01 $d4

	ld b, $c0                                        ; $740f: $06 $c0
	ld bc, $08a0                                     ; $7411: $01 $a0 $08
	dec b                                            ; $7414: $05
	jp z, $d501                                      ; $7415: $ca $01 $d5

	ld b, $c0                                        ; $7418: $06 $c0
	ld bc, $08a0                                     ; $741a: $01 $a0 $08
	dec b                                            ; $741d: $05
	call nc, $01c0                                   ; $741e: $d4 $c0 $01
	and b                                            ; $7421: $a0
	ld bc, $1c02                                     ; $7422: $01 $02 $1c
	ldh [rP1], a                                     ; $7425: $e0 $00
	dec hl                                           ; $7427: $2b
	ldh [rP1], a                                     ; $7428: $e0 $00
	ld e, c                                          ; $742a: $59
	ret nz                                           ; $742b: $c0

	push af                                          ; $742c: $f5
	db $e4                                           ; $742d: $e4
	push af                                          ; $742e: $f5
	jp nc, $c009                                     ; $742f: $d2 $09 $c0

	ld bc, $01a0                                     ; $7432: $01 $a0 $01
	dec b                                            ; $7435: $05
	rst SubAFromDE                                          ; $7436: $df
	db $e4                                           ; $7437: $e4
	push af                                          ; $7438: $f5
	ret z                                            ; $7439: $c8

	ld [bc], a                                       ; $743a: $02
	or b                                             ; $743b: $b0
	add c                                            ; $743c: $81
	db $10                                           ; $743d: $10
	ret nz                                           ; $743e: $c0

	ld bc, $01a0                                     ; $743f: $01 $a0 $01
	dec b                                            ; $7442: $05
	xor $e0                                          ; $7443: $ee $e0
	nop                                              ; $7445: $00
	inc c                                            ; $7446: $0c
	ldh [rP1], a                                     ; $7447: $e0 $00
	or d                                             ; $7449: $b2
	push hl                                          ; $744a: $e5
	inc hl                                           ; $744b: $23
	ld bc, $e4f9                                     ; $744c: $01 $f9 $e4
	ld [$309c], sp                                   ; $744f: $08 $9c $30
	add e                                            ; $7452: $83
	ret nz                                           ; $7453: $c0

	dec de                                           ; $7454: $1b
	rst SubAFromHL                                          ; $7455: $d7
	ld [bc], a                                       ; $7456: $02
	ret nc                                           ; $7457: $d0

	pop de                                           ; $7458: $d1
	ld b, $c0                                        ; $7459: $06 $c0
	ld bc, $08a0                                     ; $745b: $01 $a0 $08
	dec b                                            ; $745e: $05
	pop af                                           ; $745f: $f1
	ld [bc], a                                       ; $7460: $02
	jp nc, $06d3                                     ; $7461: $d2 $d3 $06

	ret nz                                           ; $7464: $c0

	ld bc, $08a0                                     ; $7465: $01 $a0 $08
	dec b                                            ; $7468: $05
	ei                                               ; $7469: $fb
	ld bc, $06d4                                     ; $746a: $01 $d4 $06
	ret nz                                           ; $746d: $c0

	ld bc, $08a0                                     ; $746e: $01 $a0 $08
	ld b, $0a                                        ; $7471: $06 $0a
	ld bc, $06d5                                     ; $7473: $01 $d5 $06
	ret nz                                           ; $7476: $c0

	ld bc, $08a0                                     ; $7477: $01 $a0 $08
	ld b, $16                                        ; $747a: $06 $16
	ret nz                                           ; $747c: $c0

	ld bc, $01a0                                     ; $747d: $01 $a0 $01
	inc bc                                           ; $7480: $03
	ld l, l                                          ; $7481: $6d
	ld [hl], a                                       ; $7482: $77
	add d                                            ; $7483: $82
	adc e                                            ; $7484: $8b
	and b                                            ; $7485: $a0
	ld h, $02                                        ; $7486: $26 $02
	or b                                             ; $7488: $b0
	add [hl]                                         ; $7489: $86
	cpl                                              ; $748a: $2f
	ld h, b                                          ; $748b: $60
	db $fd                                           ; $748c: $fd
	ret nz                                           ; $748d: $c0

	dec de                                           ; $748e: $1b
	rst SubAFromHL                                          ; $748f: $d7
	push de                                          ; $7490: $d5
	inc b                                            ; $7491: $04
	pop hl                                           ; $7492: $e1
	ld [bc], a                                       ; $7493: $02
	inc bc                                           ; $7494: $03
	inc de                                           ; $7495: $13
	inc b                                            ; $7496: $04
	pop hl                                           ; $7497: $e1
	ld [bc], a                                       ; $7498: $02
	inc bc                                           ; $7499: $03
	rla                                              ; $749a: $17
	pop bc                                           ; $749b: $c1
	or d                                             ; $749c: $b2
	db $e3                                           ; $749d: $e3
	nop                                              ; $749e: $00
	ld d, h                                          ; $749f: $54
	ret nz                                           ; $74a0: $c0

	ld bc, $08a0                                     ; $74a1: $01 $a0 $08
	ld b, $24                                        ; $74a4: $06 $24
	pop bc                                           ; $74a6: $c1
	ld e, e                                          ; $74a7: $5b
	ret nz                                           ; $74a8: $c0

	ld bc, $01a0                                     ; $74a9: $01 $a0 $01
	ld [bc], a                                       ; $74ac: $02
	ld l, b                                          ; $74ad: $68
	ret nz                                           ; $74ae: $c0

	ld [hl+], a                                      ; $74af: $22
	db $d3                                           ; $74b0: $d3
	rst SubAFromHL                                          ; $74b1: $d7
	ret nz                                           ; $74b2: $c0

	ld hl, $d7d2                                     ; $74b3: $21 $d2 $d7
	ret nz                                           ; $74b6: $c0

	ld h, $df                                        ; $74b7: $26 $df
	rst SubAFromHL                                          ; $74b9: $d7
	ld [bc], a                                       ; $74ba: $02
	or b                                             ; $74bb: $b0
	add a                                            ; $74bc: $87
	ld e, $c0                                        ; $74bd: $1e $c0
	ld [hl+], a                                      ; $74bf: $22
	jp nc, $c0d7                                     ; $74c0: $d2 $d7 $c0

	ld hl, $d7d1                                     ; $74c3: $21 $d1 $d7
	ret nz                                           ; $74c6: $c0

	ld h, $da                                        ; $74c7: $26 $da
	rst SubAFromHL                                          ; $74c9: $d7
	pop hl                                           ; $74ca: $e1
	ld [bc], a                                       ; $74cb: $02
	inc bc                                           ; $74cc: $03
	rla                                              ; $74cd: $17
	ret nz                                           ; $74ce: $c0

	ld bc, $08a0                                     ; $74cf: $01 $a0 $08
	ld b, $37                                        ; $74d2: $06 $37
	pop bc                                           ; $74d4: $c1
	ld e, e                                          ; $74d5: $5b
	ret nz                                           ; $74d6: $c0

	ld bc, $01a0                                     ; $74d7: $01 $a0 $01
	ld [bc], a                                       ; $74da: $02
	ld a, c                                          ; $74db: $79
	ld [bc], a                                       ; $74dc: $02
	or b                                             ; $74dd: $b0
	adc b                                            ; $74de: $88
	ld a, [de]                                       ; $74df: $1a
	ret nz                                           ; $74e0: $c0

	ld hl, $d7d1                                     ; $74e1: $21 $d1 $d7
	ret nz                                           ; $74e4: $c0

	inc hl                                           ; $74e5: $23
	jp c, $e1d7                                      ; $74e6: $da $d7 $e1

	ld [bc], a                                       ; $74e9: $02
	inc bc                                           ; $74ea: $03
	dec de                                           ; $74eb: $1b
	ret nz                                           ; $74ec: $c0

	ld bc, $08a0                                     ; $74ed: $01 $a0 $08
	ld b, $44                                        ; $74f0: $06 $44
	pop bc                                           ; $74f2: $c1
	ld e, e                                          ; $74f3: $5b
	ret nz                                           ; $74f4: $c0

	ld bc, $01a0                                     ; $74f5: $01 $a0 $01
	ld [bc], a                                       ; $74f8: $02
	adc l                                            ; $74f9: $8d
	ld l, h                                          ; $74fa: $6c
	add d                                            ; $74fb: $82
	adc e                                            ; $74fc: $8b
	and b                                            ; $74fd: $a0
	ld h, $02                                        ; $74fe: $26 $02
	or b                                             ; $7500: $b0
	add [hl]                                         ; $7501: $86
	jr z, @+$62                                      ; $7502: $28 $60

	db $fd                                           ; $7504: $fd
	ret nz                                           ; $7505: $c0

	dec de                                           ; $7506: $1b
	rst SubAFromHL                                          ; $7507: $d7
	push de                                          ; $7508: $d5
	inc b                                            ; $7509: $04
	pop hl                                           ; $750a: $e1
	ld [bc], a                                       ; $750b: $02
	inc bc                                           ; $750c: $03
	inc de                                           ; $750d: $13
	inc b                                            ; $750e: $04
	pop hl                                           ; $750f: $e1

jr_085_7510:
	ld [bc], a                                       ; $7510: $02
	inc bc                                           ; $7511: $03
	rla                                              ; $7512: $17
	ret nz                                           ; $7513: $c0

	ld bc, $08a0                                     ; $7514: $01 $a0 $08
	ld b, $24                                        ; $7517: $06 $24
	ret nz                                           ; $7519: $c0

	ld bc, $01a0                                     ; $751a: $01 $a0 $01
	ld b, $59                                        ; $751d: $06 $59
	ret nz                                           ; $751f: $c0

	ld [hl+], a                                      ; $7520: $22
	db $d3                                           ; $7521: $d3
	rst SubAFromHL                                          ; $7522: $d7
	ret nz                                           ; $7523: $c0

	ld hl, $d7d2                                     ; $7524: $21 $d2 $d7
	ret nz                                           ; $7527: $c0

	ld h, $df                                        ; $7528: $26 $df
	rst SubAFromHL                                          ; $752a: $d7
	ld [bc], a                                       ; $752b: $02
	or b                                             ; $752c: $b0
	add a                                            ; $752d: $87
	inc e                                            ; $752e: $1c
	ret nz                                           ; $752f: $c0

	ld [hl+], a                                      ; $7530: $22
	jp nc, $c0d7                                     ; $7531: $d2 $d7 $c0

	ld hl, $d7d1                                     ; $7534: $21 $d1 $d7
	ret nz                                           ; $7537: $c0

	ld h, $da                                        ; $7538: $26 $da
	rst SubAFromHL                                          ; $753a: $d7
	pop hl                                           ; $753b: $e1
	ld [bc], a                                       ; $753c: $02
	inc bc                                           ; $753d: $03
	rla                                              ; $753e: $17
	ret nz                                           ; $753f: $c0

	ld bc, $08a0                                     ; $7540: $01 $a0 $08
	ld b, $37                                        ; $7543: $06 $37
	ret nz                                           ; $7545: $c0

	ld bc, $01a0                                     ; $7546: $01 $a0 $01
	ld b, $63                                        ; $7549: $06 $63
	ld [bc], a                                       ; $754b: $02
	or b                                             ; $754c: $b0
	adc b                                            ; $754d: $88
	jr jr_085_7510                                   ; $754e: $18 $c0

	ld hl, $d7d1                                     ; $7550: $21 $d1 $d7
	ret nz                                           ; $7553: $c0

	inc hl                                           ; $7554: $23
	jp c, $e1d7                                      ; $7555: $da $d7 $e1

	ld [bc], a                                       ; $7558: $02
	inc bc                                           ; $7559: $03
	dec de                                           ; $755a: $1b
	ret nz                                           ; $755b: $c0

	ld bc, $08a0                                     ; $755c: $01 $a0 $08
	ld b, $6c                                        ; $755f: $06 $6c
	ret nz                                           ; $7561: $c0

	ld bc, $01a0                                     ; $7562: $01 $a0 $01
	ld b, $7d                                        ; $7565: $06 $7d
	jr c, jr_085_7572                                ; $7567: $38 $09

	pop bc                                           ; $7569: $c1
	cp l                                             ; $756a: $bd
	pop de                                           ; $756b: $d1
	ret nz                                           ; $756c: $c0

	ld bc, $01a0                                     ; $756d: $01 $a0 $01
	ld [bc], a                                       ; $7570: $02
	sub e                                            ; $7571: $93

jr_085_7572:
	sbc h                                            ; $7572: $9c
	jp nc, $80c0                                     ; $7573: $d2 $c0 $80

	ld bc, $30d3                                     ; $7576: $01 $d3 $30
	ld b, $83                                        ; $7579: $06 $83
	add hl, bc                                       ; $757b: $09
	inc c                                            ; $757c: $0c
	ret nz                                           ; $757d: $c0

	ld bc, $01a0                                     ; $757e: $01 $a0 $01
	ld b, $88                                        ; $7581: $06 $88
	ret nc                                           ; $7583: $d0

	adc e                                            ; $7584: $8b
	and b                                            ; $7585: $a0
	ld [hl-], a                                      ; $7586: $32
	or b                                             ; $7587: $b0
	add [hl]                                         ; $7588: $86
	ld b, $93                                        ; $7589: $06 $93
	add hl, bc                                       ; $758b: $09
	inc c                                            ; $758c: $0c
	ret nz                                           ; $758d: $c0

	ld bc, $01a0                                     ; $758e: $01 $a0 $01
	ld b, $97                                        ; $7591: $06 $97
	ret nc                                           ; $7593: $d0

	adc e                                            ; $7594: $8b
	and b                                            ; $7595: $a0
	ld [hl-], a                                      ; $7596: $32
	or b                                             ; $7597: $b0
	add a                                            ; $7598: $87
	ld b, $a0                                        ; $7599: $06 $a0
	add hl, bc                                       ; $759b: $09
	inc c                                            ; $759c: $0c
	ret nz                                           ; $759d: $c0

	ld bc, $01a0                                     ; $759e: $01 $a0 $01
	ld b, $a5                                        ; $75a1: $06 $a5
	ret nc                                           ; $75a3: $d0

	adc e                                            ; $75a4: $8b
	and b                                            ; $75a5: $a0
	ld [hl-], a                                      ; $75a6: $32
	or b                                             ; $75a7: $b0
	adc b                                            ; $75a8: $88
	ld bc, $30d2                                     ; $75a9: $01 $d2 $30
	ld b, $a0                                        ; $75ac: $06 $a0
	add hl, bc                                       ; $75ae: $09
	inc c                                            ; $75af: $0c
	ret nz                                           ; $75b0: $c0

	ld bc, $01a0                                     ; $75b1: $01 $a0 $01
	ld b, $a5                                        ; $75b4: $06 $a5
	ret nc                                           ; $75b6: $d0

	adc e                                            ; $75b7: $8b
	and b                                            ; $75b8: $a0
	ld [hl-], a                                      ; $75b9: $32
	or b                                             ; $75ba: $b0
	add [hl]                                         ; $75bb: $86
	ld b, $af                                        ; $75bc: $06 $af
	add hl, bc                                       ; $75be: $09
	inc c                                            ; $75bf: $0c
	ret nz                                           ; $75c0: $c0

	ld bc, $01a0                                     ; $75c1: $01 $a0 $01
	ld b, $b5                                        ; $75c4: $06 $b5
	ret nc                                           ; $75c6: $d0

	adc e                                            ; $75c7: $8b
	and b                                            ; $75c8: $a0
	ld [hl-], a                                      ; $75c9: $32
	or b                                             ; $75ca: $b0
	add a                                            ; $75cb: $87
	ld b, $c0                                        ; $75cc: $06 $c0
	add hl, bc                                       ; $75ce: $09
	inc c                                            ; $75cf: $0c
	ret nz                                           ; $75d0: $c0

	ld bc, $01a0                                     ; $75d1: $01 $a0 $01
	ld b, $c4                                        ; $75d4: $06 $c4
	ret nc                                           ; $75d6: $d0

	adc e                                            ; $75d7: $8b
	and b                                            ; $75d8: $a0
	ld [hl-], a                                      ; $75d9: $32
	or b                                             ; $75da: $b0
	adc b                                            ; $75db: $88
	ld bc, $30d1                                     ; $75dc: $01 $d1 $30
	ld b, $cd                                        ; $75df: $06 $cd
	add hl, bc                                       ; $75e1: $09
	inc c                                            ; $75e2: $0c
	ret nz                                           ; $75e3: $c0

	ld bc, $01a0                                     ; $75e4: $01 $a0 $01
	ld b, $d5                                        ; $75e7: $06 $d5
	ret nc                                           ; $75e9: $d0

	adc e                                            ; $75ea: $8b
	and b                                            ; $75eb: $a0
	ld [hl-], a                                      ; $75ec: $32
	or b                                             ; $75ed: $b0
	add [hl]                                         ; $75ee: $86
	ld b, $e3                                        ; $75ef: $06 $e3
	add hl, bc                                       ; $75f1: $09
	inc c                                            ; $75f2: $0c
	ret nz                                           ; $75f3: $c0

	ld bc, $01a0                                     ; $75f4: $01 $a0 $01
	ld b, $eb                                        ; $75f7: $06 $eb
	ret nc                                           ; $75f9: $d0

	adc e                                            ; $75fa: $8b
	and b                                            ; $75fb: $a0
	ld [hl-], a                                      ; $75fc: $32
	or b                                             ; $75fd: $b0
	add a                                            ; $75fe: $87
	ld b, $f8                                        ; $75ff: $06 $f8
	add hl, bc                                       ; $7601: $09
	inc c                                            ; $7602: $0c
	ret nz                                           ; $7603: $c0

	ld bc, $01a0                                     ; $7604: $01 $a0 $01
	ld b, $fd                                        ; $7607: $06 $fd
	ret nc                                           ; $7609: $d0

	adc e                                            ; $760a: $8b
	and b                                            ; $760b: $a0
	ld [hl-], a                                      ; $760c: $32
	or b                                             ; $760d: $b0
	adc b                                            ; $760e: $88
	inc bc                                           ; $760f: $03
	db $e4                                           ; $7610: $e4
	nop                                              ; $7611: $00
	ld [bc], a                                       ; $7612: $02
	add hl, bc                                       ; $7613: $09
	pop bc                                           ; $7614: $c1
	ld a, [hl-]                                      ; $7615: $3a
	add d                                            ; $7616: $82
	adc e                                            ; $7617: $8b
	ld bc, $0202                                     ; $7618: $01 $02 $02
	or b                                             ; $761b: $b0
	ld [bc], a                                       ; $761c: $02
	ld c, d                                          ; $761d: $4a
	ret nz                                           ; $761e: $c0

	set 0, b                                         ; $761f: $cb $c0
	rrca                                             ; $7621: $0f
	db $e3                                           ; $7622: $e3
	nop                                              ; $7623: $00
	inc a                                            ; $7624: $3c
	ret nz                                           ; $7625: $c0

	ld bc, $01a0                                     ; $7626: $01 $a0 $01
	rlca                                             ; $7629: $07
	ld b, $e1                                        ; $762a: $06 $e1
	ld [bc], a                                       ; $762c: $02
	ld [bc], a                                       ; $762d: $02
	db $10                                           ; $762e: $10
	add e                                            ; $762f: $83
	ret nz                                           ; $7630: $c0

	dec de                                           ; $7631: $1b
	ret c                                            ; $7632: $d8

	ld [bc], a                                       ; $7633: $02
	ret nc                                           ; $7634: $d0

	pop de                                           ; $7635: $d1
	ld b, $c0                                        ; $7636: $06 $c0
	ld bc, $09a0                                     ; $7638: $01 $a0 $09
	rlca                                             ; $763b: $07
	ld a, [bc]                                       ; $763c: $0a
	ld [bc], a                                       ; $763d: $02
	jp nc, $06d3                                     ; $763e: $d2 $d3 $06

	ret nz                                           ; $7641: $c0

	ld bc, $09a0                                     ; $7642: $01 $a0 $09
	rlca                                             ; $7645: $07
	db $10                                           ; $7646: $10
	ld bc, $06d4                                     ; $7647: $01 $d4 $06
	ret nz                                           ; $764a: $c0

	ld bc, $09a0                                     ; $764b: $01 $a0 $09
	rlca                                             ; $764e: $07
	inc d                                            ; $764f: $14
	ld bc, $06d5                                     ; $7650: $01 $d5 $06
	ret nz                                           ; $7653: $c0

	ld bc, $09a0                                     ; $7654: $01 $a0 $09
	rlca                                             ; $7657: $07
	rla                                              ; $7658: $17
	ret nz                                           ; $7659: $c0

	ld bc, $01a0                                     ; $765a: $01 $a0 $01
	ld [bc], a                                       ; $765d: $02
	inc e                                            ; $765e: $1c
	ldh [rP1], a                                     ; $765f: $e0 $00
	ldh a, [$e0]                                     ; $7661: $f0 $e0
	ld bc, $e41e                                     ; $7663: $01 $1e $e4
	ld b, $85                                        ; $7666: $06 $85
	ld [bc], a                                       ; $7668: $02
	or b                                             ; $7669: $b0
	dec e                                            ; $766a: $1d
	ret nz                                           ; $766b: $c0

	call z, $01c0                                    ; $766c: $cc $c0 $01
	and b                                            ; $766f: $a0
	ld bc, $1e07                                     ; $7670: $01 $07 $1e
	ld h, b                                          ; $7673: $60
	add b                                            ; $7674: $80
	nop                                              ; $7675: $00
	ld a, e                                          ; $7676: $7b
	or a                                             ; $7677: $b7
	pop hl                                           ; $7678: $e1
	ld [bc], a                                       ; $7679: $02
	ld c, $65                                        ; $767a: $0e $65
	pop bc                                           ; $767c: $c1
	rlca                                             ; $767d: $07
	jp nc, $c0d0                                     ; $767e: $d2 $d0 $c0

	ld bc, $09a0                                     ; $7681: $01 $a0 $09
	rlca                                             ; $7684: $07
	ld a, [hl+]                                      ; $7685: $2a
	ret nz                                           ; $7686: $c0

	ld bc, $01a0                                     ; $7687: $01 $a0 $01
	dec b                                            ; $768a: $05
	dec [hl]                                         ; $768b: $35
	add e                                            ; $768c: $83
	ret nz                                           ; $768d: $c0

	dec de                                           ; $768e: $1b
	ret c                                            ; $768f: $d8

	ld [bc], a                                       ; $7690: $02
	ret nc                                           ; $7691: $d0

	pop de                                           ; $7692: $d1
	ld b, $c0                                        ; $7693: $06 $c0
	ld bc, $09a0                                     ; $7695: $01 $a0 $09
	rlca                                             ; $7698: $07
	ld l, $02                                        ; $7699: $2e $02
	jp nc, $06d3                                     ; $769b: $d2 $d3 $06

	ret nz                                           ; $769e: $c0

	ld bc, $09a0                                     ; $769f: $01 $a0 $09
	rlca                                             ; $76a2: $07
	dec [hl]                                         ; $76a3: $35
	ld bc, $06d4                                     ; $76a4: $01 $d4 $06
	ret nz                                           ; $76a7: $c0

	ld bc, $09a0                                     ; $76a8: $01 $a0 $09
	rlca                                             ; $76ab: $07
	add hl, sp                                       ; $76ac: $39
	ld bc, $0cd5                                     ; $76ad: $01 $d5 $0c
	ret nz                                           ; $76b0: $c0

	ld bc, $09a0                                     ; $76b1: $01 $a0 $09
	rlca                                             ; $76b4: $07
	dec sp                                           ; $76b5: $3b
	ret nz                                           ; $76b6: $c0

	ld bc, $01a0                                     ; $76b7: $01 $a0 $01
	rlca                                             ; $76ba: $07
	ld b, b                                          ; $76bb: $40
	ret nz                                           ; $76bc: $c0

	ld bc, $01a0                                     ; $76bd: $01 $a0 $01
	dec b                                            ; $76c0: $05
	add b                                            ; $76c1: $80
	add d                                            ; $76c2: $82
	ret nz                                           ; $76c3: $c0

	dec de                                           ; $76c4: $1b
	ret c                                            ; $76c5: $d8

	inc b                                            ; $76c6: $04
	ret nc                                           ; $76c7: $d0

	pop de                                           ; $76c8: $d1
	jp nc, $06d3                                     ; $76c9: $d2 $d3 $06

	ret nz                                           ; $76cc: $c0

	ld bc, $09a0                                     ; $76cd: $01 $a0 $09
	rlca                                             ; $76d0: $07
	ld c, d                                          ; $76d1: $4a
	ld bc, $06d4                                     ; $76d2: $01 $d4 $06

jr_085_76d5:
	ret nz                                           ; $76d5: $c0

	ld bc, $09a0                                     ; $76d6: $01 $a0 $09
	rlca                                             ; $76d9: $07
	ld d, h                                          ; $76da: $54
	ld bc, $06d5                                     ; $76db: $01 $d5 $06
	ret nz                                           ; $76de: $c0

	ld bc, $09a0                                     ; $76df: $01 $a0 $09
	rlca                                             ; $76e2: $07
	ld e, c                                          ; $76e3: $59
	ret nz                                           ; $76e4: $c0

	ld bc, $01a0                                     ; $76e5: $01 $a0 $01
	dec b                                            ; $76e8: $05
	or e                                             ; $76e9: $b3
	ldh [rTIMA], a                                   ; $76ea: $e0 $05
	or $c0                                           ; $76ec: $f6 $c0
	ld bc, $01a0                                     ; $76ee: $01 $a0 $01
	dec b                                            ; $76f1: $05
	cp c                                             ; $76f2: $b9
	pop bc                                           ; $76f3: $c1
	ld e, c                                          ; $76f4: $59
	db $e3                                           ; $76f5: $e3
	nop                                              ; $76f6: $00
	ld a, a                                          ; $76f7: $7f
	pop hl                                           ; $76f8: $e1
	ld [bc], a                                       ; $76f9: $02
	ld [bc], a                                       ; $76fa: $02
	jr z, @-$7c                                      ; $76fb: $28 $82

	ret nz                                           ; $76fd: $c0

	dec de                                           ; $76fe: $1b
	ret c                                            ; $76ff: $d8

	inc b                                            ; $7700: $04
	ret nc                                           ; $7701: $d0

	pop de                                           ; $7702: $d1
	jp nc, $06d3                                     ; $7703: $d2 $d3 $06

	ret nz                                           ; $7706: $c0

	ld bc, $09a0                                     ; $7707: $01 $a0 $09
	rlca                                             ; $770a: $07
	ld e, l                                          ; $770b: $5d
	ld bc, $06d4                                     ; $770c: $01 $d4 $06
	ret nz                                           ; $770f: $c0

	ld bc, $09a0                                     ; $7710: $01 $a0 $09
	rlca                                             ; $7713: $07
	ld h, h                                          ; $7714: $64
	ld bc, $06d5                                     ; $7715: $01 $d5 $06
	ret nz                                           ; $7718: $c0

	ld bc, $09a0                                     ; $7719: $01 $a0 $09
	rlca                                             ; $771c: $07
	ld h, [hl]                                       ; $771d: $66
	ret nz                                           ; $771e: $c0

	ld bc, $01a0                                     ; $771f: $01 $a0 $01
	ld [bc], a                                       ; $7722: $02
	inc e                                            ; $7723: $1c
	ldh [rP1], a                                     ; $7724: $e0 $00
	dec hl                                           ; $7726: $2b
	ldh [rP1], a                                     ; $7727: $e0 $00
	ld e, c                                          ; $7729: $59
	ret nz                                           ; $772a: $c0

	push af                                          ; $772b: $f5
	db $e4                                           ; $772c: $e4
	ldh a, [c]                                       ; $772d: $f2
	db $d3                                           ; $772e: $d3
	add hl, bc                                       ; $772f: $09
	ret nz                                           ; $7730: $c0

	ld bc, $01a0                                     ; $7731: $01 $a0 $01
	dec b                                            ; $7734: $05
	rst SubAFromDE                                          ; $7735: $df
	db $e4                                           ; $7736: $e4
	ldh a, [c]                                       ; $7737: $f2
	ret                                              ; $7738: $c9


	ld [bc], a                                       ; $7739: $02
	or b                                             ; $773a: $b0
	add c                                            ; $773b: $81
	db $10                                           ; $773c: $10
	ret nz                                           ; $773d: $c0

	ld bc, $01a0                                     ; $773e: $01 $a0 $01
	dec b                                            ; $7741: $05
	xor $e0                                          ; $7742: $ee $e0
	nop                                              ; $7744: $00
	inc c                                            ; $7745: $0c
	ldh [rP1], a                                     ; $7746: $e0 $00
	or d                                             ; $7748: $b2
	push hl                                          ; $7749: $e5
	daa                                              ; $774a: $27
	ld bc, $e4e4                                     ; $774b: $01 $e4 $e4
	dec b                                            ; $774e: $05
	sbc l                                            ; $774f: $9d
	jr nc, jr_085_76d5                               ; $7750: $30 $83

	ret nz                                           ; $7752: $c0

	dec de                                           ; $7753: $1b
	ret c                                            ; $7754: $d8

	ld [bc], a                                       ; $7755: $02
	ret nc                                           ; $7756: $d0

	pop de                                           ; $7757: $d1
	ld b, $c0                                        ; $7758: $06 $c0
	ld bc, $09a0                                     ; $775a: $01 $a0 $09
	rlca                                             ; $775d: $07
	ld l, c                                          ; $775e: $69
	ld [bc], a                                       ; $775f: $02
	jp nc, $06d3                                     ; $7760: $d2 $d3 $06

	ret nz                                           ; $7763: $c0

	ld bc, $09a0                                     ; $7764: $01 $a0 $09
	rlca                                             ; $7767: $07
	ld [hl], e                                       ; $7768: $73
	ld bc, $06d4                                     ; $7769: $01 $d4 $06
	ret nz                                           ; $776c: $c0

	ld bc, $09a0                                     ; $776d: $01 $a0 $09
	rlca                                             ; $7770: $07
	ld a, l                                          ; $7771: $7d
	ld bc, $06d5                                     ; $7772: $01 $d5 $06
	ret nz                                           ; $7775: $c0

	ld bc, $09a0                                     ; $7776: $01 $a0 $09
	rlca                                             ; $7779: $07
	add [hl]                                         ; $777a: $86
	ret nz                                           ; $777b: $c0

	ld bc, $01a0                                     ; $777c: $01 $a0 $01
	inc bc                                           ; $777f: $03
	ld l, l                                          ; $7780: $6d
	ld [hl], a                                       ; $7781: $77
	add d                                            ; $7782: $82
	adc e                                            ; $7783: $8b
	and b                                            ; $7784: $a0
	ld [hl-], a                                      ; $7785: $32
	ld [bc], a                                       ; $7786: $02
	or b                                             ; $7787: $b0
	add [hl]                                         ; $7788: $86
	cpl                                              ; $7789: $2f
	ld h, b                                          ; $778a: $60
	db $fd                                           ; $778b: $fd
	ret nz                                           ; $778c: $c0

	dec de                                           ; $778d: $1b
	ret c                                            ; $778e: $d8

	push de                                          ; $778f: $d5
	inc b                                            ; $7790: $04
	pop hl                                           ; $7791: $e1
	ld [bc], a                                       ; $7792: $02
	inc bc                                           ; $7793: $03
	inc de                                           ; $7794: $13
	inc b                                            ; $7795: $04
	pop hl                                           ; $7796: $e1
	ld [bc], a                                       ; $7797: $02
	inc bc                                           ; $7798: $03
	rla                                              ; $7799: $17
	pop bc                                           ; $779a: $c1
	or d                                             ; $779b: $b2
	db $e3                                           ; $779c: $e3
	nop                                              ; $779d: $00
	ld h, [hl]                                       ; $779e: $66
	ret nz                                           ; $779f: $c0

	ld bc, $09a0                                     ; $77a0: $01 $a0 $09
	rlca                                             ; $77a3: $07
	adc h                                            ; $77a4: $8c
	pop bc                                           ; $77a5: $c1
	ld e, e                                          ; $77a6: $5b
	ret nz                                           ; $77a7: $c0

	ld bc, $01a0                                     ; $77a8: $01 $a0 $01
	ld [bc], a                                       ; $77ab: $02
	ld l, b                                          ; $77ac: $68
	ret nz                                           ; $77ad: $c0

	ld [hl+], a                                      ; $77ae: $22
	db $d3                                           ; $77af: $d3
	ret c                                            ; $77b0: $d8

	ret nz                                           ; $77b1: $c0

	ld hl, $d8d2                                     ; $77b2: $21 $d2 $d8
	ret nz                                           ; $77b5: $c0

	ld h, $df                                        ; $77b6: $26 $df
	ret c                                            ; $77b8: $d8

	ld [bc], a                                       ; $77b9: $02
	or b                                             ; $77ba: $b0
	add a                                            ; $77bb: $87
	ld e, $c0                                        ; $77bc: $1e $c0
	ld [hl+], a                                      ; $77be: $22
	jp nc, $c0d8                                     ; $77bf: $d2 $d8 $c0

	ld hl, $d8d1                                     ; $77c2: $21 $d1 $d8
	ret nz                                           ; $77c5: $c0

	ld h, $da                                        ; $77c6: $26 $da
	ret c                                            ; $77c8: $d8

	pop hl                                           ; $77c9: $e1
	ld [bc], a                                       ; $77ca: $02
	inc bc                                           ; $77cb: $03
	rla                                              ; $77cc: $17
	ret nz                                           ; $77cd: $c0

	ld bc, $09a0                                     ; $77ce: $01 $a0 $09
	rlca                                             ; $77d1: $07
	sbc e                                            ; $77d2: $9b
	pop bc                                           ; $77d3: $c1
	ld e, e                                          ; $77d4: $5b
	ret nz                                           ; $77d5: $c0

	ld bc, $01a0                                     ; $77d6: $01 $a0 $01
	ld [bc], a                                       ; $77d9: $02
	ld a, c                                          ; $77da: $79
	ld [bc], a                                       ; $77db: $02
	or b                                             ; $77dc: $b0
	adc b                                            ; $77dd: $88
	ld a, [de]                                       ; $77de: $1a
	ret nz                                           ; $77df: $c0

	ld hl, $d8d1                                     ; $77e0: $21 $d1 $d8
	ret nz                                           ; $77e3: $c0

	inc hl                                           ; $77e4: $23
	jp c, $e1d8                                      ; $77e5: $da $d8 $e1

	ld [bc], a                                       ; $77e8: $02
	inc bc                                           ; $77e9: $03
	dec de                                           ; $77ea: $1b
	ret nz                                           ; $77eb: $c0

	ld bc, $09a0                                     ; $77ec: $01 $a0 $09
	rlca                                             ; $77ef: $07
	and a                                            ; $77f0: $a7
	pop bc                                           ; $77f1: $c1
	ld e, e                                          ; $77f2: $5b
	ret nz                                           ; $77f3: $c0

	ld bc, $01a0                                     ; $77f4: $01 $a0 $01
	ld [bc], a                                       ; $77f7: $02
	adc l                                            ; $77f8: $8d
	ld [hl], c                                       ; $77f9: $71
	add d                                            ; $77fa: $82
	adc e                                            ; $77fb: $8b
	and b                                            ; $77fc: $a0
	ld [hl-], a                                      ; $77fd: $32
	ld [bc], a                                       ; $77fe: $02
	or b                                             ; $77ff: $b0
	add [hl]                                         ; $7800: $86
	dec l                                            ; $7801: $2d
	ld h, b                                          ; $7802: $60
	db $fd                                           ; $7803: $fd
	ret nz                                           ; $7804: $c0

	dec de                                           ; $7805: $1b
	ret c                                            ; $7806: $d8

	push de                                          ; $7807: $d5
	inc b                                            ; $7808: $04
	pop hl                                           ; $7809: $e1
	ld [bc], a                                       ; $780a: $02
	inc bc                                           ; $780b: $03
	inc de                                           ; $780c: $13
	inc b                                            ; $780d: $04
	pop hl                                           ; $780e: $e1
	ld [bc], a                                       ; $780f: $02
	inc bc                                           ; $7810: $03
	rla                                              ; $7811: $17
	pop bc                                           ; $7812: $c1
	or d                                             ; $7813: $b2

jr_085_7814:
	db $e3                                           ; $7814: $e3
	nop                                              ; $7815: $00
	ld h, [hl]                                       ; $7816: $66
	ret nz                                           ; $7817: $c0

	ld bc, $09a0                                     ; $7818: $01 $a0 $09
	rlca                                             ; $781b: $07
	adc h                                            ; $781c: $8c
	ret nz                                           ; $781d: $c0

	ld bc, $01a0                                     ; $781e: $01 $a0 $01
	ld [bc], a                                       ; $7821: $02
	ld l, b                                          ; $7822: $68
	ret nz                                           ; $7823: $c0

	ld [hl+], a                                      ; $7824: $22
	db $d3                                           ; $7825: $d3
	ret c                                            ; $7826: $d8

	ret nz                                           ; $7827: $c0

	ld hl, $d8d2                                     ; $7828: $21 $d2 $d8
	ret nz                                           ; $782b: $c0

	ld h, $df                                        ; $782c: $26 $df
	ret c                                            ; $782e: $d8

	ld [bc], a                                       ; $782f: $02
	or b                                             ; $7830: $b0
	add a                                            ; $7831: $87
	inc e                                            ; $7832: $1c
	ret nz                                           ; $7833: $c0

	ld [hl+], a                                      ; $7834: $22
	jp nc, $c0d8                                     ; $7835: $d2 $d8 $c0

	ld hl, $d8d1                                     ; $7838: $21 $d1 $d8
	ret nz                                           ; $783b: $c0

	ld h, $da                                        ; $783c: $26 $da
	ret c                                            ; $783e: $d8

	pop hl                                           ; $783f: $e1
	ld [bc], a                                       ; $7840: $02
	inc bc                                           ; $7841: $03
	rla                                              ; $7842: $17
	ret nz                                           ; $7843: $c0

	ld bc, $09a0                                     ; $7844: $01 $a0 $09
	rlca                                             ; $7847: $07
	sbc e                                            ; $7848: $9b
	ret nz                                           ; $7849: $c0

	ld bc, $01a0                                     ; $784a: $01 $a0 $01
	ld [bc], a                                       ; $784d: $02
	ld a, c                                          ; $784e: $79
	ld [bc], a                                       ; $784f: $02
	or b                                             ; $7850: $b0
	adc b                                            ; $7851: $88
	jr jr_085_7814                                   ; $7852: $18 $c0

	ld hl, $d8d1                                     ; $7854: $21 $d1 $d8
	ret nz                                           ; $7857: $c0

	inc hl                                           ; $7858: $23
	jp c, $e1d8                                      ; $7859: $da $d8 $e1

	ld [bc], a                                       ; $785c: $02
	inc bc                                           ; $785d: $03
	dec de                                           ; $785e: $1b
	ret nz                                           ; $785f: $c0

	ld bc, $09a0                                     ; $7860: $01 $a0 $09
	rlca                                             ; $7863: $07
	and a                                            ; $7864: $a7
	ret nz                                           ; $7865: $c0

	ld bc, $01a0                                     ; $7866: $01 $a0 $01
	ld [bc], a                                       ; $7869: $02
	adc l                                            ; $786a: $8d
	jr c, jr_085_7876                                ; $786b: $38 $09

	pop bc                                           ; $786d: $c1
	cp l                                             ; $786e: $bd
	pop de                                           ; $786f: $d1
	ret nz                                           ; $7870: $c0

	ld bc, $01a0                                     ; $7871: $01 $a0 $01
	ld [bc], a                                       ; $7874: $02
	sub e                                            ; $7875: $93

jr_085_7876:
	ld l, l                                          ; $7876: $6d
	pop de                                           ; $7877: $d1
	ret nz                                           ; $7878: $c0

	add b                                            ; $7879: $80
	ld bc, $34d3                                     ; $787a: $01 $d3 $34
	rlca                                             ; $787d: $07
	xor a                                            ; $787e: $af
	add hl, bc                                       ; $787f: $09
	db $10                                           ; $7880: $10
	ret nz                                           ; $7881: $c0

	ld bc, $01a0                                     ; $7882: $01 $a0 $01
	rlca                                             ; $7885: $07
	or a                                             ; $7886: $b7
	nop                                              ; $7887: $00
	add b                                            ; $7888: $80
	ld [bc], a                                       ; $7889: $02
	and a                                            ; $788a: $a7
	ret nc                                           ; $788b: $d0

	adc e                                            ; $788c: $8b
	and b                                            ; $788d: $a0
	ld a, $b0                                        ; $788e: $3e $b0
	add [hl]                                         ; $7890: $86
	rlca                                             ; $7891: $07
	call nz, $0c09                                   ; $7892: $c4 $09 $0c
	ret nz                                           ; $7895: $c0

	ld bc, $01a0                                     ; $7896: $01 $a0 $01
	rlca                                             ; $7899: $07
	rst JumpTable                                          ; $789a: $c7
	ret nc                                           ; $789b: $d0

	adc e                                            ; $789c: $8b
	and b                                            ; $789d: $a0
	ld a, $b0                                        ; $789e: $3e $b0
	add a                                            ; $78a0: $87
	rlca                                             ; $78a1: $07
	rst GetHLinHL                                          ; $78a2: $cf
	add hl, bc                                       ; $78a3: $09
	inc c                                            ; $78a4: $0c
	ret nz                                           ; $78a5: $c0

	ld bc, $01a0                                     ; $78a6: $01 $a0 $01
	rlca                                             ; $78a9: $07
	jp nc, $8bd0                                     ; $78aa: $d2 $d0 $8b

	and b                                            ; $78ad: $a0
	ld a, $b0                                        ; $78ae: $3e $b0
	adc b                                            ; $78b0: $88
	ld bc, $30d2                                     ; $78b1: $01 $d2 $30
	rlca                                             ; $78b4: $07
	jp c, $0c09                                      ; $78b5: $da $09 $0c

	ret nz                                           ; $78b8: $c0

	ld bc, $01a0                                     ; $78b9: $01 $a0 $01
	rlca                                             ; $78bc: $07
	ldh [c], a                                       ; $78bd: $e2
	ret nc                                           ; $78be: $d0

	adc e                                            ; $78bf: $8b
	and b                                            ; $78c0: $a0
	ld a, $b0                                        ; $78c1: $3e $b0
	add [hl]                                         ; $78c3: $86
	rlca                                             ; $78c4: $07
	ldh a, [$09]                                     ; $78c5: $f0 $09
	inc c                                            ; $78c7: $0c
	ret nz                                           ; $78c8: $c0

	ld bc, $01a0                                     ; $78c9: $01 $a0 $01
	rlca                                             ; $78cc: $07
	ldh a, [c]                                       ; $78cd: $f2
	ret nc                                           ; $78ce: $d0

	adc e                                            ; $78cf: $8b
	and b                                            ; $78d0: $a0
	ld a, $b0                                        ; $78d1: $3e $b0
	add a                                            ; $78d3: $87
	rlca                                             ; $78d4: $07
	ld hl, sp+$09                                    ; $78d5: $f8 $09
	inc c                                            ; $78d7: $0c
	ret nz                                           ; $78d8: $c0

	ld bc, $01a0                                     ; $78d9: $01 $a0 $01
	rlca                                             ; $78dc: $07
	cp $d0                                           ; $78dd: $fe $d0
	adc e                                            ; $78df: $8b
	and b                                            ; $78e0: $a0
	ld a, $b0                                        ; $78e1: $3e $b0
	adc b                                            ; $78e3: $88
	inc bc                                           ; $78e4: $03
	db $e4                                           ; $78e5: $e4
	nop                                              ; $78e6: $00
	ld [bc], a                                       ; $78e7: $02
	add hl, bc                                       ; $78e8: $09
	pop bc                                           ; $78e9: $c1
	ld a, [hl+]                                      ; $78ea: $2a
	add d                                            ; $78eb: $82
	adc e                                            ; $78ec: $8b
	ld bc, $020f                                     ; $78ed: $01 $0f $02
	or b                                             ; $78f0: $b0
	ld [bc], a                                       ; $78f1: $02
	ld c, d                                          ; $78f2: $4a
	ret nz                                           ; $78f3: $c0

	set 0, b                                         ; $78f4: $cb $c0
	rrca                                             ; $78f6: $0f
	db $e3                                           ; $78f7: $e3
	nop                                              ; $78f8: $00
	inc a                                            ; $78f9: $3c
	ret nz                                           ; $78fa: $c0

	ld bc, $01a0                                     ; $78fb: $01 $a0 $01
	ld [$e108], sp                                   ; $78fe: $08 $08 $e1
	ld [bc], a                                       ; $7901: $02
	ld [bc], a                                       ; $7902: $02
	ld b, b                                          ; $7903: $40
	add e                                            ; $7904: $83
	ret nz                                           ; $7905: $c0

	dec de                                           ; $7906: $1b
	jp c, $d002                                      ; $7907: $da $02 $d0

	pop de                                           ; $790a: $d1
	ld b, $c0                                        ; $790b: $06 $c0
	ld bc, $06a0                                     ; $790d: $01 $a0 $06
	ld [$020c], sp                                   ; $7910: $08 $0c $02
	jp nc, $06d3                                     ; $7913: $d2 $d3 $06

	ret nz                                           ; $7916: $c0

	ld bc, $06a0                                     ; $7917: $01 $a0 $06
	ld [$0112], sp                                   ; $791a: $08 $12 $01
	call nc, $c006                                   ; $791d: $d4 $06 $c0
	ld bc, $06a0                                     ; $7920: $01 $a0 $06
	ld [$0116], sp                                   ; $7923: $08 $16 $01
	push de                                          ; $7926: $d5
	ld b, $c0                                        ; $7927: $06 $c0
	ld bc, $06a0                                     ; $7929: $01 $a0 $06
	ld [$c01a], sp                                   ; $792c: $08 $1a $c0
	ld bc, $01a0                                     ; $792f: $01 $a0 $01
	ld [bc], a                                       ; $7932: $02
	inc e                                            ; $7933: $1c
	ldh [rP1], a                                     ; $7934: $e0 $00
	ldh [$e0], a                                     ; $7936: $e0 $e0
	ld bc, $e40e                                     ; $7938: $01 $0e $e4
	inc bc                                           ; $793b: $03
	or b                                             ; $793c: $b0
	ld [bc], a                                       ; $793d: $02
	or b                                             ; $793e: $b0
	dec e                                            ; $793f: $1d
	cp l                                             ; $7940: $bd
	ret nz                                           ; $7941: $c0

	ld bc, $01a0                                     ; $7942: $01 $a0 $01
	ld [$e11b], sp                                   ; $7945: $08 $1b $e1
	ld [bc], a                                       ; $7948: $02
	ld c, $65                                        ; $7949: $0e $65
	pop bc                                           ; $794b: $c1
	rlca                                             ; $794c: $07
	jp nc, $c0d0                                     ; $794d: $d2 $d0 $c0

	ld bc, $06a0                                     ; $7950: $01 $a0 $06
	ld [$c027], sp                                   ; $7953: $08 $27 $c0
	ld bc, $01a0                                     ; $7956: $01 $a0 $01
	dec b                                            ; $7959: $05
	dec [hl]                                         ; $795a: $35
	add e                                            ; $795b: $83
	ret nz                                           ; $795c: $c0

	dec de                                           ; $795d: $1b
	jp c, $d002                                      ; $795e: $da $02 $d0

	pop de                                           ; $7961: $d1
	ld b, $c0                                        ; $7962: $06 $c0
	ld bc, $06a0                                     ; $7964: $01 $a0 $06
	ld [$0228], sp                                   ; $7967: $08 $28 $02
	jp nc, $06d3                                     ; $796a: $d2 $d3 $06

	ret nz                                           ; $796d: $c0

	ld bc, $06a0                                     ; $796e: $01 $a0 $06
	ld [$012e], sp                                   ; $7971: $08 $2e $01
	call nc, $c006                                   ; $7974: $d4 $06 $c0
	ld bc, $06a0                                     ; $7977: $01 $a0 $06
	ld [$0135], sp                                   ; $797a: $08 $35 $01
	push de                                          ; $797d: $d5
	inc c                                            ; $797e: $0c
	ret nz                                           ; $797f: $c0

	ld bc, $06a0                                     ; $7980: $01 $a0 $06
	ld [$c03b], sp                                   ; $7983: $08 $3b $c0
	ld bc, $01a0                                     ; $7986: $01 $a0 $01
	ld [$c03d], sp                                   ; $7989: $08 $3d $c0
	ld bc, $01a0                                     ; $798c: $01 $a0 $01
	dec b                                            ; $798f: $05
	add b                                            ; $7990: $80
	add d                                            ; $7991: $82
	ret nz                                           ; $7992: $c0

	dec de                                           ; $7993: $1b
	jp c, $d004                                      ; $7994: $da $04 $d0

	pop de                                           ; $7997: $d1
	jp nc, $06d3                                     ; $7998: $d2 $d3 $06

	ret nz                                           ; $799b: $c0

	ld bc, $06a0                                     ; $799c: $01 $a0 $06
	ld [$0147], sp                     ; $799f: $08 $47 $01
	call nc, $c006                                   ; $79a2: $d4 $06 $c0
	ld bc, $06a0                                     ; $79a5: $01 $a0 $06
	ld [$014b], sp                   ; $79a8: $08 $4b $01
	push de                                          ; $79ab: $d5
	ld b, $c0                                        ; $79ac: $06 $c0
	ld bc, $06a0                                     ; $79ae: $01 $a0 $06
	ld [$c04f], sp                                   ; $79b1: $08 $4f $c0
	ld bc, $01a0                                     ; $79b4: $01 $a0 $01
	dec b                                            ; $79b7: $05
	or e                                             ; $79b8: $b3
	ldh [$03], a                                     ; $79b9: $e0 $03
	daa                                              ; $79bb: $27
	ret nz                                           ; $79bc: $c0

	ld bc, $01a0                                     ; $79bd: $01 $a0 $01
	dec b                                            ; $79c0: $05
	cp c                                             ; $79c1: $b9
	pop bc                                           ; $79c2: $c1
	ld e, c                                          ; $79c3: $59
	db $e3                                           ; $79c4: $e3
	nop                                              ; $79c5: $00
	ld a, a                                          ; $79c6: $7f
	pop hl                                           ; $79c7: $e1
	ld [bc], a                                       ; $79c8: $02
	ld [bc], a                                       ; $79c9: $02
	ld e, b                                          ; $79ca: $58
	add d                                            ; $79cb: $82
	ret nz                                           ; $79cc: $c0

	dec de                                           ; $79cd: $1b
	jp c, $d004                                      ; $79ce: $da $04 $d0

	pop de                                           ; $79d1: $d1
	jp nc, $06d3                                     ; $79d2: $d2 $d3 $06

	ret nz                                           ; $79d5: $c0

	ld bc, $06a0                                     ; $79d6: $01 $a0 $06
	ld [$0154], sp                                   ; $79d9: $08 $54 $01
	call nc, $c006                                   ; $79dc: $d4 $06 $c0
	ld bc, $06a0                                     ; $79df: $01 $a0 $06
	ld [$015a], sp                                   ; $79e2: $08 $5a $01
	push de                                          ; $79e5: $d5
	ld b, $c0                                        ; $79e6: $06 $c0
	ld bc, $06a0                                     ; $79e8: $01 $a0 $06
	ld [$c05f], sp                                   ; $79eb: $08 $5f $c0
	ld bc, $01a0                                     ; $79ee: $01 $a0 $01
	ld [bc], a                                       ; $79f1: $02
	inc e                                            ; $79f2: $1c
	ldh [rP1], a                                     ; $79f3: $e0 $00
	ld hl, $00e0                                     ; $79f5: $21 $e0 $00
	ld c, a                                          ; $79f8: $4f
	ret nz                                           ; $79f9: $c0

	push af                                          ; $79fa: $f5
	db $e4                                           ; $79fb: $e4
	ldh a, [rDIV]                                    ; $79fc: $f0 $04
	ld [bc], a                                       ; $79fe: $02
	or b                                             ; $79ff: $b0
	add c                                            ; $7a00: $81
	db $10                                           ; $7a01: $10
	ret nz                                           ; $7a02: $c0

	ld bc, $01a0                                     ; $7a03: $01 $a0 $01
	dec b                                            ; $7a06: $05
	xor $e0                                          ; $7a07: $ee $e0
	nop                                              ; $7a09: $00
	inc c                                            ; $7a0a: $0c
	ldh [rP1], a                                     ; $7a0b: $e0 $00
	cp b                                             ; $7a0d: $b8
	push hl                                          ; $7a0e: $e5
	dec hl                                           ; $7a0f: $2b
	ld bc, $e4d6                                     ; $7a10: $01 $d6 $e4
	ld [bc], a                                       ; $7a13: $02
	ret c                                            ; $7a14: $d8

	jr nc, @-$7b                                     ; $7a15: $30 $83

	ret nz                                           ; $7a17: $c0

	dec de                                           ; $7a18: $1b
	jp c, $d002                                      ; $7a19: $da $02 $d0

	pop de                                           ; $7a1c: $d1
	ld b, $c0                                        ; $7a1d: $06 $c0
	ld bc, $06a0                                     ; $7a1f: $01 $a0 $06
	ld [$0261], sp                                   ; $7a22: $08 $61 $02
	jp nc, $06d3                                     ; $7a25: $d2 $d3 $06

	ret nz                                           ; $7a28: $c0

	ld bc, $06a0                                     ; $7a29: $01 $a0 $06
	ld [$016a], sp                                   ; $7a2c: $08 $6a $01
	call nc, $c006                                   ; $7a2f: $d4 $06 $c0
	ld bc, $06a0                                     ; $7a32: $01 $a0 $06
	ld [$016f], sp                                   ; $7a35: $08 $6f $01
	push de                                          ; $7a38: $d5
	ld b, $c0                                        ; $7a39: $06 $c0
	ld bc, $06a0                                     ; $7a3b: $01 $a0 $06
	ld [$c075], sp                                   ; $7a3e: $08 $75 $c0
	ld bc, $01a0                                     ; $7a41: $01 $a0 $01
	inc bc                                           ; $7a44: $03
	ld l, l                                          ; $7a45: $6d
	ld a, l                                          ; $7a46: $7d
	add d                                            ; $7a47: $82
	adc e                                            ; $7a48: $8b
	and b                                            ; $7a49: $a0
	ld a, $02                                        ; $7a4a: $3e $02
	or b                                             ; $7a4c: $b0
	add [hl]                                         ; $7a4d: $86
	dec [hl]                                         ; $7a4e: $35
	ld h, b                                          ; $7a4f: $60
	db $fd                                           ; $7a50: $fd
	ret nz                                           ; $7a51: $c0

	dec de                                           ; $7a52: $1b
	jp c, $0fd5                                      ; $7a53: $da $d5 $0f

	pop hl                                           ; $7a56: $e1
	ld [bc], a                                       ; $7a57: $02
	inc bc                                           ; $7a58: $03
	inc de                                           ; $7a59: $13
	pop bc                                           ; $7a5a: $c1
	or d                                             ; $7a5b: $b2
	db $e3                                           ; $7a5c: $e3
	nop                                              ; $7a5d: $00
	ld [hl], c                                       ; $7a5e: $71
	ret nz                                           ; $7a5f: $c0

	ld bc, $06a0                                     ; $7a60: $01 $a0 $06
	ld [$0a7c], sp                                   ; $7a63: $08 $7c $0a
	pop hl                                           ; $7a66: $e1
	ld [bc], a                                       ; $7a67: $02
	inc bc                                           ; $7a68: $03
	rla                                              ; $7a69: $17
	ret nz                                           ; $7a6a: $c0

	ld bc, $06a0                                     ; $7a6b: $01 $a0 $06
	ld [$c189], sp                                   ; $7a6e: $08 $89 $c1
	ld e, e                                          ; $7a71: $5b
	ret nz                                           ; $7a72: $c0

	ld bc, $01a0                                     ; $7a73: $01 $a0 $01
	ld [bc], a                                       ; $7a76: $02
	ld l, b                                          ; $7a77: $68
	ret nz                                           ; $7a78: $c0

	ld [hl+], a                                      ; $7a79: $22
	db $d3                                           ; $7a7a: $d3
	jp c, $21c0                                      ; $7a7b: $da $c0 $21

	jp nc, $c0da                                     ; $7a7e: $d2 $da $c0

	ld h, $df                                        ; $7a81: $26 $df
	jp c, $b002                                      ; $7a83: $da $02 $b0

	add a                                            ; $7a86: $87
	ld e, $c0                                        ; $7a87: $1e $c0
	ld [hl+], a                                      ; $7a89: $22
	jp nc, $c0da                                     ; $7a8a: $d2 $da $c0

	ld hl, $dad1                                     ; $7a8d: $21 $d1 $da
	ret nz                                           ; $7a90: $c0

	ld h, $da                                        ; $7a91: $26 $da
	jp c, $02e1                                      ; $7a93: $da $e1 $02

	inc bc                                           ; $7a96: $03
	rla                                              ; $7a97: $17
	ret nz                                           ; $7a98: $c0

	ld bc, $06a0                                     ; $7a99: $01 $a0 $06
	ld [$c194], sp                                   ; $7a9c: $08 $94 $c1
	ld e, e                                          ; $7a9f: $5b
	ret nz                                           ; $7aa0: $c0

	ld bc, $01a0                                     ; $7aa1: $01 $a0 $01
	ld [bc], a                                       ; $7aa4: $02
	ld a, c                                          ; $7aa5: $79
	ld [bc], a                                       ; $7aa6: $02
	or b                                             ; $7aa7: $b0
	adc b                                            ; $7aa8: $88
	ld a, [de]                                       ; $7aa9: $1a
	ret nz                                           ; $7aaa: $c0

	ld hl, $dad1                                     ; $7aab: $21 $d1 $da
	ret nz                                           ; $7aae: $c0

	inc hl                                           ; $7aaf: $23
	jp c, $e1da                                      ; $7ab0: $da $da $e1

	ld [bc], a                                       ; $7ab3: $02
	inc bc                                           ; $7ab4: $03
	dec de                                           ; $7ab5: $1b
	ret nz                                           ; $7ab6: $c0

	ld bc, $06a0                                     ; $7ab7: $01 $a0 $06
	ld [$c199], sp                                   ; $7aba: $08 $99 $c1
	ld e, e                                          ; $7abd: $5b
	ret nz                                           ; $7abe: $c0

	ld bc, $01a0                                     ; $7abf: $01 $a0 $01
	ld [bc], a                                       ; $7ac2: $02
	adc l                                            ; $7ac3: $8d
	ld [hl], d                                       ; $7ac4: $72
	add d                                            ; $7ac5: $82
	adc e                                            ; $7ac6: $8b
	and b                                            ; $7ac7: $a0
	ld a, $02                                        ; $7ac8: $3e $02
	or b                                             ; $7aca: $b0
	add [hl]                                         ; $7acb: $86
	ld l, $60                                        ; $7acc: $2e $60
	db $fd                                           ; $7ace: $fd
	ret nz                                           ; $7acf: $c0

	dec de                                           ; $7ad0: $1b
	jp c, $0ad5                                      ; $7ad1: $da $d5 $0a

	pop hl                                           ; $7ad4: $e1
	ld [bc], a                                       ; $7ad5: $02
	inc bc                                           ; $7ad6: $03
	inc de                                           ; $7ad7: $13
	ret nz                                           ; $7ad8: $c0

	ld bc, $06a0                                     ; $7ad9: $01 $a0 $06
	ld [$0a7c], sp                                   ; $7adc: $08 $7c $0a
	pop hl                                           ; $7adf: $e1

jr_085_7ae0:
	ld [bc], a                                       ; $7ae0: $02
	inc bc                                           ; $7ae1: $03
	rla                                              ; $7ae2: $17
	ret nz                                           ; $7ae3: $c0

	ld bc, $06a0                                     ; $7ae4: $01 $a0 $06
	ld [$c089], sp                                   ; $7ae7: $08 $89 $c0
	ld bc, $01a0                                     ; $7aea: $01 $a0 $01
	ld [bc], a                                       ; $7aed: $02
	ld l, b                                          ; $7aee: $68
	ret nz                                           ; $7aef: $c0

	ld [hl+], a                                      ; $7af0: $22
	db $d3                                           ; $7af1: $d3
	jp c, $21c0                                      ; $7af2: $da $c0 $21

	jp nc, $c0da                                     ; $7af5: $d2 $da $c0

	ld h, $df                                        ; $7af8: $26 $df
	jp c, $b002                                      ; $7afa: $da $02 $b0

	add a                                            ; $7afd: $87
	inc e                                            ; $7afe: $1c
	ret nz                                           ; $7aff: $c0

	ld [hl+], a                                      ; $7b00: $22
	jp nc, $c0da                                     ; $7b01: $d2 $da $c0

	ld hl, $dad1                                     ; $7b04: $21 $d1 $da
	ret nz                                           ; $7b07: $c0

	ld h, $da                                        ; $7b08: $26 $da
	jp c, $02e1                                      ; $7b0a: $da $e1 $02

	inc bc                                           ; $7b0d: $03
	rla                                              ; $7b0e: $17
	ret nz                                           ; $7b0f: $c0

	ld bc, $06a0                                     ; $7b10: $01 $a0 $06
	ld [$c094], sp                                   ; $7b13: $08 $94 $c0
	ld bc, $01a0                                     ; $7b16: $01 $a0 $01
	ld [bc], a                                       ; $7b19: $02
	ld a, c                                          ; $7b1a: $79
	ld [bc], a                                       ; $7b1b: $02
	or b                                             ; $7b1c: $b0
	adc b                                            ; $7b1d: $88
	jr jr_085_7ae0                                   ; $7b1e: $18 $c0

	ld hl, $dad1                                     ; $7b20: $21 $d1 $da
	ret nz                                           ; $7b23: $c0

	inc hl                                           ; $7b24: $23
	jp c, $e1da                                      ; $7b25: $da $da $e1

	ld [bc], a                                       ; $7b28: $02
	inc bc                                           ; $7b29: $03
	dec de                                           ; $7b2a: $1b
	ret nz                                           ; $7b2b: $c0

	ld bc, $06a0                                     ; $7b2c: $01 $a0 $06
	ld [$c099], sp                                   ; $7b2f: $08 $99 $c0
	ld bc, $01a0                                     ; $7b32: $01 $a0 $01
	ld [bc], a                                       ; $7b35: $02
	adc l                                            ; $7b36: $8d
	jr c, jr_085_7b42                                ; $7b37: $38 $09

	pop bc                                           ; $7b39: $c1
	cp l                                             ; $7b3a: $bd
	pop de                                           ; $7b3b: $d1
	ret nz                                           ; $7b3c: $c0

	ld bc, $01a0                                     ; $7b3d: $01 $a0 $01
	ld [bc], a                                       ; $7b40: $02
	sub e                                            ; $7b41: $93

jr_085_7b42:
	sbc h                                            ; $7b42: $9c
	jp nc, $80c0                                     ; $7b43: $d2 $c0 $80

	ld bc, $30d3                                     ; $7b46: $01 $d3 $30
	ld [$09a2], sp                                   ; $7b49: $08 $a2 $09
	inc c                                            ; $7b4c: $0c
	ret nz                                           ; $7b4d: $c0

	ld bc, $01a0                                     ; $7b4e: $01 $a0 $01
	ld [$d0ab], sp                                   ; $7b51: $08 $ab $d0
	adc e                                            ; $7b54: $8b
	and b                                            ; $7b55: $a0
	ld c, d                                          ; $7b56: $4a
	or b                                             ; $7b57: $b0
	add [hl]                                         ; $7b58: $86
	ld [$09b9], sp                                   ; $7b59: $08 $b9 $09
	inc c                                            ; $7b5c: $0c
	ret nz                                           ; $7b5d: $c0

	ld bc, $01a0                                     ; $7b5e: $01 $a0 $01
	ld [wTaskParam4_word0], sp                                   ; $7b61: $08 $c0 $d0
	adc e                                            ; $7b64: $8b
	and b                                            ; $7b65: $a0
	ld c, d                                          ; $7b66: $4a
	or b                                             ; $7b67: $b0
	add a                                            ; $7b68: $87
	ld [$09cc], sp                                   ; $7b69: $08 $cc $09
	inc c                                            ; $7b6c: $0c
	ret nz                                           ; $7b6d: $c0

	ld bc, $01a0                                     ; $7b6e: $01 $a0 $01
	ld [$d0cf], sp                                   ; $7b71: $08 $cf $d0
	adc e                                            ; $7b74: $8b
	and b                                            ; $7b75: $a0
	ld c, d                                          ; $7b76: $4a
	or b                                             ; $7b77: $b0
	adc b                                            ; $7b78: $88
	ld bc, $30d2                                     ; $7b79: $01 $d2 $30
	ld [$09d7], sp                                   ; $7b7c: $08 $d7 $09
	inc c                                            ; $7b7f: $0c
	ret nz                                           ; $7b80: $c0

	ld bc, $01a0                                     ; $7b81: $01 $a0 $01
	ld [$d0db], sp                                   ; $7b84: $08 $db $d0
	adc e                                            ; $7b87: $8b
	and b                                            ; $7b88: $a0
	ld c, d                                          ; $7b89: $4a
	or b                                             ; $7b8a: $b0
	add [hl]                                         ; $7b8b: $86
	ld [$09e5], sp                                   ; $7b8c: $08 $e5 $09
	inc c                                            ; $7b8f: $0c
	ret nz                                           ; $7b90: $c0

	ld bc, $01a0                                     ; $7b91: $01 $a0 $01
	ld [$d0e8], sp                                   ; $7b94: $08 $e8 $d0
	adc e                                            ; $7b97: $8b
	and b                                            ; $7b98: $a0
	ld c, d                                          ; $7b99: $4a

jr_085_7b9a:
	or b                                             ; $7b9a: $b0
	add a                                            ; $7b9b: $87
	ld [$09f0], sp                                   ; $7b9c: $08 $f0 $09
	inc c                                            ; $7b9f: $0c
	ret nz                                           ; $7ba0: $c0

	ld bc, $01a0                                     ; $7ba1: $01 $a0 $01
	ld [$d0f8], sp                                   ; $7ba4: $08 $f8 $d0
	adc e                                            ; $7ba7: $8b
	and b                                            ; $7ba8: $a0
	ld c, d                                          ; $7ba9: $4a
	or b                                             ; $7baa: $b0
	adc b                                            ; $7bab: $88
	ld bc, $30d1                                     ; $7bac: $01 $d1 $30
	add hl, bc                                       ; $7baf: $09
	dec b                                            ; $7bb0: $05
	add hl, bc                                       ; $7bb1: $09
	inc c                                            ; $7bb2: $0c
	ret nz                                           ; $7bb3: $c0

	ld bc, $01a0                                     ; $7bb4: $01 $a0 $01
	add hl, bc                                       ; $7bb7: $09
	dec bc                                           ; $7bb8: $0b
	ret nc                                           ; $7bb9: $d0

	adc e                                            ; $7bba: $8b
	and b                                            ; $7bbb: $a0
	ld c, d                                          ; $7bbc: $4a
	or b                                             ; $7bbd: $b0
	add [hl]                                         ; $7bbe: $86
	add hl, bc                                       ; $7bbf: $09
	ld d, $09                                        ; $7bc0: $16 $09
	inc c                                            ; $7bc2: $0c
	ret nz                                           ; $7bc3: $c0

	ld bc, $01a0                                     ; $7bc4: $01 $a0 $01
	add hl, bc                                       ; $7bc7: $09
	jr jr_085_7b9a                                   ; $7bc8: $18 $d0

	adc e                                            ; $7bca: $8b
	and b                                            ; $7bcb: $a0
	ld c, d                                          ; $7bcc: $4a
	or b                                             ; $7bcd: $b0
	add a                                            ; $7bce: $87
	add hl, bc                                       ; $7bcf: $09
	ld e, $09                                        ; $7bd0: $1e $09
	inc c                                            ; $7bd2: $0c
	ret nz                                           ; $7bd3: $c0

	ld bc, $01a0                                     ; $7bd4: $01 $a0 $01
	add hl, bc                                       ; $7bd7: $09
	ld hl, $8bd0                                     ; $7bd8: $21 $d0 $8b
	and b                                            ; $7bdb: $a0
	ld c, d                                          ; $7bdc: $4a
	or b                                             ; $7bdd: $b0
	adc b                                            ; $7bde: $88
	inc bc                                           ; $7bdf: $03
	db $e4                                           ; $7be0: $e4
	nop                                              ; $7be1: $00
	ld [bc], a                                       ; $7be2: $02
	add hl, bc                                       ; $7be3: $09
	ret nz                                           ; $7be4: $c0

	ei                                               ; $7be5: $fb
	ret nz                                           ; $7be6: $c0

	set 0, b                                         ; $7be7: $cb $c0
	rrca                                             ; $7be9: $0f
	db $e3                                           ; $7bea: $e3
	nop                                              ; $7beb: $00
	inc a                                            ; $7bec: $3c
	ret nz                                           ; $7bed: $c0

	ld bc, $01a0                                     ; $7bee: $01 $a0 $01
	add hl, bc                                       ; $7bf1: $09
	add hl, hl                                       ; $7bf2: $29
	pop hl                                           ; $7bf3: $e1
	ld [bc], a                                       ; $7bf4: $02
	ld [bc], a                                       ; $7bf5: $02
	ld [hl], b                                       ; $7bf6: $70
	add e                                            ; $7bf7: $83
	ret nz                                           ; $7bf8: $c0

	dec de                                           ; $7bf9: $1b
	db $dd                                           ; $7bfa: $dd
	ld [bc], a                                       ; $7bfb: $02
	ret nc                                           ; $7bfc: $d0

	pop de                                           ; $7bfd: $d1
	ld b, $c0                                        ; $7bfe: $06 $c0
	ld bc, $0aa0                                     ; $7c00: $01 $a0 $0a
	add hl, bc                                       ; $7c03: $09
	ld l, $02                                        ; $7c04: $2e $02
	jp nc, $06d3                                     ; $7c06: $d2 $d3 $06

	ret nz                                           ; $7c09: $c0

	ld bc, $0aa0                                     ; $7c0a: $01 $a0 $0a
	add hl, bc                                       ; $7c0d: $09
	ld [hl-], a                                      ; $7c0e: $32
	ld bc, $06d4                                     ; $7c0f: $01 $d4 $06
	ret nz                                           ; $7c12: $c0

	ld bc, $0aa0                                     ; $7c13: $01 $a0 $0a
	rlca                                             ; $7c16: $07
	ld h, h                                          ; $7c17: $64
	ld bc, $06d5                                     ; $7c18: $01 $d5 $06
	ret nz                                           ; $7c1b: $c0

	ld bc, $0aa0                                     ; $7c1c: $01 $a0 $0a
	ld [$c03b], sp                                   ; $7c1f: $08 $3b $c0
	ld bc, $01a0                                     ; $7c22: $01 $a0 $01
	ld [bc], a                                       ; $7c25: $02
	inc e                                            ; $7c26: $1c
	add e                                            ; $7c27: $83
	ret nz                                           ; $7c28: $c0

	dec de                                           ; $7c29: $1b
	db $dd                                           ; $7c2a: $dd
	ld [bc], a                                       ; $7c2b: $02
	ret nc                                           ; $7c2c: $d0

	pop de                                           ; $7c2d: $d1
	ld b, $c0                                        ; $7c2e: $06 $c0
	ld bc, $0aa0                                     ; $7c30: $01 $a0 $0a
	add hl, bc                                       ; $7c33: $09
	inc [hl]                                         ; $7c34: $34
	ld [bc], a                                       ; $7c35: $02
	jp nc, $06d3                                     ; $7c36: $d2 $d3 $06

	ret nz                                           ; $7c39: $c0

	ld bc, $0aa0                                     ; $7c3a: $01 $a0 $0a
	add hl, bc                                       ; $7c3d: $09
	ccf                                              ; $7c3e: $3f
	ld bc, $06d4                                     ; $7c3f: $01 $d4 $06
	ret nz                                           ; $7c42: $c0

	ld bc, $0aa0                                     ; $7c43: $01 $a0 $0a
	add hl, bc                                       ; $7c46: $09
	ld c, b                                          ; $7c47: $48
	ld bc, $06d5                                     ; $7c48: $01 $d5 $06
	ret nz                                           ; $7c4b: $c0

	ld bc, $0aa0                                     ; $7c4c: $01 $a0 $0a
	add hl, bc                                       ; $7c4f: $09
	ld c, a                                          ; $7c50: $4f
	ret nz                                           ; $7c51: $c0

	ld bc, $01a0                                     ; $7c52: $01 $a0 $01
	inc bc                                           ; $7c55: $03
	ld l, l                                          ; $7c56: $6d
	add d                                            ; $7c57: $82
	adc e                                            ; $7c58: $8b
	and b                                            ; $7c59: $a0
	ld c, d                                          ; $7c5a: $4a
	ld [bc], a                                       ; $7c5b: $02
	or b                                             ; $7c5c: $b0
	add [hl]                                         ; $7c5d: $86
	ccf                                              ; $7c5e: $3f
	pop hl                                           ; $7c5f: $e1
	ld [bc], a                                       ; $7c60: $02
	inc bc                                           ; $7c61: $03
	dec de                                           ; $7c62: $1b
	ret nz                                           ; $7c63: $c0

	ld bc, $0aa0                                     ; $7c64: $01 $a0 $0a
	add hl, bc                                       ; $7c67: $09
	ld d, l                                          ; $7c68: $55
	ret nz                                           ; $7c69: $c0

	ld bc, $01a0                                     ; $7c6a: $01 $a0 $01
	add hl, bc                                       ; $7c6d: $09
	ld e, l                                          ; $7c6e: $5d
	ld h, b                                          ; $7c6f: $60
	db $fd                                           ; $7c70: $fd
	ret nz                                           ; $7c71: $c0

	dec de                                           ; $7c72: $1b
	db $dd                                           ; $7c73: $dd
	push de                                          ; $7c74: $d5
	inc b                                            ; $7c75: $04
	pop hl                                           ; $7c76: $e1
	ld [bc], a                                       ; $7c77: $02
	inc bc                                           ; $7c78: $03
	inc de                                           ; $7c79: $13
	inc b                                            ; $7c7a: $04
	pop hl                                           ; $7c7b: $e1
	ld [bc], a                                       ; $7c7c: $02
	inc bc                                           ; $7c7d: $03
	rla                                              ; $7c7e: $17
	pop bc                                           ; $7c7f: $c1
	or d                                             ; $7c80: $b2
	db $e3                                           ; $7c81: $e3
	nop                                              ; $7c82: $00
	adc a                                            ; $7c83: $8f
	ret nz                                           ; $7c84: $c0

	ld bc, $0aa0                                     ; $7c85: $01 $a0 $0a
	add hl, bc                                       ; $7c88: $09
	ld h, a                                          ; $7c89: $67
	pop bc                                           ; $7c8a: $c1
	ld e, e                                          ; $7c8b: $5b
	ret nz                                           ; $7c8c: $c0

	ld bc, $01a0                                     ; $7c8d: $01 $a0 $01
	ld [bc], a                                       ; $7c90: $02
	ld l, b                                          ; $7c91: $68
	ret nz                                           ; $7c92: $c0

	ld [hl+], a                                      ; $7c93: $22
	db $d3                                           ; $7c94: $d3
	db $dd                                           ; $7c95: $dd
	ret nz                                           ; $7c96: $c0

	ld hl, $ddd2                                     ; $7c97: $21 $d2 $dd
	ret nz                                           ; $7c9a: $c0

	ld h, $df                                        ; $7c9b: $26 $df
	db $dd                                           ; $7c9d: $dd
	ld [bc], a                                       ; $7c9e: $02
	or b                                             ; $7c9f: $b0
	add a                                            ; $7ca0: $87
	ld e, $c0                                        ; $7ca1: $1e $c0
	ld [hl+], a                                      ; $7ca3: $22
	jp nc, $c0dd                                     ; $7ca4: $d2 $dd $c0

	ld hl, $ddd1                                     ; $7ca7: $21 $d1 $dd
	ret nz                                           ; $7caa: $c0

	ld h, $da                                        ; $7cab: $26 $da
	db $dd                                           ; $7cad: $dd
	pop hl                                           ; $7cae: $e1
	ld [bc], a                                       ; $7caf: $02
	inc bc                                           ; $7cb0: $03
	rla                                              ; $7cb1: $17
	ret nz                                           ; $7cb2: $c0

	ld bc, $0aa0                                     ; $7cb3: $01 $a0 $0a
	add hl, bc                                       ; $7cb6: $09
	ld l, [hl]                                       ; $7cb7: $6e
	pop bc                                           ; $7cb8: $c1
	ld e, e                                          ; $7cb9: $5b
	ret nz                                           ; $7cba: $c0

	ld bc, $01a0                                     ; $7cbb: $01 $a0 $01
	ld [bc], a                                       ; $7cbe: $02
	ld a, c                                          ; $7cbf: $79
	ld [bc], a                                       ; $7cc0: $02
	or b                                             ; $7cc1: $b0
	adc b                                            ; $7cc2: $88
	ld a, [de]                                       ; $7cc3: $1a
	ret nz                                           ; $7cc4: $c0

	ld hl, $ddd1                                     ; $7cc5: $21 $d1 $dd
	ret nz                                           ; $7cc8: $c0

	inc hl                                           ; $7cc9: $23

jr_085_7cca:
	jp c, $e1dd                                      ; $7cca: $da $dd $e1

	ld [bc], a                                       ; $7ccd: $02
	inc bc                                           ; $7cce: $03
	dec de                                           ; $7ccf: $1b
	ret nz                                           ; $7cd0: $c0

	ld bc, $0aa0                                     ; $7cd1: $01 $a0 $0a
	add hl, bc                                       ; $7cd4: $09
	ld [hl], l                                       ; $7cd5: $75
	pop bc                                           ; $7cd6: $c1
	ld e, e                                          ; $7cd7: $5b
	ret nz                                           ; $7cd8: $c0

	ld bc, $01a0                                     ; $7cd9: $01 $a0 $01
	ld [bc], a                                       ; $7cdc: $02
	adc l                                            ; $7cdd: $8d
	db $e4                                           ; $7cde: $e4
	nop                                              ; $7cdf: $00
	inc c                                            ; $7ce0: $0c
	add hl, bc                                       ; $7ce1: $09
	ret nz                                           ; $7ce2: $c0

	dec bc                                           ; $7ce3: $0b
	db $e3                                           ; $7ce4: $e3
	nop                                              ; $7ce5: $00
	ld a, a                                          ; $7ce6: $7f
	ret nz                                           ; $7ce7: $c0

	nop                                              ; $7ce8: $00
	add hl, bc                                       ; $7ce9: $09
	ld a, a                                          ; $7cea: $7f
	add hl, bc                                       ; $7ceb: $09
	inc b                                            ; $7cec: $04
	push hl                                          ; $7ced: $e5
	ld bc, $b119                                     ; $7cee: $01 $19 $b1
	inc de                                           ; $7cf1: $13
	rlca                                             ; $7cf2: $07
	add hl, bc                                       ; $7cf3: $09
	dec c                                            ; $7cf4: $0d
	ld h, b                                          ; $7cf5: $60
	db $fc                                           ; $7cf6: $fc
	pop bc                                           ; $7cf7: $c1
	jr nc, jr_085_7cca                               ; $7cf8: $30 $d0

	inc bc                                           ; $7cfa: $03
	db $e4                                           ; $7cfb: $e4
	nop                                              ; $7cfc: $00
	ld b, $03                                        ; $7cfd: $06 $03
	db $e4                                           ; $7cff: $e4
	rlca                                             ; $7d00: $07
	ei                                               ; $7d01: $fb
	add hl, bc                                       ; $7d02: $09
	ret nz                                           ; $7d03: $c0

	jp nc, $8040                                     ; $7d04: $d2 $40 $80

	and b                                            ; $7d07: $a0
	nop                                              ; $7d08: $00
	ld b, e                                          ; $7d09: $43
	add b                                            ; $7d0a: $80
	and b                                            ; $7d0b: $a0
	ld bc, $a080                                     ; $7d0c: $01 $80 $a0
	ld [bc], a                                       ; $7d0f: $02
	add b                                            ; $7d10: $80
	and b                                            ; $7d11: $a0
	inc bc                                           ; $7d12: $03
	add b                                            ; $7d13: $80
	and b                                            ; $7d14: $a0
	inc b                                            ; $7d15: $04
	ld b, d                                          ; $7d16: $42
	add b                                            ; $7d17: $80
	and b                                            ; $7d18: $a0

jr_085_7d19:
	dec b                                            ; $7d19: $05
	add b                                            ; $7d1a: $80
	and b                                            ; $7d1b: $a0
	ld b, $80                                        ; $7d1c: $06 $80
	and b                                            ; $7d1e: $a0
	rlca                                             ; $7d1f: $07
	ei                                               ; $7d20: $fb
	cp $11                                           ; $7d21: $fe $11
	ei                                               ; $7d23: $fb
	ret nz                                           ; $7d24: $c0

	ld d, $d0                                        ; $7d25: $16 $d0
	ldh [$28], a                                     ; $7d27: $e0 $28
	ei                                               ; $7d29: $fb
	ret nz                                           ; $7d2a: $c0

	dec d                                            ; $7d2b: $15
	ret nc                                           ; $7d2c: $d0

	jp c, $c0f8                                      ; $7d2d: $da $f8 $c0

	rla                                              ; $7d30: $17
	ret nc                                           ; $7d31: $d0

	ldh [$5a], a                                     ; $7d32: $e0 $5a
	inc b                                            ; $7d34: $04
	nop                                              ; $7d35: $00
	add b                                            ; $7d36: $80
	and b                                            ; $7d37: $a0
	nop                                              ; $7d38: $00
	ei                                               ; $7d39: $fb
	add b                                            ; $7d3a: $80
	nop                                              ; $7d3b: $00
	ld l, l                                          ; $7d3c: $6d

jr_085_7d3d:
	ld [$83d0], sp                                   ; $7d3d: $08 $d0 $83
	and b                                            ; $7d40: $a0
	ld [$e0d1], sp                                   ; $7d41: $08 $d1 $e0
	nop                                              ; $7d44: $00
	sub e                                            ; $7d45: $93
	ei                                               ; $7d46: $fb
	add b                                            ; $7d47: $80
	nop                                              ; $7d48: $00
	ld l, a                                          ; $7d49: $6f
	ld [$83d0], sp                                   ; $7d4a: $08 $d0 $83
	and b                                            ; $7d4d: $a0
	ld [$e0d2], sp                                   ; $7d4e: $08 $d2 $e0
	nop                                              ; $7d51: $00
	add [hl]                                         ; $7d52: $86
	ei                                               ; $7d53: $fb
	add b                                            ; $7d54: $80
	nop                                              ; $7d55: $00
	ld [hl], b                                       ; $7d56: $70
	ld [$83d0], sp                                   ; $7d57: $08 $d0 $83
	and b                                            ; $7d5a: $a0
	ld [$e0d3], sp                                   ; $7d5b: $08 $d3 $e0
	nop                                              ; $7d5e: $00
	ld a, c                                          ; $7d5f: $79
	ei                                               ; $7d60: $fb
	add b                                            ; $7d61: $80
	nop                                              ; $7d62: $00
	adc h                                            ; $7d63: $8c
	ld [$83d0], sp                                   ; $7d64: $08 $d0 $83
	and b                                            ; $7d67: $a0
	ld [$e0d7], sp                                   ; $7d68: $08 $d7 $e0
	nop                                              ; $7d6b: $00
	ld l, h                                          ; $7d6c: $6c
	ei                                               ; $7d6d: $fb
	add b                                            ; $7d6e: $80
	nop                                              ; $7d6f: $00
	adc l                                            ; $7d70: $8d
	ld [$83d0], sp                                   ; $7d71: $08 $d0 $83
	and b                                            ; $7d74: $a0
	ld [$e0d8], sp                                   ; $7d75: $08 $d8 $e0
	nop                                              ; $7d78: $00
	ld e, a                                          ; $7d79: $5f
	ei                                               ; $7d7a: $fb
	add b                                            ; $7d7b: $80
	nop                                              ; $7d7c: $00
	ld a, h                                          ; $7d7d: $7c
	ld [$83d0], sp                                   ; $7d7e: $08 $d0 $83
	and b                                            ; $7d81: $a0
	ld [$e0da], sp                                   ; $7d82: $08 $da $e0
	nop                                              ; $7d85: $00
	ld d, d                                          ; $7d86: $52
	ei                                               ; $7d87: $fb
	add b                                            ; $7d88: $80
	nop                                              ; $7d89: $00
	ld a, l                                          ; $7d8a: $7d
	ld [$83d0], sp                                   ; $7d8b: $08 $d0 $83
	and b                                            ; $7d8e: $a0
	ld [$e0dd], sp                                   ; $7d8f: $08 $dd $e0
	nop                                              ; $7d92: $00
	ld b, l                                          ; $7d93: $45
	ld h, b                                          ; $7d94: $60
	db $fc                                           ; $7d95: $fc
	rst FarCall                                          ; $7d96: $f7
	jr jr_085_7d19                                   ; $7d97: $18 $80

	and b                                            ; $7d99: $a0
	nop                                              ; $7d9a: $00
	add b                                            ; $7d9b: $80
	and b                                            ; $7d9c: $a0
	ld bc, $a080                                     ; $7d9d: $01 $80 $a0
	ld [bc], a                                       ; $7da0: $02
	add b                                            ; $7da1: $80
	and b                                            ; $7da2: $a0
	inc bc                                           ; $7da3: $03
	add b                                            ; $7da4: $80
	and b                                            ; $7da5: $a0
	inc b                                            ; $7da6: $04
	add b                                            ; $7da7: $80
	and b                                            ; $7da8: $a0
	dec b                                            ; $7da9: $05
	add b                                            ; $7daa: $80
	and b                                            ; $7dab: $a0
	ld b, $80                                        ; $7dac: $06 $80
	and b                                            ; $7dae: $a0
	rlca                                             ; $7daf: $07
	ret nc                                           ; $7db0: $d0

	inc bc                                           ; $7db1: $03
	db $e4                                           ; $7db2: $e4
	rlca                                             ; $7db3: $07
	ld c, b                                          ; $7db4: $48
	ld hl, $80d0                                     ; $7db5: $21 $d0 $80

jr_085_7db8:
	and b                                            ; $7db8: $a0
	inc c                                            ; $7db9: $0c
	rst FarCall                                          ; $7dba: $f7
	jr jr_085_7d3d                                   ; $7dbb: $18 $80

	ld [bc], a                                       ; $7dbd: $02
	inc bc                                           ; $7dbe: $03
	add b                                            ; $7dbf: $80
	ld [bc], a                                       ; $7dc0: $02
	dec b                                            ; $7dc1: $05
	add b                                            ; $7dc2: $80
	ld [bc], a                                       ; $7dc3: $02
	rlca                                             ; $7dc4: $07
	add b                                            ; $7dc5: $80
	ld [bc], a                                       ; $7dc6: $02
	add hl, bc                                       ; $7dc7: $09
	add b                                            ; $7dc8: $80
	ld [bc], a                                       ; $7dc9: $02
	dec bc                                           ; $7dca: $0b
	add b                                            ; $7dcb: $80
	ld [bc], a                                       ; $7dcc: $02
	dec c                                            ; $7dcd: $0d
	add b                                            ; $7dce: $80
	ld [bc], a                                       ; $7dcf: $02
	rrca                                             ; $7dd0: $0f
	add b                                            ; $7dd1: $80
	ld [bc], a                                       ; $7dd2: $02
	ld de, $00e4                                     ; $7dd3: $11 $e4 $00
	ld d, e                                          ; $7dd6: $53
	ld d, b                                          ; $7dd7: $50
	ei                                               ; $7dd8: $fb
	cp $16                                           ; $7dd9: $fe $16
	ei                                               ; $7ddb: $fb
	ret nz                                           ; $7ddc: $c0

	ld d, $83                                        ; $7ddd: $16 $83
	and b                                            ; $7ddf: $a0
	ld [$fbd8], sp                                   ; $7de0: $08 $d8 $fb
	ret nz                                           ; $7de3: $c0

	dec d                                            ; $7de4: $15
	add e                                            ; $7de5: $83
	and b                                            ; $7de6: $a0
	ld [$f8da], sp                                   ; $7de7: $08 $da $f8
	ret nz                                           ; $7dea: $c0

	rla                                              ; $7deb: $17
	add e                                            ; $7dec: $83
	and b                                            ; $7ded: $a0
	ld [$5ae0], sp                                   ; $7dee: $08 $e0 $5a

jr_085_7df1:
	ld [hl], $fd                                     ; $7df1: $36 $fd
	inc [hl]                                         ; $7df3: $34
	add e                                            ; $7df4: $83
	and b                                            ; $7df5: $a0
	ld [$d101], sp                                   ; $7df6: $08 $01 $d1
	inc b                                            ; $7df9: $04
	nop                                              ; $7dfa: $00
	add b                                            ; $7dfb: $80
	and b                                            ; $7dfc: $a0
	ld bc, wCurrMenuOption                                     ; $7dfd: $01 $01 $d2
	inc b                                            ; $7e00: $04
	nop                                              ; $7e01: $00
	add b                                            ; $7e02: $80
	and b                                            ; $7e03: $a0
	ld [bc], a                                       ; $7e04: $02
	ld bc, $04d3                                     ; $7e05: $01 $d3 $04
	nop                                              ; $7e08: $00
	add b                                            ; $7e09: $80
	and b                                            ; $7e0a: $a0
	inc bc                                           ; $7e0b: $03
	ld bc, $04d7                                     ; $7e0c: $01 $d7 $04
	nop                                              ; $7e0f: $00
	add b                                            ; $7e10: $80
	and b                                            ; $7e11: $a0
	inc b                                            ; $7e12: $04
	ld bc, $04d8                                     ; $7e13: $01 $d8 $04
	nop                                              ; $7e16: $00
	add b                                            ; $7e17: $80
	and b                                            ; $7e18: $a0
	dec b                                            ; $7e19: $05
	ld bc, $04da                                     ; $7e1a: $01 $da $04
	nop                                              ; $7e1d: $00
	add b                                            ; $7e1e: $80
	and b                                            ; $7e1f: $a0
	ld b, $01                                        ; $7e20: $06 $01
	db $dd                                           ; $7e22: $dd
	inc b                                            ; $7e23: $04
	nop                                              ; $7e24: $00
	add b                                            ; $7e25: $80
	and b                                            ; $7e26: $a0
	rlca                                             ; $7e27: $07
	add hl, bc                                       ; $7e28: $09
	ret nz                                           ; $7e29: $c0

	rst GetHLinHL                                          ; $7e2a: $cf
	ld b, b                                          ; $7e2b: $40
	adc a                                            ; $7e2c: $8f
	and b                                            ; $7e2d: $a0
	dec c                                            ; $7e2e: $0d
	ret nc                                           ; $7e2f: $d0

jr_085_7e30:
	add a                                            ; $7e30: $87
	and b                                            ; $7e31: $a0
	dec e                                            ; $7e32: $1d
	ret nz                                           ; $7e33: $c0

	ld [bc], a                                       ; $7e34: $02
	rst FarCall                                          ; $7e35: $f7
	jr jr_085_7db8                                   ; $7e36: $18 $80

	and b                                            ; $7e38: $a0
	nop                                              ; $7e39: $00
	add b                                            ; $7e3a: $80
	and b                                            ; $7e3b: $a0
	ld bc, $a080                                     ; $7e3c: $01 $80 $a0
	ld [bc], a                                       ; $7e3f: $02
	add b                                            ; $7e40: $80
	and b                                            ; $7e41: $a0
	inc bc                                           ; $7e42: $03
	add b                                            ; $7e43: $80
	and b                                            ; $7e44: $a0

jr_085_7e45:
	inc b                                            ; $7e45: $04
	add b                                            ; $7e46: $80
	and b                                            ; $7e47: $a0
	dec b                                            ; $7e48: $05
	add b                                            ; $7e49: $80
	and b                                            ; $7e4a: $a0
	ld b, $80                                        ; $7e4b: $06 $80
	and b                                            ; $7e4d: $a0
	rlca                                             ; $7e4e: $07
	ei                                               ; $7e4f: $fb
	add b                                            ; $7e50: $80
	and b                                            ; $7e51: $a0
	nop                                              ; $7e52: $00
	db $10                                           ; $7e53: $10
	ei                                               ; $7e54: $fb
	db $fc                                           ; $7e55: $fc
	add a                                            ; $7e56: $87
	and b                                            ; $7e57: $a0
	dec e                                            ; $7e58: $1d
	adc a                                            ; $7e59: $8f

jr_085_7e5a:
	and b                                            ; $7e5a: $a0
	dec c                                            ; $7e5b: $0d
	inc bc                                           ; $7e5c: $03
	db $e4                                           ; $7e5d: $e4
	nop                                              ; $7e5e: $00
	sbc h                                            ; $7e5f: $9c
	jr nz, jr_085_7df1                               ; $7e60: $20 $8f

	and b                                            ; $7e62: $a0
	dec c                                            ; $7e63: $0d
	ei                                               ; $7e64: $fb
	add b                                            ; $7e65: $80
	and b                                            ; $7e66: $a0
	ld bc, $fb10                                     ; $7e67: $01 $10 $fb
	db $fc                                           ; $7e6a: $fc
	add a                                            ; $7e6b: $87
	and b                                            ; $7e6c: $a0
	dec e                                            ; $7e6d: $1d
	adc a                                            ; $7e6e: $8f

jr_085_7e6f:
	and b                                            ; $7e6f: $a0
	dec c                                            ; $7e70: $0d
	inc bc                                           ; $7e71: $03
	db $e4                                           ; $7e72: $e4
	ld bc, $2042                                     ; $7e73: $01 $42 $20
	adc a                                            ; $7e76: $8f
	and b                                            ; $7e77: $a0
	dec c                                            ; $7e78: $0d
	ei                                               ; $7e79: $fb
	add b                                            ; $7e7a: $80
	and b                                            ; $7e7b: $a0
	ld [bc], a                                       ; $7e7c: $02
	db $10                                           ; $7e7d: $10
	ei                                               ; $7e7e: $fb
	db $fc                                           ; $7e7f: $fc
	add a                                            ; $7e80: $87
	and b                                            ; $7e81: $a0
	dec e                                            ; $7e82: $1d
	adc a                                            ; $7e83: $8f

jr_085_7e84:
	and b                                            ; $7e84: $a0
	dec c                                            ; $7e85: $0d
	inc bc                                           ; $7e86: $03
	db $e4                                           ; $7e87: $e4
	ld bc, $20a1                                     ; $7e88: $01 $a1 $20
	adc a                                            ; $7e8b: $8f
	and b                                            ; $7e8c: $a0
	dec c                                            ; $7e8d: $0d
	ei                                               ; $7e8e: $fb
	add b                                            ; $7e8f: $80
	and b                                            ; $7e90: $a0
	inc bc                                           ; $7e91: $03
	db $10                                           ; $7e92: $10
	ei                                               ; $7e93: $fb
	db $fc                                           ; $7e94: $fc
	add a                                            ; $7e95: $87
	and b                                            ; $7e96: $a0
	dec e                                            ; $7e97: $1d
	adc a                                            ; $7e98: $8f
	and b                                            ; $7e99: $a0
	dec c                                            ; $7e9a: $0d
	inc bc                                           ; $7e9b: $03
	db $e4                                           ; $7e9c: $e4
	ld [bc], a                                       ; $7e9d: $02
	add hl, bc                                       ; $7e9e: $09
	jr nz, jr_085_7e30                               ; $7e9f: $20 $8f

	and b                                            ; $7ea1: $a0
	dec c                                            ; $7ea2: $0d
	ei                                               ; $7ea3: $fb
	add b                                            ; $7ea4: $80
	and b                                            ; $7ea5: $a0
	inc b                                            ; $7ea6: $04
	db $10                                           ; $7ea7: $10
	ei                                               ; $7ea8: $fb
	db $fc                                           ; $7ea9: $fc
	add a                                            ; $7eaa: $87
	and b                                            ; $7eab: $a0
	dec e                                            ; $7eac: $1d
	adc a                                            ; $7ead: $8f
	and b                                            ; $7eae: $a0
	dec c                                            ; $7eaf: $0d
	inc bc                                           ; $7eb0: $03
	db $e4                                           ; $7eb1: $e4
	ld [bc], a                                       ; $7eb2: $02
	add l                                            ; $7eb3: $85
	jr nz, jr_085_7e45                               ; $7eb4: $20 $8f

	and b                                            ; $7eb6: $a0
	dec c                                            ; $7eb7: $0d
	ei                                               ; $7eb8: $fb
	add b                                            ; $7eb9: $80
	and b                                            ; $7eba: $a0
	dec b                                            ; $7ebb: $05
	db $10                                           ; $7ebc: $10
	ei                                               ; $7ebd: $fb
	db $fc                                           ; $7ebe: $fc
	add a                                            ; $7ebf: $87
	and b                                            ; $7ec0: $a0
	dec e                                            ; $7ec1: $1d
	adc a                                            ; $7ec2: $8f
	and b                                            ; $7ec3: $a0
	dec c                                            ; $7ec4: $0d
	inc bc                                           ; $7ec5: $03
	db $e4                                           ; $7ec6: $e4
	inc bc                                           ; $7ec7: $03
	ld a, [hl-]                                      ; $7ec8: $3a
	jr nz, jr_085_7e5a                               ; $7ec9: $20 $8f

	and b                                            ; $7ecb: $a0
	dec c                                            ; $7ecc: $0d
	ei                                               ; $7ecd: $fb
	add b                                            ; $7ece: $80
	and b                                            ; $7ecf: $a0
	ld b, $10                                        ; $7ed0: $06 $10
	ei                                               ; $7ed2: $fb

jr_085_7ed3:
	db $fc                                           ; $7ed3: $fc
	add a                                            ; $7ed4: $87
	and b                                            ; $7ed5: $a0
	dec e                                            ; $7ed6: $1d
	adc a                                            ; $7ed7: $8f
	and b                                            ; $7ed8: $a0
	dec c                                            ; $7ed9: $0d
	inc bc                                           ; $7eda: $03
	db $e4                                           ; $7edb: $e4
	inc b                                            ; $7edc: $04
	and b                                            ; $7edd: $a0
	jr nz, jr_085_7e6f                               ; $7ede: $20 $8f

	and b                                            ; $7ee0: $a0
	dec c                                            ; $7ee1: $0d
	ei                                               ; $7ee2: $fb
	add b                                            ; $7ee3: $80
	and b                                            ; $7ee4: $a0
	rlca                                             ; $7ee5: $07
	db $10                                           ; $7ee6: $10
	ei                                               ; $7ee7: $fb
	db $fc                                           ; $7ee8: $fc
	add a                                            ; $7ee9: $87
	and b                                            ; $7eea: $a0
	dec e                                            ; $7eeb: $1d
	adc a                                            ; $7eec: $8f
	and b                                            ; $7eed: $a0
	dec c                                            ; $7eee: $0d
	inc bc                                           ; $7eef: $03

jr_085_7ef0:
	db $e4                                           ; $7ef0: $e4
	dec b                                            ; $7ef1: $05
	adc l                                            ; $7ef2: $8d
	jr nz, jr_085_7e84                               ; $7ef3: $20 $8f

	and b                                            ; $7ef5: $a0
	dec c                                            ; $7ef6: $0d
	db $e4                                           ; $7ef7: $e4
	ld b, $03                                        ; $7ef8: $06 $03
	add hl, bc                                       ; $7efa: $09
	ld b, h                                          ; $7efb: $44
	ret nc                                           ; $7efc: $d0

	add h                                            ; $7efd: $84
	and b                                            ; $7efe: $a0
	dec h                                            ; $7eff: $25
	pop bc                                           ; $7f00: $c1
	inc [hl]                                         ; $7f01: $34
	ret nc                                           ; $7f02: $d0

	add d                                            ; $7f03: $82
	add h                                            ; $7f04: $84
	and b                                            ; $7f05: $a0
	dec h                                            ; $7f06: $25
	inc b                                            ; $7f07: $04

jr_085_7f08:
	ldh [rAUD1SWEEP], a                              ; $7f08: $e0 $10
	ldh [rAUD1LEN], a                                ; $7f0a: $e0 $11
	inc d                                            ; $7f0c: $14
	ld h, b                                          ; $7f0d: $60
	cp $09                                           ; $7f0e: $fe $09
	db $fc                                           ; $7f10: $fc
	ret nz                                           ; $7f11: $c0

	ld h, l                                          ; $7f12: $65
	rst SubAFromHL                                          ; $7f13: $d7
	ei                                               ; $7f14: $fb
	ret nz                                           ; $7f15: $c0

	ld h, [hl]                                       ; $7f16: $66
	ldh [rAUD2LEN], a                                ; $7f17: $e0 $16
	inc bc                                           ; $7f19: $03
	ldh [rP1], a                                     ; $7f1a: $e0 $00
	dec h                                            ; $7f1c: $25
	inc bc                                           ; $7f1d: $03
	db $e4                                           ; $7f1e: $e4
	dec b                                            ; $7f1f: $05
	call c, $e004                                    ; $7f20: $dc $04 $e0
	inc de                                           ; $7f23: $13
	ldh [rAUD1HIGH], a                               ; $7f24: $e0 $14
	inc d                                            ; $7f26: $14
	ld h, b                                          ; $7f27: $60
	cp $09                                           ; $7f28: $fe $09
	db $fc                                           ; $7f2a: $fc
	ret nz                                           ; $7f2b: $c0

	ld h, l                                          ; $7f2c: $65
	call c, $c0fb                                    ; $7f2d: $dc $fb $c0
	ld h, [hl]                                       ; $7f30: $66
	ldh [rAUD2LEN], a                                ; $7f31: $e0 $16
	inc bc                                           ; $7f33: $03
	ldh [rP1], a                                     ; $7f34: $e0 $00
	dec bc                                           ; $7f36: $0b
	inc bc                                           ; $7f37: $03
	db $e4                                           ; $7f38: $e4
	dec b                                            ; $7f39: $05
	jp nz, $0300                                     ; $7f3a: $c2 $00 $03

	ldh [rP1], a                                     ; $7f3d: $e0 $00
	ld [bc], a                                       ; $7f3f: $02
	ld d, a                                          ; $7f40: $57
	ld h, c                                          ; $7f41: $61
	db $fc                                           ; $7f42: $fc
	add h                                            ; $7f43: $84
	and b                                            ; $7f44: $a0
	dec h                                            ; $7f45: $25
	jp nc, Jump_085_6017                             ; $7f46: $d2 $17 $60

	cp $0c                                           ; $7f49: $fe $0c
	db $fc                                           ; $7f4b: $fc
	pop bc                                           ; $7f4c: $c1
	jr c, jr_085_7ed3                                ; $7f4d: $38 $84

	and b                                            ; $7f4f: $a0
	dec h                                            ; $7f50: $25
	pop de                                           ; $7f51: $d1
	db $fc                                           ; $7f52: $fc
	pop bc                                           ; $7f53: $c1
	ld b, h                                          ; $7f54: $44
	ret nc                                           ; $7f55: $d0

	ret nc                                           ; $7f56: $d0

	inc bc                                           ; $7f57: $03
	ldh [rP1], a                                     ; $7f58: $e0 $00
	ccf                                              ; $7f5a: $3f
	inc bc                                           ; $7f5b: $03
	db $e4                                           ; $7f5c: $e4
	dec b                                            ; $7f5d: $05
	sbc [hl]                                         ; $7f5e: $9e
	db $fc                                           ; $7f5f: $fc
	add h                                            ; $7f60: $84
	and b                                            ; $7f61: $a0
	dec h                                            ; $7f62: $25
	call c, Call_085_6017                            ; $7f63: $dc $17 $60
	cp $0c                                           ; $7f66: $fe $0c
	db $fc                                           ; $7f68: $fc
	pop bc                                           ; $7f69: $c1
	jr c, jr_085_7ef0                                ; $7f6a: $38 $84

	and b                                            ; $7f6c: $a0
	dec h                                            ; $7f6d: $25
	pop de                                           ; $7f6e: $d1
	db $fc                                           ; $7f6f: $fc
	pop bc                                           ; $7f70: $c1
	ld b, l                                          ; $7f71: $45
	ret nc                                           ; $7f72: $d0

	ret nc                                           ; $7f73: $d0

	inc bc                                           ; $7f74: $03
	ldh [rP1], a                                     ; $7f75: $e0 $00
	ld [hl+], a                                      ; $7f77: $22
	inc bc                                           ; $7f78: $03
	db $e4                                           ; $7f79: $e4
	dec b                                            ; $7f7a: $05
	add c                                            ; $7f7b: $81

jr_085_7f7c:
	dec de                                           ; $7f7c: $1b
	ld h, b                                          ; $7f7d: $60
	cp $10                                           ; $7f7e: $fe $10
	db $fc                                           ; $7f80: $fc
	pop bc                                           ; $7f81: $c1
	jr c, jr_085_7f08                                ; $7f82: $38 $84

	and b                                            ; $7f84: $a0
	dec h                                            ; $7f85: $25
	pop de                                           ; $7f86: $d1
	db $fc                                           ; $7f87: $fc
	pop bc                                           ; $7f88: $c1
	ld b, c                                          ; $7f89: $41
	ret nc                                           ; $7f8a: $d0

	add h                                            ; $7f8b: $84
	and b                                            ; $7f8c: $a0
	dec h                                            ; $7f8d: $25
	ret nc                                           ; $7f8e: $d0

	ret nc                                           ; $7f8f: $d0

	inc bc                                           ; $7f90: $03
	ldh [rP1], a                                     ; $7f91: $e0 $00
	ld b, $03                                        ; $7f93: $06 $03
	db $e4                                           ; $7f95: $e4
	dec b                                            ; $7f96: $05
	ld h, l                                          ; $7f97: $65
	inc e                                            ; $7f98: $1c
	ld h, b                                          ; $7f99: $60
	add b                                            ; $7f9a: $80
	and b                                            ; $7f9b: $a0
	inc c                                            ; $7f9c: $0c
	dec bc                                           ; $7f9d: $0b
	or b                                             ; $7f9e: $b0
	call z, $e403                                    ; $7f9f: $cc $03 $e4
	dec b                                            ; $7fa2: $05
	ld e, c                                          ; $7fa3: $59
	rst $38                                          ; $7fa4: $ff
	inc bc                                           ; $7fa5: $03
	db $e4                                           ; $7fa6: $e4
	dec b                                            ; $7fa7: $05
	ld e, d                                          ; $7fa8: $5a
	dec bc                                           ; $7fa9: $0b
	or b                                             ; $7faa: $b0
	push hl                                          ; $7fab: $e5
	inc bc                                           ; $7fac: $03
	db $e4                                           ; $7fad: $e4
	dec b                                            ; $7fae: $05
	ld c, l                                          ; $7faf: $4d
	rst $38                                          ; $7fb0: $ff
	inc bc                                           ; $7fb1: $03
	db $e4                                           ; $7fb2: $e4
	dec b                                            ; $7fb3: $05
	ld c, [hl]                                       ; $7fb4: $4e
	add hl, bc                                       ; $7fb5: $09
	ld d, l                                          ; $7fb6: $55
	ld h, b                                          ; $7fb7: $60
	cp $0a                                           ; $7fb8: $fe $0a
	pop af                                           ; $7fba: $f1
	add b                                            ; $7fbb: $80
	ld [bc], a                                       ; $7fbc: $02
	ld [hl], d                                       ; $7fbd: $72
	db $fc                                           ; $7fbe: $fc
	adc e                                            ; $7fbf: $8b
	ld bc, $b0ea                                     ; $7fc0: $01 $ea $b0
	ld [hl-], a                                      ; $7fc3: $32
	dec b                                            ; $7fc4: $05
	ret nc                                           ; $7fc5: $d0

	add h                                            ; $7fc6: $84
	and b                                            ; $7fc7: $a0
	dec h                                            ; $7fc8: $25
	sbc $07                                          ; $7fc9: $de $07
	ret nc                                           ; $7fcb: $d0

	add h                                            ; $7fcc: $84
	and b                                            ; $7fcd: $a0
	dec h                                            ; $7fce: $25
	pop bc                                           ; $7fcf: $c1
	inc [hl]                                         ; $7fd0: $34
	pop de                                           ; $7fd1: $d1
	ld h, b                                          ; $7fd2: $60
	db $fc                                           ; $7fd3: $fc
	add h                                            ; $7fd4: $84
	and b                                            ; $7fd5: $a0
	dec h                                            ; $7fd6: $25
	jp nc, Jump_085_6017                             ; $7fd7: $d2 $17 $60

	cp $0c                                           ; $7fda: $fe $0c
	db $fc                                           ; $7fdc: $fc
	pop bc                                           ; $7fdd: $c1
	jr c, @-$7a                                      ; $7fde: $38 $84

	and b                                            ; $7fe0: $a0
	dec h                                            ; $7fe1: $25
	pop de                                           ; $7fe2: $d1
	db $fc                                           ; $7fe3: $fc
	pop bc                                           ; $7fe4: $c1
	ld b, h                                          ; $7fe5: $44
	pop de                                           ; $7fe6: $d1
	ret nc                                           ; $7fe7: $d0

	inc bc                                           ; $7fe8: $03
	ldh [rP1], a                                     ; $7fe9: $e0 $00
	ld [hl+], a                                      ; $7feb: $22
	inc bc                                           ; $7fec: $03
	db $e4                                           ; $7fed: $e4
	dec b                                            ; $7fee: $05
	dec c                                            ; $7fef: $0d
	dec de                                           ; $7ff0: $1b
	ld h, b                                          ; $7ff1: $60
	cp $10                                           ; $7ff2: $fe $10
	db $fc                                           ; $7ff4: $fc
	pop bc                                           ; $7ff5: $c1
	jr c, jr_085_7f7c                                ; $7ff6: $38 $84

	and b                                            ; $7ff8: $a0
	dec h                                            ; $7ff9: $25
	pop de                                           ; $7ffa: $d1
	db $fc                                           ; $7ffb: $fc
	pop bc                                           ; $7ffc: $c1
	ld b, c                                          ; $7ffd: $41
	pop de                                           ; $7ffe: $d1
	add h                                            ; $7fff: $84
