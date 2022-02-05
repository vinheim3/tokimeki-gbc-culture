; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $07d", ROMX[$4000], BANK[$7d]

	add h                                            ; $4000: $84
	sub b                                            ; $4001: $90
	ld bc, $098e                                     ; $4002: $01 $8e $09
	inc l                                            ; $4005: $2c
	pop hl                                           ; $4006: $e1
	ld [bc], a                                       ; $4007: $02
	inc bc                                           ; $4008: $03
	rrca                                             ; $4009: $0f
	add d                                            ; $400a: $82
	ret nz                                           ; $400b: $c0

	dec de                                           ; $400c: $1b
	ret nc                                           ; $400d: $d0

	ld [bc], a                                       ; $400e: $02
	ret nc                                           ; $400f: $d0

	pop de                                           ; $4010: $d1
	ld b, $c0                                        ; $4011: $06 $c0
	ld bc, $02a0                                     ; $4013: $01 $a0 $02
	ld bc, $0290                                     ; $4016: $01 $90 $02
	jp nc, $06d3                                     ; $4019: $d2 $d3 $06

	ret nz                                           ; $401c: $c0

	ld bc, $02a0                                     ; $401d: $01 $a0 $02
	ld bc, $019e                                     ; $4020: $01 $9e $01
	call nc, $c006                                   ; $4023: $d4 $06 $c0
	ld bc, $02a0                                     ; $4026: $01 $a0 $02
	ld bc, $e1ab                                     ; $4029: $01 $ab $e1
	ld [bc], a                                       ; $402c: $02
	inc bc                                           ; $402d: $03
	dec l                                            ; $402e: $2d
	db $e4                                           ; $402f: $e4
	ld [bc], a                                       ; $4030: $02
	ld [hl], $01                                     ; $4031: $36 $01
	cp [hl]                                          ; $4033: $be
	add hl, bc                                       ; $4034: $09
	inc l                                            ; $4035: $2c
	pop hl                                           ; $4036: $e1
	ld [bc], a                                       ; $4037: $02
	inc bc                                           ; $4038: $03
	rra                                              ; $4039: $1f
	add d                                            ; $403a: $82
	ret nz                                           ; $403b: $c0

	dec de                                           ; $403c: $1b
	ret nc                                           ; $403d: $d0

	ld [bc], a                                       ; $403e: $02
	ret nc                                           ; $403f: $d0

	pop de                                           ; $4040: $d1
	ld b, $c0                                        ; $4041: $06 $c0
	ld bc, $02a0                                     ; $4043: $01 $a0 $02
	ld bc, $02c0                                     ; $4046: $01 $c0 $02
	jp nc, $06d3                                     ; $4049: $d2 $d3 $06

	ret nz                                           ; $404c: $c0

	ld bc, $02a0                                     ; $404d: $01 $a0 $02
	ld bc, $01c3                                     ; $4050: $01 $c3 $01
	call nc, $c006                                   ; $4053: $d4 $06 $c0
	ld bc, $02a0                                     ; $4056: $01 $a0 $02
	ld bc, $e1cf                                     ; $4059: $01 $cf $e1
	ld [bc], a                                       ; $405c: $02
	inc bc                                           ; $405d: $03
	ld d, c                                          ; $405e: $51
	db $e4                                           ; $405f: $e4
	ld [bc], a                                       ; $4060: $02
	ld b, $01                                        ; $4061: $06 $01
	rst SubAFromHL                                          ; $4063: $d7
	add hl, bc                                       ; $4064: $09
	inc l                                            ; $4065: $2c
	pop hl                                           ; $4066: $e1
	ld [bc], a                                       ; $4067: $02
	inc bc                                           ; $4068: $03
	rla                                              ; $4069: $17
	add d                                            ; $406a: $82
	ret nz                                           ; $406b: $c0

	dec de                                           ; $406c: $1b
	ret nc                                           ; $406d: $d0

	ld [bc], a                                       ; $406e: $02
	ret nc                                           ; $406f: $d0

	pop de                                           ; $4070: $d1
	ld b, $c0                                        ; $4071: $06 $c0
	ld bc, $02a0                                     ; $4073: $01 $a0 $02
	ld bc, $02d9                                     ; $4076: $01 $d9 $02
	jp nc, $06d3                                     ; $4079: $d2 $d3 $06

	ret nz                                           ; $407c: $c0

	ld bc, $02a0                                     ; $407d: $01 $a0 $02
	ld bc, $01e1                                     ; $4080: $01 $e1 $01
	call nc, $c006                                   ; $4083: $d4 $06 $c0
	ld bc, $02a0                                     ; $4086: $01 $a0 $02
	ld bc, $e1ec                                     ; $4089: $01 $ec $e1
	ld [bc], a                                       ; $408c: $02
	inc bc                                           ; $408d: $03
	ld [hl], $e4                                     ; $408e: $36 $e4
	ld bc, $28d6                                     ; $4090: $01 $d6 $28
	ld a, [bc]                                       ; $4093: $0a
	pop hl                                           ; $4094: $e1
	ld [bc], a                                       ; $4095: $02
	dec b                                            ; $4096: $05
	rla                                              ; $4097: $17
	ret nz                                           ; $4098: $c0

	ld bc, $02a0                                     ; $4099: $01 $a0 $02
	ld bc, $90f5                                     ; $409c: $01 $f5 $90
	ld bc, $09ff                                     ; $409f: $01 $ff $09
	inc l                                            ; $40a2: $2c
	pop hl                                           ; $40a3: $e1
	ld [bc], a                                       ; $40a4: $02
	inc bc                                           ; $40a5: $03
	inc de                                           ; $40a6: $13
	add d                                            ; $40a7: $82
	ret nz                                           ; $40a8: $c0

	dec de                                           ; $40a9: $1b
	ret nc                                           ; $40aa: $d0

	ld [bc], a                                       ; $40ab: $02
	ret nc                                           ; $40ac: $d0

	pop de                                           ; $40ad: $d1
	ld b, $c0                                        ; $40ae: $06 $c0
	ld bc, $02a0                                     ; $40b0: $01 $a0 $02
	ld [bc], a                                       ; $40b3: $02
	ld bc, $d202                                     ; $40b4: $01 $02 $d2
	db $d3                                           ; $40b7: $d3
	ld b, $c0                                        ; $40b8: $06 $c0
	ld bc, $02a0                                     ; $40ba: $01 $a0 $02
	ld [bc], a                                       ; $40bd: $02
	dec bc                                           ; $40be: $0b
	ld bc, $06d4                                     ; $40bf: $01 $d4 $06
	ret nz                                           ; $40c2: $c0

	ld bc, $02a0                                     ; $40c3: $01 $a0 $02
	ld [bc], a                                       ; $40c6: $02
	inc de                                           ; $40c7: $13
	pop hl                                           ; $40c8: $e1
	ld [bc], a                                       ; $40c9: $02
	inc bc                                           ; $40ca: $03
	ld [hl], $e4                                     ; $40cb: $36 $e4
	ld bc, $0299                                     ; $40cd: $01 $99 $02
	dec de                                           ; $40d0: $1b
	add hl, bc                                       ; $40d1: $09
	inc l                                            ; $40d2: $2c
	pop hl                                           ; $40d3: $e1
	ld [bc], a                                       ; $40d4: $02
	inc bc                                           ; $40d5: $03
	rra                                              ; $40d6: $1f
	add d                                            ; $40d7: $82
	ret nz                                           ; $40d8: $c0

	dec de                                           ; $40d9: $1b
	ret nc                                           ; $40da: $d0

	ld [bc], a                                       ; $40db: $02
	ret nc                                           ; $40dc: $d0

	pop de                                           ; $40dd: $d1
	ld b, $c0                                        ; $40de: $06 $c0
	ld bc, $02a0                                     ; $40e0: $01 $a0 $02
	ld [bc], a                                       ; $40e3: $02
	dec e                                            ; $40e4: $1d
	ld [bc], a                                       ; $40e5: $02
	jp nc, $06d3                                     ; $40e6: $d2 $d3 $06

	ret nz                                           ; $40e9: $c0

	ld bc, $02a0                                     ; $40ea: $01 $a0 $02
	ld [bc], a                                       ; $40ed: $02
	dec h                                            ; $40ee: $25
	ld bc, $06d4                                     ; $40ef: $01 $d4 $06
	ret nz                                           ; $40f2: $c0

	ld bc, $02a0                                     ; $40f3: $01 $a0 $02
	ld [bc], a                                       ; $40f6: $02
	ld l, $e1                                        ; $40f7: $2e $e1
	ld [bc], a                                       ; $40f9: $02
	inc bc                                           ; $40fa: $03
	ld d, c                                          ; $40fb: $51
	db $e4                                           ; $40fc: $e4
	ld bc, $0269                                     ; $40fd: $01 $69 $02
	ld [hl], $09                                     ; $4100: $36 $09
	inc l                                            ; $4102: $2c
	pop hl                                           ; $4103: $e1
	ld [bc], a                                       ; $4104: $02
	inc bc                                           ; $4105: $03
	rla                                              ; $4106: $17
	add d                                            ; $4107: $82
	ret nz                                           ; $4108: $c0

	dec de                                           ; $4109: $1b
	ret nc                                           ; $410a: $d0

	ld [bc], a                                       ; $410b: $02
	ret nc                                           ; $410c: $d0

	pop de                                           ; $410d: $d1
	ld b, $c0                                        ; $410e: $06 $c0
	ld bc, $02a0                                     ; $4110: $01 $a0 $02
	ld [bc], a                                       ; $4113: $02
	jr c, @+$04                                      ; $4114: $38 $02

	jp nc, $06d3                                     ; $4116: $d2 $d3 $06

	ret nz                                           ; $4119: $c0

	ld bc, $02a0                                     ; $411a: $01 $a0 $02
	ld [bc], a                                       ; $411d: $02
	ccf                                              ; $411e: $3f
	ld bc, $06d4                                     ; $411f: $01 $d4 $06
	ret nz                                           ; $4122: $c0

	ld bc, $02a0                                     ; $4123: $01 $a0 $02
	ld [bc], a                                       ; $4126: $02
	ld b, [hl]                                       ; $4127: $46
	pop hl                                           ; $4128: $e1
	ld [bc], a                                       ; $4129: $02
	inc bc                                           ; $412a: $03
	ccf                                              ; $412b: $3f
	db $e4                                           ; $412c: $e4
	ld bc, $2839                                     ; $412d: $01 $39 $28
	dec bc                                           ; $4130: $0b
	pop bc                                           ; $4131: $c1
	ld e, c                                          ; $4132: $59
	db $e3                                           ; $4133: $e3
	nop                                              ; $4134: $00
	add h                                            ; $4135: $84
	ret nz                                           ; $4136: $c0

	ld bc, $02a0                                     ; $4137: $01 $a0 $02
	ld [bc], a                                       ; $413a: $02
	ld c, h                                          ; $413b: $4c
	sub b                                            ; $413c: $90
	ld [bc], a                                       ; $413d: $02
	ld e, b                                          ; $413e: $58
	add hl, bc                                       ; $413f: $09
	inc l                                            ; $4140: $2c
	pop hl                                           ; $4141: $e1
	ld [bc], a                                       ; $4142: $02
	inc bc                                           ; $4143: $03
	rla                                              ; $4144: $17
	add d                                            ; $4145: $82
	ret nz                                           ; $4146: $c0

	dec de                                           ; $4147: $1b
	ret nc                                           ; $4148: $d0

	ld [bc], a                                       ; $4149: $02
	ret nc                                           ; $414a: $d0

	pop de                                           ; $414b: $d1
	ld b, $c0                                        ; $414c: $06 $c0
	ld bc, $02a0                                     ; $414e: $01 $a0 $02
	ld [bc], a                                       ; $4151: $02
	ld e, d                                          ; $4152: $5a
	ld [bc], a                                       ; $4153: $02
	jp nc, $06d3                                     ; $4154: $d2 $d3 $06

	ret nz                                           ; $4157: $c0

	ld bc, $02a0                                     ; $4158: $01 $a0 $02
	ld [bc], a                                       ; $415b: $02
	ld l, b                                          ; $415c: $68
	ld bc, $06d4                                     ; $415d: $01 $d4 $06
	ret nz                                           ; $4160: $c0

	ld bc, $02a0                                     ; $4161: $01 $a0 $02
	ld [bc], a                                       ; $4164: $02
	ld [hl], b                                       ; $4165: $70
	pop hl                                           ; $4166: $e1
	ld [bc], a                                       ; $4167: $02
	inc bc                                           ; $4168: $03
	ccf                                              ; $4169: $3f
	db $e4                                           ; $416a: $e4
	nop                                              ; $416b: $00
	ei                                               ; $416c: $fb
	ld [bc], a                                       ; $416d: $02
	ld a, d                                          ; $416e: $7a
	add hl, bc                                       ; $416f: $09
	inc l                                            ; $4170: $2c
	pop hl                                           ; $4171: $e1
	ld [bc], a                                       ; $4172: $02
	inc bc                                           ; $4173: $03
	rra                                              ; $4174: $1f
	add d                                            ; $4175: $82
	ret nz                                           ; $4176: $c0

	dec de                                           ; $4177: $1b
	ret nc                                           ; $4178: $d0

	ld [bc], a                                       ; $4179: $02
	ret nc                                           ; $417a: $d0

	pop de                                           ; $417b: $d1
	ld b, $c0                                        ; $417c: $06 $c0
	ld bc, $02a0                                     ; $417e: $01 $a0 $02
	ld [bc], a                                       ; $4181: $02
	ld a, h                                          ; $4182: $7c
	ld [bc], a                                       ; $4183: $02
	jp nc, $06d3                                     ; $4184: $d2 $d3 $06

	ret nz                                           ; $4187: $c0

	ld bc, $02a0                                     ; $4188: $01 $a0 $02
	ld [bc], a                                       ; $418b: $02
	add c                                            ; $418c: $81
	ld bc, $06d4                                     ; $418d: $01 $d4 $06
	ret nz                                           ; $4190: $c0

	ld bc, $02a0                                     ; $4191: $01 $a0 $02
	ld [bc], a                                       ; $4194: $02
	adc d                                            ; $4195: $8a
	pop hl                                           ; $4196: $e1
	ld [bc], a                                       ; $4197: $02
	inc bc                                           ; $4198: $03
	ld d, c                                          ; $4199: $51
	db $e4                                           ; $419a: $e4
	nop                                              ; $419b: $00
	rlc d                                            ; $419c: $cb $02
	sub [hl]                                         ; $419e: $96
	add hl, bc                                       ; $419f: $09
	inc l                                            ; $41a0: $2c
	pop hl                                           ; $41a1: $e1
	ld [bc], a                                       ; $41a2: $02
	inc bc                                           ; $41a3: $03
	dec de                                           ; $41a4: $1b
	add d                                            ; $41a5: $82
	ret nz                                           ; $41a6: $c0

	dec de                                           ; $41a7: $1b
	ret nc                                           ; $41a8: $d0

	ld [bc], a                                       ; $41a9: $02
	ret nc                                           ; $41aa: $d0

	pop de                                           ; $41ab: $d1
	ld b, $c0                                        ; $41ac: $06 $c0
	ld bc, $02a0                                     ; $41ae: $01 $a0 $02
	ld [bc], a                                       ; $41b1: $02
	sbc b                                            ; $41b2: $98
	ld [bc], a                                       ; $41b3: $02
	jp nc, $06d3                                     ; $41b4: $d2 $d3 $06

	ret nz                                           ; $41b7: $c0

	ld bc, $02a0                                     ; $41b8: $01 $a0 $02
	ld [bc], a                                       ; $41bb: $02
	sbc [hl]                                         ; $41bc: $9e
	ld bc, $06d4                                     ; $41bd: $01 $d4 $06
	ret nz                                           ; $41c0: $c0

	ld bc, $02a0                                     ; $41c1: $01 $a0 $02
	ld [bc], a                                       ; $41c4: $02
	and h                                            ; $41c5: $a4
	pop hl                                           ; $41c6: $e1
	ld [bc], a                                       ; $41c7: $02
	inc bc                                           ; $41c8: $03
	ld c, b                                          ; $41c9: $48
	db $e4                                           ; $41ca: $e4
	nop                                              ; $41cb: $00
	sbc e                                            ; $41cc: $9b
	add hl, bc                                       ; $41cd: $09
	sub a                                            ; $41ce: $97
	ret nz                                           ; $41cf: $c0

	set 0, c                                         ; $41d0: $cb $c1
	ld e, e                                          ; $41d2: $5b
	ret nz                                           ; $41d3: $c0

	rrca                                             ; $41d4: $0f
	db $e3                                           ; $41d5: $e3
	nop                                              ; $41d6: $00
	reti                                             ; $41d7: $d9


	ret nz                                           ; $41d8: $c0

	inc c                                            ; $41d9: $0c
	ldh [$5a], a                                     ; $41da: $e0 $5a
	ret nz                                           ; $41dc: $c0

	dec bc                                           ; $41dd: $0b
	db $e3                                           ; $41de: $e3
	nop                                              ; $41df: $00
	dec b                                            ; $41e0: $05
	ret nz                                           ; $41e1: $c0

	ld bc, $02a0                                     ; $41e2: $01 $a0 $02
	ld [bc], a                                       ; $41e5: $02
	xor c                                            ; $41e6: $a9
	ret nz                                           ; $41e7: $c0

	ld bc, $01a0                                     ; $41e8: $01 $a0 $01
	ld bc, $c01e                                     ; $41eb: $01 $1e $c0
	ld bc, $02a0                                     ; $41ee: $01 $a0 $02
	ld [bc], a                                       ; $41f1: $02
	or b                                             ; $41f2: $b0
	ret nz                                           ; $41f3: $c0

	ld bc, $01a0                                     ; $41f4: $01 $a0 $01
	ld [bc], a                                       ; $41f7: $02
	ret                                              ; $41f8: $c9


	ret nz                                           ; $41f9: $c0

	ld bc, $02a0                                     ; $41fa: $01 $a0 $02
	ld [bc], a                                       ; $41fd: $02
	ret nc                                           ; $41fe: $d0

	ret nz                                           ; $41ff: $c0

	ld bc, $01a0                                     ; $4200: $01 $a0 $01
	ld [bc], a                                       ; $4203: $02
	ret c                                            ; $4204: $d8

	ret nz                                           ; $4205: $c0

	ld bc, $02a0                                     ; $4206: $01 $a0 $02
	ld [bc], a                                       ; $4209: $02
	db $db                                           ; $420a: $db
	ret nz                                           ; $420b: $c0

	ld bc, $01a0                                     ; $420c: $01 $a0 $01
	ld [bc], a                                       ; $420f: $02
	ld [$01c0], a                                    ; $4210: $ea $c0 $01
	and b                                            ; $4213: $a0
	ld [bc], a                                       ; $4214: $02
	ld [bc], a                                       ; $4215: $02
	or $c0                                           ; $4216: $f6 $c0
	ld bc, $01a0                                     ; $4218: $01 $a0 $01
	ld [bc], a                                       ; $421b: $02
	db $fc                                           ; $421c: $fc
	ret nz                                           ; $421d: $c0

	ld bc, $02a0                                     ; $421e: $01 $a0 $02
	inc bc                                           ; $4221: $03
	ld e, $c0                                        ; $4222: $1e $c0
	ld bc, $01a0                                     ; $4224: $01 $a0 $01
	inc bc                                           ; $4227: $03
	daa                                              ; $4228: $27
	ret nz                                           ; $4229: $c0

	ld bc, $02a0                                     ; $422a: $01 $a0 $02
	inc bc                                           ; $422d: $03
	jr nc, @-$3e                                     ; $422e: $30 $c0

	ld bc, $01a0                                     ; $4230: $01 $a0 $01
	inc bc                                           ; $4233: $03
	ld a, [hl-]                                      ; $4234: $3a
	ret nz                                           ; $4235: $c0

	ld bc, $02a0                                     ; $4236: $01 $a0 $02
	inc bc                                           ; $4239: $03
	ld b, l                                          ; $423a: $45
	ret nz                                           ; $423b: $c0

	ld bc, $01a0                                     ; $423c: $01 $a0 $01
	inc bc                                           ; $423f: $03
	ld c, l                                          ; $4240: $4d
	ret nc                                           ; $4241: $d0

	add d                                            ; $4242: $82
	ld bc, $d1c6                                     ; $4243: $01 $c6 $d1
	pop hl                                           ; $4246: $e1
	ld [bc], a                                       ; $4247: $02
	inc b                                            ; $4248: $04
	rst JumpTable                                          ; $4249: $c7
	ret nz                                           ; $424a: $c0

	ld d, c                                          ; $424b: $51
	db $d3                                           ; $424c: $d3
	ret nz                                           ; $424d: $c0

	ld d, b                                          ; $424e: $50
	jp nc, Jump_07d_55c0                             ; $424f: $d2 $c0 $55

	ldh [rAUD1HIGH], a                               ; $4252: $e0 $14
	pop bc                                           ; $4254: $c1
	ld d, a                                          ; $4255: $57
	ret nz                                           ; $4256: $c0

	ld de, $00e3                                     ; $4257: $11 $e3 $00
	add b                                            ; $425a: $80
	pop hl                                           ; $425b: $e1
	ld [bc], a                                       ; $425c: $02
	nop                                              ; $425d: $00
	ldh [$c1], a                                     ; $425e: $e0 $c1
	ld l, e                                          ; $4260: $6b
	pop de                                           ; $4261: $d1
	ret nc                                           ; $4262: $d0

	db $e4                                           ; $4263: $e4
	nop                                              ; $4264: $00
	dec bc                                           ; $4265: $0b
	add hl, bc                                       ; $4266: $09
	rlca                                             ; $4267: $07
	pop hl                                           ; $4268: $e1
	ld [bc], a                                       ; $4269: $02
	dec b                                            ; $426a: $05
	add hl, hl                                       ; $426b: $29
	db $e4                                           ; $426c: $e4
	nop                                              ; $426d: $00
	ld [bc], a                                       ; $426e: $02
	add hl, bc                                       ; $426f: $09
	rla                                              ; $4270: $17
	add c                                            ; $4271: $81
	ret nz                                           ; $4272: $c0

	ld h, l                                          ; $4273: $65
	ld [bc], a                                       ; $4274: $02
	db $d3                                           ; $4275: $d3
	call nc, $c005                                   ; $4276: $d4 $05 $c0
	ld d, [hl]                                       ; $4279: $56
	ret nc                                           ; $427a: $d0

	pop de                                           ; $427b: $d1
	pop de                                           ; $427c: $d1
	nop                                              ; $427d: $00
	dec b                                            ; $427e: $05
	ret nz                                           ; $427f: $c0

	ld d, [hl]                                       ; $4280: $56
	ret nc                                           ; $4281: $d0

	pop de                                           ; $4282: $d1
	ret nc                                           ; $4283: $d0

	push hl                                          ; $4284: $e5
	inc de                                           ; $4285: $13
	nop                                              ; $4286: $00
	nop                                              ; $4287: $00
	jr z, jr_07d_4290                                ; $4288: $28 $06

	ret nz                                           ; $428a: $c0

	ld bc, $02a0                                     ; $428b: $01 $a0 $02
	inc bc                                           ; $428e: $03
	ld d, c                                          ; $428f: $51

jr_07d_4290:
	ld c, h                                          ; $4290: $4c
	inc bc                                           ; $4291: $03
	ld e, d                                          ; $4292: $5a
	add hl, bc                                       ; $4293: $09
	inc d                                            ; $4294: $14
	ret nz                                           ; $4295: $c0

	ld bc, $02a0                                     ; $4296: $01 $a0 $02
	inc bc                                           ; $4299: $03
	ld e, h                                          ; $429a: $5c
	ret nc                                           ; $429b: $d0

	adc e                                            ; $429c: $8b
	and b                                            ; $429d: $a0
	inc bc                                           ; $429e: $03
	or b                                             ; $429f: $b0
	ld [hl], l                                       ; $42a0: $75
	ret nc                                           ; $42a1: $d0

	add e                                            ; $42a2: $83
	ld bc, $d0de                                     ; $42a3: $01 $de $d0
	db $e4                                           ; $42a6: $e4

jr_07d_42a7:
	nop                                              ; $42a7: $00
	ld [hl], $03                                     ; $42a8: $36 $03
	ld h, b                                          ; $42aa: $60
	add hl, bc                                       ; $42ab: $09
	inc d                                            ; $42ac: $14
	ret nz                                           ; $42ad: $c0

	ld bc, $02a0                                     ; $42ae: $01 $a0 $02
	inc bc                                           ; $42b1: $03
	ld e, h                                          ; $42b2: $5c
	ret nc                                           ; $42b3: $d0

	adc e                                            ; $42b4: $8b
	and b                                            ; $42b5: $a0
	inc bc                                           ; $42b6: $03
	or b                                             ; $42b7: $b0
	halt                                             ; $42b8: $76
	ret nc                                           ; $42b9: $d0

	add e                                            ; $42ba: $83
	ld bc, $d1de                                     ; $42bb: $01 $de $d1
	db $e4                                           ; $42be: $e4
	ld bc, $03b5                                     ; $42bf: $01 $b5 $03
	ld h, d                                          ; $42c2: $62
	add hl, bc                                       ; $42c3: $09
	jr jr_07d_42a7                                   ; $42c4: $18 $e1

	ld [bc], a                                       ; $42c6: $02
	inc bc                                           ; $42c7: $03
	dec de                                           ; $42c8: $1b
	ret nz                                           ; $42c9: $c0

	ld bc, $02a0                                     ; $42ca: $01 $a0 $02
	inc bc                                           ; $42cd: $03
	ld h, h                                          ; $42ce: $64
	ret nc                                           ; $42cf: $d0

	adc e                                            ; $42d0: $8b
	and b                                            ; $42d1: $a0
	inc bc                                           ; $42d2: $03
	or b                                             ; $42d3: $b0
	ld [hl], a                                       ; $42d4: $77
	ret nc                                           ; $42d5: $d0

	add e                                            ; $42d6: $83
	ld bc, $d2de                                     ; $42d7: $01 $de $d2
	db $e4                                           ; $42da: $e4
	ld [bc], a                                       ; $42db: $02
	jp hl                                            ; $42dc: $e9


	add hl, bc                                       ; $42dd: $09
	inc e                                            ; $42de: $1c
	pop bc                                           ; $42df: $c1
	ld e, c                                          ; $42e0: $59
	db $e3                                           ; $42e1: $e3
	nop                                              ; $42e2: $00
	and b                                            ; $42e3: $a0
	ret nz                                           ; $42e4: $c0

	add hl, bc                                       ; $42e5: $09
	db $e3                                           ; $42e6: $e3
	nop                                              ; $42e7: $00
	inc e                                            ; $42e8: $1c
	and b                                            ; $42e9: $a0
	add b                                            ; $42ea: $80
	and b                                            ; $42eb: $a0
	rrca                                             ; $42ec: $0f
	nop                                              ; $42ed: $00
	inc bc                                           ; $42ee: $03
	db $e4                                           ; $42ef: $e4
	nop                                              ; $42f0: $00
	dec bc                                           ; $42f1: $0b
	rst $38                                          ; $42f2: $ff
	rlca                                             ; $42f3: $07
	ld b, b                                          ; $42f4: $40
	add b                                            ; $42f5: $80
	and b                                            ; $42f6: $a0
	rrca                                             ; $42f7: $0f
	db $e4                                           ; $42f8: $e4
	nop                                              ; $42f9: $00
	adc $28                                          ; $42fa: $ce $28
	add hl, sp                                       ; $42fc: $39
	add d                                            ; $42fd: $82
	ret nz                                           ; $42fe: $c0

	dec de                                           ; $42ff: $1b
	ret nc                                           ; $4300: $d0

	ld [bc], a                                       ; $4301: $02
	ret nc                                           ; $4302: $d0

	pop de                                           ; $4303: $d1
	ld b, $c0                                        ; $4304: $06 $c0
	ld bc, $02a0                                     ; $4306: $01 $a0 $02
	inc bc                                           ; $4309: $03
	ld l, l                                          ; $430a: $6d
	ld [bc], a                                       ; $430b: $02
	jp nc, $06d3                                     ; $430c: $d2 $d3 $06

	ret nz                                           ; $430f: $c0

	ld bc, $02a0                                     ; $4310: $01 $a0 $02
	inc bc                                           ; $4313: $03
	ld [hl], d                                       ; $4314: $72
	ld bc, $06d4                                     ; $4315: $01 $d4 $06
	ret nz                                           ; $4318: $c0

	ld bc, $02a0                                     ; $4319: $01 $a0 $02
	inc bc                                           ; $431c: $03
	halt                                             ; $431d: $76
	ret nz                                           ; $431e: $c0

	ld bc, $01a0                                     ; $431f: $01 $a0 $01
	inc bc                                           ; $4322: $03
	ld a, d                                          ; $4323: $7a
	pop bc                                           ; $4324: $c1
	ld e, e                                          ; $4325: $5b
	ret nz                                           ; $4326: $c0

	inc c                                            ; $4327: $0c
	ldh [$78], a                                     ; $4328: $e0 $78
	pop hl                                           ; $432a: $e1
	ld [bc], a                                       ; $432b: $02
	rlca                                             ; $432c: $07
	cp a                                             ; $432d: $bf
	pop bc                                           ; $432e: $c1
	ld e, h                                          ; $432f: $5c
	ret nz                                           ; $4330: $c0

	ld bc, $02a0                                     ; $4331: $01 $a0 $02
	inc bc                                           ; $4334: $03
	add e                                            ; $4335: $83
	sub b                                            ; $4336: $90
	inc bc                                           ; $4337: $03
	adc d                                            ; $4338: $8a
	add hl, bc                                       ; $4339: $09
	inc l                                            ; $433a: $2c
	pop hl                                           ; $433b: $e1
	ld [bc], a                                       ; $433c: $02
	inc bc                                           ; $433d: $03
	inc de                                           ; $433e: $13
	add d                                            ; $433f: $82
	ret nz                                           ; $4340: $c0

	dec de                                           ; $4341: $1b
	ret nc                                           ; $4342: $d0

	ld [bc], a                                       ; $4343: $02
	ret nc                                           ; $4344: $d0

	pop de                                           ; $4345: $d1
	ld b, $c0                                        ; $4346: $06 $c0
	ld bc, $02a0                                     ; $4348: $01 $a0 $02
	inc bc                                           ; $434b: $03
	adc h                                            ; $434c: $8c
	ld [bc], a                                       ; $434d: $02
	jp nc, $06d3                                     ; $434e: $d2 $d3 $06

	ret nz                                           ; $4351: $c0

	ld bc, $02a0                                     ; $4352: $01 $a0 $02
	inc bc                                           ; $4355: $03
	sub h                                            ; $4356: $94
	ld bc, $06d4                                     ; $4357: $01 $d4 $06
	ret nz                                           ; $435a: $c0

	ld bc, $02a0                                     ; $435b: $01 $a0 $02
	inc bc                                           ; $435e: $03
	sbc l                                            ; $435f: $9d
	pop hl                                           ; $4360: $e1
	ld [bc], a                                       ; $4361: $02
	inc bc                                           ; $4362: $03
	ld [hl], $e4                                     ; $4363: $36 $e4
	inc bc                                           ; $4365: $03
	or a                                             ; $4366: $b7
	inc bc                                           ; $4367: $03
	and c                                            ; $4368: $a1
	add hl, bc                                       ; $4369: $09
	inc l                                            ; $436a: $2c
	pop hl                                           ; $436b: $e1
	ld [bc], a                                       ; $436c: $02
	inc bc                                           ; $436d: $03
	dec de                                           ; $436e: $1b
	add d                                            ; $436f: $82
	ret nz                                           ; $4370: $c0

	dec de                                           ; $4371: $1b
	ret nc                                           ; $4372: $d0

	ld [bc], a                                       ; $4373: $02
	ret nc                                           ; $4374: $d0

	pop de                                           ; $4375: $d1
	ld b, $c0                                        ; $4376: $06 $c0
	ld bc, $02a0                                     ; $4378: $01 $a0 $02
	inc bc                                           ; $437b: $03
	and e                                            ; $437c: $a3
	ld [bc], a                                       ; $437d: $02
	jp nc, $06d3                                     ; $437e: $d2 $d3 $06

	ret nz                                           ; $4381: $c0

	ld bc, $02a0                                     ; $4382: $01 $a0 $02
	inc bc                                           ; $4385: $03
	xor h                                            ; $4386: $ac
	ld bc, $06d4                                     ; $4387: $01 $d4 $06
	ret nz                                           ; $438a: $c0

	ld bc, $02a0                                     ; $438b: $01 $a0 $02
	inc bc                                           ; $438e: $03
	or a                                             ; $438f: $b7
	pop hl                                           ; $4390: $e1
	ld [bc], a                                       ; $4391: $02
	inc bc                                           ; $4392: $03
	ld d, c                                          ; $4393: $51
	db $e4                                           ; $4394: $e4
	inc bc                                           ; $4395: $03
	add a                                            ; $4396: $87
	inc bc                                           ; $4397: $03
	pop bc                                           ; $4398: $c1
	add hl, bc                                       ; $4399: $09
	inc l                                            ; $439a: $2c
	pop hl                                           ; $439b: $e1
	ld [bc], a                                       ; $439c: $02
	inc bc                                           ; $439d: $03
	rla                                              ; $439e: $17
	add d                                            ; $439f: $82
	ret nz                                           ; $43a0: $c0

	dec de                                           ; $43a1: $1b
	ret nc                                           ; $43a2: $d0

	ld [bc], a                                       ; $43a3: $02
	ret nc                                           ; $43a4: $d0

	pop de                                           ; $43a5: $d1
	ld b, $c0                                        ; $43a6: $06 $c0
	ld bc, $02a0                                     ; $43a8: $01 $a0 $02
	inc bc                                           ; $43ab: $03
	jp $d202                                         ; $43ac: $c3 $02 $d2


	db $d3                                           ; $43af: $d3
	ld b, $c0                                        ; $43b0: $06 $c0
	ld bc, $02a0                                     ; $43b2: $01 $a0 $02
	inc bc                                           ; $43b5: $03
	jp z, $d401                                      ; $43b6: $ca $01 $d4

	ld b, $c0                                        ; $43b9: $06 $c0
	ld bc, $02a0                                     ; $43bb: $01 $a0 $02
	inc bc                                           ; $43be: $03
	ret nc                                           ; $43bf: $d0

	pop hl                                           ; $43c0: $e1
	ld [bc], a                                       ; $43c1: $02
	inc bc                                           ; $43c2: $03
	ccf                                              ; $43c3: $3f
	db $e4                                           ; $43c4: $e4
	inc bc                                           ; $43c5: $03
	ld d, a                                          ; $43c6: $57
	jr z, @+$08                                      ; $43c7: $28 $06

	ret nz                                           ; $43c9: $c0

	ld bc, $02a0                                     ; $43ca: $01 $a0 $02
	inc bc                                           ; $43cd: $03
	sub $a4                                          ; $43ce: $d6 $a4
	inc bc                                           ; $43d0: $03
	db $dd                                           ; $43d1: $dd
	add hl, bc                                       ; $43d2: $09
	ld b, b                                          ; $43d3: $40
	add d                                            ; $43d4: $82
	ret nz                                           ; $43d5: $c0

	dec de                                           ; $43d6: $1b
	ret nc                                           ; $43d7: $d0

	ld [bc], a                                       ; $43d8: $02
	ret nc                                           ; $43d9: $d0

	pop de                                           ; $43da: $d1
	ld d, $e1                                        ; $43db: $16 $e1
	ld [bc], a                                       ; $43dd: $02
	inc bc                                           ; $43de: $03
	rla                                              ; $43df: $17
	ret nz                                           ; $43e0: $c0

	ld bc, $02a0                                     ; $43e1: $01 $a0 $02
	inc bc                                           ; $43e4: $03
	rst SubAFromDE                                          ; $43e5: $df
	ret nz                                           ; $43e6: $c0

	ld bc, $01a0                                     ; $43e7: $01 $a0 $01
	inc bc                                           ; $43ea: $03
	and $c0                                          ; $43eb: $e6 $c0
	ld bc, $02a0                                     ; $43ed: $01 $a0 $02
	inc bc                                           ; $43f0: $03
	db $ec                                           ; $43f1: $ec
	ld [bc], a                                       ; $43f2: $02
	jp nc, $0ad3                                     ; $43f3: $d2 $d3 $0a

	pop hl                                           ; $43f6: $e1
	ld [bc], a                                       ; $43f7: $02
	inc bc                                           ; $43f8: $03
	inc de                                           ; $43f9: $13
	ret nz                                           ; $43fa: $c0

	ld bc, $02a0                                     ; $43fb: $01 $a0 $02
	inc bc                                           ; $43fe: $03
	push af                                          ; $43ff: $f5
	ld bc, $0ad4                                     ; $4400: $01 $d4 $0a
	pop hl                                           ; $4403: $e1
	ld [bc], a                                       ; $4404: $02
	inc bc                                           ; $4405: $03
	inc de                                           ; $4406: $13
	ret nz                                           ; $4407: $c0

	ld bc, $02a0                                     ; $4408: $01 $a0 $02
	inc b                                            ; $440b: $04
	nop                                              ; $440c: $00
	pop hl                                           ; $440d: $e1
	ld [bc], a                                       ; $440e: $02
	inc bc                                           ; $440f: $03
	dec l                                            ; $4410: $2d
	db $e4                                           ; $4411: $e4
	inc bc                                           ; $4412: $03
	ld a, [bc]                                       ; $4413: $0a
	inc b                                            ; $4414: $04
	dec c                                            ; $4415: $0d
	add hl, bc                                       ; $4416: $09
	inc l                                            ; $4417: $2c
	pop hl                                           ; $4418: $e1
	ld [bc], a                                       ; $4419: $02
	inc bc                                           ; $441a: $03
	rra                                              ; $441b: $1f
	add d                                            ; $441c: $82
	ret nz                                           ; $441d: $c0

	dec de                                           ; $441e: $1b
	ret nc                                           ; $441f: $d0

	ld [bc], a                                       ; $4420: $02
	ret nc                                           ; $4421: $d0

	pop de                                           ; $4422: $d1
	ld b, $c0                                        ; $4423: $06 $c0
	ld bc, $02a0                                     ; $4425: $01 $a0 $02
	inc bc                                           ; $4428: $03
	and e                                            ; $4429: $a3
	ld [bc], a                                       ; $442a: $02
	jp nc, $06d3                                     ; $442b: $d2 $d3 $06

	ret nz                                           ; $442e: $c0

	ld bc, $02a0                                     ; $442f: $01 $a0 $02
	inc b                                            ; $4432: $04
	rrca                                             ; $4433: $0f
	ld bc, $06d4                                     ; $4434: $01 $d4 $06
	ret nz                                           ; $4437: $c0

	ld bc, $02a0                                     ; $4438: $01 $a0 $02
	inc b                                            ; $443b: $04
	add hl, de                                       ; $443c: $19
	pop hl                                           ; $443d: $e1
	ld [bc], a                                       ; $443e: $02
	inc bc                                           ; $443f: $03
	ld d, c                                          ; $4440: $51
	db $e4                                           ; $4441: $e4
	ld [bc], a                                       ; $4442: $02
	jp c, $2304                                      ; $4443: $da $04 $23

	add hl, bc                                       ; $4446: $09
	inc l                                            ; $4447: $2c
	pop hl                                           ; $4448: $e1
	ld [bc], a                                       ; $4449: $02
	inc bc                                           ; $444a: $03
	rla                                              ; $444b: $17
	add d                                            ; $444c: $82
	ret nz                                           ; $444d: $c0

	dec de                                           ; $444e: $1b
	ret nc                                           ; $444f: $d0

	ld [bc], a                                       ; $4450: $02
	ret nc                                           ; $4451: $d0

	pop de                                           ; $4452: $d1
	ld b, $c0                                        ; $4453: $06 $c0
	ld bc, $02a0                                     ; $4455: $01 $a0 $02
	inc b                                            ; $4458: $04
	dec h                                            ; $4459: $25
	ld [bc], a                                       ; $445a: $02
	jp nc, $06d3                                     ; $445b: $d2 $d3 $06

	ret nz                                           ; $445e: $c0

	ld bc, $02a0                                     ; $445f: $01 $a0 $02
	inc b                                            ; $4462: $04
	ld l, $01                                        ; $4463: $2e $01
	call nc, $c006                                   ; $4465: $d4 $06 $c0
	ld bc, $02a0                                     ; $4468: $01 $a0 $02
	inc b                                            ; $446b: $04
	ld a, [hl-]                                      ; $446c: $3a
	pop hl                                           ; $446d: $e1
	ld [bc], a                                       ; $446e: $02
	inc bc                                           ; $446f: $03
	ld c, b                                          ; $4470: $48
	db $e4                                           ; $4471: $e4
	ld [bc], a                                       ; $4472: $02
	xor d                                            ; $4473: $aa
	add hl, bc                                       ; $4474: $09
	inc e                                            ; $4475: $1c
	pop bc                                           ; $4476: $c1
	ld e, c                                          ; $4477: $59
	db $e3                                           ; $4478: $e3
	nop                                              ; $4479: $00
	and d                                            ; $447a: $a2
	ret nz                                           ; $447b: $c0

	add hl, bc                                       ; $447c: $09
	db $e3                                           ; $447d: $e3
	nop                                              ; $447e: $00
	add hl, hl                                       ; $447f: $29
	and b                                            ; $4480: $a0
	add b                                            ; $4481: $80
	and b                                            ; $4482: $a0
	stop                                             ; $4483: $10 $00
	inc bc                                           ; $4485: $03
	db $e4                                           ; $4486: $e4
	nop                                              ; $4487: $00
	dec bc                                           ; $4488: $0b
	rst $38                                          ; $4489: $ff
	rlca                                             ; $448a: $07
	ld b, b                                          ; $448b: $40
	add b                                            ; $448c: $80
	and b                                            ; $448d: $a0
	db $10                                           ; $448e: $10
	db $e4                                           ; $448f: $e4
	nop                                              ; $4490: $00
	sbc e                                            ; $4491: $9b
	jr z, jr_07d_449a                                ; $4492: $28 $06

	ret nz                                           ; $4494: $c0

	ld bc, $02a0                                     ; $4495: $01 $a0 $02
	inc b                                            ; $4498: $04
	ccf                                              ; $4499: $3f

jr_07d_449a:
	sub b                                            ; $449a: $90
	inc b                                            ; $449b: $04
	ld b, l                                          ; $449c: $45
	add hl, bc                                       ; $449d: $09
	inc l                                            ; $449e: $2c
	pop hl                                           ; $449f: $e1
	ld [bc], a                                       ; $44a0: $02
	inc bc                                           ; $44a1: $03
	rrca                                             ; $44a2: $0f
	add d                                            ; $44a3: $82
	ret nz                                           ; $44a4: $c0

	dec de                                           ; $44a5: $1b
	ret nc                                           ; $44a6: $d0

	ld [bc], a                                       ; $44a7: $02
	ret nc                                           ; $44a8: $d0

	pop de                                           ; $44a9: $d1
	ld b, $c0                                        ; $44aa: $06 $c0
	ld bc, $02a0                                     ; $44ac: $01 $a0 $02
	inc b                                            ; $44af: $04
	ld c, h                                          ; $44b0: $4c
	ld [bc], a                                       ; $44b1: $02
	jp nc, $06d3                                     ; $44b2: $d2 $d3 $06

	ret nz                                           ; $44b5: $c0

	ld bc, $02a0                                     ; $44b6: $01 $a0 $02
	inc b                                            ; $44b9: $04
	ld d, [hl]                                       ; $44ba: $56
	ld bc, $06d4                                     ; $44bb: $01 $d4 $06
	ret nz                                           ; $44be: $c0

	ld bc, $02a0                                     ; $44bf: $01 $a0 $02
	inc b                                            ; $44c2: $04
	ld h, b                                          ; $44c3: $60
	pop hl                                           ; $44c4: $e1
	ld [bc], a                                       ; $44c5: $02
	inc bc                                           ; $44c6: $03
	dec l                                            ; $44c7: $2d
	db $e4                                           ; $44c8: $e4
	ld [bc], a                                       ; $44c9: $02
	ld d, e                                          ; $44ca: $53
	inc b                                            ; $44cb: $04
	ld l, d                                          ; $44cc: $6a
	add hl, bc                                       ; $44cd: $09
	inc l                                            ; $44ce: $2c
	pop hl                                           ; $44cf: $e1
	ld [bc], a                                       ; $44d0: $02
	inc bc                                           ; $44d1: $03
	dec de                                           ; $44d2: $1b
	add d                                            ; $44d3: $82
	ret nz                                           ; $44d4: $c0

	dec de                                           ; $44d5: $1b
	ret nc                                           ; $44d6: $d0

	ld [bc], a                                       ; $44d7: $02
	ret nc                                           ; $44d8: $d0

	pop de                                           ; $44d9: $d1
	ld b, $c0                                        ; $44da: $06 $c0
	ld bc, $02a0                                     ; $44dc: $01 $a0 $02
	inc b                                            ; $44df: $04
	ld l, h                                          ; $44e0: $6c
	ld [bc], a                                       ; $44e1: $02
	jp nc, $06d3                                     ; $44e2: $d2 $d3 $06

	ret nz                                           ; $44e5: $c0

	ld bc, $02a0                                     ; $44e6: $01 $a0 $02
	inc b                                            ; $44e9: $04
	ld [hl], b                                       ; $44ea: $70
	ld bc, $06d4                                     ; $44eb: $01 $d4 $06
	ret nz                                           ; $44ee: $c0

	ld bc, $02a0                                     ; $44ef: $01 $a0 $02
	inc b                                            ; $44f2: $04
	ld [hl], l                                       ; $44f3: $75
	pop hl                                           ; $44f4: $e1
	ld [bc], a                                       ; $44f5: $02
	inc bc                                           ; $44f6: $03
	ld c, b                                          ; $44f7: $48
	db $e4                                           ; $44f8: $e4
	ld [bc], a                                       ; $44f9: $02
	inc hl                                           ; $44fa: $23
	inc b                                            ; $44fb: $04
	ld a, l                                          ; $44fc: $7d
	add hl, bc                                       ; $44fd: $09
	inc l                                            ; $44fe: $2c
	pop hl                                           ; $44ff: $e1
	ld [bc], a                                       ; $4500: $02
	inc bc                                           ; $4501: $03
	rla                                              ; $4502: $17
	add d                                            ; $4503: $82
	ret nz                                           ; $4504: $c0

	dec de                                           ; $4505: $1b
	ret nc                                           ; $4506: $d0

	ld [bc], a                                       ; $4507: $02
	ret nc                                           ; $4508: $d0

	pop de                                           ; $4509: $d1
	ld b, $c0                                        ; $450a: $06 $c0
	ld bc, $02a0                                     ; $450c: $01 $a0 $02
	inc b                                            ; $450f: $04
	ld a, a                                          ; $4510: $7f
	ld [bc], a                                       ; $4511: $02
	jp nc, $06d3                                     ; $4512: $d2 $d3 $06

	ret nz                                           ; $4515: $c0

	ld bc, $02a0                                     ; $4516: $01 $a0 $02
	inc b                                            ; $4519: $04
	add [hl]                                         ; $451a: $86
	ld bc, $06d4                                     ; $451b: $01 $d4 $06
	ret nz                                           ; $451e: $c0

	ld bc, $02a0                                     ; $451f: $01 $a0 $02
	inc b                                            ; $4522: $04
	sub h                                            ; $4523: $94
	pop hl                                           ; $4524: $e1
	ld [bc], a                                       ; $4525: $02
	inc bc                                           ; $4526: $03
	ccf                                              ; $4527: $3f
	db $e4                                           ; $4528: $e4
	ld bc, $28f3                                     ; $4529: $01 $f3 $28
	ld b, $c0                                        ; $452c: $06 $c0
	ld bc, $02a0                                     ; $452e: $01 $a0 $02
	inc b                                            ; $4531: $04
	and e                                            ; $4532: $a3
	sub b                                            ; $4533: $90
	inc b                                            ; $4534: $04
	xor l                                            ; $4535: $ad
	add hl, bc                                       ; $4536: $09
	inc l                                            ; $4537: $2c
	pop hl                                           ; $4538: $e1
	ld [bc], a                                       ; $4539: $02
	inc bc                                           ; $453a: $03
	inc de                                           ; $453b: $13
	add d                                            ; $453c: $82
	ret nz                                           ; $453d: $c0

	dec de                                           ; $453e: $1b
	ret nc                                           ; $453f: $d0

	ld [bc], a                                       ; $4540: $02
	ret nc                                           ; $4541: $d0

	pop de                                           ; $4542: $d1
	ld b, $c0                                        ; $4543: $06 $c0
	ld bc, $02a0                                     ; $4545: $01 $a0 $02
	inc b                                            ; $4548: $04
	xor a                                            ; $4549: $af
	ld [bc], a                                       ; $454a: $02
	jp nc, $06d3                                     ; $454b: $d2 $d3 $06

	ret nz                                           ; $454e: $c0

	ld bc, $02a0                                     ; $454f: $01 $a0 $02
	inc b                                            ; $4552: $04
	cp c                                             ; $4553: $b9
	ld bc, $06d4                                     ; $4554: $01 $d4 $06
	ret nz                                           ; $4557: $c0

	ld bc, $02a0                                     ; $4558: $01 $a0 $02
	inc b                                            ; $455b: $04
	pop bc                                           ; $455c: $c1
	pop hl                                           ; $455d: $e1
	ld [bc], a                                       ; $455e: $02
	inc bc                                           ; $455f: $03
	ld [hl], $e4                                     ; $4560: $36 $e4
	ld bc, $04ba                                     ; $4562: $01 $ba $04
	ret                                              ; $4565: $c9


	add hl, bc                                       ; $4566: $09
	inc l                                            ; $4567: $2c
	pop hl                                           ; $4568: $e1
	ld [bc], a                                       ; $4569: $02
	inc bc                                           ; $456a: $03
	rra                                              ; $456b: $1f
	add d                                            ; $456c: $82
	ret nz                                           ; $456d: $c0

	dec de                                           ; $456e: $1b
	ret nc                                           ; $456f: $d0

	ld [bc], a                                       ; $4570: $02
	ret nc                                           ; $4571: $d0

	pop de                                           ; $4572: $d1
	ld b, $c0                                        ; $4573: $06 $c0
	ld bc, $02a0                                     ; $4575: $01 $a0 $02
	inc b                                            ; $4578: $04
	rlc d                                            ; $4579: $cb $02
	jp nc, $06d3                                     ; $457b: $d2 $d3 $06

	ret nz                                           ; $457e: $c0

	ld bc, $02a0                                     ; $457f: $01 $a0 $02
	inc b                                            ; $4582: $04
	jp nc, $d401                                     ; $4583: $d2 $01 $d4

	ld b, $c0                                        ; $4586: $06 $c0
	ld bc, $02a0                                     ; $4588: $01 $a0 $02
	inc b                                            ; $458b: $04
	jp c, $02e1                                      ; $458c: $da $e1 $02

	inc bc                                           ; $458f: $03
	ld d, c                                          ; $4590: $51
	db $e4                                           ; $4591: $e4
	ld bc, $048a                                     ; $4592: $01 $8a $04
	rst SubAFromDE                                          ; $4595: $df
	add hl, bc                                       ; $4596: $09
	inc l                                            ; $4597: $2c
	pop hl                                           ; $4598: $e1
	ld [bc], a                                       ; $4599: $02
	inc bc                                           ; $459a: $03
	dec de                                           ; $459b: $1b
	add d                                            ; $459c: $82
	ret nz                                           ; $459d: $c0

	dec de                                           ; $459e: $1b
	ret nc                                           ; $459f: $d0

	ld [bc], a                                       ; $45a0: $02
	ret nc                                           ; $45a1: $d0

	pop de                                           ; $45a2: $d1
	ld b, $c0                                        ; $45a3: $06 $c0
	ld bc, $02a0                                     ; $45a5: $01 $a0 $02
	inc b                                            ; $45a8: $04
	pop hl                                           ; $45a9: $e1
	ld [bc], a                                       ; $45aa: $02
	jp nc, $06d3                                     ; $45ab: $d2 $d3 $06

	ret nz                                           ; $45ae: $c0

	ld bc, $02a0                                     ; $45af: $01 $a0 $02
	inc b                                            ; $45b2: $04
	ldh a, [rSB]                                     ; $45b3: $f0 $01
	call nc, $c006                                   ; $45b5: $d4 $06 $c0
	ld bc, $02a0                                     ; $45b8: $01 $a0 $02
	inc b                                            ; $45bb: $04
	ld a, [$02e1]                                    ; $45bc: $fa $e1 $02
	inc bc                                           ; $45bf: $03
	ld c, b                                          ; $45c0: $48
	db $e4                                           ; $45c1: $e4
	ld bc, $095a                                     ; $45c2: $01 $5a $09
	inc e                                            ; $45c5: $1c
	pop bc                                           ; $45c6: $c1
	ld e, c                                          ; $45c7: $59
	db $e3                                           ; $45c8: $e3
	nop                                              ; $45c9: $00
	and e                                            ; $45ca: $a3
	ret nz                                           ; $45cb: $c0

	add hl, bc                                       ; $45cc: $09
	db $e3                                           ; $45cd: $e3
	nop                                              ; $45ce: $00
	ld l, $a0                                        ; $45cf: $2e $a0
	add b                                            ; $45d1: $80
	and b                                            ; $45d2: $a0
	ld de, $0300                                     ; $45d3: $11 $00 $03
	db $e4                                           ; $45d6: $e4
	nop                                              ; $45d7: $00
	dec bc                                           ; $45d8: $0b
	rst $38                                          ; $45d9: $ff
	rlca                                             ; $45da: $07
	ld b, b                                          ; $45db: $40
	add b                                            ; $45dc: $80
	and b                                            ; $45dd: $a0
	ld de, $00e4                                     ; $45de: $11 $e4 $00
	sbc a                                            ; $45e1: $9f
	jr z, jr_07d_45ee                                ; $45e2: $28 $0a

	pop hl                                           ; $45e4: $e1
	ld [bc], a                                       ; $45e5: $02
	inc bc                                           ; $45e6: $03
	dec de                                           ; $45e7: $1b
	ret nz                                           ; $45e8: $c0

	ld bc, $02a0                                     ; $45e9: $01 $a0 $02
	dec b                                            ; $45ec: $05
	dec b                                            ; $45ed: $05

jr_07d_45ee:
	sub b                                            ; $45ee: $90
	dec b                                            ; $45ef: $05
	inc c                                            ; $45f0: $0c
	add hl, bc                                       ; $45f1: $09
	inc l                                            ; $45f2: $2c
	pop hl                                           ; $45f3: $e1
	ld [bc], a                                       ; $45f4: $02
	inc bc                                           ; $45f5: $03
	rla                                              ; $45f6: $17
	add d                                            ; $45f7: $82
	ret nz                                           ; $45f8: $c0

	dec de                                           ; $45f9: $1b

jr_07d_45fa:
	ret nc                                           ; $45fa: $d0

	ld [bc], a                                       ; $45fb: $02
	ret nc                                           ; $45fc: $d0

	pop de                                           ; $45fd: $d1
	ld b, $c0                                        ; $45fe: $06 $c0
	ld bc, $02a0                                     ; $4600: $01 $a0 $02
	dec b                                            ; $4603: $05
	ld de, $d202                                     ; $4604: $11 $02 $d2
	db $d3                                           ; $4607: $d3
	ld b, $c0                                        ; $4608: $06 $c0
	ld bc, $02a0                                     ; $460a: $01 $a0 $02
	dec b                                            ; $460d: $05
	ld d, $01                                        ; $460e: $16 $01
	call nc, $c006                                   ; $4610: $d4 $06 $c0
	ld bc, $02a0                                     ; $4613: $01 $a0 $02
	dec b                                            ; $4616: $05
	jr nz, jr_07d_45fa                               ; $4617: $20 $e1

	ld [bc], a                                       ; $4619: $02
	inc bc                                           ; $461a: $03
	ccf                                              ; $461b: $3f
	db $e4                                           ; $461c: $e4
	nop                                              ; $461d: $00
	rst $38                                          ; $461e: $ff
	dec b                                            ; $461f: $05
	ld l, $09                                        ; $4620: $2e $09
	inc l                                            ; $4622: $2c
	pop hl                                           ; $4623: $e1
	ld [bc], a                                       ; $4624: $02
	inc bc                                           ; $4625: $03
	rra                                              ; $4626: $1f
	add d                                            ; $4627: $82
	ret nz                                           ; $4628: $c0

	dec de                                           ; $4629: $1b
	ret nc                                           ; $462a: $d0

	ld [bc], a                                       ; $462b: $02
	ret nc                                           ; $462c: $d0

	pop de                                           ; $462d: $d1
	ld b, $c0                                        ; $462e: $06 $c0
	ld bc, $02a0                                     ; $4630: $01 $a0 $02
	dec b                                            ; $4633: $05
	jr nc, @+$04                                     ; $4634: $30 $02

	jp nc, $06d3                                     ; $4636: $d2 $d3 $06

	ret nz                                           ; $4639: $c0

	ld bc, $02a0                                     ; $463a: $01 $a0 $02
	dec b                                            ; $463d: $05
	jr c, @+$03                                      ; $463e: $38 $01

	call nc, $c006                                   ; $4640: $d4 $06 $c0
	ld bc, $02a0                                     ; $4643: $01 $a0 $02
	dec b                                            ; $4646: $05
	ccf                                              ; $4647: $3f
	pop hl                                           ; $4648: $e1
	ld [bc], a                                       ; $4649: $02
	inc bc                                           ; $464a: $03
	ld d, c                                          ; $464b: $51
	db $e4                                           ; $464c: $e4
	nop                                              ; $464d: $00
	rst GetHLinHL                                          ; $464e: $cf
	dec b                                            ; $464f: $05
	ld b, a                                          ; $4650: $47
	add hl, bc                                       ; $4651: $09
	inc l                                            ; $4652: $2c
	pop hl                                           ; $4653: $e1
	ld [bc], a                                       ; $4654: $02
	inc bc                                           ; $4655: $03
	dec de                                           ; $4656: $1b
	add d                                            ; $4657: $82
	ret nz                                           ; $4658: $c0

	dec de                                           ; $4659: $1b
	ret nc                                           ; $465a: $d0

	ld [bc], a                                       ; $465b: $02
	ret nc                                           ; $465c: $d0

	pop de                                           ; $465d: $d1
	ld b, $c0                                        ; $465e: $06 $c0
	ld bc, $02a0                                     ; $4660: $01 $a0 $02
	dec b                                            ; $4663: $05
	ld c, c                                          ; $4664: $49
	ld [bc], a                                       ; $4665: $02
	jp nc, $06d3                                     ; $4666: $d2 $d3 $06

	ret nz                                           ; $4669: $c0

	ld bc, $02a0                                     ; $466a: $01 $a0 $02
	dec b                                            ; $466d: $05
	ld d, b                                          ; $466e: $50
	ld bc, $06d4                                     ; $466f: $01 $d4 $06
	ret nz                                           ; $4672: $c0

	ld bc, $02a0                                     ; $4673: $01 $a0 $02
	dec b                                            ; $4676: $05
	ld d, a                                          ; $4677: $57
	pop hl                                           ; $4678: $e1
	ld [bc], a                                       ; $4679: $02
	inc bc                                           ; $467a: $03
	ld c, b                                          ; $467b: $48
	db $e4                                           ; $467c: $e4
	nop                                              ; $467d: $00
	sbc a                                            ; $467e: $9f
	jr z, jr_07d_468b                                ; $467f: $28 $0a

	pop hl                                           ; $4681: $e1
	ld [bc], a                                       ; $4682: $02
	inc bc                                           ; $4683: $03
	dec de                                           ; $4684: $1b
	ret nz                                           ; $4685: $c0

	ld bc, $02a0                                     ; $4686: $01 $a0 $02
	dec b                                            ; $4689: $05
	ld e, [hl]                                       ; $468a: $5e

jr_07d_468b:
	sub b                                            ; $468b: $90
	dec b                                            ; $468c: $05
	ld h, l                                          ; $468d: $65
	add hl, bc                                       ; $468e: $09
	inc l                                            ; $468f: $2c
	pop hl                                           ; $4690: $e1
	ld [bc], a                                       ; $4691: $02
	inc bc                                           ; $4692: $03
	rla                                              ; $4693: $17
	add d                                            ; $4694: $82
	ret nz                                           ; $4695: $c0

	dec de                                           ; $4696: $1b
	ret nc                                           ; $4697: $d0

	ld [bc], a                                       ; $4698: $02
	ret nc                                           ; $4699: $d0

	pop de                                           ; $469a: $d1
	ld b, $c0                                        ; $469b: $06 $c0
	ld bc, $02a0                                     ; $469d: $01 $a0 $02
	dec b                                            ; $46a0: $05
	ld h, a                                          ; $46a1: $67
	ld [bc], a                                       ; $46a2: $02
	jp nc, $06d3                                     ; $46a3: $d2 $d3 $06

	ret nz                                           ; $46a6: $c0

	ld bc, $02a0                                     ; $46a7: $01 $a0 $02
	dec b                                            ; $46aa: $05

jr_07d_46ab:
	ld [hl], b                                       ; $46ab: $70
	ld bc, $06d4                                     ; $46ac: $01 $d4 $06
	ret nz                                           ; $46af: $c0

	ld bc, $02a0                                     ; $46b0: $01 $a0 $02
	dec b                                            ; $46b3: $05
	ld a, e                                          ; $46b4: $7b
	pop hl                                           ; $46b5: $e1
	ld [bc], a                                       ; $46b6: $02
	inc bc                                           ; $46b7: $03
	ccf                                              ; $46b8: $3f
	db $e4                                           ; $46b9: $e4
	nop                                              ; $46ba: $00
	ld h, d                                          ; $46bb: $62
	dec b                                            ; $46bc: $05
	add e                                            ; $46bd: $83
	add hl, bc                                       ; $46be: $09
	inc l                                            ; $46bf: $2c
	pop hl                                           ; $46c0: $e1
	ld [bc], a                                       ; $46c1: $02
	inc bc                                           ; $46c2: $03
	rra                                              ; $46c3: $1f
	add d                                            ; $46c4: $82
	ret nz                                           ; $46c5: $c0

	dec de                                           ; $46c6: $1b
	ret nc                                           ; $46c7: $d0

	ld [bc], a                                       ; $46c8: $02
	ret nc                                           ; $46c9: $d0

	pop de                                           ; $46ca: $d1
	ld b, $c0                                        ; $46cb: $06 $c0
	ld bc, $02a0                                     ; $46cd: $01 $a0 $02
	dec b                                            ; $46d0: $05
	add l                                            ; $46d1: $85
	ld [bc], a                                       ; $46d2: $02
	jp nc, $06d3                                     ; $46d3: $d2 $d3 $06

	ret nz                                           ; $46d6: $c0

	ld bc, $02a0                                     ; $46d7: $01 $a0 $02
	dec b                                            ; $46da: $05
	adc l                                            ; $46db: $8d
	ld bc, $06d4                                     ; $46dc: $01 $d4 $06
	ret nz                                           ; $46df: $c0

	ld bc, $02a0                                     ; $46e0: $01 $a0 $02
	dec b                                            ; $46e3: $05
	sub [hl]                                         ; $46e4: $96
	pop hl                                           ; $46e5: $e1
	ld [bc], a                                       ; $46e6: $02
	inc bc                                           ; $46e7: $03
	ld d, c                                          ; $46e8: $51
	db $e4                                           ; $46e9: $e4
	nop                                              ; $46ea: $00
	ld [hl-], a                                      ; $46eb: $32
	dec b                                            ; $46ec: $05
	sbc e                                            ; $46ed: $9b
	add hl, bc                                       ; $46ee: $09
	inc l                                            ; $46ef: $2c
	pop hl                                           ; $46f0: $e1
	ld [bc], a                                       ; $46f1: $02
	inc bc                                           ; $46f2: $03
	dec de                                           ; $46f3: $1b
	add d                                            ; $46f4: $82
	ret nz                                           ; $46f5: $c0

	dec de                                           ; $46f6: $1b
	ret nc                                           ; $46f7: $d0

	ld [bc], a                                       ; $46f8: $02
	ret nc                                           ; $46f9: $d0

	pop de                                           ; $46fa: $d1
	ld b, $c0                                        ; $46fb: $06 $c0
	ld bc, $02a0                                     ; $46fd: $01 $a0 $02
	dec b                                            ; $4700: $05
	sbc l                                            ; $4701: $9d
	ld [bc], a                                       ; $4702: $02
	jp nc, $06d3                                     ; $4703: $d2 $d3 $06

	ret nz                                           ; $4706: $c0

	ld bc, $02a0                                     ; $4707: $01 $a0 $02
	dec b                                            ; $470a: $05
	sbc a                                            ; $470b: $9f
	ld bc, $06d4                                     ; $470c: $01 $d4 $06
	ret nz                                           ; $470f: $c0

	ld bc, $02a0                                     ; $4710: $01 $a0 $02
	dec b                                            ; $4713: $05
	xor c                                            ; $4714: $a9
	pop hl                                           ; $4715: $e1
	ld [bc], a                                       ; $4716: $02
	inc bc                                           ; $4717: $03
	ld c, b                                          ; $4718: $48
	db $e4                                           ; $4719: $e4
	nop                                              ; $471a: $00
	ld [bc], a                                       ; $471b: $02
	add hl, bc                                       ; $471c: $09
	dec l                                            ; $471d: $2d
	pop bc                                           ; $471e: $c1
	ld e, c                                          ; $471f: $59
	db $e3                                           ; $4720: $e3
	nop                                              ; $4721: $00
	sbc a                                            ; $4722: $9f
	ret nz                                           ; $4723: $c0

	add hl, bc                                       ; $4724: $09
	db $e3                                           ; $4725: $e3
	nop                                              ; $4726: $00
	jr c, jr_07d_46ab                                ; $4727: $38 $82

	adc e                                            ; $4729: $8b
	and b                                            ; $472a: $a0
	inc bc                                           ; $472b: $03
	ld [bc], a                                       ; $472c: $02
	or b                                             ; $472d: $b0
	ld [hl], l                                       ; $472e: $75
	dec b                                            ; $472f: $05
	ret nz                                           ; $4730: $c0

	ld d, [hl]                                       ; $4731: $56
	ret nc                                           ; $4732: $d0

	jp nc, $02d0                                     ; $4733: $d2 $d0 $02

	or b                                             ; $4736: $b0
	halt                                             ; $4737: $76
	dec b                                            ; $4738: $05
	ret nz                                           ; $4739: $c0

	ld d, [hl]                                       ; $473a: $56
	ret nc                                           ; $473b: $d0

	jp nc, $02d1                                     ; $473c: $d2 $d1 $02

	or b                                             ; $473f: $b0
	ld [hl], a                                       ; $4740: $77
	dec b                                            ; $4741: $05
	ret nz                                           ; $4742: $c0

	ld d, [hl]                                       ; $4743: $56
	ret nc                                           ; $4744: $d0

	jp nc, $e5d2                                     ; $4745: $d2 $d2 $e5

	inc de                                           ; $4748: $13
	nop                                              ; $4749: $00
	nop                                              ; $474a: $00
	add hl, bc                                       ; $474b: $09
	inc d                                            ; $474c: $14
	ret nc                                           ; $474d: $d0

	add e                                            ; $474e: $83
	ld bc, $d0de                                     ; $474f: $01 $de $d0
	ret nz                                           ; $4752: $c0

	ld bc, $02a0                                     ; $4753: $01 $a0 $02
	dec b                                            ; $4756: $05
	or b                                             ; $4757: $b0
	ret nz                                           ; $4758: $c0

	ld bc, $01a0                                     ; $4759: $01 $a0 $01
	dec b                                            ; $475c: $05
	cp c                                             ; $475d: $b9
	db $e4                                           ; $475e: $e4
	nop                                              ; $475f: $00
	ld [bc], a                                       ; $4760: $02
	add hl, bc                                       ; $4761: $09
	inc [hl]                                         ; $4762: $34
	pop bc                                           ; $4763: $c1
	ld e, c                                          ; $4764: $59
	db $e3                                           ; $4765: $e3
	nop                                              ; $4766: $00
	xor l                                            ; $4767: $ad
	ld h, b                                          ; $4768: $60
	add b                                            ; $4769: $80
	ld [bc], a                                       ; $476a: $02
	ld b, c                                          ; $476b: $41
	rla                                              ; $476c: $17
	and c                                            ; $476d: $a1
	add c                                            ; $476e: $81
	and b                                            ; $476f: $a0
	ld [de], a                                       ; $4770: $12
	nop                                              ; $4771: $00
	inc bc                                           ; $4772: $03
	db $e4                                           ; $4773: $e4
	ld bc, $0155                                     ; $4774: $01 $55 $01
	inc bc                                           ; $4777: $03
	db $e4                                           ; $4778: $e4
	nop                                              ; $4779: $00
	ld e, $ff                                        ; $477a: $1e $ff
	rlca                                             ; $477c: $07
	ld b, b                                          ; $477d: $40
	add c                                            ; $477e: $81
	and b                                            ; $477f: $a0
	ld [de], a                                       ; $4780: $12
	db $e4                                           ; $4781: $e4
	nop                                              ; $4782: $00
	xor [hl]                                         ; $4783: $ae
	ld [de], a                                       ; $4784: $12
	and b                                            ; $4785: $a0
	add b                                            ; $4786: $80
	and b                                            ; $4787: $a0
	inc d                                            ; $4788: $14
	nop                                              ; $4789: $00
	inc bc                                           ; $478a: $03
	db $e4                                           ; $478b: $e4
	nop                                              ; $478c: $00
	dec bc                                           ; $478d: $0b
	rst $38                                          ; $478e: $ff
	rlca                                             ; $478f: $07
	ld b, b                                          ; $4790: $40
	add b                                            ; $4791: $80
	and b                                            ; $4792: $a0
	inc d                                            ; $4793: $14
	db $e4                                           ; $4794: $e4
	nop                                              ; $4795: $00
	sbc e                                            ; $4796: $9b
	jr z, jr_07d_479f                                ; $4797: $28 $06

	ret nz                                           ; $4799: $c0

	ld bc, $02a0                                     ; $479a: $01 $a0 $02
	dec b                                            ; $479d: $05
	cp a                                             ; $479e: $bf

jr_07d_479f:
	sub b                                            ; $479f: $90
	dec b                                            ; $47a0: $05
	push bc                                          ; $47a1: $c5
	add hl, bc                                       ; $47a2: $09
	inc l                                            ; $47a3: $2c
	pop hl                                           ; $47a4: $e1
	ld [bc], a                                       ; $47a5: $02
	inc bc                                           ; $47a6: $03
	inc de                                           ; $47a7: $13
	add d                                            ; $47a8: $82
	ret nz                                           ; $47a9: $c0

	dec de                                           ; $47aa: $1b
	ret nc                                           ; $47ab: $d0

	ld [bc], a                                       ; $47ac: $02
	ret nc                                           ; $47ad: $d0

	pop de                                           ; $47ae: $d1
	ld b, $c0                                        ; $47af: $06 $c0
	ld bc, $02a0                                     ; $47b1: $01 $a0 $02
	dec b                                            ; $47b4: $05
	rst JumpTable                                          ; $47b5: $c7
	ld [bc], a                                       ; $47b6: $02
	jp nc, $06d3                                     ; $47b7: $d2 $d3 $06

	ret nz                                           ; $47ba: $c0

	ld bc, $02a0                                     ; $47bb: $01 $a0 $02
	dec b                                            ; $47be: $05
	call $d401                                       ; $47bf: $cd $01 $d4
	ld b, $c0                                        ; $47c2: $06 $c0
	ld bc, $02a0                                     ; $47c4: $01 $a0 $02
	dec b                                            ; $47c7: $05
	rst SubAFromHL                                          ; $47c8: $d7
	pop hl                                           ; $47c9: $e1
	ld [bc], a                                       ; $47ca: $02
	inc bc                                           ; $47cb: $03
	dec l                                            ; $47cc: $2d
	db $e4                                           ; $47cd: $e4
	ld bc, $0594                                     ; $47ce: $01 $94 $05
	db $db                                           ; $47d1: $db
	add hl, bc                                       ; $47d2: $09
	inc l                                            ; $47d3: $2c
	pop hl                                           ; $47d4: $e1
	ld [bc], a                                       ; $47d5: $02
	inc bc                                           ; $47d6: $03
	rra                                              ; $47d7: $1f
	add d                                            ; $47d8: $82
	ret nz                                           ; $47d9: $c0

	dec de                                           ; $47da: $1b
	ret nc                                           ; $47db: $d0

	ld [bc], a                                       ; $47dc: $02
	ret nc                                           ; $47dd: $d0

	pop de                                           ; $47de: $d1
	ld b, $c0                                        ; $47df: $06 $c0
	ld bc, $02a0                                     ; $47e1: $01 $a0 $02
	dec b                                            ; $47e4: $05
	db $dd                                           ; $47e5: $dd
	ld [bc], a                                       ; $47e6: $02
	jp nc, $06d3                                     ; $47e7: $d2 $d3 $06

	ret nz                                           ; $47ea: $c0

	ld bc, $02a0                                     ; $47eb: $01 $a0 $02
	dec b                                            ; $47ee: $05
	pop hl                                           ; $47ef: $e1
	ld bc, $06d4                                     ; $47f0: $01 $d4 $06
	ret nz                                           ; $47f3: $c0

	ld bc, $02a0                                     ; $47f4: $01 $a0 $02
	dec b                                            ; $47f7: $05
	db $eb                                           ; $47f8: $eb
	pop hl                                           ; $47f9: $e1
	ld [bc], a                                       ; $47fa: $02
	inc bc                                           ; $47fb: $03
	ld d, c                                          ; $47fc: $51
	db $e4                                           ; $47fd: $e4
	ld bc, $0564                                     ; $47fe: $01 $64 $05
	ldh a, [c]                                       ; $4801: $f2
	add hl, bc                                       ; $4802: $09
	inc l                                            ; $4803: $2c
	pop hl                                           ; $4804: $e1
	ld [bc], a                                       ; $4805: $02
	inc bc                                           ; $4806: $03
	inc de                                           ; $4807: $13
	add d                                            ; $4808: $82
	ret nz                                           ; $4809: $c0

	dec de                                           ; $480a: $1b
	ret nc                                           ; $480b: $d0

	ld [bc], a                                       ; $480c: $02
	ret nc                                           ; $480d: $d0

	pop de                                           ; $480e: $d1
	ld b, $c0                                        ; $480f: $06 $c0
	ld bc, $02a0                                     ; $4811: $01 $a0 $02
	dec b                                            ; $4814: $05
	db $f4                                           ; $4815: $f4
	ld [bc], a                                       ; $4816: $02
	jp nc, $06d3                                     ; $4817: $d2 $d3 $06

	ret nz                                           ; $481a: $c0

	ld bc, $02a0                                     ; $481b: $01 $a0 $02
	dec b                                            ; $481e: $05
	ei                                               ; $481f: $fb
	ld bc, $06d4                                     ; $4820: $01 $d4 $06
	ret nz                                           ; $4823: $c0

	ld bc, $02a0                                     ; $4824: $01 $a0 $02
	ld b, $03                                        ; $4827: $06 $03
	pop hl                                           ; $4829: $e1
	ld [bc], a                                       ; $482a: $02
	inc bc                                           ; $482b: $03
	ld [hl], $e4                                     ; $482c: $36 $e4
	ld bc, $2834                                     ; $482e: $01 $34 $28
	ld b, $c0                                        ; $4831: $06 $c0
	ld bc, $02a0                                     ; $4833: $01 $a0 $02
	ld b, $0b                                        ; $4836: $06 $0b
	sub b                                            ; $4838: $90
	ld b, $12                                        ; $4839: $06 $12
	add hl, bc                                       ; $483b: $09
	inc l                                            ; $483c: $2c
	pop hl                                           ; $483d: $e1
	ld [bc], a                                       ; $483e: $02
	inc bc                                           ; $483f: $03
	rla                                              ; $4840: $17
	add d                                            ; $4841: $82
	ret nz                                           ; $4842: $c0

	dec de                                           ; $4843: $1b
	ret nc                                           ; $4844: $d0

	ld [bc], a                                       ; $4845: $02
	ret nc                                           ; $4846: $d0

	pop de                                           ; $4847: $d1
	ld b, $c0                                        ; $4848: $06 $c0
	ld bc, $02a0                                     ; $484a: $01 $a0 $02
	ld b, $19                                        ; $484d: $06 $19
	ld [bc], a                                       ; $484f: $02
	jp nc, $06d3                                     ; $4850: $d2 $d3 $06

	ret nz                                           ; $4853: $c0

	ld bc, $02a0                                     ; $4854: $01 $a0 $02
	ld b, $20                                        ; $4857: $06 $20
	ld bc, $06d4                                     ; $4859: $01 $d4 $06
	ret nz                                           ; $485c: $c0

	ld bc, $02a0                                     ; $485d: $01 $a0 $02
	ld b, $2e                                        ; $4860: $06 $2e
	pop hl                                           ; $4862: $e1
	ld [bc], a                                       ; $4863: $02
	inc bc                                           ; $4864: $03
	ccf                                              ; $4865: $3f
	db $e4                                           ; $4866: $e4
	nop                                              ; $4867: $00
	ei                                               ; $4868: $fb
	ld b, $33                                        ; $4869: $06 $33
	add hl, bc                                       ; $486b: $09
	inc l                                            ; $486c: $2c
	pop hl                                           ; $486d: $e1
	ld [bc], a                                       ; $486e: $02
	inc bc                                           ; $486f: $03
	rra                                              ; $4870: $1f
	add d                                            ; $4871: $82
	ret nz                                           ; $4872: $c0

	dec de                                           ; $4873: $1b
	ret nc                                           ; $4874: $d0

	ld [bc], a                                       ; $4875: $02
	ret nc                                           ; $4876: $d0

	pop de                                           ; $4877: $d1
	ld b, $c0                                        ; $4878: $06 $c0
	ld bc, $02a0                                     ; $487a: $01 $a0 $02
	ld b, $3b                                        ; $487d: $06 $3b
	ld [bc], a                                       ; $487f: $02
	jp nc, $06d3                                     ; $4880: $d2 $d3 $06

	ret nz                                           ; $4883: $c0

	ld bc, $02a0                                     ; $4884: $01 $a0 $02
	ld b, $46                                        ; $4887: $06 $46
	ld bc, $06d4                                     ; $4889: $01 $d4 $06
	ret nz                                           ; $488c: $c0

	ld bc, $02a0                                     ; $488d: $01 $a0 $02
	ld b, $4d                                        ; $4890: $06 $4d
	pop hl                                           ; $4892: $e1
	ld [bc], a                                       ; $4893: $02
	inc bc                                           ; $4894: $03
	ld d, c                                          ; $4895: $51
	db $e4                                           ; $4896: $e4
	nop                                              ; $4897: $00
	rlc [hl]                                         ; $4898: $cb $06
	ld d, c                                          ; $489a: $51
	add hl, bc                                       ; $489b: $09
	inc l                                            ; $489c: $2c
	pop hl                                           ; $489d: $e1
	ld [bc], a                                       ; $489e: $02
	inc bc                                           ; $489f: $03
	dec de                                           ; $48a0: $1b
	add d                                            ; $48a1: $82
	ret nz                                           ; $48a2: $c0

	dec de                                           ; $48a3: $1b
	ret nc                                           ; $48a4: $d0

	ld [bc], a                                       ; $48a5: $02
	ret nc                                           ; $48a6: $d0

	pop de                                           ; $48a7: $d1
	ld b, $c0                                        ; $48a8: $06 $c0
	ld bc, $02a0                                     ; $48aa: $01 $a0 $02
	ld b, $56                                        ; $48ad: $06 $56
	ld [bc], a                                       ; $48af: $02
	jp nc, $06d3                                     ; $48b0: $d2 $d3 $06

	ret nz                                           ; $48b3: $c0

	ld bc, $02a0                                     ; $48b4: $01 $a0 $02
	ld b, $61                                        ; $48b7: $06 $61
	ld bc, $06d4                                     ; $48b9: $01 $d4 $06
	ret nz                                           ; $48bc: $c0

	ld bc, $02a0                                     ; $48bd: $01 $a0 $02
	ld b, $66                                        ; $48c0: $06 $66
	pop hl                                           ; $48c2: $e1
	ld [bc], a                                       ; $48c3: $02
	inc bc                                           ; $48c4: $03
	ld c, b                                          ; $48c5: $48
	db $e4                                           ; $48c6: $e4
	nop                                              ; $48c7: $00
	sbc e                                            ; $48c8: $9b
	jr z, jr_07d_48d1                                ; $48c9: $28 $06

	ret nz                                           ; $48cb: $c0

	ld bc, $02a0                                     ; $48cc: $01 $a0 $02
	ld b, $6b                                        ; $48cf: $06 $6b

jr_07d_48d1:
	sub b                                            ; $48d1: $90
	ld b, $75                                        ; $48d2: $06 $75
	add hl, bc                                       ; $48d4: $09
	inc l                                            ; $48d5: $2c
	pop hl                                           ; $48d6: $e1
	ld [bc], a                                       ; $48d7: $02
	inc bc                                           ; $48d8: $03
	inc de                                           ; $48d9: $13
	add d                                            ; $48da: $82
	ret nz                                           ; $48db: $c0

	dec de                                           ; $48dc: $1b
	ret nc                                           ; $48dd: $d0

	ld [bc], a                                       ; $48de: $02
	ret nc                                           ; $48df: $d0

	pop de                                           ; $48e0: $d1
	ld b, $c0                                        ; $48e1: $06 $c0
	ld bc, $02a0                                     ; $48e3: $01 $a0 $02
	ld b, $77                                        ; $48e6: $06 $77
	ld [bc], a                                       ; $48e8: $02
	jp nc, $06d3                                     ; $48e9: $d2 $d3 $06

	ret nz                                           ; $48ec: $c0

	ld bc, $02a0                                     ; $48ed: $01 $a0 $02
	ld b, $7c                                        ; $48f0: $06 $7c
	ld bc, $06d4                                     ; $48f2: $01 $d4 $06
	ret nz                                           ; $48f5: $c0

	ld bc, $02a0                                     ; $48f6: $01 $a0 $02
	ld b, $83                                        ; $48f9: $06 $83
	pop hl                                           ; $48fb: $e1
	ld [bc], a                                       ; $48fc: $02
	inc bc                                           ; $48fd: $03
	ld [hl], $e4                                     ; $48fe: $36 $e4
	nop                                              ; $4900: $00
	ld h, d                                          ; $4901: $62
	ld b, $89                                        ; $4902: $06 $89
	add hl, bc                                       ; $4904: $09
	inc l                                            ; $4905: $2c
	pop hl                                           ; $4906: $e1
	ld [bc], a                                       ; $4907: $02
	inc bc                                           ; $4908: $03
	rra                                              ; $4909: $1f
	add d                                            ; $490a: $82
	ret nz                                           ; $490b: $c0

	dec de                                           ; $490c: $1b
	ret nc                                           ; $490d: $d0

	ld [bc], a                                       ; $490e: $02
	ret nc                                           ; $490f: $d0

	pop de                                           ; $4910: $d1
	ld b, $c0                                        ; $4911: $06 $c0
	ld bc, $02a0                                     ; $4913: $01 $a0 $02
	ld b, $8b                                        ; $4916: $06 $8b
	ld [bc], a                                       ; $4918: $02
	jp nc, $06d3                                     ; $4919: $d2 $d3 $06

	ret nz                                           ; $491c: $c0

	ld bc, $02a0                                     ; $491d: $01 $a0 $02
	ld b, $92                                        ; $4920: $06 $92
	ld bc, $06d4                                     ; $4922: $01 $d4 $06
	ret nz                                           ; $4925: $c0

	ld bc, $02a0                                     ; $4926: $01 $a0 $02
	ld b, $97                                        ; $4929: $06 $97
	pop hl                                           ; $492b: $e1
	ld [bc], a                                       ; $492c: $02
	inc bc                                           ; $492d: $03
	ld d, c                                          ; $492e: $51
	db $e4                                           ; $492f: $e4
	nop                                              ; $4930: $00
	ld [hl-], a                                      ; $4931: $32
	ld b, $9b                                        ; $4932: $06 $9b
	add hl, bc                                       ; $4934: $09
	inc l                                            ; $4935: $2c
	pop hl                                           ; $4936: $e1
	ld [bc], a                                       ; $4937: $02
	inc bc                                           ; $4938: $03
	rla                                              ; $4939: $17
	add d                                            ; $493a: $82
	ret nz                                           ; $493b: $c0

	dec de                                           ; $493c: $1b
	ret nc                                           ; $493d: $d0

	ld [bc], a                                       ; $493e: $02
	ret nc                                           ; $493f: $d0

	pop de                                           ; $4940: $d1
	ld b, $c0                                        ; $4941: $06 $c0
	ld bc, $02a0                                     ; $4943: $01 $a0 $02
	ld b, $9d                                        ; $4946: $06 $9d
	ld [bc], a                                       ; $4948: $02
	jp nc, $06d3                                     ; $4949: $d2 $d3 $06

	ret nz                                           ; $494c: $c0

	ld bc, $02a0                                     ; $494d: $01 $a0 $02
	ld b, $a8                                        ; $4950: $06 $a8
	ld bc, $06d4                                     ; $4952: $01 $d4 $06
	ret nz                                           ; $4955: $c0

	ld bc, $02a0                                     ; $4956: $01 $a0 $02
	ld b, $af                                        ; $4959: $06 $af
	pop hl                                           ; $495b: $e1
	ld [bc], a                                       ; $495c: $02
	inc bc                                           ; $495d: $03
	ccf                                              ; $495e: $3f
	db $e4                                           ; $495f: $e4
	nop                                              ; $4960: $00
	ld [bc], a                                       ; $4961: $02
	add hl, bc                                       ; $4962: $09
	ld c, $c1                                        ; $4963: $0e $c1
	ld e, c                                          ; $4965: $59
	db $e3                                           ; $4966: $e3
	nop                                              ; $4967: $00
	xor h                                            ; $4968: $ac
	ret nz                                           ; $4969: $c0

	ld d, [hl]                                       ; $496a: $56
	ret nc                                           ; $496b: $d0

	db $d3                                           ; $496c: $d3
	ret nc                                           ; $496d: $d0

	push hl                                          ; $496e: $e5
	inc de                                           ; $496f: $13
	nop                                              ; $4970: $00
	nop                                              ; $4971: $00
	add hl, bc                                       ; $4972: $09
	inc d                                            ; $4973: $14
	ret nc                                           ; $4974: $d0

	add e                                            ; $4975: $83
	ld bc, $d0de                                     ; $4976: $01 $de $d0
	ret nz                                           ; $4979: $c0

	ld bc, $02a0                                     ; $497a: $01 $a0 $02
	dec b                                            ; $497d: $05
	or b                                             ; $497e: $b0
	ret nz                                           ; $497f: $c0

	ld bc, $01a0                                     ; $4980: $01 $a0 $01
	dec b                                            ; $4983: $05
	cp c                                             ; $4984: $b9
	db $e4                                           ; $4985: $e4
	nop                                              ; $4986: $00
	ld [bc], a                                       ; $4987: $02
	add hl, bc                                       ; $4988: $09
	inc [hl]                                         ; $4989: $34
	pop bc                                           ; $498a: $c1
	ld e, c                                          ; $498b: $59
	db $e3                                           ; $498c: $e3
	nop                                              ; $498d: $00
	xor e                                            ; $498e: $ab
	ld h, b                                          ; $498f: $60
	add b                                            ; $4990: $80
	ld [bc], a                                       ; $4991: $02
	ld d, c                                          ; $4992: $51
	rla                                              ; $4993: $17
	and c                                            ; $4994: $a1
	add c                                            ; $4995: $81
	and b                                            ; $4996: $a0
	dec d                                            ; $4997: $15
	nop                                              ; $4998: $00
	inc bc                                           ; $4999: $03
	db $e4                                           ; $499a: $e4
	ld bc, $0155                                     ; $499b: $01 $55 $01
	inc bc                                           ; $499e: $03
	db $e4                                           ; $499f: $e4
	nop                                              ; $49a0: $00
	ld e, $ff                                        ; $49a1: $1e $ff
	rlca                                             ; $49a3: $07
	ld b, b                                          ; $49a4: $40
	add c                                            ; $49a5: $81
	and b                                            ; $49a6: $a0
	dec d                                            ; $49a7: $15
	db $e4                                           ; $49a8: $e4
	nop                                              ; $49a9: $00
	xor [hl]                                         ; $49aa: $ae
	ld [de], a                                       ; $49ab: $12
	and b                                            ; $49ac: $a0
	add b                                            ; $49ad: $80
	and b                                            ; $49ae: $a0
	rla                                              ; $49af: $17
	nop                                              ; $49b0: $00
	inc bc                                           ; $49b1: $03
	db $e4                                           ; $49b2: $e4
	nop                                              ; $49b3: $00
	dec bc                                           ; $49b4: $0b
	rst $38                                          ; $49b5: $ff
	rlca                                             ; $49b6: $07
	ld b, b                                          ; $49b7: $40
	add b                                            ; $49b8: $80
	and b                                            ; $49b9: $a0
	rla                                              ; $49ba: $17
	db $e4                                           ; $49bb: $e4
	nop                                              ; $49bc: $00
	sbc e                                            ; $49bd: $9b
	jr z, jr_07d_49c6                                ; $49be: $28 $06

	ret nz                                           ; $49c0: $c0

	ld bc, $02a0                                     ; $49c1: $01 $a0 $02
	ld b, $b3                                        ; $49c4: $06 $b3

jr_07d_49c6:
	sub b                                            ; $49c6: $90
	ld b, $c3                                        ; $49c7: $06 $c3
	add hl, bc                                       ; $49c9: $09
	inc l                                            ; $49ca: $2c
	pop hl                                           ; $49cb: $e1
	ld [bc], a                                       ; $49cc: $02
	inc bc                                           ; $49cd: $03
	inc de                                           ; $49ce: $13
	add d                                            ; $49cf: $82
	ret nz                                           ; $49d0: $c0

	dec de                                           ; $49d1: $1b
	ret nc                                           ; $49d2: $d0

	ld [bc], a                                       ; $49d3: $02
	ret nc                                           ; $49d4: $d0

	pop de                                           ; $49d5: $d1
	ld b, $c0                                        ; $49d6: $06 $c0
	ld bc, $02a0                                     ; $49d8: $01 $a0 $02
	ld b, $cd                                        ; $49db: $06 $cd
	ld [bc], a                                       ; $49dd: $02
	jp nc, $06d3                                     ; $49de: $d2 $d3 $06

	ret nz                                           ; $49e1: $c0

	ld bc, $02a0                                     ; $49e2: $01 $a0 $02
	ld b, $d3                                        ; $49e5: $06 $d3
	ld bc, $06d4                                     ; $49e7: $01 $d4 $06
	ret nz                                           ; $49ea: $c0

	ld bc, $02a0                                     ; $49eb: $01 $a0 $02
	ld b, $dc                                        ; $49ee: $06 $dc
	pop hl                                           ; $49f0: $e1
	ld [bc], a                                       ; $49f1: $02
	inc bc                                           ; $49f2: $03
	ld [hl], $e4                                     ; $49f3: $36 $e4
	ld bc, $0694                                     ; $49f5: $01 $94 $06
	db $e4                                           ; $49f8: $e4
	add hl, bc                                       ; $49f9: $09
	inc l                                            ; $49fa: $2c
	pop hl                                           ; $49fb: $e1
	ld [bc], a                                       ; $49fc: $02
	inc bc                                           ; $49fd: $03
	rra                                              ; $49fe: $1f
	add d                                            ; $49ff: $82
	ret nz                                           ; $4a00: $c0

	dec de                                           ; $4a01: $1b
	ret nc                                           ; $4a02: $d0

	ld [bc], a                                       ; $4a03: $02
	ret nc                                           ; $4a04: $d0

	pop de                                           ; $4a05: $d1
	ld b, $c0                                        ; $4a06: $06 $c0
	ld bc, $02a0                                     ; $4a08: $01 $a0 $02
	ld b, $ec                                        ; $4a0b: $06 $ec
	ld [bc], a                                       ; $4a0d: $02
	jp nc, $06d3                                     ; $4a0e: $d2 $d3 $06

	ret nz                                           ; $4a11: $c0

	ld bc, $02a0                                     ; $4a12: $01 $a0 $02
	ld b, $f0                                        ; $4a15: $06 $f0
	ld bc, $06d4                                     ; $4a17: $01 $d4 $06
	ret nz                                           ; $4a1a: $c0

	ld bc, $02a0                                     ; $4a1b: $01 $a0 $02
	ld b, $f6                                        ; $4a1e: $06 $f6
	pop hl                                           ; $4a20: $e1
	ld [bc], a                                       ; $4a21: $02
	inc bc                                           ; $4a22: $03
	ld d, c                                          ; $4a23: $51
	db $e4                                           ; $4a24: $e4
	ld bc, $0664                                     ; $4a25: $01 $64 $06
	db $fd                                           ; $4a28: $fd
	add hl, bc                                       ; $4a29: $09
	inc l                                            ; $4a2a: $2c
	pop hl                                           ; $4a2b: $e1
	ld [bc], a                                       ; $4a2c: $02
	inc bc                                           ; $4a2d: $03
	rla                                              ; $4a2e: $17
	add d                                            ; $4a2f: $82
	ret nz                                           ; $4a30: $c0

	dec de                                           ; $4a31: $1b
	ret nc                                           ; $4a32: $d0

	ld [bc], a                                       ; $4a33: $02
	ret nc                                           ; $4a34: $d0

	pop de                                           ; $4a35: $d1
	ld b, $c0                                        ; $4a36: $06 $c0
	ld bc, $02a0                                     ; $4a38: $01 $a0 $02
	rlca                                             ; $4a3b: $07
	dec b                                            ; $4a3c: $05
	ld [bc], a                                       ; $4a3d: $02
	jp nc, $06d3                                     ; $4a3e: $d2 $d3 $06

	ret nz                                           ; $4a41: $c0

	ld bc, $02a0                                     ; $4a42: $01 $a0 $02
	rlca                                             ; $4a45: $07
	add hl, bc                                       ; $4a46: $09
	ld bc, $06d4                                     ; $4a47: $01 $d4 $06
	ret nz                                           ; $4a4a: $c0

	ld bc, $02a0                                     ; $4a4b: $01 $a0 $02
	rlca                                             ; $4a4e: $07
	ld d, $e1                                        ; $4a4f: $16 $e1
	ld [bc], a                                       ; $4a51: $02
	inc bc                                           ; $4a52: $03
	ccf                                              ; $4a53: $3f
	db $e4                                           ; $4a54: $e4
	ld bc, $2834                                     ; $4a55: $01 $34 $28
	ld b, $c0                                        ; $4a58: $06 $c0
	ld bc, $02a0                                     ; $4a5a: $01 $a0 $02
	rlca                                             ; $4a5d: $07
	ld e, $90                                        ; $4a5e: $1e $90
	rlca                                             ; $4a60: $07
	dec h                                            ; $4a61: $25
	add hl, bc                                       ; $4a62: $09
	inc l                                            ; $4a63: $2c
	pop hl                                           ; $4a64: $e1
	ld [bc], a                                       ; $4a65: $02
	inc bc                                           ; $4a66: $03
	inc de                                           ; $4a67: $13
	add d                                            ; $4a68: $82
	ret nz                                           ; $4a69: $c0

	dec de                                           ; $4a6a: $1b
	ret nc                                           ; $4a6b: $d0

	ld [bc], a                                       ; $4a6c: $02
	ret nc                                           ; $4a6d: $d0

	pop de                                           ; $4a6e: $d1
	ld b, $c0                                        ; $4a6f: $06 $c0
	ld bc, $02a0                                     ; $4a71: $01 $a0 $02
	rlca                                             ; $4a74: $07
	dec l                                            ; $4a75: $2d
	ld [bc], a                                       ; $4a76: $02
	jp nc, $06d3                                     ; $4a77: $d2 $d3 $06

	ret nz                                           ; $4a7a: $c0

	ld bc, $02a0                                     ; $4a7b: $01 $a0 $02
	rlca                                             ; $4a7e: $07
	scf                                              ; $4a7f: $37
	ld bc, $06d4                                     ; $4a80: $01 $d4 $06
	ret nz                                           ; $4a83: $c0

	ld bc, $02a0                                     ; $4a84: $01 $a0 $02
	rlca                                             ; $4a87: $07
	dec a                                            ; $4a88: $3d
	pop hl                                           ; $4a89: $e1
	ld [bc], a                                       ; $4a8a: $02
	inc bc                                           ; $4a8b: $03
	dec l                                            ; $4a8c: $2d
	db $e4                                           ; $4a8d: $e4
	nop                                              ; $4a8e: $00
	ei                                               ; $4a8f: $fb
	rlca                                             ; $4a90: $07
	ld b, h                                          ; $4a91: $44
	add hl, bc                                       ; $4a92: $09
	inc l                                            ; $4a93: $2c
	pop hl                                           ; $4a94: $e1
	ld [bc], a                                       ; $4a95: $02
	inc bc                                           ; $4a96: $03
	rra                                              ; $4a97: $1f
	add d                                            ; $4a98: $82
	ret nz                                           ; $4a99: $c0

	dec de                                           ; $4a9a: $1b
	ret nc                                           ; $4a9b: $d0

	ld [bc], a                                       ; $4a9c: $02
	ret nc                                           ; $4a9d: $d0

	pop de                                           ; $4a9e: $d1
	ld b, $c0                                        ; $4a9f: $06 $c0
	ld bc, $02a0                                     ; $4aa1: $01 $a0 $02
	rlca                                             ; $4aa4: $07
	ld c, h                                          ; $4aa5: $4c
	ld [bc], a                                       ; $4aa6: $02
	jp nc, $06d3                                     ; $4aa7: $d2 $d3 $06

	ret nz                                           ; $4aaa: $c0

	ld bc, $02a0                                     ; $4aab: $01 $a0 $02
	rlca                                             ; $4aae: $07
	ld d, a                                          ; $4aaf: $57
	ld bc, $06d4                                     ; $4ab0: $01 $d4 $06
	ret nz                                           ; $4ab3: $c0

	ld bc, $02a0                                     ; $4ab4: $01 $a0 $02
	rlca                                             ; $4ab7: $07
	ld h, b                                          ; $4ab8: $60
	pop hl                                           ; $4ab9: $e1
	ld [bc], a                                       ; $4aba: $02
	inc bc                                           ; $4abb: $03
	ld d, c                                          ; $4abc: $51
	db $e4                                           ; $4abd: $e4
	nop                                              ; $4abe: $00
	rlc a                                            ; $4abf: $cb $07
	ld l, e                                          ; $4ac1: $6b
	add hl, bc                                       ; $4ac2: $09
	inc l                                            ; $4ac3: $2c
	pop hl                                           ; $4ac4: $e1
	ld [bc], a                                       ; $4ac5: $02
	inc bc                                           ; $4ac6: $03
	dec de                                           ; $4ac7: $1b
	add d                                            ; $4ac8: $82
	ret nz                                           ; $4ac9: $c0

	dec de                                           ; $4aca: $1b
	ret nc                                           ; $4acb: $d0

	ld [bc], a                                       ; $4acc: $02
	ret nc                                           ; $4acd: $d0

	pop de                                           ; $4ace: $d1
	ld b, $c0                                        ; $4acf: $06 $c0
	ld bc, $02a0                                     ; $4ad1: $01 $a0 $02
	rlca                                             ; $4ad4: $07
	ld l, a                                          ; $4ad5: $6f
	ld [bc], a                                       ; $4ad6: $02
	jp nc, $06d3                                     ; $4ad7: $d2 $d3 $06

	ret nz                                           ; $4ada: $c0

	ld bc, $02a0                                     ; $4adb: $01 $a0 $02
	rlca                                             ; $4ade: $07
	ld a, b                                          ; $4adf: $78
	ld bc, $06d4                                     ; $4ae0: $01 $d4 $06
	ret nz                                           ; $4ae3: $c0

	ld bc, $02a0                                     ; $4ae4: $01 $a0 $02
	rlca                                             ; $4ae7: $07
	ld a, [hl]                                       ; $4ae8: $7e
	pop hl                                           ; $4ae9: $e1
	ld [bc], a                                       ; $4aea: $02
	inc bc                                           ; $4aeb: $03
	ld c, b                                          ; $4aec: $48
	db $e4                                           ; $4aed: $e4
	nop                                              ; $4aee: $00
	sbc e                                            ; $4aef: $9b
	jr z, jr_07d_4af8                                ; $4af0: $28 $06

	ret nz                                           ; $4af2: $c0

	ld bc, $02a0                                     ; $4af3: $01 $a0 $02
	rlca                                             ; $4af6: $07
	add h                                            ; $4af7: $84

jr_07d_4af8:
	sub b                                            ; $4af8: $90
	rlca                                             ; $4af9: $07
	adc l                                            ; $4afa: $8d
	add hl, bc                                       ; $4afb: $09
	inc l                                            ; $4afc: $2c
	pop hl                                           ; $4afd: $e1
	ld [bc], a                                       ; $4afe: $02
	inc bc                                           ; $4aff: $03
	inc de                                           ; $4b00: $13
	add d                                            ; $4b01: $82
	ret nz                                           ; $4b02: $c0

	dec de                                           ; $4b03: $1b
	ret nc                                           ; $4b04: $d0

	ld [bc], a                                       ; $4b05: $02
	ret nc                                           ; $4b06: $d0

	pop de                                           ; $4b07: $d1
	ld b, $c0                                        ; $4b08: $06 $c0
	ld bc, $02a0                                     ; $4b0a: $01 $a0 $02
	rlca                                             ; $4b0d: $07
	adc a                                            ; $4b0e: $8f
	ld [bc], a                                       ; $4b0f: $02
	jp nc, $06d3                                     ; $4b10: $d2 $d3 $06

	ret nz                                           ; $4b13: $c0

	ld bc, $02a0                                     ; $4b14: $01 $a0 $02
	rlca                                             ; $4b17: $07
	scf                                              ; $4b18: $37
	ld bc, $06d4                                     ; $4b19: $01 $d4 $06
	ret nz                                           ; $4b1c: $c0

	ld bc, $02a0                                     ; $4b1d: $01 $a0 $02
	rlca                                             ; $4b20: $07
	sub l                                            ; $4b21: $95
	pop hl                                           ; $4b22: $e1
	ld [bc], a                                       ; $4b23: $02
	inc bc                                           ; $4b24: $03
	dec l                                            ; $4b25: $2d
	db $e4                                           ; $4b26: $e4
	nop                                              ; $4b27: $00
	ld h, d                                          ; $4b28: $62
	rlca                                             ; $4b29: $07
	sbc e                                            ; $4b2a: $9b
	add hl, bc                                       ; $4b2b: $09
	inc l                                            ; $4b2c: $2c
	pop hl                                           ; $4b2d: $e1
	ld [bc], a                                       ; $4b2e: $02
	inc bc                                           ; $4b2f: $03
	rra                                              ; $4b30: $1f
	add d                                            ; $4b31: $82
	ret nz                                           ; $4b32: $c0

	dec de                                           ; $4b33: $1b
	ret nc                                           ; $4b34: $d0

	ld [bc], a                                       ; $4b35: $02
	ret nc                                           ; $4b36: $d0

	pop de                                           ; $4b37: $d1
	ld b, $c0                                        ; $4b38: $06 $c0
	ld bc, $02a0                                     ; $4b3a: $01 $a0 $02
	rlca                                             ; $4b3d: $07
	sbc l                                            ; $4b3e: $9d
	ld [bc], a                                       ; $4b3f: $02
	jp nc, $06d3                                     ; $4b40: $d2 $d3 $06

	ret nz                                           ; $4b43: $c0

	ld bc, $02a0                                     ; $4b44: $01 $a0 $02
	rlca                                             ; $4b47: $07
	and e                                            ; $4b48: $a3
	ld bc, $06d4                                     ; $4b49: $01 $d4 $06
	ret nz                                           ; $4b4c: $c0

	ld bc, $02a0                                     ; $4b4d: $01 $a0 $02
	rlca                                             ; $4b50: $07
	xor d                                            ; $4b51: $aa
	pop hl                                           ; $4b52: $e1
	ld [bc], a                                       ; $4b53: $02
	inc bc                                           ; $4b54: $03
	ld d, c                                          ; $4b55: $51
	db $e4                                           ; $4b56: $e4
	nop                                              ; $4b57: $00
	ld [hl-], a                                      ; $4b58: $32
	rlca                                             ; $4b59: $07
	xor a                                            ; $4b5a: $af
	add hl, bc                                       ; $4b5b: $09
	inc l                                            ; $4b5c: $2c
	pop hl                                           ; $4b5d: $e1
	ld [bc], a                                       ; $4b5e: $02
	inc bc                                           ; $4b5f: $03
	rla                                              ; $4b60: $17
	add d                                            ; $4b61: $82
	ret nz                                           ; $4b62: $c0

	dec de                                           ; $4b63: $1b
	ret nc                                           ; $4b64: $d0

	ld [bc], a                                       ; $4b65: $02
	ret nc                                           ; $4b66: $d0

	pop de                                           ; $4b67: $d1
	ld b, $c0                                        ; $4b68: $06 $c0
	ld bc, $02a0                                     ; $4b6a: $01 $a0 $02
	rlca                                             ; $4b6d: $07
	or c                                             ; $4b6e: $b1
	ld [bc], a                                       ; $4b6f: $02
	jp nc, $06d3                                     ; $4b70: $d2 $d3 $06

	ret nz                                           ; $4b73: $c0

	ld bc, $02a0                                     ; $4b74: $01 $a0 $02
	rlca                                             ; $4b77: $07
	cp b                                             ; $4b78: $b8
	ld bc, $06d4                                     ; $4b79: $01 $d4 $06
	ret nz                                           ; $4b7c: $c0

	ld bc, $02a0                                     ; $4b7d: $01 $a0 $02
	rlca                                             ; $4b80: $07
	ret nz                                           ; $4b81: $c0

	pop hl                                           ; $4b82: $e1
	ld [bc], a                                       ; $4b83: $02
	inc bc                                           ; $4b84: $03
	ccf                                              ; $4b85: $3f
	db $e4                                           ; $4b86: $e4
	nop                                              ; $4b87: $00
	ld [bc], a                                       ; $4b88: $02
	add hl, bc                                       ; $4b89: $09
	ld c, $c1                                        ; $4b8a: $0e $c1
	ld e, c                                          ; $4b8c: $59
	db $e3                                           ; $4b8d: $e3
	nop                                              ; $4b8e: $00
	xor d                                            ; $4b8f: $aa
	ret nz                                           ; $4b90: $c0

	ld d, [hl]                                       ; $4b91: $56
	ret nc                                           ; $4b92: $d0

	call nc, $e5d0                                   ; $4b93: $d4 $d0 $e5
	inc de                                           ; $4b96: $13
	nop                                              ; $4b97: $00
	nop                                              ; $4b98: $00
	add hl, bc                                       ; $4b99: $09
	jr z, @-$2e                                      ; $4b9a: $28 $d0

	add e                                            ; $4b9c: $83
	ld bc, $d0de                                     ; $4b9d: $01 $de $d0
	ret nz                                           ; $4ba0: $c0

	ld bc, $02a0                                     ; $4ba1: $01 $a0 $02
	dec b                                            ; $4ba4: $05

jr_07d_4ba5:
	or b                                             ; $4ba5: $b0
	ret nz                                           ; $4ba6: $c0

	ld bc, $01a0                                     ; $4ba7: $01 $a0 $01
	dec b                                            ; $4baa: $05
	cp c                                             ; $4bab: $b9
	pop bc                                           ; $4bac: $c1
	ld e, c                                          ; $4bad: $59
	db $e3                                           ; $4bae: $e3
	nop                                              ; $4baf: $00
	or h                                             ; $4bb0: $b4
	and b                                            ; $4bb1: $a0
	add b                                            ; $4bb2: $80
	and b                                            ; $4bb3: $a0
	jr jr_07d_4bb6                                   ; $4bb4: $18 $00

jr_07d_4bb6:
	inc bc                                           ; $4bb6: $03
	db $e4                                           ; $4bb7: $e4
	nop                                              ; $4bb8: $00
	dec bc                                           ; $4bb9: $0b
	rst $38                                          ; $4bba: $ff
	rlca                                             ; $4bbb: $07
	ld b, b                                          ; $4bbc: $40
	add b                                            ; $4bbd: $80
	and b                                            ; $4bbe: $a0
	jr jr_07d_4ba5                                   ; $4bbf: $18 $e4

	nop                                              ; $4bc1: $00
	sbc e                                            ; $4bc2: $9b
	jr z, @+$08                                      ; $4bc3: $28 $06

	ret nz                                           ; $4bc5: $c0

	ld bc, $02a0                                     ; $4bc6: $01 $a0 $02
	rlca                                             ; $4bc9: $07
	jp z, $0790                                      ; $4bca: $ca $90 $07

	ret nc                                           ; $4bcd: $d0

	add hl, bc                                       ; $4bce: $09
	inc l                                            ; $4bcf: $2c
	pop hl                                           ; $4bd0: $e1
	ld [bc], a                                       ; $4bd1: $02
	inc bc                                           ; $4bd2: $03
	inc de                                           ; $4bd3: $13
	add d                                            ; $4bd4: $82
	ret nz                                           ; $4bd5: $c0

	dec de                                           ; $4bd6: $1b
	ret nc                                           ; $4bd7: $d0

	ld [bc], a                                       ; $4bd8: $02
	ret nc                                           ; $4bd9: $d0

	pop de                                           ; $4bda: $d1
	ld b, $c0                                        ; $4bdb: $06 $c0
	ld bc, $02a0                                     ; $4bdd: $01 $a0 $02
	rlca                                             ; $4be0: $07
	jp nc, $d202                                     ; $4be1: $d2 $02 $d2

	db $d3                                           ; $4be4: $d3
	ld b, $c0                                        ; $4be5: $06 $c0
	ld bc, $02a0                                     ; $4be7: $01 $a0 $02
	rlca                                             ; $4bea: $07
	db $dd                                           ; $4beb: $dd
	ld bc, $06d4                                     ; $4bec: $01 $d4 $06
	ret nz                                           ; $4bef: $c0

	ld bc, $02a0                                     ; $4bf0: $01 $a0 $02
	rlca                                             ; $4bf3: $07
	rst SubAFromBC                                          ; $4bf4: $e7
	pop hl                                           ; $4bf5: $e1
	ld [bc], a                                       ; $4bf6: $02
	inc bc                                           ; $4bf7: $03
	ld [hl], $e4                                     ; $4bf8: $36 $e4
	nop                                              ; $4bfa: $00
	ei                                               ; $4bfb: $fb
	rlca                                             ; $4bfc: $07
	ldh a, [$09]                                     ; $4bfd: $f0 $09
	inc l                                            ; $4bff: $2c
	pop hl                                           ; $4c00: $e1
	ld [bc], a                                       ; $4c01: $02
	inc bc                                           ; $4c02: $03
	rra                                              ; $4c03: $1f
	add d                                            ; $4c04: $82
	ret nz                                           ; $4c05: $c0

	dec de                                           ; $4c06: $1b
	ret nc                                           ; $4c07: $d0

	ld [bc], a                                       ; $4c08: $02
	ret nc                                           ; $4c09: $d0

	pop de                                           ; $4c0a: $d1
	ld b, $c0                                        ; $4c0b: $06 $c0
	ld bc, $02a0                                     ; $4c0d: $01 $a0 $02
	rlca                                             ; $4c10: $07
	ldh a, [c]                                       ; $4c11: $f2
	ld [bc], a                                       ; $4c12: $02
	jp nc, $06d3                                     ; $4c13: $d2 $d3 $06

	ret nz                                           ; $4c16: $c0

	ld bc, $02a0                                     ; $4c17: $01 $a0 $02
	rlca                                             ; $4c1a: $07
	ld sp, hl                                        ; $4c1b: $f9
	ld bc, $06d4                                     ; $4c1c: $01 $d4 $06
	ret nz                                           ; $4c1f: $c0

	ld bc, $02a0                                     ; $4c20: $01 $a0 $02
	ld [$e107], sp                                   ; $4c23: $08 $07 $e1
	ld [bc], a                                       ; $4c26: $02
	inc bc                                           ; $4c27: $03
	ld d, c                                          ; $4c28: $51
	db $e4                                           ; $4c29: $e4
	nop                                              ; $4c2a: $00
	rrc b                                            ; $4c2b: $cb $08
	ld de, $2c09                                     ; $4c2d: $11 $09 $2c
	pop hl                                           ; $4c30: $e1
	ld [bc], a                                       ; $4c31: $02
	inc bc                                           ; $4c32: $03
	rla                                              ; $4c33: $17
	add d                                            ; $4c34: $82
	ret nz                                           ; $4c35: $c0

	dec de                                           ; $4c36: $1b
	ret nc                                           ; $4c37: $d0

	ld [bc], a                                       ; $4c38: $02
	ret nc                                           ; $4c39: $d0

	pop de                                           ; $4c3a: $d1
	ld b, $c0                                        ; $4c3b: $06 $c0
	ld bc, $02a0                                     ; $4c3d: $01 $a0 $02
	ld [$0213], sp                                   ; $4c40: $08 $13 $02
	jp nc, $06d3                                     ; $4c43: $d2 $d3 $06

	ret nz                                           ; $4c46: $c0

	ld bc, $02a0                                     ; $4c47: $01 $a0 $02
	ld [$0119], sp                                   ; $4c4a: $08 $19 $01
	call nc, $c006                                   ; $4c4d: $d4 $06 $c0
	ld bc, $02a0                                     ; $4c50: $01 $a0 $02
	ld [$e125], sp                                   ; $4c53: $08 $25 $e1
	ld [bc], a                                       ; $4c56: $02
	inc bc                                           ; $4c57: $03
	ccf                                              ; $4c58: $3f
	db $e4                                           ; $4c59: $e4
	nop                                              ; $4c5a: $00
	sbc e                                            ; $4c5b: $9b
	jr z, @+$08                                      ; $4c5c: $28 $06

	ret nz                                           ; $4c5e: $c0

	ld bc, $02a0                                     ; $4c5f: $01 $a0 $02
	ld [$9031], sp                                   ; $4c62: $08 $31 $90
	ld [$0937], sp                                   ; $4c65: $08 $37 $09
	inc l                                            ; $4c68: $2c
	pop hl                                           ; $4c69: $e1
	ld [bc], a                                       ; $4c6a: $02
	inc bc                                           ; $4c6b: $03
	inc de                                           ; $4c6c: $13
	add d                                            ; $4c6d: $82
	ret nz                                           ; $4c6e: $c0

	dec de                                           ; $4c6f: $1b
	ret nc                                           ; $4c70: $d0

	ld [bc], a                                       ; $4c71: $02
	ret nc                                           ; $4c72: $d0

	pop de                                           ; $4c73: $d1
	ld b, $c0                                        ; $4c74: $06 $c0
	ld bc, $02a0                                     ; $4c76: $01 $a0 $02
	ld [$023d], sp                                   ; $4c79: $08 $3d $02
	jp nc, $06d3                                     ; $4c7c: $d2 $d3 $06

	ret nz                                           ; $4c7f: $c0

	ld bc, $02a0                                     ; $4c80: $01 $a0 $02
	ld [$014b], sp                   ; $4c83: $08 $4b $01
	call nc, $c006                                   ; $4c86: $d4 $06 $c0
	ld bc, $02a0                                     ; $4c89: $01 $a0 $02
	ld [$e156], sp                                   ; $4c8c: $08 $56 $e1
	ld [bc], a                                       ; $4c8f: $02
	inc bc                                           ; $4c90: $03
	ld [hl], $e4                                     ; $4c91: $36 $e4
	nop                                              ; $4c93: $00
	ld h, d                                          ; $4c94: $62
	ld [$0963], sp                                   ; $4c95: $08 $63 $09
	inc l                                            ; $4c98: $2c
	pop hl                                           ; $4c99: $e1
	ld [bc], a                                       ; $4c9a: $02
	inc bc                                           ; $4c9b: $03
	dec de                                           ; $4c9c: $1b
	add d                                            ; $4c9d: $82
	ret nz                                           ; $4c9e: $c0

	dec de                                           ; $4c9f: $1b
	ret nc                                           ; $4ca0: $d0

	ld [bc], a                                       ; $4ca1: $02
	ret nc                                           ; $4ca2: $d0

	pop de                                           ; $4ca3: $d1
	ld b, $c0                                        ; $4ca4: $06 $c0
	ld bc, $02a0                                     ; $4ca6: $01 $a0 $02
	ld [$0265], sp                                   ; $4ca9: $08 $65 $02
	jp nc, $06d3                                     ; $4cac: $d2 $d3 $06

	ret nz                                           ; $4caf: $c0

	ld bc, $02a0                                     ; $4cb0: $01 $a0 $02
	ld [$0170], sp                                   ; $4cb3: $08 $70 $01
	call nc, $c006                                   ; $4cb6: $d4 $06 $c0
	ld bc, $02a0                                     ; $4cb9: $01 $a0 $02
	ld [$e176], sp                                   ; $4cbc: $08 $76 $e1
	ld [bc], a                                       ; $4cbf: $02
	inc bc                                           ; $4cc0: $03
	ld c, b                                          ; $4cc1: $48
	db $e4                                           ; $4cc2: $e4
	nop                                              ; $4cc3: $00
	ld [hl-], a                                      ; $4cc4: $32
	ld [$097f], sp                                   ; $4cc5: $08 $7f $09
	inc l                                            ; $4cc8: $2c
	pop hl                                           ; $4cc9: $e1
	ld [bc], a                                       ; $4cca: $02
	inc bc                                           ; $4ccb: $03
	rla                                              ; $4ccc: $17
	add d                                            ; $4ccd: $82
	ret nz                                           ; $4cce: $c0

	dec de                                           ; $4ccf: $1b
	ret nc                                           ; $4cd0: $d0

	ld [bc], a                                       ; $4cd1: $02
	ret nc                                           ; $4cd2: $d0

	pop de                                           ; $4cd3: $d1
	ld b, $c0                                        ; $4cd4: $06 $c0
	ld bc, $02a0                                     ; $4cd6: $01 $a0 $02
	ld [$0282], sp                                   ; $4cd9: $08 $82 $02
	jp nc, $06d3                                     ; $4cdc: $d2 $d3 $06

	ret nz                                           ; $4cdf: $c0

	ld bc, $02a0                                     ; $4ce0: $01 $a0 $02
	ld [$0189], sp                                   ; $4ce3: $08 $89 $01
	call nc, $c006                                   ; $4ce6: $d4 $06 $c0
	ld bc, $02a0                                     ; $4ce9: $01 $a0 $02
	ld [$e18d], sp                                   ; $4cec: $08 $8d $e1
	ld [bc], a                                       ; $4cef: $02
	inc bc                                           ; $4cf0: $03
	ccf                                              ; $4cf1: $3f
	db $e4                                           ; $4cf2: $e4
	nop                                              ; $4cf3: $00
	ld [bc], a                                       ; $4cf4: $02
	add hl, bc                                       ; $4cf5: $09
	ld c, $c1                                        ; $4cf6: $0e $c1
	ld e, c                                          ; $4cf8: $59
	db $e3                                           ; $4cf9: $e3
	nop                                              ; $4cfa: $00
	or e                                             ; $4cfb: $b3
	ret nz                                           ; $4cfc: $c0

	ld d, [hl]                                       ; $4cfd: $56
	ret nc                                           ; $4cfe: $d0

	push de                                          ; $4cff: $d5
	ret nc                                           ; $4d00: $d0

	push hl                                          ; $4d01: $e5
	inc de                                           ; $4d02: $13
	nop                                              ; $4d03: $00
	nop                                              ; $4d04: $00
	add hl, bc                                       ; $4d05: $09
	inc d                                            ; $4d06: $14
	ret nc                                           ; $4d07: $d0

	add e                                            ; $4d08: $83
	ld bc, $d0de                                     ; $4d09: $01 $de $d0
	ret nz                                           ; $4d0c: $c0

	ld bc, $02a0                                     ; $4d0d: $01 $a0 $02
	dec b                                            ; $4d10: $05
	or b                                             ; $4d11: $b0
	ret nz                                           ; $4d12: $c0

	ld bc, $01a0                                     ; $4d13: $01 $a0 $01
	dec b                                            ; $4d16: $05
	cp c                                             ; $4d17: $b9
	db $e4                                           ; $4d18: $e4
	nop                                              ; $4d19: $00
	ld [bc], a                                       ; $4d1a: $02
	add hl, bc                                       ; $4d1b: $09
	ld hl, $59c1                                     ; $4d1c: $21 $c1 $59
	db $e3                                           ; $4d1f: $e3
	nop                                              ; $4d20: $00
	or [hl]                                          ; $4d21: $b6
	ret nz                                           ; $4d22: $c0

	ld bc, $02a0                                     ; $4d23: $01 $a0 $02
	ld [$e193], sp                                   ; $4d26: $08 $93 $e1
	ld [bc], a                                       ; $4d29: $02
	rlca                                             ; $4d2a: $07
	or [hl]                                          ; $4d2b: $b6
	and b                                            ; $4d2c: $a0
	add b                                            ; $4d2d: $80
	and b                                            ; $4d2e: $a0
	add hl, de                                       ; $4d2f: $19
	nop                                              ; $4d30: $00
	inc bc                                           ; $4d31: $03
	db $e4                                           ; $4d32: $e4
	nop                                              ; $4d33: $00
	dec bc                                           ; $4d34: $0b
	rst $38                                          ; $4d35: $ff
	rlca                                             ; $4d36: $07
	ld b, b                                          ; $4d37: $40
	add b                                            ; $4d38: $80
	and b                                            ; $4d39: $a0
	add hl, de                                       ; $4d3a: $19
	db $e4                                           ; $4d3b: $e4
	nop                                              ; $4d3c: $00
	sbc e                                            ; $4d3d: $9b
	jr z, @+$08                                      ; $4d3e: $28 $06

	ret nz                                           ; $4d40: $c0

	ld bc, $02a0                                     ; $4d41: $01 $a0 $02
	ld [$90a1], sp                                   ; $4d44: $08 $a1 $90
	ld [$09a6], sp                                   ; $4d47: $08 $a6 $09
	inc l                                            ; $4d4a: $2c
	pop hl                                           ; $4d4b: $e1
	ld [bc], a                                       ; $4d4c: $02
	inc bc                                           ; $4d4d: $03
	rrca                                             ; $4d4e: $0f
	add d                                            ; $4d4f: $82
	ret nz                                           ; $4d50: $c0

	dec de                                           ; $4d51: $1b
	ret nc                                           ; $4d52: $d0

	ld [bc], a                                       ; $4d53: $02
	ret nc                                           ; $4d54: $d0

	pop de                                           ; $4d55: $d1
	ld b, $c0                                        ; $4d56: $06 $c0
	ld bc, $02a0                                     ; $4d58: $01 $a0 $02
	ld [$02a8], sp                                   ; $4d5b: $08 $a8 $02
	jp nc, $06d3                                     ; $4d5e: $d2 $d3 $06

	ret nz                                           ; $4d61: $c0

	ld bc, $02a0                                     ; $4d62: $01 $a0 $02
	ld [$01b5], sp                                   ; $4d65: $08 $b5 $01
	call nc, $c006                                   ; $4d68: $d4 $06 $c0
	ld bc, $02a0                                     ; $4d6b: $01 $a0 $02
	ld [$e1be], sp                                   ; $4d6e: $08 $be $e1
	ld [bc], a                                       ; $4d71: $02
	inc bc                                           ; $4d72: $03
	dec l                                            ; $4d73: $2d
	db $e4                                           ; $4d74: $e4
	ld bc, $0835                                     ; $4d75: $01 $35 $08
	push bc                                          ; $4d78: $c5
	add hl, bc                                       ; $4d79: $09
	inc l                                            ; $4d7a: $2c
	pop hl                                           ; $4d7b: $e1
	ld [bc], a                                       ; $4d7c: $02
	inc bc                                           ; $4d7d: $03
	rra                                              ; $4d7e: $1f
	add d                                            ; $4d7f: $82
	ret nz                                           ; $4d80: $c0

	dec de                                           ; $4d81: $1b
	ret nc                                           ; $4d82: $d0

	ld [bc], a                                       ; $4d83: $02
	ret nc                                           ; $4d84: $d0

	pop de                                           ; $4d85: $d1
	ld b, $c0                                        ; $4d86: $06 $c0
	ld bc, $02a0                                     ; $4d88: $01 $a0 $02
	ld [$02c7], sp                                   ; $4d8b: $08 $c7 $02
	jp nc, $06d3                                     ; $4d8e: $d2 $d3 $06

	ret nz                                           ; $4d91: $c0

	ld bc, $02a0                                     ; $4d92: $01 $a0 $02
	ld [$01cc], sp                                   ; $4d95: $08 $cc $01
	call nc, $c006                                   ; $4d98: $d4 $06 $c0
	ld bc, $02a0                                     ; $4d9b: $01 $a0 $02
	ld [$e1d8], sp                                   ; $4d9e: $08 $d8 $e1
	ld [bc], a                                       ; $4da1: $02
	inc bc                                           ; $4da2: $03
	ld d, c                                          ; $4da3: $51
	db $e4                                           ; $4da4: $e4
	ld bc, SetWramBankAStoringCurrInHighByteInStackAfterReturn                                     ; $4da5: $01 $05 $08
	ldh [$09], a                                     ; $4da8: $e0 $09
	inc l                                            ; $4daa: $2c
	pop hl                                           ; $4dab: $e1
	ld [bc], a                                       ; $4dac: $02
	inc bc                                           ; $4dad: $03
	rla                                              ; $4dae: $17
	add d                                            ; $4daf: $82
	ret nz                                           ; $4db0: $c0

	dec de                                           ; $4db1: $1b
	ret nc                                           ; $4db2: $d0

	ld [bc], a                                       ; $4db3: $02
	ret nc                                           ; $4db4: $d0

	pop de                                           ; $4db5: $d1
	ld b, $c0                                        ; $4db6: $06 $c0
	ld bc, $02a0                                     ; $4db8: $01 $a0 $02
	ld [$02e7], sp                                   ; $4dbb: $08 $e7 $02
	jp nc, $06d3                                     ; $4dbe: $d2 $d3 $06

	ret nz                                           ; $4dc1: $c0

	ld bc, $02a0                                     ; $4dc2: $01 $a0 $02
	ld [$01fa], sp                                   ; $4dc5: $08 $fa $01
	call nc, $c006                                   ; $4dc8: $d4 $06 $c0
	ld bc, $02a0                                     ; $4dcb: $01 $a0 $02
	add hl, bc                                       ; $4dce: $09
	add hl, bc                                       ; $4dcf: $09
	pop hl                                           ; $4dd0: $e1
	ld [bc], a                                       ; $4dd1: $02
	inc bc                                           ; $4dd2: $03
	ccf                                              ; $4dd3: $3f
	db $e4                                           ; $4dd4: $e4
	nop                                              ; $4dd5: $00
	push de                                          ; $4dd6: $d5
	jr z, jr_07d_4ddf                                ; $4dd7: $28 $06

	ret nz                                           ; $4dd9: $c0

	ld bc, $02a0                                     ; $4dda: $01 $a0 $02
	add hl, bc                                       ; $4ddd: $09
	inc d                                            ; $4dde: $14

jr_07d_4ddf:
	ret nz                                           ; $4ddf: $c0

	ret                                              ; $4de0: $c9


	ret nz                                           ; $4de1: $c0

	ei                                               ; $4de2: $fb
	ret nz                                           ; $4de3: $c0

	add e                                            ; $4de4: $83
	jp nc, Jump_07d_78e0                             ; $4de5: $d2 $e0 $78

	jr nc, jr_07d_4df3                               ; $4de8: $30 $09

	inc e                                            ; $4dea: $1c
	add hl, bc                                       ; $4deb: $09
	inc l                                            ; $4dec: $2c
	pop hl                                           ; $4ded: $e1
	ld [bc], a                                       ; $4dee: $02
	inc bc                                           ; $4def: $03
	inc de                                           ; $4df0: $13
	add d                                            ; $4df1: $82
	ret nz                                           ; $4df2: $c0

jr_07d_4df3:
	dec de                                           ; $4df3: $1b
	ret nc                                           ; $4df4: $d0

	ld [bc], a                                       ; $4df5: $02
	ret nc                                           ; $4df6: $d0

	pop de                                           ; $4df7: $d1
	ld b, $c0                                        ; $4df8: $06 $c0
	ld bc, $02a0                                     ; $4dfa: $01 $a0 $02
	add hl, bc                                       ; $4dfd: $09
	ld e, $02                                        ; $4dfe: $1e $02
	jp nc, $06d3                                     ; $4e00: $d2 $d3 $06

	ret nz                                           ; $4e03: $c0

	ld bc, $02a0                                     ; $4e04: $01 $a0 $02
	add hl, bc                                       ; $4e07: $09
	jr z, @+$03                                      ; $4e08: $28 $01

	call nc, $c006                                   ; $4e0a: $d4 $06 $c0
	ld bc, $02a0                                     ; $4e0d: $01 $a0 $02
	add hl, bc                                       ; $4e10: $09
	ld [hl], $e1                                     ; $4e11: $36 $e1
	ld [bc], a                                       ; $4e13: $02
	inc bc                                           ; $4e14: $03
	ld [hl], $e4                                     ; $4e15: $36 $e4
	nop                                              ; $4e17: $00
	sub e                                            ; $4e18: $93
	jr nc, jr_07d_4e24                               ; $4e19: $30 $09

	ld b, d                                          ; $4e1b: $42
	add hl, bc                                       ; $4e1c: $09
	inc l                                            ; $4e1d: $2c
	pop hl                                           ; $4e1e: $e1
	ld [bc], a                                       ; $4e1f: $02
	inc bc                                           ; $4e20: $03
	dec de                                           ; $4e21: $1b
	add d                                            ; $4e22: $82
	ret nz                                           ; $4e23: $c0

jr_07d_4e24:
	dec de                                           ; $4e24: $1b
	ret nc                                           ; $4e25: $d0

	ld [bc], a                                       ; $4e26: $02
	ret nc                                           ; $4e27: $d0

	pop de                                           ; $4e28: $d1
	ld b, $c0                                        ; $4e29: $06 $c0
	ld bc, $02a0                                     ; $4e2b: $01 $a0 $02
	add hl, bc                                       ; $4e2e: $09
	ld b, h                                          ; $4e2f: $44
	ld [bc], a                                       ; $4e30: $02
	jp nc, $06d3                                     ; $4e31: $d2 $d3 $06

	ret nz                                           ; $4e34: $c0

	ld bc, $02a0                                     ; $4e35: $01 $a0 $02
	add hl, bc                                       ; $4e38: $09
	ld d, c                                          ; $4e39: $51
	ld bc, $06d4                                     ; $4e3a: $01 $d4 $06
	ret nz                                           ; $4e3d: $c0

	ld bc, $02a0                                     ; $4e3e: $01 $a0 $02
	add hl, bc                                       ; $4e41: $09
	ld h, b                                          ; $4e42: $60
	pop hl                                           ; $4e43: $e1
	ld [bc], a                                       ; $4e44: $02
	inc bc                                           ; $4e45: $03
	ld c, b                                          ; $4e46: $48
	db $e4                                           ; $4e47: $e4
	nop                                              ; $4e48: $00
	ld h, d                                          ; $4e49: $62
	add hl, bc                                       ; $4e4a: $09
	ld l, [hl]                                       ; $4e4b: $6e
	add hl, bc                                       ; $4e4c: $09
	inc l                                            ; $4e4d: $2c
	pop hl                                           ; $4e4e: $e1
	ld [bc], a                                       ; $4e4f: $02
	inc bc                                           ; $4e50: $03
	rra                                              ; $4e51: $1f
	add d                                            ; $4e52: $82
	ret nz                                           ; $4e53: $c0

	dec de                                           ; $4e54: $1b
	ret nc                                           ; $4e55: $d0

	ld [bc], a                                       ; $4e56: $02
	ret nc                                           ; $4e57: $d0

	pop de                                           ; $4e58: $d1
	ld b, $c0                                        ; $4e59: $06 $c0
	ld bc, $02a0                                     ; $4e5b: $01 $a0 $02
	add hl, bc                                       ; $4e5e: $09
	ld [hl], b                                       ; $4e5f: $70
	ld [bc], a                                       ; $4e60: $02
	jp nc, $06d3                                     ; $4e61: $d2 $d3 $06

	ret nz                                           ; $4e64: $c0

	ld bc, $02a0                                     ; $4e65: $01 $a0 $02
	add hl, bc                                       ; $4e68: $09
	ld a, e                                          ; $4e69: $7b
	ld bc, $06d4                                     ; $4e6a: $01 $d4 $06
	ret nz                                           ; $4e6d: $c0

	ld bc, $02a0                                     ; $4e6e: $01 $a0 $02
	add hl, bc                                       ; $4e71: $09
	adc c                                            ; $4e72: $89
	pop hl                                           ; $4e73: $e1
	ld [bc], a                                       ; $4e74: $02
	inc bc                                           ; $4e75: $03
	ld d, c                                          ; $4e76: $51
	db $e4                                           ; $4e77: $e4
	nop                                              ; $4e78: $00
	ld [hl-], a                                      ; $4e79: $32
	add hl, bc                                       ; $4e7a: $09
	sub h                                            ; $4e7b: $94
	add hl, bc                                       ; $4e7c: $09
	inc l                                            ; $4e7d: $2c
	pop hl                                           ; $4e7e: $e1
	ld [bc], a                                       ; $4e7f: $02
	inc bc                                           ; $4e80: $03
	dec de                                           ; $4e81: $1b
	add d                                            ; $4e82: $82
	ret nz                                           ; $4e83: $c0

	dec de                                           ; $4e84: $1b
	ret nc                                           ; $4e85: $d0

	ld [bc], a                                       ; $4e86: $02
	ret nc                                           ; $4e87: $d0

	pop de                                           ; $4e88: $d1
	ld b, $c0                                        ; $4e89: $06 $c0
	ld bc, $02a0                                     ; $4e8b: $01 $a0 $02
	add hl, bc                                       ; $4e8e: $09
	sub [hl]                                         ; $4e8f: $96
	ld [bc], a                                       ; $4e90: $02
	jp nc, $06d3                                     ; $4e91: $d2 $d3 $06

	ret nz                                           ; $4e94: $c0

	ld bc, $02a0                                     ; $4e95: $01 $a0 $02
	add hl, bc                                       ; $4e98: $09
	and h                                            ; $4e99: $a4
	ld bc, $06d4                                     ; $4e9a: $01 $d4 $06
	ret nz                                           ; $4e9d: $c0

	ld bc, $02a0                                     ; $4e9e: $01 $a0 $02
	add hl, bc                                       ; $4ea1: $09
	or c                                             ; $4ea2: $b1
	pop hl                                           ; $4ea3: $e1
	ld [bc], a                                       ; $4ea4: $02
	inc bc                                           ; $4ea5: $03
	ccf                                              ; $4ea6: $3f
	db $e4                                           ; $4ea7: $e4
	nop                                              ; $4ea8: $00
	ld [bc], a                                       ; $4ea9: $02
	add hl, bc                                       ; $4eaa: $09
	ld c, $c1                                        ; $4eab: $0e $c1
	ld e, c                                          ; $4ead: $59
	db $e3                                           ; $4eae: $e3
	nop                                              ; $4eaf: $00
	or l                                             ; $4eb0: $b5
	ret nz                                           ; $4eb1: $c0

	ld d, [hl]                                       ; $4eb2: $56
	ret nc                                           ; $4eb3: $d0

	sub $d0                                          ; $4eb4: $d6 $d0
	push hl                                          ; $4eb6: $e5
	inc de                                           ; $4eb7: $13
	nop                                              ; $4eb8: $00
	nop                                              ; $4eb9: $00
	add hl, bc                                       ; $4eba: $09
	ld d, d                                          ; $4ebb: $52
	ret nz                                           ; $4ebc: $c0

	ld bc, $02a0                                     ; $4ebd: $01 $a0 $02
	dec b                                            ; $4ec0: $05
	or b                                             ; $4ec1: $b0
	ret nz                                           ; $4ec2: $c0

	ld bc, $01a0                                     ; $4ec3: $01 $a0 $01
	dec b                                            ; $4ec6: $05
	cp c                                             ; $4ec7: $b9
	add e                                            ; $4ec8: $83
	adc e                                            ; $4ec9: $8b
	ld [bc], a                                       ; $4eca: $02
	ld b, d                                          ; $4ecb: $42
	ld [bc], a                                       ; $4ecc: $02
	or b                                             ; $4ecd: $b0
	ld [hl], e                                       ; $4ece: $73
	ld [$83d0], sp                                   ; $4ecf: $08 $d0 $83
	ld bc, $d1de                                     ; $4ed2: $01 $de $d1
	db $e4                                           ; $4ed5: $e4
	ld bc, $026a                                     ; $4ed6: $01 $6a $02
	or b                                             ; $4ed9: $b0
	ld l, a                                          ; $4eda: $6f
	ld [$83d0], sp                                   ; $4edb: $08 $d0 $83
	ld bc, $d2de                                     ; $4ede: $01 $de $d2
	db $e4                                           ; $4ee1: $e4
	ld [bc], a                                       ; $4ee2: $02
	add hl, bc                                       ; $4ee3: $09
	ld [bc], a                                       ; $4ee4: $02
	or b                                             ; $4ee5: $b0
	ld l, h                                          ; $4ee6: $6c
	ld [$83d0], sp                                   ; $4ee7: $08 $d0 $83
	ld bc, $d3de                                     ; $4eea: $01 $de $d3
	db $e4                                           ; $4eed: $e4
	ld [bc], a                                       ; $4eee: $02
	xor b                                            ; $4eef: $a8
	nop                                              ; $4ef0: $00
	inc e                                            ; $4ef1: $1c
	ret nc                                           ; $4ef2: $d0

	add e                                            ; $4ef3: $83
	ld bc, $d0de                                     ; $4ef4: $01 $de $d0
	pop bc                                           ; $4ef7: $c1
	ld e, c                                          ; $4ef8: $59
	db $e3                                           ; $4ef9: $e3
	nop                                              ; $4efa: $00
	sbc e                                            ; $4efb: $9b
	and b                                            ; $4efc: $a0
	add b                                            ; $4efd: $80
	and b                                            ; $4efe: $a0
	ld a, [de]                                       ; $4eff: $1a
	nop                                              ; $4f00: $00
	inc bc                                           ; $4f01: $03
	db $e4                                           ; $4f02: $e4
	nop                                              ; $4f03: $00
	dec bc                                           ; $4f04: $0b
	rst $38                                          ; $4f05: $ff
	rlca                                             ; $4f06: $07
	ld b, b                                          ; $4f07: $40
	add b                                            ; $4f08: $80
	and b                                            ; $4f09: $a0
	ld a, [de]                                       ; $4f0a: $1a
	db $e4                                           ; $4f0b: $e4
	nop                                              ; $4f0c: $00
	sbc e                                            ; $4f0d: $9b
	jr z, @+$08                                      ; $4f0e: $28 $06

	ret nz                                           ; $4f10: $c0

	ld bc, $02a0                                     ; $4f11: $01 $a0 $02
	add hl, bc                                       ; $4f14: $09
	call nz, $0990                                   ; $4f15: $c4 $90 $09
	rrc c                                            ; $4f18: $cb $09
	inc l                                            ; $4f1a: $2c
	pop hl                                           ; $4f1b: $e1
	ld [bc], a                                       ; $4f1c: $02
	inc bc                                           ; $4f1d: $03
	inc de                                           ; $4f1e: $13
	add d                                            ; $4f1f: $82
	ret nz                                           ; $4f20: $c0

	dec de                                           ; $4f21: $1b
	ret nc                                           ; $4f22: $d0

	ld [bc], a                                       ; $4f23: $02
	ret nc                                           ; $4f24: $d0

	pop de                                           ; $4f25: $d1
	ld b, $c0                                        ; $4f26: $06 $c0
	ld bc, $02a0                                     ; $4f28: $01 $a0 $02
	add hl, bc                                       ; $4f2b: $09
	call $d202                                       ; $4f2c: $cd $02 $d2
	db $d3                                           ; $4f2f: $d3
	ld b, $c0                                        ; $4f30: $06 $c0
	ld bc, $02a0                                     ; $4f32: $01 $a0 $02
	add hl, bc                                       ; $4f35: $09
	db $d3                                           ; $4f36: $d3
	ld bc, $06d4                                     ; $4f37: $01 $d4 $06
	ret nz                                           ; $4f3a: $c0

	ld bc, $02a0                                     ; $4f3b: $01 $a0 $02
	add hl, bc                                       ; $4f3e: $09
	jp c, $02e1                                      ; $4f3f: $da $e1 $02

	inc bc                                           ; $4f42: $03
	dec l                                            ; $4f43: $2d
	db $e4                                           ; $4f44: $e4
	inc bc                                           ; $4f45: $03
	add hl, hl                                       ; $4f46: $29
	add hl, bc                                       ; $4f47: $09
	ldh [$09], a                                     ; $4f48: $e0 $09
	inc l                                            ; $4f4a: $2c
	pop hl                                           ; $4f4b: $e1
	ld [bc], a                                       ; $4f4c: $02
	inc bc                                           ; $4f4d: $03
	rra                                              ; $4f4e: $1f
	add d                                            ; $4f4f: $82
	ret nz                                           ; $4f50: $c0

	dec de                                           ; $4f51: $1b
	ret nc                                           ; $4f52: $d0

	ld [bc], a                                       ; $4f53: $02
	ret nc                                           ; $4f54: $d0

	pop de                                           ; $4f55: $d1
	ld b, $c0                                        ; $4f56: $06 $c0
	ld bc, $02a0                                     ; $4f58: $01 $a0 $02
	add hl, bc                                       ; $4f5b: $09
	db $e3                                           ; $4f5c: $e3
	ld [bc], a                                       ; $4f5d: $02
	jp nc, $06d3                                     ; $4f5e: $d2 $d3 $06

	ret nz                                           ; $4f61: $c0

	ld bc, $02a0                                     ; $4f62: $01 $a0 $02
	add hl, bc                                       ; $4f65: $09
	db $ec                                           ; $4f66: $ec
	ld bc, $06d4                                     ; $4f67: $01 $d4 $06
	ret nz                                           ; $4f6a: $c0

	ld bc, $02a0                                     ; $4f6b: $01 $a0 $02
	add hl, bc                                       ; $4f6e: $09
	or $e1                                           ; $4f6f: $f6 $e1
	ld [bc], a                                       ; $4f71: $02
	inc bc                                           ; $4f72: $03
	ld d, c                                          ; $4f73: $51
	db $e4                                           ; $4f74: $e4
	ld [bc], a                                       ; $4f75: $02
	ld sp, hl                                        ; $4f76: $f9
	ld a, [bc]                                       ; $4f77: $0a
	ld bc, $2c09                                     ; $4f78: $01 $09 $2c
	pop hl                                           ; $4f7b: $e1
	ld [bc], a                                       ; $4f7c: $02
	inc bc                                           ; $4f7d: $03
	dec de                                           ; $4f7e: $1b
	add d                                            ; $4f7f: $82
	ret nz                                           ; $4f80: $c0

	dec de                                           ; $4f81: $1b
	ret nc                                           ; $4f82: $d0

	ld [bc], a                                       ; $4f83: $02
	ret nc                                           ; $4f84: $d0

	pop de                                           ; $4f85: $d1
	ld b, $c0                                        ; $4f86: $06 $c0
	ld bc, $02a0                                     ; $4f88: $01 $a0 $02
	ld a, [bc]                                       ; $4f8b: $0a
	rlca                                             ; $4f8c: $07
	ld [bc], a                                       ; $4f8d: $02
	jp nc, $06d3                                     ; $4f8e: $d2 $d3 $06

	ret nz                                           ; $4f91: $c0

	ld bc, $02a0                                     ; $4f92: $01 $a0 $02
	ld a, [bc]                                       ; $4f95: $0a
	ld c, $01                                        ; $4f96: $0e $01
	call nc, $c006                                   ; $4f98: $d4 $06 $c0
	ld bc, $02a0                                     ; $4f9b: $01 $a0 $02
	ld a, [bc]                                       ; $4f9e: $0a
	ld a, [de]                                       ; $4f9f: $1a
	pop hl                                           ; $4fa0: $e1
	ld [bc], a                                       ; $4fa1: $02
	inc bc                                           ; $4fa2: $03
	ld c, b                                          ; $4fa3: $48
	db $e4                                           ; $4fa4: $e4
	ld [bc], a                                       ; $4fa5: $02
	ret                                              ; $4fa6: $c9


	jr z, jr_07d_4faf                                ; $4fa7: $28 $06

	ret nz                                           ; $4fa9: $c0

	ld bc, $02a0                                     ; $4faa: $01 $a0 $02
	ld a, [bc]                                       ; $4fad: $0a
	ld [hl+], a                                      ; $4fae: $22

jr_07d_4faf:
	sub b                                            ; $4faf: $90
	ld a, [bc]                                       ; $4fb0: $0a
	dec hl                                           ; $4fb1: $2b
	add hl, bc                                       ; $4fb2: $09
	inc l                                            ; $4fb3: $2c
	pop hl                                           ; $4fb4: $e1
	ld [bc], a                                       ; $4fb5: $02
	inc bc                                           ; $4fb6: $03
	inc de                                           ; $4fb7: $13
	add d                                            ; $4fb8: $82
	ret nz                                           ; $4fb9: $c0

	dec de                                           ; $4fba: $1b
	ret nc                                           ; $4fbb: $d0

	ld [bc], a                                       ; $4fbc: $02
	ret nc                                           ; $4fbd: $d0

	pop de                                           ; $4fbe: $d1
	ld b, $c0                                        ; $4fbf: $06 $c0
	ld bc, $02a0                                     ; $4fc1: $01 $a0 $02
	ld a, [bc]                                       ; $4fc4: $0a
	dec l                                            ; $4fc5: $2d
	ld [bc], a                                       ; $4fc6: $02
	jp nc, $06d3                                     ; $4fc7: $d2 $d3 $06

	ret nz                                           ; $4fca: $c0

	ld bc, $02a0                                     ; $4fcb: $01 $a0 $02
	ld a, [bc]                                       ; $4fce: $0a
	scf                                              ; $4fcf: $37
	ld bc, $06d4                                     ; $4fd0: $01 $d4 $06
	ret nz                                           ; $4fd3: $c0

	ld bc, $02a0                                     ; $4fd4: $01 $a0 $02
	ld a, [bc]                                       ; $4fd7: $0a
	ld b, e                                          ; $4fd8: $43
	pop hl                                           ; $4fd9: $e1
	ld [bc], a                                       ; $4fda: $02
	inc bc                                           ; $4fdb: $03
	ld [hl], $e4                                     ; $4fdc: $36 $e4
	ld [bc], a                                       ; $4fde: $02
	sub b                                            ; $4fdf: $90
	ld a, [bc]                                       ; $4fe0: $0a
	ld c, l                                          ; $4fe1: $4d
	add hl, bc                                       ; $4fe2: $09
	inc l                                            ; $4fe3: $2c
	pop hl                                           ; $4fe4: $e1
	ld [bc], a                                       ; $4fe5: $02
	inc bc                                           ; $4fe6: $03
	rra                                              ; $4fe7: $1f
	add d                                            ; $4fe8: $82
	ret nz                                           ; $4fe9: $c0

	dec de                                           ; $4fea: $1b
	ret nc                                           ; $4feb: $d0

	ld [bc], a                                       ; $4fec: $02
	ret nc                                           ; $4fed: $d0

	pop de                                           ; $4fee: $d1
	ld b, $c0                                        ; $4fef: $06 $c0
	ld bc, $02a0                                     ; $4ff1: $01 $a0 $02
	ld a, [bc]                                       ; $4ff4: $0a
	ld c, a                                          ; $4ff5: $4f
	ld [bc], a                                       ; $4ff6: $02
	jp nc, $06d3                                     ; $4ff7: $d2 $d3 $06

	ret nz                                           ; $4ffa: $c0

	ld bc, $02a0                                     ; $4ffb: $01 $a0 $02
	ld a, [bc]                                       ; $4ffe: $0a
	ld d, [hl]                                       ; $4fff: $56
	ld bc, $06d4                                     ; $5000: $01 $d4 $06
	ret nz                                           ; $5003: $c0

	ld bc, $02a0                                     ; $5004: $01 $a0 $02
	ld a, [bc]                                       ; $5007: $0a
	ld h, d                                          ; $5008: $62
	pop hl                                           ; $5009: $e1
	ld [bc], a                                       ; $500a: $02
	inc bc                                           ; $500b: $03
	ld d, c                                          ; $500c: $51
	db $e4                                           ; $500d: $e4
	ld [bc], a                                       ; $500e: $02
	ld h, b                                          ; $500f: $60
	ld a, [bc]                                       ; $5010: $0a
	ld h, a                                          ; $5011: $67
	add hl, bc                                       ; $5012: $09
	inc l                                            ; $5013: $2c
	pop hl                                           ; $5014: $e1
	ld [bc], a                                       ; $5015: $02
	inc bc                                           ; $5016: $03
	dec de                                           ; $5017: $1b
	add d                                            ; $5018: $82
	ret nz                                           ; $5019: $c0

	dec de                                           ; $501a: $1b
	ret nc                                           ; $501b: $d0

	ld [bc], a                                       ; $501c: $02
	ret nc                                           ; $501d: $d0

	pop de                                           ; $501e: $d1
	ld b, $c0                                        ; $501f: $06 $c0
	ld bc, $02a0                                     ; $5021: $01 $a0 $02
	ld a, [bc]                                       ; $5024: $0a
	ld l, c                                          ; $5025: $69
	ld [bc], a                                       ; $5026: $02
	jp nc, $06d3                                     ; $5027: $d2 $d3 $06

	ret nz                                           ; $502a: $c0

	ld bc, $02a0                                     ; $502b: $01 $a0 $02
	ld a, [bc]                                       ; $502e: $0a
	ld [hl], e                                       ; $502f: $73
	ld bc, $06d4                                     ; $5030: $01 $d4 $06
	ret nz                                           ; $5033: $c0

	ld bc, $02a0                                     ; $5034: $01 $a0 $02
	ld a, [bc]                                       ; $5037: $0a
	ld a, h                                          ; $5038: $7c
	pop hl                                           ; $5039: $e1
	ld [bc], a                                       ; $503a: $02
	inc bc                                           ; $503b: $03
	ld c, b                                          ; $503c: $48
	db $e4                                           ; $503d: $e4
	ld [bc], a                                       ; $503e: $02
	jr nc, jr_07d_506f                               ; $503f: $30 $2e

	dec b                                            ; $5041: $05
	pop bc                                           ; $5042: $c1
	ld e, c                                          ; $5043: $59
	db $e3                                           ; $5044: $e3
	nop                                              ; $5045: $00
	sbc h                                            ; $5046: $9c
	and e                                            ; $5047: $a3
	add b                                            ; $5048: $80
	and b                                            ; $5049: $a0
	dec de                                           ; $504a: $1b
	nop                                              ; $504b: $00
	jr z, jr_07d_5054                                ; $504c: $28 $06

	ret nz                                           ; $504e: $c0

	ld bc, $02a0                                     ; $504f: $01 $a0 $02
	ld a, [bc]                                       ; $5052: $0a
	add c                                            ; $5053: $81

jr_07d_5054:
	sub b                                            ; $5054: $90
	ld a, [bc]                                       ; $5055: $0a
	add a                                            ; $5056: $87
	add hl, bc                                       ; $5057: $09
	inc l                                            ; $5058: $2c
	pop hl                                           ; $5059: $e1
	ld [bc], a                                       ; $505a: $02
	inc bc                                           ; $505b: $03
	rrca                                             ; $505c: $0f
	add d                                            ; $505d: $82
	ret nz                                           ; $505e: $c0

	dec de                                           ; $505f: $1b
	ret nc                                           ; $5060: $d0

	ld [bc], a                                       ; $5061: $02
	ret nc                                           ; $5062: $d0

	pop de                                           ; $5063: $d1
	ld b, $c0                                        ; $5064: $06 $c0
	ld bc, $02a0                                     ; $5066: $01 $a0 $02
	ld a, [bc]                                       ; $5069: $0a
	adc c                                            ; $506a: $89
	ld [bc], a                                       ; $506b: $02
	jp nc, $06d3                                     ; $506c: $d2 $d3 $06

jr_07d_506f:
	ret nz                                           ; $506f: $c0

	ld bc, $02a0                                     ; $5070: $01 $a0 $02
	dec b                                            ; $5073: $05
	ld a, e                                          ; $5074: $7b
	ld bc, $06d4                                     ; $5075: $01 $d4 $06
	ret nz                                           ; $5078: $c0

	ld bc, $02a0                                     ; $5079: $01 $a0 $02
	ld a, [bc]                                       ; $507c: $0a
	sub l                                            ; $507d: $95
	pop hl                                           ; $507e: $e1
	ld [bc], a                                       ; $507f: $02
	inc bc                                           ; $5080: $03
	dec l                                            ; $5081: $2d
	db $e4                                           ; $5082: $e4
	ld bc, $0aeb                                     ; $5083: $01 $eb $0a
	and d                                            ; $5086: $a2
	add hl, bc                                       ; $5087: $09
	inc l                                            ; $5088: $2c
	pop hl                                           ; $5089: $e1
	ld [bc], a                                       ; $508a: $02
	inc bc                                           ; $508b: $03
	dec de                                           ; $508c: $1b
	add d                                            ; $508d: $82
	ret nz                                           ; $508e: $c0

	dec de                                           ; $508f: $1b
	ret nc                                           ; $5090: $d0

	ld [bc], a                                       ; $5091: $02
	ret nc                                           ; $5092: $d0

	pop de                                           ; $5093: $d1
	ld b, $c0                                        ; $5094: $06 $c0
	ld bc, $02a0                                     ; $5096: $01 $a0 $02
	ld a, [bc]                                       ; $5099: $0a
	and h                                            ; $509a: $a4
	ld [bc], a                                       ; $509b: $02
	jp nc, $06d3                                     ; $509c: $d2 $d3 $06

	ret nz                                           ; $509f: $c0

	ld bc, $02a0                                     ; $50a0: $01 $a0 $02
	ld a, [bc]                                       ; $50a3: $0a
	xor h                                            ; $50a4: $ac
	ld bc, $06d4                                     ; $50a5: $01 $d4 $06
	ret nz                                           ; $50a8: $c0

	ld bc, $02a0                                     ; $50a9: $01 $a0 $02
	ld a, [bc]                                       ; $50ac: $0a
	cp c                                             ; $50ad: $b9
	pop hl                                           ; $50ae: $e1
	ld [bc], a                                       ; $50af: $02
	inc bc                                           ; $50b0: $03
	ld c, b                                          ; $50b1: $48
	db $e4                                           ; $50b2: $e4
	ld bc, $0abb                                     ; $50b3: $01 $bb $0a
	ret                                              ; $50b6: $c9


	add hl, bc                                       ; $50b7: $09
	inc l                                            ; $50b8: $2c
	pop hl                                           ; $50b9: $e1
	ld [bc], a                                       ; $50ba: $02
	inc bc                                           ; $50bb: $03
	rla                                              ; $50bc: $17
	add d                                            ; $50bd: $82
	ret nz                                           ; $50be: $c0

	dec de                                           ; $50bf: $1b
	ret nc                                           ; $50c0: $d0

	ld [bc], a                                       ; $50c1: $02
	ret nc                                           ; $50c2: $d0

	pop de                                           ; $50c3: $d1
	ld b, $c0                                        ; $50c4: $06 $c0
	ld bc, $02a0                                     ; $50c6: $01 $a0 $02
	ld a, [bc]                                       ; $50c9: $0a
	call z, $d202                                    ; $50ca: $cc $02 $d2
	db $d3                                           ; $50cd: $d3
	ld b, $c0                                        ; $50ce: $06 $c0
	ld bc, $02a0                                     ; $50d0: $01 $a0 $02
	ld a, [bc]                                       ; $50d3: $0a
	ret c                                            ; $50d4: $d8

	ld bc, $06d4                                     ; $50d5: $01 $d4 $06
	ret nz                                           ; $50d8: $c0

	ld bc, $02a0                                     ; $50d9: $01 $a0 $02
	ld a, [bc]                                       ; $50dc: $0a
	db $e3                                           ; $50dd: $e3
	pop hl                                           ; $50de: $e1
	ld [bc], a                                       ; $50df: $02
	inc bc                                           ; $50e0: $03
	ccf                                              ; $50e1: $3f
	db $e4                                           ; $50e2: $e4
	ld bc, $ff8b                                     ; $50e3: $01 $8b $ff
	add hl, bc                                       ; $50e6: $09
	inc bc                                           ; $50e7: $03
	ldh [rSB], a                                     ; $50e8: $e0 $01
	ld e, b                                          ; $50ea: $58
	ld l, $05                                        ; $50eb: $2e $05
	pop bc                                           ; $50ed: $c1
	ld e, c                                          ; $50ee: $59
	db $e3                                           ; $50ef: $e3
	nop                                              ; $50f0: $00
	sbc l                                            ; $50f1: $9d
	and e                                            ; $50f2: $a3
	add b                                            ; $50f3: $80
	and b                                            ; $50f4: $a0
	inc e                                            ; $50f5: $1c
	nop                                              ; $50f6: $00
	jr z, jr_07d_50ff                                ; $50f7: $28 $06

	ret nz                                           ; $50f9: $c0

	ld bc, $02a0                                     ; $50fa: $01 $a0 $02
	ld a, [bc]                                       ; $50fd: $0a
	rst SubAFromBC                                          ; $50fe: $e7

jr_07d_50ff:
	sub b                                            ; $50ff: $90
	ld a, [bc]                                       ; $5100: $0a
	pop af                                           ; $5101: $f1
	add hl, bc                                       ; $5102: $09
	inc l                                            ; $5103: $2c
	pop hl                                           ; $5104: $e1
	ld [bc], a                                       ; $5105: $02
	inc bc                                           ; $5106: $03
	inc de                                           ; $5107: $13
	add d                                            ; $5108: $82
	ret nz                                           ; $5109: $c0

	dec de                                           ; $510a: $1b
	ret nc                                           ; $510b: $d0

	ld [bc], a                                       ; $510c: $02
	ret nc                                           ; $510d: $d0

	pop de                                           ; $510e: $d1
	ld b, $c0                                        ; $510f: $06 $c0
	ld bc, $02a0                                     ; $5111: $01 $a0 $02
	ld a, [bc]                                       ; $5114: $0a
	di                                               ; $5115: $f3
	ld [bc], a                                       ; $5116: $02
	jp nc, $06d3                                     ; $5117: $d2 $d3 $06

	ret nz                                           ; $511a: $c0

	ld bc, $02a0                                     ; $511b: $01 $a0 $02
	ld a, [bc]                                       ; $511e: $0a
	ei                                               ; $511f: $fb
	ld bc, $06d4                                     ; $5120: $01 $d4 $06
	ret nz                                           ; $5123: $c0

	ld bc, $02a0                                     ; $5124: $01 $a0 $02
	dec bc                                           ; $5127: $0b
	inc b                                            ; $5128: $04
	pop hl                                           ; $5129: $e1
	ld [bc], a                                       ; $512a: $02
	inc bc                                           ; $512b: $03
	dec l                                            ; $512c: $2d
	db $e4                                           ; $512d: $e4
	ld bc, $0b40                                     ; $512e: $01 $40 $0b
	db $10                                           ; $5131: $10
	add hl, bc                                       ; $5132: $09
	inc l                                            ; $5133: $2c
	pop hl                                           ; $5134: $e1
	ld [bc], a                                       ; $5135: $02
	inc bc                                           ; $5136: $03
	rra                                              ; $5137: $1f
	add d                                            ; $5138: $82
	ret nz                                           ; $5139: $c0

	dec de                                           ; $513a: $1b
	ret nc                                           ; $513b: $d0

	ld [bc], a                                       ; $513c: $02
	ret nc                                           ; $513d: $d0

	pop de                                           ; $513e: $d1
	ld b, $c0                                        ; $513f: $06 $c0
	ld bc, $02a0                                     ; $5141: $01 $a0 $02
	dec bc                                           ; $5144: $0b
	ld [de], a                                       ; $5145: $12
	ld [bc], a                                       ; $5146: $02
	jp nc, $06d3                                     ; $5147: $d2 $d3 $06

	ret nz                                           ; $514a: $c0

	ld bc, $02a0                                     ; $514b: $01 $a0 $02
	dec bc                                           ; $514e: $0b
	dec de                                           ; $514f: $1b
	ld bc, $06d4                                     ; $5150: $01 $d4 $06
	ret nz                                           ; $5153: $c0

	ld bc, $02a0                                     ; $5154: $01 $a0 $02
	dec bc                                           ; $5157: $0b
	add hl, hl                                       ; $5158: $29
	pop hl                                           ; $5159: $e1
	ld [bc], a                                       ; $515a: $02
	inc bc                                           ; $515b: $03
	ld d, c                                          ; $515c: $51
	db $e4                                           ; $515d: $e4
	ld bc, $0b10                                     ; $515e: $01 $10 $0b
	ld sp, $2c09                                     ; $5161: $31 $09 $2c
	pop hl                                           ; $5164: $e1
	ld [bc], a                                       ; $5165: $02
	inc bc                                           ; $5166: $03
	inc de                                           ; $5167: $13
	add d                                            ; $5168: $82
	ret nz                                           ; $5169: $c0

	dec de                                           ; $516a: $1b
	ret nc                                           ; $516b: $d0

	ld [bc], a                                       ; $516c: $02
	ret nc                                           ; $516d: $d0

	pop de                                           ; $516e: $d1
	ld b, $c0                                        ; $516f: $06 $c0
	ld bc, $02a0                                     ; $5171: $01 $a0 $02
	dec bc                                           ; $5174: $0b
	inc sp                                           ; $5175: $33
	ld [bc], a                                       ; $5176: $02
	jp nc, $06d3                                     ; $5177: $d2 $d3 $06

	ret nz                                           ; $517a: $c0

	ld bc, $02a0                                     ; $517b: $01 $a0 $02
	dec bc                                           ; $517e: $0b
	inc a                                            ; $517f: $3c
	ld bc, $06d4                                     ; $5180: $01 $d4 $06
	ret nz                                           ; $5183: $c0

	ld bc, $02a0                                     ; $5184: $01 $a0 $02
	dec bc                                           ; $5187: $0b
	ld b, b                                          ; $5188: $40
	pop hl                                           ; $5189: $e1
	ld [bc], a                                       ; $518a: $02
	inc bc                                           ; $518b: $03
	ld [hl], $e4                                     ; $518c: $36 $e4
	nop                                              ; $518e: $00
	ldh [rIE], a                                     ; $518f: $e0 $ff
	add hl, bc                                       ; $5191: $09
	inc bc                                           ; $5192: $03
	ldh [rP1], a                                     ; $5193: $e0 $00
	xor l                                            ; $5195: $ad
	ld l, $05                                        ; $5196: $2e $05
	pop bc                                           ; $5198: $c1
	ld e, c                                          ; $5199: $59
	db $e3                                           ; $519a: $e3
	nop                                              ; $519b: $00
	sbc [hl]                                         ; $519c: $9e
	and e                                            ; $519d: $a3
	add b                                            ; $519e: $80
	and b                                            ; $519f: $a0
	dec e                                            ; $51a0: $1d
	nop                                              ; $51a1: $00
	jr z, jr_07d_51aa                                ; $51a2: $28 $06

	ret nz                                           ; $51a4: $c0

	ld bc, $02a0                                     ; $51a5: $01 $a0 $02
	dec bc                                           ; $51a8: $0b
	ld b, [hl]                                       ; $51a9: $46

jr_07d_51aa:
	sub b                                            ; $51aa: $90
	dec bc                                           ; $51ab: $0b
	ld c, [hl]                                       ; $51ac: $4e
	add hl, bc                                       ; $51ad: $09
	inc l                                            ; $51ae: $2c
	pop hl                                           ; $51af: $e1
	ld [bc], a                                       ; $51b0: $02
	inc bc                                           ; $51b1: $03
	inc de                                           ; $51b2: $13
	add d                                            ; $51b3: $82
	ret nz                                           ; $51b4: $c0

	dec de                                           ; $51b5: $1b
	ret nc                                           ; $51b6: $d0

	ld [bc], a                                       ; $51b7: $02
	ret nc                                           ; $51b8: $d0

	pop de                                           ; $51b9: $d1
	ld b, $c0                                        ; $51ba: $06 $c0
	ld bc, $02a0                                     ; $51bc: $01 $a0 $02
	dec bc                                           ; $51bf: $0b
	ld d, h                                          ; $51c0: $54
	ld [bc], a                                       ; $51c1: $02
	jp nc, $06d3                                     ; $51c2: $d2 $d3 $06

	ret nz                                           ; $51c5: $c0

	ld bc, $02a0                                     ; $51c6: $01 $a0 $02
	dec bc                                           ; $51c9: $0b
	ld d, a                                          ; $51ca: $57
	ld bc, $06d4                                     ; $51cb: $01 $d4 $06
	ret nz                                           ; $51ce: $c0

	ld bc, $02a0                                     ; $51cf: $01 $a0 $02
	dec bc                                           ; $51d2: $0b
	ld e, [hl]                                       ; $51d3: $5e
	pop hl                                           ; $51d4: $e1
	ld [bc], a                                       ; $51d5: $02
	inc bc                                           ; $51d6: $03
	dec l                                            ; $51d7: $2d
	db $e4                                           ; $51d8: $e4
	nop                                              ; $51d9: $00
	sub l                                            ; $51da: $95
	dec bc                                           ; $51db: $0b
	ld h, c                                          ; $51dc: $61
	add hl, bc                                       ; $51dd: $09
	inc l                                            ; $51de: $2c
	pop hl                                           ; $51df: $e1
	ld [bc], a                                       ; $51e0: $02
	inc bc                                           ; $51e1: $03
	dec de                                           ; $51e2: $1b
	add d                                            ; $51e3: $82
	ret nz                                           ; $51e4: $c0

	dec de                                           ; $51e5: $1b
	ret nc                                           ; $51e6: $d0

	ld [bc], a                                       ; $51e7: $02
	ret nc                                           ; $51e8: $d0

	pop de                                           ; $51e9: $d1
	ld b, $c0                                        ; $51ea: $06 $c0
	ld bc, $02a0                                     ; $51ec: $01 $a0 $02
	dec bc                                           ; $51ef: $0b
	ld h, a                                          ; $51f0: $67
	ld [bc], a                                       ; $51f1: $02
	jp nc, $06d3                                     ; $51f2: $d2 $d3 $06

	ret nz                                           ; $51f5: $c0

	ld bc, $02a0                                     ; $51f6: $01 $a0 $02
	dec bc                                           ; $51f9: $0b
	ld [hl], b                                       ; $51fa: $70
	ld bc, $06d4                                     ; $51fb: $01 $d4 $06
	ret nz                                           ; $51fe: $c0

	ld bc, $02a0                                     ; $51ff: $01 $a0 $02
	dec bc                                           ; $5202: $0b
	ld a, h                                          ; $5203: $7c
	pop hl                                           ; $5204: $e1
	ld [bc], a                                       ; $5205: $02
	inc bc                                           ; $5206: $03
	ld c, b                                          ; $5207: $48
	db $e4                                           ; $5208: $e4
	nop                                              ; $5209: $00
	ld h, l                                          ; $520a: $65
	dec bc                                           ; $520b: $0b
	add d                                            ; $520c: $82
	add hl, bc                                       ; $520d: $09
	inc l                                            ; $520e: $2c
	pop hl                                           ; $520f: $e1
	ld [bc], a                                       ; $5210: $02
	inc bc                                           ; $5211: $03
	rla                                              ; $5212: $17
	add d                                            ; $5213: $82
	ret nz                                           ; $5214: $c0

	dec de                                           ; $5215: $1b
	ret nc                                           ; $5216: $d0

	ld [bc], a                                       ; $5217: $02
	ret nc                                           ; $5218: $d0

	pop de                                           ; $5219: $d1
	ld b, $c0                                        ; $521a: $06 $c0
	ld bc, $02a0                                     ; $521c: $01 $a0 $02
	dec bc                                           ; $521f: $0b
	add a                                            ; $5220: $87
	ld [bc], a                                       ; $5221: $02
	jp nc, $06d3                                     ; $5222: $d2 $d3 $06

	ret nz                                           ; $5225: $c0

	ld bc, $02a0                                     ; $5226: $01 $a0 $02
	dec bc                                           ; $5229: $0b
	sub d                                            ; $522a: $92
	ld bc, $06d4                                     ; $522b: $01 $d4 $06
	ret nz                                           ; $522e: $c0

	ld bc, $02a0                                     ; $522f: $01 $a0 $02
	dec bc                                           ; $5232: $0b
	sbc c                                            ; $5233: $99
	pop hl                                           ; $5234: $e1
	ld [bc], a                                       ; $5235: $02
	inc bc                                           ; $5236: $03
	ccf                                              ; $5237: $3f
	db $e4                                           ; $5238: $e4
	nop                                              ; $5239: $00
	dec [hl]                                         ; $523a: $35
	rst $38                                          ; $523b: $ff
	add hl, bc                                       ; $523c: $09
	inc bc                                           ; $523d: $03
	ldh [rP1], a                                     ; $523e: $e0 $00
	ld [bc], a                                       ; $5240: $02
	inc l                                            ; $5241: $2c
	pop hl                                           ; $5242: $e1
	ld [bc], a                                       ; $5243: $02
	inc bc                                           ; $5244: $03
	dec de                                           ; $5245: $1b
	add d                                            ; $5246: $82
	ret nz                                           ; $5247: $c0

	dec de                                           ; $5248: $1b
	ret nc                                           ; $5249: $d0

	ld [bc], a                                       ; $524a: $02
	ret nc                                           ; $524b: $d0

	pop de                                           ; $524c: $d1
	ld b, $c0                                        ; $524d: $06 $c0
	ld bc, $02a0                                     ; $524f: $01 $a0 $02
	dec bc                                           ; $5252: $0b
	and c                                            ; $5253: $a1
	ld [bc], a                                       ; $5254: $02
	jp nc, $06d3                                     ; $5255: $d2 $d3 $06

	ret nz                                           ; $5258: $c0

	ld bc, $02a0                                     ; $5259: $01 $a0 $02
	dec bc                                           ; $525c: $0b
	xor b                                            ; $525d: $a8
	ld bc, $06d4                                     ; $525e: $01 $d4 $06
	ret nz                                           ; $5261: $c0

	ld bc, $02a0                                     ; $5262: $01 $a0 $02
	dec bc                                           ; $5265: $0b
	xor [hl]                                         ; $5266: $ae
	pop hl                                           ; $5267: $e1
	ld [bc], a                                       ; $5268: $02
	inc bc                                           ; $5269: $03
	ld c, b                                          ; $526a: $48
	db $e4                                           ; $526b: $e4
	nop                                              ; $526c: $00
	ld [bc], a                                       ; $526d: $02
	add hl, bc                                       ; $526e: $09
	cpl                                              ; $526f: $2f
	pop bc                                           ; $5270: $c1
	ld e, c                                          ; $5271: $59
	db $e3                                           ; $5272: $e3
	nop                                              ; $5273: $00
	sbc d                                            ; $5274: $9a
	add e                                            ; $5275: $83
	adc e                                            ; $5276: $8b
	ld [bc], a                                       ; $5277: $02
	ld b, d                                          ; $5278: $42
	ld [bc], a                                       ; $5279: $02
	or b                                             ; $527a: $b0
	ld [hl], e                                       ; $527b: $73
	dec b                                            ; $527c: $05
	ret nz                                           ; $527d: $c0

	ld d, [hl]                                       ; $527e: $56
	ret nc                                           ; $527f: $d0

	rst SubAFromHL                                          ; $5280: $d7
	pop de                                           ; $5281: $d1
	ld [bc], a                                       ; $5282: $02
	or b                                             ; $5283: $b0
	ld l, a                                          ; $5284: $6f
	dec b                                            ; $5285: $05
	ret nz                                           ; $5286: $c0

	ld d, [hl]                                       ; $5287: $56
	ret nc                                           ; $5288: $d0

	rst SubAFromHL                                          ; $5289: $d7
	jp nc, $b002                                     ; $528a: $d2 $02 $b0

	ld l, h                                          ; $528d: $6c
	dec b                                            ; $528e: $05
	ret nz                                           ; $528f: $c0

	ld d, [hl]                                       ; $5290: $56
	ret nc                                           ; $5291: $d0

	rst SubAFromHL                                          ; $5292: $d7
	db $d3                                           ; $5293: $d3
	nop                                              ; $5294: $00
	dec b                                            ; $5295: $05
	ret nz                                           ; $5296: $c0

	ld d, [hl]                                       ; $5297: $56
	ret nc                                           ; $5298: $d0

	rst SubAFromHL                                          ; $5299: $d7
	ret nc                                           ; $529a: $d0

	push hl                                          ; $529b: $e5
	inc de                                           ; $529c: $13
	nop                                              ; $529d: $00
	nop                                              ; $529e: $00
	add hl, bc                                       ; $529f: $09
	inc l                                            ; $52a0: $2c
	ret nc                                           ; $52a1: $d0

	add e                                            ; $52a2: $83
	ld bc, $d0de                                     ; $52a3: $01 $de $d0
	pop bc                                           ; $52a6: $c1
	jp z, $d0d0                                      ; $52a7: $ca $d0 $d0

	ret nz                                           ; $52aa: $c0

	ld bc, $02a0                                     ; $52ab: $01 $a0 $02
	dec b                                            ; $52ae: $05
	or b                                             ; $52af: $b0
	ret nz                                           ; $52b0: $c0

	ld bc, $01a0                                     ; $52b1: $01 $a0 $01
	dec b                                            ; $52b4: $05
	cp c                                             ; $52b5: $b9
	pop bc                                           ; $52b6: $c1
	ld e, c                                          ; $52b7: $59
	db $e3                                           ; $52b8: $e3
	nop                                              ; $52b9: $00
	and l                                            ; $52ba: $a5
	and b                                            ; $52bb: $a0
	add b                                            ; $52bc: $80
	and b                                            ; $52bd: $a0
	ld e, $00                                        ; $52be: $1e $00
	inc bc                                           ; $52c0: $03
	db $e4                                           ; $52c1: $e4
	nop                                              ; $52c2: $00
	dec bc                                           ; $52c3: $0b
	rst $38                                          ; $52c4: $ff
	rlca                                             ; $52c5: $07
	ld b, b                                          ; $52c6: $40
	add b                                            ; $52c7: $80
	and b                                            ; $52c8: $a0
	ld e, $e4                                        ; $52c9: $1e $e4
	nop                                              ; $52cb: $00
	sbc e                                            ; $52cc: $9b
	jr z, jr_07d_52d5                                ; $52cd: $28 $06

	ret nz                                           ; $52cf: $c0

	ld bc, $02a0                                     ; $52d0: $01 $a0 $02
	dec bc                                           ; $52d3: $0b
	or [hl]                                          ; $52d4: $b6

jr_07d_52d5:
	sub b                                            ; $52d5: $90
	dec bc                                           ; $52d6: $0b
	cp [hl]                                          ; $52d7: $be
	add hl, bc                                       ; $52d8: $09
	inc l                                            ; $52d9: $2c
	pop hl                                           ; $52da: $e1
	ld [bc], a                                       ; $52db: $02
	inc bc                                           ; $52dc: $03
	inc de                                           ; $52dd: $13
	add d                                            ; $52de: $82
	ret nz                                           ; $52df: $c0

	dec de                                           ; $52e0: $1b
	ret nc                                           ; $52e1: $d0

	ld [bc], a                                       ; $52e2: $02
	ret nc                                           ; $52e3: $d0

	pop de                                           ; $52e4: $d1
	ld b, $c0                                        ; $52e5: $06 $c0
	ld bc, $02a0                                     ; $52e7: $01 $a0 $02
	dec bc                                           ; $52ea: $0b
	ret nz                                           ; $52eb: $c0

	ld [bc], a                                       ; $52ec: $02
	jp nc, $06d3                                     ; $52ed: $d2 $d3 $06

	ret nz                                           ; $52f0: $c0

	ld bc, $02a0                                     ; $52f1: $01 $a0 $02
	dec bc                                           ; $52f4: $0b
	add $01                                          ; $52f5: $c6 $01
	call nc, $c006                                   ; $52f7: $d4 $06 $c0
	ld bc, $02a0                                     ; $52fa: $01 $a0 $02
	dec bc                                           ; $52fd: $0b
	adc $e1                                          ; $52fe: $ce $e1
	ld [bc], a                                       ; $5300: $02
	inc bc                                           ; $5301: $03
	ld [hl], $e4                                     ; $5302: $36 $e4
	nop                                              ; $5304: $00
	xor d                                            ; $5305: $aa
	dec bc                                           ; $5306: $0b
	db $d3                                           ; $5307: $d3
	add hl, bc                                       ; $5308: $09
	inc l                                            ; $5309: $2c
	pop hl                                           ; $530a: $e1
	ld [bc], a                                       ; $530b: $02
	inc bc                                           ; $530c: $03
	rra                                              ; $530d: $1f
	add d                                            ; $530e: $82
	ret nz                                           ; $530f: $c0

	dec de                                           ; $5310: $1b
	ret nc                                           ; $5311: $d0

	ld [bc], a                                       ; $5312: $02
	ret nc                                           ; $5313: $d0

	pop de                                           ; $5314: $d1
	ld b, $c0                                        ; $5315: $06 $c0
	ld bc, $02a0                                     ; $5317: $01 $a0 $02
	dec bc                                           ; $531a: $0b
	push de                                          ; $531b: $d5
	ld [bc], a                                       ; $531c: $02
	jp nc, $06d3                                     ; $531d: $d2 $d3 $06

	ret nz                                           ; $5320: $c0

	ld bc, $02a0                                     ; $5321: $01 $a0 $02
	dec bc                                           ; $5324: $0b
	db $dd                                           ; $5325: $dd
	ld bc, $06d4                                     ; $5326: $01 $d4 $06
	ret nz                                           ; $5329: $c0

	ld bc, $02a0                                     ; $532a: $01 $a0 $02
	dec bc                                           ; $532d: $0b
	jp hl                                            ; $532e: $e9


	pop hl                                           ; $532f: $e1
	ld [bc], a                                       ; $5330: $02
	inc bc                                           ; $5331: $03
	ld d, c                                          ; $5332: $51
	db $e4                                           ; $5333: $e4
	nop                                              ; $5334: $00
	ld a, d                                          ; $5335: $7a
	dec bc                                           ; $5336: $0b
	pop af                                           ; $5337: $f1
	add hl, bc                                       ; $5338: $09
	inc l                                            ; $5339: $2c
	pop hl                                           ; $533a: $e1
	ld [bc], a                                       ; $533b: $02
	inc bc                                           ; $533c: $03
	rla                                              ; $533d: $17
	add d                                            ; $533e: $82
	ret nz                                           ; $533f: $c0

	dec de                                           ; $5340: $1b
	ret nc                                           ; $5341: $d0

	ld [bc], a                                       ; $5342: $02
	ret nc                                           ; $5343: $d0

	pop de                                           ; $5344: $d1
	ld b, $c0                                        ; $5345: $06 $c0
	ld bc, $02a0                                     ; $5347: $01 $a0 $02
	dec bc                                           ; $534a: $0b
	di                                               ; $534b: $f3
	ld [bc], a                                       ; $534c: $02
	jp nc, $06d3                                     ; $534d: $d2 $d3 $06

	ret nz                                           ; $5350: $c0

	ld bc, $02a0                                     ; $5351: $01 $a0 $02
	dec bc                                           ; $5354: $0b
	cp $01                                           ; $5355: $fe $01
	call nc, $c006                                   ; $5357: $d4 $06 $c0
	ld bc, $02a0                                     ; $535a: $01 $a0 $02
	inc c                                            ; $535d: $0c
	ld [$02e1], sp                                   ; $535e: $08 $e1 $02
	inc bc                                           ; $5361: $03
	ccf                                              ; $5362: $3f
	db $e4                                           ; $5363: $e4
	nop                                              ; $5364: $00
	ld c, d                                          ; $5365: $4a
	jr z, @+$08                                      ; $5366: $28 $06

	ret nz                                           ; $5368: $c0

	ld bc, $02a0                                     ; $5369: $01 $a0 $02
	inc c                                            ; $536c: $0c
	ld c, $3f                                        ; $536d: $0e $3f
	inc c                                            ; $536f: $0c
	dec d                                            ; $5370: $15
	add hl, bc                                       ; $5371: $09
	ld de, $02e1                                     ; $5372: $11 $e1 $02
	inc bc                                           ; $5375: $03
	inc de                                           ; $5376: $13
	ret nz                                           ; $5377: $c0

	ld bc, $02a0                                     ; $5378: $01 $a0 $02
	inc c                                            ; $537b: $0c
	dec e                                            ; $537c: $1d
	pop hl                                           ; $537d: $e1
	ld [bc], a                                       ; $537e: $02
	inc bc                                           ; $537f: $03
	ld [hl], $e4                                     ; $5380: $36 $e4
	nop                                              ; $5382: $00
	inc l                                            ; $5383: $2c
	inc c                                            ; $5384: $0c
	daa                                              ; $5385: $27
	add hl, bc                                       ; $5386: $09
	ld de, $02e1                                     ; $5387: $11 $e1 $02
	inc bc                                           ; $538a: $03
	rra                                              ; $538b: $1f
	ret nz                                           ; $538c: $c0

	ld bc, $02a0                                     ; $538d: $01 $a0 $02
	inc c                                            ; $5390: $0c
	inc l                                            ; $5391: $2c
	pop hl                                           ; $5392: $e1
	ld [bc], a                                       ; $5393: $02
	inc bc                                           ; $5394: $03
	ld d, c                                          ; $5395: $51
	db $e4                                           ; $5396: $e4
	nop                                              ; $5397: $00
	rla                                              ; $5398: $17
	inc c                                            ; $5399: $0c
	inc [hl]                                         ; $539a: $34
	add hl, bc                                       ; $539b: $09
	ld de, $02e1                                     ; $539c: $11 $e1 $02
	inc bc                                           ; $539f: $03
	rla                                              ; $53a0: $17
	ret nz                                           ; $53a1: $c0

	ld bc, $02a0                                     ; $53a2: $01 $a0 $02
	inc c                                            ; $53a5: $0c
	ld a, [hl-]                                      ; $53a6: $3a
	pop hl                                           ; $53a7: $e1
	ld [bc], a                                       ; $53a8: $02
	inc bc                                           ; $53a9: $03
	ccf                                              ; $53aa: $3f
	db $e4                                           ; $53ab: $e4
	nop                                              ; $53ac: $00
	ld [bc], a                                       ; $53ad: $02
	add hl, bc                                       ; $53ae: $09
	ld c, $c1                                        ; $53af: $0e $c1
	ld e, c                                          ; $53b1: $59
	db $e3                                           ; $53b2: $e3
	nop                                              ; $53b3: $00
	and h                                            ; $53b4: $a4
	ret nz                                           ; $53b5: $c0

	ld d, [hl]                                       ; $53b6: $56
	ret nc                                           ; $53b7: $d0

	ret c                                            ; $53b8: $d8

	ret nc                                           ; $53b9: $d0

	push hl                                          ; $53ba: $e5
	inc de                                           ; $53bb: $13
	nop                                              ; $53bc: $00
	nop                                              ; $53bd: $00
	inc l                                            ; $53be: $2c
	inc c                                            ; $53bf: $0c
	ret nz                                           ; $53c0: $c0

	ld bc, $02a0                                     ; $53c1: $01 $a0 $02
	inc c                                            ; $53c4: $0c
	ld b, d                                          ; $53c5: $42
	ret nz                                           ; $53c6: $c0

	ld bc, $01a0                                     ; $53c7: $01 $a0 $01
	inc c                                            ; $53ca: $0c
	ld b, a                                          ; $53cb: $47
	add hl, de                                       ; $53cc: $19
	add b                                            ; $53cd: $80
	ld [bc], a                                       ; $53ce: $02
	ld d, [hl]                                       ; $53cf: $56
	ld [$0c0e], sp                                   ; $53d0: $08 $0e $0c
	ld c, h                                          ; $53d3: $4c
	add hl, bc                                       ; $53d4: $09
	inc bc                                           ; $53d5: $03
	db $e4                                           ; $53d6: $e4
	nop                                              ; $53d7: $00
	rrca                                             ; $53d8: $0f
	inc c                                            ; $53d9: $0c
	ld c, [hl]                                       ; $53da: $4e
	add hl, bc                                       ; $53db: $09
	inc bc                                           ; $53dc: $03
	db $e4                                           ; $53dd: $e4
	nop                                              ; $53de: $00
	inc l                                            ; $53df: $2c
	pop de                                           ; $53e0: $d1
	add hl, bc                                       ; $53e1: $09
	inc bc                                           ; $53e2: $03
	db $e4                                           ; $53e3: $e4
	nop                                              ; $53e4: $00
	ld [bc], a                                       ; $53e5: $02
	add hl, bc                                       ; $53e6: $09
	ld [hl+], a                                      ; $53e7: $22
	ret nc                                           ; $53e8: $d0

	add e                                            ; $53e9: $83
	ld bc, $d1de                                     ; $53ea: $01 $de $d1
	pop bc                                           ; $53ed: $c1
	ld e, c                                          ; $53ee: $59
	db $e3                                           ; $53ef: $e3
	nop                                              ; $53f0: $00
	sbc b                                            ; $53f1: $98
	ret nc                                           ; $53f2: $d0

	adc e                                            ; $53f3: $8b
	and b                                            ; $53f4: $a0
	rra                                              ; $53f5: $1f
	or b                                             ; $53f6: $b0
	ld a, b                                          ; $53f7: $78
	and b                                            ; $53f8: $a0
	add b                                            ; $53f9: $80
	and b                                            ; $53fa: $a0
	dec hl                                           ; $53fb: $2b
	nop                                              ; $53fc: $00
	inc bc                                           ; $53fd: $03
	db $e4                                           ; $53fe: $e4
	nop                                              ; $53ff: $00
	cpl                                              ; $5400: $2f
	rst $38                                          ; $5401: $ff
	rlca                                             ; $5402: $07
	ld b, b                                          ; $5403: $40
	add b                                            ; $5404: $80
	and b                                            ; $5405: $a0
	dec hl                                           ; $5406: $2b
	db $e4                                           ; $5407: $e4
	nop                                              ; $5408: $00
	cp a                                             ; $5409: $bf
	add hl, bc                                       ; $540a: $09
	ld [hl+], a                                      ; $540b: $22
	ret nc                                           ; $540c: $d0

	add e                                            ; $540d: $83
	ld bc, $d2de                                     ; $540e: $01 $de $d2
	pop bc                                           ; $5411: $c1
	ld e, c                                          ; $5412: $59
	db $e3                                           ; $5413: $e3
	nop                                              ; $5414: $00
	sbc c                                            ; $5415: $99
	ret nc                                           ; $5416: $d0

	adc e                                            ; $5417: $8b
	and b                                            ; $5418: $a0
	rra                                              ; $5419: $1f
	or b                                             ; $541a: $b0
	ld a, c                                          ; $541b: $79
	and b                                            ; $541c: $a0
	add b                                            ; $541d: $80
	and b                                            ; $541e: $a0
	inc l                                            ; $541f: $2c
	nop                                              ; $5420: $00
	inc bc                                           ; $5421: $03
	db $e4                                           ; $5422: $e4
	ld bc, $ff3d                                     ; $5423: $01 $3d $ff
	rlca                                             ; $5426: $07
	ld b, b                                          ; $5427: $40
	add b                                            ; $5428: $80
	and b                                            ; $5429: $a0
	inc l                                            ; $542a: $2c
	db $e4                                           ; $542b: $e4
	ld bc, $28cd                                     ; $542c: $01 $cd $28
	ld b, $c0                                        ; $542f: $06 $c0
	ld bc, $02a0                                     ; $5431: $01 $a0 $02
	inc c                                            ; $5434: $0c
	ld d, b                                          ; $5435: $50
	sub b                                            ; $5436: $90
	inc c                                            ; $5437: $0c
	ld e, b                                          ; $5438: $58
	add hl, bc                                       ; $5439: $09
	inc l                                            ; $543a: $2c
	pop hl                                           ; $543b: $e1
	ld [bc], a                                       ; $543c: $02
	inc bc                                           ; $543d: $03
	inc de                                           ; $543e: $13
	add d                                            ; $543f: $82
	ret nz                                           ; $5440: $c0

	dec de                                           ; $5441: $1b
	ret nc                                           ; $5442: $d0

	ld [bc], a                                       ; $5443: $02
	ret nc                                           ; $5444: $d0

	pop de                                           ; $5445: $d1
	ld b, $c0                                        ; $5446: $06 $c0
	ld bc, $02a0                                     ; $5448: $01 $a0 $02
	inc c                                            ; $544b: $0c
	ld e, a                                          ; $544c: $5f
	ld [bc], a                                       ; $544d: $02
	jp nc, $06d3                                     ; $544e: $d2 $d3 $06

	ret nz                                           ; $5451: $c0

	ld bc, $02a0                                     ; $5452: $01 $a0 $02
	inc c                                            ; $5455: $0c
	ld h, e                                          ; $5456: $63
	ld bc, $06d4                                     ; $5457: $01 $d4 $06
	ret nz                                           ; $545a: $c0

	ld bc, $02a0                                     ; $545b: $01 $a0 $02
	inc c                                            ; $545e: $0c
	ld [hl], b                                       ; $545f: $70
	pop hl                                           ; $5460: $e1
	ld [bc], a                                       ; $5461: $02
	inc bc                                           ; $5462: $03
	ld [hl], $e4                                     ; $5463: $36 $e4
	ld [bc], a                                       ; $5465: $02
	dec l                                            ; $5466: $2d
	inc c                                            ; $5467: $0c
	ld [hl], a                                       ; $5468: $77
	add hl, bc                                       ; $5469: $09
	inc l                                            ; $546a: $2c
	pop hl                                           ; $546b: $e1
	ld [bc], a                                       ; $546c: $02
	inc bc                                           ; $546d: $03
	rra                                              ; $546e: $1f
	add d                                            ; $546f: $82
	ret nz                                           ; $5470: $c0

	dec de                                           ; $5471: $1b
	ret nc                                           ; $5472: $d0

	ld [bc], a                                       ; $5473: $02
	ret nc                                           ; $5474: $d0

	pop de                                           ; $5475: $d1
	ld b, $c0                                        ; $5476: $06 $c0
	ld bc, $02a0                                     ; $5478: $01 $a0 $02
	inc c                                            ; $547b: $0c
	ld a, c                                          ; $547c: $79
	ld [bc], a                                       ; $547d: $02
	jp nc, $06d3                                     ; $547e: $d2 $d3 $06

	ret nz                                           ; $5481: $c0

	ld bc, $02a0                                     ; $5482: $01 $a0 $02
	inc c                                            ; $5485: $0c
	add b                                            ; $5486: $80
	ld bc, $06d4                                     ; $5487: $01 $d4 $06
	ret nz                                           ; $548a: $c0

	ld bc, $02a0                                     ; $548b: $01 $a0 $02
	inc c                                            ; $548e: $0c
	adc c                                            ; $548f: $89
	pop hl                                           ; $5490: $e1
	ld [bc], a                                       ; $5491: $02
	inc bc                                           ; $5492: $03
	ld d, c                                          ; $5493: $51
	db $e4                                           ; $5494: $e4
	ld bc, $0cfd                                     ; $5495: $01 $fd $0c
	sub d                                            ; $5498: $92
	add hl, bc                                       ; $5499: $09
	inc l                                            ; $549a: $2c
	pop hl                                           ; $549b: $e1
	ld [bc], a                                       ; $549c: $02
	inc bc                                           ; $549d: $03
	dec de                                           ; $549e: $1b
	add d                                            ; $549f: $82
	ret nz                                           ; $54a0: $c0

	dec de                                           ; $54a1: $1b
	ret nc                                           ; $54a2: $d0

	ld [bc], a                                       ; $54a3: $02
	ret nc                                           ; $54a4: $d0

	pop de                                           ; $54a5: $d1
	ld b, $c0                                        ; $54a6: $06 $c0
	ld bc, $02a0                                     ; $54a8: $01 $a0 $02
	inc c                                            ; $54ab: $0c
	sub h                                            ; $54ac: $94
	ld [bc], a                                       ; $54ad: $02
	jp nc, $06d3                                     ; $54ae: $d2 $d3 $06

	ret nz                                           ; $54b1: $c0

	ld bc, $02a0                                     ; $54b2: $01 $a0 $02
	inc c                                            ; $54b5: $0c
	sbc h                                            ; $54b6: $9c
	ld bc, $06d4                                     ; $54b7: $01 $d4 $06
	ret nz                                           ; $54ba: $c0

	ld bc, $02a0                                     ; $54bb: $01 $a0 $02
	inc c                                            ; $54be: $0c
	and [hl]                                         ; $54bf: $a6
	pop hl                                           ; $54c0: $e1
	ld [bc], a                                       ; $54c1: $02
	inc bc                                           ; $54c2: $03
	ld c, b                                          ; $54c3: $48
	db $e4                                           ; $54c4: $e4
	ld bc, $28cd                                     ; $54c5: $01 $cd $28
	ld b, $c0                                        ; $54c8: $06 $c0
	ld bc, $02a0                                     ; $54ca: $01 $a0 $02
	inc c                                            ; $54cd: $0c
	xor h                                            ; $54ce: $ac
	sub b                                            ; $54cf: $90
	inc c                                            ; $54d0: $0c
	or [hl]                                          ; $54d1: $b6
	add hl, bc                                       ; $54d2: $09
	inc l                                            ; $54d3: $2c
	pop hl                                           ; $54d4: $e1
	ld [bc], a                                       ; $54d5: $02
	inc bc                                           ; $54d6: $03
	inc de                                           ; $54d7: $13
	add d                                            ; $54d8: $82
	ret nz                                           ; $54d9: $c0

	dec de                                           ; $54da: $1b
	ret nc                                           ; $54db: $d0

	ld [bc], a                                       ; $54dc: $02
	ret nc                                           ; $54dd: $d0

	pop de                                           ; $54de: $d1
	ld b, $c0                                        ; $54df: $06 $c0
	ld bc, $02a0                                     ; $54e1: $01 $a0 $02
	inc c                                            ; $54e4: $0c
	cp b                                             ; $54e5: $b8
	ld [bc], a                                       ; $54e6: $02
	jp nc, $06d3                                     ; $54e7: $d2 $d3 $06

	ret nz                                           ; $54ea: $c0

	ld bc, $02a0                                     ; $54eb: $01 $a0 $02
	inc c                                            ; $54ee: $0c
	jp $d401                                         ; $54ef: $c3 $01 $d4


	ld b, $c0                                        ; $54f2: $06 $c0
	ld bc, $02a0                                     ; $54f4: $01 $a0 $02
	inc c                                            ; $54f7: $0c
	call z, $02e1                                    ; $54f8: $cc $e1 $02
	inc bc                                           ; $54fb: $03
	ld [hl], $e4                                     ; $54fc: $36 $e4
	ld bc, $0c94                                     ; $54fe: $01 $94 $0c
	jp nc, $2c09                                     ; $5501: $d2 $09 $2c

	pop hl                                           ; $5504: $e1
	ld [bc], a                                       ; $5505: $02
	inc bc                                           ; $5506: $03
	dec de                                           ; $5507: $1b
	add d                                            ; $5508: $82
	ret nz                                           ; $5509: $c0

	dec de                                           ; $550a: $1b
	ret nc                                           ; $550b: $d0

	ld [bc], a                                       ; $550c: $02
	ret nc                                           ; $550d: $d0

	pop de                                           ; $550e: $d1
	ld b, $c0                                        ; $550f: $06 $c0
	ld bc, $02a0                                     ; $5511: $01 $a0 $02
	inc c                                            ; $5514: $0c
	call nc, $d202                                   ; $5515: $d4 $02 $d2
	db $d3                                           ; $5518: $d3
	ld b, $c0                                        ; $5519: $06 $c0
	ld bc, $02a0                                     ; $551b: $01 $a0 $02
	inc c                                            ; $551e: $0c
	jp c, $d401                                      ; $551f: $da $01 $d4

	ld b, $c0                                        ; $5522: $06 $c0
	ld bc, $02a0                                     ; $5524: $01 $a0 $02
	inc c                                            ; $5527: $0c
	db $e4                                           ; $5528: $e4
	pop hl                                           ; $5529: $e1
	ld [bc], a                                       ; $552a: $02
	inc bc                                           ; $552b: $03
	ld c, b                                          ; $552c: $48
	db $e4                                           ; $552d: $e4
	ld bc, $0c64                                     ; $552e: $01 $64 $0c
	db $ec                                           ; $5531: $ec
	add hl, bc                                       ; $5532: $09
	inc l                                            ; $5533: $2c
	pop hl                                           ; $5534: $e1
	ld [bc], a                                       ; $5535: $02
	inc bc                                           ; $5536: $03
	rla                                              ; $5537: $17
	add d                                            ; $5538: $82
	ret nz                                           ; $5539: $c0

	dec de                                           ; $553a: $1b
	ret nc                                           ; $553b: $d0

	ld [bc], a                                       ; $553c: $02
	ret nc                                           ; $553d: $d0

	pop de                                           ; $553e: $d1
	ld b, $c0                                        ; $553f: $06 $c0
	ld bc, $02a0                                     ; $5541: $01 $a0 $02
	inc c                                            ; $5544: $0c
	xor $02                                          ; $5545: $ee $02
	jp nc, $06d3                                     ; $5547: $d2 $d3 $06

	ret nz                                           ; $554a: $c0

	ld bc, $02a0                                     ; $554b: $01 $a0 $02
	inc c                                            ; $554e: $0c
	db $fc                                           ; $554f: $fc
	ld bc, $06d4                                     ; $5550: $01 $d4 $06
	ret nz                                           ; $5553: $c0

	ld bc, $02a0                                     ; $5554: $01 $a0 $02
	dec c                                            ; $5557: $0d
	ld [bc], a                                       ; $5558: $02
	pop hl                                           ; $5559: $e1
	ld [bc], a                                       ; $555a: $02
	inc bc                                           ; $555b: $03
	ccf                                              ; $555c: $3f
	db $e4                                           ; $555d: $e4
	ld bc, $2834                                     ; $555e: $01 $34 $28
	ld b, $c0                                        ; $5561: $06 $c0
	ld bc, $02a0                                     ; $5563: $01 $a0 $02
	dec c                                            ; $5566: $0d
	rlca                                             ; $5567: $07
	sub b                                            ; $5568: $90
	dec c                                            ; $5569: $0d
	inc de                                           ; $556a: $13
	add hl, bc                                       ; $556b: $09
	inc l                                            ; $556c: $2c
	pop hl                                           ; $556d: $e1
	ld [bc], a                                       ; $556e: $02
	inc bc                                           ; $556f: $03
	inc de                                           ; $5570: $13
	add d                                            ; $5571: $82
	ret nz                                           ; $5572: $c0

	dec de                                           ; $5573: $1b
	ret nc                                           ; $5574: $d0

	ld [bc], a                                       ; $5575: $02
	ret nc                                           ; $5576: $d0

	pop de                                           ; $5577: $d1
	ld b, $c0                                        ; $5578: $06 $c0
	ld bc, $02a0                                     ; $557a: $01 $a0 $02
	dec c                                            ; $557d: $0d
	dec d                                            ; $557e: $15
	ld [bc], a                                       ; $557f: $02
	jp nc, $06d3                                     ; $5580: $d2 $d3 $06

	ret nz                                           ; $5583: $c0

	ld bc, $02a0                                     ; $5584: $01 $a0 $02
	dec c                                            ; $5587: $0d
	dec e                                            ; $5588: $1d
	ld bc, $06d4                                     ; $5589: $01 $d4 $06
	ret nz                                           ; $558c: $c0

	ld bc, $02a0                                     ; $558d: $01 $a0 $02
	dec c                                            ; $5590: $0d
	dec h                                            ; $5591: $25
	pop hl                                           ; $5592: $e1
	ld [bc], a                                       ; $5593: $02
	inc bc                                           ; $5594: $03
	ld [hl], $e4                                     ; $5595: $36 $e4
	nop                                              ; $5597: $00
	ei                                               ; $5598: $fb
	dec c                                            ; $5599: $0d
	ld sp, $2c09                                     ; $559a: $31 $09 $2c
	pop hl                                           ; $559d: $e1
	ld [bc], a                                       ; $559e: $02
	inc bc                                           ; $559f: $03
	rra                                              ; $55a0: $1f
	add d                                            ; $55a1: $82
	ret nz                                           ; $55a2: $c0

	dec de                                           ; $55a3: $1b
	ret nc                                           ; $55a4: $d0

	ld [bc], a                                       ; $55a5: $02
	ret nc                                           ; $55a6: $d0

	pop de                                           ; $55a7: $d1
	ld b, $c0                                        ; $55a8: $06 $c0
	ld bc, $02a0                                     ; $55aa: $01 $a0 $02
	dec c                                            ; $55ad: $0d
	inc sp                                           ; $55ae: $33
	ld [bc], a                                       ; $55af: $02
	jp nc, $06d3                                     ; $55b0: $d2 $d3 $06

	ret nz                                           ; $55b3: $c0

	ld bc, $02a0                                     ; $55b4: $01 $a0 $02
	dec c                                            ; $55b7: $0d
	inc a                                            ; $55b8: $3c
	ld bc, $06d4                                     ; $55b9: $01 $d4 $06
	ret nz                                           ; $55bc: $c0

	ld bc, $02a0                                     ; $55bd: $01 $a0 $02

Jump_07d_55c0:
	dec c                                            ; $55c0: $0d
	ld b, b                                          ; $55c1: $40
	pop hl                                           ; $55c2: $e1
	ld [bc], a                                       ; $55c3: $02
	inc bc                                           ; $55c4: $03
	ld d, c                                          ; $55c5: $51
	db $e4                                           ; $55c6: $e4
	nop                                              ; $55c7: $00
	rrc l                                            ; $55c8: $cb $0d
	ld b, l                                          ; $55ca: $45
	add hl, bc                                       ; $55cb: $09
	inc l                                            ; $55cc: $2c
	pop hl                                           ; $55cd: $e1
	ld [bc], a                                       ; $55ce: $02
	inc bc                                           ; $55cf: $03
	rla                                              ; $55d0: $17
	add d                                            ; $55d1: $82
	ret nz                                           ; $55d2: $c0

	dec de                                           ; $55d3: $1b
	ret nc                                           ; $55d4: $d0

	ld [bc], a                                       ; $55d5: $02
	ret nc                                           ; $55d6: $d0

	pop de                                           ; $55d7: $d1
	ld b, $c0                                        ; $55d8: $06 $c0
	ld bc, $02a0                                     ; $55da: $01 $a0 $02
	dec c                                            ; $55dd: $0d
	ld b, a                                          ; $55de: $47
	ld [bc], a                                       ; $55df: $02
	jp nc, $06d3                                     ; $55e0: $d2 $d3 $06

	ret nz                                           ; $55e3: $c0

	ld bc, $02a0                                     ; $55e4: $01 $a0 $02
	dec c                                            ; $55e7: $0d
	ld c, e                                          ; $55e8: $4b
	ld bc, $06d4                                     ; $55e9: $01 $d4 $06
	ret nz                                           ; $55ec: $c0

	ld bc, $02a0                                     ; $55ed: $01 $a0 $02
	dec c                                            ; $55f0: $0d
	ld d, l                                          ; $55f1: $55
	pop hl                                           ; $55f2: $e1
	ld [bc], a                                       ; $55f3: $02
	inc bc                                           ; $55f4: $03
	ccf                                              ; $55f5: $3f
	db $e4                                           ; $55f6: $e4
	nop                                              ; $55f7: $00
	sbc e                                            ; $55f8: $9b
	jr z, jr_07d_5601                                ; $55f9: $28 $06

	ret nz                                           ; $55fb: $c0

	ld bc, $02a0                                     ; $55fc: $01 $a0 $02
	dec c                                            ; $55ff: $0d
	ld e, b                                          ; $5600: $58

jr_07d_5601:
	sub b                                            ; $5601: $90
	dec c                                            ; $5602: $0d
	ld h, c                                          ; $5603: $61
	add hl, bc                                       ; $5604: $09
	inc l                                            ; $5605: $2c
	pop hl                                           ; $5606: $e1
	ld [bc], a                                       ; $5607: $02
	inc bc                                           ; $5608: $03
	inc de                                           ; $5609: $13
	add d                                            ; $560a: $82
	ret nz                                           ; $560b: $c0

	dec de                                           ; $560c: $1b
	ret nc                                           ; $560d: $d0

	ld [bc], a                                       ; $560e: $02
	ret nc                                           ; $560f: $d0

	pop de                                           ; $5610: $d1
	ld b, $c0                                        ; $5611: $06 $c0
	ld bc, $02a0                                     ; $5613: $01 $a0 $02
	dec c                                            ; $5616: $0d
	ld h, e                                          ; $5617: $63
	ld [bc], a                                       ; $5618: $02
	jp nc, $06d3                                     ; $5619: $d2 $d3 $06

	ret nz                                           ; $561c: $c0

	ld bc, $02a0                                     ; $561d: $01 $a0 $02
	dec c                                            ; $5620: $0d
	ld l, a                                          ; $5621: $6f
	ld bc, $06d4                                     ; $5622: $01 $d4 $06
	ret nz                                           ; $5625: $c0

	ld bc, $02a0                                     ; $5626: $01 $a0 $02
	dec c                                            ; $5629: $0d
	ld a, d                                          ; $562a: $7a
	pop hl                                           ; $562b: $e1
	ld [bc], a                                       ; $562c: $02
	inc bc                                           ; $562d: $03
	ld [hl], $e4                                     ; $562e: $36 $e4
	nop                                              ; $5630: $00
	ld h, d                                          ; $5631: $62
	dec c                                            ; $5632: $0d
	add c                                            ; $5633: $81
	add hl, bc                                       ; $5634: $09
	inc l                                            ; $5635: $2c
	pop hl                                           ; $5636: $e1
	ld [bc], a                                       ; $5637: $02
	inc bc                                           ; $5638: $03
	dec de                                           ; $5639: $1b
	add d                                            ; $563a: $82
	ret nz                                           ; $563b: $c0

	dec de                                           ; $563c: $1b
	ret nc                                           ; $563d: $d0

	ld [bc], a                                       ; $563e: $02
	ret nc                                           ; $563f: $d0

	pop de                                           ; $5640: $d1
	ld b, $c0                                        ; $5641: $06 $c0
	ld bc, $02a0                                     ; $5643: $01 $a0 $02
	dec c                                            ; $5646: $0d
	add e                                            ; $5647: $83
	ld [bc], a                                       ; $5648: $02
	jp nc, $06d3                                     ; $5649: $d2 $d3 $06

	ret nz                                           ; $564c: $c0

	ld bc, $02a0                                     ; $564d: $01 $a0 $02
	dec c                                            ; $5650: $0d
	add a                                            ; $5651: $87
	ld bc, $06d4                                     ; $5652: $01 $d4 $06
	ret nz                                           ; $5655: $c0

	ld bc, $02a0                                     ; $5656: $01 $a0 $02
	dec c                                            ; $5659: $0d
	sub d                                            ; $565a: $92
	pop hl                                           ; $565b: $e1
	ld [bc], a                                       ; $565c: $02
	inc bc                                           ; $565d: $03
	ld c, b                                          ; $565e: $48
	db $e4                                           ; $565f: $e4
	nop                                              ; $5660: $00
	ld [hl-], a                                      ; $5661: $32
	dec c                                            ; $5662: $0d
	sbc d                                            ; $5663: $9a
	add hl, bc                                       ; $5664: $09
	inc l                                            ; $5665: $2c
	pop hl                                           ; $5666: $e1
	ld [bc], a                                       ; $5667: $02
	inc bc                                           ; $5668: $03
	rla                                              ; $5669: $17
	add d                                            ; $566a: $82
	ret nz                                           ; $566b: $c0

	dec de                                           ; $566c: $1b
	ret nc                                           ; $566d: $d0

	ld [bc], a                                       ; $566e: $02
	ret nc                                           ; $566f: $d0

	pop de                                           ; $5670: $d1
	ld b, $c0                                        ; $5671: $06 $c0
	ld bc, $02a0                                     ; $5673: $01 $a0 $02
	dec c                                            ; $5676: $0d
	sbc h                                            ; $5677: $9c
	ld [bc], a                                       ; $5678: $02
	jp nc, $06d3                                     ; $5679: $d2 $d3 $06

	ret nz                                           ; $567c: $c0

	ld bc, $02a0                                     ; $567d: $01 $a0 $02
	dec c                                            ; $5680: $0d
	and h                                            ; $5681: $a4
	ld bc, $06d4                                     ; $5682: $01 $d4 $06
	ret nz                                           ; $5685: $c0

	ld bc, $02a0                                     ; $5686: $01 $a0 $02
	dec c                                            ; $5689: $0d
	xor c                                            ; $568a: $a9
	pop hl                                           ; $568b: $e1
	ld [bc], a                                       ; $568c: $02
	inc bc                                           ; $568d: $03
	ccf                                              ; $568e: $3f
	db $e4                                           ; $568f: $e4
	nop                                              ; $5690: $00
	ld [bc], a                                       ; $5691: $02
	add hl, bc                                       ; $5692: $09
	rra                                              ; $5693: $1f
	pop bc                                           ; $5694: $c1
	ld e, c                                          ; $5695: $59
	db $e3                                           ; $5696: $e3
	nop                                              ; $5697: $00
	sub a                                            ; $5698: $97
	add c                                            ; $5699: $81
	adc e                                            ; $569a: $8b
	and b                                            ; $569b: $a0
	rra                                              ; $569c: $1f
	ld [bc], a                                       ; $569d: $02
	or b                                             ; $569e: $b0
	ld a, b                                          ; $569f: $78
	dec b                                            ; $56a0: $05
	ret nz                                           ; $56a1: $c0

	ld d, [hl]                                       ; $56a2: $56
	ret nc                                           ; $56a3: $d0

	reti                                             ; $56a4: $d9


	pop de                                           ; $56a5: $d1
	ld [bc], a                                       ; $56a6: $02
	or b                                             ; $56a7: $b0
	ld a, c                                          ; $56a8: $79
	dec b                                            ; $56a9: $05
	ret nz                                           ; $56aa: $c0

	ld d, [hl]                                       ; $56ab: $56
	ret nc                                           ; $56ac: $d0

	reti                                             ; $56ad: $d9


	jp nc, $13e5                                     ; $56ae: $d2 $e5 $13

	nop                                              ; $56b1: $00
	nop                                              ; $56b2: $00
	sbc c                                            ; $56b3: $99
	inc b                                            ; $56b4: $04
	add hl, bc                                       ; $56b5: $09
	jr z, @-$2e                                      ; $56b6: $28 $d0

	add e                                            ; $56b8: $83
	ld bc, $d0de                                     ; $56b9: $01 $de $d0
	ret nz                                           ; $56bc: $c0

	ld bc, $02a0                                     ; $56bd: $01 $a0 $02
	nop                                              ; $56c0: $00
	ld bc, $01c0                                     ; $56c1: $01 $c0 $01
	and b                                            ; $56c4: $a0
	ld bc, $0a00                                     ; $56c5: $01 $00 $0a
	pop bc                                           ; $56c8: $c1
	ld e, c                                          ; $56c9: $59
	db $e3                                           ; $56ca: $e3
	nop                                              ; $56cb: $00
	cp l                                             ; $56cc: $bd
	and b                                            ; $56cd: $a0
	add b                                            ; $56ce: $80
	and b                                            ; $56cf: $a0
	nop                                              ; $56d0: $00
	nop                                              ; $56d1: $00
	inc bc                                           ; $56d2: $03
	db $e4                                           ; $56d3: $e4
	nop                                              ; $56d4: $00
	dec bc                                           ; $56d5: $0b
	rst $38                                          ; $56d6: $ff
	rlca                                             ; $56d7: $07
	ld b, b                                          ; $56d8: $40
	add b                                            ; $56d9: $80
	and b                                            ; $56da: $a0
	nop                                              ; $56db: $00
	db $e4                                           ; $56dc: $e4
	nop                                              ; $56dd: $00
	sbc e                                            ; $56de: $9b
	jr z, jr_07d_56e7                                ; $56df: $28 $06

	ret nz                                           ; $56e1: $c0

	ld bc, $02a0                                     ; $56e2: $01 $a0 $02
	nop                                              ; $56e5: $00
	rrca                                             ; $56e6: $0f

jr_07d_56e7:
	sub b                                            ; $56e7: $90
	nop                                              ; $56e8: $00
	ld d, $09                                        ; $56e9: $16 $09
	inc l                                            ; $56eb: $2c
	pop hl                                           ; $56ec: $e1
	ld [bc], a                                       ; $56ed: $02
	inc bc                                           ; $56ee: $03
	inc de                                           ; $56ef: $13
	add d                                            ; $56f0: $82
	ret nz                                           ; $56f1: $c0

	dec de                                           ; $56f2: $1b
	ret nc                                           ; $56f3: $d0

	ld [bc], a                                       ; $56f4: $02
	ret nc                                           ; $56f5: $d0

	pop de                                           ; $56f6: $d1
	ld b, $c0                                        ; $56f7: $06 $c0
	ld bc, $02a0                                     ; $56f9: $01 $a0 $02
	nop                                              ; $56fc: $00
	add hl, de                                       ; $56fd: $19
	ld [bc], a                                       ; $56fe: $02
	jp nc, $06d3                                     ; $56ff: $d2 $d3 $06

	ret nz                                           ; $5702: $c0

	ld bc, $02a0                                     ; $5703: $01 $a0 $02
	nop                                              ; $5706: $00
	rra                                              ; $5707: $1f
	ld bc, $06d4                                     ; $5708: $01 $d4 $06
	ret nz                                           ; $570b: $c0

	ld bc, $02a0                                     ; $570c: $01 $a0 $02
	nop                                              ; $570f: $00
	dec hl                                           ; $5710: $2b
	pop hl                                           ; $5711: $e1
	ld [bc], a                                       ; $5712: $02
	inc bc                                           ; $5713: $03
	ld [hl], $e4                                     ; $5714: $36 $e4
	ld bc, $0007                                     ; $5716: $01 $07 $00
	ld [hl-], a                                      ; $5719: $32
	add hl, bc                                       ; $571a: $09
	inc l                                            ; $571b: $2c
	pop hl                                           ; $571c: $e1
	ld [bc], a                                       ; $571d: $02
	inc bc                                           ; $571e: $03
	dec de                                           ; $571f: $1b
	add d                                            ; $5720: $82
	ret nz                                           ; $5721: $c0

	dec de                                           ; $5722: $1b
	ret nc                                           ; $5723: $d0

	ld [bc], a                                       ; $5724: $02
	ret nc                                           ; $5725: $d0

	pop de                                           ; $5726: $d1
	ld b, $c0                                        ; $5727: $06 $c0
	ld bc, $02a0                                     ; $5729: $01 $a0 $02
	nop                                              ; $572c: $00
	add hl, sp                                       ; $572d: $39
	ld [bc], a                                       ; $572e: $02
	jp nc, $06d3                                     ; $572f: $d2 $d3 $06

	ret nz                                           ; $5732: $c0

	ld bc, $02a0                                     ; $5733: $01 $a0 $02
	nop                                              ; $5736: $00
	ld b, c                                          ; $5737: $41
	ld bc, $06d4                                     ; $5738: $01 $d4 $06
	ret nz                                           ; $573b: $c0

	ld bc, $02a0                                     ; $573c: $01 $a0 $02
	nop                                              ; $573f: $00
	ld c, e                                          ; $5740: $4b
	pop hl                                           ; $5741: $e1
	ld [bc], a                                       ; $5742: $02
	inc bc                                           ; $5743: $03
	ld d, c                                          ; $5744: $51
	db $e4                                           ; $5745: $e4
	nop                                              ; $5746: $00
	rst SubAFromHL                                          ; $5747: $d7
	nop                                              ; $5748: $00
	ld d, l                                          ; $5749: $55
	add hl, bc                                       ; $574a: $09
	inc l                                            ; $574b: $2c
	pop hl                                           ; $574c: $e1
	ld [bc], a                                       ; $574d: $02
	inc bc                                           ; $574e: $03
	rla                                              ; $574f: $17
	add d                                            ; $5750: $82
	ret nz                                           ; $5751: $c0

	dec de                                           ; $5752: $1b
	ret nc                                           ; $5753: $d0

	ld [bc], a                                       ; $5754: $02
	ret nc                                           ; $5755: $d0

	pop de                                           ; $5756: $d1
	ld b, $c0                                        ; $5757: $06 $c0
	ld bc, $02a0                                     ; $5759: $01 $a0 $02
	nop                                              ; $575c: $00
	ld d, a                                          ; $575d: $57
	ld [bc], a                                       ; $575e: $02
	jp nc, $06d3                                     ; $575f: $d2 $d3 $06

	ret nz                                           ; $5762: $c0

	ld bc, $02a0                                     ; $5763: $01 $a0 $02
	nop                                              ; $5766: $00
	ld e, l                                          ; $5767: $5d
	ld bc, $06d4                                     ; $5768: $01 $d4 $06
	ret nz                                           ; $576b: $c0

	ld bc, $02a0                                     ; $576c: $01 $a0 $02
	nop                                              ; $576f: $00
	ld h, [hl]                                       ; $5770: $66
	pop hl                                           ; $5771: $e1
	ld [bc], a                                       ; $5772: $02
	inc bc                                           ; $5773: $03
	ld c, b                                          ; $5774: $48
	db $e4                                           ; $5775: $e4
	nop                                              ; $5776: $00
	and a                                            ; $5777: $a7
	jr z, jr_07d_5780                                ; $5778: $28 $06

	ret nz                                           ; $577a: $c0

	ld bc, $02a0                                     ; $577b: $01 $a0 $02
	nop                                              ; $577e: $00
	ld l, e                                          ; $577f: $6b

jr_07d_5780:
	sbc h                                            ; $5780: $9c
	nop                                              ; $5781: $00
	ld [hl], b                                       ; $5782: $70
	add hl, bc                                       ; $5783: $09
	inc l                                            ; $5784: $2c
	pop hl                                           ; $5785: $e1
	ld [bc], a                                       ; $5786: $02
	inc bc                                           ; $5787: $03
	inc de                                           ; $5788: $13
	add d                                            ; $5789: $82
	ret nz                                           ; $578a: $c0

	dec de                                           ; $578b: $1b
	ret nc                                           ; $578c: $d0

	ld [bc], a                                       ; $578d: $02
	ret nc                                           ; $578e: $d0

	pop de                                           ; $578f: $d1
	ld b, $c0                                        ; $5790: $06 $c0
	ld bc, $02a0                                     ; $5792: $01 $a0 $02
	nop                                              ; $5795: $00
	ld [hl], h                                       ; $5796: $74

jr_07d_5797:
	ld [bc], a                                       ; $5797: $02
	jp nc, $06d3                                     ; $5798: $d2 $d3 $06

	ret nz                                           ; $579b: $c0

	ld bc, $02a0                                     ; $579c: $01 $a0 $02
	nop                                              ; $579f: $00
	ld a, a                                          ; $57a0: $7f
	ld bc, $06d4                                     ; $57a1: $01 $d4 $06
	ret nz                                           ; $57a4: $c0

	ld bc, $02a0                                     ; $57a5: $01 $a0 $02
	nop                                              ; $57a8: $00
	add l                                            ; $57a9: $85
	pop hl                                           ; $57aa: $e1
	ld [bc], a                                       ; $57ab: $02
	inc bc                                           ; $57ac: $03
	ld [hl], $e4                                     ; $57ad: $36 $e4
	nop                                              ; $57af: $00
	ld l, [hl]                                       ; $57b0: $6e
	nop                                              ; $57b1: $00
	adc d                                            ; $57b2: $8a
	add hl, bc                                       ; $57b3: $09
	jr c, jr_07d_5797                                ; $57b4: $38 $e1

	ld [bc], a                                       ; $57b6: $02
	inc bc                                           ; $57b7: $03
	rra                                              ; $57b8: $1f
	add d                                            ; $57b9: $82
	ret nz                                           ; $57ba: $c0

	dec de                                           ; $57bb: $1b
	ret nc                                           ; $57bc: $d0

	ld [bc], a                                       ; $57bd: $02
	ret nc                                           ; $57be: $d0

	pop de                                           ; $57bf: $d1
	ld a, [bc]                                       ; $57c0: $0a
	pop hl                                           ; $57c1: $e1
	ld [bc], a                                       ; $57c2: $02
	inc bc                                           ; $57c3: $03
	dec de                                           ; $57c4: $1b
	ret nz                                           ; $57c5: $c0

	ld bc, $02a0                                     ; $57c6: $01 $a0 $02
	nop                                              ; $57c9: $00
	adc h                                            ; $57ca: $8c
	ld [bc], a                                       ; $57cb: $02
	jp nc, $0ad3                                     ; $57cc: $d2 $d3 $0a

	pop hl                                           ; $57cf: $e1
	ld [bc], a                                       ; $57d0: $02
	inc bc                                           ; $57d1: $03
	rra                                              ; $57d2: $1f
	ret nz                                           ; $57d3: $c0

	ld bc, $02a0                                     ; $57d4: $01 $a0 $02
	nop                                              ; $57d7: $00
	sub h                                            ; $57d8: $94
	ld bc, $0ad4                                     ; $57d9: $01 $d4 $0a
	pop hl                                           ; $57dc: $e1
	ld [bc], a                                       ; $57dd: $02
	inc bc                                           ; $57de: $03
	rra                                              ; $57df: $1f
	ret nz                                           ; $57e0: $c0

	ld bc, $02a0                                     ; $57e1: $01 $a0 $02
	nop                                              ; $57e4: $00
	sbc l                                            ; $57e5: $9d
	pop hl                                           ; $57e6: $e1
	ld [bc], a                                       ; $57e7: $02
	inc bc                                           ; $57e8: $03
	ld d, c                                          ; $57e9: $51
	db $e4                                           ; $57ea: $e4
	nop                                              ; $57eb: $00
	ld [hl-], a                                      ; $57ec: $32
	nop                                              ; $57ed: $00
	and l                                            ; $57ee: $a5
	add hl, bc                                       ; $57ef: $09
	inc l                                            ; $57f0: $2c
	pop hl                                           ; $57f1: $e1
	ld [bc], a                                       ; $57f2: $02
	inc bc                                           ; $57f3: $03
	inc de                                           ; $57f4: $13
	add d                                            ; $57f5: $82
	ret nz                                           ; $57f6: $c0

	dec de                                           ; $57f7: $1b
	ret nc                                           ; $57f8: $d0

	ld [bc], a                                       ; $57f9: $02
	ret nc                                           ; $57fa: $d0

	pop de                                           ; $57fb: $d1
	ld b, $c0                                        ; $57fc: $06 $c0
	ld bc, $02a0                                     ; $57fe: $01 $a0 $02
	nop                                              ; $5801: $00
	and a                                            ; $5802: $a7
	ld [bc], a                                       ; $5803: $02
	jp nc, $06d3                                     ; $5804: $d2 $d3 $06

	ret nz                                           ; $5807: $c0

	ld bc, $02a0                                     ; $5808: $01 $a0 $02
	nop                                              ; $580b: $00
	xor d                                            ; $580c: $aa
	ld bc, $06d4                                     ; $580d: $01 $d4 $06
	ret nz                                           ; $5810: $c0

	ld bc, $02a0                                     ; $5811: $01 $a0 $02
	nop                                              ; $5814: $00
	cp b                                             ; $5815: $b8
	pop hl                                           ; $5816: $e1
	ld [bc], a                                       ; $5817: $02
	inc bc                                           ; $5818: $03
	ccf                                              ; $5819: $3f
	db $e4                                           ; $581a: $e4
	nop                                              ; $581b: $00
	ld [bc], a                                       ; $581c: $02
	add hl, bc                                       ; $581d: $09
	ld c, $c1                                        ; $581e: $0e $c1
	ld e, c                                          ; $5820: $59
	db $e3                                           ; $5821: $e3
	nop                                              ; $5822: $00
	cp h                                             ; $5823: $bc
	ret nz                                           ; $5824: $c0

	ld d, [hl]                                       ; $5825: $56
	ret nc                                           ; $5826: $d0

	jp c, $e5d0                                      ; $5827: $da $d0 $e5

	inc de                                           ; $582a: $13
	nop                                              ; $582b: $00
	nop                                              ; $582c: $00
	add hl, bc                                       ; $582d: $09
	jr z, @-$2e                                      ; $582e: $28 $d0

	add e                                            ; $5830: $83
	ld bc, $d0de                                     ; $5831: $01 $de $d0
	ret nz                                           ; $5834: $c0

	ld bc, $02a0                                     ; $5835: $01 $a0 $02
	nop                                              ; $5838: $00
	ld bc, $01c0                                     ; $5839: $01 $c0 $01
	and b                                            ; $583c: $a0
	ld bc, $0a00                                     ; $583d: $01 $00 $0a
	pop bc                                           ; $5840: $c1
	ld e, c                                          ; $5841: $59
	db $e3                                           ; $5842: $e3
	nop                                              ; $5843: $00
	cp e                                             ; $5844: $bb
	and b                                            ; $5845: $a0
	add b                                            ; $5846: $80
	and b                                            ; $5847: $a0
	ld bc, $0300                                     ; $5848: $01 $00 $03
	db $e4                                           ; $584b: $e4
	nop                                              ; $584c: $00
	dec bc                                           ; $584d: $0b
	rst $38                                          ; $584e: $ff
	rlca                                             ; $584f: $07
	ld b, b                                          ; $5850: $40
	add b                                            ; $5851: $80
	and b                                            ; $5852: $a0
	ld bc, $00e4                                     ; $5853: $01 $e4 $00
	sbc e                                            ; $5856: $9b
	jr z, jr_07d_585f                                ; $5857: $28 $06

	ret nz                                           ; $5859: $c0

	ld bc, $02a0                                     ; $585a: $01 $a0 $02
	nop                                              ; $585d: $00
	cp [hl]                                          ; $585e: $be

jr_07d_585f:
	sub b                                            ; $585f: $90
	nop                                              ; $5860: $00
	jp nz, $2c09                                     ; $5861: $c2 $09 $2c

	pop hl                                           ; $5864: $e1
	ld [bc], a                                       ; $5865: $02
	inc bc                                           ; $5866: $03
	inc de                                           ; $5867: $13
	add d                                            ; $5868: $82
	ret nz                                           ; $5869: $c0

	dec de                                           ; $586a: $1b
	ret nc                                           ; $586b: $d0

	ld [bc], a                                       ; $586c: $02
	ret nc                                           ; $586d: $d0

	pop de                                           ; $586e: $d1
	ld b, $c0                                        ; $586f: $06 $c0
	ld bc, $02a0                                     ; $5871: $01 $a0 $02
	nop                                              ; $5874: $00
	call nz, $d202                                   ; $5875: $c4 $02 $d2
	db $d3                                           ; $5878: $d3
	ld b, $c0                                        ; $5879: $06 $c0
	ld bc, $02a0                                     ; $587b: $01 $a0 $02
	nop                                              ; $587e: $00
	rst GetHLinHL                                          ; $587f: $cf
	ld bc, $06d4                                     ; $5880: $01 $d4 $06
	ret nz                                           ; $5883: $c0

	ld bc, $02a0                                     ; $5884: $01 $a0 $02
	nop                                              ; $5887: $00
	db $dd                                           ; $5888: $dd
	pop hl                                           ; $5889: $e1
	ld [bc], a                                       ; $588a: $02
	inc bc                                           ; $588b: $03
	ld [hl], $e4                                     ; $588c: $36 $e4
	nop                                              ; $588e: $00
	ei                                               ; $588f: $fb
	nop                                              ; $5890: $00
	db $e3                                           ; $5891: $e3
	add hl, bc                                       ; $5892: $09
	inc l                                            ; $5893: $2c
	pop hl                                           ; $5894: $e1
	ld [bc], a                                       ; $5895: $02
	inc bc                                           ; $5896: $03
	dec de                                           ; $5897: $1b
	add d                                            ; $5898: $82
	ret nz                                           ; $5899: $c0

	dec de                                           ; $589a: $1b
	ret nc                                           ; $589b: $d0

	ld [bc], a                                       ; $589c: $02
	ret nc                                           ; $589d: $d0

	pop de                                           ; $589e: $d1
	ld b, $c0                                        ; $589f: $06 $c0
	ld bc, $02a0                                     ; $58a1: $01 $a0 $02
	nop                                              ; $58a4: $00
	db $eb                                           ; $58a5: $eb
	ld [bc], a                                       ; $58a6: $02
	jp nc, $06d3                                     ; $58a7: $d2 $d3 $06

	ret nz                                           ; $58aa: $c0

	ld bc, $02a0                                     ; $58ab: $01 $a0 $02
	nop                                              ; $58ae: $00
	push af                                          ; $58af: $f5
	ld bc, $06d4                                     ; $58b0: $01 $d4 $06
	ret nz                                           ; $58b3: $c0

	ld bc, $02a0                                     ; $58b4: $01 $a0 $02
	ld bc, $e101                                     ; $58b7: $01 $01 $e1
	ld [bc], a                                       ; $58ba: $02
	inc bc                                           ; $58bb: $03
	ld c, b                                          ; $58bc: $48
	db $e4                                           ; $58bd: $e4
	nop                                              ; $58be: $00
	rlc c                                            ; $58bf: $cb $01
	inc c                                            ; $58c1: $0c
	add hl, bc                                       ; $58c2: $09
	inc l                                            ; $58c3: $2c
	pop hl                                           ; $58c4: $e1
	ld [bc], a                                       ; $58c5: $02
	inc bc                                           ; $58c6: $03
	rla                                              ; $58c7: $17
	add d                                            ; $58c8: $82
	ret nz                                           ; $58c9: $c0

	dec de                                           ; $58ca: $1b
	ret nc                                           ; $58cb: $d0

	ld [bc], a                                       ; $58cc: $02
	ret nc                                           ; $58cd: $d0

	pop de                                           ; $58ce: $d1
	ld b, $c0                                        ; $58cf: $06 $c0
	ld bc, $02a0                                     ; $58d1: $01 $a0 $02
	ld bc, $020e                                     ; $58d4: $01 $0e $02
	jp nc, $06d3                                     ; $58d7: $d2 $d3 $06

	ret nz                                           ; $58da: $c0

	ld bc, $02a0                                     ; $58db: $01 $a0 $02
	ld bc, $0116                                     ; $58de: $01 $16 $01
	call nc, $c006                                   ; $58e1: $d4 $06 $c0
	ld bc, $02a0                                     ; $58e4: $01 $a0 $02
	ld bc, $e121                                     ; $58e7: $01 $21 $e1
	ld [bc], a                                       ; $58ea: $02
	inc bc                                           ; $58eb: $03
	ccf                                              ; $58ec: $3f
	db $e4                                           ; $58ed: $e4
	nop                                              ; $58ee: $00
	sbc e                                            ; $58ef: $9b
	jr z, @+$08                                      ; $58f0: $28 $06

	ret nz                                           ; $58f2: $c0

	ld bc, $02a0                                     ; $58f3: $01 $a0 $02
	ld bc, $9025                                     ; $58f6: $01 $25 $90
	ld bc, $0930                                     ; $58f9: $01 $30 $09
	inc l                                            ; $58fc: $2c
	pop hl                                           ; $58fd: $e1
	ld [bc], a                                       ; $58fe: $02
	inc bc                                           ; $58ff: $03
	inc de                                           ; $5900: $13
	add d                                            ; $5901: $82
	ret nz                                           ; $5902: $c0

	dec de                                           ; $5903: $1b
	ret nc                                           ; $5904: $d0

	ld [bc], a                                       ; $5905: $02
	ret nc                                           ; $5906: $d0

	pop de                                           ; $5907: $d1
	ld b, $c0                                        ; $5908: $06 $c0
	ld bc, $02a0                                     ; $590a: $01 $a0 $02
	ld bc, $0238                                     ; $590d: $01 $38 $02
	jp nc, $06d3                                     ; $5910: $d2 $d3 $06

	ret nz                                           ; $5913: $c0

	ld bc, $02a0                                     ; $5914: $01 $a0 $02
	ld bc, $0145                                     ; $5917: $01 $45 $01
	call nc, $c006                                   ; $591a: $d4 $06 $c0
	ld bc, $02a0                                     ; $591d: $01 $a0 $02
	ld bc, $e151                                     ; $5920: $01 $51 $e1
	ld [bc], a                                       ; $5923: $02
	inc bc                                           ; $5924: $03
	ld [hl], $e4                                     ; $5925: $36 $e4
	nop                                              ; $5927: $00
	ld h, d                                          ; $5928: $62
	ld bc, $095b                                     ; $5929: $01 $5b $09
	inc l                                            ; $592c: $2c
	pop hl                                           ; $592d: $e1
	ld [bc], a                                       ; $592e: $02
	inc bc                                           ; $592f: $03
	dec de                                           ; $5930: $1b
	add d                                            ; $5931: $82
	ret nz                                           ; $5932: $c0

	dec de                                           ; $5933: $1b
	ret nc                                           ; $5934: $d0

	ld [bc], a                                       ; $5935: $02
	ret nc                                           ; $5936: $d0

	pop de                                           ; $5937: $d1
	ld b, $c0                                        ; $5938: $06 $c0
	ld bc, $02a0                                     ; $593a: $01 $a0 $02
	ld bc, $0264                                     ; $593d: $01 $64 $02
	jp nc, $06d3                                     ; $5940: $d2 $d3 $06

	ret nz                                           ; $5943: $c0

	ld bc, $02a0                                     ; $5944: $01 $a0 $02
	ld bc, $016b                                     ; $5947: $01 $6b $01
	call nc, $c006                                   ; $594a: $d4 $06 $c0
	ld bc, $02a0                                     ; $594d: $01 $a0 $02
	ld bc, $e178                                     ; $5950: $01 $78 $e1
	ld [bc], a                                       ; $5953: $02
	inc bc                                           ; $5954: $03
	ld c, b                                          ; $5955: $48
	db $e4                                           ; $5956: $e4
	nop                                              ; $5957: $00
	ld [hl-], a                                      ; $5958: $32
	ld bc, $097e                                     ; $5959: $01 $7e $09
	inc l                                            ; $595c: $2c
	pop hl                                           ; $595d: $e1
	ld [bc], a                                       ; $595e: $02
	inc bc                                           ; $595f: $03
	rla                                              ; $5960: $17
	add d                                            ; $5961: $82
	ret nz                                           ; $5962: $c0

	dec de                                           ; $5963: $1b
	ret nc                                           ; $5964: $d0

	ld [bc], a                                       ; $5965: $02
	ret nc                                           ; $5966: $d0

	pop de                                           ; $5967: $d1
	ld b, $c0                                        ; $5968: $06 $c0
	ld bc, $02a0                                     ; $596a: $01 $a0 $02
	ld bc, $0287                                     ; $596d: $01 $87 $02
	jp nc, $06d3                                     ; $5970: $d2 $d3 $06

	ret nz                                           ; $5973: $c0

	ld bc, $02a0                                     ; $5974: $01 $a0 $02
	ld bc, $0190                                     ; $5977: $01 $90 $01
	call nc, $c006                                   ; $597a: $d4 $06 $c0
	ld bc, $02a0                                     ; $597d: $01 $a0 $02
	ld bc, $e197                                     ; $5980: $01 $97 $e1
	ld [bc], a                                       ; $5983: $02
	inc bc                                           ; $5984: $03
	ccf                                              ; $5985: $3f
	db $e4                                           ; $5986: $e4
	nop                                              ; $5987: $00
	ld [bc], a                                       ; $5988: $02
	add hl, bc                                       ; $5989: $09
	ld c, $c1                                        ; $598a: $0e $c1
	ld e, c                                          ; $598c: $59
	db $e3                                           ; $598d: $e3
	nop                                              ; $598e: $00
	cp d                                             ; $598f: $ba
	ret nz                                           ; $5990: $c0

	ld d, [hl]                                       ; $5991: $56
	ret nc                                           ; $5992: $d0

	db $db                                           ; $5993: $db
	ret nc                                           ; $5994: $d0

	push hl                                          ; $5995: $e5
	inc de                                           ; $5996: $13
	nop                                              ; $5997: $00
	nop                                              ; $5998: $00
	add hl, bc                                       ; $5999: $09
	rrca                                             ; $599a: $0f
	ret nz                                           ; $599b: $c0

	ld bc, $02a0                                     ; $599c: $01 $a0 $02
	ld bc, $c09f                                     ; $599f: $01 $9f $c0
	ld bc, $01a0                                     ; $59a2: $01 $a0 $01
	ld bc, $e4a7                                     ; $59a5: $01 $a7 $e4
	nop                                              ; $59a8: $00
	ld [bc], a                                       ; $59a9: $02
	inc l                                            ; $59aa: $2c
	dec b                                            ; $59ab: $05
	pop bc                                           ; $59ac: $c1
	ld e, c                                          ; $59ad: $59
	db $e3                                           ; $59ae: $e3
	nop                                              ; $59af: $00
	adc d                                            ; $59b0: $8a
	ld c, d                                          ; $59b1: $4a
	cp $08                                           ; $59b2: $fe $08
	db $fc                                           ; $59b4: $fc
	ret nz                                           ; $59b5: $c0

	ld h, a                                          ; $59b6: $67
	ret nc                                           ; $59b7: $d0

	db $fc                                           ; $59b8: $fc
	ret nz                                           ; $59b9: $c0

	ld l, c                                          ; $59ba: $69
	pop de                                           ; $59bb: $d1
	jr z, @+$08                                      ; $59bc: $28 $06

	ret nz                                           ; $59be: $c0

	ld bc, $01a0                                     ; $59bf: $01 $a0 $01
	ld bc, $33aa                                     ; $59c2: $01 $aa $33
	ld bc, $28b0                                     ; $59c5: $01 $b0 $28
	inc c                                            ; $59c8: $0c
	ret nz                                           ; $59c9: $c0

	ld bc, $01a0                                     ; $59ca: $01 $a0 $01
	ld bc, $c0b3                                     ; $59cd: $01 $b3 $c0
	ld bc, $02a0                                     ; $59d0: $01 $a0 $02
	ld bc, $1db9                                     ; $59d3: $01 $b9 $1d
	ld bc, $09c0                                     ; $59d6: $01 $c0 $09
	inc d                                            ; $59d9: $14
	ret nz                                           ; $59da: $c0

	ld bc, $02a0                                     ; $59db: $01 $a0 $02
	ld bc, wTaskParam4_word1                                     ; $59de: $01 $c2 $d0
	adc e                                            ; $59e1: $8b
	and b                                            ; $59e2: $a0
	ld [bc], a                                       ; $59e3: $02
	or b                                             ; $59e4: $b0
	ld a, d                                          ; $59e5: $7a
	ret nc                                           ; $59e6: $d0

	add e                                            ; $59e7: $83
	ld bc, $d7de                                     ; $59e8: $01 $de $d7
	db $e4                                           ; $59eb: $e4
	rlca                                             ; $59ec: $07
	ld l, c                                          ; $59ed: $69
	ld bc, $00c7                                     ; $59ee: $01 $c7 $00
	nop                                              ; $59f1: $00
	dec bc                                           ; $59f2: $0b
	ld bc, $00c9                                     ; $59f3: $01 $c9 $00
	nop                                              ; $59f6: $00
	ld b, $d1                                        ; $59f7: $06 $d1
	nop                                              ; $59f9: $00
	nop                                              ; $59fa: $00
	ld [bc], a                                       ; $59fb: $02
	jr z, @+$08                                      ; $59fc: $28 $06

	ret nz                                           ; $59fe: $c0

	ld bc, $02a0                                     ; $59ff: $01 $a0 $02
	ld bc, $70cb                                     ; $5a02: $01 $cb $70
	ei                                               ; $5a05: $fb
	add b                                            ; $5a06: $80
	ld [bc], a                                       ; $5a07: $02
	ld d, e                                          ; $5a08: $53
	ld [de], a                                       ; $5a09: $12
	ld bc, $09d1                                     ; $5a0a: $01 $d1 $09
	ld c, $d0                                        ; $5a0d: $0e $d0
	adc e                                            ; $5a0f: $8b
	and b                                            ; $5a10: $a0
	ld [bc], a                                       ; $5a11: $02
	or b                                             ; $5a12: $b0
	ld a, e                                          ; $5a13: $7b
	ret nc                                           ; $5a14: $d0

	add e                                            ; $5a15: $83
	ld bc, $d4de                                     ; $5a16: $01 $de $d4
	db $e4                                           ; $5a19: $e4
	inc b                                            ; $5a1a: $04
	adc e                                            ; $5a1b: $8b
	ei                                               ; $5a1c: $fb
	pop af                                           ; $5a1d: $f1
	add b                                            ; $5a1e: $80
	ld [bc], a                                       ; $5a1f: $02
	ld d, e                                          ; $5a20: $53
	ld [de], a                                       ; $5a21: $12
	ld bc, $09d3                                     ; $5a22: $01 $d3 $09
	ld c, $d0                                        ; $5a25: $0e $d0
	adc e                                            ; $5a27: $8b
	and b                                            ; $5a28: $a0
	ld [bc], a                                       ; $5a29: $02
	or b                                             ; $5a2a: $b0
	ld a, h                                          ; $5a2b: $7c
	ret nc                                           ; $5a2c: $d0

	add e                                            ; $5a2d: $83
	ld bc, $d1de                                     ; $5a2e: $01 $de $d1
	db $e4                                           ; $5a31: $e4
	nop                                              ; $5a32: $00
	ld b, e                                          ; $5a33: $43
	ei                                               ; $5a34: $fb
	add b                                            ; $5a35: $80
	ld [bc], a                                       ; $5a36: $02
	ld e, d                                          ; $5a37: $5a
	ld [de], a                                       ; $5a38: $12
	ld bc, $09d5                                     ; $5a39: $01 $d5 $09
	ld c, $d0                                        ; $5a3c: $0e $d0
	adc e                                            ; $5a3e: $8b
	and b                                            ; $5a3f: $a0
	ld [bc], a                                       ; $5a40: $02
	or b                                             ; $5a41: $b0
	ld a, l                                          ; $5a42: $7d
	ret nc                                           ; $5a43: $d0

	add e                                            ; $5a44: $83
	ld bc, $d5de                                     ; $5a45: $01 $de $d5
	db $e4                                           ; $5a48: $e4
	dec b                                            ; $5a49: $05
	or a                                             ; $5a4a: $b7
	ei                                               ; $5a4b: $fb
	pop af                                           ; $5a4c: $f1
	add b                                            ; $5a4d: $80
	ld [bc], a                                       ; $5a4e: $02
	ld e, d                                          ; $5a4f: $5a
	ld [de], a                                       ; $5a50: $12
	ld bc, $09d7                                     ; $5a51: $01 $d7 $09
	ld c, $d0                                        ; $5a54: $0e $d0
	adc e                                            ; $5a56: $8b
	and b                                            ; $5a57: $a0
	ld [bc], a                                       ; $5a58: $02
	or b                                             ; $5a59: $b0
	ld a, [hl]                                       ; $5a5a: $7e
	ret nc                                           ; $5a5b: $d0

	add e                                            ; $5a5c: $83
	ld bc, $d2de                                     ; $5a5d: $01 $de $d2
	db $e4                                           ; $5a60: $e4
	ld bc, $0169                                     ; $5a61: $01 $69 $01
	reti                                             ; $5a64: $d9


	add hl, bc                                       ; $5a65: $09
	ld c, $d0                                        ; $5a66: $0e $d0
	adc e                                            ; $5a68: $8b
	and b                                            ; $5a69: $a0
	ld [bc], a                                       ; $5a6a: $02
	or b                                             ; $5a6b: $b0
	ld a, a                                          ; $5a6c: $7f
	ret nc                                           ; $5a6d: $d0

	add e                                            ; $5a6e: $83
	ld bc, $d3de                                     ; $5a6f: $01 $de $d3
	db $e4                                           ; $5a72: $e4
	ld [bc], a                                       ; $5a73: $02
	cp h                                             ; $5a74: $bc
	add hl, bc                                       ; $5a75: $09
	ld hl, $59c1                                     ; $5a76: $21 $c1 $59
	db $e3                                           ; $5a79: $e3
	nop                                              ; $5a7a: $00
	adc h                                            ; $5a7b: $8c
	ret nz                                           ; $5a7c: $c0

	ld bc, $02a0                                     ; $5a7d: $01 $a0 $02
	ld bc, $e1db                                     ; $5a80: $01 $db $e1
	ld [bc], a                                       ; $5a83: $02
	rlca                                             ; $5a84: $07
	call nz, $80a0                                   ; $5a85: $c4 $a0 $80
	and b                                            ; $5a88: $a0
	ld c, $00                                        ; $5a89: $0e $00
	inc bc                                           ; $5a8b: $03
	db $e4                                           ; $5a8c: $e4
	nop                                              ; $5a8d: $00
	dec bc                                           ; $5a8e: $0b
	rst $38                                          ; $5a8f: $ff
	rlca                                             ; $5a90: $07
	ld b, b                                          ; $5a91: $40
	add b                                            ; $5a92: $80
	and b                                            ; $5a93: $a0
	ld c, $e4                                        ; $5a94: $0e $e4
	nop                                              ; $5a96: $00
	sbc e                                            ; $5a97: $9b
	jr z, @+$08                                      ; $5a98: $28 $06

	ret nz                                           ; $5a9a: $c0

	ld bc, $02a0                                     ; $5a9b: $01 $a0 $02
	ld bc, $90e0                                     ; $5a9e: $01 $e0 $90
	ld bc, $09e1                                     ; $5aa1: $01 $e1 $09
	inc l                                            ; $5aa4: $2c
	pop hl                                           ; $5aa5: $e1
	ld [bc], a                                       ; $5aa6: $02
	inc bc                                           ; $5aa7: $03
	rrca                                             ; $5aa8: $0f
	add d                                            ; $5aa9: $82
	ret nz                                           ; $5aaa: $c0

	dec de                                           ; $5aab: $1b
	ret nc                                           ; $5aac: $d0

	ld [bc], a                                       ; $5aad: $02
	ret nc                                           ; $5aae: $d0

	pop de                                           ; $5aaf: $d1
	ld b, $c0                                        ; $5ab0: $06 $c0
	ld bc, $02a0                                     ; $5ab2: $01 $a0 $02
	ld bc, $02e3                                     ; $5ab5: $01 $e3 $02
	jp nc, $06d3                                     ; $5ab8: $d2 $d3 $06

	ret nz                                           ; $5abb: $c0

	ld bc, $02a0                                     ; $5abc: $01 $a0 $02
	ld bc, $01e9                                     ; $5abf: $01 $e9 $01
	call nc, $c006                                   ; $5ac2: $d4 $06 $c0
	ld bc, $02a0                                     ; $5ac5: $01 $a0 $02
	ld bc, $e1ef                                     ; $5ac8: $01 $ef $e1
	ld [bc], a                                       ; $5acb: $02
	inc bc                                           ; $5acc: $03
	dec l                                            ; $5acd: $2d
	db $e4                                           ; $5ace: $e4
	ld [$017e], sp                                   ; $5acf: $08 $7e $01
	or $09                                           ; $5ad2: $f6 $09
	inc l                                            ; $5ad4: $2c
	pop hl                                           ; $5ad5: $e1
	ld [bc], a                                       ; $5ad6: $02
	inc bc                                           ; $5ad7: $03
	dec de                                           ; $5ad8: $1b
	add d                                            ; $5ad9: $82
	ret nz                                           ; $5ada: $c0

	dec de                                           ; $5adb: $1b
	ret nc                                           ; $5adc: $d0

	ld [bc], a                                       ; $5add: $02
	ret nc                                           ; $5ade: $d0

	pop de                                           ; $5adf: $d1
	ld b, $c0                                        ; $5ae0: $06 $c0
	ld bc, $02a0                                     ; $5ae2: $01 $a0 $02
	ld bc, $02f8                                     ; $5ae5: $01 $f8 $02
	jp nc, $06d3                                     ; $5ae8: $d2 $d3 $06

	ret nz                                           ; $5aeb: $c0

	ld bc, $02a0                                     ; $5aec: $01 $a0 $02
	ld bc, $01ff                                     ; $5aef: $01 $ff $01
	call nc, $c006                                   ; $5af2: $d4 $06 $c0
	ld bc, $02a0                                     ; $5af5: $01 $a0 $02
	ld [bc], a                                       ; $5af8: $02
	dec b                                            ; $5af9: $05
	pop hl                                           ; $5afa: $e1
	ld [bc], a                                       ; $5afb: $02
	inc bc                                           ; $5afc: $03
	ld c, b                                          ; $5afd: $48
	db $e4                                           ; $5afe: $e4
	ld [$024e], sp                                   ; $5aff: $08 $4e $02
	ld a, [bc]                                       ; $5b02: $0a
	add hl, bc                                       ; $5b03: $09
	inc l                                            ; $5b04: $2c
	pop hl                                           ; $5b05: $e1
	ld [bc], a                                       ; $5b06: $02
	inc bc                                           ; $5b07: $03
	rla                                              ; $5b08: $17
	add d                                            ; $5b09: $82
	ret nz                                           ; $5b0a: $c0

	dec de                                           ; $5b0b: $1b
	ret nc                                           ; $5b0c: $d0

	ld [bc], a                                       ; $5b0d: $02
	ret nc                                           ; $5b0e: $d0

	pop de                                           ; $5b0f: $d1
	ld b, $c0                                        ; $5b10: $06 $c0
	ld bc, $02a0                                     ; $5b12: $01 $a0 $02
	ld [bc], a                                       ; $5b15: $02
	inc c                                            ; $5b16: $0c
	ld [bc], a                                       ; $5b17: $02
	jp nc, $06d3                                     ; $5b18: $d2 $d3 $06

	ret nz                                           ; $5b1b: $c0

	ld bc, $02a0                                     ; $5b1c: $01 $a0 $02
	ld [bc], a                                       ; $5b1f: $02
	ld [de], a                                       ; $5b20: $12
	ld bc, $06d4                                     ; $5b21: $01 $d4 $06
	ret nz                                           ; $5b24: $c0

	ld bc, $02a0                                     ; $5b25: $01 $a0 $02
	ld [bc], a                                       ; $5b28: $02
	dec de                                           ; $5b29: $1b
	pop hl                                           ; $5b2a: $e1
	ld [bc], a                                       ; $5b2b: $02
	inc bc                                           ; $5b2c: $03
	ccf                                              ; $5b2d: $3f
	db $e4                                           ; $5b2e: $e4
	ld [$281e], sp                                   ; $5b2f: $08 $1e $28
	ld b, $c0                                        ; $5b32: $06 $c0
	ld bc, $02a0                                     ; $5b34: $01 $a0 $02
	ld [bc], a                                       ; $5b37: $02
	dec h                                            ; $5b38: $25
	sub b                                            ; $5b39: $90
	ld [bc], a                                       ; $5b3a: $02
	jr z, jr_07d_5b46                                ; $5b3b: $28 $09

	inc l                                            ; $5b3d: $2c
	pop hl                                           ; $5b3e: $e1
	ld [bc], a                                       ; $5b3f: $02
	inc bc                                           ; $5b40: $03
	inc de                                           ; $5b41: $13
	add d                                            ; $5b42: $82
	ret nz                                           ; $5b43: $c0

	dec de                                           ; $5b44: $1b
	ret nc                                           ; $5b45: $d0

jr_07d_5b46:
	ld [bc], a                                       ; $5b46: $02
	ret nc                                           ; $5b47: $d0

	pop de                                           ; $5b48: $d1
	ld b, $c0                                        ; $5b49: $06 $c0
	ld bc, $02a0                                     ; $5b4b: $01 $a0 $02
	ld [bc], a                                       ; $5b4e: $02
	ld sp, $d202                                     ; $5b4f: $31 $02 $d2
	db $d3                                           ; $5b52: $d3
	ld b, $c0                                        ; $5b53: $06 $c0
	ld bc, $02a0                                     ; $5b55: $01 $a0 $02
	ld [bc], a                                       ; $5b58: $02
	add hl, sp                                       ; $5b59: $39
	ld bc, $06d4                                     ; $5b5a: $01 $d4 $06
	ret nz                                           ; $5b5d: $c0

	ld bc, $02a0                                     ; $5b5e: $01 $a0 $02
	ld [bc], a                                       ; $5b61: $02
	ld b, d                                          ; $5b62: $42
	pop hl                                           ; $5b63: $e1
	ld [bc], a                                       ; $5b64: $02
	inc bc                                           ; $5b65: $03
	ld [hl], $e4                                     ; $5b66: $36 $e4
	rlca                                             ; $5b68: $07
	push hl                                          ; $5b69: $e5
	ld [bc], a                                       ; $5b6a: $02
	ld c, c                                          ; $5b6b: $49
	add hl, bc                                       ; $5b6c: $09
	inc l                                            ; $5b6d: $2c
	pop hl                                           ; $5b6e: $e1
	ld [bc], a                                       ; $5b6f: $02
	inc bc                                           ; $5b70: $03
	dec de                                           ; $5b71: $1b
	add d                                            ; $5b72: $82
	ret nz                                           ; $5b73: $c0

	dec de                                           ; $5b74: $1b
	ret nc                                           ; $5b75: $d0

	ld [bc], a                                       ; $5b76: $02
	ret nc                                           ; $5b77: $d0

	pop de                                           ; $5b78: $d1
	ld b, $c0                                        ; $5b79: $06 $c0
	ld bc, $02a0                                     ; $5b7b: $01 $a0 $02
	ld [bc], a                                       ; $5b7e: $02
	ld c, h                                          ; $5b7f: $4c
	ld [bc], a                                       ; $5b80: $02
	jp nc, $06d3                                     ; $5b81: $d2 $d3 $06

	ret nz                                           ; $5b84: $c0

	ld bc, $02a0                                     ; $5b85: $01 $a0 $02
	ld [bc], a                                       ; $5b88: $02
	ld d, e                                          ; $5b89: $53
	ld bc, $06d4                                     ; $5b8a: $01 $d4 $06
	ret nz                                           ; $5b8d: $c0

	ld bc, $02a0                                     ; $5b8e: $01 $a0 $02
	ld [bc], a                                       ; $5b91: $02
	ld e, l                                          ; $5b92: $5d
	pop hl                                           ; $5b93: $e1
	ld [bc], a                                       ; $5b94: $02
	inc bc                                           ; $5b95: $03
	ld c, b                                          ; $5b96: $48
	db $e4                                           ; $5b97: $e4
	rlca                                             ; $5b98: $07
	or l                                             ; $5b99: $b5
	ld [bc], a                                       ; $5b9a: $02
	ld h, e                                          ; $5b9b: $63
	add hl, bc                                       ; $5b9c: $09
	inc l                                            ; $5b9d: $2c
	pop hl                                           ; $5b9e: $e1
	ld [bc], a                                       ; $5b9f: $02
	inc bc                                           ; $5ba0: $03
	rla                                              ; $5ba1: $17
	add d                                            ; $5ba2: $82
	ret nz                                           ; $5ba3: $c0

	dec de                                           ; $5ba4: $1b
	ret nc                                           ; $5ba5: $d0

	ld [bc], a                                       ; $5ba6: $02
	ret nc                                           ; $5ba7: $d0

	pop de                                           ; $5ba8: $d1
	ld b, $c0                                        ; $5ba9: $06 $c0
	ld bc, $02a0                                     ; $5bab: $01 $a0 $02
	ld [bc], a                                       ; $5bae: $02
	ld l, e                                          ; $5baf: $6b
	ld [bc], a                                       ; $5bb0: $02
	jp nc, $06d3                                     ; $5bb1: $d2 $d3 $06

	ret nz                                           ; $5bb4: $c0

	ld bc, $02a0                                     ; $5bb5: $01 $a0 $02
	ld [bc], a                                       ; $5bb8: $02
	ld [hl], d                                       ; $5bb9: $72
	ld bc, $06d4                                     ; $5bba: $01 $d4 $06
	ret nz                                           ; $5bbd: $c0

	ld bc, $02a0                                     ; $5bbe: $01 $a0 $02

Jump_07d_5bc1:
	ld [bc], a                                       ; $5bc1: $02
	ld a, b                                          ; $5bc2: $78
	pop hl                                           ; $5bc3: $e1
	ld [bc], a                                       ; $5bc4: $02
	inc bc                                           ; $5bc5: $03
	ccf                                              ; $5bc6: $3f
	db $e4                                           ; $5bc7: $e4
	rlca                                             ; $5bc8: $07
	add l                                            ; $5bc9: $85
	add hl, bc                                       ; $5bca: $09
	ld hl, $59c1                                     ; $5bcb: $21 $c1 $59
	db $e3                                           ; $5bce: $e3
	nop                                              ; $5bcf: $00
	adc l                                            ; $5bd0: $8d
	ret nz                                           ; $5bd1: $c0

	ld bc, $02a0                                     ; $5bd2: $01 $a0 $02
	ld [bc], a                                       ; $5bd5: $02
	add b                                            ; $5bd6: $80
	pop hl                                           ; $5bd7: $e1
	ld [bc], a                                       ; $5bd8: $02
	rlca                                             ; $5bd9: $07
	db $e3                                           ; $5bda: $e3
	and b                                            ; $5bdb: $a0
	add b                                            ; $5bdc: $80
	and b                                            ; $5bdd: $a0
	rrca                                             ; $5bde: $0f
	nop                                              ; $5bdf: $00
	inc bc                                           ; $5be0: $03
	db $e4                                           ; $5be1: $e4
	nop                                              ; $5be2: $00
	dec bc                                           ; $5be3: $0b
	rst $38                                          ; $5be4: $ff
	rlca                                             ; $5be5: $07
	ld b, b                                          ; $5be6: $40
	add b                                            ; $5be7: $80
	and b                                            ; $5be8: $a0
	rrca                                             ; $5be9: $0f
	db $e4                                           ; $5bea: $e4
	nop                                              ; $5beb: $00
	xor e                                            ; $5bec: $ab
	jr z, jr_07d_5bf5                                ; $5bed: $28 $06

	ret nz                                           ; $5bef: $c0

	ld bc, $02a0                                     ; $5bf0: $01 $a0 $02
	ld [bc], a                                       ; $5bf3: $02
	add a                                            ; $5bf4: $87

jr_07d_5bf5:
	and b                                            ; $5bf5: $a0
	ld [bc], a                                       ; $5bf6: $02
	adc l                                            ; $5bf7: $8d
	add hl, bc                                       ; $5bf8: $09
	inc [hl]                                         ; $5bf9: $34
	add d                                            ; $5bfa: $82
	ret nz                                           ; $5bfb: $c0

	dec de                                           ; $5bfc: $1b
	ret nc                                           ; $5bfd: $d0

	ld [bc], a                                       ; $5bfe: $02
	ret nc                                           ; $5bff: $d0

	pop de                                           ; $5c00: $d1
	ld a, [bc]                                       ; $5c01: $0a
	pop hl                                           ; $5c02: $e1
	ld [bc], a                                       ; $5c03: $02
	inc bc                                           ; $5c04: $03
	rrca                                             ; $5c05: $0f
	ret nz                                           ; $5c06: $c0

	ld bc, $02a0                                     ; $5c07: $01 $a0 $02
	ld [bc], a                                       ; $5c0a: $02
	adc a                                            ; $5c0b: $8f
	ld [bc], a                                       ; $5c0c: $02
	jp nc, $0ad3                                     ; $5c0d: $d2 $d3 $0a

	pop hl                                           ; $5c10: $e1
	ld [bc], a                                       ; $5c11: $02
	inc bc                                           ; $5c12: $03
	inc de                                           ; $5c13: $13
	ret nz                                           ; $5c14: $c0

	ld bc, $02a0                                     ; $5c15: $01 $a0 $02
	ld [bc], a                                       ; $5c18: $02
	sbc b                                            ; $5c19: $98
	ld bc, $0ad4                                     ; $5c1a: $01 $d4 $0a
	pop hl                                           ; $5c1d: $e1
	ld [bc], a                                       ; $5c1e: $02
	inc bc                                           ; $5c1f: $03
	inc de                                           ; $5c20: $13
	ret nz                                           ; $5c21: $c0

	ld bc, $02a0                                     ; $5c22: $01 $a0 $02
	ld [bc], a                                       ; $5c25: $02
	and l                                            ; $5c26: $a5
	pop hl                                           ; $5c27: $e1
	ld [bc], a                                       ; $5c28: $02
	inc bc                                           ; $5c29: $03
	ld [hl], $e4                                     ; $5c2a: $36 $e4
	rlca                                             ; $5c2c: $07
	ld hl, $b002                                     ; $5c2d: $21 $02 $b0
	add hl, bc                                       ; $5c30: $09
	inc [hl]                                         ; $5c31: $34
	add d                                            ; $5c32: $82
	ret nz                                           ; $5c33: $c0

	dec de                                           ; $5c34: $1b
	ret nc                                           ; $5c35: $d0

	ld [bc], a                                       ; $5c36: $02
	ret nc                                           ; $5c37: $d0

	pop de                                           ; $5c38: $d1
	ld a, [bc]                                       ; $5c39: $0a
	pop hl                                           ; $5c3a: $e1
	ld [bc], a                                       ; $5c3b: $02
	inc bc                                           ; $5c3c: $03
	dec de                                           ; $5c3d: $1b
	ret nz                                           ; $5c3e: $c0

	ld bc, $02a0                                     ; $5c3f: $01 $a0 $02
	ld [bc], a                                       ; $5c42: $02
	or d                                             ; $5c43: $b2
	ld [bc], a                                       ; $5c44: $02
	jp nc, $0ad3                                     ; $5c45: $d2 $d3 $0a

	pop hl                                           ; $5c48: $e1
	ld [bc], a                                       ; $5c49: $02
	inc bc                                           ; $5c4a: $03
	rra                                              ; $5c4b: $1f
	ret nz                                           ; $5c4c: $c0

	ld bc, $02a0                                     ; $5c4d: $01 $a0 $02
	ld [bc], a                                       ; $5c50: $02
	cp d                                             ; $5c51: $ba
	ld bc, $0ad4                                     ; $5c52: $01 $d4 $0a
	pop hl                                           ; $5c55: $e1
	ld [bc], a                                       ; $5c56: $02
	inc bc                                           ; $5c57: $03
	rra                                              ; $5c58: $1f
	ret nz                                           ; $5c59: $c0

	ld bc, $02a0                                     ; $5c5a: $01 $a0 $02
	ld [bc], a                                       ; $5c5d: $02
	jp z, $02e1                                      ; $5c5e: $ca $e1 $02

	inc bc                                           ; $5c61: $03
	ld d, c                                          ; $5c62: $51
	db $e4                                           ; $5c63: $e4
	ld b, $e9                                        ; $5c64: $06 $e9
	ld [bc], a                                       ; $5c66: $02
	jp nc, $2c09                                     ; $5c67: $d2 $09 $2c

	pop hl                                           ; $5c6a: $e1
	ld [bc], a                                       ; $5c6b: $02
	inc bc                                           ; $5c6c: $03
	dec de                                           ; $5c6d: $1b
	add d                                            ; $5c6e: $82
	ret nz                                           ; $5c6f: $c0

	dec de                                           ; $5c70: $1b
	ret nc                                           ; $5c71: $d0

	ld [bc], a                                       ; $5c72: $02
	ret nc                                           ; $5c73: $d0

	pop de                                           ; $5c74: $d1
	ld b, $c0                                        ; $5c75: $06 $c0
	ld bc, $02a0                                     ; $5c77: $01 $a0 $02
	ld [bc], a                                       ; $5c7a: $02
	call nc, $d202                                   ; $5c7b: $d4 $02 $d2
	db $d3                                           ; $5c7e: $d3
	ld b, $c0                                        ; $5c7f: $06 $c0
	ld bc, $02a0                                     ; $5c81: $01 $a0 $02
	ld [bc], a                                       ; $5c84: $02
	db $e4                                           ; $5c85: $e4
	ld bc, $06d4                                     ; $5c86: $01 $d4 $06
	ret nz                                           ; $5c89: $c0

	ld bc, $02a0                                     ; $5c8a: $01 $a0 $02
	ld [bc], a                                       ; $5c8d: $02
	rst AddAOntoHL                                          ; $5c8e: $ef
	pop hl                                           ; $5c8f: $e1
	ld [bc], a                                       ; $5c90: $02
	inc bc                                           ; $5c91: $03
	ld c, b                                          ; $5c92: $48
	db $e4                                           ; $5c93: $e4
	ld b, $b9                                        ; $5c94: $06 $b9
	jr z, jr_07d_5c9e                                ; $5c96: $28 $06

	ret nz                                           ; $5c98: $c0

	ld bc, $02a0                                     ; $5c99: $01 $a0 $02
	ld [bc], a                                       ; $5c9c: $02
	ld sp, hl                                        ; $5c9d: $f9

jr_07d_5c9e:
	sub b                                            ; $5c9e: $90
	inc bc                                           ; $5c9f: $03
	inc b                                            ; $5ca0: $04
	add hl, bc                                       ; $5ca1: $09
	inc l                                            ; $5ca2: $2c
	pop hl                                           ; $5ca3: $e1
	ld [bc], a                                       ; $5ca4: $02
	inc bc                                           ; $5ca5: $03
	inc de                                           ; $5ca6: $13
	add d                                            ; $5ca7: $82
	ret nz                                           ; $5ca8: $c0

	dec de                                           ; $5ca9: $1b
	ret nc                                           ; $5caa: $d0

	ld [bc], a                                       ; $5cab: $02
	ret nc                                           ; $5cac: $d0

	pop de                                           ; $5cad: $d1
	ld b, $c0                                        ; $5cae: $06 $c0
	ld bc, $02a0                                     ; $5cb0: $01 $a0 $02
	inc bc                                           ; $5cb3: $03
	ld a, [bc]                                       ; $5cb4: $0a
	ld [bc], a                                       ; $5cb5: $02
	jp nc, $06d3                                     ; $5cb6: $d2 $d3 $06

	ret nz                                           ; $5cb9: $c0

	ld bc, $02a0                                     ; $5cba: $01 $a0 $02
	inc bc                                           ; $5cbd: $03
	ld d, $01                                        ; $5cbe: $16 $01
	call nc, $c006                                   ; $5cc0: $d4 $06 $c0
	ld bc, $02a0                                     ; $5cc3: $01 $a0 $02
	inc bc                                           ; $5cc6: $03
	inc hl                                           ; $5cc7: $23
	pop hl                                           ; $5cc8: $e1
	ld [bc], a                                       ; $5cc9: $02
	inc bc                                           ; $5cca: $03
	ld [hl], $e4                                     ; $5ccb: $36 $e4
	ld b, $80                                        ; $5ccd: $06 $80
	inc bc                                           ; $5ccf: $03
	dec hl                                           ; $5cd0: $2b
	add hl, bc                                       ; $5cd1: $09
	inc l                                            ; $5cd2: $2c
	pop hl                                           ; $5cd3: $e1
	ld [bc], a                                       ; $5cd4: $02
	inc bc                                           ; $5cd5: $03
	dec de                                           ; $5cd6: $1b
	add d                                            ; $5cd7: $82
	ret nz                                           ; $5cd8: $c0

	dec de                                           ; $5cd9: $1b
	ret nc                                           ; $5cda: $d0

	ld [bc], a                                       ; $5cdb: $02
	ret nc                                           ; $5cdc: $d0

	pop de                                           ; $5cdd: $d1
	ld b, $c0                                        ; $5cde: $06 $c0
	ld bc, $02a0                                     ; $5ce0: $01 $a0 $02
	inc bc                                           ; $5ce3: $03
	inc sp                                           ; $5ce4: $33
	ld [bc], a                                       ; $5ce5: $02
	jp nc, $06d3                                     ; $5ce6: $d2 $d3 $06

	ret nz                                           ; $5ce9: $c0

	ld bc, $02a0                                     ; $5cea: $01 $a0 $02
	inc bc                                           ; $5ced: $03
	ld b, b                                          ; $5cee: $40
	ld bc, $06d4                                     ; $5cef: $01 $d4 $06
	ret nz                                           ; $5cf2: $c0

	ld bc, $02a0                                     ; $5cf3: $01 $a0 $02
	inc bc                                           ; $5cf6: $03
	ld c, e                                          ; $5cf7: $4b
	pop hl                                           ; $5cf8: $e1
	ld [bc], a                                       ; $5cf9: $02
	inc bc                                           ; $5cfa: $03
	ld c, b                                          ; $5cfb: $48
	db $e4                                           ; $5cfc: $e4
	ld b, $50                                        ; $5cfd: $06 $50
	inc bc                                           ; $5cff: $03
	ld d, d                                          ; $5d00: $52
	add hl, bc                                       ; $5d01: $09
	inc l                                            ; $5d02: $2c
	pop hl                                           ; $5d03: $e1
	ld [bc], a                                       ; $5d04: $02
	inc bc                                           ; $5d05: $03
	rla                                              ; $5d06: $17
	add d                                            ; $5d07: $82
	ret nz                                           ; $5d08: $c0

	dec de                                           ; $5d09: $1b
	ret nc                                           ; $5d0a: $d0

	ld [bc], a                                       ; $5d0b: $02
	ret nc                                           ; $5d0c: $d0

	pop de                                           ; $5d0d: $d1
	ld b, $c0                                        ; $5d0e: $06 $c0
	ld bc, $02a0                                     ; $5d10: $01 $a0 $02
	inc bc                                           ; $5d13: $03
	ld d, l                                          ; $5d14: $55
	ld [bc], a                                       ; $5d15: $02
	jp nc, $06d3                                     ; $5d16: $d2 $d3 $06

	ret nz                                           ; $5d19: $c0

	ld bc, $02a0                                     ; $5d1a: $01 $a0 $02
	inc bc                                           ; $5d1d: $03
	ld e, a                                          ; $5d1e: $5f
	ld bc, $06d4                                     ; $5d1f: $01 $d4 $06
	ret nz                                           ; $5d22: $c0

	ld bc, $02a0                                     ; $5d23: $01 $a0 $02
	inc bc                                           ; $5d26: $03
	ld l, e                                          ; $5d27: $6b
	pop hl                                           ; $5d28: $e1
	ld [bc], a                                       ; $5d29: $02
	inc bc                                           ; $5d2a: $03
	ccf                                              ; $5d2b: $3f
	db $e4                                           ; $5d2c: $e4
	ld b, $20                                        ; $5d2d: $06 $20
	add hl, bc                                       ; $5d2f: $09
	dec hl                                           ; $5d30: $2b
	pop bc                                           ; $5d31: $c1
	ld e, c                                          ; $5d32: $59
	db $e3                                           ; $5d33: $e3
	nop                                              ; $5d34: $00
	adc [hl]                                         ; $5d35: $8e
	ret nz                                           ; $5d36: $c0

	ld bc, $02a0                                     ; $5d37: $01 $a0 $02
	inc bc                                           ; $5d3a: $03
	ld [hl], c                                       ; $5d3b: $71
	ld h, b                                          ; $5d3c: $60
	cp $08                                           ; $5d3d: $fe $08
	db $fc                                           ; $5d3f: $fc
	ret nz                                           ; $5d40: $c0

	ld l, d                                          ; $5d41: $6a
	db $d3                                           ; $5d42: $d3
	pop af                                           ; $5d43: $f1
	add b                                            ; $5d44: $80
	and b                                            ; $5d45: $a0
	db $10                                           ; $5d46: $10
	db $10                                           ; $5d47: $10
	add c                                            ; $5d48: $81
	ret nz                                           ; $5d49: $c0

	dec de                                           ; $5d4a: $1b
	ret nc                                           ; $5d4b: $d0

	ld [bc], a                                       ; $5d4c: $02
	ret nc                                           ; $5d4d: $d0

	pop de                                           ; $5d4e: $d1
	inc bc                                           ; $5d4f: $03
	db $e4                                           ; $5d50: $e4
	dec b                                            ; $5d51: $05
	ld e, [hl]                                       ; $5d52: $5e
	nop                                              ; $5d53: $00
	inc bc                                           ; $5d54: $03
	ldh [rP1], a                                     ; $5d55: $e0 $00
	ld b, $03                                        ; $5d57: $06 $03
	ldh [rP1], a                                     ; $5d59: $e0 $00
	ld [bc], a                                       ; $5d5b: $02
	ld d, $e1                                        ; $5d5c: $16 $e1
	ld [bc], a                                       ; $5d5e: $02
	rlca                                             ; $5d5f: $07
	rst FarCall                                          ; $5d60: $f7
	and b                                            ; $5d61: $a0
	add b                                            ; $5d62: $80
	and b                                            ; $5d63: $a0
	ld de, $0300                                     ; $5d64: $11 $00 $03
	db $e4                                           ; $5d67: $e4
	nop                                              ; $5d68: $00
	dec bc                                           ; $5d69: $0b
	rst $38                                          ; $5d6a: $ff
	rlca                                             ; $5d6b: $07
	ld b, b                                          ; $5d6c: $40
	add b                                            ; $5d6d: $80
	and b                                            ; $5d6e: $a0
	ld de, $00e4                                     ; $5d6f: $11 $e4 $00
	sbc e                                            ; $5d72: $9b
	jr z, jr_07d_5d7b                                ; $5d73: $28 $06

	ret nz                                           ; $5d75: $c0

	ld bc, $02a0                                     ; $5d76: $01 $a0 $02
	inc bc                                           ; $5d79: $03
	ld a, c                                          ; $5d7a: $79

jr_07d_5d7b:
	sub b                                            ; $5d7b: $90
	inc bc                                           ; $5d7c: $03
	ld a, [hl]                                       ; $5d7d: $7e
	add hl, bc                                       ; $5d7e: $09
	inc l                                            ; $5d7f: $2c
	pop hl                                           ; $5d80: $e1
	ld [bc], a                                       ; $5d81: $02
	inc bc                                           ; $5d82: $03
	rrca                                             ; $5d83: $0f
	add d                                            ; $5d84: $82
	ret nz                                           ; $5d85: $c0

	dec de                                           ; $5d86: $1b
	ret nc                                           ; $5d87: $d0

	ld [bc], a                                       ; $5d88: $02
	ret nc                                           ; $5d89: $d0

	pop de                                           ; $5d8a: $d1
	ld b, $c0                                        ; $5d8b: $06 $c0
	ld bc, $02a0                                     ; $5d8d: $01 $a0 $02
	inc bc                                           ; $5d90: $03
	add l                                            ; $5d91: $85
	ld [bc], a                                       ; $5d92: $02
	jp nc, $06d3                                     ; $5d93: $d2 $d3 $06

	ret nz                                           ; $5d96: $c0

	ld bc, $02a0                                     ; $5d97: $01 $a0 $02
	inc bc                                           ; $5d9a: $03
	adc a                                            ; $5d9b: $8f
	ld bc, $06d4                                     ; $5d9c: $01 $d4 $06
	ret nz                                           ; $5d9f: $c0

	ld bc, $02a0                                     ; $5da0: $01 $a0 $02
	inc bc                                           ; $5da3: $03
	sbc d                                            ; $5da4: $9a
	pop hl                                           ; $5da5: $e1
	ld [bc], a                                       ; $5da6: $02
	inc bc                                           ; $5da7: $03
	dec l                                            ; $5da8: $2d
	db $e4                                           ; $5da9: $e4
	dec b                                            ; $5daa: $05
	and e                                            ; $5dab: $a3
	inc bc                                           ; $5dac: $03
	xor b                                            ; $5dad: $a8
	add hl, bc                                       ; $5dae: $09
	inc l                                            ; $5daf: $2c
	pop hl                                           ; $5db0: $e1
	ld [bc], a                                       ; $5db1: $02
	inc bc                                           ; $5db2: $03
	rra                                              ; $5db3: $1f
	add d                                            ; $5db4: $82
	ret nz                                           ; $5db5: $c0

	dec de                                           ; $5db6: $1b
	ret nc                                           ; $5db7: $d0

	ld [bc], a                                       ; $5db8: $02
	ret nc                                           ; $5db9: $d0

	pop de                                           ; $5dba: $d1
	ld b, $c0                                        ; $5dbb: $06 $c0
	ld bc, $02a0                                     ; $5dbd: $01 $a0 $02
	inc bc                                           ; $5dc0: $03
	xor d                                            ; $5dc1: $aa
	ld [bc], a                                       ; $5dc2: $02
	jp nc, $06d3                                     ; $5dc3: $d2 $d3 $06

	ret nz                                           ; $5dc6: $c0

	ld bc, $02a0                                     ; $5dc7: $01 $a0 $02
	inc bc                                           ; $5dca: $03
	or d                                             ; $5dcb: $b2
	ld bc, $06d4                                     ; $5dcc: $01 $d4 $06
	ret nz                                           ; $5dcf: $c0

	ld bc, $02a0                                     ; $5dd0: $01 $a0 $02
	inc bc                                           ; $5dd3: $03
	ret nz                                           ; $5dd4: $c0

	pop hl                                           ; $5dd5: $e1
	ld [bc], a                                       ; $5dd6: $02
	inc bc                                           ; $5dd7: $03
	ld d, c                                          ; $5dd8: $51
	db $e4                                           ; $5dd9: $e4
	dec b                                            ; $5dda: $05
	ld [hl], e                                       ; $5ddb: $73
	inc bc                                           ; $5ddc: $03
	ret                                              ; $5ddd: $c9


	add hl, bc                                       ; $5dde: $09
	inc l                                            ; $5ddf: $2c
	pop hl                                           ; $5de0: $e1
	ld [bc], a                                       ; $5de1: $02
	inc bc                                           ; $5de2: $03
	rla                                              ; $5de3: $17
	add d                                            ; $5de4: $82
	ret nz                                           ; $5de5: $c0

	dec de                                           ; $5de6: $1b
	ret nc                                           ; $5de7: $d0

	ld [bc], a                                       ; $5de8: $02
	ret nc                                           ; $5de9: $d0

	pop de                                           ; $5dea: $d1
	ld b, $c0                                        ; $5deb: $06 $c0
	ld bc, $02a0                                     ; $5ded: $01 $a0 $02
	inc bc                                           ; $5df0: $03
	rlc d                                            ; $5df1: $cb $02
	jp nc, $06d3                                     ; $5df3: $d2 $d3 $06

	ret nz                                           ; $5df6: $c0

	ld bc, $02a0                                     ; $5df7: $01 $a0 $02
	inc bc                                           ; $5dfa: $03
	push de                                          ; $5dfb: $d5
	ld bc, $06d4                                     ; $5dfc: $01 $d4 $06
	ret nz                                           ; $5dff: $c0

	ld bc, $02a0                                     ; $5e00: $01 $a0 $02
	inc bc                                           ; $5e03: $03
	rst SubAFromDE                                          ; $5e04: $df
	pop hl                                           ; $5e05: $e1
	ld [bc], a                                       ; $5e06: $02
	inc bc                                           ; $5e07: $03
	ccf                                              ; $5e08: $3f
	db $e4                                           ; $5e09: $e4
	dec b                                            ; $5e0a: $05
	ld b, e                                          ; $5e0b: $43
	jr z, jr_07d_5e14                                ; $5e0c: $28 $06

	ret nz                                           ; $5e0e: $c0

	ld bc, $02a0                                     ; $5e0f: $01 $a0 $02
	inc bc                                           ; $5e12: $03
	db $ed                                           ; $5e13: $ed

jr_07d_5e14:
	sub b                                            ; $5e14: $90
	inc bc                                           ; $5e15: $03
	db $f4                                           ; $5e16: $f4
	add hl, bc                                       ; $5e17: $09
	inc l                                            ; $5e18: $2c
	pop hl                                           ; $5e19: $e1
	ld [bc], a                                       ; $5e1a: $02
	inc bc                                           ; $5e1b: $03
	rrca                                             ; $5e1c: $0f
	add d                                            ; $5e1d: $82
	ret nz                                           ; $5e1e: $c0

	dec de                                           ; $5e1f: $1b
	ret nc                                           ; $5e20: $d0

	ld [bc], a                                       ; $5e21: $02
	ret nc                                           ; $5e22: $d0

	pop de                                           ; $5e23: $d1
	ld b, $c0                                        ; $5e24: $06 $c0
	ld bc, $02a0                                     ; $5e26: $01 $a0 $02
	inc bc                                           ; $5e29: $03
	ld a, [$d202]                                    ; $5e2a: $fa $02 $d2
	db $d3                                           ; $5e2d: $d3
	ld b, $c0                                        ; $5e2e: $06 $c0
	ld bc, $02a0                                     ; $5e30: $01 $a0 $02
	inc b                                            ; $5e33: $04
	nop                                              ; $5e34: $00
	ld bc, $06d4                                     ; $5e35: $01 $d4 $06
	ret nz                                           ; $5e38: $c0

	ld bc, $02a0                                     ; $5e39: $01 $a0 $02
	inc b                                            ; $5e3c: $04
	ld a, [bc]                                       ; $5e3d: $0a
	pop hl                                           ; $5e3e: $e1
	ld [bc], a                                       ; $5e3f: $02
	inc bc                                           ; $5e40: $03
	dec l                                            ; $5e41: $2d
	db $e4                                           ; $5e42: $e4
	dec b                                            ; $5e43: $05
	ld a, [bc]                                       ; $5e44: $0a
	inc b                                            ; $5e45: $04
	add hl, de                                       ; $5e46: $19
	add hl, bc                                       ; $5e47: $09
	inc l                                            ; $5e48: $2c
	pop hl                                           ; $5e49: $e1
	ld [bc], a                                       ; $5e4a: $02
	inc bc                                           ; $5e4b: $03
	dec de                                           ; $5e4c: $1b
	add d                                            ; $5e4d: $82
	ret nz                                           ; $5e4e: $c0

	dec de                                           ; $5e4f: $1b
	ret nc                                           ; $5e50: $d0

	ld [bc], a                                       ; $5e51: $02
	ret nc                                           ; $5e52: $d0

	pop de                                           ; $5e53: $d1
	ld b, $c0                                        ; $5e54: $06 $c0
	ld bc, $02a0                                     ; $5e56: $01 $a0 $02
	inc b                                            ; $5e59: $04
	jr nz, @+$04                                     ; $5e5a: $20 $02

	jp nc, $06d3                                     ; $5e5c: $d2 $d3 $06

	ret nz                                           ; $5e5f: $c0

	ld bc, $02a0                                     ; $5e60: $01 $a0 $02
	inc b                                            ; $5e63: $04
	dec hl                                           ; $5e64: $2b
	ld bc, $06d4                                     ; $5e65: $01 $d4 $06
	ret nz                                           ; $5e68: $c0

	ld bc, $02a0                                     ; $5e69: $01 $a0 $02
	inc b                                            ; $5e6c: $04
	ld sp, $02e1                                     ; $5e6d: $31 $e1 $02
	inc bc                                           ; $5e70: $03
	ld c, b                                          ; $5e71: $48
	db $e4                                           ; $5e72: $e4
	inc b                                            ; $5e73: $04
	jp c, $3604                                      ; $5e74: $da $04 $36

	add hl, bc                                       ; $5e77: $09
	inc l                                            ; $5e78: $2c
	pop hl                                           ; $5e79: $e1
	ld [bc], a                                       ; $5e7a: $02
	inc bc                                           ; $5e7b: $03
	rla                                              ; $5e7c: $17
	add d                                            ; $5e7d: $82
	ret nz                                           ; $5e7e: $c0

	dec de                                           ; $5e7f: $1b
	ret nc                                           ; $5e80: $d0

	ld [bc], a                                       ; $5e81: $02
	ret nc                                           ; $5e82: $d0

	pop de                                           ; $5e83: $d1
	ld b, $c0                                        ; $5e84: $06 $c0
	ld bc, $02a0                                     ; $5e86: $01 $a0 $02
	inc b                                            ; $5e89: $04
	ld a, $02                                        ; $5e8a: $3e $02
	jp nc, $06d3                                     ; $5e8c: $d2 $d3 $06

	ret nz                                           ; $5e8f: $c0

	ld bc, $02a0                                     ; $5e90: $01 $a0 $02
	inc b                                            ; $5e93: $04
	ld b, l                                          ; $5e94: $45
	ld bc, $06d4                                     ; $5e95: $01 $d4 $06
	ret nz                                           ; $5e98: $c0

	ld bc, $02a0                                     ; $5e99: $01 $a0 $02
	inc b                                            ; $5e9c: $04
	ld c, [hl]                                       ; $5e9d: $4e
	pop hl                                           ; $5e9e: $e1
	ld [bc], a                                       ; $5e9f: $02
	inc bc                                           ; $5ea0: $03
	ccf                                              ; $5ea1: $3f
	db $e4                                           ; $5ea2: $e4
	inc b                                            ; $5ea3: $04
	xor d                                            ; $5ea4: $aa
	add hl, bc                                       ; $5ea5: $09
	daa                                              ; $5ea6: $27
	pop bc                                           ; $5ea7: $c1
	ld e, c                                          ; $5ea8: $59
	db $e3                                           ; $5ea9: $e3
	nop                                              ; $5eaa: $00
	adc a                                            ; $5eab: $8f
	ret nz                                           ; $5eac: $c0

	ld bc, $02a0                                     ; $5ead: $01 $a0 $02
	inc b                                            ; $5eb0: $04
	ld d, [hl]                                       ; $5eb1: $56
	ret nz                                           ; $5eb2: $c0

	ld bc, $01a0                                     ; $5eb3: $01 $a0 $01
	inc b                                            ; $5eb6: $04
	ld e, a                                          ; $5eb7: $5f
	pop hl                                           ; $5eb8: $e1
	ld [bc], a                                       ; $5eb9: $02
	ld [$a016], sp                                   ; $5eba: $08 $16 $a0
	add b                                            ; $5ebd: $80
	and b                                            ; $5ebe: $a0
	ld [de], a                                       ; $5ebf: $12
	nop                                              ; $5ec0: $00
	inc bc                                           ; $5ec1: $03
	db $e4                                           ; $5ec2: $e4
	nop                                              ; $5ec3: $00
	dec bc                                           ; $5ec4: $0b
	rst $38                                          ; $5ec5: $ff
	rlca                                             ; $5ec6: $07
	ld b, b                                          ; $5ec7: $40
	add b                                            ; $5ec8: $80
	and b                                            ; $5ec9: $a0
	ld [de], a                                       ; $5eca: $12
	db $e4                                           ; $5ecb: $e4
	nop                                              ; $5ecc: $00
	sbc e                                            ; $5ecd: $9b
	jr z, jr_07d_5ed6                                ; $5ece: $28 $06

	ret nz                                           ; $5ed0: $c0

	ld bc, $02a0                                     ; $5ed1: $01 $a0 $02
	inc b                                            ; $5ed4: $04
	ld l, b                                          ; $5ed5: $68

jr_07d_5ed6:
	sub b                                            ; $5ed6: $90
	inc b                                            ; $5ed7: $04
	ld [hl], b                                       ; $5ed8: $70
	add hl, bc                                       ; $5ed9: $09
	inc l                                            ; $5eda: $2c
	pop hl                                           ; $5edb: $e1
	ld [bc], a                                       ; $5edc: $02
	inc bc                                           ; $5edd: $03
	rla                                              ; $5ede: $17
	add d                                            ; $5edf: $82
	ret nz                                           ; $5ee0: $c0

	dec de                                           ; $5ee1: $1b
	ret nc                                           ; $5ee2: $d0

	ld [bc], a                                       ; $5ee3: $02
	ret nc                                           ; $5ee4: $d0

	pop de                                           ; $5ee5: $d1
	ld b, $c0                                        ; $5ee6: $06 $c0
	ld bc, $02a0                                     ; $5ee8: $01 $a0 $02
	inc b                                            ; $5eeb: $04
	ld [hl], d                                       ; $5eec: $72
	ld [bc], a                                       ; $5eed: $02
	jp nc, $06d3                                     ; $5eee: $d2 $d3 $06

	ret nz                                           ; $5ef1: $c0

	ld bc, $02a0                                     ; $5ef2: $01 $a0 $02
	inc b                                            ; $5ef5: $04
	ld a, [hl]                                       ; $5ef6: $7e
	ld bc, $06d4                                     ; $5ef7: $01 $d4 $06
	ret nz                                           ; $5efa: $c0

	ld bc, $02a0                                     ; $5efb: $01 $a0 $02
	inc b                                            ; $5efe: $04
	adc b                                            ; $5eff: $88
	pop hl                                           ; $5f00: $e1
	ld [bc], a                                       ; $5f01: $02
	inc bc                                           ; $5f02: $03
	ccf                                              ; $5f03: $3f
	db $e4                                           ; $5f04: $e4
	inc b                                            ; $5f05: $04
	ld c, b                                          ; $5f06: $48
	inc b                                            ; $5f07: $04
	sub c                                            ; $5f08: $91
	add hl, bc                                       ; $5f09: $09
	inc l                                            ; $5f0a: $2c
	pop hl                                           ; $5f0b: $e1
	ld [bc], a                                       ; $5f0c: $02
	inc bc                                           ; $5f0d: $03
	dec de                                           ; $5f0e: $1b
	add d                                            ; $5f0f: $82
	ret nz                                           ; $5f10: $c0

	dec de                                           ; $5f11: $1b
	ret nc                                           ; $5f12: $d0

	ld [bc], a                                       ; $5f13: $02
	ret nc                                           ; $5f14: $d0

	pop de                                           ; $5f15: $d1
	ld b, $c0                                        ; $5f16: $06 $c0
	ld bc, $02a0                                     ; $5f18: $01 $a0 $02
	inc b                                            ; $5f1b: $04
	sub e                                            ; $5f1c: $93
	ld [bc], a                                       ; $5f1d: $02
	jp nc, $06d3                                     ; $5f1e: $d2 $d3 $06

	ret nz                                           ; $5f21: $c0

	ld bc, $02a0                                     ; $5f22: $01 $a0 $02
	inc b                                            ; $5f25: $04
	sbc d                                            ; $5f26: $9a
	ld bc, $06d4                                     ; $5f27: $01 $d4 $06
	ret nz                                           ; $5f2a: $c0

	ld bc, $02a0                                     ; $5f2b: $01 $a0 $02
	inc b                                            ; $5f2e: $04
	and [hl]                                         ; $5f2f: $a6
	pop hl                                           ; $5f30: $e1
	ld [bc], a                                       ; $5f31: $02
	inc bc                                           ; $5f32: $03
	ld c, b                                          ; $5f33: $48
	db $e4                                           ; $5f34: $e4
	inc b                                            ; $5f35: $04
	jr jr_07d_5f3c                                   ; $5f36: $18 $04

	xor a                                            ; $5f38: $af
	add hl, bc                                       ; $5f39: $09
	inc l                                            ; $5f3a: $2c
	pop hl                                           ; $5f3b: $e1

jr_07d_5f3c:
	ld [bc], a                                       ; $5f3c: $02
	inc bc                                           ; $5f3d: $03
	inc de                                           ; $5f3e: $13
	add d                                            ; $5f3f: $82
	ret nz                                           ; $5f40: $c0

	dec de                                           ; $5f41: $1b
	ret nc                                           ; $5f42: $d0

	ld [bc], a                                       ; $5f43: $02
	ret nc                                           ; $5f44: $d0

	pop de                                           ; $5f45: $d1
	ld b, $c0                                        ; $5f46: $06 $c0
	ld bc, $02a0                                     ; $5f48: $01 $a0 $02
	inc b                                            ; $5f4b: $04
	or [hl]                                          ; $5f4c: $b6
	ld [bc], a                                       ; $5f4d: $02
	jp nc, $06d3                                     ; $5f4e: $d2 $d3 $06

	ret nz                                           ; $5f51: $c0

	ld bc, $02a0                                     ; $5f52: $01 $a0 $02
	inc b                                            ; $5f55: $04
	jp nz, $d401                                     ; $5f56: $c2 $01 $d4

	ld b, $c0                                        ; $5f59: $06 $c0
	ld bc, $02a0                                     ; $5f5b: $01 $a0 $02
	inc b                                            ; $5f5e: $04
	adc $e1                                          ; $5f5f: $ce $e1
	ld [bc], a                                       ; $5f61: $02
	inc bc                                           ; $5f62: $03
	ld [hl], $e4                                     ; $5f63: $36 $e4
	inc bc                                           ; $5f65: $03
	add sp, $28                                      ; $5f66: $e8 $28
	ld b, $c0                                        ; $5f68: $06 $c0
	ld bc, $02a0                                     ; $5f6a: $01 $a0 $02
	inc b                                            ; $5f6d: $04
	reti                                             ; $5f6e: $d9


	sub b                                            ; $5f6f: $90
	inc b                                            ; $5f70: $04
	ldh [c], a                                       ; $5f71: $e2
	add hl, bc                                       ; $5f72: $09
	inc l                                            ; $5f73: $2c
	pop hl                                           ; $5f74: $e1
	ld [bc], a                                       ; $5f75: $02
	inc bc                                           ; $5f76: $03
	inc de                                           ; $5f77: $13
	add d                                            ; $5f78: $82
	ret nz                                           ; $5f79: $c0

	dec de                                           ; $5f7a: $1b
	ret nc                                           ; $5f7b: $d0

	ld [bc], a                                       ; $5f7c: $02
	ret nc                                           ; $5f7d: $d0

	pop de                                           ; $5f7e: $d1
	ld b, $c0                                        ; $5f7f: $06 $c0
	ld bc, $02a0                                     ; $5f81: $01 $a0 $02
	inc b                                            ; $5f84: $04
	ld [$d202], a                                    ; $5f85: $ea $02 $d2
	db $d3                                           ; $5f88: $d3
	ld b, $c0                                        ; $5f89: $06 $c0
	ld bc, $02a0                                     ; $5f8b: $01 $a0 $02
	inc b                                            ; $5f8e: $04
	rst FarCall                                          ; $5f8f: $f7
	ld bc, $06d4                                     ; $5f90: $01 $d4 $06
	ret nz                                           ; $5f93: $c0

	ld bc, $02a0                                     ; $5f94: $01 $a0 $02
	dec b                                            ; $5f97: $05
	ld [bc], a                                       ; $5f98: $02
	pop hl                                           ; $5f99: $e1
	ld [bc], a                                       ; $5f9a: $02
	inc bc                                           ; $5f9b: $03
	ld [hl], $e4                                     ; $5f9c: $36 $e4
	inc bc                                           ; $5f9e: $03
	xor a                                            ; $5f9f: $af
	dec b                                            ; $5fa0: $05
	add hl, bc                                       ; $5fa1: $09
	add hl, bc                                       ; $5fa2: $09
	inc l                                            ; $5fa3: $2c
	pop hl                                           ; $5fa4: $e1
	ld [bc], a                                       ; $5fa5: $02
	inc bc                                           ; $5fa6: $03
	dec de                                           ; $5fa7: $1b
	add d                                            ; $5fa8: $82
	ret nz                                           ; $5fa9: $c0

	dec de                                           ; $5faa: $1b
	ret nc                                           ; $5fab: $d0

	ld [bc], a                                       ; $5fac: $02
	ret nc                                           ; $5fad: $d0

	pop de                                           ; $5fae: $d1
	ld b, $c0                                        ; $5faf: $06 $c0
	ld bc, $02a0                                     ; $5fb1: $01 $a0 $02
	dec b                                            ; $5fb4: $05
	rrca                                             ; $5fb5: $0f
	ld [bc], a                                       ; $5fb6: $02
	jp nc, $06d3                                     ; $5fb7: $d2 $d3 $06

	ret nz                                           ; $5fba: $c0

	ld bc, $02a0                                     ; $5fbb: $01 $a0 $02
	dec b                                            ; $5fbe: $05
	jr @+$03                                         ; $5fbf: $18 $01

	call nc, $c006                                   ; $5fc1: $d4 $06 $c0
	ld bc, $02a0                                     ; $5fc4: $01 $a0 $02
	dec b                                            ; $5fc7: $05
	ld h, $e1                                        ; $5fc8: $26 $e1
	ld [bc], a                                       ; $5fca: $02
	inc bc                                           ; $5fcb: $03
	ld d, c                                          ; $5fcc: $51
	db $e4                                           ; $5fcd: $e4
	inc bc                                           ; $5fce: $03
	ld a, a                                          ; $5fcf: $7f
	dec b                                            ; $5fd0: $05
	ld sp, $2c09                                     ; $5fd1: $31 $09 $2c
	pop hl                                           ; $5fd4: $e1
	ld [bc], a                                       ; $5fd5: $02
	inc bc                                           ; $5fd6: $03
	rla                                              ; $5fd7: $17
	add d                                            ; $5fd8: $82
	ret nz                                           ; $5fd9: $c0

	dec de                                           ; $5fda: $1b
	ret nc                                           ; $5fdb: $d0

	ld [bc], a                                       ; $5fdc: $02
	ret nc                                           ; $5fdd: $d0

	pop de                                           ; $5fde: $d1
	ld b, $c0                                        ; $5fdf: $06 $c0
	ld bc, $02a0                                     ; $5fe1: $01 $a0 $02
	dec b                                            ; $5fe4: $05
	scf                                              ; $5fe5: $37
	ld [bc], a                                       ; $5fe6: $02
	jp nc, $06d3                                     ; $5fe7: $d2 $d3 $06

	ret nz                                           ; $5fea: $c0

	ld bc, $02a0                                     ; $5feb: $01 $a0 $02
	dec b                                            ; $5fee: $05
	ccf                                              ; $5fef: $3f
	ld bc, $06d4                                     ; $5ff0: $01 $d4 $06
	ret nz                                           ; $5ff3: $c0

	ld bc, $02a0                                     ; $5ff4: $01 $a0 $02
	dec b                                            ; $5ff7: $05
	ld c, e                                          ; $5ff8: $4b
	pop hl                                           ; $5ff9: $e1
	ld [bc], a                                       ; $5ffa: $02
	inc bc                                           ; $5ffb: $03
	ccf                                              ; $5ffc: $3f
	db $e4                                           ; $5ffd: $e4
	inc bc                                           ; $5ffe: $03
	ld c, a                                          ; $5fff: $4f
	add hl, bc                                       ; $6000: $09
	ld hl, $59c1                                     ; $6001: $21 $c1 $59
	db $e3                                           ; $6004: $e3
	nop                                              ; $6005: $00
	sub b                                            ; $6006: $90
	ret nz                                           ; $6007: $c0

	ld bc, $02a0                                     ; $6008: $01 $a0 $02
	dec b                                            ; $600b: $05
	ld d, [hl]                                       ; $600c: $56
	pop hl                                           ; $600d: $e1
	ld [bc], a                                       ; $600e: $02
	ld [$a02a], sp                                   ; $600f: $08 $2a $a0
	add b                                            ; $6012: $80
	and b                                            ; $6013: $a0
	inc de                                           ; $6014: $13
	nop                                              ; $6015: $00
	inc bc                                           ; $6016: $03
	db $e4                                           ; $6017: $e4
	nop                                              ; $6018: $00
	dec bc                                           ; $6019: $0b
	rst $38                                          ; $601a: $ff
	rlca                                             ; $601b: $07
	ld b, b                                          ; $601c: $40
	add b                                            ; $601d: $80
	and b                                            ; $601e: $a0
	inc de                                           ; $601f: $13
	db $e4                                           ; $6020: $e4
	nop                                              ; $6021: $00
	sbc e                                            ; $6022: $9b
	jr z, jr_07d_602b                                ; $6023: $28 $06

	ret nz                                           ; $6025: $c0

	ld bc, $02a0                                     ; $6026: $01 $a0 $02
	dec b                                            ; $6029: $05
	ld e, a                                          ; $602a: $5f

jr_07d_602b:
	sub b                                            ; $602b: $90
	dec b                                            ; $602c: $05
	ld h, a                                          ; $602d: $67
	add hl, bc                                       ; $602e: $09
	inc l                                            ; $602f: $2c
	pop hl                                           ; $6030: $e1
	ld [bc], a                                       ; $6031: $02
	inc bc                                           ; $6032: $03
	rrca                                             ; $6033: $0f
	add d                                            ; $6034: $82
	ret nz                                           ; $6035: $c0

	dec de                                           ; $6036: $1b
	ret nc                                           ; $6037: $d0

	ld [bc], a                                       ; $6038: $02
	ret nc                                           ; $6039: $d0

	pop de                                           ; $603a: $d1
	ld b, $c0                                        ; $603b: $06 $c0
	ld bc, $02a0                                     ; $603d: $01 $a0 $02
	dec b                                            ; $6040: $05
	ld [hl], c                                       ; $6041: $71
	ld [bc], a                                       ; $6042: $02
	jp nc, $06d3                                     ; $6043: $d2 $d3 $06

	ret nz                                           ; $6046: $c0

	ld bc, $02a0                                     ; $6047: $01 $a0 $02
	dec b                                            ; $604a: $05
	add c                                            ; $604b: $81
	ld bc, $06d4                                     ; $604c: $01 $d4 $06
	ret nz                                           ; $604f: $c0

	ld bc, $02a0                                     ; $6050: $01 $a0 $02
	dec b                                            ; $6053: $05
	adc h                                            ; $6054: $8c
	pop hl                                           ; $6055: $e1
	ld [bc], a                                       ; $6056: $02
	inc bc                                           ; $6057: $03
	dec l                                            ; $6058: $2d
	db $e4                                           ; $6059: $e4
	ld [bc], a                                       ; $605a: $02
	di                                               ; $605b: $f3
	dec b                                            ; $605c: $05
	sbc b                                            ; $605d: $98
	add hl, bc                                       ; $605e: $09
	inc l                                            ; $605f: $2c
	pop hl                                           ; $6060: $e1
	ld [bc], a                                       ; $6061: $02
	inc bc                                           ; $6062: $03
	rra                                              ; $6063: $1f
	add d                                            ; $6064: $82
	ret nz                                           ; $6065: $c0

	dec de                                           ; $6066: $1b
	ret nc                                           ; $6067: $d0

	ld [bc], a                                       ; $6068: $02
	ret nc                                           ; $6069: $d0

	pop de                                           ; $606a: $d1
	ld b, $c0                                        ; $606b: $06 $c0
	ld bc, $02a0                                     ; $606d: $01 $a0 $02
	dec b                                            ; $6070: $05
	sbc d                                            ; $6071: $9a
	ld [bc], a                                       ; $6072: $02
	jp nc, $06d3                                     ; $6073: $d2 $d3 $06

	ret nz                                           ; $6076: $c0

	ld bc, $02a0                                     ; $6077: $01 $a0 $02
	dec b                                            ; $607a: $05
	and c                                            ; $607b: $a1
	ld bc, $06d4                                     ; $607c: $01 $d4 $06
	ret nz                                           ; $607f: $c0

	ld bc, $02a0                                     ; $6080: $01 $a0 $02
	dec b                                            ; $6083: $05
	xor l                                            ; $6084: $ad
	pop hl                                           ; $6085: $e1
	ld [bc], a                                       ; $6086: $02
	inc bc                                           ; $6087: $03
	ld d, c                                          ; $6088: $51
	db $e4                                           ; $6089: $e4
	ld [bc], a                                       ; $608a: $02
	jp $ba05                                         ; $608b: $c3 $05 $ba


	add hl, bc                                       ; $608e: $09
	inc l                                            ; $608f: $2c
	pop hl                                           ; $6090: $e1
	ld [bc], a                                       ; $6091: $02
	inc bc                                           ; $6092: $03
	rla                                              ; $6093: $17
	add d                                            ; $6094: $82
	ret nz                                           ; $6095: $c0

	dec de                                           ; $6096: $1b
	ret nc                                           ; $6097: $d0

	ld [bc], a                                       ; $6098: $02
	ret nc                                           ; $6099: $d0

	pop de                                           ; $609a: $d1
	ld b, $c0                                        ; $609b: $06 $c0
	ld bc, $02a0                                     ; $609d: $01 $a0 $02
	dec b                                            ; $60a0: $05
	cp h                                             ; $60a1: $bc
	ld [bc], a                                       ; $60a2: $02
	jp nc, $06d3                                     ; $60a3: $d2 $d3 $06

	ret nz                                           ; $60a6: $c0

	ld bc, $02a0                                     ; $60a7: $01 $a0 $02
	dec b                                            ; $60aa: $05
	cp a                                             ; $60ab: $bf
	ld bc, $06d4                                     ; $60ac: $01 $d4 $06
	ret nz                                           ; $60af: $c0

	ld bc, $02a0                                     ; $60b0: $01 $a0 $02
	dec b                                            ; $60b3: $05
	jp $02e1                                         ; $60b4: $c3 $e1 $02


	inc bc                                           ; $60b7: $03
	ccf                                              ; $60b8: $3f
	db $e4                                           ; $60b9: $e4
	ld [bc], a                                       ; $60ba: $02
	sub e                                            ; $60bb: $93
	jr z, @+$08                                      ; $60bc: $28 $06

	ret nz                                           ; $60be: $c0

	ld bc, $02a0                                     ; $60bf: $01 $a0 $02
	dec b                                            ; $60c2: $05
	add $90                                          ; $60c3: $c6 $90
	dec b                                            ; $60c5: $05
	adc $09                                          ; $60c6: $ce $09
	inc l                                            ; $60c8: $2c
	pop hl                                           ; $60c9: $e1
	ld [bc], a                                       ; $60ca: $02
	inc bc                                           ; $60cb: $03
	inc de                                           ; $60cc: $13
	add d                                            ; $60cd: $82
	ret nz                                           ; $60ce: $c0

	dec de                                           ; $60cf: $1b
	ret nc                                           ; $60d0: $d0

	ld [bc], a                                       ; $60d1: $02
	ret nc                                           ; $60d2: $d0

	pop de                                           ; $60d3: $d1
	ld b, $c0                                        ; $60d4: $06 $c0
	ld bc, $02a0                                     ; $60d6: $01 $a0 $02
	dec b                                            ; $60d9: $05
	ret c                                            ; $60da: $d8

	ld [bc], a                                       ; $60db: $02
	jp nc, $06d3                                     ; $60dc: $d2 $d3 $06

	ret nz                                           ; $60df: $c0

	ld bc, $02a0                                     ; $60e0: $01 $a0 $02
	dec b                                            ; $60e3: $05
	db $e4                                           ; $60e4: $e4
	ld bc, $06d4                                     ; $60e5: $01 $d4 $06
	ret nz                                           ; $60e8: $c0

	ld bc, $02a0                                     ; $60e9: $01 $a0 $02
	dec b                                            ; $60ec: $05
	db $ed                                           ; $60ed: $ed
	pop hl                                           ; $60ee: $e1
	ld [bc], a                                       ; $60ef: $02
	inc bc                                           ; $60f0: $03
	ld [hl], $e4                                     ; $60f1: $36 $e4
	ld [bc], a                                       ; $60f3: $02
	ld e, d                                          ; $60f4: $5a
	dec b                                            ; $60f5: $05
	di                                               ; $60f6: $f3
	add hl, bc                                       ; $60f7: $09
	inc l                                            ; $60f8: $2c
	pop hl                                           ; $60f9: $e1
	ld [bc], a                                       ; $60fa: $02
	inc bc                                           ; $60fb: $03
	dec de                                           ; $60fc: $1b
	add d                                            ; $60fd: $82
	ret nz                                           ; $60fe: $c0

	dec de                                           ; $60ff: $1b
	ret nc                                           ; $6100: $d0

	ld [bc], a                                       ; $6101: $02
	ret nc                                           ; $6102: $d0

	pop de                                           ; $6103: $d1
	ld b, $c0                                        ; $6104: $06 $c0
	ld bc, $02a0                                     ; $6106: $01 $a0 $02
	dec b                                            ; $6109: $05
	ld sp, hl                                        ; $610a: $f9
	ld [bc], a                                       ; $610b: $02
	jp nc, $06d3                                     ; $610c: $d2 $d3 $06

	ret nz                                           ; $610f: $c0

	ld bc, $02a0                                     ; $6110: $01 $a0 $02
	ld b, $03                                        ; $6113: $06 $03
	ld bc, $06d4                                     ; $6115: $01 $d4 $06
	ret nz                                           ; $6118: $c0

	ld bc, $02a0                                     ; $6119: $01 $a0 $02
	ld b, $10                                        ; $611c: $06 $10
	pop hl                                           ; $611e: $e1
	ld [bc], a                                       ; $611f: $02
	inc bc                                           ; $6120: $03
	ld c, b                                          ; $6121: $48
	db $e4                                           ; $6122: $e4
	ld [bc], a                                       ; $6123: $02
	ld a, [hl+]                                      ; $6124: $2a
	ld b, $1c                                        ; $6125: $06 $1c
	add hl, bc                                       ; $6127: $09
	inc l                                            ; $6128: $2c
	pop hl                                           ; $6129: $e1
	ld [bc], a                                       ; $612a: $02
	inc bc                                           ; $612b: $03
	rla                                              ; $612c: $17
	add d                                            ; $612d: $82
	ret nz                                           ; $612e: $c0

	dec de                                           ; $612f: $1b
	ret nc                                           ; $6130: $d0

	ld [bc], a                                       ; $6131: $02
	ret nc                                           ; $6132: $d0

	pop de                                           ; $6133: $d1
	ld b, $c0                                        ; $6134: $06 $c0
	ld bc, $02a0                                     ; $6136: $01 $a0 $02
	ld b, $24                                        ; $6139: $06 $24
	ld [bc], a                                       ; $613b: $02
	jp nc, $06d3                                     ; $613c: $d2 $d3 $06

	ret nz                                           ; $613f: $c0

	ld bc, $02a0                                     ; $6140: $01 $a0 $02
	ld bc, $01e9                                     ; $6143: $01 $e9 $01
	call nc, $c006                                   ; $6146: $d4 $06 $c0
	ld bc, $02a0                                     ; $6149: $01 $a0 $02
	ld b, $28                                        ; $614c: $06 $28
	pop hl                                           ; $614e: $e1
	ld [bc], a                                       ; $614f: $02
	inc bc                                           ; $6150: $03
	ccf                                              ; $6151: $3f
	db $e4                                           ; $6152: $e4
	ld bc, $09fa                                     ; $6153: $01 $fa $09
	ld d, $e1                                        ; $6156: $16 $e1
	ld [bc], a                                       ; $6158: $02
	ld [$a03e], sp                                   ; $6159: $08 $3e $a0
	add b                                            ; $615c: $80
	and b                                            ; $615d: $a0
	inc d                                            ; $615e: $14
	nop                                              ; $615f: $00
	inc bc                                           ; $6160: $03
	db $e4                                           ; $6161: $e4
	nop                                              ; $6162: $00
	dec bc                                           ; $6163: $0b
	rst $38                                          ; $6164: $ff
	rlca                                             ; $6165: $07
	ld b, b                                          ; $6166: $40
	add b                                            ; $6167: $80
	and b                                            ; $6168: $a0
	inc d                                            ; $6169: $14
	db $e4                                           ; $616a: $e4
	nop                                              ; $616b: $00
	xor e                                            ; $616c: $ab
	jr z, jr_07d_6175                                ; $616d: $28 $06

	ret nz                                           ; $616f: $c0

	ld bc, $02a0                                     ; $6170: $01 $a0 $02
	ld b, $2d                                        ; $6173: $06 $2d

jr_07d_6175:
	and b                                            ; $6175: $a0
	ld b, $37                                        ; $6176: $06 $37
	add hl, bc                                       ; $6178: $09
	inc [hl]                                         ; $6179: $34
	add d                                            ; $617a: $82
	ret nz                                           ; $617b: $c0

	dec de                                           ; $617c: $1b
	ret nc                                           ; $617d: $d0

	ld [bc], a                                       ; $617e: $02
	ret nc                                           ; $617f: $d0

	pop de                                           ; $6180: $d1
	ld a, [bc]                                       ; $6181: $0a
	pop hl                                           ; $6182: $e1
	ld [bc], a                                       ; $6183: $02
	inc bc                                           ; $6184: $03
	inc de                                           ; $6185: $13
	ret nz                                           ; $6186: $c0

	ld bc, $02a0                                     ; $6187: $01 $a0 $02
	ld b, $39                                        ; $618a: $06 $39
	ld [bc], a                                       ; $618c: $02
	jp nc, $0ad3                                     ; $618d: $d2 $d3 $0a

	pop hl                                           ; $6190: $e1
	ld [bc], a                                       ; $6191: $02
	inc bc                                           ; $6192: $03
	inc de                                           ; $6193: $13
	ret nz                                           ; $6194: $c0

	ld bc, $02a0                                     ; $6195: $01 $a0 $02
	ld b, $44                                        ; $6198: $06 $44
	ld bc, $0ad4                                     ; $619a: $01 $d4 $0a
	pop hl                                           ; $619d: $e1
	ld [bc], a                                       ; $619e: $02
	inc bc                                           ; $619f: $03
	rla                                              ; $61a0: $17
	ret nz                                           ; $61a1: $c0

	ld bc, $02a0                                     ; $61a2: $01 $a0 $02
	ld b, $4a                                        ; $61a5: $06 $4a
	pop hl                                           ; $61a7: $e1
	ld [bc], a                                       ; $61a8: $02
	inc bc                                           ; $61a9: $03
	ccf                                              ; $61aa: $3f
	db $e4                                           ; $61ab: $e4
	ld bc, $06a1                                     ; $61ac: $01 $a1 $06
	ld d, c                                          ; $61af: $51
	add hl, bc                                       ; $61b0: $09
	inc [hl]                                         ; $61b1: $34
	add d                                            ; $61b2: $82
	ret nz                                           ; $61b3: $c0

	dec de                                           ; $61b4: $1b
	ret nc                                           ; $61b5: $d0

	ld [bc], a                                       ; $61b6: $02
	ret nc                                           ; $61b7: $d0

	pop de                                           ; $61b8: $d1
	ld a, [bc]                                       ; $61b9: $0a
	pop hl                                           ; $61ba: $e1
	ld [bc], a                                       ; $61bb: $02
	inc bc                                           ; $61bc: $03
	dec de                                           ; $61bd: $1b
	ret nz                                           ; $61be: $c0

	ld bc, $02a0                                     ; $61bf: $01 $a0 $02
	ld b, $53                                        ; $61c2: $06 $53
	ld [bc], a                                       ; $61c4: $02
	jp nc, $0ad3                                     ; $61c5: $d2 $d3 $0a

	pop hl                                           ; $61c8: $e1
	ld [bc], a                                       ; $61c9: $02
	inc bc                                           ; $61ca: $03
	rra                                              ; $61cb: $1f
	ret nz                                           ; $61cc: $c0

	ld bc, $02a0                                     ; $61cd: $01 $a0 $02
	ld b, $5d                                        ; $61d0: $06 $5d
	ld bc, $0ad4                                     ; $61d2: $01 $d4 $0a
	pop hl                                           ; $61d5: $e1
	ld [bc], a                                       ; $61d6: $02
	inc bc                                           ; $61d7: $03
	rra                                              ; $61d8: $1f
	ret nz                                           ; $61d9: $c0

	ld bc, $02a0                                     ; $61da: $01 $a0 $02
	ld b, $69                                        ; $61dd: $06 $69
	pop hl                                           ; $61df: $e1
	ld [bc], a                                       ; $61e0: $02
	inc bc                                           ; $61e1: $03
	ld d, c                                          ; $61e2: $51
	db $e4                                           ; $61e3: $e4
	ld bc, $0669                                     ; $61e4: $01 $69 $06
	ld [hl], c                                       ; $61e7: $71
	add hl, bc                                       ; $61e8: $09
	inc l                                            ; $61e9: $2c
	pop hl                                           ; $61ea: $e1
	ld [bc], a                                       ; $61eb: $02
	inc bc                                           ; $61ec: $03
	dec de                                           ; $61ed: $1b
	add d                                            ; $61ee: $82
	ret nz                                           ; $61ef: $c0

	dec de                                           ; $61f0: $1b
	ret nc                                           ; $61f1: $d0

	ld [bc], a                                       ; $61f2: $02
	ret nc                                           ; $61f3: $d0

	pop de                                           ; $61f4: $d1
	ld b, $c0                                        ; $61f5: $06 $c0
	ld bc, $02a0                                     ; $61f7: $01 $a0 $02
	ld b, $73                                        ; $61fa: $06 $73
	ld [bc], a                                       ; $61fc: $02
	jp nc, $06d3                                     ; $61fd: $d2 $d3 $06

	ret nz                                           ; $6200: $c0

	ld bc, $02a0                                     ; $6201: $01 $a0 $02
	ld b, $7e                                        ; $6204: $06 $7e
	ld bc, $06d4                                     ; $6206: $01 $d4 $06
	ret nz                                           ; $6209: $c0

	ld bc, $02a0                                     ; $620a: $01 $a0 $02
	ld b, $85                                        ; $620d: $06 $85
	pop hl                                           ; $620f: $e1
	ld [bc], a                                       ; $6210: $02
	inc bc                                           ; $6211: $03
	ld c, b                                          ; $6212: $48
	db $e4                                           ; $6213: $e4
	ld bc, $2839                                     ; $6214: $01 $39 $28
	ld b, $c0                                        ; $6217: $06 $c0
	ld bc, $02a0                                     ; $6219: $01 $a0 $02
	ld b, $8c                                        ; $621c: $06 $8c
	sub b                                            ; $621e: $90
	ld b, $91                                        ; $621f: $06 $91
	add hl, bc                                       ; $6221: $09
	inc l                                            ; $6222: $2c
	pop hl                                           ; $6223: $e1
	ld [bc], a                                       ; $6224: $02
	inc bc                                           ; $6225: $03
	rla                                              ; $6226: $17
	add d                                            ; $6227: $82
	ret nz                                           ; $6228: $c0

	dec de                                           ; $6229: $1b
	ret nc                                           ; $622a: $d0

	ld [bc], a                                       ; $622b: $02
	ret nc                                           ; $622c: $d0

	pop de                                           ; $622d: $d1
	ld b, $c0                                        ; $622e: $06 $c0
	ld bc, $02a0                                     ; $6230: $01 $a0 $02
	ld b, $93                                        ; $6233: $06 $93
	ld [bc], a                                       ; $6235: $02
	jp nc, $06d3                                     ; $6236: $d2 $d3 $06

	ret nz                                           ; $6239: $c0

	ld bc, $02a0                                     ; $623a: $01 $a0 $02
	ld b, $96                                        ; $623d: $06 $96
	ld bc, $06d4                                     ; $623f: $01 $d4 $06
	ret nz                                           ; $6242: $c0

	ld bc, $02a0                                     ; $6243: $01 $a0 $02
	ld b, $9e                                        ; $6246: $06 $9e
	pop hl                                           ; $6248: $e1
	ld [bc], a                                       ; $6249: $02
	inc bc                                           ; $624a: $03
	ccf                                              ; $624b: $3f
	db $e4                                           ; $624c: $e4
	ld bc, $0600                                     ; $624d: $01 $00 $06
	and e                                            ; $6250: $a3
	add hl, bc                                       ; $6251: $09
	inc l                                            ; $6252: $2c
	pop hl                                           ; $6253: $e1
	ld [bc], a                                       ; $6254: $02
	inc bc                                           ; $6255: $03
	dec de                                           ; $6256: $1b
	add d                                            ; $6257: $82
	ret nz                                           ; $6258: $c0

	dec de                                           ; $6259: $1b
	ret nc                                           ; $625a: $d0

	ld [bc], a                                       ; $625b: $02
	ret nc                                           ; $625c: $d0

	pop de                                           ; $625d: $d1
	ld b, $c0                                        ; $625e: $06 $c0
	ld bc, $02a0                                     ; $6260: $01 $a0 $02
	ld b, $a5                                        ; $6263: $06 $a5
	ld [bc], a                                       ; $6265: $02
	jp nc, $06d3                                     ; $6266: $d2 $d3 $06

	ret nz                                           ; $6269: $c0

	ld bc, $02a0                                     ; $626a: $01 $a0 $02
	ld b, $b0                                        ; $626d: $06 $b0
	ld bc, $06d4                                     ; $626f: $01 $d4 $06
	ret nz                                           ; $6272: $c0

	ld bc, $02a0                                     ; $6273: $01 $a0 $02
	ld b, $b8                                        ; $6276: $06 $b8
	pop hl                                           ; $6278: $e1
	ld [bc], a                                       ; $6279: $02
	inc bc                                           ; $627a: $03
	ld c, b                                          ; $627b: $48
	db $e4                                           ; $627c: $e4
	nop                                              ; $627d: $00
	ret nc                                           ; $627e: $d0

	ld b, $c4                                        ; $627f: $06 $c4
	add hl, bc                                       ; $6281: $09
	inc l                                            ; $6282: $2c
	pop hl                                           ; $6283: $e1
	ld [bc], a                                       ; $6284: $02
	inc bc                                           ; $6285: $03
	dec de                                           ; $6286: $1b
	add d                                            ; $6287: $82
	ret nz                                           ; $6288: $c0

	dec de                                           ; $6289: $1b
	ret nc                                           ; $628a: $d0

	ld [bc], a                                       ; $628b: $02
	ret nc                                           ; $628c: $d0

	pop de                                           ; $628d: $d1
	ld b, $c0                                        ; $628e: $06 $c0
	ld bc, $02a0                                     ; $6290: $01 $a0 $02
	ld b, $c6                                        ; $6293: $06 $c6
	ld [bc], a                                       ; $6295: $02
	jp nc, $06d3                                     ; $6296: $d2 $d3 $06

	ret nz                                           ; $6299: $c0

	ld bc, $02a0                                     ; $629a: $01 $a0 $02
	ld b, $cf                                        ; $629d: $06 $cf
	ld bc, $06d4                                     ; $629f: $01 $d4 $06
	ret nz                                           ; $62a2: $c0

	ld bc, $02a0                                     ; $62a3: $01 $a0 $02
	ld b, $d5                                        ; $62a6: $06 $d5
	pop hl                                           ; $62a8: $e1
	ld [bc], a                                       ; $62a9: $02
	inc bc                                           ; $62aa: $03
	ld c, b                                          ; $62ab: $48
	db $e4                                           ; $62ac: $e4
	nop                                              ; $62ad: $00
	and b                                            ; $62ae: $a0
	add hl, bc                                       ; $62af: $09
	sbc h                                            ; $62b0: $9c
	ret nz                                           ; $62b1: $c0

	set 0, c                                         ; $62b2: $cb $c1
	ld e, e                                          ; $62b4: $5b
	pop bc                                           ; $62b5: $c1
	add a                                            ; $62b6: $87
	ret nz                                           ; $62b7: $c0

	dec bc                                           ; $62b8: $0b
	db $e3                                           ; $62b9: $e3
	nop                                              ; $62ba: $00
	ld [hl+], a                                      ; $62bb: $22
	ret nz                                           ; $62bc: $c0

	inc c                                            ; $62bd: $0c
	ldh [$b4], a                                     ; $62be: $e0 $b4
	ret nz                                           ; $62c0: $c0

	dec bc                                           ; $62c1: $0b
	db $e3                                           ; $62c2: $e3
	nop                                              ; $62c3: $00
	ld l, l                                          ; $62c4: $6d
	ret nz                                           ; $62c5: $c0

	ld bc, $02a0                                     ; $62c6: $01 $a0 $02
	ld b, $dd                                        ; $62c9: $06 $dd
	ret nz                                           ; $62cb: $c0

	ld bc, $01a0                                     ; $62cc: $01 $a0 $01
	ld b, $df                                        ; $62cf: $06 $df
	ret nz                                           ; $62d1: $c0

	ld bc, $02a0                                     ; $62d2: $01 $a0 $02
	ld b, $ec                                        ; $62d5: $06 $ec
	ret nz                                           ; $62d7: $c0

	rrca                                             ; $62d8: $0f
	db $e3                                           ; $62d9: $e3
	nop                                              ; $62da: $00
	jp c, $01c0                                      ; $62db: $da $c0 $01

	and b                                            ; $62de: $a0
	ld bc, $f106                                     ; $62df: $01 $06 $f1
	ret nz                                           ; $62e2: $c0

	ld bc, $02a0                                     ; $62e3: $01 $a0 $02
	ld b, $fb                                        ; $62e6: $06 $fb
	ret nz                                           ; $62e8: $c0

	ld bc, $01a0                                     ; $62e9: $01 $a0 $01
	rlca                                             ; $62ec: $07
	ld [bc], a                                       ; $62ed: $02
	ret nz                                           ; $62ee: $c0

	ld bc, $02a0                                     ; $62ef: $01 $a0 $02
	rlca                                             ; $62f2: $07
	rla                                              ; $62f3: $17
	ret nz                                           ; $62f4: $c0

	ld bc, $01a0                                     ; $62f5: $01 $a0 $01
	rlca                                             ; $62f8: $07
	ld a, [de]                                       ; $62f9: $1a
	ret nz                                           ; $62fa: $c0

	ld bc, $02a0                                     ; $62fb: $01 $a0 $02
	rlca                                             ; $62fe: $07
	ld [hl+], a                                      ; $62ff: $22
	ret nz                                           ; $6300: $c0

	ld bc, $02a0                                     ; $6301: $01 $a0 $02
	rlca                                             ; $6304: $07
	add hl, hl                                       ; $6305: $29
	ret nz                                           ; $6306: $c0

	ld bc, $01a0                                     ; $6307: $01 $a0 $01
	rlca                                             ; $630a: $07
	cpl                                              ; $630b: $2f
	ret nz                                           ; $630c: $c0

	set 0, b                                         ; $630d: $cb $c0
	ld de, $00e3                                     ; $630f: $11 $e3 $00
	adc [hl]                                         ; $6312: $8e
	pop hl                                           ; $6313: $e1
	ld [bc], a                                       ; $6314: $02
	nop                                              ; $6315: $00
	ldh [$c0], a                                     ; $6316: $e0 $c0
	ld bc, $02a0                                     ; $6318: $01 $a0 $02
	rlca                                             ; $631b: $07
	ld a, $c0                                        ; $631c: $3e $c0
	ld bc, $01a0                                     ; $631e: $01 $a0 $01
	rlca                                             ; $6321: $07
	ld b, h                                          ; $6322: $44
	ret nz                                           ; $6323: $c0

	ld bc, $02a0                                     ; $6324: $01 $a0 $02
	rlca                                             ; $6327: $07
	ld d, e                                          ; $6328: $53
	ret nz                                           ; $6329: $c0

	ld bc, $01a0                                     ; $632a: $01 $a0 $01
	rlca                                             ; $632d: $07
	ld h, c                                          ; $632e: $61
	nop                                              ; $632f: $00
	add b                                            ; $6330: $80
	and b                                            ; $6331: $a0
	db $10                                           ; $6332: $10
	ret nc                                           ; $6333: $d0

	add d                                            ; $6334: $82
	ld bc, $d1c6                                     ; $6335: $01 $c6 $d1
	pop hl                                           ; $6338: $e1
	ld [bc], a                                       ; $6339: $02
	inc b                                            ; $633a: $04
	rst JumpTable                                          ; $633b: $c7
	ret nz                                           ; $633c: $c0

	ld d, c                                          ; $633d: $51
	pop de                                           ; $633e: $d1
	ret nz                                           ; $633f: $c0

	ld d, b                                          ; $6340: $50
	pop de                                           ; $6341: $d1
	ret nz                                           ; $6342: $c0

	ld d, l                                          ; $6343: $55
	ldh [rAUD1HIGH], a                               ; $6344: $e0 $14
	pop bc                                           ; $6346: $c1
	ld l, e                                          ; $6347: $6b
	rst SubAFromHL                                          ; $6348: $d7
	ret nc                                           ; $6349: $d0

	db $e4                                           ; $634a: $e4
	nop                                              ; $634b: $00
	ld [bc], a                                       ; $634c: $02
	inc c                                            ; $634d: $0c
	ld d, c                                          ; $634e: $51
	db $fc                                           ; $634f: $fc
	ret nz                                           ; $6350: $c0

	ld h, l                                          ; $6351: $65
	ret c                                            ; $6352: $d8

	jr z, jr_07d_6361                                ; $6353: $28 $0c

	ret nz                                           ; $6355: $c0

	ld bc, $02a0                                     ; $6356: $01 $a0 $02
	rlca                                             ; $6359: $07
	ld l, l                                          ; $635a: $6d
	ret nz                                           ; $635b: $c0

	ld bc, $01a0                                     ; $635c: $01 $a0 $01
	rlca                                             ; $635f: $07
	ld [hl], d                                       ; $6360: $72

jr_07d_6361:
	jr c, jr_07d_636a                                ; $6361: $38 $07

	ld a, c                                          ; $6363: $79
	add hl, bc                                       ; $6364: $09
	dec l                                            ; $6365: $2d
	pop bc                                           ; $6366: $c1
	ld e, c                                          ; $6367: $59
	db $e3                                           ; $6368: $e3
	nop                                              ; $6369: $00

jr_07d_636a:
	sub c                                            ; $636a: $91
	ret nz                                           ; $636b: $c0

	add hl, bc                                       ; $636c: $09
	db $e3                                           ; $636d: $e3
	nop                                              ; $636e: $00
	inc [hl]                                         ; $636f: $34
	and b                                            ; $6370: $a0
	add b                                            ; $6371: $80
	and b                                            ; $6372: $a0
	dec d                                            ; $6373: $15
	nop                                              ; $6374: $00
	ld b, $c0                                        ; $6375: $06 $c0
	ld bc, $02a0                                     ; $6377: $01 $a0 $02
	rlca                                             ; $637a: $07
	ld a, e                                          ; $637b: $7b
	rst $38                                          ; $637c: $ff
	inc c                                            ; $637d: $0c
	ret nz                                           ; $637e: $c0

	ld bc, $02a0                                     ; $637f: $01 $a0 $02
	rlca                                             ; $6382: $07
	add l                                            ; $6383: $85
	ret nz                                           ; $6384: $c0

	ld bc, $01a0                                     ; $6385: $01 $a0 $01
	rlca                                             ; $6388: $07
	adc h                                            ; $6389: $8c
	ret nz                                           ; $638a: $c0

	ld d, [hl]                                       ; $638b: $56
	ret nc                                           ; $638c: $d0

	call c, $e5d6                                    ; $638d: $dc $d6 $e5
	inc de                                           ; $6390: $13
	nop                                              ; $6391: $00
	nop                                              ; $6392: $00
	rlca                                             ; $6393: $07
	sub l                                            ; $6394: $95
	add hl, bc                                       ; $6395: $09
	inc bc                                           ; $6396: $03
	ldh [rP1], a                                     ; $6397: $e0 $00
	ld [$09d1], sp                                   ; $6399: $08 $d1 $09
	inc bc                                           ; $639c: $03
	ldh [rP1], a                                     ; $639d: $e0 $00
	ld [bc], a                                       ; $639f: $02
	ld b, h                                          ; $63a0: $44
	pop bc                                           ; $63a1: $c1
	ld e, c                                          ; $63a2: $59
	db $e3                                           ; $63a3: $e3
	nop                                              ; $63a4: $00
	adc c                                            ; $63a5: $89
	db $fd                                           ; $63a6: $fd
	add hl, sp                                       ; $63a7: $39
	adc e                                            ; $63a8: $8b
	and b                                            ; $63a9: $a0
	ld [bc], a                                       ; $63aa: $02
	ld [bc], a                                       ; $63ab: $02
	or b                                             ; $63ac: $b0
	ld a, h                                          ; $63ad: $7c
	dec b                                            ; $63ae: $05
	ret nz                                           ; $63af: $c0

	ld d, [hl]                                       ; $63b0: $56
	ret nc                                           ; $63b1: $d0

	call c, $02d1                                    ; $63b2: $dc $d1 $02
	or b                                             ; $63b5: $b0
	ld a, [hl]                                       ; $63b6: $7e
	dec b                                            ; $63b7: $05
	ret nz                                           ; $63b8: $c0

	ld d, [hl]                                       ; $63b9: $56
	ret nc                                           ; $63ba: $d0

	call c, $02d2                                    ; $63bb: $dc $d2 $02
	or b                                             ; $63be: $b0
	ld a, a                                          ; $63bf: $7f
	dec b                                            ; $63c0: $05
	ret nz                                           ; $63c1: $c0

	ld d, [hl]                                       ; $63c2: $56
	ret nc                                           ; $63c3: $d0

	call c, $02d3                                    ; $63c4: $dc $d3 $02
	or b                                             ; $63c7: $b0
	ld a, e                                          ; $63c8: $7b
	dec b                                            ; $63c9: $05
	ret nz                                           ; $63ca: $c0

	ld d, [hl]                                       ; $63cb: $56
	ret nc                                           ; $63cc: $d0

	call c, $02d4                                    ; $63cd: $dc $d4 $02
	or b                                             ; $63d0: $b0
	ld a, l                                          ; $63d1: $7d
	dec b                                            ; $63d2: $05
	ret nz                                           ; $63d3: $c0

	ld d, [hl]                                       ; $63d4: $56
	ret nc                                           ; $63d5: $d0

	call c, $02d5                                    ; $63d6: $dc $d5 $02
	or b                                             ; $63d9: $b0
	ld a, d                                          ; $63da: $7a
	dec b                                            ; $63db: $05
	ret nz                                           ; $63dc: $c0

	ld d, [hl]                                       ; $63dd: $56
	ret nc                                           ; $63de: $d0

	call c, $e5d7                                    ; $63df: $dc $d7 $e5
	inc de                                           ; $63e2: $13
	nop                                              ; $63e3: $00
	nop                                              ; $63e4: $00
	add hl, bc                                       ; $63e5: $09
	dec l                                            ; $63e6: $2d
	ret nz                                           ; $63e7: $c0

	ld bc, $02a0                                     ; $63e8: $01 $a0 $02
	rlca                                             ; $63eb: $07
	sub a                                            ; $63ec: $97
	ret nz                                           ; $63ed: $c0

	ld bc, $01a0                                     ; $63ee: $01 $a0 $01
	rlca                                             ; $63f1: $07
	and b                                            ; $63f2: $a0
	add c                                            ; $63f3: $81
	ret nz                                           ; $63f4: $c0

	ld h, l                                          ; $63f5: $65
	ld b, $d4                                        ; $63f6: $06 $d4
	push de                                          ; $63f8: $d5
	rst SubAFromHL                                          ; $63f9: $d7
	ret c                                            ; $63fa: $d8

	reti                                             ; $63fb: $d9


	jp c, $d008                                      ; $63fc: $da $08 $d0

	add e                                            ; $63ff: $83
	ld bc, $d0de                                     ; $6400: $01 $de $d0
	db $e4                                           ; $6403: $e4
	nop                                              ; $6404: $00
	db $10                                           ; $6405: $10
	inc b                                            ; $6406: $04
	pop de                                           ; $6407: $d1
	db $d3                                           ; $6408: $d3
	sub $db                                          ; $6409: $d6 $db
	ld [$83d0], sp                                   ; $640b: $08 $d0 $83
	ld bc, $d1de                                     ; $640e: $01 $de $d1
	db $e4                                           ; $6411: $e4
	ld bc, $0997                                     ; $6412: $01 $97 $09
	ld e, $c1                                        ; $6415: $1e $c1
	inc a                                            ; $6417: $3c
	pop bc                                           ; $6418: $c1
	ld e, c                                          ; $6419: $59
	db $e3                                           ; $641a: $e3
	nop                                              ; $641b: $00
	cp b                                             ; $641c: $b8
	ret nz                                           ; $641d: $c0

	add hl, bc                                       ; $641e: $09
	db $e3                                           ; $641f: $e3
	nop                                              ; $6420: $00
	dec de                                           ; $6421: $1b
	and b                                            ; $6422: $a0
	add b                                            ; $6423: $80
	and b                                            ; $6424: $a0
	ld d, $00                                        ; $6425: $16 $00
	inc bc                                           ; $6427: $03
	db $e4                                           ; $6428: $e4
	nop                                              ; $6429: $00
	dec bc                                           ; $642a: $0b
	rst $38                                          ; $642b: $ff
	rlca                                             ; $642c: $07
	ld b, b                                          ; $642d: $40
	add b                                            ; $642e: $80
	and b                                            ; $642f: $a0
	ld d, $e4                                        ; $6430: $16 $e4
	nop                                              ; $6432: $00
	sub $28                                          ; $6433: $d6 $28
	ld b, $c0                                        ; $6435: $06 $c0
	ld bc, $02a0                                     ; $6437: $01 $a0 $02
	rlca                                             ; $643a: $07
	and [hl]                                         ; $643b: $a6
	ret nz                                           ; $643c: $c0

	jp z, $b307                                      ; $643d: $ca $07 $b3

	add hl, bc                                       ; $6440: $09
	ld d, a                                          ; $6441: $57
	pop hl                                           ; $6442: $e1
	ld [bc], a                                       ; $6443: $02
	inc bc                                           ; $6444: $03
	inc de                                           ; $6445: $13
	add c                                            ; $6446: $81
	adc e                                            ; $6447: $8b
	nop                                              ; $6448: $00
	nop                                              ; $6449: $00
	ld [bc], a                                       ; $644a: $02
	or b                                             ; $644b: $b0
	jr nz, jr_07d_646f                               ; $644c: $20 $21

	add d                                            ; $644e: $82
	ret nz                                           ; $644f: $c0

	dec de                                           ; $6450: $1b
	ret nc                                           ; $6451: $d0

	ld [bc], a                                       ; $6452: $02
	ret nc                                           ; $6453: $d0

	pop de                                           ; $6454: $d1
	ld b, $c0                                        ; $6455: $06 $c0
	ld bc, $02a0                                     ; $6457: $01 $a0 $02
	rlca                                             ; $645a: $07
	or l                                             ; $645b: $b5
	ld [bc], a                                       ; $645c: $02
	jp nc, $06d3                                     ; $645d: $d2 $d3 $06

	ret nz                                           ; $6460: $c0

	ld bc, $02a0                                     ; $6461: $01 $a0 $02
	rlca                                             ; $6464: $07
	cp l                                             ; $6465: $bd
	ld bc, $06d4                                     ; $6466: $01 $d4 $06
	ret nz                                           ; $6469: $c0

	ld bc, $02a0                                     ; $646a: $01 $a0 $02
	rlca                                             ; $646d: $07
	push bc                                          ; $646e: $c5

jr_07d_646f:
	nop                                              ; $646f: $00
	ld hl, $c082                                     ; $6470: $21 $82 $c0
	dec de                                           ; $6473: $1b
	ret nc                                           ; $6474: $d0

	ld [bc], a                                       ; $6475: $02
	ret nc                                           ; $6476: $d0

	pop de                                           ; $6477: $d1
	ld b, $c0                                        ; $6478: $06 $c0
	ld bc, $02a0                                     ; $647a: $01 $a0 $02
	rlca                                             ; $647d: $07
	jp z, $d202                                      ; $647e: $ca $02 $d2

	db $d3                                           ; $6481: $d3
	ld b, $c0                                        ; $6482: $06 $c0
	ld bc, $02a0                                     ; $6484: $01 $a0 $02
	rlca                                             ; $6487: $07
	db $d3                                           ; $6488: $d3
	ld bc, $06d4                                     ; $6489: $01 $d4 $06
	ret nz                                           ; $648c: $c0

	ld bc, $02a0                                     ; $648d: $01 $a0 $02
	rlca                                             ; $6490: $07
	reti                                             ; $6491: $d9


	pop hl                                           ; $6492: $e1
	ld [bc], a                                       ; $6493: $02
	inc bc                                           ; $6494: $03
	ld [hl], $e4                                     ; $6495: $36 $e4
	ld [bc], a                                       ; $6497: $02
	ld h, h                                          ; $6498: $64
	rlca                                             ; $6499: $07
	pop hl                                           ; $649a: $e1
	add hl, bc                                       ; $649b: $09
	dec sp                                           ; $649c: $3b
	pop hl                                           ; $649d: $e1
	ld [bc], a                                       ; $649e: $02
	inc bc                                           ; $649f: $03
	rra                                              ; $64a0: $1f
	add d                                            ; $64a1: $82
	ret nz                                           ; $64a2: $c0

	dec de                                           ; $64a3: $1b
	ret nc                                           ; $64a4: $d0

	ld [bc], a                                       ; $64a5: $02
	ret nc                                           ; $64a6: $d0

	pop de                                           ; $64a7: $d1
	ld b, $c0                                        ; $64a8: $06 $c0
	ld bc, $02a0                                     ; $64aa: $01 $a0 $02
	rlca                                             ; $64ad: $07
	db $e3                                           ; $64ae: $e3
	ld [bc], a                                       ; $64af: $02
	jp nc, $15d3                                     ; $64b0: $d2 $d3 $15

	ld h, b                                          ; $64b3: $60
	db $fc                                           ; $64b4: $fc
	adc e                                            ; $64b5: $8b
	nop                                              ; $64b6: $00
	nop                                              ; $64b7: $00
	or b                                             ; $64b8: $b0
	jr nz, jr_07d_64c1                               ; $64b9: $20 $06

	ret nz                                           ; $64bb: $c0

	ld bc, $02a0                                     ; $64bc: $01 $a0 $02
	rlca                                             ; $64bf: $07
	db $eb                                           ; $64c0: $eb

jr_07d_64c1:
	ld b, $c0                                        ; $64c1: $06 $c0
	ld bc, $02a0                                     ; $64c3: $01 $a0 $02
	rlca                                             ; $64c6: $07
	rst $38                                          ; $64c7: $ff
	ld bc, $06d4                                     ; $64c8: $01 $d4 $06
	ret nz                                           ; $64cb: $c0

	ld bc, $02a0                                     ; $64cc: $01 $a0 $02
	ld [$e10c], sp                                   ; $64cf: $08 $0c $e1
	ld [bc], a                                       ; $64d2: $02
	inc bc                                           ; $64d3: $03
	ld d, c                                          ; $64d4: $51
	db $e4                                           ; $64d5: $e4
	ld [bc], a                                       ; $64d6: $02
	dec h                                            ; $64d7: $25
	ld [$0912], sp                                   ; $64d8: $08 $12 $09
	inc l                                            ; $64db: $2c
	pop hl                                           ; $64dc: $e1
	ld [bc], a                                       ; $64dd: $02
	inc bc                                           ; $64de: $03
	dec de                                           ; $64df: $1b

Call_07d_64e0:
	add d                                            ; $64e0: $82
	ret nz                                           ; $64e1: $c0

	dec de                                           ; $64e2: $1b
	ret nc                                           ; $64e3: $d0

	ld [bc], a                                       ; $64e4: $02
	ret nc                                           ; $64e5: $d0

	pop de                                           ; $64e6: $d1
	ld b, $c0                                        ; $64e7: $06 $c0
	ld bc, $02a0                                     ; $64e9: $01 $a0 $02
	ld [$0214], sp                                   ; $64ec: $08 $14 $02
	jp nc, $06d3                                     ; $64ef: $d2 $d3 $06

	ret nz                                           ; $64f2: $c0

	ld bc, $02a0                                     ; $64f3: $01 $a0 $02
	ld [$011f], sp                                   ; $64f6: $08 $1f $01
	call nc, $c006                                   ; $64f9: $d4 $06 $c0
	ld bc, $02a0                                     ; $64fc: $01 $a0 $02
	ld [$e12b], sp                                   ; $64ff: $08 $2b $e1
	ld [bc], a                                       ; $6502: $02
	inc bc                                           ; $6503: $03
	ld c, b                                          ; $6504: $48
	db $e4                                           ; $6505: $e4
	ld bc, $28f5                                     ; $6506: $01 $f5 $28
	ld b, $c0                                        ; $6509: $06 $c0
	ld bc, $02a0                                     ; $650b: $01 $a0 $02
	ld [$9832], sp                                   ; $650e: $08 $32 $98
	ld [$093a], sp                                   ; $6511: $08 $3a $09
	inc l                                            ; $6514: $2c
	pop hl                                           ; $6515: $e1
	ld [bc], a                                       ; $6516: $02
	inc bc                                           ; $6517: $03
	inc de                                           ; $6518: $13
	add d                                            ; $6519: $82
	ret nz                                           ; $651a: $c0

	dec de                                           ; $651b: $1b
	ret nc                                           ; $651c: $d0

	ld [bc], a                                       ; $651d: $02
	ret nc                                           ; $651e: $d0

	pop de                                           ; $651f: $d1
	ld b, $c0                                        ; $6520: $06 $c0
	ld bc, $02a0                                     ; $6522: $01 $a0 $02
	ld [$023c], sp                                   ; $6525: $08 $3c $02
	jp nc, $06d3                                     ; $6528: $d2 $d3 $06

	ret nz                                           ; $652b: $c0

	ld bc, $02a0                                     ; $652c: $01 $a0 $02
	ld [$0143], sp                           ; $652f: $08 $43 $01
	call nc, $c006                                   ; $6532: $d4 $06 $c0
	ld bc, $02a0                                     ; $6535: $01 $a0 $02
	ld [$e14e], sp                                   ; $6538: $08 $4e $e1
	ld [bc], a                                       ; $653b: $02
	inc bc                                           ; $653c: $03
	ld [hl], $e4                                     ; $653d: $36 $e4
	ld bc, $08bc                                     ; $653f: $01 $bc $08
	ld d, e                                          ; $6542: $53
	add hl, bc                                       ; $6543: $09
	inc l                                            ; $6544: $2c
	pop hl                                           ; $6545: $e1
	ld [bc], a                                       ; $6546: $02
	inc bc                                           ; $6547: $03
	dec de                                           ; $6548: $1b
	add d                                            ; $6549: $82
	ret nz                                           ; $654a: $c0

	dec de                                           ; $654b: $1b
	ret nc                                           ; $654c: $d0

	ld [bc], a                                       ; $654d: $02
	ret nc                                           ; $654e: $d0

	pop de                                           ; $654f: $d1
	ld b, $c0                                        ; $6550: $06 $c0
	ld bc, $02a0                                     ; $6552: $01 $a0 $02
	ld [$0255], sp                                   ; $6555: $08 $55 $02
	jp nc, $06d3                                     ; $6558: $d2 $d3 $06

	ret nz                                           ; $655b: $c0

	ld bc, $02a0                                     ; $655c: $01 $a0 $02
	ld [$015e], sp                                   ; $655f: $08 $5e $01
	call nc, $c006                                   ; $6562: $d4 $06 $c0
	ld bc, $02a0                                     ; $6565: $01 $a0 $02
	ld [$e164], sp                                   ; $6568: $08 $64 $e1
	ld [bc], a                                       ; $656b: $02
	inc bc                                           ; $656c: $03
	ld d, c                                          ; $656d: $51
	db $e4                                           ; $656e: $e4
	ld bc, $088c                                     ; $656f: $01 $8c $08
	ld l, h                                          ; $6572: $6c
	add hl, bc                                       ; $6573: $09
	inc [hl]                                         ; $6574: $34
	add d                                            ; $6575: $82
	ret nz                                           ; $6576: $c0

	dec de                                           ; $6577: $1b
	ret nc                                           ; $6578: $d0

	ld [bc], a                                       ; $6579: $02
	ret nc                                           ; $657a: $d0

	pop de                                           ; $657b: $d1
	ld a, [bc]                                       ; $657c: $0a
	pop hl                                           ; $657d: $e1
	ld [bc], a                                       ; $657e: $02
	inc bc                                           ; $657f: $03
	inc de                                           ; $6580: $13
	ret nz                                           ; $6581: $c0

	ld bc, $02a0                                     ; $6582: $01 $a0 $02
	ld [$026e], sp                                   ; $6585: $08 $6e $02
	jp nc, $0ad3                                     ; $6588: $d2 $d3 $0a

	pop hl                                           ; $658b: $e1
	ld [bc], a                                       ; $658c: $02
	inc bc                                           ; $658d: $03
	rla                                              ; $658e: $17
	ret nz                                           ; $658f: $c0

	ld bc, $02a0                                     ; $6590: $01 $a0 $02
	ld [$0179], sp                                   ; $6593: $08 $79 $01
	call nc, $e10a                                   ; $6596: $d4 $0a $e1
	ld [bc], a                                       ; $6599: $02
	inc bc                                           ; $659a: $03
	rla                                              ; $659b: $17
	ret nz                                           ; $659c: $c0

	ld bc, $02a0                                     ; $659d: $01 $a0 $02
	ld [$e183], sp                                   ; $65a0: $08 $83 $e1
	ld [bc], a                                       ; $65a3: $02
	inc bc                                           ; $65a4: $03
	ccf                                              ; $65a5: $3f
	db $e4                                           ; $65a6: $e4
	ld bc, $0954                                     ; $65a7: $01 $54 $09
	ld e, $c1                                        ; $65aa: $1e $c1
	inc a                                            ; $65ac: $3c
	pop bc                                           ; $65ad: $c1
	ld e, c                                          ; $65ae: $59
	db $e3                                           ; $65af: $e3
	nop                                              ; $65b0: $00
	cp c                                             ; $65b1: $b9
	ret nz                                           ; $65b2: $c0

	add hl, bc                                       ; $65b3: $09
	db $e3                                           ; $65b4: $e3
	nop                                              ; $65b5: $00
	scf                                              ; $65b6: $37
	and b                                            ; $65b7: $a0
	add b                                            ; $65b8: $80
	and b                                            ; $65b9: $a0
	rla                                              ; $65ba: $17
	nop                                              ; $65bb: $00
	inc bc                                           ; $65bc: $03
	db $e4                                           ; $65bd: $e4
	nop                                              ; $65be: $00
	dec bc                                           ; $65bf: $0b
	rst $38                                          ; $65c0: $ff
	rlca                                             ; $65c1: $07
	ld b, b                                          ; $65c2: $40
	add b                                            ; $65c3: $80
	and b                                            ; $65c4: $a0
	rla                                              ; $65c5: $17
	db $e4                                           ; $65c6: $e4
	nop                                              ; $65c7: $00
	sbc e                                            ; $65c8: $9b
	jr z, @+$08                                      ; $65c9: $28 $06

	ret nz                                           ; $65cb: $c0

	ld bc, $02a0                                     ; $65cc: $01 $a0 $02
	ld [$9089], sp                                   ; $65cf: $08 $89 $90
	ld [$0991], sp                                   ; $65d2: $08 $91 $09
	inc l                                            ; $65d5: $2c
	pop hl                                           ; $65d6: $e1
	ld [bc], a                                       ; $65d7: $02
	inc bc                                           ; $65d8: $03
	rla                                              ; $65d9: $17
	add d                                            ; $65da: $82
	ret nz                                           ; $65db: $c0

	dec de                                           ; $65dc: $1b
	ret nc                                           ; $65dd: $d0

	ld [bc], a                                       ; $65de: $02
	ret nc                                           ; $65df: $d0

	pop de                                           ; $65e0: $d1
	ld b, $c0                                        ; $65e1: $06 $c0
	ld bc, $02a0                                     ; $65e3: $01 $a0 $02
	ld [$0293], sp                                   ; $65e6: $08 $93 $02
	jp nc, $06d3                                     ; $65e9: $d2 $d3 $06

	ret nz                                           ; $65ec: $c0

	ld bc, $02a0                                     ; $65ed: $01 $a0 $02
	ld [$01a1], sp                                   ; $65f0: $08 $a1 $01
	call nc, $c006                                   ; $65f3: $d4 $06 $c0
	ld bc, $02a0                                     ; $65f6: $01 $a0 $02
	ld [$e1a7], sp                                   ; $65f9: $08 $a7 $e1
	ld [bc], a                                       ; $65fc: $02
	inc bc                                           ; $65fd: $03
	ccf                                              ; $65fe: $3f
	db $e4                                           ; $65ff: $e4
	nop                                              ; $6600: $00
	ei                                               ; $6601: $fb
	ld [$09b0], sp                                   ; $6602: $08 $b0 $09
	inc l                                            ; $6605: $2c
	pop hl                                           ; $6606: $e1
	ld [bc], a                                       ; $6607: $02
	inc bc                                           ; $6608: $03
	rra                                              ; $6609: $1f
	add d                                            ; $660a: $82
	ret nz                                           ; $660b: $c0

	dec de                                           ; $660c: $1b
	ret nc                                           ; $660d: $d0

	ld [bc], a                                       ; $660e: $02
	ret nc                                           ; $660f: $d0

	pop de                                           ; $6610: $d1
	ld b, $c0                                        ; $6611: $06 $c0
	ld bc, $02a0                                     ; $6613: $01 $a0 $02
	ld [$02b2], sp                                   ; $6616: $08 $b2 $02
	jp nc, $06d3                                     ; $6619: $d2 $d3 $06

	ret nz                                           ; $661c: $c0

	ld bc, $02a0                                     ; $661d: $01 $a0 $02
	ld [$01bd], sp                                   ; $6620: $08 $bd $01
	call nc, $c006                                   ; $6623: $d4 $06 $c0
	ld bc, $02a0                                     ; $6626: $01 $a0 $02
	ld [$e1ca], sp                                   ; $6629: $08 $ca $e1
	ld [bc], a                                       ; $662c: $02
	inc bc                                           ; $662d: $03
	ld d, c                                          ; $662e: $51
	db $e4                                           ; $662f: $e4
	nop                                              ; $6630: $00
	rrc b                                            ; $6631: $cb $08
	jp nc, $2c09                                     ; $6633: $d2 $09 $2c

	pop hl                                           ; $6636: $e1
	ld [bc], a                                       ; $6637: $02
	inc bc                                           ; $6638: $03
	dec de                                           ; $6639: $1b
	add d                                            ; $663a: $82
	ret nz                                           ; $663b: $c0

	dec de                                           ; $663c: $1b
	ret nc                                           ; $663d: $d0

	ld [bc], a                                       ; $663e: $02
	ret nc                                           ; $663f: $d0

	pop de                                           ; $6640: $d1
	ld b, $c0                                        ; $6641: $06 $c0
	ld bc, $02a0                                     ; $6643: $01 $a0 $02
	ld [$02d4], sp                                   ; $6646: $08 $d4 $02
	jp nc, $06d3                                     ; $6649: $d2 $d3 $06

	ret nz                                           ; $664c: $c0

	ld bc, $02a0                                     ; $664d: $01 $a0 $02
	ld [$01de], sp                                   ; $6650: $08 $de $01
	call nc, $c006                                   ; $6653: $d4 $06 $c0
	ld bc, $02a0                                     ; $6656: $01 $a0 $02
	ld [$e1e7], sp                                   ; $6659: $08 $e7 $e1
	ld [bc], a                                       ; $665c: $02
	inc bc                                           ; $665d: $03
	ld c, b                                          ; $665e: $48
	db $e4                                           ; $665f: $e4
	nop                                              ; $6660: $00
	sbc e                                            ; $6661: $9b
	jr z, @+$08                                      ; $6662: $28 $06

	ret nz                                           ; $6664: $c0

	ld bc, $02a0                                     ; $6665: $01 $a0 $02
	ld [$90ef], sp                                   ; $6668: $08 $ef $90
	ld [$09f7], sp                                   ; $666b: $08 $f7 $09
	inc l                                            ; $666e: $2c
	pop hl                                           ; $666f: $e1
	ld [bc], a                                       ; $6670: $02
	inc bc                                           ; $6671: $03
	rla                                              ; $6672: $17
	add d                                            ; $6673: $82
	ret nz                                           ; $6674: $c0

	dec de                                           ; $6675: $1b
	ret nc                                           ; $6676: $d0

	ld [bc], a                                       ; $6677: $02
	ret nc                                           ; $6678: $d0

	pop de                                           ; $6679: $d1
	ld b, $c0                                        ; $667a: $06 $c0
	ld bc, $02a0                                     ; $667c: $01 $a0 $02
	ld [$02fd], sp                                   ; $667f: $08 $fd $02
	jp nc, $06d3                                     ; $6682: $d2 $d3 $06

	ret nz                                           ; $6685: $c0

	ld bc, $02a0                                     ; $6686: $01 $a0 $02
	add hl, bc                                       ; $6689: $09
	rlca                                             ; $668a: $07
	ld bc, $06d4                                     ; $668b: $01 $d4 $06
	ret nz                                           ; $668e: $c0

	ld bc, $02a0                                     ; $668f: $01 $a0 $02
	add hl, bc                                       ; $6692: $09
	inc de                                           ; $6693: $13
	pop hl                                           ; $6694: $e1
	ld [bc], a                                       ; $6695: $02
	inc bc                                           ; $6696: $03
	ccf                                              ; $6697: $3f
	db $e4                                           ; $6698: $e4
	nop                                              ; $6699: $00
	ld h, d                                          ; $669a: $62
	add hl, bc                                       ; $669b: $09
	add hl, de                                       ; $669c: $19
	add hl, bc                                       ; $669d: $09
	inc l                                            ; $669e: $2c
	pop hl                                           ; $669f: $e1
	ld [bc], a                                       ; $66a0: $02
	inc bc                                           ; $66a1: $03
	rra                                              ; $66a2: $1f
	add d                                            ; $66a3: $82
	ret nz                                           ; $66a4: $c0

	dec de                                           ; $66a5: $1b
	ret nc                                           ; $66a6: $d0

	ld [bc], a                                       ; $66a7: $02
	ret nc                                           ; $66a8: $d0

	pop de                                           ; $66a9: $d1
	ld b, $c0                                        ; $66aa: $06 $c0
	ld bc, $02a0                                     ; $66ac: $01 $a0 $02
	add hl, bc                                       ; $66af: $09
	rra                                              ; $66b0: $1f
	ld [bc], a                                       ; $66b1: $02
	jp nc, $06d3                                     ; $66b2: $d2 $d3 $06

	ret nz                                           ; $66b5: $c0

	ld bc, $02a0                                     ; $66b6: $01 $a0 $02
	add hl, bc                                       ; $66b9: $09
	inc l                                            ; $66ba: $2c
	ld bc, $06d4                                     ; $66bb: $01 $d4 $06
	ret nz                                           ; $66be: $c0

	ld bc, $02a0                                     ; $66bf: $01 $a0 $02
	add hl, bc                                       ; $66c2: $09
	ld [hl], $e1                                     ; $66c3: $36 $e1
	ld [bc], a                                       ; $66c5: $02
	inc bc                                           ; $66c6: $03
	ld d, c                                          ; $66c7: $51
	db $e4                                           ; $66c8: $e4
	nop                                              ; $66c9: $00
	ld [hl-], a                                      ; $66ca: $32
	add hl, bc                                       ; $66cb: $09
	ld b, c                                          ; $66cc: $41
	add hl, bc                                       ; $66cd: $09
	inc l                                            ; $66ce: $2c
	pop hl                                           ; $66cf: $e1
	ld [bc], a                                       ; $66d0: $02
	inc bc                                           ; $66d1: $03
	dec de                                           ; $66d2: $1b
	add d                                            ; $66d3: $82
	ret nz                                           ; $66d4: $c0

	dec de                                           ; $66d5: $1b
	ret nc                                           ; $66d6: $d0

	ld [bc], a                                       ; $66d7: $02
	ret nc                                           ; $66d8: $d0

	pop de                                           ; $66d9: $d1
	ld b, $c0                                        ; $66da: $06 $c0
	ld bc, $02a0                                     ; $66dc: $01 $a0 $02
	add hl, bc                                       ; $66df: $09
	ld b, a                                          ; $66e0: $47
	ld [bc], a                                       ; $66e1: $02
	jp nc, $06d3                                     ; $66e2: $d2 $d3 $06

	ret nz                                           ; $66e5: $c0

	ld bc, $02a0                                     ; $66e6: $01 $a0 $02
	add hl, bc                                       ; $66e9: $09
	ld c, c                                          ; $66ea: $49
	ld bc, $06d4                                     ; $66eb: $01 $d4 $06
	ret nz                                           ; $66ee: $c0

	ld bc, $02a0                                     ; $66ef: $01 $a0 $02
	add hl, bc                                       ; $66f2: $09
	ld d, c                                          ; $66f3: $51
	pop hl                                           ; $66f4: $e1
	ld [bc], a                                       ; $66f5: $02
	inc bc                                           ; $66f6: $03
	ld c, b                                          ; $66f7: $48
	db $e4                                           ; $66f8: $e4
	nop                                              ; $66f9: $00
	ld [bc], a                                       ; $66fa: $02
	add hl, bc                                       ; $66fb: $09
	ld a, [de]                                       ; $66fc: $1a
	pop hl                                           ; $66fd: $e1
	ld [bc], a                                       ; $66fe: $02
	ld [$605c], sp                                   ; $66ff: $08 $5c $60
	db $fc                                           ; $6702: $fc
	add e                                            ; $6703: $83
	ld bc, $d0de                                     ; $6704: $01 $de $d0
	dec b                                            ; $6707: $05
	ret nz                                           ; $6708: $c0

	ld d, [hl]                                       ; $6709: $56
	ret c                                            ; $670a: $d8

	db $dd                                           ; $670b: $dd
	ret nc                                           ; $670c: $d0

	dec b                                            ; $670d: $05
	ret nz                                           ; $670e: $c0

	ld d, [hl]                                       ; $670f: $56
	ret c                                            ; $6710: $d8

	db $dd                                           ; $6711: $dd
	pop de                                           ; $6712: $d1
	push hl                                          ; $6713: $e5
	inc de                                           ; $6714: $13
	nop                                              ; $6715: $00
	nop                                              ; $6716: $00
	add hl, bc                                       ; $6717: $09
	rrca                                             ; $6718: $0f
	ret nz                                           ; $6719: $c0

	ld bc, $02a0                                     ; $671a: $01 $a0 $02
	add hl, bc                                       ; $671d: $09
	ld e, b                                          ; $671e: $58
	ret nz                                           ; $671f: $c0

	ld bc, $01a0                                     ; $6720: $01 $a0 $01
	add hl, bc                                       ; $6723: $09
	ld h, d                                          ; $6724: $62
	db $e4                                           ; $6725: $e4
	nop                                              ; $6726: $00
	ld [bc], a                                       ; $6727: $02
	add hl, bc                                       ; $6728: $09
	adc h                                            ; $6729: $8c
	pop bc                                           ; $672a: $c1
	ld e, c                                          ; $672b: $59
	db $e3                                           ; $672c: $e3
	nop                                              ; $672d: $00
	sub h                                            ; $672e: $94
	ret nz                                           ; $672f: $c0

	ld bc, $02a0                                     ; $6730: $01 $a0 $02
	add hl, bc                                       ; $6733: $09
	ld l, c                                          ; $6734: $69
	db $fd                                           ; $6735: $fd
	ld a, a                                          ; $6736: $7f
	adc e                                            ; $6737: $8b
	ld bc, $02ea                                     ; $6738: $01 $ea $02
	or b                                             ; $673b: $b0
	inc l                                            ; $673c: $2c
	rlca                                             ; $673d: $07
	pop hl                                           ; $673e: $e1
	ld [bc], a                                       ; $673f: $02
	dec b                                            ; $6740: $05
	ld c, a                                          ; $6741: $4f
	db $e4                                           ; $6742: $e4
	ld bc, $029f                                     ; $6743: $01 $9f $02
	or b                                             ; $6746: $b0
	dec l                                            ; $6747: $2d
	rlca                                             ; $6748: $07
	pop hl                                           ; $6749: $e1
	ld [bc], a                                       ; $674a: $02
	dec b                                            ; $674b: $05
	ld h, [hl]                                       ; $674c: $66
	db $e4                                           ; $674d: $e4
	nop                                              ; $674e: $00
	ld l, b                                          ; $674f: $68
	ld [bc], a                                       ; $6750: $02
	or b                                             ; $6751: $b0
	ld l, $07                                        ; $6752: $2e $07
	pop hl                                           ; $6754: $e1
	ld [bc], a                                       ; $6755: $02
	dec b                                            ; $6756: $05
	ld a, l                                          ; $6757: $7d
	db $e4                                           ; $6758: $e4
	nop                                              ; $6759: $00
	rst FarCall                                          ; $675a: $f7
	ld [bc], a                                       ; $675b: $02
	or b                                             ; $675c: $b0
	cpl                                              ; $675d: $2f
	rlca                                             ; $675e: $07
	pop hl                                           ; $675f: $e1
	ld [bc], a                                       ; $6760: $02
	dec b                                            ; $6761: $05
	sub h                                            ; $6762: $94
	db $e4                                           ; $6763: $e4
	ld bc, $027e                                     ; $6764: $01 $7e $02
	or b                                             ; $6767: $b0
	jr nc, jr_07d_6771                               ; $6768: $30 $07

	pop hl                                           ; $676a: $e1
	ld [bc], a                                       ; $676b: $02
	dec b                                            ; $676c: $05
	xor e                                            ; $676d: $ab
	db $e4                                           ; $676e: $e4
	nop                                              ; $676f: $00
	pop hl                                           ; $6770: $e1

jr_07d_6771:
	ld [bc], a                                       ; $6771: $02
	or b                                             ; $6772: $b0
	ld sp, $e107                                     ; $6773: $31 $07 $e1
	ld [bc], a                                       ; $6776: $02
	dec b                                            ; $6777: $05
	jp nz, $01e4                                     ; $6778: $c2 $e4 $01

	ld l, b                                          ; $677b: $68
	ld [bc], a                                       ; $677c: $02
	or b                                             ; $677d: $b0
	ld [hl-], a                                      ; $677e: $32
	rlca                                             ; $677f: $07
	pop hl                                           ; $6780: $e1
	ld [bc], a                                       ; $6781: $02
	dec b                                            ; $6782: $05
	reti                                             ; $6783: $d9


	db $e4                                           ; $6784: $e4
	nop                                              ; $6785: $00
	ld sp, $b002                                     ; $6786: $31 $02 $b0
	inc sp                                           ; $6789: $33
	rlca                                             ; $678a: $07
	pop hl                                           ; $678b: $e1
	ld [bc], a                                       ; $678c: $02
	dec b                                            ; $678d: $05
	ldh a, [$e4]                                     ; $678e: $f0 $e4
	ld bc, $0252                                     ; $6790: $01 $52 $02
	or b                                             ; $6793: $b0
	inc [hl]                                         ; $6794: $34
	rlca                                             ; $6795: $07
	pop hl                                           ; $6796: $e1
	ld [bc], a                                       ; $6797: $02
	ld b, $07                                        ; $6798: $06 $07
	db $e4                                           ; $679a: $e4
	nop                                              ; $679b: $00
	or l                                             ; $679c: $b5
	ld [bc], a                                       ; $679d: $02
	or b                                             ; $679e: $b0
	dec [hl]                                         ; $679f: $35
	rlca                                             ; $67a0: $07
	pop hl                                           ; $67a1: $e1
	ld [bc], a                                       ; $67a2: $02
	ld b, $1e                                        ; $67a3: $06 $1e
	db $e4                                           ; $67a5: $e4
	ld bc, $023c                                     ; $67a6: $01 $3c $02
	or b                                             ; $67a9: $b0
	ld [hl], $0a                                     ; $67aa: $36 $0a
	pop bc                                           ; $67ac: $c1
	ld l, l                                          ; $67ad: $6d
	ret nc                                           ; $67ae: $d0

	pop hl                                           ; $67af: $e1
	ld [bc], a                                       ; $67b0: $02
	ld b, $35                                        ; $67b1: $06 $35
	db $e4                                           ; $67b3: $e4
	nop                                              ; $67b4: $00
	ld [bc], a                                       ; $67b5: $02
	ld [$0998], sp                                   ; $67b6: $08 $98 $09
	ld [hl], e                                       ; $67b9: $73
	add hl, bc                                       ; $67ba: $09
	inc [hl]                                         ; $67bb: $34
	add d                                            ; $67bc: $82
	ret nz                                           ; $67bd: $c0

	dec de                                           ; $67be: $1b
	ret nc                                           ; $67bf: $d0

	ld [bc], a                                       ; $67c0: $02
	ret nc                                           ; $67c1: $d0

	pop de                                           ; $67c2: $d1
	ld a, [bc]                                       ; $67c3: $0a
	pop hl                                           ; $67c4: $e1
	ld [bc], a                                       ; $67c5: $02
	inc bc                                           ; $67c6: $03
	rrca                                             ; $67c7: $0f
	ret nz                                           ; $67c8: $c0

	ld bc, $02a0                                     ; $67c9: $01 $a0 $02
	add hl, bc                                       ; $67cc: $09
	ld [hl], l                                       ; $67cd: $75
	ld [bc], a                                       ; $67ce: $02
	jp nc, $0ad3                                     ; $67cf: $d2 $d3 $0a

	pop hl                                           ; $67d2: $e1
	ld [bc], a                                       ; $67d3: $02
	inc bc                                           ; $67d4: $03
	inc de                                           ; $67d5: $13
	ret nz                                           ; $67d6: $c0

	ld bc, $02a0                                     ; $67d7: $01 $a0 $02
	add hl, bc                                       ; $67da: $09
	add c                                            ; $67db: $81
	ld bc, $0ad4                                     ; $67dc: $01 $d4 $0a
	pop hl                                           ; $67df: $e1
	ld [bc], a                                       ; $67e0: $02
	inc bc                                           ; $67e1: $03
	inc de                                           ; $67e2: $13
	ret nz                                           ; $67e3: $c0

	ld bc, $02a0                                     ; $67e4: $01 $a0 $02
	add hl, bc                                       ; $67e7: $09
	adc e                                            ; $67e8: $8b
	pop hl                                           ; $67e9: $e1
	ld [bc], a                                       ; $67ea: $02
	inc bc                                           ; $67eb: $03
	dec l                                            ; $67ec: $2d
	db $e4                                           ; $67ed: $e4
	ld bc, $0986                                     ; $67ee: $01 $86 $09
	sub h                                            ; $67f1: $94
	add hl, bc                                       ; $67f2: $09
	inc l                                            ; $67f3: $2c
	pop hl                                           ; $67f4: $e1
	ld [bc], a                                       ; $67f5: $02
	inc bc                                           ; $67f6: $03
	dec de                                           ; $67f7: $1b
	add d                                            ; $67f8: $82
	ret nz                                           ; $67f9: $c0

	dec de                                           ; $67fa: $1b
	ret nc                                           ; $67fb: $d0

	ld [bc], a                                       ; $67fc: $02
	ret nc                                           ; $67fd: $d0

	pop de                                           ; $67fe: $d1
	ld b, $c0                                        ; $67ff: $06 $c0
	ld bc, $02a0                                     ; $6801: $01 $a0 $02
	add hl, bc                                       ; $6804: $09
	sub [hl]                                         ; $6805: $96
	ld [bc], a                                       ; $6806: $02
	jp nc, $06d3                                     ; $6807: $d2 $d3 $06

	ret nz                                           ; $680a: $c0

	ld bc, $02a0                                     ; $680b: $01 $a0 $02
	add hl, bc                                       ; $680e: $09
	and l                                            ; $680f: $a5
	ld bc, $06d4                                     ; $6810: $01 $d4 $06
	ret nz                                           ; $6813: $c0

	ld bc, $02a0                                     ; $6814: $01 $a0 $02
	add hl, bc                                       ; $6817: $09
	or d                                             ; $6818: $b2
	pop hl                                           ; $6819: $e1
	ld [bc], a                                       ; $681a: $02
	inc bc                                           ; $681b: $03
	ccf                                              ; $681c: $3f
	db $e4                                           ; $681d: $e4
	ld bc, $0956                                     ; $681e: $01 $56 $09
	cp d                                             ; $6821: $ba
	add hl, bc                                       ; $6822: $09
	inc l                                            ; $6823: $2c
	pop hl                                           ; $6824: $e1
	ld [bc], a                                       ; $6825: $02
	inc bc                                           ; $6826: $03
	rla                                              ; $6827: $17
	add d                                            ; $6828: $82
	ret nz                                           ; $6829: $c0

	dec de                                           ; $682a: $1b
	ret nc                                           ; $682b: $d0

	ld [bc], a                                       ; $682c: $02
	ret nc                                           ; $682d: $d0

	pop de                                           ; $682e: $d1
	ld b, $c0                                        ; $682f: $06 $c0
	ld bc, $02a0                                     ; $6831: $01 $a0 $02
	add hl, bc                                       ; $6834: $09
	cp h                                             ; $6835: $bc
	ld [bc], a                                       ; $6836: $02
	jp nc, $06d3                                     ; $6837: $d2 $d3 $06

	ret nz                                           ; $683a: $c0

	ld bc, $02a0                                     ; $683b: $01 $a0 $02
	add hl, bc                                       ; $683e: $09
	call z, $d401                                    ; $683f: $cc $01 $d4
	ld b, $c0                                        ; $6842: $06 $c0
	ld bc, $02a0                                     ; $6844: $01 $a0 $02
	add hl, bc                                       ; $6847: $09
	ret c                                            ; $6848: $d8

	pop hl                                           ; $6849: $e1
	ld [bc], a                                       ; $684a: $02
	inc bc                                           ; $684b: $03
	ld [hl], $e4                                     ; $684c: $36 $e4
	ld bc, $0826                                     ; $684e: $01 $26 $08
	sub b                                            ; $6851: $90
	add hl, bc                                       ; $6852: $09
	ld [hl], e                                       ; $6853: $73
	add hl, bc                                       ; $6854: $09
	inc l                                            ; $6855: $2c
	pop hl                                           ; $6856: $e1
	ld [bc], a                                       ; $6857: $02
	inc bc                                           ; $6858: $03
	dec de                                           ; $6859: $1b
	add d                                            ; $685a: $82
	ret nz                                           ; $685b: $c0

	dec de                                           ; $685c: $1b
	ret nc                                           ; $685d: $d0

	ld [bc], a                                       ; $685e: $02
	ret nc                                           ; $685f: $d0

	pop de                                           ; $6860: $d1
	ld b, $c0                                        ; $6861: $06 $c0
	ld bc, $02a0                                     ; $6863: $01 $a0 $02
	add hl, bc                                       ; $6866: $09
	push hl                                          ; $6867: $e5
	ld [bc], a                                       ; $6868: $02
	jp nc, $06d3                                     ; $6869: $d2 $d3 $06

	ret nz                                           ; $686c: $c0

	ld bc, $02a0                                     ; $686d: $01 $a0 $02
	add hl, bc                                       ; $6870: $09
	rst AddAOntoHL                                          ; $6871: $ef
	ld bc, $06d4                                     ; $6872: $01 $d4 $06
	ret nz                                           ; $6875: $c0

	ld bc, $02a0                                     ; $6876: $01 $a0 $02
	add hl, bc                                       ; $6879: $09
	db $fc                                           ; $687a: $fc
	pop hl                                           ; $687b: $e1
	ld [bc], a                                       ; $687c: $02
	inc bc                                           ; $687d: $03
	ld d, c                                          ; $687e: $51
	db $e4                                           ; $687f: $e4
	nop                                              ; $6880: $00
	db $f4                                           ; $6881: $f4
	add hl, bc                                       ; $6882: $09
	sub h                                            ; $6883: $94
	add hl, bc                                       ; $6884: $09
	inc l                                            ; $6885: $2c
	pop hl                                           ; $6886: $e1
	ld [bc], a                                       ; $6887: $02
	inc bc                                           ; $6888: $03
	rla                                              ; $6889: $17
	add d                                            ; $688a: $82
	ret nz                                           ; $688b: $c0

	dec de                                           ; $688c: $1b
	ret nc                                           ; $688d: $d0

	ld [bc], a                                       ; $688e: $02
	ret nc                                           ; $688f: $d0

	pop de                                           ; $6890: $d1
	ld b, $c0                                        ; $6891: $06 $c0
	ld bc, $02a0                                     ; $6893: $01 $a0 $02
	ld a, [bc]                                       ; $6896: $0a
	dec b                                            ; $6897: $05
	ld [bc], a                                       ; $6898: $02
	jp nc, $06d3                                     ; $6899: $d2 $d3 $06

	ret nz                                           ; $689c: $c0

	ld bc, $02a0                                     ; $689d: $01 $a0 $02
	ld a, [bc]                                       ; $68a0: $0a
	rla                                              ; $68a1: $17
	ld bc, $06d4                                     ; $68a2: $01 $d4 $06
	ret nz                                           ; $68a5: $c0

	ld bc, $02a0                                     ; $68a6: $01 $a0 $02
	ld a, [bc]                                       ; $68a9: $0a
	inc hl                                           ; $68aa: $23
	pop hl                                           ; $68ab: $e1
	ld [bc], a                                       ; $68ac: $02
	inc bc                                           ; $68ad: $03
	ld c, b                                          ; $68ae: $48
	db $e4                                           ; $68af: $e4
	nop                                              ; $68b0: $00
	call nz, $ba09                                   ; $68b1: $c4 $09 $ba
	add hl, bc                                       ; $68b4: $09
	inc l                                            ; $68b5: $2c
	pop hl                                           ; $68b6: $e1
	ld [bc], a                                       ; $68b7: $02
	inc bc                                           ; $68b8: $03
	dec de                                           ; $68b9: $1b
	add d                                            ; $68ba: $82
	ret nz                                           ; $68bb: $c0

	dec de                                           ; $68bc: $1b
	ret nc                                           ; $68bd: $d0

	ld [bc], a                                       ; $68be: $02
	ret nc                                           ; $68bf: $d0

	pop de                                           ; $68c0: $d1
	ld b, $c0                                        ; $68c1: $06 $c0
	ld bc, $02a0                                     ; $68c3: $01 $a0 $02
	ld a, [bc]                                       ; $68c6: $0a
	jr nc, @+$04                                     ; $68c7: $30 $02

	jp nc, $06d3                                     ; $68c9: $d2 $d3 $06

	ret nz                                           ; $68cc: $c0

	ld bc, $02a0                                     ; $68cd: $01 $a0 $02
	ld a, [bc]                                       ; $68d0: $0a
	ld a, $01                                        ; $68d1: $3e $01
	call nc, $c006                                   ; $68d3: $d4 $06 $c0
	ld bc, $02a0                                     ; $68d6: $01 $a0 $02
	ld a, [bc]                                       ; $68d9: $0a
	ld c, e                                          ; $68da: $4b
	pop hl                                           ; $68db: $e1
	ld [bc], a                                       ; $68dc: $02
	inc bc                                           ; $68dd: $03
	ld d, c                                          ; $68de: $51
	db $e4                                           ; $68df: $e4
	nop                                              ; $68e0: $00
	sub h                                            ; $68e1: $94
	ld [$0990], sp                                   ; $68e2: $08 $90 $09
	ld [hl], e                                       ; $68e5: $73
	add hl, bc                                       ; $68e6: $09
	inc l                                            ; $68e7: $2c
	pop hl                                           ; $68e8: $e1
	ld [bc], a                                       ; $68e9: $02
	inc bc                                           ; $68ea: $03
	rla                                              ; $68eb: $17
	add d                                            ; $68ec: $82
	ret nz                                           ; $68ed: $c0

	dec de                                           ; $68ee: $1b
	ret nc                                           ; $68ef: $d0

	ld [bc], a                                       ; $68f0: $02
	ret nc                                           ; $68f1: $d0

	pop de                                           ; $68f2: $d1
	ld b, $c0                                        ; $68f3: $06 $c0
	ld bc, $02a0                                     ; $68f5: $01 $a0 $02
	ld a, [bc]                                       ; $68f8: $0a
	ld d, a                                          ; $68f9: $57
	ld [bc], a                                       ; $68fa: $02
	jp nc, $06d3                                     ; $68fb: $d2 $d3 $06

	ret nz                                           ; $68fe: $c0

	ld bc, $02a0                                     ; $68ff: $01 $a0 $02
	ld a, [bc]                                       ; $6902: $0a
	ld h, h                                          ; $6903: $64
	ld bc, $06d4                                     ; $6904: $01 $d4 $06
	ret nz                                           ; $6907: $c0

	ld bc, $02a0                                     ; $6908: $01 $a0 $02
	ld a, [bc]                                       ; $690b: $0a
	ld [hl], d                                       ; $690c: $72
	pop hl                                           ; $690d: $e1
	ld [bc], a                                       ; $690e: $02
	inc bc                                           ; $690f: $03
	ccf                                              ; $6910: $3f
	db $e4                                           ; $6911: $e4
	nop                                              ; $6912: $00
	ld h, d                                          ; $6913: $62
	add hl, bc                                       ; $6914: $09
	sub h                                            ; $6915: $94
	add hl, bc                                       ; $6916: $09
	inc l                                            ; $6917: $2c
	pop hl                                           ; $6918: $e1
	ld [bc], a                                       ; $6919: $02
	inc bc                                           ; $691a: $03
	dec de                                           ; $691b: $1b
	add d                                            ; $691c: $82
	ret nz                                           ; $691d: $c0

	dec de                                           ; $691e: $1b
	ret nc                                           ; $691f: $d0

	ld [bc], a                                       ; $6920: $02
	ret nc                                           ; $6921: $d0

	pop de                                           ; $6922: $d1
	ld b, $c0                                        ; $6923: $06 $c0
	ld bc, $02a0                                     ; $6925: $01 $a0 $02
	ld a, [bc]                                       ; $6928: $0a
	ld a, d                                          ; $6929: $7a
	ld [bc], a                                       ; $692a: $02
	jp nc, $06d3                                     ; $692b: $d2 $d3 $06

	ret nz                                           ; $692e: $c0

	ld bc, $02a0                                     ; $692f: $01 $a0 $02
	ld a, [bc]                                       ; $6932: $0a
	adc b                                            ; $6933: $88
	ld bc, $06d4                                     ; $6934: $01 $d4 $06
	ret nz                                           ; $6937: $c0

	ld bc, $02a0                                     ; $6938: $01 $a0 $02
	ld a, [bc]                                       ; $693b: $0a
	sub d                                            ; $693c: $92
	pop hl                                           ; $693d: $e1
	ld [bc], a                                       ; $693e: $02
	inc bc                                           ; $693f: $03
	ld c, b                                          ; $6940: $48
	db $e4                                           ; $6941: $e4
	nop                                              ; $6942: $00
	ld [hl-], a                                      ; $6943: $32
	add hl, bc                                       ; $6944: $09
	cp d                                             ; $6945: $ba
	add hl, bc                                       ; $6946: $09
	inc l                                            ; $6947: $2c
	pop hl                                           ; $6948: $e1
	ld [bc], a                                       ; $6949: $02
	inc bc                                           ; $694a: $03
	inc de                                           ; $694b: $13
	add d                                            ; $694c: $82
	ret nz                                           ; $694d: $c0

	dec de                                           ; $694e: $1b
	ret nc                                           ; $694f: $d0

	ld [bc], a                                       ; $6950: $02
	ret nc                                           ; $6951: $d0

	pop de                                           ; $6952: $d1
	ld b, $c0                                        ; $6953: $06 $c0
	ld bc, $02a0                                     ; $6955: $01 $a0 $02
	ld a, [bc]                                       ; $6958: $0a
	sbc h                                            ; $6959: $9c
	ld [bc], a                                       ; $695a: $02
	jp nc, $06d3                                     ; $695b: $d2 $d3 $06

	ret nz                                           ; $695e: $c0

	ld bc, $02a0                                     ; $695f: $01 $a0 $02
	ld a, [bc]                                       ; $6962: $0a
	and d                                            ; $6963: $a2
	ld bc, $06d4                                     ; $6964: $01 $d4 $06
	ret nz                                           ; $6967: $c0

	ld bc, $02a0                                     ; $6968: $01 $a0 $02
	ld a, [bc]                                       ; $696b: $0a
	xor b                                            ; $696c: $a8
	pop hl                                           ; $696d: $e1
	ld [bc], a                                       ; $696e: $02
	inc bc                                           ; $696f: $03
	ld [hl], $e4                                     ; $6970: $36 $e4
	nop                                              ; $6972: $00
	ld [bc], a                                       ; $6973: $02
	add hl, bc                                       ; $6974: $09
	ld [$02e1], sp                                   ; $6975: $08 $e1 $02
	ld [$e5b7], sp                                   ; $6978: $08 $b7 $e5
	inc de                                           ; $697b: $13
	nop                                              ; $697c: $00
	nop                                              ; $697d: $00
	add hl, bc                                       ; $697e: $09
	rrca                                             ; $697f: $0f
	ret nz                                           ; $6980: $c0

	ld bc, $02a0                                     ; $6981: $01 $a0 $02
	ld a, [bc]                                       ; $6984: $0a
	xor l                                            ; $6985: $ad
	ret nz                                           ; $6986: $c0

	ld bc, $01a0                                     ; $6987: $01 $a0 $01
	add hl, bc                                       ; $698a: $09
	ld h, d                                          ; $698b: $62
	db $e4                                           ; $698c: $e4
	nop                                              ; $698d: $00
	ld [bc], a                                       ; $698e: $02
	add hl, bc                                       ; $698f: $09
	ret nz                                           ; $6990: $c0

	jp z, $59c1                                      ; $6991: $ca $c1 $59

	db $e3                                           ; $6994: $e3
	nop                                              ; $6995: $00
	sub [hl]                                         ; $6996: $96
	ret nz                                           ; $6997: $c0

	ld bc, $02a0                                     ; $6998: $01 $a0 $02
	ld a, [bc]                                       ; $699b: $0a
	or a                                             ; $699c: $b7
	ret nz                                           ; $699d: $c0

	ld bc, $01a0                                     ; $699e: $01 $a0 $01
	ld a, [bc]                                       ; $69a1: $0a
	cp l                                             ; $69a2: $bd
	db $fd                                           ; $69a3: $fd
	or a                                             ; $69a4: $b7
	adc e                                            ; $69a5: $8b
	ld bc, $02f6                                     ; $69a6: $01 $f6 $02
	or b                                             ; $69a9: $b0
	scf                                              ; $69aa: $37
	dec bc                                           ; $69ab: $0b
	pop hl                                           ; $69ac: $e1
	ld [bc], a                                       ; $69ad: $02
	ld b, $6e                                        ; $69ae: $06 $6e
	pop hl                                           ; $69b0: $e1
	ld [bc], a                                       ; $69b1: $02
	nop                                              ; $69b2: $00
	ldh [$e4], a                                     ; $69b3: $e0 $e4
	nop                                              ; $69b5: $00
	and a                                            ; $69b6: $a7
	ld [bc], a                                       ; $69b7: $02
	or b                                             ; $69b8: $b0
	jr c, @+$0d                                      ; $69b9: $38 $0b

	pop hl                                           ; $69bb: $e1
	ld [bc], a                                       ; $69bc: $02
	ld b, $bf                                        ; $69bd: $06 $bf
	pop hl                                           ; $69bf: $e1
	ld [bc], a                                       ; $69c0: $02
	nop                                              ; $69c1: $00
	ldh [$e4], a                                     ; $69c2: $e0 $e4
	ld bc, $02c4                                     ; $69c4: $01 $c4 $02
	or b                                             ; $69c7: $b0
	add hl, sp                                       ; $69c8: $39
	dec bc                                           ; $69c9: $0b
	pop hl                                           ; $69ca: $e1
	ld [bc], a                                       ; $69cb: $02
	ld b, $d6                                        ; $69cc: $06 $d6
	pop hl                                           ; $69ce: $e1
	ld [bc], a                                       ; $69cf: $02
	nop                                              ; $69d0: $00
	ldh [$e4], a                                     ; $69d1: $e0 $e4
	ld bc, $0223                                     ; $69d3: $01 $23 $02
	or b                                             ; $69d6: $b0
	ld a, [hl-]                                      ; $69d7: $3a
	dec bc                                           ; $69d8: $0b
	pop hl                                           ; $69d9: $e1
	ld [bc], a                                       ; $69da: $02
	ld b, $ed                                        ; $69db: $06 $ed
	pop hl                                           ; $69dd: $e1
	ld [bc], a                                       ; $69de: $02
	nop                                              ; $69df: $00
	ldh [$e4], a                                     ; $69e0: $e0 $e4
	ld bc, $0214                                     ; $69e2: $01 $14 $02
	or b                                             ; $69e5: $b0
	dec sp                                           ; $69e6: $3b
	dec bc                                           ; $69e7: $0b
	pop hl                                           ; $69e8: $e1
	ld [bc], a                                       ; $69e9: $02
	rlca                                             ; $69ea: $07
	inc b                                            ; $69eb: $04
	pop hl                                           ; $69ec: $e1
	ld [bc], a                                       ; $69ed: $02
	nop                                              ; $69ee: $00
	ldh [$e4], a                                     ; $69ef: $e0 $e4
	ld bc, $0297                                     ; $69f1: $01 $97 $02
	or b                                             ; $69f4: $b0
	inc a                                            ; $69f5: $3c
	dec bc                                           ; $69f6: $0b
	pop hl                                           ; $69f7: $e1
	ld [bc], a                                       ; $69f8: $02
	rlca                                             ; $69f9: $07
	dec de                                           ; $69fa: $1b
	pop hl                                           ; $69fb: $e1
	ld [bc], a                                       ; $69fc: $02
	nop                                              ; $69fd: $00
	ldh [$e4], a                                     ; $69fe: $e0 $e4
	nop                                              ; $6a00: $00
	ld e, h                                          ; $6a01: $5c
	ld [bc], a                                       ; $6a02: $02
	or b                                             ; $6a03: $b0
	dec a                                            ; $6a04: $3d
	dec bc                                           ; $6a05: $0b
	pop hl                                           ; $6a06: $e1
	ld [bc], a                                       ; $6a07: $02
	ld b, $89                                        ; $6a08: $06 $89
	pop hl                                           ; $6a0a: $e1
	ld [bc], a                                       ; $6a0b: $02
	nop                                              ; $6a0c: $00
	ldh [$e4], a                                     ; $6a0d: $e0 $e4
	nop                                              ; $6a0f: $00
	ld c, l                                          ; $6a10: $4d
	ld [bc], a                                       ; $6a11: $02
	or b                                             ; $6a12: $b0
	ld a, $0b                                        ; $6a13: $3e $0b
	pop hl                                           ; $6a15: $e1
	ld [bc], a                                       ; $6a16: $02
	rlca                                             ; $6a17: $07
	ld [hl-], a                                      ; $6a18: $32
	pop hl                                           ; $6a19: $e1
	ld [bc], a                                       ; $6a1a: $02
	nop                                              ; $6a1b: $00
	ldh [$e4], a                                     ; $6a1c: $e0 $e4
	ld bc, $026a                                     ; $6a1e: $01 $6a $02
	or b                                             ; $6a21: $b0
	ccf                                              ; $6a22: $3f
	dec bc                                           ; $6a23: $0b
	pop hl                                           ; $6a24: $e1
	ld [bc], a                                       ; $6a25: $02
	rlca                                             ; $6a26: $07
	ld c, c                                          ; $6a27: $49
	pop hl                                           ; $6a28: $e1
	ld [bc], a                                       ; $6a29: $02
	nop                                              ; $6a2a: $00
	ldh [$e4], a                                     ; $6a2b: $e0 $e4
	ld bc, $025b                                     ; $6a2d: $01 $5b $02
	or b                                             ; $6a30: $b0
	ld b, b                                          ; $6a31: $40
	dec bc                                           ; $6a32: $0b
	pop hl                                           ; $6a33: $e1
	ld [bc], a                                       ; $6a34: $02
	ld b, $a4                                        ; $6a35: $06 $a4
	pop hl                                           ; $6a37: $e1
	ld [bc], a                                       ; $6a38: $02
	nop                                              ; $6a39: $00
	ldh [$e4], a                                     ; $6a3a: $e0 $e4
	nop                                              ; $6a3c: $00
	jr nz, jr_07d_6a41                               ; $6a3d: $20 $02

	or b                                             ; $6a3f: $b0
	ld b, c                                          ; $6a40: $41

jr_07d_6a41:
	dec bc                                           ; $6a41: $0b
	pop hl                                           ; $6a42: $e1
	ld [bc], a                                       ; $6a43: $02
	rlca                                             ; $6a44: $07
	ld h, b                                          ; $6a45: $60
	pop hl                                           ; $6a46: $e1
	ld [bc], a                                       ; $6a47: $02
	nop                                              ; $6a48: $00
	ldh [$e4], a                                     ; $6a49: $e0 $e4
	nop                                              ; $6a4b: $00
	ld de, $b002                                     ; $6a4c: $11 $02 $b0
	ld b, d                                          ; $6a4f: $42
	dec bc                                           ; $6a50: $0b
	pop hl                                           ; $6a51: $e1
	ld [bc], a                                       ; $6a52: $02
	rlca                                             ; $6a53: $07
	ld [hl], a                                       ; $6a54: $77
	pop hl                                           ; $6a55: $e1
	ld [bc], a                                       ; $6a56: $02
	nop                                              ; $6a57: $00
	ldh [$e4], a                                     ; $6a58: $e0 $e4
	ld bc, $082e                                     ; $6a5a: $01 $2e $08
	sbc b                                            ; $6a5d: $98
	ld a, [bc]                                       ; $6a5e: $0a
	call nz, $3409                                   ; $6a5f: $c4 $09 $34
	add d                                            ; $6a62: $82
	ret nz                                           ; $6a63: $c0

	dec de                                           ; $6a64: $1b
	ret nc                                           ; $6a65: $d0

	ld [bc], a                                       ; $6a66: $02
	ret nc                                           ; $6a67: $d0

	pop de                                           ; $6a68: $d1
	ld a, [bc]                                       ; $6a69: $0a
	pop hl                                           ; $6a6a: $e1
	ld [bc], a                                       ; $6a6b: $02
	inc bc                                           ; $6a6c: $03
	rrca                                             ; $6a6d: $0f
	ret nz                                           ; $6a6e: $c0

	ld bc, $02a0                                     ; $6a6f: $01 $a0 $02
	ld a, [bc]                                       ; $6a72: $0a
	add $02                                          ; $6a73: $c6 $02
	jp nc, $0ad3                                     ; $6a75: $d2 $d3 $0a

	pop hl                                           ; $6a78: $e1
	ld [bc], a                                       ; $6a79: $02
	inc bc                                           ; $6a7a: $03
	inc de                                           ; $6a7b: $13
	ret nz                                           ; $6a7c: $c0

	ld bc, $02a0                                     ; $6a7d: $01 $a0 $02
	ld a, [bc]                                       ; $6a80: $0a
	call nc, $d401                                   ; $6a81: $d4 $01 $d4
	ld a, [bc]                                       ; $6a84: $0a
	pop hl                                           ; $6a85: $e1
	ld [bc], a                                       ; $6a86: $02
	inc bc                                           ; $6a87: $03
	inc de                                           ; $6a88: $13
	ret nz                                           ; $6a89: $c0

	ld bc, $02a0                                     ; $6a8a: $01 $a0 $02
	ld a, [bc]                                       ; $6a8d: $0a
	rst SubAFromDE                                          ; $6a8e: $df
	pop hl                                           ; $6a8f: $e1
	ld [bc], a                                       ; $6a90: $02
	inc bc                                           ; $6a91: $03
	dec l                                            ; $6a92: $2d
	db $e4                                           ; $6a93: $e4
	ld bc, $0a86                                     ; $6a94: $01 $86 $0a
	rst SubAFromBC                                          ; $6a97: $e7
	add hl, bc                                       ; $6a98: $09
	inc l                                            ; $6a99: $2c
	pop hl                                           ; $6a9a: $e1
	ld [bc], a                                       ; $6a9b: $02
	inc bc                                           ; $6a9c: $03
	rla                                              ; $6a9d: $17
	add d                                            ; $6a9e: $82
	ret nz                                           ; $6a9f: $c0

	dec de                                           ; $6aa0: $1b
	ret nc                                           ; $6aa1: $d0

	ld [bc], a                                       ; $6aa2: $02
	ret nc                                           ; $6aa3: $d0

	pop de                                           ; $6aa4: $d1
	ld b, $c0                                        ; $6aa5: $06 $c0
	ld bc, $02a0                                     ; $6aa7: $01 $a0 $02
	ld a, [bc]                                       ; $6aaa: $0a
	jp hl                                            ; $6aab: $e9


	ld [bc], a                                       ; $6aac: $02
	jp nc, $06d3                                     ; $6aad: $d2 $d3 $06

	ret nz                                           ; $6ab0: $c0

	ld bc, $02a0                                     ; $6ab1: $01 $a0 $02
	ld a, [bc]                                       ; $6ab4: $0a
	ld sp, hl                                        ; $6ab5: $f9
	ld bc, $06d4                                     ; $6ab6: $01 $d4 $06
	ret nz                                           ; $6ab9: $c0

	ld bc, $02a0                                     ; $6aba: $01 $a0 $02
	dec bc                                           ; $6abd: $0b
	ld b, $e1                                        ; $6abe: $06 $e1
	ld [bc], a                                       ; $6ac0: $02
	inc bc                                           ; $6ac1: $03
	ccf                                              ; $6ac2: $3f
	db $e4                                           ; $6ac3: $e4
	ld bc, $0b56                                     ; $6ac4: $01 $56 $0b
	rrca                                             ; $6ac7: $0f
	add hl, bc                                       ; $6ac8: $09
	inc l                                            ; $6ac9: $2c
	pop hl                                           ; $6aca: $e1
	ld [bc], a                                       ; $6acb: $02
	inc bc                                           ; $6acc: $03
	rla                                              ; $6acd: $17
	add d                                            ; $6ace: $82
	ret nz                                           ; $6acf: $c0

	dec de                                           ; $6ad0: $1b
	ret nc                                           ; $6ad1: $d0

	ld [bc], a                                       ; $6ad2: $02
	ret nc                                           ; $6ad3: $d0

	pop de                                           ; $6ad4: $d1
	ld b, $c0                                        ; $6ad5: $06 $c0
	ld bc, $02a0                                     ; $6ad7: $01 $a0 $02
	dec bc                                           ; $6ada: $0b
	ld de, $d202                                     ; $6adb: $11 $02 $d2
	db $d3                                           ; $6ade: $d3
	ld b, $c0                                        ; $6adf: $06 $c0
	ld bc, $02a0                                     ; $6ae1: $01 $a0 $02
	dec bc                                           ; $6ae4: $0b
	rra                                              ; $6ae5: $1f
	ld bc, $06d4                                     ; $6ae6: $01 $d4 $06
	ret nz                                           ; $6ae9: $c0

	ld bc, $02a0                                     ; $6aea: $01 $a0 $02
	dec bc                                           ; $6aed: $0b
	dec hl                                           ; $6aee: $2b
	pop hl                                           ; $6aef: $e1
	ld [bc], a                                       ; $6af0: $02
	inc bc                                           ; $6af1: $03
	ccf                                              ; $6af2: $3f
	db $e4                                           ; $6af3: $e4
	ld bc, $0826                                     ; $6af4: $01 $26 $08
	sub b                                            ; $6af7: $90
	ld a, [bc]                                       ; $6af8: $0a
	call nz, $2c09                                   ; $6af9: $c4 $09 $2c
	pop hl                                           ; $6afc: $e1
	ld [bc], a                                       ; $6afd: $02
	inc bc                                           ; $6afe: $03
	dec de                                           ; $6aff: $1b
	add d                                            ; $6b00: $82
	ret nz                                           ; $6b01: $c0

	dec de                                           ; $6b02: $1b
	ret nc                                           ; $6b03: $d0

	ld [bc], a                                       ; $6b04: $02
	ret nc                                           ; $6b05: $d0

	pop de                                           ; $6b06: $d1
	ld b, $c0                                        ; $6b07: $06 $c0
	ld bc, $02a0                                     ; $6b09: $01 $a0 $02
	dec bc                                           ; $6b0c: $0b
	jr c, @+$04                                      ; $6b0d: $38 $02

	jp nc, $06d3                                     ; $6b0f: $d2 $d3 $06

	ret nz                                           ; $6b12: $c0

	ld bc, $02a0                                     ; $6b13: $01 $a0 $02
	dec bc                                           ; $6b16: $0b
	ld b, e                                          ; $6b17: $43
	ld bc, $06d4                                     ; $6b18: $01 $d4 $06
	ret nz                                           ; $6b1b: $c0

	ld bc, $02a0                                     ; $6b1c: $01 $a0 $02
	dec bc                                           ; $6b1f: $0b
	ld d, b                                          ; $6b20: $50
	pop hl                                           ; $6b21: $e1
	ld [bc], a                                       ; $6b22: $02
	inc bc                                           ; $6b23: $03
	ld d, c                                          ; $6b24: $51
	db $e4                                           ; $6b25: $e4
	nop                                              ; $6b26: $00
	db $f4                                           ; $6b27: $f4
	ld a, [bc]                                       ; $6b28: $0a
	rst SubAFromBC                                          ; $6b29: $e7
	add hl, bc                                       ; $6b2a: $09
	inc l                                            ; $6b2b: $2c
	pop hl                                           ; $6b2c: $e1
	ld [bc], a                                       ; $6b2d: $02
	inc bc                                           ; $6b2e: $03
	rla                                              ; $6b2f: $17
	add d                                            ; $6b30: $82
	ret nz                                           ; $6b31: $c0

	dec de                                           ; $6b32: $1b
	ret nc                                           ; $6b33: $d0

	ld [bc], a                                       ; $6b34: $02
	ret nc                                           ; $6b35: $d0

	pop de                                           ; $6b36: $d1
	ld b, $c0                                        ; $6b37: $06 $c0
	ld bc, $02a0                                     ; $6b39: $01 $a0 $02
	dec bc                                           ; $6b3c: $0b
	ld e, h                                          ; $6b3d: $5c
	ld [bc], a                                       ; $6b3e: $02
	jp nc, $06d3                                     ; $6b3f: $d2 $d3 $06

	ret nz                                           ; $6b42: $c0

	ld bc, $02a0                                     ; $6b43: $01 $a0 $02
	dec bc                                           ; $6b46: $0b
	ld l, l                                          ; $6b47: $6d
	ld bc, $06d4                                     ; $6b48: $01 $d4 $06
	ret nz                                           ; $6b4b: $c0

	ld bc, $02a0                                     ; $6b4c: $01 $a0 $02
	dec bc                                           ; $6b4f: $0b
	ld a, d                                          ; $6b50: $7a
	pop hl                                           ; $6b51: $e1
	ld [bc], a                                       ; $6b52: $02
	inc bc                                           ; $6b53: $03
	ccf                                              ; $6b54: $3f
	db $e4                                           ; $6b55: $e4
	nop                                              ; $6b56: $00
	call nz, $0f0b                                   ; $6b57: $c4 $0b $0f
	add hl, bc                                       ; $6b5a: $09
	inc l                                            ; $6b5b: $2c
	pop hl                                           ; $6b5c: $e1
	ld [bc], a                                       ; $6b5d: $02
	inc bc                                           ; $6b5e: $03
	dec de                                           ; $6b5f: $1b
	add d                                            ; $6b60: $82
	ret nz                                           ; $6b61: $c0

	dec de                                           ; $6b62: $1b
	ret nc                                           ; $6b63: $d0

	ld [bc], a                                       ; $6b64: $02
	ret nc                                           ; $6b65: $d0

	pop de                                           ; $6b66: $d1
	ld b, $c0                                        ; $6b67: $06 $c0
	ld bc, $02a0                                     ; $6b69: $01 $a0 $02
	dec bc                                           ; $6b6c: $0b
	add a                                            ; $6b6d: $87
	ld [bc], a                                       ; $6b6e: $02
	jp nc, $06d3                                     ; $6b6f: $d2 $d3 $06

	ret nz                                           ; $6b72: $c0

	ld bc, $02a0                                     ; $6b73: $01 $a0 $02
	dec bc                                           ; $6b76: $0b
	sub l                                            ; $6b77: $95
	ld bc, $06d4                                     ; $6b78: $01 $d4 $06
	ret nz                                           ; $6b7b: $c0

	ld bc, $02a0                                     ; $6b7c: $01 $a0 $02
	dec bc                                           ; $6b7f: $0b
	and d                                            ; $6b80: $a2
	pop hl                                           ; $6b81: $e1
	ld [bc], a                                       ; $6b82: $02
	inc bc                                           ; $6b83: $03
	ld c, b                                          ; $6b84: $48
	db $e4                                           ; $6b85: $e4
	nop                                              ; $6b86: $00
	sub h                                            ; $6b87: $94
	ld [$0a90], sp                                   ; $6b88: $08 $90 $0a
	call nz, $2c09                                   ; $6b8b: $c4 $09 $2c
	pop hl                                           ; $6b8e: $e1
	ld [bc], a                                       ; $6b8f: $02
	inc bc                                           ; $6b90: $03
	rla                                              ; $6b91: $17
	add d                                            ; $6b92: $82
	ret nz                                           ; $6b93: $c0

	dec de                                           ; $6b94: $1b
	ret nc                                           ; $6b95: $d0

	ld [bc], a                                       ; $6b96: $02
	ret nc                                           ; $6b97: $d0

	pop de                                           ; $6b98: $d1
	ld b, $c0                                        ; $6b99: $06 $c0
	ld bc, $02a0                                     ; $6b9b: $01 $a0 $02
	ld a, [bc]                                       ; $6b9e: $0a
	ld d, a                                          ; $6b9f: $57
	ld [bc], a                                       ; $6ba0: $02
	jp nc, $06d3                                     ; $6ba1: $d2 $d3 $06

	ret nz                                           ; $6ba4: $c0

	ld bc, $02a0                                     ; $6ba5: $01 $a0 $02
	ld a, [bc]                                       ; $6ba8: $0a
	ld h, h                                          ; $6ba9: $64
	ld bc, $06d4                                     ; $6baa: $01 $d4 $06
	ret nz                                           ; $6bad: $c0

jr_07d_6bae:
	ld bc, $02a0                                     ; $6bae: $01 $a0 $02
	dec bc                                           ; $6bb1: $0b
	xor a                                            ; $6bb2: $af
	pop hl                                           ; $6bb3: $e1
	ld [bc], a                                       ; $6bb4: $02
	inc bc                                           ; $6bb5: $03
	ccf                                              ; $6bb6: $3f
	db $e4                                           ; $6bb7: $e4
	nop                                              ; $6bb8: $00
	ld h, d                                          ; $6bb9: $62
	ld a, [bc]                                       ; $6bba: $0a
	rst SubAFromBC                                          ; $6bbb: $e7
	add hl, bc                                       ; $6bbc: $09
	inc l                                            ; $6bbd: $2c
	pop hl                                           ; $6bbe: $e1
	ld [bc], a                                       ; $6bbf: $02
	inc bc                                           ; $6bc0: $03
	rla                                              ; $6bc1: $17
	add d                                            ; $6bc2: $82
	ret nz                                           ; $6bc3: $c0

	dec de                                           ; $6bc4: $1b
	ret nc                                           ; $6bc5: $d0

	ld [bc], a                                       ; $6bc6: $02
	ret nc                                           ; $6bc7: $d0

	pop de                                           ; $6bc8: $d1
	ld b, $c0                                        ; $6bc9: $06 $c0
	ld bc, $02a0                                     ; $6bcb: $01 $a0 $02
	ld a, [bc]                                       ; $6bce: $0a
	ld a, d                                          ; $6bcf: $7a
	ld [bc], a                                       ; $6bd0: $02
	jp nc, $06d3                                     ; $6bd1: $d2 $d3 $06

	ret nz                                           ; $6bd4: $c0

	ld bc, $02a0                                     ; $6bd5: $01 $a0 $02
	dec bc                                           ; $6bd8: $0b
	or a                                             ; $6bd9: $b7
	ld bc, $06d4                                     ; $6bda: $01 $d4 $06
	ret nz                                           ; $6bdd: $c0

	ld bc, $02a0                                     ; $6bde: $01 $a0 $02
	dec bc                                           ; $6be1: $0b
	pop bc                                           ; $6be2: $c1
	pop hl                                           ; $6be3: $e1
	ld [bc], a                                       ; $6be4: $02
	inc bc                                           ; $6be5: $03
	ccf                                              ; $6be6: $3f
	db $e4                                           ; $6be7: $e4
	nop                                              ; $6be8: $00
	ld [hl-], a                                      ; $6be9: $32
	dec bc                                           ; $6bea: $0b
	rrca                                             ; $6beb: $0f
	add hl, bc                                       ; $6bec: $09
	inc l                                            ; $6bed: $2c
	pop hl                                           ; $6bee: $e1
	ld [bc], a                                       ; $6bef: $02

jr_07d_6bf0:
	inc bc                                           ; $6bf0: $03
	inc de                                           ; $6bf1: $13
	add d                                            ; $6bf2: $82
	ret nz                                           ; $6bf3: $c0

	dec de                                           ; $6bf4: $1b
	ret nc                                           ; $6bf5: $d0

	ld [bc], a                                       ; $6bf6: $02
	ret nc                                           ; $6bf7: $d0

	pop de                                           ; $6bf8: $d1
	ld b, $c0                                        ; $6bf9: $06 $c0
	ld bc, $02a0                                     ; $6bfb: $01 $a0 $02
	ld a, [bc]                                       ; $6bfe: $0a
	sbc h                                            ; $6bff: $9c
	ld [bc], a                                       ; $6c00: $02
	jp nc, $06d3                                     ; $6c01: $d2 $d3 $06

	ret nz                                           ; $6c04: $c0

	ld bc, $02a0                                     ; $6c05: $01 $a0 $02
	ld a, [bc]                                       ; $6c08: $0a
	and d                                            ; $6c09: $a2
	ld bc, $06d4                                     ; $6c0a: $01 $d4 $06
	ret nz                                           ; $6c0d: $c0

	ld bc, $02a0                                     ; $6c0e: $01 $a0 $02
	ld a, [bc]                                       ; $6c11: $0a
	xor b                                            ; $6c12: $a8
	pop hl                                           ; $6c13: $e1
	ld [bc], a                                       ; $6c14: $02
	inc bc                                           ; $6c15: $03
	ld [hl], $e4                                     ; $6c16: $36 $e4
	nop                                              ; $6c18: $00
	ld [bc], a                                       ; $6c19: $02
	add hl, bc                                       ; $6c1a: $09
	ld [$02e1], sp                                   ; $6c1b: $08 $e1 $02
	add hl, bc                                       ; $6c1e: $09
	ld [hl], $e5                                     ; $6c1f: $36 $e5
	inc de                                           ; $6c21: $13
	nop                                              ; $6c22: $00
	nop                                              ; $6c23: $00
	add hl, bc                                       ; $6c24: $09
	ld h, e                                          ; $6c25: $63
	ret nc                                           ; $6c26: $d0

	add e                                            ; $6c27: $83
	ld bc, $d0de                                     ; $6c28: $01 $de $d0
	jr nz, jr_07d_6bae                               ; $6c2b: $20 $81

	and b                                            ; $6c2d: $a0
	jr jr_07d_6bf0                                   ; $6c2e: $18 $c0

	ld bc, $02a0                                     ; $6c30: $01 $a0 $02
	rlca                                             ; $6c33: $07
	sub a                                            ; $6c34: $97
	ret nz                                           ; $6c35: $c0

	ld bc, $01a0                                     ; $6c36: $01 $a0 $01
	rlca                                             ; $6c39: $07
	and b                                            ; $6c3a: $a0
	add c                                            ; $6c3b: $81
	ret nz                                           ; $6c3c: $c0

	ld h, h                                          ; $6c3d: $64
	ld [bc], a                                       ; $6c3e: $02
	ldh [$60], a                                     ; $6c3f: $e0 $60
	inc bc                                           ; $6c41: $03
	db $e4                                           ; $6c42: $e4
	nop                                              ; $6c43: $00

jr_07d_6c44:
	ld b, [hl]                                       ; $6c44: $46
	nop                                              ; $6c45: $00
	ld b, d                                          ; $6c46: $42
	ld h, c                                          ; $6c47: $61
	cp $0c                                           ; $6c48: $fe $0c
	pop af                                           ; $6c4a: $f1
	add b                                            ; $6c4b: $80

jr_07d_6c4c:
	and b                                            ; $6c4c: $a0
	ld a, [de]                                       ; $6c4d: $1a
	add b                                            ; $6c4e: $80
	and b                                            ; $6c4f: $a0
	dec de                                           ; $6c50: $1b
	db $fc                                           ; $6c51: $fc
	ret nz                                           ; $6c52: $c0

	ld h, h                                          ; $6c53: $64
	ldh [$62], a                                     ; $6c54: $e0 $62
	db $10                                           ; $6c56: $10
	add c                                            ; $6c57: $81
	ret nz                                           ; $6c58: $c0

	dec de                                           ; $6c59: $1b
	ret nc                                           ; $6c5a: $d0

	ld [bc], a                                       ; $6c5b: $02
	ret nc                                           ; $6c5c: $d0

	pop de                                           ; $6c5d: $d1
	inc bc                                           ; $6c5e: $03
	db $e4                                           ; $6c5f: $e4
	ld [bc], a                                       ; $6c60: $02
	ld e, b                                          ; $6c61: $58
	nop                                              ; $6c62: $00
	inc bc                                           ; $6c63: $03
	db $e4                                           ; $6c64: $e4
	nop                                              ; $6c65: $00
	inc h                                            ; $6c66: $24
	cp $09                                           ; $6c67: $fe $09
	pop af                                           ; $6c69: $f1
	add b                                            ; $6c6a: $80
	and b                                            ; $6c6b: $a0
	dec de                                           ; $6c6c: $1b
	ei                                               ; $6c6d: $fb
	add c                                            ; $6c6e: $81
	and b                                            ; $6c6f: $a0
	jr jr_07d_6c44                                   ; $6c70: $18 $d2

	ld [de], a                                       ; $6c72: $12
	add c                                            ; $6c73: $81
	ret nz                                           ; $6c74: $c0

	dec de                                           ; $6c75: $1b
	ret nc                                           ; $6c76: $d0

	inc b                                            ; $6c77: $04
	ret nc                                           ; $6c78: $d0

	pop de                                           ; $6c79: $d1
	jp nc, $03d3                                     ; $6c7a: $d2 $d3 $03

	db $e4                                           ; $6c7d: $e4
	ld bc, $007a                                     ; $6c7e: $01 $7a $00
	inc bc                                           ; $6c81: $03
	db $e4                                           ; $6c82: $e4
	nop                                              ; $6c83: $00
	ld b, $03                                        ; $6c84: $06 $03
	db $e4                                           ; $6c86: $e4
	nop                                              ; $6c87: $00
	ld [bc], a                                       ; $6c88: $02
	add hl, bc                                       ; $6c89: $09
	jr nz, jr_07d_6c4c                               ; $6c8a: $20 $c0

	set 0, b                                         ; $6c8c: $cb $c0
	ld de, $00e3                                     ; $6c8e: $11 $e3 $00
	or d                                             ; $6c91: $b2
	ldh [rDIV], a                                    ; $6c92: $e0 $04
	ld e, h                                          ; $6c94: $5c
	pop bc                                           ; $6c95: $c1
	ld e, h                                          ; $6c96: $5c
	ret nz                                           ; $6c97: $c0

	jp z, $80a0                                      ; $6c98: $ca $a0 $80

	and b                                            ; $6c9b: $a0
	inc e                                            ; $6c9c: $1c
	nop                                              ; $6c9d: $00
	inc bc                                           ; $6c9e: $03
	db $e4                                           ; $6c9f: $e4
	nop                                              ; $6ca0: $00
	dec bc                                           ; $6ca1: $0b
	rst $38                                          ; $6ca2: $ff
	rlca                                             ; $6ca3: $07
	ld b, b                                          ; $6ca4: $40
	add b                                            ; $6ca5: $80
	and b                                            ; $6ca6: $a0
	inc e                                            ; $6ca7: $1c
	db $e4                                           ; $6ca8: $e4
	nop                                              ; $6ca9: $00
	sbc e                                            ; $6caa: $9b
	jr z, @+$08                                      ; $6cab: $28 $06

	ret nz                                           ; $6cad: $c0

	ld bc, $02a0                                     ; $6cae: $01 $a0 $02
	dec bc                                           ; $6cb1: $0b
	call $0b90                                       ; $6cb2: $cd $90 $0b
	db $d3                                           ; $6cb5: $d3
	add hl, bc                                       ; $6cb6: $09
	inc l                                            ; $6cb7: $2c
	pop hl                                           ; $6cb8: $e1
	ld [bc], a                                       ; $6cb9: $02
	inc bc                                           ; $6cba: $03
	rrca                                             ; $6cbb: $0f
	add d                                            ; $6cbc: $82
	ret nz                                           ; $6cbd: $c0

	dec de                                           ; $6cbe: $1b
	ret nc                                           ; $6cbf: $d0

	ld [bc], a                                       ; $6cc0: $02
	ret nc                                           ; $6cc1: $d0

	pop de                                           ; $6cc2: $d1
	ld b, $c0                                        ; $6cc3: $06 $c0
	ld bc, $02a0                                     ; $6cc5: $01 $a0 $02
	dec bc                                           ; $6cc8: $0b
	push de                                          ; $6cc9: $d5
	ld [bc], a                                       ; $6cca: $02
	jp nc, $06d3                                     ; $6ccb: $d2 $d3 $06

	ret nz                                           ; $6cce: $c0

	ld bc, $02a0                                     ; $6ccf: $01 $a0 $02
	dec bc                                           ; $6cd2: $0b
	sbc $01                                          ; $6cd3: $de $01
	call nc, $c006                                   ; $6cd5: $d4 $06 $c0
	ld bc, $02a0                                     ; $6cd8: $01 $a0 $02
	nop                                              ; $6cdb: $00
	db $dd                                           ; $6cdc: $dd
	pop hl                                           ; $6cdd: $e1
	ld [bc], a                                       ; $6cde: $02
	inc bc                                           ; $6cdf: $03
	dec l                                            ; $6ce0: $2d
	db $e4                                           ; $6ce1: $e4
	ld [bc], a                                       ; $6ce2: $02
	ld l, e                                          ; $6ce3: $6b
	dec bc                                           ; $6ce4: $0b
	add sp, $09                                      ; $6ce5: $e8 $09
	inc l                                            ; $6ce7: $2c
	pop hl                                           ; $6ce8: $e1
	ld [bc], a                                       ; $6ce9: $02
	inc bc                                           ; $6cea: $03
	dec de                                           ; $6ceb: $1b
	add d                                            ; $6cec: $82
	ret nz                                           ; $6ced: $c0

	dec de                                           ; $6cee: $1b
	ret nc                                           ; $6cef: $d0

	ld [bc], a                                       ; $6cf0: $02
	ret nc                                           ; $6cf1: $d0

	pop de                                           ; $6cf2: $d1
	ld b, $c0                                        ; $6cf3: $06 $c0
	ld bc, $02a0                                     ; $6cf5: $01 $a0 $02
	dec bc                                           ; $6cf8: $0b
	ld [$d202], a                                    ; $6cf9: $ea $02 $d2
	db $d3                                           ; $6cfc: $d3
	ld b, $c0                                        ; $6cfd: $06 $c0
	ld bc, $02a0                                     ; $6cff: $01 $a0 $02
	dec bc                                           ; $6d02: $0b
	db $f4                                           ; $6d03: $f4
	ld bc, $06d4                                     ; $6d04: $01 $d4 $06
	ret nz                                           ; $6d07: $c0

	ld bc, $02a0                                     ; $6d08: $01 $a0 $02
	dec bc                                           ; $6d0b: $0b
	db $fd                                           ; $6d0c: $fd
	pop hl                                           ; $6d0d: $e1
	ld [bc], a                                       ; $6d0e: $02
	inc bc                                           ; $6d0f: $03
	ld d, c                                          ; $6d10: $51
	db $e4                                           ; $6d11: $e4
	ld [bc], a                                       ; $6d12: $02
	dec sp                                           ; $6d13: $3b
	inc c                                            ; $6d14: $0c
	nop                                              ; $6d15: $00
	add hl, bc                                       ; $6d16: $09
	inc l                                            ; $6d17: $2c
	pop hl                                           ; $6d18: $e1
	ld [bc], a                                       ; $6d19: $02
	inc bc                                           ; $6d1a: $03
	rrca                                             ; $6d1b: $0f
	add d                                            ; $6d1c: $82
	ret nz                                           ; $6d1d: $c0

	dec de                                           ; $6d1e: $1b
	ret nc                                           ; $6d1f: $d0

	ld [bc], a                                       ; $6d20: $02
	ret nc                                           ; $6d21: $d0

	pop de                                           ; $6d22: $d1
	ld b, $c0                                        ; $6d23: $06 $c0
	ld bc, $02a0                                     ; $6d25: $01 $a0 $02
	inc c                                            ; $6d28: $0c
	ld [bc], a                                       ; $6d29: $02
	ld [bc], a                                       ; $6d2a: $02
	jp nc, $06d3                                     ; $6d2b: $d2 $d3 $06

	ret nz                                           ; $6d2e: $c0

	ld bc, $02a0                                     ; $6d2f: $01 $a0 $02
	inc c                                            ; $6d32: $0c
	ld a, [bc]                                       ; $6d33: $0a
	ld bc, $06d4                                     ; $6d34: $01 $d4 $06
	ret nz                                           ; $6d37: $c0

	ld bc, $02a0                                     ; $6d38: $01 $a0 $02
	inc c                                            ; $6d3b: $0c
	rla                                              ; $6d3c: $17
	pop hl                                           ; $6d3d: $e1
	ld [bc], a                                       ; $6d3e: $02
	inc bc                                           ; $6d3f: $03
	ccf                                              ; $6d40: $3f
	db $e4                                           ; $6d41: $e4
	ld [bc], a                                       ; $6d42: $02
	dec bc                                           ; $6d43: $0b
	jr z, jr_07d_6d4c                                ; $6d44: $28 $06

	ret nz                                           ; $6d46: $c0

	ld bc, $02a0                                     ; $6d47: $01 $a0 $02
	inc c                                            ; $6d4a: $0c
	dec de                                           ; $6d4b: $1b

jr_07d_6d4c:
	xor e                                            ; $6d4c: $ab
	inc c                                            ; $6d4d: $0c
	ld hl, $4709                                     ; $6d4e: $21 $09 $47
	pop hl                                           ; $6d51: $e1
	ld [bc], a                                       ; $6d52: $02
	inc bc                                           ; $6d53: $03
	inc de                                           ; $6d54: $13
	add d                                            ; $6d55: $82
	ret nz                                           ; $6d56: $c0

	dec de                                           ; $6d57: $1b
	ret nc                                           ; $6d58: $d0

	ld [bc], a                                       ; $6d59: $02
	ret nc                                           ; $6d5a: $d0

	pop de                                           ; $6d5b: $d1
	ld b, $c0                                        ; $6d5c: $06 $c0
	ld bc, $02a0                                     ; $6d5e: $01 $a0 $02
	inc c                                            ; $6d61: $0c
	inc hl                                           ; $6d62: $23
	ld [bc], a                                       ; $6d63: $02
	jp nc, $06d3                                     ; $6d64: $d2 $d3 $06

	ret nz                                           ; $6d67: $c0

	ld bc, $02a0                                     ; $6d68: $01 $a0 $02
	inc c                                            ; $6d6b: $0c
	jr nc, @+$03                                     ; $6d6c: $30 $01

	call nc, $c006                                   ; $6d6e: $d4 $06 $c0
	ld bc, $02a0                                     ; $6d71: $01 $a0 $02
	inc c                                            ; $6d74: $0c
	dec a                                            ; $6d75: $3d
	ld h, b                                          ; $6d76: $60
	cp $0c                                           ; $6d77: $fe $0c
	ld hl, sp-$40                                    ; $6d79: $f8 $c0
	add e                                            ; $6d7b: $83
	call nc, $28e0                                   ; $6d7c: $d4 $e0 $28
	db $fd                                           ; $6d7f: $fd
	adc e                                            ; $6d80: $8b
	nop                                              ; $6d81: $00
	nop                                              ; $6d82: $00
	or b                                             ; $6d83: $b0
	add b                                            ; $6d84: $80
	ld a, [bc]                                       ; $6d85: $0a
	ret nz                                           ; $6d86: $c0

	ld bc, $01a0                                     ; $6d87: $01 $a0 $01
	inc c                                            ; $6d8a: $0c
	ld c, d                                          ; $6d8b: $4a
	pop hl                                           ; $6d8c: $e1
	ld [bc], a                                       ; $6d8d: $02
	inc bc                                           ; $6d8e: $03
	ld c, b                                          ; $6d8f: $48
	inc b                                            ; $6d90: $04
	pop hl                                           ; $6d91: $e1
	ld [bc], a                                       ; $6d92: $02
	inc bc                                           ; $6d93: $03
	dec l                                            ; $6d94: $2d
	db $e4                                           ; $6d95: $e4
	ld bc, $0cb7                                     ; $6d96: $01 $b7 $0c
	ld d, e                                          ; $6d99: $53
	add hl, bc                                       ; $6d9a: $09
	inc l                                            ; $6d9b: $2c
	pop hl                                           ; $6d9c: $e1
	ld [bc], a                                       ; $6d9d: $02
	inc bc                                           ; $6d9e: $03
	dec de                                           ; $6d9f: $1b
	add d                                            ; $6da0: $82
	ret nz                                           ; $6da1: $c0

	dec de                                           ; $6da2: $1b
	ret nc                                           ; $6da3: $d0

	ld [bc], a                                       ; $6da4: $02
	ret nc                                           ; $6da5: $d0

	pop de                                           ; $6da6: $d1
	ld b, $c0                                        ; $6da7: $06 $c0
	ld bc, $02a0                                     ; $6da9: $01 $a0 $02
	inc c                                            ; $6dac: $0c
	ld d, [hl]                                       ; $6dad: $56
	ld [bc], a                                       ; $6dae: $02
	jp nc, $06d3                                     ; $6daf: $d2 $d3 $06

	ret nz                                           ; $6db2: $c0

	ld bc, $02a0                                     ; $6db3: $01 $a0 $02
	inc c                                            ; $6db6: $0c
	ld e, [hl]                                       ; $6db7: $5e
	ld bc, $06d4                                     ; $6db8: $01 $d4 $06
	ret nz                                           ; $6dbb: $c0

	ld bc, $02a0                                     ; $6dbc: $01 $a0 $02
	inc c                                            ; $6dbf: $0c
	ld h, l                                          ; $6dc0: $65
	pop hl                                           ; $6dc1: $e1
	ld [bc], a                                       ; $6dc2: $02
	inc bc                                           ; $6dc3: $03
	ld c, b                                          ; $6dc4: $48
	db $e4                                           ; $6dc5: $e4
	ld bc, $0c87                                     ; $6dc6: $01 $87 $0c
	ld l, e                                          ; $6dc9: $6b
	add hl, bc                                       ; $6dca: $09
	inc l                                            ; $6dcb: $2c
	pop hl                                           ; $6dcc: $e1
	ld [bc], a                                       ; $6dcd: $02
	inc bc                                           ; $6dce: $03
	rla                                              ; $6dcf: $17
	add d                                            ; $6dd0: $82
	ret nz                                           ; $6dd1: $c0

	dec de                                           ; $6dd2: $1b
	ret nc                                           ; $6dd3: $d0

	ld [bc], a                                       ; $6dd4: $02
	ret nc                                           ; $6dd5: $d0

	pop de                                           ; $6dd6: $d1
	ld b, $c0                                        ; $6dd7: $06 $c0
	ld bc, $02a0                                     ; $6dd9: $01 $a0 $02
	inc c                                            ; $6ddc: $0c
	ld [hl], b                                       ; $6ddd: $70
	ld [bc], a                                       ; $6dde: $02
	jp nc, $06d3                                     ; $6ddf: $d2 $d3 $06

	ret nz                                           ; $6de2: $c0

	ld bc, $02a0                                     ; $6de3: $01 $a0 $02
	inc c                                            ; $6de6: $0c
	ld a, b                                          ; $6de7: $78
	ld bc, $06d4                                     ; $6de8: $01 $d4 $06
	ret nz                                           ; $6deb: $c0

	ld bc, $02a0                                     ; $6dec: $01 $a0 $02
	inc c                                            ; $6def: $0c
	add [hl]                                         ; $6df0: $86
	pop hl                                           ; $6df1: $e1
	ld [bc], a                                       ; $6df2: $02
	inc bc                                           ; $6df3: $03
	ccf                                              ; $6df4: $3f
	db $e4                                           ; $6df5: $e4
	ld bc, $0957                                     ; $6df6: $01 $57 $09
	cp [hl]                                          ; $6df9: $be
	ret nz                                           ; $6dfa: $c0

	set 0, c                                         ; $6dfb: $cb $c1
	ld e, e                                          ; $6dfd: $5b
	ret nz                                           ; $6dfe: $c0

	rrca                                             ; $6dff: $0f
	db $e3                                           ; $6e00: $e3
	nop                                              ; $6e01: $00
	or d                                             ; $6e02: $b2
	ret nz                                           ; $6e03: $c0

	ld bc, $01a0                                     ; $6e04: $01 $a0 $01
	inc c                                            ; $6e07: $0c
	sub d                                            ; $6e08: $92
	ret nz                                           ; $6e09: $c0

	ld bc, $01a0                                     ; $6e0a: $01 $a0 $01
	inc c                                            ; $6e0d: $0c
	sbc d                                            ; $6e0e: $9a
	ret nz                                           ; $6e0f: $c0

	ld bc, $02a0                                     ; $6e10: $01 $a0 $02
	inc c                                            ; $6e13: $0c
	and c                                            ; $6e14: $a1
	ret nz                                           ; $6e15: $c0

	ld bc, $01a0                                     ; $6e16: $01 $a0 $01
	inc c                                            ; $6e19: $0c
	and d                                            ; $6e1a: $a2
	pop bc                                           ; $6e1b: $c1
	ld e, c                                          ; $6e1c: $59
	db $e3                                           ; $6e1d: $e3
	nop                                              ; $6e1e: $00
	db $db                                           ; $6e1f: $db
	ret nz                                           ; $6e20: $c0

	ld bc, $02a0                                     ; $6e21: $01 $a0 $02
	inc c                                            ; $6e24: $0c
	xor h                                            ; $6e25: $ac
	ret nz                                           ; $6e26: $c0

	dec bc                                           ; $6e27: $0b
	db $e3                                           ; $6e28: $e3
	nop                                              ; $6e29: $00
	add b                                            ; $6e2a: $80
	ret nz                                           ; $6e2b: $c0

	inc c                                            ; $6e2c: $0c
	pop hl                                           ; $6e2d: $e1
	ld bc, $c02c                                     ; $6e2e: $01 $2c $c0
	set 0, b                                         ; $6e31: $cb $c0
	ld de, $00e3                                     ; $6e33: $11 $e3 $00
	or d                                             ; $6e36: $b2
	ldh [rSC], a                                     ; $6e37: $e0 $02
	or a                                             ; $6e39: $b7
	pop bc                                           ; $6e3a: $c1
	ld e, h                                          ; $6e3b: $5c
	ret nz                                           ; $6e3c: $c0

	xor e                                            ; $6e3d: $ab
	pop de                                           ; $6e3e: $d1
	ret nz                                           ; $6e3f: $c0

	jp z, $01c0                                      ; $6e40: $ca $c0 $01

	and b                                            ; $6e43: $a0
	ld [bc], a                                       ; $6e44: $02
	inc c                                            ; $6e45: $0c
	xor a                                            ; $6e46: $af
	ret nz                                           ; $6e47: $c0

	ld bc, $01a0                                     ; $6e48: $01 $a0 $01
	inc c                                            ; $6e4b: $0c
	or d                                             ; $6e4c: $b2
	pop hl                                           ; $6e4d: $e1
	ld [bc], a                                       ; $6e4e: $02
	inc bc                                           ; $6e4f: $03
	rla                                              ; $6e50: $17
	ret nz                                           ; $6e51: $c0

	ld bc, $02a0                                     ; $6e52: $01 $a0 $02
	inc c                                            ; $6e55: $0c
	cp a                                             ; $6e56: $bf
	ret nz                                           ; $6e57: $c0

	ld bc, $01a0                                     ; $6e58: $01 $a0 $01
	inc c                                            ; $6e5b: $0c
	rst JumpTable                                          ; $6e5c: $c7
	pop hl                                           ; $6e5d: $e1
	ld [bc], a                                       ; $6e5e: $02
	inc bc                                           ; $6e5f: $03
	inc de                                           ; $6e60: $13
	ret nz                                           ; $6e61: $c0

	ld bc, $02a0                                     ; $6e62: $01 $a0 $02
	inc c                                            ; $6e65: $0c
	ret nc                                           ; $6e66: $d0

	ret nz                                           ; $6e67: $c0

	ld bc, $01a0                                     ; $6e68: $01 $a0 $01
	inc c                                            ; $6e6b: $0c
	jp nc, $01c0                                     ; $6e6c: $d2 $c0 $01

	and b                                            ; $6e6f: $a0
	ld [bc], a                                       ; $6e70: $02
	inc c                                            ; $6e71: $0c
	jp c, $01c0                                      ; $6e72: $da $c0 $01

	and b                                            ; $6e75: $a0
	ld bc, $e70c                                     ; $6e76: $01 $0c $e7
	pop hl                                           ; $6e79: $e1
	ld [bc], a                                       ; $6e7a: $02
	inc bc                                           ; $6e7b: $03
	rrca                                             ; $6e7c: $0f
	ret nz                                           ; $6e7d: $c0

	ld bc, $02a0                                     ; $6e7e: $01 $a0 $02
	inc c                                            ; $6e81: $0c
	ldh a, [$c0]                                     ; $6e82: $f0 $c0
	ld bc, $01a0                                     ; $6e84: $01 $a0 $01
	inc c                                            ; $6e87: $0c
	or $e1                                           ; $6e88: $f6 $e1
	ld [bc], a                                       ; $6e8a: $02
	inc bc                                           ; $6e8b: $03
	daa                                              ; $6e8c: $27
	ret nz                                           ; $6e8d: $c0

	ld bc, $02a0                                     ; $6e8e: $01 $a0 $02
	inc c                                            ; $6e91: $0c
	ei                                               ; $6e92: $fb
	ret nc                                           ; $6e93: $d0

	add d                                            ; $6e94: $82
	ld bc, $d2c6                                     ; $6e95: $01 $c6 $d2
	pop hl                                           ; $6e98: $e1
	ld [bc], a                                       ; $6e99: $02
	inc b                                            ; $6e9a: $04
	pop de                                           ; $6e9b: $d1
	ret nz                                           ; $6e9c: $c0

	ld d, c                                          ; $6e9d: $51
	pop de                                           ; $6e9e: $d1
	ret nz                                           ; $6e9f: $c0

	ld d, b                                          ; $6ea0: $50
	jp nc, Jump_07d_55c0                             ; $6ea1: $d2 $c0 $55

	ldh [rAUD1HIGH], a                               ; $6ea4: $e0 $14
	ei                                               ; $6ea6: $fb
	db $fc                                           ; $6ea7: $fc
	ret nz                                           ; $6ea8: $c0

	ld h, h                                          ; $6ea9: $64
	ldh [$62], a                                     ; $6eaa: $e0 $62
	inc b                                            ; $6eac: $04
	nop                                              ; $6ead: $00
	add b                                            ; $6eae: $80
	and b                                            ; $6eaf: $a0
	dec de                                           ; $6eb0: $1b
	pop bc                                           ; $6eb1: $c1
	ld l, e                                          ; $6eb2: $6b
	db $d3                                           ; $6eb3: $d3
	ret nc                                           ; $6eb4: $d0

	db $e4                                           ; $6eb5: $e4
	nop                                              ; $6eb6: $00
	sub a                                            ; $6eb7: $97
	add hl, bc                                       ; $6eb8: $09
	sub e                                            ; $6eb9: $93
	ret nz                                           ; $6eba: $c0

	set 0, c                                         ; $6ebb: $cb $c1
	ld e, e                                          ; $6ebd: $5b
	ret nz                                           ; $6ebe: $c0

	rrca                                             ; $6ebf: $0f
	db $e3                                           ; $6ec0: $e3
	nop                                              ; $6ec1: $00
	or d                                             ; $6ec2: $b2
	ret nz                                           ; $6ec3: $c0

	ld bc, $01a0                                     ; $6ec4: $01 $a0 $01
	inc c                                            ; $6ec7: $0c
	sub d                                            ; $6ec8: $92
	ret nz                                           ; $6ec9: $c0

	ld bc, $01a0                                     ; $6eca: $01 $a0 $01
	dec c                                            ; $6ecd: $0d
	ld [bc], a                                       ; $6ece: $02
	ret nz                                           ; $6ecf: $c0

	ld bc, $02a0                                     ; $6ed0: $01 $a0 $02
	inc c                                            ; $6ed3: $0c
	and c                                            ; $6ed4: $a1
	ret nz                                           ; $6ed5: $c0

	ld bc, $01a0                                     ; $6ed6: $01 $a0 $01
	dec c                                            ; $6ed9: $0d

jr_07d_6eda:
	dec bc                                           ; $6eda: $0b
	pop bc                                           ; $6edb: $c1
	ld e, c                                          ; $6edc: $59
	db $e3                                           ; $6edd: $e3
	nop                                              ; $6ede: $00
	db $db                                           ; $6edf: $db
	ret nz                                           ; $6ee0: $c0

	ld bc, $02a0                                     ; $6ee1: $01 $a0 $02
	inc c                                            ; $6ee4: $0c
	xor h                                            ; $6ee5: $ac
	ret nz                                           ; $6ee6: $c0

	dec bc                                           ; $6ee7: $0b
	db $e3                                           ; $6ee8: $e3
	nop                                              ; $6ee9: $00
	add b                                            ; $6eea: $80
	ret nz                                           ; $6eeb: $c0

	inc c                                            ; $6eec: $0c
	pop hl                                           ; $6eed: $e1

jr_07d_6eee:
	ld bc, $c02c                                     ; $6eee: $01 $2c $c0
	set 0, b                                         ; $6ef1: $cb $c0
	ld de, $00e3                                     ; $6ef3: $11 $e3 $00
	or d                                             ; $6ef6: $b2
	ldh [rSB], a                                     ; $6ef7: $e0 $01
	rst FarCall                                          ; $6ef9: $f7
	pop bc                                           ; $6efa: $c1
	ld e, h                                          ; $6efb: $5c
	ret nz                                           ; $6efc: $c0

	xor e                                            ; $6efd: $ab
	pop de                                           ; $6efe: $d1
	ret nz                                           ; $6eff: $c0

	jp z, $01c0                                      ; $6f00: $ca $c0 $01

	and b                                            ; $6f03: $a0
	ld [bc], a                                       ; $6f04: $02
	inc c                                            ; $6f05: $0c
	xor a                                            ; $6f06: $af
	ret nz                                           ; $6f07: $c0

	ld bc, $01a0                                     ; $6f08: $01 $a0 $01
	dec c                                            ; $6f0b: $0d
	rrca                                             ; $6f0c: $0f
	ret nz                                           ; $6f0d: $c0

	ld bc, $02a0                                     ; $6f0e: $01 $a0 $02
	dec c                                            ; $6f11: $0d
	dec d                                            ; $6f12: $15
	ret nz                                           ; $6f13: $c0

	ld bc, $01a0                                     ; $6f14: $01 $a0 $01
	dec c                                            ; $6f17: $0d
	jr z, jr_07d_6eda                                ; $6f18: $28 $c0

	inc c                                            ; $6f1a: $0c
	ldh [$3c], a                                     ; $6f1b: $e0 $3c
	pop hl                                           ; $6f1d: $e1
	ld [bc], a                                       ; $6f1e: $02
	inc bc                                           ; $6f1f: $03
	rrca                                             ; $6f20: $0f
	ret nz                                           ; $6f21: $c0

	ld bc, $02a0                                     ; $6f22: $01 $a0 $02
	dec c                                            ; $6f25: $0d
	cpl                                              ; $6f26: $2f
	ret nz                                           ; $6f27: $c0

	ld bc, $01a0                                     ; $6f28: $01 $a0 $01
	dec c                                            ; $6f2b: $0d
	jr c, jr_07d_6eee                                ; $6f2c: $38 $c0

	ld bc, $02a0                                     ; $6f2e: $01 $a0 $02
	dec c                                            ; $6f31: $0d
	ld b, c                                          ; $6f32: $41
	ret nc                                           ; $6f33: $d0

	add d                                            ; $6f34: $82
	ld bc, $d2c6                                     ; $6f35: $01 $c6 $d2
	pop hl                                           ; $6f38: $e1
	ld [bc], a                                       ; $6f39: $02
	inc b                                            ; $6f3a: $04

jr_07d_6f3b:
	pop de                                           ; $6f3b: $d1
	ret nz                                           ; $6f3c: $c0

	ld d, c                                          ; $6f3d: $51
	db $d3                                           ; $6f3e: $d3
	ret nz                                           ; $6f3f: $c0

	ld d, b                                          ; $6f40: $50
	pop de                                           ; $6f41: $d1
	ret nz                                           ; $6f42: $c0

	ld d, l                                          ; $6f43: $55
	ldh [rAUD1HIGH], a                               ; $6f44: $e0 $14
	nop                                              ; $6f46: $00
	add b                                            ; $6f47: $80
	and b                                            ; $6f48: $a0
	ld a, [de]                                       ; $6f49: $1a
	db $e4                                           ; $6f4a: $e4
	nop                                              ; $6f4b: $00
	ld [bc], a                                       ; $6f4c: $02
	add hl, bc                                       ; $6f4d: $09
	dec d                                            ; $6f4e: $15
	ret nz                                           ; $6f4f: $c0

	set 0, b                                         ; $6f50: $cb $c0
	ld de, $00e3                                     ; $6f52: $11 $e3 $00
	or c                                             ; $6f55: $b1
	pop hl                                           ; $6f56: $e1
	ld [bc], a                                       ; $6f57: $02
	nop                                              ; $6f58: $00
	ldh [$c0], a                                     ; $6f59: $e0 $c0
	ld d, [hl]                                       ; $6f5b: $56
	ret nc                                           ; $6f5c: $d0

	ldh [rAUD1SWEEP], a                              ; $6f5d: $e0 $10
	ret nc                                           ; $6f5f: $d0

	push hl                                          ; $6f60: $e5
	inc de                                           ; $6f61: $13
	nop                                              ; $6f62: $00
	nop                                              ; $6f63: $00
	add hl, bc                                       ; $6f64: $09
	ld [de], a                                       ; $6f65: $12
	ret nc                                           ; $6f66: $d0

	add e                                            ; $6f67: $83
	ld bc, $d0de                                     ; $6f68: $01 $de $d0
	ret nz                                           ; $6f6b: $c0

	ld bc, $02a0                                     ; $6f6c: $01 $a0 $02
	dec c                                            ; $6f6f: $0d
	ld c, l                                          ; $6f70: $4d
	pop bc                                           ; $6f71: $c1
	ld e, e                                          ; $6f72: $5b
	ret nz                                           ; $6f73: $c0

	set 4, h                                         ; $6f74: $cb $e4
	nop                                              ; $6f76: $00
	ld [bc], a                                       ; $6f77: $02
	add hl, bc                                       ; $6f78: $09
	jr nz, jr_07d_6f3b                               ; $6f79: $20 $c0

	ld de, $00e3                                     ; $6f7b: $11 $e3 $00
	xor a                                            ; $6f7e: $af
	ldh [rSB], a                                     ; $6f7f: $e0 $01
	ld l, a                                          ; $6f81: $6f
	and b                                            ; $6f82: $a0
	add b                                            ; $6f83: $80
	and b                                            ; $6f84: $a0
	dec e                                            ; $6f85: $1d
	nop                                              ; $6f86: $00
	rlca                                             ; $6f87: $07
	pop bc                                           ; $6f88: $c1
	ld e, h                                          ; $6f89: $5c
	ret nz                                           ; $6f8a: $c0

	jp z, $00e4                                      ; $6f8b: $ca $e4 $00

	dec c                                            ; $6f8e: $0d
	rst $38                                          ; $6f8f: $ff
	add hl, bc                                       ; $6f90: $09
	ld b, b                                          ; $6f91: $40
	add b                                            ; $6f92: $80
	and b                                            ; $6f93: $a0
	dec e                                            ; $6f94: $1d
	ret nz                                           ; $6f95: $c0

	jp z, $00e4                                      ; $6f96: $ca $e4 $00

	sbc e                                            ; $6f99: $9b
	jr z, jr_07d_6fa2                                ; $6f9a: $28 $06

	ret nz                                           ; $6f9c: $c0

	ld bc, $02a0                                     ; $6f9d: $01 $a0 $02
	dec c                                            ; $6fa0: $0d
	ld d, c                                          ; $6fa1: $51

jr_07d_6fa2:
	sub b                                            ; $6fa2: $90
	dec c                                            ; $6fa3: $0d
	ld d, [hl]                                       ; $6fa4: $56
	add hl, bc                                       ; $6fa5: $09
	inc l                                            ; $6fa6: $2c
	pop hl                                           ; $6fa7: $e1
	ld [bc], a                                       ; $6fa8: $02
	inc bc                                           ; $6fa9: $03
	inc de                                           ; $6faa: $13
	add d                                            ; $6fab: $82
	ret nz                                           ; $6fac: $c0

	dec de                                           ; $6fad: $1b
	ret nc                                           ; $6fae: $d0

	ld [bc], a                                       ; $6faf: $02
	ret nc                                           ; $6fb0: $d0

	pop de                                           ; $6fb1: $d1
	ld b, $c0                                        ; $6fb2: $06 $c0
	ld bc, $02a0                                     ; $6fb4: $01 $a0 $02
	dec c                                            ; $6fb7: $0d
	ld e, b                                          ; $6fb8: $58
	ld [bc], a                                       ; $6fb9: $02
	jp nc, $06d3                                     ; $6fba: $d2 $d3 $06

	ret nz                                           ; $6fbd: $c0

	ld bc, $02a0                                     ; $6fbe: $01 $a0 $02
	dec c                                            ; $6fc1: $0d
	ld h, e                                          ; $6fc2: $63
	ld bc, $06d4                                     ; $6fc3: $01 $d4 $06
	ret nz                                           ; $6fc6: $c0

	ld bc, $02a0                                     ; $6fc7: $01 $a0 $02
	dec c                                            ; $6fca: $0d
	ld l, e                                          ; $6fcb: $6b
	pop hl                                           ; $6fcc: $e1
	ld [bc], a                                       ; $6fcd: $02
	inc bc                                           ; $6fce: $03
	ld [hl], $e4                                     ; $6fcf: $36 $e4
	ld bc, $0d07                                     ; $6fd1: $01 $07 $0d
	ld [hl], c                                       ; $6fd4: $71
	add hl, bc                                       ; $6fd5: $09
	inc l                                            ; $6fd6: $2c
	pop hl                                           ; $6fd7: $e1
	ld [bc], a                                       ; $6fd8: $02
	inc bc                                           ; $6fd9: $03
	dec de                                           ; $6fda: $1b
	add d                                            ; $6fdb: $82
	ret nz                                           ; $6fdc: $c0

	dec de                                           ; $6fdd: $1b
	ret nc                                           ; $6fde: $d0

	ld [bc], a                                       ; $6fdf: $02
	ret nc                                           ; $6fe0: $d0

	pop de                                           ; $6fe1: $d1
	ld b, $c0                                        ; $6fe2: $06 $c0
	ld bc, $02a0                                     ; $6fe4: $01 $a0 $02
	dec c                                            ; $6fe7: $0d
	ld [hl], e                                       ; $6fe8: $73
	ld [bc], a                                       ; $6fe9: $02
	jp nc, $06d3                                     ; $6fea: $d2 $d3 $06

	ret nz                                           ; $6fed: $c0

	ld bc, $02a0                                     ; $6fee: $01 $a0 $02
	dec c                                            ; $6ff1: $0d
	ld a, c                                          ; $6ff2: $79
	ld bc, $06d4                                     ; $6ff3: $01 $d4 $06
	ret nz                                           ; $6ff6: $c0

	ld bc, $02a0                                     ; $6ff7: $01 $a0 $02
	dec c                                            ; $6ffa: $0d
	add d                                            ; $6ffb: $82
	pop hl                                           ; $6ffc: $e1
	ld [bc], a                                       ; $6ffd: $02
	inc bc                                           ; $6ffe: $03
	ld c, b                                          ; $6fff: $48
	db $e4                                           ; $7000: $e4
	nop                                              ; $7001: $00
	rst SubAFromHL                                          ; $7002: $d7
	dec c                                            ; $7003: $0d
	adc d                                            ; $7004: $8a
	add hl, bc                                       ; $7005: $09
	inc l                                            ; $7006: $2c
	pop hl                                           ; $7007: $e1
	ld [bc], a                                       ; $7008: $02
	inc bc                                           ; $7009: $03
	rla                                              ; $700a: $17
	add d                                            ; $700b: $82
	ret nz                                           ; $700c: $c0

	dec de                                           ; $700d: $1b
	ret nc                                           ; $700e: $d0

	ld [bc], a                                       ; $700f: $02
	ret nc                                           ; $7010: $d0

	pop de                                           ; $7011: $d1
	ld b, $c0                                        ; $7012: $06 $c0
	ld bc, $02a0                                     ; $7014: $01 $a0 $02
	dec c                                            ; $7017: $0d
	adc [hl]                                         ; $7018: $8e
	ld [bc], a                                       ; $7019: $02
	jp nc, $06d3                                     ; $701a: $d2 $d3 $06

	ret nz                                           ; $701d: $c0

	ld bc, $02a0                                     ; $701e: $01 $a0 $02
	dec c                                            ; $7021: $0d
	sub [hl]                                         ; $7022: $96
	ld bc, $06d4                                     ; $7023: $01 $d4 $06
	ret nz                                           ; $7026: $c0

	ld bc, $02a0                                     ; $7027: $01 $a0 $02
	dec c                                            ; $702a: $0d
	sbc a                                            ; $702b: $9f
	pop hl                                           ; $702c: $e1
	ld [bc], a                                       ; $702d: $02
	inc bc                                           ; $702e: $03
	ccf                                              ; $702f: $3f
	db $e4                                           ; $7030: $e4
	nop                                              ; $7031: $00
	and a                                            ; $7032: $a7
	jr z, jr_07d_703b                                ; $7033: $28 $06

	ret nz                                           ; $7035: $c0

	ld bc, $01a0                                     ; $7036: $01 $a0 $01
	dec c                                            ; $7039: $0d
	and [hl]                                         ; $703a: $a6

jr_07d_703b:
	sbc h                                            ; $703b: $9c
	dec c                                            ; $703c: $0d
	xor [hl]                                         ; $703d: $ae
	add hl, bc                                       ; $703e: $09
	ld a, [hl+]                                      ; $703f: $2a
	ret nz                                           ; $7040: $c0

	and l                                            ; $7041: $a5
	add d                                            ; $7042: $82
	ret nz                                           ; $7043: $c0

	dec de                                           ; $7044: $1b
	ret nc                                           ; $7045: $d0

	ld [bc], a                                       ; $7046: $02
	ret nc                                           ; $7047: $d0

	pop de                                           ; $7048: $d1
	ld b, $c0                                        ; $7049: $06 $c0
	ld bc, $02a0                                     ; $704b: $01 $a0 $02
	dec c                                            ; $704e: $0d
	or b                                             ; $704f: $b0
	ld [bc], a                                       ; $7050: $02
	jp nc, $06d3                                     ; $7051: $d2 $d3 $06

	ret nz                                           ; $7054: $c0

	ld bc, $02a0                                     ; $7055: $01 $a0 $02
	dec c                                            ; $7058: $0d
	cp e                                             ; $7059: $bb
	ld bc, $06d4                                     ; $705a: $01 $d4 $06
	ret nz                                           ; $705d: $c0

	ld bc, $02a0                                     ; $705e: $01 $a0 $02
	dec c                                            ; $7061: $0d
	add $e1                                          ; $7062: $c6 $e1
	ld [bc], a                                       ; $7064: $02
	inc bc                                           ; $7065: $03
	ccf                                              ; $7066: $3f
	db $e4                                           ; $7067: $e4
	nop                                              ; $7068: $00
	ld [hl], b                                       ; $7069: $70
	dec c                                            ; $706a: $0d
	call $3209                                       ; $706b: $cd $09 $32
	ret nz                                           ; $706e: $c0

	and a                                            ; $706f: $a7
	ret nc                                           ; $7070: $d0

	db $d3                                           ; $7071: $d3
	rst SubAFromHL                                          ; $7072: $d7
	ret nz                                           ; $7073: $c0

	xor e                                            ; $7074: $ab
	call nc, $a5c0                                   ; $7075: $d4 $c0 $a5
	add d                                            ; $7078: $82
	ret nz                                           ; $7079: $c0

	dec de                                           ; $707a: $1b
	ret nc                                           ; $707b: $d0

	ld [bc], a                                       ; $707c: $02
	ret nc                                           ; $707d: $d0

	pop de                                           ; $707e: $d1
	ld b, $c0                                        ; $707f: $06 $c0
	ld bc, $02a0                                     ; $7081: $01 $a0 $02
	dec c                                            ; $7084: $0d
	rst GetHLinHL                                          ; $7085: $cf
	ld [bc], a                                       ; $7086: $02
	jp nc, $06d3                                     ; $7087: $d2 $d3 $06

	ret nz                                           ; $708a: $c0

	ld bc, $02a0                                     ; $708b: $01 $a0 $02
	dec c                                            ; $708e: $0d
	db $dd                                           ; $708f: $dd
	ld bc, $06d4                                     ; $7090: $01 $d4 $06
	ret nz                                           ; $7093: $c0

	ld bc, $02a0                                     ; $7094: $01 $a0 $02
	dec c                                            ; $7097: $0d
	and $e1                                          ; $7098: $e6 $e1
	ld [bc], a                                       ; $709a: $02
	inc bc                                           ; $709b: $03
	ld d, c                                          ; $709c: $51
	db $e4                                           ; $709d: $e4
	nop                                              ; $709e: $00
	ld a, [hl-]                                      ; $709f: $3a
	dec c                                            ; $70a0: $0d
	ldh a, [$09]                                     ; $70a1: $f0 $09
	inc [hl]                                         ; $70a3: $34
	ret nz                                           ; $70a4: $c0

	inc c                                            ; $70a5: $0c
	ldh [$5a], a                                     ; $70a6: $e0 $5a
	ret nz                                           ; $70a8: $c0

	and l                                            ; $70a9: $a5
	add d                                            ; $70aa: $82
	ret nz                                           ; $70ab: $c0

	dec de                                           ; $70ac: $1b
	ret nc                                           ; $70ad: $d0

	ld [bc], a                                       ; $70ae: $02
	ret nc                                           ; $70af: $d0

	pop de                                           ; $70b0: $d1
	ld b, $c0                                        ; $70b1: $06 $c0
	ld bc, $02a0                                     ; $70b3: $01 $a0 $02
	dec c                                            ; $70b6: $0d
	ldh a, [c]                                       ; $70b7: $f2
	ld [bc], a                                       ; $70b8: $02
	jp nc, $0cd3                                     ; $70b9: $d2 $d3 $0c

	ret nz                                           ; $70bc: $c0

	ld bc, $02a0                                     ; $70bd: $01 $a0 $02
	dec c                                            ; $70c0: $0d
	cp $c0                                           ; $70c1: $fe $c0
	ld bc, $01a0                                     ; $70c3: $01 $a0 $01
	dec c                                            ; $70c6: $0d
	rst $38                                          ; $70c7: $ff
	ld bc, $06d4                                     ; $70c8: $01 $d4 $06
	ret nz                                           ; $70cb: $c0

	ld bc, $02a0                                     ; $70cc: $01 $a0 $02
	ld c, $08                                        ; $70cf: $0e $08
	pop hl                                           ; $70d1: $e1
	ld [bc], a                                       ; $70d2: $02
	inc bc                                           ; $70d3: $03
	ccf                                              ; $70d4: $3f
	db $e4                                           ; $70d5: $e4
	nop                                              ; $70d6: $00
	ld [bc], a                                       ; $70d7: $02
	add hl, bc                                       ; $70d8: $09
	dec d                                            ; $70d9: $15
	ret nz                                           ; $70da: $c0

	set 0, b                                         ; $70db: $cb $c0
	ld de, $00e3                                     ; $70dd: $11 $e3 $00
	xor [hl]                                         ; $70e0: $ae
	pop hl                                           ; $70e1: $e1
	ld [bc], a                                       ; $70e2: $02
	nop                                              ; $70e3: $00
	ldh [$c0], a                                     ; $70e4: $e0 $c0
	ld d, [hl]                                       ; $70e6: $56
	ret nc                                           ; $70e7: $d0

	ldh [rAUD1LEN], a                                ; $70e8: $e0 $11
	ret nc                                           ; $70ea: $d0

	push hl                                          ; $70eb: $e5
	inc de                                           ; $70ec: $13
	nop                                              ; $70ed: $00
	nop                                              ; $70ee: $00

jr_07d_70ef:
	rlca                                             ; $70ef: $07
	ret nz                                           ; $70f0: $c0

	and a                                            ; $70f1: $a7
	ret nc                                           ; $70f2: $d0

	db $d3                                           ; $70f3: $d3
	rst SubAFromHL                                          ; $70f4: $d7
	ret nz                                           ; $70f5: $c0

	xor h                                            ; $70f6: $ac
	jr z, jr_07d_7102                                ; $70f7: $28 $09

	pop bc                                           ; $70f9: $c1
	cp l                                             ; $70fa: $bd
	ret nc                                           ; $70fb: $d0

	ret nz                                           ; $70fc: $c0

	ld bc, $02a0                                     ; $70fd: $01 $a0 $02
	ld c, $0f                                        ; $7100: $0e $0f

jr_07d_7102:
	add hl, hl                                       ; $7102: $29
	ld c, $13                                        ; $7103: $0e $13
	add hl, bc                                       ; $7105: $09
	ld e, $c0                                        ; $7106: $1e $c0
	ld bc, $01a0                                     ; $7108: $01 $a0 $01
	ld c, $15                                        ; $710b: $0e $15
	pop hl                                           ; $710d: $e1
	ld [bc], a                                       ; $710e: $02
	inc bc                                           ; $710f: $03
	rrca                                             ; $7110: $0f
	ret nz                                           ; $7111: $c0

	ld bc, $02a0                                     ; $7112: $01 $a0 $02
	ld c, $1e                                        ; $7115: $0e $1e
	ret nz                                           ; $7117: $c0

	ld d, c                                          ; $7118: $51
	pop de                                           ; $7119: $d1
	ret nz                                           ; $711a: $c0

	inc c                                            ; $711b: $0c
	ldh [$3c], a                                     ; $711c: $e0 $3c
	pop hl                                           ; $711e: $e1
	ld [bc], a                                       ; $711f: $02
	inc bc                                           ; $7120: $03
	daa                                              ; $7121: $27
	ldh [rP1], a                                     ; $7122: $e0 $00
	add hl, bc                                       ; $7124: $09
	ld c, $25                                        ; $7125: $0e $25
	add hl, bc                                       ; $7127: $09
	inc bc                                           ; $7128: $03
	ldh [rP1], a                                     ; $7129: $e0 $00
	ld [bc], a                                       ; $712b: $02
	jr jr_07d_70ef                                   ; $712c: $18 $c1

	cp l                                             ; $712e: $bd
	pop de                                           ; $712f: $d1
	add d                                            ; $7130: $82
	ret nz                                           ; $7131: $c0

	add b                                            ; $7132: $80
	ld bc, $03d3                                     ; $7133: $01 $d3 $03
	db $e4                                           ; $7136: $e4
	nop                                              ; $7137: $00
	adc d                                            ; $7138: $8a
	ld bc, $03d2                                     ; $7139: $01 $d2 $03
	db $e4                                           ; $713c: $e4
	nop                                              ; $713d: $00
	add hl, sp                                       ; $713e: $39
	ld bc, $03d1                                     ; $713f: $01 $d1 $03
	db $e4                                           ; $7142: $e4
	nop                                              ; $7143: $00
	ld [bc], a                                       ; $7144: $02
	add hl, bc                                       ; $7145: $09
	cpl                                              ; $7146: $2f
	ret nz                                           ; $7147: $c0

	ld bc, $01a0                                     ; $7148: $01 $a0 $01
	ld c, $27                                        ; $714b: $0e $27
	ret nz                                           ; $714d: $c0

	ld bc, $02a0                                     ; $714e: $01 $a0 $02
	ld c, $2c                                        ; $7151: $0e $2c
	pop hl                                           ; $7153: $e1
	ld [bc], a                                       ; $7154: $02
	ld [$c069], sp                                   ; $7155: $08 $69 $c0
	and a                                            ; $7158: $a7
	ret nc                                           ; $7159: $d0

	db $d3                                           ; $715a: $d3
	pop de                                           ; $715b: $d1
	ret nz                                           ; $715c: $c0

	xor h                                            ; $715d: $ac
	ret nz                                           ; $715e: $c0

	and l                                            ; $715f: $a5
	ret nz                                           ; $7160: $c0

	ld bc, $01a0                                     ; $7161: $01 $a0 $01
	ld c, $31                                        ; $7164: $0e $31
	pop hl                                           ; $7166: $e1
	ld [bc], a                                       ; $7167: $02
	inc bc                                           ; $7168: $03
	inc de                                           ; $7169: $13
	ret nz                                           ; $716a: $c0

	ld bc, $02a0                                     ; $716b: $01 $a0 $02
	ld c, $36                                        ; $716e: $0e $36
	ret nz                                           ; $7170: $c0

	ld d, c                                          ; $7171: $51
	pop de                                           ; $7172: $d1
	db $e4                                           ; $7173: $e4
	ld bc, $0901                                     ; $7174: $01 $01 $09
	ld c, c                                          ; $7177: $49
	ret nz                                           ; $7178: $c0

	ld bc, $01a0                                     ; $7179: $01 $a0 $01
	ld c, $3b                                        ; $717c: $0e $3b
	ret nz                                           ; $717e: $c0

	ld bc, $02a0                                     ; $717f: $01 $a0 $02
	ld c, $43                                        ; $7182: $0e $43
	ret nz                                           ; $7184: $c0

	ld bc, $01a0                                     ; $7185: $01 $a0 $01
	ld c, $4a                                        ; $7188: $0e $4a
	pop hl                                           ; $718a: $e1
	ld [bc], a                                       ; $718b: $02
	ld [$e08d], sp                                   ; $718c: $08 $8d $e0
	ld bc, $6013                                     ; $718f: $01 $13 $60
	add a                                            ; $7192: $87
	ld bc, $13e2                                     ; $7193: $01 $e2 $13
	ret nz                                           ; $7196: $c0

	ld bc, $01a0                                     ; $7197: $01 $a0 $01
	ld c, $50                                        ; $719a: $0e $50
	pop hl                                           ; $719c: $e1
	ld [bc], a                                       ; $719d: $02
	inc bc                                           ; $719e: $03
	rrca                                             ; $719f: $0f
	ret nz                                           ; $71a0: $c0

	ld bc, $02a0                                     ; $71a1: $01 $a0 $02
	ld c, $54                                        ; $71a4: $0e $54
	ret nz                                           ; $71a6: $c0

	ld d, c                                          ; $71a7: $51
	pop de                                           ; $71a8: $d1
	db $10                                           ; $71a9: $10
	ret nz                                           ; $71aa: $c0

	ld bc, $01a0                                     ; $71ab: $01 $a0 $01
	ld c, $5c                                        ; $71ae: $0e $5c
	pop hl                                           ; $71b0: $e1
	ld [bc], a                                       ; $71b1: $02
	inc bc                                           ; $71b2: $03
	inc de                                           ; $71b3: $13
	ret nz                                           ; $71b4: $c0

	ld bc, $02a0                                     ; $71b5: $01 $a0 $02
	ld c, $67                                        ; $71b8: $0e $67
	ld b, b                                          ; $71ba: $40
	add a                                            ; $71bb: $87
	ld bc, $e4e2                                     ; $71bc: $01 $e2 $e4
	nop                                              ; $71bf: $00
	or [hl]                                          ; $71c0: $b6
	add hl, bc                                       ; $71c1: $09
	add hl, de                                       ; $71c2: $19
	ret nz                                           ; $71c3: $c0

	ld bc, $01a0                                     ; $71c4: $01 $a0 $01
	ld c, $6c                                        ; $71c7: $0e $6c
	ret nz                                           ; $71c9: $c0

	ld bc, $02a0                                     ; $71ca: $01 $a0 $02
	ld c, $73                                        ; $71cd: $0e $73
	pop hl                                           ; $71cf: $e1
	ld [bc], a                                       ; $71d0: $02
	ld [$e0a4], sp                                   ; $71d1: $08 $a4 $e0
	nop                                              ; $71d4: $00
	adc $c0                                          ; $71d5: $ce $c0
	ld d, c                                          ; $71d7: $51
	pop de                                           ; $71d8: $d1
	db $e4                                           ; $71d9: $e4
	nop                                              ; $71da: $00
	ld [bc], a                                       ; $71db: $02
	jr z, jr_07d_71e4                                ; $71dc: $28 $06

	ret nz                                           ; $71de: $c0

	ld bc, $02a0                                     ; $71df: $01 $a0 $02
	ld c, $76                                        ; $71e2: $0e $76

jr_07d_71e4:
	sub b                                            ; $71e4: $90
	ld c, $7a                                        ; $71e5: $0e $7a
	add hl, bc                                       ; $71e7: $09
	inc l                                            ; $71e8: $2c
	pop hl                                           ; $71e9: $e1
	ld [bc], a                                       ; $71ea: $02
	inc bc                                           ; $71eb: $03
	rrca                                             ; $71ec: $0f
	add d                                            ; $71ed: $82
	ret nz                                           ; $71ee: $c0

	dec de                                           ; $71ef: $1b
	ret nc                                           ; $71f0: $d0

	ld [bc], a                                       ; $71f1: $02
	ret nc                                           ; $71f2: $d0

	pop de                                           ; $71f3: $d1
	ld b, $c0                                        ; $71f4: $06 $c0
	ld bc, $02a0                                     ; $71f6: $01 $a0 $02
	ld c, $7c                                        ; $71f9: $0e $7c
	ld [bc], a                                       ; $71fb: $02
	jp nc, $06d3                                     ; $71fc: $d2 $d3 $06

	ret nz                                           ; $71ff: $c0

	ld bc, $02a0                                     ; $7200: $01 $a0 $02
	ld c, $8a                                        ; $7203: $0e $8a
	ld bc, $06d4                                     ; $7205: $01 $d4 $06
	ret nz                                           ; $7208: $c0

	ld bc, $02a0                                     ; $7209: $01 $a0 $02
	ld c, $92                                        ; $720c: $0e $92
	pop hl                                           ; $720e: $e1
	ld [bc], a                                       ; $720f: $02
	inc bc                                           ; $7210: $03
	dec l                                            ; $7211: $2d
	db $e4                                           ; $7212: $e4
	nop                                              ; $7213: $00
	ld h, d                                          ; $7214: $62
	ld c, $99                                        ; $7215: $0e $99
	add hl, bc                                       ; $7217: $09
	inc l                                            ; $7218: $2c
	pop hl                                           ; $7219: $e1
	ld [bc], a                                       ; $721a: $02
	inc bc                                           ; $721b: $03
	dec de                                           ; $721c: $1b
	add d                                            ; $721d: $82
	ret nz                                           ; $721e: $c0

	dec de                                           ; $721f: $1b
	ret nc                                           ; $7220: $d0

	ld [bc], a                                       ; $7221: $02
	ret nc                                           ; $7222: $d0

	pop de                                           ; $7223: $d1
	ld b, $c0                                        ; $7224: $06 $c0
	ld bc, $02a0                                     ; $7226: $01 $a0 $02
	ld c, $9b                                        ; $7229: $0e $9b
	ld [bc], a                                       ; $722b: $02
	jp nc, $06d3                                     ; $722c: $d2 $d3 $06

	ret nz                                           ; $722f: $c0

	ld bc, $02a0                                     ; $7230: $01 $a0 $02
	ld c, $a5                                        ; $7233: $0e $a5
	ld bc, $06d4                                     ; $7235: $01 $d4 $06
	ret nz                                           ; $7238: $c0

	ld bc, $02a0                                     ; $7239: $01 $a0 $02
	ld c, $ac                                        ; $723c: $0e $ac
	pop hl                                           ; $723e: $e1
	ld [bc], a                                       ; $723f: $02
	inc bc                                           ; $7240: $03
	ld c, b                                          ; $7241: $48
	db $e4                                           ; $7242: $e4
	nop                                              ; $7243: $00
	ld [hl-], a                                      ; $7244: $32
	ld c, $b9                                        ; $7245: $0e $b9
	add hl, bc                                       ; $7247: $09
	inc l                                            ; $7248: $2c
	pop hl                                           ; $7249: $e1
	ld [bc], a                                       ; $724a: $02
	inc bc                                           ; $724b: $03
	inc de                                           ; $724c: $13
	add d                                            ; $724d: $82
	ret nz                                           ; $724e: $c0

	dec de                                           ; $724f: $1b
	ret nc                                           ; $7250: $d0

	ld [bc], a                                       ; $7251: $02
	ret nc                                           ; $7252: $d0

	pop de                                           ; $7253: $d1
	ld b, $c0                                        ; $7254: $06 $c0
	ld bc, $02a0                                     ; $7256: $01 $a0 $02
	ld c, $bb                                        ; $7259: $0e $bb
	ld [bc], a                                       ; $725b: $02
	jp nc, $06d3                                     ; $725c: $d2 $d3 $06

	ret nz                                           ; $725f: $c0

	ld bc, $02a0                                     ; $7260: $01 $a0 $02
	ld c, $c2                                        ; $7263: $0e $c2
	ld bc, $06d4                                     ; $7265: $01 $d4 $06
	ret nz                                           ; $7268: $c0

	ld bc, $02a0                                     ; $7269: $01 $a0 $02
	ld c, $c8                                        ; $726c: $0e $c8
	pop hl                                           ; $726e: $e1
	ld [bc], a                                       ; $726f: $02
	inc bc                                           ; $7270: $03
	ld [hl], $e4                                     ; $7271: $36 $e4
	nop                                              ; $7273: $00
	ld [bc], a                                       ; $7274: $02
	add hl, bc                                       ; $7275: $09
	dec hl                                           ; $7276: $2b
	ret nc                                           ; $7277: $d0

	add d                                            ; $7278: $82
	ld bc, $d1c6                                     ; $7279: $01 $c6 $d1
	pop hl                                           ; $727c: $e1
	ld [bc], a                                       ; $727d: $02
	inc b                                            ; $727e: $04
	rst JumpTable                                          ; $727f: $c7
	add c                                            ; $7280: $81
	ret nz                                           ; $7281: $c0

	add b                                            ; $7282: $80
	ld bc, $0bd3                                     ; $7283: $01 $d3 $0b
	ret nc                                           ; $7286: $d0

	add e                                            ; $7287: $83
	ld bc, $d1de                                     ; $7288: $01 $de $d1
	ret nz                                           ; $728b: $c0

	ld d, [hl]                                       ; $728c: $56
	ret nc                                           ; $728d: $d0

	ldh [rAUD1ENV], a                                ; $728e: $e0 $12
	pop de                                           ; $7290: $d1
	nop                                              ; $7291: $00
	dec bc                                           ; $7292: $0b
	ret nc                                           ; $7293: $d0

	add e                                            ; $7294: $83
	ld bc, $d0de                                     ; $7295: $01 $de $d0
	ret nz                                           ; $7298: $c0

	ld d, [hl]                                       ; $7299: $56
	ret nc                                           ; $729a: $d0

	ldh [rAUD1ENV], a                                ; $729b: $e0 $12
	ret nc                                           ; $729d: $d0

	push hl                                          ; $729e: $e5
	inc de                                           ; $729f: $13
	nop                                              ; $72a0: $00
	nop                                              ; $72a1: $00
	dec bc                                           ; $72a2: $0b
	ret nz                                           ; $72a3: $c0

	and a                                            ; $72a4: $a7
	ret nc                                           ; $72a5: $d0

	db $d3                                           ; $72a6: $d3
	pop de                                           ; $72a7: $d1
	ret nz                                           ; $72a8: $c0

	xor h                                            ; $72a9: $ac
	pop bc                                           ; $72aa: $c1
	ld e, h                                          ; $72ab: $5c
	ret nz                                           ; $72ac: $c0

	jp z, $1409                                      ; $72ad: $ca $09 $14

	ret nc                                           ; $72b0: $d0

	add e                                            ; $72b1: $83
	ld bc, $d0de                                     ; $72b2: $01 $de $d0
	ret nz                                           ; $72b5: $c0

	ld bc, $02a0                                     ; $72b6: $01 $a0 $02
	rlca                                             ; $72b9: $07
	sub a                                            ; $72ba: $97
	ret nz                                           ; $72bb: $c0

	ld bc, $01a0                                     ; $72bc: $01 $a0 $01
	rlca                                             ; $72bf: $07
	and b                                            ; $72c0: $a0
	db $e4                                           ; $72c1: $e4
	nop                                              ; $72c2: $00
	ld [bc], a                                       ; $72c3: $02
	add hl, bc                                       ; $72c4: $09
	rla                                              ; $72c5: $17
	pop bc                                           ; $72c6: $c1
	ld e, c                                          ; $72c7: $59
	db $e3                                           ; $72c8: $e3
	nop                                              ; $72c9: $00
	xor c                                            ; $72ca: $a9
	and b                                            ; $72cb: $a0
	add b                                            ; $72cc: $80
	and b                                            ; $72cd: $a0
	ld e, $00                                        ; $72ce: $1e $00
	inc bc                                           ; $72d0: $03
	db $e4                                           ; $72d1: $e4
	nop                                              ; $72d2: $00
	dec bc                                           ; $72d3: $0b
	rst $38                                          ; $72d4: $ff
	rlca                                             ; $72d5: $07
	ld b, b                                          ; $72d6: $40
	add b                                            ; $72d7: $80
	and b                                            ; $72d8: $a0
	ld e, $e4                                        ; $72d9: $1e $e4
	nop                                              ; $72db: $00
	xor [hl]                                         ; $72dc: $ae
	jr z, jr_07d_72e5                                ; $72dd: $28 $06

	ret nz                                           ; $72df: $c0

	ld bc, $02a0                                     ; $72e0: $01 $a0 $02
	ld c, $cd                                        ; $72e3: $0e $cd

jr_07d_72e5:
	and e                                            ; $72e5: $a3
	ld c, $d1                                        ; $72e6: $0e $d1
	add hl, bc                                       ; $72e8: $09
	ccf                                              ; $72e9: $3f
	pop hl                                           ; $72ea: $e1
	ld [bc], a                                       ; $72eb: $02
	inc bc                                           ; $72ec: $03
	inc de                                           ; $72ed: $13
	add d                                            ; $72ee: $82
	ret nz                                           ; $72ef: $c0

	dec de                                           ; $72f0: $1b
	ret nc                                           ; $72f1: $d0

	ld [bc], a                                       ; $72f2: $02
	ret nc                                           ; $72f3: $d0

	pop de                                           ; $72f4: $d1
	ld b, $c0                                        ; $72f5: $06 $c0
	ld bc, $02a0                                     ; $72f7: $01 $a0 $02
	ld c, $d3                                        ; $72fa: $0e $d3
	ld [bc], a                                       ; $72fc: $02
	jp nc, $06d3                                     ; $72fd: $d2 $d3 $06

	ret nz                                           ; $7300: $c0

	ld bc, $02a0                                     ; $7301: $01 $a0 $02
	ld c, $de                                        ; $7304: $0e $de
	ld bc, $06d4                                     ; $7306: $01 $d4 $06
	ret nz                                           ; $7309: $c0

	ld bc, $02a0                                     ; $730a: $01 $a0 $02
	ld c, $e5                                        ; $730d: $0e $e5
	ld h, b                                          ; $730f: $60
	ld hl, sp-$40                                    ; $7310: $f8 $c0
	add e                                            ; $7312: $83
	call nc, $28e0                                   ; $7313: $d4 $e0 $28
	ld a, [bc]                                       ; $7316: $0a
	ret nz                                           ; $7317: $c0

	ld bc, $01a0                                     ; $7318: $01 $a0 $01
	ld c, $ed                                        ; $731b: $0e $ed
	pop hl                                           ; $731d: $e1
	ld [bc], a                                       ; $731e: $02
	inc bc                                           ; $731f: $03
	ld c, b                                          ; $7320: $48
	inc b                                            ; $7321: $04
	pop hl                                           ; $7322: $e1
	ld [bc], a                                       ; $7323: $02
	inc bc                                           ; $7324: $03
	dec l                                            ; $7325: $2d
	db $e4                                           ; $7326: $e4
	nop                                              ; $7327: $00
	xor d                                            ; $7328: $aa
	ld c, $f6                                        ; $7329: $0e $f6
	add hl, bc                                       ; $732b: $09
	inc l                                            ; $732c: $2c
	pop hl                                           ; $732d: $e1
	ld [bc], a                                       ; $732e: $02
	inc bc                                           ; $732f: $03
	dec de                                           ; $7330: $1b
	add d                                            ; $7331: $82
	ret nz                                           ; $7332: $c0

	dec de                                           ; $7333: $1b
	ret nc                                           ; $7334: $d0

	ld [bc], a                                       ; $7335: $02
	ret nc                                           ; $7336: $d0

	pop de                                           ; $7337: $d1
	ld b, $c0                                        ; $7338: $06 $c0
	ld bc, $02a0                                     ; $733a: $01 $a0 $02
	ld c, $f8                                        ; $733d: $0e $f8
	ld [bc], a                                       ; $733f: $02
	jp nc, $06d3                                     ; $7340: $d2 $d3 $06

	ret nz                                           ; $7343: $c0

	ld bc, $02a0                                     ; $7344: $01 $a0 $02
	rrca                                             ; $7347: $0f
	ld bc, $d401                                     ; $7348: $01 $01 $d4
	ld b, $c0                                        ; $734b: $06 $c0
	ld bc, $02a0                                     ; $734d: $01 $a0 $02
	rrca                                             ; $7350: $0f
	ld c, $e1                                        ; $7351: $0e $e1
	ld [bc], a                                       ; $7353: $02
	inc bc                                           ; $7354: $03
	ld c, b                                          ; $7355: $48
	db $e4                                           ; $7356: $e4
	nop                                              ; $7357: $00
	ld a, d                                          ; $7358: $7a
	rrca                                             ; $7359: $0f
	inc d                                            ; $735a: $14
	add hl, bc                                       ; $735b: $09
	inc l                                            ; $735c: $2c
	pop hl                                           ; $735d: $e1
	ld [bc], a                                       ; $735e: $02
	inc bc                                           ; $735f: $03
	rla                                              ; $7360: $17
	add d                                            ; $7361: $82
	ret nz                                           ; $7362: $c0

	dec de                                           ; $7363: $1b
	ret nc                                           ; $7364: $d0

	ld [bc], a                                       ; $7365: $02
	ret nc                                           ; $7366: $d0

	pop de                                           ; $7367: $d1
	ld b, $c0                                        ; $7368: $06 $c0
	ld bc, $02a0                                     ; $736a: $01 $a0 $02
	inc c                                            ; $736d: $0c
	ld [hl], b                                       ; $736e: $70
	ld [bc], a                                       ; $736f: $02
	jp nc, $06d3                                     ; $7370: $d2 $d3 $06

	ret nz                                           ; $7373: $c0

	ld bc, $02a0                                     ; $7374: $01 $a0 $02
	rrca                                             ; $7377: $0f
	ld d, $01                                        ; $7378: $16 $01
	call nc, $c006                                   ; $737a: $d4 $06 $c0
	ld bc, $02a0                                     ; $737d: $01 $a0 $02
	rrca                                             ; $7380: $0f
	inc hl                                           ; $7381: $23
	pop hl                                           ; $7382: $e1
	ld [bc], a                                       ; $7383: $02
	inc bc                                           ; $7384: $03
	ccf                                              ; $7385: $3f
	db $e4                                           ; $7386: $e4
	nop                                              ; $7387: $00
	ld c, d                                          ; $7388: $4a
	jr z, @+$08                                      ; $7389: $28 $06

	ret nz                                           ; $738b: $c0

	ld bc, $02a0                                     ; $738c: $01 $a0 $02
	rrca                                             ; $738f: $0f
	ld l, $3f                                        ; $7390: $2e $3f
	rrca                                             ; $7392: $0f
	inc [hl]                                         ; $7393: $34
	add hl, bc                                       ; $7394: $09
	ld de, $02e1                                     ; $7395: $11 $e1 $02
	inc bc                                           ; $7398: $03
	inc de                                           ; $7399: $13
	ret nz                                           ; $739a: $c0

	ld bc, $02a0                                     ; $739b: $01 $a0 $02
	rrca                                             ; $739e: $0f
	inc a                                            ; $739f: $3c
	pop hl                                           ; $73a0: $e1
	ld [bc], a                                       ; $73a1: $02
	inc bc                                           ; $73a2: $03
	ld [hl], $e4                                     ; $73a3: $36 $e4
	nop                                              ; $73a5: $00
	inc l                                            ; $73a6: $2c
	rrca                                             ; $73a7: $0f
	ld b, d                                          ; $73a8: $42
	add hl, bc                                       ; $73a9: $09
	ld de, $02e1                                     ; $73aa: $11 $e1 $02
	inc bc                                           ; $73ad: $03
	dec de                                           ; $73ae: $1b
	ret nz                                           ; $73af: $c0

	ld bc, $02a0                                     ; $73b0: $01 $a0 $02
	rrca                                             ; $73b3: $0f
	ld c, c                                          ; $73b4: $49
	pop hl                                           ; $73b5: $e1
	ld [bc], a                                       ; $73b6: $02
	inc bc                                           ; $73b7: $03
	ld c, b                                          ; $73b8: $48
	db $e4                                           ; $73b9: $e4
	nop                                              ; $73ba: $00
	rla                                              ; $73bb: $17
	rrca                                             ; $73bc: $0f
	ld c, a                                          ; $73bd: $4f
	add hl, bc                                       ; $73be: $09
	ld de, $02e1                                     ; $73bf: $11 $e1 $02
	inc bc                                           ; $73c2: $03
	dec de                                           ; $73c3: $1b
	ret nz                                           ; $73c4: $c0

	ld bc, $02a0                                     ; $73c5: $01 $a0 $02
	rrca                                             ; $73c8: $0f
	ld d, [hl]                                       ; $73c9: $56
	pop hl                                           ; $73ca: $e1
	ld [bc], a                                       ; $73cb: $02
	inc bc                                           ; $73cc: $03
	ld c, b                                          ; $73cd: $48
	db $e4                                           ; $73ce: $e4
	nop                                              ; $73cf: $00
	ld [bc], a                                       ; $73d0: $02
	add hl, bc                                       ; $73d1: $09
	rrca                                             ; $73d2: $0f
	pop bc                                           ; $73d3: $c1
	ld e, c                                          ; $73d4: $59
	db $e3                                           ; $73d5: $e3
	nop                                              ; $73d6: $00
	xor b                                            ; $73d7: $a8
	ret nz                                           ; $73d8: $c0

	ld d, [hl]                                       ; $73d9: $56
	ret nc                                           ; $73da: $d0

	ldh [rAUD1LOW], a                                ; $73db: $e0 $13
	ret nc                                           ; $73dd: $d0

	push hl                                          ; $73de: $e5
	inc de                                           ; $73df: $13
	nop                                              ; $73e0: $00
	nop                                              ; $73e1: $00
	add hl, bc                                       ; $73e2: $09
	inc d                                            ; $73e3: $14
	ret nc                                           ; $73e4: $d0

	add e                                            ; $73e5: $83
	ld bc, $d0de                                     ; $73e6: $01 $de $d0
	ret nz                                           ; $73e9: $c0

	ld bc, $02a0                                     ; $73ea: $01 $a0 $02
	rrca                                             ; $73ed: $0f
	ld e, a                                          ; $73ee: $5f
	ret nz                                           ; $73ef: $c0

	ld bc, $01a0                                     ; $73f0: $01 $a0 $01
	rrca                                             ; $73f3: $0f
	ld l, b                                          ; $73f4: $68
	db $e4                                           ; $73f5: $e4
	nop                                              ; $73f6: $00
	ld [bc], a                                       ; $73f7: $02
	add hl, bc                                       ; $73f8: $09
	rla                                              ; $73f9: $17
	pop bc                                           ; $73fa: $c1
	ld e, c                                          ; $73fb: $59
	db $e3                                           ; $73fc: $e3
	nop                                              ; $73fd: $00
	and a                                            ; $73fe: $a7
	and b                                            ; $73ff: $a0
	add b                                            ; $7400: $80
	and b                                            ; $7401: $a0
	rra                                              ; $7402: $1f
	nop                                              ; $7403: $00
	inc bc                                           ; $7404: $03
	db $e4                                           ; $7405: $e4
	nop                                              ; $7406: $00
	dec bc                                           ; $7407: $0b
	rst $38                                          ; $7408: $ff
	rlca                                             ; $7409: $07
	ld b, b                                          ; $740a: $40
	add b                                            ; $740b: $80
	and b                                            ; $740c: $a0
	rra                                              ; $740d: $1f
	db $e4                                           ; $740e: $e4
	nop                                              ; $740f: $00
	xor [hl]                                         ; $7410: $ae
	jr z, jr_07d_7419                                ; $7411: $28 $06

	ret nz                                           ; $7413: $c0

	ld bc, $02a0                                     ; $7414: $01 $a0 $02
	rrca                                             ; $7417: $0f
	ld l, h                                          ; $7418: $6c

jr_07d_7419:
	and e                                            ; $7419: $a3
	rrca                                             ; $741a: $0f
	ld [hl], l                                       ; $741b: $75
	add hl, bc                                       ; $741c: $09
	ccf                                              ; $741d: $3f
	pop hl                                           ; $741e: $e1
	ld [bc], a                                       ; $741f: $02
	inc bc                                           ; $7420: $03
	inc de                                           ; $7421: $13
	add d                                            ; $7422: $82
	ret nz                                           ; $7423: $c0

	dec de                                           ; $7424: $1b
	ret nc                                           ; $7425: $d0

	ld [bc], a                                       ; $7426: $02
	ret nc                                           ; $7427: $d0

	pop de                                           ; $7428: $d1
	ld b, $c0                                        ; $7429: $06 $c0
	ld bc, $02a0                                     ; $742b: $01 $a0 $02
	rrca                                             ; $742e: $0f
	ld [hl], a                                       ; $742f: $77
	ld [bc], a                                       ; $7430: $02
	jp nc, $06d3                                     ; $7431: $d2 $d3 $06

	ret nz                                           ; $7434: $c0

	ld bc, $02a0                                     ; $7435: $01 $a0 $02
	rrca                                             ; $7438: $0f
	ld a, [hl]                                       ; $7439: $7e
	ld bc, $06d4                                     ; $743a: $01 $d4 $06
	ret nz                                           ; $743d: $c0

	ld bc, $02a0                                     ; $743e: $01 $a0 $02
	rrca                                             ; $7441: $0f
	add l                                            ; $7442: $85
	ld h, b                                          ; $7443: $60
	ld hl, sp-$40                                    ; $7444: $f8 $c0
	add e                                            ; $7446: $83
	call nc, Call_07d_64e0                           ; $7447: $d4 $e0 $64
	ld a, [bc]                                       ; $744a: $0a
	ret nz                                           ; $744b: $c0

	ld bc, $01a0                                     ; $744c: $01 $a0 $01
	ld c, $ed                                        ; $744f: $0e $ed
	pop hl                                           ; $7451: $e1
	ld [bc], a                                       ; $7452: $02
	inc bc                                           ; $7453: $03
	ld c, b                                          ; $7454: $48
	inc b                                            ; $7455: $04
	pop hl                                           ; $7456: $e1
	ld [bc], a                                       ; $7457: $02
	inc bc                                           ; $7458: $03
	dec l                                            ; $7459: $2d
	db $e4                                           ; $745a: $e4
	nop                                              ; $745b: $00
	ei                                               ; $745c: $fb
	rrca                                             ; $745d: $0f
	adc e                                            ; $745e: $8b
	add hl, bc                                       ; $745f: $09
	inc l                                            ; $7460: $2c
	pop hl                                           ; $7461: $e1
	ld [bc], a                                       ; $7462: $02
	inc bc                                           ; $7463: $03
	dec de                                           ; $7464: $1b
	add d                                            ; $7465: $82
	ret nz                                           ; $7466: $c0

	dec de                                           ; $7467: $1b
	ret nc                                           ; $7468: $d0

	ld [bc], a                                       ; $7469: $02
	ret nc                                           ; $746a: $d0

	pop de                                           ; $746b: $d1
	ld b, $c0                                        ; $746c: $06 $c0
	ld bc, $02a0                                     ; $746e: $01 $a0 $02
	rrca                                             ; $7471: $0f
	sub h                                            ; $7472: $94
	ld [bc], a                                       ; $7473: $02
	jp nc, $06d3                                     ; $7474: $d2 $d3 $06

	ret nz                                           ; $7477: $c0

	ld bc, $02a0                                     ; $7478: $01 $a0 $02
	rrca                                             ; $747b: $0f
	sbc l                                            ; $747c: $9d
	ld bc, $06d4                                     ; $747d: $01 $d4 $06
	ret nz                                           ; $7480: $c0

	ld bc, $02a0                                     ; $7481: $01 $a0 $02
	rrca                                             ; $7484: $0f
	and h                                            ; $7485: $a4
	pop hl                                           ; $7486: $e1
	ld [bc], a                                       ; $7487: $02
	inc bc                                           ; $7488: $03
	ld c, b                                          ; $7489: $48
	db $e4                                           ; $748a: $e4
	nop                                              ; $748b: $00
	rrc a                                            ; $748c: $cb $0f
	xor e                                            ; $748e: $ab
	add hl, bc                                       ; $748f: $09
	inc l                                            ; $7490: $2c
	pop hl                                           ; $7491: $e1
	ld [bc], a                                       ; $7492: $02
	inc bc                                           ; $7493: $03
	rla                                              ; $7494: $17
	add d                                            ; $7495: $82
	ret nz                                           ; $7496: $c0

	dec de                                           ; $7497: $1b
	ret nc                                           ; $7498: $d0

	ld [bc], a                                       ; $7499: $02
	ret nc                                           ; $749a: $d0

	pop de                                           ; $749b: $d1
	ld b, $c0                                        ; $749c: $06 $c0
	ld bc, $02a0                                     ; $749e: $01 $a0 $02
	rrca                                             ; $74a1: $0f
	or c                                             ; $74a2: $b1
	ld [bc], a                                       ; $74a3: $02
	jp nc, $06d3                                     ; $74a4: $d2 $d3 $06

	ret nz                                           ; $74a7: $c0

	ld bc, $02a0                                     ; $74a8: $01 $a0 $02
	rrca                                             ; $74ab: $0f
	cp d                                             ; $74ac: $ba
	ld bc, $06d4                                     ; $74ad: $01 $d4 $06
	ret nz                                           ; $74b0: $c0

	ld bc, $02a0                                     ; $74b1: $01 $a0 $02
	rrca                                             ; $74b4: $0f
	call nz, $02e1                                   ; $74b5: $c4 $e1 $02
	inc bc                                           ; $74b8: $03
	ccf                                              ; $74b9: $3f
	db $e4                                           ; $74ba: $e4
	nop                                              ; $74bb: $00
	sbc e                                            ; $74bc: $9b
	jr z, jr_07d_74c5                                ; $74bd: $28 $06

	ret nz                                           ; $74bf: $c0

	ld bc, $02a0                                     ; $74c0: $01 $a0 $02
	rrca                                             ; $74c3: $0f
	ret z                                            ; $74c4: $c8

jr_07d_74c5:
	sub b                                            ; $74c5: $90
	rrca                                             ; $74c6: $0f
	rst GetHLinHL                                          ; $74c7: $cf
	add hl, bc                                       ; $74c8: $09
	inc l                                            ; $74c9: $2c
	pop hl                                           ; $74ca: $e1
	ld [bc], a                                       ; $74cb: $02
	inc bc                                           ; $74cc: $03
	rrca                                             ; $74cd: $0f
	add d                                            ; $74ce: $82
	ret nz                                           ; $74cf: $c0

	dec de                                           ; $74d0: $1b
	ret nc                                           ; $74d1: $d0

	ld [bc], a                                       ; $74d2: $02
	ret nc                                           ; $74d3: $d0

	pop de                                           ; $74d4: $d1
	ld b, $c0                                        ; $74d5: $06 $c0
	ld bc, $02a0                                     ; $74d7: $01 $a0 $02
	rrca                                             ; $74da: $0f
	pop de                                           ; $74db: $d1
	ld [bc], a                                       ; $74dc: $02
	jp nc, $06d3                                     ; $74dd: $d2 $d3 $06

	ret nz                                           ; $74e0: $c0

	ld bc, $02a0                                     ; $74e1: $01 $a0 $02
	rrca                                             ; $74e4: $0f
	jp c, $d401                                      ; $74e5: $da $01 $d4

	ld b, $c0                                        ; $74e8: $06 $c0
	ld bc, $02a0                                     ; $74ea: $01 $a0 $02
	rrca                                             ; $74ed: $0f
	push hl                                          ; $74ee: $e5
	pop hl                                           ; $74ef: $e1
	ld [bc], a                                       ; $74f0: $02
	inc bc                                           ; $74f1: $03
	dec l                                            ; $74f2: $2d
	db $e4                                           ; $74f3: $e4
	nop                                              ; $74f4: $00
	ld h, d                                          ; $74f5: $62
	rrca                                             ; $74f6: $0f
	ld [$2c09], a                                    ; $74f7: $ea $09 $2c
	pop hl                                           ; $74fa: $e1
	ld [bc], a                                       ; $74fb: $02
	inc bc                                           ; $74fc: $03
	dec de                                           ; $74fd: $1b
	add d                                            ; $74fe: $82
	ret nz                                           ; $74ff: $c0

	dec de                                           ; $7500: $1b
	ret nc                                           ; $7501: $d0

	ld [bc], a                                       ; $7502: $02
	ret nc                                           ; $7503: $d0

	pop de                                           ; $7504: $d1
	ld b, $c0                                        ; $7505: $06 $c0
	ld bc, $02a0                                     ; $7507: $01 $a0 $02
	rrca                                             ; $750a: $0f
	db $ec                                           ; $750b: $ec
	ld [bc], a                                       ; $750c: $02
	jp nc, $06d3                                     ; $750d: $d2 $d3 $06

	ret nz                                           ; $7510: $c0

	ld bc, $02a0                                     ; $7511: $01 $a0 $02
	rrca                                             ; $7514: $0f
	di                                               ; $7515: $f3
	ld bc, $06d4                                     ; $7516: $01 $d4 $06
	ret nz                                           ; $7519: $c0

	ld bc, $02a0                                     ; $751a: $01 $a0 $02
	rrca                                             ; $751d: $0f
	db $fd                                           ; $751e: $fd
	pop hl                                           ; $751f: $e1
	ld [bc], a                                       ; $7520: $02
	inc bc                                           ; $7521: $03
	ld c, b                                          ; $7522: $48
	db $e4                                           ; $7523: $e4
	nop                                              ; $7524: $00
	ld [hl-], a                                      ; $7525: $32
	db $10                                           ; $7526: $10
	dec b                                            ; $7527: $05
	add hl, bc                                       ; $7528: $09
	inc l                                            ; $7529: $2c
	pop hl                                           ; $752a: $e1
	ld [bc], a                                       ; $752b: $02
	inc bc                                           ; $752c: $03
	rla                                              ; $752d: $17
	add d                                            ; $752e: $82
	ret nz                                           ; $752f: $c0

	dec de                                           ; $7530: $1b
	ret nc                                           ; $7531: $d0

	ld [bc], a                                       ; $7532: $02
	ret nc                                           ; $7533: $d0

	pop de                                           ; $7534: $d1
	ld b, $c0                                        ; $7535: $06 $c0
	ld bc, $02a0                                     ; $7537: $01 $a0 $02
	db $10                                           ; $753a: $10
	rlca                                             ; $753b: $07
	ld [bc], a                                       ; $753c: $02
	jp nc, $06d3                                     ; $753d: $d2 $d3 $06

	ret nz                                           ; $7540: $c0

	ld bc, $02a0                                     ; $7541: $01 $a0 $02
	db $10                                           ; $7544: $10
	ld de, $d401                                     ; $7545: $11 $01 $d4
	ld b, $c0                                        ; $7548: $06 $c0
	ld bc, $02a0                                     ; $754a: $01 $a0 $02
	db $10                                           ; $754d: $10
	ld a, [de]                                       ; $754e: $1a
	pop hl                                           ; $754f: $e1
	ld [bc], a                                       ; $7550: $02
	inc bc                                           ; $7551: $03
	ccf                                              ; $7552: $3f
	db $e4                                           ; $7553: $e4
	nop                                              ; $7554: $00
	ld [bc], a                                       ; $7555: $02
	add hl, bc                                       ; $7556: $09
	rrca                                             ; $7557: $0f
	pop bc                                           ; $7558: $c1
	ld e, c                                          ; $7559: $59
	db $e3                                           ; $755a: $e3
	nop                                              ; $755b: $00
	and [hl]                                         ; $755c: $a6
	ret nz                                           ; $755d: $c0

	ld d, [hl]                                       ; $755e: $56
	ret nc                                           ; $755f: $d0

	ldh [rAUD1HIGH], a                               ; $7560: $e0 $14
	ret nc                                           ; $7562: $d0

	push hl                                          ; $7563: $e5
	inc de                                           ; $7564: $13
	nop                                              ; $7565: $00
	nop                                              ; $7566: $00
	add $04                                          ; $7567: $c6 $04
	add hl, bc                                       ; $7569: $09

jr_07d_756a:
	pop bc                                           ; $756a: $c1
	ld l, b                                          ; $756b: $68
	ret nz                                           ; $756c: $c0

	ld c, h                                          ; $756d: $4c
	ret nc                                           ; $756e: $d0

	ret nc                                           ; $756f: $d0

	adc a                                            ; $7570: $8f
	nop                                              ; $7571: $00
	cp b                                             ; $7572: $b8
	add h                                            ; $7573: $84
	ld [bc], a                                       ; $7574: $02
	ld l, $61                                        ; $7575: $2e $61
	cp $07                                           ; $7577: $fe $07
	add b                                            ; $7579: $80
	nop                                              ; $757a: $00
	set 7, h                                         ; $757b: $cb $fc
	ret nz                                           ; $757d: $c0

	ld h, a                                          ; $757e: $67
	ret nc                                           ; $757f: $d0

	inc [hl]                                         ; $7580: $34
	ret nz                                           ; $7581: $c0

	ld bc, $02a0                                     ; $7582: $01 $a0 $02
	nop                                              ; $7585: $00
	ld bc, $01c0                                     ; $7586: $01 $c0 $01
	and b                                            ; $7589: $a0
	ld bc, $0b00                                     ; $758a: $01 $00 $0b
	add c                                            ; $758d: $81
	ret nz                                           ; $758e: $c0

	dec de                                           ; $758f: $1b
	ret nc                                           ; $7590: $d0

	ld [bc], a                                       ; $7591: $02
	ret nc                                           ; $7592: $d0

	pop de                                           ; $7593: $d1
	ld a, [bc]                                       ; $7594: $0a
	pop hl                                           ; $7595: $e1
	ld [bc], a                                       ; $7596: $02
	inc bc                                           ; $7597: $03
	rrca                                             ; $7598: $0f
	ret nz                                           ; $7599: $c0

	ld bc, $02a0                                     ; $759a: $01 $a0 $02
	nop                                              ; $759d: $00
	inc d                                            ; $759e: $14
	nop                                              ; $759f: $00
	ld a, [bc]                                       ; $75a0: $0a
	pop hl                                           ; $75a1: $e1
	ld [bc], a                                       ; $75a2: $02
	inc bc                                           ; $75a3: $03
	inc de                                           ; $75a4: $13
	ret nz                                           ; $75a5: $c0

	ld bc, $02a0                                     ; $75a6: $01 $a0 $02
	nop                                              ; $75a9: $00
	ld e, $c0                                        ; $75aa: $1e $c0
	ld bc, $01a0                                     ; $75ac: $01 $a0 $01
	nop                                              ; $75af: $00
	jr nz, jr_07d_75f2                               ; $75b0: $20 $40

	add b                                            ; $75b2: $80
	nop                                              ; $75b3: $00
	set 7, h                                         ; $75b4: $cb $fc
	pop bc                                           ; $75b6: $c1
	ld b, c                                          ; $75b7: $41
	ret nc                                           ; $75b8: $d0

	add h                                            ; $75b9: $84
	ld [bc], a                                       ; $75ba: $02
	ld l, $83                                        ; $75bb: $2e $83
	ld bc, $d1de                                     ; $75bd: $01 $de $d1
	inc e                                            ; $75c0: $1c
	pop hl                                           ; $75c1: $e1
	ld [bc], a                                       ; $75c2: $02
	inc bc                                           ; $75c3: $03
	dec de                                           ; $75c4: $1b
	ret nz                                           ; $75c5: $c0

	ld bc, $02a0                                     ; $75c6: $01 $a0 $02
	nop                                              ; $75c9: $00
	ld h, $c0                                        ; $75ca: $26 $c0
	ld bc, $01a0                                     ; $75cc: $01 $a0 $01
	nop                                              ; $75cf: $00
	ld [hl-], a                                      ; $75d0: $32
	ret nz                                           ; $75d1: $c0

	dec h                                            ; $75d2: $25
	pop de                                           ; $75d3: $d1
	ret nc                                           ; $75d4: $d0

	ret nz                                           ; $75d5: $c0

	inc h                                            ; $75d6: $24
	jp nc, $c0d0                                     ; $75d7: $d2 $d0 $c0

	inc hl                                           ; $75da: $23
	jp c, $c0d0                                      ; $75db: $da $d0 $c0

	ret c                                            ; $75de: $d8

	add e                                            ; $75df: $83
	ret nz                                           ; $75e0: $c0

	dec de                                           ; $75e1: $1b
	ret nc                                           ; $75e2: $d0

	ld [bc], a                                       ; $75e3: $02
	ret nc                                           ; $75e4: $d0

	pop de                                           ; $75e5: $d1
	jr c, jr_07d_756a                                ; $75e6: $38 $82

	add d                                            ; $75e8: $82
	ld bc, $02c6                                     ; $75e9: $01 $c6 $02
	pop de                                           ; $75ec: $d1
	jp nc, $e10f                                     ; $75ed: $d2 $0f $e1

	ld [bc], a                                       ; $75f0: $02
	inc bc                                           ; $75f1: $03

jr_07d_75f2:
	inc de                                           ; $75f2: $13
	pop bc                                           ; $75f3: $c1
	or d                                             ; $75f4: $b2
	db $e3                                           ; $75f5: $e3
	nop                                              ; $75f6: $00
	inc b                                            ; $75f7: $04
	ret nz                                           ; $75f8: $c0

	ld bc, $02a0                                     ; $75f9: $01 $a0 $02
	nop                                              ; $75fc: $00
	jr c, jr_07d_7600                                ; $75fd: $38 $01

	db $d3                                           ; $75ff: $d3

jr_07d_7600:
	ld a, [bc]                                       ; $7600: $0a
	pop hl                                           ; $7601: $e1
	ld [bc], a                                       ; $7602: $02
	inc bc                                           ; $7603: $03
	rla                                              ; $7604: $17
	ret nz                                           ; $7605: $c0

	ld bc, $02a0                                     ; $7606: $01 $a0 $02
	nop                                              ; $7609: $00
	ld b, e                                          ; $760a: $43
	ld [bc], a                                       ; $760b: $02
	call nc, $0ad5                                   ; $760c: $d4 $d5 $0a
	pop hl                                           ; $760f: $e1
	ld [bc], a                                       ; $7610: $02
	inc bc                                           ; $7611: $03
	dec de                                           ; $7612: $1b
	ret nz                                           ; $7613: $c0

	ld bc, $02a0                                     ; $7614: $01 $a0 $02
	nop                                              ; $7617: $00
	ld c, h                                          ; $7618: $4c
	ret nz                                           ; $7619: $c0

	ld bc, $01a0                                     ; $761a: $01 $a0 $01
	nop                                              ; $761d: $00
	ld d, a                                          ; $761e: $57
	ld [bc], a                                       ; $761f: $02
	jp nc, $3fd3                                     ; $7620: $d2 $d3 $3f

	add d                                            ; $7623: $82
	add d                                            ; $7624: $82
	ld bc, $02c6                                     ; $7625: $01 $c6 $02
	pop de                                           ; $7628: $d1
	jp nc, $e110                                     ; $7629: $d2 $10 $e1

	ld [bc], a                                       ; $762c: $02
	inc bc                                           ; $762d: $03
	inc de                                           ; $762e: $13
	ret nz                                           ; $762f: $c0

	ld bc, $02a0                                     ; $7630: $01 $a0 $02
	nop                                              ; $7633: $00
	ld e, e                                          ; $7634: $5b
	ret nz                                           ; $7635: $c0

	ld bc, $01a0                                     ; $7636: $01 $a0 $01
	nop                                              ; $7639: $00
	ld h, l                                          ; $763a: $65
	ld bc, $10d3                                     ; $763b: $01 $d3 $10
	pop hl                                           ; $763e: $e1
	ld [bc], a                                       ; $763f: $02
	inc bc                                           ; $7640: $03
	rla                                              ; $7641: $17
	ret nz                                           ; $7642: $c0

	ld bc, $02a0                                     ; $7643: $01 $a0 $02
	nop                                              ; $7646: $00
	ld h, a                                          ; $7647: $67
	ret nz                                           ; $7648: $c0

	ld bc, $01a0                                     ; $7649: $01 $a0 $01
	nop                                              ; $764c: $00
	ld h, l                                          ; $764d: $65
	ld [bc], a                                       ; $764e: $02
	call nc, $10d5                                   ; $764f: $d4 $d5 $10
	pop hl                                           ; $7652: $e1
	ld [bc], a                                       ; $7653: $02
	inc bc                                           ; $7654: $03
	dec de                                           ; $7655: $1b
	ret nz                                           ; $7656: $c0

	ld bc, $02a0                                     ; $7657: $01 $a0 $02
	nop                                              ; $765a: $00
	ld l, a                                          ; $765b: $6f
	ret nz                                           ; $765c: $c0

	ld bc, $01a0                                     ; $765d: $01 $a0 $01
	nop                                              ; $7660: $00
	ld [hl], e                                       ; $7661: $73
	ld bc, $3fd4                                     ; $7662: $01 $d4 $3f
	add d                                            ; $7665: $82
	add d                                            ; $7666: $82
	ld bc, $02c6                                     ; $7667: $01 $c6 $02
	pop de                                           ; $766a: $d1
	jp nc, $e110                                     ; $766b: $d2 $10 $e1

	ld [bc], a                                       ; $766e: $02
	inc bc                                           ; $766f: $03
	inc de                                           ; $7670: $13
	ret nz                                           ; $7671: $c0

	ld bc, $02a0                                     ; $7672: $01 $a0 $02
	nop                                              ; $7675: $00
	ld [hl], l                                       ; $7676: $75
	ret nz                                           ; $7677: $c0

	ld bc, $01a0                                     ; $7678: $01 $a0 $01
	nop                                              ; $767b: $00
	ld h, l                                          ; $767c: $65
	ld bc, $10d3                                     ; $767d: $01 $d3 $10
	pop hl                                           ; $7680: $e1
	ld [bc], a                                       ; $7681: $02
	inc bc                                           ; $7682: $03
	rla                                              ; $7683: $17
	ret nz                                           ; $7684: $c0

	ld bc, $02a0                                     ; $7685: $01 $a0 $02
	nop                                              ; $7688: $00
	ld a, a                                          ; $7689: $7f
	ret nz                                           ; $768a: $c0

	ld bc, $01a0                                     ; $768b: $01 $a0 $01
	nop                                              ; $768e: $00
	add d                                            ; $768f: $82
	ld [bc], a                                       ; $7690: $02
	call nc, $10d5                                   ; $7691: $d4 $d5 $10
	pop hl                                           ; $7694: $e1
	ld [bc], a                                       ; $7695: $02
	inc bc                                           ; $7696: $03
	dec de                                           ; $7697: $1b
	ret nz                                           ; $7698: $c0

	ld bc, $02a0                                     ; $7699: $01 $a0 $02
	nop                                              ; $769c: $00
	ld l, a                                          ; $769d: $6f
	ret nz                                           ; $769e: $c0

	ld bc, $01a0                                     ; $769f: $01 $a0 $01
	nop                                              ; $76a2: $00
	ld [hl], e                                       ; $76a3: $73
	ld bc, $10d5                                     ; $76a4: $01 $d5 $10
	pop hl                                           ; $76a7: $e1
	ld [bc], a                                       ; $76a8: $02
	inc bc                                           ; $76a9: $03
	dec de                                           ; $76aa: $1b
	ret nz                                           ; $76ab: $c0

	ld bc, $02a0                                     ; $76ac: $01 $a0 $02
	nop                                              ; $76af: $00
	add [hl]                                         ; $76b0: $86
	ret nz                                           ; $76b1: $c0

	ld bc, $01a0                                     ; $76b2: $01 $a0 $01
	nop                                              ; $76b5: $00
	adc l                                            ; $76b6: $8d
	pop hl                                           ; $76b7: $e1
	ld [bc], a                                       ; $76b8: $02
	inc bc                                           ; $76b9: $03

jr_07d_76ba:
	daa                                              ; $76ba: $27
	ldh [rP1], a                                     ; $76bb: $e0 $00
	jr jr_07d_76ba                                   ; $76bd: $18 $fb

	db $fd                                           ; $76bf: $fd
	add h                                            ; $76c0: $84
	ld [bc], a                                       ; $76c1: $02
	ld l, $d0                                        ; $76c2: $2e $d0
	add hl, bc                                       ; $76c4: $09
	pop bc                                           ; $76c5: $c1
	ccf                                              ; $76c6: $3f
	ret nc                                           ; $76c7: $d0

	add h                                            ; $76c8: $84
	ld [bc], a                                       ; $76c9: $02
	ld l, $83                                        ; $76ca: $2e $83
	ld bc, $e0de                                     ; $76cc: $01 $de $e0
	nop                                              ; $76cf: $00
	ld b, e                                          ; $76d0: $43
	db $e4                                           ; $76d1: $e4
	nop                                              ; $76d2: $00
	ld h, l                                          ; $76d3: $65
	dec a                                            ; $76d4: $3d
	ei                                               ; $76d5: $fb
	cp $0a                                           ; $76d6: $fe $0a
	db $fc                                           ; $76d8: $fc
	ret nz                                           ; $76d9: $c0

	ld h, l                                          ; $76da: $65
	ret nz                                           ; $76db: $c0

	ld [hl], c                                       ; $76dc: $71
	db $fc                                           ; $76dd: $fc
	ret nz                                           ; $76de: $c0

	ld h, [hl]                                       ; $76df: $66
	ret nz                                           ; $76e0: $c0

	ld [hl], d                                       ; $76e1: $72
	cpl                                              ; $76e2: $2f
	ei                                               ; $76e3: $fb
	ld hl, sp-$40                                    ; $76e4: $f8 $c0
	rla                                              ; $76e6: $17
	ret nc                                           ; $76e7: $d0

	ldh [$3c], a                                     ; $76e8: $e0 $3c
	daa                                              ; $76ea: $27
	add b                                            ; $76eb: $80
	ret nz                                           ; $76ec: $c0

	dec de                                           ; $76ed: $1b
	ret nc                                           ; $76ee: $d0

	ld [bc], a                                       ; $76ef: $02
	ret nc                                           ; $76f0: $d0

	pop de                                           ; $76f1: $d1
	rra                                              ; $76f2: $1f
	ret nz                                           ; $76f3: $c0

	ld bc, $02a0                                     ; $76f4: $01 $a0 $02
	nop                                              ; $76f7: $00
	sub c                                            ; $76f8: $91
	ret nz                                           ; $76f9: $c0

	ld bc, $01a0                                     ; $76fa: $01 $a0 $01
	nop                                              ; $76fd: $00
	sub l                                            ; $76fe: $95
	ret nc                                           ; $76ff: $d0

	add e                                            ; $7700: $83
	ld [bc], a                                       ; $7701: $02
	ld l, l                                          ; $7702: $6d
	ret nc                                           ; $7703: $d0

	pop hl                                           ; $7704: $e1
	ld b, [hl]                                       ; $7705: $46
	ld bc, $c0e1                                     ; $7706: $01 $e1 $c0
	ld bc, $01a0                                     ; $7709: $01 $a0 $01
	nop                                              ; $770c: $00
	sub a                                            ; $770d: $97
	nop                                              ; $770e: $00
	add b                                            ; $770f: $80
	nop                                              ; $7710: $00
	dec [hl]                                         ; $7711: $35
	inc h                                            ; $7712: $24
	ei                                               ; $7713: $fb
	cp $0a                                           ; $7714: $fe $0a
	db $fc                                           ; $7716: $fc
	ret nz                                           ; $7717: $c0

	ld h, l                                          ; $7718: $65
	ret nz                                           ; $7719: $c0

	ld [hl], h                                       ; $771a: $74
	db $fc                                           ; $771b: $fc
	ret nz                                           ; $771c: $c0

	ld h, [hl]                                       ; $771d: $66
	ret nz                                           ; $771e: $c0

	ld [hl], l                                       ; $771f: $75
	ld d, $c0                                        ; $7720: $16 $c0
	ld bc, $01a0                                     ; $7722: $01 $a0 $01
	nop                                              ; $7725: $00
	xor e                                            ; $7726: $ab
	ret nz                                           ; $7727: $c0

	ld bc, $01a0                                     ; $7728: $01 $a0 $01
	nop                                              ; $772b: $00
	or c                                             ; $772c: $b1
	ret nc                                           ; $772d: $d0

	adc e                                            ; $772e: $8b
	nop                                              ; $772f: $00
	sbc $b0                                          ; $7730: $de $b0
	add c                                            ; $7732: $81
	push hl                                          ; $7733: $e5
	ld b, l                                          ; $7734: $45
	nop                                              ; $7735: $00
	nop                                              ; $7736: $00
	add hl, bc                                       ; $7737: $09
	jr nc, @-$7c                                     ; $7738: $30 $82

	ret nz                                           ; $773a: $c0

	dec de                                           ; $773b: $1b
	ret nc                                           ; $773c: $d0

	ld [bc], a                                       ; $773d: $02
	ret nc                                           ; $773e: $d0

	pop de                                           ; $773f: $d1
	dec bc                                           ; $7740: $0b
	pop bc                                           ; $7741: $c1
	or d                                             ; $7742: $b2
	db $e3                                           ; $7743: $e3
	nop                                              ; $7744: $00
	dec c                                            ; $7745: $0d
	ret nz                                           ; $7746: $c0

	ld bc, $02a0                                     ; $7747: $01 $a0 $02
	nop                                              ; $774a: $00
	cp b                                             ; $774b: $b8
	inc bc                                           ; $774c: $03
	jp nc, $d4d3                                     ; $774d: $d2 $d3 $d4

	ld b, $c0                                        ; $7750: $06 $c0
	ld bc, $02a0                                     ; $7752: $01 $a0 $02
	nop                                              ; $7755: $00
	cp l                                             ; $7756: $bd
	ld bc, $0cd5                                     ; $7757: $01 $d5 $0c
	ret nz                                           ; $775a: $c0

	ld bc, $02a0                                     ; $775b: $01 $a0 $02
	nop                                              ; $775e: $00
	jp nz, Jump_07d_5bc1                             ; $775f: $c2 $c1 $5b

	ret nz                                           ; $7762: $c0

	inc c                                            ; $7763: $0c
	ldh [rAUD3HIGH], a                               ; $7764: $e0 $1e
	db $e4                                           ; $7766: $e4
	nop                                              ; $7767: $00
	ld [bc], a                                       ; $7768: $02
	add hl, bc                                       ; $7769: $09
	ld e, [hl]                                       ; $776a: $5e
	ld h, c                                          ; $776b: $61
	cp $09                                           ; $776c: $fe $09
	db $fd                                           ; $776e: $fd
	ret nz                                           ; $776f: $c0

	ld h, h                                          ; $7770: $64
	ldh [$63], a                                     ; $7771: $e0 $63
	db $fc                                           ; $7773: $fc
	ret nz                                           ; $7774: $c0

	ld h, l                                          ; $7775: $65
	push de                                          ; $7776: $d5
	dec de                                           ; $7777: $1b
	add d                                            ; $7778: $82
	ret nz                                           ; $7779: $c0

	ld h, [hl]                                       ; $777a: $66
	ld bc, $05d3                                     ; $777b: $01 $d3 $05
	ret nc                                           ; $777e: $d0

	add e                                            ; $777f: $83
	ld bc, $d072                                     ; $7780: $01 $72 $d0
	ld bc, $05d4                                     ; $7783: $01 $d4 $05
	ret nc                                           ; $7786: $d0

	add e                                            ; $7787: $83
	ld bc, $d076                                     ; $7788: $01 $76 $d0
	ld bc, $05d5                                     ; $778b: $01 $d5 $05
	ret nc                                           ; $778e: $d0

	add e                                            ; $778f: $83
	ld bc, $d07a                                     ; $7790: $01 $7a $d0
	cp $09                                           ; $7793: $fe $09
	db $fc                                           ; $7795: $fc
	ret nz                                           ; $7796: $c0

	ld h, h                                          ; $7797: $64
	ldh [$63], a                                     ; $7798: $e0 $63
	db $fc                                           ; $779a: $fc
	ret nz                                           ; $779b: $c0

	ld h, l                                          ; $779c: $65
	push de                                          ; $779d: $d5
	inc hl                                           ; $779e: $23
	add e                                            ; $779f: $83
	ret nz                                           ; $77a0: $c0

jr_07d_77a1:
	ld h, [hl]                                       ; $77a1: $66
	ld bc, $05d2                                     ; $77a2: $01 $d2 $05
	ret nc                                           ; $77a5: $d0

	add e                                            ; $77a6: $83
	ld bc, $d072                                     ; $77a7: $01 $72 $d0
	ld bc, $05d3                                     ; $77aa: $01 $d3 $05
	ret nc                                           ; $77ad: $d0

	add e                                            ; $77ae: $83
	ld bc, $d076                                     ; $77af: $01 $76 $d0
	ld bc, $05d4                                     ; $77b2: $01 $d4 $05
	ret nc                                           ; $77b5: $d0

	add e                                            ; $77b6: $83
	ld bc, $d07a                                     ; $77b7: $01 $7a $d0
	ld bc, $05d5                                     ; $77ba: $01 $d5 $05
	ret nc                                           ; $77bd: $d0

	add e                                            ; $77be: $83
	ld bc, $d07e                                     ; $77bf: $01 $7e $d0
	nop                                              ; $77c2: $00
	ret nz                                           ; $77c3: $c0

	set 4, l                                         ; $77c4: $cb $e5
	nop                                              ; $77c6: $00
	jr nz, jr_07d_77a1                               ; $77c7: $20 $d8

	and $04                                          ; $77c9: $e6 $04
	add hl, bc                                       ; $77cb: $09
	pop bc                                           ; $77cc: $c1
	add hl, sp                                       ; $77cd: $39
	nop                                              ; $77ce: $00
	add b                                            ; $77cf: $80
	ld [bc], a                                       ; $77d0: $02
	ld [hl], c                                       ; $77d1: $71
	db $fd                                           ; $77d2: $fd
	pop bc                                           ; $77d3: $c1
	ld [hl-], a                                      ; $77d4: $32
	adc e                                            ; $77d5: $8b
	ld [bc], a                                       ; $77d6: $02
	inc [hl]                                         ; $77d7: $34
	ld [bc], a                                       ; $77d8: $02
	or b                                             ; $77d9: $b0
	ld e, c                                          ; $77da: $59
	dec bc                                           ; $77db: $0b
	pop hl                                           ; $77dc: $e1
	ld [bc], a                                       ; $77dd: $02
	ld bc, $e01a                                     ; $77de: $01 $1a $e0
	ld bc, $e526                                     ; $77e1: $01 $26 $e5
	dec d                                            ; $77e4: $15
	nop                                              ; $77e5: $00
	nop                                              ; $77e6: $00
	ld [bc], a                                       ; $77e7: $02
	or b                                             ; $77e8: $b0
	ld [de], a                                       ; $77e9: $12
	dec bc                                           ; $77ea: $0b
	pop hl                                           ; $77eb: $e1
	ld [bc], a                                       ; $77ec: $02
	ld bc, $e01a                                     ; $77ed: $01 $1a $e0
	ld bc, $e517                                     ; $77f0: $01 $17 $e5
	dec d                                            ; $77f3: $15
	ld bc, $022e                                     ; $77f4: $01 $2e $02
	or b                                             ; $77f7: $b0
	ld e, d                                          ; $77f8: $5a
	dec bc                                           ; $77f9: $0b
	pop hl                                           ; $77fa: $e1
	ld [bc], a                                       ; $77fb: $02
	ld bc, $e01a                                     ; $77fc: $01 $1a $e0
	ld bc, $e508                                     ; $77ff: $01 $08 $e5
	dec d                                            ; $7802: $15
	inc bc                                           ; $7803: $03
	sbc l                                            ; $7804: $9d
	ld [bc], a                                       ; $7805: $02
	or b                                             ; $7806: $b0
	inc d                                            ; $7807: $14
	dec bc                                           ; $7808: $0b
	pop hl                                           ; $7809: $e1
	ld [bc], a                                       ; $780a: $02
	ld bc, $e01a                                     ; $780b: $01 $1a $e0
	nop                                              ; $780e: $00
	ld sp, hl                                        ; $780f: $f9
	push hl                                          ; $7810: $e5
	dec d                                            ; $7811: $15
	ld [$0221], sp                                   ; $7812: $08 $21 $02
	or b                                             ; $7815: $b0
	ld e, e                                          ; $7816: $5b
	dec bc                                           ; $7817: $0b
	pop hl                                           ; $7818: $e1
	ld [bc], a                                       ; $7819: $02
	ld bc, $e01a                                     ; $781a: $01 $1a $e0
	nop                                              ; $781d: $00
	ld [$15e5], a                                    ; $781e: $ea $e5 $15
	ld a, [bc]                                       ; $7821: $0a
	ld c, b                                          ; $7822: $48
	ld [bc], a                                       ; $7823: $02
	or b                                             ; $7824: $b0
	ld d, $0b                                        ; $7825: $16 $0b
	pop hl                                           ; $7827: $e1
	ld [bc], a                                       ; $7828: $02
	ld bc, $e01a                                     ; $7829: $01 $1a $e0
	nop                                              ; $782c: $00
	db $db                                           ; $782d: $db
	push hl                                          ; $782e: $e5
	dec d                                            ; $782f: $15
	dec c                                            ; $7830: $0d
	ld de, $b002                                     ; $7831: $11 $02 $b0
	jr jr_07d_7841                                   ; $7834: $18 $0b

	pop hl                                           ; $7836: $e1
	ld [bc], a                                       ; $7837: $02
	ld bc, $e01a                                     ; $7838: $01 $1a $e0
	nop                                              ; $783b: $00
	call z, $15e5                                    ; $783c: $cc $e5 $15
	ld c, $85                                        ; $783f: $0e $85

jr_07d_7841:
	ld [bc], a                                       ; $7841: $02
	or b                                             ; $7842: $b0
	inc de                                           ; $7843: $13
	dec bc                                           ; $7844: $0b
	pop hl                                           ; $7845: $e1
	ld [bc], a                                       ; $7846: $02
	ld bc, $e01a                                     ; $7847: $01 $1a $e0
	nop                                              ; $784a: $00
	cp l                                             ; $784b: $bd
	push hl                                          ; $784c: $e5
	dec d                                            ; $784d: $15
	db $10                                           ; $784e: $10
	ld a, [hl-]                                      ; $784f: $3a
	ld [bc], a                                       ; $7850: $02
	or b                                             ; $7851: $b0
	ld e, h                                          ; $7852: $5c
	dec bc                                           ; $7853: $0b
	pop hl                                           ; $7854: $e1
	ld [bc], a                                       ; $7855: $02
	ld bc, $e01a                                     ; $7856: $01 $1a $e0
	nop                                              ; $7859: $00
	xor [hl]                                         ; $785a: $ae
	push hl                                          ; $785b: $e5
	dec d                                            ; $785c: $15
	inc d                                            ; $785d: $14
	daa                                              ; $785e: $27
	ld [bc], a                                       ; $785f: $02
	or b                                             ; $7860: $b0
	ld e, l                                          ; $7861: $5d
	dec bc                                           ; $7862: $0b
	pop hl                                           ; $7863: $e1
	ld [bc], a                                       ; $7864: $02
	ld bc, $e01a                                     ; $7865: $01 $1a $e0
	nop                                              ; $7868: $00
	sbc a                                            ; $7869: $9f
	push hl                                          ; $786a: $e5
	dec d                                            ; $786b: $15
	ld d, $6f                                        ; $786c: $16 $6f
	ld [bc], a                                       ; $786e: $02
	or b                                             ; $786f: $b0
	ld e, [hl]                                       ; $7870: $5e
	dec bc                                           ; $7871: $0b
	pop hl                                           ; $7872: $e1
	ld [bc], a                                       ; $7873: $02
	ld bc, $e01a                                     ; $7874: $01 $1a $e0
	nop                                              ; $7877: $00
	sub b                                            ; $7878: $90
	push hl                                          ; $7879: $e5
	ld d, $00                                        ; $787a: $16 $00
	nop                                              ; $787c: $00
	ld [bc], a                                       ; $787d: $02
	or b                                             ; $787e: $b0
	ld e, a                                          ; $787f: $5f
	dec bc                                           ; $7880: $0b
	pop hl                                           ; $7881: $e1
	ld [bc], a                                       ; $7882: $02
	ld bc, $e01a                                     ; $7883: $01 $1a $e0
	nop                                              ; $7886: $00
	add c                                            ; $7887: $81
	push hl                                          ; $7888: $e5
	ld d, $01                                        ; $7889: $16 $01
	ld a, h                                          ; $788b: $7c
	ld [bc], a                                       ; $788c: $02
	or b                                             ; $788d: $b0
	ld h, b                                          ; $788e: $60
	dec bc                                           ; $788f: $0b
	pop hl                                           ; $7890: $e1
	ld [bc], a                                       ; $7891: $02
	ld bc, $e01a                                     ; $7892: $01 $1a $e0
	nop                                              ; $7895: $00
	ld [hl], d                                       ; $7896: $72
	push hl                                          ; $7897: $e5
	ld d, $02                                        ; $7898: $16 $02
	add sp, $02                                      ; $789a: $e8 $02
	or b                                             ; $789c: $b0
	dec d                                            ; $789d: $15
	dec bc                                           ; $789e: $0b
	pop hl                                           ; $789f: $e1
	ld [bc], a                                       ; $78a0: $02
	ld bc, $e01a                                     ; $78a1: $01 $1a $e0
	nop                                              ; $78a4: $00
	ld h, e                                          ; $78a5: $63
	push hl                                          ; $78a6: $e5
	ld d, $0b                                        ; $78a7: $16 $0b
	cp l                                             ; $78a9: $bd
	ld [bc], a                                       ; $78aa: $02
	or b                                             ; $78ab: $b0
	ld h, c                                          ; $78ac: $61
	dec bc                                           ; $78ad: $0b
	pop hl                                           ; $78ae: $e1
	ld [bc], a                                       ; $78af: $02
	ld bc, $e01a                                     ; $78b0: $01 $1a $e0
	nop                                              ; $78b3: $00
	ld d, h                                          ; $78b4: $54
	push hl                                          ; $78b5: $e5
	ld d, $0e                                        ; $78b6: $16 $0e
	or c                                             ; $78b8: $b1
	ld [bc], a                                       ; $78b9: $02
	or b                                             ; $78ba: $b0
	ld h, d                                          ; $78bb: $62
	dec bc                                           ; $78bc: $0b
	pop hl                                           ; $78bd: $e1
	ld [bc], a                                       ; $78be: $02
	ld bc, $e01a                                     ; $78bf: $01 $1a $e0
	nop                                              ; $78c2: $00
	ld b, l                                          ; $78c3: $45
	push hl                                          ; $78c4: $e5
	ld d, $11                                        ; $78c5: $16 $11
	rst SubAFromBC                                          ; $78c7: $e7
	ld [bc], a                                       ; $78c8: $02
	or b                                             ; $78c9: $b0
	ld h, e                                          ; $78ca: $63
	dec bc                                           ; $78cb: $0b
	pop hl                                           ; $78cc: $e1
	ld [bc], a                                       ; $78cd: $02
	ld bc, $e01a                                     ; $78ce: $01 $1a $e0
	nop                                              ; $78d1: $00
	ld [hl], $e5                                     ; $78d2: $36 $e5
	ld d, $14                                        ; $78d4: $16 $14
	sub l                                            ; $78d6: $95
	ld [bc], a                                       ; $78d7: $02
	or b                                             ; $78d8: $b0
	ld h, h                                          ; $78d9: $64
	dec bc                                           ; $78da: $0b
	pop hl                                           ; $78db: $e1
	ld [bc], a                                       ; $78dc: $02
	ld bc, $e01a                                     ; $78dd: $01 $1a $e0

Jump_07d_78e0:
	nop                                              ; $78e0: $00
	daa                                              ; $78e1: $27
	push hl                                          ; $78e2: $e5
	ld d, $16                                        ; $78e3: $16 $16
	dec c                                            ; $78e5: $0d
	ld [bc], a                                       ; $78e6: $02
	or b                                             ; $78e7: $b0
	ld h, l                                          ; $78e8: $65
	ld c, $c0                                        ; $78e9: $0e $c0
	and a                                            ; $78eb: $a7
	pop de                                           ; $78ec: $d1
	db $d3                                           ; $78ed: $d3
	pop de                                           ; $78ee: $d1
	ret nz                                           ; $78ef: $c0

	xor h                                            ; $78f0: $ac
	ldh [rP1], a                                     ; $78f1: $e0 $00
	dec d                                            ; $78f3: $15
	push hl                                          ; $78f4: $e5
	ld d, $17                                        ; $78f5: $16 $17
	ld h, l                                          ; $78f7: $65
	ld [bc], a                                       ; $78f8: $02
	or b                                             ; $78f9: $b0
	ld h, [hl]                                       ; $78fa: $66
	dec bc                                           ; $78fb: $0b
	pop hl                                           ; $78fc: $e1
	ld [bc], a                                       ; $78fd: $02
	ld bc, $e01a                                     ; $78fe: $01 $1a $e0
	nop                                              ; $7901: $00
	ld b, $e5                                        ; $7902: $06 $e5
	ld d, $19                                        ; $7904: $16 $19
	ld e, $c2                                        ; $7906: $1e $c2
	ld b, h                                          ; $7908: $44
	ld h, c                                          ; $7909: $61
	ld hl, sp-$40                                    ; $790a: $f8 $c0
	add e                                            ; $790c: $83
	sub $e0                                          ; $790d: $d6 $e0
	ld e, $3d                                        ; $790f: $1e $3d
	ret nz                                           ; $7911: $c0

	and l                                            ; $7912: $a5
	ret nz                                           ; $7913: $c0

	inc c                                            ; $7914: $0c
	ldh [$50], a                                     ; $7915: $e0 $50
	pop hl                                           ; $7917: $e1
	ld [bc], a                                       ; $7918: $02
	inc bc                                           ; $7919: $03
	rra                                              ; $791a: $1f
	ret nz                                           ; $791b: $c0

	ld bc, $03a0                                     ; $791c: $01 $a0 $03
	nop                                              ; $791f: $00
	ld bc, $5bc1                                     ; $7920: $01 $c1 $5b
	ret nz                                           ; $7923: $c0

	ld bc, $01a0                                     ; $7924: $01 $a0 $01
	nop                                              ; $7927: $00
	ld [bc], a                                       ; $7928: $02
	ret nz                                           ; $7929: $c0

	ld bc, $01a0                                     ; $792a: $01 $a0 $01
	nop                                              ; $792d: $00
	inc c                                            ; $792e: $0c
	ret nz                                           ; $792f: $c0

	ld bc, $01a0                                     ; $7930: $01 $a0 $01
	nop                                              ; $7933: $00
	jr @-$3e                                         ; $7934: $18 $c0

	dec h                                            ; $7936: $25
	pop de                                           ; $7937: $d1
	pop de                                           ; $7938: $d1
	ret nz                                           ; $7939: $c0

	inc h                                            ; $793a: $24
	pop de                                           ; $793b: $d1
	pop de                                           ; $793c: $d1
	ret nz                                           ; $793d: $c0

	inc hl                                           ; $793e: $23
	push de                                          ; $793f: $d5
	pop de                                           ; $7940: $d1
	pop bc                                           ; $7941: $c1
	ld c, h                                          ; $7942: $4c
	db $db                                           ; $7943: $db
	pop bc                                           ; $7944: $c1
	dec sp                                           ; $7945: $3b
	ld b, b                                          ; $7946: $40
	add b                                            ; $7947: $80

jr_07d_7948:
	nop                                              ; $7948: $00

jr_07d_7949:
	set 4, l                                         ; $7949: $cb $e5
	nop                                              ; $794b: $00
	jr nz, @-$26                                     ; $794c: $20 $d8

	db $fc                                           ; $794e: $fc
	ret nz                                           ; $794f: $c0

	dec de                                           ; $7950: $1b
	pop de                                           ; $7951: $d1
	push de                                          ; $7952: $d5

jr_07d_7953:
	dec e                                            ; $7953: $1d
	ret nz                                           ; $7954: $c0

	inc c                                            ; $7955: $0c
	ldh [$78], a                                     ; $7956: $e0 $78
	pop hl                                           ; $7958: $e1
	ld [bc], a                                       ; $7959: $02
	rlca                                             ; $795a: $07
	cp a                                             ; $795b: $bf
	ret nz                                           ; $795c: $c0

	ld bc, $01a0                                     ; $795d: $01 $a0 $01
	nop                                              ; $7960: $00
	ld e, $c0                                        ; $7961: $1e $c0
	ld bc, $01a0                                     ; $7963: $01 $a0 $01
	nop                                              ; $7966: $00
	ld h, $c1                                        ; $7967: $26 $c1
	ld c, h                                          ; $7969: $4c
	db $db                                           ; $796a: $db
	pop bc                                           ; $796b: $c1
	dec sp                                           ; $796c: $3b
	push hl                                          ; $796d: $e5
	nop                                              ; $796e: $00
	jr nz, jr_07d_7949                               ; $796f: $20 $d8

	xor h                                            ; $7971: $ac
	ret nz                                           ; $7972: $c0

	ld h, $e0                                        ; $7973: $26 $e0
	jr z, jr_07d_7948                                ; $7975: $28 $d1

	ld h, c                                          ; $7977: $61
	add b                                            ; $7978: $80
	nop                                              ; $7979: $00
	db $db                                           ; $797a: $db
	ld b, e                                          ; $797b: $43
	ret nz                                           ; $797c: $c0

	and l                                            ; $797d: $a5
	ret nz                                           ; $797e: $c0

	ld bc, $01a0                                     ; $797f: $01 $a0 $01
	nop                                              ; $7982: $00
	jr nc, @-$7c                                     ; $7983: $30 $82

	ret nz                                           ; $7985: $c0

	dec de                                           ; $7986: $1b
	pop de                                           ; $7987: $d1
	ld [bc], a                                       ; $7988: $02
	ret nc                                           ; $7989: $d0

	pop de                                           ; $798a: $d1
	inc c                                            ; $798b: $0c
	ret nz                                           ; $798c: $c0

	ld bc, $03a0                                     ; $798d: $01 $a0 $03
	nop                                              ; $7990: $00
	jr c, jr_07d_7953                                ; $7991: $38 $c0

	ld bc, $01a0                                     ; $7993: $01 $a0 $01
	nop                                              ; $7996: $00
	ld b, [hl]                                       ; $7997: $46
	ld [bc], a                                       ; $7998: $02
	jp nc, $0cd3                                     ; $7999: $d2 $d3 $0c

	ret nz                                           ; $799c: $c0

	ld bc, $03a0                                     ; $799d: $01 $a0 $03

jr_07d_79a0:
	nop                                              ; $79a0: $00
	ld c, d                                          ; $79a1: $4a
	ret nz                                           ; $79a2: $c0

	ld bc, $01a0                                     ; $79a3: $01 $a0 $01
	nop                                              ; $79a6: $00
	ld d, h                                          ; $79a7: $54
	ld bc, $0cd4                                     ; $79a8: $01 $d4 $0c
	ret nz                                           ; $79ab: $c0

	ld bc, $03a0                                     ; $79ac: $01 $a0 $03
	nop                                              ; $79af: $00
	ld e, b                                          ; $79b0: $58
	ret nz                                           ; $79b1: $c0

	ld bc, $01a0                                     ; $79b2: $01 $a0 $01
	nop                                              ; $79b5: $00
	ld e, [hl]                                       ; $79b6: $5e
	ret nz                                           ; $79b7: $c0

	inc hl                                           ; $79b8: $23
	ret c                                            ; $79b9: $d8

	pop de                                           ; $79ba: $d1
	ld b, b                                          ; $79bb: $40
	add b                                            ; $79bc: $80
	nop                                              ; $79bd: $00
	db $db                                           ; $79be: $db
	add b                                            ; $79bf: $80
	ld [bc], a                                       ; $79c0: $02
	dec l                                            ; $79c1: $2d
	inc bc                                           ; $79c2: $03
	ldh [rSB], a                                     ; $79c3: $e0 $01
	adc c                                            ; $79c5: $89
	ld c, [hl]                                       ; $79c6: $4e
	or b                                             ; $79c7: $b0
	call nc, $c040                                   ; $79c8: $d4 $40 $c0
	and l                                            ; $79cb: $a5
	ret nz                                           ; $79cc: $c0

	ld bc, $01a0                                     ; $79cd: $01 $a0 $01
	nop                                              ; $79d0: $00
	ld l, b                                          ; $79d1: $68
	add d                                            ; $79d2: $82
	ret nz                                           ; $79d3: $c0

	dec de                                           ; $79d4: $1b
	pop de                                           ; $79d5: $d1
	ld [bc], a                                       ; $79d6: $02
	ret nc                                           ; $79d7: $d0

	pop de                                           ; $79d8: $d1
	ld de, $b2c1                                     ; $79d9: $11 $c1 $b2
	db $e3                                           ; $79dc: $e3
	nop                                              ; $79dd: $00
	jr nc, jr_07d_79a0                               ; $79de: $30 $c0

	ld bc, $03a0                                     ; $79e0: $01 $a0 $03
	nop                                              ; $79e3: $00
	ld l, e                                          ; $79e4: $6b
	ret nz                                           ; $79e5: $c0

	ld bc, $01a0                                     ; $79e6: $01 $a0 $01
	nop                                              ; $79e9: $00
	ld [hl], h                                       ; $79ea: $74
	ld [bc], a                                       ; $79eb: $02
	jp nc, $0cd3                                     ; $79ec: $d2 $d3 $0c

	ret nz                                           ; $79ef: $c0

	ld bc, $03a0                                     ; $79f0: $01 $a0 $03
	nop                                              ; $79f3: $00
	ld [hl], a                                       ; $79f4: $77
	ret nz                                           ; $79f5: $c0

	ld bc, $01a0                                     ; $79f6: $01 $a0 $01
	nop                                              ; $79f9: $00
	ld a, [hl]                                       ; $79fa: $7e
	ld bc, $0cd4                                     ; $79fb: $01 $d4 $0c
	ret nz                                           ; $79fe: $c0

	ld bc, $03a0                                     ; $79ff: $01 $a0 $03
	nop                                              ; $7a02: $00
	add b                                            ; $7a03: $80
	ret nz                                           ; $7a04: $c0

	ld bc, $01a0                                     ; $7a05: $01 $a0 $01
	nop                                              ; $7a08: $00
	ld a, [hl]                                       ; $7a09: $7e
	rst $38                                          ; $7a0a: $ff
	add hl, bc                                       ; $7a0b: $09
	ret nz                                           ; $7a0c: $c0

	ld bc, $01a0                                     ; $7a0d: $01 $a0 $01
	nop                                              ; $7a10: $00

jr_07d_7a11:
	add a                                            ; $7a11: $87
	ldh [rSB], a                                     ; $7a12: $e0 $01
	ld a, [hl-]                                      ; $7a14: $3a
	pop hl                                           ; $7a15: $e1
	jr nc, jr_07d_7a18                               ; $7a16: $30 $00

jr_07d_7a18:
	nop                                              ; $7a18: $00
	pop bc                                           ; $7a19: $c1
	ld c, h                                          ; $7a1a: $4c
	pop de                                           ; $7a1b: $d1
	ret nz                                           ; $7a1c: $c0

	ld c, a                                          ; $7a1d: $4f
	ei                                               ; $7a1e: $fb
	cp $09                                           ; $7a1f: $fe $09
	db $fc                                           ; $7a21: $fc
	ret nz                                           ; $7a22: $c0

	ld h, l                                          ; $7a23: $65
	db $d3                                           ; $7a24: $d3
	db $fc                                           ; $7a25: $fc
	ret nz                                           ; $7a26: $c0

	ld h, [hl]                                       ; $7a27: $66
	ldh [$15], a                                     ; $7a28: $e0 $15
	inc c                                            ; $7a2a: $0c
	ret nz                                           ; $7a2b: $c0

	ld bc, $03a0                                     ; $7a2c: $01 $a0 $03
	nop                                              ; $7a2f: $00
	adc h                                            ; $7a30: $8c
	ret nz                                           ; $7a31: $c0

	ld bc, $01a0                                     ; $7a32: $01 $a0 $01
	nop                                              ; $7a35: $00
	sub e                                            ; $7a36: $93
	ei                                               ; $7a37: $fb
	cp $15                                           ; $7a38: $fe $15
	db $fc                                           ; $7a3a: $fc
	ret nz                                           ; $7a3b: $c0

	ld h, l                                          ; $7a3c: $65
	rst SubAFromHL                                          ; $7a3d: $d7
	rst $38                                          ; $7a3e: $ff
	rrca                                             ; $7a3f: $0f
	db $fc                                           ; $7a40: $fc
	ret nz                                           ; $7a41: $c0

	ld h, [hl]                                       ; $7a42: $66
	ldh [rAUD2HIGH], a                               ; $7a43: $e0 $19
	db $fc                                           ; $7a45: $fc
	ret nz                                           ; $7a46: $c0

	ld h, [hl]                                       ; $7a47: $66
	ldh [rAUD3ENA], a                                ; $7a48: $e0 $1a
	db $fc                                           ; $7a4a: $fc
	ret nz                                           ; $7a4b: $c0

	ld h, [hl]                                       ; $7a4c: $66
	ldh [rAUD3LEN], a                                ; $7a4d: $e0 $1b
	jr jr_07d_7a11                                   ; $7a4f: $18 $c0

	ld bc, $03a0                                     ; $7a51: $01 $a0 $03
	nop                                              ; $7a54: $00
	sbc l                                            ; $7a55: $9d
	ret nz                                           ; $7a56: $c0

	ld bc, $01a0                                     ; $7a57: $01 $a0 $01
	nop                                              ; $7a5a: $00
	and d                                            ; $7a5b: $a2
	ret nz                                           ; $7a5c: $c0

	ld bc, $03a0                                     ; $7a5d: $01 $a0 $03
	nop                                              ; $7a60: $00
	xor c                                            ; $7a61: $a9
	ret nz                                           ; $7a62: $c0

	ld bc, $01a0                                     ; $7a63: $01 $a0 $01
	nop                                              ; $7a66: $00
	or c                                             ; $7a67: $b1
	ei                                               ; $7a68: $fb
	cp $09                                           ; $7a69: $fe $09
	db $fc                                           ; $7a6b: $fc
	ret nz                                           ; $7a6c: $c0

	ld h, l                                          ; $7a6d: $65
	reti                                             ; $7a6e: $d9


	db $fc                                           ; $7a6f: $fc
	ret nz                                           ; $7a70: $c0

	ld h, [hl]                                       ; $7a71: $66
	ldh [rAUD2ENV], a                                ; $7a72: $e0 $17
	dec e                                            ; $7a74: $1d
	or b                                             ; $7a75: $b0
	ld a, a                                          ; $7a76: $7f
	inc c                                            ; $7a77: $0c
	ret nz                                           ; $7a78: $c0

	ld bc, $03a0                                     ; $7a79: $01 $a0 $03
	nop                                              ; $7a7c: $00
	or h                                             ; $7a7d: $b4
	ret nz                                           ; $7a7e: $c0

	ld bc, $01a0                                     ; $7a7f: $01 $a0 $01
	nop                                              ; $7a82: $00
	jp nz, $0cff                                     ; $7a83: $c2 $ff $0c

	ret nz                                           ; $7a86: $c0

	ld bc, $03a0                                     ; $7a87: $01 $a0 $03
	nop                                              ; $7a8a: $00
	jp z, $01c0                                      ; $7a8b: $ca $c0 $01

	and b                                            ; $7a8e: $a0
	ld bc, $d300                                     ; $7a8f: $01 $00 $d3
	ei                                               ; $7a92: $fb
	cp $10                                           ; $7a93: $fe $10
	add b                                            ; $7a95: $80
	nop                                              ; $7a96: $00
	adc $fc                                          ; $7a97: $ce $fc
	ret nz                                           ; $7a99: $c0

	ld h, h                                          ; $7a9a: $64
	ldh [$61], a                                     ; $7a9b: $e0 $61
	db $fc                                           ; $7a9d: $fc
	ret nz                                           ; $7a9e: $c0

	ld h, l                                          ; $7a9f: $65
	jp c, $c0fc                                      ; $7aa0: $da $fc $c0

	ld h, [hl]                                       ; $7aa3: $66
	push de                                          ; $7aa4: $d5
	scf                                              ; $7aa5: $37
	add d                                            ; $7aa6: $82
	ret nz                                           ; $7aa7: $c0

	dec de                                           ; $7aa8: $1b
	pop de                                           ; $7aa9: $d1
	ld [bc], a                                       ; $7aaa: $02
	ret nc                                           ; $7aab: $d0

	pop de                                           ; $7aac: $d1
	inc c                                            ; $7aad: $0c
	ret nz                                           ; $7aae: $c0

	ld bc, $03a0                                     ; $7aaf: $01 $a0 $03
	nop                                              ; $7ab2: $00
	jp c, $01c0                                      ; $7ab3: $da $c0 $01

	and b                                            ; $7ab6: $a0
	ld bc, $e300                                     ; $7ab7: $01 $00 $e3

jr_07d_7aba:
	ld [bc], a                                       ; $7aba: $02
	jp nc, $0cd3                                     ; $7abb: $d2 $d3 $0c

	ret nz                                           ; $7abe: $c0

	ld bc, $03a0                                     ; $7abf: $01 $a0 $03
	nop                                              ; $7ac2: $00
	add sp, -$40                                     ; $7ac3: $e8 $c0
	ld bc, $01a0                                     ; $7ac5: $01 $a0 $01
	nop                                              ; $7ac8: $00
	rst AddAOntoHL                                          ; $7ac9: $ef
	ld bc, $0cd4                                     ; $7aca: $01 $d4 $0c
	ret nz                                           ; $7acd: $c0

	ld bc, $03a0                                     ; $7ace: $01 $a0 $03
	nop                                              ; $7ad1: $00
	add sp, -$40                                     ; $7ad2: $e8 $c0
	ld bc, $01a0                                     ; $7ad4: $01 $a0 $01
	nop                                              ; $7ad7: $00
	rst AddAOntoHL                                          ; $7ad8: $ef
	ld b, b                                          ; $7ad9: $40
	add b                                            ; $7ada: $80
	nop                                              ; $7adb: $00
	adc $fb                                          ; $7adc: $ce $fb
	cp $10                                           ; $7ade: $fe $10
	add b                                            ; $7ae0: $80
	nop                                              ; $7ae1: $00
	rst GetHLinHL                                          ; $7ae2: $cf
	db $fc                                           ; $7ae3: $fc
	ret nz                                           ; $7ae4: $c0

	ld h, h                                          ; $7ae5: $64
	ldh [$62], a                                     ; $7ae6: $e0 $62
	db $fc                                           ; $7ae8: $fc
	ret nz                                           ; $7ae9: $c0

	ld h, l                                          ; $7aea: $65
	jp c, $c0fc                                      ; $7aeb: $da $fc $c0

	ld h, [hl]                                       ; $7aee: $66
	call nc, $8243                                   ; $7aef: $d4 $43 $82
	ret nz                                           ; $7af2: $c0

	dec de                                           ; $7af3: $1b
	pop de                                           ; $7af4: $d1
	ld [bc], a                                       ; $7af5: $02
	ret nc                                           ; $7af6: $d0

	pop de                                           ; $7af7: $d1
	jr jr_07d_7aba                                   ; $7af8: $18 $c0

	ld bc, $03a0                                     ; $7afa: $01 $a0 $03
	nop                                              ; $7afd: $00
	ld hl, sp-$40                                    ; $7afe: $f8 $c0
	ld bc, $01a0                                     ; $7b00: $01 $a0 $01
	ld bc, $c002                                     ; $7b03: $01 $02 $c0
	ld bc, $03a0                                     ; $7b06: $01 $a0 $03
	ld bc, $c007                                     ; $7b09: $01 $07 $c0
	ld bc, $01a0                                     ; $7b0c: $01 $a0 $01
	ld bc, $0209                                     ; $7b0f: $01 $09 $02
	jp nc, $0cd3                                     ; $7b12: $d2 $d3 $0c

	ret nz                                           ; $7b15: $c0

	ld bc, $03a0                                     ; $7b16: $01 $a0 $03
	ld bc, $c00d                                     ; $7b19: $01 $0d $c0
	ld bc, $01a0                                     ; $7b1c: $01 $a0 $01
	nop                                              ; $7b1f: $00
	db $e3                                           ; $7b20: $e3
	ld bc, $0cd4                                     ; $7b21: $01 $d4 $0c
	ret nz                                           ; $7b24: $c0

	ld bc, $03a0                                     ; $7b25: $01 $a0 $03
	ld bc, $c018                                     ; $7b28: $01 $18 $c0
	ld bc, $01a0                                     ; $7b2b: $01 $a0 $01
	nop                                              ; $7b2e: $00
	rst AddAOntoHL                                          ; $7b2f: $ef
	ld b, b                                          ; $7b30: $40
	add b                                            ; $7b31: $80
	nop                                              ; $7b32: $00
	rst GetHLinHL                                          ; $7b33: $cf
	ei                                               ; $7b34: $fb
	cp $09                                           ; $7b35: $fe $09
	db $fc                                           ; $7b37: $fc
	ret nz                                           ; $7b38: $c0

	ld h, l                                          ; $7b39: $65
	call c, $c0fc                                    ; $7b3a: $dc $fc $c0
	ld h, [hl]                                       ; $7b3d: $66
	ldh [rAUD2ENV], a                                ; $7b3e: $e0 $17
	inc c                                            ; $7b40: $0c
	ret nz                                           ; $7b41: $c0

	ld bc, $03a0                                     ; $7b42: $01 $a0 $03
	ld bc, $c01f                                     ; $7b45: $01 $1f $c0
	ld bc, $01a0                                     ; $7b48: $01 $a0 $01
	ld bc, $3125                                     ; $7b4b: $01 $25 $31
	ret nz                                           ; $7b4e: $c0

	inc c                                            ; $7b4f: $0c
	ldh [$3c], a                                     ; $7b50: $e0 $3c
	pop hl                                           ; $7b52: $e1
	ld [bc], a                                       ; $7b53: $02
	rlca                                             ; $7b54: $07
	cp a                                             ; $7b55: $bf
	ret nz                                           ; $7b56: $c0

	and l                                            ; $7b57: $a5
	add d                                            ; $7b58: $82
	ret nz                                           ; $7b59: $c0

	dec de                                           ; $7b5a: $1b
	pop de                                           ; $7b5b: $d1
	ld [bc], a                                       ; $7b5c: $02
	ret nc                                           ; $7b5d: $d0

	pop de                                           ; $7b5e: $d1
	ld b, $c0                                        ; $7b5f: $06 $c0
	ld bc, $03a0                                     ; $7b61: $01 $a0 $03
	ld bc, $022a                                     ; $7b64: $01 $2a $02
	jp nc, $06d3                                     ; $7b67: $d2 $d3 $06

	ret nz                                           ; $7b6a: $c0

	ld bc, $03a0                                     ; $7b6b: $01 $a0 $03
	ld bc, $0138                                     ; $7b6e: $01 $38 $01
	call nc, $c006                                   ; $7b71: $d4 $06 $c0
	ld bc, $03a0                                     ; $7b74: $01 $a0 $03
	ld bc, $c044                                     ; $7b77: $01 $44 $c0
	ld bc, $01a0                                     ; $7b7a: $01 $a0 $01
	ld bc, $e64a                                     ; $7b7d: $01 $4a $e6
	inc b                                            ; $7b80: $04
	add hl, bc                                       ; $7b81: $09
	inc h                                            ; $7b82: $24
	add d                                            ; $7b83: $82
	ret nz                                           ; $7b84: $c0

	dec de                                           ; $7b85: $1b
	pop de                                           ; $7b86: $d1
	ld [bc], a                                       ; $7b87: $02
	ret nc                                           ; $7b88: $d0

	pop de                                           ; $7b89: $d1
	ld b, $c0                                        ; $7b8a: $06 $c0
	ld bc, $03a0                                     ; $7b8c: $01 $a0 $03
	nop                                              ; $7b8f: $00
	ld bc, $d202                                     ; $7b90: $01 $02 $d2
	db $d3                                           ; $7b93: $d3
	ld b, $c0                                        ; $7b94: $06 $c0
	ld bc, $03a0                                     ; $7b96: $01 $a0 $03
	nop                                              ; $7b99: $00
	ld a, [bc]                                       ; $7b9a: $0a
	ld bc, $06d4                                     ; $7b9b: $01 $d4 $06
	ret nz                                           ; $7b9e: $c0

	ld bc, $03a0                                     ; $7b9f: $01 $a0 $03
	nop                                              ; $7ba2: $00
	inc de                                           ; $7ba3: $13
	db $e4                                           ; $7ba4: $e4
	nop                                              ; $7ba5: $00
	ld [bc], a                                       ; $7ba6: $02
	jr z, jr_07d_7baf                                ; $7ba7: $28 $06

	ret nz                                           ; $7ba9: $c0

	ld bc, $01a0                                     ; $7baa: $01 $a0 $01
	nop                                              ; $7bad: $00
	inc e                                            ; $7bae: $1c

jr_07d_7baf:
	ld h, b                                          ; $7baf: $60
	nop                                              ; $7bb0: $00
	ld hl, $5209                                     ; $7bb1: $21 $09 $52
	add e                                            ; $7bb4: $83
	ret nz                                           ; $7bb5: $c0

	ld h, l                                          ; $7bb6: $65
	ld bc, $0fdc                                     ; $7bb7: $01 $dc $0f
	add c                                            ; $7bba: $81
	ret nz                                           ; $7bbb: $c0

	ld h, [hl]                                       ; $7bbc: $66
	ld [bc], a                                       ; $7bbd: $02
	pop de                                           ; $7bbe: $d1
	jp nc, $e003                                     ; $7bbf: $d2 $03 $e0

	nop                                              ; $7bc2: $00
	ld h, e                                          ; $7bc3: $63
	nop                                              ; $7bc4: $00
	inc bc                                           ; $7bc5: $03
	ldh [rP1], a                                     ; $7bc6: $e0 $00
	ld c, c                                          ; $7bc8: $49
	ld bc, $03d1                                     ; $7bc9: $01 $d1 $03
	ldh [rP1], a                                     ; $7bcc: $e0 $00
	ld b, e                                          ; $7bce: $43
	ld bc, $0fd2                                     ; $7bcf: $01 $d2 $0f
	add c                                            ; $7bd2: $81
	ret nz                                           ; $7bd3: $c0

	ld h, [hl]                                       ; $7bd4: $66
	ld [bc], a                                       ; $7bd5: $02
	pop de                                           ; $7bd6: $d1
	jp nc, $e003                                     ; $7bd7: $d2 $03 $e0

	nop                                              ; $7bda: $00
	ld [hl], $00                                     ; $7bdb: $36 $00
	inc bc                                           ; $7bdd: $03
	ldh [rP1], a                                     ; $7bde: $e0 $00
	ld b, [hl]                                       ; $7be0: $46
	nop                                              ; $7be1: $00
	jr nz, @+$62                                     ; $7be2: $20 $60

	add b                                            ; $7be4: $80
	ld [bc], a                                       ; $7be5: $02
	ld e, c                                          ; $7be6: $59
	inc bc                                           ; $7be7: $03
	ldh [rP1], a                                     ; $7be8: $e0 $00
	ld [hl], l                                       ; $7bea: $75
	rla                                              ; $7beb: $17
	ld h, b                                          ; $7bec: $60
	cp $0c                                           ; $7bed: $fe $0c
	ei                                               ; $7bef: $fb
	ret nz                                           ; $7bf0: $c0

	dec d                                            ; $7bf1: $15
	pop de                                           ; $7bf2: $d1
	ldh [$50], a                                     ; $7bf3: $e0 $50
	ei                                               ; $7bf5: $fb
	ret nz                                           ; $7bf6: $c0

	ld d, $d1                                        ; $7bf7: $16 $d1
	ldh [$5a], a                                     ; $7bf9: $e0 $5a
	inc bc                                           ; $7bfb: $03
	ldh [rP1], a                                     ; $7bfc: $e0 $00
	ld l, b                                          ; $7bfe: $68
	inc bc                                           ; $7bff: $03
	ldh [rP1], a                                     ; $7c00: $e0 $00
	inc h                                            ; $7c02: $24
	db $e4                                           ; $7c03: $e4
	nop                                              ; $7c04: $00
	sbc e                                            ; $7c05: $9b
	nop                                              ; $7c06: $00
	inc hl                                           ; $7c07: $23
	add hl, bc                                       ; $7c08: $09
	ld b, $e0                                        ; $7c09: $06 $e0
	nop                                              ; $7c0b: $00
	ld h, c                                          ; $7c0c: $61
	db $e4                                           ; $7c0d: $e4
	nop                                              ; $7c0e: $00
	sub c                                            ; $7c0f: $91
	inc d                                            ; $7c10: $14
	ld h, b                                          ; $7c11: $60
	add b                                            ; $7c12: $80
	ld [bc], a                                       ; $7c13: $02
	ld e, c                                          ; $7c14: $59
	dec bc                                           ; $7c15: $0b
	or b                                             ; $7c16: $b0
	ld a, a                                          ; $7c17: $7f
	inc bc                                           ; $7c18: $03
	ldh [rP1], a                                     ; $7c19: $e0 $00
	dec h                                            ; $7c1b: $25
	rst $38                                          ; $7c1c: $ff
	inc bc                                           ; $7c1d: $03
	ldh [rP1], a                                     ; $7c1e: $e0 $00
	ccf                                              ; $7c20: $3f
	inc bc                                           ; $7c21: $03
	ldh [rP1], a                                     ; $7c22: $e0 $00
	inc e                                            ; $7c24: $1c
	add hl, de                                       ; $7c25: $19
	or c                                             ; $7c26: $b1
	ld d, h                                          ; $7c27: $54
	ld b, $c0                                        ; $7c28: $06 $c0
	ld bc, $01a0                                     ; $7c2a: $01 $a0 $01
	nop                                              ; $7c2d: $00
	dec h                                            ; $7c2e: $25
	xor d                                            ; $7c2f: $aa
	ld b, $c0                                        ; $7c30: $06 $c0
	ld bc, $01a0                                     ; $7c32: $01 $a0 $01
	nop                                              ; $7c35: $00
	inc l                                            ; $7c36: $2c
	rst $38                                          ; $7c37: $ff
	ld b, $c0                                        ; $7c38: $06 $c0
	ld bc, $01a0                                     ; $7c3a: $01 $a0 $01
	nop                                              ; $7c3d: $00
	inc sp                                           ; $7c3e: $33
	ld e, $82                                        ; $7c3f: $1e $82
	ret nz                                           ; $7c41: $c0

	add b                                            ; $7c42: $80
	ld bc, $06d3                                     ; $7c43: $01 $d3 $06
	ret nz                                           ; $7c46: $c0

	ld bc, $01a0                                     ; $7c47: $01 $a0 $01
	nop                                              ; $7c4a: $00
	dec sp                                           ; $7c4b: $3b
	ld bc, $06d2                                     ; $7c4c: $01 $d2 $06
	ret nz                                           ; $7c4f: $c0

	ld bc, $01a0                                     ; $7c50: $01 $a0 $01
	nop                                              ; $7c53: $00
	ld b, a                                          ; $7c54: $47
	ld bc, $06d1                                     ; $7c55: $01 $d1 $06
	ret nz                                           ; $7c58: $c0

	ld bc, $01a0                                     ; $7c59: $01 $a0 $01
	nop                                              ; $7c5c: $00
	ld d, e                                          ; $7c5d: $53
	ld b, $c0                                        ; $7c5e: $06 $c0
	ld bc, $01a0                                     ; $7c60: $01 $a0 $01
	nop                                              ; $7c63: $00
	ld e, [hl]                                       ; $7c64: $5e
	ld b, $c0                                        ; $7c65: $06 $c0
	ld bc, $01a0                                     ; $7c67: $01 $a0 $01
	nop                                              ; $7c6a: $00
	ld l, h                                          ; $7c6b: $6c
	ld [hl-], a                                      ; $7c6c: $32
	rst $38                                          ; $7c6d: $ff
	jr nc, jr_07d_7c9a                               ; $7c6e: $30 $2a

	ld b, $c0                                        ; $7c70: $06 $c0
	ld bc, $01a0                                     ; $7c72: $01 $a0 $01
	nop                                              ; $7c75: $00
	add d                                            ; $7c76: $82
	ld d, h                                          ; $7c77: $54
	ld b, $c0                                        ; $7c78: $06 $c0
	ld bc, $01a0                                     ; $7c7a: $01 $a0 $01
	nop                                              ; $7c7d: $00
	adc l                                            ; $7c7e: $8d
	ld a, a                                          ; $7c7f: $7f
	ld b, $c0                                        ; $7c80: $06 $c0
	ld bc, $01a0                                     ; $7c82: $01 $a0 $01
	nop                                              ; $7c85: $00
	sbc d                                            ; $7c86: $9a
	xor d                                            ; $7c87: $aa
	ld b, $c0                                        ; $7c88: $06 $c0
	ld bc, $01a0                                     ; $7c8a: $01 $a0 $01
	nop                                              ; $7c8d: $00
	sbc a                                            ; $7c8e: $9f
	call nc, $c006                                   ; $7c8f: $d4 $06 $c0
	ld bc, $01a0                                     ; $7c92: $01 $a0 $01
	nop                                              ; $7c95: $00
	and l                                            ; $7c96: $a5
	rst $38                                          ; $7c97: $ff
	ld b, $c0                                        ; $7c98: $06 $c0

jr_07d_7c9a:
	ld bc, $01a0                                     ; $7c9a: $01 $a0 $01
	nop                                              ; $7c9d: $00
	xor h                                            ; $7c9e: $ac
	add hl, bc                                       ; $7c9f: $09
	ld c, $d0                                        ; $7ca0: $0e $d0
	add d                                            ; $7ca2: $82
	ld bc, $d3c9                                     ; $7ca3: $01 $c9 $d3
	ret nz                                           ; $7ca6: $c0

	ld d, [hl]                                       ; $7ca7: $56
	pop de                                           ; $7ca8: $d1
	ret nc                                           ; $7ca9: $d0

	ret nc                                           ; $7caa: $d0

	push hl                                          ; $7cab: $e5
	rla                                              ; $7cac: $17
	nop                                              ; $7cad: $00
	nop                                              ; $7cae: $00
	add hl, bc                                       ; $7caf: $09
	ld d, d                                          ; $7cb0: $52
	add c                                            ; $7cb1: $81
	ret nz                                           ; $7cb2: $c0

	ld h, l                                          ; $7cb3: $65
	ld [bc], a                                       ; $7cb4: $02
	db $d3                                           ; $7cb5: $d3
	call nc, $d01a                                   ; $7cb6: $d4 $1a $d0
	add e                                            ; $7cb9: $83
	ld bc, $d1de                                     ; $7cba: $01 $de $d1
	ret nz                                           ; $7cbd: $c0

	ld bc, $03a0                                     ; $7cbe: $01 $a0 $03
	nop                                              ; $7cc1: $00
	or l                                             ; $7cc2: $b5
	ret nz                                           ; $7cc3: $c0

	ld bc, $01a0                                     ; $7cc4: $01 $a0 $01
	nop                                              ; $7cc7: $00
	cp l                                             ; $7cc8: $bd
	ret nz                                           ; $7cc9: $c0

	ld bc, $03a0                                     ; $7cca: $01 $a0 $03
	nop                                              ; $7ccd: $00
	cp a                                             ; $7cce: $bf
	db $e4                                           ; $7ccf: $e4
	ld bc, $008b                                     ; $7cd0: $01 $8b $00
	cpl                                              ; $7cd3: $2f
	ret nc                                           ; $7cd4: $d0

	add e                                            ; $7cd5: $83
	ld bc, $d0de                                     ; $7cd6: $01 $de $d0
	ret nz                                           ; $7cd9: $c0

	ld bc, $03a0                                     ; $7cda: $01 $a0 $03
	nop                                              ; $7cdd: $00
	call nz, $80a0                                   ; $7cde: $c4 $a0 $80
	and b                                            ; $7ce1: $a0
	nop                                              ; $7ce2: $00
	nop                                              ; $7ce3: $00
	rrca                                             ; $7ce4: $0f
	ret nz                                           ; $7ce5: $c0

	ld bc, $01a0                                     ; $7ce6: $01 $a0 $01
	nop                                              ; $7ce9: $00
	jp nc, $01c0                                     ; $7cea: $d2 $c0 $01

	and b                                            ; $7ced: $a0
	inc bc                                           ; $7cee: $03
	nop                                              ; $7cef: $00
	rst SubAFromHL                                          ; $7cf0: $d7
	db $e4                                           ; $7cf1: $e4
	nop                                              ; $7cf2: $00
	ld de, $0dff                                     ; $7cf3: $11 $ff $0d
	ret nz                                           ; $7cf6: $c0

	ld bc, $01a0                                     ; $7cf7: $01 $a0 $01
	nop                                              ; $7cfa: $00
	reti                                             ; $7cfb: $d9


	ld b, b                                          ; $7cfc: $40
	add b                                            ; $7cfd: $80
	and b                                            ; $7cfe: $a0
	nop                                              ; $7cff: $00
	db $e4                                           ; $7d00: $e4
	nop                                              ; $7d01: $00
	xor [hl]                                         ; $7d02: $ae
	jr z, @+$1b                                      ; $7d03: $28 $19

	pop hl                                           ; $7d05: $e1
	ld [bc], a                                       ; $7d06: $02
	dec b                                            ; $7d07: $05
	dec b                                            ; $7d08: $05
	add c                                            ; $7d09: $81
	ret nz                                           ; $7d0a: $c0

	ld h, l                                          ; $7d0b: $65
	ld [bc], a                                       ; $7d0c: $02
	rst SubAFromHL                                          ; $7d0d: $d7
	ret c                                            ; $7d0e: $d8

	ld b, $c0                                        ; $7d0f: $06 $c0
	ld bc, $03a0                                     ; $7d11: $01 $a0 $03
	nop                                              ; $7d14: $00
	sbc $00                                          ; $7d15: $de $00
	ld b, $c0                                        ; $7d17: $06 $c0
	ld bc, $03a0                                     ; $7d19: $01 $a0 $03
	nop                                              ; $7d1c: $00
	ld [$0090], a                                    ; $7d1d: $ea $90 $00
	push af                                          ; $7d20: $f5
	add hl, bc                                       ; $7d21: $09
	inc l                                            ; $7d22: $2c
	pop hl                                           ; $7d23: $e1
	ld [bc], a                                       ; $7d24: $02
	inc bc                                           ; $7d25: $03
	rrca                                             ; $7d26: $0f
	add d                                            ; $7d27: $82
	ret nz                                           ; $7d28: $c0

	dec de                                           ; $7d29: $1b
	pop de                                           ; $7d2a: $d1
	ld [bc], a                                       ; $7d2b: $02
	ret nc                                           ; $7d2c: $d0

	pop de                                           ; $7d2d: $d1
	ld b, $c0                                        ; $7d2e: $06 $c0
	ld bc, $03a0                                     ; $7d30: $01 $a0 $03
	nop                                              ; $7d33: $00
	rst FarCall                                          ; $7d34: $f7
	ld [bc], a                                       ; $7d35: $02
	jp nc, $06d3                                     ; $7d36: $d2 $d3 $06

	ret nz                                           ; $7d39: $c0

	ld bc, $03a0                                     ; $7d3a: $01 $a0 $03
	ld bc, $0103                                     ; $7d3d: $01 $03 $01
	call nc, $c006                                   ; $7d40: $d4 $06 $c0
	ld bc, $03a0                                     ; $7d43: $01 $a0 $03
	ld bc, $e10e                                     ; $7d46: $01 $0e $e1
	ld [bc], a                                       ; $7d49: $02
	inc bc                                           ; $7d4a: $03
	ld e, d                                          ; $7d4b: $5a
	db $e4                                           ; $7d4c: $e4
	ld bc, $01b4                                     ; $7d4d: $01 $b4 $01
	inc de                                           ; $7d50: $13
	add hl, bc                                       ; $7d51: $09
	inc l                                            ; $7d52: $2c
	pop hl                                           ; $7d53: $e1
	ld [bc], a                                       ; $7d54: $02
	inc bc                                           ; $7d55: $03
	dec de                                           ; $7d56: $1b
	add d                                            ; $7d57: $82
	ret nz                                           ; $7d58: $c0

	dec de                                           ; $7d59: $1b
	pop de                                           ; $7d5a: $d1
	ld [bc], a                                       ; $7d5b: $02
	ret nc                                           ; $7d5c: $d0

	pop de                                           ; $7d5d: $d1
	ld b, $c0                                        ; $7d5e: $06 $c0
	ld bc, $03a0                                     ; $7d60: $01 $a0 $03
	ld bc, $0215                                     ; $7d63: $01 $15 $02
	jp nc, $06d3                                     ; $7d66: $d2 $d3 $06

	ret nz                                           ; $7d69: $c0

	ld bc, $03a0                                     ; $7d6a: $01 $a0 $03
	ld bc, $0122                                     ; $7d6d: $01 $22 $01
	call nc, $c006                                   ; $7d70: $d4 $06 $c0
	ld bc, $03a0                                     ; $7d73: $01 $a0 $03
	ld bc, $e12a                                     ; $7d76: $01 $2a $e1
	ld [bc], a                                       ; $7d79: $02
	inc bc                                           ; $7d7a: $03
	ld [hl], l                                       ; $7d7b: $75
	db $e4                                           ; $7d7c: $e4
	ld bc, $0184                                     ; $7d7d: $01 $84 $01
	dec l                                            ; $7d80: $2d
	add hl, bc                                       ; $7d81: $09
	inc l                                            ; $7d82: $2c
	pop hl                                           ; $7d83: $e1
	ld [bc], a                                       ; $7d84: $02
	inc bc                                           ; $7d85: $03
	rla                                              ; $7d86: $17
	add d                                            ; $7d87: $82
	ret nz                                           ; $7d88: $c0

	dec de                                           ; $7d89: $1b
	pop de                                           ; $7d8a: $d1
	ld [bc], a                                       ; $7d8b: $02
	ret nc                                           ; $7d8c: $d0

	pop de                                           ; $7d8d: $d1
	ld b, $c0                                        ; $7d8e: $06 $c0
	ld bc, $03a0                                     ; $7d90: $01 $a0 $03
	ld bc, $022f                                     ; $7d93: $01 $2f $02
	jp nc, $06d3                                     ; $7d96: $d2 $d3 $06

	ret nz                                           ; $7d99: $c0

	ld bc, $03a0                                     ; $7d9a: $01 $a0 $03
	ld bc, $013f                    ; $7d9d: $01 $3f $01
	call nc, $c006                                   ; $7da0: $d4 $06 $c0
	ld bc, $03a0                                     ; $7da3: $01 $a0 $03
	ld bc, $e14b                                     ; $7da6: $01 $4b $e1
	ld [bc], a                                       ; $7da9: $02
	inc bc                                           ; $7daa: $03
	ld l, h                                          ; $7dab: $6c
	db $e4                                           ; $7dac: $e4
	ld bc, $2854                                     ; $7dad: $01 $54 $28
	add hl, de                                       ; $7db0: $19
	pop hl                                           ; $7db1: $e1
	ld [bc], a                                       ; $7db2: $02
	dec b                                            ; $7db3: $05
	rla                                              ; $7db4: $17
	add c                                            ; $7db5: $81
	ret nz                                           ; $7db6: $c0

	ld h, l                                          ; $7db7: $65
	ld [bc], a                                       ; $7db8: $02
	rst SubAFromHL                                          ; $7db9: $d7
	ret c                                            ; $7dba: $d8

	ld b, $c0                                        ; $7dbb: $06 $c0
	ld bc, $03a0                                     ; $7dbd: $01 $a0 $03
	ld bc, $0056                                     ; $7dc0: $01 $56 $00
	ld b, $c0                                        ; $7dc3: $06 $c0
	ld bc, $03a0                                     ; $7dc5: $01 $a0 $03
	ld bc, $9060                                     ; $7dc8: $01 $60 $90
	ld bc, $096a                                     ; $7dcb: $01 $6a $09
	inc l                                            ; $7dce: $2c
	pop hl                                           ; $7dcf: $e1
	ld [bc], a                                       ; $7dd0: $02
	inc bc                                           ; $7dd1: $03
	inc de                                           ; $7dd2: $13
	add d                                            ; $7dd3: $82
	ret nz                                           ; $7dd4: $c0

	dec de                                           ; $7dd5: $1b
	pop de                                           ; $7dd6: $d1
	ld [bc], a                                       ; $7dd7: $02
	ret nc                                           ; $7dd8: $d0

	pop de                                           ; $7dd9: $d1
	ld b, $c0                                        ; $7dda: $06 $c0
	ld bc, $03a0                                     ; $7ddc: $01 $a0 $03
	ld bc, $026c                                     ; $7ddf: $01 $6c $02
	jp nc, $06d3                                     ; $7de2: $d2 $d3 $06

	ret nz                                           ; $7de5: $c0

	ld bc, $03a0                                     ; $7de6: $01 $a0 $03
	ld bc, $017d                                     ; $7de9: $01 $7d $01
	call nc, $c006                                   ; $7dec: $d4 $06 $c0
	ld bc, $03a0                                     ; $7def: $01 $a0 $03
	ld bc, $e186                                     ; $7df2: $01 $86 $e1
	ld [bc], a                                       ; $7df5: $02
	inc bc                                           ; $7df6: $03
	ld e, d                                          ; $7df7: $5a
	db $e4                                           ; $7df8: $e4
	ld bc, $0108                                     ; $7df9: $01 $08 $01
	adc l                                            ; $7dfc: $8d
	add hl, bc                                       ; $7dfd: $09
	inc l                                            ; $7dfe: $2c
	pop hl                                           ; $7dff: $e1
	ld [bc], a                                       ; $7e00: $02
	inc bc                                           ; $7e01: $03
	dec de                                           ; $7e02: $1b
	add d                                            ; $7e03: $82
	ret nz                                           ; $7e04: $c0

	dec de                                           ; $7e05: $1b
	pop de                                           ; $7e06: $d1
	ld [bc], a                                       ; $7e07: $02
	ret nc                                           ; $7e08: $d0

	pop de                                           ; $7e09: $d1
	ld b, $c0                                        ; $7e0a: $06 $c0
	ld bc, $03a0                                     ; $7e0c: $01 $a0 $03
	ld bc, $028f                                     ; $7e0f: $01 $8f $02
	jp nc, $06d3                                     ; $7e12: $d2 $d3 $06

	ret nz                                           ; $7e15: $c0

	ld bc, $03a0                                     ; $7e16: $01 $a0 $03
	ld bc, $019b                                     ; $7e19: $01 $9b $01
	call nc, $c006                                   ; $7e1c: $d4 $06 $c0
	ld bc, $03a0                                     ; $7e1f: $01 $a0 $03
	ld bc, $e1a7                                     ; $7e22: $01 $a7 $e1
	ld [bc], a                                       ; $7e25: $02
	inc bc                                           ; $7e26: $03
	ld [hl], l                                       ; $7e27: $75
	db $e4                                           ; $7e28: $e4
	nop                                              ; $7e29: $00
	ret c                                            ; $7e2a: $d8

	ld bc, $09b2                                     ; $7e2b: $01 $b2 $09
	inc l                                            ; $7e2e: $2c
	pop hl                                           ; $7e2f: $e1
	ld [bc], a                                       ; $7e30: $02
	inc bc                                           ; $7e31: $03
	inc de                                           ; $7e32: $13
	add d                                            ; $7e33: $82
	ret nz                                           ; $7e34: $c0

	dec de                                           ; $7e35: $1b
	pop de                                           ; $7e36: $d1
	ld [bc], a                                       ; $7e37: $02
	ret nc                                           ; $7e38: $d0

	pop de                                           ; $7e39: $d1
	ld b, $c0                                        ; $7e3a: $06 $c0
	ld bc, $03a0                                     ; $7e3c: $01 $a0 $03
	ld bc, $02b6                                     ; $7e3f: $01 $b6 $02
	jp nc, $06d3                                     ; $7e42: $d2 $d3 $06

	ret nz                                           ; $7e45: $c0

	ld bc, $03a0                                     ; $7e46: $01 $a0 $03
	ld bc, $01c2                                     ; $7e49: $01 $c2 $01
	call nc, $c006                                   ; $7e4c: $d4 $06 $c0
	ld bc, $03a0                                     ; $7e4f: $01 $a0 $03
	ld bc, $e1d0                                     ; $7e52: $01 $d0 $e1
	ld [bc], a                                       ; $7e55: $02
	inc bc                                           ; $7e56: $03
	ld h, e                                          ; $7e57: $63
	db $e4                                           ; $7e58: $e4
	nop                                              ; $7e59: $00
	xor b                                            ; $7e5a: $a8
	jr z, @+$0d                                      ; $7e5b: $28 $0b

	pop bc                                           ; $7e5d: $c1
	ld e, c                                          ; $7e5e: $59
	db $e3                                           ; $7e5f: $e3
	nop                                              ; $7e60: $00
	add h                                            ; $7e61: $84
	ret nz                                           ; $7e62: $c0

	ld bc, $03a0                                     ; $7e63: $01 $a0 $03
	ld bc, $98d6                                     ; $7e66: $01 $d6 $98
	ld bc, $09e7                                     ; $7e69: $01 $e7 $09
	inc l                                            ; $7e6c: $2c
	pop hl                                           ; $7e6d: $e1
	ld [bc], a                                       ; $7e6e: $02
	inc bc                                           ; $7e6f: $03
	inc de                                           ; $7e70: $13
	add d                                            ; $7e71: $82
	ret nz                                           ; $7e72: $c0

	dec de                                           ; $7e73: $1b
	pop de                                           ; $7e74: $d1
	ld [bc], a                                       ; $7e75: $02
	ret nc                                           ; $7e76: $d0

	pop de                                           ; $7e77: $d1
	ld b, $c0                                        ; $7e78: $06 $c0
	ld bc, $03a0                                     ; $7e7a: $01 $a0 $03
	ld bc, $02e9                                     ; $7e7d: $01 $e9 $02
	jp nc, $06d3                                     ; $7e80: $d2 $d3 $06

	ret nz                                           ; $7e83: $c0

	ld bc, $03a0                                     ; $7e84: $01 $a0 $03
	ld bc, $01f7                                     ; $7e87: $01 $f7 $01
	call nc, $c006                                   ; $7e8a: $d4 $06 $c0
	ld bc, $03a0                                     ; $7e8d: $01 $a0 $03
	ld [bc], a                                       ; $7e90: $02
	inc bc                                           ; $7e91: $03
	pop hl                                           ; $7e92: $e1
	ld [bc], a                                       ; $7e93: $02
	inc bc                                           ; $7e94: $03
	ld h, e                                          ; $7e95: $63
	db $e4                                           ; $7e96: $e4
	nop                                              ; $7e97: $00
	ld l, d                                          ; $7e98: $6a
	ld [bc], a                                       ; $7e99: $02
	inc c                                            ; $7e9a: $0c
	add hl, bc                                       ; $7e9b: $09
	inc [hl]                                         ; $7e9c: $34
	add d                                            ; $7e9d: $82
	ret nz                                           ; $7e9e: $c0

	dec de                                           ; $7e9f: $1b
	pop de                                           ; $7ea0: $d1
	ld [bc], a                                       ; $7ea1: $02
	ret nc                                           ; $7ea2: $d0

	pop de                                           ; $7ea3: $d1
	ld a, [bc]                                       ; $7ea4: $0a
	pop hl                                           ; $7ea5: $e1
	ld [bc], a                                       ; $7ea6: $02
	inc bc                                           ; $7ea7: $03
	dec de                                           ; $7ea8: $1b
	ret nz                                           ; $7ea9: $c0

	ld bc, $03a0                                     ; $7eaa: $01 $a0 $03
	ld [bc], a                                       ; $7ead: $02
	ld c, $02                                        ; $7eae: $0e $02
	jp nc, $0ad3                                     ; $7eb0: $d2 $d3 $0a

	pop hl                                           ; $7eb3: $e1
	ld [bc], a                                       ; $7eb4: $02
	inc bc                                           ; $7eb5: $03
	dec de                                           ; $7eb6: $1b
	ret nz                                           ; $7eb7: $c0

	ld bc, $03a0                                     ; $7eb8: $01 $a0 $03
	ld [bc], a                                       ; $7ebb: $02
	ld e, $01                                        ; $7ebc: $1e $01
	call nc, $e10a                                   ; $7ebe: $d4 $0a $e1
	ld [bc], a                                       ; $7ec1: $02
	inc bc                                           ; $7ec2: $03
	rra                                              ; $7ec3: $1f
	ret nz                                           ; $7ec4: $c0

	ld bc, $03a0                                     ; $7ec5: $01 $a0 $03
	ld [bc], a                                       ; $7ec8: $02
	inc l                                            ; $7ec9: $2c
	pop hl                                           ; $7eca: $e1
	ld [bc], a                                       ; $7ecb: $02
	inc bc                                           ; $7ecc: $03
	ld a, [hl]                                       ; $7ecd: $7e
	db $e4                                           ; $7ece: $e4
	nop                                              ; $7ecf: $00
	ld [hl-], a                                      ; $7ed0: $32
	ld [bc], a                                       ; $7ed1: $02
	scf                                              ; $7ed2: $37
	add hl, bc                                       ; $7ed3: $09
	inc l                                            ; $7ed4: $2c
	pop hl                                           ; $7ed5: $e1
	ld [bc], a                                       ; $7ed6: $02
	inc bc                                           ; $7ed7: $03
	rla                                              ; $7ed8: $17
	add d                                            ; $7ed9: $82
	ret nz                                           ; $7eda: $c0

	dec de                                           ; $7edb: $1b
	pop de                                           ; $7edc: $d1
	ld [bc], a                                       ; $7edd: $02
	ret nc                                           ; $7ede: $d0

	pop de                                           ; $7edf: $d1
	ld b, $c0                                        ; $7ee0: $06 $c0
	ld bc, $03a0                                     ; $7ee2: $01 $a0 $03
	ld [bc], a                                       ; $7ee5: $02
	add hl, sp                                       ; $7ee6: $39
	ld [bc], a                                       ; $7ee7: $02
	jp nc, $06d3                                     ; $7ee8: $d2 $d3 $06

	ret nz                                           ; $7eeb: $c0

	ld bc, $03a0                                     ; $7eec: $01 $a0 $03
	ld [bc], a                                       ; $7eef: $02
	ld b, a                                          ; $7ef0: $47
	ld bc, $06d4                                     ; $7ef1: $01 $d4 $06
	ret nz                                           ; $7ef4: $c0

	ld bc, $03a0                                     ; $7ef5: $01 $a0 $03
	ld [bc], a                                       ; $7ef8: $02
	ld d, l                                          ; $7ef9: $55
	pop hl                                           ; $7efa: $e1
	ld [bc], a                                       ; $7efb: $02
	inc bc                                           ; $7efc: $03
	ld l, h                                          ; $7efd: $6c
	db $e4                                           ; $7efe: $e4
	nop                                              ; $7eff: $00
	ld [bc], a                                       ; $7f00: $02
	add hl, bc                                       ; $7f01: $09
	dec de                                           ; $7f02: $1b
	pop hl                                           ; $7f03: $e1
	ld [bc], a                                       ; $7f04: $02
	dec b                                            ; $7f05: $05
	add hl, hl                                       ; $7f06: $29
	add c                                            ; $7f07: $81
	ret nz                                           ; $7f08: $c0

	ld h, l                                          ; $7f09: $65
	ld [bc], a                                       ; $7f0a: $02
	db $d3                                           ; $7f0b: $d3
	call nc, $c005                                   ; $7f0c: $d4 $05 $c0
	ld d, [hl]                                       ; $7f0f: $56
	pop de                                           ; $7f10: $d1
	pop de                                           ; $7f11: $d1
	pop de                                           ; $7f12: $d1
	nop                                              ; $7f13: $00
	dec b                                            ; $7f14: $05
	ret nz                                           ; $7f15: $c0

	ld d, [hl]                                       ; $7f16: $56
	pop de                                           ; $7f17: $d1
	pop de                                           ; $7f18: $d1
	ret nc                                           ; $7f19: $d0

	push hl                                          ; $7f1a: $e5
	rla                                              ; $7f1b: $17
	nop                                              ; $7f1c: $00
	nop                                              ; $7f1d: $00
	jr z, jr_07d_7f26                                ; $7f1e: $28 $06

	ret nz                                           ; $7f20: $c0

	ld bc, $03a0                                     ; $7f21: $01 $a0 $03
	ld [bc], a                                       ; $7f24: $02
	ld d, a                                          ; $7f25: $57

jr_07d_7f26:
	ld c, b                                          ; $7f26: $48
	ld [bc], a                                       ; $7f27: $02
	ld h, c                                          ; $7f28: $61
	add hl, bc                                       ; $7f29: $09
	inc d                                            ; $7f2a: $14
	ret nc                                           ; $7f2b: $d0

	add e                                            ; $7f2c: $83
	ld bc, $d0de                                     ; $7f2d: $01 $de $d0
	ret nz                                           ; $7f30: $c0

	ld bc, $03a0                                     ; $7f31: $01 $a0 $03
	nop                                              ; $7f34: $00
	rst SubAFromHL                                          ; $7f35: $d7
	ret nc                                           ; $7f36: $d0

	adc e                                            ; $7f37: $8b
	and b                                            ; $7f38: $a0
	ld bc, $82b0                                     ; $7f39: $01 $b0 $82
	db $e4                                           ; $7f3c: $e4
	nop                                              ; $7f3d: $00
	ld [hl-], a                                      ; $7f3e: $32
	ld [bc], a                                       ; $7f3f: $02
	ld h, e                                          ; $7f40: $63
	add hl, bc                                       ; $7f41: $09
	inc d                                            ; $7f42: $14
	ret nc                                           ; $7f43: $d0

	add e                                            ; $7f44: $83
	ld bc, $d1de                                     ; $7f45: $01 $de $d1
	ret nz                                           ; $7f48: $c0

	ld bc, $03a0                                     ; $7f49: $01 $a0 $03
	nop                                              ; $7f4c: $00
	rst SubAFromHL                                          ; $7f4d: $d7
	ret nc                                           ; $7f4e: $d0

	adc e                                            ; $7f4f: $8b
	and b                                            ; $7f50: $a0
	ld bc, $83b0                                     ; $7f51: $01 $b0 $83
	db $e4                                           ; $7f54: $e4
	ld bc, $0276                                     ; $7f55: $01 $76 $02
	ld h, l                                          ; $7f58: $65
	add hl, bc                                       ; $7f59: $09
	inc d                                            ; $7f5a: $14
	ret nc                                           ; $7f5b: $d0

	add e                                            ; $7f5c: $83
	ld bc, $d2de                                     ; $7f5d: $01 $de $d2
	ret nz                                           ; $7f60: $c0

	ld bc, $03a0                                     ; $7f61: $01 $a0 $03
	ld [bc], a                                       ; $7f64: $02
	ld h, a                                          ; $7f65: $67
	ret nc                                           ; $7f66: $d0

	adc e                                            ; $7f67: $8b
	and b                                            ; $7f68: $a0
	ld bc, $84b0                                     ; $7f69: $01 $b0 $84
	db $e4                                           ; $7f6c: $e4
	ld [bc], a                                       ; $7f6d: $02
	xor [hl]                                         ; $7f6e: $ae
	add hl, bc                                       ; $7f6f: $09
	inc e                                            ; $7f70: $1c
	pop bc                                           ; $7f71: $c1
	ld e, c                                          ; $7f72: $59
	db $e3                                           ; $7f73: $e3
	nop                                              ; $7f74: $00
	and b                                            ; $7f75: $a0
	ret nz                                           ; $7f76: $c0

	add hl, bc                                       ; $7f77: $09
	db $e3                                           ; $7f78: $e3
	nop                                              ; $7f79: $00
	inc e                                            ; $7f7a: $1c
	and b                                            ; $7f7b: $a0
	add b                                            ; $7f7c: $80
	and b                                            ; $7f7d: $a0
	dec c                                            ; $7f7e: $0d
	nop                                              ; $7f7f: $00
	inc bc                                           ; $7f80: $03
	db $e4                                           ; $7f81: $e4
	nop                                              ; $7f82: $00
	dec bc                                           ; $7f83: $0b
	rst $38                                          ; $7f84: $ff
	rlca                                             ; $7f85: $07
	ld b, b                                          ; $7f86: $40
	add b                                            ; $7f87: $80
	and b                                            ; $7f88: $a0
	dec c                                            ; $7f89: $0d
	db $e4                                           ; $7f8a: $e4
	nop                                              ; $7f8b: $00
	sbc e                                            ; $7f8c: $9b
	jr z, jr_07d_7f95                                ; $7f8d: $28 $06

	ret nz                                           ; $7f8f: $c0

	ld bc, $03a0                                     ; $7f90: $01 $a0 $03
	ld [bc], a                                       ; $7f93: $02
	ld [hl], c                                       ; $7f94: $71

jr_07d_7f95:
	sub b                                            ; $7f95: $90
	ld [bc], a                                       ; $7f96: $02
	add b                                            ; $7f97: $80
	add hl, bc                                       ; $7f98: $09
	inc l                                            ; $7f99: $2c
	pop hl                                           ; $7f9a: $e1
	ld [bc], a                                       ; $7f9b: $02
	inc bc                                           ; $7f9c: $03
	inc de                                           ; $7f9d: $13
	add d                                            ; $7f9e: $82
	ret nz                                           ; $7f9f: $c0

	dec de                                           ; $7fa0: $1b
	pop de                                           ; $7fa1: $d1
	ld [bc], a                                       ; $7fa2: $02
	ret nc                                           ; $7fa3: $d0

	pop de                                           ; $7fa4: $d1
	ld b, $c0                                        ; $7fa5: $06 $c0
	ld bc, $03a0                                     ; $7fa7: $01 $a0 $03
	ld [bc], a                                       ; $7faa: $02
	add l                                            ; $7fab: $85
	ld [bc], a                                       ; $7fac: $02
	jp nc, $06d3                                     ; $7fad: $d2 $d3 $06

	ret nz                                           ; $7fb0: $c0

	ld bc, $03a0                                     ; $7fb1: $01 $a0 $03
	ld [bc], a                                       ; $7fb4: $02
	adc a                                            ; $7fb5: $8f
	ld bc, $06d4                                     ; $7fb6: $01 $d4 $06
	ret nz                                           ; $7fb9: $c0

	ld bc, $03a0                                     ; $7fba: $01 $a0 $03
	ld [bc], a                                       ; $7fbd: $02
	sub [hl]                                         ; $7fbe: $96
	pop hl                                           ; $7fbf: $e1
	ld [bc], a                                       ; $7fc0: $02
	inc bc                                           ; $7fc1: $03
	ld h, e                                          ; $7fc2: $63
	db $e4                                           ; $7fc3: $e4
	inc bc                                           ; $7fc4: $03
	xor a                                            ; $7fc5: $af
	ld [bc], a                                       ; $7fc6: $02
	sbc d                                            ; $7fc7: $9a
	add hl, bc                                       ; $7fc8: $09
	inc l                                            ; $7fc9: $2c
	pop hl                                           ; $7fca: $e1
	ld [bc], a                                       ; $7fcb: $02
	inc bc                                           ; $7fcc: $03
	rra                                              ; $7fcd: $1f
	add d                                            ; $7fce: $82
	ret nz                                           ; $7fcf: $c0

	dec de                                           ; $7fd0: $1b
	pop de                                           ; $7fd1: $d1
	ld [bc], a                                       ; $7fd2: $02
	ret nc                                           ; $7fd3: $d0

	pop de                                           ; $7fd4: $d1
	ld b, $c0                                        ; $7fd5: $06 $c0
	ld bc, $03a0                                     ; $7fd7: $01 $a0 $03
	ld [bc], a                                       ; $7fda: $02
	sbc l                                            ; $7fdb: $9d
	ld [bc], a                                       ; $7fdc: $02
	jp nc, $06d3                                     ; $7fdd: $d2 $d3 $06

	ret nz                                           ; $7fe0: $c0

	ld bc, $03a0                                     ; $7fe1: $01 $a0 $03
	ld [bc], a                                       ; $7fe4: $02
	and h                                            ; $7fe5: $a4
	ld bc, $06d4                                     ; $7fe6: $01 $d4 $06
	ret nz                                           ; $7fe9: $c0

	ld bc, $03a0                                     ; $7fea: $01 $a0 $03
	ld [bc], a                                       ; $7fed: $02
	or c                                             ; $7fee: $b1
	pop hl                                           ; $7fef: $e1
	ld [bc], a                                       ; $7ff0: $02
	inc bc                                           ; $7ff1: $03
	ld a, [hl]                                       ; $7ff2: $7e
	db $e4                                           ; $7ff3: $e4
	inc bc                                           ; $7ff4: $03
	ld a, a                                          ; $7ff5: $7f
	ld [bc], a                                       ; $7ff6: $02
	cp b                                             ; $7ff7: $b8
	add hl, bc                                       ; $7ff8: $09
	inc l                                            ; $7ff9: $2c
	pop hl                                           ; $7ffa: $e1
	ld [bc], a                                       ; $7ffb: $02
	inc bc                                           ; $7ffc: $03
	rla                                              ; $7ffd: $17
	add d                                            ; $7ffe: $82
	ret nz                                           ; $7fff: $c0
