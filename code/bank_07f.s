; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $07f", ROMX[$4000], BANK[$7f]

	ld [bc], a                                       ; $4000: $02
	inc bc                                           ; $4001: $03
	sub b                                            ; $4002: $90
	db $e4                                           ; $4003: $e4
	nop                                              ; $4004: $00
	xor d                                            ; $4005: $aa
	ld b, $bd                                        ; $4006: $06 $bd
	add hl, bc                                       ; $4008: $09
	inc l                                            ; $4009: $2c
	pop hl                                           ; $400a: $e1
	ld [bc], a                                       ; $400b: $02
	inc bc                                           ; $400c: $03
	dec de                                           ; $400d: $1b
	add d                                            ; $400e: $82
	ret nz                                           ; $400f: $c0

	dec de                                           ; $4010: $1b
	jp nc, $d002                                     ; $4011: $d2 $02 $d0

	pop de                                           ; $4014: $d1
	ld b, $c0                                        ; $4015: $06 $c0
	ld bc, $04a0                                     ; $4017: $01 $a0 $04
	ld b, $c4                                        ; $401a: $06 $c4
	ld [bc], a                                       ; $401c: $02
	jp nc, $06d3                                     ; $401d: $d2 $d3 $06

	ret nz                                           ; $4020: $c0

	ld bc, $04a0                                     ; $4021: $01 $a0 $04
	ld b, $cf                                        ; $4024: $06 $cf
	ld bc, $06d4                                     ; $4026: $01 $d4 $06
	ret nz                                           ; $4029: $c0

	ld bc, $04a0                                     ; $402a: $01 $a0 $04
	ld b, $e1                                        ; $402d: $06 $e1
	pop hl                                           ; $402f: $e1
	ld [bc], a                                       ; $4030: $02
	inc bc                                           ; $4031: $03
	and d                                            ; $4032: $a2
	db $e4                                           ; $4033: $e4
	nop                                              ; $4034: $00
	ld a, d                                          ; $4035: $7a
	ld b, $eb                                        ; $4036: $06 $eb
	add hl, bc                                       ; $4038: $09
	inc l                                            ; $4039: $2c
	pop hl                                           ; $403a: $e1
	ld [bc], a                                       ; $403b: $02
	inc bc                                           ; $403c: $03
	rla                                              ; $403d: $17
	add d                                            ; $403e: $82
	ret nz                                           ; $403f: $c0

	dec de                                           ; $4040: $1b
	jp nc, $d002                                     ; $4041: $d2 $02 $d0

	pop de                                           ; $4044: $d1
	ld b, $c0                                        ; $4045: $06 $c0
	ld bc, $04a0                                     ; $4047: $01 $a0 $04
	ld b, $ed                                        ; $404a: $06 $ed
	ld [bc], a                                       ; $404c: $02
	jp nc, $06d3                                     ; $404d: $d2 $d3 $06

	ret nz                                           ; $4050: $c0

	ld bc, $04a0                                     ; $4051: $01 $a0 $04
	ld b, $f7                                        ; $4054: $06 $f7
	ld bc, $06d4                                     ; $4056: $01 $d4 $06
	ret nz                                           ; $4059: $c0

	ld bc, $04a0                                     ; $405a: $01 $a0 $04
	ld b, $ff                                        ; $405d: $06 $ff
	pop hl                                           ; $405f: $e1
	ld [bc], a                                       ; $4060: $02
	inc bc                                           ; $4061: $03
	sbc c                                            ; $4062: $99
	db $e4                                           ; $4063: $e4
	nop                                              ; $4064: $00
	ld c, d                                          ; $4065: $4a
	jr z, @+$08                                      ; $4066: $28 $06

	ret nz                                           ; $4068: $c0

	ld bc, $04a0                                     ; $4069: $01 $a0 $04
	rlca                                             ; $406c: $07
	ld b, $3f                                        ; $406d: $06 $3f
	rlca                                             ; $406f: $07
	ld de, $1109                                     ; $4070: $11 $09 $11
	pop hl                                           ; $4073: $e1
	ld [bc], a                                       ; $4074: $02
	inc bc                                           ; $4075: $03
	rla                                              ; $4076: $17
	ret nz                                           ; $4077: $c0

	ld bc, $04a0                                     ; $4078: $01 $a0 $04
	rlca                                             ; $407b: $07
	dec d                                            ; $407c: $15
	pop hl                                           ; $407d: $e1
	ld [bc], a                                       ; $407e: $02
	inc bc                                           ; $407f: $03
	sbc c                                            ; $4080: $99
	db $e4                                           ; $4081: $e4
	nop                                              ; $4082: $00
	inc l                                            ; $4083: $2c
	rlca                                             ; $4084: $07
	ld [hl+], a                                      ; $4085: $22
	add hl, bc                                       ; $4086: $09
	ld de, $02e1                                     ; $4087: $11 $e1 $02
	inc bc                                           ; $408a: $03
	rra                                              ; $408b: $1f
	ret nz                                           ; $408c: $c0

	ld bc, $04a0                                     ; $408d: $01 $a0 $04
	rlca                                             ; $4090: $07
	daa                                              ; $4091: $27
	pop hl                                           ; $4092: $e1
	ld [bc], a                                       ; $4093: $02
	inc bc                                           ; $4094: $03
	xor e                                            ; $4095: $ab
	db $e4                                           ; $4096: $e4
	nop                                              ; $4097: $00
	rla                                              ; $4098: $17
	rlca                                             ; $4099: $07
	jr nc, jr_07f_40a5                               ; $409a: $30 $09

	ld de, $02e1                                     ; $409c: $11 $e1 $02
	inc bc                                           ; $409f: $03
	dec de                                           ; $40a0: $1b
	ret nz                                           ; $40a1: $c0

	ld bc, $04a0                                     ; $40a2: $01 $a0 $04

jr_07f_40a5:
	rlca                                             ; $40a5: $07
	inc [hl]                                         ; $40a6: $34
	pop hl                                           ; $40a7: $e1
	ld [bc], a                                       ; $40a8: $02
	inc bc                                           ; $40a9: $03
	and d                                            ; $40aa: $a2
	db $e4                                           ; $40ab: $e4
	nop                                              ; $40ac: $00
	ld [bc], a                                       ; $40ad: $02
	add hl, bc                                       ; $40ae: $09
	ld c, $c1                                        ; $40af: $0e $c1
	ld e, c                                          ; $40b1: $59
	db $e3                                           ; $40b2: $e3
	nop                                              ; $40b3: $00
	or e                                             ; $40b4: $b3
	ret nz                                           ; $40b5: $c0

	ld d, [hl]                                       ; $40b6: $56
	jp nc, $d0d5                                     ; $40b7: $d2 $d5 $d0

	push hl                                          ; $40ba: $e5
	dec de                                           ; $40bb: $1b
	nop                                              ; $40bc: $00
	nop                                              ; $40bd: $00
	add hl, bc                                       ; $40be: $09
	inc d                                            ; $40bf: $14
	ret nc                                           ; $40c0: $d0

	add e                                            ; $40c1: $83
	ld bc, $d0de                                     ; $40c2: $01 $de $d0
	ret nz                                           ; $40c5: $c0

	ld bc, $04a0                                     ; $40c6: $01 $a0 $04
	inc b                                            ; $40c9: $04
	ld l, l                                          ; $40ca: $6d
	ret nz                                           ; $40cb: $c0

	ld bc, $01a0                                     ; $40cc: $01 $a0 $01
	inc b                                            ; $40cf: $04
	ld [hl], c                                       ; $40d0: $71
	db $e4                                           ; $40d1: $e4
	nop                                              ; $40d2: $00
	ld [bc], a                                       ; $40d3: $02
	add hl, bc                                       ; $40d4: $09
	ld hl, $59c1                                     ; $40d5: $21 $c1 $59
	db $e3                                           ; $40d8: $e3

jr_07f_40d9:
	nop                                              ; $40d9: $00
	or [hl]                                          ; $40da: $b6
	ret nz                                           ; $40db: $c0

	ld bc, $04a0                                     ; $40dc: $01 $a0 $04
	rlca                                             ; $40df: $07
	jr c, @-$1d                                      ; $40e0: $38 $e1

	ld [bc], a                                       ; $40e2: $02
	rlca                                             ; $40e3: $07
	or [hl]                                          ; $40e4: $b6
	and b                                            ; $40e5: $a0
	add b                                            ; $40e6: $80
	and b                                            ; $40e7: $a0
	jr jr_07f_40ea                                   ; $40e8: $18 $00

jr_07f_40ea:
	inc bc                                           ; $40ea: $03
	db $e4                                           ; $40eb: $e4
	nop                                              ; $40ec: $00
	dec bc                                           ; $40ed: $0b
	rst $38                                          ; $40ee: $ff
	rlca                                             ; $40ef: $07
	ld b, b                                          ; $40f0: $40
	add b                                            ; $40f1: $80
	and b                                            ; $40f2: $a0
	jr jr_07f_40d9                                   ; $40f3: $18 $e4

	nop                                              ; $40f5: $00
	ld c, d                                          ; $40f6: $4a
	jr z, @+$08                                      ; $40f7: $28 $06

	ret nz                                           ; $40f9: $c0

	ld bc, $04a0                                     ; $40fa: $01 $a0 $04
	rlca                                             ; $40fd: $07
	ld a, $3f                                        ; $40fe: $3e $3f
	rlca                                             ; $4100: $07
	ld b, a                                          ; $4101: $47
	add hl, bc                                       ; $4102: $09
	ld de, $02e1                                     ; $4103: $11 $e1 $02
	inc bc                                           ; $4106: $03
	inc de                                           ; $4107: $13
	ret nz                                           ; $4108: $c0

	ld bc, $04a0                                     ; $4109: $01 $a0 $04
	rlca                                             ; $410c: $07
	ld c, e                                          ; $410d: $4b
	pop hl                                           ; $410e: $e1
	ld [bc], a                                       ; $410f: $02
	inc bc                                           ; $4110: $03
	add a                                            ; $4111: $87
	db $e4                                           ; $4112: $e4
	nop                                              ; $4113: $00
	sbc c                                            ; $4114: $99
	rlca                                             ; $4115: $07
	ld d, e                                          ; $4116: $53
	add hl, bc                                       ; $4117: $09
	ld de, $02e1                                     ; $4118: $11 $e1 $02
	inc bc                                           ; $411b: $03
	rra                                              ; $411c: $1f
	ret nz                                           ; $411d: $c0

	ld bc, $04a0                                     ; $411e: $01 $a0 $04
	rlca                                             ; $4121: $07
	ld e, d                                          ; $4122: $5a
	pop hl                                           ; $4123: $e1
	ld [bc], a                                       ; $4124: $02
	inc bc                                           ; $4125: $03
	xor e                                            ; $4126: $ab
	db $e4                                           ; $4127: $e4
	nop                                              ; $4128: $00
	add h                                            ; $4129: $84
	rlca                                             ; $412a: $07
	ld h, h                                          ; $412b: $64
	add hl, bc                                       ; $412c: $09
	ld de, $02e1                                     ; $412d: $11 $e1 $02
	inc bc                                           ; $4130: $03
	dec de                                           ; $4131: $1b
	ret nz                                           ; $4132: $c0

	ld bc, $04a0                                     ; $4133: $01 $a0 $04
	rlca                                             ; $4136: $07
	ld h, a                                          ; $4137: $67
	pop hl                                           ; $4138: $e1
	ld [bc], a                                       ; $4139: $02
	inc bc                                           ; $413a: $03
	and d                                            ; $413b: $a2
	db $e4                                           ; $413c: $e4
	nop                                              ; $413d: $00
	ld l, a                                          ; $413e: $6f
	jr z, jr_07f_4147                                ; $413f: $28 $06

	ret nz                                           ; $4141: $c0

	ld bc, $04a0                                     ; $4142: $01 $a0 $04
	rlca                                             ; $4145: $07
	ld l, c                                          ; $4146: $69

jr_07f_4147:
	ld h, h                                          ; $4147: $64
	ei                                               ; $4148: $fb
	ei                                               ; $4149: $fb
	ret nz                                           ; $414a: $c0

	add e                                            ; $414b: $83
	jp nc, Jump_07f_78e0                             ; $414c: $d2 $e0 $78

	dec d                                            ; $414f: $15
	rlca                                             ; $4150: $07
	ld [hl], d                                       ; $4151: $72
	add hl, bc                                       ; $4152: $09
	ld de, $02e1                                     ; $4153: $11 $e1 $02
	inc bc                                           ; $4156: $03
	inc de                                           ; $4157: $13
	ret nz                                           ; $4158: $c0

	ld bc, $04a0                                     ; $4159: $01 $a0 $04
	rlca                                             ; $415c: $07
	ld a, c                                          ; $415d: $79
	pop hl                                           ; $415e: $e1
	ld [bc], a                                       ; $415f: $02
	inc bc                                           ; $4160: $03
	sub b                                            ; $4161: $90
	db $e4                                           ; $4162: $e4
	nop                                              ; $4163: $00
	ld c, c                                          ; $4164: $49
	ei                                               ; $4165: $fb
	ld hl, sp-$40                                    ; $4166: $f8 $c0
	add e                                            ; $4168: $83
	jp nc, Jump_07f_78e0                             ; $4169: $d2 $e0 $78

	dec d                                            ; $416c: $15
	rlca                                             ; $416d: $07
	add c                                            ; $416e: $81
	add hl, bc                                       ; $416f: $09
	ld de, $02e1                                     ; $4170: $11 $e1 $02
	inc bc                                           ; $4173: $03
	rra                                              ; $4174: $1f
	ret nz                                           ; $4175: $c0

	ld bc, $04a0                                     ; $4176: $01 $a0 $04
	rlca                                             ; $4179: $07
	adc c                                            ; $417a: $89
	pop hl                                           ; $417b: $e1
	ld [bc], a                                       ; $417c: $02
	inc bc                                           ; $417d: $03
	xor e                                            ; $417e: $ab
	db $e4                                           ; $417f: $e4
	nop                                              ; $4180: $00
	inc l                                            ; $4181: $2c
	rlca                                             ; $4182: $07
	sub e                                            ; $4183: $93
	add hl, bc                                       ; $4184: $09
	ld de, $02e1                                     ; $4185: $11 $e1 $02
	inc bc                                           ; $4188: $03
	rra                                              ; $4189: $1f
	ret nz                                           ; $418a: $c0

	ld bc, $04a0                                     ; $418b: $01 $a0 $04
	rlca                                             ; $418e: $07
	sub l                                            ; $418f: $95
	pop hl                                           ; $4190: $e1
	ld [bc], a                                       ; $4191: $02
	inc bc                                           ; $4192: $03
	xor e                                            ; $4193: $ab
	db $e4                                           ; $4194: $e4
	nop                                              ; $4195: $00
	rla                                              ; $4196: $17
	rlca                                             ; $4197: $07
	sbc h                                            ; $4198: $9c
	add hl, bc                                       ; $4199: $09
	ld de, $02e1                                     ; $419a: $11 $e1 $02
	inc bc                                           ; $419d: $03
	dec de                                           ; $419e: $1b
	ret nz                                           ; $419f: $c0

	ld bc, $04a0                                     ; $41a0: $01 $a0 $04
	rlca                                             ; $41a3: $07
	sbc [hl]                                         ; $41a4: $9e
	pop hl                                           ; $41a5: $e1
	ld [bc], a                                       ; $41a6: $02
	inc bc                                           ; $41a7: $03
	and d                                            ; $41a8: $a2
	db $e4                                           ; $41a9: $e4
	nop                                              ; $41aa: $00
	ld [bc], a                                       ; $41ab: $02
	add hl, bc                                       ; $41ac: $09
	ld c, $c1                                        ; $41ad: $0e $c1
	ld e, c                                          ; $41af: $59
	db $e3                                           ; $41b0: $e3
	nop                                              ; $41b1: $00
	or l                                             ; $41b2: $b5
	ret nz                                           ; $41b3: $c0

	ld d, [hl]                                       ; $41b4: $56
	jp nc, $d0d6                                     ; $41b5: $d2 $d6 $d0

	push hl                                          ; $41b8: $e5
	dec de                                           ; $41b9: $1b
	nop                                              ; $41ba: $00
	nop                                              ; $41bb: $00
	add hl, bc                                       ; $41bc: $09
	ld d, d                                          ; $41bd: $52
	ret nz                                           ; $41be: $c0

	ld bc, $04a0                                     ; $41bf: $01 $a0 $04
	rlca                                             ; $41c2: $07
	and d                                            ; $41c3: $a2
	ret nz                                           ; $41c4: $c0

	ld bc, $01a0                                     ; $41c5: $01 $a0 $01
	inc b                                            ; $41c8: $04
	ld [hl], c                                       ; $41c9: $71
	add e                                            ; $41ca: $83
	adc e                                            ; $41cb: $8b
	ld [bc], a                                       ; $41cc: $02
	ld b, d                                          ; $41cd: $42
	ld [bc], a                                       ; $41ce: $02
	or b                                             ; $41cf: $b0
	ld [hl], e                                       ; $41d0: $73
	ld [$83d0], sp                                   ; $41d1: $08 $d0 $83
	ld bc, $d1de                                     ; $41d4: $01 $de $d1
	db $e4                                           ; $41d7: $e4
	ld bc, $0219                                     ; $41d8: $01 $19 $02
	or b                                             ; $41db: $b0
	ld l, a                                          ; $41dc: $6f
	ld [$83d0], sp                                   ; $41dd: $08 $d0 $83
	ld bc, $d2de                                     ; $41e0: $01 $de $d2
	db $e4                                           ; $41e3: $e4
	ld bc, $0267                                     ; $41e4: $01 $67 $02
	or b                                             ; $41e7: $b0
	ld l, h                                          ; $41e8: $6c
	ld [$83d0], sp                                   ; $41e9: $08 $d0 $83
	ld bc, $d3de                                     ; $41ec: $01 $de $d3
	db $e4                                           ; $41ef: $e4
	ld [bc], a                                       ; $41f0: $02
	ld b, $00                                        ; $41f1: $06 $00
	inc e                                            ; $41f3: $1c
	ret nc                                           ; $41f4: $d0

	add e                                            ; $41f5: $83
	ld bc, $d0de                                     ; $41f6: $01 $de $d0
	pop bc                                           ; $41f9: $c1
	ld e, c                                          ; $41fa: $59
	db $e3                                           ; $41fb: $e3
	nop                                              ; $41fc: $00
	sbc e                                            ; $41fd: $9b
	and b                                            ; $41fe: $a0
	add b                                            ; $41ff: $80
	and b                                            ; $4200: $a0
	add hl, de                                       ; $4201: $19
	nop                                              ; $4202: $00
	inc bc                                           ; $4203: $03
	db $e4                                           ; $4204: $e4
	nop                                              ; $4205: $00
	dec bc                                           ; $4206: $0b
	rst $38                                          ; $4207: $ff
	rlca                                             ; $4208: $07
	ld b, b                                          ; $4209: $40
	add b                                            ; $420a: $80
	and b                                            ; $420b: $a0
	add hl, de                                       ; $420c: $19
	db $e4                                           ; $420d: $e4
	nop                                              ; $420e: $00
	sbc e                                            ; $420f: $9b
	jr z, jr_07f_4218                                ; $4210: $28 $06

	ret nz                                           ; $4212: $c0

	ld bc, $04a0                                     ; $4213: $01 $a0 $04
	rlca                                             ; $4216: $07
	and [hl]                                         ; $4217: $a6

jr_07f_4218:
	sub b                                            ; $4218: $90
	rlca                                             ; $4219: $07
	or a                                             ; $421a: $b7
	add hl, bc                                       ; $421b: $09
	inc l                                            ; $421c: $2c
	pop hl                                           ; $421d: $e1
	ld [bc], a                                       ; $421e: $02
	inc bc                                           ; $421f: $03
	inc de                                           ; $4220: $13
	add d                                            ; $4221: $82
	ret nz                                           ; $4222: $c0

	dec de                                           ; $4223: $1b
	jp nc, $d002                                     ; $4224: $d2 $02 $d0

	pop de                                           ; $4227: $d1
	ld b, $c0                                        ; $4228: $06 $c0
	ld bc, $04a0                                     ; $422a: $01 $a0 $04
	rlca                                             ; $422d: $07
	cp h                                             ; $422e: $bc
	ld [bc], a                                       ; $422f: $02
	jp nc, $06d3                                     ; $4230: $d2 $d3 $06

	ret nz                                           ; $4233: $c0

	ld bc, $04a0                                     ; $4234: $01 $a0 $04
	rlca                                             ; $4237: $07
	ret nz                                           ; $4238: $c0

	ld bc, $06d4                                     ; $4239: $01 $d4 $06
	ret nz                                           ; $423c: $c0

	ld bc, $04a0                                     ; $423d: $01 $a0 $04
	rlca                                             ; $4240: $07
	ret                                              ; $4241: $c9


	pop hl                                           ; $4242: $e1
	ld [bc], a                                       ; $4243: $02
	inc bc                                           ; $4244: $03
	add a                                            ; $4245: $87
	db $e4                                           ; $4246: $e4
	ld [bc], a                                       ; $4247: $02
	add a                                            ; $4248: $87
	rlca                                             ; $4249: $07
	adc $09                                          ; $424a: $ce $09
	inc l                                            ; $424c: $2c
	pop hl                                           ; $424d: $e1
	ld [bc], a                                       ; $424e: $02
	inc bc                                           ; $424f: $03
	rra                                              ; $4250: $1f
	add d                                            ; $4251: $82
	ret nz                                           ; $4252: $c0

	dec de                                           ; $4253: $1b
	jp nc, $d002                                     ; $4254: $d2 $02 $d0

	pop de                                           ; $4257: $d1
	ld b, $c0                                        ; $4258: $06 $c0
	ld bc, $04a0                                     ; $425a: $01 $a0 $04
	rlca                                             ; $425d: $07
	pop de                                           ; $425e: $d1
	ld [bc], a                                       ; $425f: $02
	jp nc, $06d3                                     ; $4260: $d2 $d3 $06

	ret nz                                           ; $4263: $c0

	ld bc, $04a0                                     ; $4264: $01 $a0 $04
	rlca                                             ; $4267: $07
	jp c, $d401                                      ; $4268: $da $01 $d4

	ld b, $c0                                        ; $426b: $06 $c0
	ld bc, $04a0                                     ; $426d: $01 $a0 $04
	rlca                                             ; $4270: $07
	sbc $e1                                          ; $4271: $de $e1
	ld [bc], a                                       ; $4273: $02
	inc bc                                           ; $4274: $03
	xor e                                            ; $4275: $ab
	db $e4                                           ; $4276: $e4
	ld [bc], a                                       ; $4277: $02
	ld d, a                                          ; $4278: $57
	rlca                                             ; $4279: $07
	pop hl                                           ; $427a: $e1
	add hl, bc                                       ; $427b: $09
	inc l                                            ; $427c: $2c
	pop hl                                           ; $427d: $e1
	ld [bc], a                                       ; $427e: $02
	inc bc                                           ; $427f: $03
	dec de                                           ; $4280: $1b
	add d                                            ; $4281: $82
	ret nz                                           ; $4282: $c0

	dec de                                           ; $4283: $1b
	jp nc, $d002                                     ; $4284: $d2 $02 $d0

	pop de                                           ; $4287: $d1
	ld b, $c0                                        ; $4288: $06 $c0
	ld bc, $04a0                                     ; $428a: $01 $a0 $04
	rlca                                             ; $428d: $07
	rst SubAFromBC                                          ; $428e: $e7
	ld [bc], a                                       ; $428f: $02
	jp nc, $06d3                                     ; $4290: $d2 $d3 $06

	ret nz                                           ; $4293: $c0

	ld bc, $04a0                                     ; $4294: $01 $a0 $04
	rlca                                             ; $4297: $07
	xor $01                                          ; $4298: $ee $01
	call nc, $c006                                   ; $429a: $d4 $06 $c0
	ld bc, $04a0                                     ; $429d: $01 $a0 $04
	rlca                                             ; $42a0: $07
	cp $e1                                           ; $42a1: $fe $e1
	ld [bc], a                                       ; $42a3: $02
	inc bc                                           ; $42a4: $03
	and d                                            ; $42a5: $a2
	db $e4                                           ; $42a6: $e4
	ld [bc], a                                       ; $42a7: $02
	daa                                              ; $42a8: $27
	jr z, @+$08                                      ; $42a9: $28 $06

	ret nz                                           ; $42ab: $c0

	ld bc, $04a0                                     ; $42ac: $01 $a0 $04
	ld [$3f07], sp                                   ; $42af: $08 $07 $3f
	ld [$090d], sp                                   ; $42b2: $08 $0d $09
	ld de, $02e1                                     ; $42b5: $11 $e1 $02
	inc bc                                           ; $42b8: $03
	rla                                              ; $42b9: $17
	ret nz                                           ; $42ba: $c0

	ld bc, $04a0                                     ; $42bb: $01 $a0 $04
	ld [$e113], sp                                   ; $42be: $08 $13 $e1
	ld [bc], a                                       ; $42c1: $02
	inc bc                                           ; $42c2: $03
	sbc c                                            ; $42c3: $99
	db $e4                                           ; $42c4: $e4
	ld [bc], a                                       ; $42c5: $02
	add hl, bc                                       ; $42c6: $09
	ld [$0921], sp                                   ; $42c7: $08 $21 $09
	ld de, $02e1                                     ; $42ca: $11 $e1 $02
	inc bc                                           ; $42cd: $03
	rra                                              ; $42ce: $1f
	ret nz                                           ; $42cf: $c0

	ld bc, $04a0                                     ; $42d0: $01 $a0 $04
	ld bc, $e1c1                                     ; $42d3: $01 $c1 $e1
	ld [bc], a                                       ; $42d6: $02
	inc bc                                           ; $42d7: $03
	xor e                                            ; $42d8: $ab
	db $e4                                           ; $42d9: $e4
	ld bc, $08f4                                     ; $42da: $01 $f4 $08
	add hl, hl                                       ; $42dd: $29
	add hl, bc                                       ; $42de: $09
	ld de, $02e1                                     ; $42df: $11 $e1 $02
	inc bc                                           ; $42e2: $03
	dec de                                           ; $42e3: $1b
	ret nz                                           ; $42e4: $c0

	ld bc, $04a0                                     ; $42e5: $01 $a0 $04
	ld [$e131], sp                                   ; $42e8: $08 $31 $e1
	ld [bc], a                                       ; $42eb: $02
	inc bc                                           ; $42ec: $03
	and d                                            ; $42ed: $a2
	db $e4                                           ; $42ee: $e4
	ld bc, $2edf                                     ; $42ef: $01 $df $2e
	dec b                                            ; $42f2: $05
	pop bc                                           ; $42f3: $c1
	ld e, c                                          ; $42f4: $59
	db $e3                                           ; $42f5: $e3
	nop                                              ; $42f6: $00
	sbc h                                            ; $42f7: $9c
	ld d, d                                          ; $42f8: $52
	add b                                            ; $42f9: $80
	and b                                            ; $42fa: $a0
	ld a, [de]                                       ; $42fb: $1a
	nop                                              ; $42fc: $00
	jr z, @+$08                                      ; $42fd: $28 $06

	ret nz                                           ; $42ff: $c0

	ld bc, $04a0                                     ; $4300: $01 $a0 $04
	ld [$3f38], sp                                   ; $4303: $08 $38 $3f
	ld [$093e], sp                                   ; $4306: $08 $3e $09
	ld de, $02e1                                     ; $4309: $11 $e1 $02
	inc bc                                           ; $430c: $03
	inc de                                           ; $430d: $13
	ret nz                                           ; $430e: $c0

	ld bc, $04a0                                     ; $430f: $01 $a0 $04
	ld [$e146], sp                                   ; $4312: $08 $46 $e1
	ld [bc], a                                       ; $4315: $02
	inc bc                                           ; $4316: $03
	sub b                                            ; $4317: $90
	db $e4                                           ; $4318: $e4
	ld bc, $08b5                                     ; $4319: $01 $b5 $08
	ld d, b                                          ; $431c: $50
	add hl, bc                                       ; $431d: $09
	ld de, $02e1                                     ; $431e: $11 $e1 $02
	inc bc                                           ; $4321: $03
	rra                                              ; $4322: $1f
	ret nz                                           ; $4323: $c0

	ld bc, $04a0                                     ; $4324: $01 $a0 $04
	ld [$e158], sp                                   ; $4327: $08 $58 $e1
	ld [bc], a                                       ; $432a: $02
	inc bc                                           ; $432b: $03
	xor e                                            ; $432c: $ab
	db $e4                                           ; $432d: $e4
	ld bc, $08a0                                     ; $432e: $01 $a0 $08
	ld e, e                                          ; $4331: $5b
	add hl, bc                                       ; $4332: $09
	ld de, $02e1                                     ; $4333: $11 $e1 $02
	inc bc                                           ; $4336: $03
	dec de                                           ; $4337: $1b
	ret nz                                           ; $4338: $c0

	ld bc, $04a0                                     ; $4339: $01 $a0 $04
	ld [$e162], sp                                   ; $433c: $08 $62 $e1
	ld [bc], a                                       ; $433f: $02
	inc bc                                           ; $4340: $03
	and d                                            ; $4341: $a2
	db $e4                                           ; $4342: $e4
	ld bc, $ff8b                                     ; $4343: $01 $8b $ff
	add hl, bc                                       ; $4346: $09
	inc bc                                           ; $4347: $03
	ldh [rSB], a                                     ; $4348: $e0 $01
	ld e, b                                          ; $434a: $58
	ld l, $05                                        ; $434b: $2e $05
	pop bc                                           ; $434d: $c1
	ld e, c                                          ; $434e: $59
	db $e3                                           ; $434f: $e3
	nop                                              ; $4350: $00
	sbc l                                            ; $4351: $9d
	and e                                            ; $4352: $a3
	add b                                            ; $4353: $80
	and b                                            ; $4354: $a0
	dec de                                           ; $4355: $1b
	nop                                              ; $4356: $00
	jr z, @+$08                                      ; $4357: $28 $06

	ret nz                                           ; $4359: $c0

	ld bc, $04a0                                     ; $435a: $01 $a0 $04
	ld [$906a], sp                                   ; $435d: $08 $6a $90
	ld [$0975], sp                                   ; $4360: $08 $75 $09
	inc l                                            ; $4363: $2c
	pop hl                                           ; $4364: $e1
	ld [bc], a                                       ; $4365: $02
	inc bc                                           ; $4366: $03
	inc de                                           ; $4367: $13
	add d                                            ; $4368: $82
	ret nz                                           ; $4369: $c0

	dec de                                           ; $436a: $1b
	jp nc, $d002                                     ; $436b: $d2 $02 $d0

	pop de                                           ; $436e: $d1
	ld b, $c0                                        ; $436f: $06 $c0
	ld bc, $04a0                                     ; $4371: $01 $a0 $04
	ld [$027b], sp                                   ; $4374: $08 $7b $02
	jp nc, $06d3                                     ; $4377: $d2 $d3 $06

	ret nz                                           ; $437a: $c0

	ld bc, $04a0                                     ; $437b: $01 $a0 $04
	ld [$0181], sp                                   ; $437e: $08 $81 $01
	call nc, $c006                                   ; $4381: $d4 $06 $c0
	ld bc, $04a0                                     ; $4384: $01 $a0 $04
	ld [$e18a], sp                                   ; $4387: $08 $8a $e1
	ld [bc], a                                       ; $438a: $02
	inc bc                                           ; $438b: $03
	add a                                            ; $438c: $87
	db $e4                                           ; $438d: $e4
	ld bc, $0840                                     ; $438e: $01 $40 $08
	adc [hl]                                         ; $4391: $8e
	add hl, bc                                       ; $4392: $09
	inc l                                            ; $4393: $2c
	pop hl                                           ; $4394: $e1
	ld [bc], a                                       ; $4395: $02
	inc bc                                           ; $4396: $03
	rra                                              ; $4397: $1f
	add d                                            ; $4398: $82
	ret nz                                           ; $4399: $c0

	dec de                                           ; $439a: $1b
	jp nc, $d002                                     ; $439b: $d2 $02 $d0

	pop de                                           ; $439e: $d1
	ld b, $c0                                        ; $439f: $06 $c0
	ld bc, $04a0                                     ; $43a1: $01 $a0 $04
	ld [$0295], sp                                   ; $43a4: $08 $95 $02
	jp nc, $06d3                                     ; $43a7: $d2 $d3 $06

	ret nz                                           ; $43aa: $c0

	ld bc, $04a0                                     ; $43ab: $01 $a0 $04
	ld [$019d], sp                                   ; $43ae: $08 $9d $01
	call nc, $c006                                   ; $43b1: $d4 $06 $c0
	ld bc, $04a0                                     ; $43b4: $01 $a0 $04
	ld [$e1a4], sp                                   ; $43b7: $08 $a4 $e1
	ld [bc], a                                       ; $43ba: $02
	inc bc                                           ; $43bb: $03
	xor e                                            ; $43bc: $ab
	db $e4                                           ; $43bd: $e4
	ld bc, $0810                                     ; $43be: $01 $10 $08
	xor b                                            ; $43c1: $a8
	add hl, bc                                       ; $43c2: $09
	inc l                                            ; $43c3: $2c
	pop hl                                           ; $43c4: $e1
	ld [bc], a                                       ; $43c5: $02
	inc bc                                           ; $43c6: $03
	dec de                                           ; $43c7: $1b
	add d                                            ; $43c8: $82
	ret nz                                           ; $43c9: $c0

	dec de                                           ; $43ca: $1b
	jp nc, $d002                                     ; $43cb: $d2 $02 $d0

	pop de                                           ; $43ce: $d1
	ld b, $c0                                        ; $43cf: $06 $c0
	ld bc, $04a0                                     ; $43d1: $01 $a0 $04
	ld [$02ae], sp                                   ; $43d4: $08 $ae $02
	jp nc, $06d3                                     ; $43d7: $d2 $d3 $06

	ret nz                                           ; $43da: $c0

	ld bc, $04a0                                     ; $43db: $01 $a0 $04
	ld [$01b9], sp                                   ; $43de: $08 $b9 $01
	call nc, $c006                                   ; $43e1: $d4 $06 $c0
	ld bc, $04a0                                     ; $43e4: $01 $a0 $04
	ld [$e1bf], sp                                   ; $43e7: $08 $bf $e1
	ld [bc], a                                       ; $43ea: $02
	inc bc                                           ; $43eb: $03
	and d                                            ; $43ec: $a2
	db $e4                                           ; $43ed: $e4
	nop                                              ; $43ee: $00
	ldh [rIE], a                                     ; $43ef: $e0 $ff
	add hl, bc                                       ; $43f1: $09
	inc bc                                           ; $43f2: $03
	ldh [rP1], a                                     ; $43f3: $e0 $00
	xor l                                            ; $43f5: $ad
	ld l, $05                                        ; $43f6: $2e $05
	pop bc                                           ; $43f8: $c1
	ld e, c                                          ; $43f9: $59
	db $e3                                           ; $43fa: $e3
	nop                                              ; $43fb: $00
	sbc [hl]                                         ; $43fc: $9e
	and e                                            ; $43fd: $a3
	add b                                            ; $43fe: $80
	and b                                            ; $43ff: $a0
	inc e                                            ; $4400: $1c
	nop                                              ; $4401: $00
	jr z, @+$08                                      ; $4402: $28 $06

	ret nz                                           ; $4404: $c0

	ld bc, $04a0                                     ; $4405: $01 $a0 $04
	ld [$90c9], sp                                   ; $4408: $08 $c9 $90
	ld [$09d9], sp                                   ; $440b: $08 $d9 $09
	inc l                                            ; $440e: $2c
	pop hl                                           ; $440f: $e1
	ld [bc], a                                       ; $4410: $02
	inc bc                                           ; $4411: $03
	inc de                                           ; $4412: $13
	add d                                            ; $4413: $82
	ret nz                                           ; $4414: $c0

	dec de                                           ; $4415: $1b
	jp nc, $d002                                     ; $4416: $d2 $02 $d0

	pop de                                           ; $4419: $d1
	ld b, $c0                                        ; $441a: $06 $c0
	ld bc, $04a0                                     ; $441c: $01 $a0 $04
	ld [$02e1], sp                                   ; $441f: $08 $e1 $02
	jp nc, $06d3                                     ; $4422: $d2 $d3 $06

	ret nz                                           ; $4425: $c0

	ld bc, $04a0                                     ; $4426: $01 $a0 $04
	ld [$01e6], sp                                   ; $4429: $08 $e6 $01
	call nc, $c006                                   ; $442c: $d4 $06 $c0
	ld bc, $04a0                                     ; $442f: $01 $a0 $04
	ld [$e1ee], sp                                   ; $4432: $08 $ee $e1
	ld [bc], a                                       ; $4435: $02
	inc bc                                           ; $4436: $03
	add a                                            ; $4437: $87
	db $e4                                           ; $4438: $e4
	nop                                              ; $4439: $00
	sub l                                            ; $443a: $95
	ld [$09f2], sp                                   ; $443b: $08 $f2 $09
	inc l                                            ; $443e: $2c
	pop hl                                           ; $443f: $e1
	ld [bc], a                                       ; $4440: $02
	inc bc                                           ; $4441: $03
	rra                                              ; $4442: $1f
	add d                                            ; $4443: $82
	ret nz                                           ; $4444: $c0

	dec de                                           ; $4445: $1b
	jp nc, $d002                                     ; $4446: $d2 $02 $d0

	pop de                                           ; $4449: $d1
	ld b, $c0                                        ; $444a: $06 $c0
	ld bc, $04a0                                     ; $444c: $01 $a0 $04
	ld [$02fb], sp                                   ; $444f: $08 $fb $02
	jp nc, $06d3                                     ; $4452: $d2 $d3 $06

	ret nz                                           ; $4455: $c0

	ld bc, $04a0                                     ; $4456: $01 $a0 $04
	add hl, bc                                       ; $4459: $09
	nop                                              ; $445a: $00
	ld bc, $06d4                                     ; $445b: $01 $d4 $06
	ret nz                                           ; $445e: $c0

	ld bc, $04a0                                     ; $445f: $01 $a0 $04
	add hl, bc                                       ; $4462: $09
	ld [$02e1], sp                                   ; $4463: $08 $e1 $02
	inc bc                                           ; $4466: $03
	xor e                                            ; $4467: $ab
	db $e4                                           ; $4468: $e4
	nop                                              ; $4469: $00
	ld h, l                                          ; $446a: $65
	add hl, bc                                       ; $446b: $09
	db $10                                           ; $446c: $10
	add hl, bc                                       ; $446d: $09
	inc l                                            ; $446e: $2c
	pop hl                                           ; $446f: $e1
	ld [bc], a                                       ; $4470: $02
	inc bc                                           ; $4471: $03
	dec de                                           ; $4472: $1b
	add d                                            ; $4473: $82
	ret nz                                           ; $4474: $c0

	dec de                                           ; $4475: $1b
	jp nc, $d002                                     ; $4476: $d2 $02 $d0

	pop de                                           ; $4479: $d1
	ld b, $c0                                        ; $447a: $06 $c0
	ld bc, $04a0                                     ; $447c: $01 $a0 $04
	add hl, bc                                       ; $447f: $09
	jr @+$04                                         ; $4480: $18 $02

	jp nc, $06d3                                     ; $4482: $d2 $d3 $06

	ret nz                                           ; $4485: $c0

	ld bc, $04a0                                     ; $4486: $01 $a0 $04
	add hl, bc                                       ; $4489: $09
	inc hl                                           ; $448a: $23
	ld bc, $06d4                                     ; $448b: $01 $d4 $06
	ret nz                                           ; $448e: $c0

	ld bc, $04a0                                     ; $448f: $01 $a0 $04
	inc bc                                           ; $4492: $03
	db $ed                                           ; $4493: $ed
	pop hl                                           ; $4494: $e1
	ld [bc], a                                       ; $4495: $02
	inc bc                                           ; $4496: $03
	and d                                            ; $4497: $a2
	db $e4                                           ; $4498: $e4
	nop                                              ; $4499: $00
	dec [hl]                                         ; $449a: $35
	rst $38                                          ; $449b: $ff
	add hl, bc                                       ; $449c: $09
	inc bc                                           ; $449d: $03
	ldh [rP1], a                                     ; $449e: $e0 $00
	ld [bc], a                                       ; $44a0: $02
	inc l                                            ; $44a1: $2c
	pop hl                                           ; $44a2: $e1
	ld [bc], a                                       ; $44a3: $02
	inc bc                                           ; $44a4: $03
	dec de                                           ; $44a5: $1b
	add d                                            ; $44a6: $82
	ret nz                                           ; $44a7: $c0

	dec de                                           ; $44a8: $1b
	jp nc, $d002                                     ; $44a9: $d2 $02 $d0

	pop de                                           ; $44ac: $d1
	ld b, $c0                                        ; $44ad: $06 $c0
	ld bc, $04a0                                     ; $44af: $01 $a0 $04
	add hl, bc                                       ; $44b2: $09
	dec l                                            ; $44b3: $2d
	ld [bc], a                                       ; $44b4: $02
	jp nc, $06d3                                     ; $44b5: $d2 $d3 $06

	ret nz                                           ; $44b8: $c0

	ld bc, $04a0                                     ; $44b9: $01 $a0 $04
	add hl, bc                                       ; $44bc: $09
	cpl                                              ; $44bd: $2f
	ld bc, $06d4                                     ; $44be: $01 $d4 $06
	ret nz                                           ; $44c1: $c0

	ld bc, $04a0                                     ; $44c2: $01 $a0 $04
	add hl, bc                                       ; $44c5: $09
	inc [hl]                                         ; $44c6: $34
	pop hl                                           ; $44c7: $e1
	ld [bc], a                                       ; $44c8: $02
	inc bc                                           ; $44c9: $03
	and d                                            ; $44ca: $a2
	db $e4                                           ; $44cb: $e4
	nop                                              ; $44cc: $00
	ld [bc], a                                       ; $44cd: $02
	add hl, bc                                       ; $44ce: $09
	cpl                                              ; $44cf: $2f
	pop bc                                           ; $44d0: $c1
	ld e, c                                          ; $44d1: $59
	db $e3                                           ; $44d2: $e3
	nop                                              ; $44d3: $00
	sbc d                                            ; $44d4: $9a
	add e                                            ; $44d5: $83
	adc e                                            ; $44d6: $8b
	ld [bc], a                                       ; $44d7: $02
	ld b, d                                          ; $44d8: $42
	ld [bc], a                                       ; $44d9: $02
	or b                                             ; $44da: $b0
	ld [hl], e                                       ; $44db: $73
	dec b                                            ; $44dc: $05
	ret nz                                           ; $44dd: $c0

	ld d, [hl]                                       ; $44de: $56
	jp nc, $d1d7                                     ; $44df: $d2 $d7 $d1

	ld [bc], a                                       ; $44e2: $02
	or b                                             ; $44e3: $b0
	ld l, a                                          ; $44e4: $6f
	dec b                                            ; $44e5: $05
	ret nz                                           ; $44e6: $c0

	ld d, [hl]                                       ; $44e7: $56
	jp nc, $d2d7                                     ; $44e8: $d2 $d7 $d2

	ld [bc], a                                       ; $44eb: $02
	or b                                             ; $44ec: $b0
	ld l, h                                          ; $44ed: $6c
	dec b                                            ; $44ee: $05
	ret nz                                           ; $44ef: $c0

	ld d, [hl]                                       ; $44f0: $56
	jp nc, $d3d7                                     ; $44f1: $d2 $d7 $d3

	nop                                              ; $44f4: $00
	dec b                                            ; $44f5: $05
	ret nz                                           ; $44f6: $c0

	ld d, [hl]                                       ; $44f7: $56
	jp nc, $d0d7                                     ; $44f8: $d2 $d7 $d0

	push hl                                          ; $44fb: $e5
	dec de                                           ; $44fc: $1b
	nop                                              ; $44fd: $00
	nop                                              ; $44fe: $00
	add hl, bc                                       ; $44ff: $09
	inc l                                            ; $4500: $2c
	ret nc                                           ; $4501: $d0

	add e                                            ; $4502: $83
	ld bc, $d0de                                     ; $4503: $01 $de $d0
	pop bc                                           ; $4506: $c1
	jp z, $d2d0                                      ; $4507: $ca $d0 $d2

	ret nz                                           ; $450a: $c0

	ld bc, $04a0                                     ; $450b: $01 $a0 $04
	rlca                                             ; $450e: $07
	and d                                            ; $450f: $a2
	ret nz                                           ; $4510: $c0

	ld bc, $01a0                                     ; $4511: $01 $a0 $01
	inc b                                            ; $4514: $04
	ld [hl], c                                       ; $4515: $71
	pop bc                                           ; $4516: $c1
	ld e, c                                          ; $4517: $59
	db $e3                                           ; $4518: $e3
	nop                                              ; $4519: $00
	and l                                            ; $451a: $a5
	and b                                            ; $451b: $a0
	add b                                            ; $451c: $80
	and b                                            ; $451d: $a0
	dec e                                            ; $451e: $1d
	nop                                              ; $451f: $00
	inc bc                                           ; $4520: $03
	db $e4                                           ; $4521: $e4
	nop                                              ; $4522: $00
	dec bc                                           ; $4523: $0b
	rst $38                                          ; $4524: $ff
	rlca                                             ; $4525: $07
	ld b, b                                          ; $4526: $40
	add b                                            ; $4527: $80
	and b                                            ; $4528: $a0
	dec e                                            ; $4529: $1d
	db $e4                                           ; $452a: $e4
	nop                                              ; $452b: $00
	sbc e                                            ; $452c: $9b
	jr z, jr_07f_4535                                ; $452d: $28 $06

	ret nz                                           ; $452f: $c0

	ld bc, $04a0                                     ; $4530: $01 $a0 $04
	add hl, bc                                       ; $4533: $09
	inc a                                            ; $4534: $3c

jr_07f_4535:
	sub b                                            ; $4535: $90
	add hl, bc                                       ; $4536: $09
	ld c, d                                          ; $4537: $4a
	add hl, bc                                       ; $4538: $09
	inc l                                            ; $4539: $2c
	pop hl                                           ; $453a: $e1
	ld [bc], a                                       ; $453b: $02
	inc bc                                           ; $453c: $03
	rla                                              ; $453d: $17
	add d                                            ; $453e: $82
	ret nz                                           ; $453f: $c0

	dec de                                           ; $4540: $1b
	jp nc, $d002                                     ; $4541: $d2 $02 $d0

	pop de                                           ; $4544: $d1
	ld b, $c0                                        ; $4545: $06 $c0
	ld bc, $04a0                                     ; $4547: $01 $a0 $04
	add hl, bc                                       ; $454a: $09
	ld d, b                                          ; $454b: $50
	ld [bc], a                                       ; $454c: $02
	jp nc, $06d3                                     ; $454d: $d2 $d3 $06

	ret nz                                           ; $4550: $c0

	ld bc, $04a0                                     ; $4551: $01 $a0 $04
	add hl, bc                                       ; $4554: $09
	ld e, d                                          ; $4555: $5a
	ld bc, $06d4                                     ; $4556: $01 $d4 $06
	ret nz                                           ; $4559: $c0

	ld bc, $04a0                                     ; $455a: $01 $a0 $04
	add hl, bc                                       ; $455d: $09
	ld h, c                                          ; $455e: $61
	pop hl                                           ; $455f: $e1
	ld [bc], a                                       ; $4560: $02
	inc bc                                           ; $4561: $03
	sbc c                                            ; $4562: $99
	db $e4                                           ; $4563: $e4
	nop                                              ; $4564: $00
	xor d                                            ; $4565: $aa
	add hl, bc                                       ; $4566: $09
	ld h, l                                          ; $4567: $65
	add hl, bc                                       ; $4568: $09
	inc l                                            ; $4569: $2c
	pop hl                                           ; $456a: $e1
	ld [bc], a                                       ; $456b: $02
	inc bc                                           ; $456c: $03
	rra                                              ; $456d: $1f
	add d                                            ; $456e: $82
	ret nz                                           ; $456f: $c0

	dec de                                           ; $4570: $1b
	jp nc, $d002                                     ; $4571: $d2 $02 $d0

	pop de                                           ; $4574: $d1
	ld b, $c0                                        ; $4575: $06 $c0
	ld bc, $04a0                                     ; $4577: $01 $a0 $04
	add hl, bc                                       ; $457a: $09
	ld l, [hl]                                       ; $457b: $6e
	ld [bc], a                                       ; $457c: $02
	jp nc, $06d3                                     ; $457d: $d2 $d3 $06

	ret nz                                           ; $4580: $c0

	ld bc, $04a0                                     ; $4581: $01 $a0 $04
	add hl, bc                                       ; $4584: $09
	ld [hl], a                                       ; $4585: $77
	ld bc, $06d4                                     ; $4586: $01 $d4 $06
	ret nz                                           ; $4589: $c0

	ld bc, $04a0                                     ; $458a: $01 $a0 $04
	add hl, bc                                       ; $458d: $09
	ld a, a                                          ; $458e: $7f
	pop hl                                           ; $458f: $e1
	ld [bc], a                                       ; $4590: $02
	inc bc                                           ; $4591: $03
	xor e                                            ; $4592: $ab
	db $e4                                           ; $4593: $e4
	nop                                              ; $4594: $00
	ld a, d                                          ; $4595: $7a
	add hl, bc                                       ; $4596: $09
	add a                                            ; $4597: $87
	add hl, bc                                       ; $4598: $09
	inc l                                            ; $4599: $2c
	pop hl                                           ; $459a: $e1
	ld [bc], a                                       ; $459b: $02
	inc bc                                           ; $459c: $03
	rla                                              ; $459d: $17
	add d                                            ; $459e: $82
	ret nz                                           ; $459f: $c0

	dec de                                           ; $45a0: $1b
	jp nc, $d002                                     ; $45a1: $d2 $02 $d0

	pop de                                           ; $45a4: $d1
	ld b, $c0                                        ; $45a5: $06 $c0
	ld bc, $04a0                                     ; $45a7: $01 $a0 $04
	add hl, bc                                       ; $45aa: $09
	adc l                                            ; $45ab: $8d
	ld [bc], a                                       ; $45ac: $02
	jp nc, $06d3                                     ; $45ad: $d2 $d3 $06

	ret nz                                           ; $45b0: $c0

	ld bc, $04a0                                     ; $45b1: $01 $a0 $04
	add hl, bc                                       ; $45b4: $09
	sub a                                            ; $45b5: $97
	ld bc, $06d4                                     ; $45b6: $01 $d4 $06
	ret nz                                           ; $45b9: $c0

	ld bc, $04a0                                     ; $45ba: $01 $a0 $04
	add hl, bc                                       ; $45bd: $09
	sbc [hl]                                         ; $45be: $9e
	pop hl                                           ; $45bf: $e1
	ld [bc], a                                       ; $45c0: $02
	inc bc                                           ; $45c1: $03
	sbc c                                            ; $45c2: $99
	db $e4                                           ; $45c3: $e4
	nop                                              ; $45c4: $00
	ld c, d                                          ; $45c5: $4a
	jr z, jr_07f_45ce                                ; $45c6: $28 $06

	ret nz                                           ; $45c8: $c0

	ld bc, $04a0                                     ; $45c9: $01 $a0 $04
	add hl, bc                                       ; $45cc: $09
	and c                                            ; $45cd: $a1

jr_07f_45ce:
	ccf                                              ; $45ce: $3f
	add hl, bc                                       ; $45cf: $09
	xor d                                            ; $45d0: $aa
	add hl, bc                                       ; $45d1: $09
	ld de, $02e1                                     ; $45d2: $11 $e1 $02
	inc bc                                           ; $45d5: $03
	rla                                              ; $45d6: $17
	ret nz                                           ; $45d7: $c0

	ld bc, $04a0                                     ; $45d8: $01 $a0 $04
	add hl, bc                                       ; $45db: $09
	or c                                             ; $45dc: $b1
	pop hl                                           ; $45dd: $e1
	ld [bc], a                                       ; $45de: $02
	inc bc                                           ; $45df: $03
	sbc c                                            ; $45e0: $99
	db $e4                                           ; $45e1: $e4
	nop                                              ; $45e2: $00
	inc l                                            ; $45e3: $2c
	add hl, bc                                       ; $45e4: $09
	or [hl]                                          ; $45e5: $b6
	add hl, bc                                       ; $45e6: $09
	ld de, $02e1                                     ; $45e7: $11 $e1 $02
	inc bc                                           ; $45ea: $03
	rra                                              ; $45eb: $1f
	ret nz                                           ; $45ec: $c0

	ld bc, $04a0                                     ; $45ed: $01 $a0 $04
	add hl, bc                                       ; $45f0: $09
	cp l                                             ; $45f1: $bd
	pop hl                                           ; $45f2: $e1
	ld [bc], a                                       ; $45f3: $02
	inc bc                                           ; $45f4: $03
	xor e                                            ; $45f5: $ab
	db $e4                                           ; $45f6: $e4
	nop                                              ; $45f7: $00
	rla                                              ; $45f8: $17
	add hl, bc                                       ; $45f9: $09
	add $09                                          ; $45fa: $c6 $09
	ld de, $02e1                                     ; $45fc: $11 $e1 $02
	inc bc                                           ; $45ff: $03
	rla                                              ; $4600: $17
	ret nz                                           ; $4601: $c0

	ld bc, $04a0                                     ; $4602: $01 $a0 $04
	add hl, bc                                       ; $4605: $09
	call z, $02e1                                    ; $4606: $cc $e1 $02
	inc bc                                           ; $4609: $03
	sbc c                                            ; $460a: $99
	db $e4                                           ; $460b: $e4
	nop                                              ; $460c: $00
	ld [bc], a                                       ; $460d: $02
	add hl, bc                                       ; $460e: $09
	ld c, $c1                                        ; $460f: $0e $c1
	ld e, c                                          ; $4611: $59
	db $e3                                           ; $4612: $e3
	nop                                              ; $4613: $00
	and h                                            ; $4614: $a4
	ret nz                                           ; $4615: $c0

	ld d, [hl]                                       ; $4616: $56
	jp nc, $d0d8                                     ; $4617: $d2 $d8 $d0

	push hl                                          ; $461a: $e5
	dec de                                           ; $461b: $1b
	nop                                              ; $461c: $00
	nop                                              ; $461d: $00
	inc l                                            ; $461e: $2c
	ld a, [de]                                       ; $461f: $1a
	and b                                            ; $4620: $a0
	add b                                            ; $4621: $80
	and b                                            ; $4622: $a0
	ld e, $00                                        ; $4623: $1e $00
	ld b, $c0                                        ; $4625: $06 $c0
	ld bc, $04a0                                     ; $4627: $01 $a0 $04

jr_07f_462a:
	add hl, bc                                       ; $462a: $09
	pop de                                           ; $462b: $d1
	rst $38                                          ; $462c: $ff
	ld b, $c0                                        ; $462d: $06 $c0
	ld bc, $04a0                                     ; $462f: $01 $a0 $04
	add hl, bc                                       ; $4632: $09
	rst SubAFromHL                                          ; $4633: $d7
	ret nz                                           ; $4634: $c0

	ld bc, $01a0                                     ; $4635: $01 $a0 $01
	add hl, bc                                       ; $4638: $09
	db $dd                                           ; $4639: $dd
	ld l, $80                                        ; $463a: $2e $80
	ld [bc], a                                       ; $463c: $02
	ld d, [hl]                                       ; $463d: $56
	ld [$0923], sp                                   ; $463e: $08 $23 $09
	pop hl                                           ; $4641: $e1
	add hl, bc                                       ; $4642: $09
	inc bc                                           ; $4643: $03
	db $e4                                           ; $4644: $e4
	nop                                              ; $4645: $00
	inc h                                            ; $4646: $24
	add hl, bc                                       ; $4647: $09
	db $e3                                           ; $4648: $e3
	add hl, bc                                       ; $4649: $09
	jr jr_07f_46ac                                   ; $464a: $18 $60

	db $fc                                           ; $464c: $fc
	ret nz                                           ; $464d: $c0

jr_07f_464e:
	ld l, d                                          ; $464e: $6a
	jp nc, $a00e                                     ; $464f: $d2 $0e $a0

	add b                                            ; $4652: $80
	and b                                            ; $4653: $a0
	rra                                              ; $4654: $1f
	nop                                              ; $4655: $00
	inc bc                                           ; $4656: $03
	db $e4                                           ; $4657: $e4
	ld bc, $ffca                                     ; $4658: $01 $ca $ff
	inc bc                                           ; $465b: $03
	db $e4                                           ; $465c: $e4
	nop                                              ; $465d: $00
	jr nc, jr_07f_4663                               ; $465e: $30 $03

	db $e4                                           ; $4660: $e4
	nop                                              ; $4661: $00
	inc l                                            ; $4662: $2c

jr_07f_4663:
	pop de                                           ; $4663: $d1
	add hl, bc                                       ; $4664: $09
	inc bc                                           ; $4665: $03
	db $e4                                           ; $4666: $e4
	nop                                              ; $4667: $00
	ld [bc], a                                       ; $4668: $02
	add hl, bc                                       ; $4669: $09
	ld [hl+], a                                      ; $466a: $22
	ret nc                                           ; $466b: $d0

	add e                                            ; $466c: $83
	ld bc, $d1de                                     ; $466d: $01 $de $d1
	pop bc                                           ; $4670: $c1
	ld e, c                                          ; $4671: $59
	db $e3                                           ; $4672: $e3
	nop                                              ; $4673: $00
	sbc b                                            ; $4674: $98
	ret nc                                           ; $4675: $d0

	adc e                                            ; $4676: $8b
	and b                                            ; $4677: $a0
	jr nz, jr_07f_462a                               ; $4678: $20 $b0

	ld a, b                                          ; $467a: $78
	and b                                            ; $467b: $a0
	add b                                            ; $467c: $80
	and b                                            ; $467d: $a0
	inc l                                            ; $467e: $2c
	nop                                              ; $467f: $00
	inc bc                                           ; $4680: $03
	db $e4                                           ; $4681: $e4
	nop                                              ; $4682: $00
	cpl                                              ; $4683: $2f
	rst $38                                          ; $4684: $ff
	rlca                                             ; $4685: $07
	ld b, b                                          ; $4686: $40
	add b                                            ; $4687: $80
	and b                                            ; $4688: $a0
	inc l                                            ; $4689: $2c
	db $e4                                           ; $468a: $e4
	nop                                              ; $468b: $00
	cp a                                             ; $468c: $bf
	add hl, bc                                       ; $468d: $09
	ld [hl+], a                                      ; $468e: $22
	ret nc                                           ; $468f: $d0

	add e                                            ; $4690: $83
	ld bc, $d2de                                     ; $4691: $01 $de $d2
	pop bc                                           ; $4694: $c1
	ld e, c                                          ; $4695: $59
	db $e3                                           ; $4696: $e3
	nop                                              ; $4697: $00
	sbc c                                            ; $4698: $99
	ret nc                                           ; $4699: $d0

	adc e                                            ; $469a: $8b
	and b                                            ; $469b: $a0
	jr nz, jr_07f_464e                               ; $469c: $20 $b0

	ld a, c                                          ; $469e: $79
	and b                                            ; $469f: $a0
	add b                                            ; $46a0: $80
	and b                                            ; $46a1: $a0
	dec l                                            ; $46a2: $2d
	nop                                              ; $46a3: $00
	inc bc                                           ; $46a4: $03
	db $e4                                           ; $46a5: $e4
	nop                                              ; $46a6: $00
	db $ec                                           ; $46a7: $ec
	rst $38                                          ; $46a8: $ff
	rlca                                             ; $46a9: $07
	ld b, b                                          ; $46aa: $40
	add b                                            ; $46ab: $80

jr_07f_46ac:
	and b                                            ; $46ac: $a0
	dec l                                            ; $46ad: $2d
	db $e4                                           ; $46ae: $e4
	ld bc, $282b                                     ; $46af: $01 $2b $28
	ld b, $c0                                        ; $46b2: $06 $c0
	ld bc, $04a0                                     ; $46b4: $01 $a0 $04
	add hl, bc                                       ; $46b7: $09
	push hl                                          ; $46b8: $e5
	sub b                                            ; $46b9: $90
	add hl, bc                                       ; $46ba: $09
	jp hl                                            ; $46bb: $e9


	add hl, bc                                       ; $46bc: $09
	inc l                                            ; $46bd: $2c
	pop hl                                           ; $46be: $e1
	ld [bc], a                                       ; $46bf: $02
	inc bc                                           ; $46c0: $03
	rla                                              ; $46c1: $17
	add d                                            ; $46c2: $82
	ret nz                                           ; $46c3: $c0

	dec de                                           ; $46c4: $1b
	jp nc, $d002                                     ; $46c5: $d2 $02 $d0

	pop de                                           ; $46c8: $d1
	ld b, $c0                                        ; $46c9: $06 $c0
	ld bc, $04a0                                     ; $46cb: $01 $a0 $04
	add hl, bc                                       ; $46ce: $09
	rst AddAOntoHL                                          ; $46cf: $ef
	ld [bc], a                                       ; $46d0: $02
	jp nc, $06d3                                     ; $46d1: $d2 $d3 $06

	ret nz                                           ; $46d4: $c0

	ld bc, $04a0                                     ; $46d5: $01 $a0 $04
	add hl, bc                                       ; $46d8: $09
	db $f4                                           ; $46d9: $f4
	ld bc, $06d4                                     ; $46da: $01 $d4 $06
	ret nz                                           ; $46dd: $c0

	ld bc, $04a0                                     ; $46de: $01 $a0 $04

Jump_07f_46e1:
	add hl, bc                                       ; $46e1: $09
	cp $e1                                           ; $46e2: $fe $e1
	ld [bc], a                                       ; $46e4: $02
	inc bc                                           ; $46e5: $03
	sbc c                                            ; $46e6: $99
	db $e4                                           ; $46e7: $e4
	ld bc, $0ab9                                     ; $46e8: $01 $b9 $0a
	inc b                                            ; $46eb: $04
	add hl, bc                                       ; $46ec: $09
	inc l                                            ; $46ed: $2c
	pop hl                                           ; $46ee: $e1
	ld [bc], a                                       ; $46ef: $02
	inc bc                                           ; $46f0: $03
	rra                                              ; $46f1: $1f
	add d                                            ; $46f2: $82
	ret nz                                           ; $46f3: $c0

	dec de                                           ; $46f4: $1b
	jp nc, $d002                                     ; $46f5: $d2 $02 $d0

	pop de                                           ; $46f8: $d1
	ld b, $c0                                        ; $46f9: $06 $c0
	ld bc, $04a0                                     ; $46fb: $01 $a0 $04
	ld a, [bc]                                       ; $46fe: $0a
	inc c                                            ; $46ff: $0c
	ld [bc], a                                       ; $4700: $02
	jp nc, $06d3                                     ; $4701: $d2 $d3 $06

	ret nz                                           ; $4704: $c0

	ld bc, $04a0                                     ; $4705: $01 $a0 $04
	ld a, [bc]                                       ; $4708: $0a
	inc de                                           ; $4709: $13
	ld bc, $06d4                                     ; $470a: $01 $d4 $06
	ret nz                                           ; $470d: $c0

	ld bc, $04a0                                     ; $470e: $01 $a0 $04
	ld a, [bc]                                       ; $4711: $0a
	add hl, de                                       ; $4712: $19
	pop hl                                           ; $4713: $e1
	ld [bc], a                                       ; $4714: $02
	inc bc                                           ; $4715: $03
	xor e                                            ; $4716: $ab
	db $e4                                           ; $4717: $e4
	ld bc, $0a89                                     ; $4718: $01 $89 $0a
	dec e                                            ; $471b: $1d
	add hl, bc                                       ; $471c: $09
	inc l                                            ; $471d: $2c
	pop hl                                           ; $471e: $e1
	ld [bc], a                                       ; $471f: $02
	inc bc                                           ; $4720: $03
	dec de                                           ; $4721: $1b
	add d                                            ; $4722: $82
	ret nz                                           ; $4723: $c0

	dec de                                           ; $4724: $1b
	jp nc, $d002                                     ; $4725: $d2 $02 $d0

	pop de                                           ; $4728: $d1
	ld b, $c0                                        ; $4729: $06 $c0
	ld bc, $04a0                                     ; $472b: $01 $a0 $04
	ld a, [bc]                                       ; $472e: $0a
	ld [hl+], a                                      ; $472f: $22
	ld [bc], a                                       ; $4730: $02
	jp nc, $06d3                                     ; $4731: $d2 $d3 $06

	ret nz                                           ; $4734: $c0

	ld bc, $04a0                                     ; $4735: $01 $a0 $04
	rlca                                             ; $4738: $07
	ld h, a                                          ; $4739: $67
	ld bc, $06d4                                     ; $473a: $01 $d4 $06
	ret nz                                           ; $473d: $c0

	ld bc, $04a0                                     ; $473e: $01 $a0 $04
	ld a, [bc]                                       ; $4741: $0a
	ld h, $e1                                        ; $4742: $26 $e1
	ld [bc], a                                       ; $4744: $02
	inc bc                                           ; $4745: $03
	and d                                            ; $4746: $a2
	db $e4                                           ; $4747: $e4
	ld bc, $2859                                     ; $4748: $01 $59 $28
	ld b, $c0                                        ; $474b: $06 $c0
	ld bc, $04a0                                     ; $474d: $01 $a0 $04
	ld a, [bc]                                       ; $4750: $0a
	jr z, @+$41                                      ; $4751: $28 $3f

	ld a, [bc]                                       ; $4753: $0a
	inc sp                                           ; $4754: $33
	add hl, bc                                       ; $4755: $09
	ld de, $02e1                                     ; $4756: $11 $e1 $02
	inc bc                                           ; $4759: $03
	rla                                              ; $475a: $17
	ret nz                                           ; $475b: $c0

	ld bc, $04a0                                     ; $475c: $01 $a0 $04
	ld a, [bc]                                       ; $475f: $0a
	dec [hl]                                         ; $4760: $35
	pop hl                                           ; $4761: $e1
	ld [bc], a                                       ; $4762: $02
	inc bc                                           ; $4763: $03
	sbc c                                            ; $4764: $99
	db $e4                                           ; $4765: $e4
	ld bc, $0a3b                                     ; $4766: $01 $3b $0a
	ld b, l                                          ; $4769: $45
	add hl, bc                                       ; $476a: $09
	ld de, $02e1                                     ; $476b: $11 $e1 $02
	inc bc                                           ; $476e: $03
	dec de                                           ; $476f: $1b
	ret nz                                           ; $4770: $c0

	ld bc, $04a0                                     ; $4771: $01 $a0 $04
	ld a, [bc]                                       ; $4774: $0a
	ld b, a                                          ; $4775: $47
	pop hl                                           ; $4776: $e1
	ld [bc], a                                       ; $4777: $02
	inc bc                                           ; $4778: $03
	and d                                            ; $4779: $a2
	db $e4                                           ; $477a: $e4
	ld bc, $0a26                                     ; $477b: $01 $26 $0a
	ld d, e                                          ; $477e: $53
	add hl, bc                                       ; $477f: $09
	ld de, $02e1                                     ; $4780: $11 $e1 $02
	inc bc                                           ; $4783: $03
	dec de                                           ; $4784: $1b
	ret nz                                           ; $4785: $c0

	ld bc, $04a0                                     ; $4786: $01 $a0 $04
	ld a, [bc]                                       ; $4789: $0a
	ld d, l                                          ; $478a: $55
	pop hl                                           ; $478b: $e1
	ld [bc], a                                       ; $478c: $02
	inc bc                                           ; $478d: $03
	and d                                            ; $478e: $a2
	db $e4                                           ; $478f: $e4
	ld bc, $2811                                     ; $4790: $01 $11 $28
	ld b, $c0                                        ; $4793: $06 $c0
	ld bc, $04a0                                     ; $4795: $01 $a0 $04
	ld a, [bc]                                       ; $4798: $0a
	ld e, [hl]                                       ; $4799: $5e
	ccf                                              ; $479a: $3f
	ld a, [bc]                                       ; $479b: $0a
	ld h, a                                          ; $479c: $67
	add hl, bc                                       ; $479d: $09
	ld de, $02e1                                     ; $479e: $11 $e1 $02
	inc bc                                           ; $47a1: $03
	rla                                              ; $47a2: $17
	ret nz                                           ; $47a3: $c0

	ld bc, $04a0                                     ; $47a4: $01 $a0 $04
	ld a, [bc]                                       ; $47a7: $0a
	ld l, a                                          ; $47a8: $6f
	pop hl                                           ; $47a9: $e1
	ld [bc], a                                       ; $47aa: $02
	inc bc                                           ; $47ab: $03
	sbc c                                            ; $47ac: $99
	db $e4                                           ; $47ad: $e4
	nop                                              ; $47ae: $00
	di                                               ; $47af: $f3
	ld a, [bc]                                       ; $47b0: $0a
	halt                                             ; $47b1: $76
	add hl, bc                                       ; $47b2: $09
	ld de, $02e1                                     ; $47b3: $11 $e1 $02
	inc bc                                           ; $47b6: $03
	rra                                              ; $47b7: $1f
	ret nz                                           ; $47b8: $c0

	ld bc, $04a0                                     ; $47b9: $01 $a0 $04
	ld a, [bc]                                       ; $47bc: $0a
	ld a, l                                          ; $47bd: $7d
	pop hl                                           ; $47be: $e1
	ld [bc], a                                       ; $47bf: $02
	inc bc                                           ; $47c0: $03
	xor e                                            ; $47c1: $ab
	db $e4                                           ; $47c2: $e4
	nop                                              ; $47c3: $00
	sbc $0a                                          ; $47c4: $de $0a
	adc b                                            ; $47c6: $88
	add hl, bc                                       ; $47c7: $09
	ld de, $02e1                                     ; $47c8: $11 $e1 $02
	inc bc                                           ; $47cb: $03
	dec de                                           ; $47cc: $1b
	ret nz                                           ; $47cd: $c0

	ld bc, $04a0                                     ; $47ce: $01 $a0 $04
	ld a, [bc]                                       ; $47d1: $0a
	adc [hl]                                         ; $47d2: $8e
	pop hl                                           ; $47d3: $e1
	ld [bc], a                                       ; $47d4: $02
	inc bc                                           ; $47d5: $03
	and d                                            ; $47d6: $a2
	db $e4                                           ; $47d7: $e4
	nop                                              ; $47d8: $00
	ret                                              ; $47d9: $c9


	jr z, jr_07f_47e2                                ; $47da: $28 $06

	ret nz                                           ; $47dc: $c0

	ld bc, $04a0                                     ; $47dd: $01 $a0 $04
	ld a, [bc]                                       ; $47e0: $0a
	sub c                                            ; $47e1: $91

jr_07f_47e2:
	ccf                                              ; $47e2: $3f
	ld a, [bc]                                       ; $47e3: $0a
	sbc l                                            ; $47e4: $9d
	add hl, bc                                       ; $47e5: $09
	ld de, $02e1                                     ; $47e6: $11 $e1 $02
	inc bc                                           ; $47e9: $03
	rla                                              ; $47ea: $17
	ret nz                                           ; $47eb: $c0

	ld bc, $04a0                                     ; $47ec: $01 $a0 $04
	ld a, [bc]                                       ; $47ef: $0a
	and b                                            ; $47f0: $a0
	pop hl                                           ; $47f1: $e1
	ld [bc], a                                       ; $47f2: $02
	inc bc                                           ; $47f3: $03
	sbc c                                            ; $47f4: $99
	db $e4                                           ; $47f5: $e4
	nop                                              ; $47f6: $00
	xor e                                            ; $47f7: $ab
	ld a, [bc]                                       ; $47f8: $0a
	xor c                                            ; $47f9: $a9
	add hl, bc                                       ; $47fa: $09
	ld de, $02e1                                     ; $47fb: $11 $e1 $02
	inc bc                                           ; $47fe: $03
	rra                                              ; $47ff: $1f
	ret nz                                           ; $4800: $c0

	ld bc, $04a0                                     ; $4801: $01 $a0 $04
	ld a, [bc]                                       ; $4804: $0a
	xor [hl]                                         ; $4805: $ae
	pop hl                                           ; $4806: $e1
	ld [bc], a                                       ; $4807: $02
	inc bc                                           ; $4808: $03
	xor e                                            ; $4809: $ab
	db $e4                                           ; $480a: $e4
	nop                                              ; $480b: $00
	sub [hl]                                         ; $480c: $96
	ld a, [bc]                                       ; $480d: $0a
	cp b                                             ; $480e: $b8
	add hl, bc                                       ; $480f: $09
	ld de, $02e1                                     ; $4810: $11 $e1 $02
	inc bc                                           ; $4813: $03
	dec de                                           ; $4814: $1b
	ret nz                                           ; $4815: $c0

	ld bc, $04a0                                     ; $4816: $01 $a0 $04
	ld a, [bc]                                       ; $4819: $0a
	cp [hl]                                          ; $481a: $be
	pop hl                                           ; $481b: $e1
	ld [bc], a                                       ; $481c: $02
	inc bc                                           ; $481d: $03
	and d                                            ; $481e: $a2
	db $e4                                           ; $481f: $e4
	nop                                              ; $4820: $00
	add c                                            ; $4821: $81
	add hl, bc                                       ; $4822: $09
	ld a, l                                          ; $4823: $7d
	pop bc                                           ; $4824: $c1
	ld e, c                                          ; $4825: $59
	db $e3                                           ; $4826: $e3
	nop                                              ; $4827: $00
	sbc c                                            ; $4828: $99
	ret nz                                           ; $4829: $c0

	ld bc, $01a0                                     ; $482a: $01 $a0 $01
	ld a, [bc]                                       ; $482d: $0a
	push bc                                          ; $482e: $c5
	ret nz                                           ; $482f: $c0

	ld bc, $04a0                                     ; $4830: $01 $a0 $04
	ld a, [bc]                                       ; $4833: $0a
	adc $c0                                          ; $4834: $ce $c0
	set 0, c                                         ; $4836: $cb $c1
	ld e, e                                          ; $4838: $5b
	ret nz                                           ; $4839: $c0

	inc c                                            ; $483a: $0c
	ldh [$78], a                                     ; $483b: $e0 $78
	ret nz                                           ; $483d: $c0

	ld bc, $01a0                                     ; $483e: $01 $a0 $01
	ld a, [bc]                                       ; $4841: $0a
	db $d3                                           ; $4842: $d3
	ret nz                                           ; $4843: $c0

	rrca                                             ; $4844: $0f
	db $e3                                           ; $4845: $e3
	nop                                              ; $4846: $00
	xor $c0                                          ; $4847: $ee $c0
	ld bc, $01a0                                     ; $4849: $01 $a0 $01
	ld a, [bc]                                       ; $484c: $0a
	rst SubAFromDE                                          ; $484d: $df
	ret nz                                           ; $484e: $c0

	ld bc, $04a0                                     ; $484f: $01 $a0 $04
	ld a, [bc]                                       ; $4852: $0a
	db $eb                                           ; $4853: $eb
	ret nz                                           ; $4854: $c0

	ld bc, $01a0                                     ; $4855: $01 $a0 $01
	ld a, [bc]                                       ; $4858: $0a
	di                                               ; $4859: $f3
	ret nz                                           ; $485a: $c0

	ld bc, $04a0                                     ; $485b: $01 $a0 $04
	ld a, [bc]                                       ; $485e: $0a
	or $c0                                           ; $485f: $f6 $c0
	ld bc, $01a0                                     ; $4861: $01 $a0 $01
	ld a, [bc]                                       ; $4864: $0a
	ld hl, sp-$40                                    ; $4865: $f8 $c0
	ld bc, $04a0                                     ; $4867: $01 $a0 $04
	dec bc                                           ; $486a: $0b
	ld [bc], a                                       ; $486b: $02
	ret nz                                           ; $486c: $c0

	ld bc, $01a0                                     ; $486d: $01 $a0 $01
	dec bc                                           ; $4870: $0b
	ld b, $c0                                        ; $4871: $06 $c0
	ld bc, $04a0                                     ; $4873: $01 $a0 $04
	dec bc                                           ; $4876: $0b
	inc d                                            ; $4877: $14
	ret nz                                           ; $4878: $c0

	ld bc, $01a0                                     ; $4879: $01 $a0 $01
	dec bc                                           ; $487c: $0b
	add hl, hl                                       ; $487d: $29
	ret nc                                           ; $487e: $d0

	add d                                            ; $487f: $82
	ld bc, $d3cc                                     ; $4880: $01 $cc $d3
	pop hl                                           ; $4883: $e1
	ld [bc], a                                       ; $4884: $02
	inc b                                            ; $4885: $04
	db $db                                           ; $4886: $db
	ret nz                                           ; $4887: $c0

	ld d, b                                          ; $4888: $50
	jp nc, $55c0                                     ; $4889: $d2 $c0 $55

	jp c, $cbc0                                      ; $488c: $da $c0 $cb

	ret nz                                           ; $488f: $c0

	ld de, $00e3                                     ; $4890: $11 $e3 $00
	sub a                                            ; $4893: $97
	pop bc                                           ; $4894: $c1
	ld e, h                                          ; $4895: $5c
	pop hl                                           ; $4896: $e1
	ld [bc], a                                       ; $4897: $02
	ld bc, $c170                                     ; $4898: $01 $70 $c1
	ld l, e                                          ; $489b: $6b

jr_07f_489c:
	push de                                          ; $489c: $d5
	jp nc, $00e4                                     ; $489d: $d2 $e4 $00

	inc c                                            ; $48a0: $0c
	add hl, bc                                       ; $48a1: $09
	ld [$59c1], sp                                   ; $48a2: $08 $c1 $59
	db $e3                                           ; $48a5: $e3
	nop                                              ; $48a6: $00
	sub a                                            ; $48a7: $97
	db $e4                                           ; $48a8: $e4
	nop                                              ; $48a9: $00
	ld [bc], a                                       ; $48aa: $02
	add hl, bc                                       ; $48ab: $09
	ld a, [de]                                       ; $48ac: $1a
	add c                                            ; $48ad: $81
	adc e                                            ; $48ae: $8b
	and b                                            ; $48af: $a0
	jr nz, jr_07f_48b4                               ; $48b0: $20 $02

	or b                                             ; $48b2: $b0
	ld a, b                                          ; $48b3: $78

jr_07f_48b4:
	dec b                                            ; $48b4: $05
	ret nz                                           ; $48b5: $c0

	ld d, [hl]                                       ; $48b6: $56
	jp nc, $d1d9                                     ; $48b7: $d2 $d9 $d1

	ld [bc], a                                       ; $48ba: $02
	or b                                             ; $48bb: $b0
	ld a, c                                          ; $48bc: $79
	dec b                                            ; $48bd: $05
	ret nz                                           ; $48be: $c0

	ld d, [hl]                                       ; $48bf: $56
	jp nc, $d2d9                                     ; $48c0: $d2 $d9 $d2

	push hl                                          ; $48c3: $e5
	dec de                                           ; $48c4: $1b
	nop                                              ; $48c5: $00
	nop                                              ; $48c6: $00
	ld l, $05                                        ; $48c7: $2e $05
	add hl, bc                                       ; $48c9: $09
	jr c, jr_07f_489c                                ; $48ca: $38 $d0

	add e                                            ; $48cc: $83
	ld bc, $d0de                                     ; $48cd: $01 $de $d0
	ret nz                                           ; $48d0: $c0

	ld bc, $04a0                                     ; $48d1: $01 $a0 $04
	nop                                              ; $48d4: $00
	ld bc, $01c0                                     ; $48d5: $01 $c0 $01
	and b                                            ; $48d8: $a0
	ld bc, $0500                                     ; $48d9: $01 $00 $05
	ld h, b                                          ; $48dc: $60
	cp $08                                           ; $48dd: $fe $08
	pop af                                           ; $48df: $f1
	add b                                            ; $48e0: $80
	and b                                            ; $48e1: $a0
	nop                                              ; $48e2: $00
	db $fc                                           ; $48e3: $fc
	ret nz                                           ; $48e4: $c0

	ld l, d                                          ; $48e5: $6a
	pop de                                           ; $48e6: $d1
	inc bc                                           ; $48e7: $03
	db $e4                                           ; $48e8: $e4
	nop                                              ; $48e9: $00
	or l                                             ; $48ea: $b5
	rla                                              ; $48eb: $17
	pop bc                                           ; $48ec: $c1
	ld e, c                                          ; $48ed: $59
	db $e3                                           ; $48ee: $e3
	nop                                              ; $48ef: $00
	cp l                                             ; $48f0: $bd
	and b                                            ; $48f1: $a0
	add b                                            ; $48f2: $80
	and b                                            ; $48f3: $a0
	ld bc, $0300                                     ; $48f4: $01 $00 $03
	db $e4                                           ; $48f7: $e4
	nop                                              ; $48f8: $00
	dec bc                                           ; $48f9: $0b
	rst $38                                          ; $48fa: $ff
	rlca                                             ; $48fb: $07
	ld b, b                                          ; $48fc: $40
	add b                                            ; $48fd: $80
	and b                                            ; $48fe: $a0
	ld bc, $00e4                                     ; $48ff: $01 $e4 $00
	ld d, l                                          ; $4902: $55
	jr z, jr_07f_490b                                ; $4903: $28 $06

	ret nz                                           ; $4905: $c0

	ld bc, $04a0                                     ; $4906: $01 $a0 $04
	nop                                              ; $4909: $00
	ld a, [bc]                                       ; $490a: $0a

jr_07f_490b:
	ld c, d                                          ; $490b: $4a
	nop                                              ; $490c: $00
	inc de                                           ; $490d: $13
	add hl, bc                                       ; $490e: $09
	inc e                                            ; $490f: $1c
	pop hl                                           ; $4910: $e1
	ld [bc], a                                       ; $4911: $02
	inc bc                                           ; $4912: $03
	rla                                              ; $4913: $17
	or b                                             ; $4914: $b0
	ld a, a                                          ; $4915: $7f
	ld b, $c0                                        ; $4916: $06 $c0
	ld bc, $04a0                                     ; $4918: $01 $a0 $04
	nop                                              ; $491b: $00
	ld d, $ff                                        ; $491c: $16 $ff
	ld b, $c0                                        ; $491e: $06 $c0
	ld bc, $04a0                                     ; $4920: $01 $a0 $04
	nop                                              ; $4923: $00
	add hl, hl                                       ; $4924: $29
	pop hl                                           ; $4925: $e1
	ld [bc], a                                       ; $4926: $02
	inc bc                                           ; $4927: $03
	sbc c                                            ; $4928: $99
	db $e4                                           ; $4929: $e4
	ld bc, $0009                                     ; $492a: $01 $09 $00
	ld b, d                                          ; $492d: $42
	add hl, bc                                       ; $492e: $09
	ld de, $02e1                                     ; $492f: $11 $e1 $02
	inc bc                                           ; $4932: $03
	rra                                              ; $4933: $1f
	ret nz                                           ; $4934: $c0

	ld bc, $04a0                                     ; $4935: $01 $a0 $04
	nop                                              ; $4938: $00
	ld b, l                                          ; $4939: $45
	pop hl                                           ; $493a: $e1
	ld [bc], a                                       ; $493b: $02
	inc bc                                           ; $493c: $03
	xor e                                            ; $493d: $ab
	db $e4                                           ; $493e: $e4
	nop                                              ; $493f: $00
	db $f4                                           ; $4940: $f4
	nop                                              ; $4941: $00
	ld c, l                                          ; $4942: $4d
	add hl, bc                                       ; $4943: $09
	ld de, $02e1                                     ; $4944: $11 $e1 $02
	inc bc                                           ; $4947: $03
	dec de                                           ; $4948: $1b
	ret nz                                           ; $4949: $c0

	ld bc, $04a0                                     ; $494a: $01 $a0 $04
	nop                                              ; $494d: $00
	ld c, a                                          ; $494e: $4f
	pop hl                                           ; $494f: $e1
	ld [bc], a                                       ; $4950: $02
	inc bc                                           ; $4951: $03
	and d                                            ; $4952: $a2
	db $e4                                           ; $4953: $e4
	nop                                              ; $4954: $00
	rst SubAFromDE                                          ; $4955: $df
	jr z, jr_07f_495e                                ; $4956: $28 $06

	ret nz                                           ; $4958: $c0

	ld bc, $04a0                                     ; $4959: $01 $a0 $04
	nop                                              ; $495c: $00
	ld e, c                                          ; $495d: $59

jr_07f_495e:
	ccf                                              ; $495e: $3f
	nop                                              ; $495f: $00
	ld l, b                                          ; $4960: $68
	add hl, bc                                       ; $4961: $09
	ld de, $02e1                                     ; $4962: $11 $e1 $02
	inc bc                                           ; $4965: $03
	inc de                                           ; $4966: $13
	ret nz                                           ; $4967: $c0

	ld bc, $04a0                                     ; $4968: $01 $a0 $04
	nop                                              ; $496b: $00
	ld l, l                                          ; $496c: $6d
	pop hl                                           ; $496d: $e1
	ld [bc], a                                       ; $496e: $02
	inc bc                                           ; $496f: $03
	sub b                                            ; $4970: $90
	db $e4                                           ; $4971: $e4
	nop                                              ; $4972: $00
	pop bc                                           ; $4973: $c1
	nop                                              ; $4974: $00
	ld a, d                                          ; $4975: $7a
	add hl, bc                                       ; $4976: $09
	ld de, $02e1                                     ; $4977: $11 $e1 $02
	inc bc                                           ; $497a: $03
	rra                                              ; $497b: $1f
	ret nz                                           ; $497c: $c0

	ld bc, $04a0                                     ; $497d: $01 $a0 $04
	nop                                              ; $4980: $00
	add b                                            ; $4981: $80
	pop hl                                           ; $4982: $e1
	ld [bc], a                                       ; $4983: $02
	inc bc                                           ; $4984: $03
	xor e                                            ; $4985: $ab
	db $e4                                           ; $4986: $e4
	nop                                              ; $4987: $00
	xor h                                            ; $4988: $ac
	nop                                              ; $4989: $00
	add [hl]                                         ; $498a: $86
	add hl, bc                                       ; $498b: $09
	ld de, $02e1                                     ; $498c: $11 $e1 $02
	inc bc                                           ; $498f: $03
	rla                                              ; $4990: $17
	ret nz                                           ; $4991: $c0

	ld bc, $04a0                                     ; $4992: $01 $a0 $04
	nop                                              ; $4995: $00
	adc e                                            ; $4996: $8b
	pop hl                                           ; $4997: $e1
	ld [bc], a                                       ; $4998: $02
	inc bc                                           ; $4999: $03
	sbc c                                            ; $499a: $99
	db $e4                                           ; $499b: $e4
	nop                                              ; $499c: $00
	sub a                                            ; $499d: $97
	add hl, bc                                       ; $499e: $09
	sub e                                            ; $499f: $93
	ret nz                                           ; $49a0: $c0

	set 0, c                                         ; $49a1: $cb $c1
	ld e, e                                          ; $49a3: $5b
	ret nz                                           ; $49a4: $c0

	rrca                                             ; $49a5: $0f
	db $e3                                           ; $49a6: $e3
	nop                                              ; $49a7: $00
	jp hl                                            ; $49a8: $e9


	ret nz                                           ; $49a9: $c0

	inc c                                            ; $49aa: $0c
	ldh [$28], a                                     ; $49ab: $e0 $28
	ret nz                                           ; $49ad: $c0

	ld bc, $01a0                                     ; $49ae: $01 $a0 $01
	nop                                              ; $49b1: $00
	adc h                                            ; $49b2: $8c
	ret nz                                           ; $49b3: $c0

	ld bc, $04a0                                     ; $49b4: $01 $a0 $04
	nop                                              ; $49b7: $00
	sub l                                            ; $49b8: $95
	ret nz                                           ; $49b9: $c0

	ld bc, $01a0                                     ; $49ba: $01 $a0 $01
	nop                                              ; $49bd: $00
	and d                                            ; $49be: $a2
	ret nz                                           ; $49bf: $c0

	ld bc, $04a0                                     ; $49c0: $01 $a0 $04
	nop                                              ; $49c3: $00
	and a                                            ; $49c4: $a7
	ret nz                                           ; $49c5: $c0

	ld bc, $01a0                                     ; $49c6: $01 $a0 $01
	nop                                              ; $49c9: $00
	xor c                                            ; $49ca: $a9
	ret nz                                           ; $49cb: $c0

	ld bc, $04a0                                     ; $49cc: $01 $a0 $04
	nop                                              ; $49cf: $00
	or [hl]                                          ; $49d0: $b6
	ret nz                                           ; $49d1: $c0

	ld bc, $01a0                                     ; $49d2: $01 $a0 $01
	nop                                              ; $49d5: $00
	cp c                                             ; $49d6: $b9
	ret nz                                           ; $49d7: $c0

	ld bc, $04a0                                     ; $49d8: $01 $a0 $04
	nop                                              ; $49db: $00
	rst JumpTable                                          ; $49dc: $c7
	ret nz                                           ; $49dd: $c0

	ld bc, $01a0                                     ; $49de: $01 $a0 $01
	nop                                              ; $49e1: $00
	pop de                                           ; $49e2: $d1
	ret nz                                           ; $49e3: $c0

	ld bc, $04a0                                     ; $49e4: $01 $a0 $04
	nop                                              ; $49e7: $00
	db $dd                                           ; $49e8: $dd
	ret nz                                           ; $49e9: $c0

	dec bc                                           ; $49ea: $0b
	db $e3                                           ; $49eb: $e3
	nop                                              ; $49ec: $00
	ld e, $c0                                        ; $49ed: $1e $c0
	ld bc, $01a0                                     ; $49ef: $01 $a0 $01
	nop                                              ; $49f2: $00
	db $e4                                           ; $49f3: $e4
	ret nz                                           ; $49f4: $c0

	ld bc, $04a0                                     ; $49f5: $01 $a0 $04
	nop                                              ; $49f8: $00
	di                                               ; $49f9: $f3
	ret nz                                           ; $49fa: $c0

	ld bc, $01a0                                     ; $49fb: $01 $a0 $01
	nop                                              ; $49fe: $00
	ld hl, sp-$40                                    ; $49ff: $f8 $c0
	ld bc, $04a0                                     ; $4a01: $01 $a0 $04
	nop                                              ; $4a04: $00
	rst $38                                          ; $4a05: $ff
	ret nz                                           ; $4a06: $c0

	ld bc, $01a0                                     ; $4a07: $01 $a0 $01
	ld bc, $d002                                     ; $4a0a: $01 $02 $d0
	add d                                            ; $4a0d: $82
	ld bc, $d3cc                                     ; $4a0e: $01 $cc $d3
	pop hl                                           ; $4a11: $e1
	ld [bc], a                                       ; $4a12: $02
	inc b                                            ; $4a13: $04
	db $db                                           ; $4a14: $db
	ret nz                                           ; $4a15: $c0

	ld d, c                                          ; $4a16: $51
	jp nc, $55c0                                     ; $4a17: $d2 $c0 $55

	jp c, $8000                                      ; $4a1a: $da $00 $80

	and b                                            ; $4a1d: $a0
	nop                                              ; $4a1e: $00
	ret nz                                           ; $4a1f: $c0

	set 0, c                                         ; $4a20: $cb $c1
	ld e, h                                          ; $4a22: $5c
	ret nz                                           ; $4a23: $c0

	ld de, $00e3                                     ; $4a24: $11 $e3 $00
	cp h                                             ; $4a27: $bc
	pop hl                                           ; $4a28: $e1
	ld [bc], a                                       ; $4a29: $02
	ld bc, $c170                                     ; $4a2a: $01 $70 $c1
	ld l, e                                          ; $4a2d: $6b
	sub $d2                                          ; $4a2e: $d6 $d2
	db $e4                                           ; $4a30: $e4
	nop                                              ; $4a31: $00
	inc c                                            ; $4a32: $0c
	add hl, bc                                       ; $4a33: $09
	ld [$59c1], sp                                   ; $4a34: $08 $c1 $59
	db $e3                                           ; $4a37: $e3
	nop                                              ; $4a38: $00
	cp h                                             ; $4a39: $bc
	db $e4                                           ; $4a3a: $e4
	nop                                              ; $4a3b: $00
	ld [bc], a                                       ; $4a3c: $02
	add hl, bc                                       ; $4a3d: $09
	add hl, bc                                       ; $4a3e: $09
	ret nz                                           ; $4a3f: $c0

	ld d, [hl]                                       ; $4a40: $56
	jp nc, $d0da                                     ; $4a41: $d2 $da $d0

	push hl                                          ; $4a44: $e5
	dec de                                           ; $4a45: $1b
	nop                                              ; $4a46: $00
	nop                                              ; $4a47: $00
	add hl, bc                                       ; $4a48: $09
	jr z, @-$2e                                      ; $4a49: $28 $d0

	add e                                            ; $4a4b: $83
	ld bc, $d0de                                     ; $4a4c: $01 $de $d0
	ret nz                                           ; $4a4f: $c0

	ld bc, $04a0                                     ; $4a50: $01 $a0 $04
	nop                                              ; $4a53: $00
	ld bc, $01c0                                     ; $4a54: $01 $c0 $01
	and b                                            ; $4a57: $a0
	ld bc, $0500                                     ; $4a58: $01 $00 $05
	pop bc                                           ; $4a5b: $c1
	ld e, c                                          ; $4a5c: $59
	db $e3                                           ; $4a5d: $e3
	nop                                              ; $4a5e: $00
	cp e                                             ; $4a5f: $bb
	and b                                            ; $4a60: $a0
	add b                                            ; $4a61: $80
	and b                                            ; $4a62: $a0
	ld [bc], a                                       ; $4a63: $02
	nop                                              ; $4a64: $00
	inc bc                                           ; $4a65: $03
	db $e4                                           ; $4a66: $e4
	nop                                              ; $4a67: $00
	dec bc                                           ; $4a68: $0b
	rst $38                                          ; $4a69: $ff
	rlca                                             ; $4a6a: $07
	ld b, b                                          ; $4a6b: $40
	add b                                            ; $4a6c: $80
	and b                                            ; $4a6d: $a0
	ld [bc], a                                       ; $4a6e: $02
	db $e4                                           ; $4a6f: $e4
	nop                                              ; $4a70: $00
	sbc e                                            ; $4a71: $9b
	jr z, @+$08                                      ; $4a72: $28 $06

	ret nz                                           ; $4a74: $c0

	ld bc, $04a0                                     ; $4a75: $01 $a0 $04
	ld bc, $9005                                     ; $4a78: $01 $05 $90
	ld bc, $0910                                     ; $4a7b: $01 $10 $09
	inc l                                            ; $4a7e: $2c
	pop hl                                           ; $4a7f: $e1
	ld [bc], a                                       ; $4a80: $02
	inc bc                                           ; $4a81: $03
	inc de                                           ; $4a82: $13
	add d                                            ; $4a83: $82
	ret nz                                           ; $4a84: $c0

	dec de                                           ; $4a85: $1b
	jp nc, $d002                                     ; $4a86: $d2 $02 $d0

	pop de                                           ; $4a89: $d1
	ld b, $c0                                        ; $4a8a: $06 $c0
	ld bc, $04a0                                     ; $4a8c: $01 $a0 $04
	ld bc, $0215                                     ; $4a8f: $01 $15 $02
	jp nc, $06d3                                     ; $4a92: $d2 $d3 $06

	ret nz                                           ; $4a95: $c0

	ld bc, $04a0                                     ; $4a96: $01 $a0 $04
	ld bc, $011d                                     ; $4a99: $01 $1d $01
	call nc, $c006                                   ; $4a9c: $d4 $06 $c0
	ld bc, $04a0                                     ; $4a9f: $01 $a0 $04
	nop                                              ; $4aa2: $00
	adc e                                            ; $4aa3: $8b
	pop hl                                           ; $4aa4: $e1
	ld [bc], a                                       ; $4aa5: $02
	inc bc                                           ; $4aa6: $03
	sub b                                            ; $4aa7: $90
	db $e4                                           ; $4aa8: $e4
	nop                                              ; $4aa9: $00
	xor d                                            ; $4aaa: $aa
	ld bc, $0922                                     ; $4aab: $01 $22 $09
	inc l                                            ; $4aae: $2c
	pop hl                                           ; $4aaf: $e1
	ld [bc], a                                       ; $4ab0: $02
	inc bc                                           ; $4ab1: $03
	dec de                                           ; $4ab2: $1b
	add d                                            ; $4ab3: $82
	ret nz                                           ; $4ab4: $c0

	dec de                                           ; $4ab5: $1b
	jp nc, $d002                                     ; $4ab6: $d2 $02 $d0

	pop de                                           ; $4ab9: $d1
	ld b, $c0                                        ; $4aba: $06 $c0
	ld bc, $04a0                                     ; $4abc: $01 $a0 $04
	ld bc, $0229                                     ; $4abf: $01 $29 $02
	jp nc, $06d3                                     ; $4ac2: $d2 $d3 $06

	ret nz                                           ; $4ac5: $c0

	ld bc, $04a0                                     ; $4ac6: $01 $a0 $04
	ld bc, $0135                                     ; $4ac9: $01 $35 $01
	call nc, $c006                                   ; $4acc: $d4 $06 $c0
	ld bc, $04a0                                     ; $4acf: $01 $a0 $04
	ld bc, $e143                                     ; $4ad2: $01 $43 $e1
	ld [bc], a                                       ; $4ad5: $02
	inc bc                                           ; $4ad6: $03
	and d                                            ; $4ad7: $a2
	db $e4                                           ; $4ad8: $e4
	nop                                              ; $4ad9: $00
	ld a, d                                          ; $4ada: $7a
	ld bc, $0947                                     ; $4adb: $01 $47 $09
	inc l                                            ; $4ade: $2c
	pop hl                                           ; $4adf: $e1
	ld [bc], a                                       ; $4ae0: $02
	inc bc                                           ; $4ae1: $03
	rla                                              ; $4ae2: $17
	add d                                            ; $4ae3: $82
	ret nz                                           ; $4ae4: $c0

	dec de                                           ; $4ae5: $1b
	jp nc, $d002                                     ; $4ae6: $d2 $02 $d0

	pop de                                           ; $4ae9: $d1
	ld b, $c0                                        ; $4aea: $06 $c0
	ld bc, $04a0                                     ; $4aec: $01 $a0 $04
	ld bc, $024f                                     ; $4aef: $01 $4f $02
	jp nc, $06d3                                     ; $4af2: $d2 $d3 $06

	ret nz                                           ; $4af5: $c0

	ld bc, $04a0                                     ; $4af6: $01 $a0 $04
	ld bc, $0156                                     ; $4af9: $01 $56 $01
	call nc, $c006                                   ; $4afc: $d4 $06 $c0
	ld bc, $04a0                                     ; $4aff: $01 $a0 $04
	ld bc, $e15c                                     ; $4b02: $01 $5c $e1
	ld [bc], a                                       ; $4b05: $02
	inc bc                                           ; $4b06: $03
	sbc c                                            ; $4b07: $99
	db $e4                                           ; $4b08: $e4
	nop                                              ; $4b09: $00
	ld c, d                                          ; $4b0a: $4a
	jr z, @+$08                                      ; $4b0b: $28 $06

	ret nz                                           ; $4b0d: $c0

	ld bc, $04a0                                     ; $4b0e: $01 $a0 $04
	ld bc, $3f5e                                     ; $4b11: $01 $5e $3f
	ld bc, $0967                                     ; $4b14: $01 $67 $09
	ld de, $02e1                                     ; $4b17: $11 $e1 $02
	inc bc                                           ; $4b1a: $03
	rla                                              ; $4b1b: $17
	ret nz                                           ; $4b1c: $c0

	ld bc, $04a0                                     ; $4b1d: $01 $a0 $04
	ld bc, $e16f                                     ; $4b20: $01 $6f $e1
	ld [bc], a                                       ; $4b23: $02
	inc bc                                           ; $4b24: $03
	sbc c                                            ; $4b25: $99
	db $e4                                           ; $4b26: $e4
	nop                                              ; $4b27: $00
	inc l                                            ; $4b28: $2c
	ld bc, $0975                                     ; $4b29: $01 $75 $09
	ld de, $02e1                                     ; $4b2c: $11 $e1 $02
	inc bc                                           ; $4b2f: $03
	rra                                              ; $4b30: $1f
	ret nz                                           ; $4b31: $c0

	ld bc, $04a0                                     ; $4b32: $01 $a0 $04
	ld bc, $e17c                                     ; $4b35: $01 $7c $e1
	ld [bc], a                                       ; $4b38: $02
	inc bc                                           ; $4b39: $03
	xor e                                            ; $4b3a: $ab
	db $e4                                           ; $4b3b: $e4
	nop                                              ; $4b3c: $00
	rla                                              ; $4b3d: $17
	ld bc, $0981                                     ; $4b3e: $01 $81 $09
	ld de, $02e1                                     ; $4b41: $11 $e1 $02
	inc bc                                           ; $4b44: $03
	dec de                                           ; $4b45: $1b
	ret nz                                           ; $4b46: $c0

	ld bc, $04a0                                     ; $4b47: $01 $a0 $04
	ld bc, $e185                                     ; $4b4a: $01 $85 $e1
	ld [bc], a                                       ; $4b4d: $02
	inc bc                                           ; $4b4e: $03
	and d                                            ; $4b4f: $a2
	db $e4                                           ; $4b50: $e4
	nop                                              ; $4b51: $00
	ld [bc], a                                       ; $4b52: $02
	add hl, bc                                       ; $4b53: $09
	ld c, $c1                                        ; $4b54: $0e $c1
	ld e, c                                          ; $4b56: $59
	db $e3                                           ; $4b57: $e3
	nop                                              ; $4b58: $00
	cp d                                             ; $4b59: $ba
	ret nz                                           ; $4b5a: $c0

	ld d, [hl]                                       ; $4b5b: $56
	jp nc, $d0db                                     ; $4b5c: $d2 $db $d0

	push hl                                          ; $4b5f: $e5
	dec de                                           ; $4b60: $1b
	nop                                              ; $4b61: $00
	nop                                              ; $4b62: $00
	add hl, bc                                       ; $4b63: $09
	rrca                                             ; $4b64: $0f
	ret nz                                           ; $4b65: $c0

	ld bc, $04a0                                     ; $4b66: $01 $a0 $04
	ld bc, $c08a                                     ; $4b69: $01 $8a $c0
	ld bc, $01a0                                     ; $4b6c: $01 $a0 $01
	ld bc, $e48e                                     ; $4b6f: $01 $8e $e4
	nop                                              ; $4b72: $00
	ld [bc], a                                       ; $4b73: $02
	inc l                                            ; $4b74: $2c
	dec b                                            ; $4b75: $05
	pop bc                                           ; $4b76: $c1
	ld e, c                                          ; $4b77: $59
	db $e3                                           ; $4b78: $e3
	nop                                              ; $4b79: $00
	adc d                                            ; $4b7a: $8a
	ld c, d                                          ; $4b7b: $4a
	cp $08                                           ; $4b7c: $fe $08
	db $fc                                           ; $4b7e: $fc
	ret nz                                           ; $4b7f: $c0

	ld h, a                                          ; $4b80: $67
	ret nc                                           ; $4b81: $d0

	db $fc                                           ; $4b82: $fc
	ret nz                                           ; $4b83: $c0

	ld l, c                                          ; $4b84: $69
	pop de                                           ; $4b85: $d1
	jr z, @+$08                                      ; $4b86: $28 $06

	ret nz                                           ; $4b88: $c0

	ld bc, $01a0                                     ; $4b89: $01 $a0 $01
	ld bc, $3392                                     ; $4b8c: $01 $92 $33
	ld bc, $2897                                     ; $4b8f: $01 $97 $28
	inc c                                            ; $4b92: $0c
	ret nz                                           ; $4b93: $c0

	ld bc, $01a0                                     ; $4b94: $01 $a0 $01
	ld bc, $c09a                                     ; $4b97: $01 $9a $c0
	ld bc, $04a0                                     ; $4b9a: $01 $a0 $04
	ld bc, $1da1                                     ; $4b9d: $01 $a1 $1d
	ld bc, $09a6                                     ; $4ba0: $01 $a6 $09
	inc d                                            ; $4ba3: $14
	ret nz                                           ; $4ba4: $c0

	ld bc, $04a0                                     ; $4ba5: $01 $a0 $04
	ld bc, $d0a8                                     ; $4ba8: $01 $a8 $d0
	adc e                                            ; $4bab: $8b
	and b                                            ; $4bac: $a0
	inc bc                                           ; $4bad: $03
	or b                                             ; $4bae: $b0
	ld a, d                                          ; $4baf: $7a
	ret nc                                           ; $4bb0: $d0

	add e                                            ; $4bb1: $83
	ld bc, $d7de                                     ; $4bb2: $01 $de $d7
	db $e4                                           ; $4bb5: $e4
	dec b                                            ; $4bb6: $05
	ld d, d                                          ; $4bb7: $52
	ld bc, $00ab                                     ; $4bb8: $01 $ab $00
	nop                                              ; $4bbb: $00
	dec bc                                           ; $4bbc: $0b
	ld bc, $00ad                                     ; $4bbd: $01 $ad $00
	nop                                              ; $4bc0: $00
	ld b, $d1                                        ; $4bc1: $06 $d1
	nop                                              ; $4bc3: $00
	nop                                              ; $4bc4: $00
	ld [bc], a                                       ; $4bc5: $02
	jr z, @+$08                                      ; $4bc6: $28 $06

	ret nz                                           ; $4bc8: $c0

	ld bc, $04a0                                     ; $4bc9: $01 $a0 $04
	ld bc, $70af                                     ; $4bcc: $01 $af $70
	ei                                               ; $4bcf: $fb
	add b                                            ; $4bd0: $80
	ld [bc], a                                       ; $4bd1: $02
	ld d, e                                          ; $4bd2: $53
	ld [de], a                                       ; $4bd3: $12
	ld bc, $09b5                                     ; $4bd4: $01 $b5 $09
	ld c, $d0                                        ; $4bd7: $0e $d0
	add e                                            ; $4bd9: $83
	ld bc, $d4de                                     ; $4bda: $01 $de $d4
	ret nc                                           ; $4bdd: $d0

	adc e                                            ; $4bde: $8b
	and b                                            ; $4bdf: $a0
	inc bc                                           ; $4be0: $03
	or b                                             ; $4be1: $b0
	ld a, e                                          ; $4be2: $7b
	db $e4                                           ; $4be3: $e4
	inc bc                                           ; $4be4: $03
	ld h, a                                          ; $4be5: $67
	ei                                               ; $4be6: $fb
	pop af                                           ; $4be7: $f1
	add b                                            ; $4be8: $80
	ld [bc], a                                       ; $4be9: $02
	ld d, e                                          ; $4bea: $53
	ld [de], a                                       ; $4beb: $12
	ld bc, $09b7                                     ; $4bec: $01 $b7 $09
	ld c, $d0                                        ; $4bef: $0e $d0
	add e                                            ; $4bf1: $83
	ld bc, $d1de                                     ; $4bf2: $01 $de $d1
	ret nc                                           ; $4bf5: $d0

	adc e                                            ; $4bf6: $8b
	and b                                            ; $4bf7: $a0
	inc bc                                           ; $4bf8: $03
	or b                                             ; $4bf9: $b0
	ld a, h                                          ; $4bfa: $7c
	db $e4                                           ; $4bfb: $e4
	nop                                              ; $4bfc: $00
	ld b, e                                          ; $4bfd: $43
	ei                                               ; $4bfe: $fb
	add b                                            ; $4bff: $80
	ld [bc], a                                       ; $4c00: $02
	ld e, d                                          ; $4c01: $5a
	ld [de], a                                       ; $4c02: $12
	ld bc, $09b9                                     ; $4c03: $01 $b9 $09
	ld c, $d0                                        ; $4c06: $0e $d0
	add e                                            ; $4c08: $83
	ld bc, $d5de                                     ; $4c09: $01 $de $d5
	ret nc                                           ; $4c0c: $d0

	adc e                                            ; $4c0d: $8b
	and b                                            ; $4c0e: $a0
	inc bc                                           ; $4c0f: $03
	or b                                             ; $4c10: $b0
	ld a, l                                          ; $4c11: $7d
	db $e4                                           ; $4c12: $e4
	inc b                                            ; $4c13: $04
	ld b, d                                          ; $4c14: $42
	ei                                               ; $4c15: $fb
	pop af                                           ; $4c16: $f1
	add b                                            ; $4c17: $80
	ld [bc], a                                       ; $4c18: $02
	ld e, d                                          ; $4c19: $5a
	ld [de], a                                       ; $4c1a: $12
	ld bc, $09bb                                     ; $4c1b: $01 $bb $09
	ld c, $d0                                        ; $4c1e: $0e $d0
	add e                                            ; $4c20: $83
	ld bc, $d2de                                     ; $4c21: $01 $de $d2
	ret nc                                           ; $4c24: $d0

	adc e                                            ; $4c25: $8b
	and b                                            ; $4c26: $a0
	inc bc                                           ; $4c27: $03
	or b                                             ; $4c28: $b0
	ld a, [hl]                                       ; $4c29: $7e
	db $e4                                           ; $4c2a: $e4
	ld bc, $0118                                     ; $4c2b: $01 $18 $01
	cp l                                             ; $4c2e: $bd
	add hl, bc                                       ; $4c2f: $09
	ld c, $d0                                        ; $4c30: $0e $d0
	add e                                            ; $4c32: $83
	ld bc, $d3de                                     ; $4c33: $01 $de $d3
	ret nc                                           ; $4c36: $d0

	adc e                                            ; $4c37: $8b
	and b                                            ; $4c38: $a0
	inc bc                                           ; $4c39: $03
	or b                                             ; $4c3a: $b0
	ld a, a                                          ; $4c3b: $7f
	db $e4                                           ; $4c3c: $e4
	ld [bc], a                                       ; $4c3d: $02
	ld a, [bc]                                       ; $4c3e: $0a
	add hl, bc                                       ; $4c3f: $09
	ld hl, $59c1                                     ; $4c40: $21 $c1 $59
	db $e3                                           ; $4c43: $e3
	nop                                              ; $4c44: $00
	adc h                                            ; $4c45: $8c
	ret nz                                           ; $4c46: $c0

	ld bc, $04a0                                     ; $4c47: $01 $a0 $04
	ld bc, $e1bf                                     ; $4c4a: $01 $bf $e1
	ld [bc], a                                       ; $4c4d: $02
	rlca                                             ; $4c4e: $07
	call nz, $80a0                                   ; $4c4f: $c4 $a0 $80
	and b                                            ; $4c52: $a0
	rrca                                             ; $4c53: $0f
	nop                                              ; $4c54: $00
	inc bc                                           ; $4c55: $03
	db $e4                                           ; $4c56: $e4
	nop                                              ; $4c57: $00
	dec bc                                           ; $4c58: $0b
	rst $38                                          ; $4c59: $ff
	rlca                                             ; $4c5a: $07
	ld b, b                                          ; $4c5b: $40
	add b                                            ; $4c5c: $80
	and b                                            ; $4c5d: $a0
	rrca                                             ; $4c5e: $0f
	db $e4                                           ; $4c5f: $e4
	nop                                              ; $4c60: $00
	sbc e                                            ; $4c61: $9b
	jr z, @+$08                                      ; $4c62: $28 $06

	ret nz                                           ; $4c64: $c0

	ld bc, $04a0                                     ; $4c65: $01 $a0 $04
	ld bc, $90c7                                     ; $4c68: $01 $c7 $90
	ld bc, $09ca                                     ; $4c6b: $01 $ca $09
	inc l                                            ; $4c6e: $2c
	pop hl                                           ; $4c6f: $e1
	ld [bc], a                                       ; $4c70: $02
	inc bc                                           ; $4c71: $03
	rla                                              ; $4c72: $17
	add d                                            ; $4c73: $82
	ret nz                                           ; $4c74: $c0

	dec de                                           ; $4c75: $1b
	jp nc, $d002                                     ; $4c76: $d2 $02 $d0

	pop de                                           ; $4c79: $d1
	ld b, $c0                                        ; $4c7a: $06 $c0
	ld bc, $04a0                                     ; $4c7c: $01 $a0 $04
	ld bc, $02cf                                     ; $4c7f: $01 $cf $02
	jp nc, $06d3                                     ; $4c82: $d2 $d3 $06

	ret nz                                           ; $4c85: $c0

	ld bc, $04a0                                     ; $4c86: $01 $a0 $04
	ld bc, $01d4                                     ; $4c89: $01 $d4 $01
	call nc, $c006                                   ; $4c8c: $d4 $06 $c0
	ld bc, $04a0                                     ; $4c8f: $01 $a0 $04
	ld bc, $e1da                                     ; $4c92: $01 $da $e1
	ld [bc], a                                       ; $4c95: $02
	inc bc                                           ; $4c96: $03
	sbc c                                            ; $4c97: $99
	db $e4                                           ; $4c98: $e4
	inc b                                            ; $4c99: $04
	db $eb                                           ; $4c9a: $eb
	ld bc, $09e1                                     ; $4c9b: $01 $e1 $09
	inc l                                            ; $4c9e: $2c
	pop hl                                           ; $4c9f: $e1
	ld [bc], a                                       ; $4ca0: $02
	inc bc                                           ; $4ca1: $03
	rra                                              ; $4ca2: $1f
	add d                                            ; $4ca3: $82
	ret nz                                           ; $4ca4: $c0

	dec de                                           ; $4ca5: $1b
	jp nc, $d002                                     ; $4ca6: $d2 $02 $d0

	pop de                                           ; $4ca9: $d1
	ld b, $c0                                        ; $4caa: $06 $c0
	ld bc, $04a0                                     ; $4cac: $01 $a0 $04
	ld bc, $02e3                                     ; $4caf: $01 $e3 $02
	jp nc, $06d3                                     ; $4cb2: $d2 $d3 $06

	ret nz                                           ; $4cb5: $c0

	ld bc, $04a0                                     ; $4cb6: $01 $a0 $04
	ld bc, $01eb                                     ; $4cb9: $01 $eb $01
	call nc, $c006                                   ; $4cbc: $d4 $06 $c0
	ld bc, $04a0                                     ; $4cbf: $01 $a0 $04
	ld bc, $e1f2                                     ; $4cc2: $01 $f2 $e1
	ld [bc], a                                       ; $4cc5: $02
	inc bc                                           ; $4cc6: $03
	xor e                                            ; $4cc7: $ab
	db $e4                                           ; $4cc8: $e4
	inc b                                            ; $4cc9: $04
	cp e                                             ; $4cca: $bb
	ld bc, $09f5                                     ; $4ccb: $01 $f5 $09
	inc l                                            ; $4cce: $2c
	pop hl                                           ; $4ccf: $e1
	ld [bc], a                                       ; $4cd0: $02
	inc bc                                           ; $4cd1: $03
	dec de                                           ; $4cd2: $1b
	add d                                            ; $4cd3: $82
	ret nz                                           ; $4cd4: $c0

	dec de                                           ; $4cd5: $1b
	jp nc, $d002                                     ; $4cd6: $d2 $02 $d0

	pop de                                           ; $4cd9: $d1
	ld b, $c0                                        ; $4cda: $06 $c0
	ld bc, $04a0                                     ; $4cdc: $01 $a0 $04
	ld bc, $02f7                                     ; $4cdf: $01 $f7 $02
	jp nc, $06d3                                     ; $4ce2: $d2 $d3 $06

	ret nz                                           ; $4ce5: $c0

	ld bc, $04a0                                     ; $4ce6: $01 $a0 $04
	ld [bc], a                                       ; $4ce9: $02
	nop                                              ; $4cea: $00
	ld bc, $06d4                                     ; $4ceb: $01 $d4 $06
	ret nz                                           ; $4cee: $c0

	ld bc, $04a0                                     ; $4cef: $01 $a0 $04
	ld [bc], a                                       ; $4cf2: $02
	ld b, $e1                                        ; $4cf3: $06 $e1
	ld [bc], a                                       ; $4cf5: $02
	inc bc                                           ; $4cf6: $03
	and d                                            ; $4cf7: $a2
	db $e4                                           ; $4cf8: $e4
	inc b                                            ; $4cf9: $04
	adc e                                            ; $4cfa: $8b
	jr z, jr_07f_4d03                                ; $4cfb: $28 $06

	ret nz                                           ; $4cfd: $c0

	ld bc, $04a0                                     ; $4cfe: $01 $a0 $04
	ld [bc], a                                       ; $4d01: $02
	dec c                                            ; $4d02: $0d

jr_07f_4d03:
	ccf                                              ; $4d03: $3f
	ld [bc], a                                       ; $4d04: $02
	inc de                                           ; $4d05: $13
	add hl, bc                                       ; $4d06: $09
	ld de, $02e1                                     ; $4d07: $11 $e1 $02
	inc bc                                           ; $4d0a: $03
	rla                                              ; $4d0b: $17
	ret nz                                           ; $4d0c: $c0

	ld bc, $04a0                                     ; $4d0d: $01 $a0 $04
	ld [bc], a                                       ; $4d10: $02
	rla                                              ; $4d11: $17
	pop hl                                           ; $4d12: $e1
	ld [bc], a                                       ; $4d13: $02
	inc bc                                           ; $4d14: $03
	sbc c                                            ; $4d15: $99
	db $e4                                           ; $4d16: $e4
	inc b                                            ; $4d17: $04
	ld l, l                                          ; $4d18: $6d
	ld [bc], a                                       ; $4d19: $02
	inc e                                            ; $4d1a: $1c
	add hl, bc                                       ; $4d1b: $09
	ld de, $02e1                                     ; $4d1c: $11 $e1 $02
	inc bc                                           ; $4d1f: $03
	rra                                              ; $4d20: $1f
	ret nz                                           ; $4d21: $c0

	ld bc, $04a0                                     ; $4d22: $01 $a0 $04
	ld [bc], a                                       ; $4d25: $02
	ld hl, $02e1                                     ; $4d26: $21 $e1 $02
	inc bc                                           ; $4d29: $03
	xor e                                            ; $4d2a: $ab
	db $e4                                           ; $4d2b: $e4
	inc b                                            ; $4d2c: $04
	ld e, b                                          ; $4d2d: $58
	ld [bc], a                                       ; $4d2e: $02
	ld a, [hl+]                                      ; $4d2f: $2a
	add hl, bc                                       ; $4d30: $09
	ld de, $02e1                                     ; $4d31: $11 $e1 $02
	inc bc                                           ; $4d34: $03
	dec de                                           ; $4d35: $1b
	ret nz                                           ; $4d36: $c0

	ld bc, $04a0                                     ; $4d37: $01 $a0 $04
	ld [bc], a                                       ; $4d3a: $02
	cpl                                              ; $4d3b: $2f
	pop hl                                           ; $4d3c: $e1
	ld [bc], a                                       ; $4d3d: $02
	inc bc                                           ; $4d3e: $03
	and d                                            ; $4d3f: $a2
	db $e4                                           ; $4d40: $e4
	inc b                                            ; $4d41: $04
	ld b, e                                          ; $4d42: $43
	add hl, bc                                       ; $4d43: $09
	ld hl, $59c1                                     ; $4d44: $21 $c1 $59
	db $e3                                           ; $4d47: $e3
	nop                                              ; $4d48: $00
	adc l                                            ; $4d49: $8d
	ret nz                                           ; $4d4a: $c0

	ld bc, $04a0                                     ; $4d4b: $01 $a0 $04
	ld [bc], a                                       ; $4d4e: $02
	inc [hl]                                         ; $4d4f: $34
	pop hl                                           ; $4d50: $e1
	ld [bc], a                                       ; $4d51: $02
	rlca                                             ; $4d52: $07
	db $e3                                           ; $4d53: $e3
	and b                                            ; $4d54: $a0
	add b                                            ; $4d55: $80
	and b                                            ; $4d56: $a0
	stop                                             ; $4d57: $10 $00
	inc bc                                           ; $4d59: $03
	db $e4                                           ; $4d5a: $e4
	nop                                              ; $4d5b: $00
	dec bc                                           ; $4d5c: $0b
	rst $38                                          ; $4d5d: $ff
	rlca                                             ; $4d5e: $07
	ld b, b                                          ; $4d5f: $40
	add b                                            ; $4d60: $80
	and b                                            ; $4d61: $a0
	db $10                                           ; $4d62: $10
	db $e4                                           ; $4d63: $e4
	nop                                              ; $4d64: $00
	sbc e                                            ; $4d65: $9b
	jr z, jr_07f_4d6e                                ; $4d66: $28 $06

	ret nz                                           ; $4d68: $c0

	ld bc, $04a0                                     ; $4d69: $01 $a0 $04
	ld [bc], a                                       ; $4d6c: $02
	dec a                                            ; $4d6d: $3d

jr_07f_4d6e:
	sub b                                            ; $4d6e: $90
	ld [bc], a                                       ; $4d6f: $02
	ld b, d                                          ; $4d70: $42
	add hl, bc                                       ; $4d71: $09
	inc l                                            ; $4d72: $2c
	pop hl                                           ; $4d73: $e1
	ld [bc], a                                       ; $4d74: $02
	inc bc                                           ; $4d75: $03
	rla                                              ; $4d76: $17
	add d                                            ; $4d77: $82
	ret nz                                           ; $4d78: $c0

	dec de                                           ; $4d79: $1b
	jp nc, $d002                                     ; $4d7a: $d2 $02 $d0

	pop de                                           ; $4d7d: $d1
	ld b, $c0                                        ; $4d7e: $06 $c0
	ld bc, $04a0                                     ; $4d80: $01 $a0 $04
	ld [bc], a                                       ; $4d83: $02
	ld b, a                                          ; $4d84: $47
	ld [bc], a                                       ; $4d85: $02
	jp nc, $06d3                                     ; $4d86: $d2 $d3 $06

	ret nz                                           ; $4d89: $c0

	ld bc, $04a0                                     ; $4d8a: $01 $a0 $04
	ld [bc], a                                       ; $4d8d: $02
	ld d, h                                          ; $4d8e: $54
	ld bc, $06d4                                     ; $4d8f: $01 $d4 $06
	ret nz                                           ; $4d92: $c0

	ld bc, $04a0                                     ; $4d93: $01 $a0 $04
	ld [bc], a                                       ; $4d96: $02
	ld e, e                                          ; $4d97: $5b
	pop hl                                           ; $4d98: $e1
	ld [bc], a                                       ; $4d99: $02
	inc bc                                           ; $4d9a: $03
	sbc c                                            ; $4d9b: $99
	db $e4                                           ; $4d9c: $e4
	inc bc                                           ; $4d9d: $03
	rst SubAFromBC                                          ; $4d9e: $e7
	ld [bc], a                                       ; $4d9f: $02
	ld e, a                                          ; $4da0: $5f
	add hl, bc                                       ; $4da1: $09
	inc l                                            ; $4da2: $2c
	pop hl                                           ; $4da3: $e1
	ld [bc], a                                       ; $4da4: $02
	inc bc                                           ; $4da5: $03
	rra                                              ; $4da6: $1f
	add d                                            ; $4da7: $82
	ret nz                                           ; $4da8: $c0

	dec de                                           ; $4da9: $1b
	jp nc, $d002                                     ; $4daa: $d2 $02 $d0

	pop de                                           ; $4dad: $d1
	ld b, $c0                                        ; $4dae: $06 $c0
	ld bc, $04a0                                     ; $4db0: $01 $a0 $04
	ld [bc], a                                       ; $4db3: $02
	ld h, a                                          ; $4db4: $67
	ld [bc], a                                       ; $4db5: $02
	jp nc, $06d3                                     ; $4db6: $d2 $d3 $06

	ret nz                                           ; $4db9: $c0

	ld bc, $04a0                                     ; $4dba: $01 $a0 $04
	ld [bc], a                                       ; $4dbd: $02
	ld l, [hl]                                       ; $4dbe: $6e
	ld bc, $06d4                                     ; $4dbf: $01 $d4 $06
	ret nz                                           ; $4dc2: $c0

	ld bc, $04a0                                     ; $4dc3: $01 $a0 $04
	ld bc, $e1f2                                     ; $4dc6: $01 $f2 $e1
	ld [bc], a                                       ; $4dc9: $02
	inc bc                                           ; $4dca: $03
	xor e                                            ; $4dcb: $ab
	db $e4                                           ; $4dcc: $e4
	inc bc                                           ; $4dcd: $03
	or a                                             ; $4dce: $b7
	ld [bc], a                                       ; $4dcf: $02
	ld a, l                                          ; $4dd0: $7d
	add hl, bc                                       ; $4dd1: $09
	inc l                                            ; $4dd2: $2c
	pop hl                                           ; $4dd3: $e1
	ld [bc], a                                       ; $4dd4: $02
	inc bc                                           ; $4dd5: $03
	dec de                                           ; $4dd6: $1b
	add d                                            ; $4dd7: $82
	ret nz                                           ; $4dd8: $c0

	dec de                                           ; $4dd9: $1b
	jp nc, $d002                                     ; $4dda: $d2 $02 $d0

	pop de                                           ; $4ddd: $d1
	ld b, $c0                                        ; $4dde: $06 $c0
	ld bc, $04a0                                     ; $4de0: $01 $a0 $04
	ld [bc], a                                       ; $4de3: $02
	add d                                            ; $4de4: $82
	ld [bc], a                                       ; $4de5: $02
	jp nc, $06d3                                     ; $4de6: $d2 $d3 $06

	ret nz                                           ; $4de9: $c0

	ld bc, $04a0                                     ; $4dea: $01 $a0 $04
	ld [bc], a                                       ; $4ded: $02
	sub [hl]                                         ; $4dee: $96
	ld bc, $06d4                                     ; $4def: $01 $d4 $06
	ret nz                                           ; $4df2: $c0

	ld bc, $04a0                                     ; $4df3: $01 $a0 $04
	ld [bc], a                                       ; $4df6: $02
	and e                                            ; $4df7: $a3
	pop hl                                           ; $4df8: $e1
	ld [bc], a                                       ; $4df9: $02
	inc bc                                           ; $4dfa: $03
	and d                                            ; $4dfb: $a2
	db $e4                                           ; $4dfc: $e4
	inc bc                                           ; $4dfd: $03
	add a                                            ; $4dfe: $87
	jr z, jr_07f_4e07                                ; $4dff: $28 $06

	ret nz                                           ; $4e01: $c0

	ld bc, $04a0                                     ; $4e02: $01 $a0 $04
	ld [bc], a                                       ; $4e05: $02
	or c                                             ; $4e06: $b1

jr_07f_4e07:
	ccf                                              ; $4e07: $3f
	ld [bc], a                                       ; $4e08: $02
	inc de                                           ; $4e09: $13
	add hl, bc                                       ; $4e0a: $09
	ld de, $02e1                                     ; $4e0b: $11 $e1 $02
	inc bc                                           ; $4e0e: $03
	rla                                              ; $4e0f: $17
	ret nz                                           ; $4e10: $c0

	ld bc, $04a0                                     ; $4e11: $01 $a0 $04
	ld [bc], a                                       ; $4e14: $02
	rla                                              ; $4e15: $17
	pop hl                                           ; $4e16: $e1
	ld [bc], a                                       ; $4e17: $02
	inc bc                                           ; $4e18: $03
	sbc c                                            ; $4e19: $99
	db $e4                                           ; $4e1a: $e4
	inc bc                                           ; $4e1b: $03
	ld l, c                                          ; $4e1c: $69
	ld [bc], a                                       ; $4e1d: $02
	or [hl]                                          ; $4e1e: $b6
	add hl, bc                                       ; $4e1f: $09
	ld de, $02e1                                     ; $4e20: $11 $e1 $02
	inc bc                                           ; $4e23: $03
	rra                                              ; $4e24: $1f
	ret nz                                           ; $4e25: $c0

	ld bc, $04a0                                     ; $4e26: $01 $a0 $04
	ld [bc], a                                       ; $4e29: $02
	cp h                                             ; $4e2a: $bc
	pop hl                                           ; $4e2b: $e1
	ld [bc], a                                       ; $4e2c: $02
	inc bc                                           ; $4e2d: $03
	xor e                                            ; $4e2e: $ab
	db $e4                                           ; $4e2f: $e4
	inc bc                                           ; $4e30: $03
	ld d, h                                          ; $4e31: $54
	ld [bc], a                                       ; $4e32: $02
	call nz, $1109                                   ; $4e33: $c4 $09 $11
	pop hl                                           ; $4e36: $e1
	ld [bc], a                                       ; $4e37: $02
	inc bc                                           ; $4e38: $03
	dec de                                           ; $4e39: $1b
	ret nz                                           ; $4e3a: $c0

	ld bc, $04a0                                     ; $4e3b: $01 $a0 $04
	ld [bc], a                                       ; $4e3e: $02
	jp z, $02e1                                      ; $4e3f: $ca $e1 $02

	inc bc                                           ; $4e42: $03
	and d                                            ; $4e43: $a2
	db $e4                                           ; $4e44: $e4
	inc bc                                           ; $4e45: $03
	ccf                                              ; $4e46: $3f
	add hl, bc                                       ; $4e47: $09
	ld hl, $59c1                                     ; $4e48: $21 $c1 $59
	db $e3                                           ; $4e4b: $e3
	nop                                              ; $4e4c: $00
	adc [hl]                                         ; $4e4d: $8e
	ret nz                                           ; $4e4e: $c0

	ld bc, $04a0                                     ; $4e4f: $01 $a0 $04
	ld [bc], a                                       ; $4e52: $02
	call $02e1                                       ; $4e53: $cd $e1 $02
	rlca                                             ; $4e56: $07
	rst FarCall                                          ; $4e57: $f7
	and b                                            ; $4e58: $a0
	add b                                            ; $4e59: $80
	and b                                            ; $4e5a: $a0
	ld de, $0300                                     ; $4e5b: $11 $00 $03
	db $e4                                           ; $4e5e: $e4
	nop                                              ; $4e5f: $00
	dec bc                                           ; $4e60: $0b
	rst $38                                          ; $4e61: $ff
	rlca                                             ; $4e62: $07
	ld b, b                                          ; $4e63: $40
	add b                                            ; $4e64: $80
	and b                                            ; $4e65: $a0
	ld de, $00e4                                     ; $4e66: $11 $e4 $00
	sbc e                                            ; $4e69: $9b
	jr z, jr_07f_4e72                                ; $4e6a: $28 $06

	ret nz                                           ; $4e6c: $c0

	ld bc, $04a0                                     ; $4e6d: $01 $a0 $04
	ld [bc], a                                       ; $4e70: $02
	db $d3                                           ; $4e71: $d3

jr_07f_4e72:
	sub b                                            ; $4e72: $90
	ld [bc], a                                       ; $4e73: $02
	sbc $09                                          ; $4e74: $de $09
	inc l                                            ; $4e76: $2c
	pop hl                                           ; $4e77: $e1
	ld [bc], a                                       ; $4e78: $02
	inc bc                                           ; $4e79: $03
	rla                                              ; $4e7a: $17
	add d                                            ; $4e7b: $82
	ret nz                                           ; $4e7c: $c0

	dec de                                           ; $4e7d: $1b
	jp nc, $d002                                     ; $4e7e: $d2 $02 $d0

	pop de                                           ; $4e81: $d1
	ld b, $c0                                        ; $4e82: $06 $c0
	ld bc, $04a0                                     ; $4e84: $01 $a0 $04
	ld [bc], a                                       ; $4e87: $02
	db $e3                                           ; $4e88: $e3
	ld [bc], a                                       ; $4e89: $02
	jp nc, $06d3                                     ; $4e8a: $d2 $d3 $06

	ret nz                                           ; $4e8d: $c0

	ld bc, $04a0                                     ; $4e8e: $01 $a0 $04
	ld [bc], a                                       ; $4e91: $02
	xor $01                                          ; $4e92: $ee $01
	call nc, $c006                                   ; $4e94: $d4 $06 $c0
	ld bc, $04a0                                     ; $4e97: $01 $a0 $04
	ld [bc], a                                       ; $4e9a: $02
	rst FarCall                                          ; $4e9b: $f7
	pop hl                                           ; $4e9c: $e1
	ld [bc], a                                       ; $4e9d: $02
	inc bc                                           ; $4e9e: $03
	sbc c                                            ; $4e9f: $99
	db $e4                                           ; $4ea0: $e4
	ld [bc], a                                       ; $4ea1: $02
	db $e3                                           ; $4ea2: $e3
	ld [bc], a                                       ; $4ea3: $02
	rst $38                                          ; $4ea4: $ff
	add hl, bc                                       ; $4ea5: $09
	inc l                                            ; $4ea6: $2c
	pop hl                                           ; $4ea7: $e1
	ld [bc], a                                       ; $4ea8: $02
	inc bc                                           ; $4ea9: $03
	dec de                                           ; $4eaa: $1b
	add d                                            ; $4eab: $82
	ret nz                                           ; $4eac: $c0

	dec de                                           ; $4ead: $1b

jr_07f_4eae:
	jp nc, $d002                                     ; $4eae: $d2 $02 $d0

	pop de                                           ; $4eb1: $d1
	ld b, $c0                                        ; $4eb2: $06 $c0
	ld bc, $04a0                                     ; $4eb4: $01 $a0 $04
	inc bc                                           ; $4eb7: $03
	ld b, $02                                        ; $4eb8: $06 $02
	jp nc, $06d3                                     ; $4eba: $d2 $d3 $06

	ret nz                                           ; $4ebd: $c0

	ld bc, $04a0                                     ; $4ebe: $01 $a0 $04
	inc bc                                           ; $4ec1: $03
	inc c                                            ; $4ec2: $0c
	ld bc, $06d4                                     ; $4ec3: $01 $d4 $06
	ret nz                                           ; $4ec6: $c0

	ld bc, $04a0                                     ; $4ec7: $01 $a0 $04
	inc bc                                           ; $4eca: $03
	jr jr_07f_4eae                                   ; $4ecb: $18 $e1

	ld [bc], a                                       ; $4ecd: $02
	inc bc                                           ; $4ece: $03
	and d                                            ; $4ecf: $a2
	db $e4                                           ; $4ed0: $e4
	ld [bc], a                                       ; $4ed1: $02
	or e                                             ; $4ed2: $b3
	inc bc                                           ; $4ed3: $03
	inc hl                                           ; $4ed4: $23
	add hl, bc                                       ; $4ed5: $09
	inc l                                            ; $4ed6: $2c
	pop hl                                           ; $4ed7: $e1
	ld [bc], a                                       ; $4ed8: $02
	inc bc                                           ; $4ed9: $03
	dec de                                           ; $4eda: $1b
	add d                                            ; $4edb: $82
	ret nz                                           ; $4edc: $c0

	dec de                                           ; $4edd: $1b
	jp nc, $d002                                     ; $4ede: $d2 $02 $d0

	pop de                                           ; $4ee1: $d1
	ld b, $c0                                        ; $4ee2: $06 $c0
	ld bc, $04a0                                     ; $4ee4: $01 $a0 $04
	inc bc                                           ; $4ee7: $03
	ld a, [hl+]                                      ; $4ee8: $2a
	ld [bc], a                                       ; $4ee9: $02
	jp nc, $06d3                                     ; $4eea: $d2 $d3 $06

	ret nz                                           ; $4eed: $c0

	ld bc, $04a0                                     ; $4eee: $01 $a0 $04
	inc bc                                           ; $4ef1: $03
	dec [hl]                                         ; $4ef2: $35
	ld bc, $06d4                                     ; $4ef3: $01 $d4 $06
	ret nz                                           ; $4ef6: $c0

	ld bc, $04a0                                     ; $4ef7: $01 $a0 $04
	inc bc                                           ; $4efa: $03
	dec a                                            ; $4efb: $3d
	pop hl                                           ; $4efc: $e1
	ld [bc], a                                       ; $4efd: $02
	inc bc                                           ; $4efe: $03
	and d                                            ; $4eff: $a2
	db $e4                                           ; $4f00: $e4
	ld [bc], a                                       ; $4f01: $02
	add e                                            ; $4f02: $83
	jr z, jr_07f_4f0b                                ; $4f03: $28 $06

	ret nz                                           ; $4f05: $c0

	ld bc, $04a0                                     ; $4f06: $01 $a0 $04
	inc bc                                           ; $4f09: $03
	ld b, l                                          ; $4f0a: $45

jr_07f_4f0b:
	ccf                                              ; $4f0b: $3f
	inc bc                                           ; $4f0c: $03
	ld c, d                                          ; $4f0d: $4a
	add hl, bc                                       ; $4f0e: $09
	ld de, $02e1                                     ; $4f0f: $11 $e1 $02
	inc bc                                           ; $4f12: $03
	inc de                                           ; $4f13: $13
	ret nz                                           ; $4f14: $c0

	ld bc, $04a0                                     ; $4f15: $01 $a0 $04
	inc bc                                           ; $4f18: $03
	ld c, a                                          ; $4f19: $4f
	pop hl                                           ; $4f1a: $e1
	ld [bc], a                                       ; $4f1b: $02
	inc bc                                           ; $4f1c: $03
	sub b                                            ; $4f1d: $90
	db $e4                                           ; $4f1e: $e4
	ld [bc], a                                       ; $4f1f: $02
	ld h, l                                          ; $4f20: $65
	inc bc                                           ; $4f21: $03
	ld d, h                                          ; $4f22: $54
	add hl, bc                                       ; $4f23: $09
	ld de, $02e1                                     ; $4f24: $11 $e1 $02
	inc bc                                           ; $4f27: $03
	rra                                              ; $4f28: $1f
	ret nz                                           ; $4f29: $c0

	ld bc, $04a0                                     ; $4f2a: $01 $a0 $04
	inc bc                                           ; $4f2d: $03
	ld e, d                                          ; $4f2e: $5a
	pop hl                                           ; $4f2f: $e1
	ld [bc], a                                       ; $4f30: $02
	inc bc                                           ; $4f31: $03
	xor e                                            ; $4f32: $ab
	db $e4                                           ; $4f33: $e4
	ld [bc], a                                       ; $4f34: $02
	ld d, b                                          ; $4f35: $50
	inc bc                                           ; $4f36: $03
	ld h, b                                          ; $4f37: $60
	add hl, bc                                       ; $4f38: $09
	ld de, $02e1                                     ; $4f39: $11 $e1 $02
	inc bc                                           ; $4f3c: $03
	dec de                                           ; $4f3d: $1b
	ret nz                                           ; $4f3e: $c0

	ld bc, $04a0                                     ; $4f3f: $01 $a0 $04
	inc bc                                           ; $4f42: $03
	ld h, a                                          ; $4f43: $67
	pop hl                                           ; $4f44: $e1
	ld [bc], a                                       ; $4f45: $02
	inc bc                                           ; $4f46: $03
	and d                                            ; $4f47: $a2
	db $e4                                           ; $4f48: $e4
	ld [bc], a                                       ; $4f49: $02
	dec sp                                           ; $4f4a: $3b
	add hl, bc                                       ; $4f4b: $09
	daa                                              ; $4f4c: $27
	pop bc                                           ; $4f4d: $c1
	ld e, c                                          ; $4f4e: $59
	db $e3                                           ; $4f4f: $e3
	nop                                              ; $4f50: $00
	adc a                                            ; $4f51: $8f
	ret nz                                           ; $4f52: $c0

	ld bc, $04a0                                     ; $4f53: $01 $a0 $04
	inc bc                                           ; $4f56: $03
	ld l, l                                          ; $4f57: $6d
	ret nz                                           ; $4f58: $c0

	ld bc, $01a0                                     ; $4f59: $01 $a0 $01
	inc bc                                           ; $4f5c: $03
	halt                                             ; $4f5d: $76
	pop hl                                           ; $4f5e: $e1
	ld [bc], a                                       ; $4f5f: $02
	ld [$a016], sp                                   ; $4f60: $08 $16 $a0
	add b                                            ; $4f63: $80
	and b                                            ; $4f64: $a0
	ld [de], a                                       ; $4f65: $12
	nop                                              ; $4f66: $00
	inc bc                                           ; $4f67: $03
	db $e4                                           ; $4f68: $e4
	nop                                              ; $4f69: $00
	dec bc                                           ; $4f6a: $0b
	rst $38                                          ; $4f6b: $ff
	rlca                                             ; $4f6c: $07
	ld b, b                                          ; $4f6d: $40
	add b                                            ; $4f6e: $80
	and b                                            ; $4f6f: $a0
	ld [de], a                                       ; $4f70: $12
	db $e4                                           ; $4f71: $e4
	nop                                              ; $4f72: $00
	sbc e                                            ; $4f73: $9b
	jr z, jr_07f_4f7c                                ; $4f74: $28 $06

	ret nz                                           ; $4f76: $c0

	ld bc, $04a0                                     ; $4f77: $01 $a0 $04
	inc bc                                           ; $4f7a: $03
	ld a, e                                          ; $4f7b: $7b

jr_07f_4f7c:
	sub b                                            ; $4f7c: $90
	inc bc                                           ; $4f7d: $03
	add l                                            ; $4f7e: $85
	add hl, bc                                       ; $4f7f: $09
	inc l                                            ; $4f80: $2c
	pop hl                                           ; $4f81: $e1
	ld [bc], a                                       ; $4f82: $02
	inc bc                                           ; $4f83: $03
	rla                                              ; $4f84: $17
	add d                                            ; $4f85: $82
	ret nz                                           ; $4f86: $c0

	dec de                                           ; $4f87: $1b
	jp nc, $d002                                     ; $4f88: $d2 $02 $d0

	pop de                                           ; $4f8b: $d1
	ld b, $c0                                        ; $4f8c: $06 $c0
	ld bc, $04a0                                     ; $4f8e: $01 $a0 $04
	inc bc                                           ; $4f91: $03
	adc h                                            ; $4f92: $8c
	ld [bc], a                                       ; $4f93: $02
	jp nc, $06d3                                     ; $4f94: $d2 $d3 $06

	ret nz                                           ; $4f97: $c0

	ld bc, $04a0                                     ; $4f98: $01 $a0 $04
	inc bc                                           ; $4f9b: $03
	sbc b                                            ; $4f9c: $98
	ld bc, $06d4                                     ; $4f9d: $01 $d4 $06
	ret nz                                           ; $4fa0: $c0

	ld bc, $04a0                                     ; $4fa1: $01 $a0 $04
	inc bc                                           ; $4fa4: $03
	and c                                            ; $4fa5: $a1
	pop hl                                           ; $4fa6: $e1
	ld [bc], a                                       ; $4fa7: $02
	inc bc                                           ; $4fa8: $03
	sbc c                                            ; $4fa9: $99
	db $e4                                           ; $4faa: $e4
	ld bc, $03d9                                     ; $4fab: $01 $d9 $03
	and a                                            ; $4fae: $a7
	add hl, bc                                       ; $4faf: $09
	inc l                                            ; $4fb0: $2c
	pop hl                                           ; $4fb1: $e1
	ld [bc], a                                       ; $4fb2: $02
	inc bc                                           ; $4fb3: $03
	rra                                              ; $4fb4: $1f
	add d                                            ; $4fb5: $82
	ret nz                                           ; $4fb6: $c0

	dec de                                           ; $4fb7: $1b
	jp nc, $d002                                     ; $4fb8: $d2 $02 $d0

	pop de                                           ; $4fbb: $d1
	ld b, $c0                                        ; $4fbc: $06 $c0
	ld bc, $04a0                                     ; $4fbe: $01 $a0 $04
	inc bc                                           ; $4fc1: $03
	xor [hl]                                         ; $4fc2: $ae
	ld [bc], a                                       ; $4fc3: $02
	jp nc, $06d3                                     ; $4fc4: $d2 $d3 $06

	ret nz                                           ; $4fc7: $c0

	ld bc, $04a0                                     ; $4fc8: $01 $a0 $04
	inc bc                                           ; $4fcb: $03
	cp h                                             ; $4fcc: $bc
	ld bc, $06d4                                     ; $4fcd: $01 $d4 $06
	ret nz                                           ; $4fd0: $c0

	ld bc, $04a0                                     ; $4fd1: $01 $a0 $04
	ld bc, $e1f2                                     ; $4fd4: $01 $f2 $e1
	ld [bc], a                                       ; $4fd7: $02
	inc bc                                           ; $4fd8: $03
	xor e                                            ; $4fd9: $ab
	db $e4                                           ; $4fda: $e4
	ld bc, $03a9                                     ; $4fdb: $01 $a9 $03
	ret nz                                           ; $4fde: $c0

	add hl, bc                                       ; $4fdf: $09
	inc l                                            ; $4fe0: $2c
	pop hl                                           ; $4fe1: $e1
	ld [bc], a                                       ; $4fe2: $02
	inc bc                                           ; $4fe3: $03
	dec de                                           ; $4fe4: $1b
	add d                                            ; $4fe5: $82
	ret nz                                           ; $4fe6: $c0

	dec de                                           ; $4fe7: $1b
	jp nc, $d002                                     ; $4fe8: $d2 $02 $d0

	pop de                                           ; $4feb: $d1
	ld b, $c0                                        ; $4fec: $06 $c0
	ld bc, $04a0                                     ; $4fee: $01 $a0 $04
	inc bc                                           ; $4ff1: $03
	ret z                                            ; $4ff2: $c8

	ld [bc], a                                       ; $4ff3: $02
	jp nc, $06d3                                     ; $4ff4: $d2 $d3 $06

	ret nz                                           ; $4ff7: $c0

	ld bc, $04a0                                     ; $4ff8: $01 $a0 $04
	inc bc                                           ; $4ffb: $03
	call nc, $d401                                   ; $4ffc: $d4 $01 $d4
	ld b, $c0                                        ; $4fff: $06 $c0
	ld bc, $04a0                                     ; $5001: $01 $a0 $04
	inc bc                                           ; $5004: $03
	ldh [$e1], a                                     ; $5005: $e0 $e1
	ld [bc], a                                       ; $5007: $02
	inc bc                                           ; $5008: $03
	and d                                            ; $5009: $a2
	db $e4                                           ; $500a: $e4
	ld bc, $2879                                     ; $500b: $01 $79 $28
	ld b, $c0                                        ; $500e: $06 $c0
	ld bc, $04a0                                     ; $5010: $01 $a0 $04
	inc bc                                           ; $5013: $03
	rst SubAFromBC                                          ; $5014: $e7
	ccf                                              ; $5015: $3f
	inc bc                                           ; $5016: $03
	pop af                                           ; $5017: $f1
	add hl, bc                                       ; $5018: $09
	ld de, $02e1                                     ; $5019: $11 $e1 $02
	inc bc                                           ; $501c: $03
	inc de                                           ; $501d: $13
	ret nz                                           ; $501e: $c0

	ld bc, $04a0                                     ; $501f: $01 $a0 $04
	inc bc                                           ; $5022: $03
	ld hl, sp-$1f                                    ; $5023: $f8 $e1
	ld [bc], a                                       ; $5025: $02
	inc bc                                           ; $5026: $03
	sub b                                            ; $5027: $90
	db $e4                                           ; $5028: $e4
	ld bc, $045b                                     ; $5029: $01 $5b $04
	ld [bc], a                                       ; $502c: $02
	add hl, bc                                       ; $502d: $09
	ld de, $02e1                                     ; $502e: $11 $e1 $02
	inc bc                                           ; $5031: $03
	rra                                              ; $5032: $1f
	ret nz                                           ; $5033: $c0

	ld bc, $04a0                                     ; $5034: $01 $a0 $04
	inc b                                            ; $5037: $04
	dec bc                                           ; $5038: $0b
	pop hl                                           ; $5039: $e1
	ld [bc], a                                       ; $503a: $02
	inc bc                                           ; $503b: $03
	xor e                                            ; $503c: $ab
	db $e4                                           ; $503d: $e4
	ld bc, $0446                                     ; $503e: $01 $46 $04
	ld de, $1109                                     ; $5041: $11 $09 $11
	pop hl                                           ; $5044: $e1
	ld [bc], a                                       ; $5045: $02
	inc bc                                           ; $5046: $03
	rla                                              ; $5047: $17
	ret nz                                           ; $5048: $c0

	ld bc, $04a0                                     ; $5049: $01 $a0 $04
	inc b                                            ; $504c: $04
	inc d                                            ; $504d: $14
	pop hl                                           ; $504e: $e1
	ld [bc], a                                       ; $504f: $02
	inc bc                                           ; $5050: $03
	sbc c                                            ; $5051: $99
	db $e4                                           ; $5052: $e4
	ld bc, $0931                                     ; $5053: $01 $31 $09
	ld hl, $59c1                                     ; $5056: $21 $c1 $59
	db $e3                                           ; $5059: $e3
	nop                                              ; $505a: $00
	sub b                                            ; $505b: $90
	ret nz                                           ; $505c: $c0

	ld bc, $04a0                                     ; $505d: $01 $a0 $04
	inc b                                            ; $5060: $04
	add hl, de                                       ; $5061: $19
	pop hl                                           ; $5062: $e1
	ld [bc], a                                       ; $5063: $02
	ld [$a02a], sp                                   ; $5064: $08 $2a $a0
	add b                                            ; $5067: $80
	and b                                            ; $5068: $a0
	inc de                                           ; $5069: $13
	nop                                              ; $506a: $00
	inc bc                                           ; $506b: $03
	db $e4                                           ; $506c: $e4
	nop                                              ; $506d: $00
	dec bc                                           ; $506e: $0b
	rst $38                                          ; $506f: $ff
	rlca                                             ; $5070: $07
	ld b, b                                          ; $5071: $40
	add b                                            ; $5072: $80
	and b                                            ; $5073: $a0
	inc de                                           ; $5074: $13
	db $e4                                           ; $5075: $e4
	nop                                              ; $5076: $00
	ld c, d                                          ; $5077: $4a
	jr z, jr_07f_5080                                ; $5078: $28 $06

	ret nz                                           ; $507a: $c0

	ld bc, $04a0                                     ; $507b: $01 $a0 $04
	inc b                                            ; $507e: $04
	rra                                              ; $507f: $1f

jr_07f_5080:
	ccf                                              ; $5080: $3f
	inc b                                            ; $5081: $04
	ld h, $09                                        ; $5082: $26 $09
	ld de, $02e1                                     ; $5084: $11 $e1 $02
	inc bc                                           ; $5087: $03
	rla                                              ; $5088: $17
	ret nz                                           ; $5089: $c0

	ld bc, $04a0                                     ; $508a: $01 $a0 $04
	inc b                                            ; $508d: $04
	add hl, hl                                       ; $508e: $29
	pop hl                                           ; $508f: $e1
	ld [bc], a                                       ; $5090: $02
	inc bc                                           ; $5091: $03
	sbc c                                            ; $5092: $99
	db $e4                                           ; $5093: $e4
	nop                                              ; $5094: $00
	ldh a, [rDIV]                                    ; $5095: $f0 $04
	ld sp, $1109                                     ; $5097: $31 $09 $11
	pop hl                                           ; $509a: $e1
	ld [bc], a                                       ; $509b: $02
	inc bc                                           ; $509c: $03
	rra                                              ; $509d: $1f
	ret nz                                           ; $509e: $c0

	ld bc, $04a0                                     ; $509f: $01 $a0 $04
	inc b                                            ; $50a2: $04
	ld [hl], $e1                                     ; $50a3: $36 $e1
	ld [bc], a                                       ; $50a5: $02
	inc bc                                           ; $50a6: $03
	xor e                                            ; $50a7: $ab
	db $e4                                           ; $50a8: $e4
	nop                                              ; $50a9: $00
	db $db                                           ; $50aa: $db
	inc b                                            ; $50ab: $04
	ld b, c                                          ; $50ac: $41
	add hl, bc                                       ; $50ad: $09
	ld de, $02e1                                     ; $50ae: $11 $e1 $02
	inc bc                                           ; $50b1: $03
	rla                                              ; $50b2: $17
	ret nz                                           ; $50b3: $c0

	ld bc, $04a0                                     ; $50b4: $01 $a0 $04
	inc b                                            ; $50b7: $04
	ld b, h                                          ; $50b8: $44
	pop hl                                           ; $50b9: $e1
	ld [bc], a                                       ; $50ba: $02
	inc bc                                           ; $50bb: $03
	sbc c                                            ; $50bc: $99
	db $e4                                           ; $50bd: $e4
	nop                                              ; $50be: $00
	add $28                                          ; $50bf: $c6 $28
	ld b, $c0                                        ; $50c1: $06 $c0
	ld bc, $04a0                                     ; $50c3: $01 $a0 $04
	inc b                                            ; $50c6: $04
	ld c, d                                          ; $50c7: $4a
	ccf                                              ; $50c8: $3f
	inc b                                            ; $50c9: $04
	ld d, a                                          ; $50ca: $57
	add hl, bc                                       ; $50cb: $09
	ld de, $02e1                                     ; $50cc: $11 $e1 $02
	inc bc                                           ; $50cf: $03
	inc de                                           ; $50d0: $13
	ret nz                                           ; $50d1: $c0

	ld bc, $04a0                                     ; $50d2: $01 $a0 $04
	inc b                                            ; $50d5: $04
	ld h, b                                          ; $50d6: $60
	pop hl                                           ; $50d7: $e1
	ld [bc], a                                       ; $50d8: $02
	inc bc                                           ; $50d9: $03
	sub b                                            ; $50da: $90
	db $e4                                           ; $50db: $e4
	nop                                              ; $50dc: $00
	xor b                                            ; $50dd: $a8
	inc b                                            ; $50de: $04
	ld h, h                                          ; $50df: $64
	add hl, bc                                       ; $50e0: $09
	ld de, $02e1                                     ; $50e1: $11 $e1 $02
	inc bc                                           ; $50e4: $03
	rra                                              ; $50e5: $1f
	ret nz                                           ; $50e6: $c0

	ld bc, $04a0                                     ; $50e7: $01 $a0 $04
	inc b                                            ; $50ea: $04
	ld l, c                                          ; $50eb: $69
	pop hl                                           ; $50ec: $e1
	ld [bc], a                                       ; $50ed: $02
	inc bc                                           ; $50ee: $03
	xor e                                            ; $50ef: $ab
	db $e4                                           ; $50f0: $e4
	nop                                              ; $50f1: $00
	sub e                                            ; $50f2: $93
	inc b                                            ; $50f3: $04
	ld [hl], e                                       ; $50f4: $73
	add hl, bc                                       ; $50f5: $09
	ld de, $02e1                                     ; $50f6: $11 $e1 $02
	inc bc                                           ; $50f9: $03
	dec de                                           ; $50fa: $1b
	ret nz                                           ; $50fb: $c0

	ld bc, $04a0                                     ; $50fc: $01 $a0 $04
	inc b                                            ; $50ff: $04
	ld a, e                                          ; $5100: $7b
	pop hl                                           ; $5101: $e1
	ld [bc], a                                       ; $5102: $02
	inc bc                                           ; $5103: $03
	and d                                            ; $5104: $a2
	db $e4                                           ; $5105: $e4
	nop                                              ; $5106: $00
	ld a, [hl]                                       ; $5107: $7e
	add hl, bc                                       ; $5108: $09
	ld a, d                                          ; $5109: $7a
	ret nz                                           ; $510a: $c0

	add hl, bc                                       ; $510b: $09
	db $e3                                           ; $510c: $e3
	nop                                              ; $510d: $00
	dec l                                            ; $510e: $2d
	pop bc                                           ; $510f: $c1
	ld e, c                                          ; $5110: $59
	db $e3                                           ; $5111: $e3
	nop                                              ; $5112: $00
	sub d                                            ; $5113: $92
	ret nz                                           ; $5114: $c0

	ld bc, $04a0                                     ; $5115: $01 $a0 $04
	inc b                                            ; $5118: $04
	ld a, [hl]                                       ; $5119: $7e
	ret nz                                           ; $511a: $c0

	ld bc, $01a0                                     ; $511b: $01 $a0 $01
	inc b                                            ; $511e: $04
	add e                                            ; $511f: $83
	ret nz                                           ; $5120: $c0

	ld bc, $04a0                                     ; $5121: $01 $a0 $04
	inc b                                            ; $5124: $04
	add a                                            ; $5125: $87
	pop bc                                           ; $5126: $c1

jr_07f_5127:
	ld e, e                                          ; $5127: $5b
	ret nz                                           ; $5128: $c0

	inc c                                            ; $5129: $0c
	ldh [$5a], a                                     ; $512a: $e0 $5a
	ret nz                                           ; $512c: $c0

	ld bc, $01a0                                     ; $512d: $01 $a0 $01
	inc b                                            ; $5130: $04
	adc a                                            ; $5131: $8f
	ret nz                                           ; $5132: $c0

	inc c                                            ; $5133: $0c
	ldh [$5a], a                                     ; $5134: $e0 $5a
	pop bc                                           ; $5136: $c1
	ld e, h                                          ; $5137: $5c
	ret nz                                           ; $5138: $c0

	ld bc, $04a0                                     ; $5139: $01 $a0 $04
	inc b                                            ; $513c: $04
	sub h                                            ; $513d: $94
	pop bc                                           ; $513e: $c1
	dec sp                                           ; $513f: $3b
	ret nz                                           ; $5140: $c0

	ld bc, $1fa0                                     ; $5141: $01 $a0 $1f
	inc b                                            ; $5144: $04
	sbc b                                            ; $5145: $98
	ret nz                                           ; $5146: $c0

	ld bc, $01a0                                     ; $5147: $01 $a0 $01
	inc b                                            ; $514a: $04
	and c                                            ; $514b: $a1
	ret nz                                           ; $514c: $c0

	ld bc, $04a0                                     ; $514d: $01 $a0 $04
	inc b                                            ; $5150: $04
	xor l                                            ; $5151: $ad
	ret nz                                           ; $5152: $c0

	ld bc, $01a0                                     ; $5153: $01 $a0 $01
	inc b                                            ; $5156: $04
	or h                                             ; $5157: $b4
	ret nc                                           ; $5158: $d0

	add d                                            ; $5159: $82
	ld bc, $d3cc                                     ; $515a: $01 $cc $d3
	ret nz                                           ; $515d: $c0

	ld d, c                                          ; $515e: $51
	pop de                                           ; $515f: $d1
	ret nz                                           ; $5160: $c0

	ld d, b                                          ; $5161: $50
	pop de                                           ; $5162: $d1
	ret nz                                           ; $5163: $c0

	ld d, l                                          ; $5164: $55
	ldh [rAUD1HIGH], a                               ; $5165: $e0 $14
	pop bc                                           ; $5167: $c1
	ld e, c                                          ; $5168: $59
	db $e3                                           ; $5169: $e3
	nop                                              ; $516a: $00
	adc d                                            ; $516b: $8a
	ret nz                                           ; $516c: $c0

	add hl, bc                                       ; $516d: $09
	db $e3                                           ; $516e: $e3
	nop                                              ; $516f: $00
	ld b, c                                          ; $5170: $41
	ei                                               ; $5171: $fb
	db $fd                                           ; $5172: $fd
	adc e                                            ; $5173: $8b
	nop                                              ; $5174: $00
	jr z, jr_07f_5127                                ; $5175: $28 $b0

	dec bc                                           ; $5177: $0b
	inc b                                            ; $5178: $04
	nop                                              ; $5179: $00
	add b                                            ; $517a: $80
	ld bc, $c18a                                     ; $517b: $01 $8a $c1
	ld l, e                                          ; $517e: $6b
	pop de                                           ; $517f: $d1
	jp nc, $00e4                                     ; $5180: $d2 $e4 $00

	ld [bc], a                                       ; $5183: $02
	inc c                                            ; $5184: $0c
	ld d, c                                          ; $5185: $51
	db $fc                                           ; $5186: $fc
	ret nz                                           ; $5187: $c0

	ld h, l                                          ; $5188: $65
	ret c                                            ; $5189: $d8

	jr z, jr_07f_5198                                ; $518a: $28 $0c

	ret nz                                           ; $518c: $c0

	ld bc, $04a0                                     ; $518d: $01 $a0 $04
	inc b                                            ; $5190: $04
	cp h                                             ; $5191: $bc
	ret nz                                           ; $5192: $c0

	ld bc, $01a0                                     ; $5193: $01 $a0 $01
	inc b                                            ; $5196: $04
	ret nz                                           ; $5197: $c0

jr_07f_5198:
	jr c, jr_07f_519e                                ; $5198: $38 $04

	rst JumpTable                                          ; $519a: $c7
	add hl, bc                                       ; $519b: $09
	dec l                                            ; $519c: $2d
	pop bc                                           ; $519d: $c1

jr_07f_519e:
	ld e, c                                          ; $519e: $59
	db $e3                                           ; $519f: $e3
	nop                                              ; $51a0: $00
	sub c                                            ; $51a1: $91
	ret nz                                           ; $51a2: $c0

	add hl, bc                                       ; $51a3: $09
	db $e3                                           ; $51a4: $e3
	nop                                              ; $51a5: $00
	inc [hl]                                         ; $51a6: $34
	and b                                            ; $51a7: $a0
	add b                                            ; $51a8: $80
	and b                                            ; $51a9: $a0
	inc d                                            ; $51aa: $14
	nop                                              ; $51ab: $00
	ld b, $c0                                        ; $51ac: $06 $c0
	ld bc, $04a0                                     ; $51ae: $01 $a0 $04
	inc b                                            ; $51b1: $04
	ret                                              ; $51b2: $c9


	rst $38                                          ; $51b3: $ff
	inc c                                            ; $51b4: $0c
	ret nz                                           ; $51b5: $c0

	ld bc, $04a0                                     ; $51b6: $01 $a0 $04
	inc b                                            ; $51b9: $04
	jp c, $01c0                                      ; $51ba: $da $c0 $01

	and b                                            ; $51bd: $a0
	ld bc, $e104                                     ; $51be: $01 $04 $e1
	ret nz                                           ; $51c1: $c0

	ld d, [hl]                                       ; $51c2: $56
	jp nc, $d6dc                                     ; $51c3: $d2 $dc $d6

	push hl                                          ; $51c6: $e5
	dec de                                           ; $51c7: $1b
	nop                                              ; $51c8: $00
	nop                                              ; $51c9: $00
	inc b                                            ; $51ca: $04
	db $eb                                           ; $51cb: $eb
	add hl, bc                                       ; $51cc: $09
	inc bc                                           ; $51cd: $03
	ldh [rP1], a                                     ; $51ce: $e0 $00
	ld [$09d1], sp                                   ; $51d0: $08 $d1 $09
	inc bc                                           ; $51d3: $03
	ldh [rP1], a                                     ; $51d4: $e0 $00
	ld [bc], a                                       ; $51d6: $02
	ld b, h                                          ; $51d7: $44
	pop bc                                           ; $51d8: $c1
	ld e, c                                          ; $51d9: $59
	db $e3                                           ; $51da: $e3
	nop                                              ; $51db: $00
	adc c                                            ; $51dc: $89
	db $fd                                           ; $51dd: $fd
	add hl, sp                                       ; $51de: $39
	adc e                                            ; $51df: $8b
	and b                                            ; $51e0: $a0
	inc bc                                           ; $51e1: $03
	ld [bc], a                                       ; $51e2: $02
	or b                                             ; $51e3: $b0
	ld a, h                                          ; $51e4: $7c
	dec b                                            ; $51e5: $05
	ret nz                                           ; $51e6: $c0

	ld d, [hl]                                       ; $51e7: $56
	jp nc, $d1dc                                     ; $51e8: $d2 $dc $d1

	ld [bc], a                                       ; $51eb: $02
	or b                                             ; $51ec: $b0
	ld a, [hl]                                       ; $51ed: $7e
	dec b                                            ; $51ee: $05
	ret nz                                           ; $51ef: $c0

	ld d, [hl]                                       ; $51f0: $56
	jp nc, $d2dc                                     ; $51f1: $d2 $dc $d2

	ld [bc], a                                       ; $51f4: $02
	or b                                             ; $51f5: $b0
	ld a, a                                          ; $51f6: $7f
	dec b                                            ; $51f7: $05
	ret nz                                           ; $51f8: $c0

	ld d, [hl]                                       ; $51f9: $56
	jp nc, $d3dc                                     ; $51fa: $d2 $dc $d3

	ld [bc], a                                       ; $51fd: $02
	or b                                             ; $51fe: $b0
	ld a, e                                          ; $51ff: $7b
	dec b                                            ; $5200: $05
	ret nz                                           ; $5201: $c0

	ld d, [hl]                                       ; $5202: $56
	jp nc, $d4dc                                     ; $5203: $d2 $dc $d4

	ld [bc], a                                       ; $5206: $02
	or b                                             ; $5207: $b0
	ld a, l                                          ; $5208: $7d
	dec b                                            ; $5209: $05
	ret nz                                           ; $520a: $c0

	ld d, [hl]                                       ; $520b: $56
	jp nc, $d5dc                                     ; $520c: $d2 $dc $d5

	ld [bc], a                                       ; $520f: $02
	or b                                             ; $5210: $b0
	ld a, d                                          ; $5211: $7a
	dec b                                            ; $5212: $05
	ret nz                                           ; $5213: $c0

	ld d, [hl]                                       ; $5214: $56
	jp nc, $d7dc                                     ; $5215: $d2 $dc $d7

	push hl                                          ; $5218: $e5
	dec de                                           ; $5219: $1b
	nop                                              ; $521a: $00
	nop                                              ; $521b: $00
	add hl, bc                                       ; $521c: $09
	dec l                                            ; $521d: $2d
	ret nz                                           ; $521e: $c0

	ld bc, $04a0                                     ; $521f: $01 $a0 $04
	ld bc, $c08a                                     ; $5222: $01 $8a $c0
	ld bc, $01a0                                     ; $5225: $01 $a0 $01
	inc b                                            ; $5228: $04
	db $ed                                           ; $5229: $ed
	add c                                            ; $522a: $81
	ret nz                                           ; $522b: $c0

	ld h, l                                          ; $522c: $65
	ld b, $d4                                        ; $522d: $06 $d4
	push de                                          ; $522f: $d5
	rst SubAFromHL                                          ; $5230: $d7
	ret c                                            ; $5231: $d8

	reti                                             ; $5232: $d9


	jp c, $d008                                      ; $5233: $da $08 $d0

	add e                                            ; $5236: $83
	ld bc, $d0de                                     ; $5237: $01 $de $d0
	db $e4                                           ; $523a: $e4
	nop                                              ; $523b: $00
	db $10                                           ; $523c: $10
	inc b                                            ; $523d: $04
	pop de                                           ; $523e: $d1
	db $d3                                           ; $523f: $d3
	sub $db                                          ; $5240: $d6 $db
	ld [$83d0], sp                                   ; $5242: $08 $d0 $83
	ld bc, $d1de                                     ; $5245: $01 $de $d1
	db $e4                                           ; $5248: $e4
	ld bc, $0903                                     ; $5249: $01 $03 $09
	ld e, $c1                                        ; $524c: $1e $c1
	inc a                                            ; $524e: $3c
	pop bc                                           ; $524f: $c1
	ld e, c                                          ; $5250: $59
	db $e3                                           ; $5251: $e3
	nop                                              ; $5252: $00
	cp b                                             ; $5253: $b8
	ret nz                                           ; $5254: $c0

	add hl, bc                                       ; $5255: $09
	db $e3                                           ; $5256: $e3
	nop                                              ; $5257: $00
	dec de                                           ; $5258: $1b
	and b                                            ; $5259: $a0
	add b                                            ; $525a: $80
	and b                                            ; $525b: $a0
	dec d                                            ; $525c: $15
	nop                                              ; $525d: $00
	inc bc                                           ; $525e: $03
	db $e4                                           ; $525f: $e4
	nop                                              ; $5260: $00
	dec bc                                           ; $5261: $0b
	rst $38                                          ; $5262: $ff
	rlca                                             ; $5263: $07
	ld b, b                                          ; $5264: $40
	add b                                            ; $5265: $80
	and b                                            ; $5266: $a0
	dec d                                            ; $5267: $15
	db $e4                                           ; $5268: $e4
	nop                                              ; $5269: $00
	sbc e                                            ; $526a: $9b
	jr z, jr_07f_5273                                ; $526b: $28 $06

	ret nz                                           ; $526d: $c0

	ld bc, $04a0                                     ; $526e: $01 $a0 $04
	inc b                                            ; $5271: $04
	ldh a, [c]                                       ; $5272: $f2

jr_07f_5273:
	sub b                                            ; $5273: $90
	inc b                                            ; $5274: $04
	ld a, [$2c09]                                    ; $5275: $fa $09 $2c
	pop hl                                           ; $5278: $e1
	ld [bc], a                                       ; $5279: $02
	inc bc                                           ; $527a: $03
	rla                                              ; $527b: $17
	add d                                            ; $527c: $82
	ret nz                                           ; $527d: $c0

	dec de                                           ; $527e: $1b
	jp nc, $d002                                     ; $527f: $d2 $02 $d0

	pop de                                           ; $5282: $d1
	ld b, $c0                                        ; $5283: $06 $c0
	ld bc, $04a0                                     ; $5285: $01 $a0 $04
	inc b                                            ; $5288: $04
	rst $38                                          ; $5289: $ff
	ld [bc], a                                       ; $528a: $02
	jp nc, $06d3                                     ; $528b: $d2 $d3 $06

	ret nz                                           ; $528e: $c0

	ld bc, $04a0                                     ; $528f: $01 $a0 $04
	dec b                                            ; $5292: $05
	add hl, bc                                       ; $5293: $09
	ld bc, $06d4                                     ; $5294: $01 $d4 $06
	ret nz                                           ; $5297: $c0

	ld bc, $04a0                                     ; $5298: $01 $a0 $04
	dec b                                            ; $529b: $05
	inc de                                           ; $529c: $13
	pop hl                                           ; $529d: $e1
	ld [bc], a                                       ; $529e: $02
	inc bc                                           ; $529f: $03
	sbc c                                            ; $52a0: $99
	db $e4                                           ; $52a1: $e4
	ld bc, $05ab                                     ; $52a2: $01 $ab $05
	ld d, $09                                        ; $52a5: $16 $09
	inc l                                            ; $52a7: $2c
	pop hl                                           ; $52a8: $e1
	ld [bc], a                                       ; $52a9: $02
	inc bc                                           ; $52aa: $03
	rra                                              ; $52ab: $1f
	add d                                            ; $52ac: $82
	ret nz                                           ; $52ad: $c0

	dec de                                           ; $52ae: $1b
	jp nc, $d002                                     ; $52af: $d2 $02 $d0

	pop de                                           ; $52b2: $d1
	ld b, $c0                                        ; $52b3: $06 $c0
	ld bc, $04a0                                     ; $52b5: $01 $a0 $04
	dec b                                            ; $52b8: $05
	dec e                                            ; $52b9: $1d
	ld [bc], a                                       ; $52ba: $02
	jp nc, $06d3                                     ; $52bb: $d2 $d3 $06

	ret nz                                           ; $52be: $c0

	ld bc, $04a0                                     ; $52bf: $01 $a0 $04
	dec b                                            ; $52c2: $05
	ld a, [hl+]                                      ; $52c3: $2a
	ld bc, $06d4                                     ; $52c4: $01 $d4 $06
	ret nz                                           ; $52c7: $c0

	ld bc, $04a0                                     ; $52c8: $01 $a0 $04
	dec b                                            ; $52cb: $05
	inc [hl]                                         ; $52cc: $34
	pop hl                                           ; $52cd: $e1
	ld [bc], a                                       ; $52ce: $02
	inc bc                                           ; $52cf: $03
	xor e                                            ; $52d0: $ab
	db $e4                                           ; $52d1: $e4
	ld bc, $057b                                     ; $52d2: $01 $7b $05
	ld a, [hl-]                                      ; $52d5: $3a
	add hl, bc                                       ; $52d6: $09
	inc l                                            ; $52d7: $2c
	pop hl                                           ; $52d8: $e1
	ld [bc], a                                       ; $52d9: $02
	inc bc                                           ; $52da: $03
	dec de                                           ; $52db: $1b
	add d                                            ; $52dc: $82
	ret nz                                           ; $52dd: $c0

	dec de                                           ; $52de: $1b
	jp nc, $d002                                     ; $52df: $d2 $02 $d0

	pop de                                           ; $52e2: $d1
	ld b, $c0                                        ; $52e3: $06 $c0
	ld bc, $04a0                                     ; $52e5: $01 $a0 $04
	dec b                                            ; $52e8: $05
	ld b, h                                          ; $52e9: $44
	ld [bc], a                                       ; $52ea: $02
	jp nc, $06d3                                     ; $52eb: $d2 $d3 $06

	ret nz                                           ; $52ee: $c0

	ld bc, $04a0                                     ; $52ef: $01 $a0 $04
	dec b                                            ; $52f2: $05
	ld d, b                                          ; $52f3: $50
	ld bc, $06d4                                     ; $52f4: $01 $d4 $06
	ret nz                                           ; $52f7: $c0

	ld bc, $04a0                                     ; $52f8: $01 $a0 $04
	dec b                                            ; $52fb: $05
	ld e, l                                          ; $52fc: $5d
	pop hl                                           ; $52fd: $e1
	ld [bc], a                                       ; $52fe: $02
	inc bc                                           ; $52ff: $03
	and d                                            ; $5300: $a2
	db $e4                                           ; $5301: $e4
	ld bc, $284b                                     ; $5302: $01 $4b $28
	ld b, $c0                                        ; $5305: $06 $c0
	ld bc, $04a0                                     ; $5307: $01 $a0 $04
	dec b                                            ; $530a: $05
	ld l, b                                          ; $530b: $68
	ccf                                              ; $530c: $3f
	dec b                                            ; $530d: $05
	ld l, a                                          ; $530e: $6f
	add hl, bc                                       ; $530f: $09
	ld de, $02e1                                     ; $5310: $11 $e1 $02
	inc bc                                           ; $5313: $03
	rla                                              ; $5314: $17
	ret nz                                           ; $5315: $c0

	ld bc, $04a0                                     ; $5316: $01 $a0 $04
	dec b                                            ; $5319: $05
	ld [hl], c                                       ; $531a: $71
	pop hl                                           ; $531b: $e1
	ld [bc], a                                       ; $531c: $02
	inc bc                                           ; $531d: $03
	sbc c                                            ; $531e: $99
	db $e4                                           ; $531f: $e4
	ld bc, $052d                                     ; $5320: $01 $2d $05
	ld [hl], l                                       ; $5323: $75
	add hl, bc                                       ; $5324: $09
	ld de, $02e1                                     ; $5325: $11 $e1 $02
	inc bc                                           ; $5328: $03
	rra                                              ; $5329: $1f
	ret nz                                           ; $532a: $c0

	ld bc, $04a0                                     ; $532b: $01 $a0 $04
	dec b                                            ; $532e: $05
	ld [hl], a                                       ; $532f: $77
	pop hl                                           ; $5330: $e1
	ld [bc], a                                       ; $5331: $02
	inc bc                                           ; $5332: $03
	xor e                                            ; $5333: $ab
	db $e4                                           ; $5334: $e4
	ld bc, $0518                                     ; $5335: $01 $18 $05
	ld a, [hl]                                       ; $5338: $7e
	add hl, bc                                       ; $5339: $09
	ld de, $02e1                                     ; $533a: $11 $e1 $02
	inc bc                                           ; $533d: $03
	dec de                                           ; $533e: $1b
	ret nz                                           ; $533f: $c0

	ld bc, $04a0                                     ; $5340: $01 $a0 $04
	dec b                                            ; $5343: $05
	add b                                            ; $5344: $80
	pop hl                                           ; $5345: $e1
	ld [bc], a                                       ; $5346: $02
	inc bc                                           ; $5347: $03
	and d                                            ; $5348: $a2
	db $e4                                           ; $5349: $e4
	ld bc, $0903                                     ; $534a: $01 $03 $09
	ld e, $c1                                        ; $534d: $1e $c1
	inc a                                            ; $534f: $3c
	pop bc                                           ; $5350: $c1
	ld e, c                                          ; $5351: $59
	db $e3                                           ; $5352: $e3
	nop                                              ; $5353: $00
	cp c                                             ; $5354: $b9
	ret nz                                           ; $5355: $c0

	add hl, bc                                       ; $5356: $09
	db $e3                                           ; $5357: $e3
	nop                                              ; $5358: $00
	scf                                              ; $5359: $37
	and b                                            ; $535a: $a0
	add b                                            ; $535b: $80
	and b                                            ; $535c: $a0
	ld d, $00                                        ; $535d: $16 $00
	inc bc                                           ; $535f: $03
	db $e4                                           ; $5360: $e4
	nop                                              ; $5361: $00
	dec bc                                           ; $5362: $0b
	rst $38                                          ; $5363: $ff
	rlca                                             ; $5364: $07
	ld b, b                                          ; $5365: $40
	add b                                            ; $5366: $80
	and b                                            ; $5367: $a0
	ld d, $e4                                        ; $5368: $16 $e4
	nop                                              ; $536a: $00
	sbc e                                            ; $536b: $9b
	jr z, jr_07f_5374                                ; $536c: $28 $06

	ret nz                                           ; $536e: $c0

	ld bc, $04a0                                     ; $536f: $01 $a0 $04
	dec b                                            ; $5372: $05
	adc l                                            ; $5373: $8d

jr_07f_5374:
	sub b                                            ; $5374: $90
	dec b                                            ; $5375: $05
	sbc c                                            ; $5376: $99
	add hl, bc                                       ; $5377: $09
	inc l                                            ; $5378: $2c
	pop hl                                           ; $5379: $e1
	ld [bc], a                                       ; $537a: $02
	inc bc                                           ; $537b: $03
	rla                                              ; $537c: $17
	add d                                            ; $537d: $82
	ret nz                                           ; $537e: $c0

	dec de                                           ; $537f: $1b
	jp nc, $d002                                     ; $5380: $d2 $02 $d0

	pop de                                           ; $5383: $d1
	ld b, $c0                                        ; $5384: $06 $c0
	ld bc, $04a0                                     ; $5386: $01 $a0 $04
	dec b                                            ; $5389: $05
	sbc [hl]                                         ; $538a: $9e
	ld [bc], a                                       ; $538b: $02
	jp nc, $06d3                                     ; $538c: $d2 $d3 $06

	ret nz                                           ; $538f: $c0

	ld bc, $04a0                                     ; $5390: $01 $a0 $04
	dec b                                            ; $5393: $05
	xor c                                            ; $5394: $a9
	ld bc, $06d4                                     ; $5395: $01 $d4 $06
	ret nz                                           ; $5398: $c0

	ld bc, $04a0                                     ; $5399: $01 $a0 $04
	dec b                                            ; $539c: $05
	or h                                             ; $539d: $b4
	pop hl                                           ; $539e: $e1
	ld [bc], a                                       ; $539f: $02
	inc bc                                           ; $53a0: $03
	sbc c                                            ; $53a1: $99
	db $e4                                           ; $53a2: $e4
	nop                                              ; $53a3: $00
	xor d                                            ; $53a4: $aa
	dec b                                            ; $53a5: $05
	cp [hl]                                          ; $53a6: $be
	add hl, bc                                       ; $53a7: $09
	inc l                                            ; $53a8: $2c
	pop hl                                           ; $53a9: $e1
	ld [bc], a                                       ; $53aa: $02
	inc bc                                           ; $53ab: $03
	rra                                              ; $53ac: $1f
	add d                                            ; $53ad: $82
	ret nz                                           ; $53ae: $c0

	dec de                                           ; $53af: $1b
	jp nc, $d002                                     ; $53b0: $d2 $02 $d0

	pop de                                           ; $53b3: $d1
	ld b, $c0                                        ; $53b4: $06 $c0
	ld bc, $04a0                                     ; $53b6: $01 $a0 $04
	dec b                                            ; $53b9: $05
	dec e                                            ; $53ba: $1d
	ld [bc], a                                       ; $53bb: $02
	jp nc, $06d3                                     ; $53bc: $d2 $d3 $06

	ret nz                                           ; $53bf: $c0

	ld bc, $04a0                                     ; $53c0: $01 $a0 $04
	dec b                                            ; $53c3: $05
	ld a, [hl+]                                      ; $53c4: $2a
	ld bc, $06d4                                     ; $53c5: $01 $d4 $06
	ret nz                                           ; $53c8: $c0

	ld bc, $04a0                                     ; $53c9: $01 $a0 $04
	dec b                                            ; $53cc: $05
	inc [hl]                                         ; $53cd: $34
	pop hl                                           ; $53ce: $e1
	ld [bc], a                                       ; $53cf: $02
	inc bc                                           ; $53d0: $03
	xor e                                            ; $53d1: $ab
	db $e4                                           ; $53d2: $e4
	nop                                              ; $53d3: $00
	ld a, d                                          ; $53d4: $7a
	dec b                                            ; $53d5: $05
	call nz, $2c09                                   ; $53d6: $c4 $09 $2c
	pop hl                                           ; $53d9: $e1
	ld [bc], a                                       ; $53da: $02
	inc bc                                           ; $53db: $03
	dec de                                           ; $53dc: $1b
	add d                                            ; $53dd: $82
	ret nz                                           ; $53de: $c0

	dec de                                           ; $53df: $1b
	jp nc, $d002                                     ; $53e0: $d2 $02 $d0

	pop de                                           ; $53e3: $d1
	ld b, $c0                                        ; $53e4: $06 $c0
	ld bc, $04a0                                     ; $53e6: $01 $a0 $04
	dec b                                            ; $53e9: $05
	rlc d                                            ; $53ea: $cb $02
	jp nc, $06d3                                     ; $53ec: $d2 $d3 $06

	ret nz                                           ; $53ef: $c0

	ld bc, $04a0                                     ; $53f0: $01 $a0 $04
	dec b                                            ; $53f3: $05
	db $d3                                           ; $53f4: $d3
	ld bc, $06d4                                     ; $53f5: $01 $d4 $06
	ret nz                                           ; $53f8: $c0

	ld bc, $04a0                                     ; $53f9: $01 $a0 $04
	dec b                                            ; $53fc: $05
	call c, $02e1                                    ; $53fd: $dc $e1 $02
	inc bc                                           ; $5400: $03
	and d                                            ; $5401: $a2
	db $e4                                           ; $5402: $e4
	nop                                              ; $5403: $00
	ld c, d                                          ; $5404: $4a
	jr z, jr_07f_540d                                ; $5405: $28 $06

	ret nz                                           ; $5407: $c0

	ld bc, $04a0                                     ; $5408: $01 $a0 $04
	dec b                                            ; $540b: $05
	db $e3                                           ; $540c: $e3

jr_07f_540d:
	ccf                                              ; $540d: $3f
	dec b                                            ; $540e: $05
	db $eb                                           ; $540f: $eb
	add hl, bc                                       ; $5410: $09
	ld de, $02e1                                     ; $5411: $11 $e1 $02
	inc bc                                           ; $5414: $03
	inc de                                           ; $5415: $13
	ret nz                                           ; $5416: $c0

	ld bc, $04a0                                     ; $5417: $01 $a0 $04
	dec b                                            ; $541a: $05
	rst AddAOntoHL                                          ; $541b: $ef
	pop hl                                           ; $541c: $e1
	ld [bc], a                                       ; $541d: $02
	inc bc                                           ; $541e: $03
	sub b                                            ; $541f: $90
	db $e4                                           ; $5420: $e4
	nop                                              ; $5421: $00
	inc l                                            ; $5422: $2c
	dec b                                            ; $5423: $05
	ld hl, sp+$09                                    ; $5424: $f8 $09
	ld de, $02e1                                     ; $5426: $11 $e1 $02
	inc bc                                           ; $5429: $03
	rra                                              ; $542a: $1f
	ret nz                                           ; $542b: $c0

	ld bc, $04a0                                     ; $542c: $01 $a0 $04
	dec b                                            ; $542f: $05
	ei                                               ; $5430: $fb
	pop hl                                           ; $5431: $e1
	ld [bc], a                                       ; $5432: $02
	inc bc                                           ; $5433: $03
	xor e                                            ; $5434: $ab
	db $e4                                           ; $5435: $e4
	nop                                              ; $5436: $00
	rla                                              ; $5437: $17
	ld b, $03                                        ; $5438: $06 $03
	add hl, bc                                       ; $543a: $09
	ld de, $02e1                                     ; $543b: $11 $e1 $02
	inc bc                                           ; $543e: $03
	dec de                                           ; $543f: $1b
	ret nz                                           ; $5440: $c0

	ld bc, $04a0                                     ; $5441: $01 $a0 $04
	ld b, $09                                        ; $5444: $06 $09
	pop hl                                           ; $5446: $e1
	ld [bc], a                                       ; $5447: $02
	inc bc                                           ; $5448: $03
	and d                                            ; $5449: $a2
	db $e4                                           ; $544a: $e4
	nop                                              ; $544b: $00
	ld [bc], a                                       ; $544c: $02
	add hl, bc                                       ; $544d: $09
	ld a, [de]                                       ; $544e: $1a
	pop hl                                           ; $544f: $e1
	ld [bc], a                                       ; $5450: $02
	ld [$605c], sp                                   ; $5451: $08 $5c $60
	db $fc                                           ; $5454: $fc
	add e                                            ; $5455: $83
	ld bc, $d0de                                     ; $5456: $01 $de $d0
	dec b                                            ; $5459: $05
	ret nz                                           ; $545a: $c0

	ld d, [hl]                                       ; $545b: $56
	ret c                                            ; $545c: $d8

	db $dd                                           ; $545d: $dd
	ret nc                                           ; $545e: $d0

	dec b                                            ; $545f: $05
	ret nz                                           ; $5460: $c0

	ld d, [hl]                                       ; $5461: $56
	ret c                                            ; $5462: $d8

	db $dd                                           ; $5463: $dd
	pop de                                           ; $5464: $d1
	push hl                                          ; $5465: $e5
	dec de                                           ; $5466: $1b
	nop                                              ; $5467: $00
	nop                                              ; $5468: $00
	add hl, bc                                       ; $5469: $09
	rrca                                             ; $546a: $0f
	ret nz                                           ; $546b: $c0

	ld bc, $04a0                                     ; $546c: $01 $a0 $04
	ld b, $12                                        ; $546f: $06 $12
	ret nz                                           ; $5471: $c0

	ld bc, $01a0                                     ; $5472: $01 $a0 $01
	ld b, $15                                        ; $5475: $06 $15
	db $e4                                           ; $5477: $e4
	nop                                              ; $5478: $00
	ld [bc], a                                       ; $5479: $02
	add hl, bc                                       ; $547a: $09
	adc c                                            ; $547b: $89
	pop bc                                           ; $547c: $c1
	ld e, c                                          ; $547d: $59
	db $e3                                           ; $547e: $e3
	nop                                              ; $547f: $00
	sub h                                            ; $5480: $94
	ret nz                                           ; $5481: $c0

	ld bc, $01a0                                     ; $5482: $01 $a0 $01
	ld b, $1c                                        ; $5485: $06 $1c
	db $fd                                           ; $5487: $fd
	ld a, h                                          ; $5488: $7c
	adc e                                            ; $5489: $8b
	ld bc, $02ea                                     ; $548a: $01 $ea $02
	or b                                             ; $548d: $b0
	inc l                                            ; $548e: $2c
	rlca                                             ; $548f: $07
	pop hl                                           ; $5490: $e1
	ld [bc], a                                       ; $5491: $02
	dec b                                            ; $5492: $05
	ld c, a                                          ; $5493: $4f
	db $e4                                           ; $5494: $e4
	nop                                              ; $5495: $00
	ld [hl], b                                       ; $5496: $70
	ld [bc], a                                       ; $5497: $02
	or b                                             ; $5498: $b0
	dec l                                            ; $5499: $2d
	rlca                                             ; $549a: $07
	pop hl                                           ; $549b: $e1
	ld [bc], a                                       ; $549c: $02
	dec b                                            ; $549d: $05
	ld h, [hl]                                       ; $549e: $66
	db $e4                                           ; $549f: $e4
	nop                                              ; $54a0: $00
	ld hl, sp+$02                                    ; $54a1: $f8 $02
	or b                                             ; $54a3: $b0
	ld l, $07                                        ; $54a4: $2e $07
	pop hl                                           ; $54a6: $e1
	ld [bc], a                                       ; $54a7: $02
	dec b                                            ; $54a8: $05
	ld a, l                                          ; $54a9: $7d
	db $e4                                           ; $54aa: $e4
	ld bc, $0280                                     ; $54ab: $01 $80 $02
	or b                                             ; $54ae: $b0
	cpl                                              ; $54af: $2f
	rlca                                             ; $54b0: $07
	pop hl                                           ; $54b1: $e1
	ld [bc], a                                       ; $54b2: $02
	dec b                                            ; $54b3: $05
	sub h                                            ; $54b4: $94
	db $e4                                           ; $54b5: $e4
	ld bc, $0275                                     ; $54b6: $01 $75 $02
	or b                                             ; $54b9: $b0
	jr nc, jr_07f_54c3                               ; $54ba: $30 $07

	pop hl                                           ; $54bc: $e1
	ld [bc], a                                       ; $54bd: $02
	dec b                                            ; $54be: $05
	xor e                                            ; $54bf: $ab
	db $e4                                           ; $54c0: $e4
	nop                                              ; $54c1: $00
	rst SubAFromHL                                          ; $54c2: $d7

jr_07f_54c3:
	ld [bc], a                                       ; $54c3: $02
	or b                                             ; $54c4: $b0
	ld sp, $e107                                     ; $54c5: $31 $07 $e1
	ld [bc], a                                       ; $54c8: $02
	dec b                                            ; $54c9: $05
	jp nz, $01e4                                     ; $54ca: $c2 $e4 $01

	ld e, a                                          ; $54cd: $5f
	ld [bc], a                                       ; $54ce: $02
	or b                                             ; $54cf: $b0
	ld [hl-], a                                      ; $54d0: $32
	rlca                                             ; $54d1: $07
	pop hl                                           ; $54d2: $e1
	ld [bc], a                                       ; $54d3: $02
	dec b                                            ; $54d4: $05
	reti                                             ; $54d5: $d9


	db $e4                                           ; $54d6: $e4
	nop                                              ; $54d7: $00
	pop bc                                           ; $54d8: $c1
	ld [bc], a                                       ; $54d9: $02
	or b                                             ; $54da: $b0
	inc sp                                           ; $54db: $33
	rlca                                             ; $54dc: $07
	pop hl                                           ; $54dd: $e1
	ld [bc], a                                       ; $54de: $02
	dec b                                            ; $54df: $05
	ldh a, [$e4]                                     ; $54e0: $f0 $e4
	ld bc, $0249                                     ; $54e2: $01 $49 $02
	or b                                             ; $54e5: $b0
	inc [hl]                                         ; $54e6: $34
	rlca                                             ; $54e7: $07
	pop hl                                           ; $54e8: $e1
	ld [bc], a                                       ; $54e9: $02
	ld b, $07                                        ; $54ea: $06 $07
	db $e4                                           ; $54ec: $e4
	ld bc, $023e                                     ; $54ed: $01 $3e $02
	or b                                             ; $54f0: $b0
	dec [hl]                                         ; $54f1: $35
	rlca                                             ; $54f2: $07
	pop hl                                           ; $54f3: $e1
	ld [bc], a                                       ; $54f4: $02
	ld b, $1e                                        ; $54f5: $06 $1e
	db $e4                                           ; $54f7: $e4
	nop                                              ; $54f8: $00
	and b                                            ; $54f9: $a0
	ld [bc], a                                       ; $54fa: $02
	or b                                             ; $54fb: $b0
	ld [hl], $07                                     ; $54fc: $36 $07
	pop hl                                           ; $54fe: $e1
	ld [bc], a                                       ; $54ff: $02
	ld b, $35                                        ; $5500: $06 $35
	db $e4                                           ; $5502: $e4
	nop                                              ; $5503: $00
	sub l                                            ; $5504: $95
	jr z, jr_07f_5507                                ; $5505: $28 $00

jr_07f_5507:
	sub b                                            ; $5507: $90
	ld b, $25                                        ; $5508: $06 $25
	add hl, bc                                       ; $550a: $09
	inc l                                            ; $550b: $2c
	pop hl                                           ; $550c: $e1
	ld [bc], a                                       ; $550d: $02
	inc bc                                           ; $550e: $03
	inc de                                           ; $550f: $13
	add d                                            ; $5510: $82
	ret nz                                           ; $5511: $c0

	dec de                                           ; $5512: $1b
	jp nc, $d002                                     ; $5513: $d2 $02 $d0

	pop de                                           ; $5516: $d1
	ld b, $c0                                        ; $5517: $06 $c0
	ld bc, $04a0                                     ; $5519: $01 $a0 $04
	ld b, $27                                        ; $551c: $06 $27
	ld [bc], a                                       ; $551e: $02
	jp nc, $06d3                                     ; $551f: $d2 $d3 $06

	ret nz                                           ; $5522: $c0

	ld bc, $04a0                                     ; $5523: $01 $a0 $04
	ld b, $2c                                        ; $5526: $06 $2c
	ld bc, $06d4                                     ; $5528: $01 $d4 $06
	ret nz                                           ; $552b: $c0

	ld bc, $04a0                                     ; $552c: $01 $a0 $04
	ld b, $2f                                        ; $552f: $06 $2f
	pop hl                                           ; $5531: $e1
	ld [bc], a                                       ; $5532: $02
	inc bc                                           ; $5533: $03
	sub b                                            ; $5534: $90
	db $e4                                           ; $5535: $e4
	ld bc, $0688                                     ; $5536: $01 $88 $06
	inc sp                                           ; $5539: $33
	add hl, bc                                       ; $553a: $09
	inc l                                            ; $553b: $2c
	pop hl                                           ; $553c: $e1
	ld [bc], a                                       ; $553d: $02
	inc bc                                           ; $553e: $03
	dec de                                           ; $553f: $1b
	add d                                            ; $5540: $82
	ret nz                                           ; $5541: $c0

	dec de                                           ; $5542: $1b
	jp nc, $d002                                     ; $5543: $d2 $02 $d0

	pop de                                           ; $5546: $d1
	ld b, $c0                                        ; $5547: $06 $c0
	ld bc, $04a0                                     ; $5549: $01 $a0 $04
	ld b, $35                                        ; $554c: $06 $35
	ld [bc], a                                       ; $554e: $02
	jp nc, $06d3                                     ; $554f: $d2 $d3 $06

	ret nz                                           ; $5552: $c0

	ld bc, $04a0                                     ; $5553: $01 $a0 $04
	ld b, $46                                        ; $5556: $06 $46
	ld bc, $06d4                                     ; $5558: $01 $d4 $06
	ret nz                                           ; $555b: $c0

	ld bc, $04a0                                     ; $555c: $01 $a0 $04
	ld b, $54                                        ; $555f: $06 $54
	pop hl                                           ; $5561: $e1
	ld [bc], a                                       ; $5562: $02
	inc bc                                           ; $5563: $03
	and d                                            ; $5564: $a2
	db $e4                                           ; $5565: $e4
	ld bc, $0658                                     ; $5566: $01 $58 $06
	ld e, e                                          ; $5569: $5b
	add hl, bc                                       ; $556a: $09
	inc l                                            ; $556b: $2c
	pop hl                                           ; $556c: $e1
	ld [bc], a                                       ; $556d: $02
	inc bc                                           ; $556e: $03
	inc de                                           ; $556f: $13
	add d                                            ; $5570: $82
	ret nz                                           ; $5571: $c0

	dec de                                           ; $5572: $1b
	jp nc, $d002                                     ; $5573: $d2 $02 $d0

	pop de                                           ; $5576: $d1
	ld b, $c0                                        ; $5577: $06 $c0
	ld bc, $04a0                                     ; $5579: $01 $a0 $04
	ld b, $5d                                        ; $557c: $06 $5d
	ld [bc], a                                       ; $557e: $02
	jp nc, $06d3                                     ; $557f: $d2 $d3 $06

	ret nz                                           ; $5582: $c0

	ld bc, $04a0                                     ; $5583: $01 $a0 $04
	ld b, $62                                        ; $5586: $06 $62
	ld bc, $06d4                                     ; $5588: $01 $d4 $06
	ret nz                                           ; $558b: $c0

	ld bc, $04a0                                     ; $558c: $01 $a0 $04
	ld b, $68                                        ; $558f: $06 $68
	pop hl                                           ; $5591: $e1
	ld [bc], a                                       ; $5592: $02
	inc bc                                           ; $5593: $03
	sub b                                            ; $5594: $90
	db $e4                                           ; $5595: $e4
	ld bc, $2828                                     ; $5596: $01 $28 $28
	nop                                              ; $5599: $00
	sub b                                            ; $559a: $90
	ld b, $25                                        ; $559b: $06 $25
	add hl, bc                                       ; $559d: $09
	inc l                                            ; $559e: $2c
	pop hl                                           ; $559f: $e1
	ld [bc], a                                       ; $55a0: $02
	inc bc                                           ; $55a1: $03
	rra                                              ; $55a2: $1f
	add d                                            ; $55a3: $82
	ret nz                                           ; $55a4: $c0

	dec de                                           ; $55a5: $1b
	jp nc, $d002                                     ; $55a6: $d2 $02 $d0

	pop de                                           ; $55a9: $d1
	ld b, $c0                                        ; $55aa: $06 $c0
	ld bc, $04a0                                     ; $55ac: $01 $a0 $04
	ld b, $6b                                        ; $55af: $06 $6b
	ld [bc], a                                       ; $55b1: $02
	jp nc, $06d3                                     ; $55b2: $d2 $d3 $06

	ret nz                                           ; $55b5: $c0

	ld bc, $04a0                                     ; $55b6: $01 $a0 $04
	ld b, $74                                        ; $55b9: $06 $74
	ld bc, $06d4                                     ; $55bb: $01 $d4 $06
	ret nz                                           ; $55be: $c0

	ld bc, $04a0                                     ; $55bf: $01 $a0 $04
	ld b, $81                                        ; $55c2: $06 $81
	pop hl                                           ; $55c4: $e1
	ld [bc], a                                       ; $55c5: $02
	inc bc                                           ; $55c6: $03
	xor e                                            ; $55c7: $ab
	db $e4                                           ; $55c8: $e4
	nop                                              ; $55c9: $00
	push af                                          ; $55ca: $f5
	ld b, $33                                        ; $55cb: $06 $33
	add hl, bc                                       ; $55cd: $09
	inc l                                            ; $55ce: $2c
	pop hl                                           ; $55cf: $e1
	ld [bc], a                                       ; $55d0: $02
	inc bc                                           ; $55d1: $03
	rla                                              ; $55d2: $17
	add d                                            ; $55d3: $82
	ret nz                                           ; $55d4: $c0

	dec de                                           ; $55d5: $1b
	jp nc, $d002                                     ; $55d6: $d2 $02 $d0

	pop de                                           ; $55d9: $d1
	ld b, $c0                                        ; $55da: $06 $c0
	ld bc, $04a0                                     ; $55dc: $01 $a0 $04
	ld b, $8f                                        ; $55df: $06 $8f
	ld [bc], a                                       ; $55e1: $02
	jp nc, $06d3                                     ; $55e2: $d2 $d3 $06

	ret nz                                           ; $55e5: $c0

	ld bc, $04a0                                     ; $55e6: $01 $a0 $04
	ld b, $95                                        ; $55e9: $06 $95
	ld bc, $06d4                                     ; $55eb: $01 $d4 $06
	ret nz                                           ; $55ee: $c0

	ld bc, $04a0                                     ; $55ef: $01 $a0 $04
	ld b, $a0                                        ; $55f2: $06 $a0
	pop hl                                           ; $55f4: $e1
	ld [bc], a                                       ; $55f5: $02
	inc bc                                           ; $55f6: $03
	and d                                            ; $55f7: $a2
	db $e4                                           ; $55f8: $e4
	nop                                              ; $55f9: $00
	push bc                                          ; $55fa: $c5
	ld b, $5b                                        ; $55fb: $06 $5b
	add hl, bc                                       ; $55fd: $09
	inc l                                            ; $55fe: $2c
	pop hl                                           ; $55ff: $e1
	ld [bc], a                                       ; $5600: $02
	inc bc                                           ; $5601: $03
	rra                                              ; $5602: $1f
	add d                                            ; $5603: $82
	ret nz                                           ; $5604: $c0

	dec de                                           ; $5605: $1b
	jp nc, $d002                                     ; $5606: $d2 $02 $d0

	pop de                                           ; $5609: $d1
	ld b, $c0                                        ; $560a: $06 $c0
	ld bc, $04a0                                     ; $560c: $01 $a0 $04
	ld b, $6b                                        ; $560f: $06 $6b
	ld [bc], a                                       ; $5611: $02
	jp nc, $06d3                                     ; $5612: $d2 $d3 $06

	ret nz                                           ; $5615: $c0

	ld bc, $04a0                                     ; $5616: $01 $a0 $04
	ld b, $74                                        ; $5619: $06 $74
	ld bc, $06d4                                     ; $561b: $01 $d4 $06
	ret nz                                           ; $561e: $c0

	ld bc, $04a0                                     ; $561f: $01 $a0 $04
	ld b, $81                                        ; $5622: $06 $81
	pop hl                                           ; $5624: $e1
	ld [bc], a                                       ; $5625: $02
	inc bc                                           ; $5626: $03
	xor e                                            ; $5627: $ab
	db $e4                                           ; $5628: $e4
	nop                                              ; $5629: $00
	sub l                                            ; $562a: $95
	jr z, jr_07f_562d                                ; $562b: $28 $00

jr_07f_562d:
	sub b                                            ; $562d: $90
	ld b, $25                                        ; $562e: $06 $25
	add hl, bc                                       ; $5630: $09
	inc l                                            ; $5631: $2c
	pop hl                                           ; $5632: $e1
	ld [bc], a                                       ; $5633: $02
	inc bc                                           ; $5634: $03
	rla                                              ; $5635: $17
	add d                                            ; $5636: $82
	ret nz                                           ; $5637: $c0

	dec de                                           ; $5638: $1b
	jp nc, $d002                                     ; $5639: $d2 $02 $d0

	pop de                                           ; $563c: $d1
	ld b, $c0                                        ; $563d: $06 $c0
	ld bc, $04a0                                     ; $563f: $01 $a0 $04
	ld b, $a8                                        ; $5642: $06 $a8
	ld [bc], a                                       ; $5644: $02
	jp nc, $06d3                                     ; $5645: $d2 $d3 $06

	ret nz                                           ; $5648: $c0

	ld bc, $04a0                                     ; $5649: $01 $a0 $04
	ld b, $ac                                        ; $564c: $06 $ac
	ld bc, $06d4                                     ; $564e: $01 $d4 $06
	ret nz                                           ; $5651: $c0

	ld bc, $04a0                                     ; $5652: $01 $a0 $04
	ld b, $b5                                        ; $5655: $06 $b5
	pop hl                                           ; $5657: $e1
	ld [bc], a                                       ; $5658: $02
	inc bc                                           ; $5659: $03
	sbc c                                            ; $565a: $99
	db $e4                                           ; $565b: $e4
	nop                                              ; $565c: $00
	ld h, d                                          ; $565d: $62
	ld b, $33                                        ; $565e: $06 $33
	add hl, bc                                       ; $5660: $09
	inc l                                            ; $5661: $2c
	pop hl                                           ; $5662: $e1
	ld [bc], a                                       ; $5663: $02
	inc bc                                           ; $5664: $03
	rla                                              ; $5665: $17
	add d                                            ; $5666: $82
	ret nz                                           ; $5667: $c0

	dec de                                           ; $5668: $1b
	jp nc, $d002                                     ; $5669: $d2 $02 $d0

	pop de                                           ; $566c: $d1
	ld b, $c0                                        ; $566d: $06 $c0
	ld bc, $04a0                                     ; $566f: $01 $a0 $04
	ld b, $bf                                        ; $5672: $06 $bf
	ld [bc], a                                       ; $5674: $02
	jp nc, $06d3                                     ; $5675: $d2 $d3 $06

	ret nz                                           ; $5678: $c0

	ld bc, $04a0                                     ; $5679: $01 $a0 $04
	ld b, $c5                                        ; $567c: $06 $c5
	ld bc, $06d4                                     ; $567e: $01 $d4 $06
	ret nz                                           ; $5681: $c0

	ld bc, $04a0                                     ; $5682: $01 $a0 $04
	ld b, $d2                                        ; $5685: $06 $d2
	pop hl                                           ; $5687: $e1
	ld [bc], a                                       ; $5688: $02
	inc bc                                           ; $5689: $03
	sbc c                                            ; $568a: $99
	db $e4                                           ; $568b: $e4
	nop                                              ; $568c: $00
	ld [hl-], a                                      ; $568d: $32
	ld b, $5b                                        ; $568e: $06 $5b
	add hl, bc                                       ; $5690: $09
	inc l                                            ; $5691: $2c
	pop hl                                           ; $5692: $e1
	ld [bc], a                                       ; $5693: $02
	inc bc                                           ; $5694: $03
	inc de                                           ; $5695: $13
	add d                                            ; $5696: $82
	ret nz                                           ; $5697: $c0

	dec de                                           ; $5698: $1b
	jp nc, $d002                                     ; $5699: $d2 $02 $d0

	pop de                                           ; $569c: $d1
	ld b, $c0                                        ; $569d: $06 $c0
	ld bc, $04a0                                     ; $569f: $01 $a0 $04
	ld b, $d8                                        ; $56a2: $06 $d8
	ld [bc], a                                       ; $56a4: $02
	jp nc, $06d3                                     ; $56a5: $d2 $d3 $06

	ret nz                                           ; $56a8: $c0

	ld bc, $04a0                                     ; $56a9: $01 $a0 $04
	ld b, $dd                                        ; $56ac: $06 $dd
	ld bc, $06d4                                     ; $56ae: $01 $d4 $06
	ret nz                                           ; $56b1: $c0

	ld bc, $04a0                                     ; $56b2: $01 $a0 $04
	ld b, $e1                                        ; $56b5: $06 $e1
	pop hl                                           ; $56b7: $e1
	ld [bc], a                                       ; $56b8: $02
	inc bc                                           ; $56b9: $03
	sub b                                            ; $56ba: $90
	db $e4                                           ; $56bb: $e4
	nop                                              ; $56bc: $00
	ld [bc], a                                       ; $56bd: $02
	add hl, bc                                       ; $56be: $09
	ld [$02e1], sp                                   ; $56bf: $08 $e1 $02
	ld [$e5b7], sp                                   ; $56c2: $08 $b7 $e5
	dec de                                           ; $56c5: $1b
	nop                                              ; $56c6: $00
	nop                                              ; $56c7: $00
	add hl, bc                                       ; $56c8: $09
	rrca                                             ; $56c9: $0f
	ret nz                                           ; $56ca: $c0

	ld bc, $04a0                                     ; $56cb: $01 $a0 $04
	ld b, $e5                                        ; $56ce: $06 $e5
	ret nz                                           ; $56d0: $c0

	ld bc, $01a0                                     ; $56d1: $01 $a0 $01
	ld b, $e9                                        ; $56d4: $06 $e9
	db $e4                                           ; $56d6: $e4
	nop                                              ; $56d7: $00
	ld [bc], a                                       ; $56d8: $02
	add hl, bc                                       ; $56d9: $09
	ret nz                                           ; $56da: $c0

	call nz, Call_07f_59c1                           ; $56db: $c4 $c1 $59
	db $e3                                           ; $56de: $e3
	nop                                              ; $56df: $00
	sub [hl]                                         ; $56e0: $96
	ret nz                                           ; $56e1: $c0

	ld bc, $01a0                                     ; $56e2: $01 $a0 $01
	ld b, $ef                                        ; $56e5: $06 $ef
	db $fd                                           ; $56e7: $fd
	or a                                             ; $56e8: $b7
	adc e                                            ; $56e9: $8b
	ld bc, $02f6                                     ; $56ea: $01 $f6 $02
	or b                                             ; $56ed: $b0
	scf                                              ; $56ee: $37
	dec bc                                           ; $56ef: $0b
	pop hl                                           ; $56f0: $e1
	ld [bc], a                                       ; $56f1: $02
	ld b, $6e                                        ; $56f2: $06 $6e
	pop hl                                           ; $56f4: $e1
	ld [bc], a                                       ; $56f5: $02
	ld bc, $e470                                     ; $56f6: $01 $70 $e4
	nop                                              ; $56f9: $00
	and a                                            ; $56fa: $a7
	ld [bc], a                                       ; $56fb: $02
	or b                                             ; $56fc: $b0
	jr c, @+$0d                                      ; $56fd: $38 $0b

	pop hl                                           ; $56ff: $e1
	ld [bc], a                                       ; $5700: $02
	ld b, $bf                                        ; $5701: $06 $bf
	pop hl                                           ; $5703: $e1
	ld [bc], a                                       ; $5704: $02
	ld bc, $e470                                     ; $5705: $01 $70 $e4
	ld bc, $022a                                     ; $5708: $01 $2a $02
	or b                                             ; $570b: $b0
	add hl, sp                                       ; $570c: $39
	dec bc                                           ; $570d: $0b
	pop hl                                           ; $570e: $e1
	ld [bc], a                                       ; $570f: $02
	ld b, $d6                                        ; $5710: $06 $d6
	pop hl                                           ; $5712: $e1
	ld [bc], a                                       ; $5713: $02
	ld bc, $e470                                     ; $5714: $01 $70 $e4
	ld bc, $021b                                     ; $5717: $01 $1b $02
	or b                                             ; $571a: $b0
	ld a, [hl-]                                      ; $571b: $3a
	dec bc                                           ; $571c: $0b
	pop hl                                           ; $571d: $e1
	ld [bc], a                                       ; $571e: $02
	ld b, $ed                                        ; $571f: $06 $ed
	pop hl                                           ; $5721: $e1
	ld [bc], a                                       ; $5722: $02
	ld bc, $e470                                     ; $5723: $01 $70 $e4
	ld bc, $020c                                     ; $5726: $01 $0c $02
	or b                                             ; $5729: $b0
	dec sp                                           ; $572a: $3b
	dec bc                                           ; $572b: $0b
	pop hl                                           ; $572c: $e1
	ld [bc], a                                       ; $572d: $02
	rlca                                             ; $572e: $07
	inc b                                            ; $572f: $04
	pop hl                                           ; $5730: $e1
	ld [bc], a                                       ; $5731: $02
	ld bc, $e470                                     ; $5732: $01 $70 $e4
	nop                                              ; $5735: $00
	db $fd                                           ; $5736: $fd
	ld [bc], a                                       ; $5737: $02
	or b                                             ; $5738: $b0
	inc a                                            ; $5739: $3c
	dec bc                                           ; $573a: $0b
	pop hl                                           ; $573b: $e1
	ld [bc], a                                       ; $573c: $02
	rlca                                             ; $573d: $07
	dec de                                           ; $573e: $1b
	pop hl                                           ; $573f: $e1
	ld [bc], a                                       ; $5740: $02
	ld bc, $e470                                     ; $5741: $01 $70 $e4
	nop                                              ; $5744: $00
	xor $02                                          ; $5745: $ee $02
	or b                                             ; $5747: $b0
	dec a                                            ; $5748: $3d
	dec bc                                           ; $5749: $0b
	pop hl                                           ; $574a: $e1
	ld [bc], a                                       ; $574b: $02
	ld b, $89                                        ; $574c: $06 $89
	pop hl                                           ; $574e: $e1
	ld [bc], a                                       ; $574f: $02
	ld bc, $e470                                     ; $5750: $01 $70 $e4
	nop                                              ; $5753: $00
	ld c, l                                          ; $5754: $4d
	ld [bc], a                                       ; $5755: $02
	or b                                             ; $5756: $b0
	ld a, $0b                                        ; $5757: $3e $0b
	pop hl                                           ; $5759: $e1
	ld [bc], a                                       ; $575a: $02
	rlca                                             ; $575b: $07
	ld [hl-], a                                      ; $575c: $32
	pop hl                                           ; $575d: $e1
	ld [bc], a                                       ; $575e: $02
	ld bc, $e470                                     ; $575f: $01 $70 $e4
	nop                                              ; $5762: $00
	ret nc                                           ; $5763: $d0

	ld [bc], a                                       ; $5764: $02
	or b                                             ; $5765: $b0
	ccf                                              ; $5766: $3f
	dec bc                                           ; $5767: $0b
	pop hl                                           ; $5768: $e1
	ld [bc], a                                       ; $5769: $02
	rlca                                             ; $576a: $07
	ld c, c                                          ; $576b: $49
	pop hl                                           ; $576c: $e1
	ld [bc], a                                       ; $576d: $02
	ld bc, $e470                                     ; $576e: $01 $70 $e4
	nop                                              ; $5771: $00
	pop bc                                           ; $5772: $c1
	ld [bc], a                                       ; $5773: $02
	or b                                             ; $5774: $b0
	ld b, b                                          ; $5775: $40
	dec bc                                           ; $5776: $0b
	pop hl                                           ; $5777: $e1
	ld [bc], a                                       ; $5778: $02
	ld b, $a4                                        ; $5779: $06 $a4
	pop hl                                           ; $577b: $e1
	ld [bc], a                                       ; $577c: $02
	ld bc, $e470                                     ; $577d: $01 $70 $e4
	nop                                              ; $5780: $00
	jr nz, jr_07f_5785                               ; $5781: $20 $02

	or b                                             ; $5783: $b0
	ld b, c                                          ; $5784: $41

jr_07f_5785:
	dec bc                                           ; $5785: $0b
	pop hl                                           ; $5786: $e1
	ld [bc], a                                       ; $5787: $02
	rlca                                             ; $5788: $07
	ld h, b                                          ; $5789: $60
	pop hl                                           ; $578a: $e1
	ld [bc], a                                       ; $578b: $02
	ld bc, $e470                                     ; $578c: $01 $70 $e4
	nop                                              ; $578f: $00
	and e                                            ; $5790: $a3
	ld [bc], a                                       ; $5791: $02
	or b                                             ; $5792: $b0
	ld b, d                                          ; $5793: $42
	dec bc                                           ; $5794: $0b
	pop hl                                           ; $5795: $e1
	ld [bc], a                                       ; $5796: $02
	rlca                                             ; $5797: $07
	ld [hl], a                                       ; $5798: $77
	pop hl                                           ; $5799: $e1
	ld [bc], a                                       ; $579a: $02
	ld bc, $e470                                     ; $579b: $01 $70 $e4
	nop                                              ; $579e: $00
	sub h                                            ; $579f: $94
	ld [$0690], sp                                   ; $57a0: $08 $90 $06
	or $09                                           ; $57a3: $f6 $09
	inc l                                            ; $57a5: $2c
	pop hl                                           ; $57a6: $e1
	ld [bc], a                                       ; $57a7: $02
	inc bc                                           ; $57a8: $03
	inc de                                           ; $57a9: $13
	add d                                            ; $57aa: $82
	ret nz                                           ; $57ab: $c0

	dec de                                           ; $57ac: $1b
	jp nc, $d002                                     ; $57ad: $d2 $02 $d0

	pop de                                           ; $57b0: $d1
	ld b, $c0                                        ; $57b1: $06 $c0
	ld bc, $04a0                                     ; $57b3: $01 $a0 $04
	ld b, $f8                                        ; $57b6: $06 $f8
	ld [bc], a                                       ; $57b8: $02
	jp nc, $06d3                                     ; $57b9: $d2 $d3 $06

	ret nz                                           ; $57bc: $c0

	ld bc, $04a0                                     ; $57bd: $01 $a0 $04
	ld b, $fd                                        ; $57c0: $06 $fd
	ld bc, $06d4                                     ; $57c2: $01 $d4 $06
	ret nz                                           ; $57c5: $c0

	ld bc, $04a0                                     ; $57c6: $01 $a0 $04
	rlca                                             ; $57c9: $07
	inc bc                                           ; $57ca: $03
	pop hl                                           ; $57cb: $e1
	ld [bc], a                                       ; $57cc: $02
	inc bc                                           ; $57cd: $03
	add a                                            ; $57ce: $87
	db $e4                                           ; $57cf: $e4
	nop                                              ; $57d0: $00
	db $f4                                           ; $57d1: $f4
	rlca                                             ; $57d2: $07
	ld [$2c09], sp                                   ; $57d3: $08 $09 $2c
	pop hl                                           ; $57d6: $e1
	ld [bc], a                                       ; $57d7: $02
	inc bc                                           ; $57d8: $03
	rla                                              ; $57d9: $17
	add d                                            ; $57da: $82
	ret nz                                           ; $57db: $c0

	dec de                                           ; $57dc: $1b
	jp nc, $d002                                     ; $57dd: $d2 $02 $d0

	pop de                                           ; $57e0: $d1
	ld b, $c0                                        ; $57e1: $06 $c0
	ld bc, $04a0                                     ; $57e3: $01 $a0 $04
	rlca                                             ; $57e6: $07
	ld a, [bc]                                       ; $57e7: $0a
	ld [bc], a                                       ; $57e8: $02
	jp nc, $06d3                                     ; $57e9: $d2 $d3 $06

	ret nz                                           ; $57ec: $c0

	ld bc, $04a0                                     ; $57ed: $01 $a0 $04
	rlca                                             ; $57f0: $07
	inc d                                            ; $57f1: $14
	ld bc, $06d4                                     ; $57f2: $01 $d4 $06
	ret nz                                           ; $57f5: $c0

	ld bc, $04a0                                     ; $57f6: $01 $a0 $04
	rlca                                             ; $57f9: $07
	ld a, [de]                                       ; $57fa: $1a
	pop hl                                           ; $57fb: $e1
	ld [bc], a                                       ; $57fc: $02
	inc bc                                           ; $57fd: $03
	sbc c                                            ; $57fe: $99
	db $e4                                           ; $57ff: $e4
	nop                                              ; $5800: $00
	call nz, $1f07                                   ; $5801: $c4 $07 $1f
	add hl, bc                                       ; $5804: $09
	inc l                                            ; $5805: $2c
	pop hl                                           ; $5806: $e1
	ld [bc], a                                       ; $5807: $02
	inc bc                                           ; $5808: $03
	inc de                                           ; $5809: $13
	add d                                            ; $580a: $82
	ret nz                                           ; $580b: $c0

	dec de                                           ; $580c: $1b
	jp nc, $d002                                     ; $580d: $d2 $02 $d0

	pop de                                           ; $5810: $d1
	ld b, $c0                                        ; $5811: $06 $c0
	ld bc, $04a0                                     ; $5813: $01 $a0 $04
	rlca                                             ; $5816: $07
	ld hl, $d202                                     ; $5817: $21 $02 $d2
	db $d3                                           ; $581a: $d3
	ld b, $c0                                        ; $581b: $06 $c0
	ld bc, $04a0                                     ; $581d: $01 $a0 $04
	rlca                                             ; $5820: $07
	jr z, @+$03                                      ; $5821: $28 $01

	call nc, $c006                                   ; $5823: $d4 $06 $c0
	ld bc, $04a0                                     ; $5826: $01 $a0 $04
	rlca                                             ; $5829: $07
	inc bc                                           ; $582a: $03
	pop hl                                           ; $582b: $e1
	ld [bc], a                                       ; $582c: $02
	inc bc                                           ; $582d: $03
	sub b                                            ; $582e: $90
	db $e4                                           ; $582f: $e4
	nop                                              ; $5830: $00
	sub h                                            ; $5831: $94
	ld [$0690], sp                                   ; $5832: $08 $90 $06
	or $09                                           ; $5835: $f6 $09
	inc l                                            ; $5837: $2c
	pop hl                                           ; $5838: $e1
	ld [bc], a                                       ; $5839: $02
	inc bc                                           ; $583a: $03
	rra                                              ; $583b: $1f
	add d                                            ; $583c: $82
	ret nz                                           ; $583d: $c0

	dec de                                           ; $583e: $1b
	jp nc, $d002                                     ; $583f: $d2 $02 $d0

	pop de                                           ; $5842: $d1
	ld b, $c0                                        ; $5843: $06 $c0
	ld bc, $04a0                                     ; $5845: $01 $a0 $04
	rlca                                             ; $5848: $07
	ld l, $02                                        ; $5849: $2e $02
	jp nc, $06d3                                     ; $584b: $d2 $d3 $06

	ret nz                                           ; $584e: $c0

	ld bc, $04a0                                     ; $584f: $01 $a0 $04
	rlca                                             ; $5852: $07
	dec sp                                           ; $5853: $3b
	ld bc, $06d4                                     ; $5854: $01 $d4 $06
	ret nz                                           ; $5857: $c0

	ld bc, $04a0                                     ; $5858: $01 $a0 $04
	rlca                                             ; $585b: $07
	ld c, e                                          ; $585c: $4b
	pop hl                                           ; $585d: $e1
	ld [bc], a                                       ; $585e: $02
	inc bc                                           ; $585f: $03
	xor e                                            ; $5860: $ab
	db $e4                                           ; $5861: $e4
	nop                                              ; $5862: $00
	ld h, d                                          ; $5863: $62
	rlca                                             ; $5864: $07
	ld [$2c09], sp                                   ; $5865: $08 $09 $2c
	pop hl                                           ; $5868: $e1
	ld [bc], a                                       ; $5869: $02
	inc bc                                           ; $586a: $03
	rla                                              ; $586b: $17
	add d                                            ; $586c: $82
	ret nz                                           ; $586d: $c0

	dec de                                           ; $586e: $1b
	jp nc, $d002                                     ; $586f: $d2 $02 $d0

	pop de                                           ; $5872: $d1
	ld b, $c0                                        ; $5873: $06 $c0
	ld bc, $04a0                                     ; $5875: $01 $a0 $04
	rlca                                             ; $5878: $07
	ld e, e                                          ; $5879: $5b
	ld [bc], a                                       ; $587a: $02
	jp nc, $06d3                                     ; $587b: $d2 $d3 $06

	ret nz                                           ; $587e: $c0

	ld bc, $04a0                                     ; $587f: $01 $a0 $04
	rlca                                             ; $5882: $07
	ld h, d                                          ; $5883: $62
	ld bc, $06d4                                     ; $5884: $01 $d4 $06
	ret nz                                           ; $5887: $c0

	ld bc, $04a0                                     ; $5888: $01 $a0 $04
	rlca                                             ; $588b: $07
	ld l, a                                          ; $588c: $6f
	pop hl                                           ; $588d: $e1
	ld [bc], a                                       ; $588e: $02
	inc bc                                           ; $588f: $03
	and d                                            ; $5890: $a2
	db $e4                                           ; $5891: $e4
	nop                                              ; $5892: $00
	ld [hl-], a                                      ; $5893: $32
	rlca                                             ; $5894: $07
	rra                                              ; $5895: $1f
	add hl, bc                                       ; $5896: $09
	inc l                                            ; $5897: $2c
	pop hl                                           ; $5898: $e1
	ld [bc], a                                       ; $5899: $02
	inc bc                                           ; $589a: $03
	rra                                              ; $589b: $1f
	add d                                            ; $589c: $82
	ret nz                                           ; $589d: $c0

	dec de                                           ; $589e: $1b
	jp nc, $d002                                     ; $589f: $d2 $02 $d0

	pop de                                           ; $58a2: $d1
	ld b, $c0                                        ; $58a3: $06 $c0
	ld bc, $04a0                                     ; $58a5: $01 $a0 $04
	rlca                                             ; $58a8: $07
	halt                                             ; $58a9: $76
	ld [bc], a                                       ; $58aa: $02
	jp nc, $06d3                                     ; $58ab: $d2 $d3 $06

	ret nz                                           ; $58ae: $c0

	ld bc, $04a0                                     ; $58af: $01 $a0 $04
	rlca                                             ; $58b2: $07
	add c                                            ; $58b3: $81
	ld bc, $06d4                                     ; $58b4: $01 $d4 $06
	ret nz                                           ; $58b7: $c0

	ld bc, $04a0                                     ; $58b8: $01 $a0 $04
	rlca                                             ; $58bb: $07
	sub b                                            ; $58bc: $90
	pop hl                                           ; $58bd: $e1
	ld [bc], a                                       ; $58be: $02
	inc bc                                           ; $58bf: $03
	xor e                                            ; $58c0: $ab
	db $e4                                           ; $58c1: $e4
	nop                                              ; $58c2: $00
	ld [bc], a                                       ; $58c3: $02
	add hl, bc                                       ; $58c4: $09
	ld [$02e1], sp                                   ; $58c5: $08 $e1 $02
	add hl, bc                                       ; $58c8: $09
	ld [hl], $e5                                     ; $58c9: $36 $e5
	dec de                                           ; $58cb: $1b
	nop                                              ; $58cc: $00
	nop                                              ; $58cd: $00
	add hl, bc                                       ; $58ce: $09
	jr @-$2e                                         ; $58cf: $18 $d0

	add e                                            ; $58d1: $83
	ld bc, $d0de                                     ; $58d2: $01 $de $d0
	ret nz                                           ; $58d5: $c0

	ld bc, $04a0                                     ; $58d6: $01 $a0 $04
	rlca                                             ; $58d9: $07
	sbc d                                            ; $58da: $9a
	ret nz                                           ; $58db: $c0

	ld bc, $01a0                                     ; $58dc: $01 $a0 $01
	inc b                                            ; $58df: $04
	db $ed                                           ; $58e0: $ed
	ret nz                                           ; $58e1: $c0

	set 0, c                                         ; $58e2: $cb $c1
	ld e, e                                          ; $58e4: $5b
	db $e4                                           ; $58e5: $e4
	nop                                              ; $58e6: $00
	ld [bc], a                                       ; $58e7: $02
	add hl, bc                                       ; $58e8: $09
	inc e                                            ; $58e9: $1c
	ret nz                                           ; $58ea: $c0

	rrca                                             ; $58eb: $0f
	db $e3                                           ; $58ec: $e3
	nop                                              ; $58ed: $00
	or d                                             ; $58ee: $b2
	ldh [rSB], a                                     ; $58ef: $e0 $01
	sbc b                                            ; $58f1: $98
	ret nz                                           ; $58f2: $c0

	and l                                            ; $58f3: $a5
	and b                                            ; $58f4: $a0
	add b                                            ; $58f5: $80
	and b                                            ; $58f6: $a0
	rla                                              ; $58f7: $17
	nop                                              ; $58f8: $00
	inc bc                                           ; $58f9: $03
	db $e4                                           ; $58fa: $e4
	nop                                              ; $58fb: $00
	dec bc                                           ; $58fc: $0b
	rst $38                                          ; $58fd: $ff
	rlca                                             ; $58fe: $07
	ld b, b                                          ; $58ff: $40
	add b                                            ; $5900: $80
	and b                                            ; $5901: $a0
	rla                                              ; $5902: $17
	db $e4                                           ; $5903: $e4
	nop                                              ; $5904: $00
	ld c, d                                          ; $5905: $4a
	jr z, jr_07f_590e                                ; $5906: $28 $06

	ret nz                                           ; $5908: $c0

	ld bc, $04a0                                     ; $5909: $01 $a0 $04
	rlca                                             ; $590c: $07
	sbc a                                            ; $590d: $9f

jr_07f_590e:
	ccf                                              ; $590e: $3f
	rlca                                             ; $590f: $07
	and c                                            ; $5910: $a1
	add hl, bc                                       ; $5911: $09
	ld de, $02e1                                     ; $5912: $11 $e1 $02
	inc bc                                           ; $5915: $03
	rrca                                             ; $5916: $0f
	ret nz                                           ; $5917: $c0

	ld bc, $04a0                                     ; $5918: $01 $a0 $04
	rlca                                             ; $591b: $07
	and e                                            ; $591c: $a3
	pop hl                                           ; $591d: $e1
	ld [bc], a                                       ; $591e: $02
	inc bc                                           ; $591f: $03
	add a                                            ; $5920: $87
	db $e4                                           ; $5921: $e4
	nop                                              ; $5922: $00
	ld [hl], h                                       ; $5923: $74
	rlca                                             ; $5924: $07
	xor c                                            ; $5925: $a9
	add hl, bc                                       ; $5926: $09
	ld de, $02e1                                     ; $5927: $11 $e1 $02
	inc bc                                           ; $592a: $03
	dec de                                           ; $592b: $1b
	ret nz                                           ; $592c: $c0

	ld bc, $04a0                                     ; $592d: $01 $a0 $04
	rlca                                             ; $5930: $07
	xor e                                            ; $5931: $ab
	pop hl                                           ; $5932: $e1
	ld [bc], a                                       ; $5933: $02
	inc bc                                           ; $5934: $03
	and d                                            ; $5935: $a2
	db $e4                                           ; $5936: $e4
	nop                                              ; $5937: $00
	ld e, a                                          ; $5938: $5f
	rlca                                             ; $5939: $07
	xor [hl]                                         ; $593a: $ae
	add hl, bc                                       ; $593b: $09
	ld de, $02e1                                     ; $593c: $11 $e1 $02
	inc bc                                           ; $593f: $03
	rla                                              ; $5940: $17
	ret nz                                           ; $5941: $c0

	ld bc, $04a0                                     ; $5942: $01 $a0 $04
	rlca                                             ; $5945: $07
	or b                                             ; $5946: $b0
	pop hl                                           ; $5947: $e1
	ld [bc], a                                       ; $5948: $02
	inc bc                                           ; $5949: $03
	sbc c                                            ; $594a: $99
	db $e4                                           ; $594b: $e4
	nop                                              ; $594c: $00
	ld c, d                                          ; $594d: $4a
	jr z, jr_07f_5956                                ; $594e: $28 $06

	ret nz                                           ; $5950: $c0

	ld bc, $04a0                                     ; $5951: $01 $a0 $04
	rlca                                             ; $5954: $07
	or l                                             ; $5955: $b5

jr_07f_5956:
	ccf                                              ; $5956: $3f
	rlca                                             ; $5957: $07
	cp d                                             ; $5958: $ba
	add hl, bc                                       ; $5959: $09
	ld de, $02e1                                     ; $595a: $11 $e1 $02
	inc bc                                           ; $595d: $03
	rla                                              ; $595e: $17
	ret nz                                           ; $595f: $c0

	ld bc, $04a0                                     ; $5960: $01 $a0 $04
	rlca                                             ; $5963: $07
	ret nz                                           ; $5964: $c0

	pop hl                                           ; $5965: $e1
	ld [bc], a                                       ; $5966: $02
	inc bc                                           ; $5967: $03
	sbc c                                            ; $5968: $99
	db $e4                                           ; $5969: $e4
	nop                                              ; $596a: $00
	inc l                                            ; $596b: $2c
	rlca                                             ; $596c: $07
	push bc                                          ; $596d: $c5
	add hl, bc                                       ; $596e: $09
	ld de, $02e1                                     ; $596f: $11 $e1 $02
	inc bc                                           ; $5972: $03
	rra                                              ; $5973: $1f
	ret nz                                           ; $5974: $c0

	ld bc, $04a0                                     ; $5975: $01 $a0 $04
	rlca                                             ; $5978: $07
	jp z, $02e1                                      ; $5979: $ca $e1 $02

	inc bc                                           ; $597c: $03
	xor e                                            ; $597d: $ab
	db $e4                                           ; $597e: $e4
	nop                                              ; $597f: $00
	rla                                              ; $5980: $17
	rlca                                             ; $5981: $07
	jp nc, $1109                                     ; $5982: $d2 $09 $11

	pop hl                                           ; $5985: $e1
	ld [bc], a                                       ; $5986: $02
	inc bc                                           ; $5987: $03
	dec de                                           ; $5988: $1b
	ret nz                                           ; $5989: $c0

	ld bc, $04a0                                     ; $598a: $01 $a0 $04
	rlca                                             ; $598d: $07
	rst SubAFromHL                                          ; $598e: $d7
	pop hl                                           ; $598f: $e1
	ld [bc], a                                       ; $5990: $02
	inc bc                                           ; $5991: $03
	and d                                            ; $5992: $a2
	db $e4                                           ; $5993: $e4
	nop                                              ; $5994: $00
	ld [bc], a                                       ; $5995: $02
	add hl, bc                                       ; $5996: $09
	dec d                                            ; $5997: $15
	ret nz                                           ; $5998: $c0

	set 0, b                                         ; $5999: $cb $c0
	ld de, $00e3                                     ; $599b: $11 $e3 $00
	or c                                             ; $599e: $b1
	pop hl                                           ; $599f: $e1
	ld [bc], a                                       ; $59a0: $02
	ld bc, $c070                                     ; $59a1: $01 $70 $c0
	ld d, [hl]                                       ; $59a4: $56
	jp nc, $10e0                                     ; $59a5: $d2 $e0 $10

	ret nc                                           ; $59a8: $d0

	push hl                                          ; $59a9: $e5
	dec de                                           ; $59aa: $1b
	nop                                              ; $59ab: $00
	nop                                              ; $59ac: $00
	add hl, bc                                       ; $59ad: $09
	ld c, $d0                                        ; $59ae: $0e $d0
	add e                                            ; $59b0: $83
	ld bc, $d0de                                     ; $59b1: $01 $de $d0
	ret nz                                           ; $59b4: $c0

	ld bc, $04a0                                     ; $59b5: $01 $a0 $04
	rlca                                             ; $59b8: $07
	db $db                                           ; $59b9: $db
	db $e4                                           ; $59ba: $e4
	nop                                              ; $59bb: $00
	ld [bc], a                                       ; $59bc: $02
	add hl, bc                                       ; $59bd: $09
	ld [hl+], a                                      ; $59be: $22
	pop bc                                           ; $59bf: $c1
	ld e, e                                          ; $59c0: $5b

Call_07f_59c1:
	ret nz                                           ; $59c1: $c0

	set 0, b                                         ; $59c2: $cb $c0
	ld de, $00e3                                     ; $59c4: $11 $e3 $00
	xor a                                            ; $59c7: $af
	ldh [rP1], a                                     ; $59c8: $e0 $00
	cp a                                             ; $59ca: $bf
	pop bc                                           ; $59cb: $c1
	ld e, h                                          ; $59cc: $5c
	ret nz                                           ; $59cd: $c0

	jp z, $80a0                                      ; $59ce: $ca $a0 $80

	and b                                            ; $59d1: $a0
	jr jr_07f_59d4                                   ; $59d2: $18 $00

jr_07f_59d4:
	inc bc                                           ; $59d4: $03
	db $e4                                           ; $59d5: $e4
	nop                                              ; $59d6: $00
	dec bc                                           ; $59d7: $0b
	rst $38                                          ; $59d8: $ff
	rlca                                             ; $59d9: $07
	ld b, b                                          ; $59da: $40
	add b                                            ; $59db: $80
	and b                                            ; $59dc: $a0
	jr @-$1a                                         ; $59dd: $18 $e4

	nop                                              ; $59df: $00
	ld c, d                                          ; $59e0: $4a
	jr z, @+$08                                      ; $59e1: $28 $06

	ret nz                                           ; $59e3: $c0

	ld bc, $04a0                                     ; $59e4: $01 $a0 $04
	rlca                                             ; $59e7: $07
	ldh [$3f], a                                     ; $59e8: $e0 $3f
	rlca                                             ; $59ea: $07
	add sp, $09                                      ; $59eb: $e8 $09
	ld de, $02e1                                     ; $59ed: $11 $e1 $02
	inc bc                                           ; $59f0: $03
	inc de                                           ; $59f1: $13
	ret nz                                           ; $59f2: $c0

	ld bc, $04a0                                     ; $59f3: $01 $a0 $04
	rlca                                             ; $59f6: $07
	db $ed                                           ; $59f7: $ed
	pop hl                                           ; $59f8: $e1
	ld [bc], a                                       ; $59f9: $02
	inc bc                                           ; $59fa: $03
	sub b                                            ; $59fb: $90
	db $e4                                           ; $59fc: $e4
	nop                                              ; $59fd: $00
	ld [hl], h                                       ; $59fe: $74
	rlca                                             ; $59ff: $07
	pop af                                           ; $5a00: $f1
	add hl, bc                                       ; $5a01: $09
	ld de, $02e1                                     ; $5a02: $11 $e1 $02
	inc bc                                           ; $5a05: $03
	rra                                              ; $5a06: $1f
	ret nz                                           ; $5a07: $c0

	ld bc, $04a0                                     ; $5a08: $01 $a0 $04
	rlca                                             ; $5a0b: $07
	ld hl, sp-$1f                                    ; $5a0c: $f8 $e1
	ld [bc], a                                       ; $5a0e: $02
	inc bc                                           ; $5a0f: $03
	xor e                                            ; $5a10: $ab
	db $e4                                           ; $5a11: $e4
	nop                                              ; $5a12: $00
	ld e, a                                          ; $5a13: $5f
	rlca                                             ; $5a14: $07
	cp $09                                           ; $5a15: $fe $09
	ld de, $02e1                                     ; $5a17: $11 $e1 $02
	inc bc                                           ; $5a1a: $03
	rla                                              ; $5a1b: $17
	ret nz                                           ; $5a1c: $c0

	ld bc, $04a0                                     ; $5a1d: $01 $a0 $04
	ld [$e100], sp                                   ; $5a20: $08 $00 $e1
	ld [bc], a                                       ; $5a23: $02
	inc bc                                           ; $5a24: $03
	sbc c                                            ; $5a25: $99
	db $e4                                           ; $5a26: $e4
	nop                                              ; $5a27: $00
	ld c, d                                          ; $5a28: $4a
	jr z, @+$08                                      ; $5a29: $28 $06

	ret nz                                           ; $5a2b: $c0

	ld bc, $04a0                                     ; $5a2c: $01 $a0 $04
	ld [$3f05], sp                                   ; $5a2f: $08 $05 $3f
	ld [$090b], sp                                   ; $5a32: $08 $0b $09
	ld de, $02e1                                     ; $5a35: $11 $e1 $02
	inc bc                                           ; $5a38: $03
	inc de                                           ; $5a39: $13
	ret nz                                           ; $5a3a: $c0

	ld bc, $04a0                                     ; $5a3b: $01 $a0 $04
	ld [$e112], sp                                   ; $5a3e: $08 $12 $e1
	ld [bc], a                                       ; $5a41: $02
	inc bc                                           ; $5a42: $03
	sub b                                            ; $5a43: $90
	db $e4                                           ; $5a44: $e4
	nop                                              ; $5a45: $00
	inc l                                            ; $5a46: $2c
	ld [$0917], sp                                   ; $5a47: $08 $17 $09
	ld de, $02e1                                     ; $5a4a: $11 $e1 $02
	inc bc                                           ; $5a4d: $03
	rra                                              ; $5a4e: $1f
	ret nz                                           ; $5a4f: $c0

	ld bc, $04a0                                     ; $5a50: $01 $a0 $04
	ld [$e11b], sp                                   ; $5a53: $08 $1b $e1
	ld [bc], a                                       ; $5a56: $02
	inc bc                                           ; $5a57: $03
	xor e                                            ; $5a58: $ab
	db $e4                                           ; $5a59: $e4
	nop                                              ; $5a5a: $00
	rla                                              ; $5a5b: $17
	ld [$0922], sp                                   ; $5a5c: $08 $22 $09
	ld de, $02e1                                     ; $5a5f: $11 $e1 $02
	inc bc                                           ; $5a62: $03
	dec de                                           ; $5a63: $1b
	ret nz                                           ; $5a64: $c0

	ld bc, $04a0                                     ; $5a65: $01 $a0 $04
	ld [$e127], sp                                   ; $5a68: $08 $27 $e1
	ld [bc], a                                       ; $5a6b: $02
	inc bc                                           ; $5a6c: $03
	and d                                            ; $5a6d: $a2
	db $e4                                           ; $5a6e: $e4
	nop                                              ; $5a6f: $00
	ld [bc], a                                       ; $5a70: $02
	add hl, bc                                       ; $5a71: $09
	dec d                                            ; $5a72: $15
	ret nz                                           ; $5a73: $c0

	set 0, b                                         ; $5a74: $cb $c0
	ld de, $00e3                                     ; $5a76: $11 $e3 $00
	xor [hl]                                         ; $5a79: $ae
	pop hl                                           ; $5a7a: $e1
	ld [bc], a                                       ; $5a7b: $02
	ld bc, $c070                                     ; $5a7c: $01 $70 $c0
	ld d, [hl]                                       ; $5a7f: $56
	jp nc, $11e0                                     ; $5a80: $d2 $e0 $11

	ret nc                                           ; $5a83: $d0

	push hl                                          ; $5a84: $e5
	dec de                                           ; $5a85: $1b
	nop                                              ; $5a86: $00
	nop                                              ; $5a87: $00
	rlca                                             ; $5a88: $07
	ret nz                                           ; $5a89: $c0

	and a                                            ; $5a8a: $a7
	jp nc, $d7d3                                     ; $5a8b: $d2 $d3 $d7

	ret nz                                           ; $5a8e: $c0

	xor h                                            ; $5a8f: $ac
	add hl, bc                                       ; $5a90: $09
	dec de                                           ; $5a91: $1b
	ret nz                                           ; $5a92: $c0

	ld bc, $04a0                                     ; $5a93: $01 $a0 $04
	ld [$822e], sp                                   ; $5a96: $08 $2e $82
	ret nz                                           ; $5a99: $c0

	add b                                            ; $5a9a: $80
	ld bc, $03d3                                     ; $5a9b: $01 $d3 $03
	db $e4                                           ; $5a9e: $e4
	nop                                              ; $5a9f: $00
	sub c                                            ; $5aa0: $91
	ld bc, $03d2                                     ; $5aa1: $01 $d2 $03
	db $e4                                           ; $5aa4: $e4
	nop                                              ; $5aa5: $00
	ccf                                              ; $5aa6: $3f
	ld bc, $03d1                                     ; $5aa7: $01 $d1 $03
	db $e4                                           ; $5aaa: $e4
	nop                                              ; $5aab: $00
	ld [bc], a                                       ; $5aac: $02
	add hl, bc                                       ; $5aad: $09
	dec [hl]                                         ; $5aae: $35
	ret nz                                           ; $5aaf: $c0

	ld bc, $01a0                                     ; $5ab0: $01 $a0 $01
	ld [$c032], sp                                   ; $5ab3: $08 $32 $c0
	ld bc, $04a0                                     ; $5ab6: $01 $a0 $04
	ld [$e137], sp                                   ; $5ab9: $08 $37 $e1
	ld [bc], a                                       ; $5abc: $02
	ld [$e169], sp                                   ; $5abd: $08 $69 $e1
	ld [bc], a                                       ; $5ac0: $02
	ld bc, $c068                                     ; $5ac1: $01 $68 $c0
	ld bc, $01a0                                     ; $5ac4: $01 $a0 $01
	ld [$e13c], sp                                   ; $5ac7: $08 $3c $e1
	ld [bc], a                                       ; $5aca: $02
	inc bc                                           ; $5acb: $03
	inc de                                           ; $5acc: $13
	or b                                             ; $5acd: $b0
	ld a, a                                          ; $5ace: $7f
	ld b, $c0                                        ; $5acf: $06 $c0
	ld bc, $04a0                                     ; $5ad1: $01 $a0 $04
	ld [$ff42], sp                                   ; $5ad4: $08 $42 $ff
	ld b, $c0                                        ; $5ad7: $06 $c0
	ld bc, $04a0                                     ; $5ad9: $01 $a0 $04
	ld [$c046], sp                                   ; $5adc: $08 $46 $c0
	ld d, c                                          ; $5adf: $51
	pop de                                           ; $5ae0: $d1
	db $e4                                           ; $5ae1: $e4
	ld bc, $0903                                     ; $5ae2: $01 $03 $09
	ld c, d                                          ; $5ae5: $4a
	ret nz                                           ; $5ae6: $c0

	ld bc, $01a0                                     ; $5ae7: $01 $a0 $01
	ld [$c054], sp                                   ; $5aea: $08 $54 $c0
	ld bc, $04a0                                     ; $5aed: $01 $a0 $04
	ld [$c05c], sp                                   ; $5af0: $08 $5c $c0
	ld bc, $01a0                                     ; $5af3: $01 $a0 $01
	ld [$e165], sp                                   ; $5af6: $08 $65 $e1
	ld [bc], a                                       ; $5af9: $02
	ld [$e18d], sp                                   ; $5afa: $08 $8d $e1
	ld [bc], a                                       ; $5afd: $02
	ld bc, $6070                                     ; $5afe: $01 $70 $60
	add a                                            ; $5b01: $87
	ld bc, $13e2                                     ; $5b02: $01 $e2 $13
	ret nz                                           ; $5b05: $c0

	ld bc, $01a0                                     ; $5b06: $01 $a0 $01
	ld [$e16c], sp                                   ; $5b09: $08 $6c $e1
	ld [bc], a                                       ; $5b0c: $02
	inc bc                                           ; $5b0d: $03
	inc de                                           ; $5b0e: $13
	ret nz                                           ; $5b0f: $c0

	ld bc, $04a0                                     ; $5b10: $01 $a0 $04
	ld [$c070], sp                                   ; $5b13: $08 $70 $c0
	ld d, c                                          ; $5b16: $51
	pop de                                           ; $5b17: $d1
	db $10                                           ; $5b18: $10
	ret nz                                           ; $5b19: $c0

	ld bc, $01a0                                     ; $5b1a: $01 $a0 $01
	ld [$e177], sp                                   ; $5b1d: $08 $77 $e1
	ld [bc], a                                       ; $5b20: $02
	inc bc                                           ; $5b21: $03
	inc de                                           ; $5b22: $13
	ret nz                                           ; $5b23: $c0

	ld bc, $04a0                                     ; $5b24: $01 $a0 $04
	ld [$4081], sp                                   ; $5b27: $08 $81 $40
	add a                                            ; $5b2a: $87
	ld bc, $e4e2                                     ; $5b2b: $01 $e2 $e4
	nop                                              ; $5b2e: $00
	or a                                             ; $5b2f: $b7
	add hl, bc                                       ; $5b30: $09
	ld a, [de]                                       ; $5b31: $1a
	ret nz                                           ; $5b32: $c0

	ld bc, $01a0                                     ; $5b33: $01 $a0 $01
	ld [$c08d], sp                                   ; $5b36: $08 $8d $c0
	ld bc, $04a0                                     ; $5b39: $01 $a0 $04
	ld [$e194], sp                                   ; $5b3c: $08 $94 $e1
	ld [bc], a                                       ; $5b3f: $02
	ld [$e1a4], sp                                   ; $5b40: $08 $a4 $e1
	ld [bc], a                                       ; $5b43: $02
	ld bc, $c070                                     ; $5b44: $01 $70 $c0
	ld d, c                                          ; $5b47: $51
	pop de                                           ; $5b48: $d1
	db $e4                                           ; $5b49: $e4
	nop                                              ; $5b4a: $00
	ld [bc], a                                       ; $5b4b: $02
	jr z, @+$08                                      ; $5b4c: $28 $06

	ret nz                                           ; $5b4e: $c0

	ld bc, $04a0                                     ; $5b4f: $01 $a0 $04
	ld [$9096], sp                                   ; $5b52: $08 $96 $90
	ld [$099a], sp                                   ; $5b55: $08 $9a $09
	inc l                                            ; $5b58: $2c
	pop hl                                           ; $5b59: $e1
	ld [bc], a                                       ; $5b5a: $02
	inc bc                                           ; $5b5b: $03
	inc de                                           ; $5b5c: $13
	add d                                            ; $5b5d: $82
	ret nz                                           ; $5b5e: $c0

	dec de                                           ; $5b5f: $1b
	jp nc, $d002                                     ; $5b60: $d2 $02 $d0

	pop de                                           ; $5b63: $d1
	ld b, $c0                                        ; $5b64: $06 $c0
	ld bc, $04a0                                     ; $5b66: $01 $a0 $04
	ld [$029c], sp                                   ; $5b69: $08 $9c $02
	jp nc, $06d3                                     ; $5b6c: $d2 $d3 $06

	ret nz                                           ; $5b6f: $c0

	ld bc, $04a0                                     ; $5b70: $01 $a0 $04
	ld [$01a6], sp                                   ; $5b73: $08 $a6 $01
	call nc, $c006                                   ; $5b76: $d4 $06 $c0
	ld bc, $04a0                                     ; $5b79: $01 $a0 $04
	ld [$e1ae], sp                                   ; $5b7c: $08 $ae $e1
	ld [bc], a                                       ; $5b7f: $02
	inc bc                                           ; $5b80: $03
	add a                                            ; $5b81: $87
	db $e4                                           ; $5b82: $e4
	nop                                              ; $5b83: $00
	ld h, d                                          ; $5b84: $62
	ld [$09b4], sp                                   ; $5b85: $08 $b4 $09
	inc l                                            ; $5b88: $2c
	pop hl                                           ; $5b89: $e1
	ld [bc], a                                       ; $5b8a: $02
	inc bc                                           ; $5b8b: $03
	rra                                              ; $5b8c: $1f
	add d                                            ; $5b8d: $82
	ret nz                                           ; $5b8e: $c0

	dec de                                           ; $5b8f: $1b
	jp nc, $d002                                     ; $5b90: $d2 $02 $d0

	pop de                                           ; $5b93: $d1
	ld b, $c0                                        ; $5b94: $06 $c0
	ld bc, $04a0                                     ; $5b96: $01 $a0 $04
	ld [$02b6], sp                                   ; $5b99: $08 $b6 $02
	jp nc, $06d3                                     ; $5b9c: $d2 $d3 $06

	ret nz                                           ; $5b9f: $c0

	ld bc, $04a0                                     ; $5ba0: $01 $a0 $04
	ld [$01bb], sp                                   ; $5ba3: $08 $bb $01
	call nc, $c006                                   ; $5ba6: $d4 $06 $c0
	ld bc, $04a0                                     ; $5ba9: $01 $a0 $04
	ld [$e1c6], sp                                   ; $5bac: $08 $c6 $e1
	ld [bc], a                                       ; $5baf: $02
	inc bc                                           ; $5bb0: $03
	xor e                                            ; $5bb1: $ab
	db $e4                                           ; $5bb2: $e4
	nop                                              ; $5bb3: $00
	ld [hl-], a                                      ; $5bb4: $32
	ld [$09d0], sp                                   ; $5bb5: $08 $d0 $09
	inc l                                            ; $5bb8: $2c
	pop hl                                           ; $5bb9: $e1
	ld [bc], a                                       ; $5bba: $02
	inc bc                                           ; $5bbb: $03
	inc de                                           ; $5bbc: $13
	add d                                            ; $5bbd: $82
	ret nz                                           ; $5bbe: $c0

	dec de                                           ; $5bbf: $1b
	jp nc, $d002                                     ; $5bc0: $d2 $02 $d0

	pop de                                           ; $5bc3: $d1
	ld b, $c0                                        ; $5bc4: $06 $c0
	ld bc, $04a0                                     ; $5bc6: $01 $a0 $04
	ld [$02d2], sp                                   ; $5bc9: $08 $d2 $02
	jp nc, $06d3                                     ; $5bcc: $d2 $d3 $06

	ret nz                                           ; $5bcf: $c0

	ld bc, $04a0                                     ; $5bd0: $01 $a0 $04
	ld [$01e2], sp                                   ; $5bd3: $08 $e2 $01
	call nc, $c006                                   ; $5bd6: $d4 $06 $c0
	ld bc, $04a0                                     ; $5bd9: $01 $a0 $04
	ld [$e1eb], sp                                   ; $5bdc: $08 $eb $e1
	ld [bc], a                                       ; $5bdf: $02
	inc bc                                           ; $5be0: $03
	sub b                                            ; $5be1: $90
	db $e4                                           ; $5be2: $e4
	nop                                              ; $5be3: $00
	ld [bc], a                                       ; $5be4: $02
	add hl, bc                                       ; $5be5: $09
	dec [hl]                                         ; $5be6: $35
	add c                                            ; $5be7: $81
	ret nz                                           ; $5be8: $c0

	ld h, h                                          ; $5be9: $64
	ld [bc], a                                       ; $5bea: $02
	ldh [$63], a                                     ; $5beb: $e0 $63
	inc d                                            ; $5bed: $14
	ret nc                                           ; $5bee: $d0

	add d                                            ; $5bef: $82
	ld bc, $d2cc                                     ; $5bf0: $01 $cc $d2
	pop hl                                           ; $5bf3: $e1
	ld [bc], a                                       ; $5bf4: $02
	inc b                                            ; $5bf5: $04
	pop de                                           ; $5bf6: $d1
	ret nc                                           ; $5bf7: $d0

	add e                                            ; $5bf8: $83
	ld bc, $d1de                                     ; $5bf9: $01 $de $d1
	ret nz                                           ; $5bfc: $c0

	ld d, [hl]                                       ; $5bfd: $56
	jp nc, $12e0                                     ; $5bfe: $d2 $e0 $12

	pop de                                           ; $5c01: $d1
	nop                                              ; $5c02: $00
	inc d                                            ; $5c03: $14
	ret nc                                           ; $5c04: $d0

	add d                                            ; $5c05: $82
	ld bc, $d3cc                                     ; $5c06: $01 $cc $d3
	pop hl                                           ; $5c09: $e1
	ld [bc], a                                       ; $5c0a: $02
	inc b                                            ; $5c0b: $04
	db $db                                           ; $5c0c: $db
	ret nc                                           ; $5c0d: $d0

	add e                                            ; $5c0e: $83
	ld bc, $d0de                                     ; $5c0f: $01 $de $d0
	ret nz                                           ; $5c12: $c0

	ld d, [hl]                                       ; $5c13: $56
	jp nc, $12e0                                     ; $5c14: $d2 $e0 $12

	ret nc                                           ; $5c17: $d0

	push hl                                          ; $5c18: $e5
	dec de                                           ; $5c19: $1b
	nop                                              ; $5c1a: $00
	nop                                              ; $5c1b: $00
	add hl, bc                                       ; $5c1c: $09
	inc d                                            ; $5c1d: $14
	ret nc                                           ; $5c1e: $d0

	add e                                            ; $5c1f: $83
	ld bc, $d0de                                     ; $5c20: $01 $de $d0
	ret nz                                           ; $5c23: $c0

	ld bc, $04a0                                     ; $5c24: $01 $a0 $04
	rlca                                             ; $5c27: $07
	sbc d                                            ; $5c28: $9a
	ret nz                                           ; $5c29: $c0

	ld bc, $01a0                                     ; $5c2a: $01 $a0 $01
	inc b                                            ; $5c2d: $04
	db $ed                                           ; $5c2e: $ed
	db $e4                                           ; $5c2f: $e4
	nop                                              ; $5c30: $00
	ld [bc], a                                       ; $5c31: $02
	add hl, bc                                       ; $5c32: $09
	rla                                              ; $5c33: $17
	pop bc                                           ; $5c34: $c1
	ld e, c                                          ; $5c35: $59
	db $e3                                           ; $5c36: $e3
	nop                                              ; $5c37: $00
	xor c                                            ; $5c38: $a9
	and b                                            ; $5c39: $a0
	add b                                            ; $5c3a: $80
	and b                                            ; $5c3b: $a0
	add hl, de                                       ; $5c3c: $19
	nop                                              ; $5c3d: $00
	inc bc                                           ; $5c3e: $03
	db $e4                                           ; $5c3f: $e4
	nop                                              ; $5c40: $00
	dec bc                                           ; $5c41: $0b
	rst $38                                          ; $5c42: $ff
	rlca                                             ; $5c43: $07
	ld b, b                                          ; $5c44: $40
	add b                                            ; $5c45: $80
	and b                                            ; $5c46: $a0
	add hl, de                                       ; $5c47: $19
	db $e4                                           ; $5c48: $e4
	nop                                              ; $5c49: $00
	ld c, d                                          ; $5c4a: $4a
	jr z, @+$08                                      ; $5c4b: $28 $06

	ret nz                                           ; $5c4d: $c0

	ld bc, $04a0                                     ; $5c4e: $01 $a0 $04
	ld [$3ff0], sp                                   ; $5c51: $08 $f0 $3f
	ld [$09fc], sp                                   ; $5c54: $08 $fc $09
	ld de, $02e1                                     ; $5c57: $11 $e1 $02
	inc bc                                           ; $5c5a: $03
	rrca                                             ; $5c5b: $0f
	ret nz                                           ; $5c5c: $c0

	ld bc, $04a0                                     ; $5c5d: $01 $a0 $04
	add hl, bc                                       ; $5c60: $09
	inc b                                            ; $5c61: $04
	pop hl                                           ; $5c62: $e1
	ld [bc], a                                       ; $5c63: $02
	inc bc                                           ; $5c64: $03
	add a                                            ; $5c65: $87
	db $e4                                           ; $5c66: $e4
	nop                                              ; $5c67: $00
	ld [hl], h                                       ; $5c68: $74
	add hl, bc                                       ; $5c69: $09
	add hl, bc                                       ; $5c6a: $09
	add hl, bc                                       ; $5c6b: $09
	ld de, $02e1                                     ; $5c6c: $11 $e1 $02
	inc bc                                           ; $5c6f: $03
	rra                                              ; $5c70: $1f
	ret nz                                           ; $5c71: $c0

	ld bc, $04a0                                     ; $5c72: $01 $a0 $04
	add hl, bc                                       ; $5c75: $09
	dec c                                            ; $5c76: $0d
	pop hl                                           ; $5c77: $e1
	ld [bc], a                                       ; $5c78: $02
	inc bc                                           ; $5c79: $03
	xor e                                            ; $5c7a: $ab
	db $e4                                           ; $5c7b: $e4
	nop                                              ; $5c7c: $00
	ld e, a                                          ; $5c7d: $5f
	add hl, bc                                       ; $5c7e: $09
	inc d                                            ; $5c7f: $14
	add hl, bc                                       ; $5c80: $09
	ld de, $02e1                                     ; $5c81: $11 $e1 $02
	inc bc                                           ; $5c84: $03
	dec de                                           ; $5c85: $1b
	ret nz                                           ; $5c86: $c0

	ld bc, $04a0                                     ; $5c87: $01 $a0 $04
	add hl, bc                                       ; $5c8a: $09
	rla                                              ; $5c8b: $17
	pop hl                                           ; $5c8c: $e1
	ld [bc], a                                       ; $5c8d: $02
	inc bc                                           ; $5c8e: $03
	and d                                            ; $5c8f: $a2
	db $e4                                           ; $5c90: $e4
	nop                                              ; $5c91: $00
	ld c, d                                          ; $5c92: $4a
	jr z, @+$08                                      ; $5c93: $28 $06

	ret nz                                           ; $5c95: $c0

	ld bc, $04a0                                     ; $5c96: $01 $a0 $04
	add hl, bc                                       ; $5c99: $09
	jr jr_07f_5cdb                                   ; $5c9a: $18 $3f

	add hl, bc                                       ; $5c9c: $09
	ld hl, $1109                                     ; $5c9d: $21 $09 $11
	pop hl                                           ; $5ca0: $e1
	ld [bc], a                                       ; $5ca1: $02
	inc bc                                           ; $5ca2: $03
	rla                                              ; $5ca3: $17
	ret nz                                           ; $5ca4: $c0

	ld bc, $04a0                                     ; $5ca5: $01 $a0 $04
	add hl, bc                                       ; $5ca8: $09
	add hl, hl                                       ; $5ca9: $29
	pop hl                                           ; $5caa: $e1
	ld [bc], a                                       ; $5cab: $02
	inc bc                                           ; $5cac: $03
	sbc c                                            ; $5cad: $99
	db $e4                                           ; $5cae: $e4
	nop                                              ; $5caf: $00
	inc l                                            ; $5cb0: $2c
	add hl, bc                                       ; $5cb1: $09
	ld sp, $1109                                     ; $5cb2: $31 $09 $11
	pop hl                                           ; $5cb5: $e1
	ld [bc], a                                       ; $5cb6: $02
	inc bc                                           ; $5cb7: $03
	rra                                              ; $5cb8: $1f
	ret nz                                           ; $5cb9: $c0

	ld bc, $04a0                                     ; $5cba: $01 $a0 $04
	add hl, bc                                       ; $5cbd: $09
	dec [hl]                                         ; $5cbe: $35
	pop hl                                           ; $5cbf: $e1
	ld [bc], a                                       ; $5cc0: $02
	inc bc                                           ; $5cc1: $03
	xor e                                            ; $5cc2: $ab
	db $e4                                           ; $5cc3: $e4
	nop                                              ; $5cc4: $00
	rla                                              ; $5cc5: $17
	add hl, bc                                       ; $5cc6: $09

jr_07f_5cc7:
	ld a, [hl-]                                      ; $5cc7: $3a
	add hl, bc                                       ; $5cc8: $09
	ld de, $02e1                                     ; $5cc9: $11 $e1 $02
	inc bc                                           ; $5ccc: $03
	dec de                                           ; $5ccd: $1b
	ret nz                                           ; $5cce: $c0

	ld bc, $04a0                                     ; $5ccf: $01 $a0 $04
	add hl, bc                                       ; $5cd2: $09
	ld b, c                                          ; $5cd3: $41
	pop hl                                           ; $5cd4: $e1
	ld [bc], a                                       ; $5cd5: $02
	inc bc                                           ; $5cd6: $03
	and d                                            ; $5cd7: $a2
	db $e4                                           ; $5cd8: $e4
	nop                                              ; $5cd9: $00
	ld [bc], a                                       ; $5cda: $02

jr_07f_5cdb:
	add hl, bc                                       ; $5cdb: $09
	rrca                                             ; $5cdc: $0f
	pop bc                                           ; $5cdd: $c1
	ld e, c                                          ; $5cde: $59
	db $e3                                           ; $5cdf: $e3
	nop                                              ; $5ce0: $00
	xor b                                            ; $5ce1: $a8
	ret nz                                           ; $5ce2: $c0

	ld d, [hl]                                       ; $5ce3: $56
	jp nc, $13e0                                     ; $5ce4: $d2 $e0 $13

	ret nc                                           ; $5ce7: $d0

	push hl                                          ; $5ce8: $e5
	dec de                                           ; $5ce9: $1b
	nop                                              ; $5cea: $00
	nop                                              ; $5ceb: $00
	ld e, h                                          ; $5cec: $5c
	dec b                                            ; $5ced: $05
	add hl, bc                                       ; $5cee: $09
	pop bc                                           ; $5cef: $c1
	ret nc                                           ; $5cf0: $d0

	ret nz                                           ; $5cf1: $c0

	ld c, h                                          ; $5cf2: $4c
	jp nc, $8fd0                                     ; $5cf3: $d2 $d0 $8f

	nop                                              ; $5cf6: $00
	cp b                                             ; $5cf7: $b8
	add h                                            ; $5cf8: $84
	ld [bc], a                                       ; $5cf9: $02
	ld l, $61                                        ; $5cfa: $2e $61
	cp $07                                           ; $5cfc: $fe $07
	add b                                            ; $5cfe: $80
	nop                                              ; $5cff: $00
	set 7, h                                         ; $5d00: $cb $fc
	ret nz                                           ; $5d02: $c0

	ld h, a                                          ; $5d03: $67
	ret nc                                           ; $5d04: $d0

	jr nc, jr_07f_5cc7                               ; $5d05: $30 $c0

	ld bc, $04a0                                     ; $5d07: $01 $a0 $04
	nop                                              ; $5d0a: $00
	ld bc, $01c0                                     ; $5d0b: $01 $c0 $01
	and b                                            ; $5d0e: $a0
	ld bc, $0700                                     ; $5d0f: $01 $00 $07
	pop hl                                           ; $5d12: $e1
	ld [bc], a                                       ; $5d13: $02
	inc bc                                           ; $5d14: $03
	inc de                                           ; $5d15: $13
	add c                                            ; $5d16: $81
	ret nz                                           ; $5d17: $c0

	dec de                                           ; $5d18: $1b
	jp nc, $d002                                     ; $5d19: $d2 $02 $d0

	pop de                                           ; $5d1c: $d1
	ld b, $c0                                        ; $5d1d: $06 $c0
	ld bc, $04a0                                     ; $5d1f: $01 $a0 $04
	nop                                              ; $5d22: $00
	inc de                                           ; $5d23: $13
	nop                                              ; $5d24: $00
	ld b, $c0                                        ; $5d25: $06 $c0
	ld bc, $04a0                                     ; $5d27: $01 $a0 $04
	nop                                              ; $5d2a: $00
	ld d, $c0                                        ; $5d2b: $16 $c0
	ld bc, $01a0                                     ; $5d2d: $01 $a0 $01
	nop                                              ; $5d30: $00
	ld hl, $8040                                     ; $5d31: $21 $40 $80
	nop                                              ; $5d34: $00
	set 7, h                                         ; $5d35: $cb $fc
	pop bc                                           ; $5d37: $c1
	ld b, c                                          ; $5d38: $41
	jp nc, $0284                                     ; $5d39: $d2 $84 $02

	ld l, $83                                        ; $5d3c: $2e $83
	ld bc, $d1de                                     ; $5d3e: $01 $de $d1
	inc e                                            ; $5d41: $1c
	pop hl                                           ; $5d42: $e1
	ld [bc], a                                       ; $5d43: $02
	inc bc                                           ; $5d44: $03
	dec de                                           ; $5d45: $1b
	ret nz                                           ; $5d46: $c0

	ld bc, $04a0                                     ; $5d47: $01 $a0 $04
	nop                                              ; $5d4a: $00
	daa                                              ; $5d4b: $27
	ret nz                                           ; $5d4c: $c0

	ld bc, $01a0                                     ; $5d4d: $01 $a0 $01
	nop                                              ; $5d50: $00
	ld [hl], $c0                                     ; $5d51: $36 $c0
	dec h                                            ; $5d53: $25
	pop de                                           ; $5d54: $d1
	jp nc, $24c0                                     ; $5d55: $d2 $c0 $24

	jp nc, $c0d2                                     ; $5d58: $d2 $d2 $c0

	inc hl                                           ; $5d5b: $23
	jp c, $c1d2                                      ; $5d5c: $da $d2 $c1

	dec c                                            ; $5d5f: $0d
	add e                                            ; $5d60: $83
	ret nz                                           ; $5d61: $c0

	dec de                                           ; $5d62: $1b
	jp nc, $d002                                     ; $5d63: $d2 $02 $d0

	pop de                                           ; $5d66: $d1
	ld d, b                                          ; $5d67: $50
	add d                                            ; $5d68: $82
	add d                                            ; $5d69: $82
	ld bc, $02cc                                     ; $5d6a: $01 $cc $02
	pop de                                           ; $5d6d: $d1
	jp nc, $e121                                     ; $5d6e: $d2 $21 $e1

	ld [bc], a                                       ; $5d71: $02
	inc bc                                           ; $5d72: $03
	inc de                                           ; $5d73: $13
	pop bc                                           ; $5d74: $c1
	or d                                             ; $5d75: $b2
	db $e3                                           ; $5d76: $e3
	nop                                              ; $5d77: $00
	dec [hl]                                         ; $5d78: $35
	ret nz                                           ; $5d79: $c0

	ld bc, $04a0                                     ; $5d7a: $01 $a0 $04
	nop                                              ; $5d7d: $00
	dec a                                            ; $5d7e: $3d
	ret nz                                           ; $5d7f: $c0

	ld bc, $01a0                                     ; $5d80: $01 $a0 $01
	nop                                              ; $5d83: $00
	ld b, h                                          ; $5d84: $44
	ret nz                                           ; $5d85: $c0

	ld bc, $04a0                                     ; $5d86: $01 $a0 $04
	nop                                              ; $5d89: $00
	ld c, d                                          ; $5d8a: $4a
	ret nz                                           ; $5d8b: $c0

	ld bc, $01a0                                     ; $5d8c: $01 $a0 $01
	nop                                              ; $5d8f: $00
	ld d, b                                          ; $5d90: $50
	ld bc, $10d3                                     ; $5d91: $01 $d3 $10
	pop hl                                           ; $5d94: $e1
	ld [bc], a                                       ; $5d95: $02
	inc bc                                           ; $5d96: $03
	rla                                              ; $5d97: $17
	ret nz                                           ; $5d98: $c0

	ld bc, $04a0                                     ; $5d99: $01 $a0 $04
	nop                                              ; $5d9c: $00
	ld d, l                                          ; $5d9d: $55
	ret nz                                           ; $5d9e: $c0

	ld bc, $01a0                                     ; $5d9f: $01 $a0 $01
	nop                                              ; $5da2: $00
	ld h, b                                          ; $5da3: $60
	ld [bc], a                                       ; $5da4: $02
	call nc, $10d5                                   ; $5da5: $d4 $d5 $10
	pop hl                                           ; $5da8: $e1
	ld [bc], a                                       ; $5da9: $02
	inc bc                                           ; $5daa: $03
	dec de                                           ; $5dab: $1b
	ret nz                                           ; $5dac: $c0

	ld bc, $04a0                                     ; $5dad: $01 $a0 $04
	nop                                              ; $5db0: $00
	ld h, h                                          ; $5db1: $64
	ret nz                                           ; $5db2: $c0

	ld bc, $01a0                                     ; $5db3: $01 $a0 $01
	nop                                              ; $5db6: $00
	ld l, [hl]                                       ; $5db7: $6e
	ld [bc], a                                       ; $5db8: $02
	jp nc, $50d3                                     ; $5db9: $d2 $d3 $50

	add d                                            ; $5dbc: $82
	add d                                            ; $5dbd: $82
	ld bc, $02cc                                     ; $5dbe: $01 $cc $02
	pop de                                           ; $5dc1: $d1
	jp nc, $e121                                     ; $5dc2: $d2 $21 $e1

	ld [bc], a                                       ; $5dc5: $02
	inc bc                                           ; $5dc6: $03
	inc de                                           ; $5dc7: $13
	pop bc                                           ; $5dc8: $c1
	or d                                             ; $5dc9: $b2
	db $e3                                           ; $5dca: $e3
	nop                                              ; $5dcb: $00
	dec [hl]                                         ; $5dcc: $35
	ret nz                                           ; $5dcd: $c0

	ld bc, $04a0                                     ; $5dce: $01 $a0 $04
	nop                                              ; $5dd1: $00
	dec a                                            ; $5dd2: $3d
	ret nz                                           ; $5dd3: $c0

	ld bc, $01a0                                     ; $5dd4: $01 $a0 $01
	nop                                              ; $5dd7: $00
	ld b, h                                          ; $5dd8: $44
	ret nz                                           ; $5dd9: $c0

	ld bc, $04a0                                     ; $5dda: $01 $a0 $04
	nop                                              ; $5ddd: $00
	ld [hl], e                                       ; $5dde: $73
	ret nz                                           ; $5ddf: $c0

	ld bc, $01a0                                     ; $5de0: $01 $a0 $01
	nop                                              ; $5de3: $00
	ld d, b                                          ; $5de4: $50
	ld bc, $10d3                                     ; $5de5: $01 $d3 $10
	pop hl                                           ; $5de8: $e1
	ld [bc], a                                       ; $5de9: $02
	inc bc                                           ; $5dea: $03
	rla                                              ; $5deb: $17
	ret nz                                           ; $5dec: $c0

	ld bc, $04a0                                     ; $5ded: $01 $a0 $04
	nop                                              ; $5df0: $00
	add e                                            ; $5df1: $83
	ret nz                                           ; $5df2: $c0

	ld bc, $01a0                                     ; $5df3: $01 $a0 $01
	nop                                              ; $5df6: $00
	ld l, [hl]                                       ; $5df7: $6e
	ld [bc], a                                       ; $5df8: $02
	call nc, $10d5                                   ; $5df9: $d4 $d5 $10
	pop hl                                           ; $5dfc: $e1
	ld [bc], a                                       ; $5dfd: $02
	inc bc                                           ; $5dfe: $03
	dec de                                           ; $5dff: $1b
	ret nz                                           ; $5e00: $c0

	ld bc, $04a0                                     ; $5e01: $01 $a0 $04
	nop                                              ; $5e04: $00
	adc l                                            ; $5e05: $8d
	ret nz                                           ; $5e06: $c0

	ld bc, $01a0                                     ; $5e07: $01 $a0 $01
	nop                                              ; $5e0a: $00
	sub e                                            ; $5e0b: $93
	ld bc, $4bd4                                     ; $5e0c: $01 $d4 $4b
	add d                                            ; $5e0f: $82
	add d                                            ; $5e10: $82
	ld bc, $02cc                                     ; $5e11: $01 $cc $02
	pop de                                           ; $5e14: $d1
	jp nc, $e11c                                     ; $5e15: $d2 $1c $e1

	ld [bc], a                                       ; $5e18: $02
	inc bc                                           ; $5e19: $03
	inc de                                           ; $5e1a: $13
	ret nz                                           ; $5e1b: $c0

	ld bc, $04a0                                     ; $5e1c: $01 $a0 $04
	nop                                              ; $5e1f: $00
	sub l                                            ; $5e20: $95
	ret nz                                           ; $5e21: $c0

	ld bc, $01a0                                     ; $5e22: $01 $a0 $01
	nop                                              ; $5e25: $00
	ld b, h                                          ; $5e26: $44
	ret nz                                           ; $5e27: $c0

	ld bc, $04a0                                     ; $5e28: $01 $a0 $04
	nop                                              ; $5e2b: $00
	sbc l                                            ; $5e2c: $9d
	ret nz                                           ; $5e2d: $c0

	ld bc, $01a0                                     ; $5e2e: $01 $a0 $01
	nop                                              ; $5e31: $00
	sub e                                            ; $5e32: $93
	ld bc, $10d3                                     ; $5e33: $01 $d3 $10
	pop hl                                           ; $5e36: $e1
	ld [bc], a                                       ; $5e37: $02
	inc bc                                           ; $5e38: $03
	rla                                              ; $5e39: $17
	ret nz                                           ; $5e3a: $c0

	ld bc, $04a0                                     ; $5e3b: $01 $a0 $04
	nop                                              ; $5e3e: $00
	and e                                            ; $5e3f: $a3
	ret nz                                           ; $5e40: $c0

	ld bc, $01a0                                     ; $5e41: $01 $a0 $01
	nop                                              ; $5e44: $00
	ld l, [hl]                                       ; $5e45: $6e
	ld [bc], a                                       ; $5e46: $02
	call nc, $10d5                                   ; $5e47: $d4 $d5 $10
	pop hl                                           ; $5e4a: $e1
	ld [bc], a                                       ; $5e4b: $02
	inc bc                                           ; $5e4c: $03
	dec de                                           ; $5e4d: $1b
	ret nz                                           ; $5e4e: $c0

	ld bc, $04a0                                     ; $5e4f: $01 $a0 $04
	nop                                              ; $5e52: $00
	xor e                                            ; $5e53: $ab
	ret nz                                           ; $5e54: $c0

	ld bc, $01a0                                     ; $5e55: $01 $a0 $01
	nop                                              ; $5e58: $00
	sub e                                            ; $5e59: $93
	ld bc, $10d5                                     ; $5e5a: $01 $d5 $10
	pop hl                                           ; $5e5d: $e1
	ld [bc], a                                       ; $5e5e: $02
	inc bc                                           ; $5e5f: $03
	dec de                                           ; $5e60: $1b
	ret nz                                           ; $5e61: $c0

	ld bc, $04a0                                     ; $5e62: $01 $a0 $04
	nop                                              ; $5e65: $00
	xor a                                            ; $5e66: $af
	ret nz                                           ; $5e67: $c0

	ld bc, $01a0                                     ; $5e68: $01 $a0 $01
	nop                                              ; $5e6b: $00
	cp c                                             ; $5e6c: $b9
	pop hl                                           ; $5e6d: $e1
	ld [bc], a                                       ; $5e6e: $02
	inc bc                                           ; $5e6f: $03
	daa                                              ; $5e70: $27
	ei                                               ; $5e71: $fb
	cp $0a                                           ; $5e72: $fe $0a
	db $fc                                           ; $5e74: $fc
	ret nz                                           ; $5e75: $c0

	ld h, l                                          ; $5e76: $65
	ret nz                                           ; $5e77: $c0

	ld [hl], c                                       ; $5e78: $71
	db $fc                                           ; $5e79: $fc
	ret nz                                           ; $5e7a: $c0

	ld h, [hl]                                       ; $5e7b: $66
	ret nz                                           ; $5e7c: $c0

	ld [hl], d                                       ; $5e7d: $72
	cpl                                              ; $5e7e: $2f
	ei                                               ; $5e7f: $fb
	ld hl, sp-$40                                    ; $5e80: $f8 $c0
	rla                                              ; $5e82: $17
	jp nc, $3ce0                                     ; $5e83: $d2 $e0 $3c

	daa                                              ; $5e86: $27
	add b                                            ; $5e87: $80
	ret nz                                           ; $5e88: $c0

	dec de                                           ; $5e89: $1b
	jp nc, $d002                                     ; $5e8a: $d2 $02 $d0

	pop de                                           ; $5e8d: $d1
	rra                                              ; $5e8e: $1f
	ret nz                                           ; $5e8f: $c0

	ld bc, $04a0                                     ; $5e90: $01 $a0 $04
	nop                                              ; $5e93: $00
	cp l                                             ; $5e94: $bd
	ret nz                                           ; $5e95: $c0

	ld bc, $01a0                                     ; $5e96: $01 $a0 $01
	nop                                              ; $5e99: $00
	ret nz                                           ; $5e9a: $c0

	ret nc                                           ; $5e9b: $d0

	add e                                            ; $5e9c: $83
	ld [bc], a                                       ; $5e9d: $02
	ld l, l                                          ; $5e9e: $6d
	jp nc, Jump_07f_46e1                             ; $5e9f: $d2 $e1 $46

	ld bc, $c0e1                                     ; $5ea2: $01 $e1 $c0
	ld bc, $01a0                                     ; $5ea5: $01 $a0 $01
	nop                                              ; $5ea8: $00
	jp nz, $8000                                     ; $5ea9: $c2 $00 $80

	nop                                              ; $5eac: $00
	dec [hl]                                         ; $5ead: $35
	ei                                               ; $5eae: $fb
	db $fd                                           ; $5eaf: $fd
	add h                                            ; $5eb0: $84
	ld [bc], a                                       ; $5eb1: $02
	ld l, $d0                                        ; $5eb2: $2e $d0
	add hl, bc                                       ; $5eb4: $09
	pop bc                                           ; $5eb5: $c1
	ccf                                              ; $5eb6: $3f
	jp nc, $0284                                     ; $5eb7: $d2 $84 $02

	ld l, $83                                        ; $5eba: $2e $83
	ld bc, $e4de                                     ; $5ebc: $01 $de $e4
	nop                                              ; $5ebf: $00
	ld [bc], a                                       ; $5ec0: $02
	add hl, bc                                       ; $5ec1: $09
	add [hl]                                         ; $5ec2: $86
	add d                                            ; $5ec3: $82
	ret nz                                           ; $5ec4: $c0

	dec de                                           ; $5ec5: $1b
	jp nc, $d002                                     ; $5ec6: $d2 $02 $d0

	pop de                                           ; $5ec9: $d1
	ld b, $c0                                        ; $5eca: $06 $c0
	ld bc, $04a0                                     ; $5ecc: $01 $a0 $04
	nop                                              ; $5ecf: $00
	rst SubAFromHL                                          ; $5ed0: $d7
	inc bc                                           ; $5ed1: $03
	jp nc, $d4d3                                     ; $5ed2: $d2 $d3 $d4

	ld b, $c0                                        ; $5ed5: $06 $c0
	ld bc, $04a0                                     ; $5ed7: $01 $a0 $04
	nop                                              ; $5eda: $00
	db $dd                                           ; $5edb: $dd
	ld bc, $0cd5                                     ; $5edc: $01 $d5 $0c
	ret nz                                           ; $5edf: $c0

	ld bc, $04a0                                     ; $5ee0: $01 $a0 $04
	nop                                              ; $5ee3: $00
	pop hl                                           ; $5ee4: $e1
	pop bc                                           ; $5ee5: $c1
	ld e, e                                          ; $5ee6: $5b
	ret nz                                           ; $5ee7: $c0

	inc c                                            ; $5ee8: $0c
	ldh [rAUD3HIGH], a                               ; $5ee9: $e0 $1e
	ld h, c                                          ; $5eeb: $61
	cp $09                                           ; $5eec: $fe $09
	db $fd                                           ; $5eee: $fd
	ret nz                                           ; $5eef: $c0

	ld h, h                                          ; $5ef0: $64
	ldh [$63], a                                     ; $5ef1: $e0 $63
	db $fc                                           ; $5ef3: $fc
	ret nz                                           ; $5ef4: $c0

	ld h, l                                          ; $5ef5: $65
	push de                                          ; $5ef6: $d5
	dec de                                           ; $5ef7: $1b
	add d                                            ; $5ef8: $82
	ret nz                                           ; $5ef9: $c0

	ld h, [hl]                                       ; $5efa: $66
	ld bc, $05d3                                     ; $5efb: $01 $d3 $05
	ret nc                                           ; $5efe: $d0

	add e                                            ; $5eff: $83
	ld bc, $d272                                     ; $5f00: $01 $72 $d2
	ld bc, $05d4                                     ; $5f03: $01 $d4 $05
	ret nc                                           ; $5f06: $d0

	add e                                            ; $5f07: $83
	ld bc, $d276                                     ; $5f08: $01 $76 $d2
	ld bc, $05d5                                     ; $5f0b: $01 $d5 $05
	ret nc                                           ; $5f0e: $d0

	add e                                            ; $5f0f: $83
	ld bc, $d27a                                     ; $5f10: $01 $7a $d2
	cp $09                                           ; $5f13: $fe $09
	db $fc                                           ; $5f15: $fc
	ret nz                                           ; $5f16: $c0

	ld h, h                                          ; $5f17: $64
	ldh [$63], a                                     ; $5f18: $e0 $63
	db $fc                                           ; $5f1a: $fc
	ret nz                                           ; $5f1b: $c0

	ld h, l                                          ; $5f1c: $65
	push de                                          ; $5f1d: $d5
	inc hl                                           ; $5f1e: $23
	add e                                            ; $5f1f: $83
	ret nz                                           ; $5f20: $c0

jr_07f_5f21:
	ld h, [hl]                                       ; $5f21: $66
	ld bc, $05d2                                     ; $5f22: $01 $d2 $05
	ret nc                                           ; $5f25: $d0

	add e                                            ; $5f26: $83
	ld bc, $d272                                     ; $5f27: $01 $72 $d2
	ld bc, $05d3                                     ; $5f2a: $01 $d3 $05
	ret nc                                           ; $5f2d: $d0

	add e                                            ; $5f2e: $83
	ld bc, $d276                                     ; $5f2f: $01 $76 $d2
	ld bc, $05d4                                     ; $5f32: $01 $d4 $05
	ret nc                                           ; $5f35: $d0

	add e                                            ; $5f36: $83
	ld bc, $d27a                                     ; $5f37: $01 $7a $d2
	ld bc, $05d5                                     ; $5f3a: $01 $d5 $05
	ret nc                                           ; $5f3d: $d0

	add e                                            ; $5f3e: $83
	ld bc, $d27e                                     ; $5f3f: $01 $7e $d2
	nop                                              ; $5f42: $00
	ret nz                                           ; $5f43: $c0

	set 4, l                                         ; $5f44: $cb $e5
	nop                                              ; $5f46: $00
	jr nz, jr_07f_5f21                               ; $5f47: $20 $d8

	halt                                             ; $5f49: $76
	dec b                                            ; $5f4a: $05
	add hl, bc                                       ; $5f4b: $09
	pop bc                                           ; $5f4c: $c1
	add hl, sp                                       ; $5f4d: $39
	nop                                              ; $5f4e: $00
	add b                                            ; $5f4f: $80
	ld [bc], a                                       ; $5f50: $02
	ld [hl], h                                       ; $5f51: $74
	db $fd                                           ; $5f52: $fd
	pop bc                                           ; $5f53: $c1
	ld [hl-], a                                      ; $5f54: $32
	adc e                                            ; $5f55: $8b
	ld [bc], a                                       ; $5f56: $02
	inc [hl]                                         ; $5f57: $34
	ld [bc], a                                       ; $5f58: $02
	or b                                             ; $5f59: $b0
	ld e, c                                          ; $5f5a: $59
	dec bc                                           ; $5f5b: $0b
	pop hl                                           ; $5f5c: $e1
	ld [bc], a                                       ; $5f5d: $02
	ld bc, $e0aa                                     ; $5f5e: $01 $aa $e0
	ld bc, $e526                                     ; $5f61: $01 $26 $e5
	dec e                                            ; $5f64: $1d
	nop                                              ; $5f65: $00
	nop                                              ; $5f66: $00
	ld [bc], a                                       ; $5f67: $02
	or b                                             ; $5f68: $b0
	ld [de], a                                       ; $5f69: $12
	dec bc                                           ; $5f6a: $0b
	pop hl                                           ; $5f6b: $e1
	ld [bc], a                                       ; $5f6c: $02
	ld bc, $e0aa                                     ; $5f6d: $01 $aa $e0
	ld bc, $e517                                     ; $5f70: $01 $17 $e5
	dec e                                            ; $5f73: $1d
	ld bc, $0244                                     ; $5f74: $01 $44 $02
	or b                                             ; $5f77: $b0
	ld e, d                                          ; $5f78: $5a
	dec bc                                           ; $5f79: $0b
	pop hl                                           ; $5f7a: $e1
	ld [bc], a                                       ; $5f7b: $02
	ld bc, $e0aa                                     ; $5f7c: $01 $aa $e0
	ld bc, $e508                                     ; $5f7f: $01 $08 $e5
	dec e                                            ; $5f82: $1d
	inc bc                                           ; $5f83: $03
	sub e                                            ; $5f84: $93
	ld [bc], a                                       ; $5f85: $02
	or b                                             ; $5f86: $b0
	inc d                                            ; $5f87: $14
	dec bc                                           ; $5f88: $0b
	pop hl                                           ; $5f89: $e1
	ld [bc], a                                       ; $5f8a: $02
	ld bc, $e0aa                                     ; $5f8b: $01 $aa $e0
	nop                                              ; $5f8e: $00
	ld sp, hl                                        ; $5f8f: $f9
	push hl                                          ; $5f90: $e5
	dec e                                            ; $5f91: $1d
	ld [$021b], sp                                   ; $5f92: $08 $1b $02
	or b                                             ; $5f95: $b0
	ld e, e                                          ; $5f96: $5b
	dec bc                                           ; $5f97: $0b
	pop hl                                           ; $5f98: $e1
	ld [bc], a                                       ; $5f99: $02
	ld bc, $e0aa                                     ; $5f9a: $01 $aa $e0
	nop                                              ; $5f9d: $00
	ld [$1de5], a                                    ; $5f9e: $ea $e5 $1d
	ld a, [bc]                                       ; $5fa1: $0a
	ld c, d                                          ; $5fa2: $4a
	ld [bc], a                                       ; $5fa3: $02
	or b                                             ; $5fa4: $b0
	ld d, $0b                                        ; $5fa5: $16 $0b
	pop hl                                           ; $5fa7: $e1
	ld [bc], a                                       ; $5fa8: $02
	ld bc, $e0aa                                     ; $5fa9: $01 $aa $e0
	nop                                              ; $5fac: $00
	db $db                                           ; $5fad: $db
	push hl                                          ; $5fae: $e5
	dec e                                            ; $5faf: $1d
	inc c                                            ; $5fb0: $0c
	ld a, c                                          ; $5fb1: $79
	ld [bc], a                                       ; $5fb2: $02
	or b                                             ; $5fb3: $b0
	jr jr_07f_5fc1                                   ; $5fb4: $18 $0b

	pop hl                                           ; $5fb6: $e1
	ld [bc], a                                       ; $5fb7: $02
	ld bc, $e0aa                                     ; $5fb8: $01 $aa $e0
	nop                                              ; $5fbb: $00
	call z, $1de5                                    ; $5fbc: $cc $e5 $1d
	dec c                                            ; $5fbf: $0d
	push hl                                          ; $5fc0: $e5

jr_07f_5fc1:
	ld [bc], a                                       ; $5fc1: $02
	or b                                             ; $5fc2: $b0
	inc de                                           ; $5fc3: $13
	dec bc                                           ; $5fc4: $0b
	pop hl                                           ; $5fc5: $e1
	ld [bc], a                                       ; $5fc6: $02
	ld bc, $e0aa                                     ; $5fc7: $01 $aa $e0
	nop                                              ; $5fca: $00
	cp l                                             ; $5fcb: $bd
	push hl                                          ; $5fcc: $e5
	dec e                                            ; $5fcd: $1d
	db $10                                           ; $5fce: $10
	call nz, $b002                                   ; $5fcf: $c4 $02 $b0
	ld e, h                                          ; $5fd2: $5c
	dec bc                                           ; $5fd3: $0b
	pop hl                                           ; $5fd4: $e1
	ld [bc], a                                       ; $5fd5: $02
	ld bc, $e0aa                                     ; $5fd6: $01 $aa $e0
	nop                                              ; $5fd9: $00
	xor [hl]                                         ; $5fda: $ae
	push hl                                          ; $5fdb: $e5
	dec e                                            ; $5fdc: $1d
	dec d                                            ; $5fdd: $15
	cpl                                              ; $5fde: $2f
	ld [bc], a                                       ; $5fdf: $02
	or b                                             ; $5fe0: $b0
	ld e, l                                          ; $5fe1: $5d
	dec bc                                           ; $5fe2: $0b
	pop hl                                           ; $5fe3: $e1
	ld [bc], a                                       ; $5fe4: $02
	ld bc, $e0aa                                     ; $5fe5: $01 $aa $e0
	nop                                              ; $5fe8: $00
	sbc a                                            ; $5fe9: $9f
	push hl                                          ; $5fea: $e5
	dec e                                            ; $5feb: $1d
	dec d                                            ; $5fec: $15
	rst FarCall                                          ; $5fed: $f7
	ld [bc], a                                       ; $5fee: $02
	or b                                             ; $5fef: $b0
	ld e, [hl]                                       ; $5ff0: $5e
	dec bc                                           ; $5ff1: $0b
	pop hl                                           ; $5ff2: $e1
	ld [bc], a                                       ; $5ff3: $02
	ld bc, $e0aa                                     ; $5ff4: $01 $aa $e0
	nop                                              ; $5ff7: $00
	sub b                                            ; $5ff8: $90
	push hl                                          ; $5ff9: $e5
	ld e, $00                                        ; $5ffa: $1e $00
	nop                                              ; $5ffc: $00
	ld [bc], a                                       ; $5ffd: $02
	or b                                             ; $5ffe: $b0
	ld e, a                                          ; $5fff: $5f
	dec bc                                           ; $6000: $0b
	pop hl                                           ; $6001: $e1
	ld [bc], a                                       ; $6002: $02
	ld bc, $e0aa                                     ; $6003: $01 $aa $e0
	nop                                              ; $6006: $00
	add c                                            ; $6007: $81
	push hl                                          ; $6008: $e5
	ld e, $00                                        ; $6009: $1e $00
	jp z, $b002                                      ; $600b: $ca $02 $b0

	ld h, b                                          ; $600e: $60
	dec bc                                           ; $600f: $0b
	pop hl                                           ; $6010: $e1
	ld [bc], a                                       ; $6011: $02
	ld bc, $e0aa                                     ; $6012: $01 $aa $e0
	nop                                              ; $6015: $00
	ld [hl], d                                       ; $6016: $72
	push hl                                          ; $6017: $e5
	ld e, $02                                        ; $6018: $1e $02
	ld b, e                                          ; $601a: $43
	ld [bc], a                                       ; $601b: $02
	or b                                             ; $601c: $b0
	dec d                                            ; $601d: $15
	dec bc                                           ; $601e: $0b
	pop hl                                           ; $601f: $e1
	ld [bc], a                                       ; $6020: $02
	ld bc, $e0aa                                     ; $6021: $01 $aa $e0
	nop                                              ; $6024: $00
	ld h, e                                          ; $6025: $63
	push hl                                          ; $6026: $e5
	ld e, $07                                        ; $6027: $1e $07
	db $e4                                           ; $6029: $e4
	ld [bc], a                                       ; $602a: $02
	or b                                             ; $602b: $b0
	ld h, c                                          ; $602c: $61
	dec bc                                           ; $602d: $0b
	pop hl                                           ; $602e: $e1
	ld [bc], a                                       ; $602f: $02
	ld bc, $e0aa                                     ; $6030: $01 $aa $e0
	nop                                              ; $6033: $00
	ld d, h                                          ; $6034: $54
	push hl                                          ; $6035: $e5
	ld e, $09                                        ; $6036: $1e $09
	adc a                                            ; $6038: $8f
	ld [bc], a                                       ; $6039: $02
	or b                                             ; $603a: $b0
	ld h, d                                          ; $603b: $62
	dec bc                                           ; $603c: $0b
	pop hl                                           ; $603d: $e1
	ld [bc], a                                       ; $603e: $02
	ld bc, $e0aa                                     ; $603f: $01 $aa $e0
	nop                                              ; $6042: $00
	ld b, l                                          ; $6043: $45
	push hl                                          ; $6044: $e5
	ld e, $0a                                        ; $6045: $1e $0a
	ei                                               ; $6047: $fb
	ld [bc], a                                       ; $6048: $02
	or b                                             ; $6049: $b0
	ld h, e                                          ; $604a: $63
	dec bc                                           ; $604b: $0b
	pop hl                                           ; $604c: $e1
	ld [bc], a                                       ; $604d: $02
	ld bc, $e0aa                                     ; $604e: $01 $aa $e0
	nop                                              ; $6051: $00
	ld [hl], $e5                                     ; $6052: $36 $e5
	ld e, $0c                                        ; $6054: $1e $0c
	and [hl]                                         ; $6056: $a6
	ld [bc], a                                       ; $6057: $02
	or b                                             ; $6058: $b0
	ld h, h                                          ; $6059: $64
	dec bc                                           ; $605a: $0b
	pop hl                                           ; $605b: $e1
	ld [bc], a                                       ; $605c: $02
	ld bc, $e0aa                                     ; $605d: $01 $aa $e0
	nop                                              ; $6060: $00
	daa                                              ; $6061: $27
	push hl                                          ; $6062: $e5
	ld e, $0d                                        ; $6063: $1e $0d
	sub d                                            ; $6065: $92
	ld [bc], a                                       ; $6066: $02
	or b                                             ; $6067: $b0
	ld h, l                                          ; $6068: $65
	ld c, $c0                                        ; $6069: $0e $c0
	and a                                            ; $606b: $a7
	db $d3                                           ; $606c: $d3
	db $d3                                           ; $606d: $d3
	pop de                                           ; $606e: $d1
	ret nz                                           ; $606f: $c0

	xor h                                            ; $6070: $ac
	ldh [rP1], a                                     ; $6071: $e0 $00
	dec d                                            ; $6073: $15
	push hl                                          ; $6074: $e5
	ld e, $0f                                        ; $6075: $1e $0f
	ld b, b                                          ; $6077: $40
	ld [bc], a                                       ; $6078: $02
	or b                                             ; $6079: $b0
	ld h, [hl]                                       ; $607a: $66
	dec bc                                           ; $607b: $0b
	pop hl                                           ; $607c: $e1
	ld [bc], a                                       ; $607d: $02
	ld bc, $e0aa                                     ; $607e: $01 $aa $e0
	nop                                              ; $6081: $00
	ld b, $e5                                        ; $6082: $06 $e5
	ld e, $10                                        ; $6084: $1e $10
	or c                                             ; $6086: $b1
	jp nz, $6117                                     ; $6087: $c2 $17 $61

	ld hl, sp-$40                                    ; $608a: $f8 $c0
	add e                                            ; $608c: $83
	sub $e0                                          ; $608d: $d6 $e0
	ld e, $39                                        ; $608f: $1e $39
	ret nz                                           ; $6091: $c0

	and l                                            ; $6092: $a5
	ret nz                                           ; $6093: $c0

	inc c                                            ; $6094: $0c
	ldh [$50], a                                     ; $6095: $e0 $50
	pop hl                                           ; $6097: $e1
	ld [bc], a                                       ; $6098: $02
	inc bc                                           ; $6099: $03
	rra                                              ; $609a: $1f
	ret nz                                           ; $609b: $c0

	ld bc, $05a0                                     ; $609c: $01 $a0 $05
	nop                                              ; $609f: $00
	ld bc, $5bc1                                     ; $60a0: $01 $c1 $5b
	ret nz                                           ; $60a3: $c0

	ld bc, $01a0                                     ; $60a4: $01 $a0 $01
	nop                                              ; $60a7: $00
	ld [bc], a                                       ; $60a8: $02
	ret nz                                           ; $60a9: $c0

	ld bc, $01a0                                     ; $60aa: $01 $a0 $01
	nop                                              ; $60ad: $00
	inc c                                            ; $60ae: $0c
	ret nz                                           ; $60af: $c0

	ld bc, $01a0                                     ; $60b0: $01 $a0 $01
	nop                                              ; $60b3: $00
	jr @-$3e                                         ; $60b4: $18 $c0

	dec h                                            ; $60b6: $25
	pop de                                           ; $60b7: $d1
	db $d3                                           ; $60b8: $d3
	ret nz                                           ; $60b9: $c0

	inc h                                            ; $60ba: $24
	pop de                                           ; $60bb: $d1
	db $d3                                           ; $60bc: $d3
	ret nz                                           ; $60bd: $c0

	inc hl                                           ; $60be: $23
	push de                                          ; $60bf: $d5
	db $d3                                           ; $60c0: $d3
	pop bc                                           ; $60c1: $c1
	ld c, h                                          ; $60c2: $4c
	db $db                                           ; $60c3: $db
	pop bc                                           ; $60c4: $c1

jr_07f_60c5:
	dec sp                                           ; $60c5: $3b

jr_07f_60c6:
	push hl                                          ; $60c6: $e5
	nop                                              ; $60c7: $00
	jr nz, @-$26                                     ; $60c8: $20 $d8

	db $fc                                           ; $60ca: $fc
	ret nz                                           ; $60cb: $c0

	dec de                                           ; $60cc: $1b
	db $d3                                           ; $60cd: $d3
	push de                                          ; $60ce: $d5

jr_07f_60cf:
	dec e                                            ; $60cf: $1d
	ret nz                                           ; $60d0: $c0

	inc c                                            ; $60d1: $0c
	ldh [$78], a                                     ; $60d2: $e0 $78
	pop hl                                           ; $60d4: $e1
	ld [bc], a                                       ; $60d5: $02
	rlca                                             ; $60d6: $07
	cp a                                             ; $60d7: $bf
	ret nz                                           ; $60d8: $c0

	ld bc, $01a0                                     ; $60d9: $01 $a0 $01
	nop                                              ; $60dc: $00
	ld e, $c0                                        ; $60dd: $1e $c0
	ld bc, $01a0                                     ; $60df: $01 $a0 $01
	nop                                              ; $60e2: $00
	ld h, $c1                                        ; $60e3: $26 $c1
	ld c, h                                          ; $60e5: $4c
	db $db                                           ; $60e6: $db
	pop bc                                           ; $60e7: $c1
	dec sp                                           ; $60e8: $3b
	push hl                                          ; $60e9: $e5
	nop                                              ; $60ea: $00
	jr nz, jr_07f_60c5                               ; $60eb: $20 $d8

	and a                                            ; $60ed: $a7
	ret nz                                           ; $60ee: $c0

	ld h, $e0                                        ; $60ef: $26 $e0
	jr z, jr_07f_60c6                                ; $60f1: $28 $d3

	ld h, c                                          ; $60f3: $61
	add b                                            ; $60f4: $80
	nop                                              ; $60f5: $00
	db $db                                           ; $60f6: $db
	ld b, e                                          ; $60f7: $43
	ret nz                                           ; $60f8: $c0

	and l                                            ; $60f9: $a5
	ret nz                                           ; $60fa: $c0

	ld bc, $01a0                                     ; $60fb: $01 $a0 $01
	nop                                              ; $60fe: $00
	jr nc, @-$7c                                     ; $60ff: $30 $82

	ret nz                                           ; $6101: $c0

	dec de                                           ; $6102: $1b
	db $d3                                           ; $6103: $d3
	ld [bc], a                                       ; $6104: $02
	ret nc                                           ; $6105: $d0

	pop de                                           ; $6106: $d1
	inc c                                            ; $6107: $0c
	ret nz                                           ; $6108: $c0

	ld bc, $05a0                                     ; $6109: $01 $a0 $05
	nop                                              ; $610c: $00
	jr c, jr_07f_60cf                                ; $610d: $38 $c0

	ld bc, $01a0                                     ; $610f: $01 $a0 $01
	nop                                              ; $6112: $00
	ld b, e                                          ; $6113: $43
	ld [bc], a                                       ; $6114: $02
	jp nc, $0cd3                                     ; $6115: $d2 $d3 $0c

	ret nz                                           ; $6118: $c0

	ld bc, $05a0                                     ; $6119: $01 $a0 $05
	nop                                              ; $611c: $00
	ld c, c                                          ; $611d: $49
	ret nz                                           ; $611e: $c0

	ld bc, $01a0                                     ; $611f: $01 $a0 $01
	nop                                              ; $6122: $00
	ld d, l                                          ; $6123: $55
	ld bc, $0cd4                                     ; $6124: $01 $d4 $0c
	ret nz                                           ; $6127: $c0

	ld bc, $05a0                                     ; $6128: $01 $a0 $05
	nop                                              ; $612b: $00
	ld e, e                                          ; $612c: $5b
	ret nz                                           ; $612d: $c0

	ld bc, $01a0                                     ; $612e: $01 $a0 $01
	nop                                              ; $6131: $00
	ld h, l                                          ; $6132: $65
	ret nz                                           ; $6133: $c0

	inc hl                                           ; $6134: $23
	ret c                                            ; $6135: $d8

	db $d3                                           ; $6136: $d3
	ld b, b                                          ; $6137: $40
	add b                                            ; $6138: $80
	nop                                              ; $6139: $00
	db $db                                           ; $613a: $db
	add b                                            ; $613b: $80
	ld [bc], a                                       ; $613c: $02
	dec l                                            ; $613d: $2d
	inc bc                                           ; $613e: $03
	ldh [rSB], a                                     ; $613f: $e0 $01
	ld h, b                                          ; $6141: $60
	ld c, c                                          ; $6142: $49
	or b                                             ; $6143: $b0
	ld a, a                                          ; $6144: $7f
	dec sp                                           ; $6145: $3b
	ret nz                                           ; $6146: $c0

	and l                                            ; $6147: $a5
	ret nz                                           ; $6148: $c0

	ld bc, $01a0                                     ; $6149: $01 $a0 $01
	nop                                              ; $614c: $00
	ld l, a                                          ; $614d: $6f
	add d                                            ; $614e: $82
	ret nz                                           ; $614f: $c0

	dec de                                           ; $6150: $1b
	db $d3                                           ; $6151: $d3
	ld [bc], a                                       ; $6152: $02
	ret nc                                           ; $6153: $d0

	pop de                                           ; $6154: $d1
	inc c                                            ; $6155: $0c
	ret nz                                           ; $6156: $c0

	ld bc, $05a0                                     ; $6157: $01 $a0 $05
	nop                                              ; $615a: $00
	ld [hl], d                                       ; $615b: $72
	ret nz                                           ; $615c: $c0

	ld bc, $01a0                                     ; $615d: $01 $a0 $01
	nop                                              ; $6160: $00
	ld a, l                                          ; $6161: $7d
	ld [bc], a                                       ; $6162: $02
	jp nc, $0cd3                                     ; $6163: $d2 $d3 $0c

	ret nz                                           ; $6166: $c0

	ld bc, $05a0                                     ; $6167: $01 $a0 $05
	nop                                              ; $616a: $00
	add b                                            ; $616b: $80
	ret nz                                           ; $616c: $c0

	ld bc, $01a0                                     ; $616d: $01 $a0 $01
	nop                                              ; $6170: $00
	add a                                            ; $6171: $87
	ld bc, $0cd4                                     ; $6172: $01 $d4 $0c
	ret nz                                           ; $6175: $c0

	ld bc, $05a0                                     ; $6176: $01 $a0 $05
	nop                                              ; $6179: $00
	adc c                                            ; $617a: $89
	ret nz                                           ; $617b: $c0

	ld bc, $01a0                                     ; $617c: $01 $a0 $01
	nop                                              ; $617f: $00
	add a                                            ; $6180: $87
	rst $38                                          ; $6181: $ff
	add hl, bc                                       ; $6182: $09
	ret nz                                           ; $6183: $c0

	ld bc, $01a0                                     ; $6184: $01 $a0 $01
	nop                                              ; $6187: $00
	sub b                                            ; $6188: $90
	ldh [rSB], a                                     ; $6189: $e0 $01
	ld d, $e1                                        ; $618b: $16 $e1
	jr nc, jr_07f_618f                               ; $618d: $30 $00

jr_07f_618f:
	nop                                              ; $618f: $00
	pop bc                                           ; $6190: $c1
	ld c, h                                          ; $6191: $4c
	db $d3                                           ; $6192: $d3
	ret nz                                           ; $6193: $c0

	ld c, a                                          ; $6194: $4f
	ei                                               ; $6195: $fb
	cp $09                                           ; $6196: $fe $09
	db $fc                                           ; $6198: $fc
	ret nz                                           ; $6199: $c0

	ld h, l                                          ; $619a: $65
	db $d3                                           ; $619b: $d3
	db $fc                                           ; $619c: $fc
	ret nz                                           ; $619d: $c0

	ld h, [hl]                                       ; $619e: $66
	ldh [$15], a                                     ; $619f: $e0 $15
	inc c                                            ; $61a1: $0c
	ret nz                                           ; $61a2: $c0

	ld bc, $05a0                                     ; $61a3: $01 $a0 $05
	nop                                              ; $61a6: $00
	sbc b                                            ; $61a7: $98
	ret nz                                           ; $61a8: $c0

	ld bc, $01a0                                     ; $61a9: $01 $a0 $01
	nop                                              ; $61ac: $00
	and e                                            ; $61ad: $a3
	ei                                               ; $61ae: $fb
	cp $15                                           ; $61af: $fe $15
	db $fc                                           ; $61b1: $fc
	ret nz                                           ; $61b2: $c0

	ld h, l                                          ; $61b3: $65
	rst SubAFromHL                                          ; $61b4: $d7
	rst $38                                          ; $61b5: $ff
	rrca                                             ; $61b6: $0f
	db $fc                                           ; $61b7: $fc
	ret nz                                           ; $61b8: $c0

	ld h, [hl]                                       ; $61b9: $66
	ldh [rAUD2HIGH], a                               ; $61ba: $e0 $19
	db $fc                                           ; $61bc: $fc
	ret nz                                           ; $61bd: $c0

	ld h, [hl]                                       ; $61be: $66
	ldh [rAUD3ENA], a                                ; $61bf: $e0 $1a
	db $fc                                           ; $61c1: $fc
	ret nz                                           ; $61c2: $c0

	ld h, [hl]                                       ; $61c3: $66
	ldh [rAUD3LEN], a                                ; $61c4: $e0 $1b
	inc c                                            ; $61c6: $0c
	ret nz                                           ; $61c7: $c0

	ld bc, $05a0                                     ; $61c8: $01 $a0 $05
	nop                                              ; $61cb: $00
	and a                                            ; $61cc: $a7
	ret nz                                           ; $61cd: $c0

	ld bc, $01a0                                     ; $61ce: $01 $a0 $01
	nop                                              ; $61d1: $00
	xor l                                            ; $61d2: $ad
	ei                                               ; $61d3: $fb
	cp $09                                           ; $61d4: $fe $09
	db $fc                                           ; $61d6: $fc
	ret nz                                           ; $61d7: $c0

	ld h, l                                          ; $61d8: $65
	reti                                             ; $61d9: $d9


	db $fc                                           ; $61da: $fc
	ret nz                                           ; $61db: $c0

	ld h, [hl]                                       ; $61dc: $66
	ldh [rAUD2ENV], a                                ; $61dd: $e0 $17
	dec e                                            ; $61df: $1d
	or b                                             ; $61e0: $b0
	ld a, a                                          ; $61e1: $7f
	inc c                                            ; $61e2: $0c
	ret nz                                           ; $61e3: $c0

	ld bc, $05a0                                     ; $61e4: $01 $a0 $05
	nop                                              ; $61e7: $00
	or h                                             ; $61e8: $b4
	ret nz                                           ; $61e9: $c0

	ld bc, $01a0                                     ; $61ea: $01 $a0 $01
	nop                                              ; $61ed: $00
	cp h                                             ; $61ee: $bc
	rst $38                                          ; $61ef: $ff
	inc c                                            ; $61f0: $0c
	ret nz                                           ; $61f1: $c0

	ld bc, $05a0                                     ; $61f2: $01 $a0 $05
	nop                                              ; $61f5: $00
	call nz, $01c0                                   ; $61f6: $c4 $c0 $01
	and b                                            ; $61f9: $a0
	ld bc, $d000                                     ; $61fa: $01 $00 $d0
	ei                                               ; $61fd: $fb
	cp $10                                           ; $61fe: $fe $10
	add b                                            ; $6200: $80
	nop                                              ; $6201: $00
	jp nc, $c0fc                                     ; $6202: $d2 $fc $c0

	ld h, h                                          ; $6205: $64
	ldh [$61], a                                     ; $6206: $e0 $61
	db $fc                                           ; $6208: $fc
	ret nz                                           ; $6209: $c0

	ld h, l                                          ; $620a: $65
	jp c, $c0fc                                      ; $620b: $da $fc $c0

	ld h, [hl]                                       ; $620e: $66
	push de                                          ; $620f: $d5
	scf                                              ; $6210: $37
	add d                                            ; $6211: $82
	ret nz                                           ; $6212: $c0

	dec de                                           ; $6213: $1b
	db $d3                                           ; $6214: $d3
	ld [bc], a                                       ; $6215: $02
	ret nc                                           ; $6216: $d0

	pop de                                           ; $6217: $d1
	inc c                                            ; $6218: $0c
	ret nz                                           ; $6219: $c0

	ld bc, $05a0                                     ; $621a: $01 $a0 $05
	nop                                              ; $621d: $00
	call c, $01c0                                    ; $621e: $dc $c0 $01
	and b                                            ; $6221: $a0
	ld bc, $e100                                     ; $6222: $01 $00 $e1
	ld [bc], a                                       ; $6225: $02
	jp nc, $0cd3                                     ; $6226: $d2 $d3 $0c

	ret nz                                           ; $6229: $c0

	ld bc, $05a0                                     ; $622a: $01 $a0 $05
	nop                                              ; $622d: $00
	db $ec                                           ; $622e: $ec
	ret nz                                           ; $622f: $c0

	ld bc, $01a0                                     ; $6230: $01 $a0 $01
	nop                                              ; $6233: $00
	db $f4                                           ; $6234: $f4
	ld bc, $0cd4                                     ; $6235: $01 $d4 $0c
	ret nz                                           ; $6238: $c0

	ld bc, $05a0                                     ; $6239: $01 $a0 $05
	nop                                              ; $623c: $00
	db $fc                                           ; $623d: $fc
	ret nz                                           ; $623e: $c0

	ld bc, $01a0                                     ; $623f: $01 $a0 $01
	nop                                              ; $6242: $00
	db $f4                                           ; $6243: $f4
	ld b, b                                          ; $6244: $40
	add b                                            ; $6245: $80
	nop                                              ; $6246: $00
	jp nc, $fefb                                     ; $6247: $d2 $fb $fe

	db $10                                           ; $624a: $10
	add b                                            ; $624b: $80
	nop                                              ; $624c: $00
	db $d3                                           ; $624d: $d3
	db $fc                                           ; $624e: $fc
	ret nz                                           ; $624f: $c0

	ld h, h                                          ; $6250: $64
	ldh [$62], a                                     ; $6251: $e0 $62
	db $fc                                           ; $6253: $fc
	ret nz                                           ; $6254: $c0

	ld h, l                                          ; $6255: $65
	jp c, $c0fc                                      ; $6256: $da $fc $c0

	ld h, [hl]                                       ; $6259: $66
	call nc, $822b                                   ; $625a: $d4 $2b $82
	ret nz                                           ; $625d: $c0

	dec de                                           ; $625e: $1b
	db $d3                                           ; $625f: $d3
	ld [bc], a                                       ; $6260: $02
	ret nc                                           ; $6261: $d0

	pop de                                           ; $6262: $d1
	ld b, $c0                                        ; $6263: $06 $c0
	ld bc, $05a0                                     ; $6265: $01 $a0 $05
	ld bc, $0202                                     ; $6268: $01 $02 $02
	jp nc, $06d3                                     ; $626b: $d2 $d3 $06

	ret nz                                           ; $626e: $c0

	ld bc, $05a0                                     ; $626f: $01 $a0 $05
	ld bc, $010a                                     ; $6272: $01 $0a $01
	call nc, $c006                                   ; $6275: $d4 $06 $c0
	ld bc, $05a0                                     ; $6278: $01 $a0 $05
	ld bc, $c010                                     ; $627b: $01 $10 $c0
	ld bc, $01a0                                     ; $627e: $01 $a0 $01
	ld bc, $4015                                     ; $6281: $01 $15 $40
	add b                                            ; $6284: $80
	nop                                              ; $6285: $00
	db $d3                                           ; $6286: $d3
	ei                                               ; $6287: $fb
	cp $09                                           ; $6288: $fe $09
	db $fc                                           ; $628a: $fc
	ret nz                                           ; $628b: $c0

	ld h, l                                          ; $628c: $65
	call c, $c0fc                                    ; $628d: $dc $fc $c0
	ld h, [hl]                                       ; $6290: $66
	ldh [rAUD2ENV], a                                ; $6291: $e0 $17
	inc c                                            ; $6293: $0c
	ret nz                                           ; $6294: $c0

	ld bc, $05a0                                     ; $6295: $01 $a0 $05
	ld bc, $c01b                                     ; $6298: $01 $1b $c0
	ld bc, $01a0                                     ; $629b: $01 $a0 $01
	ld bc, $3123                                     ; $629e: $01 $23 $31
	ret nz                                           ; $62a1: $c0

	inc c                                            ; $62a2: $0c
	ldh [$78], a                                     ; $62a3: $e0 $78
	pop hl                                           ; $62a5: $e1
	ld [bc], a                                       ; $62a6: $02
	rlca                                             ; $62a7: $07
	cp a                                             ; $62a8: $bf
	ret nz                                           ; $62a9: $c0

	and l                                            ; $62aa: $a5
	add d                                            ; $62ab: $82
	ret nz                                           ; $62ac: $c0

	dec de                                           ; $62ad: $1b
	db $d3                                           ; $62ae: $d3
	ld [bc], a                                       ; $62af: $02
	ret nc                                           ; $62b0: $d0

	pop de                                           ; $62b1: $d1
	ld b, $c0                                        ; $62b2: $06 $c0
	ld bc, $05a0                                     ; $62b4: $01 $a0 $05
	ld bc, $0228                                     ; $62b7: $01 $28 $02
	jp nc, $06d3                                     ; $62ba: $d2 $d3 $06

	ret nz                                           ; $62bd: $c0

	ld bc, $05a0                                     ; $62be: $01 $a0 $05
	ld bc, $0131                                     ; $62c1: $01 $31 $01
	call nc, $c006                                   ; $62c4: $d4 $06 $c0
	ld bc, $05a0                                     ; $62c7: $01 $a0 $05
	ld bc, $c03c                                     ; $62ca: $01 $3c $c0
	ld bc, $01a0                                     ; $62cd: $01 $a0 $01
	ld bc, $7643                                     ; $62d0: $01 $43 $76
	dec b                                            ; $62d3: $05
	add hl, bc                                       ; $62d4: $09
	inc h                                            ; $62d5: $24
	add d                                            ; $62d6: $82
	ret nz                                           ; $62d7: $c0

	dec de                                           ; $62d8: $1b
	db $d3                                           ; $62d9: $d3
	ld [bc], a                                       ; $62da: $02
	ret nc                                           ; $62db: $d0

	pop de                                           ; $62dc: $d1
	ld b, $c0                                        ; $62dd: $06 $c0
	ld bc, $05a0                                     ; $62df: $01 $a0 $05
	nop                                              ; $62e2: $00
	ld bc, $d202                                     ; $62e3: $01 $02 $d2
	db $d3                                           ; $62e6: $d3
	ld b, $c0                                        ; $62e7: $06 $c0
	ld bc, $05a0                                     ; $62e9: $01 $a0 $05
	nop                                              ; $62ec: $00
	ld a, [bc]                                       ; $62ed: $0a
	ld bc, $06d4                                     ; $62ee: $01 $d4 $06
	ret nz                                           ; $62f1: $c0

	ld bc, $05a0                                     ; $62f2: $01 $a0 $05
	nop                                              ; $62f5: $00
	dec d                                            ; $62f6: $15
	db $e4                                           ; $62f7: $e4
	nop                                              ; $62f8: $00
	ld [bc], a                                       ; $62f9: $02
	jr z, @+$08                                      ; $62fa: $28 $06

	ret nz                                           ; $62fc: $c0

	ld bc, $01a0                                     ; $62fd: $01 $a0 $01
	nop                                              ; $6300: $00
	ld e, $4e                                        ; $6301: $1e $4e
	nop                                              ; $6303: $00
	inc hl                                           ; $6304: $23
	add hl, bc                                       ; $6305: $09
	ld b, b                                          ; $6306: $40
	add d                                            ; $6307: $82
	ret nz                                           ; $6308: $c0

	ld h, l                                          ; $6309: $65
	ld bc, $03d8                                     ; $630a: $01 $d8 $03
	ldh [rP1], a                                     ; $630d: $e0 $00
	ld b, e                                          ; $630f: $43
	ld bc, $0fd9                                     ; $6310: $01 $d9 $0f
	add c                                            ; $6313: $81
	ret nz                                           ; $6314: $c0

	ld h, [hl]                                       ; $6315: $66
	ld [bc], a                                       ; $6316: $02
	ldh [rAUD3HIGH], a                               ; $6317: $e0 $1e
	inc bc                                           ; $6319: $03
	ldh [rP1], a                                     ; $631a: $e0 $00
	ld c, e                                          ; $631c: $4b
	nop                                              ; $631d: $00
	inc bc                                           ; $631e: $03
	ldh [rP1], a                                     ; $631f: $e0 $00
	ld sp, $2000                                     ; $6321: $31 $00 $20
	ld h, b                                          ; $6324: $60
	add b                                            ; $6325: $80
	ld [bc], a                                       ; $6326: $02
	ld e, c                                          ; $6327: $59
	inc bc                                           ; $6328: $03
	ldh [rP1], a                                     ; $6329: $e0 $00
	ld [hl], l                                       ; $632b: $75
	rla                                              ; $632c: $17
	ld h, b                                          ; $632d: $60
	cp $0c                                           ; $632e: $fe $0c
	ei                                               ; $6330: $fb
	ret nz                                           ; $6331: $c0

	dec d                                            ; $6332: $15
	db $d3                                           ; $6333: $d3
	ldh [$50], a                                     ; $6334: $e0 $50
	ei                                               ; $6336: $fb
	ret nz                                           ; $6337: $c0

	ld d, $d3                                        ; $6338: $16 $d3
	ldh [$5a], a                                     ; $633a: $e0 $5a
	inc bc                                           ; $633c: $03
	ldh [rP1], a                                     ; $633d: $e0 $00
	ld l, b                                          ; $633f: $68
	inc bc                                           ; $6340: $03
	ldh [rP1], a                                     ; $6341: $e0 $00
	inc h                                            ; $6343: $24
	db $e4                                           ; $6344: $e4
	nop                                              ; $6345: $00
	jp $2500                                         ; $6346: $c3 $00 $25


	add hl, bc                                       ; $6349: $09
	ld b, $e0                                        ; $634a: $06 $e0
	nop                                              ; $634c: $00
	ld [hl], b                                       ; $634d: $70
	db $e4                                           ; $634e: $e4
	nop                                              ; $634f: $00
	cp c                                             ; $6350: $b9
	inc d                                            ; $6351: $14
	ld h, b                                          ; $6352: $60
	add b                                            ; $6353: $80
	ld [bc], a                                       ; $6354: $02
	ld e, c                                          ; $6355: $59
	dec bc                                           ; $6356: $0b
	or b                                             ; $6357: $b0
	ld a, a                                          ; $6358: $7f
	inc bc                                           ; $6359: $03
	ldh [rP1], a                                     ; $635a: $e0 $00
	dec h                                            ; $635c: $25
	rst $38                                          ; $635d: $ff
	inc bc                                           ; $635e: $03
	ldh [rP1], a                                     ; $635f: $e0 $00
	ccf                                              ; $6361: $3f
	inc bc                                           ; $6362: $03
	ldh [rP1], a                                     ; $6363: $e0 $00
	inc e                                            ; $6365: $1c
	add hl, de                                       ; $6366: $19
	or c                                             ; $6367: $b1
	ld d, h                                          ; $6368: $54
	ld b, $c0                                        ; $6369: $06 $c0
	ld bc, $01a0                                     ; $636b: $01 $a0 $01
	nop                                              ; $636e: $00
	daa                                              ; $636f: $27
	xor d                                            ; $6370: $aa
	ld b, $c0                                        ; $6371: $06 $c0
	ld bc, $01a0                                     ; $6373: $01 $a0 $01
	nop                                              ; $6376: $00
	ld sp, $06ff                                     ; $6377: $31 $ff $06
	ret nz                                           ; $637a: $c0

	ld bc, $01a0                                     ; $637b: $01 $a0 $01
	nop                                              ; $637e: $00
	dec a                                            ; $637f: $3d
	ld e, $82                                        ; $6380: $1e $82
	ret nz                                           ; $6382: $c0

	add b                                            ; $6383: $80
	ld bc, $06d3                                     ; $6384: $01 $d3 $06
	ret nz                                           ; $6387: $c0

	ld bc, $01a0                                     ; $6388: $01 $a0 $01
	nop                                              ; $638b: $00
	ld c, l                                          ; $638c: $4d
	ld bc, $06d2                                     ; $638d: $01 $d2 $06
	ret nz                                           ; $6390: $c0

	ld bc, $01a0                                     ; $6391: $01 $a0 $01
	nop                                              ; $6394: $00
	ld d, a                                          ; $6395: $57
	ld bc, $06d1                                     ; $6396: $01 $d1 $06
	ret nz                                           ; $6399: $c0

	ld bc, $01a0                                     ; $639a: $01 $a0 $01
	nop                                              ; $639d: $00
	ld h, h                                          ; $639e: $64
	ld b, $c0                                        ; $639f: $06 $c0
	ld bc, $01a0                                     ; $63a1: $01 $a0 $01
	nop                                              ; $63a4: $00
	ld [hl], d                                       ; $63a5: $72
	dec d                                            ; $63a6: $15
	or b                                             ; $63a7: $b0
	ld a, a                                          ; $63a8: $7f
	ld b, $c0                                        ; $63a9: $06 $c0
	ld bc, $01a0                                     ; $63ab: $01 $a0 $01
	nop                                              ; $63ae: $00
	add e                                            ; $63af: $83
	rst $38                                          ; $63b0: $ff
	ld a, [bc]                                       ; $63b1: $0a
	ret nz                                           ; $63b2: $c0

	ld bc, $01a0                                     ; $63b3: $01 $a0 $01
	nop                                              ; $63b6: $00
	sbc b                                            ; $63b7: $98
	nop                                              ; $63b8: $00
	add b                                            ; $63b9: $80
	and b                                            ; $63ba: $a0
	nop                                              ; $63bb: $00
	dec e                                            ; $63bc: $1d
	add c                                            ; $63bd: $81
	ret nz                                           ; $63be: $c0

	ld h, h                                          ; $63bf: $64
	ld [bc], a                                       ; $63c0: $02
	ldh [$63], a                                     ; $63c1: $e0 $63
	ld de, $c081                                     ; $63c3: $11 $81 $c0
	ld l, d                                          ; $63c6: $6a
	ld bc, $03d0                                     ; $63c7: $01 $d0 $03
	ldh [rP1], a                                     ; $63ca: $e0 $00
	rrca                                             ; $63cc: $0f
	nop                                              ; $63cd: $00
	ld b, $c0                                        ; $63ce: $06 $c0
	ld bc, $01a0                                     ; $63d0: $01 $a0 $01
	nop                                              ; $63d3: $00
	or b                                             ; $63d4: $b0
	nop                                              ; $63d5: $00
	inc bc                                           ; $63d6: $03
	ldh [rP1], a                                     ; $63d7: $e0 $00
	ld [bc], a                                       ; $63d9: $02
	dec l                                            ; $63da: $2d
	or d                                             ; $63db: $b2
	ccf                                              ; $63dc: $3f
	ld b, $c0                                        ; $63dd: $06 $c0
	ld bc, $01a0                                     ; $63df: $01 $a0 $01
	nop                                              ; $63e2: $00
	cp b                                             ; $63e3: $b8
	ld a, a                                          ; $63e4: $7f
	ld b, $c0                                        ; $63e5: $06 $c0
	ld bc, $01a0                                     ; $63e7: $01 $a0 $01
	nop                                              ; $63ea: $00
	push bc                                          ; $63eb: $c5
	cp a                                             ; $63ec: $bf
	ld [de], a                                       ; $63ed: $12
	ld h, b                                          ; $63ee: $60
	add b                                            ; $63ef: $80
	and b                                            ; $63f0: $a0
	nop                                              ; $63f1: $00
	ld b, $c0                                        ; $63f2: $06 $c0
	ld bc, $01a0                                     ; $63f4: $01 $a0 $01
	nop                                              ; $63f7: $00
	jp z, $c006                                      ; $63f8: $ca $06 $c0

	ld bc, $01a0                                     ; $63fb: $01 $a0 $01
	nop                                              ; $63fe: $00
	call c, $06ff                                    ; $63ff: $dc $ff $06
	ret nz                                           ; $6402: $c0

	ld bc, $01a0                                     ; $6403: $01 $a0 $01
	nop                                              ; $6406: $00
	jp hl                                            ; $6407: $e9


	add hl, bc                                       ; $6408: $09
	ld c, $d0                                        ; $6409: $0e $d0
	add d                                            ; $640b: $82
	ld bc, $d3cf                                     ; $640c: $01 $cf $d3
	ret nz                                           ; $640f: $c0

	ld d, [hl]                                       ; $6410: $56
	db $d3                                           ; $6411: $d3
	ret nc                                           ; $6412: $d0

	ret nc                                           ; $6413: $d0

	push hl                                          ; $6414: $e5
	rra                                              ; $6415: $1f
	nop                                              ; $6416: $00
	nop                                              ; $6417: $00
	add hl, bc                                       ; $6418: $09
	ld e, b                                          ; $6419: $58
	add c                                            ; $641a: $81
	ret nz                                           ; $641b: $c0

	ld h, l                                          ; $641c: $65
	ld [bc], a                                       ; $641d: $02
	db $d3                                           ; $641e: $d3
	call nc, $d01a                                   ; $641f: $d4 $1a $d0
	add e                                            ; $6422: $83
	ld bc, $d1de                                     ; $6423: $01 $de $d1
	ret nz                                           ; $6426: $c0

	ld bc, $05a0                                     ; $6427: $01 $a0 $05
	nop                                              ; $642a: $00
	push af                                          ; $642b: $f5
	ret nz                                           ; $642c: $c0

	ld bc, $01a0                                     ; $642d: $01 $a0 $01
	nop                                              ; $6430: $00
	db $fc                                           ; $6431: $fc
	ret nz                                           ; $6432: $c0

	ld bc, $05a0                                     ; $6433: $01 $a0 $05
	nop                                              ; $6436: $00
	cp $e4                                           ; $6437: $fe $e4
	ld bc, $0073                                     ; $6439: $01 $73 $00
	dec [hl]                                         ; $643c: $35
	ret nc                                           ; $643d: $d0

	add e                                            ; $643e: $83
	ld bc, $d0de                                     ; $643f: $01 $de $d0
	ret nz                                           ; $6442: $c0

	ld bc, $05a0                                     ; $6443: $01 $a0 $05
	ld bc, $a001                                     ; $6446: $01 $01 $a0
	add b                                            ; $6449: $80
	and b                                            ; $644a: $a0
	ld bc, $0f00                                     ; $644b: $01 $00 $0f
	ret nz                                           ; $644e: $c0

	ld bc, $01a0                                     ; $644f: $01 $a0 $01
	ld bc, $c008                                     ; $6452: $01 $08 $c0
	ld bc, $05a0                                     ; $6455: $01 $a0 $05
	nop                                              ; $6458: $00
	cp $e4                                           ; $6459: $fe $e4
	nop                                              ; $645b: $00
	rla                                              ; $645c: $17
	rst $38                                          ; $645d: $ff
	inc de                                           ; $645e: $13
	ret nz                                           ; $645f: $c0

	ld bc, $01a0                                     ; $6460: $01 $a0 $01
	ld bc, $c00d                                     ; $6463: $01 $0d $c0
	ld bc, $05a0                                     ; $6466: $01 $a0 $05
	nop                                              ; $6469: $00
	cp $40                                           ; $646a: $fe $40
	add b                                            ; $646c: $80
	and b                                            ; $646d: $a0
	ld bc, $00e4                                     ; $646e: $01 $e4 $00
	sbc a                                            ; $6471: $9f
	jr z, @+$0c                                      ; $6472: $28 $0a

	pop hl                                           ; $6474: $e1
	ld [bc], a                                       ; $6475: $02
	dec b                                            ; $6476: $05
	dec b                                            ; $6477: $05
	ret nz                                           ; $6478: $c0

	ld bc, $05a0                                     ; $6479: $01 $a0 $05
	ld bc, $9014                                     ; $647c: $01 $14 $90
	ld bc, $0921                                     ; $647f: $01 $21 $09
	inc l                                            ; $6482: $2c
	pop hl                                           ; $6483: $e1
	ld [bc], a                                       ; $6484: $02
	inc bc                                           ; $6485: $03
	rrca                                             ; $6486: $0f
	add d                                            ; $6487: $82
	ret nz                                           ; $6488: $c0

	dec de                                           ; $6489: $1b
	db $d3                                           ; $648a: $d3
	ld [bc], a                                       ; $648b: $02
	ret nc                                           ; $648c: $d0

	pop de                                           ; $648d: $d1
	ld b, $c0                                        ; $648e: $06 $c0
	ld bc, $05a0                                     ; $6490: $01 $a0 $05
	ld bc, $022a                                     ; $6493: $01 $2a $02
	jp nc, $06d3                                     ; $6496: $d2 $d3 $06

	ret nz                                           ; $6499: $c0

	ld bc, $05a0                                     ; $649a: $01 $a0 $05
	ld bc, $0132                                     ; $649d: $01 $32 $01
	call nc, $c006                                   ; $64a0: $d4 $06 $c0
	ld bc, $05a0                                     ; $64a3: $01 $a0 $05
	ld bc, $e13b                                     ; $64a6: $01 $3b $e1
	ld [bc], a                                       ; $64a9: $02
	inc bc                                           ; $64aa: $03
	cp l                                             ; $64ab: $bd
	db $e4                                           ; $64ac: $e4
	ld bc, $019d                                     ; $64ad: $01 $9d $01
	ld b, d                                          ; $64b0: $42
	add hl, bc                                       ; $64b1: $09
	inc l                                            ; $64b2: $2c
	pop hl                                           ; $64b3: $e1
	ld [bc], a                                       ; $64b4: $02
	inc bc                                           ; $64b5: $03
	dec de                                           ; $64b6: $1b
	add d                                            ; $64b7: $82
	ret nz                                           ; $64b8: $c0

	dec de                                           ; $64b9: $1b
	db $d3                                           ; $64ba: $d3
	ld [bc], a                                       ; $64bb: $02
	ret nc                                           ; $64bc: $d0

	pop de                                           ; $64bd: $d1
	ld b, $c0                                        ; $64be: $06 $c0
	ld bc, $05a0                                     ; $64c0: $01 $a0 $05
	ld bc, $0244                                     ; $64c3: $01 $44 $02
	jp nc, $06d3                                     ; $64c6: $d2 $d3 $06

	ret nz                                           ; $64c9: $c0

	ld bc, $05a0                                     ; $64ca: $01 $a0 $05
	ld bc, $014b                     ; $64cd: $01 $4b $01
	call nc, $c006                                   ; $64d0: $d4 $06 $c0
	ld bc, $05a0                                     ; $64d3: $01 $a0 $05
	ld bc, $e152                                     ; $64d6: $01 $52 $e1
	ld [bc], a                                       ; $64d9: $02
	inc bc                                           ; $64da: $03
	rst GetHLinHL                                          ; $64db: $cf
	db $e4                                           ; $64dc: $e4
	ld bc, $016d                                     ; $64dd: $01 $6d $01
	ld e, b                                          ; $64e0: $58
	add hl, bc                                       ; $64e1: $09
	inc l                                            ; $64e2: $2c
	pop hl                                           ; $64e3: $e1
	ld [bc], a                                       ; $64e4: $02
	inc bc                                           ; $64e5: $03
	rla                                              ; $64e6: $17
	add d                                            ; $64e7: $82
	ret nz                                           ; $64e8: $c0

	dec de                                           ; $64e9: $1b
	db $d3                                           ; $64ea: $d3
	ld [bc], a                                       ; $64eb: $02
	ret nc                                           ; $64ec: $d0

	pop de                                           ; $64ed: $d1
	ld b, $c0                                        ; $64ee: $06 $c0
	ld bc, $05a0                                     ; $64f0: $01 $a0 $05
	ld bc, $025a                                     ; $64f3: $01 $5a $02
	jp nc, $06d3                                     ; $64f6: $d2 $d3 $06

	ret nz                                           ; $64f9: $c0

	ld bc, $05a0                                     ; $64fa: $01 $a0 $05
	ld bc, $0160                                     ; $64fd: $01 $60 $01
	call nc, $c006                                   ; $6500: $d4 $06 $c0
	ld bc, $05a0                                     ; $6503: $01 $a0 $05
	ld bc, $e168                                     ; $6506: $01 $68 $e1
	ld [bc], a                                       ; $6509: $02
	inc bc                                           ; $650a: $03
	add $e4                                          ; $650b: $c6 $e4
	ld bc, $283d                                     ; $650d: $01 $3d $28
	ld a, [bc]                                       ; $6510: $0a
	pop hl                                           ; $6511: $e1
	ld [bc], a                                       ; $6512: $02
	dec b                                            ; $6513: $05
	rla                                              ; $6514: $17
	ret nz                                           ; $6515: $c0

	ld bc, $05a0                                     ; $6516: $01 $a0 $05
	ld bc, $9073                                     ; $6519: $01 $73 $90
	ld bc, $097d                                     ; $651c: $01 $7d $09
	inc l                                            ; $651f: $2c
	pop hl                                           ; $6520: $e1
	ld [bc], a                                       ; $6521: $02
	inc bc                                           ; $6522: $03
	inc de                                           ; $6523: $13
	add d                                            ; $6524: $82
	ret nz                                           ; $6525: $c0

	dec de                                           ; $6526: $1b
	db $d3                                           ; $6527: $d3
	ld [bc], a                                       ; $6528: $02
	ret nc                                           ; $6529: $d0

	pop de                                           ; $652a: $d1
	ld b, $c0                                        ; $652b: $06 $c0
	ld bc, $05a0                                     ; $652d: $01 $a0 $05
	ld bc, $0282                                     ; $6530: $01 $82 $02
	jp nc, $06d3                                     ; $6533: $d2 $d3 $06

	ret nz                                           ; $6536: $c0

	ld bc, $05a0                                     ; $6537: $01 $a0 $05
	ld bc, $018b                                     ; $653a: $01 $8b $01
	call nc, $c006                                   ; $653d: $d4 $06 $c0
	ld bc, $05a0                                     ; $6540: $01 $a0 $05
	nop                                              ; $6543: $00
	cp $e1                                           ; $6544: $fe $e1
	ld [bc], a                                       ; $6546: $02
	inc bc                                           ; $6547: $03
	or h                                             ; $6548: $b4
	db $e4                                           ; $6549: $e4
	ld bc, $0100                                     ; $654a: $01 $00 $01
	sub h                                            ; $654d: $94
	add hl, bc                                       ; $654e: $09
	inc l                                            ; $654f: $2c
	pop hl                                           ; $6550: $e1
	ld [bc], a                                       ; $6551: $02
	inc bc                                           ; $6552: $03
	rra                                              ; $6553: $1f
	add d                                            ; $6554: $82
	ret nz                                           ; $6555: $c0

	dec de                                           ; $6556: $1b
	db $d3                                           ; $6557: $d3
	ld [bc], a                                       ; $6558: $02
	ret nc                                           ; $6559: $d0

	pop de                                           ; $655a: $d1
	ld b, $c0                                        ; $655b: $06 $c0
	ld bc, $05a0                                     ; $655d: $01 $a0 $05
	ld bc, $0296                                     ; $6560: $01 $96 $02
	jp nc, $06d3                                     ; $6563: $d2 $d3 $06

	ret nz                                           ; $6566: $c0

	ld bc, $05a0                                     ; $6567: $01 $a0 $05
	ld bc, $019a                                     ; $656a: $01 $9a $01
	call nc, $c006                                   ; $656d: $d4 $06 $c0
	ld bc, $05a0                                     ; $6570: $01 $a0 $05
	ld bc, $e1a2                                     ; $6573: $01 $a2 $e1
	ld [bc], a                                       ; $6576: $02
	inc bc                                           ; $6577: $03
	ret c                                            ; $6578: $d8

	db $e4                                           ; $6579: $e4
	nop                                              ; $657a: $00
	ret nc                                           ; $657b: $d0

	ld bc, $09a7                                     ; $657c: $01 $a7 $09
	inc l                                            ; $657f: $2c
	pop hl                                           ; $6580: $e1
	ld [bc], a                                       ; $6581: $02
	inc bc                                           ; $6582: $03
	rla                                              ; $6583: $17
	add d                                            ; $6584: $82
	ret nz                                           ; $6585: $c0

	dec de                                           ; $6586: $1b
	db $d3                                           ; $6587: $d3
	ld [bc], a                                       ; $6588: $02
	ret nc                                           ; $6589: $d0

	pop de                                           ; $658a: $d1
	ld b, $c0                                        ; $658b: $06 $c0
	ld bc, $05a0                                     ; $658d: $01 $a0 $05
	ld bc, $02af                                     ; $6590: $01 $af $02
	jp nc, $06d3                                     ; $6593: $d2 $d3 $06

	ret nz                                           ; $6596: $c0

	ld bc, $05a0                                     ; $6597: $01 $a0 $05
	ld bc, $01ba                                     ; $659a: $01 $ba $01
	call nc, $c006                                   ; $659d: $d4 $06 $c0
	ld bc, $05a0                                     ; $65a0: $01 $a0 $05
	ld bc, $e1c7                                     ; $65a3: $01 $c7 $e1
	ld [bc], a                                       ; $65a6: $02
	inc bc                                           ; $65a7: $03
	add $e4                                          ; $65a8: $c6 $e4
	nop                                              ; $65aa: $00
	and b                                            ; $65ab: $a0
	jr z, @+$0d                                      ; $65ac: $28 $0b

	pop bc                                           ; $65ae: $c1
	ld e, c                                          ; $65af: $59
	db $e3                                           ; $65b0: $e3
	nop                                              ; $65b1: $00
	add h                                            ; $65b2: $84
	ret nz                                           ; $65b3: $c0

	ld bc, $05a0                                     ; $65b4: $01 $a0 $05
	ld bc, $90d2                                     ; $65b7: $01 $d2 $90
	ld bc, $09dc                                     ; $65ba: $01 $dc $09
	inc l                                            ; $65bd: $2c
	pop hl                                           ; $65be: $e1
	ld [bc], a                                       ; $65bf: $02
	inc bc                                           ; $65c0: $03
	inc de                                           ; $65c1: $13
	add d                                            ; $65c2: $82
	ret nz                                           ; $65c3: $c0

	dec de                                           ; $65c4: $1b
	db $d3                                           ; $65c5: $d3
	ld [bc], a                                       ; $65c6: $02
	ret nc                                           ; $65c7: $d0

	pop de                                           ; $65c8: $d1
	ld b, $c0                                        ; $65c9: $06 $c0
	ld bc, $05a0                                     ; $65cb: $01 $a0 $05
	ld bc, $02de                                     ; $65ce: $01 $de $02
	jp nc, $06d3                                     ; $65d1: $d2 $d3 $06

	ret nz                                           ; $65d4: $c0

	ld bc, $05a0                                     ; $65d5: $01 $a0 $05
	ld bc, $01e7                                     ; $65d8: $01 $e7 $01
	call nc, $c006                                   ; $65db: $d4 $06 $c0
	ld bc, $05a0                                     ; $65de: $01 $a0 $05
	ld bc, $e1ef                                     ; $65e1: $01 $ef $e1
	ld [bc], a                                       ; $65e4: $02
	inc bc                                           ; $65e5: $03
	or h                                             ; $65e6: $b4
	db $e4                                           ; $65e7: $e4
	nop                                              ; $65e8: $00
	ld h, d                                          ; $65e9: $62
	ld bc, $09f8                                     ; $65ea: $01 $f8 $09
	inc l                                            ; $65ed: $2c
	pop hl                                           ; $65ee: $e1
	ld [bc], a                                       ; $65ef: $02
	inc bc                                           ; $65f0: $03
	rra                                              ; $65f1: $1f
	add d                                            ; $65f2: $82
	ret nz                                           ; $65f3: $c0

	dec de                                           ; $65f4: $1b
	db $d3                                           ; $65f5: $d3
	ld [bc], a                                       ; $65f6: $02
	ret nc                                           ; $65f7: $d0

	pop de                                           ; $65f8: $d1
	ld b, $c0                                        ; $65f9: $06 $c0
	ld bc, $05a0                                     ; $65fb: $01 $a0 $05
	ld bc, $02fa                                     ; $65fe: $01 $fa $02
	jp nc, $06d3                                     ; $6601: $d2 $d3 $06

	ret nz                                           ; $6604: $c0

	ld bc, $05a0                                     ; $6605: $01 $a0 $05
	ld bc, $01ff                                     ; $6608: $01 $ff $01
	call nc, $c006                                   ; $660b: $d4 $06 $c0
	ld bc, $05a0                                     ; $660e: $01 $a0 $05
	ld [bc], a                                       ; $6611: $02
	inc b                                            ; $6612: $04
	pop hl                                           ; $6613: $e1
	ld [bc], a                                       ; $6614: $02
	inc bc                                           ; $6615: $03
	ret c                                            ; $6616: $d8

	db $e4                                           ; $6617: $e4
	nop                                              ; $6618: $00
	ld [hl-], a                                      ; $6619: $32
	ld [bc], a                                       ; $661a: $02
	ld [$2c09], sp                                   ; $661b: $08 $09 $2c
	pop hl                                           ; $661e: $e1
	ld [bc], a                                       ; $661f: $02
	inc bc                                           ; $6620: $03
	rla                                              ; $6621: $17
	add d                                            ; $6622: $82
	ret nz                                           ; $6623: $c0

	dec de                                           ; $6624: $1b
	db $d3                                           ; $6625: $d3
	ld [bc], a                                       ; $6626: $02
	ret nc                                           ; $6627: $d0

	pop de                                           ; $6628: $d1
	ld b, $c0                                        ; $6629: $06 $c0
	ld bc, $05a0                                     ; $662b: $01 $a0 $05
	ld [bc], a                                       ; $662e: $02
	ld a, [bc]                                       ; $662f: $0a
	ld [bc], a                                       ; $6630: $02
	jp nc, $06d3                                     ; $6631: $d2 $d3 $06

	ret nz                                           ; $6634: $c0

	ld bc, $05a0                                     ; $6635: $01 $a0 $05
	ld [bc], a                                       ; $6638: $02
	db $10                                           ; $6639: $10
	ld bc, $06d4                                     ; $663a: $01 $d4 $06
	ret nz                                           ; $663d: $c0

	ld bc, $05a0                                     ; $663e: $01 $a0 $05
	ld [bc], a                                       ; $6641: $02
	inc de                                           ; $6642: $13
	pop hl                                           ; $6643: $e1
	ld [bc], a                                       ; $6644: $02
	inc bc                                           ; $6645: $03
	add $e4                                          ; $6646: $c6 $e4
	nop                                              ; $6648: $00
	ld [bc], a                                       ; $6649: $02
	add hl, bc                                       ; $664a: $09
	dec de                                           ; $664b: $1b
	pop hl                                           ; $664c: $e1
	ld [bc], a                                       ; $664d: $02
	dec b                                            ; $664e: $05
	add hl, hl                                       ; $664f: $29

jr_07f_6650:
	add c                                            ; $6650: $81
	ret nz                                           ; $6651: $c0

	ld h, l                                          ; $6652: $65
	ld [bc], a                                       ; $6653: $02
	db $d3                                           ; $6654: $d3
	call nc, $c005                                   ; $6655: $d4 $05 $c0
	ld d, [hl]                                       ; $6658: $56
	db $d3                                           ; $6659: $d3
	pop de                                           ; $665a: $d1
	pop de                                           ; $665b: $d1
	nop                                              ; $665c: $00
	dec b                                            ; $665d: $05
	ret nz                                           ; $665e: $c0

	ld d, [hl]                                       ; $665f: $56
	db $d3                                           ; $6660: $d3
	pop de                                           ; $6661: $d1
	ret nc                                           ; $6662: $d0

	push hl                                          ; $6663: $e5
	rra                                              ; $6664: $1f
	nop                                              ; $6665: $00
	nop                                              ; $6666: $00
	jr z, @+$08                                      ; $6667: $28 $06

	ret nz                                           ; $6669: $c0

	ld bc, $05a0                                     ; $666a: $01 $a0 $05
	ld [bc], a                                       ; $666d: $02
	ld d, $48                                        ; $666e: $16 $48
	ld [bc], a                                       ; $6670: $02
	ld e, $09                                        ; $6671: $1e $09
	inc d                                            ; $6673: $14
	ret nc                                           ; $6674: $d0

	add e                                            ; $6675: $83
	ld bc, $d0de                                     ; $6676: $01 $de $d0
	ret nz                                           ; $6679: $c0

	ld bc, $05a0                                     ; $667a: $01 $a0 $05
	ld [bc], a                                       ; $667d: $02
	jr nz, jr_07f_6650                               ; $667e: $20 $d0

	adc e                                            ; $6680: $8b
	and b                                            ; $6681: $a0
	ld [bc], a                                       ; $6682: $02
	or b                                             ; $6683: $b0
	add d                                            ; $6684: $82
	db $e4                                           ; $6685: $e4
	nop                                              ; $6686: $00
	ld [hl-], a                                      ; $6687: $32
	ld [bc], a                                       ; $6688: $02
	inc hl                                           ; $6689: $23
	add hl, bc                                       ; $668a: $09
	inc d                                            ; $668b: $14
	ret nc                                           ; $668c: $d0

	add e                                            ; $668d: $83
	ld bc, $d1de                                     ; $668e: $01 $de $d1
	ret nz                                           ; $6691: $c0

	ld bc, $05a0                                     ; $6692: $01 $a0 $05
	ld [bc], a                                       ; $6695: $02
	jr nz, @-$2e                                     ; $6696: $20 $d0

	adc e                                            ; $6698: $8b
	and b                                            ; $6699: $a0
	ld [bc], a                                       ; $669a: $02
	or b                                             ; $669b: $b0
	add e                                            ; $669c: $83
	db $e4                                           ; $669d: $e4
	ld bc, $0272                                     ; $669e: $01 $72 $02
	dec h                                            ; $66a1: $25
	add hl, bc                                       ; $66a2: $09
	inc d                                            ; $66a3: $14
	ret nc                                           ; $66a4: $d0

	add e                                            ; $66a5: $83
	ld bc, $d2de                                     ; $66a6: $01 $de $d2
	ret nz                                           ; $66a9: $c0

	ld bc, $05a0                                     ; $66aa: $01 $a0 $05
	ld [bc], a                                       ; $66ad: $02
	daa                                              ; $66ae: $27
	ret nc                                           ; $66af: $d0

	adc e                                            ; $66b0: $8b
	and b                                            ; $66b1: $a0
	ld [bc], a                                       ; $66b2: $02
	or b                                             ; $66b3: $b0
	add h                                            ; $66b4: $84
	db $e4                                           ; $66b5: $e4
	ld [bc], a                                       ; $66b6: $02
	or d                                             ; $66b7: $b2
	add hl, bc                                       ; $66b8: $09
	inc e                                            ; $66b9: $1c
	pop bc                                           ; $66ba: $c1
	ld e, c                                          ; $66bb: $59
	db $e3                                           ; $66bc: $e3
	nop                                              ; $66bd: $00
	and b                                            ; $66be: $a0
	ret nz                                           ; $66bf: $c0

	add hl, bc                                       ; $66c0: $09
	db $e3                                           ; $66c1: $e3
	nop                                              ; $66c2: $00
	inc e                                            ; $66c3: $1c
	and b                                            ; $66c4: $a0
	add b                                            ; $66c5: $80
	and b                                            ; $66c6: $a0
	ld c, $00                                        ; $66c7: $0e $00
	inc bc                                           ; $66c9: $03
	db $e4                                           ; $66ca: $e4
	nop                                              ; $66cb: $00
	dec bc                                           ; $66cc: $0b
	rst $38                                          ; $66cd: $ff
	rlca                                             ; $66ce: $07
	ld b, b                                          ; $66cf: $40
	add b                                            ; $66d0: $80
	and b                                            ; $66d1: $a0
	ld c, $e4                                        ; $66d2: $0e $e4
	nop                                              ; $66d4: $00
	sbc e                                            ; $66d5: $9b
	jr z, jr_07f_66de                                ; $66d6: $28 $06

	ret nz                                           ; $66d8: $c0

	ld bc, $05a0                                     ; $66d9: $01 $a0 $05
	ld [bc], a                                       ; $66dc: $02
	dec l                                            ; $66dd: $2d

jr_07f_66de:
	sub b                                            ; $66de: $90
	ld [bc], a                                       ; $66df: $02
	scf                                              ; $66e0: $37
	add hl, bc                                       ; $66e1: $09
	inc l                                            ; $66e2: $2c
	pop hl                                           ; $66e3: $e1
	ld [bc], a                                       ; $66e4: $02
	inc bc                                           ; $66e5: $03
	inc de                                           ; $66e6: $13
	add d                                            ; $66e7: $82
	ret nz                                           ; $66e8: $c0

	dec de                                           ; $66e9: $1b
	db $d3                                           ; $66ea: $d3
	ld [bc], a                                       ; $66eb: $02
	ret nc                                           ; $66ec: $d0

	pop de                                           ; $66ed: $d1
	ld b, $c0                                        ; $66ee: $06 $c0
	ld bc, $05a0                                     ; $66f0: $01 $a0 $05
	ld [bc], a                                       ; $66f3: $02
	add hl, sp                                       ; $66f4: $39
	ld [bc], a                                       ; $66f5: $02
	jp nc, $06d3                                     ; $66f6: $d2 $d3 $06

	ret nz                                           ; $66f9: $c0

	ld bc, $05a0                                     ; $66fa: $01 $a0 $05
	ld [bc], a                                       ; $66fd: $02
	ld b, b                                          ; $66fe: $40
	ld bc, $06d4                                     ; $66ff: $01 $d4 $06
	ret nz                                           ; $6702: $c0

	ld bc, $05a0                                     ; $6703: $01 $a0 $05
	ld [bc], a                                       ; $6706: $02
	ld c, d                                          ; $6707: $4a
	pop hl                                           ; $6708: $e1
	ld [bc], a                                       ; $6709: $02
	inc bc                                           ; $670a: $03
	cp l                                             ; $670b: $bd
	db $e4                                           ; $670c: $e4
	inc bc                                           ; $670d: $03
	or e                                             ; $670e: $b3
	ld [bc], a                                       ; $670f: $02
	ld c, a                                          ; $6710: $4f
	add hl, bc                                       ; $6711: $09
	inc l                                            ; $6712: $2c
	pop hl                                           ; $6713: $e1
	ld [bc], a                                       ; $6714: $02
	inc bc                                           ; $6715: $03
	rla                                              ; $6716: $17
	add d                                            ; $6717: $82
	ret nz                                           ; $6718: $c0

	dec de                                           ; $6719: $1b
	db $d3                                           ; $671a: $d3
	ld [bc], a                                       ; $671b: $02
	ret nc                                           ; $671c: $d0

	pop de                                           ; $671d: $d1
	ld b, $c0                                        ; $671e: $06 $c0
	ld bc, $05a0                                     ; $6720: $01 $a0 $05
	ld [bc], a                                       ; $6723: $02
	ld d, c                                          ; $6724: $51
	ld [bc], a                                       ; $6725: $02
	jp nc, $06d3                                     ; $6726: $d2 $d3 $06

	ret nz                                           ; $6729: $c0

	ld bc, $05a0                                     ; $672a: $01 $a0 $05
	ld [bc], a                                       ; $672d: $02
	ld d, l                                          ; $672e: $55
	ld bc, $06d4                                     ; $672f: $01 $d4 $06
	ret nz                                           ; $6732: $c0

	ld bc, $05a0                                     ; $6733: $01 $a0 $05
	ld [bc], a                                       ; $6736: $02
	ld e, e                                          ; $6737: $5b
	pop hl                                           ; $6738: $e1
	ld [bc], a                                       ; $6739: $02
	inc bc                                           ; $673a: $03
	rst GetHLinHL                                          ; $673b: $cf
	db $e4                                           ; $673c: $e4
	inc bc                                           ; $673d: $03
	add e                                            ; $673e: $83
	ld [bc], a                                       ; $673f: $02
	ld h, b                                          ; $6740: $60
	add hl, bc                                       ; $6741: $09
	inc l                                            ; $6742: $2c
	pop hl                                           ; $6743: $e1
	ld [bc], a                                       ; $6744: $02
	inc bc                                           ; $6745: $03
	rla                                              ; $6746: $17
	add d                                            ; $6747: $82
	ret nz                                           ; $6748: $c0

	dec de                                           ; $6749: $1b
	db $d3                                           ; $674a: $d3
	ld [bc], a                                       ; $674b: $02
	ret nc                                           ; $674c: $d0

	pop de                                           ; $674d: $d1
	ld b, $c0                                        ; $674e: $06 $c0
	ld bc, $05a0                                     ; $6750: $01 $a0 $05
	ld [bc], a                                       ; $6753: $02
	ld h, e                                          ; $6754: $63
	ld [bc], a                                       ; $6755: $02
	jp nc, $06d3                                     ; $6756: $d2 $d3 $06

	ret nz                                           ; $6759: $c0

	ld bc, $05a0                                     ; $675a: $01 $a0 $05
	ld [bc], a                                       ; $675d: $02
	ld l, c                                          ; $675e: $69
	ld bc, $06d4                                     ; $675f: $01 $d4 $06
	ret nz                                           ; $6762: $c0

	ld bc, $05a0                                     ; $6763: $01 $a0 $05
	ld [bc], a                                       ; $6766: $02
	ld l, l                                          ; $6767: $6d
	pop hl                                           ; $6768: $e1
	ld [bc], a                                       ; $6769: $02
	inc bc                                           ; $676a: $03
	add $e4                                          ; $676b: $c6 $e4
	inc bc                                           ; $676d: $03
	ld d, e                                          ; $676e: $53
	jr z, jr_07f_6777                                ; $676f: $28 $06

	ret nz                                           ; $6771: $c0

	ld bc, $05a0                                     ; $6772: $01 $a0 $05
	ld [bc], a                                       ; $6775: $02
	ld [hl], h                                       ; $6776: $74

jr_07f_6777:
	sbc b                                            ; $6777: $98
	ld [bc], a                                       ; $6778: $02
	ld a, h                                          ; $6779: $7c
	add hl, bc                                       ; $677a: $09
	inc l                                            ; $677b: $2c
	pop hl                                           ; $677c: $e1
	ld [bc], a                                       ; $677d: $02
	inc bc                                           ; $677e: $03
	inc de                                           ; $677f: $13
	add d                                            ; $6780: $82
	ret nz                                           ; $6781: $c0

	dec de                                           ; $6782: $1b
	db $d3                                           ; $6783: $d3
	ld [bc], a                                       ; $6784: $02
	ret nc                                           ; $6785: $d0

	pop de                                           ; $6786: $d1
	ld b, $c0                                        ; $6787: $06 $c0
	ld bc, $05a0                                     ; $6789: $01 $a0 $05
	ld [bc], a                                       ; $678c: $02
	ld a, [hl]                                       ; $678d: $7e
	ld [bc], a                                       ; $678e: $02
	jp nc, $06d3                                     ; $678f: $d2 $d3 $06

	ret nz                                           ; $6792: $c0

	ld bc, $05a0                                     ; $6793: $01 $a0 $05
	ld [bc], a                                       ; $6796: $02
	adc d                                            ; $6797: $8a
	ld bc, $06d4                                     ; $6798: $01 $d4 $06
	ret nz                                           ; $679b: $c0

	ld bc, $05a0                                     ; $679c: $01 $a0 $05
	ld [bc], a                                       ; $679f: $02
	sub e                                            ; $67a0: $93
	pop hl                                           ; $67a1: $e1
	ld [bc], a                                       ; $67a2: $02
	inc bc                                           ; $67a3: $03
	cp l                                             ; $67a4: $bd
	db $e4                                           ; $67a5: $e4
	inc bc                                           ; $67a6: $03
	ld a, [de]                                       ; $67a7: $1a
	ld [bc], a                                       ; $67a8: $02
	sbc e                                            ; $67a9: $9b
	add hl, bc                                       ; $67aa: $09
	inc [hl]                                         ; $67ab: $34
	add d                                            ; $67ac: $82
	ret nz                                           ; $67ad: $c0

	dec de                                           ; $67ae: $1b
	db $d3                                           ; $67af: $d3
	ld [bc], a                                       ; $67b0: $02
	ret nc                                           ; $67b1: $d0

	pop de                                           ; $67b2: $d1
	ld a, [bc]                                       ; $67b3: $0a
	pop hl                                           ; $67b4: $e1
	ld [bc], a                                       ; $67b5: $02
	inc bc                                           ; $67b6: $03
	dec de                                           ; $67b7: $1b
	ret nz                                           ; $67b8: $c0

	ld bc, $05a0                                     ; $67b9: $01 $a0 $05
	ld [bc], a                                       ; $67bc: $02
	sbc l                                            ; $67bd: $9d
	ld [bc], a                                       ; $67be: $02
	jp nc, $0ad3                                     ; $67bf: $d2 $d3 $0a

	pop hl                                           ; $67c2: $e1
	ld [bc], a                                       ; $67c3: $02
	inc bc                                           ; $67c4: $03
	rra                                              ; $67c5: $1f
	ret nz                                           ; $67c6: $c0

	ld bc, $05a0                                     ; $67c7: $01 $a0 $05
	ld [bc], a                                       ; $67ca: $02
	and a                                            ; $67cb: $a7
	ld bc, $0ad4                                     ; $67cc: $01 $d4 $0a
	pop hl                                           ; $67cf: $e1
	ld [bc], a                                       ; $67d0: $02
	inc bc                                           ; $67d1: $03
	rra                                              ; $67d2: $1f
	ret nz                                           ; $67d3: $c0

	ld bc, $05a0                                     ; $67d4: $01 $a0 $05
	ld [bc], a                                       ; $67d7: $02
	or b                                             ; $67d8: $b0
	pop hl                                           ; $67d9: $e1
	ld [bc], a                                       ; $67da: $02
	inc bc                                           ; $67db: $03
	ret c                                            ; $67dc: $d8

	db $e4                                           ; $67dd: $e4
	ld [bc], a                                       ; $67de: $02
	ldh [c], a                                       ; $67df: $e2
	ld [bc], a                                       ; $67e0: $02
	or e                                             ; $67e1: $b3
	add hl, bc                                       ; $67e2: $09
	inc l                                            ; $67e3: $2c
	pop hl                                           ; $67e4: $e1
	ld [bc], a                                       ; $67e5: $02
	inc bc                                           ; $67e6: $03
	dec de                                           ; $67e7: $1b
	add d                                            ; $67e8: $82
	ret nz                                           ; $67e9: $c0

	dec de                                           ; $67ea: $1b
	db $d3                                           ; $67eb: $d3
	ld [bc], a                                       ; $67ec: $02
	ret nc                                           ; $67ed: $d0

	pop de                                           ; $67ee: $d1
	ld b, $c0                                        ; $67ef: $06 $c0
	ld bc, $05a0                                     ; $67f1: $01 $a0 $05
	ld [bc], a                                       ; $67f4: $02
	or l                                             ; $67f5: $b5
	ld [bc], a                                       ; $67f6: $02
	jp nc, $06d3                                     ; $67f7: $d2 $d3 $06

	ret nz                                           ; $67fa: $c0

	ld bc, $05a0                                     ; $67fb: $01 $a0 $05
	ld [bc], a                                       ; $67fe: $02
	cp d                                             ; $67ff: $ba
	ld bc, $06d4                                     ; $6800: $01 $d4 $06
	ret nz                                           ; $6803: $c0

	ld bc, $05a0                                     ; $6804: $01 $a0 $05
	ld [bc], a                                       ; $6807: $02
	jp nz, $02e1                                     ; $6808: $c2 $e1 $02

	inc bc                                           ; $680b: $03
	rst GetHLinHL                                          ; $680c: $cf
	db $e4                                           ; $680d: $e4
	ld [bc], a                                       ; $680e: $02
	or d                                             ; $680f: $b2
	add hl, bc                                       ; $6810: $09
	inc e                                            ; $6811: $1c
	pop bc                                           ; $6812: $c1
	ld e, c                                          ; $6813: $59
	db $e3                                           ; $6814: $e3
	nop                                              ; $6815: $00
	and d                                            ; $6816: $a2
	ret nz                                           ; $6817: $c0

	add hl, bc                                       ; $6818: $09
	db $e3                                           ; $6819: $e3
	nop                                              ; $681a: $00
	add hl, hl                                       ; $681b: $29
	and b                                            ; $681c: $a0
	add b                                            ; $681d: $80
	and b                                            ; $681e: $a0
	rrca                                             ; $681f: $0f
	nop                                              ; $6820: $00
	inc bc                                           ; $6821: $03
	db $e4                                           ; $6822: $e4
	nop                                              ; $6823: $00
	dec bc                                           ; $6824: $0b
	rst $38                                          ; $6825: $ff
	rlca                                             ; $6826: $07
	ld b, b                                          ; $6827: $40
	add b                                            ; $6828: $80
	and b                                            ; $6829: $a0
	rrca                                             ; $682a: $0f
	db $e4                                           ; $682b: $e4
	nop                                              ; $682c: $00
	sbc e                                            ; $682d: $9b
	jr z, jr_07f_6836                                ; $682e: $28 $06

	ret nz                                           ; $6830: $c0

	ld bc, $05a0                                     ; $6831: $01 $a0 $05
	ld [bc], a                                       ; $6834: $02
	rst JumpTable                                          ; $6835: $c7

jr_07f_6836:
	sub b                                            ; $6836: $90
	ld [bc], a                                       ; $6837: $02
	adc $09                                          ; $6838: $ce $09
	inc l                                            ; $683a: $2c
	pop hl                                           ; $683b: $e1
	ld [bc], a                                       ; $683c: $02
	inc bc                                           ; $683d: $03
	rrca                                             ; $683e: $0f
	add d                                            ; $683f: $82
	ret nz                                           ; $6840: $c0

	dec de                                           ; $6841: $1b
	db $d3                                           ; $6842: $d3
	ld [bc], a                                       ; $6843: $02
	ret nc                                           ; $6844: $d0

	pop de                                           ; $6845: $d1
	ld b, $c0                                        ; $6846: $06 $c0
	ld bc, $05a0                                     ; $6848: $01 $a0 $05
	ld [bc], a                                       ; $684b: $02
	sub $02                                          ; $684c: $d6 $02
	jp nc, $06d3                                     ; $684e: $d2 $d3 $06

	ret nz                                           ; $6851: $c0

	ld bc, $05a0                                     ; $6852: $01 $a0 $05
	ld [bc], a                                       ; $6855: $02
	rst SubAFromDE                                          ; $6856: $df
	ld bc, $06d4                                     ; $6857: $01 $d4 $06
	ret nz                                           ; $685a: $c0

	ld bc, $05a0                                     ; $685b: $01 $a0 $05
	ld [bc], a                                       ; $685e: $02
	push hl                                          ; $685f: $e5
	pop hl                                           ; $6860: $e1
	ld [bc], a                                       ; $6861: $02
	inc bc                                           ; $6862: $03
	or h                                             ; $6863: $b4
	db $e4                                           ; $6864: $e4
	ld [bc], a                                       ; $6865: $02
	ld e, e                                          ; $6866: $5b
	ld [bc], a                                       ; $6867: $02
	jp hl                                            ; $6868: $e9


	add hl, bc                                       ; $6869: $09
	inc l                                            ; $686a: $2c
	pop hl                                           ; $686b: $e1
	ld [bc], a                                       ; $686c: $02
	inc bc                                           ; $686d: $03
	dec de                                           ; $686e: $1b
	add d                                            ; $686f: $82
	ret nz                                           ; $6870: $c0

	dec de                                           ; $6871: $1b
	db $d3                                           ; $6872: $d3
	ld [bc], a                                       ; $6873: $02
	ret nc                                           ; $6874: $d0

	pop de                                           ; $6875: $d1
	ld b, $c0                                        ; $6876: $06 $c0
	ld bc, $05a0                                     ; $6878: $01 $a0 $05
	ld [bc], a                                       ; $687b: $02
	db $eb                                           ; $687c: $eb
	ld [bc], a                                       ; $687d: $02
	jp nc, $06d3                                     ; $687e: $d2 $d3 $06

	ret nz                                           ; $6881: $c0

	ld bc, $05a0                                     ; $6882: $01 $a0 $05
	ld [bc], a                                       ; $6885: $02
	ldh a, [c]                                       ; $6886: $f2
	ld bc, $06d4                                     ; $6887: $01 $d4 $06
	ret nz                                           ; $688a: $c0

	ld bc, $05a0                                     ; $688b: $01 $a0 $05
	ld [bc], a                                       ; $688e: $02
	rst FarCall                                          ; $688f: $f7
	pop hl                                           ; $6890: $e1
	ld [bc], a                                       ; $6891: $02
	inc bc                                           ; $6892: $03
	rst GetHLinHL                                          ; $6893: $cf
	db $e4                                           ; $6894: $e4
	ld [bc], a                                       ; $6895: $02
	dec hl                                           ; $6896: $2b
	inc bc                                           ; $6897: $03
	nop                                              ; $6898: $00
	add hl, bc                                       ; $6899: $09
	inc l                                            ; $689a: $2c
	pop hl                                           ; $689b: $e1
	ld [bc], a                                       ; $689c: $02
	inc bc                                           ; $689d: $03
	rla                                              ; $689e: $17
	add d                                            ; $689f: $82
	ret nz                                           ; $68a0: $c0

	dec de                                           ; $68a1: $1b
	db $d3                                           ; $68a2: $d3
	ld [bc], a                                       ; $68a3: $02
	ret nc                                           ; $68a4: $d0

	pop de                                           ; $68a5: $d1
	ld b, $c0                                        ; $68a6: $06 $c0
	ld bc, $05a0                                     ; $68a8: $01 $a0 $05
	inc bc                                           ; $68ab: $03
	ld b, $02                                        ; $68ac: $06 $02
	jp nc, $06d3                                     ; $68ae: $d2 $d3 $06

	ret nz                                           ; $68b1: $c0

	ld bc, $05a0                                     ; $68b2: $01 $a0 $05
	inc bc                                           ; $68b5: $03
	inc c                                            ; $68b6: $0c
	ld bc, $06d4                                     ; $68b7: $01 $d4 $06
	ret nz                                           ; $68ba: $c0

	ld bc, $05a0                                     ; $68bb: $01 $a0 $05
	inc bc                                           ; $68be: $03
	inc d                                            ; $68bf: $14
	pop hl                                           ; $68c0: $e1
	ld [bc], a                                       ; $68c1: $02
	inc bc                                           ; $68c2: $03
	add $e4                                          ; $68c3: $c6 $e4
	ld bc, $28fb                                     ; $68c5: $01 $fb $28
	ld b, $c0                                        ; $68c8: $06 $c0
	ld bc, $05a0                                     ; $68ca: $01 $a0 $05
	inc bc                                           ; $68cd: $03
	rra                                              ; $68ce: $1f
	sbc b                                            ; $68cf: $98
	inc bc                                           ; $68d0: $03
	jr z, jr_07f_68dc                                ; $68d1: $28 $09

	inc l                                            ; $68d3: $2c
	pop hl                                           ; $68d4: $e1
	ld [bc], a                                       ; $68d5: $02
	inc bc                                           ; $68d6: $03
	inc de                                           ; $68d7: $13
	add d                                            ; $68d8: $82
	ret nz                                           ; $68d9: $c0

	dec de                                           ; $68da: $1b

jr_07f_68db:
	db $d3                                           ; $68db: $d3

jr_07f_68dc:
	ld [bc], a                                       ; $68dc: $02
	ret nc                                           ; $68dd: $d0

	pop de                                           ; $68de: $d1
	ld b, $c0                                        ; $68df: $06 $c0
	ld bc, $05a0                                     ; $68e1: $01 $a0 $05
	inc bc                                           ; $68e4: $03
	ld a, [hl+]                                      ; $68e5: $2a
	ld [bc], a                                       ; $68e6: $02
	jp nc, $06d3                                     ; $68e7: $d2 $d3 $06

	ret nz                                           ; $68ea: $c0

	ld bc, $05a0                                     ; $68eb: $01 $a0 $05
	inc bc                                           ; $68ee: $03
	jr nc, @+$03                                     ; $68ef: $30 $01

	call nc, $c006                                   ; $68f1: $d4 $06 $c0
	ld bc, $05a0                                     ; $68f4: $01 $a0 $05
	inc bc                                           ; $68f7: $03
	jr c, jr_07f_68db                                ; $68f8: $38 $e1

	ld [bc], a                                       ; $68fa: $02
	inc bc                                           ; $68fb: $03
	cp l                                             ; $68fc: $bd
	db $e4                                           ; $68fd: $e4
	ld bc, $03c2                                     ; $68fe: $01 $c2 $03
	ccf                                              ; $6901: $3f
	add hl, bc                                       ; $6902: $09
	inc [hl]                                         ; $6903: $34
	add d                                            ; $6904: $82
	ret nz                                           ; $6905: $c0

	dec de                                           ; $6906: $1b
	db $d3                                           ; $6907: $d3
	ld [bc], a                                       ; $6908: $02
	ret nc                                           ; $6909: $d0

	pop de                                           ; $690a: $d1
	ld a, [bc]                                       ; $690b: $0a
	pop hl                                           ; $690c: $e1
	ld [bc], a                                       ; $690d: $02
	inc bc                                           ; $690e: $03
	dec de                                           ; $690f: $1b
	ret nz                                           ; $6910: $c0

	ld bc, $05a0                                     ; $6911: $01 $a0 $05
	inc bc                                           ; $6914: $03
	ld b, c                                          ; $6915: $41
	ld [bc], a                                       ; $6916: $02
	jp nc, $0ad3                                     ; $6917: $d2 $d3 $0a

	pop hl                                           ; $691a: $e1
	ld [bc], a                                       ; $691b: $02
	inc bc                                           ; $691c: $03
	rra                                              ; $691d: $1f
	ret nz                                           ; $691e: $c0

	ld bc, $05a0                                     ; $691f: $01 $a0 $05
	inc bc                                           ; $6922: $03
	ld b, a                                          ; $6923: $47
	ld bc, $0ad4                                     ; $6924: $01 $d4 $0a
	pop hl                                           ; $6927: $e1
	ld [bc], a                                       ; $6928: $02
	inc bc                                           ; $6929: $03
	rra                                              ; $692a: $1f
	ret nz                                           ; $692b: $c0

	ld bc, $05a0                                     ; $692c: $01 $a0 $05
	inc bc                                           ; $692f: $03
	ld d, b                                          ; $6930: $50
	pop hl                                           ; $6931: $e1
	ld [bc], a                                       ; $6932: $02
	inc bc                                           ; $6933: $03
	ret c                                            ; $6934: $d8

	db $e4                                           ; $6935: $e4
	ld bc, $038a                                     ; $6936: $01 $8a $03
	ld e, [hl]                                       ; $6939: $5e
	add hl, bc                                       ; $693a: $09
	inc l                                            ; $693b: $2c
	pop hl                                           ; $693c: $e1
	ld [bc], a                                       ; $693d: $02
	inc bc                                           ; $693e: $03
	rla                                              ; $693f: $17
	add d                                            ; $6940: $82
	ret nz                                           ; $6941: $c0

	dec de                                           ; $6942: $1b
	db $d3                                           ; $6943: $d3
	ld [bc], a                                       ; $6944: $02
	ret nc                                           ; $6945: $d0

	pop de                                           ; $6946: $d1
	ld b, $c0                                        ; $6947: $06 $c0
	ld bc, $05a0                                     ; $6949: $01 $a0 $05
	inc bc                                           ; $694c: $03
	ld h, b                                          ; $694d: $60
	ld [bc], a                                       ; $694e: $02
	jp nc, $06d3                                     ; $694f: $d2 $d3 $06

	ret nz                                           ; $6952: $c0

	ld bc, $05a0                                     ; $6953: $01 $a0 $05
	inc bc                                           ; $6956: $03
	ld l, e                                          ; $6957: $6b
	ld bc, $06d4                                     ; $6958: $01 $d4 $06
	ret nz                                           ; $695b: $c0

	ld bc, $05a0                                     ; $695c: $01 $a0 $05
	inc bc                                           ; $695f: $03
	ld [hl], b                                       ; $6960: $70
	pop hl                                           ; $6961: $e1
	ld [bc], a                                       ; $6962: $02
	inc bc                                           ; $6963: $03
	add $e4                                          ; $6964: $c6 $e4
	ld bc, $095a                                     ; $6966: $01 $5a $09
	inc e                                            ; $6969: $1c
	pop bc                                           ; $696a: $c1
	ld e, c                                          ; $696b: $59
	db $e3                                           ; $696c: $e3
	nop                                              ; $696d: $00
	and e                                            ; $696e: $a3
	ret nz                                           ; $696f: $c0

	add hl, bc                                       ; $6970: $09
	db $e3                                           ; $6971: $e3
	nop                                              ; $6972: $00
	ld l, $a0                                        ; $6973: $2e $a0
	add b                                            ; $6975: $80
	and b                                            ; $6976: $a0
	stop                                             ; $6977: $10 $00
	inc bc                                           ; $6979: $03
	db $e4                                           ; $697a: $e4
	nop                                              ; $697b: $00
	dec bc                                           ; $697c: $0b
	rst $38                                          ; $697d: $ff
	rlca                                             ; $697e: $07
	ld b, b                                          ; $697f: $40
	add b                                            ; $6980: $80
	and b                                            ; $6981: $a0
	db $10                                           ; $6982: $10
	db $e4                                           ; $6983: $e4
	nop                                              ; $6984: $00
	and e                                            ; $6985: $a3
	jr z, jr_07f_698e                                ; $6986: $28 $06

	ret nz                                           ; $6988: $c0

	ld bc, $05a0                                     ; $6989: $01 $a0 $05
	inc bc                                           ; $698c: $03
	ld a, c                                          ; $698d: $79

jr_07f_698e:
	sbc b                                            ; $698e: $98
	inc bc                                           ; $698f: $03
	ld a, [hl]                                       ; $6990: $7e
	add hl, bc                                       ; $6991: $09
	inc l                                            ; $6992: $2c
	pop hl                                           ; $6993: $e1
	ld [bc], a                                       ; $6994: $02
	inc bc                                           ; $6995: $03
	inc de                                           ; $6996: $13
	add d                                            ; $6997: $82
	ret nz                                           ; $6998: $c0

	dec de                                           ; $6999: $1b
	db $d3                                           ; $699a: $d3
	ld [bc], a                                       ; $699b: $02
	ret nc                                           ; $699c: $d0

	pop de                                           ; $699d: $d1
	ld b, $c0                                        ; $699e: $06 $c0
	ld bc, $05a0                                     ; $69a0: $01 $a0 $05
	inc bc                                           ; $69a3: $03
	add h                                            ; $69a4: $84
	ld [bc], a                                       ; $69a5: $02
	jp nc, $06d3                                     ; $69a6: $d2 $d3 $06

	ret nz                                           ; $69a9: $c0

	ld bc, $05a0                                     ; $69aa: $01 $a0 $05
	inc bc                                           ; $69ad: $03
	adc e                                            ; $69ae: $8b
	ld bc, $06d4                                     ; $69af: $01 $d4 $06
	ret nz                                           ; $69b2: $c0

	ld bc, $05a0                                     ; $69b3: $01 $a0 $05
	inc bc                                           ; $69b6: $03
	sub l                                            ; $69b7: $95
	pop hl                                           ; $69b8: $e1
	ld [bc], a                                       ; $69b9: $02
	inc bc                                           ; $69ba: $03
	cp l                                             ; $69bb: $bd
	db $e4                                           ; $69bc: $e4
	ld bc, $0303                                     ; $69bd: $01 $03 $03
	and l                                            ; $69c0: $a5
	add hl, bc                                       ; $69c1: $09
	inc [hl]                                         ; $69c2: $34
	add d                                            ; $69c3: $82
	ret nz                                           ; $69c4: $c0

	dec de                                           ; $69c5: $1b
	db $d3                                           ; $69c6: $d3
	ld [bc], a                                       ; $69c7: $02
	ret nc                                           ; $69c8: $d0

	pop de                                           ; $69c9: $d1
	ld a, [bc]                                       ; $69ca: $0a
	pop hl                                           ; $69cb: $e1
	ld [bc], a                                       ; $69cc: $02
	inc bc                                           ; $69cd: $03
	dec de                                           ; $69ce: $1b
	ret nz                                           ; $69cf: $c0

	ld bc, $05a0                                     ; $69d0: $01 $a0 $05
	inc bc                                           ; $69d3: $03
	xor h                                            ; $69d4: $ac
	ld [bc], a                                       ; $69d5: $02
	jp nc, $0ad3                                     ; $69d6: $d2 $d3 $0a

	pop hl                                           ; $69d9: $e1
	ld [bc], a                                       ; $69da: $02
	inc bc                                           ; $69db: $03
	rra                                              ; $69dc: $1f
	ret nz                                           ; $69dd: $c0

	ld bc, $05a0                                     ; $69de: $01 $a0 $05
	inc bc                                           ; $69e1: $03
	xor a                                            ; $69e2: $af
	ld bc, $0ad4                                     ; $69e3: $01 $d4 $0a
	pop hl                                           ; $69e6: $e1
	ld [bc], a                                       ; $69e7: $02
	inc bc                                           ; $69e8: $03
	rra                                              ; $69e9: $1f
	ret nz                                           ; $69ea: $c0

	ld bc, $05a0                                     ; $69eb: $01 $a0 $05
	inc bc                                           ; $69ee: $03
	or a                                             ; $69ef: $b7
	pop hl                                           ; $69f0: $e1
	ld [bc], a                                       ; $69f1: $02
	inc bc                                           ; $69f2: $03
	ret c                                            ; $69f3: $d8

	db $e4                                           ; $69f4: $e4
	nop                                              ; $69f5: $00
	rlc e                                            ; $69f6: $cb $03
	cp e                                             ; $69f8: $bb
	add hl, bc                                       ; $69f9: $09
	inc l                                            ; $69fa: $2c
	pop hl                                           ; $69fb: $e1
	ld [bc], a                                       ; $69fc: $02
	inc bc                                           ; $69fd: $03
	dec de                                           ; $69fe: $1b
	add d                                            ; $69ff: $82
	ret nz                                           ; $6a00: $c0

	dec de                                           ; $6a01: $1b
	db $d3                                           ; $6a02: $d3
	ld [bc], a                                       ; $6a03: $02
	ret nc                                           ; $6a04: $d0

	pop de                                           ; $6a05: $d1
	ld b, $c0                                        ; $6a06: $06 $c0
	ld bc, $05a0                                     ; $6a08: $01 $a0 $05
	inc bc                                           ; $6a0b: $03
	pop bc                                           ; $6a0c: $c1
	ld [bc], a                                       ; $6a0d: $02
	jp nc, $06d3                                     ; $6a0e: $d2 $d3 $06

	ret nz                                           ; $6a11: $c0

	ld bc, $05a0                                     ; $6a12: $01 $a0 $05
	inc bc                                           ; $6a15: $03
	jp z, $d401                                      ; $6a16: $ca $01 $d4

	ld b, $c0                                        ; $6a19: $06 $c0
	ld bc, $05a0                                     ; $6a1b: $01 $a0 $05
	inc bc                                           ; $6a1e: $03
	jp nc, $02e1                                     ; $6a1f: $d2 $e1 $02

	inc bc                                           ; $6a22: $03
	rst GetHLinHL                                          ; $6a23: $cf
	db $e4                                           ; $6a24: $e4
	nop                                              ; $6a25: $00
	sbc e                                            ; $6a26: $9b
	jr z, jr_07f_6a2f                                ; $6a27: $28 $06

	ret nz                                           ; $6a29: $c0

	ld bc, $05a0                                     ; $6a2a: $01 $a0 $05
	inc bc                                           ; $6a2d: $03
	ret c                                            ; $6a2e: $d8

jr_07f_6a2f:
	sub b                                            ; $6a2f: $90
	inc bc                                           ; $6a30: $03
	rst SubAFromDE                                          ; $6a31: $df
	add hl, bc                                       ; $6a32: $09
	inc l                                            ; $6a33: $2c
	pop hl                                           ; $6a34: $e1
	ld [bc], a                                       ; $6a35: $02
	inc bc                                           ; $6a36: $03
	inc de                                           ; $6a37: $13
	add d                                            ; $6a38: $82
	ret nz                                           ; $6a39: $c0

	dec de                                           ; $6a3a: $1b
	db $d3                                           ; $6a3b: $d3
	ld [bc], a                                       ; $6a3c: $02
	ret nc                                           ; $6a3d: $d0

	pop de                                           ; $6a3e: $d1
	ld b, $c0                                        ; $6a3f: $06 $c0
	ld bc, $05a0                                     ; $6a41: $01 $a0 $05
	inc bc                                           ; $6a44: $03
	pop hl                                           ; $6a45: $e1
	ld [bc], a                                       ; $6a46: $02
	jp nc, $06d3                                     ; $6a47: $d2 $d3 $06

	ret nz                                           ; $6a4a: $c0

	ld bc, $05a0                                     ; $6a4b: $01 $a0 $05
	inc bc                                           ; $6a4e: $03

jr_07f_6a4f:
	add sp, $01                                      ; $6a4f: $e8 $01
	call nc, $c006                                   ; $6a51: $d4 $06 $c0
	ld bc, $05a0                                     ; $6a54: $01 $a0 $05
	inc bc                                           ; $6a57: $03
	db $ed                                           ; $6a58: $ed
	pop hl                                           ; $6a59: $e1
	ld [bc], a                                       ; $6a5a: $02
	inc bc                                           ; $6a5b: $03
	cp l                                             ; $6a5c: $bd
	db $e4                                           ; $6a5d: $e4
	nop                                              ; $6a5e: $00
	ld h, d                                          ; $6a5f: $62
	inc bc                                           ; $6a60: $03
	push af                                          ; $6a61: $f5
	add hl, bc                                       ; $6a62: $09
	inc l                                            ; $6a63: $2c
	pop hl                                           ; $6a64: $e1
	ld [bc], a                                       ; $6a65: $02
	inc bc                                           ; $6a66: $03
	dec de                                           ; $6a67: $1b
	add d                                            ; $6a68: $82
	ret nz                                           ; $6a69: $c0

	dec de                                           ; $6a6a: $1b
	db $d3                                           ; $6a6b: $d3
	ld [bc], a                                       ; $6a6c: $02
	ret nc                                           ; $6a6d: $d0

	pop de                                           ; $6a6e: $d1
	ld b, $c0                                        ; $6a6f: $06 $c0
	ld bc, $05a0                                     ; $6a71: $01 $a0 $05
	inc bc                                           ; $6a74: $03
	rst FarCall                                          ; $6a75: $f7
	ld [bc], a                                       ; $6a76: $02
	jp nc, $06d3                                     ; $6a77: $d2 $d3 $06

	ret nz                                           ; $6a7a: $c0

	ld bc, $05a0                                     ; $6a7b: $01 $a0 $05
	inc b                                            ; $6a7e: $04
	inc bc                                           ; $6a7f: $03
	ld bc, $06d4                                     ; $6a80: $01 $d4 $06
	ret nz                                           ; $6a83: $c0

	ld bc, $05a0                                     ; $6a84: $01 $a0 $05
	inc b                                            ; $6a87: $04
	ld c, $e1                                        ; $6a88: $0e $e1
	ld [bc], a                                       ; $6a8a: $02
	inc bc                                           ; $6a8b: $03
	rst GetHLinHL                                          ; $6a8c: $cf
	db $e4                                           ; $6a8d: $e4
	nop                                              ; $6a8e: $00
	ld [hl-], a                                      ; $6a8f: $32
	inc b                                            ; $6a90: $04
	rla                                              ; $6a91: $17
	add hl, bc                                       ; $6a92: $09
	inc l                                            ; $6a93: $2c
	pop hl                                           ; $6a94: $e1
	ld [bc], a                                       ; $6a95: $02
	inc bc                                           ; $6a96: $03
	rla                                              ; $6a97: $17
	add d                                            ; $6a98: $82
	ret nz                                           ; $6a99: $c0

	dec de                                           ; $6a9a: $1b
	db $d3                                           ; $6a9b: $d3
	ld [bc], a                                       ; $6a9c: $02
	ret nc                                           ; $6a9d: $d0

	pop de                                           ; $6a9e: $d1
	ld b, $c0                                        ; $6a9f: $06 $c0
	ld bc, $05a0                                     ; $6aa1: $01 $a0 $05
	inc b                                            ; $6aa4: $04
	add hl, de                                       ; $6aa5: $19
	ld [bc], a                                       ; $6aa6: $02
	jp nc, $06d3                                     ; $6aa7: $d2 $d3 $06

	ret nz                                           ; $6aaa: $c0

	ld bc, $05a0                                     ; $6aab: $01 $a0 $05
	inc b                                            ; $6aae: $04
	dec e                                            ; $6aaf: $1d
	ld bc, $06d4                                     ; $6ab0: $01 $d4 $06
	ret nz                                           ; $6ab3: $c0

	ld bc, $05a0                                     ; $6ab4: $01 $a0 $05
	inc b                                            ; $6ab7: $04
	daa                                              ; $6ab8: $27
	pop hl                                           ; $6ab9: $e1
	ld [bc], a                                       ; $6aba: $02
	inc bc                                           ; $6abb: $03
	add $e4                                          ; $6abc: $c6 $e4
	nop                                              ; $6abe: $00
	ld [bc], a                                       ; $6abf: $02
	add hl, bc                                       ; $6ac0: $09
	dec l                                            ; $6ac1: $2d
	pop bc                                           ; $6ac2: $c1
	ld e, c                                          ; $6ac3: $59
	db $e3                                           ; $6ac4: $e3
	nop                                              ; $6ac5: $00
	sbc a                                            ; $6ac6: $9f
	ret nz                                           ; $6ac7: $c0

	add hl, bc                                       ; $6ac8: $09
	db $e3                                           ; $6ac9: $e3
	nop                                              ; $6aca: $00
	jr c, jr_07f_6a4f                                ; $6acb: $38 $82

	adc e                                            ; $6acd: $8b
	and b                                            ; $6ace: $a0
	ld [bc], a                                       ; $6acf: $02
	ld [bc], a                                       ; $6ad0: $02
	or b                                             ; $6ad1: $b0
	add d                                            ; $6ad2: $82
	dec b                                            ; $6ad3: $05
	ret nz                                           ; $6ad4: $c0

	ld d, [hl]                                       ; $6ad5: $56
	db $d3                                           ; $6ad6: $d3
	jp nc, $02d0                                     ; $6ad7: $d2 $d0 $02

	or b                                             ; $6ada: $b0
	add e                                            ; $6adb: $83
	dec b                                            ; $6adc: $05
	ret nz                                           ; $6add: $c0

	ld d, [hl]                                       ; $6ade: $56
	db $d3                                           ; $6adf: $d3
	jp nc, $02d1                                     ; $6ae0: $d2 $d1 $02

	or b                                             ; $6ae3: $b0
	add h                                            ; $6ae4: $84
	dec b                                            ; $6ae5: $05
	ret nz                                           ; $6ae6: $c0

	ld d, [hl]                                       ; $6ae7: $56
	db $d3                                           ; $6ae8: $d3
	jp nc, $e5d2                                     ; $6ae9: $d2 $d2 $e5

	rra                                              ; $6aec: $1f
	nop                                              ; $6aed: $00
	nop                                              ; $6aee: $00
	add hl, bc                                       ; $6aef: $09
	inc d                                            ; $6af0: $14
	ret nc                                           ; $6af1: $d0

	add e                                            ; $6af2: $83
	ld bc, $d0de                                     ; $6af3: $01 $de $d0
	ret nz                                           ; $6af6: $c0

	ld bc, $05a0                                     ; $6af7: $01 $a0 $05
	inc b                                            ; $6afa: $04
	ld a, [hl+]                                      ; $6afb: $2a
	ret nz                                           ; $6afc: $c0

	ld bc, $01a0                                     ; $6afd: $01 $a0 $01
	inc b                                            ; $6b00: $04
	ld sp, $00e4                                     ; $6b01: $31 $e4 $00
	ld [bc], a                                       ; $6b04: $02
	add hl, bc                                       ; $6b05: $09
	inc [hl]                                         ; $6b06: $34
	pop bc                                           ; $6b07: $c1
	ld e, c                                          ; $6b08: $59
	db $e3                                           ; $6b09: $e3
	nop                                              ; $6b0a: $00
	xor l                                            ; $6b0b: $ad
	ld h, b                                          ; $6b0c: $60
	add b                                            ; $6b0d: $80
	ld [bc], a                                       ; $6b0e: $02
	ld b, c                                          ; $6b0f: $41
	rla                                              ; $6b10: $17
	and c                                            ; $6b11: $a1
	add c                                            ; $6b12: $81
	and b                                            ; $6b13: $a0
	ld de, $0300                                     ; $6b14: $11 $00 $03
	db $e4                                           ; $6b17: $e4
	ld bc, $015d                                     ; $6b18: $01 $5d $01
	inc bc                                           ; $6b1b: $03
	db $e4                                           ; $6b1c: $e4
	nop                                              ; $6b1d: $00
	ld e, $ff                                        ; $6b1e: $1e $ff
	rlca                                             ; $6b20: $07
	ld b, b                                          ; $6b21: $40
	add c                                            ; $6b22: $81
	and b                                            ; $6b23: $a0
	ld de, $00e4                                     ; $6b24: $11 $e4 $00
	xor [hl]                                         ; $6b27: $ae
	ld [de], a                                       ; $6b28: $12
	and b                                            ; $6b29: $a0
	add b                                            ; $6b2a: $80
	and b                                            ; $6b2b: $a0
	inc de                                           ; $6b2c: $13
	nop                                              ; $6b2d: $00
	inc bc                                           ; $6b2e: $03
	db $e4                                           ; $6b2f: $e4
	nop                                              ; $6b30: $00
	dec bc                                           ; $6b31: $0b
	rst $38                                          ; $6b32: $ff
	rlca                                             ; $6b33: $07
	ld b, b                                          ; $6b34: $40
	add b                                            ; $6b35: $80
	and b                                            ; $6b36: $a0
	inc de                                           ; $6b37: $13
	db $e4                                           ; $6b38: $e4
	nop                                              ; $6b39: $00
	sbc e                                            ; $6b3a: $9b
	jr z, jr_07f_6b43                                ; $6b3b: $28 $06

	ret nz                                           ; $6b3d: $c0

	ld bc, $05a0                                     ; $6b3e: $01 $a0 $05
	inc b                                            ; $6b41: $04
	scf                                              ; $6b42: $37

jr_07f_6b43:
	sub b                                            ; $6b43: $90
	inc b                                            ; $6b44: $04
	ld b, h                                          ; $6b45: $44
	add hl, bc                                       ; $6b46: $09
	inc l                                            ; $6b47: $2c
	pop hl                                           ; $6b48: $e1
	ld [bc], a                                       ; $6b49: $02
	inc bc                                           ; $6b4a: $03
	inc de                                           ; $6b4b: $13
	add d                                            ; $6b4c: $82
	ret nz                                           ; $6b4d: $c0

	dec de                                           ; $6b4e: $1b
	db $d3                                           ; $6b4f: $d3
	ld [bc], a                                       ; $6b50: $02
	ret nc                                           ; $6b51: $d0

	pop de                                           ; $6b52: $d1
	ld b, $c0                                        ; $6b53: $06 $c0
	ld bc, $05a0                                     ; $6b55: $01 $a0 $05
	inc b                                            ; $6b58: $04
	ld b, [hl]                                       ; $6b59: $46
	ld [bc], a                                       ; $6b5a: $02
	jp nc, $06d3                                     ; $6b5b: $d2 $d3 $06

	ret nz                                           ; $6b5e: $c0

	ld bc, $05a0                                     ; $6b5f: $01 $a0 $05
	inc b                                            ; $6b62: $04
	ld c, a                                          ; $6b63: $4f
	ld bc, $06d4                                     ; $6b64: $01 $d4 $06
	ret nz                                           ; $6b67: $c0

	ld bc, $05a0                                     ; $6b68: $01 $a0 $05
	inc b                                            ; $6b6b: $04
	ld e, c                                          ; $6b6c: $59
	pop hl                                           ; $6b6d: $e1
	ld [bc], a                                       ; $6b6e: $02
	inc bc                                           ; $6b6f: $03
	or h                                             ; $6b70: $b4
	db $e4                                           ; $6b71: $e4
	ld bc, $049c                                     ; $6b72: $01 $9c $04
	ld e, [hl]                                       ; $6b75: $5e
	add hl, bc                                       ; $6b76: $09
	inc l                                            ; $6b77: $2c
	pop hl                                           ; $6b78: $e1
	ld [bc], a                                       ; $6b79: $02
	inc bc                                           ; $6b7a: $03
	dec de                                           ; $6b7b: $1b
	add d                                            ; $6b7c: $82
	ret nz                                           ; $6b7d: $c0

	dec de                                           ; $6b7e: $1b
	db $d3                                           ; $6b7f: $d3
	ld [bc], a                                       ; $6b80: $02
	ret nc                                           ; $6b81: $d0

	pop de                                           ; $6b82: $d1
	ld b, $c0                                        ; $6b83: $06 $c0
	ld bc, $05a0                                     ; $6b85: $01 $a0 $05
	inc b                                            ; $6b88: $04
	ld h, c                                          ; $6b89: $61
	ld [bc], a                                       ; $6b8a: $02
	jp nc, $06d3                                     ; $6b8b: $d2 $d3 $06

	ret nz                                           ; $6b8e: $c0

	ld bc, $05a0                                     ; $6b8f: $01 $a0 $05
	inc b                                            ; $6b92: $04
	ld h, [hl]                                       ; $6b93: $66
	ld bc, $06d4                                     ; $6b94: $01 $d4 $06
	ret nz                                           ; $6b97: $c0

	ld bc, $05a0                                     ; $6b98: $01 $a0 $05
	inc b                                            ; $6b9b: $04
	ld l, h                                          ; $6b9c: $6c
	pop hl                                           ; $6b9d: $e1
	ld [bc], a                                       ; $6b9e: $02
	inc bc                                           ; $6b9f: $03
	rst GetHLinHL                                          ; $6ba0: $cf
	db $e4                                           ; $6ba1: $e4
	ld bc, $046c                                     ; $6ba2: $01 $6c $04
	ld [hl], e                                       ; $6ba5: $73
	add hl, bc                                       ; $6ba6: $09
	inc l                                            ; $6ba7: $2c
	pop hl                                           ; $6ba8: $e1
	ld [bc], a                                       ; $6ba9: $02
	inc bc                                           ; $6baa: $03
	rla                                              ; $6bab: $17
	add d                                            ; $6bac: $82
	ret nz                                           ; $6bad: $c0

	dec de                                           ; $6bae: $1b
	db $d3                                           ; $6baf: $d3
	ld [bc], a                                       ; $6bb0: $02
	ret nc                                           ; $6bb1: $d0

	pop de                                           ; $6bb2: $d1
	ld b, $c0                                        ; $6bb3: $06 $c0
	ld bc, $05a0                                     ; $6bb5: $01 $a0 $05
	inc b                                            ; $6bb8: $04
	ld [hl], l                                       ; $6bb9: $75
	ld [bc], a                                       ; $6bba: $02
	jp nc, $06d3                                     ; $6bbb: $d2 $d3 $06

	ret nz                                           ; $6bbe: $c0

	ld bc, $05a0                                     ; $6bbf: $01 $a0 $05
	inc b                                            ; $6bc2: $04
	ld a, h                                          ; $6bc3: $7c
	ld bc, $06d4                                     ; $6bc4: $01 $d4 $06
	ret nz                                           ; $6bc7: $c0

	ld bc, $05a0                                     ; $6bc8: $01 $a0 $05
	inc b                                            ; $6bcb: $04
	add e                                            ; $6bcc: $83
	pop hl                                           ; $6bcd: $e1
	ld [bc], a                                       ; $6bce: $02
	inc bc                                           ; $6bcf: $03
	add $e4                                          ; $6bd0: $c6 $e4
	ld bc, $283c                                     ; $6bd2: $01 $3c $28
	ld b, $c0                                        ; $6bd5: $06 $c0
	ld bc, $05a0                                     ; $6bd7: $01 $a0 $05
	inc b                                            ; $6bda: $04
	adc b                                            ; $6bdb: $88
	sbc b                                            ; $6bdc: $98
	inc b                                            ; $6bdd: $04
	sub e                                            ; $6bde: $93
	add hl, bc                                       ; $6bdf: $09
	inc l                                            ; $6be0: $2c
	pop hl                                           ; $6be1: $e1
	ld [bc], a                                       ; $6be2: $02
	inc bc                                           ; $6be3: $03
	inc de                                           ; $6be4: $13
	add d                                            ; $6be5: $82
	ret nz                                           ; $6be6: $c0

	dec de                                           ; $6be7: $1b
	db $d3                                           ; $6be8: $d3
	ld [bc], a                                       ; $6be9: $02
	ret nc                                           ; $6bea: $d0

	pop de                                           ; $6beb: $d1
	ld b, $c0                                        ; $6bec: $06 $c0
	ld bc, $05a0                                     ; $6bee: $01 $a0 $05
	ld bc, $025a                                     ; $6bf1: $01 $5a $02
	jp nc, $06d3                                     ; $6bf4: $d2 $d3 $06

	ret nz                                           ; $6bf7: $c0

	ld bc, $05a0                                     ; $6bf8: $01 $a0 $05
	inc b                                            ; $6bfb: $04
	sbc d                                            ; $6bfc: $9a
	ld bc, $06d4                                     ; $6bfd: $01 $d4 $06
	ret nz                                           ; $6c00: $c0

	ld bc, $05a0                                     ; $6c01: $01 $a0 $05
	inc b                                            ; $6c04: $04
	sbc a                                            ; $6c05: $9f
	pop hl                                           ; $6c06: $e1
	ld [bc], a                                       ; $6c07: $02
	inc bc                                           ; $6c08: $03
	cp l                                             ; $6c09: $bd
	db $e4                                           ; $6c0a: $e4
	ld bc, $0403                                     ; $6c0b: $01 $03 $04
	and [hl]                                         ; $6c0e: $a6
	add hl, bc                                       ; $6c0f: $09
	inc [hl]                                         ; $6c10: $34
	add d                                            ; $6c11: $82
	ret nz                                           ; $6c12: $c0

	dec de                                           ; $6c13: $1b
	db $d3                                           ; $6c14: $d3
	ld [bc], a                                       ; $6c15: $02
	ret nc                                           ; $6c16: $d0

	pop de                                           ; $6c17: $d1
	ld a, [bc]                                       ; $6c18: $0a
	pop hl                                           ; $6c19: $e1
	ld [bc], a                                       ; $6c1a: $02
	inc bc                                           ; $6c1b: $03
	dec de                                           ; $6c1c: $1b
	ret nz                                           ; $6c1d: $c0

	ld bc, $05a0                                     ; $6c1e: $01 $a0 $05
	inc bc                                           ; $6c21: $03
	xor h                                            ; $6c22: $ac
	ld [bc], a                                       ; $6c23: $02
	jp nc, $0ad3                                     ; $6c24: $d2 $d3 $0a

	pop hl                                           ; $6c27: $e1
	ld [bc], a                                       ; $6c28: $02
	inc bc                                           ; $6c29: $03
	rra                                              ; $6c2a: $1f
	ret nz                                           ; $6c2b: $c0

	ld bc, $05a0                                     ; $6c2c: $01 $a0 $05
	inc b                                            ; $6c2f: $04
	xor b                                            ; $6c30: $a8
	ld bc, $0ad4                                     ; $6c31: $01 $d4 $0a
	pop hl                                           ; $6c34: $e1
	ld [bc], a                                       ; $6c35: $02
	inc bc                                           ; $6c36: $03
	rra                                              ; $6c37: $1f
	ret nz                                           ; $6c38: $c0

	ld bc, $05a0                                     ; $6c39: $01 $a0 $05
	inc bc                                           ; $6c3c: $03
	or a                                             ; $6c3d: $b7
	pop hl                                           ; $6c3e: $e1
	ld [bc], a                                       ; $6c3f: $02
	inc bc                                           ; $6c40: $03
	ret c                                            ; $6c41: $d8

	db $e4                                           ; $6c42: $e4
	nop                                              ; $6c43: $00
	rlc h                                            ; $6c44: $cb $04
	xor l                                            ; $6c46: $ad
	add hl, bc                                       ; $6c47: $09
	inc l                                            ; $6c48: $2c
	pop hl                                           ; $6c49: $e1
	ld [bc], a                                       ; $6c4a: $02
	inc bc                                           ; $6c4b: $03
	rla                                              ; $6c4c: $17
	add d                                            ; $6c4d: $82
	ret nz                                           ; $6c4e: $c0

	dec de                                           ; $6c4f: $1b
	db $d3                                           ; $6c50: $d3
	ld [bc], a                                       ; $6c51: $02
	ret nc                                           ; $6c52: $d0

	pop de                                           ; $6c53: $d1
	ld b, $c0                                        ; $6c54: $06 $c0
	ld bc, $05a0                                     ; $6c56: $01 $a0 $05
	inc b                                            ; $6c59: $04
	or b                                             ; $6c5a: $b0
	ld [bc], a                                       ; $6c5b: $02
	jp nc, $06d3                                     ; $6c5c: $d2 $d3 $06

	ret nz                                           ; $6c5f: $c0

	ld bc, $05a0                                     ; $6c60: $01 $a0 $05
	inc b                                            ; $6c63: $04
	cp h                                             ; $6c64: $bc
	ld bc, $06d4                                     ; $6c65: $01 $d4 $06
	ret nz                                           ; $6c68: $c0

	ld bc, $05a0                                     ; $6c69: $01 $a0 $05
	inc b                                            ; $6c6c: $04
	push bc                                          ; $6c6d: $c5
	pop hl                                           ; $6c6e: $e1
	ld [bc], a                                       ; $6c6f: $02
	inc bc                                           ; $6c70: $03
	add $e4                                          ; $6c71: $c6 $e4
	nop                                              ; $6c73: $00
	sbc e                                            ; $6c74: $9b
	jr z, @+$08                                      ; $6c75: $28 $06

	ret nz                                           ; $6c77: $c0

	ld bc, $05a0                                     ; $6c78: $01 $a0 $05
	inc b                                            ; $6c7b: $04
	call $0490                                       ; $6c7c: $cd $90 $04
	ret c                                            ; $6c7f: $d8

	add hl, bc                                       ; $6c80: $09
	inc l                                            ; $6c81: $2c
	pop hl                                           ; $6c82: $e1
	ld [bc], a                                       ; $6c83: $02
	inc bc                                           ; $6c84: $03
	inc de                                           ; $6c85: $13
	add d                                            ; $6c86: $82
	ret nz                                           ; $6c87: $c0

	dec de                                           ; $6c88: $1b
	db $d3                                           ; $6c89: $d3
	ld [bc], a                                       ; $6c8a: $02
	ret nc                                           ; $6c8b: $d0

	pop de                                           ; $6c8c: $d1
	ld b, $c0                                        ; $6c8d: $06 $c0
	ld bc, $05a0                                     ; $6c8f: $01 $a0 $05
	inc b                                            ; $6c92: $04
	jp c, $d202                                      ; $6c93: $da $02 $d2

	db $d3                                           ; $6c96: $d3
	ld b, $c0                                        ; $6c97: $06 $c0
	ld bc, $05a0                                     ; $6c99: $01 $a0 $05
	inc b                                            ; $6c9c: $04
	ldh [rSB], a                                     ; $6c9d: $e0 $01
	call nc, $c006                                   ; $6c9f: $d4 $06 $c0
	ld bc, $05a0                                     ; $6ca2: $01 $a0 $05
	inc b                                            ; $6ca5: $04
	rst SubAFromBC                                          ; $6ca6: $e7
	pop hl                                           ; $6ca7: $e1
	ld [bc], a                                       ; $6ca8: $02
	inc bc                                           ; $6ca9: $03
	cp l                                             ; $6caa: $bd
	db $e4                                           ; $6cab: $e4
	nop                                              ; $6cac: $00
	ld h, d                                          ; $6cad: $62
	inc b                                            ; $6cae: $04
	db $eb                                           ; $6caf: $eb
	add hl, bc                                       ; $6cb0: $09
	inc l                                            ; $6cb1: $2c
	pop hl                                           ; $6cb2: $e1
	ld [bc], a                                       ; $6cb3: $02
	inc bc                                           ; $6cb4: $03
	rra                                              ; $6cb5: $1f
	add d                                            ; $6cb6: $82
	ret nz                                           ; $6cb7: $c0

	dec de                                           ; $6cb8: $1b
	db $d3                                           ; $6cb9: $d3
	ld [bc], a                                       ; $6cba: $02
	ret nc                                           ; $6cbb: $d0

	pop de                                           ; $6cbc: $d1
	ld b, $c0                                        ; $6cbd: $06 $c0
	ld bc, $05a0                                     ; $6cbf: $01 $a0 $05
	inc b                                            ; $6cc2: $04
	db $ed                                           ; $6cc3: $ed
	ld [bc], a                                       ; $6cc4: $02
	jp nc, $06d3                                     ; $6cc5: $d2 $d3 $06

	ret nz                                           ; $6cc8: $c0

	ld bc, $05a0                                     ; $6cc9: $01 $a0 $05
	inc b                                            ; $6ccc: $04
	ldh a, [c]                                       ; $6ccd: $f2
	ld bc, $06d4                                     ; $6cce: $01 $d4 $06
	ret nz                                           ; $6cd1: $c0

	ld bc, $05a0                                     ; $6cd2: $01 $a0 $05
	inc b                                            ; $6cd5: $04
	or $e1                                           ; $6cd6: $f6 $e1
	ld [bc], a                                       ; $6cd8: $02
	inc bc                                           ; $6cd9: $03
	ret c                                            ; $6cda: $d8

	db $e4                                           ; $6cdb: $e4
	nop                                              ; $6cdc: $00
	ld [hl-], a                                      ; $6cdd: $32
	inc b                                            ; $6cde: $04
	ld a, [$2c09]                                    ; $6cdf: $fa $09 $2c
	pop hl                                           ; $6ce2: $e1
	ld [bc], a                                       ; $6ce3: $02
	inc bc                                           ; $6ce4: $03
	rla                                              ; $6ce5: $17
	add d                                            ; $6ce6: $82
	ret nz                                           ; $6ce7: $c0

	dec de                                           ; $6ce8: $1b
	db $d3                                           ; $6ce9: $d3
	ld [bc], a                                       ; $6cea: $02
	ret nc                                           ; $6ceb: $d0

	pop de                                           ; $6cec: $d1
	ld b, $c0                                        ; $6ced: $06 $c0
	ld bc, $05a0                                     ; $6cef: $01 $a0 $05
	inc b                                            ; $6cf2: $04
	db $fc                                           ; $6cf3: $fc
	ld [bc], a                                       ; $6cf4: $02
	jp nc, $06d3                                     ; $6cf5: $d2 $d3 $06

	ret nz                                           ; $6cf8: $c0

	ld bc, $05a0                                     ; $6cf9: $01 $a0 $05
	dec b                                            ; $6cfc: $05
	inc b                                            ; $6cfd: $04
	ld bc, $06d4                                     ; $6cfe: $01 $d4 $06
	ret nz                                           ; $6d01: $c0

	ld bc, $05a0                                     ; $6d02: $01 $a0 $05
	dec b                                            ; $6d05: $05
	ld a, [bc]                                       ; $6d06: $0a
	pop hl                                           ; $6d07: $e1
	ld [bc], a                                       ; $6d08: $02
	inc bc                                           ; $6d09: $03
	add $e4                                          ; $6d0a: $c6 $e4
	nop                                              ; $6d0c: $00
	ld [bc], a                                       ; $6d0d: $02
	add hl, bc                                       ; $6d0e: $09
	ld c, $c1                                        ; $6d0f: $0e $c1
	ld e, c                                          ; $6d11: $59
	db $e3                                           ; $6d12: $e3
	nop                                              ; $6d13: $00
	xor h                                            ; $6d14: $ac
	ret nz                                           ; $6d15: $c0

	ld d, [hl]                                       ; $6d16: $56
	db $d3                                           ; $6d17: $d3
	db $d3                                           ; $6d18: $d3
	ret nc                                           ; $6d19: $d0

	push hl                                          ; $6d1a: $e5
	rra                                              ; $6d1b: $1f
	nop                                              ; $6d1c: $00
	nop                                              ; $6d1d: $00
	add hl, bc                                       ; $6d1e: $09
	inc d                                            ; $6d1f: $14
	ret nc                                           ; $6d20: $d0

	add e                                            ; $6d21: $83
	ld bc, $d0de                                     ; $6d22: $01 $de $d0
	ret nz                                           ; $6d25: $c0

	ld bc, $05a0                                     ; $6d26: $01 $a0 $05
	inc b                                            ; $6d29: $04
	ld a, [hl+]                                      ; $6d2a: $2a
	ret nz                                           ; $6d2b: $c0

	ld bc, $01a0                                     ; $6d2c: $01 $a0 $01
	inc b                                            ; $6d2f: $04
	ld sp, $00e4                                     ; $6d30: $31 $e4 $00
	ld [bc], a                                       ; $6d33: $02
	add hl, bc                                       ; $6d34: $09
	inc [hl]                                         ; $6d35: $34
	pop bc                                           ; $6d36: $c1
	ld e, c                                          ; $6d37: $59
	db $e3                                           ; $6d38: $e3
	nop                                              ; $6d39: $00
	xor e                                            ; $6d3a: $ab
	ld h, b                                          ; $6d3b: $60
	add b                                            ; $6d3c: $80
	ld [bc], a                                       ; $6d3d: $02
	ld d, c                                          ; $6d3e: $51
	rla                                              ; $6d3f: $17
	and c                                            ; $6d40: $a1
	add c                                            ; $6d41: $81
	and b                                            ; $6d42: $a0
	inc d                                            ; $6d43: $14
	nop                                              ; $6d44: $00
	inc bc                                           ; $6d45: $03
	db $e4                                           ; $6d46: $e4
	ld bc, $015d                                     ; $6d47: $01 $5d $01
	inc bc                                           ; $6d4a: $03
	db $e4                                           ; $6d4b: $e4
	nop                                              ; $6d4c: $00
	ld e, $ff                                        ; $6d4d: $1e $ff
	rlca                                             ; $6d4f: $07
	ld b, b                                          ; $6d50: $40
	add c                                            ; $6d51: $81
	and b                                            ; $6d52: $a0
	inc d                                            ; $6d53: $14
	db $e4                                           ; $6d54: $e4
	nop                                              ; $6d55: $00
	xor [hl]                                         ; $6d56: $ae
	ld [de], a                                       ; $6d57: $12
	and b                                            ; $6d58: $a0
	add b                                            ; $6d59: $80
	and b                                            ; $6d5a: $a0
	ld d, $00                                        ; $6d5b: $16 $00
	inc bc                                           ; $6d5d: $03
	db $e4                                           ; $6d5e: $e4
	nop                                              ; $6d5f: $00
	dec bc                                           ; $6d60: $0b
	rst $38                                          ; $6d61: $ff
	rlca                                             ; $6d62: $07
	ld b, b                                          ; $6d63: $40
	add b                                            ; $6d64: $80
	and b                                            ; $6d65: $a0
	ld d, $e4                                        ; $6d66: $16 $e4
	nop                                              ; $6d68: $00
	sbc e                                            ; $6d69: $9b
	jr z, jr_07f_6d72                                ; $6d6a: $28 $06

	ret nz                                           ; $6d6c: $c0

	ld bc, $05a0                                     ; $6d6d: $01 $a0 $05
	dec b                                            ; $6d70: $05
	rrca                                             ; $6d71: $0f

jr_07f_6d72:
	sub b                                            ; $6d72: $90
	dec b                                            ; $6d73: $05
	dec de                                           ; $6d74: $1b
	add hl, bc                                       ; $6d75: $09
	inc l                                            ; $6d76: $2c
	pop hl                                           ; $6d77: $e1
	ld [bc], a                                       ; $6d78: $02
	inc bc                                           ; $6d79: $03
	inc de                                           ; $6d7a: $13
	add d                                            ; $6d7b: $82
	ret nz                                           ; $6d7c: $c0

	dec de                                           ; $6d7d: $1b

jr_07f_6d7e:
	db $d3                                           ; $6d7e: $d3
	ld [bc], a                                       ; $6d7f: $02
	ret nc                                           ; $6d80: $d0

	pop de                                           ; $6d81: $d1
	ld b, $c0                                        ; $6d82: $06 $c0
	ld bc, $05a0                                     ; $6d84: $01 $a0 $05
	dec b                                            ; $6d87: $05
	inc hl                                           ; $6d88: $23
	ld [bc], a                                       ; $6d89: $02
	jp nc, $06d3                                     ; $6d8a: $d2 $d3 $06

	ret nz                                           ; $6d8d: $c0

	ld bc, $05a0                                     ; $6d8e: $01 $a0 $05
	dec b                                            ; $6d91: $05
	ld [hl-], a                                      ; $6d92: $32
	ld bc, $06d4                                     ; $6d93: $01 $d4 $06
	ret nz                                           ; $6d96: $c0

	ld bc, $05a0                                     ; $6d97: $01 $a0 $05
	dec b                                            ; $6d9a: $05
	jr c, jr_07f_6d7e                                ; $6d9b: $38 $e1

	ld [bc], a                                       ; $6d9d: $02
	inc bc                                           ; $6d9e: $03
	or h                                             ; $6d9f: $b4
	db $e4                                           ; $6da0: $e4
	ld bc, $059c                                     ; $6da1: $01 $9c $05
	inc a                                            ; $6da4: $3c
	add hl, bc                                       ; $6da5: $09
	inc l                                            ; $6da6: $2c
	pop hl                                           ; $6da7: $e1
	ld [bc], a                                       ; $6da8: $02
	inc bc                                           ; $6da9: $03
	rra                                              ; $6daa: $1f
	add d                                            ; $6dab: $82
	ret nz                                           ; $6dac: $c0

	dec de                                           ; $6dad: $1b
	db $d3                                           ; $6dae: $d3
	ld [bc], a                                       ; $6daf: $02
	ret nc                                           ; $6db0: $d0

	pop de                                           ; $6db1: $d1
	ld b, $c0                                        ; $6db2: $06 $c0
	ld bc, $05a0                                     ; $6db4: $01 $a0 $05
	dec b                                            ; $6db7: $05
	ld b, h                                          ; $6db8: $44
	ld [bc], a                                       ; $6db9: $02
	jp nc, $06d3                                     ; $6dba: $d2 $d3 $06

	ret nz                                           ; $6dbd: $c0

	ld bc, $05a0                                     ; $6dbe: $01 $a0 $05
	dec b                                            ; $6dc1: $05
	ld c, d                                          ; $6dc2: $4a
	ld bc, $06d4                                     ; $6dc3: $01 $d4 $06
	ret nz                                           ; $6dc6: $c0

	ld bc, $05a0                                     ; $6dc7: $01 $a0 $05
	dec b                                            ; $6dca: $05
	ld d, b                                          ; $6dcb: $50
	pop hl                                           ; $6dcc: $e1
	ld [bc], a                                       ; $6dcd: $02
	inc bc                                           ; $6dce: $03
	ret c                                            ; $6dcf: $d8

	db $e4                                           ; $6dd0: $e4
	ld bc, $056c                                     ; $6dd1: $01 $6c $05
	ld d, e                                          ; $6dd4: $53
	add hl, bc                                       ; $6dd5: $09
	inc l                                            ; $6dd6: $2c
	pop hl                                           ; $6dd7: $e1
	ld [bc], a                                       ; $6dd8: $02
	inc bc                                           ; $6dd9: $03
	rla                                              ; $6dda: $17
	add d                                            ; $6ddb: $82
	ret nz                                           ; $6ddc: $c0

	dec de                                           ; $6ddd: $1b
	db $d3                                           ; $6dde: $d3
	ld [bc], a                                       ; $6ddf: $02
	ret nc                                           ; $6de0: $d0

	pop de                                           ; $6de1: $d1
	ld b, $c0                                        ; $6de2: $06 $c0
	ld bc, $05a0                                     ; $6de4: $01 $a0 $05
	dec b                                            ; $6de7: $05
	ld d, [hl]                                       ; $6de8: $56
	ld [bc], a                                       ; $6de9: $02
	jp nc, $06d3                                     ; $6dea: $d2 $d3 $06

	ret nz                                           ; $6ded: $c0

	ld bc, $05a0                                     ; $6dee: $01 $a0 $05
	dec b                                            ; $6df1: $05
	ld e, l                                          ; $6df2: $5d
	ld bc, $06d4                                     ; $6df3: $01 $d4 $06
	ret nz                                           ; $6df6: $c0

	ld bc, $05a0                                     ; $6df7: $01 $a0 $05
	dec b                                            ; $6dfa: $05
	ld h, l                                          ; $6dfb: $65
	pop hl                                           ; $6dfc: $e1
	ld [bc], a                                       ; $6dfd: $02
	inc bc                                           ; $6dfe: $03
	add $e4                                          ; $6dff: $c6 $e4
	ld bc, $283c                                     ; $6e01: $01 $3c $28
	ld b, $c0                                        ; $6e04: $06 $c0
	ld bc, $05a0                                     ; $6e06: $01 $a0 $05
	dec b                                            ; $6e09: $05
	ld l, c                                          ; $6e0a: $69
	sbc b                                            ; $6e0b: $98
	dec b                                            ; $6e0c: $05
	ld [hl], e                                       ; $6e0d: $73
	add hl, bc                                       ; $6e0e: $09
	inc l                                            ; $6e0f: $2c
	pop hl                                           ; $6e10: $e1
	ld [bc], a                                       ; $6e11: $02
	inc bc                                           ; $6e12: $03
	inc de                                           ; $6e13: $13
	add d                                            ; $6e14: $82
	ret nz                                           ; $6e15: $c0

	dec de                                           ; $6e16: $1b
	db $d3                                           ; $6e17: $d3
	ld [bc], a                                       ; $6e18: $02
	ret nc                                           ; $6e19: $d0

	pop de                                           ; $6e1a: $d1
	ld b, $c0                                        ; $6e1b: $06 $c0
	ld bc, $05a0                                     ; $6e1d: $01 $a0 $05
	dec b                                            ; $6e20: $05
	ld a, e                                          ; $6e21: $7b
	ld [bc], a                                       ; $6e22: $02
	jp nc, $06d3                                     ; $6e23: $d2 $d3 $06

	ret nz                                           ; $6e26: $c0

	ld bc, $05a0                                     ; $6e27: $01 $a0 $05
	dec b                                            ; $6e2a: $05
	add e                                            ; $6e2b: $83
	ld bc, $06d4                                     ; $6e2c: $01 $d4 $06
	ret nz                                           ; $6e2f: $c0

	ld bc, $05a0                                     ; $6e30: $01 $a0 $05
	dec b                                            ; $6e33: $05
	adc l                                            ; $6e34: $8d
	pop hl                                           ; $6e35: $e1
	ld [bc], a                                       ; $6e36: $02
	inc bc                                           ; $6e37: $03
	or h                                             ; $6e38: $b4
	db $e4                                           ; $6e39: $e4
	ld bc, $0503                                     ; $6e3a: $01 $03 $05
	sub e                                            ; $6e3d: $93
	add hl, bc                                       ; $6e3e: $09
	inc [hl]                                         ; $6e3f: $34
	add d                                            ; $6e40: $82
	ret nz                                           ; $6e41: $c0

	dec de                                           ; $6e42: $1b
	db $d3                                           ; $6e43: $d3
	ld [bc], a                                       ; $6e44: $02
	ret nc                                           ; $6e45: $d0

	pop de                                           ; $6e46: $d1
	ld a, [bc]                                       ; $6e47: $0a
	pop hl                                           ; $6e48: $e1
	ld [bc], a                                       ; $6e49: $02
	inc bc                                           ; $6e4a: $03
	dec de                                           ; $6e4b: $1b
	ret nz                                           ; $6e4c: $c0

	ld bc, $05a0                                     ; $6e4d: $01 $a0 $05
	dec b                                            ; $6e50: $05
	sbc e                                            ; $6e51: $9b
	ld [bc], a                                       ; $6e52: $02
	jp nc, $0ad3                                     ; $6e53: $d2 $d3 $0a

	pop hl                                           ; $6e56: $e1
	ld [bc], a                                       ; $6e57: $02
	inc bc                                           ; $6e58: $03
	rra                                              ; $6e59: $1f
	ret nz                                           ; $6e5a: $c0

	ld bc, $05a0                                     ; $6e5b: $01 $a0 $05
	dec b                                            ; $6e5e: $05
	sbc h                                            ; $6e5f: $9c
	ld bc, $0ad4                                     ; $6e60: $01 $d4 $0a
	pop hl                                           ; $6e63: $e1
	ld [bc], a                                       ; $6e64: $02
	inc bc                                           ; $6e65: $03
	rra                                              ; $6e66: $1f
	ret nz                                           ; $6e67: $c0

	ld bc, $05a0                                     ; $6e68: $01 $a0 $05
	dec b                                            ; $6e6b: $05
	and d                                            ; $6e6c: $a2
	pop hl                                           ; $6e6d: $e1
	ld [bc], a                                       ; $6e6e: $02
	inc bc                                           ; $6e6f: $03
	ret c                                            ; $6e70: $d8

	db $e4                                           ; $6e71: $e4
	nop                                              ; $6e72: $00
	rlc l                                            ; $6e73: $cb $05
	xor b                                            ; $6e75: $a8
	add hl, bc                                       ; $6e76: $09
	inc l                                            ; $6e77: $2c
	pop hl                                           ; $6e78: $e1
	ld [bc], a                                       ; $6e79: $02
	inc bc                                           ; $6e7a: $03
	dec de                                           ; $6e7b: $1b
	add d                                            ; $6e7c: $82
	ret nz                                           ; $6e7d: $c0

	dec de                                           ; $6e7e: $1b
	db $d3                                           ; $6e7f: $d3
	ld [bc], a                                       ; $6e80: $02
	ret nc                                           ; $6e81: $d0

	pop de                                           ; $6e82: $d1
	ld b, $c0                                        ; $6e83: $06 $c0
	ld bc, $05a0                                     ; $6e85: $01 $a0 $05
	dec b                                            ; $6e88: $05
	xor h                                            ; $6e89: $ac
	ld [bc], a                                       ; $6e8a: $02
	jp nc, $06d3                                     ; $6e8b: $d2 $d3 $06

	ret nz                                           ; $6e8e: $c0

	ld bc, $05a0                                     ; $6e8f: $01 $a0 $05
	dec b                                            ; $6e92: $05
	or e                                             ; $6e93: $b3
	ld bc, $06d4                                     ; $6e94: $01 $d4 $06
	ret nz                                           ; $6e97: $c0

	ld bc, $05a0                                     ; $6e98: $01 $a0 $05
	dec b                                            ; $6e9b: $05
	cp d                                             ; $6e9c: $ba
	pop hl                                           ; $6e9d: $e1
	ld [bc], a                                       ; $6e9e: $02
	inc bc                                           ; $6e9f: $03
	rst GetHLinHL                                          ; $6ea0: $cf
	db $e4                                           ; $6ea1: $e4
	nop                                              ; $6ea2: $00
	sbc e                                            ; $6ea3: $9b
	jr z, jr_07f_6eac                                ; $6ea4: $28 $06

	ret nz                                           ; $6ea6: $c0

	ld bc, $05a0                                     ; $6ea7: $01 $a0 $05
	dec b                                            ; $6eaa: $05
	ret nz                                           ; $6eab: $c0

jr_07f_6eac:
	sub b                                            ; $6eac: $90
	dec b                                            ; $6ead: $05
	ret                                              ; $6eae: $c9


	add hl, bc                                       ; $6eaf: $09
	inc l                                            ; $6eb0: $2c
	pop hl                                           ; $6eb1: $e1
	ld [bc], a                                       ; $6eb2: $02
	inc bc                                           ; $6eb3: $03
	inc de                                           ; $6eb4: $13
	add d                                            ; $6eb5: $82
	ret nz                                           ; $6eb6: $c0

	dec de                                           ; $6eb7: $1b
	db $d3                                           ; $6eb8: $d3
	ld [bc], a                                       ; $6eb9: $02
	ret nc                                           ; $6eba: $d0

	pop de                                           ; $6ebb: $d1
	ld b, $c0                                        ; $6ebc: $06 $c0
	ld bc, $05a0                                     ; $6ebe: $01 $a0 $05
	ld bc, $025a                                     ; $6ec1: $01 $5a $02
	jp nc, $06d3                                     ; $6ec4: $d2 $d3 $06

	ret nz                                           ; $6ec7: $c0

	ld bc, $05a0                                     ; $6ec8: $01 $a0 $05
	dec b                                            ; $6ecb: $05
	rlc c                                            ; $6ecc: $cb $01
	call nc, $c006                                   ; $6ece: $d4 $06 $c0
	ld bc, $05a0                                     ; $6ed1: $01 $a0 $05
	dec b                                            ; $6ed4: $05
	ret nc                                           ; $6ed5: $d0

	pop hl                                           ; $6ed6: $e1
	ld [bc], a                                       ; $6ed7: $02
	inc bc                                           ; $6ed8: $03
	or h                                             ; $6ed9: $b4
	db $e4                                           ; $6eda: $e4
	nop                                              ; $6edb: $00
	ld h, d                                          ; $6edc: $62
	dec b                                            ; $6edd: $05
	push de                                          ; $6ede: $d5
	add hl, bc                                       ; $6edf: $09
	inc l                                            ; $6ee0: $2c
	pop hl                                           ; $6ee1: $e1
	ld [bc], a                                       ; $6ee2: $02
	inc bc                                           ; $6ee3: $03
	rra                                              ; $6ee4: $1f
	add d                                            ; $6ee5: $82
	ret nz                                           ; $6ee6: $c0

	dec de                                           ; $6ee7: $1b
	db $d3                                           ; $6ee8: $d3
	ld [bc], a                                       ; $6ee9: $02
	ret nc                                           ; $6eea: $d0

	pop de                                           ; $6eeb: $d1
	ld b, $c0                                        ; $6eec: $06 $c0
	ld bc, $05a0                                     ; $6eee: $01 $a0 $05
	dec b                                            ; $6ef1: $05
	rst SubAFromHL                                          ; $6ef2: $d7
	ld [bc], a                                       ; $6ef3: $02
	jp nc, $06d3                                     ; $6ef4: $d2 $d3 $06

	ret nz                                           ; $6ef7: $c0

	ld bc, $05a0                                     ; $6ef8: $01 $a0 $05
	dec b                                            ; $6efb: $05
	call c, $d401                                    ; $6efc: $dc $01 $d4
	ld b, $c0                                        ; $6eff: $06 $c0
	ld bc, $05a0                                     ; $6f01: $01 $a0 $05
	dec b                                            ; $6f04: $05
	ldh [c], a                                       ; $6f05: $e2
	pop hl                                           ; $6f06: $e1
	ld [bc], a                                       ; $6f07: $02
	inc bc                                           ; $6f08: $03
	ret c                                            ; $6f09: $d8

	db $e4                                           ; $6f0a: $e4
	nop                                              ; $6f0b: $00
	ld [hl-], a                                      ; $6f0c: $32
	dec b                                            ; $6f0d: $05
	rst SubAFromBC                                          ; $6f0e: $e7
	add hl, bc                                       ; $6f0f: $09
	inc l                                            ; $6f10: $2c
	pop hl                                           ; $6f11: $e1
	ld [bc], a                                       ; $6f12: $02
	inc bc                                           ; $6f13: $03
	rla                                              ; $6f14: $17
	add d                                            ; $6f15: $82
	ret nz                                           ; $6f16: $c0

	dec de                                           ; $6f17: $1b
	db $d3                                           ; $6f18: $d3
	ld [bc], a                                       ; $6f19: $02
	ret nc                                           ; $6f1a: $d0

	pop de                                           ; $6f1b: $d1
	ld b, $c0                                        ; $6f1c: $06 $c0
	ld bc, $05a0                                     ; $6f1e: $01 $a0 $05
	dec b                                            ; $6f21: $05
	jp hl                                            ; $6f22: $e9


	ld [bc], a                                       ; $6f23: $02
	jp nc, $06d3                                     ; $6f24: $d2 $d3 $06

	ret nz                                           ; $6f27: $c0

	ld bc, $05a0                                     ; $6f28: $01 $a0 $05
	dec b                                            ; $6f2b: $05
	pop af                                           ; $6f2c: $f1
	ld bc, $06d4                                     ; $6f2d: $01 $d4 $06
	ret nz                                           ; $6f30: $c0

	ld bc, $05a0                                     ; $6f31: $01 $a0 $05
	dec b                                            ; $6f34: $05
	ld sp, hl                                        ; $6f35: $f9
	pop hl                                           ; $6f36: $e1
	ld [bc], a                                       ; $6f37: $02
	inc bc                                           ; $6f38: $03
	add $e4                                          ; $6f39: $c6 $e4
	nop                                              ; $6f3b: $00
	ld [bc], a                                       ; $6f3c: $02
	add hl, bc                                       ; $6f3d: $09
	ld c, $c1                                        ; $6f3e: $0e $c1
	ld e, c                                          ; $6f40: $59
	db $e3                                           ; $6f41: $e3
	nop                                              ; $6f42: $00
	xor d                                            ; $6f43: $aa
	ret nz                                           ; $6f44: $c0

	ld d, [hl]                                       ; $6f45: $56
	db $d3                                           ; $6f46: $d3
	call nc, $e5d0                                   ; $6f47: $d4 $d0 $e5
	rra                                              ; $6f4a: $1f
	nop                                              ; $6f4b: $00
	nop                                              ; $6f4c: $00
	add hl, bc                                       ; $6f4d: $09
	jr z, @-$2e                                      ; $6f4e: $28 $d0

	add e                                            ; $6f50: $83
	ld bc, $d0de                                     ; $6f51: $01 $de $d0
	ret nz                                           ; $6f54: $c0

	ld bc, $05a0                                     ; $6f55: $01 $a0 $05
	ld b, $01                                        ; $6f58: $06 $01
	ret nz                                           ; $6f5a: $c0

	ld bc, $01a0                                     ; $6f5b: $01 $a0 $01
	inc b                                            ; $6f5e: $04
	ld sp, $59c1                                     ; $6f5f: $31 $c1 $59
	db $e3                                           ; $6f62: $e3
	nop                                              ; $6f63: $00
	or h                                             ; $6f64: $b4
	and b                                            ; $6f65: $a0
	add b                                            ; $6f66: $80
	and b                                            ; $6f67: $a0
	rla                                              ; $6f68: $17
	nop                                              ; $6f69: $00
	inc bc                                           ; $6f6a: $03
	db $e4                                           ; $6f6b: $e4
	nop                                              ; $6f6c: $00
	dec bc                                           ; $6f6d: $0b
	rst $38                                          ; $6f6e: $ff
	rlca                                             ; $6f6f: $07
	ld b, b                                          ; $6f70: $40
	add b                                            ; $6f71: $80
	and b                                            ; $6f72: $a0
	rla                                              ; $6f73: $17
	db $e4                                           ; $6f74: $e4
	nop                                              ; $6f75: $00
	sbc e                                            ; $6f76: $9b
	jr z, jr_07f_6f7f                                ; $6f77: $28 $06

	ret nz                                           ; $6f79: $c0

	ld bc, $05a0                                     ; $6f7a: $01 $a0 $05
	ld b, $0a                                        ; $6f7d: $06 $0a

jr_07f_6f7f:
	sub b                                            ; $6f7f: $90
	ld b, $13                                        ; $6f80: $06 $13
	add hl, bc                                       ; $6f82: $09
	inc l                                            ; $6f83: $2c
	pop hl                                           ; $6f84: $e1
	ld [bc], a                                       ; $6f85: $02
	inc bc                                           ; $6f86: $03
	inc de                                           ; $6f87: $13
	add d                                            ; $6f88: $82
	ret nz                                           ; $6f89: $c0

	dec de                                           ; $6f8a: $1b
	db $d3                                           ; $6f8b: $d3
	ld [bc], a                                       ; $6f8c: $02
	ret nc                                           ; $6f8d: $d0

	pop de                                           ; $6f8e: $d1
	ld b, $c0                                        ; $6f8f: $06 $c0
	ld bc, $05a0                                     ; $6f91: $01 $a0 $05
	ld b, $15                                        ; $6f94: $06 $15
	ld [bc], a                                       ; $6f96: $02
	jp nc, $06d3                                     ; $6f97: $d2 $d3 $06

	ret nz                                           ; $6f9a: $c0

	ld bc, $05a0                                     ; $6f9b: $01 $a0 $05
	ld b, $1b                                        ; $6f9e: $06 $1b
	ld bc, $06d4                                     ; $6fa0: $01 $d4 $06
	ret nz                                           ; $6fa3: $c0

	ld bc, $05a0                                     ; $6fa4: $01 $a0 $05
	ld b, $20                                        ; $6fa7: $06 $20
	pop hl                                           ; $6fa9: $e1
	ld [bc], a                                       ; $6faa: $02
	inc bc                                           ; $6fab: $03
	cp l                                             ; $6fac: $bd
	db $e4                                           ; $6fad: $e4
	nop                                              ; $6fae: $00
	ei                                               ; $6faf: $fb
	ld b, $26                                        ; $6fb0: $06 $26
	add hl, bc                                       ; $6fb2: $09
	inc l                                            ; $6fb3: $2c
	pop hl                                           ; $6fb4: $e1
	ld [bc], a                                       ; $6fb5: $02
	inc bc                                           ; $6fb6: $03
	rra                                              ; $6fb7: $1f
	add d                                            ; $6fb8: $82
	ret nz                                           ; $6fb9: $c0

	dec de                                           ; $6fba: $1b
	db $d3                                           ; $6fbb: $d3
	ld [bc], a                                       ; $6fbc: $02
	ret nc                                           ; $6fbd: $d0

	pop de                                           ; $6fbe: $d1
	ld b, $c0                                        ; $6fbf: $06 $c0
	ld bc, $05a0                                     ; $6fc1: $01 $a0 $05
	ld b, $2a                                        ; $6fc4: $06 $2a
	ld [bc], a                                       ; $6fc6: $02
	jp nc, $06d3                                     ; $6fc7: $d2 $d3 $06

	ret nz                                           ; $6fca: $c0

	ld bc, $05a0                                     ; $6fcb: $01 $a0 $05
	ld b, $2f                                        ; $6fce: $06 $2f
	ld bc, $06d4                                     ; $6fd0: $01 $d4 $06
	ret nz                                           ; $6fd3: $c0

	ld bc, $05a0                                     ; $6fd4: $01 $a0 $05
	ld b, $37                                        ; $6fd7: $06 $37
	pop hl                                           ; $6fd9: $e1
	ld [bc], a                                       ; $6fda: $02
	inc bc                                           ; $6fdb: $03
	ret c                                            ; $6fdc: $d8

	db $e4                                           ; $6fdd: $e4
	nop                                              ; $6fde: $00
	rlc [hl]                                         ; $6fdf: $cb $06
	ld a, $09                                        ; $6fe1: $3e $09
	inc l                                            ; $6fe3: $2c
	pop hl                                           ; $6fe4: $e1
	ld [bc], a                                       ; $6fe5: $02
	inc bc                                           ; $6fe6: $03
	rla                                              ; $6fe7: $17
	add d                                            ; $6fe8: $82
	ret nz                                           ; $6fe9: $c0

	dec de                                           ; $6fea: $1b
	db $d3                                           ; $6feb: $d3
	ld [bc], a                                       ; $6fec: $02
	ret nc                                           ; $6fed: $d0

	pop de                                           ; $6fee: $d1
	ld b, $c0                                        ; $6fef: $06 $c0
	ld bc, $05a0                                     ; $6ff1: $01 $a0 $05
	inc b                                            ; $6ff4: $04
	ld [hl], l                                       ; $6ff5: $75
	ld [bc], a                                       ; $6ff6: $02
	jp nc, $06d3                                     ; $6ff7: $d2 $d3 $06

	ret nz                                           ; $6ffa: $c0

	ld bc, $05a0                                     ; $6ffb: $01 $a0 $05
	inc b                                            ; $6ffe: $04
	ld a, h                                          ; $6fff: $7c
	ld bc, $06d4                                     ; $7000: $01 $d4 $06
	ret nz                                           ; $7003: $c0

	ld bc, $05a0                                     ; $7004: $01 $a0 $05
	inc b                                            ; $7007: $04
	add e                                            ; $7008: $83
	pop hl                                           ; $7009: $e1
	ld [bc], a                                       ; $700a: $02
	inc bc                                           ; $700b: $03
	add $e4                                          ; $700c: $c6 $e4
	nop                                              ; $700e: $00
	sbc e                                            ; $700f: $9b
	jr z, jr_07f_7018                                ; $7010: $28 $06

	ret nz                                           ; $7012: $c0

	ld bc, $05a0                                     ; $7013: $01 $a0 $05
	ld b, $40                                        ; $7016: $06 $40

jr_07f_7018:
	sub b                                            ; $7018: $90
	ld b, $49                                        ; $7019: $06 $49
	add hl, bc                                       ; $701b: $09
	inc l                                            ; $701c: $2c
	pop hl                                           ; $701d: $e1
	ld [bc], a                                       ; $701e: $02
	inc bc                                           ; $701f: $03
	inc de                                           ; $7020: $13
	add d                                            ; $7021: $82
	ret nz                                           ; $7022: $c0

	dec de                                           ; $7023: $1b
	db $d3                                           ; $7024: $d3
	ld [bc], a                                       ; $7025: $02
	ret nc                                           ; $7026: $d0

	pop de                                           ; $7027: $d1
	ld b, $c0                                        ; $7028: $06 $c0
	ld bc, $05a0                                     ; $702a: $01 $a0 $05
	ld bc, $025a                                     ; $702d: $01 $5a $02
	jp nc, $06d3                                     ; $7030: $d2 $d3 $06

	ret nz                                           ; $7033: $c0

	ld bc, $05a0                                     ; $7034: $01 $a0 $05
	ld b, $51                                        ; $7037: $06 $51
	ld bc, $06d4                                     ; $7039: $01 $d4 $06
	ret nz                                           ; $703c: $c0

	ld bc, $05a0                                     ; $703d: $01 $a0 $05
	ld b, $57                                        ; $7040: $06 $57
	pop hl                                           ; $7042: $e1
	ld [bc], a                                       ; $7043: $02
	inc bc                                           ; $7044: $03
	cp l                                             ; $7045: $bd
	db $e4                                           ; $7046: $e4
	nop                                              ; $7047: $00
	ld h, d                                          ; $7048: $62
	ld b, $59                                        ; $7049: $06 $59
	add hl, bc                                       ; $704b: $09
	inc l                                            ; $704c: $2c
	pop hl                                           ; $704d: $e1
	ld [bc], a                                       ; $704e: $02
	inc bc                                           ; $704f: $03
	rra                                              ; $7050: $1f
	add d                                            ; $7051: $82
	ret nz                                           ; $7052: $c0

	dec de                                           ; $7053: $1b
	db $d3                                           ; $7054: $d3
	ld [bc], a                                       ; $7055: $02
	ret nc                                           ; $7056: $d0

	pop de                                           ; $7057: $d1
	ld b, $c0                                        ; $7058: $06 $c0
	ld bc, $05a0                                     ; $705a: $01 $a0 $05
	ld b, $60                                        ; $705d: $06 $60
	ld [bc], a                                       ; $705f: $02
	jp nc, $06d3                                     ; $7060: $d2 $d3 $06

	ret nz                                           ; $7063: $c0

	ld bc, $05a0                                     ; $7064: $01 $a0 $05
	ld b, $68                                        ; $7067: $06 $68
	ld bc, $06d4                                     ; $7069: $01 $d4 $06
	ret nz                                           ; $706c: $c0

	ld bc, $05a0                                     ; $706d: $01 $a0 $05
	ld b, $70                                        ; $7070: $06 $70
	pop hl                                           ; $7072: $e1
	ld [bc], a                                       ; $7073: $02
	inc bc                                           ; $7074: $03
	ret c                                            ; $7075: $d8

	db $e4                                           ; $7076: $e4
	nop                                              ; $7077: $00
	ld [hl-], a                                      ; $7078: $32
	ld b, $75                                        ; $7079: $06 $75
	add hl, bc                                       ; $707b: $09
	inc l                                            ; $707c: $2c
	pop hl                                           ; $707d: $e1
	ld [bc], a                                       ; $707e: $02
	inc bc                                           ; $707f: $03
	rla                                              ; $7080: $17
	add d                                            ; $7081: $82
	ret nz                                           ; $7082: $c0

	dec de                                           ; $7083: $1b
	db $d3                                           ; $7084: $d3
	ld [bc], a                                       ; $7085: $02
	ret nc                                           ; $7086: $d0

	pop de                                           ; $7087: $d1
	ld b, $c0                                        ; $7088: $06 $c0
	ld bc, $05a0                                     ; $708a: $01 $a0 $05
	ld b, $7b                                        ; $708d: $06 $7b
	ld [bc], a                                       ; $708f: $02
	jp nc, $06d3                                     ; $7090: $d2 $d3 $06

	ret nz                                           ; $7093: $c0

	ld bc, $05a0                                     ; $7094: $01 $a0 $05
	ld b, $81                                        ; $7097: $06 $81
	ld bc, $06d4                                     ; $7099: $01 $d4 $06
	ret nz                                           ; $709c: $c0

	ld bc, $05a0                                     ; $709d: $01 $a0 $05
	ld b, $83                                        ; $70a0: $06 $83
	pop hl                                           ; $70a2: $e1
	ld [bc], a                                       ; $70a3: $02
	inc bc                                           ; $70a4: $03
	add $e4                                          ; $70a5: $c6 $e4
	nop                                              ; $70a7: $00
	ld [bc], a                                       ; $70a8: $02
	add hl, bc                                       ; $70a9: $09
	ld c, $c1                                        ; $70aa: $0e $c1
	ld e, c                                          ; $70ac: $59
	db $e3                                           ; $70ad: $e3
	nop                                              ; $70ae: $00
	or e                                             ; $70af: $b3
	ret nz                                           ; $70b0: $c0

	ld d, [hl]                                       ; $70b1: $56
	db $d3                                           ; $70b2: $d3
	push de                                          ; $70b3: $d5
	ret nc                                           ; $70b4: $d0

	push hl                                          ; $70b5: $e5
	rra                                              ; $70b6: $1f
	nop                                              ; $70b7: $00
	nop                                              ; $70b8: $00
	add hl, bc                                       ; $70b9: $09
	inc d                                            ; $70ba: $14
	ret nc                                           ; $70bb: $d0

	add e                                            ; $70bc: $83
	ld bc, $d0de                                     ; $70bd: $01 $de $d0
	ret nz                                           ; $70c0: $c0

	ld bc, $05a0                                     ; $70c1: $01 $a0 $05
	inc b                                            ; $70c4: $04
	ld a, [hl+]                                      ; $70c5: $2a
	ret nz                                           ; $70c6: $c0

	ld bc, $01a0                                     ; $70c7: $01 $a0 $01
	inc b                                            ; $70ca: $04
	ld sp, $00e4                                     ; $70cb: $31 $e4 $00
	ld [bc], a                                       ; $70ce: $02
	add hl, bc                                       ; $70cf: $09
	ld sp, $59c1                                     ; $70d0: $31 $c1 $59
	db $e3                                           ; $70d3: $e3
	nop                                              ; $70d4: $00
	or [hl]                                          ; $70d5: $b6
	ret nz                                           ; $70d6: $c0

	ld bc, $05a0                                     ; $70d7: $01 $a0 $05
	ld b, $86                                        ; $70da: $06 $86
	pop bc                                           ; $70dc: $c1
	and c                                            ; $70dd: $a1
	ret nz                                           ; $70de: $c0

	inc c                                            ; $70df: $0c
	ldh [$5a], a                                     ; $70e0: $e0 $5a
	add c                                            ; $70e2: $81
	ret nz                                           ; $70e3: $c0

	dec de                                           ; $70e4: $1b
	db $d3                                           ; $70e5: $d3
	ld [bc], a                                       ; $70e6: $02
	ret nc                                           ; $70e7: $d0

	pop de                                           ; $70e8: $d1
	inc de                                           ; $70e9: $13
	ld h, b                                          ; $70ea: $60
	cp $08                                           ; $70eb: $fe $08
	pop af                                           ; $70ed: $f1

jr_07f_70ee:
	add b                                            ; $70ee: $80
	and b                                            ; $70ef: $a0
	jr jr_07f_70ee                                   ; $70f0: $18 $fc

	ret nz                                           ; $70f2: $c0

	ld l, d                                          ; $70f3: $6a
	db $d3                                           ; $70f4: $d3
	inc bc                                           ; $70f5: $03
	db $e4                                           ; $70f6: $e4
	ld bc, $038c                                     ; $70f7: $01 $8c $03
	ldh [rP1], a                                     ; $70fa: $e0 $00
	rlca                                             ; $70fc: $07
	nop                                              ; $70fd: $00
	inc bc                                           ; $70fe: $03
	ldh [rP1], a                                     ; $70ff: $e0 $00
	ld [bc], a                                       ; $7101: $02
	inc d                                            ; $7102: $14
	ret nz                                           ; $7103: $c0

	jp z, $80a0                                      ; $7104: $ca $a0 $80

	and b                                            ; $7107: $a0
	add hl, de                                       ; $7108: $19
	nop                                              ; $7109: $00
	inc bc                                           ; $710a: $03
	db $e4                                           ; $710b: $e4
	nop                                              ; $710c: $00
	dec bc                                           ; $710d: $0b
	rst $38                                          ; $710e: $ff
	rlca                                             ; $710f: $07
	ld b, b                                          ; $7110: $40
	add b                                            ; $7111: $80
	and b                                            ; $7112: $a0
	add hl, de                                       ; $7113: $19
	db $e4                                           ; $7114: $e4
	nop                                              ; $7115: $00
	sbc e                                            ; $7116: $9b
	jr z, jr_07f_711f                                ; $7117: $28 $06

	ret nz                                           ; $7119: $c0

	ld bc, $05a0                                     ; $711a: $01 $a0 $05
	ld b, $90                                        ; $711d: $06 $90

jr_07f_711f:
	sub b                                            ; $711f: $90
	ld b, $97                                        ; $7120: $06 $97
	add hl, bc                                       ; $7122: $09
	inc l                                            ; $7123: $2c
	pop hl                                           ; $7124: $e1
	ld [bc], a                                       ; $7125: $02
	inc bc                                           ; $7126: $03
	rrca                                             ; $7127: $0f
	add d                                            ; $7128: $82
	ret nz                                           ; $7129: $c0

	dec de                                           ; $712a: $1b
	db $d3                                           ; $712b: $d3
	ld [bc], a                                       ; $712c: $02
	ret nc                                           ; $712d: $d0

	pop de                                           ; $712e: $d1
	ld b, $c0                                        ; $712f: $06 $c0
	ld bc, $05a0                                     ; $7131: $01 $a0 $05
	ld b, $99                                        ; $7134: $06 $99
	ld [bc], a                                       ; $7136: $02
	jp nc, $06d3                                     ; $7137: $d2 $d3 $06

	ret nz                                           ; $713a: $c0

	ld bc, $05a0                                     ; $713b: $01 $a0 $05
	ld b, $a3                                        ; $713e: $06 $a3
	ld bc, $06d4                                     ; $7140: $01 $d4 $06
	ret nz                                           ; $7143: $c0

	ld bc, $05a0                                     ; $7144: $01 $a0 $05
	ld b, $ac                                        ; $7147: $06 $ac
	pop hl                                           ; $7149: $e1
	ld [bc], a                                       ; $714a: $02
	inc bc                                           ; $714b: $03
	or h                                             ; $714c: $b4
	db $e4                                           ; $714d: $e4
	ld [bc], a                                       ; $714e: $02
	ld a, [hl-]                                      ; $714f: $3a
	ld b, $b3                                        ; $7150: $06 $b3
	add hl, bc                                       ; $7152: $09
	inc l                                            ; $7153: $2c
	pop hl                                           ; $7154: $e1
	ld [bc], a                                       ; $7155: $02
	inc bc                                           ; $7156: $03
	rra                                              ; $7157: $1f
	add d                                            ; $7158: $82
	ret nz                                           ; $7159: $c0

	dec de                                           ; $715a: $1b
	db $d3                                           ; $715b: $d3
	ld [bc], a                                       ; $715c: $02
	ret nc                                           ; $715d: $d0

	pop de                                           ; $715e: $d1
	ld b, $c0                                        ; $715f: $06 $c0
	ld bc, $05a0                                     ; $7161: $01 $a0 $05
	ld b, $b5                                        ; $7164: $06 $b5
	ld [bc], a                                       ; $7166: $02
	jp nc, $06d3                                     ; $7167: $d2 $d3 $06

	ret nz                                           ; $716a: $c0

	ld bc, $05a0                                     ; $716b: $01 $a0 $05
	ld b, $ba                                        ; $716e: $06 $ba
	ld bc, $06d4                                     ; $7170: $01 $d4 $06
	ret nz                                           ; $7173: $c0

	ld bc, $05a0                                     ; $7174: $01 $a0 $05
	ld b, $c4                                        ; $7177: $06 $c4
	pop hl                                           ; $7179: $e1
	ld [bc], a                                       ; $717a: $02
	inc bc                                           ; $717b: $03
	ret c                                            ; $717c: $d8

	db $e4                                           ; $717d: $e4
	ld [bc], a                                       ; $717e: $02
	ld a, [bc]                                       ; $717f: $0a
	ld b, $ca                                        ; $7180: $06 $ca
	add hl, bc                                       ; $7182: $09
	inc l                                            ; $7183: $2c
	pop hl                                           ; $7184: $e1
	ld [bc], a                                       ; $7185: $02
	inc bc                                           ; $7186: $03
	rla                                              ; $7187: $17
	add d                                            ; $7188: $82
	ret nz                                           ; $7189: $c0

	dec de                                           ; $718a: $1b
	db $d3                                           ; $718b: $d3
	ld [bc], a                                       ; $718c: $02
	ret nc                                           ; $718d: $d0

	pop de                                           ; $718e: $d1
	ld b, $c0                                        ; $718f: $06 $c0
	ld bc, $05a0                                     ; $7191: $01 $a0 $05
	ld b, $d1                                        ; $7194: $06 $d1
	ld [bc], a                                       ; $7196: $02
	jp nc, $06d3                                     ; $7197: $d2 $d3 $06

	ret nz                                           ; $719a: $c0

	ld bc, $05a0                                     ; $719b: $01 $a0 $05
	ld b, $db                                        ; $719e: $06 $db
	ld bc, $06d4                                     ; $71a0: $01 $d4 $06
	ret nz                                           ; $71a3: $c0

	ld bc, $05a0                                     ; $71a4: $01 $a0 $05
	ld b, $e2                                        ; $71a7: $06 $e2
	pop hl                                           ; $71a9: $e1
	ld [bc], a                                       ; $71aa: $02
	inc bc                                           ; $71ab: $03
	add $e4                                          ; $71ac: $c6 $e4
	ld bc, $28da                                     ; $71ae: $01 $da $28
	ld b, $c0                                        ; $71b1: $06 $c0
	ld bc, $05a0                                     ; $71b3: $01 $a0 $05
	ld b, $e6                                        ; $71b6: $06 $e6
	ret nz                                           ; $71b8: $c0

	ret                                              ; $71b9: $c9


	ret nz                                           ; $71ba: $c0

	ei                                               ; $71bb: $fb
	ret nz                                           ; $71bc: $c0

	add e                                            ; $71bd: $83
	jp nc, Jump_07f_78e0                             ; $71be: $d2 $e0 $78

	jr nc, jr_07f_71c9                               ; $71c1: $30 $06

	rst AddAOntoHL                                          ; $71c3: $ef
	add hl, bc                                       ; $71c4: $09
	inc l                                            ; $71c5: $2c
	pop hl                                           ; $71c6: $e1
	ld [bc], a                                       ; $71c7: $02
	inc bc                                           ; $71c8: $03

jr_07f_71c9:
	inc de                                           ; $71c9: $13
	add d                                            ; $71ca: $82
	ret nz                                           ; $71cb: $c0

	dec de                                           ; $71cc: $1b
	db $d3                                           ; $71cd: $d3
	ld [bc], a                                       ; $71ce: $02
	ret nc                                           ; $71cf: $d0

	pop de                                           ; $71d0: $d1
	ld b, $c0                                        ; $71d1: $06 $c0
	ld bc, $05a0                                     ; $71d3: $01 $a0 $05
	ld b, $f1                                        ; $71d6: $06 $f1
	ld [bc], a                                       ; $71d8: $02
	jp nc, $06d3                                     ; $71d9: $d2 $d3 $06

	ret nz                                           ; $71dc: $c0

	ld bc, $05a0                                     ; $71dd: $01 $a0 $05
	ld b, $f7                                        ; $71e0: $06 $f7
	ld bc, $06d4                                     ; $71e2: $01 $d4 $06
	ret nz                                           ; $71e5: $c0

	ld bc, $05a0                                     ; $71e6: $01 $a0 $05
	ld b, $fd                                        ; $71e9: $06 $fd
	pop hl                                           ; $71eb: $e1
	ld [bc], a                                       ; $71ec: $02
	inc bc                                           ; $71ed: $03
	cp l                                             ; $71ee: $bd
	db $e4                                           ; $71ef: $e4
	ld bc, $3098                                     ; $71f0: $01 $98 $30
	rlca                                             ; $71f3: $07
	ld [bc], a                                       ; $71f4: $02
	add hl, bc                                       ; $71f5: $09
	inc l                                            ; $71f6: $2c
	pop hl                                           ; $71f7: $e1
	ld [bc], a                                       ; $71f8: $02
	inc bc                                           ; $71f9: $03
	rra                                              ; $71fa: $1f
	add d                                            ; $71fb: $82
	ret nz                                           ; $71fc: $c0

	dec de                                           ; $71fd: $1b
	db $d3                                           ; $71fe: $d3
	ld [bc], a                                       ; $71ff: $02
	ret nc                                           ; $7200: $d0

	pop de                                           ; $7201: $d1
	ld b, $c0                                        ; $7202: $06 $c0
	ld bc, $05a0                                     ; $7204: $01 $a0 $05
	rlca                                             ; $7207: $07
	inc b                                            ; $7208: $04
	ld [bc], a                                       ; $7209: $02
	jp nc, $06d3                                     ; $720a: $d2 $d3 $06

	ret nz                                           ; $720d: $c0

	ld bc, $05a0                                     ; $720e: $01 $a0 $05
	rlca                                             ; $7211: $07
	rrca                                             ; $7212: $0f
	ld bc, $06d4                                     ; $7213: $01 $d4 $06
	ret nz                                           ; $7216: $c0

	ld bc, $05a0                                     ; $7217: $01 $a0 $05
	rlca                                             ; $721a: $07
	inc d                                            ; $721b: $14
	pop hl                                           ; $721c: $e1
	ld [bc], a                                       ; $721d: $02
	inc bc                                           ; $721e: $03
	ret c                                            ; $721f: $d8

	db $e4                                           ; $7220: $e4
	ld bc, $0767                                     ; $7221: $01 $67 $07
	dec de                                           ; $7224: $1b
	add hl, bc                                       ; $7225: $09
	inc l                                            ; $7226: $2c
	pop hl                                           ; $7227: $e1
	ld [bc], a                                       ; $7228: $02
	inc bc                                           ; $7229: $03
	dec de                                           ; $722a: $1b
	add d                                            ; $722b: $82
	ret nz                                           ; $722c: $c0

	dec de                                           ; $722d: $1b
	db $d3                                           ; $722e: $d3
	ld [bc], a                                       ; $722f: $02
	ret nc                                           ; $7230: $d0

	pop de                                           ; $7231: $d1
	ld b, $c0                                        ; $7232: $06 $c0
	ld bc, $05a0                                     ; $7234: $01 $a0 $05
	rlca                                             ; $7237: $07
	dec e                                            ; $7238: $1d
	ld [bc], a                                       ; $7239: $02
	jp nc, $06d3                                     ; $723a: $d2 $d3 $06

	ret nz                                           ; $723d: $c0

	ld bc, $05a0                                     ; $723e: $01 $a0 $05
	rlca                                             ; $7241: $07
	jr nz, @+$03                                     ; $7242: $20 $01

	call nc, $c006                                   ; $7244: $d4 $06 $c0
	ld bc, $05a0                                     ; $7247: $01 $a0 $05
	rlca                                             ; $724a: $07
	dec h                                            ; $724b: $25
	pop hl                                           ; $724c: $e1
	ld [bc], a                                       ; $724d: $02
	inc bc                                           ; $724e: $03
	rst GetHLinHL                                          ; $724f: $cf
	db $e4                                           ; $7250: $e4
	ld bc, $0737                                     ; $7251: $01 $37 $07
	ld a, [hl+]                                      ; $7254: $2a
	add hl, bc                                       ; $7255: $09
	inc l                                            ; $7256: $2c
	pop hl                                           ; $7257: $e1
	ld [bc], a                                       ; $7258: $02
	inc bc                                           ; $7259: $03
	rla                                              ; $725a: $17
	add d                                            ; $725b: $82
	ret nz                                           ; $725c: $c0

	dec de                                           ; $725d: $1b
	db $d3                                           ; $725e: $d3
	ld [bc], a                                       ; $725f: $02
	ret nc                                           ; $7260: $d0

	pop de                                           ; $7261: $d1
	ld b, $c0                                        ; $7262: $06 $c0
	ld bc, $05a0                                     ; $7264: $01 $a0 $05
	rlca                                             ; $7267: $07
	inc l                                            ; $7268: $2c
	ld [bc], a                                       ; $7269: $02
	jp nc, $06d3                                     ; $726a: $d2 $d3 $06

	ret nz                                           ; $726d: $c0

	ld bc, $05a0                                     ; $726e: $01 $a0 $05
	rlca                                             ; $7271: $07
	ld [hl], $01                                     ; $7272: $36 $01
	call nc, $c006                                   ; $7274: $d4 $06 $c0
	ld bc, $05a0                                     ; $7277: $01 $a0 $05
	rlca                                             ; $727a: $07
	ld a, $e1                                        ; $727b: $3e $e1
	ld [bc], a                                       ; $727d: $02
	inc bc                                           ; $727e: $03

jr_07f_727f:
	add $e4                                          ; $727f: $c6 $e4
	ld bc, $3807                                     ; $7281: $01 $07 $38
	ld a, $c1                                        ; $7284: $3e $c1
	ld e, e                                          ; $7286: $5b
	ret nz                                           ; $7287: $c0

	ld bc, $01a0                                     ; $7288: $01 $a0 $01
	rlca                                             ; $728b: $07
	ld b, a                                          ; $728c: $47
	ret nz                                           ; $728d: $c0

	ld bc, $05a0                                     ; $728e: $01 $a0 $05
	rlca                                             ; $7291: $07
	ld d, d                                          ; $7292: $52
	ret nz                                           ; $7293: $c0

	ld bc, $01a0                                     ; $7294: $01 $a0 $01
	rlca                                             ; $7297: $07
	ld d, e                                          ; $7298: $53
	ret nz                                           ; $7299: $c0

	ld bc, $05a0                                     ; $729a: $01 $a0 $05
	rlca                                             ; $729d: $07
	ld d, d                                          ; $729e: $52
	ret nz                                           ; $729f: $c0

	ld bc, $01a0                                     ; $72a0: $01 $a0 $01
	rlca                                             ; $72a3: $07
	ld e, e                                          ; $72a4: $5b
	ret nz                                           ; $72a5: $c0

	rrca                                             ; $72a6: $0f
	db $e3                                           ; $72a7: $e3
	nop                                              ; $72a8: $00
	di                                               ; $72a9: $f3
	nop                                              ; $72aa: $00
	add b                                            ; $72ab: $80
	and b                                            ; $72ac: $a0
	jr jr_07f_727f                                   ; $72ad: $18 $d0

	add d                                            ; $72af: $82
	ld bc, $d2cf                                     ; $72b0: $01 $cf $d2
	pop hl                                           ; $72b3: $e1
	ld [bc], a                                       ; $72b4: $02
	inc b                                            ; $72b5: $04
	pop de                                           ; $72b6: $d1
	ret nz                                           ; $72b7: $c0

	ld bc, $05a0                                     ; $72b8: $01 $a0 $05
	rlca                                             ; $72bb: $07
	ld d, d                                          ; $72bc: $52
	ret nz                                           ; $72bd: $c0

	ld bc, $01a0                                     ; $72be: $01 $a0 $01
	rlca                                             ; $72c1: $07
	ld e, l                                          ; $72c2: $5d
	cp h                                             ; $72c3: $bc
	rlca                                             ; $72c4: $07
	ld l, e                                          ; $72c5: $6b
	add hl, bc                                       ; $72c6: $09
	ld e, h                                          ; $72c7: $5c
	ret nz                                           ; $72c8: $c0

	ld bc, $01a0                                     ; $72c9: $01 $a0 $01
	rlca                                             ; $72cc: $07
	ld [hl], c                                       ; $72cd: $71
	ret nz                                           ; $72ce: $c0

	ld bc, $05a0                                     ; $72cf: $01 $a0 $05
	rlca                                             ; $72d2: $07
	halt                                             ; $72d3: $76
	ret nz                                           ; $72d4: $c0

	ld bc, $01a0                                     ; $72d5: $01 $a0 $01
	rlca                                             ; $72d8: $07
	ld a, a                                          ; $72d9: $7f
	pop bc                                           ; $72da: $c1
	ld d, a                                          ; $72db: $57
	ret nz                                           ; $72dc: $c0

	ld de, $00e3                                     ; $72dd: $11 $e3 $00
	or [hl]                                          ; $72e0: $b6
	pop bc                                           ; $72e1: $c1
	ld e, h                                          ; $72e2: $5c
	ret nz                                           ; $72e3: $c0

	jp z, $01c0                                      ; $72e4: $ca $c0 $01

	and b                                            ; $72e7: $a0
	dec b                                            ; $72e8: $05
	rlca                                             ; $72e9: $07
	adc h                                            ; $72ea: $8c
	ret nz                                           ; $72eb: $c0

	ld bc, $01a0                                     ; $72ec: $01 $a0 $01
	rlca                                             ; $72ef: $07
	sbc h                                            ; $72f0: $9c
	ret nz                                           ; $72f1: $c0

	ld bc, $05a0                                     ; $72f2: $01 $a0 $05
	rlca                                             ; $72f5: $07
	and d                                            ; $72f6: $a2
	ret nz                                           ; $72f7: $c0

	ld bc, $01a0                                     ; $72f8: $01 $a0 $01
	rlca                                             ; $72fb: $07
	xor b                                            ; $72fc: $a8
	ret nz                                           ; $72fd: $c0

	ld bc, $05a0                                     ; $72fe: $01 $a0 $05
	rlca                                             ; $7301: $07
	xor l                                            ; $7302: $ad
	ret nz                                           ; $7303: $c0

	ld bc, $01a0                                     ; $7304: $01 $a0 $01
	rlca                                             ; $7307: $07
	or [hl]                                          ; $7308: $b6
	ret nz                                           ; $7309: $c0

	ld bc, $05a0                                     ; $730a: $01 $a0 $05
	rlca                                             ; $730d: $07
	cp [hl]                                          ; $730e: $be
	ret nz                                           ; $730f: $c0

	ld bc, $01a0                                     ; $7310: $01 $a0 $01
	rlca                                             ; $7313: $07
	set 2, b                                         ; $7314: $cb $d0
	add d                                            ; $7316: $82
	ld bc, $d1cf                                     ; $7317: $01 $cf $d1
	ret nz                                           ; $731a: $c0

	ld d, c                                          ; $731b: $51
	db $d3                                           ; $731c: $d3
	ret nz                                           ; $731d: $c0

	ld d, b                                          ; $731e: $50
	pop de                                           ; $731f: $d1
	ret nz                                           ; $7320: $c0

	ld d, l                                          ; $7321: $55
	ldh [rAUD1HIGH], a                               ; $7322: $e0 $14
	rlca                                             ; $7324: $07
	ret nc                                           ; $7325: $d0

	add hl, bc                                       ; $7326: $09
	ld e, b                                          ; $7327: $58
	ret nz                                           ; $7328: $c0

	inc c                                            ; $7329: $0c
	ldh [$50], a                                     ; $732a: $e0 $50
	ret nz                                           ; $732c: $c0

	set 0, b                                         ; $732d: $cb $c0
	ld de, $00e3                                     ; $732f: $11 $e3 $00
	or [hl]                                          ; $7332: $b6
	ret nz                                           ; $7333: $c0

	xor c                                            ; $7334: $a9
	db $d3                                           ; $7335: $d3
	ret nz                                           ; $7336: $c0

	xor e                                            ; $7337: $ab
	pop de                                           ; $7338: $d1
	pop bc                                           ; $7339: $c1
	ld e, h                                          ; $733a: $5c
	ret nz                                           ; $733b: $c0

	jp z, $01c0                                      ; $733c: $ca $c0 $01

	and b                                            ; $733f: $a0
	dec b                                            ; $7340: $05
	rlca                                             ; $7341: $07
	rst SubAFromHL                                          ; $7342: $d7
	ret nz                                           ; $7343: $c0

	ld bc, $01a0                                     ; $7344: $01 $a0 $01
	rlca                                             ; $7347: $07
	rst SubAFromBC                                          ; $7348: $e7
	ret nz                                           ; $7349: $c0

	ld bc, $05a0                                     ; $734a: $01 $a0 $05
	rlca                                             ; $734d: $07
	db $f4                                           ; $734e: $f4
	ret nz                                           ; $734f: $c0

	ld bc, $01a0                                     ; $7350: $01 $a0 $01
	ld [$c001], sp                                   ; $7353: $08 $01 $c0
	ld bc, $05a0                                     ; $7356: $01 $a0 $05
	ld [$c006], sp                                   ; $7359: $08 $06 $c0
	ld bc, $01a0                                     ; $735c: $01 $a0 $01
	ld [$e111], sp                                   ; $735f: $08 $11 $e1
	ld [bc], a                                       ; $7362: $02
	inc bc                                           ; $7363: $03
	rrca                                             ; $7364: $0f
	ret nz                                           ; $7365: $c0

	ld bc, $05a0                                     ; $7366: $01 $a0 $05
	ld [$c01d], sp                                   ; $7369: $08 $1d $c0
	ld bc, $01a0                                     ; $736c: $01 $a0 $01
	ld [$d021], sp                                   ; $736f: $08 $21 $d0
	add d                                            ; $7372: $82
	ld bc, $d2cf                                     ; $7373: $01 $cf $d2
	ret nz                                           ; $7376: $c0

	ld d, c                                          ; $7377: $51
	jp nc, $50c0                                     ; $7378: $d2 $c0 $50

	jp nc, $55c0                                     ; $737b: $d2 $c0 $55

	ldh [rAUD1HIGH], a                               ; $737e: $e0 $14
	rlca                                             ; $7380: $07
	pop bc                                           ; $7381: $c1
	ld l, e                                          ; $7382: $6b
	db $d3                                           ; $7383: $d3
	db $d3                                           ; $7384: $d3
	db $e4                                           ; $7385: $e4
	nop                                              ; $7386: $00
	ld [bc], a                                       ; $7387: $02
	add hl, bc                                       ; $7388: $09
	ld c, $c1                                        ; $7389: $0e $c1
	ld e, c                                          ; $738b: $59
	db $e3                                           ; $738c: $e3
	nop                                              ; $738d: $00
	or l                                             ; $738e: $b5
	ret nz                                           ; $738f: $c0

	ld d, [hl]                                       ; $7390: $56
	db $d3                                           ; $7391: $d3
	sub $d0                                          ; $7392: $d6 $d0
	push hl                                          ; $7394: $e5
	rra                                              ; $7395: $1f
	nop                                              ; $7396: $00
	nop                                              ; $7397: $00
	add hl, bc                                       ; $7398: $09
	ld d, d                                          ; $7399: $52
	ret nz                                           ; $739a: $c0

	ld bc, $05a0                                     ; $739b: $01 $a0 $05
	inc b                                            ; $739e: $04
	ld a, [hl+]                                      ; $739f: $2a
	ret nz                                           ; $73a0: $c0

	ld bc, $01a0                                     ; $73a1: $01 $a0 $01
	inc b                                            ; $73a4: $04
	ld sp, $8b83                                     ; $73a5: $31 $83 $8b
	ld [bc], a                                       ; $73a8: $02
	ld b, d                                          ; $73a9: $42
	ld [bc], a                                       ; $73aa: $02
	or b                                             ; $73ab: $b0
	ld [hl], e                                       ; $73ac: $73
	ld [$83d0], sp                                   ; $73ad: $08 $d0 $83
	ld bc, $d1de                                     ; $73b0: $01 $de $d1
	db $e4                                           ; $73b3: $e4
	ld bc, $0272                                     ; $73b4: $01 $72 $02
	or b                                             ; $73b7: $b0
	ld l, a                                          ; $73b8: $6f
	ld [$83d0], sp                                   ; $73b9: $08 $d0 $83
	ld bc, $d2de                                     ; $73bc: $01 $de $d2
	db $e4                                           ; $73bf: $e4
	ld [bc], a                                       ; $73c0: $02
	adc d                                            ; $73c1: $8a
	ld [bc], a                                       ; $73c2: $02
	or b                                             ; $73c3: $b0
	ld l, h                                          ; $73c4: $6c
	ld [$83d0], sp                                   ; $73c5: $08 $d0 $83
	ld bc, $d3de                                     ; $73c8: $01 $de $d3
	db $e4                                           ; $73cb: $e4
	inc bc                                           ; $73cc: $03
	add hl, hl                                       ; $73cd: $29
	nop                                              ; $73ce: $00
	inc e                                            ; $73cf: $1c
	ret nc                                           ; $73d0: $d0

	add e                                            ; $73d1: $83
	ld bc, $d0de                                     ; $73d2: $01 $de $d0
	pop bc                                           ; $73d5: $c1
	ld e, c                                          ; $73d6: $59
	db $e3                                           ; $73d7: $e3
	nop                                              ; $73d8: $00
	sbc e                                            ; $73d9: $9b
	and b                                            ; $73da: $a0
	add b                                            ; $73db: $80
	and b                                            ; $73dc: $a0
	ld a, [de]                                       ; $73dd: $1a
	nop                                              ; $73de: $00
	inc bc                                           ; $73df: $03
	db $e4                                           ; $73e0: $e4
	nop                                              ; $73e1: $00
	dec bc                                           ; $73e2: $0b
	rst $38                                          ; $73e3: $ff
	rlca                                             ; $73e4: $07
	ld b, b                                          ; $73e5: $40
	add b                                            ; $73e6: $80
	and b                                            ; $73e7: $a0
	ld a, [de]                                       ; $73e8: $1a
	db $e4                                           ; $73e9: $e4
	nop                                              ; $73ea: $00
	sbc e                                            ; $73eb: $9b
	jr z, @+$08                                      ; $73ec: $28 $06

	ret nz                                           ; $73ee: $c0

	ld bc, $05a0                                     ; $73ef: $01 $a0 $05
	ld [$902d], sp                                   ; $73f2: $08 $2d $90
	ld [$0934], sp                                   ; $73f5: $08 $34 $09
	inc l                                            ; $73f8: $2c
	pop hl                                           ; $73f9: $e1
	ld [bc], a                                       ; $73fa: $02
	inc bc                                           ; $73fb: $03
	inc de                                           ; $73fc: $13
	add d                                            ; $73fd: $82
	ret nz                                           ; $73fe: $c0

	dec de                                           ; $73ff: $1b
	db $d3                                           ; $7400: $d3
	ld [bc], a                                       ; $7401: $02
	ret nc                                           ; $7402: $d0

	pop de                                           ; $7403: $d1
	ld b, $c0                                        ; $7404: $06 $c0
	ld bc, $05a0                                     ; $7406: $01 $a0 $05
	dec b                                            ; $7409: $05
	ld [hl-], a                                      ; $740a: $32
	ld [bc], a                                       ; $740b: $02
	jp nc, $06d3                                     ; $740c: $d2 $d3 $06

	ret nz                                           ; $740f: $c0

	ld bc, $05a0                                     ; $7410: $01 $a0 $05
	ld [$013a], sp                                   ; $7413: $08 $3a $01
	call nc, $c006                                   ; $7416: $d4 $06 $c0
	ld bc, $05a0                                     ; $7419: $01 $a0 $05
	ld [$e140], sp                                   ; $741c: $08 $40 $e1
	ld [bc], a                                       ; $741f: $02
	inc bc                                           ; $7420: $03
	or h                                             ; $7421: $b4
	db $e4                                           ; $7422: $e4
	inc bc                                           ; $7423: $03
	xor d                                            ; $7424: $aa
	ld [$0946], sp                                   ; $7425: $08 $46 $09
	inc l                                            ; $7428: $2c
	pop hl                                           ; $7429: $e1
	ld [bc], a                                       ; $742a: $02
	inc bc                                           ; $742b: $03
	rra                                              ; $742c: $1f
	add d                                            ; $742d: $82
	ret nz                                           ; $742e: $c0

	dec de                                           ; $742f: $1b
	db $d3                                           ; $7430: $d3
	ld [bc], a                                       ; $7431: $02
	ret nc                                           ; $7432: $d0

	pop de                                           ; $7433: $d1
	ld b, $c0                                        ; $7434: $06 $c0
	ld bc, $05a0                                     ; $7436: $01 $a0 $05
	ld [$0248], sp                                   ; $7439: $08 $48 $02
	jp nc, $06d3                                     ; $743c: $d2 $d3 $06

	ret nz                                           ; $743f: $c0

	ld bc, $05a0                                     ; $7440: $01 $a0 $05
	ld [$014f], sp                                   ; $7443: $08 $4f $01
	call nc, $c006                                   ; $7446: $d4 $06 $c0
	ld bc, $05a0                                     ; $7449: $01 $a0 $05
	ld [$e154], sp                                   ; $744c: $08 $54 $e1
	ld [bc], a                                       ; $744f: $02
	inc bc                                           ; $7450: $03
	ret c                                            ; $7451: $d8

	db $e4                                           ; $7452: $e4
	inc bc                                           ; $7453: $03
	ld a, d                                          ; $7454: $7a
	ld [$0959], sp                                   ; $7455: $08 $59 $09
	inc l                                            ; $7458: $2c
	pop hl                                           ; $7459: $e1
	ld [bc], a                                       ; $745a: $02
	inc bc                                           ; $745b: $03
	rla                                              ; $745c: $17
	add d                                            ; $745d: $82
	ret nz                                           ; $745e: $c0

	dec de                                           ; $745f: $1b
	db $d3                                           ; $7460: $d3
	ld [bc], a                                       ; $7461: $02
	ret nc                                           ; $7462: $d0

	pop de                                           ; $7463: $d1
	ld b, $c0                                        ; $7464: $06 $c0
	ld bc, $05a0                                     ; $7466: $01 $a0 $05
	ld [$025e], sp                                   ; $7469: $08 $5e $02
	jp nc, $06d3                                     ; $746c: $d2 $d3 $06

	ret nz                                           ; $746f: $c0

	ld bc, $05a0                                     ; $7470: $01 $a0 $05
	ld [$0164], sp                                   ; $7473: $08 $64 $01
	call nc, $c006                                   ; $7476: $d4 $06 $c0
	ld bc, $05a0                                     ; $7479: $01 $a0 $05
	ld [$e16b], sp                                   ; $747c: $08 $6b $e1
	ld [bc], a                                       ; $747f: $02
	inc bc                                           ; $7480: $03
	add $e4                                          ; $7481: $c6 $e4
	inc bc                                           ; $7483: $03
	ld c, d                                          ; $7484: $4a
	jr z, @+$08                                      ; $7485: $28 $06

	ret nz                                           ; $7487: $c0

	ld bc, $05a0                                     ; $7488: $01 $a0 $05
	ld [$9871], sp                                   ; $748b: $08 $71 $98
	ld [$097c], sp                                   ; $748e: $08 $7c $09
	inc l                                            ; $7491: $2c
	pop hl                                           ; $7492: $e1
	ld [bc], a                                       ; $7493: $02
	inc bc                                           ; $7494: $03
	rrca                                             ; $7495: $0f
	add d                                            ; $7496: $82
	ret nz                                           ; $7497: $c0

	dec de                                           ; $7498: $1b
	db $d3                                           ; $7499: $d3
	ld [bc], a                                       ; $749a: $02
	ret nc                                           ; $749b: $d0

	pop de                                           ; $749c: $d1
	ld b, $c0                                        ; $749d: $06 $c0
	ld bc, $05a0                                     ; $749f: $01 $a0 $05
	ld [$0281], sp                                   ; $74a2: $08 $81 $02
	jp nc, $06d3                                     ; $74a5: $d2 $d3 $06

	ret nz                                           ; $74a8: $c0

	ld bc, $05a0                                     ; $74a9: $01 $a0 $05
	ld [bc], a                                       ; $74ac: $02
	sub $01                                          ; $74ad: $d6 $01
	call nc, $c006                                   ; $74af: $d4 $06 $c0
	ld bc, $05a0                                     ; $74b2: $01 $a0 $05
	ld [$e187], sp                                   ; $74b5: $08 $87 $e1
	ld [bc], a                                       ; $74b8: $02
	inc bc                                           ; $74b9: $03
	or h                                             ; $74ba: $b4
	db $e4                                           ; $74bb: $e4
	inc bc                                           ; $74bc: $03
	ld de, $8c08                                     ; $74bd: $11 $08 $8c
	add hl, bc                                       ; $74c0: $09
	inc [hl]                                         ; $74c1: $34
	add d                                            ; $74c2: $82
	ret nz                                           ; $74c3: $c0

	dec de                                           ; $74c4: $1b
	db $d3                                           ; $74c5: $d3
	ld [bc], a                                       ; $74c6: $02
	ret nc                                           ; $74c7: $d0

	pop de                                           ; $74c8: $d1
	ld a, [bc]                                       ; $74c9: $0a
	pop hl                                           ; $74ca: $e1
	ld [bc], a                                       ; $74cb: $02
	inc bc                                           ; $74cc: $03
	dec de                                           ; $74cd: $1b
	ret nz                                           ; $74ce: $c0

	ld bc, $05a0                                     ; $74cf: $01 $a0 $05
	ld [$028e], sp                                   ; $74d2: $08 $8e $02
	jp nc, $0ad3                                     ; $74d5: $d2 $d3 $0a

	pop hl                                           ; $74d8: $e1
	ld [bc], a                                       ; $74d9: $02
	inc bc                                           ; $74da: $03
	dec de                                           ; $74db: $1b
	ret nz                                           ; $74dc: $c0

	ld bc, $05a0                                     ; $74dd: $01 $a0 $05
	ld [$0198], sp                                   ; $74e0: $08 $98 $01
	call nc, $e10a                                   ; $74e3: $d4 $0a $e1
	ld [bc], a                                       ; $74e6: $02
	inc bc                                           ; $74e7: $03
	rra                                              ; $74e8: $1f
	ret nz                                           ; $74e9: $c0

	ld bc, $05a0                                     ; $74ea: $01 $a0 $05
	ld [$e1a2], sp                                   ; $74ed: $08 $a2 $e1
	ld [bc], a                                       ; $74f0: $02
	inc bc                                           ; $74f1: $03
	ret c                                            ; $74f2: $d8

	db $e4                                           ; $74f3: $e4
	ld [bc], a                                       ; $74f4: $02
	reti                                             ; $74f5: $d9


	ld [$09a7], sp                                   ; $74f6: $08 $a7 $09
	inc l                                            ; $74f9: $2c
	pop hl                                           ; $74fa: $e1
	ld [bc], a                                       ; $74fb: $02
	inc bc                                           ; $74fc: $03
	rla                                              ; $74fd: $17
	add d                                            ; $74fe: $82
	ret nz                                           ; $74ff: $c0

	dec de                                           ; $7500: $1b
	db $d3                                           ; $7501: $d3
	ld [bc], a                                       ; $7502: $02
	ret nc                                           ; $7503: $d0

	pop de                                           ; $7504: $d1
	ld b, $c0                                        ; $7505: $06 $c0
	ld bc, $05a0                                     ; $7507: $01 $a0 $05
	ld [$02ad], sp                                   ; $750a: $08 $ad $02
	jp nc, $06d3                                     ; $750d: $d2 $d3 $06

	ret nz                                           ; $7510: $c0

	ld bc, $05a0                                     ; $7511: $01 $a0 $05
	ld [$01b5], sp                                   ; $7514: $08 $b5 $01
	call nc, $c006                                   ; $7517: $d4 $06 $c0
	ld bc, $05a0                                     ; $751a: $01 $a0 $05
	ld [$e1c1], sp                                   ; $751d: $08 $c1 $e1
	ld [bc], a                                       ; $7520: $02
	inc bc                                           ; $7521: $03
	add $e4                                          ; $7522: $c6 $e4
	ld [bc], a                                       ; $7524: $02
	xor c                                            ; $7525: $a9
	ld l, $05                                        ; $7526: $2e $05
	pop bc                                           ; $7528: $c1
	ld e, c                                          ; $7529: $59
	db $e3                                           ; $752a: $e3
	nop                                              ; $752b: $00
	sbc h                                            ; $752c: $9c
	and e                                            ; $752d: $a3
	add b                                            ; $752e: $80
	and b                                            ; $752f: $a0
	dec de                                           ; $7530: $1b
	nop                                              ; $7531: $00
	add hl, bc                                       ; $7532: $09
	inc bc                                           ; $7533: $03
	db $e4                                           ; $7534: $e4
	nop                                              ; $7535: $00
	sbc h                                            ; $7536: $9c
	rst $38                                          ; $7537: $ff
	jr z, @+$08                                      ; $7538: $28 $06

	ret nz                                           ; $753a: $c0

	ld bc, $05a0                                     ; $753b: $01 $a0 $05
	ld [$90c8], sp                                   ; $753e: $08 $c8 $90
	ld [$09cf], sp                                   ; $7541: $08 $cf $09
	inc l                                            ; $7544: $2c
	pop hl                                           ; $7545: $e1
	ld [bc], a                                       ; $7546: $02
	inc bc                                           ; $7547: $03
	rrca                                             ; $7548: $0f
	add d                                            ; $7549: $82
	ret nz                                           ; $754a: $c0

	dec de                                           ; $754b: $1b
	db $d3                                           ; $754c: $d3
	ld [bc], a                                       ; $754d: $02
	ret nc                                           ; $754e: $d0

	pop de                                           ; $754f: $d1
	ld b, $c0                                        ; $7550: $06 $c0
	ld bc, $05a0                                     ; $7552: $01 $a0 $05
	ld [$02d1], sp                                   ; $7555: $08 $d1 $02
	jp nc, $06d3                                     ; $7558: $d2 $d3 $06

	ret nz                                           ; $755b: $c0

	ld bc, $05a0                                     ; $755c: $01 $a0 $05
	ld bc, $015a                                     ; $755f: $01 $5a $01
	call nc, $c006                                   ; $7562: $d4 $06 $c0
	ld bc, $05a0                                     ; $7565: $01 $a0 $05
	ld [$e1da], sp                                   ; $7568: $08 $da $e1
	ld [bc], a                                       ; $756b: $02
	inc bc                                           ; $756c: $03
	or h                                             ; $756d: $b4
	db $e4                                           ; $756e: $e4
	ld [bc], a                                       ; $756f: $02
	ld e, [hl]                                       ; $7570: $5e
	ld [$09e6], sp                                   ; $7571: $08 $e6 $09
	inc l                                            ; $7574: $2c
	pop hl                                           ; $7575: $e1
	ld [bc], a                                       ; $7576: $02
	inc bc                                           ; $7577: $03
	rra                                              ; $7578: $1f
	add d                                            ; $7579: $82
	ret nz                                           ; $757a: $c0

	dec de                                           ; $757b: $1b
	db $d3                                           ; $757c: $d3
	ld [bc], a                                       ; $757d: $02
	ret nc                                           ; $757e: $d0

	pop de                                           ; $757f: $d1
	ld b, $c0                                        ; $7580: $06 $c0
	ld bc, $05a0                                     ; $7582: $01 $a0 $05
	ld [$02eb], sp                                   ; $7585: $08 $eb $02
	jp nc, $06d3                                     ; $7588: $d2 $d3 $06

	ret nz                                           ; $758b: $c0

	ld bc, $05a0                                     ; $758c: $01 $a0 $05
	ld [$01f2], sp                                   ; $758f: $08 $f2 $01
	call nc, $c006                                   ; $7592: $d4 $06 $c0
	ld bc, $05a0                                     ; $7595: $01 $a0 $05
	ld [bc], a                                       ; $7598: $02
	inc b                                            ; $7599: $04
	pop hl                                           ; $759a: $e1
	ld [bc], a                                       ; $759b: $02
	inc bc                                           ; $759c: $03
	ret c                                            ; $759d: $d8

	db $e4                                           ; $759e: $e4
	ld [bc], a                                       ; $759f: $02
	ld l, $08                                        ; $75a0: $2e $08
	ld sp, hl                                        ; $75a2: $f9
	add hl, bc                                       ; $75a3: $09
	inc l                                            ; $75a4: $2c
	pop hl                                           ; $75a5: $e1
	ld [bc], a                                       ; $75a6: $02
	inc bc                                           ; $75a7: $03
	inc de                                           ; $75a8: $13
	add d                                            ; $75a9: $82
	ret nz                                           ; $75aa: $c0

	dec de                                           ; $75ab: $1b
	db $d3                                           ; $75ac: $d3
	ld [bc], a                                       ; $75ad: $02
	ret nc                                           ; $75ae: $d0

	pop de                                           ; $75af: $d1
	ld b, $c0                                        ; $75b0: $06 $c0
	ld bc, $05a0                                     ; $75b2: $01 $a0 $05
	add hl, bc                                       ; $75b5: $09
	nop                                              ; $75b6: $00
	ld [bc], a                                       ; $75b7: $02
	jp nc, $06d3                                     ; $75b8: $d2 $d3 $06

	ret nz                                           ; $75bb: $c0

	ld bc, $05a0                                     ; $75bc: $01 $a0 $05
	add hl, bc                                       ; $75bf: $09
	dec bc                                           ; $75c0: $0b
	ld bc, $06d4                                     ; $75c1: $01 $d4 $06
	ret nz                                           ; $75c4: $c0

	ld bc, $05a0                                     ; $75c5: $01 $a0 $05
	add hl, bc                                       ; $75c8: $09
	ld de, $02e1                                     ; $75c9: $11 $e1 $02
	inc bc                                           ; $75cc: $03
	cp l                                             ; $75cd: $bd
	db $e4                                           ; $75ce: $e4
	ld bc, $09fe                                     ; $75cf: $01 $fe $09
	ld [hl], a                                       ; $75d2: $77
	pop bc                                           ; $75d3: $c1
	or d                                             ; $75d4: $b2
	db $e3                                           ; $75d5: $e3
	nop                                              ; $75d6: $00
	ld b, d                                          ; $75d7: $42
	ret nz                                           ; $75d8: $c0

	ld bc, $05a0                                     ; $75d9: $01 $a0 $05
	add hl, bc                                       ; $75dc: $09
	ld a, [de]                                       ; $75dd: $1a
	ret nz                                           ; $75de: $c0

	ld bc, $01a0                                     ; $75df: $01 $a0 $01
	add hl, bc                                       ; $75e2: $09
	dec h                                            ; $75e3: $25
	ret nz                                           ; $75e4: $c0

	set 0, c                                         ; $75e5: $cb $c1
	ld e, e                                          ; $75e7: $5b
	ret nz                                           ; $75e8: $c0

	rrca                                             ; $75e9: $0f
	db $e3                                           ; $75ea: $e3
	nop                                              ; $75eb: $00
	pop af                                           ; $75ec: $f1
	ret nz                                           ; $75ed: $c0

	ld bc, $05a0                                     ; $75ee: $01 $a0 $05
	add hl, bc                                       ; $75f1: $09
	dec hl                                           ; $75f2: $2b
	ret nz                                           ; $75f3: $c0

	ld bc, $01a0                                     ; $75f4: $01 $a0 $01
	add hl, bc                                       ; $75f7: $09
	ld [hl], $c0                                     ; $75f8: $36 $c0
	ld bc, $05a0                                     ; $75fa: $01 $a0 $05
	add hl, bc                                       ; $75fd: $09
	ld a, [hl-]                                      ; $75fe: $3a
	pop hl                                           ; $75ff: $e1
	ld [bc], a                                       ; $7600: $02
	rlca                                             ; $7601: $07
	cp a                                             ; $7602: $bf
	ret nz                                           ; $7603: $c0

	ld bc, $01a0                                     ; $7604: $01 $a0 $01
	add hl, bc                                       ; $7607: $09
	ld b, l                                          ; $7608: $45
	ret nz                                           ; $7609: $c0

	ld bc, $05a0                                     ; $760a: $01 $a0 $05
	add hl, bc                                       ; $760d: $09
	ld d, h                                          ; $760e: $54
	ret nz                                           ; $760f: $c0

	ld bc, $01a0                                     ; $7610: $01 $a0 $01
	add hl, bc                                       ; $7613: $09
	ld e, d                                          ; $7614: $5a
	ret nz                                           ; $7615: $c0

	ld bc, $05a0                                     ; $7616: $01 $a0 $05
	add hl, bc                                       ; $7619: $09
	ld h, b                                          ; $761a: $60
	ret nz                                           ; $761b: $c0

	ld bc, $01a0                                     ; $761c: $01 $a0 $01
	add hl, bc                                       ; $761f: $09
	ld l, l                                          ; $7620: $6d
	ret nc                                           ; $7621: $d0

	add d                                            ; $7622: $82
	ld bc, $d1cf                                     ; $7623: $01 $cf $d1
	pop hl                                           ; $7626: $e1
	ld [bc], a                                       ; $7627: $02
	inc b                                            ; $7628: $04
	rst JumpTable                                          ; $7629: $c7
	nop                                              ; $762a: $00
	add b                                            ; $762b: $80
	ld [bc], a                                       ; $762c: $02
	ld [hl], l                                       ; $762d: $75
	ret nz                                           ; $762e: $c0

	ld d, c                                          ; $762f: $51
	jp nc, $50c0                                     ; $7630: $d2 $c0 $50

	pop de                                           ; $7633: $d1
	ret nz                                           ; $7634: $c0

	ld d, l                                          ; $7635: $55
	ldh [rAUD1HIGH], a                               ; $7636: $e0 $14
	ret nz                                           ; $7638: $c0

	set 0, b                                         ; $7639: $cb $c0
	ld de, $00e3                                     ; $763b: $11 $e3 $00
	sbc d                                            ; $763e: $9a
	pop bc                                           ; $763f: $c1
	ld e, h                                          ; $7640: $5c
	ret nz                                           ; $7641: $c0

	jp z, $6bc1                                      ; $7642: $ca $c1 $6b

	push de                                          ; $7645: $d5
	db $d3                                           ; $7646: $d3
	db $e4                                           ; $7647: $e4
	ld bc, $2e8f                                     ; $7648: $01 $8f $2e
	dec b                                            ; $764b: $05
	pop bc                                           ; $764c: $c1
	ld e, c                                          ; $764d: $59
	db $e3                                           ; $764e: $e3
	nop                                              ; $764f: $00
	sbc l                                            ; $7650: $9d
	and e                                            ; $7651: $a3
	add b                                            ; $7652: $80
	and b                                            ; $7653: $a0
	inc e                                            ; $7654: $1c
	nop                                              ; $7655: $00
	jr z, jr_07f_765e                                ; $7656: $28 $06

	ret nz                                           ; $7658: $c0

	ld bc, $05a0                                     ; $7659: $01 $a0 $05
	add hl, bc                                       ; $765c: $09
	ld [hl], b                                       ; $765d: $70

jr_07f_765e:
	sub b                                            ; $765e: $90
	add hl, bc                                       ; $765f: $09
	ld [hl], a                                       ; $7660: $77
	add hl, bc                                       ; $7661: $09
	inc l                                            ; $7662: $2c
	pop hl                                           ; $7663: $e1
	ld [bc], a                                       ; $7664: $02
	inc bc                                           ; $7665: $03
	rrca                                             ; $7666: $0f
	add d                                            ; $7667: $82
	ret nz                                           ; $7668: $c0

	dec de                                           ; $7669: $1b
	db $d3                                           ; $766a: $d3
	ld [bc], a                                       ; $766b: $02
	ret nc                                           ; $766c: $d0

	pop de                                           ; $766d: $d1
	ld b, $c0                                        ; $766e: $06 $c0
	ld bc, $05a0                                     ; $7670: $01 $a0 $05
	ld bc, $025a                                     ; $7673: $01 $5a $02
	jp nc, $06d3                                     ; $7676: $d2 $d3 $06

	ret nz                                           ; $7679: $c0

	ld bc, $05a0                                     ; $767a: $01 $a0 $05
	add hl, bc                                       ; $767d: $09
	ld a, c                                          ; $767e: $79
	ld bc, $06d4                                     ; $767f: $01 $d4 $06
	ret nz                                           ; $7682: $c0

	ld bc, $05a0                                     ; $7683: $01 $a0 $05
	add hl, bc                                       ; $7686: $09
	ld a, a                                          ; $7687: $7f
	pop hl                                           ; $7688: $e1
	ld [bc], a                                       ; $7689: $02
	inc bc                                           ; $768a: $03
	or h                                             ; $768b: $b4
	db $e4                                           ; $768c: $e4
	ld bc, $0940                                     ; $768d: $01 $40 $09
	adc e                                            ; $7690: $8b
	add hl, bc                                       ; $7691: $09
	inc l                                            ; $7692: $2c
	pop hl                                           ; $7693: $e1
	ld [bc], a                                       ; $7694: $02
	inc bc                                           ; $7695: $03
	rra                                              ; $7696: $1f
	add d                                            ; $7697: $82
	ret nz                                           ; $7698: $c0

	dec de                                           ; $7699: $1b
	db $d3                                           ; $769a: $d3
	ld [bc], a                                       ; $769b: $02
	ret nc                                           ; $769c: $d0

	pop de                                           ; $769d: $d1
	ld b, $c0                                        ; $769e: $06 $c0
	ld bc, $05a0                                     ; $76a0: $01 $a0 $05
	add hl, bc                                       ; $76a3: $09
	adc l                                            ; $76a4: $8d
	ld [bc], a                                       ; $76a5: $02
	jp nc, $06d3                                     ; $76a6: $d2 $d3 $06

	ret nz                                           ; $76a9: $c0

	ld bc, $05a0                                     ; $76aa: $01 $a0 $05
	add hl, bc                                       ; $76ad: $09
	sbc c                                            ; $76ae: $99
	ld bc, $06d4                                     ; $76af: $01 $d4 $06
	ret nz                                           ; $76b2: $c0

	ld bc, $05a0                                     ; $76b3: $01 $a0 $05
	add hl, bc                                       ; $76b6: $09
	and l                                            ; $76b7: $a5
	pop hl                                           ; $76b8: $e1
	ld [bc], a                                       ; $76b9: $02
	inc bc                                           ; $76ba: $03
	ret c                                            ; $76bb: $d8

	db $e4                                           ; $76bc: $e4
	ld bc, $0910                                     ; $76bd: $01 $10 $09
	or b                                             ; $76c0: $b0
	add hl, bc                                       ; $76c1: $09
	inc l                                            ; $76c2: $2c
	pop hl                                           ; $76c3: $e1
	ld [bc], a                                       ; $76c4: $02
	inc bc                                           ; $76c5: $03
	inc de                                           ; $76c6: $13
	add d                                            ; $76c7: $82
	ret nz                                           ; $76c8: $c0

	dec de                                           ; $76c9: $1b
	db $d3                                           ; $76ca: $d3
	ld [bc], a                                       ; $76cb: $02
	ret nc                                           ; $76cc: $d0

	pop de                                           ; $76cd: $d1
	ld b, $c0                                        ; $76ce: $06 $c0
	ld bc, $05a0                                     ; $76d0: $01 $a0 $05
	add hl, bc                                       ; $76d3: $09
	or d                                             ; $76d4: $b2
	ld [bc], a                                       ; $76d5: $02
	jp nc, $06d3                                     ; $76d6: $d2 $d3 $06

	ret nz                                           ; $76d9: $c0

	ld bc, $05a0                                     ; $76da: $01 $a0 $05
	add hl, bc                                       ; $76dd: $09
	cp b                                             ; $76de: $b8
	ld bc, $06d4                                     ; $76df: $01 $d4 $06
	ret nz                                           ; $76e2: $c0

	ld bc, $05a0                                     ; $76e3: $01 $a0 $05
	add hl, bc                                       ; $76e6: $09
	cp l                                             ; $76e7: $bd
	pop hl                                           ; $76e8: $e1
	ld [bc], a                                       ; $76e9: $02
	inc bc                                           ; $76ea: $03
	cp l                                             ; $76eb: $bd
	db $e4                                           ; $76ec: $e4
	nop                                              ; $76ed: $00
	ldh [rIE], a                                     ; $76ee: $e0 $ff
	add hl, bc                                       ; $76f0: $09
	inc bc                                           ; $76f1: $03
	ldh [rP1], a                                     ; $76f2: $e0 $00
	xor l                                            ; $76f4: $ad
	ld l, $05                                        ; $76f5: $2e $05
	pop bc                                           ; $76f7: $c1
	ld e, c                                          ; $76f8: $59
	db $e3                                           ; $76f9: $e3
	nop                                              ; $76fa: $00
	sbc [hl]                                         ; $76fb: $9e
	and e                                            ; $76fc: $a3
	add b                                            ; $76fd: $80
	and b                                            ; $76fe: $a0
	dec e                                            ; $76ff: $1d
	nop                                              ; $7700: $00
	jr z, @+$08                                      ; $7701: $28 $06

	ret nz                                           ; $7703: $c0

	ld bc, $05a0                                     ; $7704: $01 $a0 $05
	add hl, bc                                       ; $7707: $09
	jp $0990                                         ; $7708: $c3 $90 $09


	rst JumpTable                                          ; $770b: $c7
	add hl, bc                                       ; $770c: $09
	inc l                                            ; $770d: $2c
	pop hl                                           ; $770e: $e1
	ld [bc], a                                       ; $770f: $02
	inc bc                                           ; $7710: $03
	rrca                                             ; $7711: $0f
	add d                                            ; $7712: $82
	ret nz                                           ; $7713: $c0

	dec de                                           ; $7714: $1b
	db $d3                                           ; $7715: $d3
	ld [bc], a                                       ; $7716: $02
	ret nc                                           ; $7717: $d0

	pop de                                           ; $7718: $d1
	ld b, $c0                                        ; $7719: $06 $c0
	ld bc, $05a0                                     ; $771b: $01 $a0 $05
	add hl, bc                                       ; $771e: $09
	adc $02                                          ; $771f: $ce $02
	jp nc, $06d3                                     ; $7721: $d2 $d3 $06

	ret nz                                           ; $7724: $c0

	ld bc, $05a0                                     ; $7725: $01 $a0 $05
	add hl, bc                                       ; $7728: $09
	ret nc                                           ; $7729: $d0

	ld bc, $06d4                                     ; $772a: $01 $d4 $06
	ret nz                                           ; $772d: $c0

	ld bc, $05a0                                     ; $772e: $01 $a0 $05
	add hl, bc                                       ; $7731: $09
	sub $e1                                          ; $7732: $d6 $e1
	ld [bc], a                                       ; $7734: $02
	inc bc                                           ; $7735: $03
	or h                                             ; $7736: $b4
	db $e4                                           ; $7737: $e4
	nop                                              ; $7738: $00
	sub l                                            ; $7739: $95
	add hl, bc                                       ; $773a: $09
	jp c, $2c09                                      ; $773b: $da $09 $2c

	pop hl                                           ; $773e: $e1
	ld [bc], a                                       ; $773f: $02
	inc bc                                           ; $7740: $03
	rra                                              ; $7741: $1f
	add d                                            ; $7742: $82
	ret nz                                           ; $7743: $c0

	dec de                                           ; $7744: $1b
	db $d3                                           ; $7745: $d3
	ld [bc], a                                       ; $7746: $02
	ret nc                                           ; $7747: $d0

	pop de                                           ; $7748: $d1
	ld b, $c0                                        ; $7749: $06 $c0
	ld bc, $05a0                                     ; $774b: $01 $a0 $05
	add hl, bc                                       ; $774e: $09
	rst SubAFromDE                                          ; $774f: $df
	ld [bc], a                                       ; $7750: $02
	jp nc, $06d3                                     ; $7751: $d2 $d3 $06

	ret nz                                           ; $7754: $c0

	ld bc, $05a0                                     ; $7755: $01 $a0 $05
	add hl, bc                                       ; $7758: $09
	rst SubAFromBC                                          ; $7759: $e7
	ld bc, $06d4                                     ; $775a: $01 $d4 $06
	ret nz                                           ; $775d: $c0

	ld bc, $05a0                                     ; $775e: $01 $a0 $05
	add hl, bc                                       ; $7761: $09
	rst AddAOntoHL                                          ; $7762: $ef
	pop hl                                           ; $7763: $e1
	ld [bc], a                                       ; $7764: $02
	inc bc                                           ; $7765: $03
	rst GetHLinHL                                          ; $7766: $cf
	db $e4                                           ; $7767: $e4
	nop                                              ; $7768: $00
	ld h, l                                          ; $7769: $65
	add hl, bc                                       ; $776a: $09
	db $f4                                           ; $776b: $f4
	add hl, bc                                       ; $776c: $09
	inc l                                            ; $776d: $2c
	pop hl                                           ; $776e: $e1
	ld [bc], a                                       ; $776f: $02
	inc bc                                           ; $7770: $03
	inc de                                           ; $7771: $13
	add d                                            ; $7772: $82
	ret nz                                           ; $7773: $c0

	dec de                                           ; $7774: $1b
	db $d3                                           ; $7775: $d3
	ld [bc], a                                       ; $7776: $02
	ret nc                                           ; $7777: $d0

	pop de                                           ; $7778: $d1
	ld b, $c0                                        ; $7779: $06 $c0
	ld bc, $05a0                                     ; $777b: $01 $a0 $05
	ld bc, $025a                                     ; $777e: $01 $5a $02
	jp nc, $06d3                                     ; $7781: $d2 $d3 $06

	ret nz                                           ; $7784: $c0

	ld bc, $05a0                                     ; $7785: $01 $a0 $05
	add hl, bc                                       ; $7788: $09
	ld hl, sp+$01                                    ; $7789: $f8 $01
	call nc, $c006                                   ; $778b: $d4 $06 $c0
	ld bc, $05a0                                     ; $778e: $01 $a0 $05
	add hl, bc                                       ; $7791: $09
	rst $38                                          ; $7792: $ff
	pop hl                                           ; $7793: $e1
	ld [bc], a                                       ; $7794: $02
	inc bc                                           ; $7795: $03
	cp l                                             ; $7796: $bd
	db $e4                                           ; $7797: $e4
	nop                                              ; $7798: $00
	dec [hl]                                         ; $7799: $35
	rst $38                                          ; $779a: $ff
	add hl, bc                                       ; $779b: $09
	inc bc                                           ; $779c: $03
	ldh [rP1], a                                     ; $779d: $e0 $00
	ld [bc], a                                       ; $779f: $02
	inc l                                            ; $77a0: $2c
	pop hl                                           ; $77a1: $e1
	ld [bc], a                                       ; $77a2: $02
	inc bc                                           ; $77a3: $03
	rra                                              ; $77a4: $1f
	add d                                            ; $77a5: $82
	ret nz                                           ; $77a6: $c0

	dec de                                           ; $77a7: $1b
	db $d3                                           ; $77a8: $d3
	ld [bc], a                                       ; $77a9: $02
	ret nc                                           ; $77aa: $d0

	pop de                                           ; $77ab: $d1
	ld b, $c0                                        ; $77ac: $06 $c0
	ld bc, $05a0                                     ; $77ae: $01 $a0 $05
	ld a, [bc]                                       ; $77b1: $0a
	inc bc                                           ; $77b2: $03
	ld [bc], a                                       ; $77b3: $02
	jp nc, $06d3                                     ; $77b4: $d2 $d3 $06

	ret nz                                           ; $77b7: $c0

	ld bc, $05a0                                     ; $77b8: $01 $a0 $05
	ld a, [bc]                                       ; $77bb: $0a
	add hl, bc                                       ; $77bc: $09
	ld bc, $06d4                                     ; $77bd: $01 $d4 $06
	ret nz                                           ; $77c0: $c0

	ld bc, $05a0                                     ; $77c1: $01 $a0 $05
	ld a, [bc]                                       ; $77c4: $0a
	db $10                                           ; $77c5: $10
	pop hl                                           ; $77c6: $e1
	ld [bc], a                                       ; $77c7: $02
	inc bc                                           ; $77c8: $03
	ret c                                            ; $77c9: $d8

	db $e4                                           ; $77ca: $e4
	nop                                              ; $77cb: $00
	ld [bc], a                                       ; $77cc: $02
	add hl, bc                                       ; $77cd: $09
	ld [$59c1], sp                                   ; $77ce: $08 $c1 $59
	db $e3                                           ; $77d1: $e3
	nop                                              ; $77d2: $00
	sbc d                                            ; $77d3: $9a
	db $e4                                           ; $77d4: $e4
	nop                                              ; $77d5: $00
	ld [bc], a                                       ; $77d6: $02
	add hl, bc                                       ; $77d7: $09
	ld a, [hl+]                                      ; $77d8: $2a
	add e                                            ; $77d9: $83
	adc e                                            ; $77da: $8b
	ld [bc], a                                       ; $77db: $02
	ld b, d                                          ; $77dc: $42
	ld [bc], a                                       ; $77dd: $02
	or b                                             ; $77de: $b0
	ld [hl], e                                       ; $77df: $73
	dec b                                            ; $77e0: $05
	ret nz                                           ; $77e1: $c0

	ld d, [hl]                                       ; $77e2: $56
	db $d3                                           ; $77e3: $d3
	rst SubAFromHL                                          ; $77e4: $d7
	pop de                                           ; $77e5: $d1
	ld [bc], a                                       ; $77e6: $02
	or b                                             ; $77e7: $b0
	ld l, a                                          ; $77e8: $6f
	dec b                                            ; $77e9: $05
	ret nz                                           ; $77ea: $c0

	ld d, [hl]                                       ; $77eb: $56
	db $d3                                           ; $77ec: $d3
	rst SubAFromHL                                          ; $77ed: $d7
	jp nc, $b002                                     ; $77ee: $d2 $02 $b0

	ld l, h                                          ; $77f1: $6c
	dec b                                            ; $77f2: $05
	ret nz                                           ; $77f3: $c0

	ld d, [hl]                                       ; $77f4: $56
	db $d3                                           ; $77f5: $d3
	rst SubAFromHL                                          ; $77f6: $d7
	db $d3                                           ; $77f7: $d3
	nop                                              ; $77f8: $00
	dec b                                            ; $77f9: $05
	ret nz                                           ; $77fa: $c0

	ld d, [hl]                                       ; $77fb: $56
	db $d3                                           ; $77fc: $d3
	rst SubAFromHL                                          ; $77fd: $d7
	ret nc                                           ; $77fe: $d0

	push hl                                          ; $77ff: $e5
	rra                                              ; $7800: $1f
	nop                                              ; $7801: $00
	nop                                              ; $7802: $00
	add hl, bc                                       ; $7803: $09
	dec e                                            ; $7804: $1d
	ret nc                                           ; $7805: $d0

	add e                                            ; $7806: $83
	ld bc, $d0de                                     ; $7807: $01 $de $d0
	pop bc                                           ; $780a: $c1
	jp z, wDataCopyStruct                                      ; $780b: $ca $d0 $d3

	ret nz                                           ; $780e: $c0

	ld bc, $05a0                                     ; $780f: $01 $a0 $05
	inc b                                            ; $7812: $04
	ld a, [hl+]                                      ; $7813: $2a
	ret nz                                           ; $7814: $c0

	ld bc, $01a0                                     ; $7815: $01 $a0 $01
	inc b                                            ; $7818: $04
	ld sp, $59c1                                     ; $7819: $31 $c1 $59
	db $e3                                           ; $781c: $e3
	nop                                              ; $781d: $00
	and l                                            ; $781e: $a5
	db $e4                                           ; $781f: $e4
	nop                                              ; $7820: $00
	ld [bc], a                                       ; $7821: $02
	jr z, @+$08                                      ; $7822: $28 $06

	ret nz                                           ; $7824: $c0

	ld bc, $05a0                                     ; $7825: $01 $a0 $05
	ld a, [bc]                                       ; $7828: $0a
	ld d, $90                                        ; $7829: $16 $90
	ld a, [bc]                                       ; $782b: $0a
	jr nz, jr_07f_7837                               ; $782c: $20 $09

	inc l                                            ; $782e: $2c
	pop hl                                           ; $782f: $e1
	ld [bc], a                                       ; $7830: $02
	inc bc                                           ; $7831: $03
	inc de                                           ; $7832: $13
	add d                                            ; $7833: $82
	ret nz                                           ; $7834: $c0

	dec de                                           ; $7835: $1b
	db $d3                                           ; $7836: $d3

jr_07f_7837:
	ld [bc], a                                       ; $7837: $02
	ret nc                                           ; $7838: $d0

	pop de                                           ; $7839: $d1
	ld b, $c0                                        ; $783a: $06 $c0
	ld bc, $05a0                                     ; $783c: $01 $a0 $05
	ld a, [bc]                                       ; $783f: $0a
	dec h                                            ; $7840: $25
	ld [bc], a                                       ; $7841: $02
	jp nc, $06d3                                     ; $7842: $d2 $d3 $06

	ret nz                                           ; $7845: $c0

	ld bc, $05a0                                     ; $7846: $01 $a0 $05
	ld a, [bc]                                       ; $7849: $0a
	dec l                                            ; $784a: $2d
	ld bc, $06d4                                     ; $784b: $01 $d4 $06
	ret nz                                           ; $784e: $c0

	ld bc, $05a0                                     ; $784f: $01 $a0 $05
	ld a, [bc]                                       ; $7852: $0a
	ld [hl], $e1                                     ; $7853: $36 $e1
	ld [bc], a                                       ; $7855: $02
	inc bc                                           ; $7856: $03
	cp l                                             ; $7857: $bd
	db $e4                                           ; $7858: $e4
	nop                                              ; $7859: $00
	ld h, d                                          ; $785a: $62
	ld a, [bc]                                       ; $785b: $0a
	ld a, [hl-]                                      ; $785c: $3a
	add hl, bc                                       ; $785d: $09
	inc l                                            ; $785e: $2c
	pop hl                                           ; $785f: $e1
	ld [bc], a                                       ; $7860: $02
	inc bc                                           ; $7861: $03
	dec de                                           ; $7862: $1b
	add d                                            ; $7863: $82
	ret nz                                           ; $7864: $c0

	dec de                                           ; $7865: $1b
	db $d3                                           ; $7866: $d3
	ld [bc], a                                       ; $7867: $02
	ret nc                                           ; $7868: $d0

	pop de                                           ; $7869: $d1
	ld b, $c0                                        ; $786a: $06 $c0
	ld bc, $05a0                                     ; $786c: $01 $a0 $05
	ld a, [bc]                                       ; $786f: $0a
	inc a                                            ; $7870: $3c
	ld [bc], a                                       ; $7871: $02
	jp nc, $06d3                                     ; $7872: $d2 $d3 $06

	ret nz                                           ; $7875: $c0

	ld bc, $05a0                                     ; $7876: $01 $a0 $05
	ld a, [bc]                                       ; $7879: $0a
	ld b, b                                          ; $787a: $40
	ld bc, $06d4                                     ; $787b: $01 $d4 $06
	ret nz                                           ; $787e: $c0

	ld bc, $05a0                                     ; $787f: $01 $a0 $05
	ld a, [bc]                                       ; $7882: $0a
	ld c, b                                          ; $7883: $48
	pop hl                                           ; $7884: $e1
	ld [bc], a                                       ; $7885: $02
	inc bc                                           ; $7886: $03
	rst GetHLinHL                                          ; $7887: $cf
	db $e4                                           ; $7888: $e4
	nop                                              ; $7889: $00
	ld [hl-], a                                      ; $788a: $32
	ld a, [bc]                                       ; $788b: $0a
	ld c, [hl]                                       ; $788c: $4e
	add hl, bc                                       ; $788d: $09
	inc l                                            ; $788e: $2c
	pop hl                                           ; $788f: $e1
	ld [bc], a                                       ; $7890: $02
	inc bc                                           ; $7891: $03
	rla                                              ; $7892: $17
	add d                                            ; $7893: $82
	ret nz                                           ; $7894: $c0

	dec de                                           ; $7895: $1b
	db $d3                                           ; $7896: $d3
	ld [bc], a                                       ; $7897: $02
	ret nc                                           ; $7898: $d0

	pop de                                           ; $7899: $d1
	ld b, $c0                                        ; $789a: $06 $c0
	ld bc, $05a0                                     ; $789c: $01 $a0 $05
	ld a, [bc]                                       ; $789f: $0a
	ld d, b                                          ; $78a0: $50
	ld [bc], a                                       ; $78a1: $02
	jp nc, $06d3                                     ; $78a2: $d2 $d3 $06

	ret nz                                           ; $78a5: $c0

	ld bc, $05a0                                     ; $78a6: $01 $a0 $05
	ld a, [bc]                                       ; $78a9: $0a
	ld e, [hl]                                       ; $78aa: $5e
	ld bc, $06d4                                     ; $78ab: $01 $d4 $06
	ret nz                                           ; $78ae: $c0

	ld bc, $05a0                                     ; $78af: $01 $a0 $05
	ld a, [bc]                                       ; $78b2: $0a
	ld l, h                                          ; $78b3: $6c
	pop hl                                           ; $78b4: $e1
	ld [bc], a                                       ; $78b5: $02
	inc bc                                           ; $78b6: $03
	add $e4                                          ; $78b7: $c6 $e4
	nop                                              ; $78b9: $00
	ld [bc], a                                       ; $78ba: $02
	add hl, bc                                       ; $78bb: $09
	ld c, $c1                                        ; $78bc: $0e $c1
	ld e, c                                          ; $78be: $59
	db $e3                                           ; $78bf: $e3
	nop                                              ; $78c0: $00
	and h                                            ; $78c1: $a4
	ret nz                                           ; $78c2: $c0

	ld d, [hl]                                       ; $78c3: $56
	db $d3                                           ; $78c4: $d3
	ret c                                            ; $78c5: $d8

	ret nc                                           ; $78c6: $d0

	push hl                                          ; $78c7: $e5
	rra                                              ; $78c8: $1f
	nop                                              ; $78c9: $00
	nop                                              ; $78ca: $00
	inc l                                            ; $78cb: $2c
	inc c                                            ; $78cc: $0c
	ret nz                                           ; $78cd: $c0

	ld bc, $05a0                                     ; $78ce: $01 $a0 $05
	inc b                                            ; $78d1: $04
	ld a, [hl+]                                      ; $78d2: $2a
	ret nz                                           ; $78d3: $c0

	ld bc, $01a0                                     ; $78d4: $01 $a0 $01
	ld a, [bc]                                       ; $78d7: $0a
	ld [hl], e                                       ; $78d8: $73
	add hl, de                                       ; $78d9: $19
	add b                                            ; $78da: $80
	ld [bc], a                                       ; $78db: $02
	ld d, [hl]                                       ; $78dc: $56
	ld [$0a0e], sp                                   ; $78dd: $08 $0e $0a

Jump_07f_78e0:
	ld a, b                                          ; $78e0: $78
	add hl, bc                                       ; $78e1: $09
	inc bc                                           ; $78e2: $03
	db $e4                                           ; $78e3: $e4
	nop                                              ; $78e4: $00
	rrca                                             ; $78e5: $0f
	ld a, [bc]                                       ; $78e6: $0a
	ld a, d                                          ; $78e7: $7a
	add hl, bc                                       ; $78e8: $09
	inc bc                                           ; $78e9: $03
	db $e4                                           ; $78ea: $e4
	nop                                              ; $78eb: $00
	inc l                                            ; $78ec: $2c
	pop de                                           ; $78ed: $d1
	add hl, bc                                       ; $78ee: $09
	inc bc                                           ; $78ef: $03
	db $e4                                           ; $78f0: $e4
	nop                                              ; $78f1: $00
	ld [bc], a                                       ; $78f2: $02
	add hl, bc                                       ; $78f3: $09
	ld [hl+], a                                      ; $78f4: $22
	ret nc                                           ; $78f5: $d0

	add e                                            ; $78f6: $83
	ld bc, $d1de                                     ; $78f7: $01 $de $d1
	pop bc                                           ; $78fa: $c1
	ld e, c                                          ; $78fb: $59
	db $e3                                           ; $78fc: $e3
	nop                                              ; $78fd: $00
	sbc b                                            ; $78fe: $98
	ret nc                                           ; $78ff: $d0

	adc e                                            ; $7900: $8b
	and b                                            ; $7901: $a0
	ld e, $b0                                        ; $7902: $1e $b0
	ld a, b                                          ; $7904: $78
	and b                                            ; $7905: $a0
	add b                                            ; $7906: $80
	and b                                            ; $7907: $a0
	ld a, [hl+]                                      ; $7908: $2a
	nop                                              ; $7909: $00
	inc bc                                           ; $790a: $03
	db $e4                                           ; $790b: $e4
	nop                                              ; $790c: $00
	cpl                                              ; $790d: $2f
	rst $38                                          ; $790e: $ff
	rlca                                             ; $790f: $07
	ld b, b                                          ; $7910: $40
	add b                                            ; $7911: $80
	and b                                            ; $7912: $a0
	ld a, [hl+]                                      ; $7913: $2a
	db $e4                                           ; $7914: $e4
	nop                                              ; $7915: $00
	cp a                                             ; $7916: $bf
	add hl, bc                                       ; $7917: $09
	ld [hl+], a                                      ; $7918: $22
	ret nc                                           ; $7919: $d0

	add e                                            ; $791a: $83
	ld bc, $d2de                                     ; $791b: $01 $de $d2
	pop bc                                           ; $791e: $c1
	ld e, c                                          ; $791f: $59
	db $e3                                           ; $7920: $e3
	nop                                              ; $7921: $00
	sbc c                                            ; $7922: $99
	ret nc                                           ; $7923: $d0

	adc e                                            ; $7924: $8b
	and b                                            ; $7925: $a0
	ld e, $b0                                        ; $7926: $1e $b0
	ld a, c                                          ; $7928: $79
	and b                                            ; $7929: $a0
	add b                                            ; $792a: $80
	and b                                            ; $792b: $a0
	dec hl                                           ; $792c: $2b
	nop                                              ; $792d: $00
	inc bc                                           ; $792e: $03
	db $e4                                           ; $792f: $e4
	ld bc, $ff3d                                     ; $7930: $01 $3d $ff
	rlca                                             ; $7933: $07
	ld b, b                                          ; $7934: $40
	add b                                            ; $7935: $80
	and b                                            ; $7936: $a0
	dec hl                                           ; $7937: $2b
	db $e4                                           ; $7938: $e4
	ld bc, $28cd                                     ; $7939: $01 $cd $28
	ld b, $c0                                        ; $793c: $06 $c0
	ld bc, $05a0                                     ; $793e: $01 $a0 $05
	ld a, [bc]                                       ; $7941: $0a
	ld a, h                                          ; $7942: $7c
	sub b                                            ; $7943: $90
	ld a, [bc]                                       ; $7944: $0a
	add l                                            ; $7945: $85
	add hl, bc                                       ; $7946: $09
	inc l                                            ; $7947: $2c
	pop hl                                           ; $7948: $e1
	ld [bc], a                                       ; $7949: $02
	inc bc                                           ; $794a: $03
	inc de                                           ; $794b: $13
	add d                                            ; $794c: $82
	ret nz                                           ; $794d: $c0

	dec de                                           ; $794e: $1b
	db $d3                                           ; $794f: $d3
	ld [bc], a                                       ; $7950: $02
	ret nc                                           ; $7951: $d0

	pop de                                           ; $7952: $d1
	ld b, $c0                                        ; $7953: $06 $c0
	ld bc, $05a0                                     ; $7955: $01 $a0 $05
	ld a, [bc]                                       ; $7958: $0a
	adc h                                            ; $7959: $8c
	ld [bc], a                                       ; $795a: $02
	jp nc, $06d3                                     ; $795b: $d2 $d3 $06

	ret nz                                           ; $795e: $c0

	ld bc, $05a0                                     ; $795f: $01 $a0 $05
	ld a, [bc]                                       ; $7962: $0a
	sub b                                            ; $7963: $90
	ld bc, $06d4                                     ; $7964: $01 $d4 $06
	ret nz                                           ; $7967: $c0

	ld bc, $05a0                                     ; $7968: $01 $a0 $05
	ld a, [bc]                                       ; $796b: $0a
	sub l                                            ; $796c: $95
	pop hl                                           ; $796d: $e1
	ld [bc], a                                       ; $796e: $02
	inc bc                                           ; $796f: $03
	cp l                                             ; $7970: $bd
	db $e4                                           ; $7971: $e4
	ld [bc], a                                       ; $7972: $02
	dec l                                            ; $7973: $2d
	ld a, [bc]                                       ; $7974: $0a
	sbc b                                            ; $7975: $98
	add hl, bc                                       ; $7976: $09
	inc l                                            ; $7977: $2c
	pop hl                                           ; $7978: $e1
	ld [bc], a                                       ; $7979: $02
	inc bc                                           ; $797a: $03
	dec de                                           ; $797b: $1b
	add d                                            ; $797c: $82
	ret nz                                           ; $797d: $c0

	dec de                                           ; $797e: $1b
	db $d3                                           ; $797f: $d3
	ld [bc], a                                       ; $7980: $02
	ret nc                                           ; $7981: $d0

	pop de                                           ; $7982: $d1
	ld b, $c0                                        ; $7983: $06 $c0
	ld bc, $05a0                                     ; $7985: $01 $a0 $05
	ld a, [bc]                                       ; $7988: $0a
	sbc e                                            ; $7989: $9b
	ld [bc], a                                       ; $798a: $02
	jp nc, $06d3                                     ; $798b: $d2 $d3 $06

	ret nz                                           ; $798e: $c0

	ld bc, $05a0                                     ; $798f: $01 $a0 $05
	ld a, [bc]                                       ; $7992: $0a
	and c                                            ; $7993: $a1
	ld bc, $06d4                                     ; $7994: $01 $d4 $06
	ret nz                                           ; $7997: $c0

	ld bc, $05a0                                     ; $7998: $01 $a0 $05
	ld a, [bc]                                       ; $799b: $0a
	and [hl]                                         ; $799c: $a6
	pop hl                                           ; $799d: $e1
	ld [bc], a                                       ; $799e: $02
	inc bc                                           ; $799f: $03
	rst GetHLinHL                                          ; $79a0: $cf
	db $e4                                           ; $79a1: $e4
	ld bc, $0afd                                     ; $79a2: $01 $fd $0a
	xor [hl]                                         ; $79a5: $ae
	add hl, bc                                       ; $79a6: $09
	inc l                                            ; $79a7: $2c
	pop hl                                           ; $79a8: $e1
	ld [bc], a                                       ; $79a9: $02
	inc bc                                           ; $79aa: $03
	rla                                              ; $79ab: $17
	add d                                            ; $79ac: $82
	ret nz                                           ; $79ad: $c0

	dec de                                           ; $79ae: $1b
	db $d3                                           ; $79af: $d3
	ld [bc], a                                       ; $79b0: $02
	ret nc                                           ; $79b1: $d0

	pop de                                           ; $79b2: $d1
	ld b, $c0                                        ; $79b3: $06 $c0
	ld bc, $05a0                                     ; $79b5: $01 $a0 $05
	ld bc, $025a                                     ; $79b8: $01 $5a $02
	jp nc, $06d3                                     ; $79bb: $d2 $d3 $06

	ret nz                                           ; $79be: $c0

	ld bc, $05a0                                     ; $79bf: $01 $a0 $05
	ld a, [bc]                                       ; $79c2: $0a
	or e                                             ; $79c3: $b3
	ld bc, $06d4                                     ; $79c4: $01 $d4 $06
	ret nz                                           ; $79c7: $c0

	ld bc, $05a0                                     ; $79c8: $01 $a0 $05
	ld a, [bc]                                       ; $79cb: $0a
	cp b                                             ; $79cc: $b8
	pop hl                                           ; $79cd: $e1
	ld [bc], a                                       ; $79ce: $02
	inc bc                                           ; $79cf: $03
	add $e4                                          ; $79d0: $c6 $e4
	ld bc, $28cd                                     ; $79d2: $01 $cd $28
	ld b, $c0                                        ; $79d5: $06 $c0
	ld bc, $05a0                                     ; $79d7: $01 $a0 $05
	ld a, [bc]                                       ; $79da: $0a
	cp l                                             ; $79db: $bd
	sub b                                            ; $79dc: $90
	ld a, [bc]                                       ; $79dd: $0a
	add $09                                          ; $79de: $c6 $09
	inc l                                            ; $79e0: $2c
	pop hl                                           ; $79e1: $e1
	ld [bc], a                                       ; $79e2: $02
	inc bc                                           ; $79e3: $03
	inc de                                           ; $79e4: $13
	add d                                            ; $79e5: $82
	ret nz                                           ; $79e6: $c0

	dec de                                           ; $79e7: $1b
	db $d3                                           ; $79e8: $d3
	ld [bc], a                                       ; $79e9: $02
	ret nc                                           ; $79ea: $d0

	pop de                                           ; $79eb: $d1
	ld b, $c0                                        ; $79ec: $06 $c0
	ld bc, $05a0                                     ; $79ee: $01 $a0 $05
	ld a, [bc]                                       ; $79f1: $0a
	ret z                                            ; $79f2: $c8

	ld [bc], a                                       ; $79f3: $02
	jp nc, $06d3                                     ; $79f4: $d2 $d3 $06

	ret nz                                           ; $79f7: $c0

	ld bc, $05a0                                     ; $79f8: $01 $a0 $05
	ld a, [bc]                                       ; $79fb: $0a
	jp nc, $d401                                     ; $79fc: $d2 $01 $d4

	ld b, $c0                                        ; $79ff: $06 $c0
	ld bc, $05a0                                     ; $7a01: $01 $a0 $05
	ld a, [bc]                                       ; $7a04: $0a
	db $db                                           ; $7a05: $db
	pop hl                                           ; $7a06: $e1
	ld [bc], a                                       ; $7a07: $02
	inc bc                                           ; $7a08: $03
	cp l                                             ; $7a09: $bd
	db $e4                                           ; $7a0a: $e4
	ld bc, $0a94                                     ; $7a0b: $01 $94 $0a
	pop hl                                           ; $7a0e: $e1
	add hl, bc                                       ; $7a0f: $09
	inc l                                            ; $7a10: $2c
	pop hl                                           ; $7a11: $e1
	ld [bc], a                                       ; $7a12: $02
	inc bc                                           ; $7a13: $03
	dec de                                           ; $7a14: $1b
	add d                                            ; $7a15: $82
	ret nz                                           ; $7a16: $c0

	dec de                                           ; $7a17: $1b
	db $d3                                           ; $7a18: $d3
	ld [bc], a                                       ; $7a19: $02
	ret nc                                           ; $7a1a: $d0

	pop de                                           ; $7a1b: $d1
	ld b, $c0                                        ; $7a1c: $06 $c0
	ld bc, $05a0                                     ; $7a1e: $01 $a0 $05
	ld a, [bc]                                       ; $7a21: $0a
	db $e3                                           ; $7a22: $e3
	ld [bc], a                                       ; $7a23: $02
	jp nc, $06d3                                     ; $7a24: $d2 $d3 $06

	ret nz                                           ; $7a27: $c0

	ld bc, $05a0                                     ; $7a28: $01 $a0 $05
	ld a, [bc]                                       ; $7a2b: $0a
	db $eb                                           ; $7a2c: $eb
	ld bc, $06d4                                     ; $7a2d: $01 $d4 $06
	ret nz                                           ; $7a30: $c0

	ld bc, $05a0                                     ; $7a31: $01 $a0 $05
	ld a, [bc]                                       ; $7a34: $0a
	db $f4                                           ; $7a35: $f4
	pop hl                                           ; $7a36: $e1
	ld [bc], a                                       ; $7a37: $02
	inc bc                                           ; $7a38: $03
	rst GetHLinHL                                          ; $7a39: $cf
	db $e4                                           ; $7a3a: $e4
	ld bc, $0a64                                     ; $7a3b: $01 $64 $0a
	db $fc                                           ; $7a3e: $fc
	add hl, bc                                       ; $7a3f: $09
	inc l                                            ; $7a40: $2c
	pop hl                                           ; $7a41: $e1
	ld [bc], a                                       ; $7a42: $02
	inc bc                                           ; $7a43: $03
	rla                                              ; $7a44: $17
	add d                                            ; $7a45: $82
	ret nz                                           ; $7a46: $c0

	dec de                                           ; $7a47: $1b
	db $d3                                           ; $7a48: $d3
	ld [bc], a                                       ; $7a49: $02
	ret nc                                           ; $7a4a: $d0

	pop de                                           ; $7a4b: $d1
	ld b, $c0                                        ; $7a4c: $06 $c0
	ld bc, $05a0                                     ; $7a4e: $01 $a0 $05
	ld a, [bc]                                       ; $7a51: $0a
	cp $02                                           ; $7a52: $fe $02
	jp nc, $06d3                                     ; $7a54: $d2 $d3 $06

	ret nz                                           ; $7a57: $c0

	ld bc, $05a0                                     ; $7a58: $01 $a0 $05
	dec bc                                           ; $7a5b: $0b
	dec c                                            ; $7a5c: $0d
	ld bc, $06d4                                     ; $7a5d: $01 $d4 $06
	ret nz                                           ; $7a60: $c0

	ld bc, $05a0                                     ; $7a61: $01 $a0 $05
	dec bc                                           ; $7a64: $0b
	inc de                                           ; $7a65: $13
	pop hl                                           ; $7a66: $e1
	ld [bc], a                                       ; $7a67: $02
	inc bc                                           ; $7a68: $03
	add $e4                                          ; $7a69: $c6 $e4
	ld bc, $2834                                     ; $7a6b: $01 $34 $28
	ld b, $c0                                        ; $7a6e: $06 $c0
	ld bc, $05a0                                     ; $7a70: $01 $a0 $05
	dec bc                                           ; $7a73: $0b
	ld a, [de]                                       ; $7a74: $1a
	sub b                                            ; $7a75: $90
	dec bc                                           ; $7a76: $0b
	daa                                              ; $7a77: $27
	add hl, bc                                       ; $7a78: $09
	inc l                                            ; $7a79: $2c
	pop hl                                           ; $7a7a: $e1
	ld [bc], a                                       ; $7a7b: $02
	inc bc                                           ; $7a7c: $03
	inc de                                           ; $7a7d: $13
	add d                                            ; $7a7e: $82
	ret nz                                           ; $7a7f: $c0

	dec de                                           ; $7a80: $1b
	db $d3                                           ; $7a81: $d3
	ld [bc], a                                       ; $7a82: $02
	ret nc                                           ; $7a83: $d0

	pop de                                           ; $7a84: $d1
	ld b, $c0                                        ; $7a85: $06 $c0
	ld bc, $05a0                                     ; $7a87: $01 $a0 $05
	dec bc                                           ; $7a8a: $0b
	add hl, hl                                       ; $7a8b: $29
	ld [bc], a                                       ; $7a8c: $02
	jp nc, $06d3                                     ; $7a8d: $d2 $d3 $06

	ret nz                                           ; $7a90: $c0

	ld bc, $05a0                                     ; $7a91: $01 $a0 $05
	dec bc                                           ; $7a94: $0b
	jr nc, @+$03                                     ; $7a95: $30 $01

	call nc, $c006                                   ; $7a97: $d4 $06 $c0
	ld bc, $05a0                                     ; $7a9a: $01 $a0 $05
	dec bc                                           ; $7a9d: $0b
	add hl, sp                                       ; $7a9e: $39
	pop hl                                           ; $7a9f: $e1
	ld [bc], a                                       ; $7aa0: $02
	inc bc                                           ; $7aa1: $03
	cp l                                             ; $7aa2: $bd
	db $e4                                           ; $7aa3: $e4
	nop                                              ; $7aa4: $00
	ei                                               ; $7aa5: $fb
	dec bc                                           ; $7aa6: $0b
	ccf                                              ; $7aa7: $3f
	add hl, bc                                       ; $7aa8: $09
	inc l                                            ; $7aa9: $2c
	pop hl                                           ; $7aaa: $e1
	ld [bc], a                                       ; $7aab: $02
	inc bc                                           ; $7aac: $03
	rra                                              ; $7aad: $1f
	add d                                            ; $7aae: $82
	ret nz                                           ; $7aaf: $c0

	dec de                                           ; $7ab0: $1b
	db $d3                                           ; $7ab1: $d3
	ld [bc], a                                       ; $7ab2: $02
	ret nc                                           ; $7ab3: $d0

	pop de                                           ; $7ab4: $d1
	ld b, $c0                                        ; $7ab5: $06 $c0
	ld bc, $05a0                                     ; $7ab7: $01 $a0 $05
	dec bc                                           ; $7aba: $0b
	ld b, h                                          ; $7abb: $44
	ld [bc], a                                       ; $7abc: $02
	jp nc, $06d3                                     ; $7abd: $d2 $d3 $06

	ret nz                                           ; $7ac0: $c0

	ld bc, $05a0                                     ; $7ac1: $01 $a0 $05
	dec bc                                           ; $7ac4: $0b
	ld c, e                                          ; $7ac5: $4b
	ld bc, $06d4                                     ; $7ac6: $01 $d4 $06
	ret nz                                           ; $7ac9: $c0

	ld bc, $05a0                                     ; $7aca: $01 $a0 $05
	dec bc                                           ; $7acd: $0b
	ld d, h                                          ; $7ace: $54
	pop hl                                           ; $7acf: $e1
	ld [bc], a                                       ; $7ad0: $02
	inc bc                                           ; $7ad1: $03
	ret c                                            ; $7ad2: $d8

	db $e4                                           ; $7ad3: $e4
	nop                                              ; $7ad4: $00
	rrc e                                            ; $7ad5: $cb $0b
	ld e, d                                          ; $7ad7: $5a
	add hl, bc                                       ; $7ad8: $09
	inc l                                            ; $7ad9: $2c
	pop hl                                           ; $7ada: $e1
	ld [bc], a                                       ; $7adb: $02
	inc bc                                           ; $7adc: $03
	rla                                              ; $7add: $17
	add d                                            ; $7ade: $82
	ret nz                                           ; $7adf: $c0

	dec de                                           ; $7ae0: $1b
	db $d3                                           ; $7ae1: $d3
	ld [bc], a                                       ; $7ae2: $02
	ret nc                                           ; $7ae3: $d0

	pop de                                           ; $7ae4: $d1
	ld b, $c0                                        ; $7ae5: $06 $c0
	ld bc, $05a0                                     ; $7ae7: $01 $a0 $05
	dec bc                                           ; $7aea: $0b
	ld e, h                                          ; $7aeb: $5c
	ld [bc], a                                       ; $7aec: $02
	jp nc, $06d3                                     ; $7aed: $d2 $d3 $06

	ret nz                                           ; $7af0: $c0

	ld bc, $05a0                                     ; $7af1: $01 $a0 $05
	dec bc                                           ; $7af4: $0b
	ld h, h                                          ; $7af5: $64
	ld bc, $06d4                                     ; $7af6: $01 $d4 $06
	ret nz                                           ; $7af9: $c0

	ld bc, $05a0                                     ; $7afa: $01 $a0 $05
	dec bc                                           ; $7afd: $0b
	ld l, b                                          ; $7afe: $68
	pop hl                                           ; $7aff: $e1
	ld [bc], a                                       ; $7b00: $02
	inc bc                                           ; $7b01: $03
	add $e4                                          ; $7b02: $c6 $e4
	nop                                              ; $7b04: $00
	sbc e                                            ; $7b05: $9b
	jr z, jr_07f_7b0e                                ; $7b06: $28 $06

	ret nz                                           ; $7b08: $c0

	ld bc, $05a0                                     ; $7b09: $01 $a0 $05
	dec bc                                           ; $7b0c: $0b
	ld l, [hl]                                       ; $7b0d: $6e

jr_07f_7b0e:
	sub b                                            ; $7b0e: $90
	dec bc                                           ; $7b0f: $0b
	ld a, d                                          ; $7b10: $7a
	add hl, bc                                       ; $7b11: $09
	inc l                                            ; $7b12: $2c
	pop hl                                           ; $7b13: $e1
	ld [bc], a                                       ; $7b14: $02
	inc bc                                           ; $7b15: $03
	inc de                                           ; $7b16: $13
	add d                                            ; $7b17: $82
	ret nz                                           ; $7b18: $c0

	dec de                                           ; $7b19: $1b
	db $d3                                           ; $7b1a: $d3
	ld [bc], a                                       ; $7b1b: $02
	ret nc                                           ; $7b1c: $d0

	pop de                                           ; $7b1d: $d1
	ld b, $c0                                        ; $7b1e: $06 $c0
	ld bc, $05a0                                     ; $7b20: $01 $a0 $05
	dec bc                                           ; $7b23: $0b
	ld a, h                                          ; $7b24: $7c
	ld [bc], a                                       ; $7b25: $02
	jp nc, $06d3                                     ; $7b26: $d2 $d3 $06

	ret nz                                           ; $7b29: $c0

	ld bc, $05a0                                     ; $7b2a: $01 $a0 $05
	dec bc                                           ; $7b2d: $0b
	add h                                            ; $7b2e: $84
	ld bc, $06d4                                     ; $7b2f: $01 $d4 $06
	ret nz                                           ; $7b32: $c0

	ld bc, $05a0                                     ; $7b33: $01 $a0 $05
	dec bc                                           ; $7b36: $0b
	add a                                            ; $7b37: $87
	pop hl                                           ; $7b38: $e1
	ld [bc], a                                       ; $7b39: $02
	inc bc                                           ; $7b3a: $03
	cp l                                             ; $7b3b: $bd
	db $e4                                           ; $7b3c: $e4
	nop                                              ; $7b3d: $00
	ld h, d                                          ; $7b3e: $62
	dec bc                                           ; $7b3f: $0b
	adc d                                            ; $7b40: $8a
	add hl, bc                                       ; $7b41: $09
	inc l                                            ; $7b42: $2c
	pop hl                                           ; $7b43: $e1
	ld [bc], a                                       ; $7b44: $02
	inc bc                                           ; $7b45: $03
	dec de                                           ; $7b46: $1b
	add d                                            ; $7b47: $82
	ret nz                                           ; $7b48: $c0

	dec de                                           ; $7b49: $1b
	db $d3                                           ; $7b4a: $d3
	ld [bc], a                                       ; $7b4b: $02
	ret nc                                           ; $7b4c: $d0

	pop de                                           ; $7b4d: $d1
	ld b, $c0                                        ; $7b4e: $06 $c0
	ld bc, $05a0                                     ; $7b50: $01 $a0 $05
	dec bc                                           ; $7b53: $0b
	adc a                                            ; $7b54: $8f
	ld [bc], a                                       ; $7b55: $02
	jp nc, $06d3                                     ; $7b56: $d2 $d3 $06

	ret nz                                           ; $7b59: $c0

	ld bc, $05a0                                     ; $7b5a: $01 $a0 $05
	dec bc                                           ; $7b5d: $0b
	sub [hl]                                         ; $7b5e: $96
	ld bc, $06d4                                     ; $7b5f: $01 $d4 $06
	ret nz                                           ; $7b62: $c0

	ld bc, $05a0                                     ; $7b63: $01 $a0 $05
	dec bc                                           ; $7b66: $0b
	sbc a                                            ; $7b67: $9f
	pop hl                                           ; $7b68: $e1
	ld [bc], a                                       ; $7b69: $02
	inc bc                                           ; $7b6a: $03
	rst GetHLinHL                                          ; $7b6b: $cf
	db $e4                                           ; $7b6c: $e4
	nop                                              ; $7b6d: $00
	ld [hl-], a                                      ; $7b6e: $32
	dec bc                                           ; $7b6f: $0b
	and h                                            ; $7b70: $a4
	add hl, bc                                       ; $7b71: $09
	inc l                                            ; $7b72: $2c
	pop hl                                           ; $7b73: $e1
	ld [bc], a                                       ; $7b74: $02
	inc bc                                           ; $7b75: $03
	rla                                              ; $7b76: $17
	add d                                            ; $7b77: $82
	ret nz                                           ; $7b78: $c0

	dec de                                           ; $7b79: $1b
	db $d3                                           ; $7b7a: $d3
	ld [bc], a                                       ; $7b7b: $02
	ret nc                                           ; $7b7c: $d0

	pop de                                           ; $7b7d: $d1
	ld b, $c0                                        ; $7b7e: $06 $c0
	ld bc, $05a0                                     ; $7b80: $01 $a0 $05
	dec bc                                           ; $7b83: $0b
	and [hl]                                         ; $7b84: $a6
	ld [bc], a                                       ; $7b85: $02
	jp nc, $06d3                                     ; $7b86: $d2 $d3 $06

	ret nz                                           ; $7b89: $c0

	ld bc, $05a0                                     ; $7b8a: $01 $a0 $05
	dec bc                                           ; $7b8d: $0b
	xor e                                            ; $7b8e: $ab
	ld bc, $06d4                                     ; $7b8f: $01 $d4 $06
	ret nz                                           ; $7b92: $c0

	ld bc, $05a0                                     ; $7b93: $01 $a0 $05
	dec bc                                           ; $7b96: $0b
	xor a                                            ; $7b97: $af
	pop hl                                           ; $7b98: $e1
	ld [bc], a                                       ; $7b99: $02
	inc bc                                           ; $7b9a: $03
	add $e4                                          ; $7b9b: $c6 $e4
	nop                                              ; $7b9d: $00
	ld [bc], a                                       ; $7b9e: $02
	add hl, bc                                       ; $7b9f: $09
	rra                                              ; $7ba0: $1f
	pop bc                                           ; $7ba1: $c1
	ld e, c                                          ; $7ba2: $59
	db $e3                                           ; $7ba3: $e3
	nop                                              ; $7ba4: $00
	sub a                                            ; $7ba5: $97
	add c                                            ; $7ba6: $81
	adc e                                            ; $7ba7: $8b
	and b                                            ; $7ba8: $a0
	ld e, $02                                        ; $7ba9: $1e $02
	or b                                             ; $7bab: $b0
	ld a, b                                          ; $7bac: $78
	dec b                                            ; $7bad: $05
	ret nz                                           ; $7bae: $c0

	ld d, [hl]                                       ; $7baf: $56
	db $d3                                           ; $7bb0: $d3
	reti                                             ; $7bb1: $d9


	pop de                                           ; $7bb2: $d1
	ld [bc], a                                       ; $7bb3: $02
	or b                                             ; $7bb4: $b0
	ld a, c                                          ; $7bb5: $79
	dec b                                            ; $7bb6: $05
	ret nz                                           ; $7bb7: $c0

	ld d, [hl]                                       ; $7bb8: $56
	db $d3                                           ; $7bb9: $d3
	reti                                             ; $7bba: $d9


	jp nc, $1fe5                                     ; $7bbb: $d2 $e5 $1f

	nop                                              ; $7bbe: $00
	nop                                              ; $7bbf: $00
	halt                                             ; $7bc0: $76
	dec b                                            ; $7bc1: $05
	add hl, bc                                       ; $7bc2: $09
	jr z, @-$2e                                      ; $7bc3: $28 $d0

	add e                                            ; $7bc5: $83
	ld bc, $d0de                                     ; $7bc6: $01 $de $d0
	ret nz                                           ; $7bc9: $c0

	ld bc, $05a0                                     ; $7bca: $01 $a0 $05
	nop                                              ; $7bcd: $00
	ld bc, $01c0                                     ; $7bce: $01 $c0 $01
	and b                                            ; $7bd1: $a0
	ld bc, $0800                                     ; $7bd2: $01 $00 $08
	pop bc                                           ; $7bd5: $c1
	ld e, c                                          ; $7bd6: $59
	db $e3                                           ; $7bd7: $e3
	nop                                              ; $7bd8: $00
	cp l                                             ; $7bd9: $bd
	and b                                            ; $7bda: $a0
	add b                                            ; $7bdb: $80
	and b                                            ; $7bdc: $a0
	nop                                              ; $7bdd: $00
	nop                                              ; $7bde: $00
	inc bc                                           ; $7bdf: $03
	db $e4                                           ; $7be0: $e4
	nop                                              ; $7be1: $00
	dec bc                                           ; $7be2: $0b
	rst $38                                          ; $7be3: $ff
	rlca                                             ; $7be4: $07
	ld b, b                                          ; $7be5: $40
	add b                                            ; $7be6: $80
	and b                                            ; $7be7: $a0
	nop                                              ; $7be8: $00
	db $e4                                           ; $7be9: $e4
	nop                                              ; $7bea: $00
	ld c, d                                          ; $7beb: $4a
	jr z, @+$08                                      ; $7bec: $28 $06

	ret nz                                           ; $7bee: $c0

	ld bc, $05a0                                     ; $7bef: $01 $a0 $05
	nop                                              ; $7bf2: $00
	ld c, $3f                                        ; $7bf3: $0e $3f
	nop                                              ; $7bf5: $00
	add hl, de                                       ; $7bf6: $19
	add hl, bc                                       ; $7bf7: $09
	ld de, $02e1                                     ; $7bf8: $11 $e1 $02
	inc bc                                           ; $7bfb: $03
	inc de                                           ; $7bfc: $13
	ret nz                                           ; $7bfd: $c0

	ld bc, $05a0                                     ; $7bfe: $01 $a0 $05
	nop                                              ; $7c01: $00
	inc e                                            ; $7c02: $1c
	pop hl                                           ; $7c03: $e1
	ld [bc], a                                       ; $7c04: $02
	inc bc                                           ; $7c05: $03
	cp l                                             ; $7c06: $bd
	db $e4                                           ; $7c07: $e4
	nop                                              ; $7c08: $00
	ld [hl], h                                       ; $7c09: $74
	nop                                              ; $7c0a: $00
	dec h                                            ; $7c0b: $25
	add hl, bc                                       ; $7c0c: $09
	ld de, $02e1                                     ; $7c0d: $11 $e1 $02
	inc bc                                           ; $7c10: $03
	rra                                              ; $7c11: $1f
	ret nz                                           ; $7c12: $c0

	ld bc, $05a0                                     ; $7c13: $01 $a0 $05
	nop                                              ; $7c16: $00
	jr z, @-$1d                                      ; $7c17: $28 $e1

	ld [bc], a                                       ; $7c19: $02
	inc bc                                           ; $7c1a: $03
	ret c                                            ; $7c1b: $d8

	db $e4                                           ; $7c1c: $e4
	nop                                              ; $7c1d: $00
	ld e, a                                          ; $7c1e: $5f
	nop                                              ; $7c1f: $00
	ld l, $09                                        ; $7c20: $2e $09
	ld de, $02e1                                     ; $7c22: $11 $e1 $02
	inc bc                                           ; $7c25: $03
	rla                                              ; $7c26: $17
	ret nz                                           ; $7c27: $c0

	ld bc, $05a0                                     ; $7c28: $01 $a0 $05
	nop                                              ; $7c2b: $00
	jr nc, @-$1d                                     ; $7c2c: $30 $e1

	ld [bc], a                                       ; $7c2e: $02
	inc bc                                           ; $7c2f: $03
	add $e4                                          ; $7c30: $c6 $e4
	nop                                              ; $7c32: $00
	ld c, d                                          ; $7c33: $4a
	jr z, @+$08                                      ; $7c34: $28 $06

	ret nz                                           ; $7c36: $c0

	ld bc, $05a0                                     ; $7c37: $01 $a0 $05
	nop                                              ; $7c3a: $00
	ld [hl], $3f                                     ; $7c3b: $36 $3f
	nop                                              ; $7c3d: $00
	dec sp                                           ; $7c3e: $3b
	add hl, bc                                       ; $7c3f: $09
	ld de, $02e1                                     ; $7c40: $11 $e1 $02
	inc bc                                           ; $7c43: $03
	inc de                                           ; $7c44: $13
	ret nz                                           ; $7c45: $c0

	ld bc, $05a0                                     ; $7c46: $01 $a0 $05
	nop                                              ; $7c49: $00
	ccf                                              ; $7c4a: $3f
	pop hl                                           ; $7c4b: $e1
	ld [bc], a                                       ; $7c4c: $02
	inc bc                                           ; $7c4d: $03
	cp l                                             ; $7c4e: $bd
	db $e4                                           ; $7c4f: $e4
	nop                                              ; $7c50: $00
	inc l                                            ; $7c51: $2c
	nop                                              ; $7c52: $00
	ld b, [hl]                                       ; $7c53: $46
	add hl, bc                                       ; $7c54: $09
	ld de, $02e1                                     ; $7c55: $11 $e1 $02
	inc bc                                           ; $7c58: $03
	rra                                              ; $7c59: $1f
	ret nz                                           ; $7c5a: $c0

	ld bc, $05a0                                     ; $7c5b: $01 $a0 $05
	nop                                              ; $7c5e: $00

jr_07f_7c5f:
	ld c, b                                          ; $7c5f: $48
	pop hl                                           ; $7c60: $e1
	ld [bc], a                                       ; $7c61: $02
	inc bc                                           ; $7c62: $03
	ret c                                            ; $7c63: $d8

	db $e4                                           ; $7c64: $e4
	nop                                              ; $7c65: $00
	rla                                              ; $7c66: $17
	nop                                              ; $7c67: $00
	ld c, [hl]                                       ; $7c68: $4e
	add hl, bc                                       ; $7c69: $09
	ld de, $02e1                                     ; $7c6a: $11 $e1 $02
	inc bc                                           ; $7c6d: $03
	rla                                              ; $7c6e: $17
	ret nz                                           ; $7c6f: $c0

	ld bc, $05a0                                     ; $7c70: $01 $a0 $05
	nop                                              ; $7c73: $00
	ld d, b                                          ; $7c74: $50
	pop hl                                           ; $7c75: $e1
	ld [bc], a                                       ; $7c76: $02
	inc bc                                           ; $7c77: $03
	add $e4                                          ; $7c78: $c6 $e4
	nop                                              ; $7c7a: $00
	ld [bc], a                                       ; $7c7b: $02
	add hl, bc                                       ; $7c7c: $09
	ld c, $c1                                        ; $7c7d: $0e $c1
	ld e, c                                          ; $7c7f: $59
	db $e3                                           ; $7c80: $e3
	nop                                              ; $7c81: $00
	cp h                                             ; $7c82: $bc
	ret nz                                           ; $7c83: $c0

	ld d, [hl]                                       ; $7c84: $56
	db $d3                                           ; $7c85: $d3
	jp c, $e5d0                                      ; $7c86: $da $d0 $e5

	rra                                              ; $7c89: $1f
	nop                                              ; $7c8a: $00
	nop                                              ; $7c8b: $00
	add hl, bc                                       ; $7c8c: $09
	jr c, jr_07f_7c5f                                ; $7c8d: $38 $d0

	add e                                            ; $7c8f: $83
	ld bc, $d0de                                     ; $7c90: $01 $de $d0
	ret nz                                           ; $7c93: $c0

	ld bc, $05a0                                     ; $7c94: $01 $a0 $05
	nop                                              ; $7c97: $00
	ld bc, $01c0                                     ; $7c98: $01 $c0 $01
	and b                                            ; $7c9b: $a0
	ld bc, $0800                                     ; $7c9c: $01 $00 $08
	pop bc                                           ; $7c9f: $c1
	ld e, c                                          ; $7ca0: $59
	db $e3                                           ; $7ca1: $e3
	nop                                              ; $7ca2: $00
	cp e                                             ; $7ca3: $bb
	ld h, b                                          ; $7ca4: $60
	cp $08                                           ; $7ca5: $fe $08
	pop af                                           ; $7ca7: $f1
	add b                                            ; $7ca8: $80
	and b                                            ; $7ca9: $a0
	ld bc, $c0fc                                     ; $7caa: $01 $fc $c0
	ld l, d                                          ; $7cad: $6a
	ret nc                                           ; $7cae: $d0

	inc bc                                           ; $7caf: $03
	db $e4                                           ; $7cb0: $e4
	nop                                              ; $7cb1: $00
	and l                                            ; $7cb2: $a5
	ld [de], a                                       ; $7cb3: $12
	and b                                            ; $7cb4: $a0
	add b                                            ; $7cb5: $80
	and b                                            ; $7cb6: $a0
	ld [bc], a                                       ; $7cb7: $02
	nop                                              ; $7cb8: $00
	inc bc                                           ; $7cb9: $03
	db $e4                                           ; $7cba: $e4
	nop                                              ; $7cbb: $00
	dec bc                                           ; $7cbc: $0b
	rst $38                                          ; $7cbd: $ff
	rlca                                             ; $7cbe: $07
	ld b, b                                          ; $7cbf: $40
	add b                                            ; $7cc0: $80
	and b                                            ; $7cc1: $a0
	ld [bc], a                                       ; $7cc2: $02
	db $e4                                           ; $7cc3: $e4
	nop                                              ; $7cc4: $00
	ld c, d                                          ; $7cc5: $4a
	jr z, jr_07f_7cce                                ; $7cc6: $28 $06

	ret nz                                           ; $7cc8: $c0

	ld bc, $05a0                                     ; $7cc9: $01 $a0 $05
	nop                                              ; $7ccc: $00
	ld d, l                                          ; $7ccd: $55

jr_07f_7cce:
	ccf                                              ; $7cce: $3f
	nop                                              ; $7ccf: $00
	ld e, d                                          ; $7cd0: $5a
	add hl, bc                                       ; $7cd1: $09
	ld de, $02e1                                     ; $7cd2: $11 $e1 $02
	inc bc                                           ; $7cd5: $03
	rrca                                             ; $7cd6: $0f
	ret nz                                           ; $7cd7: $c0

	ld bc, $05a0                                     ; $7cd8: $01 $a0 $05
	nop                                              ; $7cdb: $00
	ld e, h                                          ; $7cdc: $5c
	pop hl                                           ; $7cdd: $e1
	ld [bc], a                                       ; $7cde: $02
	inc bc                                           ; $7cdf: $03
	or h                                             ; $7ce0: $b4
	db $e4                                           ; $7ce1: $e4
	ld bc, $0013                                     ; $7ce2: $01 $13 $00
	ld h, l                                          ; $7ce5: $65
	add hl, bc                                       ; $7ce6: $09
	ld de, $02e1                                     ; $7ce7: $11 $e1 $02
	inc bc                                           ; $7cea: $03
	dec de                                           ; $7ceb: $1b
	ret nz                                           ; $7cec: $c0

	ld bc, $05a0                                     ; $7ced: $01 $a0 $05
	nop                                              ; $7cf0: $00
	ld l, l                                          ; $7cf1: $6d
	pop hl                                           ; $7cf2: $e1
	ld [bc], a                                       ; $7cf3: $02
	inc bc                                           ; $7cf4: $03
	rst GetHLinHL                                          ; $7cf5: $cf
	db $e4                                           ; $7cf6: $e4
	nop                                              ; $7cf7: $00
	cp $00                                           ; $7cf8: $fe $00
	ld [hl], a                                       ; $7cfa: $77
	add hl, bc                                       ; $7cfb: $09
	ld de, $02e1                                     ; $7cfc: $11 $e1 $02
	inc bc                                           ; $7cff: $03
	dec de                                           ; $7d00: $1b
	ret nz                                           ; $7d01: $c0

	ld bc, $05a0                                     ; $7d02: $01 $a0 $05
	nop                                              ; $7d05: $00
	ld a, c                                          ; $7d06: $79
	pop hl                                           ; $7d07: $e1
	ld [bc], a                                       ; $7d08: $02
	inc bc                                           ; $7d09: $03
	rst GetHLinHL                                          ; $7d0a: $cf
	db $e4                                           ; $7d0b: $e4
	nop                                              ; $7d0c: $00
	jp hl                                            ; $7d0d: $e9


	jr z, jr_07f_7d16                                ; $7d0e: $28 $06

	ret nz                                           ; $7d10: $c0

	ld bc, $05a0                                     ; $7d11: $01 $a0 $05
	nop                                              ; $7d14: $00
	add [hl]                                         ; $7d15: $86

jr_07f_7d16:
	ccf                                              ; $7d16: $3f
	nop                                              ; $7d17: $00
	sub e                                            ; $7d18: $93
	add hl, bc                                       ; $7d19: $09
	ld de, $02e1                                     ; $7d1a: $11 $e1 $02
	inc bc                                           ; $7d1d: $03
	inc de                                           ; $7d1e: $13
	ret nz                                           ; $7d1f: $c0

	ld bc, $05a0                                     ; $7d20: $01 $a0 $05
	nop                                              ; $7d23: $00
	sub a                                            ; $7d24: $97
	pop hl                                           ; $7d25: $e1
	ld [bc], a                                       ; $7d26: $02
	inc bc                                           ; $7d27: $03
	cp l                                             ; $7d28: $bd
	db $e4                                           ; $7d29: $e4
	nop                                              ; $7d2a: $00
	rlc b                                            ; $7d2b: $cb $00
	and e                                            ; $7d2d: $a3
	add hl, bc                                       ; $7d2e: $09
	ld de, $02e1                                     ; $7d2f: $11 $e1 $02
	inc bc                                           ; $7d32: $03
	rra                                              ; $7d33: $1f
	ret nz                                           ; $7d34: $c0

	ld bc, $05a0                                     ; $7d35: $01 $a0 $05
	nop                                              ; $7d38: $00
	xor c                                            ; $7d39: $a9
	pop hl                                           ; $7d3a: $e1
	ld [bc], a                                       ; $7d3b: $02
	inc bc                                           ; $7d3c: $03
	ret c                                            ; $7d3d: $d8

	db $e4                                           ; $7d3e: $e4
	nop                                              ; $7d3f: $00
	or [hl]                                          ; $7d40: $b6
	nop                                              ; $7d41: $00
	or e                                             ; $7d42: $b3
	add hl, bc                                       ; $7d43: $09
	ld de, $02e1                                     ; $7d44: $11 $e1 $02
	inc bc                                           ; $7d47: $03
	rla                                              ; $7d48: $17
	ret nz                                           ; $7d49: $c0

	ld bc, $05a0                                     ; $7d4a: $01 $a0 $05
	nop                                              ; $7d4d: $00
	or a                                             ; $7d4e: $b7
	pop hl                                           ; $7d4f: $e1
	ld [bc], a                                       ; $7d50: $02
	inc bc                                           ; $7d51: $03
	add $e4                                          ; $7d52: $c6 $e4
	nop                                              ; $7d54: $00
	and c                                            ; $7d55: $a1
	add hl, bc                                       ; $7d56: $09
	sbc l                                            ; $7d57: $9d
	ret nz                                           ; $7d58: $c0

	ld bc, $01a0                                     ; $7d59: $01 $a0 $01
	nop                                              ; $7d5c: $00
	cp d                                             ; $7d5d: $ba
	pop hl                                           ; $7d5e: $e1
	ld [bc], a                                       ; $7d5f: $02
	inc bc                                           ; $7d60: $03
	rla                                              ; $7d61: $17
	ret nz                                           ; $7d62: $c0

	ld bc, $05a0                                     ; $7d63: $01 $a0 $05
	nop                                              ; $7d66: $00
	pop bc                                           ; $7d67: $c1
	ret nz                                           ; $7d68: $c0

	ld bc, $01a0                                     ; $7d69: $01 $a0 $01
	nop                                              ; $7d6c: $00
	rst JumpTable                                          ; $7d6d: $c7
	pop hl                                           ; $7d6e: $e1
	ld [bc], a                                       ; $7d6f: $02
	inc bc                                           ; $7d70: $03
	dec de                                           ; $7d71: $1b
	ret nz                                           ; $7d72: $c0

	ld bc, $05a0                                     ; $7d73: $01 $a0 $05
	nop                                              ; $7d76: $00
	jp nc, $01c0                                     ; $7d77: $d2 $c0 $01

	and b                                            ; $7d7a: $a0
	ld bc, $de00                                     ; $7d7b: $01 $00 $de
	pop hl                                           ; $7d7e: $e1
	ld [bc], a                                       ; $7d7f: $02
	inc bc                                           ; $7d80: $03
	rrca                                             ; $7d81: $0f
	ret nz                                           ; $7d82: $c0

	ld bc, $05a0                                     ; $7d83: $01 $a0 $05
	nop                                              ; $7d86: $00
	db $ec                                           ; $7d87: $ec
	ret nz                                           ; $7d88: $c0

	ld bc, $01a0                                     ; $7d89: $01 $a0 $01
	nop                                              ; $7d8c: $00

jr_07f_7d8d:
	ldh a, [c]                                       ; $7d8d: $f2
	pop hl                                           ; $7d8e: $e1
	ld [bc], a                                       ; $7d8f: $02
	inc bc                                           ; $7d90: $03
	inc de                                           ; $7d91: $13
	pop bc                                           ; $7d92: $c1
	or d                                             ; $7d93: $b2
	db $e3                                           ; $7d94: $e3
	nop                                              ; $7d95: $00
	ld b, l                                          ; $7d96: $45
	ret nz                                           ; $7d97: $c0

	ld bc, $05a0                                     ; $7d98: $01 $a0 $05
	ld bc, $c000                                     ; $7d9b: $01 $00 $c0
	ld bc, $01a0                                     ; $7d9e: $01 $a0 $01
	ld bc, wPtrToDataCopyStruct                                     ; $7da1: $01 $08 $c1
	dec sp                                           ; $7da4: $3b
	ret nz                                           ; $7da5: $c0

	set 0, c                                         ; $7da6: $cb $c1
	ld e, e                                          ; $7da8: $5b
	ret nz                                           ; $7da9: $c0

	add hl, bc                                       ; $7daa: $09
	db $e3                                           ; $7dab: $e3
	nop                                              ; $7dac: $00
	ld [$0fc0], sp                                   ; $7dad: $08 $c0 $0f
	db $e3                                           ; $7db0: $e3
	nop                                              ; $7db1: $00
	db $f4                                           ; $7db2: $f4
	ret nz                                           ; $7db3: $c0

	inc c                                            ; $7db4: $0c
	ldh [$50], a                                     ; $7db5: $e0 $50
	ret nz                                           ; $7db7: $c0

	ld bc, $01a0                                     ; $7db8: $01 $a0 $01
	ld bc, $c017                                     ; $7dbb: $01 $17 $c0
	inc c                                            ; $7dbe: $0c
	ldh [$a0], a                                     ; $7dbf: $e0 $a0
	ret nz                                           ; $7dc1: $c0

	nop                                              ; $7dc2: $00
	ld bc, $c023                                     ; $7dc3: $01 $23 $c0
	set 0, b                                         ; $7dc6: $cb $c0
	add hl, bc                                       ; $7dc8: $09
	db $e3                                           ; $7dc9: $e3
	nop                                              ; $7dca: $00
	jr nc, jr_07f_7d8d                               ; $7dcb: $30 $c0

	ld de, $00e3                                     ; $7dcd: $11 $e3 $00
	cp e                                             ; $7dd0: $bb
	pop bc                                           ; $7dd1: $c1
	ld e, h                                          ; $7dd2: $5c
	ret nz                                           ; $7dd3: $c0

	jp z, $01c0                                      ; $7dd4: $ca $c0 $01

	and b                                            ; $7dd7: $a0
	dec b                                            ; $7dd8: $05
	ld bc, $c029                                     ; $7dd9: $01 $29 $c0
	ld bc, $01a0                                     ; $7ddc: $01 $a0 $01
	ld bc, $d032                                     ; $7ddf: $01 $32 $d0
	add d                                            ; $7de2: $82
	ld bc, $d1cf                                     ; $7de3: $01 $cf $d1
	pop hl                                           ; $7de6: $e1
	ld [bc], a                                       ; $7de7: $02
	inc b                                            ; $7de8: $04
	rst JumpTable                                          ; $7de9: $c7
	nop                                              ; $7dea: $00
	add b                                            ; $7deb: $80
	and b                                            ; $7dec: $a0
	ld bc, $6bc1                                     ; $7ded: $01 $c1 $6b
	call nc, $e4d3                                   ; $7df0: $d4 $d3 $e4
	nop                                              ; $7df3: $00
	ld [bc], a                                       ; $7df4: $02
	add hl, bc                                       ; $7df5: $09
	ld c, $c1                                        ; $7df6: $0e $c1
	ld e, c                                          ; $7df8: $59
	db $e3                                           ; $7df9: $e3
	nop                                              ; $7dfa: $00
	cp d                                             ; $7dfb: $ba
	ret nz                                           ; $7dfc: $c0

	ld d, [hl]                                       ; $7dfd: $56
	db $d3                                           ; $7dfe: $d3
	db $db                                           ; $7dff: $db
	ret nc                                           ; $7e00: $d0

	push hl                                          ; $7e01: $e5
	rra                                              ; $7e02: $1f
	nop                                              ; $7e03: $00
	nop                                              ; $7e04: $00
	add hl, bc                                       ; $7e05: $09
	rrca                                             ; $7e06: $0f
	ret nz                                           ; $7e07: $c0

	ld bc, $05a0                                     ; $7e08: $01 $a0 $05
	nop                                              ; $7e0b: $00
	ld bc, $01c0                                     ; $7e0c: $01 $c0 $01
	and b                                            ; $7e0f: $a0
	ld bc, $4201                                     ; $7e10: $01 $01 $42
	db $e4                                           ; $7e13: $e4
	nop                                              ; $7e14: $00
	ld [bc], a                                       ; $7e15: $02
	inc l                                            ; $7e16: $2c
	dec b                                            ; $7e17: $05
	pop bc                                           ; $7e18: $c1
	ld e, c                                          ; $7e19: $59
	db $e3                                           ; $7e1a: $e3
	nop                                              ; $7e1b: $00
	adc d                                            ; $7e1c: $8a
	ld c, d                                          ; $7e1d: $4a
	cp $08                                           ; $7e1e: $fe $08
	db $fc                                           ; $7e20: $fc
	ret nz                                           ; $7e21: $c0

	ld h, a                                          ; $7e22: $67
	ret nc                                           ; $7e23: $d0

	db $fc                                           ; $7e24: $fc
	ret nz                                           ; $7e25: $c0

	ld l, c                                          ; $7e26: $69
	pop de                                           ; $7e27: $d1
	jr z, @+$08                                      ; $7e28: $28 $06

	ret nz                                           ; $7e2a: $c0

	ld bc, $01a0                                     ; $7e2b: $01 $a0 $01
	ld bc, $3345                                     ; $7e2e: $01 $45 $33
	ld bc, $284b                                     ; $7e31: $01 $4b $28
	inc c                                            ; $7e34: $0c
	ret nz                                           ; $7e35: $c0

	ld bc, $01a0                                     ; $7e36: $01 $a0 $01
	ld bc, $c04e                                     ; $7e39: $01 $4e $c0
	ld bc, $05a0                                     ; $7e3c: $01 $a0 $05
	ld bc, $1d54                                     ; $7e3f: $01 $54 $1d
	ld bc, $0962                                     ; $7e42: $01 $62 $09
	inc d                                            ; $7e45: $14
	ret nz                                           ; $7e46: $c0

	ld bc, $05a0                                     ; $7e47: $01 $a0 $05
	ld bc, $d064                                     ; $7e4a: $01 $64 $d0
	adc e                                            ; $7e4d: $8b
	and b                                            ; $7e4e: $a0
	inc bc                                           ; $7e4f: $03
	or b                                             ; $7e50: $b0
	ld a, d                                          ; $7e51: $7a
	ret nc                                           ; $7e52: $d0

	add e                                            ; $7e53: $83
	ld bc, $d7de                                     ; $7e54: $01 $de $d7
	db $e4                                           ; $7e57: $e4
	inc b                                            ; $7e58: $04
	ld c, $01                                        ; $7e59: $0e $01
	ld l, d                                          ; $7e5b: $6a
	nop                                              ; $7e5c: $00
	nop                                              ; $7e5d: $00
	dec bc                                           ; $7e5e: $0b
	ld bc, $006c                                     ; $7e5f: $01 $6c $00
	nop                                              ; $7e62: $00
	ld b, $d1                                        ; $7e63: $06 $d1
	nop                                              ; $7e65: $00
	nop                                              ; $7e66: $00
	ld [bc], a                                       ; $7e67: $02
	jr z, @+$08                                      ; $7e68: $28 $06

	ret nz                                           ; $7e6a: $c0

	ld bc, $05a0                                     ; $7e6b: $01 $a0 $05
	ld bc, $706e                                     ; $7e6e: $01 $6e $70
	ei                                               ; $7e71: $fb
	add b                                            ; $7e72: $80
	ld [bc], a                                       ; $7e73: $02
	ld d, e                                          ; $7e74: $53
	ld [de], a                                       ; $7e75: $12
	ld bc, $0974                                     ; $7e76: $01 $74 $09
	ld c, $d0                                        ; $7e79: $0e $d0
	add e                                            ; $7e7b: $83
	ld bc, $d4de                                     ; $7e7c: $01 $de $d4
	ret nc                                           ; $7e7f: $d0

	adc e                                            ; $7e80: $8b
	and b                                            ; $7e81: $a0
	inc bc                                           ; $7e82: $03
	or b                                             ; $7e83: $b0
	ld a, e                                          ; $7e84: $7b
	db $e4                                           ; $7e85: $e4
	ld [bc], a                                       ; $7e86: $02
	ld [hl], h                                       ; $7e87: $74
	ei                                               ; $7e88: $fb
	pop af                                           ; $7e89: $f1
	add b                                            ; $7e8a: $80
	ld [bc], a                                       ; $7e8b: $02
	ld d, e                                          ; $7e8c: $53
	ld [de], a                                       ; $7e8d: $12
	ld bc, $0976                                     ; $7e8e: $01 $76 $09
	ld c, $d0                                        ; $7e91: $0e $d0
	add e                                            ; $7e93: $83
	ld bc, $d1de                                     ; $7e94: $01 $de $d1
	ret nc                                           ; $7e97: $d0

	adc e                                            ; $7e98: $8b
	and b                                            ; $7e99: $a0
	inc bc                                           ; $7e9a: $03
	or b                                             ; $7e9b: $b0
	ld a, h                                          ; $7e9c: $7c
	db $e4                                           ; $7e9d: $e4
	nop                                              ; $7e9e: $00
	ld b, e                                          ; $7e9f: $43
	ei                                               ; $7ea0: $fb
	add b                                            ; $7ea1: $80
	ld [bc], a                                       ; $7ea2: $02
	ld e, d                                          ; $7ea3: $5a
	ld [de], a                                       ; $7ea4: $12
	ld bc, $0978                                     ; $7ea5: $01 $78 $09
	ld c, $d0                                        ; $7ea8: $0e $d0
	add e                                            ; $7eaa: $83
	ld bc, $d5de                                     ; $7eab: $01 $de $d5
	ret nc                                           ; $7eae: $d0

	adc e                                            ; $7eaf: $8b
	and b                                            ; $7eb0: $a0
	inc bc                                           ; $7eb1: $03
	or b                                             ; $7eb2: $b0
	ld a, l                                          ; $7eb3: $7d
	db $e4                                           ; $7eb4: $e4
	ld [bc], a                                       ; $7eb5: $02
	cp $fb                                           ; $7eb6: $fe $fb
	pop af                                           ; $7eb8: $f1
	add b                                            ; $7eb9: $80
	ld [bc], a                                       ; $7eba: $02
	ld e, d                                          ; $7ebb: $5a
	ld [de], a                                       ; $7ebc: $12
	ld bc, $097a                                     ; $7ebd: $01 $7a $09
	ld c, $d0                                        ; $7ec0: $0e $d0
	add e                                            ; $7ec2: $83
	ld bc, $d2de                                     ; $7ec3: $01 $de $d2
	ret nc                                           ; $7ec6: $d0

	adc e                                            ; $7ec7: $8b
	and b                                            ; $7ec8: $a0
	inc bc                                           ; $7ec9: $03
	or b                                             ; $7eca: $b0
	ld a, [hl]                                       ; $7ecb: $7e
	db $e4                                           ; $7ecc: $e4
	nop                                              ; $7ecd: $00
	rst JumpTable                                          ; $7ece: $c7
	ld bc, $097c                                     ; $7ecf: $01 $7c $09
	ld c, $d0                                        ; $7ed2: $0e $d0
	add e                                            ; $7ed4: $83
	ld bc, $d3de                                     ; $7ed5: $01 $de $d3
	ret nc                                           ; $7ed8: $d0

	adc e                                            ; $7ed9: $8b
	and b                                            ; $7eda: $a0
	inc bc                                           ; $7edb: $03
	or b                                             ; $7edc: $b0
	ld a, a                                          ; $7edd: $7f
	db $e4                                           ; $7ede: $e4
	ld bc, $0968                                     ; $7edf: $01 $68 $09
	ld hl, $59c1                                     ; $7ee2: $21 $c1 $59
	db $e3                                           ; $7ee5: $e3
	nop                                              ; $7ee6: $00
	adc h                                            ; $7ee7: $8c
	ret nz                                           ; $7ee8: $c0

	ld bc, $05a0                                     ; $7ee9: $01 $a0 $05
	ld bc, $e17e                                     ; $7eec: $01 $7e $e1
	ld [bc], a                                       ; $7eef: $02
	rlca                                             ; $7ef0: $07
	call nz, $80a0                                   ; $7ef1: $c4 $a0 $80
	and b                                            ; $7ef4: $a0
	rrca                                             ; $7ef5: $0f
	nop                                              ; $7ef6: $00
	inc bc                                           ; $7ef7: $03
	db $e4                                           ; $7ef8: $e4
	nop                                              ; $7ef9: $00
	dec bc                                           ; $7efa: $0b
	rst $38                                          ; $7efb: $ff
	rlca                                             ; $7efc: $07
	ld b, b                                          ; $7efd: $40
	add b                                            ; $7efe: $80
	and b                                            ; $7eff: $a0
	rrca                                             ; $7f00: $0f
	db $e4                                           ; $7f01: $e4
	nop                                              ; $7f02: $00
	ld c, d                                          ; $7f03: $4a
	jr z, @+$08                                      ; $7f04: $28 $06

	ret nz                                           ; $7f06: $c0

	ld bc, $05a0                                     ; $7f07: $01 $a0 $05
	ld bc, $3f81                                     ; $7f0a: $01 $81 $3f
	ld bc, $098b                                     ; $7f0d: $01 $8b $09
	ld de, $02e1                                     ; $7f10: $11 $e1 $02
	inc bc                                           ; $7f13: $03
	inc de                                           ; $7f14: $13
	ret nz                                           ; $7f15: $c0

	ld bc, $05a0                                     ; $7f16: $01 $a0 $05
	ld bc, $e18d                                     ; $7f19: $01 $8d $e1
	ld [bc], a                                       ; $7f1c: $02
	inc bc                                           ; $7f1d: $03
	cp l                                             ; $7f1e: $bd
	db $e4                                           ; $7f1f: $e4
	inc bc                                           ; $7f20: $03
	xor $01                                          ; $7f21: $ee $01
	sub l                                            ; $7f23: $95
	add hl, bc                                       ; $7f24: $09
	ld de, $02e1                                     ; $7f25: $11 $e1 $02
	inc bc                                           ; $7f28: $03
	dec de                                           ; $7f29: $1b
	ret nz                                           ; $7f2a: $c0

	ld bc, $05a0                                     ; $7f2b: $01 $a0 $05
	ld bc, $e197                                     ; $7f2e: $01 $97 $e1
	ld [bc], a                                       ; $7f31: $02
	inc bc                                           ; $7f32: $03
	rst GetHLinHL                                          ; $7f33: $cf
	db $e4                                           ; $7f34: $e4
	inc bc                                           ; $7f35: $03
	reti                                             ; $7f36: $d9


	ld bc, $099f                                     ; $7f37: $01 $9f $09
	ld de, $02e1                                     ; $7f3a: $11 $e1 $02
	inc bc                                           ; $7f3d: $03
	rla                                              ; $7f3e: $17
	ret nz                                           ; $7f3f: $c0

	ld bc, $05a0                                     ; $7f40: $01 $a0 $05
	ld bc, $e1a1                                     ; $7f43: $01 $a1 $e1
	ld [bc], a                                       ; $7f46: $02
	inc bc                                           ; $7f47: $03
	add $e4                                          ; $7f48: $c6 $e4
	inc bc                                           ; $7f4a: $03
	call nz, $0628                                   ; $7f4b: $c4 $28 $06
	ret nz                                           ; $7f4e: $c0

	ld bc, $05a0                                     ; $7f4f: $01 $a0 $05
	ld bc, $3fa8                                     ; $7f52: $01 $a8 $3f
	ld bc, $09b3                                     ; $7f55: $01 $b3 $09
	ld de, $02e1                                     ; $7f58: $11 $e1 $02
	inc bc                                           ; $7f5b: $03
	inc de                                           ; $7f5c: $13
	ret nz                                           ; $7f5d: $c0

	ld bc, $05a0                                     ; $7f5e: $01 $a0 $05
	ld bc, $e1bd                                     ; $7f61: $01 $bd $e1
	ld [bc], a                                       ; $7f64: $02
	inc bc                                           ; $7f65: $03
	cp l                                             ; $7f66: $bd
	db $e4                                           ; $7f67: $e4
	inc bc                                           ; $7f68: $03
	and [hl]                                         ; $7f69: $a6
	ld bc, $09c2                                     ; $7f6a: $01 $c2 $09
	ld de, $02e1                                     ; $7f6d: $11 $e1 $02
	inc bc                                           ; $7f70: $03
	rra                                              ; $7f71: $1f
	ret nz                                           ; $7f72: $c0

	ld bc, $05a0                                     ; $7f73: $01 $a0 $05
	ld bc, $e1c5                                     ; $7f76: $01 $c5 $e1
	ld [bc], a                                       ; $7f79: $02
	inc bc                                           ; $7f7a: $03
	ret c                                            ; $7f7b: $d8

	db $e4                                           ; $7f7c: $e4
	inc bc                                           ; $7f7d: $03
	sub c                                            ; $7f7e: $91
	ld bc, $09ca                                     ; $7f7f: $01 $ca $09
	ld de, $02e1                                     ; $7f82: $11 $e1 $02
	inc bc                                           ; $7f85: $03
	rla                                              ; $7f86: $17
	ret nz                                           ; $7f87: $c0

	ld bc, $05a0                                     ; $7f88: $01 $a0 $05
	ld bc, $e1d3                                     ; $7f8b: $01 $d3 $e1
	ld [bc], a                                       ; $7f8e: $02
	inc bc                                           ; $7f8f: $03
	add $e4                                          ; $7f90: $c6 $e4
	inc bc                                           ; $7f92: $03
	ld a, h                                          ; $7f93: $7c
	add hl, bc                                       ; $7f94: $09
	ld hl, $59c1                                     ; $7f95: $21 $c1 $59
	db $e3                                           ; $7f98: $e3
	nop                                              ; $7f99: $00
	adc l                                            ; $7f9a: $8d
	ret nz                                           ; $7f9b: $c0

	ld bc, $05a0                                     ; $7f9c: $01 $a0 $05
	ld bc, $e1df                                     ; $7f9f: $01 $df $e1
	ld [bc], a                                       ; $7fa2: $02
	rlca                                             ; $7fa3: $07
	db $e3                                           ; $7fa4: $e3
	and b                                            ; $7fa5: $a0
	add b                                            ; $7fa6: $80
	and b                                            ; $7fa7: $a0
	stop                                             ; $7fa8: $10 $00
	inc bc                                           ; $7faa: $03
	db $e4                                           ; $7fab: $e4
	nop                                              ; $7fac: $00
	dec bc                                           ; $7fad: $0b
	rst $38                                          ; $7fae: $ff
	rlca                                             ; $7faf: $07
	ld b, b                                          ; $7fb0: $40
	add b                                            ; $7fb1: $80
	and b                                            ; $7fb2: $a0
	db $10                                           ; $7fb3: $10
	db $e4                                           ; $7fb4: $e4
	nop                                              ; $7fb5: $00
	ld c, d                                          ; $7fb6: $4a
	jr z, @+$08                                      ; $7fb7: $28 $06

	ret nz                                           ; $7fb9: $c0

	ld bc, $05a0                                     ; $7fba: $01 $a0 $05
	ld bc, $3fe5                                     ; $7fbd: $01 $e5 $3f
	ld bc, $09ea                                     ; $7fc0: $01 $ea $09
	ld de, $02e1                                     ; $7fc3: $11 $e1 $02
	inc bc                                           ; $7fc6: $03
	inc de                                           ; $7fc7: $13
	ret nz                                           ; $7fc8: $c0

	ld bc, $05a0                                     ; $7fc9: $01 $a0 $05
	ld bc, $e1ec                                     ; $7fcc: $01 $ec $e1
	ld [bc], a                                       ; $7fcf: $02
	inc bc                                           ; $7fd0: $03
	cp l                                             ; $7fd1: $bd
	db $e4                                           ; $7fd2: $e4
	inc bc                                           ; $7fd3: $03
	dec sp                                           ; $7fd4: $3b
	ld [bc], a                                       ; $7fd5: $02
	nop                                              ; $7fd6: $00
	add hl, bc                                       ; $7fd7: $09
	ld de, $02e1                                     ; $7fd8: $11 $e1 $02
	inc bc                                           ; $7fdb: $03
	dec de                                           ; $7fdc: $1b
	ret nz                                           ; $7fdd: $c0

	ld bc, $05a0                                     ; $7fde: $01 $a0 $05
	ld [bc], a                                       ; $7fe1: $02
	ld [bc], a                                       ; $7fe2: $02
	pop hl                                           ; $7fe3: $e1
	ld [bc], a                                       ; $7fe4: $02
	inc bc                                           ; $7fe5: $03
	rst GetHLinHL                                          ; $7fe6: $cf
	db $e4                                           ; $7fe7: $e4
	inc bc                                           ; $7fe8: $03
	ld h, $02                                        ; $7fe9: $26 $02
	dec c                                            ; $7feb: $0d
	add hl, bc                                       ; $7fec: $09
	ld de, $02e1                                     ; $7fed: $11 $e1 $02
	inc bc                                           ; $7ff0: $03
	rla                                              ; $7ff1: $17
	ret nz                                           ; $7ff2: $c0

	ld bc, $05a0                                     ; $7ff3: $01 $a0 $05
	ld [bc], a                                       ; $7ff6: $02
	rrca                                             ; $7ff7: $0f
	pop hl                                           ; $7ff8: $e1
	ld [bc], a                                       ; $7ff9: $02
	inc bc                                           ; $7ffa: $03
	add $e4                                          ; $7ffb: $c6 $e4
	inc bc                                           ; $7ffd: $03
	db $11                                           ; $7ffe: $11
	db $28                                           ; $7fff: $28
