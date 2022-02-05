; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $089", ROMX[$4000], BANK[$89]

	dec b                                            ; $4000: $05
	ld bc, $c013                                     ; $4001: $01 $13 $c0
	ld bc, $01a0                                     ; $4004: $01 $a0 $01
	ld bc, $c019                                     ; $4007: $01 $19 $c0
	ld bc, $05a0                                     ; $400a: $01 $a0 $05
	ld bc, $c020                                     ; $400d: $01 $20 $c0
	ld bc, $01a0                                     ; $4010: $01 $a0 $01
	ld bc, $082f                                     ; $4013: $01 $2f $08
	or b                                             ; $4016: $b0

jr_089_4017:
	sbc d                                            ; $4017: $9a
	or b                                             ; $4018: $b0
	sbc c                                            ; $4019: $99
	or b                                             ; $401a: $b0
	sbc e                                            ; $401b: $9b
	or b                                             ; $401c: $b0
	sbc h                                            ; $401d: $9c
	db $30, $c0                                      ; $401e: $30 $c0
	ld bc, $05a0                                     ; $4020: $01 $a0 $05
	ld bc, $c038                                     ; $4023: $01 $38 $c0
	ld bc, $01a0                                     ; $4026: $01 $a0 $01
	ld bc, $c03d                                     ; $4029: $01 $3d $c0
	ld bc, $05a0                                     ; $402c: $01 $a0 $05
	ld bc, $c047                                     ; $402f: $01 $47 $c0
	ld bc, $01a0                                     ; $4032: $01 $a0 $01
	ld bc, $c051                                     ; $4035: $01 $51 $c0
	ld bc, $05a0                                     ; $4038: $01 $a0 $05
	ld bc, $c05e                                     ; $403b: $01 $5e $c0
	ld bc, $01a0                                     ; $403e: $01 $a0 $01
	ld bc, $c06b                                     ; $4041: $01 $6b $c0
	ld bc, $05a0                                     ; $4044: $01 $a0 $05
	ld bc, $c078                                     ; $4047: $01 $78 $c0
	ld bc, $01a0                                     ; $404a: $01 $a0 $01
	ld bc, $0281                                     ; $404d: $01 $81 $02
	or b                                             ; $4050: $b0
	sbc l                                            ; $4051: $9d
	add hl, bc                                       ; $4052: $09
	ldh [rP1], a                                     ; $4053: $e0 $00
	jr jr_089_4017                                   ; $4055: $18 $c0

	ld bc, $05a0                                     ; $4057: $01 $a0 $05
	ld bc, $028a                                     ; $405a: $01 $8a $02
	or b                                             ; $405d: $b0
	sbc [hl]                                         ; $405e: $9e
	add hl, bc                                       ; $405f: $09
	ldh [rP1], a                                     ; $4060: $e0 $00
	dec bc                                           ; $4062: $0b
	ret nz                                           ; $4063: $c0

	ld bc, $05a0                                     ; $4064: $01 $a0 $05
	ld bc, $e491                                     ; $4067: $01 $91 $e4
	nop                                              ; $406a: $00
	daa                                              ; $406b: $27
	inc h                                            ; $406c: $24
	ret nz                                           ; $406d: $c0

	ld bc, $05a0                                     ; $406e: $01 $a0 $05
	ld bc, $c099                                     ; $4071: $01 $99 $c0
	ld bc, $01a0                                     ; $4074: $01 $a0 $01
	ld bc, $c0a3                                     ; $4077: $01 $a3 $c0
	ld bc, $05a0                                     ; $407a: $01 $a0 $05
	ld bc, $c0b0                                     ; $407d: $01 $b0 $c0
	ld bc, $01a0                                     ; $4080: $01 $a0 $01
	ld bc, $c0b5                                     ; $4083: $01 $b5 $c0
	ld bc, $05a0                                     ; $4086: $01 $a0 $05
	ld bc, $c0bd                                     ; $4089: $01 $bd $c0
	ld bc, $01a0                                     ; $408c: $01 $a0 $01
	ld bc, $09c5                                     ; $408f: $01 $c5 $09
	sub a                                            ; $4092: $97
	pop bc                                           ; $4093: $c1
	ld e, c                                          ; $4094: $59
	db $e3                                           ; $4095: $e3
	nop                                              ; $4096: $00
	ld h, [hl]                                       ; $4097: $66
	add c                                            ; $4098: $81
	ret nz                                           ; $4099: $c0

	dec de                                           ; $409a: $1b
	db $d3                                           ; $409b: $d3
	ld [bc], a                                       ; $409c: $02
	ret nc                                           ; $409d: $d0

	pop de                                           ; $409e: $d1
	ld a, $81                                        ; $409f: $3e $81
	ret nz                                           ; $40a1: $c0

	add b                                            ; $40a2: $80
	ld bc, $1ed3                                     ; $40a3: $01 $d3 $1e
	ret nz                                           ; $40a6: $c0

	ld bc, $05a0                                     ; $40a7: $01 $a0 $05
	ld bc, $c0d1                                     ; $40aa: $01 $d1 $c0
	ld bc, $01a0                                     ; $40ad: $01 $a0 $01
	ld bc, $c0d3                                     ; $40b0: $01 $d3 $c0
	ld bc, $05a0                                     ; $40b3: $01 $a0 $05
	ld bc, $c0d7                                     ; $40b6: $01 $d7 $c0
	ld bc, $01a0                                     ; $40b9: $01 $a0 $01
	ld bc, wGenericTileDataDest+1                                     ; $40bc: $01 $e3 $c0
	ld bc, $05a0                                     ; $40bf: $01 $a0 $05
	ld bc, $00ea                                     ; $40c2: $01 $ea $00
	jr @-$3e                                         ; $40c5: $18 $c0

	ld bc, $05a0                                     ; $40c7: $01 $a0 $05
	ld bc, $c0f2                                     ; $40ca: $01 $f2 $c0
	ld bc, $01a0                                     ; $40cd: $01 $a0 $01
	ld bc, $c0fe                                     ; $40d0: $01 $fe $c0
	ld bc, $05a0                                     ; $40d3: $01 $a0 $05
	ld [bc], a                                       ; $40d6: $02
	ld bc, $01c0                                     ; $40d7: $01 $c0 $01
	and b                                            ; $40da: $a0
	ld bc, $0902                                     ; $40db: $01 $02 $09
	nop                                              ; $40de: $00
	inc l                                            ; $40df: $2c
	add c                                            ; $40e0: $81
	ret nz                                           ; $40e1: $c0

	add b                                            ; $40e2: $80
	ld bc, $12d3                                     ; $40e3: $01 $d3 $12
	ret nz                                           ; $40e6: $c0

	ld bc, $05a0                                     ; $40e7: $01 $a0 $05
	ld [bc], a                                       ; $40ea: $02
	rrca                                             ; $40eb: $0f
	ret nz                                           ; $40ec: $c0

	ld bc, $01a0                                     ; $40ed: $01 $a0 $01
	ld bc, $c0d3                                     ; $40f0: $01 $d3 $c0
	ld bc, $05a0                                     ; $40f3: $01 $a0 $05
	ld [bc], a                                       ; $40f6: $02
	ld [de], a                                       ; $40f7: $12
	nop                                              ; $40f8: $00
	ld b, $c0                                        ; $40f9: $06 $c0
	ld bc, $05a0                                     ; $40fb: $01 $a0 $05
	ld [bc], a                                       ; $40fe: $02
	inc h                                            ; $40ff: $24
	ret nz                                           ; $4100: $c0

	ld bc, $01a0                                     ; $4101: $01 $a0 $01
	ld [bc], a                                       ; $4104: $02
	dec l                                            ; $4105: $2d
	ret nz                                           ; $4106: $c0

	ld bc, $05a0                                     ; $4107: $01 $a0 $05
	ld [bc], a                                       ; $410a: $02
	inc sp                                           ; $410b: $33
	ret nz                                           ; $410c: $c0

	set 0, c                                         ; $410d: $cb $c1
	ld e, e                                          ; $410f: $5b
	ret nz                                           ; $4110: $c0

	ld hl, $d3d1                                     ; $4111: $21 $d1 $d3
	ld b, b                                          ; $4114: $40
	add b                                            ; $4115: $80
	and b                                            ; $4116: $a0
	nop                                              ; $4117: $00
	add c                                            ; $4118: $81
	adc e                                            ; $4119: $8b
	ld bc, $0266                                     ; $411a: $01 $66 $02
	or b                                             ; $411d: $b0
	inc bc                                           ; $411e: $03
	inc b                                            ; $411f: $04
	push hl                                          ; $4120: $e5
	ld h, l                                          ; $4121: $65
	ld [bc], a                                       ; $4122: $02
	ld a, l                                          ; $4123: $7d
	nop                                              ; $4124: $00
	inc b                                            ; $4125: $04
	push hl                                          ; $4126: $e5
	ld bc, $b119                                     ; $4127: $01 $19 $b1
	rst JumpTable                                          ; $412a: $c7
	ld [$1628], sp                                   ; $412b: $08 $28 $16
	pop hl                                           ; $412e: $e1
	ld [bc], a                                       ; $412f: $02
	ld bc, $c0f8                                     ; $4130: $01 $f8 $c0
	ld bc, $08a0                                     ; $4133: $01 $a0 $08
	nop                                              ; $4136: $00
	ld bc, $01c0                                     ; $4137: $01 $c0 $01

Jump_089_413a:
	and b                                            ; $413a: $a0
	ld bc, $0400                                     ; $413b: $01 $00 $04
	ret nz                                           ; $413e: $c0

	ld bc, $08a0                                     ; $413f: $01 $a0 $08
	nop                                              ; $4142: $00

jr_089_4143:
	dec bc                                           ; $4143: $0b
	dec sp                                           ; $4144: $3b
	nop                                              ; $4145: $00
	inc de                                           ; $4146: $13
	add hl, bc                                       ; $4147: $09
	ld [de], a                                       ; $4148: $12
	ret nz                                           ; $4149: $c0

	ld bc, $08a0                                     ; $414a: $01 $a0 $08
	nop                                              ; $414d: $00
	rla                                              ; $414e: $17
	pop bc                                           ; $414f: $c1
	ld e, c                                          ; $4150: $59
	db $e3                                           ; $4151: $e3
	nop                                              ; $4152: $00
	ld h, [hl]                                       ; $4153: $66
	nop                                              ; $4154: $00
	add b                                            ; $4155: $80
	and b                                            ; $4156: $a0
	nop                                              ; $4157: $00
	db $e4                                           ; $4158: $e4
	ld bc, $0026                                     ; $4159: $01 $26 $00
	ld [hl+], a                                      ; $415c: $22
	add hl, bc                                       ; $415d: $09
	ld hl, $02e1                                     ; $415e: $21 $e1 $02
	inc bc                                           ; $4161: $03
	rra                                              ; $4162: $1f
	ret nz                                           ; $4163: $c0

	ld bc, $08a0                                     ; $4164: $01 $a0 $08
	nop                                              ; $4167: $00
	inc h                                            ; $4168: $24
	pop bc                                           ; $4169: $c1
	ld e, e                                          ; $416a: $5b
	nop                                              ; $416b: $00
	add b                                            ; $416c: $80
	inc bc                                           ; $416d: $03
	ld [de], a                                       ; $416e: $12
	ret nz                                           ; $416f: $c0

	inc h                                            ; $4170: $24
	pop de                                           ; $4171: $d1
	rst SubAFromHL                                          ; $4172: $d7
	ret nz                                           ; $4173: $c0

	dec h                                            ; $4174: $25
	pop de                                           ; $4175: $d1
	rst SubAFromHL                                          ; $4176: $d7
	ret nz                                           ; $4177: $c0

	inc hl                                           ; $4178: $23
	ldh [rAUD1HIGH], a                               ; $4179: $e0 $14
	rst SubAFromHL                                          ; $417b: $d7
	push hl                                          ; $417c: $e5
	ld h, l                                          ; $417d: $65
	nop                                              ; $417e: $00
	rst $38                                          ; $417f: $ff
	add hl, bc                                       ; $4180: $09
	jr c, jr_089_4143                                ; $4181: $38 $c0

	rst GetHLinHL                                          ; $4183: $cf
	ldh [rIE], a                                     ; $4184: $e0 $ff
	ret nz                                           ; $4186: $c0

	ld bc, $01a0                                     ; $4187: $01 $a0 $01
	nop                                              ; $418a: $00
	dec [hl]                                         ; $418b: $35
	ld h, b                                          ; $418c: $60
	add b                                            ; $418d: $80
	nop                                              ; $418e: $00
	ld a, d                                          ; $418f: $7a
	inc h                                            ; $4190: $24
	pop hl                                           ; $4191: $e1
	ld [bc], a                                       ; $4192: $02
	ld c, $65                                        ; $4193: $0e $65
	add c                                            ; $4195: $81
	ret nz                                           ; $4196: $c0

	dec de                                           ; $4197: $1b
	rst SubAFromHL                                          ; $4198: $d7
	ld bc, $04d5                                     ; $4199: $01 $d5 $04
	push hl                                          ; $419c: $e5
	ld h, l                                          ; $419d: $65
	ld [bc], a                                       ; $419e: $02
	ld h, e                                          ; $419f: $63
	nop                                              ; $41a0: $00
	inc de                                           ; $41a1: $13
	pop bc                                           ; $41a2: $c1
	rlca                                             ; $41a3: $07
	jp nc, $c0d0                                     ; $41a4: $d2 $d0 $c0

	ld bc, $08a0                                     ; $41a7: $01 $a0 $08
	nop                                              ; $41aa: $00
	inc a                                            ; $41ab: $3c
	ret nz                                           ; $41ac: $c0

	ld bc, $01a0                                     ; $41ad: $01 $a0 $01
	nop                                              ; $41b0: $00
	ld b, b                                          ; $41b1: $40
	db $e4                                           ; $41b2: $e4
	nop                                              ; $41b3: $00
	rlca                                             ; $41b4: $07
	inc b                                            ; $41b5: $04
	push hl                                          ; $41b6: $e5
	ld h, l                                          ; $41b7: $65
	ld [bc], a                                       ; $41b8: $02
	ld [hl], d                                       ; $41b9: $72
	add hl, bc                                       ; $41ba: $09
	sbc a                                            ; $41bb: $9f
	add d                                            ; $41bc: $82
	ret nz                                           ; $41bd: $c0

	dec de                                           ; $41be: $1b
	rst SubAFromHL                                          ; $41bf: $d7
	ld [bc], a                                       ; $41c0: $02
	ret nc                                           ; $41c1: $d0

	pop de                                           ; $41c2: $d1
	ld a, [hl+]                                      ; $41c3: $2a
	ret nz                                           ; $41c4: $c0

	ld bc, $08a0                                     ; $41c5: $01 $a0 $08
	nop                                              ; $41c8: $00
	ld b, [hl]                                       ; $41c9: $46
	ret nz                                           ; $41ca: $c0

	ld bc, $01a0                                     ; $41cb: $01 $a0 $01
	nop                                              ; $41ce: $00
	ld c, d                                          ; $41cf: $4a
	ret nz                                           ; $41d0: $c0

	ld bc, $08a0                                     ; $41d1: $01 $a0 $08
	nop                                              ; $41d4: $00
	ld d, b                                          ; $41d5: $50
	ret nz                                           ; $41d6: $c0

	ld bc, $01a0                                     ; $41d7: $01 $a0 $01
	nop                                              ; $41da: $00
	ld d, a                                          ; $41db: $57
	ret nz                                           ; $41dc: $c0

	ld bc, $08a0                                     ; $41dd: $01 $a0 $08
	nop                                              ; $41e0: $00
	ld e, h                                          ; $41e1: $5c
	ret nz                                           ; $41e2: $c0

	ld bc, $01a0                                     ; $41e3: $01 $a0 $01
	nop                                              ; $41e6: $00
	ld e, a                                          ; $41e7: $5f
	ret nz                                           ; $41e8: $c0

	ld bc, $08a0                                     ; $41e9: $01 $a0 $08
	nop                                              ; $41ec: $00
	ld h, [hl]                                       ; $41ed: $66
	ld [bc], a                                       ; $41ee: $02
	jp nc, $2ad3                                     ; $41ef: $d2 $d3 $2a

	ret nz                                           ; $41f2: $c0

	ld bc, $08a0                                     ; $41f3: $01 $a0 $08
	nop                                              ; $41f6: $00
	ld l, l                                          ; $41f7: $6d
	ret nz                                           ; $41f8: $c0

	ld bc, $01a0                                     ; $41f9: $01 $a0 $01
	nop                                              ; $41fc: $00
	ld [hl], l                                       ; $41fd: $75
	ret nz                                           ; $41fe: $c0

	ld bc, $08a0                                     ; $41ff: $01 $a0 $08
	nop                                              ; $4202: $00
	ld a, c                                          ; $4203: $79
	ret nz                                           ; $4204: $c0

	ld bc, $01a0                                     ; $4205: $01 $a0 $01
	nop                                              ; $4208: $00
	ld d, a                                          ; $4209: $57
	ret nz                                           ; $420a: $c0

	ld bc, $08a0                                     ; $420b: $01 $a0 $08
	nop                                              ; $420e: $00
	add c                                            ; $420f: $81
	ret nz                                           ; $4210: $c0

	ld bc, $01a0                                     ; $4211: $01 $a0 $01
	nop                                              ; $4214: $00
	ld e, a                                          ; $4215: $5f
	ret nz                                           ; $4216: $c0

	ld bc, $08a0                                     ; $4217: $01 $a0 $08
	nop                                              ; $421a: $00
	add a                                            ; $421b: $87
	ld bc, _EnterNamesAndDates                                     ; $421c: $01 $d4 $2a
	ret nz                                           ; $421f: $c0

	ld bc, $08a0                                     ; $4220: $01 $a0 $08
	nop                                              ; $4223: $00
	sub b                                            ; $4224: $90
	ret nz                                           ; $4225: $c0

	ld bc, $01a0                                     ; $4226: $01 $a0 $01
	nop                                              ; $4229: $00
	ld [hl], l                                       ; $422a: $75
	ret nz                                           ; $422b: $c0

	ld bc, $08a0                                     ; $422c: $01 $a0 $08
	nop                                              ; $422f: $00
	sub l                                            ; $4230: $95
	ret nz                                           ; $4231: $c0

	ld bc, $01a0                                     ; $4232: $01 $a0 $01
	nop                                              ; $4235: $00
	sbc l                                            ; $4236: $9d
	ret nz                                           ; $4237: $c0

	ld bc, $08a0                                     ; $4238: $01 $a0 $08
	nop                                              ; $423b: $00
	and d                                            ; $423c: $a2
	ret nz                                           ; $423d: $c0

	ld bc, $01a0                                     ; $423e: $01 $a0 $01
	nop                                              ; $4241: $00
	ld e, a                                          ; $4242: $5f
	ret nz                                           ; $4243: $c0

	ld bc, $08a0                                     ; $4244: $01 $a0 $08
	nop                                              ; $4247: $00
	xor c                                            ; $4248: $a9
	ret nz                                           ; $4249: $c0

	dec bc                                           ; $424a: $0b
	db $e3                                           ; $424b: $e3
	nop                                              ; $424c: $00
	ld a, a                                          ; $424d: $7f
	ret nz                                           ; $424e: $c0

	nop                                              ; $424f: $00
	nop                                              ; $4250: $00
	or d                                             ; $4251: $b2
	ret nz                                           ; $4252: $c0

	ld bc, $01a0                                     ; $4253: $01 $a0 $01
	nop                                              ; $4256: $00
	or l                                             ; $4257: $b5
	db $e4                                           ; $4258: $e4
	nop                                              ; $4259: $00
	ld [bc], a                                       ; $425a: $02
	add hl, bc                                       ; $425b: $09
	ld [hl+], a                                      ; $425c: $22
	pop bc                                           ; $425d: $c1
	ld e, c                                          ; $425e: $59
	db $e3                                           ; $425f: $e3
	nop                                              ; $4260: $00
	ld h, [hl]                                       ; $4261: $66
	ld h, b                                          ; $4262: $60
	add b                                            ; $4263: $80
	and b                                            ; $4264: $a0
	nop                                              ; $4265: $00
	inc b                                            ; $4266: $04
	pop hl                                           ; $4267: $e1
	ld [bc], a                                       ; $4268: $02
	ld bc, $10f8                                     ; $4269: $01 $f8 $10
	ret nz                                           ; $426c: $c0

	ld bc, $01a0                                     ; $426d: $01 $a0 $01
	nop                                              ; $4270: $00
	cp l                                             ; $4271: $bd
	pop hl                                           ; $4272: $e1
	ld [bc], a                                       ; $4273: $02
	ld bc, $c0f8                                     ; $4274: $01 $f8 $c0
	ld bc, $08a0                                     ; $4277: $01 $a0 $08
	nop                                              ; $427a: $00
	jp $00e4                                         ; $427b: $c3 $e4 $00


	ld [bc], a                                       ; $427e: $02
	add hl, bc                                       ; $427f: $09
	ld d, $d0                                        ; $4280: $16 $d0
	adc e                                            ; $4282: $8b
	inc bc                                           ; $4283: $03
	ld d, $b0                                        ; $4284: $16 $b0
	rlca                                             ; $4286: $07
	ret nz                                           ; $4287: $c0

	ld bc, $01a0                                     ; $4288: $01 $a0 $01
	nop                                              ; $428b: $00
	call z, $01c0                                    ; $428c: $cc $c0 $01
	and b                                            ; $428f: $a0
	ld [$d000], sp                                   ; $4290: $08 $00 $d0
	push hl                                          ; $4293: $e5
	ld h, [hl]                                       ; $4294: $66
	nop                                              ; $4295: $00
	nop                                              ; $4296: $00
	add hl, bc                                       ; $4297: $09
	ld h, l                                          ; $4298: $65
	pop hl                                           ; $4299: $e1
	ld [bc], a                                       ; $429a: $02
	ld bc, $c0f8                                     ; $429b: $01 $f8 $c0
	ld bc, $08a0                                     ; $429e: $01 $a0 $08
	nop                                              ; $42a1: $00
	jp nc, $01c0                                     ; $42a2: $d2 $c0 $01

	and b                                            ; $42a5: $a0
	ld bc, $d900                                     ; $42a6: $01 $00 $d9
	add d                                            ; $42a9: $82
	ret nz                                           ; $42aa: $c0

	dec de                                           ; $42ab: $1b
	rst SubAFromHL                                          ; $42ac: $d7
	ld [bc], a                                       ; $42ad: $02
	ret nc                                           ; $42ae: $d0

	pop de                                           ; $42af: $d1
	ld e, $c0                                        ; $42b0: $1e $c0
	ld bc, $08a0                                     ; $42b2: $01 $a0 $08
	nop                                              ; $42b5: $00
	db $dd                                           ; $42b6: $dd
	ret nz                                           ; $42b7: $c0

	ld bc, $01a0                                     ; $42b8: $01 $a0 $01
	nop                                              ; $42bb: $00
	jp hl                                            ; $42bc: $e9


	ret nz                                           ; $42bd: $c0

	ld bc, $08a0                                     ; $42be: $01 $a0 $08
	nop                                              ; $42c1: $00
	ldh a, [$c0]                                     ; $42c2: $f0 $c0
	ld bc, $01a0                                     ; $42c4: $01 $a0 $01
	nop                                              ; $42c7: $00
	db $fc                                           ; $42c8: $fc
	ret nz                                           ; $42c9: $c0

	ld bc, $08a0                                     ; $42ca: $01 $a0 $08
	ld bc, $020b                                     ; $42cd: $01 $0b $02
	jp nc, $12d3                                     ; $42d0: $d2 $d3 $12

	ret nz                                           ; $42d3: $c0

	ld bc, $08a0                                     ; $42d4: $01 $a0 $08
	ld bc, $c00d                                     ; $42d7: $01 $0d $c0
	ld bc, $01a0                                     ; $42da: $01 $a0 $01
	ld bc, $c018                                     ; $42dd: $01 $18 $c0
	ld bc, $08a0                                     ; $42e0: $01 $a0 $08
	ld bc, $0125                                     ; $42e3: $01 $25 $01
	call nc, $c012                                   ; $42e6: $d4 $12 $c0
	ld bc, $08a0                                     ; $42e9: $01 $a0 $08
	ld bc, $c026                                     ; $42ec: $01 $26 $c0
	ld bc, $01a0                                     ; $42ef: $01 $a0 $01
	ld bc, $c032                                     ; $42f2: $01 $32 $c0
	ld bc, $08a0                                     ; $42f5: $01 $a0 $08
	ld bc, $e525                                     ; $42f8: $01 $25 $e5
	ld h, a                                          ; $42fb: $67
	nop                                              ; $42fc: $00
	nop                                              ; $42fd: $00
	add hl, bc                                       ; $42fe: $09
	ld e, e                                          ; $42ff: $5b
	pop hl                                           ; $4300: $e1

jr_089_4301:
	ld [bc], a                                       ; $4301: $02
	ld [bc], a                                       ; $4302: $02
	nop                                              ; $4303: $00
	ret nz                                           ; $4304: $c0

	ld bc, $08a0                                     ; $4305: $01 $a0 $08
	ld bc, $c03c                                     ; $4308: $01 $3c $c0
	ld bc, $01a0                                     ; $430b: $01 $a0 $01
	ld bc, $824d                                     ; $430e: $01 $4d $82
	adc e                                            ; $4311: $8b
	inc bc                                           ; $4312: $03
	ld l, $02                                        ; $4313: $2e $02
	or b                                             ; $4315: $b0
	sbc b                                            ; $4316: $98
	inc c                                            ; $4317: $0c
	ret nz                                           ; $4318: $c0

	ld bc, $08a0                                     ; $4319: $01 $a0 $08
	ld bc, $c050                                     ; $431c: $01 $50 $c0
	ld bc, $01a0                                     ; $431f: $01 $a0 $01
	ld bc, $085b                                     ; $4322: $01 $5b $08
	or b                                             ; $4325: $b0
	sbc d                                            ; $4326: $9a
	or b                                             ; $4327: $b0
	sbc c                                            ; $4328: $99
	or b                                             ; $4329: $b0
	sbc e                                            ; $432a: $9b
	or b                                             ; $432b: $b0
	sbc h                                            ; $432c: $9c
	inc c                                            ; $432d: $0c
	ret nz                                           ; $432e: $c0

	ld bc, $08a0                                     ; $432f: $01 $a0 $08
	ld bc, $c062                                     ; $4332: $01 $62 $c0
	ld bc, $01a0                                     ; $4335: $01 $a0 $01
	ld bc, $046f                                     ; $4338: $01 $6f $04
	or b                                             ; $433b: $b0
	sbc l                                            ; $433c: $9d
	or b                                             ; $433d: $b0
	sbc [hl]                                         ; $433e: $9e
	jr jr_089_4301                                   ; $433f: $18 $c0

	ld bc, $08a0                                     ; $4341: $01 $a0 $08
	ld bc, $c071                                     ; $4344: $01 $71 $c0
	ld bc, $01a0                                     ; $4347: $01 $a0 $01
	ld bc, $c074                                     ; $434a: $01 $74 $c0
	ld bc, $08a0                                     ; $434d: $01 $a0 $08
	ld bc, $c078                                     ; $4350: $01 $78 $c0
	ld bc, $01a0                                     ; $4353: $01 $a0 $01
	ld bc, $e483                                     ; $4356: $01 $83 $e4
	nop                                              ; $4359: $00
	ld [bc], a                                       ; $435a: $02
	add hl, bc                                       ; $435b: $09
	xor l                                            ; $435c: $ad

jr_089_435d:
	pop bc                                           ; $435d: $c1
	ld e, c                                          ; $435e: $59
	db $e3                                           ; $435f: $e3
	nop                                              ; $4360: $00
	ld h, [hl]                                       ; $4361: $66
	add c                                            ; $4362: $81
	ret nz                                           ; $4363: $c0

	dec de                                           ; $4364: $1b
	rst SubAFromHL                                          ; $4365: $d7
	ld [bc], a                                       ; $4366: $02
	ret nc                                           ; $4367: $d0

	pop de                                           ; $4368: $d1
	ld h, d                                          ; $4369: $62
	add c                                            ; $436a: $81
	ret nz                                           ; $436b: $c0

	add b                                            ; $436c: $80
	ld bc, $2ad3                                     ; $436d: $01 $d3 $2a
	ret nz                                           ; $4370: $c0

	ld bc, $08a0                                     ; $4371: $01 $a0 $08
	ld bc, $c08c                                     ; $4374: $01 $8c $c0
	ld bc, $01a0                                     ; $4377: $01 $a0 $01
	ld bc, $c091                                     ; $437a: $01 $91 $c0
	ld bc, $08a0                                     ; $437d: $01 $a0 $08
	ld bc, $c071                                     ; $4380: $01 $71 $c0
	ld bc, $01a0                                     ; $4383: $01 $a0 $01
	ld bc, $c095                                     ; $4386: $01 $95 $c0
	ld bc, $08a0                                     ; $4389: $01 $a0 $08
	ld bc, $c097                                     ; $438c: $01 $97 $c0
	ld bc, $01a0                                     ; $438f: $01 $a0 $01
	ld bc, $c09e                                     ; $4392: $01 $9e $c0
	ld bc, $08a0                                     ; $4395: $01 $a0 $08
	ld bc, $00a7                                     ; $4398: $01 $a7 $00
	jr nc, jr_089_435d                               ; $439b: $30 $c0

	ld bc, $08a0                                     ; $439d: $01 $a0 $08
	ld bc, $c0a9                                     ; $43a0: $01 $a9 $c0
	ld bc, $01a0                                     ; $43a3: $01 $a0 $01
	ld bc, $c0b5                                     ; $43a6: $01 $b5 $c0
	ld bc, $08a0                                     ; $43a9: $01 $a0 $08
	ld bc, $c0c0                                     ; $43ac: $01 $c0 $c0
	ld bc, $01a0                                     ; $43af: $01 $a0 $01
	ld bc, $c0c8                                     ; $43b2: $01 $c8 $c0
	ld bc, $08a0                                     ; $43b5: $01 $a0 $08
	ld bc, $c0d6                                     ; $43b8: $01 $d6 $c0
	ld bc, $01a0                                     ; $43bb: $01 $a0 $01
	ld bc, $c0d9                                     ; $43be: $01 $d9 $c0
	ld bc, $08a0                                     ; $43c1: $01 $a0 $08
	ld bc, $c0df                                     ; $43c4: $01 $df $c0
	ld bc, $01a0                                     ; $43c7: $01 $a0 $01
	ld bc, $00e2                                     ; $43ca: $01 $e2 $00
	ld e, $c0                                        ; $43cd: $1e $c0
	ld bc, $08a0                                     ; $43cf: $01 $a0 $08
	ld bc, $c0e9                                     ; $43d2: $01 $e9 $c0
	ld bc, $01a0                                     ; $43d5: $01 $a0 $01
	ld bc, $c0f3                                     ; $43d8: $01 $f3 $c0
	ld bc, $08a0                                     ; $43db: $01 $a0 $08
	ld bc, $c0fe                                     ; $43de: $01 $fe $c0
	ld bc, $01a0                                     ; $43e1: $01 $a0 $01
	ld [bc], a                                       ; $43e4: $02
	ld [bc], a                                       ; $43e5: $02
	ret nz                                           ; $43e6: $c0

	ld bc, $08a0                                     ; $43e7: $01 $a0 $08
	ld bc, $c0a7                                     ; $43ea: $01 $a7 $c0
	set 0, c                                         ; $43ed: $cb $c1
	ld e, e                                          ; $43ef: $5b
	ret nz                                           ; $43f0: $c0

	ld hl, $d7d1                                     ; $43f1: $21 $d1 $d7
	ld b, b                                          ; $43f4: $40
	add b                                            ; $43f5: $80
	and b                                            ; $43f6: $a0
	nop                                              ; $43f7: $00
	add c                                            ; $43f8: $81
	adc e                                            ; $43f9: $8b
	ld bc, $0266                                     ; $43fa: $01 $66 $02
	or b                                             ; $43fd: $b0
	inc bc                                           ; $43fe: $03
	inc b                                            ; $43ff: $04
	push hl                                          ; $4400: $e5
	ld h, l                                          ; $4401: $65
	ld [bc], a                                       ; $4402: $02
	ld a, l                                          ; $4403: $7d
	nop                                              ; $4404: $00
	inc b                                            ; $4405: $04
	push hl                                          ; $4406: $e5
	ld bc, $b119                                     ; $4407: $01 $19 $b1
	ret z                                            ; $440a: $c8

	ld [$1628], sp                                   ; $440b: $08 $28 $16
	pop hl                                           ; $440e: $e1
	ld [bc], a                                       ; $440f: $02
	ld [bc], a                                       ; $4410: $02
	jr z, @-$3e                                      ; $4411: $28 $c0

	ld bc, $09a0                                     ; $4413: $01 $a0 $09
	nop                                              ; $4416: $00
	ld bc, $01c0                                     ; $4417: $01 $c0 $01
	and b                                            ; $441a: $a0
	ld bc, $0400                                     ; $441b: $01 $00 $04
	ret nz                                           ; $441e: $c0

jr_089_441f:
	ld bc, $09a0                                     ; $441f: $01 $a0 $09
	nop                                              ; $4422: $00
	dec bc                                           ; $4423: $0b
	scf                                              ; $4424: $37
	nop                                              ; $4425: $00
	ld [de], a                                       ; $4426: $12
	add hl, bc                                       ; $4427: $09
	ld c, $c0                                        ; $4428: $0e $c0
	ld bc, $09a0                                     ; $442a: $01 $a0 $09
	nop                                              ; $442d: $00
	ld d, $c1                                        ; $442e: $16 $c1
	ld e, c                                          ; $4430: $59
	db $e3                                           ; $4431: $e3
	nop                                              ; $4432: $00
	ld h, [hl]                                       ; $4433: $66
	db $e4                                           ; $4434: $e4
	ld bc, $0010                                     ; $4435: $01 $10 $00
	dec e                                            ; $4438: $1d
	add hl, bc                                       ; $4439: $09
	ld hl, $02e1                                     ; $443a: $21 $e1 $02
	inc bc                                           ; $443d: $03
	rra                                              ; $443e: $1f
	ret nz                                           ; $443f: $c0

	ld bc, $09a0                                     ; $4440: $01 $a0 $09
	nop                                              ; $4443: $00
	rra                                              ; $4444: $1f
	pop bc                                           ; $4445: $c1
	ld e, e                                          ; $4446: $5b
	nop                                              ; $4447: $00
	add b                                            ; $4448: $80
	inc bc                                           ; $4449: $03
	inc de                                           ; $444a: $13
	ret nz                                           ; $444b: $c0

	inc h                                            ; $444c: $24
	pop de                                           ; $444d: $d1
	ret c                                            ; $444e: $d8

	ret nz                                           ; $444f: $c0

	dec h                                            ; $4450: $25
	pop de                                           ; $4451: $d1
	ret c                                            ; $4452: $d8

	ret nz                                           ; $4453: $c0

	inc hl                                           ; $4454: $23
	ldh [rAUD1HIGH], a                               ; $4455: $e0 $14
	ret c                                            ; $4457: $d8

	push hl                                          ; $4458: $e5
	ld h, l                                          ; $4459: $65
	nop                                              ; $445a: $00
	rst $38                                          ; $445b: $ff
	add hl, bc                                       ; $445c: $09
	jr c, jr_089_441f                                ; $445d: $38 $c0

	rst GetHLinHL                                          ; $445f: $cf
	ldh [rIE], a                                     ; $4460: $e0 $ff
	ret nz                                           ; $4462: $c0

	ld bc, $01a0                                     ; $4463: $01 $a0 $01
	nop                                              ; $4466: $00
	inc l                                            ; $4467: $2c
	ld h, b                                          ; $4468: $60
	add b                                            ; $4469: $80
	nop                                              ; $446a: $00
	ld a, e                                          ; $446b: $7b
	inc h                                            ; $446c: $24
	pop hl                                           ; $446d: $e1
	ld [bc], a                                       ; $446e: $02
	ld c, $65                                        ; $446f: $0e $65
	add c                                            ; $4471: $81
	ret nz                                           ; $4472: $c0

	dec de                                           ; $4473: $1b
	ret c                                            ; $4474: $d8

	ld bc, $04d5                                     ; $4475: $01 $d5 $04
	push hl                                          ; $4478: $e5
	ld h, l                                          ; $4479: $65
	ld [bc], a                                       ; $447a: $02
	ld h, e                                          ; $447b: $63
	nop                                              ; $447c: $00
	inc de                                           ; $447d: $13
	pop bc                                           ; $447e: $c1
	rlca                                             ; $447f: $07
	jp nc, $c0d0                                     ; $4480: $d2 $d0 $c0

	ld bc, $09a0                                     ; $4483: $01 $a0 $09
	nop                                              ; $4486: $00
	ld [hl-], a                                      ; $4487: $32
	ret nz                                           ; $4488: $c0

	ld bc, $01a0                                     ; $4489: $01 $a0 $01
	nop                                              ; $448c: $00
	ld [hl], $e4                                     ; $448d: $36 $e4
	nop                                              ; $448f: $00
	rlca                                             ; $4490: $07
	inc b                                            ; $4491: $04
	push hl                                          ; $4492: $e5
	ld h, l                                          ; $4493: $65
	ld [bc], a                                       ; $4494: $02
	ld [hl], d                                       ; $4495: $72
	add hl, bc                                       ; $4496: $09
	sbc a                                            ; $4497: $9f
	add d                                            ; $4498: $82
	ret nz                                           ; $4499: $c0

	dec de                                           ; $449a: $1b
	ret c                                            ; $449b: $d8

	ld [bc], a                                       ; $449c: $02
	ret nc                                           ; $449d: $d0

	pop de                                           ; $449e: $d1
	ld a, [hl+]                                      ; $449f: $2a
	ret nz                                           ; $44a0: $c0

	ld bc, $09a0                                     ; $44a1: $01 $a0 $09
	nop                                              ; $44a4: $00
	inc a                                            ; $44a5: $3c
	ret nz                                           ; $44a6: $c0

	ld bc, $01a0                                     ; $44a7: $01 $a0 $01
	nop                                              ; $44aa: $00
	ld b, b                                          ; $44ab: $40
	ret nz                                           ; $44ac: $c0

	ld bc, $09a0                                     ; $44ad: $01 $a0 $09
	nop                                              ; $44b0: $00
	ld b, a                                          ; $44b1: $47
	ret nz                                           ; $44b2: $c0

	ld bc, $01a0                                     ; $44b3: $01 $a0 $01
	nop                                              ; $44b6: $00
	ld c, d                                          ; $44b7: $4a
	ret nz                                           ; $44b8: $c0

	ld bc, $09a0                                     ; $44b9: $01 $a0 $09
	nop                                              ; $44bc: $00
	ld c, a                                          ; $44bd: $4f
	ret nz                                           ; $44be: $c0

	ld bc, $01a0                                     ; $44bf: $01 $a0 $01
	nop                                              ; $44c2: $00
	ld d, a                                          ; $44c3: $57
	ret nz                                           ; $44c4: $c0

	ld bc, $09a0                                     ; $44c5: $01 $a0 $09
	nop                                              ; $44c8: $00
	ld e, [hl]                                       ; $44c9: $5e
	ld [bc], a                                       ; $44ca: $02
	jp nc, $2ad3                                     ; $44cb: $d2 $d3 $2a

	ret nz                                           ; $44ce: $c0

	ld bc, $09a0                                     ; $44cf: $01 $a0 $09
	nop                                              ; $44d2: $00
	ld l, c                                          ; $44d3: $69
	ret nz                                           ; $44d4: $c0

	ld bc, $01a0                                     ; $44d5: $01 $a0 $01
	nop                                              ; $44d8: $00
	ld l, a                                          ; $44d9: $6f
	ret nz                                           ; $44da: $c0

	ld bc, $09a0                                     ; $44db: $01 $a0 $09
	nop                                              ; $44de: $00
	ld [hl], e                                       ; $44df: $73
	ret nz                                           ; $44e0: $c0

	ld bc, $01a0                                     ; $44e1: $01 $a0 $01
	nop                                              ; $44e4: $00
	ld c, d                                          ; $44e5: $4a
	ret nz                                           ; $44e6: $c0

	ld bc, $09a0                                     ; $44e7: $01 $a0 $09
	nop                                              ; $44ea: $00
	ld a, b                                          ; $44eb: $78
	ret nz                                           ; $44ec: $c0

	ld bc, $01a0                                     ; $44ed: $01 $a0 $01
	nop                                              ; $44f0: $00
	ld d, a                                          ; $44f1: $57
	ret nz                                           ; $44f2: $c0

	ld bc, $09a0                                     ; $44f3: $01 $a0 $09
	nop                                              ; $44f6: $00
	add c                                            ; $44f7: $81
	ld bc, _EnterNamesAndDates                                     ; $44f8: $01 $d4 $2a
	ret nz                                           ; $44fb: $c0

	ld bc, $09a0                                     ; $44fc: $01 $a0 $09
	nop                                              ; $44ff: $00
	inc a                                            ; $4500: $3c
	ret nz                                           ; $4501: $c0

	ld bc, $01a0                                     ; $4502: $01 $a0 $01
	nop                                              ; $4505: $00
	ld l, a                                          ; $4506: $6f
	ret nz                                           ; $4507: $c0

	ld bc, $09a0                                     ; $4508: $01 $a0 $09
	nop                                              ; $450b: $00
	adc c                                            ; $450c: $89
	ret nz                                           ; $450d: $c0

	ld bc, $01a0                                     ; $450e: $01 $a0 $01
	nop                                              ; $4511: $00
	adc l                                            ; $4512: $8d
	ret nz                                           ; $4513: $c0

	ld bc, $09a0                                     ; $4514: $01 $a0 $09
	nop                                              ; $4517: $00
	sub d                                            ; $4518: $92
	ret nz                                           ; $4519: $c0

	ld bc, $01a0                                     ; $451a: $01 $a0 $01
	nop                                              ; $451d: $00
	ld d, a                                          ; $451e: $57
	ret nz                                           ; $451f: $c0

	ld bc, $09a0                                     ; $4520: $01 $a0 $09
	nop                                              ; $4523: $00
	sbc d                                            ; $4524: $9a
	ret nz                                           ; $4525: $c0

	dec bc                                           ; $4526: $0b

jr_089_4527:
	db $e3                                           ; $4527: $e3
	nop                                              ; $4528: $00
	ld a, a                                          ; $4529: $7f

jr_089_452a:
	ret nz                                           ; $452a: $c0

	nop                                              ; $452b: $00
	nop                                              ; $452c: $00
	and d                                            ; $452d: $a2
	ret nz                                           ; $452e: $c0

	ld bc, $01a0                                     ; $452f: $01 $a0 $01
	nop                                              ; $4532: $00
	and l                                            ; $4533: $a5
	db $e4                                           ; $4534: $e4
	nop                                              ; $4535: $00
	ld [bc], a                                       ; $4536: $02
	add hl, bc                                       ; $4537: $09
	inc c                                            ; $4538: $0c
	pop bc                                           ; $4539: $c1
	ld e, c                                          ; $453a: $59
	db $e3                                           ; $453b: $e3
	nop                                              ; $453c: $00
	ld h, [hl]                                       ; $453d: $66
	pop hl                                           ; $453e: $e1
	ld [bc], a                                       ; $453f: $02
	ld [bc], a                                       ; $4540: $02
	jr z, jr_089_4527                                ; $4541: $28 $e4

	nop                                              ; $4543: $00
	ld [bc], a                                       ; $4544: $02
	add hl, bc                                       ; $4545: $09
	inc e                                            ; $4546: $1c
	ret nc                                           ; $4547: $d0

	adc e                                            ; $4548: $8b
	inc bc                                           ; $4549: $03
	ld d, $b0                                        ; $454a: $16 $b0
	ld [$01c0], sp                                   ; $454c: $08 $c0 $01
	and b                                            ; $454f: $a0
	add hl, bc                                       ; $4550: $09
	nop                                              ; $4551: $00
	xor l                                            ; $4552: $ad
	ret nz                                           ; $4553: $c0

	ld bc, $01a0                                     ; $4554: $01 $a0 $01
	nop                                              ; $4557: $00
	or e                                             ; $4558: $b3
	ret nz                                           ; $4559: $c0

	ld bc, $09a0                                     ; $455a: $01 $a0 $09
	nop                                              ; $455d: $00
	or a                                             ; $455e: $b7
	push hl                                          ; $455f: $e5
	ld h, [hl]                                       ; $4560: $66
	nop                                              ; $4561: $00
	nop                                              ; $4562: $00
	add hl, bc                                       ; $4563: $09
	ld b, a                                          ; $4564: $47
	pop hl                                           ; $4565: $e1
	ld [bc], a                                       ; $4566: $02
	ld [bc], a                                       ; $4567: $02
	jr z, jr_089_452a                                ; $4568: $28 $c0

	ld bc, $09a0                                     ; $456a: $01 $a0 $09
	nop                                              ; $456d: $00
	cp d                                             ; $456e: $ba
	ret nz                                           ; $456f: $c0

	ld bc, $01a0                                     ; $4570: $01 $a0 $01

jr_089_4573:
	nop                                              ; $4573: $00
	cp h                                             ; $4574: $bc
	add d                                            ; $4575: $82
	ret nz                                           ; $4576: $c0

	dec de                                           ; $4577: $1b
	ret c                                            ; $4578: $d8

	ld [bc], a                                       ; $4579: $02
	ret nc                                           ; $457a: $d0

	pop de                                           ; $457b: $d1
	ld [de], a                                       ; $457c: $12
	ret nz                                           ; $457d: $c0

	ld bc, $09a0                                     ; $457e: $01 $a0 $09
	nop                                              ; $4581: $00
	ret nz                                           ; $4582: $c0

	ret nz                                           ; $4583: $c0

	ld bc, $01a0                                     ; $4584: $01 $a0 $01
	nop                                              ; $4587: $00
	ret z                                            ; $4588: $c8

	ret nz                                           ; $4589: $c0

	ld bc, $09a0                                     ; $458a: $01 $a0 $09
	nop                                              ; $458d: $00
	call z, $d202                                    ; $458e: $cc $02 $d2
	db $d3                                           ; $4591: $d3
	ld b, $c0                                        ; $4592: $06 $c0
	ld bc, $09a0                                     ; $4594: $01 $a0 $09
	nop                                              ; $4597: $00
	rst SubAFromHL                                          ; $4598: $d7
	ld bc, $06d4                                     ; $4599: $01 $d4 $06
	ret nz                                           ; $459c: $c0

	ld bc, $09a0                                     ; $459d: $01 $a0 $09
	nop                                              ; $45a0: $00
	db $e3                                           ; $45a1: $e3
	ret nz                                           ; $45a2: $c0

	ld bc, $01a0                                     ; $45a3: $01 $a0 $01
	nop                                              ; $45a6: $00
	pop af                                           ; $45a7: $f1
	push hl                                          ; $45a8: $e5
	ld h, a                                          ; $45a9: $67
	nop                                              ; $45aa: $00
	nop                                              ; $45ab: $00
	add hl, bc                                       ; $45ac: $09
	ld e, e                                          ; $45ad: $5b
	pop hl                                           ; $45ae: $e1

jr_089_45af:
	ld [bc], a                                       ; $45af: $02
	ld [bc], a                                       ; $45b0: $02
	jr nc, jr_089_4573                               ; $45b1: $30 $c0

	ld bc, $09a0                                     ; $45b3: $01 $a0 $09
	nop                                              ; $45b6: $00
	push af                                          ; $45b7: $f5
	ret nz                                           ; $45b8: $c0

	ld bc, $01a0                                     ; $45b9: $01 $a0 $01
	nop                                              ; $45bc: $00
	rst $38                                          ; $45bd: $ff
	add d                                            ; $45be: $82
	adc e                                            ; $45bf: $8b
	inc bc                                           ; $45c0: $03
	ld l, $02                                        ; $45c1: $2e $02
	or b                                             ; $45c3: $b0
	sbc b                                            ; $45c4: $98
	inc c                                            ; $45c5: $0c
	ret nz                                           ; $45c6: $c0

	ld bc, $09a0                                     ; $45c7: $01 $a0 $09
	ld bc, $c001                                     ; $45ca: $01 $01 $c0
	ld bc, $01a0                                     ; $45cd: $01 $a0 $01
	ld bc, $080c                                     ; $45d0: $01 $0c $08
	or b                                             ; $45d3: $b0
	sbc d                                            ; $45d4: $9a
	or b                                             ; $45d5: $b0
	sbc c                                            ; $45d6: $99
	or b                                             ; $45d7: $b0
	sbc e                                            ; $45d8: $9b
	or b                                             ; $45d9: $b0
	sbc h                                            ; $45da: $9c
	inc c                                            ; $45db: $0c
	ret nz                                           ; $45dc: $c0

	ld bc, $09a0                                     ; $45dd: $01 $a0 $09
	ld bc, $c011                                     ; $45e0: $01 $11 $c0
	ld bc, $01a0                                     ; $45e3: $01 $a0 $01
	ld bc, $041f                                     ; $45e6: $01 $1f $04
	or b                                             ; $45e9: $b0
	sbc l                                            ; $45ea: $9d
	or b                                             ; $45eb: $b0
	sbc [hl]                                         ; $45ec: $9e
	jr jr_089_45af                                   ; $45ed: $18 $c0

	ld bc, $09a0                                     ; $45ef: $01 $a0 $09
	ld bc, $c023                                     ; $45f2: $01 $23 $c0
	ld bc, $01a0                                     ; $45f5: $01 $a0 $01
	ld bc, $c026                                     ; $45f8: $01 $26 $c0
	ld bc, $09a0                                     ; $45fb: $01 $a0 $09
	ld bc, $c02d                                     ; $45fe: $01 $2d $c0
	ld bc, $01a0                                     ; $4601: $01 $a0 $01
	ld bc, $e432                                     ; $4604: $01 $32 $e4
	nop                                              ; $4607: $00
	ld [bc], a                                       ; $4608: $02
	add hl, bc                                       ; $4609: $09
	cp l                                             ; $460a: $bd
	pop bc                                           ; $460b: $c1
	ld e, c                                          ; $460c: $59
	db $e3                                           ; $460d: $e3
	nop                                              ; $460e: $00
	ld h, [hl]                                       ; $460f: $66
	add c                                            ; $4610: $81

jr_089_4611:
	ret nz                                           ; $4611: $c0

	dec de                                           ; $4612: $1b
	ret c                                            ; $4613: $d8

	ld [bc], a                                       ; $4614: $02
	ret nc                                           ; $4615: $d0

	pop de                                           ; $4616: $d1
	ld h, d                                          ; $4617: $62
	add c                                            ; $4618: $81
	ret nz                                           ; $4619: $c0

	add b                                            ; $461a: $80
	ld bc, $30d3                                     ; $461b: $01 $d3 $30
	ret nz                                           ; $461e: $c0

	ld bc, $09a0                                     ; $461f: $01 $a0 $09
	ld bc, $c03b                                     ; $4622: $01 $3b $c0
	ld bc, $01a0                                     ; $4625: $01 $a0 $01
	ld bc, $c03c                                     ; $4628: $01 $3c $c0
	ld bc, $09a0                                     ; $462b: $01 $a0 $09
	ld bc, $c040                                     ; $462e: $01 $40 $c0
	ld bc, $01a0                                     ; $4631: $01 $a0 $01
	ld bc, $c04c                                     ; $4634: $01 $4c $c0
	ld bc, $09a0                                     ; $4637: $01 $a0 $09
	ld bc, $c04f                                     ; $463a: $01 $4f $c0
	ld bc, $01a0                                     ; $463d: $01 $a0 $01
	ld bc, $c054                                     ; $4640: $01 $54 $c0
	ld bc, $09a0                                     ; $4643: $01 $a0 $09
	ld bc, $c059                                     ; $4646: $01 $59 $c0
	ld bc, $01a0                                     ; $4649: $01 $a0 $01
	ld bc, $005e                                     ; $464c: $01 $5e $00
	jr jr_089_4611                                   ; $464f: $18 $c0

	ld bc, $09a0                                     ; $4651: $01 $a0 $09
	ld bc, $c067                                     ; $4654: $01 $67 $c0
	ld bc, $01a0                                     ; $4657: $01 $a0 $01
	ld bc, $c073                                     ; $465a: $01 $73 $c0
	ld bc, $09a0                                     ; $465d: $01 $a0 $09
	ld bc, $c07b                                     ; $4660: $01 $7b $c0
	ld bc, $01a0                                     ; $4663: $01 $a0 $01
	ld bc, $c081                                     ; $4666: $01 $81 $c0
	ld bc, $09a0                                     ; $4669: $01 $a0 $09
	ld bc, $c08d                                     ; $466c: $01 $8d $c0
	ld bc, $01a0                                     ; $466f: $01 $a0 $01
	ld bc, $c094                                     ; $4672: $01 $94 $c0
	ld bc, $09a0                                     ; $4675: $01 $a0 $09
	ld bc, $0099                                     ; $4678: $01 $99 $00
	ld [hl-], a                                      ; $467b: $32
	add c                                            ; $467c: $81
	ret nz                                           ; $467d: $c0

	add b                                            ; $467e: $80
	ld bc, $18d3                                     ; $467f: $01 $d3 $18
	ret nz                                           ; $4682: $c0

	ld bc, $09a0                                     ; $4683: $01 $a0 $09
	ld bc, $c03b                                     ; $4686: $01 $3b $c0
	ld bc, $01a0                                     ; $4689: $01 $a0 $01
	ld bc, $c03c                                     ; $468c: $01 $3c $c0
	ld bc, $09a0                                     ; $468f: $01 $a0 $09
	ld bc, $c09d                                     ; $4692: $01 $9d $c0
	ld bc, $01a0                                     ; $4695: $01 $a0 $01
	ld bc, $00a7                                     ; $4698: $01 $a7 $00
	inc c                                            ; $469b: $0c
	ret nz                                           ; $469c: $c0

	ld bc, $09a0                                     ; $469d: $01 $a0 $09

Jump_089_46a0:
	ld bc, $c0b1                                     ; $46a0: $01 $b1 $c0
	ld bc, $01a0                                     ; $46a3: $01 $a0 $01
	ld bc, $c0bd                                     ; $46a6: $01 $bd $c0
	ld bc, $09a0                                     ; $46a9: $01 $a0 $09
	ld bc, $c0c2                                     ; $46ac: $01 $c2 $c0
	set 0, c                                         ; $46af: $cb $c1
	ld e, e                                          ; $46b1: $5b
	ret nz                                           ; $46b2: $c0

	ld hl, $d8d1                                     ; $46b3: $21 $d1 $d8
	add c                                            ; $46b6: $81
	adc e                                            ; $46b7: $8b
	ld bc, $0266                                     ; $46b8: $01 $66 $02
	or b                                             ; $46bb: $b0
	inc bc                                           ; $46bc: $03
	inc b                                            ; $46bd: $04
	push hl                                          ; $46be: $e5
	ld h, l                                          ; $46bf: $65
	ld [bc], a                                       ; $46c0: $02
	ld a, l                                          ; $46c1: $7d
	nop                                              ; $46c2: $00
	inc b                                            ; $46c3: $04

jr_089_46c4:
	push hl                                          ; $46c4: $e5
	ld bc, $b119                                     ; $46c5: $01 $19 $b1
	ret                                              ; $46c8: $c9


	ld [$1628], sp                                   ; $46c9: $08 $28 $16
	pop hl                                           ; $46cc: $e1
	ld [bc], a                                       ; $46cd: $02
	ld [bc], a                                       ; $46ce: $02
	ld e, b                                          ; $46cf: $58
	ret nz                                           ; $46d0: $c0

	ld bc, $06a0                                     ; $46d1: $01 $a0 $06
	nop                                              ; $46d4: $00
	ld bc, $01c0                                     ; $46d5: $01 $c0 $01
	and b                                            ; $46d8: $a0
	ld bc, $0500                                     ; $46d9: $01 $00 $05
	ret nz                                           ; $46dc: $c0

	ld bc, $06a0                                     ; $46dd: $01 $a0 $06
	nop                                              ; $46e0: $00
	dec c                                            ; $46e1: $0d
	ld [hl], $00                                     ; $46e2: $36 $00
	ld [de], a                                       ; $46e4: $12
	add hl, bc                                       ; $46e5: $09
	dec c                                            ; $46e6: $0d
	ret nz                                           ; $46e7: $c0

	ld bc, $06a0                                     ; $46e8: $01 $a0 $06
	nop                                              ; $46eb: $00
	ld d, $00                                        ; $46ec: $16 $00
	add b                                            ; $46ee: $80
	and b                                            ; $46ef: $a0
	nop                                              ; $46f0: $00
	db $e4                                           ; $46f1: $e4
	ld bc, $0053                                     ; $46f2: $01 $53 $00
	ld e, $09                                        ; $46f5: $1e $09
	ld hl, $02e1                                     ; $46f7: $21 $e1 $02
	inc bc                                           ; $46fa: $03
	dec de                                           ; $46fb: $1b
	ret nz                                           ; $46fc: $c0

Jump_089_46fd:
	ld bc, $06a0                                     ; $46fd: $01 $a0 $06
	nop                                              ; $4700: $00
	jr nz, jr_089_46c4                               ; $4701: $20 $c1

	ld e, e                                          ; $4703: $5b
	nop                                              ; $4704: $00
	add b                                            ; $4705: $80
	inc bc                                           ; $4706: $03
	inc d                                            ; $4707: $14
	ret nz                                           ; $4708: $c0

	inc h                                            ; $4709: $24
	pop de                                           ; $470a: $d1
	jp c, $25c0                                      ; $470b: $da $c0 $25

	pop de                                           ; $470e: $d1
	jp c, $23c0                                      ; $470f: $da $c0 $23

	ldh [rAUD1HIGH], a                               ; $4712: $e0 $14
	jp c, Jump_089_65e5                              ; $4714: $da $e5 $65

	nop                                              ; $4717: $00
	rst $38                                          ; $4718: $ff
	add hl, bc                                       ; $4719: $09
	ld [hl], a                                       ; $471a: $77
	ret nz                                           ; $471b: $c0

	rst GetHLinHL                                          ; $471c: $cf
	ldh [rIE], a                                     ; $471d: $e0 $ff
	ret nz                                           ; $471f: $c0

	ld bc, $01a0                                     ; $4720: $01 $a0 $01
	nop                                              ; $4723: $00
	inc h                                            ; $4724: $24
	pop hl                                           ; $4725: $e1
	ld [bc], a                                       ; $4726: $02
	ld c, $65                                        ; $4727: $0e $65
	add c                                            ; $4729: $81
	ret nz                                           ; $472a: $c0

	dec de                                           ; $472b: $1b
	jp c, $d501                                      ; $472c: $da $01 $d5

	ld c, l                                          ; $472f: $4d
	pop bc                                           ; $4730: $c1
	rlca                                             ; $4731: $07
	jp nc, $c0d0                                     ; $4732: $d2 $d0 $c0

	ld bc, $07a0                                     ; $4735: $01 $a0 $07
	nop                                              ; $4738: $00
	ld a, [hl+]                                      ; $4739: $2a
	ret nz                                           ; $473a: $c0

	ld bc, $01a0                                     ; $473b: $01 $a0 $01
	nop                                              ; $473e: $00
	inc l                                            ; $473f: $2c
	ret nz                                           ; $4740: $c0

	ld bc, $07a0                                     ; $4741: $01 $a0 $07
	nop                                              ; $4744: $00
	ld [hl-], a                                      ; $4745: $32
	ret nz                                           ; $4746: $c0

	ld bc, $01a0                                     ; $4747: $01 $a0 $01
	nop                                              ; $474a: $00
	ccf                                              ; $474b: $3f
	ret nz                                           ; $474c: $c0

	ld bc, $07a0                                     ; $474d: $01 $a0 $07
	nop                                              ; $4750: $00
	ld b, l                                          ; $4751: $45
	ret nz                                           ; $4752: $c0

	ld bc, $01a0                                     ; $4753: $01 $a0 $01
	nop                                              ; $4756: $00
	ld c, e                                          ; $4757: $4b
	ret nz                                           ; $4758: $c0

	ld bc, $07a0                                     ; $4759: $01 $a0 $07
	nop                                              ; $475c: $00

jr_089_475d:
	ld d, b                                          ; $475d: $50
	ret nz                                           ; $475e: $c0

	ld bc, $01a0                                     ; $475f: $01 $a0 $01
	nop                                              ; $4762: $00
	ld e, d                                          ; $4763: $5a
	ret nz                                           ; $4764: $c0

	ld bc, $07a0                                     ; $4765: $01 $a0 $07
	nop                                              ; $4768: $00
	ld l, b                                          ; $4769: $68
	ret nz                                           ; $476a: $c0

	dec bc                                           ; $476b: $0b
	db $e3                                           ; $476c: $e3
	nop                                              ; $476d: $00
	ld a, a                                          ; $476e: $7f
	ret nz                                           ; $476f: $c0

	nop                                              ; $4770: $00
	nop                                              ; $4771: $00
	ld l, [hl]                                       ; $4772: $6e
	ret nz                                           ; $4773: $c0

	ld bc, $01a0                                     ; $4774: $01 $a0 $01
	nop                                              ; $4777: $00
	ld [hl], c                                       ; $4778: $71
	push hl                                          ; $4779: $e5
	ld h, l                                          ; $477a: $65
	ld [bc], a                                       ; $477b: $02
	inc bc                                           ; $477c: $03
	nop                                              ; $477d: $00
	inc de                                           ; $477e: $13
	pop bc                                           ; $477f: $c1
	rlca                                             ; $4780: $07
	jp nc, $c0d0                                     ; $4781: $d2 $d0 $c0

	ld bc, $06a0                                     ; $4784: $01 $a0 $06
	nop                                              ; $4787: $00
	ld a, [hl+]                                      ; $4788: $2a
	ret nz                                           ; $4789: $c0

	ld bc, $01a0                                     ; $478a: $01 $a0 $01
	nop                                              ; $478d: $00
	inc l                                            ; $478e: $2c
	db $e4                                           ; $478f: $e4
	nop                                              ; $4790: $00
	ld [bc], a                                       ; $4791: $02
	add hl, bc                                       ; $4792: $09
	or c                                             ; $4793: $b1
	add d                                            ; $4794: $82
	ret nz                                           ; $4795: $c0

	dec de                                           ; $4796: $1b
	jp c, $d002                                      ; $4797: $da $02 $d0

	pop de                                           ; $479a: $d1
	jr nc, jr_089_475d                               ; $479b: $30 $c0

	ld bc, $06a0                                     ; $479d: $01 $a0 $06
	nop                                              ; $47a0: $00
	halt                                             ; $47a1: $76
	ret nz                                           ; $47a2: $c0

	ld bc, $01a0                                     ; $47a3: $01 $a0 $01
	nop                                              ; $47a6: $00
	ld a, d                                          ; $47a7: $7a
	ret nz                                           ; $47a8: $c0

	ld bc, $06a0                                     ; $47a9: $01 $a0 $06
	nop                                              ; $47ac: $00
	ld a, [hl]                                       ; $47ad: $7e
	ret nz                                           ; $47ae: $c0

	ld bc, $01a0                                     ; $47af: $01 $a0 $01
	nop                                              ; $47b2: $00
	add e                                            ; $47b3: $83
	ret nz                                           ; $47b4: $c0

	ld bc, $06a0                                     ; $47b5: $01 $a0 $06
	nop                                              ; $47b8: $00
	adc c                                            ; $47b9: $89
	ret nz                                           ; $47ba: $c0

	ld bc, $01a0                                     ; $47bb: $01 $a0 $01
	nop                                              ; $47be: $00
	adc l                                            ; $47bf: $8d
	ret nz                                           ; $47c0: $c0

	ld bc, $06a0                                     ; $47c1: $01 $a0 $06
	nop                                              ; $47c4: $00
	sub e                                            ; $47c5: $93
	ret nz                                           ; $47c6: $c0

	ld bc, $01a0                                     ; $47c7: $01 $a0 $01
	nop                                              ; $47ca: $00
	sbc l                                            ; $47cb: $9d
	ld [bc], a                                       ; $47cc: $02
	jp nc, $30d3                                     ; $47cd: $d2 $d3 $30

	ret nz                                           ; $47d0: $c0

	ld bc, $06a0                                     ; $47d1: $01 $a0 $06
	nop                                              ; $47d4: $00
	and c                                            ; $47d5: $a1
	ret nz                                           ; $47d6: $c0

	ld bc, $01a0                                     ; $47d7: $01 $a0 $01
	nop                                              ; $47da: $00
	and l                                            ; $47db: $a5
	ret nz                                           ; $47dc: $c0

	ld bc, $06a0                                     ; $47dd: $01 $a0 $06
	nop                                              ; $47e0: $00
	xor e                                            ; $47e1: $ab
	ret nz                                           ; $47e2: $c0

	ld bc, $01a0                                     ; $47e3: $01 $a0 $01
	nop                                              ; $47e6: $00
	add e                                            ; $47e7: $83
	ret nz                                           ; $47e8: $c0

	ld bc, $06a0                                     ; $47e9: $01 $a0 $06
	nop                                              ; $47ec: $00
	or b                                             ; $47ed: $b0
	ret nz                                           ; $47ee: $c0

	ld bc, $01a0                                     ; $47ef: $01 $a0 $01
	nop                                              ; $47f2: $00
	adc l                                            ; $47f3: $8d
	ret nz                                           ; $47f4: $c0

	ld bc, $06a0                                     ; $47f5: $01 $a0 $06
	nop                                              ; $47f8: $00
	or e                                             ; $47f9: $b3
	ret nz                                           ; $47fa: $c0

	ld bc, $01a0                                     ; $47fb: $01 $a0 $01
	nop                                              ; $47fe: $00
	sbc l                                            ; $47ff: $9d
	ld bc, $30d4                                     ; $4800: $01 $d4 $30
	ret nz                                           ; $4803: $c0

	ld bc, $06a0                                     ; $4804: $01 $a0 $06
	nop                                              ; $4807: $00
	cp l                                             ; $4808: $bd
	ret nz                                           ; $4809: $c0

	ld bc, $01a0                                     ; $480a: $01 $a0 $01
	nop                                              ; $480d: $00
	jp $01c0                                         ; $480e: $c3 $c0 $01


	and b                                            ; $4811: $a0
	ld b, $00                                        ; $4812: $06 $00
	ret                                              ; $4814: $c9


	ret nz                                           ; $4815: $c0

	ld bc, $01a0                                     ; $4816: $01 $a0 $01
	nop                                              ; $4819: $00
	adc $c0                                          ; $481a: $ce $c0
	ld bc, $06a0                                     ; $481c: $01 $a0 $06
	nop                                              ; $481f: $00
	db $d3                                           ; $4820: $d3
	ret nz                                           ; $4821: $c0

	ld bc, $01a0                                     ; $4822: $01 $a0 $01
	nop                                              ; $4825: $00
	adc l                                            ; $4826: $8d
	ret nz                                           ; $4827: $c0

	ld bc, $06a0                                     ; $4828: $01 $a0 $06
	nop                                              ; $482b: $00
	reti                                             ; $482c: $d9


	ret nz                                           ; $482d: $c0

	ld bc, $01a0                                     ; $482e: $01 $a0 $01
	nop                                              ; $4831: $00
	ldh [$c0], a                                     ; $4832: $e0 $c0
	dec bc                                           ; $4834: $0b
	db $e3                                           ; $4835: $e3
	nop                                              ; $4836: $00
	ld a, a                                          ; $4837: $7f
	ret nz                                           ; $4838: $c0

	nop                                              ; $4839: $00
	nop                                              ; $483a: $00
	ld l, [hl]                                       ; $483b: $6e
	ret nz                                           ; $483c: $c0

	ld bc, $01a0                                     ; $483d: $01 $a0 $01
	nop                                              ; $4840: $00
	push hl                                          ; $4841: $e5
	db $e4                                           ; $4842: $e4
	nop                                              ; $4843: $00
	ld [bc], a                                       ; $4844: $02
	add hl, bc                                       ; $4845: $09
	scf                                              ; $4846: $37
	pop bc                                           ; $4847: $c1
	ld e, c                                          ; $4848: $59
	db $e3                                           ; $4849: $e3
	nop                                              ; $484a: $00
	ld h, [hl]                                       ; $484b: $66
	ret nc                                           ; $484c: $d0

	adc e                                            ; $484d: $8b
	inc bc                                           ; $484e: $03
	ld d, $b0                                        ; $484f: $16 $b0
	add hl, bc                                       ; $4851: $09
	ei                                               ; $4852: $fb
	pop af                                           ; $4853: $f1
	add b                                            ; $4854: $80
	and b                                            ; $4855: $a0
	nop                                              ; $4856: $00
	ld d, $c0                                        ; $4857: $16 $c0
	ld bc, $01a0                                     ; $4859: $01 $a0 $01
	nop                                              ; $485c: $00
	db $ed                                           ; $485d: $ed
	pop hl                                           ; $485e: $e1
	ld [bc], a                                       ; $485f: $02
	ld [bc], a                                       ; $4860: $02
	ld e, b                                          ; $4861: $58
	ret nz                                           ; $4862: $c0

	ld bc, $06a0                                     ; $4863: $01 $a0 $06
	nop                                              ; $4866: $00
	di                                               ; $4867: $f3
	ret nz                                           ; $4868: $c0

	ld bc, $01a0                                     ; $4869: $01 $a0 $01
	nop                                              ; $486c: $00
	rst FarCall                                          ; $486d: $f7
	ret nz                                           ; $486e: $c0

	ld bc, $01a0                                     ; $486f: $01 $a0 $01
	nop                                              ; $4872: $00
	db $fc                                           ; $4873: $fc
	ret nz                                           ; $4874: $c0

	ld bc, $06a0                                     ; $4875: $01 $a0 $06
	ld bc, $e502                                     ; $4878: $01 $02 $e5
	ld h, [hl]                                       ; $487b: $66
	nop                                              ; $487c: $00
	nop                                              ; $487d: $00
	add hl, bc                                       ; $487e: $09
	ld d, e                                          ; $487f: $53
	pop hl                                           ; $4880: $e1
	ld [bc], a                                       ; $4881: $02
	ld [bc], a                                       ; $4882: $02
	ld e, b                                          ; $4883: $58
	ret nz                                           ; $4884: $c0

	ld bc, $06a0                                     ; $4885: $01 $a0 $06
	ld bc, $c003                                     ; $4888: $01 $03 $c0
	ld bc, $01a0                                     ; $488b: $01 $a0 $01
	ld bc, $820a                                     ; $488e: $01 $0a $82
	ret nz                                           ; $4891: $c0

	dec de                                           ; $4892: $1b
	jp c, $d002                                      ; $4893: $da $02 $d0

	pop de                                           ; $4896: $d1
	ld [de], a                                       ; $4897: $12
	ret nz                                           ; $4898: $c0

	ld bc, $06a0                                     ; $4899: $01 $a0 $06
	ld bc, $c00f                                     ; $489c: $01 $0f $c0
	ld bc, $01a0                                     ; $489f: $01 $a0 $01
	ld bc, $c020                                     ; $48a2: $01 $20 $c0
	ld bc, $06a0                                     ; $48a5: $01 $a0 $06
	ld bc, $0226                                     ; $48a8: $01 $26 $02
	jp nc, $12d3                                     ; $48ab: $d2 $d3 $12

	ret nz                                           ; $48ae: $c0

jr_089_48af:
	ld bc, $06a0                                     ; $48af: $01 $a0 $06
	ld bc, $c029                                     ; $48b2: $01 $29 $c0
	ld bc, $01a0                                     ; $48b5: $01 $a0 $01
	ld bc, $c03c                                     ; $48b8: $01 $3c $c0
	ld bc, $06a0                                     ; $48bb: $01 $a0 $06
	ld bc, $0126                                     ; $48be: $01 $26 $01
	call nc, $c00c                                   ; $48c1: $d4 $0c $c0
	ld bc, $06a0                                     ; $48c4: $01 $a0 $06
	ld bc, $c044                                     ; $48c7: $01 $44 $c0
	ld bc, $01a0                                     ; $48ca: $01 $a0 $01
	ld bc, $e54f                                     ; $48cd: $01 $4f $e5
	ld h, a                                          ; $48d0: $67
	nop                                              ; $48d1: $00
	nop                                              ; $48d2: $00
	add hl, bc                                       ; $48d3: $09
	ret nz                                           ; $48d4: $c0

	ret                                              ; $48d5: $c9


	pop hl                                           ; $48d6: $e1
	ld [bc], a                                       ; $48d7: $02
	ld [bc], a                                       ; $48d8: $02
	ld h, b                                          ; $48d9: $60
	ret nz                                           ; $48da: $c0

	ld bc, $06a0                                     ; $48db: $01 $a0 $06
	ld bc, $c053                                     ; $48de: $01 $53 $c0
	ld bc, $01a0                                     ; $48e1: $01 $a0 $01
	ld bc, $8256                                     ; $48e4: $01 $56 $82
	adc e                                            ; $48e7: $8b
	inc bc                                           ; $48e8: $03
	ld l, $02                                        ; $48e9: $2e $02
	or b                                             ; $48eb: $b0
	sbc b                                            ; $48ec: $98
	jr jr_089_48af                                   ; $48ed: $18 $c0

	ld bc, $06a0                                     ; $48ef: $01 $a0 $06
	ld bc, $c059                                     ; $48f2: $01 $59 $c0
	ld bc, $01a0                                     ; $48f5: $01 $a0 $01
	ld bc, $c05f                                     ; $48f8: $01 $5f $c0
	ld bc, $06a0                                     ; $48fb: $01 $a0 $06
	ld bc, $c066                                     ; $48fe: $01 $66 $c0
	ld bc, $01a0                                     ; $4901: $01 $a0 $01
	ld bc, $0871                                     ; $4904: $01 $71 $08
	or b                                             ; $4907: $b0
	sbc d                                            ; $4908: $9a
	or b                                             ; $4909: $b0
	sbc c                                            ; $490a: $99
	or b                                             ; $490b: $b0
	sbc e                                            ; $490c: $9b
	or b                                             ; $490d: $b0
	sbc h                                            ; $490e: $9c
	ld c, d                                          ; $490f: $4a
	add e                                            ; $4910: $83
	adc e                                            ; $4911: $8b
	inc bc                                           ; $4912: $03
	ld l, $02                                        ; $4913: $2e $02
	or b                                             ; $4915: $b0
	sbc d                                            ; $4916: $9a
	ld b, $c0                                        ; $4917: $06 $c0
	ld bc, $06a0                                     ; $4919: $01 $a0 $06
	ld bc, $0273                                     ; $491c: $01 $73 $02
	or b                                             ; $491f: $b0
	sbc c                                            ; $4920: $99
	ld b, $c0                                        ; $4921: $06 $c0
	ld bc, $06a0                                     ; $4923: $01 $a0 $06
	ld bc, $0278                                     ; $4926: $01 $78 $02
	or b                                             ; $4929: $b0
	sbc e                                            ; $492a: $9b
	ld b, $c0                                        ; $492b: $06 $c0
	ld bc, $06a0                                     ; $492d: $01 $a0 $06
	ld bc, $027e                                     ; $4930: $01 $7e $02
	or b                                             ; $4933: $b0
	sbc h                                            ; $4934: $9c
	ld b, $c0                                        ; $4935: $06 $c0
	ld bc, $06a0                                     ; $4937: $01 $a0 $06
	ld bc, $c084                                     ; $493a: $01 $84 $c0
	ld bc, $01a0                                     ; $493d: $01 $a0 $01
	ld bc, $c08a                                     ; $4940: $01 $8a $c0
	ld bc, $06a0                                     ; $4943: $01 $a0 $06
	ld bc, $c090                                     ; $4946: $01 $90 $c0
	ld bc, $01a0                                     ; $4949: $01 $a0 $01
	ld bc, $c095                                     ; $494c: $01 $95 $c0
	ld bc, $06a0                                     ; $494f: $01 $a0 $06
	ld bc, $c09b                                     ; $4952: $01 $9b $c0
	ld bc, $01a0                                     ; $4955: $01 $a0 $01
	ld bc, $0471                                     ; $4958: $01 $71 $04
	or b                                             ; $495b: $b0
	sbc l                                            ; $495c: $9d
	or b                                             ; $495d: $b0
	sbc [hl]                                         ; $495e: $9e
	inc a                                            ; $495f: $3c
	ret nz                                           ; $4960: $c0

	ld bc, $06a0                                     ; $4961: $01 $a0 $06
	ld bc, $c0a5                                     ; $4964: $01 $a5 $c0
	ld bc, $01a0                                     ; $4967: $01 $a0 $01
	ld bc, $c0a7                                     ; $496a: $01 $a7 $c0
	ld bc, $06a0                                     ; $496d: $01 $a0 $06
	ld bc, $c0aa                                     ; $4970: $01 $aa $c0
	ld bc, $01a0                                     ; $4973: $01 $a0 $01
	ld bc, $c0b6                                     ; $4976: $01 $b6 $c0
	ld bc, $06a0                                     ; $4979: $01 $a0 $06
	ld bc, $c0c1                                     ; $497c: $01 $c1 $c0
	ld bc, $01a0                                     ; $497f: $01 $a0 $01
	ld bc, $c0cd                                     ; $4982: $01 $cd $c0
	ld bc, $06a0                                     ; $4985: $01 $a0 $06
	ld bc, $c0d6                                     ; $4988: $01 $d6 $c0
	ld bc, $01a0                                     ; $498b: $01 $a0 $01
	ld bc, $c0d7                                     ; $498e: $01 $d7 $c0
	ld bc, $06a0                                     ; $4991: $01 $a0 $06
	ld bc, $c0de                                     ; $4994: $01 $de $c0
	ld bc, $01a0                                     ; $4997: $01 $a0 $01
	ld bc, $e4e8                                     ; $499a: $01 $e8 $e4
	nop                                              ; $499d: $00
	ld [bc], a                                       ; $499e: $02
	add hl, bc                                       ; $499f: $09
	ret nz                                           ; $49a0: $c0

	set 0, c                                         ; $49a1: $cb $c1
	ld e, c                                          ; $49a3: $59
	db $e3                                           ; $49a4: $e3
	nop                                              ; $49a5: $00
	ld h, [hl]                                       ; $49a6: $66
	add c                                            ; $49a7: $81
	ret nz                                           ; $49a8: $c0

	dec de                                           ; $49a9: $1b
	jp c, $d002                                      ; $49aa: $da $02 $d0

	pop de                                           ; $49ad: $d1
	ld e, h                                          ; $49ae: $5c
	add c                                            ; $49af: $81
	ret nz                                           ; $49b0: $c0

	add b                                            ; $49b1: $80
	ld bc, $36d3                                     ; $49b2: $01 $d3 $36
	ret nz                                           ; $49b5: $c0

	ld bc, $06a0                                     ; $49b6: $01 $a0 $06
	ld bc, $c0f1                                     ; $49b9: $01 $f1 $c0
	ld bc, $01a0                                     ; $49bc: $01 $a0 $01
	ld bc, $c0f8                                     ; $49bf: $01 $f8 $c0
	ld bc, $06a0                                     ; $49c2: $01 $a0 $06
	ld bc, $c0fc                                     ; $49c5: $01 $fc $c0
	ld bc, $01a0                                     ; $49c8: $01 $a0 $01
	ld [bc], a                                       ; $49cb: $02
	dec c                                            ; $49cc: $0d
	ret nz                                           ; $49cd: $c0

	ld bc, $06a0                                     ; $49ce: $01 $a0 $06
	ld [bc], a                                       ; $49d1: $02
	db $10                                           ; $49d2: $10
	ret nz                                           ; $49d3: $c0

	ld bc, $01a0                                     ; $49d4: $01 $a0 $01
	ld [bc], a                                       ; $49d7: $02
	ld a, [de]                                       ; $49d8: $1a
	ret nz                                           ; $49d9: $c0

	ld bc, $06a0                                     ; $49da: $01 $a0 $06
	ld [bc], a                                       ; $49dd: $02
	ld h, $c0                                        ; $49de: $26 $c0
	ld bc, $01a0                                     ; $49e0: $01 $a0 $01
	ld [bc], a                                       ; $49e3: $02
	ld a, [hl+]                                      ; $49e4: $2a
	ret nz                                           ; $49e5: $c0

	ld bc, $06a0                                     ; $49e6: $01 $a0 $06
	ld [bc], a                                       ; $49e9: $02
	cpl                                              ; $49ea: $2f
	nop                                              ; $49eb: $00
	ld e, $c0                                        ; $49ec: $1e $c0
	ld bc, $06a0                                     ; $49ee: $01 $a0 $06
	ld [bc], a                                       ; $49f1: $02
	ld [hl-], a                                      ; $49f2: $32
	ret nz                                           ; $49f3: $c0

	ld bc, $01a0                                     ; $49f4: $01 $a0 $01
	ld [bc], a                                       ; $49f7: $02
	dec sp                                           ; $49f8: $3b
	ret nz                                           ; $49f9: $c0

	ld bc, $06a0                                     ; $49fa: $01 $a0 $06
	ld [bc], a                                       ; $49fd: $02
	ld b, c                                          ; $49fe: $41
	ret nz                                           ; $49ff: $c0

	ld bc, $01a0                                     ; $4a00: $01 $a0 $01
	ld [bc], a                                       ; $4a03: $02
	ld d, e                                          ; $4a04: $53
	ret nz                                           ; $4a05: $c0

	ld bc, $06a0                                     ; $4a06: $01 $a0 $06
	ld bc, $0002                                     ; $4a09: $01 $02 $00
	ld b, h                                          ; $4a0c: $44
	add c                                            ; $4a0d: $81
	ret nz                                           ; $4a0e: $c0

	add b                                            ; $4a0f: $80
	ld bc, $2ad3                                     ; $4a10: $01 $d3 $2a
	ret nz                                           ; $4a13: $c0

	ld bc, $06a0                                     ; $4a14: $01 $a0 $06
	ld [bc], a                                       ; $4a17: $02
	ld e, h                                          ; $4a18: $5c
	ret nz                                           ; $4a19: $c0

	ld bc, $01a0                                     ; $4a1a: $01 $a0 $01
	ld bc, $c0f8                                     ; $4a1d: $01 $f8 $c0
	ld bc, $06a0                                     ; $4a20: $01 $a0 $06
	ld [bc], a                                       ; $4a23: $02
	ld h, c                                          ; $4a24: $61
	ret nz                                           ; $4a25: $c0

	ld bc, $01a0                                     ; $4a26: $01 $a0 $01
	ld [bc], a                                       ; $4a29: $02
	ld l, c                                          ; $4a2a: $69
	ret nz                                           ; $4a2b: $c0

	ld bc, $06a0                                     ; $4a2c: $01 $a0 $06
	ld [bc], a                                       ; $4a2f: $02
	ld [hl], d                                       ; $4a30: $72
	ret nz                                           ; $4a31: $c0

	ld bc, $01a0                                     ; $4a32: $01 $a0 $01
	ld [bc], a                                       ; $4a35: $02
	ld [hl], a                                       ; $4a36: $77
	ret nz                                           ; $4a37: $c0

	ld bc, $06a0                                     ; $4a38: $01 $a0 $06
	ld [bc], a                                       ; $4a3b: $02
	ld a, h                                          ; $4a3c: $7c
	nop                                              ; $4a3d: $00
	ld [de], a                                       ; $4a3e: $12
	ret nz                                           ; $4a3f: $c0

	ld bc, $06a0                                     ; $4a40: $01 $a0 $06
	ld [bc], a                                       ; $4a43: $02
	ld a, a                                          ; $4a44: $7f
	ret nz                                           ; $4a45: $c0

	ld bc, $01a0                                     ; $4a46: $01 $a0 $01
	ld [bc], a                                       ; $4a49: $02
	adc b                                            ; $4a4a: $88
	ret nz                                           ; $4a4b: $c0

	ld bc, $06a0                                     ; $4a4c: $01 $a0 $06
	ld bc, $c102                                     ; $4a4f: $01 $02 $c1
	ld e, e                                          ; $4a52: $5b
	ret nz                                           ; $4a53: $c0

	ld hl, $dad1                                     ; $4a54: $21 $d1 $da
	ld b, b                                          ; $4a57: $40
	add b                                            ; $4a58: $80
	and b                                            ; $4a59: $a0
	nop                                              ; $4a5a: $00
	add c                                            ; $4a5b: $81
	adc e                                            ; $4a5c: $8b
	ld bc, $0266                                     ; $4a5d: $01 $66 $02
	or b                                             ; $4a60: $b0
	inc bc                                           ; $4a61: $03
	inc b                                            ; $4a62: $04
	push hl                                          ; $4a63: $e5
	ld h, l                                          ; $4a64: $65
	ld [bc], a                                       ; $4a65: $02
	ld a, l                                          ; $4a66: $7d
	nop                                              ; $4a67: $00
	inc b                                            ; $4a68: $04
	push hl                                          ; $4a69: $e5
	ld bc, $b119                                     ; $4a6a: $01 $19 $b1
	ret                                              ; $4a6d: $c9


	ld [$1628], sp                                   ; $4a6e: $08 $28 $16
	pop hl                                           ; $4a71: $e1
	ld [bc], a                                       ; $4a72: $02
	ld [bc], a                                       ; $4a73: $02
	adc b                                            ; $4a74: $88
	ret nz                                           ; $4a75: $c0

	ld bc, $0aa0                                     ; $4a76: $01 $a0 $0a
	nop                                              ; $4a79: $00
	ld bc, $01c0                                     ; $4a7a: $01 $c0 $01
	and b                                            ; $4a7d: $a0
	ld bc, $0500                                     ; $4a7e: $01 $00 $05
	ret nz                                           ; $4a81: $c0

jr_089_4a82:
	ld bc, $0aa0                                     ; $4a82: $01 $a0 $0a
	nop                                              ; $4a85: $00
	dec c                                            ; $4a86: $0d
	scf                                              ; $4a87: $37
	nop                                              ; $4a88: $00
	ld d, $09                                        ; $4a89: $16 $09
	ld c, $c0                                        ; $4a8b: $0e $c0
	ld bc, $0aa0                                     ; $4a8d: $01 $a0 $0a
	nop                                              ; $4a90: $00
	ld a, [de]                                       ; $4a91: $1a
	pop bc                                           ; $4a92: $c1
	ld e, c                                          ; $4a93: $59
	db $e3                                           ; $4a94: $e3
	nop                                              ; $4a95: $00
	ld h, [hl]                                       ; $4a96: $66
	db $e4                                           ; $4a97: $e4
	ld bc, $000b                                     ; $4a98: $01 $0b $00
	dec e                                            ; $4a9b: $1d
	add hl, bc                                       ; $4a9c: $09
	ld hl, $02e1                                     ; $4a9d: $21 $e1 $02
	inc bc                                           ; $4aa0: $03
	dec de                                           ; $4aa1: $1b
	ret nz                                           ; $4aa2: $c0

	ld bc, $0aa0                                     ; $4aa3: $01 $a0 $0a
	nop                                              ; $4aa6: $00
	rra                                              ; $4aa7: $1f
	nop                                              ; $4aa8: $00
	add b                                            ; $4aa9: $80
	inc bc                                           ; $4aaa: $03
	dec d                                            ; $4aab: $15
	pop bc                                           ; $4aac: $c1
	ld e, e                                          ; $4aad: $5b
	push hl                                          ; $4aae: $e5
	ld h, l                                          ; $4aaf: $65
	nop                                              ; $4ab0: $00
	rst $38                                          ; $4ab1: $ff
	ret nz                                           ; $4ab2: $c0

	inc h                                            ; $4ab3: $24
	pop de                                           ; $4ab4: $d1
	db $dd                                           ; $4ab5: $dd
	ret nz                                           ; $4ab6: $c0

	dec h                                            ; $4ab7: $25
	pop de                                           ; $4ab8: $d1
	db $dd                                           ; $4ab9: $dd
	ret nz                                           ; $4aba: $c0

	inc hl                                           ; $4abb: $23
	ldh [rAUD1HIGH], a                               ; $4abc: $e0 $14
	db $dd                                           ; $4abe: $dd
	add hl, bc                                       ; $4abf: $09
	jr c, jr_089_4a82                                ; $4ac0: $38 $c0

	rst GetHLinHL                                          ; $4ac2: $cf
	ldh [rIE], a                                     ; $4ac3: $e0 $ff
	ret nz                                           ; $4ac5: $c0

	ld bc, $01a0                                     ; $4ac6: $01 $a0 $01
	nop                                              ; $4ac9: $00
	dec h                                            ; $4aca: $25
	ld h, b                                          ; $4acb: $60
	add b                                            ; $4acc: $80
	nop                                              ; $4acd: $00
	sub d                                            ; $4ace: $92
	inc h                                            ; $4acf: $24
	pop hl                                           ; $4ad0: $e1
	ld [bc], a                                       ; $4ad1: $02
	ld c, $65                                        ; $4ad2: $0e $65
	add c                                            ; $4ad4: $81
	ret nz                                           ; $4ad5: $c0

	dec de                                           ; $4ad6: $1b
	db $dd                                           ; $4ad7: $dd
	ld bc, $04d5                                     ; $4ad8: $01 $d5 $04
	push hl                                          ; $4adb: $e5
	ld h, l                                          ; $4adc: $65
	ld [bc], a                                       ; $4add: $02
	ld h, e                                          ; $4ade: $63
	nop                                              ; $4adf: $00
	inc de                                           ; $4ae0: $13
	pop bc                                           ; $4ae1: $c1
	rlca                                             ; $4ae2: $07
	jp nc, $c0d0                                     ; $4ae3: $d2 $d0 $c0

	ld bc, $0aa0                                     ; $4ae6: $01 $a0 $0a
	nop                                              ; $4ae9: $00
	dec hl                                           ; $4aea: $2b
	ret nz                                           ; $4aeb: $c0

	ld bc, $01a0                                     ; $4aec: $01 $a0 $01
	nop                                              ; $4aef: $00
	cpl                                              ; $4af0: $2f
	db $e4                                           ; $4af1: $e4
	nop                                              ; $4af2: $00
	rlca                                             ; $4af3: $07
	inc b                                            ; $4af4: $04
	push hl                                          ; $4af5: $e5
	ld h, l                                          ; $4af6: $65
	ld [bc], a                                       ; $4af7: $02
	ld [hl], d                                       ; $4af8: $72
	add hl, bc                                       ; $4af9: $09
	add a                                            ; $4afa: $87
	add d                                            ; $4afb: $82
	ret nz                                           ; $4afc: $c0

	dec de                                           ; $4afd: $1b
	db $dd                                           ; $4afe: $dd
	ld [bc], a                                       ; $4aff: $02
	ret nc                                           ; $4b00: $d0

	pop de                                           ; $4b01: $d1
	ld a, [hl+]                                      ; $4b02: $2a
	ret nz                                           ; $4b03: $c0

	ld bc, $0aa0                                     ; $4b04: $01 $a0 $0a
	nop                                              ; $4b07: $00
	dec [hl]                                         ; $4b08: $35
	ret nz                                           ; $4b09: $c0

	ld bc, $01a0                                     ; $4b0a: $01 $a0 $01
	nop                                              ; $4b0d: $00
	add hl, sp                                       ; $4b0e: $39
	ret nz                                           ; $4b0f: $c0

	ld bc, $0aa0                                     ; $4b10: $01 $a0 $0a
	nop                                              ; $4b13: $00
	dec a                                            ; $4b14: $3d
	ret nz                                           ; $4b15: $c0

	ld bc, $01a0                                     ; $4b16: $01 $a0 $01
	nop                                              ; $4b19: $00
	ld b, b                                          ; $4b1a: $40
	ret nz                                           ; $4b1b: $c0

	ld bc, $0aa0                                     ; $4b1c: $01 $a0 $0a
	nop                                              ; $4b1f: $00
	ld b, [hl]                                       ; $4b20: $46
	ret nz                                           ; $4b21: $c0

	ld bc, $01a0                                     ; $4b22: $01 $a0 $01
	nop                                              ; $4b25: $00
	ld c, h                                          ; $4b26: $4c
	ret nz                                           ; $4b27: $c0

	ld bc, $0aa0                                     ; $4b28: $01 $a0 $0a
	nop                                              ; $4b2b: $00
	ld d, e                                          ; $4b2c: $53
	ld [bc], a                                       ; $4b2d: $02
	jp nc, $1bd3                                     ; $4b2e: $d2 $d3 $1b

	ldh [rP1], a                                     ; $4b31: $e0 $00
	ld d, b                                          ; $4b33: $50
	ret nz                                           ; $4b34: $c0

	ld bc, $01a0                                     ; $4b35: $01 $a0 $01
	nop                                              ; $4b38: $00
	ld b, b                                          ; $4b39: $40
	ret nz                                           ; $4b3a: $c0

	ld bc, $0aa0                                     ; $4b3b: $01 $a0 $0a
	nop                                              ; $4b3e: $00
	ld e, [hl]                                       ; $4b3f: $5e
	ret nz                                           ; $4b40: $c0

	ld bc, $01a0                                     ; $4b41: $01 $a0 $01
	nop                                              ; $4b44: $00
	ld c, h                                          ; $4b45: $4c
	ret nz                                           ; $4b46: $c0

	ld bc, $0aa0                                     ; $4b47: $01 $a0 $0a
	nop                                              ; $4b4a: $00
	ld h, c                                          ; $4b4b: $61
	ld bc, $1bd4                                     ; $4b4c: $01 $d4 $1b
	ldh [rP1], a                                     ; $4b4f: $e0 $00
	ld [hl-], a                                      ; $4b51: $32
	ret nz                                           ; $4b52: $c0

	ld bc, $01a0                                     ; $4b53: $01 $a0 $01
	nop                                              ; $4b56: $00
	ld l, c                                          ; $4b57: $69
	ret nz                                           ; $4b58: $c0

	ld bc, $0aa0                                     ; $4b59: $01 $a0 $0a
	nop                                              ; $4b5c: $00
	ld l, [hl]                                       ; $4b5d: $6e
	ret nz                                           ; $4b5e: $c0

	ld bc, $01a0                                     ; $4b5f: $01 $a0 $01
	nop                                              ; $4b62: $00
	ld c, h                                          ; $4b63: $4c
	ret nz                                           ; $4b64: $c0

	ld bc, $0aa0                                     ; $4b65: $01 $a0 $0a
	nop                                              ; $4b68: $00
	ld [hl], c                                       ; $4b69: $71
	ret nz                                           ; $4b6a: $c0

	ld bc, $01a0                                     ; $4b6b: $01 $a0 $01
	nop                                              ; $4b6e: $00
	ld a, c                                          ; $4b6f: $79
	ret nz                                           ; $4b70: $c0

	dec bc                                           ; $4b71: $0b
	db $e3                                           ; $4b72: $e3
	nop                                              ; $4b73: $00
	ld a, a                                          ; $4b74: $7f
	ret nz                                           ; $4b75: $c0

	nop                                              ; $4b76: $00
	nop                                              ; $4b77: $00
	ld a, l                                          ; $4b78: $7d
	ret nz                                           ; $4b79: $c0

	ld bc, $01a0                                     ; $4b7a: $01 $a0 $01
	nop                                              ; $4b7d: $00
	add b                                            ; $4b7e: $80
	db $e4                                           ; $4b7f: $e4
	nop                                              ; $4b80: $00
	dec d                                            ; $4b81: $15
	ld [de], a                                       ; $4b82: $12
	ret nz                                           ; $4b83: $c0

	ld bc, $0aa0                                     ; $4b84: $01 $a0 $0a
	nop                                              ; $4b87: $00
	adc b                                            ; $4b88: $88
	ret nz                                           ; $4b89: $c0

	ld bc, $01a0                                     ; $4b8a: $01 $a0 $01
	nop                                              ; $4b8d: $00
	adc h                                            ; $4b8e: $8c
	ret nz                                           ; $4b8f: $c0

	ld bc, $0aa0                                     ; $4b90: $01 $a0 $0a
	nop                                              ; $4b93: $00
	sub d                                            ; $4b94: $92
	add hl, bc                                       ; $4b95: $09
	inc c                                            ; $4b96: $0c
	pop bc                                           ; $4b97: $c1
	ld e, c                                          ; $4b98: $59
	db $e3                                           ; $4b99: $e3
	nop                                              ; $4b9a: $00
	ld h, [hl]                                       ; $4b9b: $66
	pop hl                                           ; $4b9c: $e1
	ld [bc], a                                       ; $4b9d: $02
	ld [bc], a                                       ; $4b9e: $02
	adc b                                            ; $4b9f: $88
	db $e4                                           ; $4ba0: $e4
	nop                                              ; $4ba1: $00
	ld [bc], a                                       ; $4ba2: $02
	add hl, bc                                       ; $4ba3: $09
	ld d, $d0                                        ; $4ba4: $16 $d0
	adc e                                            ; $4ba6: $8b
	inc bc                                           ; $4ba7: $03
	ld d, $b0                                        ; $4ba8: $16 $b0
	ld a, [bc]                                       ; $4baa: $0a
	ret nz                                           ; $4bab: $c0

	ld bc, $01a0                                     ; $4bac: $01 $a0 $01
	nop                                              ; $4baf: $00
	sub [hl]                                         ; $4bb0: $96
	ret nz                                           ; $4bb1: $c0

	ld bc, $0aa0                                     ; $4bb2: $01 $a0 $0a
	nop                                              ; $4bb5: $00
	sbc h                                            ; $4bb6: $9c
	push hl                                          ; $4bb7: $e5
	ld h, [hl]                                       ; $4bb8: $66
	nop                                              ; $4bb9: $00
	nop                                              ; $4bba: $00
	add hl, bc                                       ; $4bbb: $09
	and b                                            ; $4bbc: $a0
	pop hl                                           ; $4bbd: $e1
	ld [bc], a                                       ; $4bbe: $02
	ld [bc], a                                       ; $4bbf: $02
	adc b                                            ; $4bc0: $88
	ret nz                                           ; $4bc1: $c0

	ld bc, $0aa0                                     ; $4bc2: $01 $a0 $0a
	nop                                              ; $4bc5: $00
	sbc [hl]                                         ; $4bc6: $9e
	ret nz                                           ; $4bc7: $c0

	ld bc, $01a0                                     ; $4bc8: $01 $a0 $01
	nop                                              ; $4bcb: $00
	and b                                            ; $4bcc: $a0
	add c                                            ; $4bcd: $81
	ret nz                                           ; $4bce: $c0

	add b                                            ; $4bcf: $80
	ld bc, $3fd3                                     ; $4bd0: $01 $d3 $3f
	add d                                            ; $4bd3: $82
	ret nz                                           ; $4bd4: $c0

	dec de                                           ; $4bd5: $1b
	db $dd                                           ; $4bd6: $dd
	ld [bc], a                                       ; $4bd7: $02
	ret nc                                           ; $4bd8: $d0

	pop de                                           ; $4bd9: $d1
	inc c                                            ; $4bda: $0c
	ret nz                                           ; $4bdb: $c0

	ld bc, $0aa0                                     ; $4bdc: $01 $a0 $0a
	nop                                              ; $4bdf: $00
	and l                                            ; $4be0: $a5
	ret nz                                           ; $4be1: $c0

	ld bc, $01a0                                     ; $4be2: $01 $a0 $01
	nop                                              ; $4be5: $00
	xor [hl]                                         ; $4be6: $ae
	ld [bc], a                                       ; $4be7: $02
	jp nc, $12d3                                     ; $4be8: $d2 $d3 $12

	ret nz                                           ; $4beb: $c0

	ld bc, $0aa0                                     ; $4bec: $01 $a0 $0a
	nop                                              ; $4bef: $00
	or l                                             ; $4bf0: $b5
	ret nz                                           ; $4bf1: $c0

	ld bc, $01a0                                     ; $4bf2: $01 $a0 $01
	nop                                              ; $4bf5: $00
	jp nz, $01c0                                     ; $4bf6: $c2 $c0 $01

	and b                                            ; $4bf9: $a0
	ld a, [bc]                                       ; $4bfa: $0a
	nop                                              ; $4bfb: $00
	pop de                                           ; $4bfc: $d1
	ld bc, $12d4                                     ; $4bfd: $01 $d4 $12
	ret nz                                           ; $4c00: $c0

	ld bc, $0aa0                                     ; $4c01: $01 $a0 $0a
	nop                                              ; $4c04: $00
	or l                                             ; $4c05: $b5
	ret nz                                           ; $4c06: $c0

	ld bc, $01a0                                     ; $4c07: $01 $a0 $01
	nop                                              ; $4c0a: $00
	db $d3                                           ; $4c0b: $d3
	ret nz                                           ; $4c0c: $c0

	ld bc, $0aa0                                     ; $4c0d: $01 $a0 $0a
	nop                                              ; $4c10: $00
	ret c                                            ; $4c11: $d8

	nop                                              ; $4c12: $00
	ld b, l                                          ; $4c13: $45
	add d                                            ; $4c14: $82
	ret nz                                           ; $4c15: $c0

	dec de                                           ; $4c16: $1b
	db $dd                                           ; $4c17: $dd
	ld [bc], a                                       ; $4c18: $02
	ret nc                                           ; $4c19: $d0

	pop de                                           ; $4c1a: $d1
	ld [de], a                                       ; $4c1b: $12
	ret nz                                           ; $4c1c: $c0

	ld bc, $0aa0                                     ; $4c1d: $01 $a0 $0a
	nop                                              ; $4c20: $00
	reti                                             ; $4c21: $d9


	ret nz                                           ; $4c22: $c0

	ld bc, $01a0                                     ; $4c23: $01 $a0 $01
	nop                                              ; $4c26: $00
	db $d3                                           ; $4c27: $d3
	ret nz                                           ; $4c28: $c0

	ld bc, $0aa0                                     ; $4c29: $01 $a0 $0a
	nop                                              ; $4c2c: $00
	ldh [c], a                                       ; $4c2d: $e2
	ld [bc], a                                       ; $4c2e: $02
	jp nc, $12d3                                     ; $4c2f: $d2 $d3 $12

	ret nz                                           ; $4c32: $c0

	ld bc, $0aa0                                     ; $4c33: $01 $a0 $0a
	nop                                              ; $4c36: $00
	db $e3                                           ; $4c37: $e3
	ret nz                                           ; $4c38: $c0

	ld bc, $01a0                                     ; $4c39: $01 $a0 $01
	nop                                              ; $4c3c: $00
	db $d3                                           ; $4c3d: $d3
	ret nz                                           ; $4c3e: $c0

	ld bc, $0aa0                                     ; $4c3f: $01 $a0 $0a
	nop                                              ; $4c42: $00
	pop de                                           ; $4c43: $d1
	ld bc, $12d4                                     ; $4c44: $01 $d4 $12
	ret nz                                           ; $4c47: $c0

	ld bc, $0aa0                                     ; $4c48: $01 $a0 $0a
	nop                                              ; $4c4b: $00
	db $eb                                           ; $4c4c: $eb
	ret nz                                           ; $4c4d: $c0

	ld bc, $01a0                                     ; $4c4e: $01 $a0 $01
	nop                                              ; $4c51: $00
	db $d3                                           ; $4c52: $d3
	ret nz                                           ; $4c53: $c0

	ld bc, $0aa0                                     ; $4c54: $01 $a0 $0a
	nop                                              ; $4c57: $00
	ret c                                            ; $4c58: $d8

	push hl                                          ; $4c59: $e5
	ld h, a                                          ; $4c5a: $67
	nop                                              ; $4c5b: $00
	nop                                              ; $4c5c: $00
	add hl, bc                                       ; $4c5d: $09
	pop bc                                           ; $4c5e: $c1
	ld d, d                                          ; $4c5f: $52
	pop hl                                           ; $4c60: $e1
	ld [bc], a                                       ; $4c61: $02
	ld [bc], a                                       ; $4c62: $02
	sub b                                            ; $4c63: $90
	ret nz                                           ; $4c64: $c0

	ld bc, $0aa0                                     ; $4c65: $01 $a0 $0a
	nop                                              ; $4c68: $00
	rst FarCall                                          ; $4c69: $f7
	ret nz                                           ; $4c6a: $c0

	ld bc, $01a0                                     ; $4c6b: $01 $a0 $01
	nop                                              ; $4c6e: $00
	ld sp, hl                                        ; $4c6f: $f9
	add e                                            ; $4c70: $83
	adc e                                            ; $4c71: $8b
	inc bc                                           ; $4c72: $03
	ld l, $02                                        ; $4c73: $2e $02
	or b                                             ; $4c75: $b0
	sbc b                                            ; $4c76: $98
	ld b, d                                          ; $4c77: $42
	pop hl                                           ; $4c78: $e1
	ld [bc], a                                       ; $4c79: $02
	inc bc                                           ; $4c7a: $03
	dec de                                           ; $4c7b: $1b
	ret nz                                           ; $4c7c: $c0

	ld bc, $0aa0                                     ; $4c7d: $01 $a0 $0a
	nop                                              ; $4c80: $00
	ei                                               ; $4c81: $fb
	ret nz                                           ; $4c82: $c0

	ld bc, $01a0                                     ; $4c83: $01 $a0 $01
	nop                                              ; $4c86: $00
	db $fd                                           ; $4c87: $fd
	ret nz                                           ; $4c88: $c0

	ld bc, $0aa0                                     ; $4c89: $01 $a0 $0a
	ld bc, $c005                                     ; $4c8c: $01 $05 $c0
	ld bc, $01a0                                     ; $4c8f: $01 $a0 $01
	ld bc, $c00b                                     ; $4c92: $01 $0b $c0
	ld bc, $0aa0                                     ; $4c95: $01 $a0 $0a
	ld bc, $c012                                     ; $4c98: $01 $12 $c0
	ld bc, $01a0                                     ; $4c9b: $01 $a0 $01
	ld bc, $e119                                     ; $4c9e: $01 $19 $e1
	ld [bc], a                                       ; $4ca1: $02
	inc bc                                           ; $4ca2: $03
	rla                                              ; $4ca3: $17
	ret nz                                           ; $4ca4: $c0

	ld bc, $0aa0                                     ; $4ca5: $01 $a0 $0a
	ld bc, $c02f                                     ; $4ca8: $01 $2f $c0
	ld bc, $01a0                                     ; $4cab: $01 $a0 $01
	ld bc, $e131                                     ; $4cae: $01 $31 $e1
	ld [bc], a                                       ; $4cb1: $02
	inc bc                                           ; $4cb2: $03
	inc de                                           ; $4cb3: $13
	ret nz                                           ; $4cb4: $c0

	ld bc, $0aa0                                     ; $4cb5: $01 $a0 $0a
	ld bc, $0835                                     ; $4cb8: $01 $35 $08
	or b                                             ; $4cbb: $b0
	sbc d                                            ; $4cbc: $9a
	or b                                             ; $4cbd: $b0
	sbc c                                            ; $4cbe: $99
	or b                                             ; $4cbf: $b0
	sbc e                                            ; $4cc0: $9b
	or b                                             ; $4cc1: $b0
	sbc h                                            ; $4cc2: $9c
	ld b, b                                          ; $4cc3: $40
	pop hl                                           ; $4cc4: $e1
	ld [bc], a                                       ; $4cc5: $02
	inc bc                                           ; $4cc6: $03
	inc de                                           ; $4cc7: $13
	ret nz                                           ; $4cc8: $c0

	ld bc, $0aa0                                     ; $4cc9: $01 $a0 $0a
	ld bc, $c039                                     ; $4ccc: $01 $39 $c0
	ld bc, $01a0                                     ; $4ccf: $01 $a0 $01
	ld bc, $e143                                     ; $4cd2: $01 $43 $e1
	ld [bc], a                                       ; $4cd5: $02
	inc bc                                           ; $4cd6: $03
	dec de                                           ; $4cd7: $1b
	ret nz                                           ; $4cd8: $c0

	ld bc, $0aa0                                     ; $4cd9: $01 $a0 $0a
	ld bc, $c04b                                     ; $4cdc: $01 $4b $c0
	ld bc, $01a0                                     ; $4cdf: $01 $a0 $01
	ld bc, $e151                                     ; $4ce2: $01 $51 $e1
	ld [bc], a                                       ; $4ce5: $02
	inc bc                                           ; $4ce6: $03
	inc de                                           ; $4ce7: $13
	ret nz                                           ; $4ce8: $c0

	ld bc, $0aa0                                     ; $4ce9: $01 $a0 $0a
	ld bc, $c05c                                     ; $4cec: $01 $5c $c0
	ld bc, $01a0                                     ; $4cef: $01 $a0 $01
	ld bc, $e16d                                     ; $4cf2: $01 $6d $e1
	ld [bc], a                                       ; $4cf5: $02
	inc bc                                           ; $4cf6: $03
	rla                                              ; $4cf7: $17
	ret nz                                           ; $4cf8: $c0

	ld bc, $0aa0                                     ; $4cf9: $01 $a0 $0a
	ld bc, $c070                                     ; $4cfc: $01 $70 $c0
	ld bc, $01a0                                     ; $4cff: $01 $a0 $01
	ld bc, $027a                                     ; $4d02: $01 $7a $02
	or b                                             ; $4d05: $b0
	sbc l                                            ; $4d06: $9d
	ld d, h                                          ; $4d07: $54
	pop hl                                           ; $4d08: $e1
	ld [bc], a                                       ; $4d09: $02
	inc bc                                           ; $4d0a: $03
	rra                                              ; $4d0b: $1f
	ret nz                                           ; $4d0c: $c0

	ld bc, $0aa0                                     ; $4d0d: $01 $a0 $0a
	nop                                              ; $4d10: $00
	ei                                               ; $4d11: $fb
	ret nz                                           ; $4d12: $c0

	ld bc, $01a0                                     ; $4d13: $01 $a0 $01
	ld bc, $c083                                     ; $4d16: $01 $83 $c0
	ld bc, $0aa0                                     ; $4d19: $01 $a0 $0a
	ld bc, $c089                                     ; $4d1c: $01 $89 $c0
	ld bc, $01a0                                     ; $4d1f: $01 $a0 $01
	ld bc, $c08d                                     ; $4d22: $01 $8d $c0
	ld bc, $0aa0                                     ; $4d25: $01 $a0 $0a
	ld bc, $c095                                     ; $4d28: $01 $95 $c0
	ld bc, $01a0                                     ; $4d2b: $01 $a0 $01
	ld bc, $e196                                     ; $4d2e: $01 $96 $e1
	ld [bc], a                                       ; $4d31: $02
	inc bc                                           ; $4d32: $03
	rla                                              ; $4d33: $17
	ret nz                                           ; $4d34: $c0

	ld bc, $0aa0                                     ; $4d35: $01 $a0 $0a
	ld bc, $c09c                                     ; $4d38: $01 $9c $c0
	ld bc, $01a0                                     ; $4d3b: $01 $a0 $01
	ld bc, $e1af                                     ; $4d3e: $01 $af $e1
	ld [bc], a                                       ; $4d41: $02
	inc bc                                           ; $4d42: $03
	inc de                                           ; $4d43: $13
	ret nz                                           ; $4d44: $c0

	ld bc, $0aa0                                     ; $4d45: $01 $a0 $0a
	ld bc, $c0bb                                     ; $4d48: $01 $bb $c0
	ld bc, $01a0                                     ; $4d4b: $01 $a0 $01
	ld bc, $c0bd                                     ; $4d4e: $01 $bd $c0
	ld bc, $0aa0                                     ; $4d51: $01 $a0 $0a
	ld bc, $c0c1                                     ; $4d54: $01 $c1 $c0
	ld bc, $01a0                                     ; $4d57: $01 $a0 $01
	ld bc, $02c4                                     ; $4d5a: $01 $c4 $02
	or b                                             ; $4d5d: $b0
	sbc [hl]                                         ; $4d5e: $9e
	ld c, a                                          ; $4d5f: $4f
	pop hl                                           ; $4d60: $e1
	ld [bc], a                                       ; $4d61: $02
	inc bc                                           ; $4d62: $03
	inc de                                           ; $4d63: $13
	ret nz                                           ; $4d64: $c0

	ld bc, $0aa0                                     ; $4d65: $01 $a0 $0a
	ld bc, $c0c1                                     ; $4d68: $01 $c1 $c0
	ld bc, $01a0                                     ; $4d6b: $01 $a0 $01
	ld bc, $c0ce                                     ; $4d6e: $01 $ce $c0
	ld bc, $0aa0                                     ; $4d71: $01 $a0 $0a
	ld bc, $c0d6                                     ; $4d74: $01 $d6 $c0
	ld bc, $01a0                                     ; $4d77: $01 $a0 $01
	ld bc, $e1d9                                     ; $4d7a: $01 $d9 $e1
	ld [bc], a                                       ; $4d7d: $02
	inc bc                                           ; $4d7e: $03
	dec de                                           ; $4d7f: $1b
	ret nz                                           ; $4d80: $c0

	ld bc, $0aa0                                     ; $4d81: $01 $a0 $0a
	ld bc, $c0e0                                     ; $4d84: $01 $e0 $c0
	ld bc, $01a0                                     ; $4d87: $01 $a0 $01
	ld bc, $c0e9                                     ; $4d8a: $01 $e9 $c0
	ld bc, $0aa0                                     ; $4d8d: $01 $a0 $0a
	ld bc, $c0ee                                     ; $4d90: $01 $ee $c0
	ld bc, $01a0                                     ; $4d93: $01 $a0 $01
	ld bc, $e1f9                                     ; $4d96: $01 $f9 $e1
	ld [bc], a                                       ; $4d99: $02
	inc bc                                           ; $4d9a: $03
	inc de                                           ; $4d9b: $13
	ret nz                                           ; $4d9c: $c0

	ld bc, $0aa0                                     ; $4d9d: $01 $a0 $0a
	ld [bc], a                                       ; $4da0: $02
	nop                                              ; $4da1: $00
	ret nz                                           ; $4da2: $c0

	ld bc, $01a0                                     ; $4da3: $01 $a0 $01

jr_089_4da6:
	ld [bc], a                                       ; $4da6: $02
	inc c                                            ; $4da7: $0c
	ret nz                                           ; $4da8: $c0

	ld hl, $ddd1                                     ; $4da9: $21 $d1 $dd
	pop bc                                           ; $4dac: $c1
	ld l, l                                          ; $4dad: $6d
	db $dd                                           ; $4dae: $dd
	db $e4                                           ; $4daf: $e4
	nop                                              ; $4db0: $00
	ld [bc], a                                       ; $4db1: $02
	add hl, bc                                       ; $4db2: $09
	xor e                                            ; $4db3: $ab
	pop bc                                           ; $4db4: $c1
	ld e, c                                          ; $4db5: $59
	db $e3                                           ; $4db6: $e3
	nop                                              ; $4db7: $00
	ld h, [hl]                                       ; $4db8: $66
	add c                                            ; $4db9: $81
	ret nz                                           ; $4dba: $c0

	dec de                                           ; $4dbb: $1b
	db $dd                                           ; $4dbc: $dd
	ld [bc], a                                       ; $4dbd: $02
	ret nc                                           ; $4dbe: $d0

	pop de                                           ; $4dbf: $d1
	ld d, [hl]                                       ; $4dc0: $56
	add c                                            ; $4dc1: $81
	ret nz                                           ; $4dc2: $c0

	add b                                            ; $4dc3: $80
	ld bc, $36d3                                     ; $4dc4: $01 $d3 $36
	ret nz                                           ; $4dc7: $c0

	ld bc, $0aa0                                     ; $4dc8: $01 $a0 $0a
	ld [bc], a                                       ; $4dcb: $02
	inc d                                            ; $4dcc: $14
	ret nz                                           ; $4dcd: $c0

	ld bc, $01a0                                     ; $4dce: $01 $a0 $01
	ld [bc], a                                       ; $4dd1: $02
	jr @-$3e                                         ; $4dd2: $18 $c0

	ld bc, $0aa0                                     ; $4dd4: $01 $a0 $0a
	ld [bc], a                                       ; $4dd7: $02
	inc e                                            ; $4dd8: $1c
	ret nz                                           ; $4dd9: $c0

	ld bc, $01a0                                     ; $4dda: $01 $a0 $01
	ld [bc], a                                       ; $4ddd: $02
	dec h                                            ; $4dde: $25
	ret nz                                           ; $4ddf: $c0

	ld bc, $0aa0                                     ; $4de0: $01 $a0 $0a
	ld [bc], a                                       ; $4de3: $02
	jr nc, jr_089_4da6                               ; $4de4: $30 $c0

	ld bc, $01a0                                     ; $4de6: $01 $a0 $01
	ld [bc], a                                       ; $4de9: $02
	scf                                              ; $4dea: $37
	ret nz                                           ; $4deb: $c0

jr_089_4dec:
	ld bc, $0aa0                                     ; $4dec: $01 $a0 $0a
	ld [bc], a                                       ; $4def: $02
	ld b, h                                          ; $4df0: $44
	ret nz                                           ; $4df1: $c0

	ld bc, $01a0                                     ; $4df2: $01 $a0 $01
	ld [bc], a                                       ; $4df5: $02
	ld c, a                                          ; $4df6: $4f
	ret nz                                           ; $4df7: $c0

	ld bc, $0aa0                                     ; $4df8: $01 $a0 $0a
	ld [bc], a                                       ; $4dfb: $02
	ld d, d                                          ; $4dfc: $52
	nop                                              ; $4dfd: $00
	ld [de], a                                       ; $4dfe: $12
	ret nz                                           ; $4dff: $c0

	ld bc, $0aa0                                     ; $4e00: $01 $a0 $0a
	ld [bc], a                                       ; $4e03: $02
	ld e, d                                          ; $4e04: $5a
	ret nz                                           ; $4e05: $c0

	ld bc, $01a0                                     ; $4e06: $01 $a0 $01
	ld [bc], a                                       ; $4e09: $02
	ld l, d                                          ; $4e0a: $6a
	ret nz                                           ; $4e0b: $c0

	ld bc, $0aa0                                     ; $4e0c: $01 $a0 $0a
	ld [bc], a                                       ; $4e0f: $02
	ld [hl], e                                       ; $4e10: $73
	ret nz                                           ; $4e11: $c0

	ld bc, $01a0                                     ; $4e12: $01 $a0 $01
	ld [bc], a                                       ; $4e15: $02
	halt                                             ; $4e16: $76
	nop                                              ; $4e17: $00
	inc l                                            ; $4e18: $2c
	add c                                            ; $4e19: $81
	ret nz                                           ; $4e1a: $c0

	add b                                            ; $4e1b: $80
	ld bc, $12d3                                     ; $4e1c: $01 $d3 $12
	ret nz                                           ; $4e1f: $c0

	ld bc, $0aa0                                     ; $4e20: $01 $a0 $0a
	ld [bc], a                                       ; $4e23: $02
	inc d                                            ; $4e24: $14
	ret nz                                           ; $4e25: $c0

	ld bc, $01a0                                     ; $4e26: $01 $a0 $01
	ld [bc], a                                       ; $4e29: $02
	jr jr_089_4dec                                   ; $4e2a: $18 $c0

	ld bc, $0aa0                                     ; $4e2c: $01 $a0 $0a
	ld [bc], a                                       ; $4e2f: $02
	ld a, h                                          ; $4e30: $7c
	nop                                              ; $4e31: $00
	ld b, $c0                                        ; $4e32: $06 $c0
	ld bc, $0aa0                                     ; $4e34: $01 $a0 $0a
	ld [bc], a                                       ; $4e37: $02
	adc l                                            ; $4e38: $8d
	ret nz                                           ; $4e39: $c0

	ld bc, $01a0                                     ; $4e3a: $01 $a0 $01
	ld [bc], a                                       ; $4e3d: $02
	sub l                                            ; $4e3e: $95
	ret nz                                           ; $4e3f: $c0

	ld bc, $0aa0                                     ; $4e40: $01 $a0 $0a
	ld [bc], a                                       ; $4e43: $02
	sbc d                                            ; $4e44: $9a
	ret nz                                           ; $4e45: $c0

	set 0, c                                         ; $4e46: $cb $c1
	ld e, e                                          ; $4e48: $5b
	ret nz                                           ; $4e49: $c0

	ld hl, $ddd1                                     ; $4e4a: $21 $d1 $dd
	add c                                            ; $4e4d: $81
	adc e                                            ; $4e4e: $8b
	ld bc, $0266                                     ; $4e4f: $01 $66 $02
	or b                                             ; $4e52: $b0
	inc bc                                           ; $4e53: $03
	inc b                                            ; $4e54: $04
	push hl                                          ; $4e55: $e5
	ld h, l                                          ; $4e56: $65
	ld [bc], a                                       ; $4e57: $02
	ld a, l                                          ; $4e58: $7d
	nop                                              ; $4e59: $00
	inc b                                            ; $4e5a: $04
	push hl                                          ; $4e5b: $e5
	ld bc, $b119                                     ; $4e5c: $01 $19 $b1
	jp z, $0908                                      ; $4e5f: $ca $08 $09

	ld [hl], $c0                                     ; $4e62: $36 $c0
	add hl, bc                                       ; $4e64: $09
	db $e3                                           ; $4e65: $e3
	nop                                              ; $4e66: $00
	ld e, l                                          ; $4e67: $5d
	pop bc                                           ; $4e68: $c1
	ld d, e                                          ; $4e69: $53
	pop bc                                           ; $4e6a: $c1
	ld e, e                                          ; $4e6b: $5b
	ret nc                                           ; $4e6c: $d0

	add l                                            ; $4e6d: $85
	inc bc                                           ; $4e6e: $03
	ld a, [hl-]                                      ; $4e6f: $3a
	pop bc                                           ; $4e70: $c1
	ld a, h                                          ; $4e71: $7c
	add d                                            ; $4e72: $82
	add l                                            ; $4e73: $85
	inc bc                                           ; $4e74: $03
	ld a, [hl-]                                      ; $4e75: $3a
	ld [bc], a                                       ; $4e76: $02
	ldh [$80], a                                     ; $4e77: $e0 $80
	inc bc                                           ; $4e79: $03
	db $e4                                           ; $4e7a: $e4
	ld a, [bc]                                       ; $4e7b: $0a
	ld l, b                                          ; $4e7c: $68
	ld [bc], a                                       ; $4e7d: $02
	ldh [rAUD1ENV], a                                ; $4e7e: $e0 $12
	inc bc                                           ; $4e80: $03
	db $e4                                           ; $4e81: $e4
	ld a, [bc]                                       ; $4e82: $0a
	ld a, b                                          ; $4e83: $78
	nop                                              ; $4e84: $00
	inc de                                           ; $4e85: $13
	pop bc                                           ; $4e86: $c1
	ld b, a                                          ; $4e87: $47
	push af                                          ; $4e88: $f5
	add l                                            ; $4e89: $85
	inc bc                                           ; $4e8a: $03
	ld a, [hl-]                                      ; $4e8b: $3a
	ldh [rAUD1ENV], a                                ; $4e8c: $e0 $12
	ld h, b                                          ; $4e8e: $60
	pop bc                                           ; $4e8f: $c1
	ld a, l                                          ; $4e90: $7d
	inc bc                                           ; $4e91: $03
	db $e4                                           ; $4e92: $e4
	nop                                              ; $4e93: $00
	ld l, b                                          ; $4e94: $68
	inc bc                                           ; $4e95: $03
	db $e4                                           ; $4e96: $e4
	nop                                              ; $4e97: $00
	ld [bc], a                                       ; $4e98: $02
	add hl, bc                                       ; $4e99: $09
	ld h, b                                          ; $4e9a: $60
	ret nz                                           ; $4e9b: $c0

	add hl, bc                                       ; $4e9c: $09
	db $e3                                           ; $4e9d: $e3
	nop                                              ; $4e9e: $00
	ld c, e                                          ; $4e9f: $4b
	ret nz                                           ; $4ea0: $c0

	rrca                                             ; $4ea1: $0f
	db $e3                                           ; $4ea2: $e3
	nop                                              ; $4ea3: $00
	ld d, d                                          ; $4ea4: $52
	ret nz                                           ; $4ea5: $c0

	ld bc, $2ea0                                     ; $4ea6: $01 $a0 $2e
	nop                                              ; $4ea9: $00
	ld bc, $01c0                                     ; $4eaa: $01 $c0 $01
	and b                                            ; $4ead: $a0
	ld l, $00                                        ; $4eae: $2e $00
	inc c                                            ; $4eb0: $0c
	ret nz                                           ; $4eb1: $c0

	ld bc, $2ea0                                     ; $4eb2: $01 $a0 $2e
	nop                                              ; $4eb5: $00
	ld d, $c0                                        ; $4eb6: $16 $c0
	ld bc, $2ea0                                     ; $4eb8: $01 $a0 $2e
	nop                                              ; $4ebb: $00
	inc hl                                           ; $4ebc: $23
	ei                                               ; $4ebd: $fb
	pop bc                                           ; $4ebe: $c1
	ld a, [hl]                                       ; $4ebf: $7e
	ldh [rAUD1SWEEP], a                              ; $4ec0: $e0 $10
	inc bc                                           ; $4ec2: $03
	db $e4                                           ; $4ec3: $e4
	ld a, [bc]                                       ; $4ec4: $0a
	rra                                              ; $4ec5: $1f
	ei                                               ; $4ec6: $fb
	pop bc                                           ; $4ec7: $c1
	add c                                            ; $4ec8: $81
	inc bc                                           ; $4ec9: $03
	db $e4                                           ; $4eca: $e4
	ld a, [bc]                                       ; $4ecb: $0a
	jr @-$7c                                         ; $4ecc: $18 $82

	pop bc                                           ; $4ece: $c1
	add b                                            ; $4ecf: $80
	ld bc, $0fd0                                     ; $4ed0: $01 $d0 $0f
	ret nz                                           ; $4ed3: $c0

	ld bc, $2fa0                                     ; $4ed4: $01 $a0 $2f
	nop                                              ; $4ed7: $00
	ld h, $c0                                        ; $4ed8: $26 $c0
	ld bc, $2ea0                                     ; $4eda: $01 $a0 $2e
	nop                                              ; $4edd: $00
	dec hl                                           ; $4ede: $2b
	db $e4                                           ; $4edf: $e4
	nop                                              ; $4ee0: $00
	add b                                            ; $4ee1: $80
	ld bc, $0fd1                                     ; $4ee2: $01 $d1 $0f
	ret nz                                           ; $4ee5: $c0

	ld bc, $2fa0                                     ; $4ee6: $01 $a0 $2f
	nop                                              ; $4ee9: $00
	inc a                                            ; $4eea: $3c
	ret nz                                           ; $4eeb: $c0

	ld bc, $2ea0                                     ; $4eec: $01 $a0 $2e
	nop                                              ; $4eef: $00
	ld b, c                                          ; $4ef0: $41
	db $e4                                           ; $4ef1: $e4
	rst $38                                          ; $4ef2: $ff
	ld l, a                                          ; $4ef3: $6f
	ld [bc], a                                       ; $4ef4: $02
	ldh [$80], a                                     ; $4ef5: $e0 $80
	inc bc                                           ; $4ef7: $03
	db $e4                                           ; $4ef8: $e4
	add hl, bc                                       ; $4ef9: $09
	ld [$3509], a                                    ; $4efa: $ea $09 $35
	ret nz                                           ; $4efd: $c0

	add hl, bc                                       ; $4efe: $09
	db $e3                                           ; $4eff: $e3
	nop                                              ; $4f00: $00
	ld c, e                                          ; $4f01: $4b
	ret nz                                           ; $4f02: $c0

	rrca                                             ; $4f03: $0f
	db $e3                                           ; $4f04: $e3
	nop                                              ; $4f05: $00
	ld d, d                                          ; $4f06: $52
	ret nz                                           ; $4f07: $c0

	ld bc, $2fa0                                     ; $4f08: $01 $a0 $2f
	nop                                              ; $4f0b: $00
	ld d, b                                          ; $4f0c: $50
	ret nz                                           ; $4f0d: $c0

	ld bc, $2fa0                                     ; $4f0e: $01 $a0 $2f
	nop                                              ; $4f11: $00
	ld e, e                                          ; $4f12: $5b
	ret nz                                           ; $4f13: $c0

	ld bc, $2fa0                                     ; $4f14: $01 $a0 $2f
	nop                                              ; $4f17: $00
	ld h, h                                          ; $4f18: $64
	ret nz                                           ; $4f19: $c0

	ld bc, $2fa0                                     ; $4f1a: $01 $a0 $2f
	nop                                              ; $4f1d: $00
	ld l, a                                          ; $4f1e: $6f
	ei                                               ; $4f1f: $fb
	pop bc                                           ; $4f20: $c1
	ld a, [hl]                                       ; $4f21: $7e
	ldh [rAUD1SWEEP], a                              ; $4f22: $e0 $10
	inc bc                                           ; $4f24: $03
	db $e4                                           ; $4f25: $e4
	add hl, bc                                       ; $4f26: $09
	cp l                                             ; $4f27: $bd
	ei                                               ; $4f28: $fb
	pop bc                                           ; $4f29: $c1
	add c                                            ; $4f2a: $81
	inc bc                                           ; $4f2b: $03
	db $e4                                           ; $4f2c: $e4
	add hl, bc                                       ; $4f2d: $09
	or [hl]                                          ; $4f2e: $b6
	db $e4                                           ; $4f2f: $e4
	nop                                              ; $4f30: $00
	ld [bc], a                                       ; $4f31: $02
	ld [$002c], sp                                   ; $4f32: $08 $2c $00
	ld [hl], c                                       ; $4f35: $71
	add hl, bc                                       ; $4f36: $09
	ld [de], a                                       ; $4f37: $12
	ret nz                                           ; $4f38: $c0

	ld bc, $2ea0                                     ; $4f39: $01 $a0 $2e
	nop                                              ; $4f3c: $00
	halt                                             ; $4f3d: $76
	pop bc                                           ; $4f3e: $c1
	ld a, a                                          ; $4f3f: $7f
	ret nc                                           ; $4f40: $d0

	ret nz                                           ; $4f41: $c0

	ld bc, $2fa0                                     ; $4f42: $01 $a0 $2f
	nop                                              ; $4f45: $00
	ld a, h                                          ; $4f46: $7c
	db $e4                                           ; $4f47: $e4
	nop                                              ; $4f48: $00
	jr jr_089_4f4b                                   ; $4f49: $18 $00

jr_089_4f4b:
	adc h                                            ; $4f4b: $8c
	add hl, bc                                       ; $4f4c: $09
	ld [de], a                                       ; $4f4d: $12
	ret nz                                           ; $4f4e: $c0

	ld bc, $2ea0                                     ; $4f4f: $01 $a0 $2e
	nop                                              ; $4f52: $00
	sub d                                            ; $4f53: $92
	pop bc                                           ; $4f54: $c1
	ld a, a                                          ; $4f55: $7f
	pop de                                           ; $4f56: $d1
	ret nz                                           ; $4f57: $c0

	ld bc, $2fa0                                     ; $4f58: $01 $a0 $2f
	nop                                              ; $4f5b: $00
	sbc b                                            ; $4f5c: $98
	db $e4                                           ; $4f5d: $e4
	rst $38                                          ; $4f5e: $ff
	inc bc                                           ; $4f5f: $03
	add hl, bc                                       ; $4f60: $09
	or e                                             ; $4f61: $b3
	db $fd                                           ; $4f62: $fd
	ld d, c                                          ; $4f63: $51
	add l                                            ; $4f64: $85
	inc bc                                           ; $4f65: $03
	ld a, [hl-]                                      ; $4f66: $3a
	ld bc, $04d0                                     ; $4f67: $01 $d0 $04
	pop hl                                           ; $4f6a: $e1
	ld [bc], a                                       ; $4f6b: $02
	nop                                              ; $4f6c: $00
	cp d                                             ; $4f6d: $ba
	ld bc, $04de                                     ; $4f6e: $01 $de $04
	pop hl                                           ; $4f71: $e1
	ld [bc], a                                       ; $4f72: $02
	ld [bc], a                                       ; $4f73: $02
	sbc d                                            ; $4f74: $9a
	ld bc, $04df                                     ; $4f75: $01 $df $04
	pop hl                                           ; $4f78: $e1
	ld [bc], a                                       ; $4f79: $02
	ld [bc], a                                       ; $4f7a: $02
	ret nz                                           ; $4f7b: $c0

	ld [bc], a                                       ; $4f7c: $02
	ldh [rAUD1LEN], a                                ; $4f7d: $e0 $11
	inc b                                            ; $4f7f: $04
	pop hl                                           ; $4f80: $e1
	ld [bc], a                                       ; $4f81: $02
	ld [bc], a                                       ; $4f82: $02
	db $fd                                           ; $4f83: $fd
	ld bc, $04d1                                     ; $4f84: $01 $d1 $04
	pop hl                                           ; $4f87: $e1
	ld [bc], a                                       ; $4f88: $02
	ld bc, $0102                                     ; $4f89: $01 $02 $01
	jp nc, $e104                                     ; $4f8c: $d2 $04 $e1

	ld [bc], a                                       ; $4f8f: $02
	ld bc, $014a                     ; $4f90: $01 $4a $01
	db $d3                                           ; $4f93: $d3
	inc b                                            ; $4f94: $04
	pop hl                                           ; $4f95: $e1
	ld [bc], a                                       ; $4f96: $02
	ld bc, $0192                                     ; $4f97: $01 $92 $01
	rst SubAFromHL                                          ; $4f9a: $d7
	inc b                                            ; $4f9b: $04
	pop hl                                           ; $4f9c: $e1
	ld [bc], a                                       ; $4f9d: $02
	ld bc, $01da                                     ; $4f9e: $01 $da $01
	ret c                                            ; $4fa1: $d8

	inc b                                            ; $4fa2: $04
	pop hl                                           ; $4fa3: $e1
	ld [bc], a                                       ; $4fa4: $02
	ld [bc], a                                       ; $4fa5: $02
	ld a, [bc]                                       ; $4fa6: $0a
	ld bc, $04da                                     ; $4fa7: $01 $da $04
	pop hl                                           ; $4faa: $e1
	ld [bc], a                                       ; $4fab: $02
	ld [bc], a                                       ; $4fac: $02
	ld a, [hl-]                                      ; $4fad: $3a
	ld bc, $04dd                                     ; $4fae: $01 $dd $04
	pop hl                                           ; $4fb1: $e1
	ld [bc], a                                       ; $4fb2: $02
	ld [bc], a                                       ; $4fb3: $02
	ld l, d                                          ; $4fb4: $6a
	ei                                               ; $4fb5: $fb
	pop bc                                           ; $4fb6: $c1
	ld a, [hl]                                       ; $4fb7: $7e
	ldh [rAUD4LEN], a                                ; $4fb8: $e0 $20
	inc bc                                           ; $4fba: $03
	db $e4                                           ; $4fbb: $e4
	add hl, bc                                       ; $4fbc: $09
	daa                                              ; $4fbd: $27
	ret nz                                           ; $4fbe: $c0

	set 0, b                                         ; $4fbf: $cb $c0
	ld de, $00e3                                     ; $4fc1: $11 $e3 $00
	dec a                                            ; $4fc4: $3d
	pop hl                                           ; $4fc5: $e1
	ld [bc], a                                       ; $4fc6: $02
	inc bc                                           ; $4fc7: $03
	rrca                                             ; $4fc8: $0f
	pop bc                                           ; $4fc9: $c1
	ld e, h                                          ; $4fca: $5c
	ret nz                                           ; $4fcb: $c0

	jp z, Jump_089_46fd                              ; $4fcc: $ca $fd $46

	add l                                            ; $4fcf: $85
	inc bc                                           ; $4fd0: $03
	ld a, [hl-]                                      ; $4fd1: $3a
	ld bc, $03d0                                     ; $4fd2: $01 $d0 $03
	db $e4                                           ; $4fd5: $e4
	nop                                              ; $4fd6: $00
	ccf                                              ; $4fd7: $3f
	ld bc, $03de                                     ; $4fd8: $01 $de $03
	db $e4                                           ; $4fdb: $e4
	ld b, $8f                                        ; $4fdc: $06 $8f
	ld bc, $03df                                     ; $4fde: $01 $df $03
	db $e4                                           ; $4fe1: $e4
	rlca                                             ; $4fe2: $07
	ld d, e                                          ; $4fe3: $53
	ld [bc], a                                       ; $4fe4: $02
	ldh [rAUD1LEN], a                                ; $4fe5: $e0 $11
	inc bc                                           ; $4fe7: $03
	db $e4                                           ; $4fe8: $e4
	ld [$0116], sp                                   ; $4fe9: $08 $16 $01
	pop de                                           ; $4fec: $d1
	inc bc                                           ; $4fed: $03
	db $e4                                           ; $4fee: $e4
	nop                                              ; $4fef: $00
	ldh a, [rSB]                                     ; $4ff0: $f0 $01
	jp nc, $e403                                     ; $4ff2: $d2 $03 $e4

	ld bc, $01b4                                     ; $4ff5: $01 $b4 $01
	db $d3                                           ; $4ff8: $d3
	inc bc                                           ; $4ff9: $03
	db $e4                                           ; $4ffa: $e4
	ld [bc], a                                       ; $4ffb: $02
	ld a, [hl]                                       ; $4ffc: $7e
	ld bc, $03d7                                     ; $4ffd: $01 $d7 $03
	db $e4                                           ; $5000: $e4
	inc bc                                           ; $5001: $03
	ld b, d                                          ; $5002: $42
	ld bc, $03d8                                     ; $5003: $01 $d8 $03
	db $e4                                           ; $5006: $e4
	inc b                                            ; $5007: $04
	dec b                                            ; $5008: $05
	ld bc, $03da                                     ; $5009: $01 $da $03
	db $e4                                           ; $500c: $e4
	inc b                                            ; $500d: $04
	jp z, $dd01                                      ; $500e: $ca $01 $dd

	inc bc                                           ; $5011: $03
	db $e4                                           ; $5012: $e4
	dec b                                            ; $5013: $05
	adc [hl]                                         ; $5014: $8e
	add hl, bc                                       ; $5015: $09
	ld e, h                                          ; $5016: $5c
	ret nz                                           ; $5017: $c0

	add hl, bc                                       ; $5018: $09
	db $e3                                           ; $5019: $e3
	nop                                              ; $501a: $00
	ld c, d                                          ; $501b: $4a
	ret nz                                           ; $501c: $c0

	ld bc, $02a0                                     ; $501d: $01 $a0 $02
	nop                                              ; $5020: $00
	and [hl]                                         ; $5021: $a6
	ret nz                                           ; $5022: $c0

	ld bc, $2ea0                                     ; $5023: $01 $a0 $2e
	nop                                              ; $5026: $00
	and a                                            ; $5027: $a7
	pop hl                                           ; $5028: $e1
	ld [bc], a                                       ; $5029: $02
	inc bc                                           ; $502a: $03
	dec de                                           ; $502b: $1b
	ret nz                                           ; $502c: $c0

	ld bc, $02a0                                     ; $502d: $01 $a0 $02
	nop                                              ; $5030: $00
	or b                                             ; $5031: $b0
	ret nz                                           ; $5032: $c0

	ld bc, $2ea0                                     ; $5033: $01 $a0 $2e

jr_089_5036:
	nop                                              ; $5036: $00
	jp nz, $02e1                                     ; $5037: $c2 $e1 $02

	inc bc                                           ; $503a: $03
	inc hl                                           ; $503b: $23
	ret nz                                           ; $503c: $c0

	ld bc, $02a0                                     ; $503d: $01 $a0 $02
	nop                                              ; $5040: $00
	jp z, $87c1                                      ; $5041: $ca $c1 $87

	ret nz                                           ; $5044: $c0

	dec bc                                           ; $5045: $0b
	db $e3                                           ; $5046: $e3
	nop                                              ; $5047: $00
	add [hl]                                         ; $5048: $86
	ret nz                                           ; $5049: $c0

	inc c                                            ; $504a: $0c
	ldh [hDisp1_WX], a                                     ; $504b: $e0 $96
	ldh [$08], a                                     ; $504d: $e0 $08
	ld a, e                                          ; $504f: $7b
	db $fd                                           ; $5050: $fd
	ld hl, $a087                                     ; $5051: $21 $87 $a0
	nop                                              ; $5054: $00
	ld bc, $03d0                                     ; $5055: $01 $d0 $03
	db $e4                                           ; $5058: $e4
	nop                                              ; $5059: $00
	ld a, [de]                                       ; $505a: $1a
	ld bc, $03d1                                     ; $505b: $01 $d1 $03
	db $e4                                           ; $505e: $e4
	nop                                              ; $505f: $00
	ld l, $01                                        ; $5060: $2e $01
	jp nc, $e403                                     ; $5062: $d2 $03 $e4

	nop                                              ; $5065: $00
	jr z, jr_089_5069                                ; $5066: $28 $01

	db $d3                                           ; $5068: $d3

jr_089_5069:
	inc bc                                           ; $5069: $03
	db $e4                                           ; $506a: $e4
	nop                                              ; $506b: $00
	ld e, d                                          ; $506c: $5a
	ld bc, $03d4                                     ; $506d: $01 $d4 $03
	db $e4                                           ; $5070: $e4
	ld [$0972], sp                                   ; $5071: $08 $72 $09
	jr jr_089_5036                                   ; $5074: $18 $c0

	add hl, bc                                       ; $5076: $09
	db $e3                                           ; $5077: $e3
	nop                                              ; $5078: $00
	ld e, c                                          ; $5079: $59
	pop hl                                           ; $507a: $e1
	ld [bc], a                                       ; $507b: $02
	inc bc                                           ; $507c: $03
	inc de                                           ; $507d: $13
	ret nz                                           ; $507e: $c0

	ld bc, $02a0                                     ; $507f: $01 $a0 $02
	nop                                              ; $5082: $00
	adc $c0                                          ; $5083: $ce $c0
	ld bc, $2ea0                                     ; $5085: $01 $a0 $2e

jr_089_5088:
	nop                                              ; $5088: $00
	jp nc, $08e4                                     ; $5089: $d2 $e4 $08

	ld d, e                                          ; $508c: $53
	add hl, bc                                       ; $508d: $09
	ld [hl+], a                                      ; $508e: $22
	ret nz                                           ; $508f: $c0

	add hl, bc                                       ; $5090: $09
	db $e3                                           ; $5091: $e3
	nop                                              ; $5092: $00
	ld e, h                                          ; $5093: $5c
	pop hl                                           ; $5094: $e1
	ld [bc], a                                       ; $5095: $02
	inc bc                                           ; $5096: $03
	inc hl                                           ; $5097: $23
	ret nz                                           ; $5098: $c0

	ld bc, $02a0                                     ; $5099: $01 $a0 $02
	nop                                              ; $509c: $00
	call c, $01c0                                    ; $509d: $dc $c0 $01
	and b                                            ; $50a0: $a0
	ld l, $00                                        ; $50a1: $2e $00
	pop hl                                           ; $50a3: $e1
	ei                                               ; $50a4: $fb
	db $fc                                           ; $50a5: $fc
	add a                                            ; $50a6: $87
	and b                                            ; $50a7: $a0
	nop                                              ; $50a8: $00
	jp nc, $e403                                     ; $50a9: $d2 $03 $e4

	nop                                              ; $50ac: $00
	dec b                                            ; $50ad: $05
	db $e4                                           ; $50ae: $e4
	ld [$092f], sp                                   ; $50af: $08 $2f $09
	ld [de], a                                       ; $50b2: $12
	pop hl                                           ; $50b3: $e1
	ld [bc], a                                       ; $50b4: $02
	inc bc                                           ; $50b5: $03
	rra                                              ; $50b6: $1f
	ret nz                                           ; $50b7: $c0

	dec bc                                           ; $50b8: $0b
	db $e3                                           ; $50b9: $e3
	nop                                              ; $50ba: $00
	ld l, [hl]                                       ; $50bb: $6e
	ret nz                                           ; $50bc: $c0

	ld bc, $02a0                                     ; $50bd: $01 $a0 $02
	nop                                              ; $50c0: $00
	ldh a, [c]                                       ; $50c1: $f2
	db $e4                                           ; $50c2: $e4
	ld [$091b], sp                                   ; $50c3: $08 $1b $09
	jr jr_089_5088                                   ; $50c6: $18 $c0

	add hl, bc                                       ; $50c8: $09
	db $e3                                           ; $50c9: $e3
	nop                                              ; $50ca: $00
	ld c, d                                          ; $50cb: $4a
	pop hl                                           ; $50cc: $e1
	ld [bc], a                                       ; $50cd: $02
	inc bc                                           ; $50ce: $03
	inc hl                                           ; $50cf: $23
	ret nz                                           ; $50d0: $c0

	ld bc, $02a0                                     ; $50d1: $01 $a0 $02
	ld bc, $c001                                     ; $50d4: $01 $01 $c0
	ld bc, $2ea0                                     ; $50d7: $01 $a0 $2e
	ld bc, $e40b                                     ; $50da: $01 $0b $e4
	ld [$0901], sp                                   ; $50dd: $08 $01 $09
	ld e, h                                          ; $50e0: $5c
	ret nz                                           ; $50e1: $c0

	add hl, bc                                       ; $50e2: $09
	db $e3                                           ; $50e3: $e3
	nop                                              ; $50e4: $00
	ld b, $c0                                        ; $50e5: $06 $c0
	ld bc, $03a0                                     ; $50e7: $01 $a0 $03
	ld bc, $c00f                                     ; $50ea: $01 $0f $c0
	ld bc, $2ea0                                     ; $50ed: $01 $a0 $2e
	ld bc, $e112                                     ; $50f0: $01 $12 $e1
	ld [bc], a                                       ; $50f3: $02
	inc bc                                           ; $50f4: $03
	dec de                                           ; $50f5: $1b
	ret nz                                           ; $50f6: $c0

	ld bc, $03a0                                     ; $50f7: $01 $a0 $03
	ld bc, $c01b                                     ; $50fa: $01 $1b $c0
	ld bc, $2ea0                                     ; $50fd: $01 $a0 $2e

jr_089_5100:
	ld bc, $e12f                                     ; $5100: $01 $2f $e1
	ld [bc], a                                       ; $5103: $02
	inc bc                                           ; $5104: $03
	inc hl                                           ; $5105: $23
	ret nz                                           ; $5106: $c0

	ld bc, $03a0                                     ; $5107: $01 $a0 $03
	ld bc, $c13a                                     ; $510a: $01 $3a $c1
	add a                                            ; $510d: $87
	ret nz                                           ; $510e: $c0

	dec bc                                           ; $510f: $0b
	db $e3                                           ; $5110: $e3
	nop                                              ; $5111: $00
	add [hl]                                         ; $5112: $86
	ret nz                                           ; $5113: $c0

	inc c                                            ; $5114: $0c
	ldh [$f0], a                                     ; $5115: $e0 $f0
	ldh [rTAC], a                                    ; $5117: $e0 $07
	or c                                             ; $5119: $b1
	db $fd                                           ; $511a: $fd
	ld hl, $a087                                     ; $511b: $21 $87 $a0
	nop                                              ; $511e: $00
	ld bc, $03d0                                     ; $511f: $01 $d0 $03
	db $e4                                           ; $5122: $e4
	nop                                              ; $5123: $00
	ld a, [de]                                       ; $5124: $1a
	ld bc, $03d1                                     ; $5125: $01 $d1 $03
	db $e4                                           ; $5128: $e4
	nop                                              ; $5129: $00
	ld l, $01                                        ; $512a: $2e $01
	jp nc, $e403                                     ; $512c: $d2 $03 $e4

	nop                                              ; $512f: $00
	jr z, jr_089_5133                                ; $5130: $28 $01

	db $d3                                           ; $5132: $d3

jr_089_5133:
	inc bc                                           ; $5133: $03
	db $e4                                           ; $5134: $e4
	nop                                              ; $5135: $00
	ld e, d                                          ; $5136: $5a
	ld bc, $03d4                                     ; $5137: $01 $d4 $03
	db $e4                                           ; $513a: $e4
	rlca                                             ; $513b: $07
	xor b                                            ; $513c: $a8
	add hl, bc                                       ; $513d: $09
	jr jr_089_5100                                   ; $513e: $18 $c0

	add hl, bc                                       ; $5140: $09
	db $e3                                           ; $5141: $e3
	nop                                              ; $5142: $00
	ld e, c                                          ; $5143: $59
	pop hl                                           ; $5144: $e1
	ld [bc], a                                       ; $5145: $02
	inc bc                                           ; $5146: $03
	inc de                                           ; $5147: $13
	ret nz                                           ; $5148: $c0

	ld bc, $03a0                                     ; $5149: $01 $a0 $03
	ld bc, $c03d                                     ; $514c: $01 $3d $c0
	ld bc, $2ea0                                     ; $514f: $01 $a0 $2e

jr_089_5152:
	ld bc, $e443                                     ; $5152: $01 $43 $e4
	rlca                                             ; $5155: $07
	adc c                                            ; $5156: $89
	add hl, bc                                       ; $5157: $09
	ld [hl+], a                                      ; $5158: $22
	ret nz                                           ; $5159: $c0

	add hl, bc                                       ; $515a: $09
	db $e3                                           ; $515b: $e3
	nop                                              ; $515c: $00
	ld e, h                                          ; $515d: $5c
	pop hl                                           ; $515e: $e1
	ld [bc], a                                       ; $515f: $02
	inc bc                                           ; $5160: $03
	inc hl                                           ; $5161: $23
	ret nz                                           ; $5162: $c0

	ld bc, $03a0                                     ; $5163: $01 $a0 $03
	ld bc, $c04d                                     ; $5166: $01 $4d $c0
	ld bc, $2ea0                                     ; $5169: $01 $a0 $2e
	ld bc, $fb50                                     ; $516c: $01 $50 $fb
	db $fc                                           ; $516f: $fc
	add a                                            ; $5170: $87
	and b                                            ; $5171: $a0
	nop                                              ; $5172: $00
	jp nc, $e403                                     ; $5173: $d2 $03 $e4

	nop                                              ; $5176: $00
	dec b                                            ; $5177: $05
	db $e4                                           ; $5178: $e4
	rlca                                             ; $5179: $07
	ld h, l                                          ; $517a: $65
	add hl, bc                                       ; $517b: $09
	ld [de], a                                       ; $517c: $12
	pop hl                                           ; $517d: $e1
	ld [bc], a                                       ; $517e: $02
	inc bc                                           ; $517f: $03
	rra                                              ; $5180: $1f
	ret nz                                           ; $5181: $c0

	dec bc                                           ; $5182: $0b
	db $e3                                           ; $5183: $e3
	nop                                              ; $5184: $00
	ld l, [hl]                                       ; $5185: $6e
	ret nz                                           ; $5186: $c0

	ld bc, $03a0                                     ; $5187: $01 $a0 $03
	ld bc, $e45b                                     ; $518a: $01 $5b $e4
	rlca                                             ; $518d: $07
	ld d, c                                          ; $518e: $51
	add hl, bc                                       ; $518f: $09
	jr jr_089_5152                                   ; $5190: $18 $c0

	add hl, bc                                       ; $5192: $09
	db $e3                                           ; $5193: $e3
	nop                                              ; $5194: $00
	ld b, $e1                                        ; $5195: $06 $e1
	ld [bc], a                                       ; $5197: $02
	inc bc                                           ; $5198: $03
	inc hl                                           ; $5199: $23
	ret nz                                           ; $519a: $c0

	ld bc, $03a0                                     ; $519b: $01 $a0 $03
	ld bc, $c06c                                     ; $519e: $01 $6c $c0
	ld bc, $2ea0                                     ; $51a1: $01 $a0 $2e
	ld bc, $e40b                                     ; $51a4: $01 $0b $e4
	rlca                                             ; $51a7: $07
	scf                                              ; $51a8: $37
	add hl, bc                                       ; $51a9: $09
	ld e, h                                          ; $51aa: $5c
	ret nz                                           ; $51ab: $c0

	add hl, bc                                       ; $51ac: $09
	db $e3                                           ; $51ad: $e3
	nop                                              ; $51ae: $00
	dec b                                            ; $51af: $05
	ret nz                                           ; $51b0: $c0

	ld bc, $04a0                                     ; $51b1: $01 $a0 $04
	ld bc, $c077                                     ; $51b4: $01 $77 $c0
	ld bc, $2ea0                                     ; $51b7: $01 $a0 $2e
	ld bc, $e17a                                     ; $51ba: $01 $7a $e1
	ld [bc], a                                       ; $51bd: $02
	inc bc                                           ; $51be: $03
	dec de                                           ; $51bf: $1b
	ret nz                                           ; $51c0: $c0

	ld bc, $04a0                                     ; $51c1: $01 $a0 $04
	ld bc, $c083                                     ; $51c4: $01 $83 $c0
	ld bc, $2ea0                                     ; $51c7: $01 $a0 $2e

jr_089_51ca:
	ld bc, $e197                                     ; $51ca: $01 $97 $e1
	ld [bc], a                                       ; $51cd: $02
	inc bc                                           ; $51ce: $03
	inc hl                                           ; $51cf: $23
	ret nz                                           ; $51d0: $c0

	ld bc, $04a0                                     ; $51d1: $01 $a0 $04
	ld bc, $c19f                                     ; $51d4: $01 $9f $c1
	add a                                            ; $51d7: $87
	ret nz                                           ; $51d8: $c0

	dec bc                                           ; $51d9: $0b
	db $e3                                           ; $51da: $e3
	nop                                              ; $51db: $00
	add [hl]                                         ; $51dc: $86
	ret nz                                           ; $51dd: $c0

	inc c                                            ; $51de: $0c
	ldh [hDisp1_WX], a                                     ; $51df: $e0 $96
	ldh [rTMA], a                                    ; $51e1: $e0 $06
	rst SubAFromBC                                          ; $51e3: $e7
	db $fd                                           ; $51e4: $fd
	ld hl, $a087                                     ; $51e5: $21 $87 $a0
	nop                                              ; $51e8: $00
	ld bc, $03d0                                     ; $51e9: $01 $d0 $03
	db $e4                                           ; $51ec: $e4
	nop                                              ; $51ed: $00
	ld a, [de]                                       ; $51ee: $1a
	ld bc, $03d1                                     ; $51ef: $01 $d1 $03
	db $e4                                           ; $51f2: $e4
	nop                                              ; $51f3: $00
	ld l, $01                                        ; $51f4: $2e $01
	jp nc, $e403                                     ; $51f6: $d2 $03 $e4

	nop                                              ; $51f9: $00
	jr z, jr_089_51fd                                ; $51fa: $28 $01

	db $d3                                           ; $51fc: $d3

jr_089_51fd:
	inc bc                                           ; $51fd: $03
	db $e4                                           ; $51fe: $e4
	nop                                              ; $51ff: $00
	ld h, b                                          ; $5200: $60
	ld bc, $03d4                                     ; $5201: $01 $d4 $03
	db $e4                                           ; $5204: $e4
	ld b, $de                                        ; $5205: $06 $de
	add hl, bc                                       ; $5207: $09
	jr jr_089_51ca                                   ; $5208: $18 $c0

	add hl, bc                                       ; $520a: $09
	db $e3                                           ; $520b: $e3
	nop                                              ; $520c: $00
	ld e, c                                          ; $520d: $59
	pop hl                                           ; $520e: $e1
	ld [bc], a                                       ; $520f: $02
	inc bc                                           ; $5210: $03
	inc de                                           ; $5211: $13
	ret nz                                           ; $5212: $c0

	ld bc, $04a0                                     ; $5213: $01 $a0 $04
	ld bc, $c0a1                                     ; $5216: $01 $a1 $c0
	ld bc, $2ea0                                     ; $5219: $01 $a0 $2e
	ld bc, $e4af                                     ; $521c: $01 $af $e4
	ld b, $bf                                        ; $521f: $06 $bf
	add hl, bc                                       ; $5221: $09

jr_089_5222:
	ld [hl+], a                                      ; $5222: $22
	ret nz                                           ; $5223: $c0

	add hl, bc                                       ; $5224: $09
	db $e3                                           ; $5225: $e3
	nop                                              ; $5226: $00
	ld e, h                                          ; $5227: $5c
	pop hl                                           ; $5228: $e1

jr_089_5229:
	ld [bc], a                                       ; $5229: $02
	inc bc                                           ; $522a: $03
	inc de                                           ; $522b: $13
	ret nz                                           ; $522c: $c0

	ld bc, $04a0                                     ; $522d: $01 $a0 $04
	ld bc, $c0b9                                     ; $5230: $01 $b9 $c0
	ld bc, $2ea0                                     ; $5233: $01 $a0 $2e
	ld bc, $fbc5                                     ; $5236: $01 $c5 $fb
	db $fc                                           ; $5239: $fc
	add a                                            ; $523a: $87
	and b                                            ; $523b: $a0
	nop                                              ; $523c: $00
	jp nc, $e403                                     ; $523d: $d2 $03 $e4

	nop                                              ; $5240: $00
	dec b                                            ; $5241: $05
	db $e4                                           ; $5242: $e4
	ld b, $9b                                        ; $5243: $06 $9b
	add hl, bc                                       ; $5245: $09
	jr jr_089_5229                                   ; $5246: $18 $e1

	ld [bc], a                                       ; $5248: $02
	inc bc                                           ; $5249: $03
	rra                                              ; $524a: $1f
	ret nz                                           ; $524b: $c0

	dec bc                                           ; $524c: $0b
	db $e3                                           ; $524d: $e3
	nop                                              ; $524e: $00
	ld l, [hl]                                       ; $524f: $6e
	ret nz                                           ; $5250: $c0

	ld bc, $04a0                                     ; $5251: $01 $a0 $04
	ld bc, $c0d2                                     ; $5254: $01 $d2 $c0
	ld bc, $2ea0                                     ; $5257: $01 $a0 $2e
	ld bc, $e4df                                     ; $525a: $01 $df $e4
	ld b, $81                                        ; $525d: $06 $81
	add hl, bc                                       ; $525f: $09
	jr jr_089_5222                                   ; $5260: $18 $c0

	add hl, bc                                       ; $5262: $09
	db $e3                                           ; $5263: $e3
	nop                                              ; $5264: $00
	dec b                                            ; $5265: $05
	pop hl                                           ; $5266: $e1
	ld [bc], a                                       ; $5267: $02
	inc bc                                           ; $5268: $03
	inc hl                                           ; $5269: $23
	ret nz                                           ; $526a: $c0

	ld bc, $04a0                                     ; $526b: $01 $a0 $04
	ld bc, $c0eb                                     ; $526e: $01 $eb $c0
	ld bc, $2ea0                                     ; $5271: $01 $a0 $2e
	ld bc, $e40b                                     ; $5274: $01 $0b $e4
	ld b, $67                                        ; $5277: $06 $67
	add hl, bc                                       ; $5279: $09
	ld e, h                                          ; $527a: $5c
	ret nz                                           ; $527b: $c0

	add hl, bc                                       ; $527c: $09
	db $e3                                           ; $527d: $e3
	nop                                              ; $527e: $00
	inc b                                            ; $527f: $04
	ret nz                                           ; $5280: $c0

	ld bc, $05a0                                     ; $5281: $01 $a0 $05
	ld bc, $c0fc                                     ; $5284: $01 $fc $c0
	ld bc, $2ea0                                     ; $5287: $01 $a0 $2e
	ld bc, $e1ff                                     ; $528a: $01 $ff $e1
	ld [bc], a                                       ; $528d: $02
	inc bc                                           ; $528e: $03
	dec de                                           ; $528f: $1b
	ret nz                                           ; $5290: $c0

	ld bc, $05a0                                     ; $5291: $01 $a0 $05
	ld [bc], a                                       ; $5294: $02
	ld [$01c0], sp                                   ; $5295: $08 $c0 $01
	and b                                            ; $5298: $a0
	ld l, $02                                        ; $5299: $2e $02
	ld d, $e1                                        ; $529b: $16 $e1
	ld [bc], a                                       ; $529d: $02
	inc bc                                           ; $529e: $03
	inc hl                                           ; $529f: $23
	ret nz                                           ; $52a0: $c0

	ld bc, $05a0                                     ; $52a1: $01 $a0 $05
	ld [bc], a                                       ; $52a4: $02
	ld e, $c1                                        ; $52a5: $1e $c1
	add a                                            ; $52a7: $87
	ret nz                                           ; $52a8: $c0

jr_089_52a9:
	dec bc                                           ; $52a9: $0b
	db $e3                                           ; $52aa: $e3
	nop                                              ; $52ab: $00
	add [hl]                                         ; $52ac: $86
	ret nz                                           ; $52ad: $c0

	inc c                                            ; $52ae: $0c
	ldh [hDisp1_WX], a                                     ; $52af: $e0 $96
	ldh [rTMA], a                                    ; $52b1: $e0 $06
	rla                                              ; $52b3: $17
	db $fd                                           ; $52b4: $fd
	ld hl, $a087                                     ; $52b5: $21 $87 $a0
	nop                                              ; $52b8: $00
	ld bc, $03d0                                     ; $52b9: $01 $d0 $03
	db $e4                                           ; $52bc: $e4
	nop                                              ; $52bd: $00
	ld a, [de]                                       ; $52be: $1a
	ld bc, $03d1                                     ; $52bf: $01 $d1 $03
	db $e4                                           ; $52c2: $e4
	nop                                              ; $52c3: $00
	ld l, $01                                        ; $52c4: $2e $01
	jp nc, $e403                                     ; $52c6: $d2 $03 $e4

	nop                                              ; $52c9: $00
	jr z, jr_089_52cd                                ; $52ca: $28 $01

	db $d3                                           ; $52cc: $d3

jr_089_52cd:
	inc bc                                           ; $52cd: $03
	db $e4                                           ; $52ce: $e4
	nop                                              ; $52cf: $00
	ld e, d                                          ; $52d0: $5a
	ld bc, $03d4                                     ; $52d1: $01 $d4 $03
	db $e4                                           ; $52d4: $e4
	ld b, $0e                                        ; $52d5: $06 $0e
	add hl, bc                                       ; $52d7: $09
	jr @-$3e                                         ; $52d8: $18 $c0

	add hl, bc                                       ; $52da: $09
	db $e3                                           ; $52db: $e3
	nop                                              ; $52dc: $00
	ld e, c                                          ; $52dd: $59
	pop hl                                           ; $52de: $e1
	ld [bc], a                                       ; $52df: $02
	inc bc                                           ; $52e0: $03
	inc de                                           ; $52e1: $13
	ret nz                                           ; $52e2: $c0

	ld bc, $05a0                                     ; $52e3: $01 $a0 $05
	ld [bc], a                                       ; $52e6: $02
	jr z, jr_089_52a9                                ; $52e7: $28 $c0

	ld bc, $2ea0                                     ; $52e9: $01 $a0 $2e

jr_089_52ec:
	ld [bc], a                                       ; $52ec: $02
	ld sp, $05e4                                     ; $52ed: $31 $e4 $05
	rst AddAOntoHL                                          ; $52f0: $ef
	add hl, bc                                       ; $52f1: $09
	ld [hl+], a                                      ; $52f2: $22
	ret nz                                           ; $52f3: $c0

	add hl, bc                                       ; $52f4: $09
	db $e3                                           ; $52f5: $e3
	nop                                              ; $52f6: $00
	ld e, h                                          ; $52f7: $5c
	pop hl                                           ; $52f8: $e1
	ld [bc], a                                       ; $52f9: $02
	inc bc                                           ; $52fa: $03
	inc hl                                           ; $52fb: $23
	ret nz                                           ; $52fc: $c0

	ld bc, $05a0                                     ; $52fd: $01 $a0 $05
	ld [bc], a                                       ; $5300: $02
	dec sp                                           ; $5301: $3b
	ret nz                                           ; $5302: $c0

	ld bc, $2ea0                                     ; $5303: $01 $a0 $2e
	ld [bc], a                                       ; $5306: $02
	ld b, h                                          ; $5307: $44
	ei                                               ; $5308: $fb
	db $fc                                           ; $5309: $fc
	add a                                            ; $530a: $87
	and b                                            ; $530b: $a0
	nop                                              ; $530c: $00
	jp nc, $e403                                     ; $530d: $d2 $03 $e4

	nop                                              ; $5310: $00
	dec b                                            ; $5311: $05
	db $e4                                           ; $5312: $e4
	dec b                                            ; $5313: $05
	rrc c                                            ; $5314: $cb $09
	ld [de], a                                       ; $5316: $12
	pop hl                                           ; $5317: $e1
	ld [bc], a                                       ; $5318: $02
	inc bc                                           ; $5319: $03
	rra                                              ; $531a: $1f
	ret nz                                           ; $531b: $c0

	dec bc                                           ; $531c: $0b
	db $e3                                           ; $531d: $e3
	nop                                              ; $531e: $00
	ld l, [hl]                                       ; $531f: $6e
	ret nz                                           ; $5320: $c0

	ld bc, $05a0                                     ; $5321: $01 $a0 $05
	ld [bc], a                                       ; $5324: $02
	ld d, e                                          ; $5325: $53
	db $e4                                           ; $5326: $e4
	dec b                                            ; $5327: $05
	or a                                             ; $5328: $b7
	add hl, bc                                       ; $5329: $09
	jr jr_089_52ec                                   ; $532a: $18 $c0

	add hl, bc                                       ; $532c: $09
	db $e3                                           ; $532d: $e3
	nop                                              ; $532e: $00
	inc b                                            ; $532f: $04
	pop hl                                           ; $5330: $e1
	ld [bc], a                                       ; $5331: $02
	inc bc                                           ; $5332: $03
	inc hl                                           ; $5333: $23
	ret nz                                           ; $5334: $c0

	ld bc, $05a0                                     ; $5335: $01 $a0 $05
	ld [bc], a                                       ; $5338: $02
	ld h, [hl]                                       ; $5339: $66
	ret nz                                           ; $533a: $c0

	ld bc, $2ea0                                     ; $533b: $01 $a0 $2e
	ld bc, $e40b                                     ; $533e: $01 $0b $e4
	dec b                                            ; $5341: $05
	sbc l                                            ; $5342: $9d
	add hl, bc                                       ; $5343: $09
	ld e, e                                          ; $5344: $5b
	ret nz                                           ; $5345: $c0

	add hl, bc                                       ; $5346: $09
	db $e3                                           ; $5347: $e3
	nop                                              ; $5348: $00
	inc bc                                           ; $5349: $03
	ret nz                                           ; $534a: $c0

	ld bc, $08a0                                     ; $534b: $01 $a0 $08
	ld bc, $c077                                     ; $534e: $01 $77 $c0
	ld bc, $2ea0                                     ; $5351: $01 $a0 $2e
	ld [bc], a                                       ; $5354: $02
	ld l, a                                          ; $5355: $6f
	pop hl                                           ; $5356: $e1
	ld [bc], a                                       ; $5357: $02
	inc bc                                           ; $5358: $03
	dec de                                           ; $5359: $1b
	ret nz                                           ; $535a: $c0

	ld bc, $08a0                                     ; $535b: $01 $a0 $08
	ld [bc], a                                       ; $535e: $02
	ld a, b                                          ; $535f: $78
	ret nz                                           ; $5360: $c0

	ld bc, $2ea0                                     ; $5361: $01 $a0 $2e
	ld [bc], a                                       ; $5364: $02
	ld a, a                                          ; $5365: $7f
	pop hl                                           ; $5366: $e1
	ld [bc], a                                       ; $5367: $02
	inc bc                                           ; $5368: $03
	inc hl                                           ; $5369: $23
	ret nz                                           ; $536a: $c0

	ld bc, $08a0                                     ; $536b: $01 $a0 $08
	ld [bc], a                                       ; $536e: $02
	add a                                            ; $536f: $87
	pop bc                                           ; $5370: $c1
	add a                                            ; $5371: $87
	ret nz                                           ; $5372: $c0

	dec bc                                           ; $5373: $0b
	db $e3                                           ; $5374: $e3
	nop                                              ; $5375: $00
	add [hl]                                         ; $5376: $86
	ret nz                                           ; $5377: $c0

	inc c                                            ; $5378: $0c
	pop de                                           ; $5379: $d1
	ldh [rTIMA], a                                   ; $537a: $e0 $05
	ld c, [hl]                                       ; $537c: $4e
	db $fd                                           ; $537d: $fd
	ld hl, $a087                                     ; $537e: $21 $87 $a0
	nop                                              ; $5381: $00
	ld bc, $03d0                                     ; $5382: $01 $d0 $03
	db $e4                                           ; $5385: $e4
	nop                                              ; $5386: $00
	ld a, [de]                                       ; $5387: $1a
	ld bc, $03d1                                     ; $5388: $01 $d1 $03
	db $e4                                           ; $538b: $e4
	nop                                              ; $538c: $00
	ld l, $01                                        ; $538d: $2e $01
	jp nc, $e403                                     ; $538f: $d2 $03 $e4

	nop                                              ; $5392: $00
	jr z, jr_089_5396                                ; $5393: $28 $01

	db $d3                                           ; $5395: $d3

jr_089_5396:
	inc bc                                           ; $5396: $03
	db $e4                                           ; $5397: $e4
	nop                                              ; $5398: $00
	ld e, d                                          ; $5399: $5a
	ld bc, $03d4                                     ; $539a: $01 $d4 $03
	db $e4                                           ; $539d: $e4
	dec b                                            ; $539e: $05
	ld b, l                                          ; $539f: $45
	add hl, bc                                       ; $53a0: $09
	jr @-$3e                                         ; $53a1: $18 $c0

	add hl, bc                                       ; $53a3: $09
	db $e3                                           ; $53a4: $e3
	nop                                              ; $53a5: $00
	ld e, c                                          ; $53a6: $59
	pop hl                                           ; $53a7: $e1
	ld [bc], a                                       ; $53a8: $02
	inc bc                                           ; $53a9: $03
	inc de                                           ; $53aa: $13
	ret nz                                           ; $53ab: $c0

	ld bc, $08a0                                     ; $53ac: $01 $a0 $08
	ld [bc], a                                       ; $53af: $02
	adc d                                            ; $53b0: $8a
	ret nz                                           ; $53b1: $c0

	ld bc, $2ea0                                     ; $53b2: $01 $a0 $2e

jr_089_53b5:
	ld [bc], a                                       ; $53b5: $02
	sub h                                            ; $53b6: $94
	db $e4                                           ; $53b7: $e4
	dec b                                            ; $53b8: $05
	ld h, $09                                        ; $53b9: $26 $09
	ld [hl+], a                                      ; $53bb: $22
	ret nz                                           ; $53bc: $c0

	add hl, bc                                       ; $53bd: $09
	db $e3                                           ; $53be: $e3
	nop                                              ; $53bf: $00
	ld e, h                                          ; $53c0: $5c
	pop hl                                           ; $53c1: $e1
	ld [bc], a                                       ; $53c2: $02
	inc bc                                           ; $53c3: $03
	inc de                                           ; $53c4: $13
	ret nz                                           ; $53c5: $c0

	ld bc, $08a0                                     ; $53c6: $01 $a0 $08
	ld [bc], a                                       ; $53c9: $02
	sbc [hl]                                         ; $53ca: $9e
	ret nz                                           ; $53cb: $c0

	ld bc, $2ea0                                     ; $53cc: $01 $a0 $2e
	ld [bc], a                                       ; $53cf: $02
	xor e                                            ; $53d0: $ab
	ei                                               ; $53d1: $fb
	db $fc                                           ; $53d2: $fc
	add a                                            ; $53d3: $87
	and b                                            ; $53d4: $a0
	nop                                              ; $53d5: $00
	jp nc, $e403                                     ; $53d6: $d2 $03 $e4

	nop                                              ; $53d9: $00
	dec b                                            ; $53da: $05
	db $e4                                           ; $53db: $e4
	dec b                                            ; $53dc: $05
	ld [bc], a                                       ; $53dd: $02
	add hl, bc                                       ; $53de: $09
	ld [de], a                                       ; $53df: $12
	pop hl                                           ; $53e0: $e1
	ld [bc], a                                       ; $53e1: $02
	inc bc                                           ; $53e2: $03
	rra                                              ; $53e3: $1f
	ret nz                                           ; $53e4: $c0

	dec bc                                           ; $53e5: $0b
	db $e3                                           ; $53e6: $e3
	nop                                              ; $53e7: $00
	ld l, [hl]                                       ; $53e8: $6e
	ret nz                                           ; $53e9: $c0

	ld bc, $08a0                                     ; $53ea: $01 $a0 $08
	ld [bc], a                                       ; $53ed: $02
	cp d                                             ; $53ee: $ba
	db $e4                                           ; $53ef: $e4
	inc b                                            ; $53f0: $04
	xor $09                                          ; $53f1: $ee $09
	jr jr_089_53b5                                   ; $53f3: $18 $c0

	add hl, bc                                       ; $53f5: $09
	db $e3                                           ; $53f6: $e3
	nop                                              ; $53f7: $00
	inc bc                                           ; $53f8: $03
	pop hl                                           ; $53f9: $e1
	ld [bc], a                                       ; $53fa: $02
	inc bc                                           ; $53fb: $03
	dec de                                           ; $53fc: $1b
	ret nz                                           ; $53fd: $c0

	ld bc, $08a0                                     ; $53fe: $01 $a0 $08
	ld [bc], a                                       ; $5401: $02
	jp z, $01c0                                      ; $5402: $ca $c0 $01

	and b                                            ; $5405: $a0
	ld l, $01                                        ; $5406: $2e $01
	dec bc                                           ; $5408: $0b
	db $e4                                           ; $5409: $e4
	inc b                                            ; $540a: $04
	call nc, $5b09                                   ; $540b: $d4 $09 $5b
	ret nz                                           ; $540e: $c0

	add hl, bc                                       ; $540f: $09
	db $e3                                           ; $5410: $e3
	nop                                              ; $5411: $00
	ld bc, $01c0                                     ; $5412: $01 $c0 $01
	and b                                            ; $5415: $a0
	add hl, bc                                       ; $5416: $09
	ld [bc], a                                       ; $5417: $02
	jp nc, $01c0                                     ; $5418: $d2 $c0 $01

	and b                                            ; $541b: $a0
	ld l, $02                                        ; $541c: $2e $02
	push de                                          ; $541e: $d5
	pop hl                                           ; $541f: $e1
	ld [bc], a                                       ; $5420: $02
	inc bc                                           ; $5421: $03
	dec de                                           ; $5422: $1b
	ret nz                                           ; $5423: $c0

	ld bc, $09a0                                     ; $5424: $01 $a0 $09
	ld [bc], a                                       ; $5427: $02
	sbc $c0                                          ; $5428: $de $c0
	ld bc, $2ea0                                     ; $542a: $01 $a0 $2e
	ld [bc], a                                       ; $542d: $02
	and $e1                                          ; $542e: $e6 $e1
	ld [bc], a                                       ; $5430: $02
	inc bc                                           ; $5431: $03
	inc hl                                           ; $5432: $23
	ret nz                                           ; $5433: $c0

	ld bc, $09a0                                     ; $5434: $01 $a0 $09
	ld [bc], a                                       ; $5437: $02
	di                                               ; $5438: $f3
	pop bc                                           ; $5439: $c1
	add a                                            ; $543a: $87
	ret nz                                           ; $543b: $c0

	dec bc                                           ; $543c: $0b
	db $e3                                           ; $543d: $e3
	nop                                              ; $543e: $00
	add [hl]                                         ; $543f: $86
	ret nz                                           ; $5440: $c0

	inc c                                            ; $5441: $0c
	pop de                                           ; $5442: $d1
	ldh [rDIV], a                                    ; $5443: $e0 $04
	add l                                            ; $5445: $85
	db $fd                                           ; $5446: $fd
	ld hl, $a087                                     ; $5447: $21 $87 $a0
	nop                                              ; $544a: $00
	ld bc, $03d0                                     ; $544b: $01 $d0 $03
	db $e4                                           ; $544e: $e4
	nop                                              ; $544f: $00
	ld a, [de]                                       ; $5450: $1a
	ld bc, $03d1                                     ; $5451: $01 $d1 $03
	db $e4                                           ; $5454: $e4
	nop                                              ; $5455: $00
	ld l, $01                                        ; $5456: $2e $01
	jp nc, $e403                                     ; $5458: $d2 $03 $e4

	nop                                              ; $545b: $00
	jr z, jr_089_545f                                ; $545c: $28 $01

	db $d3                                           ; $545e: $d3

jr_089_545f:
	inc bc                                           ; $545f: $03
	db $e4                                           ; $5460: $e4
	nop                                              ; $5461: $00
	ld e, d                                          ; $5462: $5a
	ld bc, $03d4                                     ; $5463: $01 $d4 $03
	db $e4                                           ; $5466: $e4
	inc b                                            ; $5467: $04
	ld a, h                                          ; $5468: $7c
	add hl, bc                                       ; $5469: $09
	jr @-$3e                                         ; $546a: $18 $c0

	add hl, bc                                       ; $546c: $09
	db $e3                                           ; $546d: $e3
	nop                                              ; $546e: $00
	ld e, c                                          ; $546f: $59
	pop hl                                           ; $5470: $e1
	ld [bc], a                                       ; $5471: $02
	inc bc                                           ; $5472: $03
	inc de                                           ; $5473: $13
	ret nz                                           ; $5474: $c0

	ld bc, $09a0                                     ; $5475: $01 $a0 $09
	ld [bc], a                                       ; $5478: $02
	or $c0                                           ; $5479: $f6 $c0
	ld bc, $2ea0                                     ; $547b: $01 $a0 $2e
	ld [bc], a                                       ; $547e: $02
	rst $38                                          ; $547f: $ff
	db $e4                                           ; $5480: $e4
	inc b                                            ; $5481: $04
	ld e, l                                          ; $5482: $5d
	add hl, bc                                       ; $5483: $09
	ld [hl+], a                                      ; $5484: $22
	ret nz                                           ; $5485: $c0

	add hl, bc                                       ; $5486: $09
	db $e3                                           ; $5487: $e3
	nop                                              ; $5488: $00
	ld e, h                                          ; $5489: $5c
	pop hl                                           ; $548a: $e1
	ld [bc], a                                       ; $548b: $02
	inc bc                                           ; $548c: $03
	inc hl                                           ; $548d: $23
	ret nz                                           ; $548e: $c0

	ld bc, $09a0                                     ; $548f: $01 $a0 $09
	inc bc                                           ; $5492: $03
	add hl, bc                                       ; $5493: $09
	ret nz                                           ; $5494: $c0

	ld bc, $2ea0                                     ; $5495: $01 $a0 $2e
	inc bc                                           ; $5498: $03
	db $10                                           ; $5499: $10
	ei                                               ; $549a: $fb
	db $fc                                           ; $549b: $fc
	add a                                            ; $549c: $87
	and b                                            ; $549d: $a0
	nop                                              ; $549e: $00
	jp nc, $e403                                     ; $549f: $d2 $03 $e4

	nop                                              ; $54a2: $00
	dec b                                            ; $54a3: $05
	db $e4                                           ; $54a4: $e4
	inc b                                            ; $54a5: $04
	add hl, sp                                       ; $54a6: $39
	add hl, bc                                       ; $54a7: $09
	ld [de], a                                       ; $54a8: $12
	pop hl                                           ; $54a9: $e1
	ld [bc], a                                       ; $54aa: $02
	inc bc                                           ; $54ab: $03
	rra                                              ; $54ac: $1f
	ret nz                                           ; $54ad: $c0

	dec bc                                           ; $54ae: $0b
	db $e3                                           ; $54af: $e3
	nop                                              ; $54b0: $00
	ld l, [hl]                                       ; $54b1: $6e
	ret nz                                           ; $54b2: $c0

	ld bc, $09a0                                     ; $54b3: $01 $a0 $09
	inc bc                                           ; $54b6: $03
	ld e, $e4                                        ; $54b7: $1e $e4
	inc b                                            ; $54b9: $04
	dec h                                            ; $54ba: $25
	add hl, bc                                       ; $54bb: $09
	ld a, [de]                                       ; $54bc: $1a
	ret nz                                           ; $54bd: $c0

	add hl, bc                                       ; $54be: $09
	db $e3                                           ; $54bf: $e3
	nop                                              ; $54c0: $00
	ld bc, $02e1                                     ; $54c1: $01 $e1 $02
	inc bc                                           ; $54c4: $03
	inc hl                                           ; $54c5: $23
	ret nz                                           ; $54c6: $c0

	ld bc, $09a0                                     ; $54c7: $01 $a0 $09
	inc bc                                           ; $54ca: $03
	ld l, $c1                                        ; $54cb: $2e $c1
	ld e, e                                          ; $54cd: $5b
	ret nz                                           ; $54ce: $c0

	ld bc, $2ea0                                     ; $54cf: $01 $a0 $2e
	ld bc, $e40b                                     ; $54d2: $01 $0b $e4
	inc b                                            ; $54d5: $04
	add hl, bc                                       ; $54d6: $09
	add hl, bc                                       ; $54d7: $09
	ld e, h                                          ; $54d8: $5c
	ret nz                                           ; $54d9: $c0

	add hl, bc                                       ; $54da: $09
	db $e3                                           ; $54db: $e3
	nop                                              ; $54dc: $00
	ld [bc], a                                       ; $54dd: $02
	ret nz                                           ; $54de: $c0

	ld bc, $06a0                                     ; $54df: $01 $a0 $06
	inc bc                                           ; $54e2: $03
	dec a                                            ; $54e3: $3d
	ret nz                                           ; $54e4: $c0

	ld bc, $2ea0                                     ; $54e5: $01 $a0 $2e
	inc bc                                           ; $54e8: $03
	ld b, d                                          ; $54e9: $42
	pop hl                                           ; $54ea: $e1
	ld [bc], a                                       ; $54eb: $02
	inc bc                                           ; $54ec: $03
	dec de                                           ; $54ed: $1b
	ret nz                                           ; $54ee: $c0

	ld bc, $06a0                                     ; $54ef: $01 $a0 $06
	inc bc                                           ; $54f2: $03
	ld c, e                                          ; $54f3: $4b
	ret nz                                           ; $54f4: $c0

	ld bc, $2ea0                                     ; $54f5: $01 $a0 $2e

jr_089_54f8:
	inc bc                                           ; $54f8: $03
	ld d, [hl]                                       ; $54f9: $56
	pop hl                                           ; $54fa: $e1
	ld [bc], a                                       ; $54fb: $02
	inc bc                                           ; $54fc: $03
	inc hl                                           ; $54fd: $23
	ret nz                                           ; $54fe: $c0

	ld bc, $06a0                                     ; $54ff: $01 $a0 $06
	inc bc                                           ; $5502: $03
	ld e, [hl]                                       ; $5503: $5e
	pop bc                                           ; $5504: $c1
	add a                                            ; $5505: $87
	ret nz                                           ; $5506: $c0

	dec bc                                           ; $5507: $0b
	db $e3                                           ; $5508: $e3
	nop                                              ; $5509: $00
	add [hl]                                         ; $550a: $86
	ret nz                                           ; $550b: $c0

	inc c                                            ; $550c: $0c
	ldh [$5a], a                                     ; $550d: $e0 $5a
	ldh [$03], a                                     ; $550f: $e0 $03
	cp c                                             ; $5511: $b9
	db $fd                                           ; $5512: $fd
	ld hl, $a087                                     ; $5513: $21 $87 $a0
	nop                                              ; $5516: $00
	ld bc, $03d0                                     ; $5517: $01 $d0 $03
	db $e4                                           ; $551a: $e4
	nop                                              ; $551b: $00
	ld a, [de]                                       ; $551c: $1a
	ld bc, $03d1                                     ; $551d: $01 $d1 $03
	db $e4                                           ; $5520: $e4
	nop                                              ; $5521: $00
	ld l, $01                                        ; $5522: $2e $01
	jp nc, $e403                                     ; $5524: $d2 $03 $e4

	nop                                              ; $5527: $00
	jr z, jr_089_552b                                ; $5528: $28 $01

	db $d3                                           ; $552a: $d3

jr_089_552b:
	inc bc                                           ; $552b: $03
	db $e4                                           ; $552c: $e4
	nop                                              ; $552d: $00
	ld e, d                                          ; $552e: $5a
	ld bc, $03d4                                     ; $552f: $01 $d4 $03
	db $e4                                           ; $5532: $e4
	inc bc                                           ; $5533: $03
	or b                                             ; $5534: $b0
	add hl, bc                                       ; $5535: $09
	jr jr_089_54f8                                   ; $5536: $18 $c0

	add hl, bc                                       ; $5538: $09
	db $e3                                           ; $5539: $e3
	nop                                              ; $553a: $00
	ld e, c                                          ; $553b: $59
	pop hl                                           ; $553c: $e1
	ld [bc], a                                       ; $553d: $02
	inc bc                                           ; $553e: $03
	inc de                                           ; $553f: $13
	ret nz                                           ; $5540: $c0

	ld bc, $06a0                                     ; $5541: $01 $a0 $06
	inc bc                                           ; $5544: $03
	ld h, b                                          ; $5545: $60
	ret nz                                           ; $5546: $c0

	ld bc, $2ea0                                     ; $5547: $01 $a0 $2e

jr_089_554a:
	inc bc                                           ; $554a: $03
	ld l, h                                          ; $554b: $6c
	db $e4                                           ; $554c: $e4
	inc bc                                           ; $554d: $03
	sub c                                            ; $554e: $91
	add hl, bc                                       ; $554f: $09
	ld [hl+], a                                      ; $5550: $22
	ret nz                                           ; $5551: $c0

	add hl, bc                                       ; $5552: $09
	db $e3                                           ; $5553: $e3
	nop                                              ; $5554: $00
	ld e, h                                          ; $5555: $5c
	pop hl                                           ; $5556: $e1
	ld [bc], a                                       ; $5557: $02
	inc bc                                           ; $5558: $03
	inc hl                                           ; $5559: $23
	ret nz                                           ; $555a: $c0

	ld bc, $06a0                                     ; $555b: $01 $a0 $06
	inc bc                                           ; $555e: $03
	ld [hl], l                                       ; $555f: $75
	ret nz                                           ; $5560: $c0

	ld bc, $2ea0                                     ; $5561: $01 $a0 $2e
	inc bc                                           ; $5564: $03
	ld a, l                                          ; $5565: $7d
	ei                                               ; $5566: $fb
	db $fc                                           ; $5567: $fc
	add a                                            ; $5568: $87
	and b                                            ; $5569: $a0
	nop                                              ; $556a: $00
	jp nc, $e403                                     ; $556b: $d2 $03 $e4

	nop                                              ; $556e: $00
	dec b                                            ; $556f: $05
	db $e4                                           ; $5570: $e4
	inc bc                                           ; $5571: $03
	ld l, l                                          ; $5572: $6d
	add hl, bc                                       ; $5573: $09
	ld [de], a                                       ; $5574: $12
	pop hl                                           ; $5575: $e1
	ld [bc], a                                       ; $5576: $02
	inc bc                                           ; $5577: $03
	rra                                              ; $5578: $1f
	ret nz                                           ; $5579: $c0

	dec bc                                           ; $557a: $0b
	db $e3                                           ; $557b: $e3
	nop                                              ; $557c: $00
	ld l, [hl]                                       ; $557d: $6e
	ret nz                                           ; $557e: $c0

	ld bc, $06a0                                     ; $557f: $01 $a0 $06
	inc bc                                           ; $5582: $03
	add [hl]                                         ; $5583: $86
	db $e4                                           ; $5584: $e4
	inc bc                                           ; $5585: $03
	ld e, c                                          ; $5586: $59
	add hl, bc                                       ; $5587: $09
	jr jr_089_554a                                   ; $5588: $18 $c0

	add hl, bc                                       ; $558a: $09
	db $e3                                           ; $558b: $e3
	nop                                              ; $558c: $00
	ld [bc], a                                       ; $558d: $02
	pop hl                                           ; $558e: $e1
	ld [bc], a                                       ; $558f: $02
	inc bc                                           ; $5590: $03
	inc hl                                           ; $5591: $23
	ret nz                                           ; $5592: $c0

	ld bc, $06a0                                     ; $5593: $01 $a0 $06
	inc bc                                           ; $5596: $03
	sbc d                                            ; $5597: $9a
	ret nz                                           ; $5598: $c0

	ld bc, $2ea0                                     ; $5599: $01 $a0 $2e
	ld bc, $e40b                                     ; $559c: $01 $0b $e4
	inc bc                                           ; $559f: $03
	ccf                                              ; $55a0: $3f
	add hl, bc                                       ; $55a1: $09
	ld e, h                                          ; $55a2: $5c
	ret nz                                           ; $55a3: $c0

	add hl, bc                                       ; $55a4: $09
	db $e3                                           ; $55a5: $e3
	nop                                              ; $55a6: $00
	rlca                                             ; $55a7: $07
	ret nz                                           ; $55a8: $c0

	ld bc, $0aa0                                     ; $55a9: $01 $a0 $0a
	nop                                              ; $55ac: $00
	and [hl]                                         ; $55ad: $a6
	ret nz                                           ; $55ae: $c0

	ld bc, $2ea0                                     ; $55af: $01 $a0 $2e
	inc bc                                           ; $55b2: $03
	and [hl]                                         ; $55b3: $a6
	pop hl                                           ; $55b4: $e1
	ld [bc], a                                       ; $55b5: $02
	inc bc                                           ; $55b6: $03
	dec de                                           ; $55b7: $1b
	ret nz                                           ; $55b8: $c0

	ld bc, $0aa0                                     ; $55b9: $01 $a0 $0a
	inc bc                                           ; $55bc: $03
	xor a                                            ; $55bd: $af
	ret nz                                           ; $55be: $c0

	ld bc, $2ea0                                     ; $55bf: $01 $a0 $2e

jr_089_55c2:
	inc bc                                           ; $55c2: $03
	ret nz                                           ; $55c3: $c0

	pop hl                                           ; $55c4: $e1
	ld [bc], a                                       ; $55c5: $02
	inc bc                                           ; $55c6: $03
	inc hl                                           ; $55c7: $23
	ret nz                                           ; $55c8: $c0

	ld bc, $0aa0                                     ; $55c9: $01 $a0 $0a
	inc bc                                           ; $55cc: $03
	ret z                                            ; $55cd: $c8

	pop bc                                           ; $55ce: $c1
	add a                                            ; $55cf: $87
	ret nz                                           ; $55d0: $c0

	dec bc                                           ; $55d1: $0b
	db $e3                                           ; $55d2: $e3
	nop                                              ; $55d3: $00
	add [hl]                                         ; $55d4: $86
	ret nz                                           ; $55d5: $c0

	inc c                                            ; $55d6: $0c
	ldh [hDisp1_WX], a                                     ; $55d7: $e0 $96
	ldh [rSC], a                                     ; $55d9: $e0 $02
	rst AddAOntoHL                                          ; $55db: $ef
	db $fd                                           ; $55dc: $fd
	ld hl, $a087                                     ; $55dd: $21 $87 $a0
	nop                                              ; $55e0: $00
	ld bc, $03d0                                     ; $55e1: $01 $d0 $03
	db $e4                                           ; $55e4: $e4
	nop                                              ; $55e5: $00
	ld a, [de]                                       ; $55e6: $1a
	ld bc, $03d1                                     ; $55e7: $01 $d1 $03
	db $e4                                           ; $55ea: $e4
	nop                                              ; $55eb: $00
	ld l, $01                                        ; $55ec: $2e $01
	jp nc, $e403                                     ; $55ee: $d2 $03 $e4

	nop                                              ; $55f1: $00
	jr z, jr_089_55f5                                ; $55f2: $28 $01

	db $d3                                           ; $55f4: $d3

jr_089_55f5:
	inc bc                                           ; $55f5: $03
	db $e4                                           ; $55f6: $e4
	nop                                              ; $55f7: $00
	ld e, d                                          ; $55f8: $5a
	ld bc, $03d4                                     ; $55f9: $01 $d4 $03
	db $e4                                           ; $55fc: $e4
	ld [bc], a                                       ; $55fd: $02
	and $09                                          ; $55fe: $e6 $09
	jr jr_089_55c2                                   ; $5600: $18 $c0

	add hl, bc                                       ; $5602: $09
	db $e3                                           ; $5603: $e3
	nop                                              ; $5604: $00
	ld e, c                                          ; $5605: $59
	pop hl                                           ; $5606: $e1
	ld [bc], a                                       ; $5607: $02
	inc bc                                           ; $5608: $03
	inc de                                           ; $5609: $13
	ret nz                                           ; $560a: $c0

	ld bc, $0aa0                                     ; $560b: $01 $a0 $0a
	inc bc                                           ; $560e: $03
	call $01c0                                       ; $560f: $cd $c0 $01
	and b                                            ; $5612: $a0
	ld l, $03                                        ; $5613: $2e $03
	pop de                                           ; $5615: $d1
	db $e4                                           ; $5616: $e4
	ld [bc], a                                       ; $5617: $02
	rst JumpTable                                          ; $5618: $c7
	add hl, bc                                       ; $5619: $09
	ld [hl+], a                                      ; $561a: $22
	ret nz                                           ; $561b: $c0

	add hl, bc                                       ; $561c: $09
	db $e3                                           ; $561d: $e3
	nop                                              ; $561e: $00
	ld e, h                                          ; $561f: $5c
	pop hl                                           ; $5620: $e1
	ld [bc], a                                       ; $5621: $02
	inc bc                                           ; $5622: $03
	inc hl                                           ; $5623: $23
	ret nz                                           ; $5624: $c0

	ld bc, $0aa0                                     ; $5625: $01 $a0 $0a
	inc bc                                           ; $5628: $03
	jp c, $01c0                                      ; $5629: $da $c0 $01

	and b                                            ; $562c: $a0
	ld l, $03                                        ; $562d: $2e $03
	ldh [$fb], a                                     ; $562f: $e0 $fb
	db $fc                                           ; $5631: $fc
	add a                                            ; $5632: $87
	and b                                            ; $5633: $a0
	nop                                              ; $5634: $00
	jp nc, $e403                                     ; $5635: $d2 $03 $e4

	nop                                              ; $5638: $00
	dec b                                            ; $5639: $05
	db $e4                                           ; $563a: $e4
	ld [bc], a                                       ; $563b: $02
	and e                                            ; $563c: $a3
	add hl, bc                                       ; $563d: $09
	ld [de], a                                       ; $563e: $12
	pop hl                                           ; $563f: $e1
	ld [bc], a                                       ; $5640: $02
	inc bc                                           ; $5641: $03
	rra                                              ; $5642: $1f
	ret nz                                           ; $5643: $c0

	dec bc                                           ; $5644: $0b
	db $e3                                           ; $5645: $e3
	nop                                              ; $5646: $00
	ld l, [hl]                                       ; $5647: $6e
	ret nz                                           ; $5648: $c0

	ld bc, $0aa0                                     ; $5649: $01 $a0 $0a
	inc bc                                           ; $564c: $03
	db $eb                                           ; $564d: $eb
	db $e4                                           ; $564e: $e4
	ld [bc], a                                       ; $564f: $02
	adc a                                            ; $5650: $8f
	add hl, bc                                       ; $5651: $09
	jr @-$3e                                         ; $5652: $18 $c0

	add hl, bc                                       ; $5654: $09
	db $e3                                           ; $5655: $e3
	nop                                              ; $5656: $00
	rlca                                             ; $5657: $07
	pop hl                                           ; $5658: $e1
	ld [bc], a                                       ; $5659: $02
	inc bc                                           ; $565a: $03
	inc hl                                           ; $565b: $23
	ret nz                                           ; $565c: $c0

	ld bc, $0aa0                                     ; $565d: $01 $a0 $0a
	inc bc                                           ; $5660: $03
	ld a, [$01c0]                                    ; $5661: $fa $c0 $01
	and b                                            ; $5664: $a0
	ld l, $01                                        ; $5665: $2e $01
	dec bc                                           ; $5667: $0b
	db $e4                                           ; $5668: $e4
	ld [bc], a                                       ; $5669: $02
	ld [hl], l                                       ; $566a: $75
	add hl, bc                                       ; $566b: $09
	ld e, h                                          ; $566c: $5c
	ret nz                                           ; $566d: $c0

	add hl, bc                                       ; $566e: $09
	db $e3                                           ; $566f: $e3
	nop                                              ; $5670: $00
	ld [hl], b                                       ; $5671: $70
	ret nz                                           ; $5672: $c0

	ld bc, $0da0                                     ; $5673: $01 $a0 $0d
	inc b                                            ; $5676: $04
	ld a, [bc]                                       ; $5677: $0a
	ret nz                                           ; $5678: $c0

	ld bc, $2ea0                                     ; $5679: $01 $a0 $2e
	inc b                                            ; $567c: $04
	inc c                                            ; $567d: $0c
	pop hl                                           ; $567e: $e1
	ld [bc], a                                       ; $567f: $02
	inc bc                                           ; $5680: $03
	dec de                                           ; $5681: $1b
	ret nz                                           ; $5682: $c0

	ld bc, $0da0                                     ; $5683: $01 $a0 $0d
	inc b                                            ; $5686: $04
	dec d                                            ; $5687: $15
	ret nz                                           ; $5688: $c0

	ld bc, $2ea0                                     ; $5689: $01 $a0 $2e

jr_089_568c:
	inc b                                            ; $568c: $04
	dec e                                            ; $568d: $1d
	pop hl                                           ; $568e: $e1
	ld [bc], a                                       ; $568f: $02
	inc bc                                           ; $5690: $03
	inc hl                                           ; $5691: $23
	ret nz                                           ; $5692: $c0

	ld bc, $0da0                                     ; $5693: $01 $a0 $0d
	inc b                                            ; $5696: $04
	add hl, hl                                       ; $5697: $29
	pop bc                                           ; $5698: $c1
	add a                                            ; $5699: $87
	ret nz                                           ; $569a: $c0

	dec bc                                           ; $569b: $0b
	db $e3                                           ; $569c: $e3
	nop                                              ; $569d: $00
	add [hl]                                         ; $569e: $86
	ret nz                                           ; $569f: $c0

	inc c                                            ; $56a0: $0c
	ldh [hDisp1_WX], a                                     ; $56a1: $e0 $96
	ldh [rSC], a                                     ; $56a3: $e0 $02
	dec h                                            ; $56a5: $25
	db $fd                                           ; $56a6: $fd
	ld hl, $a087                                     ; $56a7: $21 $87 $a0
	nop                                              ; $56aa: $00
	ld bc, $03d0                                     ; $56ab: $01 $d0 $03
	db $e4                                           ; $56ae: $e4
	nop                                              ; $56af: $00
	ld a, [de]                                       ; $56b0: $1a
	ld bc, $03d1                                     ; $56b1: $01 $d1 $03
	db $e4                                           ; $56b4: $e4
	nop                                              ; $56b5: $00
	ld l, $01                                        ; $56b6: $2e $01
	jp nc, $e403                                     ; $56b8: $d2 $03 $e4

	nop                                              ; $56bb: $00
	jr z, jr_089_56bf                                ; $56bc: $28 $01

	db $d3                                           ; $56be: $d3

jr_089_56bf:
	inc bc                                           ; $56bf: $03
	db $e4                                           ; $56c0: $e4
	nop                                              ; $56c1: $00
	ld e, d                                          ; $56c2: $5a
	ld bc, $03d4                                     ; $56c3: $01 $d4 $03
	db $e4                                           ; $56c6: $e4
	ld [bc], a                                       ; $56c7: $02
	inc e                                            ; $56c8: $1c
	add hl, bc                                       ; $56c9: $09
	jr jr_089_568c                                   ; $56ca: $18 $c0

	add hl, bc                                       ; $56cc: $09
	db $e3                                           ; $56cd: $e3
	nop                                              ; $56ce: $00
	ld e, c                                          ; $56cf: $59
	pop hl                                           ; $56d0: $e1
	ld [bc], a                                       ; $56d1: $02
	inc bc                                           ; $56d2: $03
	inc de                                           ; $56d3: $13
	ret nz                                           ; $56d4: $c0

	ld bc, $0da0                                     ; $56d5: $01 $a0 $0d
	inc b                                            ; $56d8: $04
	ld [hl-], a                                      ; $56d9: $32
	ret nz                                           ; $56da: $c0

	ld bc, $2ea0                                     ; $56db: $01 $a0 $2e

jr_089_56de:
	inc b                                            ; $56de: $04
	ld a, [hl-]                                      ; $56df: $3a
	db $e4                                           ; $56e0: $e4
	ld bc, $09fd                                     ; $56e1: $01 $fd $09
	ld [hl+], a                                      ; $56e4: $22
	ret nz                                           ; $56e5: $c0

	add hl, bc                                       ; $56e6: $09
	db $e3                                           ; $56e7: $e3
	nop                                              ; $56e8: $00
	ld e, h                                          ; $56e9: $5c
	pop hl                                           ; $56ea: $e1
	ld [bc], a                                       ; $56eb: $02
	inc bc                                           ; $56ec: $03
	inc hl                                           ; $56ed: $23
	ret nz                                           ; $56ee: $c0

	ld bc, $0da0                                     ; $56ef: $01 $a0 $0d
	inc b                                            ; $56f2: $04
	ld b, h                                          ; $56f3: $44
	ret nz                                           ; $56f4: $c0

	ld bc, $2ea0                                     ; $56f5: $01 $a0 $2e
	inc b                                            ; $56f8: $04
	ld c, e                                          ; $56f9: $4b
	ei                                               ; $56fa: $fb
	db $fc                                           ; $56fb: $fc
	add a                                            ; $56fc: $87
	and b                                            ; $56fd: $a0
	nop                                              ; $56fe: $00
	jp nc, $e403                                     ; $56ff: $d2 $03 $e4

	nop                                              ; $5702: $00
	dec b                                            ; $5703: $05
	db $e4                                           ; $5704: $e4
	ld bc, $09d9                                     ; $5705: $01 $d9 $09
	ld [de], a                                       ; $5708: $12
	pop hl                                           ; $5709: $e1
	ld [bc], a                                       ; $570a: $02
	inc bc                                           ; $570b: $03
	rra                                              ; $570c: $1f
	ret nz                                           ; $570d: $c0

	dec bc                                           ; $570e: $0b
	db $e3                                           ; $570f: $e3
	nop                                              ; $5710: $00
	ld l, [hl]                                       ; $5711: $6e
	ret nz                                           ; $5712: $c0

	ld bc, $0da0                                     ; $5713: $01 $a0 $0d
	inc b                                            ; $5716: $04
	ld d, h                                          ; $5717: $54
	db $e4                                           ; $5718: $e4
	ld bc, $09c5                                     ; $5719: $01 $c5 $09
	jr jr_089_56de                                   ; $571c: $18 $c0

	add hl, bc                                       ; $571e: $09
	db $e3                                           ; $571f: $e3
	nop                                              ; $5720: $00
	ld [hl], b                                       ; $5721: $70
	pop hl                                           ; $5722: $e1
	ld [bc], a                                       ; $5723: $02
	inc bc                                           ; $5724: $03
	inc hl                                           ; $5725: $23
	ret nz                                           ; $5726: $c0

	ld bc, $0da0                                     ; $5727: $01 $a0 $0d
	inc b                                            ; $572a: $04
	ld h, h                                          ; $572b: $64
	ret nz                                           ; $572c: $c0

	ld bc, $2ea0                                     ; $572d: $01 $a0 $2e
	ld bc, $e40b                                     ; $5730: $01 $0b $e4
	ld bc, $09ab                                     ; $5733: $01 $ab $09
	ld e, h                                          ; $5736: $5c
	ret nz                                           ; $5737: $c0

	add hl, bc                                       ; $5738: $09
	db $e3                                           ; $5739: $e3
	nop                                              ; $573a: $00
	ld d, a                                          ; $573b: $57
	ret nz                                           ; $573c: $c0

	ld bc, $0ba0                                     ; $573d: $01 $a0 $0b
	nop                                              ; $5740: $00
	and [hl]                                         ; $5741: $a6
	ret nz                                           ; $5742: $c0

	ld bc, $2ea0                                     ; $5743: $01 $a0 $2e
	inc b                                            ; $5746: $04
	ld l, [hl]                                       ; $5747: $6e
	pop hl                                           ; $5748: $e1
	ld [bc], a                                       ; $5749: $02
	inc bc                                           ; $574a: $03
	dec de                                           ; $574b: $1b
	ret nz                                           ; $574c: $c0

	ld bc, $0ba0                                     ; $574d: $01 $a0 $0b
	inc b                                            ; $5750: $04
	ld [hl], a                                       ; $5751: $77
	ret nz                                           ; $5752: $c0

	ld bc, $2ea0                                     ; $5753: $01 $a0 $2e

jr_089_5756:
	inc b                                            ; $5756: $04
	ld a, h                                          ; $5757: $7c
	pop hl                                           ; $5758: $e1
	ld [bc], a                                       ; $5759: $02
	inc bc                                           ; $575a: $03
	inc hl                                           ; $575b: $23
	ret nz                                           ; $575c: $c0

	ld bc, $0ba0                                     ; $575d: $01 $a0 $0b
	inc b                                            ; $5760: $04
	add [hl]                                         ; $5761: $86
	pop bc                                           ; $5762: $c1
	add a                                            ; $5763: $87
	ret nz                                           ; $5764: $c0

	dec bc                                           ; $5765: $0b
	db $e3                                           ; $5766: $e3
	nop                                              ; $5767: $00
	add [hl]                                         ; $5768: $86
	ret nz                                           ; $5769: $c0

	inc c                                            ; $576a: $0c
	ldh [hDisp1_WX], a                                     ; $576b: $e0 $96
	ldh [rSB], a                                     ; $576d: $e0 $01
	ld e, e                                          ; $576f: $5b
	db $fd                                           ; $5770: $fd
	ld hl, $a087                                     ; $5771: $21 $87 $a0
	nop                                              ; $5774: $00
	ld bc, $03d0                                     ; $5775: $01 $d0 $03
	db $e4                                           ; $5778: $e4
	nop                                              ; $5779: $00
	ld a, [de]                                       ; $577a: $1a
	ld bc, $03d1                                     ; $577b: $01 $d1 $03
	db $e4                                           ; $577e: $e4
	nop                                              ; $577f: $00
	ld l, $01                                        ; $5780: $2e $01
	jp nc, $e403                                     ; $5782: $d2 $03 $e4

	nop                                              ; $5785: $00
	jr z, jr_089_5789                                ; $5786: $28 $01

	db $d3                                           ; $5788: $d3

jr_089_5789:
	inc bc                                           ; $5789: $03
	db $e4                                           ; $578a: $e4
	nop                                              ; $578b: $00
	ld e, d                                          ; $578c: $5a
	ld bc, $03d4                                     ; $578d: $01 $d4 $03
	db $e4                                           ; $5790: $e4
	ld bc, $0952                                     ; $5791: $01 $52 $09
	jr jr_089_5756                                   ; $5794: $18 $c0

	add hl, bc                                       ; $5796: $09
	db $e3                                           ; $5797: $e3
	nop                                              ; $5798: $00
	ld e, c                                          ; $5799: $59
	pop hl                                           ; $579a: $e1
	ld [bc], a                                       ; $579b: $02
	inc bc                                           ; $579c: $03
	inc de                                           ; $579d: $13
	ret nz                                           ; $579e: $c0

	ld bc, $0ba0                                     ; $579f: $01 $a0 $0b
	inc b                                            ; $57a2: $04
	adc c                                            ; $57a3: $89
	ret nz                                           ; $57a4: $c0

	ld bc, $2ea0                                     ; $57a5: $01 $a0 $2e

jr_089_57a8:
	inc b                                            ; $57a8: $04
	sbc e                                            ; $57a9: $9b
	db $e4                                           ; $57aa: $e4
	ld bc, $0933                                     ; $57ab: $01 $33 $09
	ld [hl+], a                                      ; $57ae: $22
	ret nz                                           ; $57af: $c0

	add hl, bc                                       ; $57b0: $09
	db $e3                                           ; $57b1: $e3
	nop                                              ; $57b2: $00
	ld e, h                                          ; $57b3: $5c
	pop hl                                           ; $57b4: $e1
	ld [bc], a                                       ; $57b5: $02
	ld [bc], a                                       ; $57b6: $02
	or d                                             ; $57b7: $b2
	ret nz                                           ; $57b8: $c0

	ld bc, $0ba0                                     ; $57b9: $01 $a0 $0b
	inc b                                            ; $57bc: $04
	and [hl]                                         ; $57bd: $a6
	ret nz                                           ; $57be: $c0

	ld bc, $2ea0                                     ; $57bf: $01 $a0 $2e
	inc b                                            ; $57c2: $04
	or c                                             ; $57c3: $b1
	ei                                               ; $57c4: $fb
	db $fc                                           ; $57c5: $fc
	add a                                            ; $57c6: $87
	and b                                            ; $57c7: $a0
	nop                                              ; $57c8: $00
	jp nc, $e403                                     ; $57c9: $d2 $03 $e4

	nop                                              ; $57cc: $00
	dec b                                            ; $57cd: $05
	db $e4                                           ; $57ce: $e4
	ld bc, $090f                                     ; $57cf: $01 $0f $09
	ld [de], a                                       ; $57d2: $12
	pop hl                                           ; $57d3: $e1
	ld [bc], a                                       ; $57d4: $02
	inc bc                                           ; $57d5: $03
	rra                                              ; $57d6: $1f
	ret nz                                           ; $57d7: $c0

	dec bc                                           ; $57d8: $0b
	db $e3                                           ; $57d9: $e3
	nop                                              ; $57da: $00
	ld l, [hl]                                       ; $57db: $6e
	ret nz                                           ; $57dc: $c0

	ld bc, $0ba0                                     ; $57dd: $01 $a0 $0b
	inc b                                            ; $57e0: $04
	or h                                             ; $57e1: $b4
	db $e4                                           ; $57e2: $e4
	nop                                              ; $57e3: $00
	ei                                               ; $57e4: $fb
	add hl, bc                                       ; $57e5: $09
	jr jr_089_57a8                                   ; $57e6: $18 $c0

	add hl, bc                                       ; $57e8: $09
	db $e3                                           ; $57e9: $e3
	nop                                              ; $57ea: $00
	ld d, a                                          ; $57eb: $57
	pop hl                                           ; $57ec: $e1
	ld [bc], a                                       ; $57ed: $02
	inc bc                                           ; $57ee: $03
	inc hl                                           ; $57ef: $23
	ret nz                                           ; $57f0: $c0

	ld bc, $0ba0                                     ; $57f1: $01 $a0 $0b
	inc b                                            ; $57f4: $04
	add $c0                                          ; $57f5: $c6 $c0
	ld bc, $2ea0                                     ; $57f7: $01 $a0 $2e
	ld bc, $e40b                                     ; $57fa: $01 $0b $e4
	nop                                              ; $57fd: $00
	pop hl                                           ; $57fe: $e1
	add hl, bc                                       ; $57ff: $09
	ld e, h                                          ; $5800: $5c
	ret nz                                           ; $5801: $c0

	add hl, bc                                       ; $5802: $09
	db $e3                                           ; $5803: $e3
	nop                                              ; $5804: $00
	add b                                            ; $5805: $80
	ret nz                                           ; $5806: $c0

	ld bc, $15a0                                     ; $5807: $01 $a0 $15
	inc b                                            ; $580a: $04
	pop de                                           ; $580b: $d1
	ret nz                                           ; $580c: $c0

	ld bc, $2ea0                                     ; $580d: $01 $a0 $2e
	inc b                                            ; $5810: $04
	sub $e1                                          ; $5811: $d6 $e1
	ld [bc], a                                       ; $5813: $02
	inc bc                                           ; $5814: $03
	dec de                                           ; $5815: $1b
	ret nz                                           ; $5816: $c0

	ld bc, $15a0                                     ; $5817: $01 $a0 $15
	inc b                                            ; $581a: $04
	push hl                                          ; $581b: $e5
	ret nz                                           ; $581c: $c0

	ld bc, $2ea0                                     ; $581d: $01 $a0 $2e

jr_089_5820:
	inc b                                            ; $5820: $04
	rst AddAOntoHL                                          ; $5821: $ef
	pop hl                                           ; $5822: $e1
	ld [bc], a                                       ; $5823: $02
	inc bc                                           ; $5824: $03
	inc hl                                           ; $5825: $23
	ret nz                                           ; $5826: $c0

	ld bc, $15a0                                     ; $5827: $01 $a0 $15
	dec b                                            ; $582a: $05
	inc b                                            ; $582b: $04
	pop bc                                           ; $582c: $c1
	add a                                            ; $582d: $87
	ret nz                                           ; $582e: $c0

	dec bc                                           ; $582f: $0b
	db $e3                                           ; $5830: $e3
	nop                                              ; $5831: $00
	add [hl]                                         ; $5832: $86
	ret nz                                           ; $5833: $c0

	inc c                                            ; $5834: $0c
	ldh [hDisp1_WX], a                                     ; $5835: $e0 $96
	ldh [rP1], a                                     ; $5837: $e0 $00
	sub c                                            ; $5839: $91
	db $fd                                           ; $583a: $fd
	ld hl, $a087                                     ; $583b: $21 $87 $a0
	nop                                              ; $583e: $00
	ld bc, $03d0                                     ; $583f: $01 $d0 $03
	db $e4                                           ; $5842: $e4
	nop                                              ; $5843: $00
	ld a, [de]                                       ; $5844: $1a
	ld bc, $03d1                                     ; $5845: $01 $d1 $03
	db $e4                                           ; $5848: $e4
	nop                                              ; $5849: $00
	ld l, $01                                        ; $584a: $2e $01
	jp nc, $e403                                     ; $584c: $d2 $03 $e4

	nop                                              ; $584f: $00
	jr z, jr_089_5853                                ; $5850: $28 $01

	db $d3                                           ; $5852: $d3

jr_089_5853:
	inc bc                                           ; $5853: $03
	db $e4                                           ; $5854: $e4
	nop                                              ; $5855: $00
	ld e, d                                          ; $5856: $5a
	ld bc, $03d4                                     ; $5857: $01 $d4 $03
	db $e4                                           ; $585a: $e4
	nop                                              ; $585b: $00
	adc b                                            ; $585c: $88
	add hl, bc                                       ; $585d: $09
	jr jr_089_5820                                   ; $585e: $18 $c0

	add hl, bc                                       ; $5860: $09
	db $e3                                           ; $5861: $e3
	nop                                              ; $5862: $00
	ld e, c                                          ; $5863: $59
	pop hl                                           ; $5864: $e1
	ld [bc], a                                       ; $5865: $02
	inc bc                                           ; $5866: $03
	inc de                                           ; $5867: $13
	ret nz                                           ; $5868: $c0

	ld bc, $15a0                                     ; $5869: $01 $a0 $15
	dec b                                            ; $586c: $05
	ld a, [bc]                                       ; $586d: $0a
	ret nz                                           ; $586e: $c0

	ld bc, $2ea0                                     ; $586f: $01 $a0 $2e
	dec b                                            ; $5872: $05
	jr @-$1a                                         ; $5873: $18 $e4

	nop                                              ; $5875: $00
	ld l, c                                          ; $5876: $69
	add hl, bc                                       ; $5877: $09
	ld [hl+], a                                      ; $5878: $22
	ret nz                                           ; $5879: $c0

	add hl, bc                                       ; $587a: $09
	db $e3                                           ; $587b: $e3
	nop                                              ; $587c: $00
	ld e, h                                          ; $587d: $5c
	pop hl                                           ; $587e: $e1
	ld [bc], a                                       ; $587f: $02
	inc bc                                           ; $5880: $03
	inc hl                                           ; $5881: $23
	ret nz                                           ; $5882: $c0

	ld bc, $15a0                                     ; $5883: $01 $a0 $15
	dec b                                            ; $5886: $05
	daa                                              ; $5887: $27
	ret nz                                           ; $5888: $c0

	ld bc, $2ea0                                     ; $5889: $01 $a0 $2e
	dec b                                            ; $588c: $05
	ld sp, $fcfb                                     ; $588d: $31 $fb $fc
	add a                                            ; $5890: $87
	and b                                            ; $5891: $a0
	nop                                              ; $5892: $00
	jp nc, $e403                                     ; $5893: $d2 $03 $e4

	nop                                              ; $5896: $00
	dec b                                            ; $5897: $05
	db $e4                                           ; $5898: $e4
	nop                                              ; $5899: $00
	ld b, l                                          ; $589a: $45
	add hl, bc                                       ; $589b: $09
	ld [de], a                                       ; $589c: $12
	pop hl                                           ; $589d: $e1
	ld [bc], a                                       ; $589e: $02
	inc bc                                           ; $589f: $03
	rra                                              ; $58a0: $1f
	ret nz                                           ; $58a1: $c0

	dec bc                                           ; $58a2: $0b
	db $e3                                           ; $58a3: $e3
	nop                                              ; $58a4: $00
	ld l, [hl]                                       ; $58a5: $6e
	ret nz                                           ; $58a6: $c0

	ld bc, $15a0                                     ; $58a7: $01 $a0 $15
	dec b                                            ; $58aa: $05
	ccf                                              ; $58ab: $3f
	db $e4                                           ; $58ac: $e4
	nop                                              ; $58ad: $00
	ld sp, $1809                                     ; $58ae: $31 $09 $18
	ret nz                                           ; $58b1: $c0

	add hl, bc                                       ; $58b2: $09
	db $e3                                           ; $58b3: $e3
	nop                                              ; $58b4: $00
	add b                                            ; $58b5: $80
	pop hl                                           ; $58b6: $e1
	ld [bc], a                                       ; $58b7: $02
	inc bc                                           ; $58b8: $03
	inc hl                                           ; $58b9: $23
	ret nz                                           ; $58ba: $c0

	ld bc, $15a0                                     ; $58bb: $01 $a0 $15
	dec b                                            ; $58be: $05
	ld d, h                                          ; $58bf: $54
	ret nz                                           ; $58c0: $c0

	ld bc, $2ea0                                     ; $58c1: $01 $a0 $2e
	ld bc, $e40b                                     ; $58c4: $01 $0b $e4
	nop                                              ; $58c7: $00
	rla                                              ; $58c8: $17
	inc d                                            ; $58c9: $14
	ei                                               ; $58ca: $fb
	pop bc                                           ; $58cb: $c1
	ld a, [hl]                                       ; $58cc: $7e
	ldh [$50], a                                     ; $58cd: $e0 $50
	inc bc                                           ; $58cf: $03
	db $e4                                           ; $58d0: $e4
	nop                                              ; $58d1: $00
	ld [de], a                                       ; $58d2: $12
	ret nc                                           ; $58d3: $d0

	add a                                            ; $58d4: $87
	and b                                            ; $58d5: $a0
	nop                                              ; $58d6: $00
	pop bc                                           ; $58d7: $c1
	add d                                            ; $58d8: $82
	add l                                            ; $58d9: $85
	inc bc                                           ; $58da: $03
	ld a, [hl-]                                      ; $58db: $3a
	pop bc                                           ; $58dc: $c1
	add a                                            ; $58dd: $87
	add hl, bc                                       ; $58de: $09
	inc bc                                           ; $58df: $03
	db $e4                                           ; $58e0: $e4
	nop                                              ; $58e1: $00
	add hl, de                                       ; $58e2: $19
	add hl, bc                                       ; $58e3: $09
	dec d                                            ; $58e4: $15
	ret nz                                           ; $58e5: $c0

	rst $38                                          ; $58e6: $ff
	pop hl                                           ; $58e7: $e1
	ld [bc], a                                       ; $58e8: $02
	ld [bc], a                                       ; $58e9: $02
	or d                                             ; $58ea: $b2
	ret nz                                           ; $58eb: $c0

	ld bc, $0ba0                                     ; $58ec: $01 $a0 $0b
	dec b                                            ; $58ef: $05
	ld e, a                                          ; $58f0: $5f
	ret nz                                           ; $58f1: $c0

	ld bc, $0ba0                                     ; $58f2: $01 $a0 $0b
	dec b                                            ; $58f5: $05
	ld l, l                                          ; $58f6: $6d
	db $e4                                           ; $58f7: $e4
	nop                                              ; $58f8: $00
	ld [bc], a                                       ; $58f9: $02
	add hl, bc                                       ; $58fa: $09
	inc bc                                           ; $58fb: $03
	pop bc                                           ; $58fc: $c1
	dec d                                            ; $58fd: $15
	ret nc                                           ; $58fe: $d0

	jp z, wPtrToDataCopyStruct                                      ; $58ff: $ca $08 $c1

	cp h                                             ; $5902: $bc
	pop bc                                           ; $5903: $c1
	adc a                                            ; $5904: $8f
	pop bc                                           ; $5905: $c1
	sub b                                            ; $5906: $90
	pop bc                                           ; $5907: $c1
	sub [hl]                                         ; $5908: $96
	ldh [$f0], a                                     ; $5909: $e0 $f0
	ret nz                                           ; $590b: $c0

	inc c                                            ; $590c: $0c
	ldh [$3c], a                                     ; $590d: $e0 $3c
	pop bc                                           ; $590f: $c1
	or b                                             ; $5910: $b0
	jp nc, $d0d8                                     ; $5911: $d2 $d8 $d0

	ret nz                                           ; $5914: $c0

jr_089_5915:
	ld bc, $01a0                                     ; $5915: $01 $a0 $01
	nop                                              ; $5918: $00
	ld bc, $0cc0                                     ; $5919: $01 $c0 $0c
	ldh [$50], a                                     ; $591c: $e0 $50
	ret nz                                           ; $591e: $c0

	ld bc, $02a0                                     ; $591f: $01 $a0 $02
	nop                                              ; $5922: $00
	ld b, $c0                                        ; $5923: $06 $c0
	ld bc, $02a0                                     ; $5925: $01 $a0 $02
	nop                                              ; $5928: $00
	ld [$0cc0], sp                                   ; $5929: $08 $c0 $0c
	ldh [$3c], a                                     ; $592c: $e0 $3c
	ret nz                                           ; $592e: $c0

	ld bc, $02a0                                     ; $592f: $01 $a0 $02
	nop                                              ; $5932: $00
	ld de, $01c0                                     ; $5933: $11 $c0 $01
	and b                                            ; $5936: $a0
	ld [bc], a                                       ; $5937: $02
	nop                                              ; $5938: $00
	rla                                              ; $5939: $17
	ret nz                                           ; $593a: $c0

	inc c                                            ; $593b: $0c
	ldh [$50], a                                     ; $593c: $e0 $50
	ret nz                                           ; $593e: $c0

	ld bc, $01a0                                     ; $593f: $01 $a0 $01
	nop                                              ; $5942: $00
	dec e                                            ; $5943: $1d
	ret nz                                           ; $5944: $c0

	inc c                                            ; $5945: $0c
	ldh [$50], a                                     ; $5946: $e0 $50
	ret nz                                           ; $5948: $c0

	ld bc, $02a0                                     ; $5949: $01 $a0 $02
	nop                                              ; $594c: $00
	dec h                                            ; $594d: $25
	ret nz                                           ; $594e: $c0

	ld bc, $02a0                                     ; $594f: $01 $a0 $02
	nop                                              ; $5952: $00
	jr z, jr_089_5915                                ; $5953: $28 $c0

	ld bc, $02a0                                     ; $5955: $01 $a0 $02
	nop                                              ; $5958: $00
	dec l                                            ; $5959: $2d
	ret nz                                           ; $595a: $c0

	inc c                                            ; $595b: $0c
	ldh [$3c], a                                     ; $595c: $e0 $3c
	ret nz                                           ; $595e: $c0

	ld bc, $02a0                                     ; $595f: $01 $a0 $02
	nop                                              ; $5962: $00
	dec [hl]                                         ; $5963: $35
	ret nz                                           ; $5964: $c0

	ld bc, $02a0                                     ; $5965: $01 $a0 $02
	nop                                              ; $5968: $00
	scf                                              ; $5969: $37
	ret nz                                           ; $596a: $c0

	inc c                                            ; $596b: $0c
	ldh [$3c], a                                     ; $596c: $e0 $3c
	ret nz                                           ; $596e: $c0

	ld bc, $02a0                                     ; $596f: $01 $a0 $02
	nop                                              ; $5972: $00
	ccf                                              ; $5973: $3f
	ret nz                                           ; $5974: $c0

	ld bc, $02a0                                     ; $5975: $01 $a0 $02
	nop                                              ; $5978: $00
	ld b, d                                          ; $5979: $42
	ret nz                                           ; $597a: $c0

	ld bc, $02a0                                     ; $597b: $01 $a0 $02
	nop                                              ; $597e: $00
	ld c, h                                          ; $597f: $4c
	ret nz                                           ; $5980: $c0

	ld bc, $02a0                                     ; $5981: $01 $a0 $02
	nop                                              ; $5984: $00
	ld d, d                                          ; $5985: $52
	ret nz                                           ; $5986: $c0

	inc c                                            ; $5987: $0c
	ldh [$3c], a                                     ; $5988: $e0 $3c
	ret nz                                           ; $598a: $c0

	ld bc, $02a0                                     ; $598b: $01 $a0 $02
	nop                                              ; $598e: $00
	dec [hl]                                         ; $598f: $35
	ret nz                                           ; $5990: $c0

	inc c                                            ; $5991: $0c
	ldh [rAUD3HIGH], a                               ; $5992: $e0 $1e
	ret nz                                           ; $5994: $c0

	ld bc, $02a0                                     ; $5995: $01 $a0 $02
	nop                                              ; $5998: $00
	ld e, d                                          ; $5999: $5a
	ret nz                                           ; $599a: $c0

	ld bc, $02a0                                     ; $599b: $01 $a0 $02
	nop                                              ; $599e: $00
	ld e, h                                          ; $599f: $5c
	ret nz                                           ; $59a0: $c0

	inc c                                            ; $59a1: $0c
	ldh [$50], a                                     ; $59a2: $e0 $50
	ret nz                                           ; $59a4: $c0

	ld bc, $01a0                                     ; $59a5: $01 $a0 $01
	nop                                              ; $59a8: $00
	ld h, h                                          ; $59a9: $64
	ret nz                                           ; $59aa: $c0

	inc c                                            ; $59ab: $0c
	ldh [$50], a                                     ; $59ac: $e0 $50
	ret nz                                           ; $59ae: $c0

	ld bc, $02a0                                     ; $59af: $01 $a0 $02
	nop                                              ; $59b2: $00
	ld l, c                                          ; $59b3: $69
	ret nz                                           ; $59b4: $c0

	inc c                                            ; $59b5: $0c
	ldh [$50], a                                     ; $59b6: $e0 $50
	ret nz                                           ; $59b8: $c0

	ld bc, $02a0                                     ; $59b9: $01 $a0 $02
	nop                                              ; $59bc: $00
	ld l, l                                          ; $59bd: $6d
	ret nz                                           ; $59be: $c0

	inc c                                            ; $59bf: $0c
	ldh [$50], a                                     ; $59c0: $e0 $50
	ret nz                                           ; $59c2: $c0

	ld bc, $02a0                                     ; $59c3: $01 $a0 $02
	nop                                              ; $59c6: $00
	halt                                             ; $59c7: $76
	ret nz                                           ; $59c8: $c0

	ld bc, $02a0                                     ; $59c9: $01 $a0 $02
	nop                                              ; $59cc: $00
	ld a, h                                          ; $59cd: $7c
	ret nz                                           ; $59ce: $c0

	ld bc, $02a0                                     ; $59cf: $01 $a0 $02
	nop                                              ; $59d2: $00
	add e                                            ; $59d3: $83
	ret nz                                           ; $59d4: $c0

	inc c                                            ; $59d5: $0c
	ldh [$3c], a                                     ; $59d6: $e0 $3c
	ret nz                                           ; $59d8: $c0

	ld bc, $02a0                                     ; $59d9: $01 $a0 $02
	nop                                              ; $59dc: $00
	add a                                            ; $59dd: $87
	ret nz                                           ; $59de: $c0

	ld bc, $02a0                                     ; $59df: $01 $a0 $02
	nop                                              ; $59e2: $00
	adc e                                            ; $59e3: $8b
	ret nz                                           ; $59e4: $c0

	ld bc, $02a0                                     ; $59e5: $01 $a0 $02
	nop                                              ; $59e8: $00
	sub c                                            ; $59e9: $91
	ret nz                                           ; $59ea: $c0

	ld bc, $02a0                                     ; $59eb: $01 $a0 $02
	nop                                              ; $59ee: $00
	sbc b                                            ; $59ef: $98
	ret nz                                           ; $59f0: $c0

	inc c                                            ; $59f1: $0c
	ldh [$3c], a                                     ; $59f2: $e0 $3c
	ret nz                                           ; $59f4: $c0

	ld bc, $02a0                                     ; $59f5: $01 $a0 $02
	nop                                              ; $59f8: $00
	and c                                            ; $59f9: $a1
	ret nz                                           ; $59fa: $c0

	inc c                                            ; $59fb: $0c
	ldh [$3c], a                                     ; $59fc: $e0 $3c
	ret nz                                           ; $59fe: $c0

	ld bc, $02a0                                     ; $59ff: $01 $a0 $02
	nop                                              ; $5a02: $00
	and a                                            ; $5a03: $a7
	ret nz                                           ; $5a04: $c0

	ld bc, $02a0                                     ; $5a05: $01 $a0 $02
	nop                                              ; $5a08: $00
	or b                                             ; $5a09: $b0
	ret nz                                           ; $5a0a: $c0

	ld bc, $02a0                                     ; $5a0b: $01 $a0 $02
	nop                                              ; $5a0e: $00
	or l                                             ; $5a0f: $b5
	ret nz                                           ; $5a10: $c0

	inc c                                            ; $5a11: $0c
	ldh [$3c], a                                     ; $5a12: $e0 $3c
	ret nz                                           ; $5a14: $c0

	ld bc, $02a0                                     ; $5a15: $01 $a0 $02
	nop                                              ; $5a18: $00
	cp h                                             ; $5a19: $bc
	ret nz                                           ; $5a1a: $c0

	ld bc, $02a0                                     ; $5a1b: $01 $a0 $02
	nop                                              ; $5a1e: $00
	cp a                                             ; $5a1f: $bf
	ret nz                                           ; $5a20: $c0

	ld bc, $02a0                                     ; $5a21: $01 $a0 $02
	nop                                              ; $5a24: $00
	add $c0                                          ; $5a25: $c6 $c0
	inc c                                            ; $5a27: $0c
	ldh [$3c], a                                     ; $5a28: $e0 $3c
	ret nz                                           ; $5a2a: $c0

	ld bc, $02a0                                     ; $5a2b: $01 $a0 $02
	nop                                              ; $5a2e: $00
	ret nc                                           ; $5a2f: $d0

	ret nz                                           ; $5a30: $c0

	ld bc, $02a0                                     ; $5a31: $01 $a0 $02
	nop                                              ; $5a34: $00
	push de                                          ; $5a35: $d5
	ret nz                                           ; $5a36: $c0

	ld bc, $02a0                                     ; $5a37: $01 $a0 $02
	nop                                              ; $5a3a: $00
	sbc $c0                                          ; $5a3b: $de $c0
	inc c                                            ; $5a3d: $0c
	ldh [$78], a                                     ; $5a3e: $e0 $78
	pop bc                                           ; $5a40: $c1
	or d                                             ; $5a41: $b2
	db $e3                                           ; $5a42: $e3
	nop                                              ; $5a43: $00
	ld c, $c0                                        ; $5a44: $0e $c0
	ld bc, $02a0                                     ; $5a46: $01 $a0 $02
	nop                                              ; $5a49: $00
	db $e4                                           ; $5a4a: $e4
	ret nz                                           ; $5a4b: $c0

	ld bc, $02a0                                     ; $5a4c: $01 $a0 $02
	nop                                              ; $5a4f: $00
	add sp, -$40                                     ; $5a50: $e8 $c0
	ld bc, $02a0                                     ; $5a52: $01 $a0 $02
	nop                                              ; $5a55: $00
	db $e4                                           ; $5a56: $e4
	ret nz                                           ; $5a57: $c0

	inc c                                            ; $5a58: $0c
	ldh [$50], a                                     ; $5a59: $e0 $50
	ret nz                                           ; $5a5b: $c0

	ld bc, $01a0                                     ; $5a5c: $01 $a0 $01
	nop                                              ; $5a5f: $00
	pop af                                           ; $5a60: $f1
	ret nz                                           ; $5a61: $c0

	ld bc, $01a0                                     ; $5a62: $01 $a0 $01
	nop                                              ; $5a65: $00
	rst FarCall                                          ; $5a66: $f7
	ret nz                                           ; $5a67: $c0

	inc c                                            ; $5a68: $0c
	ldh [$50], a                                     ; $5a69: $e0 $50
	pop bc                                           ; $5a6b: $c1
	sbc [hl]                                         ; $5a6c: $9e
	pop de                                           ; $5a6d: $d1
	ret nz                                           ; $5a6e: $c0

	inc c                                            ; $5a6f: $0c
	ldh [$3c], a                                     ; $5a70: $e0 $3c
	ret nz                                           ; $5a72: $c0

	ld bc, $02a0                                     ; $5a73: $01 $a0 $02
	nop                                              ; $5a76: $00
	db $fd                                           ; $5a77: $fd
	ret nz                                           ; $5a78: $c0

	ld bc, $02a0                                     ; $5a79: $01 $a0 $02
	ld bc, $c000                                     ; $5a7c: $01 $00 $c0
	ld bc, $02a0                                     ; $5a7f: $01 $a0 $02
	ld bc, $c006                                     ; $5a82: $01 $06 $c0
	ld bc, $02a0                                     ; $5a85: $01 $a0 $02
	ld bc, $c00c                                     ; $5a88: $01 $0c $c0
	ld bc, $02a0                                     ; $5a8b: $01 $a0 $02
	ld bc, $c00f                                     ; $5a8e: $01 $0f $c0
	inc c                                            ; $5a91: $0c
	ldh [$50], a                                     ; $5a92: $e0 $50
	ret nz                                           ; $5a94: $c0

	ld bc, $01a0                                     ; $5a95: $01 $a0 $01
	ld bc, $c014                                     ; $5a98: $01 $14 $c0
	ld bc, $01a0                                     ; $5a9b: $01 $a0 $01
	ld bc, $c018                                     ; $5a9e: $01 $18 $c0
	inc c                                            ; $5aa1: $0c
	ldh [$50], a                                     ; $5aa2: $e0 $50
	ret nz                                           ; $5aa4: $c0

	ld bc, $02a0                                     ; $5aa5: $01 $a0 $02
	ld bc, $c01e                                     ; $5aa8: $01 $1e $c0
	ld bc, $02a0                                     ; $5aab: $01 $a0 $02
	ld bc, $c121                                     ; $5aae: $01 $21 $c1
	sbc e                                            ; $5ab1: $9b
	ret nc                                           ; $5ab2: $d0

	ret nz                                           ; $5ab3: $c0

	ld bc, $02a0                                     ; $5ab4: $01 $a0 $02
	ld bc, $c027                                     ; $5ab7: $01 $27 $c0
	inc c                                            ; $5aba: $0c
	ldh [$78], a                                     ; $5abb: $e0 $78
	pop bc                                           ; $5abd: $c1
	sbc a                                            ; $5abe: $9f
	jp nc, wPtrToDataCopyStruct                                     ; $5abf: $d2 $08 $c1

	ld a, [bc]                                       ; $5ac2: $0a
	pop bc                                           ; $5ac3: $c1
	adc a                                            ; $5ac4: $8f
	pop bc                                           ; $5ac5: $c1
	sub b                                            ; $5ac6: $90
	pop bc                                           ; $5ac7: $c1
	sub [hl]                                         ; $5ac8: $96
	ldh [$f0], a                                     ; $5ac9: $e0 $f0
	ret nz                                           ; $5acb: $c0

	inc c                                            ; $5acc: $0c
	ldh [$3c], a                                     ; $5acd: $e0 $3c
	pop bc                                           ; $5acf: $c1
	or b                                             ; $5ad0: $b0
	jp nc, $d0d8                                     ; $5ad1: $d2 $d8 $d0

	ret nz                                           ; $5ad4: $c0

	ld bc, $01a0                                     ; $5ad5: $01 $a0 $01
	nop                                              ; $5ad8: $00
	ld bc, $0cc0                                     ; $5ad9: $01 $c0 $0c
	ldh [$50], a                                     ; $5adc: $e0 $50
	ret nz                                           ; $5ade: $c0

	ld bc, $0da0                                     ; $5adf: $01 $a0 $0d
	nop                                              ; $5ae2: $00
	rlca                                             ; $5ae3: $07
	ret nz                                           ; $5ae4: $c0

	ld bc, $0da0                                     ; $5ae5: $01 $a0 $0d
	nop                                              ; $5ae8: $00
	dec bc                                           ; $5ae9: $0b
	ret nz                                           ; $5aea: $c0

	ld bc, $0da0                                     ; $5aeb: $01 $a0 $0d
	nop                                              ; $5aee: $00
	ld de, $01c0                                     ; $5aef: $11 $c0 $01
	and b                                            ; $5af2: $a0
	dec c                                            ; $5af3: $0d
	nop                                              ; $5af4: $00
	ld a, [de]                                       ; $5af5: $1a
	ret nz                                           ; $5af6: $c0

	ld bc, $0da0                                     ; $5af7: $01 $a0 $0d
	nop                                              ; $5afa: $00
	ld e, $c0                                        ; $5afb: $1e $c0
	inc c                                            ; $5afd: $0c
	ldh [$50], a                                     ; $5afe: $e0 $50
	ret nz                                           ; $5b00: $c0

	ld bc, $01a0                                     ; $5b01: $01 $a0 $01
	nop                                              ; $5b04: $00
	ld h, $c0                                        ; $5b05: $26 $c0
	inc c                                            ; $5b07: $0c
	ldh [$50], a                                     ; $5b08: $e0 $50
	ret nz                                           ; $5b0a: $c0

	ld bc, $0da0                                     ; $5b0b: $01 $a0 $0d
	nop                                              ; $5b0e: $00
	ld l, $c0                                        ; $5b0f: $2e $c0
	ld bc, $0da0                                     ; $5b11: $01 $a0 $0d
	nop                                              ; $5b14: $00
	inc sp                                           ; $5b15: $33
	ret nz                                           ; $5b16: $c0

	ld bc, $0da0                                     ; $5b17: $01 $a0 $0d
	nop                                              ; $5b1a: $00
	ld a, [hl-]                                      ; $5b1b: $3a
	ret nz                                           ; $5b1c: $c0

	inc c                                            ; $5b1d: $0c
	ldh [$50], a                                     ; $5b1e: $e0 $50
	ret nz                                           ; $5b20: $c0

	ld bc, $01a0                                     ; $5b21: $01 $a0 $01
	nop                                              ; $5b24: $00
	ld a, $c0                                        ; $5b25: $3e $c0
	inc c                                            ; $5b27: $0c
	ldh [$3c], a                                     ; $5b28: $e0 $3c
	ret nz                                           ; $5b2a: $c0

	ld bc, $0da0                                     ; $5b2b: $01 $a0 $0d
	nop                                              ; $5b2e: $00
	ld c, b                                          ; $5b2f: $48
	ret nz                                           ; $5b30: $c0

	inc c                                            ; $5b31: $0c
	ldh [$50], a                                     ; $5b32: $e0 $50
	ret nz                                           ; $5b34: $c0

	ld bc, $0da0                                     ; $5b35: $01 $a0 $0d
	nop                                              ; $5b38: $00
	ld c, d                                          ; $5b39: $4a
	ret nz                                           ; $5b3a: $c0

	ld bc, $0da0                                     ; $5b3b: $01 $a0 $0d
	nop                                              ; $5b3e: $00
	ld d, e                                          ; $5b3f: $53
	ret nz                                           ; $5b40: $c0

	ld bc, $0da0                                     ; $5b41: $01 $a0 $0d
	nop                                              ; $5b44: $00
	ld e, e                                          ; $5b45: $5b
	ret nz                                           ; $5b46: $c0

	ld bc, $0da0                                     ; $5b47: $01 $a0 $0d
	nop                                              ; $5b4a: $00
	ld h, e                                          ; $5b4b: $63
	ret nz                                           ; $5b4c: $c0

	ld bc, $0da0                                     ; $5b4d: $01 $a0 $0d
	nop                                              ; $5b50: $00
	ld l, c                                          ; $5b51: $69
	ret nz                                           ; $5b52: $c0

	inc c                                            ; $5b53: $0c
	ldh [$3c], a                                     ; $5b54: $e0 $3c
	ret nz                                           ; $5b56: $c0

	ld bc, $0da0                                     ; $5b57: $01 $a0 $0d
	nop                                              ; $5b5a: $00
	ld l, l                                          ; $5b5b: $6d
	ret nz                                           ; $5b5c: $c0

	inc c                                            ; $5b5d: $0c
	ldh [$50], a                                     ; $5b5e: $e0 $50
	ret nz                                           ; $5b60: $c0

	ld bc, $01a0                                     ; $5b61: $01 $a0 $01
	nop                                              ; $5b64: $00
	ld l, a                                          ; $5b65: $6f
	ret nz                                           ; $5b66: $c0

	inc c                                            ; $5b67: $0c
	ldh [$50], a                                     ; $5b68: $e0 $50
	ret nz                                           ; $5b6a: $c0

	ld bc, $0da0                                     ; $5b6b: $01 $a0 $0d
	nop                                              ; $5b6e: $00
	halt                                             ; $5b6f: $76
	ret nz                                           ; $5b70: $c0

	ld bc, $0da0                                     ; $5b71: $01 $a0 $0d
	nop                                              ; $5b74: $00
	ld a, h                                          ; $5b75: $7c
	ret nz                                           ; $5b76: $c0

	inc c                                            ; $5b77: $0c
	ldh [$3c], a                                     ; $5b78: $e0 $3c
	pop bc                                           ; $5b7a: $c1
	or d                                             ; $5b7b: $b2
	db $e3                                           ; $5b7c: $e3
	nop                                              ; $5b7d: $00
	ld a, [de]                                       ; $5b7e: $1a
	ret nz                                           ; $5b7f: $c0

	ld bc, $0da0                                     ; $5b80: $01 $a0 $0d
	nop                                              ; $5b83: $00
	add b                                            ; $5b84: $80
	ret nz                                           ; $5b85: $c0

	ld bc, $0da0                                     ; $5b86: $01 $a0 $0d
	nop                                              ; $5b89: $00
	adc c                                            ; $5b8a: $89
	ret nz                                           ; $5b8b: $c0

	inc c                                            ; $5b8c: $0c
	ldh [$50], a                                     ; $5b8d: $e0 $50
	ret nz                                           ; $5b8f: $c0

	ld bc, $01a0                                     ; $5b90: $01 $a0 $01
	nop                                              ; $5b93: $00
	sub b                                            ; $5b94: $90
	ret nz                                           ; $5b95: $c0

	ld bc, $01a0                                     ; $5b96: $01 $a0 $01
	nop                                              ; $5b99: $00
	sbc b                                            ; $5b9a: $98
	ret nz                                           ; $5b9b: $c0

	inc c                                            ; $5b9c: $0c
	ldh [$50], a                                     ; $5b9d: $e0 $50
	pop bc                                           ; $5b9f: $c1
	sbc [hl]                                         ; $5ba0: $9e
	pop de                                           ; $5ba1: $d1
	ret nz                                           ; $5ba2: $c0

	ld bc, $0da0                                     ; $5ba3: $01 $a0 $0d
	nop                                              ; $5ba6: $00
	sbc l                                            ; $5ba7: $9d
	ret nz                                           ; $5ba8: $c0

	ld bc, $0da0                                     ; $5ba9: $01 $a0 $0d
	nop                                              ; $5bac: $00
	and e                                            ; $5bad: $a3
	ret nz                                           ; $5bae: $c0

	ld bc, $0da0                                     ; $5baf: $01 $a0 $0d
	nop                                              ; $5bb2: $00
	and [hl]                                         ; $5bb3: $a6
	pop bc                                           ; $5bb4: $c1
	sbc e                                            ; $5bb5: $9b
	ret nc                                           ; $5bb6: $d0

	ret nz                                           ; $5bb7: $c0

	ld bc, $0da0                                     ; $5bb8: $01 $a0 $0d
	nop                                              ; $5bbb: $00
	xor l                                            ; $5bbc: $ad
	ret nz                                           ; $5bbd: $c0

	inc c                                            ; $5bbe: $0c
	ldh [$50], a                                     ; $5bbf: $e0 $50
	ret nz                                           ; $5bc1: $c0

	ld bc, $01a0                                     ; $5bc2: $01 $a0 $01
	nop                                              ; $5bc5: $00
	or e                                             ; $5bc6: $b3
	ret nz                                           ; $5bc7: $c0

	inc c                                            ; $5bc8: $0c
	ldh [$78], a                                     ; $5bc9: $e0 $78
	pop bc                                           ; $5bcb: $c1
	sbc a                                            ; $5bcc: $9f
	jp nc, $c208                                     ; $5bcd: $d2 $08 $c2

	db $fc                                           ; $5bd0: $fc
	pop bc                                           ; $5bd1: $c1
	adc a                                            ; $5bd2: $8f
	pop bc                                           ; $5bd3: $c1
	sub b                                            ; $5bd4: $90
	pop bc                                           ; $5bd5: $c1
	sub [hl]                                         ; $5bd6: $96
	ldh [$f0], a                                     ; $5bd7: $e0 $f0
	ret nz                                           ; $5bd9: $c0

	inc c                                            ; $5bda: $0c
	ldh [$3c], a                                     ; $5bdb: $e0 $3c
	pop bc                                           ; $5bdd: $c1
	or b                                             ; $5bde: $b0
	jp nc, $d0d8                                     ; $5bdf: $d2 $d8 $d0

	ret nz                                           ; $5be2: $c0

	ld bc, $01a0                                     ; $5be3: $01 $a0 $01
	nop                                              ; $5be6: $00
	ld bc, $0cc0                                     ; $5be7: $01 $c0 $0c
	ldh [$50], a                                     ; $5bea: $e0 $50
	ret nz                                           ; $5bec: $c0

	ld bc, $0ba0                                     ; $5bed: $01 $a0 $0b
	nop                                              ; $5bf0: $00
	rlca                                             ; $5bf1: $07
	ret nz                                           ; $5bf2: $c0

	inc c                                            ; $5bf3: $0c
	ldh [$50], a                                     ; $5bf4: $e0 $50
	ret nz                                           ; $5bf6: $c0

	ld bc, $01a0                                     ; $5bf7: $01 $a0 $01
	nop                                              ; $5bfa: $00
	ld a, [bc]                                       ; $5bfb: $0a
	ret nz                                           ; $5bfc: $c0

	inc c                                            ; $5bfd: $0c
	ldh [$50], a                                     ; $5bfe: $e0 $50
	ret nz                                           ; $5c00: $c0

	ld bc, $0ba0                                     ; $5c01: $01 $a0 $0b
	nop                                              ; $5c04: $00
	ld de, $0cc0                                     ; $5c05: $11 $c0 $0c
	ldh [rAUD3HIGH], a                               ; $5c08: $e0 $1e
	ret nz                                           ; $5c0a: $c0

	ld bc, $0ba0                                     ; $5c0b: $01 $a0 $0b
	nop                                              ; $5c0e: $00
	inc d                                            ; $5c0f: $14
	ret nz                                           ; $5c10: $c0

	inc c                                            ; $5c11: $0c
	ldh [$3c], a                                     ; $5c12: $e0 $3c
	ret nz                                           ; $5c14: $c0

	ld bc, $01a0                                     ; $5c15: $01 $a0 $01
	nop                                              ; $5c18: $00
	rla                                              ; $5c19: $17
	ret nz                                           ; $5c1a: $c0

	inc c                                            ; $5c1b: $0c
	ldh [$50], a                                     ; $5c1c: $e0 $50
	ret nz                                           ; $5c1e: $c0

	ld bc, $0ba0                                     ; $5c1f: $01 $a0 $0b
	nop                                              ; $5c22: $00
	jr nz, @-$3e                                     ; $5c23: $20 $c0

	inc c                                            ; $5c25: $0c
	ldh [$3c], a                                     ; $5c26: $e0 $3c
	ret nz                                           ; $5c28: $c0

	ld bc, $0ba0                                     ; $5c29: $01 $a0 $0b
	nop                                              ; $5c2c: $00
	ld [hl+], a                                      ; $5c2d: $22
	ret nz                                           ; $5c2e: $c0

	ld bc, $0ba0                                     ; $5c2f: $01 $a0 $0b
	nop                                              ; $5c32: $00
	dec h                                            ; $5c33: $25
	ret nz                                           ; $5c34: $c0

	inc c                                            ; $5c35: $0c
	ldh [$50], a                                     ; $5c36: $e0 $50
	ret nz                                           ; $5c38: $c0

	ld bc, $01a0                                     ; $5c39: $01 $a0 $01
	nop                                              ; $5c3c: $00
	jr z, @-$3e                                      ; $5c3d: $28 $c0

	inc c                                            ; $5c3f: $0c
	ldh [$3c], a                                     ; $5c40: $e0 $3c
	ret nz                                           ; $5c42: $c0

	ld bc, $0ba0                                     ; $5c43: $01 $a0 $0b
	nop                                              ; $5c46: $00
	inc l                                            ; $5c47: $2c
	ret nz                                           ; $5c48: $c0

	ld bc, $0ba0                                     ; $5c49: $01 $a0 $0b
	nop                                              ; $5c4c: $00
	ld l, $c0                                        ; $5c4d: $2e $c0
	ld bc, $0ba0                                     ; $5c4f: $01 $a0 $0b
	nop                                              ; $5c52: $00
	ld sp, $01c0                                     ; $5c53: $31 $c0 $01
	and b                                            ; $5c56: $a0
	dec bc                                           ; $5c57: $0b
	nop                                              ; $5c58: $00
	scf                                              ; $5c59: $37
	ret nz                                           ; $5c5a: $c0

	inc c                                            ; $5c5b: $0c
	ldh [$3c], a                                     ; $5c5c: $e0 $3c
	ret nz                                           ; $5c5e: $c0

	ld bc, $01a0                                     ; $5c5f: $01 $a0 $01
	nop                                              ; $5c62: $00
	dec a                                            ; $5c63: $3d
	ret nz                                           ; $5c64: $c0

	inc c                                            ; $5c65: $0c
	ldh [$3c], a                                     ; $5c66: $e0 $3c
	ret nz                                           ; $5c68: $c0

	ld bc, $0ba0                                     ; $5c69: $01 $a0 $0b
	nop                                              ; $5c6c: $00
	ld b, h                                          ; $5c6d: $44
	ret nz                                           ; $5c6e: $c0

	ld bc, $0ba0                                     ; $5c6f: $01 $a0 $0b
	nop                                              ; $5c72: $00
	ld b, a                                          ; $5c73: $47
	ret nz                                           ; $5c74: $c0

	ld bc, $0ba0                                     ; $5c75: $01 $a0 $0b
	nop                                              ; $5c78: $00
	ld c, [hl]                                       ; $5c79: $4e
	ret nz                                           ; $5c7a: $c0

	ld bc, $0ba0                                     ; $5c7b: $01 $a0 $0b
	nop                                              ; $5c7e: $00
	ld d, a                                          ; $5c7f: $57
	ret nz                                           ; $5c80: $c0

	inc c                                            ; $5c81: $0c
	ldh [$3c], a                                     ; $5c82: $e0 $3c
	ret nz                                           ; $5c84: $c0

	ld bc, $01a0                                     ; $5c85: $01 $a0 $01
	nop                                              ; $5c88: $00
	ld e, a                                          ; $5c89: $5f
	ret nz                                           ; $5c8a: $c0

	inc c                                            ; $5c8b: $0c
	ldh [$3c], a                                     ; $5c8c: $e0 $3c
	ret nz                                           ; $5c8e: $c0

	ld bc, $0ba0                                     ; $5c8f: $01 $a0 $0b
	nop                                              ; $5c92: $00
	ld h, [hl]                                       ; $5c93: $66
	ret nz                                           ; $5c94: $c0

	ld bc, $0ba0                                     ; $5c95: $01 $a0 $0b
	nop                                              ; $5c98: $00
	ld l, c                                          ; $5c99: $69
	ret nz                                           ; $5c9a: $c0

	ld bc, $0ba0                                     ; $5c9b: $01 $a0 $0b
	nop                                              ; $5c9e: $00
	ld l, a                                          ; $5c9f: $6f
	ret nz                                           ; $5ca0: $c0

	ld bc, $0ba0                                     ; $5ca1: $01 $a0 $0b
	nop                                              ; $5ca4: $00
	ld [hl], e                                       ; $5ca5: $73
	ret nz                                           ; $5ca6: $c0

	inc c                                            ; $5ca7: $0c
	ldh [$3c], a                                     ; $5ca8: $e0 $3c
	ret nz                                           ; $5caa: $c0

	ld bc, $0ba0                                     ; $5cab: $01 $a0 $0b
	nop                                              ; $5cae: $00
	ld [hl], a                                       ; $5caf: $77
	ret nz                                           ; $5cb0: $c0

	ld bc, $0ba0                                     ; $5cb1: $01 $a0 $0b
	nop                                              ; $5cb4: $00
	inc l                                            ; $5cb5: $2c
	ret nz                                           ; $5cb6: $c0

	inc c                                            ; $5cb7: $0c
	ldh [$50], a                                     ; $5cb8: $e0 $50
	ret nz                                           ; $5cba: $c0

	ld bc, $01a0                                     ; $5cbb: $01 $a0 $01
	nop                                              ; $5cbe: $00
	add b                                            ; $5cbf: $80
	ret nz                                           ; $5cc0: $c0

	inc c                                            ; $5cc1: $0c
	ldh [$3c], a                                     ; $5cc2: $e0 $3c
	ret nz                                           ; $5cc4: $c0

	ld bc, $0ba0                                     ; $5cc5: $01 $a0 $0b
	nop                                              ; $5cc8: $00
	adc b                                            ; $5cc9: $88
	ret nz                                           ; $5cca: $c0

	ld bc, $0ba0                                     ; $5ccb: $01 $a0 $0b
	nop                                              ; $5cce: $00
	inc l                                            ; $5ccf: $2c
	ret nz                                           ; $5cd0: $c0

	inc c                                            ; $5cd1: $0c
	ldh [$3c], a                                     ; $5cd2: $e0 $3c
	ret nz                                           ; $5cd4: $c0

	ld bc, $0ba0                                     ; $5cd5: $01 $a0 $0b
	nop                                              ; $5cd8: $00
	sub b                                            ; $5cd9: $90
	ret nz                                           ; $5cda: $c0

	ld bc, $0ba0                                     ; $5cdb: $01 $a0 $0b
	nop                                              ; $5cde: $00
	sbc b                                            ; $5cdf: $98
	ret nz                                           ; $5ce0: $c0

	ld bc, $0ba0                                     ; $5ce1: $01 $a0 $0b
	nop                                              ; $5ce4: $00
	sbc a                                            ; $5ce5: $9f
	ret nz                                           ; $5ce6: $c0

	inc c                                            ; $5ce7: $0c
	ldh [$3c], a                                     ; $5ce8: $e0 $3c
	ret nz                                           ; $5cea: $c0

	ld bc, $0ba0                                     ; $5ceb: $01 $a0 $0b
	nop                                              ; $5cee: $00
	and a                                            ; $5cef: $a7
	ret nz                                           ; $5cf0: $c0

	ld bc, $0ba0                                     ; $5cf1: $01 $a0 $0b
	nop                                              ; $5cf4: $00
	xor l                                            ; $5cf5: $ad
	ret nz                                           ; $5cf6: $c0

	ld bc, $0ba0                                     ; $5cf7: $01 $a0 $0b
	nop                                              ; $5cfa: $00
	or l                                             ; $5cfb: $b5
	ret nz                                           ; $5cfc: $c0

	inc c                                            ; $5cfd: $0c
	ldh [$3c], a                                     ; $5cfe: $e0 $3c
	ret nz                                           ; $5d00: $c0

	ld bc, $0ba0                                     ; $5d01: $01 $a0 $0b
	nop                                              ; $5d04: $00
	cp c                                             ; $5d05: $b9
	ret nz                                           ; $5d06: $c0

	ld bc, $0ba0                                     ; $5d07: $01 $a0 $0b
	nop                                              ; $5d0a: $00
	ret nz                                           ; $5d0b: $c0

	ret nz                                           ; $5d0c: $c0

	inc c                                            ; $5d0d: $0c
	ldh [$3c], a                                     ; $5d0e: $e0 $3c
	ret nz                                           ; $5d10: $c0

	ld bc, $0ba0                                     ; $5d11: $01 $a0 $0b
	nop                                              ; $5d14: $00
	add $c0                                          ; $5d15: $c6 $c0
	ld bc, $0ba0                                     ; $5d17: $01 $a0 $0b
	nop                                              ; $5d1a: $00
	rst GetHLinHL                                          ; $5d1b: $cf
	ret nz                                           ; $5d1c: $c0

	inc c                                            ; $5d1d: $0c
	ldh [$3c], a                                     ; $5d1e: $e0 $3c
	ret nz                                           ; $5d20: $c0

	ld bc, $0ba0                                     ; $5d21: $01 $a0 $0b
	nop                                              ; $5d24: $00
	db $d3                                           ; $5d25: $d3
	ret nz                                           ; $5d26: $c0

	ld bc, $0ba0                                     ; $5d27: $01 $a0 $0b
	nop                                              ; $5d2a: $00
	ret c                                            ; $5d2b: $d8

	ret nz                                           ; $5d2c: $c0

	ld bc, $0ba0                                     ; $5d2d: $01 $a0 $0b
	nop                                              ; $5d30: $00
	ldh [$c0], a                                     ; $5d31: $e0 $c0
	inc c                                            ; $5d33: $0c
	ldh [$50], a                                     ; $5d34: $e0 $50
	ret nz                                           ; $5d36: $c0

	ld bc, $0ba0                                     ; $5d37: $01 $a0 $0b
	nop                                              ; $5d3a: $00
	push hl                                          ; $5d3b: $e5
	ret nz                                           ; $5d3c: $c0

	ld bc, $0ba0                                     ; $5d3d: $01 $a0 $0b
	nop                                              ; $5d40: $00
	db $ed                                           ; $5d41: $ed
	ret nz                                           ; $5d42: $c0

	ld bc, $0ba0                                     ; $5d43: $01 $a0 $0b
	nop                                              ; $5d46: $00
	rst FarCall                                          ; $5d47: $f7
	ret nz                                           ; $5d48: $c0

	ld bc, $0ba0                                     ; $5d49: $01 $a0 $0b
	ld bc, $c000                                     ; $5d4c: $01 $00 $c0
	inc c                                            ; $5d4f: $0c
	ldh [$3c], a                                     ; $5d50: $e0 $3c
	ret nz                                           ; $5d52: $c0

	ld bc, $0ba0                                     ; $5d53: $01 $a0 $0b
	ld bc, $c005                                     ; $5d56: $01 $05 $c0
	inc c                                            ; $5d59: $0c
	ldh [rAUD3HIGH], a                               ; $5d5a: $e0 $1e
	ret nz                                           ; $5d5c: $c0

	ld bc, $0ba0                                     ; $5d5d: $01 $a0 $0b
	ld bc, $c00e                                     ; $5d60: $01 $0e $c0
	inc c                                            ; $5d63: $0c
	ldh [rAUD3HIGH], a                               ; $5d64: $e0 $1e
	ret nz                                           ; $5d66: $c0

	ld bc, $0ba0                                     ; $5d67: $01 $a0 $0b
	ld bc, $c015                                     ; $5d6a: $01 $15 $c0
	ld bc, $0ba0                                     ; $5d6d: $01 $a0 $0b
	ld bc, $c01c                                     ; $5d70: $01 $1c $c0
	ld bc, $0ba0                                     ; $5d73: $01 $a0 $0b
	ld bc, $c022                                     ; $5d76: $01 $22 $c0
	inc c                                            ; $5d79: $0c
	ldh [$3c], a                                     ; $5d7a: $e0 $3c
	ret nz                                           ; $5d7c: $c0

	ld bc, $0ba0                                     ; $5d7d: $01 $a0 $0b
	ld bc, $c02a                                     ; $5d80: $01 $2a $c0
	ld bc, $0ba0                                     ; $5d83: $01 $a0 $0b
	ld bc, $c02f                                     ; $5d86: $01 $2f $c0

jr_089_5d89:
	inc c                                            ; $5d89: $0c
	ldh [$3c], a                                     ; $5d8a: $e0 $3c
	ret nz                                           ; $5d8c: $c0

	ld bc, $0ba0                                     ; $5d8d: $01 $a0 $0b
	ld bc, $c032                                     ; $5d90: $01 $32 $c0
	ld bc, $0ba0                                     ; $5d93: $01 $a0 $0b
	ld bc, $c03a                                     ; $5d96: $01 $3a $c0
	ld bc, $0ba0                                     ; $5d99: $01 $a0 $0b
	ld bc, $c041                                     ; $5d9c: $01 $41 $c0
	inc c                                            ; $5d9f: $0c
	ldh [$5a], a                                     ; $5da0: $e0 $5a
	pop bc                                           ; $5da2: $c1
	or d                                             ; $5da3: $b2
	db $e3                                           ; $5da4: $e3
	nop                                              ; $5da5: $00
	rra                                              ; $5da6: $1f
	ret nz                                           ; $5da7: $c0

	ld bc, $0ba0                                     ; $5da8: $01 $a0 $0b
	ld bc, $c048                                     ; $5dab: $01 $48 $c0
	ld bc, $0ba0                                     ; $5dae: $01 $a0 $0b
	ld bc, $c04d                                     ; $5db1: $01 $4d $c0
	ld bc, $0ba0                                     ; $5db4: $01 $a0 $0b
	ld bc, $c051                                     ; $5db7: $01 $51 $c0
	ld bc, $0ba0                                     ; $5dba: $01 $a0 $0b
	ld bc, $c054                                     ; $5dbd: $01 $54 $c0
	inc c                                            ; $5dc0: $0c
	ldh [rAUD3HIGH], a                               ; $5dc1: $e0 $1e
	pop bc                                           ; $5dc3: $c1
	or d                                             ; $5dc4: $b2
	db $e3                                           ; $5dc5: $e3
	nop                                              ; $5dc6: $00
	jr nz, jr_089_5d89                               ; $5dc7: $20 $c0

	ld bc, $0ba0                                     ; $5dc9: $01 $a0 $0b
	ld bc, $c057                                     ; $5dcc: $01 $57 $c0
	ld bc, $0ba0                                     ; $5dcf: $01 $a0 $0b
	nop                                              ; $5dd2: $00
	inc l                                            ; $5dd3: $2c
	ret nz                                           ; $5dd4: $c0

	ld bc, $0ba0                                     ; $5dd5: $01 $a0 $0b
	ld bc, $c05e                                     ; $5dd8: $01 $5e $c0
	inc c                                            ; $5ddb: $0c
	ldh [$3c], a                                     ; $5ddc: $e0 $3c
	ret nz                                           ; $5dde: $c0

	ld bc, $01a0                                     ; $5ddf: $01 $a0 $01
	ld bc, $c067                                     ; $5de2: $01 $67 $c0
	ld bc, $01a0                                     ; $5de5: $01 $a0 $01
	ld bc, $c06b                                     ; $5de8: $01 $6b $c0
	inc c                                            ; $5deb: $0c
	ldh [$50], a                                     ; $5dec: $e0 $50
	ret nz                                           ; $5dee: $c0

	ld bc, $0ba0                                     ; $5def: $01 $a0 $0b
	ld bc, $c071                                     ; $5df2: $01 $71 $c0
	ld bc, $0ba0                                     ; $5df5: $01 $a0 $0b
	ld bc, $c077                                     ; $5df8: $01 $77 $c0
	ld bc, $0ba0                                     ; $5dfb: $01 $a0 $0b
	ld bc, $c07d                                     ; $5dfe: $01 $7d $c0
	inc c                                            ; $5e01: $0c
	ldh [$3c], a                                     ; $5e02: $e0 $3c
	ret nz                                           ; $5e04: $c0

	ld bc, $01a0                                     ; $5e05: $01 $a0 $01
	ld bc, $c084                                     ; $5e08: $01 $84 $c0
	ld bc, $01a0                                     ; $5e0b: $01 $a0 $01
	ld bc, $c08c                                     ; $5e0e: $01 $8c $c0
	inc c                                            ; $5e11: $0c
	ldh [$3c], a                                     ; $5e12: $e0 $3c
	ret nz                                           ; $5e14: $c0

	ld bc, $0ba0                                     ; $5e15: $01 $a0 $0b
	ld bc, $c094                                     ; $5e18: $01 $94 $c0
	inc c                                            ; $5e1b: $0c
	ldh [$3c], a                                     ; $5e1c: $e0 $3c
	ret nz                                           ; $5e1e: $c0

	ld bc, $01a0                                     ; $5e1f: $01 $a0 $01
	ld bc, $c099                                     ; $5e22: $01 $99 $c0
	inc c                                            ; $5e25: $0c
	ldh [$3c], a                                     ; $5e26: $e0 $3c
	pop bc                                           ; $5e28: $c1
	sbc [hl]                                         ; $5e29: $9e
	pop de                                           ; $5e2a: $d1
	ret nz                                           ; $5e2b: $c0

	ld bc, $0ba0                                     ; $5e2c: $01 $a0 $0b
	ld bc, $c09f                                     ; $5e2f: $01 $9f $c0
	ld bc, $0ba0                                     ; $5e32: $01 $a0 $0b
	ld bc, $c0a2                                     ; $5e35: $01 $a2 $c0
	inc c                                            ; $5e38: $0c
	ldh [$3c], a                                     ; $5e39: $e0 $3c
	ret nz                                           ; $5e3b: $c0

	ld bc, $0ba0                                     ; $5e3c: $01 $a0 $0b
	ld bc, $c0a9                                     ; $5e3f: $01 $a9 $c0
	ld bc, $0ba0                                     ; $5e42: $01 $a0 $0b
	ld bc, $c0ab                                     ; $5e45: $01 $ab $c0
	inc c                                            ; $5e48: $0c
	ldh [$3c], a                                     ; $5e49: $e0 $3c
	ret nz                                           ; $5e4b: $c0

	ld bc, $01a0                                     ; $5e4c: $01 $a0 $01
	ld bc, $c0b3                                     ; $5e4f: $01 $b3 $c0
	inc c                                            ; $5e52: $0c
	ldh [$3c], a                                     ; $5e53: $e0 $3c
	ret nz                                           ; $5e55: $c0

	ld bc, $0ba0                                     ; $5e56: $01 $a0 $0b
	ld bc, $c0bb                                     ; $5e59: $01 $bb $c0
	inc c                                            ; $5e5c: $0c
	ldh [$3c], a                                     ; $5e5d: $e0 $3c
	ret nz                                           ; $5e5f: $c0

	ld bc, $01a0                                     ; $5e60: $01 $a0 $01
	ld bc, $c0be                                     ; $5e63: $01 $be $c0
	ld bc, $01a0                                     ; $5e66: $01 $a0 $01
	ld bc, $c1c6                                     ; $5e69: $01 $c6 $c1
	sbc [hl]                                         ; $5e6c: $9e
	ret nc                                           ; $5e6d: $d0

	ret nz                                           ; $5e6e: $c0

	inc c                                            ; $5e6f: $0c
	ldh [$3c], a                                     ; $5e70: $e0 $3c
	ret nz                                           ; $5e72: $c0

	ld bc, $0ba0                                     ; $5e73: $01 $a0 $0b
	ld bc, $c0ca                                     ; $5e76: $01 $ca $c0
	ld bc, $0ba0                                     ; $5e79: $01 $a0 $0b
	ld bc, $c0cd                                     ; $5e7c: $01 $cd $c0
	ld bc, $0ba0                                     ; $5e7f: $01 $a0 $0b
	ld bc, $c0d3                                     ; $5e82: $01 $d3 $c0
	ld bc, $0ba0                                     ; $5e85: $01 $a0 $0b
	ld bc, $c0d9                                     ; $5e88: $01 $d9 $c0
	inc c                                            ; $5e8b: $0c
	ldh [$3c], a                                     ; $5e8c: $e0 $3c
	ret nz                                           ; $5e8e: $c0

	ld bc, $01a0                                     ; $5e8f: $01 $a0 $01
	ld bc, $c0e1                                     ; $5e92: $01 $e1 $c0
	inc c                                            ; $5e95: $0c
	ldh [$3c], a                                     ; $5e96: $e0 $3c
	ret nz                                           ; $5e98: $c0

	ld bc, $0ba0                                     ; $5e99: $01 $a0 $0b
	ld bc, $c0e9                                     ; $5e9c: $01 $e9 $c0
	inc c                                            ; $5e9f: $0c
	ldh [$3c], a                                     ; $5ea0: $e0 $3c
	ret nz                                           ; $5ea2: $c0

	ld bc, $01a0                                     ; $5ea3: $01 $a0 $01
	ld bc, $c0f0                                     ; $5ea6: $01 $f0 $c0
	ld bc, $01a0                                     ; $5ea9: $01 $a0 $01
	ld bc, $c1f3                                     ; $5eac: $01 $f3 $c1
	sbc [hl]                                         ; $5eaf: $9e
	pop de                                           ; $5eb0: $d1
	ret nz                                           ; $5eb1: $c0

	inc c                                            ; $5eb2: $0c
	ldh [$3c], a                                     ; $5eb3: $e0 $3c
	ret nz                                           ; $5eb5: $c0

	ld bc, $0ba0                                     ; $5eb6: $01 $a0 $0b
	ld bc, $c0fb                                     ; $5eb9: $01 $fb $c0
	ld bc, $0ba0                                     ; $5ebc: $01 $a0 $0b
	ld bc, $c0ff                                     ; $5ebf: $01 $ff $c0
	ld bc, $0ba0                                     ; $5ec2: $01 $a0 $0b
	ld [bc], a                                       ; $5ec5: $02
	inc b                                            ; $5ec6: $04
	ret nz                                           ; $5ec7: $c0

	inc c                                            ; $5ec8: $0c
	ldh [$78], a                                     ; $5ec9: $e0 $78
	pop bc                                           ; $5ecb: $c1
	sbc a                                            ; $5ecc: $9f
	jp nc, $c208                                     ; $5ecd: $d2 $08 $c2

	dec d                                            ; $5ed0: $15
	pop bc                                           ; $5ed1: $c1
	adc a                                            ; $5ed2: $8f
	pop bc                                           ; $5ed3: $c1
	sub b                                            ; $5ed4: $90
	pop bc                                           ; $5ed5: $c1
	sub [hl]                                         ; $5ed6: $96
	ldh [$f0], a                                     ; $5ed7: $e0 $f0
	ret nz                                           ; $5ed9: $c0

	inc c                                            ; $5eda: $0c
	ldh [$3c], a                                     ; $5edb: $e0 $3c
	pop bc                                           ; $5edd: $c1
	or b                                             ; $5ede: $b0
	jp nc, $d0d8                                     ; $5edf: $d2 $d8 $d0

	ld h, b                                          ; $5ee2: $60
	add b                                            ; $5ee3: $80
	ld bc, $0a46                                     ; $5ee4: $01 $46 $0a
	ret nz                                           ; $5ee7: $c0

	ld bc, $01a0                                     ; $5ee8: $01 $a0 $01
	nop                                              ; $5eeb: $00
	ld bc, $0cc0                                     ; $5eec: $01 $c0 $0c
	ldh [$50], a                                     ; $5eef: $e0 $50
	ld [hl], $c0                                     ; $5ef1: $36 $c0
	ld bc, $01a0                                     ; $5ef3: $01 $a0 $01
	nop                                              ; $5ef6: $00
	ld b, $c0                                        ; $5ef7: $06 $c0
	ld bc, $01a0                                     ; $5ef9: $01 $a0 $01
	nop                                              ; $5efc: $00
	ld a, [bc]                                       ; $5efd: $0a
	ret nz                                           ; $5efe: $c0

	inc c                                            ; $5eff: $0c
	ldh [$3c], a                                     ; $5f00: $e0 $3c
	ret nz                                           ; $5f02: $c0

	ld bc, $03a0                                     ; $5f03: $01 $a0 $03
	nop                                              ; $5f06: $00
	db $10                                           ; $5f07: $10
	ret nz                                           ; $5f08: $c0

	ld bc, $03a0                                     ; $5f09: $01 $a0 $03
	nop                                              ; $5f0c: $00
	inc d                                            ; $5f0d: $14
	ret nz                                           ; $5f0e: $c0

	ld bc, $03a0                                     ; $5f0f: $01 $a0 $03
	nop                                              ; $5f12: $00
	ld a, [de]                                       ; $5f13: $1a
	ret nz                                           ; $5f14: $c0

	ld bc, $03a0                                     ; $5f15: $01 $a0 $03
	nop                                              ; $5f18: $00
	ld e, $c0                                        ; $5f19: $1e $c0
	inc c                                            ; $5f1b: $0c
	ldh [$3c], a                                     ; $5f1c: $e0 $3c
	ret nz                                           ; $5f1e: $c0

	ld bc, $01a0                                     ; $5f1f: $01 $a0 $01
	nop                                              ; $5f22: $00
	inc hl                                           ; $5f23: $23
	ret nz                                           ; $5f24: $c0

	inc c                                            ; $5f25: $0c
	ldh [$50], a                                     ; $5f26: $e0 $50
	ret nz                                           ; $5f28: $c0

	ld bc, $03a0                                     ; $5f29: $01 $a0 $03
	nop                                              ; $5f2c: $00
	inc l                                            ; $5f2d: $2c
	ret nz                                           ; $5f2e: $c0

	ld bc, $03a0                                     ; $5f2f: $01 $a0 $03
	nop                                              ; $5f32: $00
	ld l, $c0                                        ; $5f33: $2e $c0
	inc c                                            ; $5f35: $0c
	ldh [$3c], a                                     ; $5f36: $e0 $3c
	ret nz                                           ; $5f38: $c0

	ld bc, $03a0                                     ; $5f39: $01 $a0 $03
	nop                                              ; $5f3c: $00
	scf                                              ; $5f3d: $37
	ret nz                                           ; $5f3e: $c0

	ld bc, $03a0                                     ; $5f3f: $01 $a0 $03
	nop                                              ; $5f42: $00
	inc a                                            ; $5f43: $3c
	ret nz                                           ; $5f44: $c0

	ld bc, $03a0                                     ; $5f45: $01 $a0 $03
	nop                                              ; $5f48: $00
	ld b, l                                          ; $5f49: $45
	ret nz                                           ; $5f4a: $c0

	ld bc, $03a0                                     ; $5f4b: $01 $a0 $03
	nop                                              ; $5f4e: $00
	ld c, d                                          ; $5f4f: $4a
	ret nz                                           ; $5f50: $c0

	inc c                                            ; $5f51: $0c
	ldh [$50], a                                     ; $5f52: $e0 $50
	ret nz                                           ; $5f54: $c0

	ld bc, $01a0                                     ; $5f55: $01 $a0 $01
	nop                                              ; $5f58: $00
	ld c, a                                          ; $5f59: $4f
	ret nz                                           ; $5f5a: $c0

	ld bc, $01a0                                     ; $5f5b: $01 $a0 $01
	nop                                              ; $5f5e: $00
	ld d, l                                          ; $5f5f: $55
	ret nz                                           ; $5f60: $c0

	inc c                                            ; $5f61: $0c
	ldh [$50], a                                     ; $5f62: $e0 $50
	ret nz                                           ; $5f64: $c0

	ld bc, $03a0                                     ; $5f65: $01 $a0 $03
	nop                                              ; $5f68: $00
	ld e, h                                          ; $5f69: $5c
	ret nz                                           ; $5f6a: $c0

	ld bc, $03a0                                     ; $5f6b: $01 $a0 $03
	nop                                              ; $5f6e: $00
	ld h, l                                          ; $5f6f: $65
	ret nz                                           ; $5f70: $c0

	ld bc, $03a0                                     ; $5f71: $01 $a0 $03
	nop                                              ; $5f74: $00
	ld l, h                                          ; $5f75: $6c
	ret nz                                           ; $5f76: $c0

	ld bc, $03a0                                     ; $5f77: $01 $a0 $03
	nop                                              ; $5f7a: $00
	halt                                             ; $5f7b: $76
	ret nz                                           ; $5f7c: $c0

	inc c                                            ; $5f7d: $0c
	ldh [rAUD3HIGH], a                               ; $5f7e: $e0 $1e
	ret nz                                           ; $5f80: $c0

	ld bc, $03a0                                     ; $5f81: $01 $a0 $03
	nop                                              ; $5f84: $00
	ld a, c                                          ; $5f85: $79
	ret nz                                           ; $5f86: $c0

	ld bc, $03a0                                     ; $5f87: $01 $a0 $03
	nop                                              ; $5f8a: $00
	add d                                            ; $5f8b: $82
	ret nz                                           ; $5f8c: $c0

	ld bc, $03a0                                     ; $5f8d: $01 $a0 $03
	nop                                              ; $5f90: $00
	adc d                                            ; $5f91: $8a
	ret nz                                           ; $5f92: $c0

	ld bc, $03a0                                     ; $5f93: $01 $a0 $03
	nop                                              ; $5f96: $00
	sub d                                            ; $5f97: $92
	ret nz                                           ; $5f98: $c0

	inc c                                            ; $5f99: $0c
	ldh [$3c], a                                     ; $5f9a: $e0 $3c
	ret nz                                           ; $5f9c: $c0

	ld bc, $03a0                                     ; $5f9d: $01 $a0 $03
	nop                                              ; $5fa0: $00
	sub a                                            ; $5fa1: $97
	ret nz                                           ; $5fa2: $c0

	ld bc, $03a0                                     ; $5fa3: $01 $a0 $03
	nop                                              ; $5fa6: $00
	sbc e                                            ; $5fa7: $9b
	ret nz                                           ; $5fa8: $c0

	ld bc, $03a0                                     ; $5fa9: $01 $a0 $03
	nop                                              ; $5fac: $00
	and e                                            ; $5fad: $a3
	ret nz                                           ; $5fae: $c0

	ld bc, $03a0                                     ; $5faf: $01 $a0 $03
	nop                                              ; $5fb2: $00
	xor b                                            ; $5fb3: $a8
	ret nz                                           ; $5fb4: $c0

	inc c                                            ; $5fb5: $0c
	ldh [$3c], a                                     ; $5fb6: $e0 $3c
	ret nz                                           ; $5fb8: $c0

	ld bc, $03a0                                     ; $5fb9: $01 $a0 $03
	nop                                              ; $5fbc: $00
	xor a                                            ; $5fbd: $af
	ret nz                                           ; $5fbe: $c0

	ld bc, $03a0                                     ; $5fbf: $01 $a0 $03
	nop                                              ; $5fc2: $00
	or a                                             ; $5fc3: $b7
	ret nz                                           ; $5fc4: $c0

	ld bc, $03a0                                     ; $5fc5: $01 $a0 $03
	nop                                              ; $5fc8: $00
	cp [hl]                                          ; $5fc9: $be
	ret nz                                           ; $5fca: $c0

	inc c                                            ; $5fcb: $0c
	ldh [$50], a                                     ; $5fcc: $e0 $50
	ret nz                                           ; $5fce: $c0

	ld bc, $01a0                                     ; $5fcf: $01 $a0 $01
	nop                                              ; $5fd2: $00
	jp nz, $0cc0                                     ; $5fd3: $c2 $c0 $0c

	ldh [$50], a                                     ; $5fd6: $e0 $50
	ret nz                                           ; $5fd8: $c0

	ld bc, $03a0                                     ; $5fd9: $01 $a0 $03
	nop                                              ; $5fdc: $00
	rst JumpTable                                          ; $5fdd: $c7
	ret nz                                           ; $5fde: $c0

	ld bc, $03a0                                     ; $5fdf: $01 $a0 $03
	nop                                              ; $5fe2: $00
	jp z, $01c0                                      ; $5fe3: $ca $c0 $01

	and b                                            ; $5fe6: $a0
	inc bc                                           ; $5fe7: $03
	nop                                              ; $5fe8: $00
	ret nc                                           ; $5fe9: $d0

	ret nz                                           ; $5fea: $c0

	ld bc, $03a0                                     ; $5feb: $01 $a0 $03
	nop                                              ; $5fee: $00
	push de                                          ; $5fef: $d5
	ret nz                                           ; $5ff0: $c0

	inc c                                            ; $5ff1: $0c
	ldh [rAUD3HIGH], a                               ; $5ff2: $e0 $1e
	ret nz                                           ; $5ff4: $c0

	ld bc, $03a0                                     ; $5ff5: $01 $a0 $03
	nop                                              ; $5ff8: $00
	jp c, $01c0                                      ; $5ff9: $da $c0 $01

	and b                                            ; $5ffc: $a0
	inc bc                                           ; $5ffd: $03
	nop                                              ; $5ffe: $00
	ldh [c], a                                       ; $5fff: $e2
	ret nz                                           ; $6000: $c0

	ld bc, $03a0                                     ; $6001: $01 $a0 $03
	nop                                              ; $6004: $00
	jp hl                                            ; $6005: $e9


	ret nz                                           ; $6006: $c0

	ld bc, $03a0                                     ; $6007: $01 $a0 $03
	nop                                              ; $600a: $00
	rst AddAOntoHL                                          ; $600b: $ef
	ret nz                                           ; $600c: $c0

	inc c                                            ; $600d: $0c
	ldh [$3c], a                                     ; $600e: $e0 $3c
	ret nz                                           ; $6010: $c0

	ld bc, $03a0                                     ; $6011: $01 $a0 $03
	nop                                              ; $6014: $00
	db $f4                                           ; $6015: $f4
	ret nz                                           ; $6016: $c0

	ld bc, $03a0                                     ; $6017: $01 $a0 $03
	nop                                              ; $601a: $00
	cp $c0                                           ; $601b: $fe $c0
	inc c                                            ; $601d: $0c
	ldh [rAUD3HIGH], a                               ; $601e: $e0 $1e
	ret nz                                           ; $6020: $c0

	ld bc, $03a0                                     ; $6021: $01 $a0 $03
	ld bc, $c003                                     ; $6024: $01 $03 $c0
	ld bc, $03a0                                     ; $6027: $01 $a0 $03
	ld bc, $c00b                                     ; $602a: $01 $0b $c0
	inc c                                            ; $602d: $0c
	ldh [$78], a                                     ; $602e: $e0 $78
	pop bc                                           ; $6030: $c1
	or d                                             ; $6031: $b2
	db $e3                                           ; $6032: $e3
	nop                                              ; $6033: $00
	cpl                                              ; $6034: $2f
	ret nz                                           ; $6035: $c0

	ld bc, $03a0                                     ; $6036: $01 $a0 $03
	ld bc, $c00e                                     ; $6039: $01 $0e $c0
	inc c                                            ; $603c: $0c
	ldh [$5a], a                                     ; $603d: $e0 $5a
	ret nz                                           ; $603f: $c0

	ld bc, $03a0                                     ; $6040: $01 $a0 $03
	ld bc, $c011                                     ; $6043: $01 $11 $c0
	ld bc, $03a0                                     ; $6046: $01 $a0 $03
	ld bc, $c016                                     ; $6049: $01 $16 $c0
	ld bc, $03a0                                     ; $604c: $01 $a0 $03
	ld bc, $c01b                                     ; $604f: $01 $1b $c0
	ld bc, $03a0                                     ; $6052: $01 $a0 $03
	ld bc, $c021                                     ; $6055: $01 $21 $c0
	inc c                                            ; $6058: $0c
	ldh [$78], a                                     ; $6059: $e0 $78
	ret nz                                           ; $605b: $c0

	ld bc, $01a0                                     ; $605c: $01 $a0 $01
	ld bc, $c028                                     ; $605f: $01 $28 $c0
	ld bc, $01a0                                     ; $6062: $01 $a0 $01
	ld bc, $c02d                                     ; $6065: $01 $2d $c0
	inc c                                            ; $6068: $0c
	ldh [rAUD3HIGH], a                               ; $6069: $e0 $1e
	pop bc                                           ; $606b: $c1
	sbc [hl]                                         ; $606c: $9e
	pop de                                           ; $606d: $d1
	ret nz                                           ; $606e: $c0

	inc c                                            ; $606f: $0c
	ldh [$3c], a                                     ; $6070: $e0 $3c
	ret nz                                           ; $6072: $c0

	ld bc, $03a0                                     ; $6073: $01 $a0 $03
	ld bc, $c033                                     ; $6076: $01 $33 $c0
	ld bc, $03a0                                     ; $6079: $01 $a0 $03
	ld bc, $c038                                     ; $607c: $01 $38 $c0
	ld bc, $03a0                                     ; $607f: $01 $a0 $03
	ld bc, $c03d                                     ; $6082: $01 $3d $c0
	inc c                                            ; $6085: $0c
	ldh [$3c], a                                     ; $6086: $e0 $3c
	ret nz                                           ; $6088: $c0

	ld bc, $01a0                                     ; $6089: $01 $a0 $01
	ld bc, $c040                                     ; $608c: $01 $40 $c0
	ld bc, $01a0                                     ; $608f: $01 $a0 $01
	ld bc, $c044                                     ; $6092: $01 $44 $c0
	inc c                                            ; $6095: $0c
	ldh [$3c], a                                     ; $6096: $e0 $3c
	ret nz                                           ; $6098: $c0

	ld bc, $03a0                                     ; $6099: $01 $a0 $03
	ld bc, $c04a                                     ; $609c: $01 $4a $c0
	ld bc, $03a0                                     ; $609f: $01 $a0 $03
	ld bc, $c04e                                     ; $60a2: $01 $4e $c0
	inc c                                            ; $60a5: $0c
	jp c, $9cc1                                      ; $60a6: $da $c1 $9c

	ret nc                                           ; $60a9: $d0

	ret nz                                           ; $60aa: $c0

	ld bc, $01a0                                     ; $60ab: $01 $a0 $01
	ld bc, $c052                                     ; $60ae: $01 $52 $c0
	inc c                                            ; $60b1: $0c
	ldh [$3c], a                                     ; $60b2: $e0 $3c
	ret nz                                           ; $60b4: $c0

	ld bc, $03a0                                     ; $60b5: $01 $a0 $03
	ld bc, $c05a                                     ; $60b8: $01 $5a $c0
	ld bc, $03a0                                     ; $60bb: $01 $a0 $03
	ld bc, $c05f                                     ; $60be: $01 $5f $c0
	inc c                                            ; $60c1: $0c
	ldh [rAUD3HIGH], a                               ; $60c2: $e0 $1e
	ret nz                                           ; $60c4: $c0

	ld bc, $03a0                                     ; $60c5: $01 $a0 $03
	ld bc, $c069                                     ; $60c8: $01 $69 $c0
	ld bc, $03a0                                     ; $60cb: $01 $a0 $03
	ld bc, $c06f                                     ; $60ce: $01 $6f $c0
	inc c                                            ; $60d1: $0c
	ldh [$3c], a                                     ; $60d2: $e0 $3c
	ret nz                                           ; $60d4: $c0

	ld bc, $03a0                                     ; $60d5: $01 $a0 $03
	ld bc, $c078                                     ; $60d8: $01 $78 $c0
	ld bc, $03a0                                     ; $60db: $01 $a0 $03
	ld bc, $c07b                                     ; $60de: $01 $7b $c0
	inc c                                            ; $60e1: $0c
	ldh [$78], a                                     ; $60e2: $e0 $78
	pop bc                                           ; $60e4: $c1
	sbc a                                            ; $60e5: $9f
	jp nc, wPtrToDataCopyStruct                                     ; $60e6: $d2 $08 $c1

	reti                                             ; $60e9: $d9


	pop bc                                           ; $60ea: $c1
	adc a                                            ; $60eb: $8f
	pop bc                                           ; $60ec: $c1
	sub b                                            ; $60ed: $90
	pop bc                                           ; $60ee: $c1
	sub [hl]                                         ; $60ef: $96
	ldh [$f0], a                                     ; $60f0: $e0 $f0
	ret nz                                           ; $60f2: $c0

	inc c                                            ; $60f3: $0c
	ldh [$3c], a                                     ; $60f4: $e0 $3c
	pop bc                                           ; $60f6: $c1
	or b                                             ; $60f7: $b0
	jp nc, $d0d8                                     ; $60f8: $d2 $d8 $d0

	ret nz                                           ; $60fb: $c0

jr_089_60fc:
	ld bc, $01a0                                     ; $60fc: $01 $a0 $01
	nop                                              ; $60ff: $00
	ld bc, $0cc0                                     ; $6100: $01 $c0 $0c
	ldh [$50], a                                     ; $6103: $e0 $50
	ret nz                                           ; $6105: $c0

	ld bc, $04a0                                     ; $6106: $01 $a0 $04
	nop                                              ; $6109: $00
	rlca                                             ; $610a: $07
	ret nz                                           ; $610b: $c0

	inc c                                            ; $610c: $0c
	ldh [$3c], a                                     ; $610d: $e0 $3c
	ret nz                                           ; $610f: $c0

	ld bc, $04a0                                     ; $6110: $01 $a0 $04
	nop                                              ; $6113: $00
	add hl, bc                                       ; $6114: $09
	ret nz                                           ; $6115: $c0

	ld bc, $04a0                                     ; $6116: $01 $a0 $04
	nop                                              ; $6119: $00
	inc c                                            ; $611a: $0c
	ret nz                                           ; $611b: $c0

	ld bc, $04a0                                     ; $611c: $01 $a0 $04
	nop                                              ; $611f: $00
	ld c, $c0                                        ; $6120: $0e $c0
	inc c                                            ; $6122: $0c
	ldh [$50], a                                     ; $6123: $e0 $50
	ret nz                                           ; $6125: $c0

	ld bc, $01a0                                     ; $6126: $01 $a0 $01
	nop                                              ; $6129: $00
	ld d, $c0                                        ; $612a: $16 $c0
	ld bc, $01a0                                     ; $612c: $01 $a0 $01
	nop                                              ; $612f: $00
	ld a, [de]                                       ; $6130: $1a
	ret nz                                           ; $6131: $c0

	inc c                                            ; $6132: $0c
	ldh [$3c], a                                     ; $6133: $e0 $3c
	ret nz                                           ; $6135: $c0

	ld bc, $04a0                                     ; $6136: $01 $a0 $04
	nop                                              ; $6139: $00
	jr nz, jr_089_60fc                               ; $613a: $20 $c0

	ld bc, $04a0                                     ; $613c: $01 $a0 $04
	nop                                              ; $613f: $00
	inc h                                            ; $6140: $24
	ret nz                                           ; $6141: $c0

	ld bc, $04a0                                     ; $6142: $01 $a0 $04
	nop                                              ; $6145: $00
	add hl, hl                                       ; $6146: $29
	ret nz                                           ; $6147: $c0

	inc c                                            ; $6148: $0c
	ldh [$3c], a                                     ; $6149: $e0 $3c
	ret nz                                           ; $614b: $c0

	ld bc, $01a0                                     ; $614c: $01 $a0 $01
	nop                                              ; $614f: $00
	cpl                                              ; $6150: $2f
	ret nz                                           ; $6151: $c0

	inc c                                            ; $6152: $0c
	ldh [$3c], a                                     ; $6153: $e0 $3c
	ret nz                                           ; $6155: $c0

	ld bc, $04a0                                     ; $6156: $01 $a0 $04
	nop                                              ; $6159: $00
	dec [hl]                                         ; $615a: $35
	ret nz                                           ; $615b: $c0

	inc c                                            ; $615c: $0c
	ldh [$5a], a                                     ; $615d: $e0 $5a
	ret nz                                           ; $615f: $c0

	ld bc, $04a0                                     ; $6160: $01 $a0 $04
	nop                                              ; $6163: $00
	ld a, [hl-]                                      ; $6164: $3a
	ret nz                                           ; $6165: $c0

	ld bc, $04a0                                     ; $6166: $01 $a0 $04
	nop                                              ; $6169: $00
	ld a, $c0                                        ; $616a: $3e $c0
	ld bc, $04a0                                     ; $616c: $01 $a0 $04
	nop                                              ; $616f: $00
	ld b, l                                          ; $6170: $45
	ret nz                                           ; $6171: $c0

	ld bc, $04a0                                     ; $6172: $01 $a0 $04
	nop                                              ; $6175: $00
	ld c, a                                          ; $6176: $4f
	ret nz                                           ; $6177: $c0

	ld bc, $04a0                                     ; $6178: $01 $a0 $04
	nop                                              ; $617b: $00
	ld d, e                                          ; $617c: $53
	ret nz                                           ; $617d: $c0

	ld bc, $04a0                                     ; $617e: $01 $a0 $04
	nop                                              ; $6181: $00
	ld e, c                                          ; $6182: $59
	ret nz                                           ; $6183: $c0

	ld bc, $04a0                                     ; $6184: $01 $a0 $04
	nop                                              ; $6187: $00
	ld e, [hl]                                       ; $6188: $5e
	ret nz                                           ; $6189: $c0

	ld bc, $04a0                                     ; $618a: $01 $a0 $04
	nop                                              ; $618d: $00
	ld h, e                                          ; $618e: $63
	ret nz                                           ; $618f: $c0

	ld bc, $04a0                                     ; $6190: $01 $a0 $04
	nop                                              ; $6193: $00
	ld l, c                                          ; $6194: $69
	ret nz                                           ; $6195: $c0

	inc c                                            ; $6196: $0c
	ldh [$3c], a                                     ; $6197: $e0 $3c
	ret nz                                           ; $6199: $c0

	ld bc, $04a0                                     ; $619a: $01 $a0 $04
	nop                                              ; $619d: $00
	ld l, [hl]                                       ; $619e: $6e
	ret nz                                           ; $619f: $c0

	ld bc, $04a0                                     ; $61a0: $01 $a0 $04
	nop                                              ; $61a3: $00
	halt                                             ; $61a4: $76
	ret nz                                           ; $61a5: $c0

	ld bc, $04a0                                     ; $61a6: $01 $a0 $04
	nop                                              ; $61a9: $00
	ld a, c                                          ; $61aa: $79
	ret nz                                           ; $61ab: $c0

	ld bc, $04a0                                     ; $61ac: $01 $a0 $04
	nop                                              ; $61af: $00
	add e                                            ; $61b0: $83
	ret nz                                           ; $61b1: $c0

	ld bc, $04a0                                     ; $61b2: $01 $a0 $04
	nop                                              ; $61b5: $00
	adc b                                            ; $61b6: $88
	ret nz                                           ; $61b7: $c0

	inc c                                            ; $61b8: $0c
	ldh [$5a], a                                     ; $61b9: $e0 $5a
	ret nz                                           ; $61bb: $c0

	ld bc, $04a0                                     ; $61bc: $01 $a0 $04
	nop                                              ; $61bf: $00
	adc a                                            ; $61c0: $8f
	ret nz                                           ; $61c1: $c0

	ld bc, $04a0                                     ; $61c2: $01 $a0 $04
	nop                                              ; $61c5: $00
	sbc b                                            ; $61c6: $98
	ret nz                                           ; $61c7: $c0

	ld bc, $04a0                                     ; $61c8: $01 $a0 $04
	nop                                              ; $61cb: $00
	sbc a                                            ; $61cc: $9f
	ret nz                                           ; $61cd: $c0

	ld bc, $04a0                                     ; $61ce: $01 $a0 $04
	nop                                              ; $61d1: $00
	and a                                            ; $61d2: $a7
	ret nz                                           ; $61d3: $c0

	ld bc, $04a0                                     ; $61d4: $01 $a0 $04
	nop                                              ; $61d7: $00
	xor h                                            ; $61d8: $ac
	ret nz                                           ; $61d9: $c0

	inc c                                            ; $61da: $0c
	ldh [$3c], a                                     ; $61db: $e0 $3c
	ret nz                                           ; $61dd: $c0

	ld bc, $04a0                                     ; $61de: $01 $a0 $04
	nop                                              ; $61e1: $00
	or e                                             ; $61e2: $b3
	ret nz                                           ; $61e3: $c0

	ld bc, $04a0                                     ; $61e4: $01 $a0 $04
	nop                                              ; $61e7: $00
	cp l                                             ; $61e8: $bd
	ret nz                                           ; $61e9: $c0

	ld bc, $04a0                                     ; $61ea: $01 $a0 $04
	nop                                              ; $61ed: $00
	push bc                                          ; $61ee: $c5
	ret nz                                           ; $61ef: $c0

	inc c                                            ; $61f0: $0c
	ldh [$3c], a                                     ; $61f1: $e0 $3c
	ret nz                                           ; $61f3: $c0

	ld bc, $04a0                                     ; $61f4: $01 $a0 $04
	nop                                              ; $61f7: $00
	adc $c0                                          ; $61f8: $ce $c0
	ld bc, $04a0                                     ; $61fa: $01 $a0 $04
	nop                                              ; $61fd: $00
	sub $c0                                          ; $61fe: $d6 $c0
	ld bc, $04a0                                     ; $6200: $01 $a0 $04
	nop                                              ; $6203: $00
	call c, $01c0                                    ; $6204: $dc $c0 $01
	and b                                            ; $6207: $a0
	inc b                                            ; $6208: $04
	nop                                              ; $6209: $00
	db $e4                                           ; $620a: $e4
	ret nz                                           ; $620b: $c0

	ld bc, $04a0                                     ; $620c: $01 $a0 $04
	nop                                              ; $620f: $00
	ld [$0cc0], a                                    ; $6210: $ea $c0 $0c
	ldh [$3c], a                                     ; $6213: $e0 $3c
	ret nz                                           ; $6215: $c0

	ld bc, $04a0                                     ; $6216: $01 $a0 $04
	nop                                              ; $6219: $00
	xor $c0                                          ; $621a: $ee $c0
	ld bc, $04a0                                     ; $621c: $01 $a0 $04
	nop                                              ; $621f: $00
	or $c0                                           ; $6220: $f6 $c0
	inc c                                            ; $6222: $0c
	ldh [$5a], a                                     ; $6223: $e0 $5a
	ret nz                                           ; $6225: $c0

	ld bc, $04a0                                     ; $6226: $01 $a0 $04
	nop                                              ; $6229: $00
	ei                                               ; $622a: $fb
	ret nz                                           ; $622b: $c0

	ld bc, $04a0                                     ; $622c: $01 $a0 $04
	ld bc, $c003                                     ; $622f: $01 $03 $c0
	ld bc, $04a0                                     ; $6232: $01 $a0 $04
	ld bc, $c008                                     ; $6235: $01 $08 $c0
	ld bc, $04a0                                     ; $6238: $01 $a0 $04
	ld bc, $c012                                     ; $623b: $01 $12 $c0
	inc c                                            ; $623e: $0c
	ldh [$5a], a                                     ; $623f: $e0 $5a
	pop bc                                           ; $6241: $c1
	or d                                             ; $6242: $b2
	db $e3                                           ; $6243: $e3
	nop                                              ; $6244: $00
	inc a                                            ; $6245: $3c
	ret nz                                           ; $6246: $c0

	ld bc, $04a0                                     ; $6247: $01 $a0 $04
	ld bc, $c01a                                     ; $624a: $01 $1a $c0
	ld bc, $04a0                                     ; $624d: $01 $a0 $04
	ld bc, $c020                                     ; $6250: $01 $20 $c0
	inc c                                            ; $6253: $0c
	ldh [$50], a                                     ; $6254: $e0 $50
	ret nz                                           ; $6256: $c0

	ld bc, $01a0                                     ; $6257: $01 $a0 $01
	ld bc, $c025                                     ; $625a: $01 $25 $c0
	ld bc, $01a0                                     ; $625d: $01 $a0 $01
	ld bc, $c02b                                     ; $6260: $01 $2b $c0
	inc c                                            ; $6263: $0c
	ldh [$50], a                                     ; $6264: $e0 $50
	pop bc                                           ; $6266: $c1
	sbc [hl]                                         ; $6267: $9e
	pop de                                           ; $6268: $d1
	ret nz                                           ; $6269: $c0

	ld bc, $04a0                                     ; $626a: $01 $a0 $04
	ld bc, $c031                                     ; $626d: $01 $31 $c0
	ld bc, $04a0                                     ; $6270: $01 $a0 $04
	ld bc, $c034                                     ; $6273: $01 $34 $c0
	ld bc, $04a0                                     ; $6276: $01 $a0 $04
	ld bc, $c03a                                     ; $6279: $01 $3a $c0
	inc c                                            ; $627c: $0c
	ldh [rAUD3HIGH], a                               ; $627d: $e0 $1e
	ret nz                                           ; $627f: $c0

	ld bc, $04a0                                     ; $6280: $01 $a0 $04
	ld bc, $c040                                     ; $6283: $01 $40 $c0
	ld bc, $04a0                                     ; $6286: $01 $a0 $04
	ld bc, $c044                                     ; $6289: $01 $44 $c0
	ld bc, $04a0                                     ; $628c: $01 $a0 $04
	ld bc, $c04e                                     ; $628f: $01 $4e $c0
	ld bc, $04a0                                     ; $6292: $01 $a0 $04
	ld bc, $c056                                     ; $6295: $01 $56 $c0
	inc c                                            ; $6298: $0c
	ldh [$50], a                                     ; $6299: $e0 $50
	ret nz                                           ; $629b: $c0

	ld bc, $01a0                                     ; $629c: $01 $a0 $01
	ld bc, $c059                                     ; $629f: $01 $59 $c0
	inc c                                            ; $62a2: $0c
	ldh [$50], a                                     ; $62a3: $e0 $50
	ret nz                                           ; $62a5: $c0

	inc c                                            ; $62a6: $0c
	jp c, $9cc1                                      ; $62a7: $da $c1 $9c

	ret nc                                           ; $62aa: $d0

	ret nz                                           ; $62ab: $c0

	ld bc, $04a0                                     ; $62ac: $01 $a0 $04
	ld bc, $c060                                     ; $62af: $01 $60 $c0
	ld bc, $04a0                                     ; $62b2: $01 $a0 $04
	ld bc, $c064                                     ; $62b5: $01 $64 $c0
	ld bc, $04a0                                     ; $62b8: $01 $a0 $04
	ld bc, $c06a                                     ; $62bb: $01 $6a $c0
	inc c                                            ; $62be: $0c
	ldh [$78], a                                     ; $62bf: $e0 $78
	pop bc                                           ; $62c1: $c1
	sbc a                                            ; $62c2: $9f
	jp nc, wPtrToDataCopyStruct                                     ; $62c3: $d2 $08 $c1

	rst AddAOntoHL                                          ; $62c6: $ef
	pop bc                                           ; $62c7: $c1
	adc a                                            ; $62c8: $8f
	pop bc                                           ; $62c9: $c1
	sub b                                            ; $62ca: $90
	pop bc                                           ; $62cb: $c1
	sub [hl]                                         ; $62cc: $96
	ldh [$f0], a                                     ; $62cd: $e0 $f0
	ret nz                                           ; $62cf: $c0

	inc c                                            ; $62d0: $0c
	ldh [$3c], a                                     ; $62d1: $e0 $3c
	pop bc                                           ; $62d3: $c1
	or b                                             ; $62d4: $b0
	jp nc, $d0d8                                     ; $62d5: $d2 $d8 $d0

	ret nz                                           ; $62d8: $c0

	ld bc, $01a0                                     ; $62d9: $01 $a0 $01
	nop                                              ; $62dc: $00
	ld bc, $0cc0                                     ; $62dd: $01 $c0 $0c
	ldh [$50], a                                     ; $62e0: $e0 $50
	ret nz                                           ; $62e2: $c0

	ld bc, $05a0                                     ; $62e3: $01 $a0 $05
	nop                                              ; $62e6: $00
	ld b, $c0                                        ; $62e7: $06 $c0
	ld bc, $05a0                                     ; $62e9: $01 $a0 $05
	nop                                              ; $62ec: $00
	dec bc                                           ; $62ed: $0b
	ret nz                                           ; $62ee: $c0

	inc c                                            ; $62ef: $0c
	ldh [rAUD3HIGH], a                               ; $62f0: $e0 $1e
	ret nz                                           ; $62f2: $c0

	ld bc, $05a0                                     ; $62f3: $01 $a0 $05
	nop                                              ; $62f6: $00
	rrca                                             ; $62f7: $0f
	ret nz                                           ; $62f8: $c0

	ld bc, $05a0                                     ; $62f9: $01 $a0 $05
	nop                                              ; $62fc: $00
	inc de                                           ; $62fd: $13
	ret nz                                           ; $62fe: $c0

	inc c                                            ; $62ff: $0c
	ldh [$50], a                                     ; $6300: $e0 $50
	ret nz                                           ; $6302: $c0

	ld bc, $01a0                                     ; $6303: $01 $a0 $01
	nop                                              ; $6306: $00
	add hl, de                                       ; $6307: $19
	ret nz                                           ; $6308: $c0

	inc c                                            ; $6309: $0c
	ldh [$50], a                                     ; $630a: $e0 $50
	ret nz                                           ; $630c: $c0

	ld bc, $05a0                                     ; $630d: $01 $a0 $05
	nop                                              ; $6310: $00
	ld [hl+], a                                      ; $6311: $22
	ret nz                                           ; $6312: $c0

	inc c                                            ; $6313: $0c
	ldh [$3c], a                                     ; $6314: $e0 $3c
	ret nz                                           ; $6316: $c0

	ld bc, $05a0                                     ; $6317: $01 $a0 $05
	nop                                              ; $631a: $00
	inc h                                            ; $631b: $24
	ret nz                                           ; $631c: $c0

	inc c                                            ; $631d: $0c
	ldh [$5a], a                                     ; $631e: $e0 $5a
	ret nz                                           ; $6320: $c0

	ld bc, $05a0                                     ; $6321: $01 $a0 $05
	nop                                              ; $6324: $00
	dec hl                                           ; $6325: $2b
	ret nz                                           ; $6326: $c0

	ld bc, $05a0                                     ; $6327: $01 $a0 $05
	nop                                              ; $632a: $00
	inc sp                                           ; $632b: $33
	ret nz                                           ; $632c: $c0

	inc c                                            ; $632d: $0c
	ldh [$50], a                                     ; $632e: $e0 $50
	ret nz                                           ; $6330: $c0

	ld bc, $01a0                                     ; $6331: $01 $a0 $01
	nop                                              ; $6334: $00
	ld [hl], $c0                                     ; $6335: $36 $c0
	inc c                                            ; $6337: $0c
	ldh [$3c], a                                     ; $6338: $e0 $3c
	ret nz                                           ; $633a: $c0

	ld bc, $01a0                                     ; $633b: $01 $a0 $01
	nop                                              ; $633e: $00
	inc a                                            ; $633f: $3c
	ret nz                                           ; $6340: $c0

	inc c                                            ; $6341: $0c
	ldh [$3c], a                                     ; $6342: $e0 $3c
	ret nz                                           ; $6344: $c0

	ld bc, $05a0                                     ; $6345: $01 $a0 $05
	nop                                              ; $6348: $00
	ld b, b                                          ; $6349: $40
	ret nz                                           ; $634a: $c0

	ld bc, $05a0                                     ; $634b: $01 $a0 $05
	nop                                              ; $634e: $00
	ld b, [hl]                                       ; $634f: $46
	ret nz                                           ; $6350: $c0

	ld bc, $05a0                                     ; $6351: $01 $a0 $05
	nop                                              ; $6354: $00
	ld c, c                                          ; $6355: $49
	ret nz                                           ; $6356: $c0

	inc c                                            ; $6357: $0c
	ldh [rAUD3HIGH], a                               ; $6358: $e0 $1e
	ret nz                                           ; $635a: $c0

	ld bc, $05a0                                     ; $635b: $01 $a0 $05
	nop                                              ; $635e: $00
	ld d, b                                          ; $635f: $50
	ret nz                                           ; $6360: $c0

	ld bc, $05a0                                     ; $6361: $01 $a0 $05
	nop                                              ; $6364: $00
	ld d, l                                          ; $6365: $55
	ret nz                                           ; $6366: $c0

	inc c                                            ; $6367: $0c
	ldh [$5a], a                                     ; $6368: $e0 $5a
	ret nz                                           ; $636a: $c0

	ld bc, $05a0                                     ; $636b: $01 $a0 $05
	nop                                              ; $636e: $00
	ld e, e                                          ; $636f: $5b
	ret nz                                           ; $6370: $c0

	ld bc, $05a0                                     ; $6371: $01 $a0 $05
	nop                                              ; $6374: $00
	ld h, c                                          ; $6375: $61
	ret nz                                           ; $6376: $c0

	ld bc, $05a0                                     ; $6377: $01 $a0 $05
	nop                                              ; $637a: $00
	ld l, b                                          ; $637b: $68
	ret nz                                           ; $637c: $c0

	ld bc, $05a0                                     ; $637d: $01 $a0 $05
	nop                                              ; $6380: $00
	ld l, a                                          ; $6381: $6f
	ret nz                                           ; $6382: $c0

	ld bc, $05a0                                     ; $6383: $01 $a0 $05
	nop                                              ; $6386: $00
	ld [hl], h                                       ; $6387: $74
	ret nz                                           ; $6388: $c0

	ld bc, $05a0                                     ; $6389: $01 $a0 $05
	nop                                              ; $638c: $00
	ld a, h                                          ; $638d: $7c
	ret nz                                           ; $638e: $c0

	inc c                                            ; $638f: $0c
	ldh [$3c], a                                     ; $6390: $e0 $3c
	ret nz                                           ; $6392: $c0

	ld bc, $05a0                                     ; $6393: $01 $a0 $05
	nop                                              ; $6396: $00
	add l                                            ; $6397: $85
	ret nz                                           ; $6398: $c0

	ld bc, $05a0                                     ; $6399: $01 $a0 $05
	nop                                              ; $639c: $00
	adc c                                            ; $639d: $89
	ret nz                                           ; $639e: $c0

	ld bc, $05a0                                     ; $639f: $01 $a0 $05
	nop                                              ; $63a2: $00
	sub b                                            ; $63a3: $90
	ret nz                                           ; $63a4: $c0

	ld bc, $05a0                                     ; $63a5: $01 $a0 $05
	nop                                              ; $63a8: $00
	sub l                                            ; $63a9: $95
	ret nz                                           ; $63aa: $c0

	ld bc, $05a0                                     ; $63ab: $01 $a0 $05
	nop                                              ; $63ae: $00
	sbc l                                            ; $63af: $9d
	ret nz                                           ; $63b0: $c0

	ld bc, $05a0                                     ; $63b1: $01 $a0 $05
	nop                                              ; $63b4: $00
	and e                                            ; $63b5: $a3
	ret nz                                           ; $63b6: $c0

	inc c                                            ; $63b7: $0c
	ldh [$3c], a                                     ; $63b8: $e0 $3c
	ret nz                                           ; $63ba: $c0

	ld bc, $05a0                                     ; $63bb: $01 $a0 $05
	nop                                              ; $63be: $00
	xor e                                            ; $63bf: $ab
	ret nz                                           ; $63c0: $c0

	ld bc, $05a0                                     ; $63c1: $01 $a0 $05
	nop                                              ; $63c4: $00
	or b                                             ; $63c5: $b0
	ret nz                                           ; $63c6: $c0

	inc c                                            ; $63c7: $0c
	ldh [$78], a                                     ; $63c8: $e0 $78
	ret nz                                           ; $63ca: $c0

	ld bc, $05a0                                     ; $63cb: $01 $a0 $05
	nop                                              ; $63ce: $00
	or [hl]                                          ; $63cf: $b6
	ret nz                                           ; $63d0: $c0

	ld bc, $05a0                                     ; $63d1: $01 $a0 $05
	nop                                              ; $63d4: $00
	cp b                                             ; $63d5: $b8
	ret nz                                           ; $63d6: $c0

	ld bc, $05a0                                     ; $63d7: $01 $a0 $05
	nop                                              ; $63da: $00
	cp [hl]                                          ; $63db: $be
	ret nz                                           ; $63dc: $c0

	ld bc, $05a0                                     ; $63dd: $01 $a0 $05
	nop                                              ; $63e0: $00
	ret z                                            ; $63e1: $c8

	ret nz                                           ; $63e2: $c0

	inc c                                            ; $63e3: $0c
	ldh [$3c], a                                     ; $63e4: $e0 $3c
	ret nz                                           ; $63e6: $c0

	ld bc, $05a0                                     ; $63e7: $01 $a0 $05
	nop                                              ; $63ea: $00
	adc $c0                                          ; $63eb: $ce $c0
	ld bc, $05a0                                     ; $63ed: $01 $a0 $05
	nop                                              ; $63f0: $00
	db $d3                                           ; $63f1: $d3
	ret nz                                           ; $63f2: $c0

	ld bc, $05a0                                     ; $63f3: $01 $a0 $05
	nop                                              ; $63f6: $00
	reti                                             ; $63f7: $d9


	ret nz                                           ; $63f8: $c0

	ld bc, $05a0                                     ; $63f9: $01 $a0 $05
	nop                                              ; $63fc: $00
	sbc $c0                                          ; $63fd: $de $c0
	ld bc, $05a0                                     ; $63ff: $01 $a0 $05
	nop                                              ; $6402: $00
	db $e3                                           ; $6403: $e3
	ret nz                                           ; $6404: $c0

	ld bc, $05a0                                     ; $6405: $01 $a0 $05
	nop                                              ; $6408: $00
	ld [$0cc0], a                                    ; $6409: $ea $c0 $0c
	ldh [$5a], a                                     ; $640c: $e0 $5a
	pop bc                                           ; $640e: $c1
	or d                                             ; $640f: $b2
	db $e3                                           ; $6410: $e3
	nop                                              ; $6411: $00
	ld c, e                                          ; $6412: $4b
	ret nz                                           ; $6413: $c0

	ld bc, $05a0                                     ; $6414: $01 $a0 $05
	nop                                              ; $6417: $00
	db $ed                                           ; $6418: $ed
	ret nz                                           ; $6419: $c0

	ld bc, $05a0                                     ; $641a: $01 $a0 $05
	nop                                              ; $641d: $00
	ldh a, [c]                                       ; $641e: $f2
	ret nz                                           ; $641f: $c0

	ld bc, $05a0                                     ; $6420: $01 $a0 $05
	nop                                              ; $6423: $00
	rst FarCall                                          ; $6424: $f7
	ret nz                                           ; $6425: $c0

	inc c                                            ; $6426: $0c
	ldh [$3c], a                                     ; $6427: $e0 $3c
	ret nz                                           ; $6429: $c0

	ld bc, $05a0                                     ; $642a: $01 $a0 $05
	nop                                              ; $642d: $00
	ei                                               ; $642e: $fb
	ret nz                                           ; $642f: $c0

	ld bc, $05a0                                     ; $6430: $01 $a0 $05
	nop                                              ; $6433: $00
	rst $38                                          ; $6434: $ff
	ret nz                                           ; $6435: $c0

	inc c                                            ; $6436: $0c
	ldh [$50], a                                     ; $6437: $e0 $50
	ret nz                                           ; $6439: $c0

	ld bc, $01a0                                     ; $643a: $01 $a0 $01
	ld bc, $c003                                     ; $643d: $01 $03 $c0
	ld bc, $01a0                                     ; $6440: $01 $a0 $01
	ld bc, $c009                                     ; $6443: $01 $09 $c0
	inc c                                            ; $6446: $0c
	ldh [$50], a                                     ; $6447: $e0 $50
	ret nz                                           ; $6449: $c0

	ld bc, $05a0                                     ; $644a: $01 $a0 $05
	ld bc, $c00e                                     ; $644d: $01 $0e $c0
	ld bc, $05a0                                     ; $6450: $01 $a0 $05
	ld bc, $c011                                     ; $6453: $01 $11 $c0
	inc c                                            ; $6456: $0c
	ldh [$3c], a                                     ; $6457: $e0 $3c
	ret nz                                           ; $6459: $c0

	ld bc, $01a0                                     ; $645a: $01 $a0 $01
	ld bc, $c014                                     ; $645d: $01 $14 $c0
	ld bc, $01a0                                     ; $6460: $01 $a0 $01
	ld bc, $c01a                                     ; $6463: $01 $1a $c0
	inc c                                            ; $6466: $0c
	ldh [$3c], a                                     ; $6467: $e0 $3c
	ret nz                                           ; $6469: $c0

	ld bc, $05a0                                     ; $646a: $01 $a0 $05
	ld bc, $c01f                                     ; $646d: $01 $1f $c0
	ld bc, $05a0                                     ; $6470: $01 $a0 $05
	ld bc, $c023                                     ; $6473: $01 $23 $c0
	inc c                                            ; $6476: $0c
	ldh [$3c], a                                     ; $6477: $e0 $3c
	ret nz                                           ; $6479: $c0

	ld bc, $01a0                                     ; $647a: $01 $a0 $01
	ld bc, $c025                                     ; $647d: $01 $25 $c0
	ld bc, $01a0                                     ; $6480: $01 $a0 $01
	ld bc, $c02d                                     ; $6483: $01 $2d $c0
	inc c                                            ; $6486: $0c
	ldh [$3c], a                                     ; $6487: $e0 $3c
	pop bc                                           ; $6489: $c1
	sbc [hl]                                         ; $648a: $9e
	pop de                                           ; $648b: $d1
	ret nz                                           ; $648c: $c0

	ld bc, $05a0                                     ; $648d: $01 $a0 $05
	ld bc, $c031                                     ; $6490: $01 $31 $c0
	ld bc, $05a0                                     ; $6493: $01 $a0 $05
	ld bc, $c033                                     ; $6496: $01 $33 $c0
	ld bc, $05a0                                     ; $6499: $01 $a0 $05
	ld bc, $c036                                     ; $649c: $01 $36 $c0
	ld bc, $05a0                                     ; $649f: $01 $a0 $05
	ld bc, $c03b                                     ; $64a2: $01 $3b $c0
	ld bc, $05a0                                     ; $64a5: $01 $a0 $05
	ld bc, $c041                                     ; $64a8: $01 $41 $c0
	ld bc, $05a0                                     ; $64ab: $01 $a0 $05
	ld bc, $c048                                     ; $64ae: $01 $48 $c0
	inc c                                            ; $64b1: $0c
	ldh [$78], a                                     ; $64b2: $e0 $78
	pop bc                                           ; $64b4: $c1
	sbc a                                            ; $64b5: $9f
	jp nc, $c208                                     ; $64b6: $d2 $08 $c2

	dec e                                            ; $64b9: $1d
	pop bc                                           ; $64ba: $c1
	adc a                                            ; $64bb: $8f
	pop bc                                           ; $64bc: $c1
	sub b                                            ; $64bd: $90
	pop bc                                           ; $64be: $c1
	sub [hl]                                         ; $64bf: $96
	ldh [$f0], a                                     ; $64c0: $e0 $f0
	ret nz                                           ; $64c2: $c0

	inc c                                            ; $64c3: $0c
	ldh [$3c], a                                     ; $64c4: $e0 $3c
	pop bc                                           ; $64c6: $c1
	or b                                             ; $64c7: $b0
	jp nc, $d0d8                                     ; $64c8: $d2 $d8 $d0

	ret nz                                           ; $64cb: $c0

	ld bc, $01a0                                     ; $64cc: $01 $a0 $01
	nop                                              ; $64cf: $00
	ld bc, $0cc0                                     ; $64d0: $01 $c0 $0c
	ldh [$50], a                                     ; $64d3: $e0 $50
	ret nz                                           ; $64d5: $c0

	ld bc, $08a0                                     ; $64d6: $01 $a0 $08
	nop                                              ; $64d9: $00
	ld b, $c0                                        ; $64da: $06 $c0
	ld bc, $08a0                                     ; $64dc: $01 $a0 $08
	nop                                              ; $64df: $00
	db $10                                           ; $64e0: $10
	ret nz                                           ; $64e1: $c0

	inc c                                            ; $64e2: $0c
	ldh [$50], a                                     ; $64e3: $e0 $50
	ret nz                                           ; $64e5: $c0

	ld bc, $01a0                                     ; $64e6: $01 $a0 $01
	nop                                              ; $64e9: $00
	ld [de], a                                       ; $64ea: $12
	ret nz                                           ; $64eb: $c0

	ld bc, $01a0                                     ; $64ec: $01 $a0 $01
	nop                                              ; $64ef: $00
	rla                                              ; $64f0: $17
	ret nz                                           ; $64f1: $c0

	inc c                                            ; $64f2: $0c
	ldh [$50], a                                     ; $64f3: $e0 $50
	ret nz                                           ; $64f5: $c0

	ld bc, $08a0                                     ; $64f6: $01 $a0 $08
	nop                                              ; $64f9: $00
	dec e                                            ; $64fa: $1d
	ret nz                                           ; $64fb: $c0

	inc c                                            ; $64fc: $0c
	ldh [$3c], a                                     ; $64fd: $e0 $3c
	ret nz                                           ; $64ff: $c0

	ld bc, $08a0                                     ; $6500: $01 $a0 $08
	nop                                              ; $6503: $00
	dec h                                            ; $6504: $25
	ret nz                                           ; $6505: $c0

	ld bc, $08a0                                     ; $6506: $01 $a0 $08
	nop                                              ; $6509: $00
	add hl, hl                                       ; $650a: $29
	ret nz                                           ; $650b: $c0

	inc c                                            ; $650c: $0c
	ldh [$50], a                                     ; $650d: $e0 $50
	ret nz                                           ; $650f: $c0

	ld bc, $01a0                                     ; $6510: $01 $a0 $01
	nop                                              ; $6513: $00
	ld l, $c0                                        ; $6514: $2e $c0
	inc c                                            ; $6516: $0c
	ldh [$3c], a                                     ; $6517: $e0 $3c
	ret nz                                           ; $6519: $c0

	ld bc, $08a0                                     ; $651a: $01 $a0 $08
	nop                                              ; $651d: $00
	inc sp                                           ; $651e: $33
	ret nz                                           ; $651f: $c0

	ld bc, $08a0                                     ; $6520: $01 $a0 $08
	nop                                              ; $6523: $00
	add hl, sp                                       ; $6524: $39
	ret nz                                           ; $6525: $c0

	ld bc, $08a0                                     ; $6526: $01 $a0 $08
	nop                                              ; $6529: $00
	ld b, c                                          ; $652a: $41
	ret nz                                           ; $652b: $c0

	ld bc, $08a0                                     ; $652c: $01 $a0 $08
	nop                                              ; $652f: $00
	ld b, a                                          ; $6530: $47
	ret nz                                           ; $6531: $c0

	ld bc, $08a0                                     ; $6532: $01 $a0 $08
	nop                                              ; $6535: $00
	ld c, a                                          ; $6536: $4f
	ret nz                                           ; $6537: $c0

	inc c                                            ; $6538: $0c
	ldh [$50], a                                     ; $6539: $e0 $50
	ret nz                                           ; $653b: $c0

	ld bc, $08a0                                     ; $653c: $01 $a0 $08
	nop                                              ; $653f: $00
	ld d, c                                          ; $6540: $51
	ret nz                                           ; $6541: $c0

	ld bc, $08a0                                     ; $6542: $01 $a0 $08
	nop                                              ; $6545: $00
	ld e, b                                          ; $6546: $58
	ret nz                                           ; $6547: $c0

	ld bc, $08a0                                     ; $6548: $01 $a0 $08
	nop                                              ; $654b: $00
	ld e, l                                          ; $654c: $5d
	ret nz                                           ; $654d: $c0

	ld bc, $08a0                                     ; $654e: $01 $a0 $08
	nop                                              ; $6551: $00
	ld h, l                                          ; $6552: $65
	ret nz                                           ; $6553: $c0

	ld bc, $08a0                                     ; $6554: $01 $a0 $08
	nop                                              ; $6557: $00
	ld l, [hl]                                       ; $6558: $6e
	ret nz                                           ; $6559: $c0

	inc c                                            ; $655a: $0c
	ldh [$50], a                                     ; $655b: $e0 $50
	ret nz                                           ; $655d: $c0

	ld bc, $08a0                                     ; $655e: $01 $a0 $08
	nop                                              ; $6561: $00
	ld [hl], c                                       ; $6562: $71
	ret nz                                           ; $6563: $c0

	ld bc, $08a0                                     ; $6564: $01 $a0 $08
	nop                                              ; $6567: $00
	ld a, b                                          ; $6568: $78
	ret nz                                           ; $6569: $c0

	inc c                                            ; $656a: $0c
	ldh [$3c], a                                     ; $656b: $e0 $3c
	ret nz                                           ; $656d: $c0

	ld bc, $08a0                                     ; $656e: $01 $a0 $08
	nop                                              ; $6571: $00
	add d                                            ; $6572: $82
	ret nz                                           ; $6573: $c0

	ld bc, $08a0                                     ; $6574: $01 $a0 $08
	nop                                              ; $6577: $00
	add l                                            ; $6578: $85
	ret nz                                           ; $6579: $c0

	ld bc, $08a0                                     ; $657a: $01 $a0 $08
	nop                                              ; $657d: $00
	sub b                                            ; $657e: $90
	ret nz                                           ; $657f: $c0

	inc c                                            ; $6580: $0c
	ldh [$50], a                                     ; $6581: $e0 $50
	ret nz                                           ; $6583: $c0

	ld bc, $01a0                                     ; $6584: $01 $a0 $01
	nop                                              ; $6587: $00
	sbc c                                            ; $6588: $99
	ret nz                                           ; $6589: $c0

	inc c                                            ; $658a: $0c
	ldh [$50], a                                     ; $658b: $e0 $50
	ret nz                                           ; $658d: $c0

	ld bc, $08a0                                     ; $658e: $01 $a0 $08
	nop                                              ; $6591: $00
	and b                                            ; $6592: $a0
	ret nz                                           ; $6593: $c0

	inc c                                            ; $6594: $0c
	ldh [$3c], a                                     ; $6595: $e0 $3c
	ret nz                                           ; $6597: $c0

	ld bc, $08a0                                     ; $6598: $01 $a0 $08
	nop                                              ; $659b: $00
	and l                                            ; $659c: $a5
	ret nz                                           ; $659d: $c0

	ld bc, $08a0                                     ; $659e: $01 $a0 $08
	nop                                              ; $65a1: $00
	xor [hl]                                         ; $65a2: $ae
	ret nz                                           ; $65a3: $c0

	inc c                                            ; $65a4: $0c
	ldh [$3c], a                                     ; $65a5: $e0 $3c
	ret nz                                           ; $65a7: $c0

	ld bc, $08a0                                     ; $65a8: $01 $a0 $08
	nop                                              ; $65ab: $00
	or d                                             ; $65ac: $b2
	ret nz                                           ; $65ad: $c0

	ld bc, $08a0                                     ; $65ae: $01 $a0 $08
	nop                                              ; $65b1: $00
	cp b                                             ; $65b2: $b8
	ret nz                                           ; $65b3: $c0

	inc c                                            ; $65b4: $0c
	ldh [$3c], a                                     ; $65b5: $e0 $3c
	ret nz                                           ; $65b7: $c0

	ld bc, $08a0                                     ; $65b8: $01 $a0 $08
	nop                                              ; $65bb: $00
	pop bc                                           ; $65bc: $c1
	ret nz                                           ; $65bd: $c0

	ld bc, $08a0                                     ; $65be: $01 $a0 $08
	nop                                              ; $65c1: $00
	jp $01c0                                         ; $65c2: $c3 $c0 $01


	and b                                            ; $65c5: $a0
	ld [$cc00], sp                                   ; $65c6: $08 $00 $cc
	ret nz                                           ; $65c9: $c0

	ld bc, $08a0                                     ; $65ca: $01 $a0 $08
	nop                                              ; $65cd: $00
	sub $c0                                          ; $65ce: $d6 $c0
	ld bc, $08a0                                     ; $65d0: $01 $a0 $08
	nop                                              ; $65d3: $00
	ldh [$c0], a                                     ; $65d4: $e0 $c0
	ld bc, $08a0                                     ; $65d6: $01 $a0 $08
	nop                                              ; $65d9: $00
	add sp, -$40                                     ; $65da: $e8 $c0
	ld bc, $08a0                                     ; $65dc: $01 $a0 $08
	nop                                              ; $65df: $00
	ldh a, [$c0]                                     ; $65e0: $f0 $c0
	ld bc, $08a0                                     ; $65e2: $01 $a0 $08

Jump_089_65e5:
	nop                                              ; $65e5: $00
	rst FarCall                                          ; $65e6: $f7
	ret nz                                           ; $65e7: $c0

	inc c                                            ; $65e8: $0c
	ldh [$3c], a                                     ; $65e9: $e0 $3c
	ret nz                                           ; $65eb: $c0

	ld bc, $08a0                                     ; $65ec: $01 $a0 $08
	nop                                              ; $65ef: $00
	cp $c0                                           ; $65f0: $fe $c0
	ld bc, $08a0                                     ; $65f2: $01 $a0 $08
	ld bc, $c006                                     ; $65f5: $01 $06 $c0
	ld bc, $08a0                                     ; $65f8: $01 $a0 $08
	ld bc, $c00e                                     ; $65fb: $01 $0e $c0
	ld bc, $08a0                                     ; $65fe: $01 $a0 $08
	ld bc, $c016                                     ; $6601: $01 $16 $c0
	ld bc, $08a0                                     ; $6604: $01 $a0 $08
	ld bc, $c01b                                     ; $6607: $01 $1b $c0
	ld bc, $08a0                                     ; $660a: $01 $a0 $08
	ld bc, $c020                                     ; $660d: $01 $20 $c0
	inc c                                            ; $6610: $0c
	ldh [$3c], a                                     ; $6611: $e0 $3c
	ret nz                                           ; $6613: $c0

	ld bc, $08a0                                     ; $6614: $01 $a0 $08
	ld bc, $c026                                     ; $6617: $01 $26 $c0
	ld bc, $08a0                                     ; $661a: $01 $a0 $08
	ld bc, $c02a                                     ; $661d: $01 $2a $c0
	ld bc, $08a0                                     ; $6620: $01 $a0 $08
	ld bc, $c033                                     ; $6623: $01 $33 $c0
	ld bc, $08a0                                     ; $6626: $01 $a0 $08
	ld bc, $c03b                                     ; $6629: $01 $3b $c0
	ld bc, $08a0                                     ; $662c: $01 $a0 $08
	ld bc, $c043                                     ; $662f: $01 $43 $c0
	ld bc, $08a0                                     ; $6632: $01 $a0 $08
	ld bc, $c04b                                     ; $6635: $01 $4b $c0
	ld bc, $08a0                                     ; $6638: $01 $a0 $08
	ld bc, $c055                                     ; $663b: $01 $55 $c0
	inc c                                            ; $663e: $0c
	ldh [$5a], a                                     ; $663f: $e0 $5a
	pop bc                                           ; $6641: $c1
	or d                                             ; $6642: $b2
	db $e3                                           ; $6643: $e3
	nop                                              ; $6644: $00
	ld e, c                                          ; $6645: $59
	ret nz                                           ; $6646: $c0

	ld bc, $08a0                                     ; $6647: $01 $a0 $08
	ld bc, $c05b                                     ; $664a: $01 $5b $c0
	ld bc, $08a0                                     ; $664d: $01 $a0 $08
	ld bc, $c05e                                     ; $6650: $01 $5e $c0
	ld bc, $08a0                                     ; $6653: $01 $a0 $08
	ld bc, $c066                                     ; $6656: $01 $66 $c0
	inc c                                            ; $6659: $0c
	ldh [$50], a                                     ; $665a: $e0 $50
	ret nz                                           ; $665c: $c0

	ld bc, $01a0                                     ; $665d: $01 $a0 $01
	ld bc, $c069                                     ; $6660: $01 $69 $c0
	inc c                                            ; $6663: $0c
	ldh [$3c], a                                     ; $6664: $e0 $3c
	ret nz                                           ; $6666: $c0

	ld bc, $08a0                                     ; $6667: $01 $a0 $08
	ld bc, $c070                                     ; $666a: $01 $70 $c0
	inc c                                            ; $666d: $0c
	ldh [$3c], a                                     ; $666e: $e0 $3c
	ret nz                                           ; $6670: $c0

	ld bc, $01a0                                     ; $6671: $01 $a0 $01
	ld bc, $c076                                     ; $6674: $01 $76 $c0
	ld bc, $01a0                                     ; $6677: $01 $a0 $01
	ld bc, $c07a                                     ; $667a: $01 $7a $c0
	inc c                                            ; $667d: $0c
	ldh [$3c], a                                     ; $667e: $e0 $3c
	pop bc                                           ; $6680: $c1
	sbc [hl]                                         ; $6681: $9e
	pop de                                           ; $6682: $d1
	ret nz                                           ; $6683: $c0

	ld bc, $08a0                                     ; $6684: $01 $a0 $08
	ld bc, $c080                                     ; $6687: $01 $80 $c0
	ld bc, $08a0                                     ; $668a: $01 $a0 $08
	ld bc, $c082                                     ; $668d: $01 $82 $c0
	ld bc, $08a0                                     ; $6690: $01 $a0 $08
	ld bc, $c085                                     ; $6693: $01 $85 $c0
	ld bc, $08a0                                     ; $6696: $01 $a0 $08
	ld bc, $c088                                     ; $6699: $01 $88 $c0
	inc c                                            ; $669c: $0c
	ldh [$50], a                                     ; $669d: $e0 $50
	ret nz                                           ; $669f: $c0

	ld bc, $01a0                                     ; $66a0: $01 $a0 $01
	ld bc, $c090                                     ; $66a3: $01 $90 $c0
	ld bc, $01a0                                     ; $66a6: $01 $a0 $01
	ld bc, $c098                                     ; $66a9: $01 $98 $c0
	inc c                                            ; $66ac: $0c
	ldh [$3c], a                                     ; $66ad: $e0 $3c
	ret nz                                           ; $66af: $c0

	ld bc, $08a0                                     ; $66b0: $01 $a0 $08
	ld bc, $c09e                                     ; $66b3: $01 $9e $c0
	ld bc, $08a0                                     ; $66b6: $01 $a0 $08
	ld bc, $c0a1                                     ; $66b9: $01 $a1 $c0
	ld bc, $08a0                                     ; $66bc: $01 $a0 $08
	ld bc, $c0a8                                     ; $66bf: $01 $a8 $c0
	inc c                                            ; $66c2: $0c
	ldh [$3c], a                                     ; $66c3: $e0 $3c
	ret nz                                           ; $66c5: $c0

	ld bc, $01a0                                     ; $66c6: $01 $a0 $01
	ld bc, $c0b1                                     ; $66c9: $01 $b1 $c0
	ld bc, $01a0                                     ; $66cc: $01 $a0 $01
	ld bc, $c0b8                                     ; $66cf: $01 $b8 $c0
	inc c                                            ; $66d2: $0c
	ldh [$78], a                                     ; $66d3: $e0 $78
	pop bc                                           ; $66d5: $c1
	sbc a                                            ; $66d6: $9f
	jp nc, wPtrToDataCopyStruct                                     ; $66d7: $d2 $08 $c1

	ld a, [hl]                                       ; $66da: $7e
	pop bc                                           ; $66db: $c1
	adc a                                            ; $66dc: $8f
	pop bc                                           ; $66dd: $c1
	sub b                                            ; $66de: $90
	pop bc                                           ; $66df: $c1
	sub [hl]                                         ; $66e0: $96
	ldh [$f0], a                                     ; $66e1: $e0 $f0
	ret nz                                           ; $66e3: $c0

	inc c                                            ; $66e4: $0c
	ldh [$3c], a                                     ; $66e5: $e0 $3c
	pop bc                                           ; $66e7: $c1
	or b                                             ; $66e8: $b0
	jp nc, $d0d8                                     ; $66e9: $d2 $d8 $d0

	ret nz                                           ; $66ec: $c0

	ld bc, $01a0                                     ; $66ed: $01 $a0 $01
	nop                                              ; $66f0: $00
	ld bc, $0cc0                                     ; $66f1: $01 $c0 $0c
	ldh [$50], a                                     ; $66f4: $e0 $50
	ret nz                                           ; $66f6: $c0

jr_089_66f7:
	ld bc, $09a0                                     ; $66f7: $01 $a0 $09
	nop                                              ; $66fa: $00
	ld b, $c0                                        ; $66fb: $06 $c0
	ld bc, $09a0                                     ; $66fd: $01 $a0 $09
	nop                                              ; $6700: $00
	ld c, $c0                                        ; $6701: $0e $c0
	inc c                                            ; $6703: $0c
	ldh [$5a], a                                     ; $6704: $e0 $5a
	ret nz                                           ; $6706: $c0

	ld bc, $09a0                                     ; $6707: $01 $a0 $09
	nop                                              ; $670a: $00
	inc de                                           ; $670b: $13
	ret nz                                           ; $670c: $c0

	ld bc, $09a0                                     ; $670d: $01 $a0 $09
	nop                                              ; $6710: $00
	add hl, de                                       ; $6711: $19
	ret nz                                           ; $6712: $c0

	inc c                                            ; $6713: $0c
	ldh [$3c], a                                     ; $6714: $e0 $3c
	ret nz                                           ; $6716: $c0

	ld bc, $09a0                                     ; $6717: $01 $a0 $09
	nop                                              ; $671a: $00
	ld hl, $0cc0                                     ; $671b: $21 $c0 $0c
	ldh [$50], a                                     ; $671e: $e0 $50
	ret nz                                           ; $6720: $c0

	ld bc, $01a0                                     ; $6721: $01 $a0 $01
	nop                                              ; $6724: $00
	dec h                                            ; $6725: $25
	ret nz                                           ; $6726: $c0

	inc c                                            ; $6727: $0c
	ldh [$50], a                                     ; $6728: $e0 $50
	ret nz                                           ; $672a: $c0

	ld bc, $09a0                                     ; $672b: $01 $a0 $09
	nop                                              ; $672e: $00
	inc l                                            ; $672f: $2c
	ret nz                                           ; $6730: $c0

	ld bc, $09a0                                     ; $6731: $01 $a0 $09
	nop                                              ; $6734: $00
	jr nc, jr_089_66f7                               ; $6735: $30 $c0

	ld bc, $09a0                                     ; $6737: $01 $a0 $09
	nop                                              ; $673a: $00
	add hl, sp                                       ; $673b: $39
	ret nz                                           ; $673c: $c0

	ld bc, $09a0                                     ; $673d: $01 $a0 $09
	nop                                              ; $6740: $00
	dec a                                            ; $6741: $3d
	ret nz                                           ; $6742: $c0

	inc c                                            ; $6743: $0c
	ldh [$3c], a                                     ; $6744: $e0 $3c
	ret nz                                           ; $6746: $c0

	ld bc, $09a0                                     ; $6747: $01 $a0 $09
	nop                                              ; $674a: $00
	ld b, h                                          ; $674b: $44
	ret nz                                           ; $674c: $c0

	ld bc, $09a0                                     ; $674d: $01 $a0 $09
	nop                                              ; $6750: $00
	ld c, h                                          ; $6751: $4c
	ret nz                                           ; $6752: $c0

	inc c                                            ; $6753: $0c
	ldh [$5a], a                                     ; $6754: $e0 $5a
	ret nz                                           ; $6756: $c0

	ld bc, $09a0                                     ; $6757: $01 $a0 $09
	nop                                              ; $675a: $00
	ld d, h                                          ; $675b: $54
	ret nz                                           ; $675c: $c0

	ld bc, $09a0                                     ; $675d: $01 $a0 $09
	nop                                              ; $6760: $00
	ld e, l                                          ; $6761: $5d
	ret nz                                           ; $6762: $c0

	ld bc, $09a0                                     ; $6763: $01 $a0 $09
	nop                                              ; $6766: $00
	ld h, e                                          ; $6767: $63
	ret nz                                           ; $6768: $c0

	ld bc, $09a0                                     ; $6769: $01 $a0 $09
	nop                                              ; $676c: $00
	ld h, a                                          ; $676d: $67
	ret nz                                           ; $676e: $c0

	inc c                                            ; $676f: $0c
	ldh [$50], a                                     ; $6770: $e0 $50
	ret nz                                           ; $6772: $c0

	ld bc, $01a0                                     ; $6773: $01 $a0 $01
	nop                                              ; $6776: $00
	ld l, [hl]                                       ; $6777: $6e
	ret nz                                           ; $6778: $c0

	inc c                                            ; $6779: $0c
	ldh [$3c], a                                     ; $677a: $e0 $3c
	ret nz                                           ; $677c: $c0

	ld bc, $09a0                                     ; $677d: $01 $a0 $09
	nop                                              ; $6780: $00
	ld [hl], a                                       ; $6781: $77
	ret nz                                           ; $6782: $c0

	ld bc, $09a0                                     ; $6783: $01 $a0 $09
	nop                                              ; $6786: $00
	add b                                            ; $6787: $80
	ret nz                                           ; $6788: $c0

	ld bc, $09a0                                     ; $6789: $01 $a0 $09
	nop                                              ; $678c: $00
	adc b                                            ; $678d: $88
	ret nz                                           ; $678e: $c0

	inc c                                            ; $678f: $0c
	ldh [$50], a                                     ; $6790: $e0 $50
	ret nz                                           ; $6792: $c0

	ld bc, $01a0                                     ; $6793: $01 $a0 $01
	nop                                              ; $6796: $00
	adc h                                            ; $6797: $8c
	ret nz                                           ; $6798: $c0

	inc c                                            ; $6799: $0c
	ldh [$50], a                                     ; $679a: $e0 $50
	ret nz                                           ; $679c: $c0

	ld bc, $09a0                                     ; $679d: $01 $a0 $09
	nop                                              ; $67a0: $00
	sub e                                            ; $67a1: $93
	ret nz                                           ; $67a2: $c0

	ld bc, $09a0                                     ; $67a3: $01 $a0 $09
	nop                                              ; $67a6: $00
	sbc b                                            ; $67a7: $98
	ret nz                                           ; $67a8: $c0

	ld bc, $09a0                                     ; $67a9: $01 $a0 $09
	nop                                              ; $67ac: $00
	sbc l                                            ; $67ad: $9d
	ret nz                                           ; $67ae: $c0

	inc c                                            ; $67af: $0c
	ldh [$3c], a                                     ; $67b0: $e0 $3c
	pop bc                                           ; $67b2: $c1
	or d                                             ; $67b3: $b2
	db $e3                                           ; $67b4: $e3
	nop                                              ; $67b5: $00
	ld l, c                                          ; $67b6: $69
	ret nz                                           ; $67b7: $c0

	ld bc, $09a0                                     ; $67b8: $01 $a0 $09
	nop                                              ; $67bb: $00
	and h                                            ; $67bc: $a4
	ret nz                                           ; $67bd: $c0

	ld bc, $09a0                                     ; $67be: $01 $a0 $09
	nop                                              ; $67c1: $00
	xor h                                            ; $67c2: $ac
	ret nz                                           ; $67c3: $c0

	ld bc, $09a0                                     ; $67c4: $01 $a0 $09
	nop                                              ; $67c7: $00
	or b                                             ; $67c8: $b0
	pop bc                                           ; $67c9: $c1
	or d                                             ; $67ca: $b2
	db $e3                                           ; $67cb: $e3
	nop                                              ; $67cc: $00
	ld l, d                                          ; $67cd: $6a
	ret nz                                           ; $67ce: $c0

	ld bc, $09a0                                     ; $67cf: $01 $a0 $09
	nop                                              ; $67d2: $00
	or a                                             ; $67d3: $b7
	ret nz                                           ; $67d4: $c0

	inc c                                            ; $67d5: $0c
	ldh [$50], a                                     ; $67d6: $e0 $50
	ret nz                                           ; $67d8: $c0

	ld bc, $01a0                                     ; $67d9: $01 $a0 $01
	nop                                              ; $67dc: $00
	cp a                                             ; $67dd: $bf
	ret nz                                           ; $67de: $c0

	ld bc, $01a0                                     ; $67df: $01 $a0 $01
	nop                                              ; $67e2: $00
	call nz, $0cc0                                   ; $67e3: $c4 $c0 $0c
	ldh [$50], a                                     ; $67e6: $e0 $50
	pop bc                                           ; $67e8: $c1
	sbc [hl]                                         ; $67e9: $9e
	pop de                                           ; $67ea: $d1
	ret nz                                           ; $67eb: $c0

	ld bc, $09a0                                     ; $67ec: $01 $a0 $09
	nop                                              ; $67ef: $00
	ret                                              ; $67f0: $c9


	ret nz                                           ; $67f1: $c0

	ld bc, $09a0                                     ; $67f2: $01 $a0 $09
	nop                                              ; $67f5: $00
	call $01c0                                       ; $67f6: $cd $c0 $01
	and b                                            ; $67f9: $a0
	add hl, bc                                       ; $67fa: $09
	nop                                              ; $67fb: $00
	pop de                                           ; $67fc: $d1
	ret nz                                           ; $67fd: $c0

	ld bc, $09a0                                     ; $67fe: $01 $a0 $09
	nop                                              ; $6801: $00
	ret c                                            ; $6802: $d8

	ret nz                                           ; $6803: $c0

	ld bc, $09a0                                     ; $6804: $01 $a0 $09
	nop                                              ; $6807: $00
	pop hl                                           ; $6808: $e1
	ret nz                                           ; $6809: $c0

	inc c                                            ; $680a: $0c
	ldh [$3c], a                                     ; $680b: $e0 $3c
	ret nz                                           ; $680d: $c0

	ld bc, $01a0                                     ; $680e: $01 $a0 $01
	nop                                              ; $6811: $00
	push hl                                          ; $6812: $e5
	ret nz                                           ; $6813: $c0

	inc c                                            ; $6814: $0c
	ldh [$3c], a                                     ; $6815: $e0 $3c
	ret nz                                           ; $6817: $c0

	ld bc, $09a0                                     ; $6818: $01 $a0 $09
	nop                                              ; $681b: $00
	jp hl                                            ; $681c: $e9


	ret nz                                           ; $681d: $c0

	ld bc, $09a0                                     ; $681e: $01 $a0 $09
	nop                                              ; $6821: $00
	xor $c0                                          ; $6822: $ee $c0
	inc c                                            ; $6824: $0c
	ldh [$3c], a                                     ; $6825: $e0 $3c
	ret nz                                           ; $6827: $c0

	ld bc, $01a0                                     ; $6828: $01 $a0 $01
	nop                                              ; $682b: $00
	di                                               ; $682c: $f3
	ret nz                                           ; $682d: $c0

	inc c                                            ; $682e: $0c
	ldh [$3c], a                                     ; $682f: $e0 $3c
	ret nz                                           ; $6831: $c0

	ld bc, $09a0                                     ; $6832: $01 $a0 $09
	nop                                              ; $6835: $00
	rst FarCall                                          ; $6836: $f7
	ret nz                                           ; $6837: $c0

	ld bc, $09a0                                     ; $6838: $01 $a0 $09
	nop                                              ; $683b: $00
	db $fc                                           ; $683c: $fc
	ret nz                                           ; $683d: $c0

	ld bc, $09a0                                     ; $683e: $01 $a0 $09
	ld bc, $c003                                     ; $6841: $01 $03 $c0
	inc c                                            ; $6844: $0c
	ldh [$50], a                                     ; $6845: $e0 $50
	ret nz                                           ; $6847: $c0

	ld bc, $01a0                                     ; $6848: $01 $a0 $01
	ld bc, $c00a                                     ; $684b: $01 $0a $c0
	ld bc, $01a0                                     ; $684e: $01 $a0 $01
	ld bc, $c012                                     ; $6851: $01 $12 $c0
	inc c                                            ; $6854: $0c
	ldh [$78], a                                     ; $6855: $e0 $78
	pop bc                                           ; $6857: $c1
	sbc a                                            ; $6858: $9f
	jp nc, wPtrToDataCopyStruct                                     ; $6859: $d2 $08 $c1

	adc $c1                                          ; $685c: $ce $c1
	adc a                                            ; $685e: $8f
	pop bc                                           ; $685f: $c1
	sub b                                            ; $6860: $90
	pop bc                                           ; $6861: $c1
	sub [hl]                                         ; $6862: $96
	ldh [$f0], a                                     ; $6863: $e0 $f0
	ret nz                                           ; $6865: $c0

	inc c                                            ; $6866: $0c
	ldh [$3c], a                                     ; $6867: $e0 $3c
	pop bc                                           ; $6869: $c1
	or b                                             ; $686a: $b0
	jp nc, $d0d8                                     ; $686b: $d2 $d8 $d0

	ret nz                                           ; $686e: $c0

	ld bc, $01a0                                     ; $686f: $01 $a0 $01
	nop                                              ; $6872: $00
	ld bc, $0cc0                                     ; $6873: $01 $c0 $0c
	ldh [$50], a                                     ; $6876: $e0 $50
	ret nz                                           ; $6878: $c0

	ld bc, $06a0                                     ; $6879: $01 $a0 $06
	nop                                              ; $687c: $00
	rlca                                             ; $687d: $07
	ret nz                                           ; $687e: $c0

	ld bc, $06a0                                     ; $687f: $01 $a0 $06
	nop                                              ; $6882: $00
	add hl, bc                                       ; $6883: $09
	ret nz                                           ; $6884: $c0

	ld bc, $06a0                                     ; $6885: $01 $a0 $06
	nop                                              ; $6888: $00
	dec c                                            ; $6889: $0d
	ret nz                                           ; $688a: $c0

	inc c                                            ; $688b: $0c
	ldh [$50], a                                     ; $688c: $e0 $50
	ret nz                                           ; $688e: $c0

	ld bc, $01a0                                     ; $688f: $01 $a0 $01
	nop                                              ; $6892: $00
	inc de                                           ; $6893: $13
	ret nz                                           ; $6894: $c0

	inc c                                            ; $6895: $0c
	ldh [$50], a                                     ; $6896: $e0 $50
	ret nz                                           ; $6898: $c0

	ld bc, $06a0                                     ; $6899: $01 $a0 $06
	nop                                              ; $689c: $00
	add hl, de                                       ; $689d: $19
	ret nz                                           ; $689e: $c0

	ld bc, $06a0                                     ; $689f: $01 $a0 $06
	nop                                              ; $68a2: $00
	dec de                                           ; $68a3: $1b
	ret nz                                           ; $68a4: $c0

	ld bc, $06a0                                     ; $68a5: $01 $a0 $06
	nop                                              ; $68a8: $00
	ld e, $c0                                        ; $68a9: $1e $c0
	ld bc, $06a0                                     ; $68ab: $01 $a0 $06
	nop                                              ; $68ae: $00
	ld h, $c0                                        ; $68af: $26 $c0
	ld bc, $06a0                                     ; $68b1: $01 $a0 $06
	nop                                              ; $68b4: $00
	inc l                                            ; $68b5: $2c
	ret nz                                           ; $68b6: $c0

	ld bc, $06a0                                     ; $68b7: $01 $a0 $06
	nop                                              ; $68ba: $00
	inc [hl]                                         ; $68bb: $34
	ret nz                                           ; $68bc: $c0

	ld bc, $06a0                                     ; $68bd: $01 $a0 $06
	nop                                              ; $68c0: $00
	dec a                                            ; $68c1: $3d
	ret nz                                           ; $68c2: $c0

	ld bc, $06a0                                     ; $68c3: $01 $a0 $06
	nop                                              ; $68c6: $00
	ld b, b                                          ; $68c7: $40
	ret nz                                           ; $68c8: $c0

	inc c                                            ; $68c9: $0c
	ldh [$3c], a                                     ; $68ca: $e0 $3c
	ret nz                                           ; $68cc: $c0

	ld bc, $06a0                                     ; $68cd: $01 $a0 $06
	nop                                              ; $68d0: $00
	ld b, l                                          ; $68d1: $45
	ret nz                                           ; $68d2: $c0

	ld bc, $06a0                                     ; $68d3: $01 $a0 $06
	nop                                              ; $68d6: $00
	ld c, b                                          ; $68d7: $48
	ret nz                                           ; $68d8: $c0

	ld bc, $06a0                                     ; $68d9: $01 $a0 $06
	nop                                              ; $68dc: $00
	ld c, [hl]                                       ; $68dd: $4e
	ret nz                                           ; $68de: $c0

	ld bc, $06a0                                     ; $68df: $01 $a0 $06
	nop                                              ; $68e2: $00
	ld d, c                                          ; $68e3: $51
	ret nz                                           ; $68e4: $c0

	ld bc, $06a0                                     ; $68e5: $01 $a0 $06
	nop                                              ; $68e8: $00
	ld e, c                                          ; $68e9: $59
	ret nz                                           ; $68ea: $c0

	inc c                                            ; $68eb: $0c
	ldh [$50], a                                     ; $68ec: $e0 $50
	ret nz                                           ; $68ee: $c0

	ld bc, $06a0                                     ; $68ef: $01 $a0 $06
	nop                                              ; $68f2: $00
	ld e, a                                          ; $68f3: $5f
	ret nz                                           ; $68f4: $c0

	ld bc, $06a0                                     ; $68f5: $01 $a0 $06
	nop                                              ; $68f8: $00
	ld h, a                                          ; $68f9: $67
	ret nz                                           ; $68fa: $c0

	ld bc, $06a0                                     ; $68fb: $01 $a0 $06
	nop                                              ; $68fe: $00
	ld l, [hl]                                       ; $68ff: $6e
	ret nz                                           ; $6900: $c0

	ld bc, $06a0                                     ; $6901: $01 $a0 $06
	nop                                              ; $6904: $00
	ld [hl], e                                       ; $6905: $73
	ret nz                                           ; $6906: $c0

	ld bc, $06a0                                     ; $6907: $01 $a0 $06
	nop                                              ; $690a: $00
	ld a, b                                          ; $690b: $78
	ret nz                                           ; $690c: $c0

	ld bc, $06a0                                     ; $690d: $01 $a0 $06
	nop                                              ; $6910: $00
	add c                                            ; $6911: $81
	ret nz                                           ; $6912: $c0

	ld bc, $06a0                                     ; $6913: $01 $a0 $06
	nop                                              ; $6916: $00
	adc b                                            ; $6917: $88
	ret nz                                           ; $6918: $c0

	ld bc, $06a0                                     ; $6919: $01 $a0 $06
	nop                                              ; $691c: $00
	adc l                                            ; $691d: $8d
	ret nz                                           ; $691e: $c0

	inc c                                            ; $691f: $0c
	ldh [$3c], a                                     ; $6920: $e0 $3c
	pop bc                                           ; $6922: $c1
	or d                                             ; $6923: $b2
	db $e3                                           ; $6924: $e3
	nop                                              ; $6925: $00
	ld [hl], h                                       ; $6926: $74
	ret nz                                           ; $6927: $c0

	ld bc, $06a0                                     ; $6928: $01 $a0 $06
	nop                                              ; $692b: $00
	sub e                                            ; $692c: $93
	ret nz                                           ; $692d: $c0

	ld bc, $06a0                                     ; $692e: $01 $a0 $06
	nop                                              ; $6931: $00
	sub [hl]                                         ; $6932: $96
	ret nz                                           ; $6933: $c0

	ld bc, $06a0                                     ; $6934: $01 $a0 $06
	nop                                              ; $6937: $00
	sbc l                                            ; $6938: $9d
	ret nz                                           ; $6939: $c0

	ld bc, $06a0                                     ; $693a: $01 $a0 $06
	nop                                              ; $693d: $00
	and c                                            ; $693e: $a1
	ret nz                                           ; $693f: $c0

	inc c                                            ; $6940: $0c
	ldh [$3c], a                                     ; $6941: $e0 $3c
	pop bc                                           ; $6943: $c1
	or d                                             ; $6944: $b2
	db $e3                                           ; $6945: $e3
	nop                                              ; $6946: $00
	ld [hl], l                                       ; $6947: $75
	ret nz                                           ; $6948: $c0

	ld bc, $06a0                                     ; $6949: $01 $a0 $06
	nop                                              ; $694c: $00
	and a                                            ; $694d: $a7
	ret nz                                           ; $694e: $c0

	ld bc, $06a0                                     ; $694f: $01 $a0 $06
	nop                                              ; $6952: $00
	or c                                             ; $6953: $b1
	ret nz                                           ; $6954: $c0

	ld bc, $06a0                                     ; $6955: $01 $a0 $06
	nop                                              ; $6958: $00
	or l                                             ; $6959: $b5
	ret nz                                           ; $695a: $c0

	inc c                                            ; $695b: $0c
	ldh [$50], a                                     ; $695c: $e0 $50
	ret nz                                           ; $695e: $c0

	ld bc, $01a0                                     ; $695f: $01 $a0 $01
	nop                                              ; $6962: $00
	cp h                                             ; $6963: $bc
	ret nz                                           ; $6964: $c0

	ld bc, $01a0                                     ; $6965: $01 $a0 $01
	nop                                              ; $6968: $00
	ret nz                                           ; $6969: $c0

	ret nz                                           ; $696a: $c0

	inc c                                            ; $696b: $0c
	ldh [$50], a                                     ; $696c: $e0 $50
	pop bc                                           ; $696e: $c1
	sbc [hl]                                         ; $696f: $9e
	pop de                                           ; $6970: $d1
	ret nz                                           ; $6971: $c0

	ld bc, $06a0                                     ; $6972: $01 $a0 $06
	nop                                              ; $6975: $00
	add $c0                                          ; $6976: $c6 $c0
	ld bc, $06a0                                     ; $6978: $01 $a0 $06
	nop                                              ; $697b: $00
	ret                                              ; $697c: $c9


	ret nz                                           ; $697d: $c0

	inc c                                            ; $697e: $0c
	ldh [$3c], a                                     ; $697f: $e0 $3c
	ret nz                                           ; $6981: $c0

	ld bc, $01a0                                     ; $6982: $01 $a0 $01
	nop                                              ; $6985: $00
	rst GetHLinHL                                          ; $6986: $cf
	ret nz                                           ; $6987: $c0

	ld bc, $01a0                                     ; $6988: $01 $a0 $01
	nop                                              ; $698b: $00
	db $d3                                           ; $698c: $d3
	ret nz                                           ; $698d: $c0

	inc c                                            ; $698e: $0c
	ldh [$3c], a                                     ; $698f: $e0 $3c
	ret nz                                           ; $6991: $c0

	ld bc, $06a0                                     ; $6992: $01 $a0 $06
	nop                                              ; $6995: $00
	reti                                             ; $6996: $d9


	ret nz                                           ; $6997: $c0

	ld bc, $06a0                                     ; $6998: $01 $a0 $06
	nop                                              ; $699b: $00
	call c, $0cc0                                    ; $699c: $dc $c0 $0c
	ldh [$3c], a                                     ; $699f: $e0 $3c
	ret nz                                           ; $69a1: $c0

	ld bc, $01a0                                     ; $69a2: $01 $a0 $01
	nop                                              ; $69a5: $00
	and $c0                                          ; $69a6: $e6 $c0
	inc c                                            ; $69a8: $0c
	ldh [$3c], a                                     ; $69a9: $e0 $3c
	ret nz                                           ; $69ab: $c0

	ld bc, $06a0                                     ; $69ac: $01 $a0 $06
	nop                                              ; $69af: $00
	db $ec                                           ; $69b0: $ec
	ret nz                                           ; $69b1: $c0

	inc c                                            ; $69b2: $0c
	ldh [rAUD3HIGH], a                               ; $69b3: $e0 $1e
	ret nz                                           ; $69b5: $c0

	ld bc, $06a0                                     ; $69b6: $01 $a0 $06
	nop                                              ; $69b9: $00
	rst AddAOntoHL                                          ; $69ba: $ef
	ret nz                                           ; $69bb: $c0

	ld bc, $06a0                                     ; $69bc: $01 $a0 $06
	nop                                              ; $69bf: $00
	push af                                          ; $69c0: $f5
	ret nz                                           ; $69c1: $c0

	inc c                                            ; $69c2: $0c
	ldh [$3c], a                                     ; $69c3: $e0 $3c
	ret nz                                           ; $69c5: $c0

	ld bc, $06a0                                     ; $69c6: $01 $a0 $06
	nop                                              ; $69c9: $00
	ei                                               ; $69ca: $fb
	ret nz                                           ; $69cb: $c0

	ld bc, $06a0                                     ; $69cc: $01 $a0 $06
	ld bc, $c000                                     ; $69cf: $01 $00 $c0
	ld bc, $06a0                                     ; $69d2: $01 $a0 $06
	ld bc, $c004                                     ; $69d5: $01 $04 $c0
	ld bc, $06a0                                     ; $69d8: $01 $a0 $06
	ld bc, $c00a                                     ; $69db: $01 $0a $c0
	ld bc, $06a0                                     ; $69de: $01 $a0 $06
	ld bc, $c011                                     ; $69e1: $01 $11 $c0
	ld bc, $06a0                                     ; $69e4: $01 $a0 $06
	ld bc, $c015                                     ; $69e7: $01 $15 $c0
	ld bc, $06a0                                     ; $69ea: $01 $a0 $06
	ld bc, $c01a                                     ; $69ed: $01 $1a $c0
	inc c                                            ; $69f0: $0c
	ldh [$3c], a                                     ; $69f1: $e0 $3c
	ret nz                                           ; $69f3: $c0

	ld bc, $01a0                                     ; $69f4: $01 $a0 $01
	ld bc, $c01f                                     ; $69f7: $01 $1f $c0
	ld bc, $01a0                                     ; $69fa: $01 $a0 $01
	ld bc, $c022                                     ; $69fd: $01 $22 $c0
	inc c                                            ; $6a00: $0c
	ldh [$3c], a                                     ; $6a01: $e0 $3c
	ret nz                                           ; $6a03: $c0

	ld bc, $06a0                                     ; $6a04: $01 $a0 $06
	ld bc, $c027                                     ; $6a07: $01 $27 $c0
	ld bc, $06a0                                     ; $6a0a: $01 $a0 $06
	ld bc, $c02a                                     ; $6a0d: $01 $2a $c0
	ld bc, $06a0                                     ; $6a10: $01 $a0 $06
	ld bc, $c02e                                     ; $6a13: $01 $2e $c0
	inc c                                            ; $6a16: $0c
	ldh [$50], a                                     ; $6a17: $e0 $50
	ret nz                                           ; $6a19: $c0

	ld bc, $01a0                                     ; $6a1a: $01 $a0 $01
	ld bc, $c031                                     ; $6a1d: $01 $31 $c0
	ld bc, $01a0                                     ; $6a20: $01 $a0 $01
	ld bc, $c038                                     ; $6a23: $01 $38 $c0
	inc c                                            ; $6a26: $0c

jr_089_6a27:
	ldh [$78], a                                     ; $6a27: $e0 $78
	pop bc                                           ; $6a29: $c1
	sbc a                                            ; $6a2a: $9f
	jp nc, $c208                                     ; $6a2b: $d2 $08 $c2

	ld h, $c1                                        ; $6a2e: $26 $c1
	adc a                                            ; $6a30: $8f
	pop bc                                           ; $6a31: $c1
	sub b                                            ; $6a32: $90
	pop bc                                           ; $6a33: $c1
	sub [hl]                                         ; $6a34: $96
	ldh [$f0], a                                     ; $6a35: $e0 $f0
	ret nz                                           ; $6a37: $c0

	inc c                                            ; $6a38: $0c
	ldh [$3c], a                                     ; $6a39: $e0 $3c
	pop bc                                           ; $6a3b: $c1
	or b                                             ; $6a3c: $b0
	jp nc, $d0d8                                     ; $6a3d: $d2 $d8 $d0

	ret nz                                           ; $6a40: $c0

	ld bc, $01a0                                     ; $6a41: $01 $a0 $01
	nop                                              ; $6a44: $00
	ld bc, $0cc0                                     ; $6a45: $01 $c0 $0c
	ldh [$3c], a                                     ; $6a48: $e0 $3c
	ret nz                                           ; $6a4a: $c0

	ld bc, $0aa0                                     ; $6a4b: $01 $a0 $0a
	nop                                              ; $6a4e: $00
	ld b, $c0                                        ; $6a4f: $06 $c0
	ld bc, $0aa0                                     ; $6a51: $01 $a0 $0a
	nop                                              ; $6a54: $00
	ld a, [bc]                                       ; $6a55: $0a
	ret nz                                           ; $6a56: $c0

	ld bc, $0aa0                                     ; $6a57: $01 $a0 $0a
	nop                                              ; $6a5a: $00
	ld [de], a                                       ; $6a5b: $12
	ret nz                                           ; $6a5c: $c0

	inc c                                            ; $6a5d: $0c
	ldh [$50], a                                     ; $6a5e: $e0 $50
	ret nz                                           ; $6a60: $c0

	ld bc, $01a0                                     ; $6a61: $01 $a0 $01
	nop                                              ; $6a64: $00
	jr jr_089_6a27                                   ; $6a65: $18 $c0

	ld bc, $01a0                                     ; $6a67: $01 $a0 $01
	nop                                              ; $6a6a: $00
	inc e                                            ; $6a6b: $1c
	ret nz                                           ; $6a6c: $c0

	inc c                                            ; $6a6d: $0c
	ldh [$50], a                                     ; $6a6e: $e0 $50
	ret nz                                           ; $6a70: $c0

	ld bc, $0aa0                                     ; $6a71: $01 $a0 $0a
	nop                                              ; $6a74: $00
	dec h                                            ; $6a75: $25
	ret nz                                           ; $6a76: $c0

	inc c                                            ; $6a77: $0c
	ldh [$3c], a                                     ; $6a78: $e0 $3c
	ret nz                                           ; $6a7a: $c0

	ld bc, $0aa0                                     ; $6a7b: $01 $a0 $0a
	nop                                              ; $6a7e: $00
	add hl, hl                                       ; $6a7f: $29
	ret nz                                           ; $6a80: $c0

	ld bc, $0aa0                                     ; $6a81: $01 $a0 $0a
	nop                                              ; $6a84: $00
	dec l                                            ; $6a85: $2d
	ret nz                                           ; $6a86: $c0

	ld bc, $0aa0                                     ; $6a87: $01 $a0 $0a
	nop                                              ; $6a8a: $00
	ld [hl], $c0                                     ; $6a8b: $36 $c0
	ld bc, $0aa0                                     ; $6a8d: $01 $a0 $0a
	nop                                              ; $6a90: $00
	inc a                                            ; $6a91: $3c
	ret nz                                           ; $6a92: $c0

	ld bc, $0aa0                                     ; $6a93: $01 $a0 $0a
	nop                                              ; $6a96: $00
	ld b, e                                          ; $6a97: $43
	ret nz                                           ; $6a98: $c0

	inc c                                            ; $6a99: $0c
	ldh [$3c], a                                     ; $6a9a: $e0 $3c
	ret nz                                           ; $6a9c: $c0

	ld bc, $0aa0                                     ; $6a9d: $01 $a0 $0a
	nop                                              ; $6aa0: $00
	ld b, a                                          ; $6aa1: $47
	ret nz                                           ; $6aa2: $c0

	inc c                                            ; $6aa3: $0c
	ldh [$50], a                                     ; $6aa4: $e0 $50
	ret nz                                           ; $6aa6: $c0

	ld bc, $0aa0                                     ; $6aa7: $01 $a0 $0a
	nop                                              ; $6aaa: $00
	ld c, a                                          ; $6aab: $4f
	ret nz                                           ; $6aac: $c0

	ld bc, $0aa0                                     ; $6aad: $01 $a0 $0a
	nop                                              ; $6ab0: $00
	ld d, e                                          ; $6ab1: $53
	ret nz                                           ; $6ab2: $c0

	ld bc, $0aa0                                     ; $6ab3: $01 $a0 $0a
	nop                                              ; $6ab6: $00
	ld e, d                                          ; $6ab7: $5a
	ret nz                                           ; $6ab8: $c0

	inc c                                            ; $6ab9: $0c
	ldh [$3c], a                                     ; $6aba: $e0 $3c
	ret nz                                           ; $6abc: $c0

	ld bc, $0aa0                                     ; $6abd: $01 $a0 $0a
	nop                                              ; $6ac0: $00
	ld h, e                                          ; $6ac1: $63
	ret nz                                           ; $6ac2: $c0

	inc c                                            ; $6ac3: $0c
	ldh [$3c], a                                     ; $6ac4: $e0 $3c
	ret nz                                           ; $6ac6: $c0

	ld bc, $0aa0                                     ; $6ac7: $01 $a0 $0a
	nop                                              ; $6aca: $00
	ld l, l                                          ; $6acb: $6d
	ret nz                                           ; $6acc: $c0

	inc c                                            ; $6acd: $0c
	ldh [$50], a                                     ; $6ace: $e0 $50
	ret nz                                           ; $6ad0: $c0

	ld bc, $0aa0                                     ; $6ad1: $01 $a0 $0a
	nop                                              ; $6ad4: $00
	ld [hl], h                                       ; $6ad5: $74
	ret nz                                           ; $6ad6: $c0

	ld bc, $0aa0                                     ; $6ad7: $01 $a0 $0a
	nop                                              ; $6ada: $00
	ld a, l                                          ; $6adb: $7d
	ret nz                                           ; $6adc: $c0

	ld bc, $0aa0                                     ; $6add: $01 $a0 $0a
	nop                                              ; $6ae0: $00
	add l                                            ; $6ae1: $85
	ret nz                                           ; $6ae2: $c0

	inc c                                            ; $6ae3: $0c
	ldh [$3c], a                                     ; $6ae4: $e0 $3c
	ret nz                                           ; $6ae6: $c0

	ld bc, $0aa0                                     ; $6ae7: $01 $a0 $0a
	nop                                              ; $6aea: $00
	adc e                                            ; $6aeb: $8b
	ret nz                                           ; $6aec: $c0

	ld bc, $0aa0                                     ; $6aed: $01 $a0 $0a
	nop                                              ; $6af0: $00
	adc [hl]                                         ; $6af1: $8e
	ret nz                                           ; $6af2: $c0

	inc c                                            ; $6af3: $0c
	ldh [$3c], a                                     ; $6af4: $e0 $3c
	ret nz                                           ; $6af6: $c0

	ld bc, $0aa0                                     ; $6af7: $01 $a0 $0a
	nop                                              ; $6afa: $00
	sub a                                            ; $6afb: $97
	ret nz                                           ; $6afc: $c0

	ld bc, $0aa0                                     ; $6afd: $01 $a0 $0a
	nop                                              ; $6b00: $00
	sbc a                                            ; $6b01: $9f
	ret nz                                           ; $6b02: $c0

	ld bc, $0aa0                                     ; $6b03: $01 $a0 $0a
	nop                                              ; $6b06: $00
	and a                                            ; $6b07: $a7
	ret nz                                           ; $6b08: $c0

	ld bc, $0aa0                                     ; $6b09: $01 $a0 $0a
	nop                                              ; $6b0c: $00
	xor l                                            ; $6b0d: $ad
	ret nz                                           ; $6b0e: $c0

	inc c                                            ; $6b0f: $0c
	ldh [$3c], a                                     ; $6b10: $e0 $3c
	ret nz                                           ; $6b12: $c0

	ld bc, $0aa0                                     ; $6b13: $01 $a0 $0a
	nop                                              ; $6b16: $00
	or d                                             ; $6b17: $b2
	ret nz                                           ; $6b18: $c0

	ld bc, $0aa0                                     ; $6b19: $01 $a0 $0a
	nop                                              ; $6b1c: $00
	cp e                                             ; $6b1d: $bb
	ret nz                                           ; $6b1e: $c0

	ld bc, $0aa0                                     ; $6b1f: $01 $a0 $0a
	nop                                              ; $6b22: $00
	ret nz                                           ; $6b23: $c0

	ret nz                                           ; $6b24: $c0

	ld bc, $0aa0                                     ; $6b25: $01 $a0 $0a
	nop                                              ; $6b28: $00
	add $c0                                          ; $6b29: $c6 $c0
	inc c                                            ; $6b2b: $0c
	ldh [$3c], a                                     ; $6b2c: $e0 $3c
	ret nz                                           ; $6b2e: $c0

	ld bc, $0aa0                                     ; $6b2f: $01 $a0 $0a
	nop                                              ; $6b32: $00
	jp z, $0cc0                                      ; $6b33: $ca $c0 $0c

	ldh [$50], a                                     ; $6b36: $e0 $50
	ret nz                                           ; $6b38: $c0

	ld bc, $0aa0                                     ; $6b39: $01 $a0 $0a
	nop                                              ; $6b3c: $00
	jp nc, $01c0                                     ; $6b3d: $d2 $c0 $01

	and b                                            ; $6b40: $a0
	ld a, [bc]                                       ; $6b41: $0a
	nop                                              ; $6b42: $00
	sub $c0                                          ; $6b43: $d6 $c0
	inc c                                            ; $6b45: $0c
	ldh [rAUD3HIGH], a                               ; $6b46: $e0 $1e
	ret nz                                           ; $6b48: $c0

	ld bc, $0aa0                                     ; $6b49: $01 $a0 $0a
	nop                                              ; $6b4c: $00
	call c, $01c0                                    ; $6b4d: $dc $c0 $01
	and b                                            ; $6b50: $a0
	ld a, [bc]                                       ; $6b51: $0a
	nop                                              ; $6b52: $00
	db $e3                                           ; $6b53: $e3
	ret nz                                           ; $6b54: $c0

	inc c                                            ; $6b55: $0c
	ldh [$50], a                                     ; $6b56: $e0 $50
	ret nz                                           ; $6b58: $c0

	ld bc, $0aa0                                     ; $6b59: $01 $a0 $0a
	nop                                              ; $6b5c: $00
	jp hl                                            ; $6b5d: $e9


	ret nz                                           ; $6b5e: $c0

	ld bc, $0aa0                                     ; $6b5f: $01 $a0 $0a
	nop                                              ; $6b62: $00
	pop af                                           ; $6b63: $f1
	ret nz                                           ; $6b64: $c0

	inc c                                            ; $6b65: $0c
	ldh [$5a], a                                     ; $6b66: $e0 $5a
	pop bc                                           ; $6b68: $c1
	or d                                             ; $6b69: $b2
	db $e3                                           ; $6b6a: $e3
	nop                                              ; $6b6b: $00
	sub l                                            ; $6b6c: $95
	ret nz                                           ; $6b6d: $c0

	ld bc, $0aa0                                     ; $6b6e: $01 $a0 $0a
	nop                                              ; $6b71: $00
	ei                                               ; $6b72: $fb
	ret nz                                           ; $6b73: $c0

	ld bc, $0aa0                                     ; $6b74: $01 $a0 $0a
	ld bc, $c002                                     ; $6b77: $01 $02 $c0
	inc c                                            ; $6b7a: $0c
	ldh [$3c], a                                     ; $6b7b: $e0 $3c
	ret nz                                           ; $6b7d: $c0

	ld bc, $0aa0                                     ; $6b7e: $01 $a0 $0a
	ld bc, $c00a                                     ; $6b81: $01 $0a $c0
	inc c                                            ; $6b84: $0c
	ldh [$5a], a                                     ; $6b85: $e0 $5a
	pop bc                                           ; $6b87: $c1
	or d                                             ; $6b88: $b2
	db $e3                                           ; $6b89: $e3
	nop                                              ; $6b8a: $00
	sub [hl]                                         ; $6b8b: $96
	ret nz                                           ; $6b8c: $c0

	ld bc, $0aa0                                     ; $6b8d: $01 $a0 $0a
	ld bc, $c013                                     ; $6b90: $01 $13 $c0
	ld bc, $0aa0                                     ; $6b93: $01 $a0 $0a
	ld bc, $c017                                     ; $6b96: $01 $17 $c0
	inc c                                            ; $6b99: $0c
	ldh [$3c], a                                     ; $6b9a: $e0 $3c
	ret nz                                           ; $6b9c: $c0

	ld bc, $0aa0                                     ; $6b9d: $01 $a0 $0a
	ld bc, $c01a                                     ; $6ba0: $01 $1a $c0
	ld bc, $0aa0                                     ; $6ba3: $01 $a0 $0a
	ld bc, $c024                                     ; $6ba6: $01 $24 $c0
	ld bc, $0aa0                                     ; $6ba9: $01 $a0 $0a
	ld bc, $c02c                                     ; $6bac: $01 $2c $c0
	inc c                                            ; $6baf: $0c
	ldh [$3c], a                                     ; $6bb0: $e0 $3c
	ret nz                                           ; $6bb2: $c0

	ld bc, $0aa0                                     ; $6bb3: $01 $a0 $0a
	ld bc, $c032                                     ; $6bb6: $01 $32 $c0
	ld bc, $0aa0                                     ; $6bb9: $01 $a0 $0a
	ld bc, $c038                                     ; $6bbc: $01 $38 $c0
	ld bc, $0aa0                                     ; $6bbf: $01 $a0 $0a
	ld bc, $c03e                                     ; $6bc2: $01 $3e $c0
	ld bc, $0aa0                                     ; $6bc5: $01 $a0 $0a
	ld bc, $c044                                     ; $6bc8: $01 $44 $c0
	inc c                                            ; $6bcb: $0c
	ldh [$50], a                                     ; $6bcc: $e0 $50
	ret nz                                           ; $6bce: $c0

	ld bc, $01a0                                     ; $6bcf: $01 $a0 $01
	ld bc, $c04c                                     ; $6bd2: $01 $4c $c0
	ld bc, $01a0                                     ; $6bd5: $01 $a0 $01
	ld bc, $c058                                     ; $6bd8: $01 $58 $c0
	inc c                                            ; $6bdb: $0c
	ldh [$50], a                                     ; $6bdc: $e0 $50
	ret nz                                           ; $6bde: $c0

	ld bc, $0aa0                                     ; $6bdf: $01 $a0 $0a
	ld bc, $c05f                                     ; $6be2: $01 $5f $c0
	inc c                                            ; $6be5: $0c
	ldh [$3c], a                                     ; $6be6: $e0 $3c
	ret nz                                           ; $6be8: $c0

	ld bc, $01a0                                     ; $6be9: $01 $a0 $01
	ld bc, $c062                                     ; $6bec: $01 $62 $c0
	inc c                                            ; $6bef: $0c
	ldh [$50], a                                     ; $6bf0: $e0 $50
	pop bc                                           ; $6bf2: $c1
	sbc [hl]                                         ; $6bf3: $9e
	pop de                                           ; $6bf4: $d1
	ret nz                                           ; $6bf5: $c0

	ld bc, $0aa0                                     ; $6bf6: $01 $a0 $0a
	ld bc, $c06b                                     ; $6bf9: $01 $6b $c0
	inc c                                            ; $6bfc: $0c
	ldh [$3c], a                                     ; $6bfd: $e0 $3c
	ret nz                                           ; $6bff: $c0

	ld bc, $01a0                                     ; $6c00: $01 $a0 $01
	ld bc, $c06e                                     ; $6c03: $01 $6e $c0
	inc c                                            ; $6c06: $0c
	ldh [$3c], a                                     ; $6c07: $e0 $3c
	ret nz                                           ; $6c09: $c0

	ld bc, $0aa0                                     ; $6c0a: $01 $a0 $0a
	ld bc, $c073                                     ; $6c0d: $01 $73 $c0
	ld bc, $0aa0                                     ; $6c10: $01 $a0 $0a
	ld bc, $c07a                                     ; $6c13: $01 $7a $c0
	ld bc, $0aa0                                     ; $6c16: $01 $a0 $0a
	ld bc, $c07e                                     ; $6c19: $01 $7e $c0
	ld bc, $0aa0                                     ; $6c1c: $01 $a0 $0a
	ld bc, $c085                                     ; $6c1f: $01 $85 $c0
	ld bc, $0aa0                                     ; $6c22: $01 $a0 $0a
	ld bc, $c08b                                     ; $6c25: $01 $8b $c0
	ld bc, $0aa0                                     ; $6c28: $01 $a0 $0a
	ld bc, $c093                                     ; $6c2b: $01 $93 $c0
	ld bc, $0aa0                                     ; $6c2e: $01 $a0 $0a
	ld bc, $c09a                                     ; $6c31: $01 $9a $c0
	ld bc, $0aa0                                     ; $6c34: $01 $a0 $0a
	ld bc, $c0a1                                     ; $6c37: $01 $a1 $c0
	inc c                                            ; $6c3a: $0c
	ldh [$3c], a                                     ; $6c3b: $e0 $3c
	ret nz                                           ; $6c3d: $c0

	ld bc, $0aa0                                     ; $6c3e: $01 $a0 $0a
	ld bc, $c0a5                                     ; $6c41: $01 $a5 $c0
	ld bc, $0aa0                                     ; $6c44: $01 $a0 $0a
	ld bc, $c0a8                                     ; $6c47: $01 $a8 $c0
	ld bc, $0aa0                                     ; $6c4a: $01 $a0 $0a
	ld bc, $c0ad                                     ; $6c4d: $01 $ad $c0
	inc c                                            ; $6c50: $0c
	ldh [$78], a                                     ; $6c51: $e0 $78
	pop bc                                           ; $6c53: $c1
	sbc a                                            ; $6c54: $9f
	jp nc, $0908                                     ; $6c55: $d2 $08 $09

	cpl                                              ; $6c58: $2f
	add c                                            ; $6c59: $81
	ldh a, [$1f]                                     ; $6c5a: $f0 $1f
	ldh a, [$1f]                                     ; $6c5c: $f0 $1f
	ld e, c                                          ; $6c5e: $59
	ldh a, [$50]                                     ; $6c5f: $f0 $50
	inc a                                            ; $6c61: $3c
	ld d, b                                          ; $6c62: $50
	ld c, e                                          ; $6c63: $4b
	ld e, e                                          ; $6c64: $5b
	ld [hl], c                                       ; $6c65: $71
	ld c, [hl]                                       ; $6c66: $4e
	add hl, bc                                       ; $6c67: $09
	cpl                                              ; $6c68: $2f
	add c                                            ; $6c69: $81
	ldh a, [$1f]                                     ; $6c6a: $f0 $1f
	ldh a, [$1f]                                     ; $6c6c: $f0 $1f
	ld e, c                                          ; $6c6e: $59
	ldh a, [$50]                                     ; $6c6f: $f0 $50
	ld c, e                                          ; $6c71: $4b

jr_089_6c72:
	ld [hl], d                                       ; $6c72: $72
	ld a, [hl-]                                      ; $6c73: $3a
	jr c, jr_089_6c7f                                ; $6c74: $38 $09

	cpl                                              ; $6c76: $2f
	ld b, e                                          ; $6c77: $43
	db $ec                                           ; $6c78: $ec
	ld h, [hl]                                       ; $6c79: $66
	db $f4                                           ; $6c7a: $f4
	ld e, $f0                                        ; $6c7b: $1e $f0
	dec d                                            ; $6c7d: $15
	ld b, h                                          ; $6c7e: $44

jr_089_6c7f:
	ld c, b                                          ; $6c7f: $48
	and b                                            ; $6c80: $a0
	cpl                                              ; $6c81: $2f
	ld b, e                                          ; $6c82: $43
	db $ec                                           ; $6c83: $ec
	ld h, [hl]                                       ; $6c84: $66
	db $f4                                           ; $6c85: $f4
	ld e, $f0                                        ; $6c86: $1e $f0
	dec d                                            ; $6c88: $15
	ld b, h                                          ; $6c89: $44
	dec sp                                           ; $6c8a: $3b
	dec a                                            ; $6c8b: $3d
	ld d, e                                          ; $6c8c: $53
	inc de                                           ; $6c8d: $13
	pop af                                           ; $6c8e: $f1
	ld [$3a7f], a                                    ; $6c8f: $ea $7f $3a
	ld b, d                                          ; $6c92: $42
	ld c, d                                          ; $6c93: $4a
	db $f4                                           ; $6c94: $f4
	dec de                                           ; $6c95: $1b
	db $f4                                           ; $6c96: $f4
	inc e                                            ; $6c97: $1c
	ld a, $3f                                        ; $6c98: $3e $3f
	ld c, a                                          ; $6c9a: $4f
	ld d, b                                          ; $6c9b: $50
	ld e, [hl]                                       ; $6c9c: $5e
	dec a                                            ; $6c9d: $3d
	xor b                                            ; $6c9e: $a8
	db $f4                                           ; $6c9f: $f4
	dec e                                            ; $6ca0: $1d
	di                                               ; $6ca1: $f3
	add [hl]                                         ; $6ca2: $86
	ld b, a                                          ; $6ca3: $47
	ldh a, [c]                                       ; $6ca4: $f2
	ld b, c                                          ; $6ca5: $41
	ldh a, [$9e]                                     ; $6ca6: $f0 $9e
	ld a, $45                                        ; $6ca8: $3e $45
	add hl, sp                                       ; $6caa: $39
	and b                                            ; $6cab: $a0
	cpl                                              ; $6cac: $2f
	ld b, e                                          ; $6cad: $43
	db $ed                                           ; $6cae: $ed
	ld d, a                                          ; $6caf: $57
	xor h                                            ; $6cb0: $ac
	add sp, $04                                      ; $6cb1: $e8 $04
	db $eb                                           ; $6cb3: $eb
	halt                                             ; $6cb4: $76
	dec [hl]                                         ; $6cb5: $35
	ld e, $f1                                        ; $6cb6: $1e $f1
	ld d, c                                          ; $6cb8: $51
	add hl, bc                                       ; $6cb9: $09
	cpl                                              ; $6cba: $2f
	ld b, e                                          ; $6cbb: $43
	db $ed                                           ; $6cbc: $ed
	ld d, a                                          ; $6cbd: $57
	xor h                                            ; $6cbe: $ac
	ld l, e                                          ; $6cbf: $6b
	ld h, d                                          ; $6cc0: $62
	db $ec                                           ; $6cc1: $ec
	inc c                                            ; $6cc2: $0c
	ld a, [hl-]                                      ; $6cc3: $3a
	and b                                            ; $6cc4: $a0
	cpl                                              ; $6cc5: $2f
	ld b, e                                          ; $6cc6: $43
	ld l, b                                          ; $6cc7: $68
	pop af                                           ; $6cc8: $f1
	sbc h                                            ; $6cc9: $9c
	ld l, b                                          ; $6cca: $68
	pop af                                           ; $6ccb: $f1
	ld c, e                                          ; $6ccc: $4b
	ldh a, [$f0]                                     ; $6ccd: $f0 $f0
	ld c, e                                          ; $6ccf: $4b
	xor h                                            ; $6cd0: $ac
	db $ed                                           ; $6cd1: $ed
	ld [$ee47], sp                                   ; $6cd2: $08 $47 $ee
	ld a, [de]                                       ; $6cd5: $1a
	sub h                                            ; $6cd6: $94
	ld a, b                                          ; $6cd7: $78
	ld a, [hl-]                                      ; $6cd8: $3a
	jr c, jr_089_6c72                                ; $6cd9: $38 $97

	and b                                            ; $6cdb: $a0
	cpl                                              ; $6cdc: $2f
	db $ed                                           ; $6cdd: $ed
	ld [$0ff1], sp                                   ; $6cde: $08 $f1 $0f
	ldh a, [rOBP0]                                   ; $6ce1: $f0 $48
	ld h, d                                          ; $6ce3: $62
	ld d, c                                          ; $6ce4: $51
	ld c, [hl]                                       ; $6ce5: $4e
	add hl, bc                                       ; $6ce6: $09
	cpl                                              ; $6ce7: $2f
	db $ed                                           ; $6ce8: $ed
	ld [$6e62], sp                                   ; $6ce9: $08 $62 $6e
	ld [hl], c                                       ; $6cec: $71
	ld c, [hl]                                       ; $6ced: $4e
	add hl, bc                                       ; $6cee: $09
	cpl                                              ; $6cef: $2f
	db $ed                                           ; $6cf0: $ed
	ld [$f262], sp                                   ; $6cf1: $08 $62 $f2
	cp h                                             ; $6cf4: $bc
	adc a                                            ; $6cf5: $8f
	ld a, $52                                        ; $6cf6: $3e $52
	ld a, $3d                                        ; $6cf8: $3e $3d
	and b                                            ; $6cfa: $a0
	cpl                                              ; $6cfb: $2f
	daa                                              ; $6cfc: $27
	ldh a, [$58]                                     ; $6cfd: $f0 $58
	ldh a, [rAUD1HIGH]                               ; $6cff: $f0 $14
	ldh a, [rTIMA]                                   ; $6d01: $f0 $05
	ld b, a                                          ; $6d03: $47
	ld a, [hl-]                                      ; $6d04: $3a
	ld c, [hl]                                       ; $6d05: $4e
	ld d, d                                          ; $6d06: $52
	ld c, d                                          ; $6d07: $4a
	xor h                                            ; $6d08: $ac
	ld e, d                                          ; $6d09: $5a
	ld b, d                                          ; $6d0a: $42
	adc a                                            ; $6d0b: $8f
	ld b, a                                          ; $6d0c: $47
	ld c, a                                          ; $6d0d: $4f
	xor $1a                                          ; $6d0e: $ee $1a
	ld c, d                                          ; $6d10: $4a
	ld e, h                                          ; $6d11: $5c
	ld d, d                                          ; $6d12: $52
	ld a, c                                          ; $6d13: $79
	ld b, c                                          ; $6d14: $41
	dec [hl]                                         ; $6d15: $35
	dec h                                            ; $6d16: $25
	add hl, bc                                       ; $6d17: $09
	cpl                                              ; $6d18: $2f
	daa                                              ; $6d19: $27
	ldh a, [$e5]                                     ; $6d1a: $f0 $e5
	ldh a, [rAUD1HIGH]                               ; $6d1c: $f0 $14
	ldh a, [rTIMA]                                   ; $6d1e: $f0 $05
	ld b, a                                          ; $6d20: $47
	ld a, [hl-]                                      ; $6d21: $3a
	ld c, [hl]                                       ; $6d22: $4e
	ld d, d                                          ; $6d23: $52
	ld c, d                                          ; $6d24: $4a
	xor h                                            ; $6d25: $ac
	ld e, d                                          ; $6d26: $5a
	ld b, d                                          ; $6d27: $42
	adc a                                            ; $6d28: $8f
	ld b, a                                          ; $6d29: $47
	ld c, a                                          ; $6d2a: $4f
	xor $1a                                          ; $6d2b: $ee $1a
	ld c, d                                          ; $6d2d: $4a
	ld e, h                                          ; $6d2e: $5c
	ld d, d                                          ; $6d2f: $52
	ld a, c                                          ; $6d30: $79
	ld b, c                                          ; $6d31: $41
	dec [hl]                                         ; $6d32: $35
	dec h                                            ; $6d33: $25
	add hl, bc                                       ; $6d34: $09
	cpl                                              ; $6d35: $2f
	daa                                              ; $6d36: $27
	ld e, d                                          ; $6d37: $5a
	ld b, d                                          ; $6d38: $42
	adc a                                            ; $6d39: $8f
	ld b, a                                          ; $6d3a: $47
	ld c, a                                          ; $6d3b: $4f
	xor $1a                                          ; $6d3c: $ee $1a
	ld c, d                                          ; $6d3e: $4a
	ld e, h                                          ; $6d3f: $5c
	ld d, d                                          ; $6d40: $52
	ld a, c                                          ; $6d41: $79
	ld b, c                                          ; $6d42: $41
	dec [hl]                                         ; $6d43: $35
	dec h                                            ; $6d44: $25
	add hl, bc                                       ; $6d45: $09
	db $eb                                           ; $6d46: $eb
	ld l, c                                          ; $6d47: $69
	and b                                            ; $6d48: $a0
	db $ec                                           ; $6d49: $ec
	db $f4                                           ; $6d4a: $f4
	xor b                                            ; $6d4b: $a8
	ld d, h                                          ; $6d4c: $54
	ld c, l                                          ; $6d4d: $4d
	inc a                                            ; $6d4e: $3c
	ld d, b                                          ; $6d4f: $50
	inc [hl]                                         ; $6d50: $34
	db $eb                                           ; $6d51: $eb
	sub [hl]                                         ; $6d52: $96
	and b                                            ; $6d53: $a0
	ld b, [hl]                                       ; $6d54: $46
	dec sp                                           ; $6d55: $3b
	inc [hl]                                         ; $6d56: $34
	ld d, $a8                                        ; $6d57: $16 $a8
	db $ec                                           ; $6d59: $ec
	ld e, l                                          ; $6d5a: $5d
	xor $1a                                          ; $6d5b: $ee $1a
	ld a, $3d                                        ; $6d5d: $3e $3d
	ld b, d                                          ; $6d5f: $42
	and c                                            ; $6d60: $a1
	cpl                                              ; $6d61: $2f
	ld b, e                                          ; $6d62: $43
	db $ed                                           ; $6d63: $ed
	xor c                                            ; $6d64: $a9
	xor h                                            ; $6d65: $ac
	jp hl                                            ; $6d66: $e9


	jp nz, $2fa0                                     ; $6d67: $c2 $a0 $2f

	ld b, e                                          ; $6d6a: $43
	db $ed                                           ; $6d6b: $ed
	xor c                                            ; $6d6c: $a9
	xor h                                            ; $6d6d: $ac
	jp hl                                            ; $6d6e: $e9


	jp Jump_089_46a0                                 ; $6d6f: $c3 $a0 $46


	dec sp                                           ; $6d72: $3b
	inc [hl]                                         ; $6d73: $34
	ld d, $a8                                        ; $6d74: $16 $a8
	db $ec                                           ; $6d76: $ec
	ld e, l                                          ; $6d77: $5d
	inc de                                           ; $6d78: $13

jr_089_6d79:
	xor $1a                                          ; $6d79: $ee $1a
	ld a, $3d                                        ; $6d7b: $3e $3d
	ld b, c                                          ; $6d7d: $41
	ld c, d                                          ; $6d7e: $4a
	ld d, c                                          ; $6d7f: $51
	ld c, h                                          ; $6d80: $4c
	and c                                            ; $6d81: $a1
	cpl                                              ; $6d82: $2f
	ld b, e                                          ; $6d83: $43
	db $ec                                           ; $6d84: $ec
	rst SubAFromDE                                          ; $6d85: $df
	xor h                                            ; $6d86: $ac
	jp hl                                            ; $6d87: $e9


	jp nz, $eba0                                     ; $6d88: $c2 $a0 $eb

	ld l, c                                          ; $6d8b: $69
	xor b                                            ; $6d8c: $a8
	db $ec                                           ; $6d8d: $ec
	jr @-$14                                         ; $6d8e: $18 $ea

	or [hl]                                          ; $6d90: $b6
	and b                                            ; $6d91: $a0

jr_089_6d92:
	cpl                                              ; $6d92: $2f
	ld b, e                                          ; $6d93: $43

jr_089_6d94:
	db $ec                                           ; $6d94: $ec
	rst SubAFromDE                                          ; $6d95: $df
	xor h                                            ; $6d96: $ac
	jp hl                                            ; $6d97: $e9


	jp $40a0                                         ; $6d98: $c3 $a0 $40


	add hl, sp                                       ; $6d9b: $39
	ld c, d                                          ; $6d9c: $4a
	ld d, c                                          ; $6d9d: $51
	ld b, l                                          ; $6d9e: $45
	xor b                                            ; $6d9f: $a8
	ld d, h                                          ; $6da0: $54
	ld c, l                                          ; $6da1: $4d
	inc a                                            ; $6da2: $3c
	ld d, b                                          ; $6da3: $50
	xor h                                            ; $6da4: $ac
	db $ec                                           ; $6da5: $ec
	jr jr_089_6d92                                   ; $6da6: $18 $ea

	or [hl]                                          ; $6da8: $b6
	ld c, h                                          ; $6da9: $4c
	and b                                            ; $6daa: $a0

jr_089_6dab:
	ld d, $a8                                        ; $6dab: $16 $a8
	db $ec                                           ; $6dad: $ec
	ld e, l                                          ; $6dae: $5d
	ld a, b                                          ; $6daf: $78
	dec a                                            ; $6db0: $3d
	ld b, d                                          ; $6db1: $42
	ld c, h                                          ; $6db2: $4c
	and b                                            ; $6db3: $a0
	cpl                                              ; $6db4: $2f
	ld b, e                                          ; $6db5: $43
	db $ec                                           ; $6db6: $ec
	ldh [rHDMA3], a                                  ; $6db7: $e0 $53
	xor h                                            ; $6db9: $ac
	db $ec                                           ; $6dba: $ec
	add c                                            ; $6dbb: $81
	ld b, a                                          ; $6dbc: $47
	ld c, b                                          ; $6dbd: $48
	and b                                            ; $6dbe: $a0
	db $ed                                           ; $6dbf: $ed
	ld e, [hl]                                       ; $6dc0: $5e
	inc [hl]                                         ; $6dc1: $34
	pop af                                           ; $6dc2: $f1
	ld de, $f047                                     ; $6dc3: $11 $47 $f0
	db $f4                                           ; $6dc6: $f4
	ld e, [hl]                                       ; $6dc7: $5e
	ld d, e                                          ; $6dc8: $53
	inc de                                           ; $6dc9: $13
	ld a, [hl-]                                      ; $6dca: $3a
	jr c, jr_089_6e30                                ; $6dcb: $38 $63

	and b                                            ; $6dcd: $a0
	ld c, c                                          ; $6dce: $49
	ld b, a                                          ; $6dcf: $47
	inc a                                            ; $6dd0: $3c
	ld d, l                                          ; $6dd1: $55
	inc [hl]                                         ; $6dd2: $34
	ldh a, [c]                                       ; $6dd3: $f2
	or e                                             ; $6dd4: $b3
	ldh a, [c]                                       ; $6dd5: $f2
	ld d, d                                          ; $6dd6: $52
	ld d, c                                          ; $6dd7: $51
	ld c, [hl]                                       ; $6dd8: $4e
	ld h, e                                          ; $6dd9: $63
	ld b, l                                          ; $6dda: $45
	and b                                            ; $6ddb: $a0
	cpl                                              ; $6ddc: $2f
	ld b, e                                          ; $6ddd: $43
	xor $10                                          ; $6dde: $ee $10
	and b                                            ; $6de0: $a0
	cpl                                              ; $6de1: $2f
	ld b, e                                          ; $6de2: $43
	db $ec                                           ; $6de3: $ec
	ldh [$ac], a                                     ; $6de4: $e0 $ac
	jp hl                                            ; $6de6: $e9


	jp nz, Jump_089_79a0                             ; $6de7: $c2 $a0 $79

	jr c, jr_089_6d79                                ; $6dea: $38 $8d

	jr c, @-$52                                      ; $6dec: $38 $ac

	db $ed                                           ; $6dee: $ed
	nop                                              ; $6def: $00
	ld a, [hl-]                                      ; $6df0: $3a
	ld e, b                                          ; $6df1: $58
	jr c, jr_089_6d94                                ; $6df2: $38 $a0

	cpl                                              ; $6df4: $2f
	ld b, e                                          ; $6df5: $43
	db $ec                                           ; $6df6: $ec
	ldh [$ac], a                                     ; $6df7: $e0 $ac
	jp hl                                            ; $6df9: $e9


	jp $eca0                                         ; $6dfa: $c3 $a0 $ec


	db $f4                                           ; $6dfd: $f4
	xor b                                            ; $6dfe: $a8
	ld b, l                                          ; $6dff: $45
	ld d, l                                          ; $6e00: $55
	ldh a, [$f4]                                     ; $6e01: $f0 $f4
	ld e, [hl]                                       ; $6e03: $5e
	ccf                                              ; $6e04: $3f
	ld h, h                                          ; $6e05: $64
	ld e, h                                          ; $6e06: $5c
	ld a, [hl-]                                      ; $6e07: $3a
	ld e, b                                          ; $6e08: $58
	jr c, jr_089_6dab                                ; $6e09: $38 $a0

	ld b, [hl]                                       ; $6e0b: $46
	dec sp                                           ; $6e0c: $3b
	inc [hl]                                         ; $6e0d: $34
	ld d, $a8                                        ; $6e0e: $16 $a8
	db $eb                                           ; $6e10: $eb
	sbc c                                            ; $6e11: $99
	xor h                                            ; $6e12: $ac
	ld b, l                                          ; $6e13: $45
	add hl, sp                                       ; $6e14: $39
	ld d, h                                          ; $6e15: $54
	ld b, b                                          ; $6e16: $40
	adc d                                            ; $6e17: $8a
	ldh a, [$73]                                     ; $6e18: $f0 $73
	adc a                                            ; $6e1a: $8f
	ldh a, [$5a]                                     ; $6e1b: $f0 $5a
	and b                                            ; $6e1d: $a0
	cpl                                              ; $6e1e: $2f
	ld b, e                                          ; $6e1f: $43
	db $ec                                           ; $6e20: $ec
	pop hl                                           ; $6e21: $e1
	xor b                                            ; $6e22: $a8
	jp hl                                            ; $6e23: $e9


	jp nz, $eba0                                     ; $6e24: $c2 $a0 $eb

	ld l, c                                          ; $6e27: $69
	xor b                                            ; $6e28: $a8
	db $eb                                           ; $6e29: $eb
	sub [hl]                                         ; $6e2a: $96
	and b                                            ; $6e2b: $a0
	cpl                                              ; $6e2c: $2f
	ld b, e                                          ; $6e2d: $43
	db $ec                                           ; $6e2e: $ec
	pop hl                                           ; $6e2f: $e1

jr_089_6e30:
	xor b                                            ; $6e30: $a8
	jp hl                                            ; $6e31: $e9


	jp $eaa0                                         ; $6e32: $c3 $a0 $ea


	or c                                             ; $6e35: $b1
	ld b, d                                          ; $6e36: $42
	xor c                                            ; $6e37: $a9
	db $ec                                           ; $6e38: $ec
	db $f4                                           ; $6e39: $f4
	xor b                                            ; $6e3a: $a8
	ld d, h                                          ; $6e3b: $54
	ld c, l                                          ; $6e3c: $4d
	inc a                                            ; $6e3d: $3c
	ld d, b                                          ; $6e3e: $50
	inc [hl]                                         ; $6e3f: $34
	db $eb                                           ; $6e40: $eb
	sub [hl]                                         ; $6e41: $96
	and b                                            ; $6e42: $a0
	cpl                                              ; $6e43: $2f
	ld b, e                                          ; $6e44: $43
	ld b, [hl]                                       ; $6e45: $46
	ld c, l                                          ; $6e46: $4d
	xor h                                            ; $6e47: $ac
	adc e                                            ; $6e48: $8b
	ldh a, [$72]                                     ; $6e49: $f0 $72
	ld b, d                                          ; $6e4b: $42
	ldh a, [$f8]                                     ; $6e4c: $f0 $f8
	inc [hl]                                         ; $6e4e: $34
	xor $1b                                          ; $6e4f: $ee $1b
	ld b, h                                          ; $6e51: $44
	ld b, l                                          ; $6e52: $45
	xor b                                            ; $6e53: $a8
	jp hl                                            ; $6e54: $e9


	pop hl                                           ; $6e55: $e1
	and b                                            ; $6e56: $a0
	jp hl                                            ; $6e57: $e9


	cp $a0                                           ; $6e58: $fe $a0
	cpl                                              ; $6e5a: $2f
	ld [hl-], a                                      ; $6e5b: $32
	ld h, h                                          ; $6e5c: $64
	ld l, [hl]                                       ; $6e5d: $6e
	xor h                                            ; $6e5e: $ac
	pop hl                                           ; $6e5f: $e1
	ld b, d                                          ; $6e60: $42
	pop af                                           ; $6e61: $f1
	dec l                                            ; $6e62: $2d
	ld b, h                                          ; $6e63: $44
	sub a                                            ; $6e64: $97
	ld c, b                                          ; $6e65: $48
	inc sp                                           ; $6e66: $33
	add hl, bc                                       ; $6e67: $09
	cpl                                              ; $6e68: $2f
	ld b, e                                          ; $6e69: $43
	ld l, a                                          ; $6e6a: $6f
	inc [hl]                                         ; $6e6b: $34
	ld de, $1349                                     ; $6e6c: $11 $49 $13
	add d                                            ; $6e6f: $82
	jr c, jr_089_6ec4                                ; $6e70: $38 $52

	ld d, c                                          ; $6e72: $51
	ld d, e                                          ; $6e73: $53
	xor h                                            ; $6e74: $ac
	db $ed                                           ; $6e75: $ed
	ld c, $4b                                        ; $6e76: $0e $4b
	inc [hl]                                         ; $6e78: $34
	jr c, jr_089_6ecb                                ; $6e79: $38 $50

	dec sp                                           ; $6e7b: $3b
	ld a, $56                                        ; $6e7c: $3e $56
	jr c, jr_089_6ed2                                ; $6e7e: $38 $52

	ld d, c                                          ; $6e80: $51
	inc a                                            ; $6e81: $3c
	and c                                            ; $6e82: $a1
	ld b, [hl]                                       ; $6e83: $46
	dec sp                                           ; $6e84: $3b
	xor h                                            ; $6e85: $ac
	db $eb                                           ; $6e86: $eb
	pop af                                           ; $6e87: $f1
	ld c, d                                          ; $6e88: $4a
	ld d, c                                          ; $6e89: $51
	ld c, h                                          ; $6e8a: $4c
	xor b                                            ; $6e8b: $a8
	ret                                              ; $6e8c: $c9


	sbc c                                            ; $6e8d: $99
	dec sp                                           ; $6e8e: $3b
	ccf                                              ; $6e8f: $3f
	ccf                                              ; $6e90: $3f
	db $ec                                           ; $6e91: $ec
	rst FarCall                                          ; $6e92: $f7
	xor b                                            ; $6e93: $a8
	ld h, h                                          ; $6e94: $64
	ld b, a                                          ; $6e95: $47
	ld e, c                                          ; $6e96: $59
	ld h, c                                          ; $6e97: $61
	ld d, [hl]                                       ; $6e98: $56
	ld e, c                                          ; $6e99: $59
	ld b, c                                          ; $6e9a: $41
	inc [hl]                                         ; $6e9b: $34
	db $ed                                           ; $6e9c: $ed
	halt                                             ; $6e9d: $76
	ld e, c                                          ; $6e9e: $59
	and d                                            ; $6e9f: $a2
	cpl                                              ; $6ea0: $2f
	ld [hl-], a                                      ; $6ea1: $32
	adc e                                            ; $6ea2: $8b
	ldh a, [$72]                                     ; $6ea3: $f0 $72
	ld b, d                                          ; $6ea5: $42
	ldh a, [$f8]                                     ; $6ea6: $f0 $f8
	xor h                                            ; $6ea8: $ac
	di                                               ; $6ea9: $f3
	jp c, $3853                                      ; $6eaa: $da $53 $38

	dec a                                            ; $6ead: $3d
	ld b, d                                          ; $6eae: $42
	inc a                                            ; $6eaf: $3c
	and e                                            ; $6eb0: $a3
	cpl                                              ; $6eb1: $2f
	ld b, e                                          ; $6eb2: $43
	db $ec                                           ; $6eb3: $ec
	call nc, $11ac                                   ; $6eb4: $d4 $ac $11
	ld c, d                                          ; $6eb7: $4a
	ld d, c                                          ; $6eb8: $51
	ld e, l                                          ; $6eb9: $5d
	ld e, d                                          ; $6eba: $5a
	and b                                            ; $6ebb: $a0
	ld h, h                                          ; $6ebc: $64
	dec sp                                           ; $6ebd: $3b
	inc [hl]                                         ; $6ebe: $34
	ld [de], a                                       ; $6ebf: $12
	inc a                                            ; $6ec0: $3c
	xor b                                            ; $6ec1: $a8
	ld b, l                                          ; $6ec2: $45
	ld d, l                                          ; $6ec3: $55

jr_089_6ec4:
	inc a                                            ; $6ec4: $3c
	ld e, l                                          ; $6ec5: $5d
	ccf                                              ; $6ec6: $3f
	ld e, h                                          ; $6ec7: $5c
	ccf                                              ; $6ec8: $3f
	ld d, l                                          ; $6ec9: $55
	ld c, l                                          ; $6eca: $4d

jr_089_6ecb:
	dec a                                            ; $6ecb: $3d
	ld a, [hl-]                                      ; $6ecc: $3a
	and b                                            ; $6ecd: $a0
	cpl                                              ; $6ece: $2f
	ld b, e                                          ; $6ecf: $43
	pop hl                                           ; $6ed0: $e1
	ld b, d                                          ; $6ed1: $42

jr_089_6ed2:
	sbc d                                            ; $6ed2: $9a
	ld a, [hl-]                                      ; $6ed3: $3a
	ld d, b                                          ; $6ed4: $50
	inc de                                           ; $6ed5: $13
	pop af                                           ; $6ed6: $f1
	dec h                                            ; $6ed7: $25
	ld a, c                                          ; $6ed8: $79
	ccf                                              ; $6ed9: $3f
	ld h, h                                          ; $6eda: $64
	ld e, l                                          ; $6edb: $5d
	dec sp                                           ; $6edc: $3b
	ccf                                              ; $6edd: $3f
	xor h                                            ; $6ede: $ac
	add d                                            ; $6edf: $82
	dec sp                                           ; $6ee0: $3b
	ccf                                              ; $6ee1: $3f
	dec a                                            ; $6ee2: $3d
	ld b, l                                          ; $6ee3: $45
	ld a, [hl-]                                      ; $6ee4: $3a
	ld c, b                                          ; $6ee5: $48
	and b                                            ; $6ee6: $a0
	db $ec                                           ; $6ee7: $ec
	dec l                                            ; $6ee8: $2d
	xor b                                            ; $6ee9: $a8
	ld l, e                                          ; $6eea: $6b
	ld b, a                                          ; $6eeb: $47
	add b                                            ; $6eec: $80
	jr c, jr_089_6f2e                                ; $6eed: $38 $3f

	ldh a, [$0c]                                     ; $6eef: $f0 $0c
	ld e, h                                          ; $6ef1: $5c
	dec a                                            ; $6ef2: $3d
	jr c, jr_089_6f36                                ; $6ef3: $38 $41

	ld b, h                                          ; $6ef5: $44
	and c                                            ; $6ef6: $a1
	cpl                                              ; $6ef7: $2f
	ld b, e                                          ; $6ef8: $43
	db $ec                                           ; $6ef9: $ec
	call nc, $11ac                                   ; $6efa: $d4 $ac $11
	ld b, h                                          ; $6efd: $44
	ld e, l                                          ; $6efe: $5d
	ld e, d                                          ; $6eff: $5a
	and b                                            ; $6f00: $a0
	ld a, [hl-]                                      ; $6f01: $3a
	ld b, c                                          ; $6f02: $41
	ld b, h                                          ; $6f03: $44
	inc [hl]                                         ; $6f04: $34
	ld [de], a                                       ; $6f05: $12
	inc a                                            ; $6f06: $3c
	and b                                            ; $6f07: $a0
	cpl                                              ; $6f08: $2f
	ld b, e                                          ; $6f09: $43
	ld l, e                                          ; $6f0a: $6b
	ld b, h                                          ; $6f0b: $44
	xor h                                            ; $6f0c: $ac
	ld b, b                                          ; $6f0d: $40
	ld b, d                                          ; $6f0e: $42
	ldh a, [$8d]                                     ; $6f0f: $f0 $8d
	ldh a, [$9e]                                     ; $6f11: $f0 $9e
	ld b, b                                          ; $6f13: $40
	add hl, sp                                       ; $6f14: $39
	ld a, [hl-]                                      ; $6f15: $3a
	pop af                                           ; $6f16: $f1
	dec l                                            ; $6f17: $2d
	ld c, e                                          ; $6f18: $4b
	xor b                                            ; $6f19: $a8
	halt                                             ; $6f1a: $76
	inc a                                            ; $6f1b: $3c
	ld d, b                                          ; $6f1c: $50
	ld e, e                                          ; $6f1d: $5b
	ld d, [hl]                                       ; $6f1e: $56
	ldh a, [$d0]                                     ; $6f1f: $f0 $d0
	ldh a, [c]                                       ; $6f21: $f2
	adc [hl]                                         ; $6f22: $8e
	inc a                                            ; $6f23: $3c
	and c                                            ; $6f24: $a1
	ld b, [hl]                                       ; $6f25: $46
	dec a                                            ; $6f26: $3d
	ld d, a                                          ; $6f27: $57
	ld d, d                                          ; $6f28: $52
	ld e, [hl]                                       ; $6f29: $5e
	ld b, d                                          ; $6f2a: $42
	ld d, h                                          ; $6f2b: $54
	ld c, c                                          ; $6f2c: $49
	inc de                                           ; $6f2d: $13

jr_089_6f2e:
	ldh a, [$0c]                                     ; $6f2e: $f0 $0c
	ld d, l                                          ; $6f30: $55
	ld a, [hl-]                                      ; $6f31: $3a
	ld b, l                                          ; $6f32: $45
	xor b                                            ; $6f33: $a8
	ld c, c                                          ; $6f34: $49
	ld d, h                                          ; $6f35: $54

jr_089_6f36:
	ld e, a                                          ; $6f36: $5f
	ld c, d                                          ; $6f37: $4a
	inc [hl]                                         ; $6f38: $34
	ld e, d                                          ; $6f39: $5a
	add hl, sp                                       ; $6f3a: $39
	ld a, $3d                                        ; $6f3b: $3e $3d
	ld b, c                                          ; $6f3d: $41
	ld b, h                                          ; $6f3e: $44
	db $ed                                           ; $6f3f: $ed
	ld d, a                                          ; $6f40: $57
	and c                                            ; $6f41: $a1
	ld c, b                                          ; $6f42: $48
	dec sp                                           ; $6f43: $3b
	ld c, c                                          ; $6f44: $49
	inc [hl]                                         ; $6f45: $34
	ld b, b                                          ; $6f46: $40
	ld b, d                                          ; $6f47: $42
	sbc [hl]                                         ; $6f48: $9e
	ld b, a                                          ; $6f49: $47
	dec [hl]                                         ; $6f4a: $35
	inc hl                                           ; $6f4b: $23
	inc de                                           ; $6f4c: $13
	ldh a, [$bc]                                     ; $6f4d: $f0 $bc
	ld l, b                                          ; $6f4f: $68
	ld b, d                                          ; $6f50: $42
	db $ed                                           ; $6f51: $ed
	db $10                                           ; $6f52: $10
	ld b, d                                          ; $6f53: $42
	ldh a, [$d7]                                     ; $6f54: $f0 $d7
	xor h                                            ; $6f56: $ac
	xor $27                                          ; $6f57: $ee $27
	inc a                                            ; $6f59: $3c
	ld d, b                                          ; $6f5a: $50
	ldh a, [rSCX]                                    ; $6f5b: $f0 $43
	ldh a, [rAUDTERM]                                ; $6f5d: $f0 $25
	pop af                                           ; $6f5f: $f1
	ld a, h                                          ; $6f60: $7c
	ld e, b                                          ; $6f61: $58
	ld c, l                                          ; $6f62: $4d
	dec a                                            ; $6f63: $3d
	adc l                                            ; $6f64: $8d
	and b                                            ; $6f65: $a0
	cpl                                              ; $6f66: $2f
	ld b, e                                          ; $6f67: $43
	ld b, [hl]                                       ; $6f68: $46
	ld [hl], h                                       ; $6f69: $74
	inc [hl]                                         ; $6f6a: $34
	db $eb                                           ; $6f6b: $eb
	db $fc                                           ; $6f6c: $fc
	xor h                                            ; $6f6d: $ac
	ld h, c                                          ; $6f6e: $61
	ld d, [hl]                                       ; $6f6f: $56
	ld b, c                                          ; $6f70: $41
	ld c, c                                          ; $6f71: $49
	pop af                                           ; $6f72: $f1
	ld a, h                                          ; $6f73: $7c
	ld a, $3f                                        ; $6f74: $3e $3f
	ld d, l                                          ; $6f76: $55
	ld c, l                                          ; $6f77: $4d
	dec a                                            ; $6f78: $3d
	ld b, c                                          ; $6f79: $41
	ld b, h                                          ; $6f7a: $44
	ld a, [hl-]                                      ; $6f7b: $3a
	xor b                                            ; $6f7c: $a8
	ld c, d                                          ; $6f7d: $4a
	inc [hl]                                         ; $6f7e: $34
	db $ed                                           ; $6f7f: $ed
	ld [hl], a                                       ; $6f80: $77
	ld c, e                                          ; $6f81: $4b
	and c                                            ; $6f82: $a1
	ld b, [hl]                                       ; $6f83: $46
	ld [hl], h                                       ; $6f84: $74
	inc [hl]                                         ; $6f85: $34
	db $ed                                           ; $6f86: $ed
	ld h, l                                          ; $6f87: $65
	ld a, $3d                                        ; $6f88: $3e $3d
	adc l                                            ; $6f8a: $8d
	and b                                            ; $6f8b: $a0
	cpl                                              ; $6f8c: $2f
	ld b, e                                          ; $6f8d: $43
	xor $10                                          ; $6f8e: $ee $10
	inc de                                           ; $6f90: $13
	inc hl                                           ; $6f91: $23
	ld e, d                                          ; $6f92: $5a
	ld d, h                                          ; $6f93: $54
	ld b, a                                          ; $6f94: $47
	db $ed                                           ; $6f95: $ed
	ld h, l                                          ; $6f96: $65
	ld a, $3d                                        ; $6f97: $3e $3d
	ld b, c                                          ; $6f99: $41
	ld b, h                                          ; $6f9a: $44
	and c                                            ; $6f9b: $a1
	ldh a, [$ba]                                     ; $6f9c: $f0 $ba
	ld h, l                                          ; $6f9e: $65
	ldh a, [rIF]                                     ; $6f9f: $f0 $0f
	ld b, a                                          ; $6fa1: $47
	pop af                                           ; $6fa2: $f1
	sbc l                                            ; $6fa3: $9d
	ld e, [hl]                                       ; $6fa4: $5e
	ld b, b                                          ; $6fa5: $40
	add hl, sp                                       ; $6fa6: $39
	ld a, [hl-]                                      ; $6fa7: $3a
	xor h                                            ; $6fa8: $ac
	ld e, h                                          ; $6fa9: $5c
	ldh a, [rAUD1SWEEP]                              ; $6faa: $f0 $10
	ld a, [hl-]                                      ; $6fac: $3a
	ldh a, [c]                                       ; $6fad: $f2
	ld d, a                                          ; $6fae: $57
	db $f4                                           ; $6faf: $f4
	ld [hl], $53                                     ; $6fb0: $36 $53
	dec a                                            ; $6fb2: $3d
	ld e, c                                          ; $6fb3: $59
	ld d, l                                          ; $6fb4: $55
	ld e, b                                          ; $6fb5: $58
	ld b, c                                          ; $6fb6: $41
	and d                                            ; $6fb7: $a2
	cpl                                              ; $6fb8: $2f
	ld b, e                                          ; $6fb9: $43
	xor $13                                          ; $6fba: $ee $13
	xor $13                                          ; $6fbc: $ee $13
	ld c, b                                          ; $6fbe: $48
	and b                                            ; $6fbf: $a0
	db $ed                                           ; $6fc0: $ed
	and e                                            ; $6fc1: $a3
	ld d, c                                          ; $6fc2: $51
	ld c, [hl]                                       ; $6fc3: $4e
	adc l                                            ; $6fc4: $8d
	xor b                                            ; $6fc5: $a8
	ld c, d                                          ; $6fc6: $4a
	inc [hl]                                         ; $6fc7: $34
	db $ed                                           ; $6fc8: $ed
	ld d, a                                          ; $6fc9: $57
	ld l, e                                          ; $6fca: $6b
	ld b, d                                          ; $6fcb: $42
	ldh a, [rAUD2LEN]                                ; $6fcc: $f0 $16
	ld a, [hl-]                                      ; $6fce: $3a
	ld b, c                                          ; $6fcf: $41
	ld b, h                                          ; $6fd0: $44
	and c                                            ; $6fd1: $a1
	cpl                                              ; $6fd2: $2f
	db $ed                                           ; $6fd3: $ed
	ld e, l                                          ; $6fd4: $5d
	ld b, d                                          ; $6fd5: $42
	db $ed                                           ; $6fd6: $ed
	adc e                                            ; $6fd7: $8b
	ld h, d                                          ; $6fd8: $62
	ldh a, [$0c]                                     ; $6fd9: $f0 $0c
	ld d, l                                          ; $6fdb: $55
	add hl, bc                                       ; $6fdc: $09
	cpl                                              ; $6fdd: $2f
	ld b, e                                          ; $6fde: $43
	pop hl                                           ; $6fdf: $e1
	ldh a, [rSTAT]                                   ; $6fe0: $f0 $41
	ld d, e                                          ; $6fe2: $53
	inc [hl]                                         ; $6fe3: $34
	halt                                             ; $6fe4: $76
	ld h, d                                          ; $6fe5: $62
	inc de                                           ; $6fe6: $13
	ld e, d                                          ; $6fe7: $5a
	add hl, sp                                       ; $6fe8: $39
	ld [hl], a                                       ; $6fe9: $77
	dec sp                                           ; $6fea: $3b
	ccf                                              ; $6feb: $3f
	ld c, [hl]                                       ; $6fec: $4e
	inc a                                            ; $6fed: $3c
	ldh a, [$2d]                                     ; $6fee: $f0 $2d
	ld d, a                                          ; $6ff0: $57
	dec a                                            ; $6ff1: $3d
	jr c, jr_089_7035                                ; $6ff2: $38 $41

	ld b, h                                          ; $6ff4: $44
	and b                                            ; $6ff5: $a0
	cpl                                              ; $6ff6: $2f
	ld [$6292], a                                    ; $6ff7: $ea $92 $62
	ldh a, [$0c]                                     ; $6ffa: $f0 $0c
	ld d, l                                          ; $6ffc: $55
	add hl, bc                                       ; $6ffd: $09
	cpl                                              ; $6ffe: $2f
	ld b, e                                          ; $6fff: $43
	jr c, @+$3a                                      ; $7000: $38 $38

	inc [hl]                                         ; $7002: $34
	ld [$6292], a                                    ; $7003: $ea $92 $62
	inc de                                           ; $7006: $13
	db $ec                                           ; $7007: $ec
	db $ed                                           ; $7008: $ed
	db $ec                                           ; $7009: $ec
	push af                                          ; $700a: $f5
	ld b, c                                          ; $700b: $41
	ld b, h                                          ; $700c: $44
	and b                                            ; $700d: $a0
	cpl                                              ; $700e: $2f
	ld b, e                                          ; $700f: $43
	ld l, a                                          ; $7010: $6f
	xor h                                            ; $7011: $ac
	ld de, $8249                                     ; $7012: $11 $49 $82
	jr c, jr_089_7069                                ; $7015: $38 $52

	ld d, c                                          ; $7017: $51
	ld d, e                                          ; $7018: $53
	ld c, b                                          ; $7019: $48
	and b                                            ; $701a: $a0
	ld b, [hl]                                       ; $701b: $46
	dec sp                                           ; $701c: $3b
	inc [hl]                                         ; $701d: $34
	ld d, $a8                                        ; $701e: $16 $a8
	xor $27                                          ; $7020: $ee $27
	ld b, a                                          ; $7022: $47
	ld [hl], b                                       ; $7023: $70
	ldh a, [rAUD2LEN]                                ; $7024: $f0 $16
	ld c, d                                          ; $7026: $4a
	ld d, c                                          ; $7027: $51
	inc a                                            ; $7028: $3c
	ld e, c                                          ; $7029: $59
	and c                                            ; $702a: $a1
	cpl                                              ; $702b: $2f
	ld b, e                                          ; $702c: $43
	jr c, jr_089_7063                                ; $702d: $38 $34

	jr c, jr_089_709f                                ; $702f: $38 $6e

	inc [hl]                                         ; $7031: $34
	db $ed                                           ; $7032: $ed
	ld d, a                                          ; $7033: $57
	xor h                                            ; $7034: $ac

jr_089_7035:
	adc e                                            ; $7035: $8b
	ldh a, [$72]                                     ; $7036: $f0 $72
	ld b, a                                          ; $7038: $47
	ldh a, [rAUD2LEN]                                ; $7039: $f0 $16
	ld d, e                                          ; $703b: $53
	ld b, [hl]                                       ; $703c: $46
	ld c, [hl]                                       ; $703d: $4e
	ld b, c                                          ; $703e: $41
	ld b, h                                          ; $703f: $44
	ld e, l                                          ; $7040: $5d
	ld e, d                                          ; $7041: $5a
	ld c, b                                          ; $7042: $48
	and b                                            ; $7043: $a0
	ld a, [hl-]                                      ; $7044: $3a
	ld b, c                                          ; $7045: $41
	ld b, h                                          ; $7046: $44
	inc [hl]                                         ; $7047: $34
	inc h                                            ; $7048: $24
	ld [$351e], a                                    ; $7049: $ea $1e $35
	inc hl                                           ; $704c: $23
	inc de                                           ; $704d: $13
	ld h, h                                          ; $704e: $64
	ld b, a                                          ; $704f: $47
	ld e, c                                          ; $7050: $59
	ld h, c                                          ; $7051: $61
	ld d, [hl]                                       ; $7052: $56
	ld e, c                                          ; $7053: $59
	ld b, c                                          ; $7054: $41
	xor h                                            ; $7055: $ac
	ldh a, [$ab]                                     ; $7056: $f0 $ab
	ld b, d                                          ; $7058: $42
	add h                                            ; $7059: $84
	inc a                                            ; $705a: $3c
	ld d, b                                          ; $705b: $50
	db $ed                                           ; $705c: $ed
	halt                                             ; $705d: $76
	ld e, c                                          ; $705e: $59
	and b                                            ; $705f: $a0
	ld b, [hl]                                       ; $7060: $46
	dec sp                                           ; $7061: $3b
	inc [hl]                                         ; $7062: $34

jr_089_7063:
	db $eb                                           ; $7063: $eb
	pop af                                           ; $7064: $f1
	ld c, d                                          ; $7065: $4a
	ld d, c                                          ; $7066: $51
	ld c, h                                          ; $7067: $4c
	xor b                                            ; $7068: $a8

jr_089_7069:
	ret                                              ; $7069: $c9


	sbc c                                            ; $706a: $99
	dec sp                                           ; $706b: $3b
	ccf                                              ; $706c: $3f
	ccf                                              ; $706d: $3f
	db $ec                                           ; $706e: $ec
	rst FarCall                                          ; $706f: $f7
	xor b                                            ; $7070: $a8
	ld h, h                                          ; $7071: $64
	ld b, a                                          ; $7072: $47
	ld e, c                                          ; $7073: $59
	ld h, c                                          ; $7074: $61
	ld d, [hl]                                       ; $7075: $56
	ld e, c                                          ; $7076: $59
	ld b, c                                          ; $7077: $41
	inc [hl]                                         ; $7078: $34
	db $ed                                           ; $7079: $ed
	halt                                             ; $707a: $76
	ld e, c                                          ; $707b: $59
	and d                                            ; $707c: $a2
	ret                                              ; $707d: $c9


	pop af                                           ; $707e: $f1
	ld b, $38                                        ; $707f: $06 $38
	ld e, l                                          ; $7081: $5d
	ld e, d                                          ; $7082: $5a
	xor h                                            ; $7083: $ac
	db $ec                                           ; $7084: $ec
	pop de                                           ; $7085: $d1
	db $ec                                           ; $7086: $ec
	jp nc, Jump_089_413a                             ; $7087: $d2 $3a $41

	ccf                                              ; $708a: $3f
	xor h                                            ; $708b: $ac
	ld h, e                                          ; $708c: $63
	ld d, a                                          ; $708d: $57
	ld c, c                                          ; $708e: $49
	jr c, jr_089_70c9                                ; $708f: $38 $38

	db $ec                                           ; $7091: $ec
	cp $44                                           ; $7092: $fe $44
	adc l                                            ; $7094: $8d
	and b                                            ; $7095: $a0
	db $ec                                           ; $7096: $ec
	ld sp, hl                                        ; $7097: $f9
	xor h                                            ; $7098: $ac
	db $ed                                           ; $7099: $ed
	ld [bc], a                                       ; $709a: $02
	ld d, e                                          ; $709b: $53
	sub h                                            ; $709c: $94
	ld a, b                                          ; $709d: $78
	dec a                                            ; $709e: $3d

jr_089_709f:
	ld b, c                                          ; $709f: $41
	ld b, h                                          ; $70a0: $44
	ld b, l                                          ; $70a1: $45
	xor b                                            ; $70a2: $a8
	ld h, e                                          ; $70a3: $63
	ld d, a                                          ; $70a4: $57
	ld c, c                                          ; $70a5: $49
	jr c, jr_089_70e0                                ; $70a6: $38 $38

	ld d, b                                          ; $70a8: $50
	ld a, $38                                        ; $70a9: $3e $38

jr_089_70ab:
	adc l                                            ; $70ab: $8d
	and b                                            ; $70ac: $a0
	ld l, d                                          ; $70ad: $6a
	inc [hl]                                         ; $70ae: $34
	db $ec                                           ; $70af: $ec
	db $fd                                           ; $70b0: $fd
	ld d, e                                          ; $70b1: $53
	inc de                                           ; $70b2: $13
	db $ed                                           ; $70b3: $ed
	ld l, c                                          ; $70b4: $69
	ld b, [hl]                                       ; $70b5: $46
	ld c, [hl]                                       ; $70b6: $4e
	ld l, h                                          ; $70b7: $6c
	dec a                                            ; $70b8: $3d
	jr c, jr_089_70ff                                ; $70b9: $38 $44

	adc l                                            ; $70bb: $8d
	and b                                            ; $70bc: $a0
	add e                                            ; $70bd: $83
	ldh a, [rDIV]                                    ; $70be: $f0 $04
	ldh a, [$7e]                                     ; $70c0: $f0 $7e
	ldh a, [$3d]                                     ; $70c2: $f0 $3d
	ldh a, [$27]                                     ; $70c4: $f0 $27
	ld d, e                                          ; $70c6: $53
	sub h                                            ; $70c7: $94
	ld a, b                                          ; $70c8: $78

jr_089_70c9:
	dec a                                            ; $70c9: $3d
	ld b, d                                          ; $70ca: $42
	inc de                                           ; $70cb: $13
	ldh a, [$2d]                                     ; $70cc: $f0 $2d
	dec sp                                           ; $70ce: $3b
	ccf                                              ; $70cf: $3f
	dec a                                            ; $70d0: $3d
	inc a                                            ; $70d1: $3c
	and c                                            ; $70d2: $a1
	db $ec                                           ; $70d3: $ec
	rst $38                                          ; $70d4: $ff
	ld a, [hl-]                                      ; $70d5: $3a
	ld b, c                                          ; $70d6: $41
	ccf                                              ; $70d7: $3f
	xor h                                            ; $70d8: $ac
	jr c, jr_089_7113                                ; $70d9: $38 $38

	ld b, c                                          ; $70db: $41
	db $ec                                           ; $70dc: $ec
	ret c                                            ; $70dd: $d8

	inc a                                            ; $70de: $3c
	and c                                            ; $70df: $a1

jr_089_70e0:
	ldh a, [c]                                       ; $70e0: $f2
	ld d, c                                          ; $70e1: $51
	di                                               ; $70e2: $f3
	ld [hl-], a                                      ; $70e3: $32
	ld b, d                                          ; $70e4: $42
	db $eb                                           ; $70e5: $eb
	ld [hl], l                                       ; $70e6: $75
	ldh a, [$30]                                     ; $70e7: $f0 $30
	inc de                                           ; $70e9: $13
	ld a, [hl-]                                      ; $70ea: $3a
	ld b, c                                          ; $70eb: $41
	ccf                                              ; $70ec: $3f
	ld e, d                                          ; $70ed: $5a
	add hl, sp                                       ; $70ee: $39
	ld b, h                                          ; $70ef: $44
	and c                                            ; $70f0: $a1
	ld [$3a2c], a                                    ; $70f1: $ea $2c $3a
	ld b, c                                          ; $70f4: $41
	ccf                                              ; $70f5: $3f
	xor h                                            ; $70f6: $ac
	di                                               ; $70f7: $f3
	reti                                             ; $70f8: $d9


	ld d, l                                          ; $70f9: $55
	ccf                                              ; $70fa: $3f
	jr c, jr_089_7135                                ; $70fb: $38 $38

	adc l                                            ; $70fd: $8d
	and b                                            ; $70fe: $a0

jr_089_70ff:
	db $ec                                           ; $70ff: $ec
	ld hl, sp+$34                                    ; $7100: $f8 $34
	ld d, h                                          ; $7102: $54
	ld b, d                                          ; $7103: $42
	di                                               ; $7104: $f3
	ld [hl-], a                                      ; $7105: $32
	ld b, a                                          ; $7106: $47
	ld c, a                                          ; $7107: $4f
	inc de                                           ; $7108: $13
	ldh a, [$35]                                     ; $7109: $f0 $35
	ldh a, [rSC]                                     ; $710b: $f0 $02
	ldh a, [$c3]                                     ; $710d: $f0 $c3
	ldh a, [$c2]                                     ; $710f: $f0 $c2
	ld d, e                                          ; $7111: $53
	sub h                                            ; $7112: $94

jr_089_7113:
	ld a, b                                          ; $7113: $78
	dec a                                            ; $7114: $3d
	ld b, c                                          ; $7115: $41
	ld b, h                                          ; $7116: $44
	ld b, l                                          ; $7117: $45
	and b                                            ; $7118: $a0
	cpl                                              ; $7119: $2f
	ld b, e                                          ; $711a: $43
	db $eb                                           ; $711b: $eb
	ld e, l                                          ; $711c: $5d
	xor b                                            ; $711d: $a8
	pop af                                           ; $711e: $f1
	jp hl                                            ; $711f: $e9


	inc a                                            ; $7120: $3c
	ld c, [hl]                                       ; $7121: $4e
	ld b, l                                          ; $7122: $45
	and b                                            ; $7123: $a0
	cpl                                              ; $7124: $2f
	ld b, e                                          ; $7125: $43
	db $eb                                           ; $7126: $eb
	ld e, l                                          ; $7127: $5d
	xor b                                            ; $7128: $a8
	jr c, jr_089_70ab                                ; $7129: $38 $80

	ld c, a                                          ; $712b: $4f
	ldh a, [$5c]                                     ; $712c: $f0 $5c
	jr c, jr_089_716a                                ; $712e: $38 $3a

	and b                                            ; $7130: $a0
	db $ed                                           ; $7131: $ed
	dec d                                            ; $7132: $15
	xor h                                            ; $7133: $ac
	ld d, d                                          ; $7134: $52

jr_089_7135:
	ld [hl], c                                       ; $7135: $71
	ld b, a                                          ; $7136: $47
	db $ed                                           ; $7137: $ed
	sbc c                                            ; $7138: $99
	di                                               ; $7139: $f3
	ld sp, $4f4a                                     ; $713a: $31 $4a $4f
	ldh a, [$fa]                                     ; $713d: $f0 $fa
	ld [hl], c                                       ; $713f: $71
	ld b, l                                          ; $7140: $45
	and b                                            ; $7141: $a0
	ldh a, [$5c]                                     ; $7142: $f0 $5c
	jr c, jr_089_7180                                ; $7144: $38 $3a

	xor b                                            ; $7146: $a8
	ld l, d                                          ; $7147: $6a
	ld c, e                                          ; $7148: $4b
	ldh a, [$b6]                                     ; $7149: $f0 $b6
	ld b, a                                          ; $714b: $47
	ldh a, [rAUD1LOW]                                ; $714c: $f0 $13
	jr c, jr_089_7191                                ; $714e: $38 $41

	ld b, h                                          ; $7150: $44
	xor b                                            ; $7151: $a8
	ldh a, [$34]                                     ; $7152: $f0 $34
	ld b, d                                          ; $7154: $42
	sbc d                                            ; $7155: $9a
	ld a, [hl-]                                      ; $7156: $3a
	ld d, b                                          ; $7157: $50
	inc de                                           ; $7158: $13
	db $ec                                           ; $7159: $ec
	db $ed                                           ; $715a: $ed
	ld l, [hl]                                       ; $715b: $6e
	ld c, l                                          ; $715c: $4d
	ld c, [hl]                                       ; $715d: $4e
	adc l                                            ; $715e: $8d
	and b                                            ; $715f: $a0
	cpl                                              ; $7160: $2f
	ld b, e                                          ; $7161: $43
	ld b, b                                          ; $7162: $40
	ld c, l                                          ; $7163: $4d
	ld a, [hl-]                                      ; $7164: $3a
	ld d, b                                          ; $7165: $50
	inc [hl]                                         ; $7166: $34
	pop hl                                           ; $7167: $e1
	ldh a, [rSTAT]                                   ; $7168: $f0 $41

jr_089_716a:
	ld d, e                                          ; $716a: $53
	xor h                                            ; $716b: $ac
	halt                                             ; $716c: $76
	ld h, d                                          ; $716d: $62
	ld e, d                                          ; $716e: $5a
	add hl, sp                                       ; $716f: $39
	ld [hl], a                                       ; $7170: $77
	dec sp                                           ; $7171: $3b
	ccf                                              ; $7172: $3f
	jr c, jr_089_71c3                                ; $7173: $38 $4e

	inc a                                            ; $7175: $3c
	inc de                                           ; $7176: $13
	db $ec                                           ; $7177: $ec
	db $ed                                           ; $7178: $ed
	ld d, l                                          ; $7179: $55
	ld c, l                                          ; $717a: $4d
	ld b, l                                          ; $717b: $45
	and b                                            ; $717c: $a0
	db $ed                                           ; $717d: $ed
	adc e                                            ; $717e: $8b
	inc a                                            ; $717f: $3c

jr_089_7180:
	xor l                                            ; $7180: $ad
	jp hl                                            ; $7181: $e9


	ld d, b                                          ; $7182: $50
	and b                                            ; $7183: $a0
	pop hl                                           ; $7184: $e1
	ld b, d                                          ; $7185: $42
	xor h                                            ; $7186: $ac
	ld h, h                                          ; $7187: $64
	sbc [hl]                                         ; $7188: $9e
	ld b, a                                          ; $7189: $47
	pop af                                           ; $718a: $f1
	inc c                                            ; $718b: $0c
	ld d, c                                          ; $718c: $51
	ld c, [hl]                                       ; $718d: $4e
	db $ed                                           ; $718e: $ed
	adc e                                            ; $718f: $8b
	ld c, e                                          ; $7190: $4b

jr_089_7191:
	xor $10                                          ; $7191: $ee $10
	and b                                            ; $7193: $a0
	ld d, h                                          ; $7194: $54
	ld b, c                                          ; $7195: $41
	ld a, [hl-]                                      ; $7196: $3a
	ld c, c                                          ; $7197: $49
	ld d, h                                          ; $7198: $54
	ld b, h                                          ; $7199: $44
	ld a, [hl-]                                      ; $719a: $3a
	and b                                            ; $719b: $a0
	cpl                                              ; $719c: $2f
	ld [hl-], a                                      ; $719d: $32
	pop hl                                           ; $719e: $e1
	ld b, d                                          ; $719f: $42
	db $ed                                           ; $71a0: $ed
	sbc c                                            ; $71a1: $99
	ld c, d                                          ; $71a2: $4a
	ld c, a                                          ; $71a3: $4f
	inc de                                           ; $71a4: $13
	ldh a, [$0c]                                     ; $71a5: $f0 $0c
	jr c, jr_089_71e8                                ; $71a7: $38 $3f

	ld l, h                                          ; $71a9: $6c
	ld b, l                                          ; $71aa: $45
	add hl, sp                                       ; $71ab: $39
	inc a                                            ; $71ac: $3c
	ld a, [hl-]                                      ; $71ad: $3a
	and e                                            ; $71ae: $a3
	cpl                                              ; $71af: $2f
	pop hl                                           ; $71b0: $e1
	ld b, d                                          ; $71b1: $42
	db $ed                                           ; $71b2: $ed
	sbc c                                            ; $71b3: $99
	ld h, d                                          ; $71b4: $62
	ldh a, [$0c]                                     ; $71b5: $f0 $0c
	ld d, l                                          ; $71b7: $55
	add hl, bc                                       ; $71b8: $09
	cpl                                              ; $71b9: $2f
	pop hl                                           ; $71ba: $e1
	ld b, d                                          ; $71bb: $42
	db $ed                                           ; $71bc: $ed
	sbc c                                            ; $71bd: $99
	ld h, d                                          ; $71be: $62
	ldh a, [$0c]                                     ; $71bf: $f0 $0c
	inc a                                            ; $71c1: $3c
	ld a, [hl-]                                      ; $71c2: $3a

jr_089_71c3:
	jr c, jr_089_71ce                                ; $71c3: $38 $09

	cpl                                              ; $71c5: $2f
	ld b, e                                          ; $71c6: $43
	db $ed                                           ; $71c7: $ed
	xor c                                            ; $71c8: $a9
	ld b, d                                          ; $71c9: $42
	ld [$13ba], a                                    ; $71ca: $ea $ba $13
	jp hl                                            ; $71cd: $e9


jr_089_71ce:
	xor c                                            ; $71ce: $a9
	and b                                            ; $71cf: $a0
	db $eb                                           ; $71d0: $eb
	ld c, h                                          ; $71d1: $4c
	xor b                                            ; $71d2: $a8
	jp hl                                            ; $71d3: $e9


	ld d, b                                          ; $71d4: $50
	and b                                            ; $71d5: $a0
	db $ed                                           ; $71d6: $ed
	xor b                                            ; $71d7: $a8
	inc [hl]                                         ; $71d8: $34
	db $ed                                           ; $71d9: $ed
	xor b                                            ; $71da: $a8
	xor $10                                          ; $71db: $ee $10
	ld c, c                                          ; $71dd: $49
	and b                                            ; $71de: $a0
	db $eb                                           ; $71df: $eb
	ld c, l                                          ; $71e0: $4d
	xor b                                            ; $71e1: $a8
	ld [$eca8], a                                    ; $71e2: $ea $a8 $ec
	inc bc                                           ; $71e5: $03
	and b                                            ; $71e6: $a0
	cpl                                              ; $71e7: $2f

jr_089_71e8:
	ld b, e                                          ; $71e8: $43
	db $ed                                           ; $71e9: $ed
	add d                                            ; $71ea: $82
	db $ed                                           ; $71eb: $ed
	add e                                            ; $71ec: $83
	ld e, b                                          ; $71ed: $58
	ld b, c                                          ; $71ee: $41
	ld b, d                                          ; $71ef: $42
	inc de                                           ; $71f0: $13
	ld [$13ba], a                                    ; $71f1: $ea $ba $13
	jp hl                                            ; $71f4: $e9


	xor c                                            ; $71f5: $a9
	and b                                            ; $71f6: $a0
	db $ed                                           ; $71f7: $ed
	add d                                            ; $71f8: $82
	inc [hl]                                         ; $71f9: $34
	db $ed                                           ; $71fa: $ed
	add d                                            ; $71fb: $82
	xor $10                                          ; $71fc: $ee $10
	ld c, c                                          ; $71fe: $49
	and b                                            ; $71ff: $a0
	db $eb                                           ; $7200: $eb
	ld c, l                                          ; $7201: $4d
	xor b                                            ; $7202: $a8
	ld [$13a8], a                                    ; $7203: $ea $a8 $13
	db $ec                                           ; $7206: $ec
	inc bc                                           ; $7207: $03
	and b                                            ; $7208: $a0
	cpl                                              ; $7209: $2f
	ld b, e                                          ; $720a: $43
	db $ec                                           ; $720b: $ec
	inc a                                            ; $720c: $3c
	ld e, b                                          ; $720d: $58
	ld b, c                                          ; $720e: $41
	ld b, d                                          ; $720f: $42
	inc de                                           ; $7210: $13
	ld [$13ba], a                                    ; $7211: $ea $ba $13
	jp hl                                            ; $7214: $e9


	xor c                                            ; $7215: $a9
	and b                                            ; $7216: $a0
	db $ed                                           ; $7217: $ed
	or d                                             ; $7218: $b2
	inc [hl]                                         ; $7219: $34
	db $ed                                           ; $721a: $ed
	or d                                             ; $721b: $b2
	xor $10                                          ; $721c: $ee $10
	ld c, c                                          ; $721e: $49
	and b                                            ; $721f: $a0
	cpl                                              ; $7220: $2f
	ld b, e                                          ; $7221: $43
	db $ec                                           ; $7222: $ec
	ld d, a                                          ; $7223: $57
	ld e, b                                          ; $7224: $58
	ld b, c                                          ; $7225: $41
	ld b, d                                          ; $7226: $42
	inc de                                           ; $7227: $13
	ld [$13ba], a                                    ; $7228: $ea $ba $13
	jp hl                                            ; $722b: $e9


	xor c                                            ; $722c: $a9
	and b                                            ; $722d: $a0
	db $ed                                           ; $722e: $ed
	cp l                                             ; $722f: $bd
	inc [hl]                                         ; $7230: $34
	db $ed                                           ; $7231: $ed
	cp l                                             ; $7232: $bd
	xor $10                                          ; $7233: $ee $10
	ld c, c                                          ; $7235: $49
	and b                                            ; $7236: $a0
	cpl                                              ; $7237: $2f
	ld b, e                                          ; $7238: $43
	ldh a, [$b3]                                     ; $7239: $f0 $b3
	xor $25                                          ; $723b: $ee $25
	ld e, b                                          ; $723d: $58
	ld b, c                                          ; $723e: $41
	ld b, d                                          ; $723f: $42
	inc de                                           ; $7240: $13
	ld [$13ba], a                                    ; $7241: $ea $ba $13
	jp hl                                            ; $7244: $e9


	xor c                                            ; $7245: $a9
	and b                                            ; $7246: $a0
	ldh a, [$b3]                                     ; $7247: $f0 $b3
	inc [hl]                                         ; $7249: $34
	ldh a, [$b3]                                     ; $724a: $f0 $b3
	xor $10                                          ; $724c: $ee $10
	ld c, c                                          ; $724e: $49
	and b                                            ; $724f: $a0
	cpl                                              ; $7250: $2f
	ld b, e                                          ; $7251: $43
	db $eb                                           ; $7252: $eb
	cp a                                             ; $7253: $bf
	ld e, b                                          ; $7254: $58
	ld b, c                                          ; $7255: $41
	ld b, d                                          ; $7256: $42
	inc de                                           ; $7257: $13
	ld [$13ba], a                                    ; $7258: $ea $ba $13
	jp hl                                            ; $725b: $e9


	xor c                                            ; $725c: $a9
	and b                                            ; $725d: $a0
	db $ed                                           ; $725e: $ed
	ld d, c                                          ; $725f: $51
	inc [hl]                                         ; $7260: $34
	db $ed                                           ; $7261: $ed
	ld d, c                                          ; $7262: $51
	ld a, [hl+]                                      ; $7263: $2a
	xor $10                                          ; $7264: $ee $10
	ld c, c                                          ; $7266: $49
	and b                                            ; $7267: $a0
	cpl                                              ; $7268: $2f
	ld b, e                                          ; $7269: $43
	db $eb                                           ; $726a: $eb
	db $fc                                           ; $726b: $fc
	ld b, d                                          ; $726c: $42
	inc de                                           ; $726d: $13
	ld [$13ba], a                                    ; $726e: $ea $ba $13
	jp hl                                            ; $7271: $e9


	xor c                                            ; $7272: $a9
	and b                                            ; $7273: $a0
	ld l, e                                          ; $7274: $6b
	ld b, h                                          ; $7275: $44
	inc [hl]                                         ; $7276: $34
	ld h, h                                          ; $7277: $64
	sbc [hl]                                         ; $7278: $9e
	xor b                                            ; $7279: $a8
	xor $27                                          ; $727a: $ee $27
	ld b, a                                          ; $727c: $47
	ld a, a                                          ; $727d: $7f
	ld d, e                                          ; $727e: $53
	ld b, [hl]                                       ; $727f: $46
	ld c, [hl]                                       ; $7280: $4e
	ld b, d                                          ; $7281: $42
	inc a                                            ; $7282: $3c
	and c                                            ; $7283: $a1
	cpl                                              ; $7284: $2f
	ld b, e                                          ; $7285: $43
	jr c, jr_089_72bc                                ; $7286: $38 $34

	jr c, jr_089_72f8                                ; $7288: $38 $6e

	xor b                                            ; $728a: $a8
	ld b, b                                          ; $728b: $40
	add hl, sp                                       ; $728c: $39
	add d                                            ; $728d: $82
	add hl, sp                                       ; $728e: $39
	pop af                                           ; $728f: $f1
	dec bc                                           ; $7290: $0b
	db $ec                                           ; $7291: $ec
	ret c                                            ; $7292: $d8

	ld e, l                                          ; $7293: $5d
	ld e, d                                          ; $7294: $5a
	ld c, b                                          ; $7295: $48
	add hl, bc                                       ; $7296: $09
	ldh a, [$34]                                     ; $7297: $f0 $34
	ld b, a                                          ; $7299: $47
	inc [hl]                                         ; $729a: $34
	di                                               ; $729b: $f3
	jr nc, jr_089_72f6                               ; $729c: $30 $58

	ld a, [hl-]                                      ; $729e: $3a
	ld d, l                                          ; $729f: $55
	ccf                                              ; $72a0: $3f
	ld c, a                                          ; $72a1: $4f
	inc de                                           ; $72a2: $13
	jr c, jr_089_72dd                                ; $72a3: $38 $38

	ld b, l                                          ; $72a5: $45
	xor b                                            ; $72a6: $a8
	ldh a, [$5a]                                     ; $72a7: $f0 $5a
	add l                                            ; $72a9: $85
	inc [hl]                                         ; $72aa: $34
	ld h, h                                          ; $72ab: $64
	sbc [hl]                                         ; $72ac: $9e
	ld d, e                                          ; $72ad: $53
	inc [hl]                                         ; $72ae: $34
	xor $27                                          ; $72af: $ee $27
	ld h, d                                          ; $72b1: $62
	ld c, h                                          ; $72b2: $4c
	add l                                            ; $72b3: $85
	xor b                                            ; $72b4: $a8
	db $dd                                           ; $72b5: $dd
	ldh a, [$b6]                                     ; $72b6: $f0 $b6
	ldh a, [$34]                                     ; $72b8: $f0 $34
	ld b, a                                          ; $72ba: $47
	db $ec                                           ; $72bb: $ec

jr_089_72bc:
	db $ed                                           ; $72bc: $ed
	ld l, [hl]                                       ; $72bd: $6e
	ld e, a                                          ; $72be: $5f
	add hl, sp                                       ; $72bf: $39
	and b                                            ; $72c0: $a0
	cpl                                              ; $72c1: $2f
	ld b, e                                          ; $72c2: $43
	db $ec                                           ; $72c3: $ec
	cp h                                             ; $72c4: $bc
	ld e, b                                          ; $72c5: $58
	ld b, c                                          ; $72c6: $41
	ld b, d                                          ; $72c7: $42
	inc de                                           ; $72c8: $13
	ld [$13ba], a                                    ; $72c9: $ea $ba $13
	jp hl                                            ; $72cc: $e9


	xor c                                            ; $72cd: $a9
	and b                                            ; $72ce: $a0
	xor $09                                          ; $72cf: $ee $09
	inc [hl]                                         ; $72d1: $34
	xor $09                                          ; $72d2: $ee $09
	xor $10                                          ; $72d4: $ee $10
	ld c, c                                          ; $72d6: $49
	and b                                            ; $72d7: $a0
	cpl                                              ; $72d8: $2f
	ld b, e                                          ; $72d9: $43
	db $ec                                           ; $72da: $ec
	di                                               ; $72db: $f3
	ld [hl], l                                       ; $72dc: $75

jr_089_72dd:
	ld a, l                                          ; $72dd: $7d
	ld b, d                                          ; $72de: $42
	inc de                                           ; $72df: $13
	ld [$13ba], a                                    ; $72e0: $ea $ba $13
	jp hl                                            ; $72e3: $e9


	xor c                                            ; $72e4: $a9
	and b                                            ; $72e5: $a0
	ld e, [hl]                                       ; $72e6: $5e
	inc [hl]                                         ; $72e7: $34
	db $ec                                           ; $72e8: $ec
	di                                               ; $72e9: $f3
	inc a                                            ; $72ea: $3c
	xor c                                            ; $72eb: $a9
	db $ed                                           ; $72ec: $ed
	dec d                                            ; $72ed: $15
	ldh a, [$2c]                                     ; $72ee: $f0 $2c
	adc e                                            ; $72f0: $8b
	ld e, h                                          ; $72f1: $5c
	ld a, [hl-]                                      ; $72f2: $3a
	ld l, [hl]                                       ; $72f3: $6e
	add b                                            ; $72f4: $80
	ld b, h                                          ; $72f5: $44

jr_089_72f6:
	ld a, [hl-]                                      ; $72f6: $3a
	ld [hl], h                                       ; $72f7: $74

jr_089_72f8:
	and b                                            ; $72f8: $a0
	dec sp                                           ; $72f9: $3b
	ccf                                              ; $72fa: $3f
	inc [hl]                                         ; $72fb: $34
	ld c, c                                          ; $72fc: $49
	ld d, h                                          ; $72fd: $54
	ld b, h                                          ; $72fe: $44
	ld a, [hl-]                                      ; $72ff: $3a
	and b                                            ; $7300: $a0
	cpl                                              ; $7301: $2f
	ld b, e                                          ; $7302: $43
	db $eb                                           ; $7303: $eb
	ld e, l                                          ; $7304: $5d
	and b                                            ; $7305: $a0
	ld a, [hl-]                                      ; $7306: $3a
	ld b, c                                          ; $7307: $41
	ld a, [hl-]                                      ; $7308: $3a
	ld d, b                                          ; $7309: $50
	xor h                                            ; $730a: $ac
	halt                                             ; $730b: $76
	ld d, e                                          ; $730c: $53
	xor $27                                          ; $730d: $ee $27
	ld b, a                                          ; $730f: $47
	inc de                                           ; $7310: $13
	add d                                            ; $7311: $82
	dec sp                                           ; $7312: $3b
	ccf                                              ; $7313: $3f
	ld l, [hl]                                       ; $7314: $6e
	ld e, a                                          ; $7315: $5f
	add hl, sp                                       ; $7316: $39
	inc a                                            ; $7317: $3c
	and c                                            ; $7318: $a1
	cpl                                              ; $7319: $2f
	ld b, e                                          ; $731a: $43
	ld b, h                                          ; $731b: $44
	inc a                                            ; $731c: $3c
	ld d, b                                          ; $731d: $50
	xor h                                            ; $731e: $ac
	ld b, b                                          ; $731f: $40
	ld b, c                                          ; $7320: $41
	ld a, [hl-]                                      ; $7321: $3a
	ld b, c                                          ; $7322: $41
	db $ec                                           ; $7323: $ec
	ret c                                            ; $7324: $d8

	dec sp                                           ; $7325: $3b
	ccf                                              ; $7326: $3f
	and b                                            ; $7327: $a0
	db $eb                                           ; $7328: $eb
	inc c                                            ; $7329: $0c
	xor b                                            ; $732a: $a8
	ld e, e                                          ; $732b: $5b
	ld d, [hl]                                       ; $732c: $56
	inc [hl]                                         ; $732d: $34
	sub d                                            ; $732e: $92
	adc [hl]                                         ; $732f: $8e
	ld c, l                                          ; $7330: $4d
	ld b, l                                          ; $7331: $45
	and b                                            ; $7332: $a0
	ld a, [hl-]                                      ; $7333: $3a
	ld e, c                                          ; $7334: $59
	ld b, a                                          ; $7335: $47
	inc [hl]                                         ; $7336: $34
	jr c, jr_089_7371                                ; $7337: $38 $38

	dec sp                                           ; $7339: $3b
	ccf                                              ; $733a: $3f
	ld d, h                                          ; $733b: $54
	ld c, c                                          ; $733c: $49
	ld b, l                                          ; $733d: $45
	dec [hl]                                         ; $733e: $35
	rla                                              ; $733f: $17
	pop hl                                           ; $7340: $e1
	ld b, d                                          ; $7341: $42
	db $ed                                           ; $7342: $ed
	sbc c                                            ; $7343: $99
	ld a, [hl-]                                      ; $7344: $3a
	ld d, b                                          ; $7345: $50
	inc de                                           ; $7346: $13
	halt                                             ; $7347: $76
	ld b, a                                          ; $7348: $47
	pop af                                           ; $7349: $f1
	dec h                                            ; $734a: $25
	ld a, c                                          ; $734b: $79
	ccf                                              ; $734c: $3f
	ld d, l                                          ; $734d: $55
	ld c, l                                          ; $734e: $4d
	ld b, l                                          ; $734f: $45
	and b                                            ; $7350: $a0
	xor $13                                          ; $7351: $ee $13
	inc [hl]                                         ; $7353: $34
	db $ed                                           ; $7354: $ed
	xor b                                            ; $7355: $a8
	ld c, d                                          ; $7356: $4a
	ld d, c                                          ; $7357: $51
	and b                                            ; $7358: $a0
	cpl                                              ; $7359: $2f
	ld b, e                                          ; $735a: $43
	ld e, [hl]                                       ; $735b: $5e
	dec sp                                           ; $735c: $3b
	ld c, c                                          ; $735d: $49
	xor e                                            ; $735e: $ab
	ld de, $ffe9                                     ; $735f: $11 $e9 $ff
	and b                                            ; $7362: $a0
	ld b, [hl]                                       ; $7363: $46
	dec sp                                           ; $7364: $3b
	ld c, b                                          ; $7365: $48
	inc hl                                           ; $7366: $23
	add hl, bc                                       ; $7367: $09
	cpl                                              ; $7368: $2f
	ld b, e                                          ; $7369: $43
	ld e, [hl]                                       ; $736a: $5e
	dec sp                                           ; $736b: $3b
	inc [hl]                                         ; $736c: $34
	db $eb                                           ; $736d: $eb
	rst FarCall                                          ; $736e: $f7
	and b                                            ; $736f: $a0
	add hl, sp                                       ; $7370: $39

jr_089_7371:
	xor $1f                                          ; $7371: $ee $1f
	inc [hl]                                         ; $7373: $34
	db $eb                                           ; $7374: $eb
	ld b, d                                          ; $7375: $42
	ld b, d                                          ; $7376: $42
	xor b                                            ; $7377: $a8
	ld c, c                                          ; $7378: $49
	ld d, h                                          ; $7379: $54
	ld e, a                                          ; $737a: $5f
	ld c, d                                          ; $737b: $4a
	inc [hl]                                         ; $737c: $34
	db $ed                                           ; $737d: $ed
	ld d, a                                          ; $737e: $57
	ld l, e                                          ; $737f: $6b
	ld b, d                                          ; $7380: $42
	xor $1c                                          ; $7381: $ee $1c
	and c                                            ; $7383: $a1
	ld d, $a9                                        ; $7384: $16 $a9
	db $ed                                           ; $7386: $ed
	ld d, a                                          ; $7387: $57

jr_089_7388:
	inc [hl]                                         ; $7388: $34
	ld l, e                                          ; $7389: $6b
	and c                                            ; $738a: $a1
	ld e, [hl]                                       ; $738b: $5e
	inc [hl]                                         ; $738c: $34
	ld d, $36                                        ; $738d: $16 $36
	scf                                              ; $738f: $37
	inc de                                           ; $7390: $13
	db $eb                                           ; $7391: $eb
	rst FarCall                                          ; $7392: $f7
	inc [hl]                                         ; $7393: $34
	db $ed                                           ; $7394: $ed
	ld d, a                                          ; $7395: $57
	and c                                            ; $7396: $a1
	cpl                                              ; $7397: $2f
	ld [hl-], a                                      ; $7398: $32
	ld b, l                                          ; $7399: $45
	ld d, l                                          ; $739a: $55
	ldh a, [$a4]                                     ; $739b: $f0 $a4
	ld e, [hl]                                       ; $739d: $5e
	dec a                                            ; $739e: $3d
	ld d, b                                          ; $739f: $50
	xor h                                            ; $73a0: $ac
	ldh a, [rWY]                                     ; $73a1: $f0 $4a
	ld e, c                                          ; $73a3: $59
	ld l, c                                          ; $73a4: $69
	ld c, d                                          ; $73a5: $4a
	ld e, h                                          ; $73a6: $5c
	ld c, [hl]                                       ; $73a7: $4e
	ld l, b                                          ; $73a8: $68
	ld d, e                                          ; $73a9: $53
	ld a, [hl-]                                      ; $73aa: $3a
	jr c, jr_089_741b                                ; $73ab: $38 $6e

	and e                                            ; $73ad: $a3
	cpl                                              ; $73ae: $2f
	ld [hl-], a                                      ; $73af: $32
	halt                                             ; $73b0: $76
	ld c, e                                          ; $73b1: $4b
	inc [hl]                                         ; $73b2: $34
	db $ed                                           ; $73b3: $ed
	xor c                                            ; $73b4: $a9
	ld c, c                                          ; $73b5: $49
	inc de                                           ; $73b6: $13
	sub b                                            ; $73b7: $90
	ld a, $55                                        ; $73b8: $3e $55
	ld h, h                                          ; $73ba: $64
	ld a, $56                                        ; $73bb: $3e $56
	ldh a, [$8c]                                     ; $73bd: $f0 $8c
	ld d, a                                          ; $73bf: $57
	ld a, $3d                                        ; $73c0: $3e $3d
	and e                                            ; $73c2: $a3
	cp e                                             ; $73c3: $bb
	ld h, e                                          ; $73c4: $63
	xor b                                            ; $73c5: $a8
	ld d, d                                          ; $73c6: $52
	dec a                                            ; $73c7: $3d
	db $ed                                           ; $73c8: $ed
	halt                                             ; $73c9: $76
	inc a                                            ; $73ca: $3c
	ld e, l                                          ; $73cb: $5d
	ccf                                              ; $73cc: $3f
	ld c, h                                          ; $73cd: $4c
	and b                                            ; $73ce: $a0
	cpl                                              ; $73cf: $2f
	ld b, e                                          ; $73d0: $43
	ld [$a8c3], a                                    ; $73d1: $ea $c3 $a8
	ld [$a044], a                                    ; $73d4: $ea $44 $a0
	cpl                                              ; $73d7: $2f
	ld b, e                                          ; $73d8: $43
	add sp, $01                                      ; $73d9: $e8 $01
	ld b, a                                          ; $73db: $47
	inc de                                           ; $73dc: $13
	add sp, $03                                      ; $73dd: $e8 $03
	ldh a, [$5a]                                     ; $73df: $f0 $5a
	inc de                                           ; $73e1: $13
	ld h, a                                          ; $73e2: $67
	inc a                                            ; $73e3: $3c
	ld a, [hl-]                                      ; $73e4: $3a
	jr c, jr_089_7388                                ; $73e5: $38 $a1

	inc hl                                           ; $73e7: $23
	ld e, [hl]                                       ; $73e8: $5e
	ld e, c                                          ; $73e9: $59
	ld c, c                                          ; $73ea: $49
	ld c, h                                          ; $73eb: $4c
	inc h                                            ; $73ec: $24
	ldh a, [rAUD3HIGH]                               ; $73ed: $f0 $1e
	inc h                                            ; $73ef: $24
	ldh a, [rAUD3HIGH]                               ; $73f0: $f0 $1e
	inc h                                            ; $73f2: $24
	ldh a, [rAUD3HIGH]                               ; $73f3: $f0 $1e
	inc h                                            ; $73f5: $24
	add hl, bc                                       ; $73f6: $09
	xor $1f                                          ; $73f7: $ee $1f
	inc [hl]                                         ; $73f9: $34
	ret nc                                           ; $73fa: $d0

	and b                                            ; $73fb: $a0
	cpl                                              ; $73fc: $2f
	ld b, e                                          ; $73fd: $43
	ld b, b                                          ; $73fe: $40
	ld c, l                                          ; $73ff: $4d
	ld e, e                                          ; $7400: $5b
	ld d, [hl]                                       ; $7401: $56
	xor h                                            ; $7402: $ac
	add sp, $01                                      ; $7403: $e8 $01
	ld b, a                                          ; $7405: $47
	inc de                                           ; $7406: $13
	add sp, $03                                      ; $7407: $e8 $03
	ld b, d                                          ; $7409: $42
	sbc [hl]                                         ; $740a: $9e
	ld c, d                                          ; $740b: $4a
	inc de                                           ; $740c: $13
	db $eb                                           ; $740d: $eb
	ld a, [hl]                                       ; $740e: $7e
	ld c, c                                          ; $740f: $49
	jr c, jr_089_744b                                ; $7410: $38 $39

	ld d, h                                          ; $7412: $54
	ld c, c                                          ; $7413: $49
	ld c, d                                          ; $7414: $4a
	and b                                            ; $7415: $a0
	xor $1f                                          ; $7416: $ee $1f
	inc [hl]                                         ; $7418: $34
	ld h, e                                          ; $7419: $63
	inc a                                            ; $741a: $3c

jr_089_741b:
	dec sp                                           ; $741b: $3b
	dec a                                            ; $741c: $3d
	ld h, e                                          ; $741d: $63
	xor b                                            ; $741e: $a8
	pop af                                           ; $741f: $f1
	dec d                                            ; $7420: $15
	ld c, l                                          ; $7421: $4d
	ld a, [hl-]                                      ; $7422: $3a
	jr c, jr_089_746f                                ; $7423: $38 $4a

	ld a, b                                          ; $7425: $78
	ccf                                              ; $7426: $3f
	ld c, h                                          ; $7427: $4c
	and b                                            ; $7428: $a0
	cpl                                              ; $7429: $2f
	ld b, e                                          ; $742a: $43
	pop af                                           ; $742b: $f1
	dec d                                            ; $742c: $15
	ld c, l                                          ; $742d: $4d
	ld c, [hl]                                       ; $742e: $4e
	ld h, e                                          ; $742f: $63
	ld e, l                                          ; $7430: $5d
	ldh a, [rAUD1LOW]                                ; $7431: $f0 $13
	jr c, jr_089_747a                                ; $7433: $38 $45

	xor b                                            ; $7435: $a8
	ld e, e                                          ; $7436: $5b
	ld d, [hl]                                       ; $7437: $56
	ld b, [hl]                                       ; $7438: $46
	inc [hl]                                         ; $7439: $34
	ld d, d                                          ; $743a: $52
	dec a                                            ; $743b: $3d
	and b                                            ; $743c: $a0
	cpl                                              ; $743d: $2f
	ld b, e                                          ; $743e: $43
	db $ed                                           ; $743f: $ed
	ld d, l                                          ; $7440: $55
	ld e, c                                          ; $7441: $59
	xor b                                            ; $7442: $a8
	add sp, $01                                      ; $7443: $e8 $01
	db $eb                                           ; $7445: $eb
	ld b, e                                          ; $7446: $43
	and b                                            ; $7447: $a0
	inc hl                                           ; $7448: $23
	ld e, [hl]                                       ; $7449: $5e
	ld e, c                                          ; $744a: $59

jr_089_744b:
	ld c, c                                          ; $744b: $49
	ld c, h                                          ; $744c: $4c
	inc h                                            ; $744d: $24
	ldh a, [rAUD3HIGH]                               ; $744e: $f0 $1e
	inc h                                            ; $7450: $24
	ldh a, [rAUD3HIGH]                               ; $7451: $f0 $1e
	inc h                                            ; $7453: $24
	ldh a, [rAUD3HIGH]                               ; $7454: $f0 $1e
	add hl, bc                                       ; $7456: $09
	db $eb                                           ; $7457: $eb
	ccf                                              ; $7458: $3f
	xor b                                            ; $7459: $a8
	ld b, b                                          ; $745a: $40
	ld b, d                                          ; $745b: $42
	ld l, b                                          ; $745c: $68
	ld c, e                                          ; $745d: $4b
	inc [hl]                                         ; $745e: $34
	xor $07                                          ; $745f: $ee $07
	ld d, e                                          ; $7461: $53
	ld b, [hl]                                       ; $7462: $46
	ld c, [hl]                                       ; $7463: $4e
	ld b, d                                          ; $7464: $42
	xor b                                            ; $7465: $a8
	db $ec                                           ; $7466: $ec
	add hl, bc                                       ; $7467: $09
	ldh a, [$3b]                                     ; $7468: $f0 $3b
	dec sp                                           ; $746a: $3b
	ccf                                              ; $746b: $3f
	ld d, l                                          ; $746c: $55
	ld c, l                                          ; $746d: $4d
	dec a                                            ; $746e: $3d

jr_089_746f:
	ld b, d                                          ; $746f: $42
	ld b, a                                          ; $7470: $47
	ld c, b                                          ; $7471: $48
	add hl, bc                                       ; $7472: $09
	cpl                                              ; $7473: $2f
	ld b, e                                          ; $7474: $43
	jr c, jr_089_74ab                                ; $7475: $38 $34

	jr c, jr_089_74b1                                ; $7477: $38 $38

	ld b, l                                          ; $7479: $45

jr_089_747a:
	xor b                                            ; $747a: $a8
	ld a, a                                          ; $747b: $7f
	ld b, a                                          ; $747c: $47
	ld a, $3f                                        ; $747d: $3e $3f
	ld a, [hl-]                                      ; $747f: $3a
	jr c, jr_089_74be                                ; $7480: $38 $3c

	ld d, b                                          ; $7482: $50
	and b                                            ; $7483: $a0
	ld d, d                                          ; $7484: $52
	dec a                                            ; $7485: $3d
	inc [hl]                                         ; $7486: $34
	ld l, d                                          ; $7487: $6a
	ldh a, [$0d]                                     ; $7488: $f0 $0d
	ldh a, [$3b]                                     ; $748a: $f0 $3b
	dec sp                                           ; $748c: $3b
	ccf                                              ; $748d: $3f
	ld c, h                                          ; $748e: $4c
	and b                                            ; $748f: $a0
	cpl                                              ; $7490: $2f
	ld b, e                                          ; $7491: $43
	xor $1f                                          ; $7492: $ee $1f
	inc [hl]                                         ; $7494: $34
	ld b, b                                          ; $7495: $40
	add hl, sp                                       ; $7496: $39
	ld d, c                                          ; $7497: $51
	ld c, [hl]                                       ; $7498: $4e
	xor b                                            ; $7499: $a8
	ld e, e                                          ; $749a: $5b
	ld d, [hl]                                       ; $749b: $56
	inc [hl]                                         ; $749c: $34
	ld d, d                                          ; $749d: $52
	dec a                                            ; $749e: $3d
	and b                                            ; $749f: $a0
	cpl                                              ; $74a0: $2f
	ld b, e                                          ; $74a1: $43
	ld d, l                                          ; $74a2: $55
	ld b, b                                          ; $74a3: $40
	inc [hl]                                         ; $74a4: $34
	ldh a, [$d6]                                     ; $74a5: $f0 $d6
	ld d, h                                          ; $74a7: $54
	ld b, b                                          ; $74a8: $40
	pop af                                           ; $74a9: $f1
	ld a, [de]                                       ; $74aa: $1a

jr_089_74ab:
	pop af                                           ; $74ab: $f1
	inc c                                            ; $74ac: $0c
	inc de                                           ; $74ad: $13
	ldh a, [$3b]                                     ; $74ae: $f0 $3b
	dec sp                                           ; $74b0: $3b

jr_089_74b1:
	ccf                                              ; $74b1: $3f
	ld l, h                                          ; $74b2: $6c
	ld a, c                                          ; $74b3: $79
	ld c, [hl]                                       ; $74b4: $4e
	adc l                                            ; $74b5: $8d
	and b                                            ; $74b6: $a0
	db $eb                                           ; $74b7: $eb
	ccf                                              ; $74b8: $3f
	xor b                                            ; $74b9: $a8
	ld b, b                                          ; $74ba: $40
	ld b, d                                          ; $74bb: $42
	ld l, b                                          ; $74bc: $68
	ld c, e                                          ; $74bd: $4b

jr_089_74be:
	inc [hl]                                         ; $74be: $34
	xor $07                                          ; $74bf: $ee $07
	ld d, e                                          ; $74c1: $53
	ld b, [hl]                                       ; $74c2: $46
	ld c, [hl]                                       ; $74c3: $4e
	ld b, d                                          ; $74c4: $42
	and b                                            ; $74c5: $a0
	cpl                                              ; $74c6: $2f
	ld b, e                                          ; $74c7: $43
	ld b, b                                          ; $74c8: $40
	add hl, sp                                       ; $74c9: $39
	xor l                                            ; $74ca: $ad
	ld e, e                                          ; $74cb: $5b
	ld d, [hl]                                       ; $74cc: $56
	ld b, [hl]                                       ; $74cd: $46
	inc [hl]                                         ; $74ce: $34
	ldh a, [$d6]                                     ; $74cf: $f0 $d6
	ld b, d                                          ; $74d1: $42
	ldh a, [$c6]                                     ; $74d2: $f0 $c6
	ldh a, [rHDMA3]                                  ; $74d4: $f0 $53
	ld b, a                                          ; $74d6: $47
	and b                                            ; $74d7: $a0
	xor $1f                                          ; $74d8: $ee $1f
	inc [hl]                                         ; $74da: $34
	ld [hl], b                                       ; $74db: $70
	ld [hl], c                                       ; $74dc: $71
	ld b, c                                          ; $74dd: $41
	ld c, h                                          ; $74de: $4c
	ld c, b                                          ; $74df: $48
	add hl, bc                                       ; $74e0: $09
	cpl                                              ; $74e1: $2f
	ld b, e                                          ; $74e2: $43
	ld b, [hl]                                       ; $74e3: $46
	ld e, c                                          ; $74e4: $59
	ld b, [hl]                                       ; $74e5: $46
	xor h                                            ; $74e6: $ac
	ldh a, [$2a]                                     ; $74e7: $f0 $2a
	ld d, e                                          ; $74e9: $53
	ldh a, [$5c]                                     ; $74ea: $f0 $5c
	inc a                                            ; $74ec: $3c
	dec sp                                           ; $74ed: $3b
	dec a                                            ; $74ee: $3d
	inc a                                            ; $74ef: $3c
	ld a, [hl-]                                      ; $74f0: $3a
	and b                                            ; $74f1: $a0
	ld b, [hl]                                       ; $74f2: $46
	inc [hl]                                         ; $74f3: $34
	ld b, b                                          ; $74f4: $40
	ld b, d                                          ; $74f5: $42
	ld l, b                                          ; $74f6: $68
	ld c, e                                          ; $74f7: $4b
	xor h                                            ; $74f8: $ac
	xor $07                                          ; $74f9: $ee $07
	ld d, e                                          ; $74fb: $53
	ld b, [hl]                                       ; $74fc: $46
	ld c, [hl]                                       ; $74fd: $4e
	ld b, d                                          ; $74fe: $42
	and b                                            ; $74ff: $a0
	cpl                                              ; $7500: $2f
	ld b, e                                          ; $7501: $43
	rst JumpTable                                          ; $7502: $c7
	xor l                                            ; $7503: $ad
	ld e, e                                          ; $7504: $5b
	ld d, [hl]                                       ; $7505: $56
	ld b, [hl]                                       ; $7506: $46
	inc [hl]                                         ; $7507: $34
	ldh a, [$d6]                                     ; $7508: $f0 $d6
	ld b, d                                          ; $750a: $42
	ldh a, [$c6]                                     ; $750b: $f0 $c6
	ldh a, [rHDMA3]                                  ; $750d: $f0 $53
	ld b, a                                          ; $750f: $47
	and b                                            ; $7510: $a0
	ld b, b                                          ; $7511: $40
	add hl, sp                                       ; $7512: $39
	ld a, $3f                                        ; $7513: $3e $3f
	ld d, l                                          ; $7515: $55
	ld c, l                                          ; $7516: $4d
	ld c, [hl]                                       ; $7517: $4e
	xor b                                            ; $7518: $a8
	ld e, e                                          ; $7519: $5b
	ld d, [hl]                                       ; $751a: $56
	ld b, [hl]                                       ; $751b: $46
	ld c, h                                          ; $751c: $4c
	and b                                            ; $751d: $a0
	cpl                                              ; $751e: $2f
	ld b, e                                          ; $751f: $43
	db $ec                                           ; $7520: $ec
	reti                                             ; $7521: $d9


	inc [hl]                                         ; $7522: $34
	ld b, h                                          ; $7523: $44
	ld [hl], c                                       ; $7524: $71
	inc a                                            ; $7525: $3c
	ld c, b                                          ; $7526: $48
	and b                                            ; $7527: $a0
	xor $10                                          ; $7528: $ee $10
	xor $10                                          ; $752a: $ee $10
	xor b                                            ; $752c: $a8
	ld l, e                                          ; $752d: $6b
	inc a                                            ; $752e: $3c
	inc [hl]                                         ; $752f: $34
	xor $1c                                          ; $7530: $ee $1c
	and c                                            ; $7532: $a1
	cpl                                              ; $7533: $2f
	ld [hl-], a                                      ; $7534: $32
	add hl, sp                                       ; $7535: $39
	dec sp                                           ; $7536: $3b
	inc [hl]                                         ; $7537: $34
	db $ed                                           ; $7538: $ed
	xor c                                            ; $7539: $a9
	ld b, d                                          ; $753a: $42
	ld l, [hl]                                       ; $753b: $6e
	add b                                            ; $753c: $80
	xor b                                            ; $753d: $a8
	add sp, $7b                                      ; $753e: $e8 $7b
	and e                                            ; $7540: $a3
	ld l, e                                          ; $7541: $6b
	xor c                                            ; $7542: $a9
	ldh a, [rAUD2LEN]                                ; $7543: $f0 $16
	ld d, e                                          ; $7545: $53
	ld a, [hl-]                                      ; $7546: $3a
	jr c, jr_089_7583                                ; $7547: $38 $3a

	ld d, b                                          ; $7549: $50
	pop af                                           ; $754a: $f1
	inc d                                            ; $754b: $14
	ld c, [hl]                                       ; $754c: $4e
	ld h, e                                          ; $754d: $63
	ld b, l                                          ; $754e: $45
	and b                                            ; $754f: $a0
	cpl                                              ; $7550: $2f
	ld b, e                                          ; $7551: $43
	db $eb                                           ; $7552: $eb
	rla                                              ; $7553: $17
	and b                                            ; $7554: $a0
	cpl                                              ; $7555: $2f
	jp hl                                            ; $7556: $e9


	daa                                              ; $7557: $27
	xor h                                            ; $7558: $ac
	db $ed                                           ; $7559: $ed
	xor c                                            ; $755a: $a9
	ld b, d                                          ; $755b: $42
	ldh a, [$c6]                                     ; $755c: $f0 $c6
	ldh a, [$64]                                     ; $755e: $f0 $64
	ld h, d                                          ; $7560: $62
	inc de                                           ; $7561: $13
	ld [$a32d], a                                    ; $7562: $ea $2d $a3
	db $ec                                           ; $7565: $ec
	ldh a, [$a8]                                     ; $7566: $f0 $a8
	db $d3                                           ; $7568: $d3
	xor b                                            ; $7569: $a8
	ld b, b                                          ; $756a: $40
	ld c, l                                          ; $756b: $4d
	ld e, e                                          ; $756c: $5b
	ld d, [hl]                                       ; $756d: $56
	and b                                            ; $756e: $a0
	cpl                                              ; $756f: $2f
	db $eb                                           ; $7570: $eb
	ld [hl], a                                       ; $7571: $77
	xor b                                            ; $7572: $a8
	ld l, e                                          ; $7573: $6b
	ld c, c                                          ; $7574: $49
	inc a                                            ; $7575: $3c
	inc [hl]                                         ; $7576: $34
	db $ed                                           ; $7577: $ed
	xor c                                            ; $7578: $a9
	ld b, d                                          ; $7579: $42
	ldh a, [$c6]                                     ; $757a: $f0 $c6
	ldh a, [$64]                                     ; $757c: $f0 $64
	ld c, a                                          ; $757e: $4f
	inc de                                           ; $757f: $13
	ldh a, [hDisp1_WX]                                     ; $7580: $f0 $96
	dec sp                                           ; $7582: $3b

jr_089_7583:
	dec a                                            ; $7583: $3d
	db $eb                                           ; $7584: $eb
	sbc l                                            ; $7585: $9d
	and e                                            ; $7586: $a3
	xor $13                                          ; $7587: $ee $13
	inc [hl]                                         ; $7589: $34
	db $ed                                           ; $758a: $ed
	add d                                            ; $758b: $82
	ld c, d                                          ; $758c: $4a
	ld d, c                                          ; $758d: $51
	and b                                            ; $758e: $a0
	ld d, $48                                        ; $758f: $16 $48
	xor c                                            ; $7591: $a9
	ld e, [hl]                                       ; $7592: $5e
	dec sp                                           ; $7593: $3b
	ld c, c                                          ; $7594: $49
	inc [hl]                                         ; $7595: $34
	ld l, e                                          ; $7596: $6b
	ld b, d                                          ; $7597: $42
	xor $1c                                          ; $7598: $ee $1c
	ld c, d                                          ; $759a: $4a
	ld a, $66                                        ; $759b: $3e $66
	add hl, sp                                       ; $759d: $39
	and b                                            ; $759e: $a0
	ld d, $a9                                        ; $759f: $16 $a9
	db $ed                                           ; $75a1: $ed
	ld d, a                                          ; $75a2: $57
	inc [hl]                                         ; $75a3: $34
	ld l, e                                          ; $75a4: $6b
	ld b, d                                          ; $75a5: $42
	xor $1c                                          ; $75a6: $ee $1c
	and c                                            ; $75a8: $a1
	ld e, [hl]                                       ; $75a9: $5e
	inc [hl]                                         ; $75aa: $34
	ld d, $a9                                        ; $75ab: $16 $a9
	ld l, e                                          ; $75ad: $6b
	ld b, d                                          ; $75ae: $42
	inc [hl]                                         ; $75af: $34
	xor $1c                                          ; $75b0: $ee $1c
	ld c, d                                          ; $75b2: $4a
	ld a, $66                                        ; $75b3: $3e $66
	add hl, sp                                       ; $75b5: $39
	inc a                                            ; $75b6: $3c
	and c                                            ; $75b7: $a1
	cpl                                              ; $75b8: $2f
	ld [hl-], a                                      ; $75b9: $32
	halt                                             ; $75ba: $76
	ld c, e                                          ; $75bb: $4b
	inc [hl]                                         ; $75bc: $34
	db $ec                                           ; $75bd: $ec
	rst SubAFromDE                                          ; $75be: $df
	ld c, c                                          ; $75bf: $49
	inc de                                           ; $75c0: $13
	sub b                                            ; $75c1: $90
	ld a, $55                                        ; $75c2: $3e $55
	ld h, h                                          ; $75c4: $64
	ld a, $56                                        ; $75c5: $3e $56
	ldh a, [$8c]                                     ; $75c7: $f0 $8c
	ld d, a                                          ; $75c9: $57
	ld a, $3d                                        ; $75ca: $3e $3d
	and e                                            ; $75cc: $a3
	ld [$a827], a                                    ; $75cd: $ea $27 $a8
	ld d, d                                          ; $75d0: $52
	dec a                                            ; $75d1: $3d
	db $ed                                           ; $75d2: $ed
	halt                                             ; $75d3: $76
	inc [hl]                                         ; $75d4: $34
	inc a                                            ; $75d5: $3c
	ld e, l                                          ; $75d6: $5d
	ccf                                              ; $75d7: $3f
	db $ec                                           ; $75d8: $ec
	rst FarCall                                          ; $75d9: $f7
	ld c, h                                          ; $75da: $4c
	and b                                            ; $75db: $a0
	inc hl                                           ; $75dc: $23
	ld e, [hl]                                       ; $75dd: $5e
	ld e, c                                          ; $75de: $59
	ld c, c                                          ; $75df: $49
	inc h                                            ; $75e0: $24
	ldh a, [rAUD3HIGH]                               ; $75e1: $f0 $1e
	inc h                                            ; $75e3: $24
	ldh a, [rAUD3HIGH]                               ; $75e4: $f0 $1e
	inc h                                            ; $75e6: $24
	ldh a, [rAUD3HIGH]                               ; $75e7: $f0 $1e
	add hl, bc                                       ; $75e9: $09
	xor $2d                                          ; $75ea: $ee $2d
	inc [hl]                                         ; $75ec: $34
	jr c, jr_089_7627                                ; $75ed: $38 $38

	ld c, d                                          ; $75ef: $4a
	ld d, c                                          ; $75f0: $51
	ld b, l                                          ; $75f1: $45
	and b                                            ; $75f2: $a0
	ld e, [hl]                                       ; $75f3: $5e
	ld e, [hl]                                       ; $75f4: $5e
	inc [hl]                                         ; $75f5: $34
	ld h, e                                          ; $75f6: $63
	inc a                                            ; $75f7: $3c
	ld d, a                                          ; $75f8: $57
	ld d, d                                          ; $75f9: $52
	ld a, $3d                                        ; $75fa: $3e $3d
	and b                                            ; $75fc: $a0
	cpl                                              ; $75fd: $2f
	ld b, e                                          ; $75fe: $43
	ld b, b                                          ; $75ff: $40
	ld c, l                                          ; $7600: $4d
	ld e, e                                          ; $7601: $5b
	ld d, [hl]                                       ; $7602: $56
	inc [hl]                                         ; $7603: $34
	xor $1d                                          ; $7604: $ee $1d
	ld a, $3d                                        ; $7606: $3e $3d
	ld b, l                                          ; $7608: $45
	and b                                            ; $7609: $a0
	ld e, [hl]                                       ; $760a: $5e
	ld e, c                                          ; $760b: $59
	ld c, c                                          ; $760c: $49
	inc h                                            ; $760d: $24
	ldh a, [rAUD3HIGH]                               ; $760e: $f0 $1e
	inc h                                            ; $7610: $24
	ldh a, [rAUD3HIGH]                               ; $7611: $f0 $1e
	inc h                                            ; $7613: $24
	ldh a, [rAUD3HIGH]                               ; $7614: $f0 $1e
	add hl, bc                                       ; $7616: $09
	db $eb                                           ; $7617: $eb
	ccf                                              ; $7618: $3f
	xor l                                            ; $7619: $ad
	ld b, b                                          ; $761a: $40
	ld b, d                                          ; $761b: $42
	ld l, b                                          ; $761c: $68
	ld c, e                                          ; $761d: $4b
	inc [hl]                                         ; $761e: $34
	ret                                              ; $761f: $c9


	xor $1d                                          ; $7620: $ee $1d
	ld d, e                                          ; $7622: $53
	ld c, b                                          ; $7623: $48
	and b                                            ; $7624: $a0
	cpl                                              ; $7625: $2f
	ld b, e                                          ; $7626: $43

jr_089_7627:
	ld b, [hl]                                       ; $7627: $46
	inc [hl]                                         ; $7628: $34
	ret nz                                           ; $7629: $c0

	ld c, b                                          ; $762a: $48
	and b                                            ; $762b: $a0
	db $ec                                           ; $762c: $ec
	add hl, bc                                       ; $762d: $09
	ldh a, [$3b]                                     ; $762e: $f0 $3b
	dec sp                                           ; $7630: $3b
	ccf                                              ; $7631: $3f
	inc de                                           ; $7632: $13
	jr c, jr_089_7672                                ; $7633: $38 $3d

	ld b, h                                          ; $7635: $44
	jr c, jr_089_7675                                ; $7636: $38 $3d

	ld b, d                                          ; $7638: $42
	ld b, a                                          ; $7639: $47
	db $eb                                           ; $763a: $eb
	ccf                                              ; $763b: $3f
	ld c, b                                          ; $763c: $48
	and b                                            ; $763d: $a0
	cpl                                              ; $763e: $2f
	ld b, e                                          ; $763f: $43
	ld l, d                                          ; $7640: $6a
	ldh a, [$0d]                                     ; $7641: $f0 $0d
	inc [hl]                                         ; $7643: $34
	ld l, b                                          ; $7644: $68
	ld h, d                                          ; $7645: $62
	ldh a, [c]                                       ; $7646: $f2
	xor b                                            ; $7647: $a8
	ld [hl], c                                       ; $7648: $71
	ccf                                              ; $7649: $3f
	inc de                                           ; $764a: $13
	ldh a, [$3b]                                     ; $764b: $f0 $3b
	add hl, sp                                       ; $764d: $39
	inc a                                            ; $764e: $3c
	ld d, b                                          ; $764f: $50
	dec [hl]                                         ; $7650: $35
	db $ec                                           ; $7651: $ec
	xor $54                                          ; $7652: $ee $54
	ld b, b                                          ; $7654: $40
	inc [hl]                                         ; $7655: $34
	ld [hl], b                                       ; $7656: $70
	ld [hl], c                                       ; $7657: $71
	ld b, c                                          ; $7658: $41
	ld c, h                                          ; $7659: $4c
	and b                                            ; $765a: $a0
	xor $20                                          ; $765b: $ee $20
	inc [hl]                                         ; $765d: $34
	ld b, b                                          ; $765e: $40
	ld b, d                                          ; $765f: $42
	ld l, b                                          ; $7660: $68
	ld c, e                                          ; $7661: $4b
	xor h                                            ; $7662: $ac
	ret                                              ; $7663: $c9


	xor $1d                                          ; $7664: $ee $1d
	ld d, e                                          ; $7666: $53
	ld b, [hl]                                       ; $7667: $46
	dec sp                                           ; $7668: $3b
	ccf                                              ; $7669: $3f
	xor h                                            ; $766a: $ac
	ld h, a                                          ; $766b: $67
	ld e, l                                          ; $766c: $5d
	ld a, [hl-]                                      ; $766d: $3a
	jr c, jr_089_76b1                                ; $766e: $38 $41

	ld c, d                                          ; $7670: $4a
	ld d, c                                          ; $7671: $51

jr_089_7672:
	and b                                            ; $7672: $a0
	db $eb                                           ; $7673: $eb
	ccf                                              ; $7674: $3f

jr_089_7675:
	ld c, b                                          ; $7675: $48
	and b                                            ; $7676: $a0
	ld b, b                                          ; $7677: $40
	ld b, d                                          ; $7678: $42
	ld l, b                                          ; $7679: $68
	ld c, e                                          ; $767a: $4b
	inc [hl]                                         ; $767b: $34
	xor $07                                          ; $767c: $ee $07
	ld d, e                                          ; $767e: $53
	ld b, [hl]                                       ; $767f: $46
	ld c, [hl]                                       ; $7680: $4e
	ld b, d                                          ; $7681: $42
	ld c, d                                          ; $7682: $4a
	inc de                                           ; $7683: $13
	ldh a, [$c9]                                     ; $7684: $f0 $c9
	jr c, jr_089_76c7                                ; $7686: $38 $3f

	ld a, [hl-]                                      ; $7688: $3a
	jr c, jr_089_76cc                                ; $7689: $38 $41

	ld c, d                                          ; $768b: $4a
	ld d, c                                          ; $768c: $51
	and b                                            ; $768d: $a0
	ld b, b                                          ; $768e: $40
	add hl, sp                                       ; $768f: $39
	ld a, $3f                                        ; $7690: $3e $3f
	jr c, jr_089_76d1                                ; $7692: $38 $3d

	ld b, h                                          ; $7694: $44
	ld e, l                                          ; $7695: $5d
	ld d, d                                          ; $7696: $52
	ld d, c                                          ; $7697: $51
	inc a                                            ; $7698: $3c
	xor b                                            ; $7699: $a8
	jp z, $eb34                                      ; $769a: $ca $34 $eb

	ld e, d                                          ; $769d: $5a
	and b                                            ; $769e: $a0
	inc hl                                           ; $769f: $23
	xor $10                                          ; $76a0: $ee $10
	xor $10                                          ; $76a2: $ee $10
	dec [hl]                                         ; $76a4: $35
	ld [hl+], a                                      ; $76a5: $22
	inc de                                           ; $76a6: $13
	ld l, e                                          ; $76a7: $6b
	inc a                                            ; $76a8: $3c
	inc [hl]                                         ; $76a9: $34
	xor $1c                                          ; $76aa: $ee $1c
	ld c, d                                          ; $76ac: $4a
	ld d, c                                          ; $76ad: $51
	inc a                                            ; $76ae: $3c
	and b                                            ; $76af: $a0
	cpl                                              ; $76b0: $2f

jr_089_76b1:
	ld [hl-], a                                      ; $76b1: $32
	add hl, sp                                       ; $76b2: $39
	dec sp                                           ; $76b3: $3b
	inc [hl]                                         ; $76b4: $34
	db $ec                                           ; $76b5: $ec
	rst SubAFromDE                                          ; $76b6: $df
	xor b                                            ; $76b7: $a8
	add sp, $7b                                      ; $76b8: $e8 $7b
	and e                                            ; $76ba: $a3
	xor $1c                                          ; $76bb: $ee $1c
	ld d, e                                          ; $76bd: $53
	ld a, [hl-]                                      ; $76be: $3a
	jr c, jr_089_76fb                                ; $76bf: $38 $3a

	ld d, b                                          ; $76c1: $50
	inc de                                           ; $76c2: $13
	pop af                                           ; $76c3: $f1
	inc d                                            ; $76c4: $14
	ld d, a                                          ; $76c5: $57
	ld d, d                                          ; $76c6: $52

jr_089_76c7:
	ld d, c                                          ; $76c7: $51
	ld e, l                                          ; $76c8: $5d
	ld e, d                                          ; $76c9: $5a
	ld c, b                                          ; $76ca: $48
	and b                                            ; $76cb: $a0

jr_089_76cc:
	cpl                                              ; $76cc: $2f
	jp hl                                            ; $76cd: $e9


	daa                                              ; $76ce: $27
	xor h                                            ; $76cf: $ac
	db $ec                                           ; $76d0: $ec

jr_089_76d1:
	rst SubAFromDE                                          ; $76d1: $df
	ld b, d                                          ; $76d2: $42
	ldh a, [$c6]                                     ; $76d3: $f0 $c6
	ldh a, [$64]                                     ; $76d5: $f0 $64
	ld h, d                                          ; $76d7: $62
	inc de                                           ; $76d8: $13
	ld [$a32d], a                                    ; $76d9: $ea $2d $a3
	ld [$a81e], a                                    ; $76dc: $ea $1e $a8
	ld c, d                                          ; $76df: $4a
	ld c, e                                          ; $76e0: $4b
	inc [hl]                                         ; $76e1: $34
	db $eb                                           ; $76e2: $eb
	ld e, d                                          ; $76e3: $5a
	and b                                            ; $76e4: $a0
	cpl                                              ; $76e5: $2f
	db $eb                                           ; $76e6: $eb
	ld [hl], a                                       ; $76e7: $77
	xor b                                            ; $76e8: $a8
	ld l, e                                          ; $76e9: $6b
	ld c, c                                          ; $76ea: $49
	inc a                                            ; $76eb: $3c
	inc [hl]                                         ; $76ec: $34
	db $ec                                           ; $76ed: $ec
	rst SubAFromDE                                          ; $76ee: $df
	ld b, d                                          ; $76ef: $42
	ldh a, [$c6]                                     ; $76f0: $f0 $c6
	ldh a, [$64]                                     ; $76f2: $f0 $64
	ld c, a                                          ; $76f4: $4f
	inc de                                           ; $76f5: $13
	ldh a, [hDisp1_WX]                                     ; $76f6: $f0 $96
	dec sp                                           ; $76f8: $3b
	dec a                                            ; $76f9: $3d
	db $eb                                           ; $76fa: $eb

jr_089_76fb:
	sbc l                                            ; $76fb: $9d
	and e                                            ; $76fc: $a3
	xor $13                                          ; $76fd: $ee $13
	inc [hl]                                         ; $76ff: $34
	db $ed                                           ; $7700: $ed
	or d                                             ; $7701: $b2
	ld c, d                                          ; $7702: $4a
	ld d, c                                          ; $7703: $51
	and b                                            ; $7704: $a0
	ld e, [hl]                                       ; $7705: $5e
	dec sp                                           ; $7706: $3b
	inc [hl]                                         ; $7707: $34
	ld d, $a8                                        ; $7708: $16 $a8
	ld l, a                                          ; $770a: $6f
	ld b, a                                          ; $770b: $47
	inc [hl]                                         ; $770c: $34
	ld l, e                                          ; $770d: $6b
	inc a                                            ; $770e: $3c
	ldh a, [rAUD2LEN]                                ; $770f: $f0 $16
	xor c                                            ; $7711: $a9
	ldh a, [rAUD2LEN]                                ; $7712: $f0 $16
	ldh a, [c]                                       ; $7714: $f2
	ld c, [hl]                                       ; $7715: $4e
	ld h, d                                          ; $7716: $62
	xor h                                            ; $7717: $ac
	ldh a, [$0a]                                     ; $7718: $f0 $0a
	ld d, l                                          ; $771a: $55
	add d                                            ; $771b: $82
	jr c, jr_089_7758                                ; $771c: $38 $3a

	ld e, b                                          ; $771e: $58
	jr c, jr_089_7766                                ; $771f: $38 $45

	and b                                            ; $7721: $a0
	ld d, $a8                                        ; $7722: $16 $a8
	ldh a, [$5f]                                     ; $7724: $f0 $5f
	ldh a, [$9b]                                     ; $7726: $f0 $9b
	inc [hl]                                         ; $7728: $34
	ldh a, [c]                                       ; $7729: $f2
	ei                                               ; $772a: $fb
	ld c, l                                          ; $772b: $4d
	ldh a, [c]                                       ; $772c: $f2
	ei                                               ; $772d: $fb
	ld c, l                                          ; $772e: $4d
	ld a, $38                                        ; $772f: $3e $38
	ld h, e                                          ; $7731: $63
	ld c, h                                          ; $7732: $4c
	xor b                                            ; $7733: $a8
	ld l, e                                          ; $7734: $6b
	ld b, d                                          ; $7735: $42
	ldh a, [rAUD2LEN]                                ; $7736: $f0 $16
	and c                                            ; $7738: $a1
	ld b, [hl]                                       ; $7739: $46
	ld b, [hl]                                       ; $773a: $46
	inc [hl]                                         ; $773b: $34
	ld d, $4c                                        ; $773c: $16 $4c
	xor b                                            ; $773e: $a8
	ld l, a                                          ; $773f: $6f
	ld b, a                                          ; $7740: $47
	inc [hl]                                         ; $7741: $34
	ld l, e                                          ; $7742: $6b
	inc a                                            ; $7743: $3c
	ldh a, [rAUD2LEN]                                ; $7744: $f0 $16
	and c                                            ; $7746: $a1
	cpl                                              ; $7747: $2f
	ld [hl-], a                                      ; $7748: $32
	halt                                             ; $7749: $76
	ld c, e                                          ; $774a: $4b
	inc [hl]                                         ; $774b: $34
	db $ec                                           ; $774c: $ec
	ldh [rOBP1], a                                   ; $774d: $e0 $49
	inc de                                           ; $774f: $13
	sub b                                            ; $7750: $90
	ld a, $55                                        ; $7751: $3e $55
	ld h, h                                          ; $7753: $64
	ld a, $56                                        ; $7754: $3e $56
	ldh a, [$8c]                                     ; $7756: $f0 $8c

jr_089_7758:
	ld d, a                                          ; $7758: $57
	ld a, $3d                                        ; $7759: $3e $3d
	and e                                            ; $775b: $a3
	db $ec                                           ; $775c: $ec
	ld a, [de]                                       ; $775d: $1a
	xor h                                            ; $775e: $ac
	ld h, h                                          ; $775f: $64
	ld a, $56                                        ; $7760: $3e $56
	ldh a, [$8c]                                     ; $7762: $f0 $8c
	ld d, a                                          ; $7764: $57
	ld c, a                                          ; $7765: $4f

jr_089_7766:
	inc [hl]                                         ; $7766: $34
	jr c, jr_089_77a1                                ; $7767: $38 $38

	ld c, a                                          ; $7769: $4f
	ld b, d                                          ; $776a: $42
	ld c, h                                          ; $776b: $4c
	and b                                            ; $776c: $a0
	cpl                                              ; $776d: $2f
	ld b, e                                          ; $776e: $43
	ld b, b                                          ; $776f: $40
	add hl, sp                                       ; $7770: $39
	ld c, d                                          ; $7771: $4a
	ld a, $66                                        ; $7772: $3e $66
	add hl, sp                                       ; $7774: $39
	xor b                                            ; $7775: $a8
	ld [$a044], a                                    ; $7776: $ea $44 $a0
	inc h                                            ; $7779: $24
	ldh a, [rAUD3HIGH]                               ; $777a: $f0 $1e
	inc h                                            ; $777c: $24
	ldh a, [rAUD3HIGH]                               ; $777d: $f0 $1e
	inc h                                            ; $777f: $24
	ldh a, [rAUD3HIGH]                               ; $7780: $f0 $1e
	add hl, bc                                       ; $7782: $09
	xor $14                                          ; $7783: $ee $14
	inc [hl]                                         ; $7785: $34
	ldh a, [$8d]                                     ; $7786: $f0 $8d
	ldh a, [$9e]                                     ; $7788: $f0 $9e
	ld b, h                                          ; $778a: $44
	ld h, e                                          ; $778b: $63
	xor b                                            ; $778c: $a8
	ld b, b                                          ; $778d: $40
	ld b, d                                          ; $778e: $42
	ld l, b                                          ; $778f: $68
	ld c, e                                          ; $7790: $4b
	inc [hl]                                         ; $7791: $34
	db $ed                                           ; $7792: $ed
	xor d                                            ; $7793: $aa
	inc de                                           ; $7794: $13
	ldh a, [$c9]                                     ; $7795: $f0 $c9
	jr c, jr_089_77d8                                ; $7797: $38 $3f

	jr c, jr_089_77e9                                ; $7799: $38 $4e

	ld b, d                                          ; $779b: $42
	ld b, l                                          ; $779c: $45
	and b                                            ; $779d: $a0
	ld l, a                                          ; $779e: $6f
	ld b, a                                          ; $779f: $47
	pop af                                           ; $77a0: $f1

jr_089_77a1:
	rst AddAOntoHL                                          ; $77a1: $ef
	db $f4                                           ; $77a2: $f4
	ld a, [de]                                       ; $77a3: $1a
	ld d, c                                          ; $77a4: $51
	ld c, [hl]                                       ; $77a5: $4e
	add b                                            ; $77a6: $80
	ld c, a                                          ; $77a7: $4f
	ld d, a                                          ; $77a8: $57
	and c                                            ; $77a9: $a1
	cpl                                              ; $77aa: $2f
	ld b, e                                          ; $77ab: $43
	ld b, b                                          ; $77ac: $40
	ld c, l                                          ; $77ad: $4d
	ld e, e                                          ; $77ae: $5b
	ld d, [hl]                                       ; $77af: $56
	inc [hl]                                         ; $77b0: $34
	ld e, d                                          ; $77b1: $5a
	ld d, h                                          ; $77b2: $54
	ld c, d                                          ; $77b3: $4a
	inc de                                           ; $77b4: $13
	db $eb                                           ; $77b5: $eb
	ld a, [hl]                                       ; $77b6: $7e
	ld d, e                                          ; $77b7: $53
	jr c, jr_089_77f2                                ; $77b8: $38 $38

	and c                                            ; $77ba: $a1
	ld c, b                                          ; $77bb: $48
	ld e, b                                          ; $77bc: $58
	dec sp                                           ; $77bd: $3b
	ld e, h                                          ; $77be: $5c
	ld b, d                                          ; $77bf: $42
	ldh a, [$28]                                     ; $77c0: $f0 $28
	ld c, d                                          ; $77c2: $4a
	jr c, jr_089_77fd                                ; $77c3: $38 $38

	ld h, e                                          ; $77c5: $63
	xor b                                            ; $77c6: $a8
	ldh a, [rAUD2LEN]                                ; $77c7: $f0 $16
	ld d, e                                          ; $77c9: $53
	ldh a, [c]                                       ; $77ca: $f2
	db $db                                           ; $77cb: $db
	ld b, c                                          ; $77cc: $41
	ld b, h                                          ; $77cd: $44
	ld a, [hl-]                                      ; $77ce: $3a
	ld d, b                                          ; $77cf: $50
	xor h                                            ; $77d0: $ac
	ld c, a                                          ; $77d1: $4f
	add hl, sp                                       ; $77d2: $39
	pop af                                           ; $77d3: $f1
	inc d                                            ; $77d4: $14
	ld c, [hl]                                       ; $77d5: $4e
	ld h, e                                          ; $77d6: $63
	ld b, l                                          ; $77d7: $45

jr_089_77d8:
	and b                                            ; $77d8: $a0
	xor $14                                          ; $77d9: $ee $14
	inc [hl]                                         ; $77db: $34
	ldh a, [$8d]                                     ; $77dc: $f0 $8d
	ldh a, [$9e]                                     ; $77de: $f0 $9e
	ld c, h                                          ; $77e0: $4c
	xor b                                            ; $77e1: $a8
	ld b, b                                          ; $77e2: $40
	ld b, d                                          ; $77e3: $42
	ld l, b                                          ; $77e4: $68
	ld c, e                                          ; $77e5: $4b
	xor h                                            ; $77e6: $ac
	ldh a, [$c9]                                     ; $77e7: $f0 $c9

jr_089_77e9:
	jr c, jr_089_782a                                ; $77e9: $38 $3f

	ld a, [hl-]                                      ; $77eb: $3a
	jr c, jr_089_7830                                ; $77ec: $38 $42

	ld b, l                                          ; $77ee: $45
	and b                                            ; $77ef: $a0
	cpl                                              ; $77f0: $2f
	ld b, e                                          ; $77f1: $43

jr_089_77f2:
	ld b, b                                          ; $77f2: $40
	add hl, sp                                       ; $77f3: $39
	xor l                                            ; $77f4: $ad
	ret                                              ; $77f5: $c9


	ldh a, [$8d]                                     ; $77f6: $f0 $8d
	ldh a, [$9e]                                     ; $77f8: $f0 $9e
	and b                                            ; $77fa: $a0
	ld l, a                                          ; $77fb: $6f
	xor h                                            ; $77fc: $ac

jr_089_77fd:
	xor $17                                          ; $77fd: $ee $17
	ld c, d                                          ; $77ff: $4a
	pop af                                           ; $7800: $f1
	adc a                                            ; $7801: $8f
	ld a, $38                                        ; $7802: $3e $38
	inc a                                            ; $7804: $3c
	ld d, b                                          ; $7805: $50
	and b                                            ; $7806: $a0
	cpl                                              ; $7807: $2f
	ld b, e                                          ; $7808: $43
	pop af                                           ; $7809: $f1
	adc a                                            ; $780a: $8f
	ld a, $38                                        ; $780b: $3e $38
	ld c, c                                          ; $780d: $49
	ld d, h                                          ; $780e: $54
	ld e, a                                          ; $780f: $5f
	ld h, d                                          ; $7810: $62
	xor h                                            ; $7811: $ac
	ld [hl], b                                       ; $7812: $70
	ld [hl], c                                       ; $7813: $71
	ld b, c                                          ; $7814: $41
	ld c, h                                          ; $7815: $4c
	dec [hl]                                         ; $7816: $35
	ld e, e                                          ; $7817: $5b
	ld d, [hl]                                       ; $7818: $56
	ld b, [hl]                                       ; $7819: $46
	inc [hl]                                         ; $781a: $34
	ld d, d                                          ; $781b: $52
	dec a                                            ; $781c: $3d
	and b                                            ; $781d: $a0
	xor $14                                          ; $781e: $ee $14
	xor h                                            ; $7820: $ac
	ld b, b                                          ; $7821: $40
	ld b, d                                          ; $7822: $42
	ld l, b                                          ; $7823: $68
	ld c, e                                          ; $7824: $4b
	ldh a, [$c9]                                     ; $7825: $f0 $c9
	jr c, jr_089_7868                                ; $7827: $38 $3f

	ld a, [hl-]                                      ; $7829: $3a

jr_089_782a:
	jr c, jr_089_788f                                ; $782a: $38 $63

	and b                                            ; $782c: $a0
	ld l, a                                          ; $782d: $6f
	ld b, a                                          ; $782e: $47
	xor h                                            ; $782f: $ac

jr_089_7830:
	ldh a, [$d6]                                     ; $7830: $f0 $d6
	ld c, c                                          ; $7832: $49
	jr c, jr_089_786e                                ; $7833: $38 $39

	add d                                            ; $7835: $82
	pop af                                           ; $7836: $f1
	adc h                                            ; $7837: $8c
	ld c, e                                          ; $7838: $4b
	ld a, [hl-]                                      ; $7839: $3a
	jr c, jr_089_787e                                ; $783a: $38 $42

	xor b                                            ; $783c: $a8
	ld b, b                                          ; $783d: $40
	ld c, l                                          ; $783e: $4d
	ld e, e                                          ; $783f: $5b
	ld d, [hl]                                       ; $7840: $56
	ldh a, [rHDMA5]                                  ; $7841: $f0 $55
	ldh a, [rBCPS]                                   ; $7843: $f0 $68
	ld d, c                                          ; $7845: $51
	ld c, [hl]                                       ; $7846: $4e
	ld h, e                                          ; $7847: $63
	and b                                            ; $7848: $a0
	inc hl                                           ; $7849: $23
	ld b, b                                          ; $784a: $40
	ld b, d                                          ; $784b: $42
	ld l, b                                          ; $784c: $68
	ld c, e                                          ; $784d: $4b
	inc [hl]                                         ; $784e: $34
	xor $05                                          ; $784f: $ee $05
	ld b, l                                          ; $7851: $45
	and b                                            ; $7852: $a0
	ld l, a                                          ; $7853: $6f
	ld b, a                                          ; $7854: $47
	inc [hl]                                         ; $7855: $34
	ldh a, [$d6]                                     ; $7856: $f0 $d6
	ld c, c                                          ; $7858: $49
	jr c, jr_089_7894                                ; $7859: $38 $39

	add d                                            ; $785b: $82
	pop af                                           ; $785c: $f1
	adc h                                            ; $785d: $8c
	ld c, e                                          ; $785e: $4b
	inc de                                           ; $785f: $13
	ld a, [hl-]                                      ; $7860: $3a
	jr c, @+$44                                      ; $7861: $38 $42

	dec [hl]                                         ; $7863: $35
	ld e, e                                          ; $7864: $5b
	ld d, [hl]                                       ; $7865: $56
	ld b, [hl]                                       ; $7866: $46
	and b                                            ; $7867: $a0

jr_089_7868:
	inc hl                                           ; $7868: $23
	xor $10                                          ; $7869: $ee $10
	xor $10                                          ; $786b: $ee $10
	dec [hl]                                         ; $786d: $35

jr_089_786e:
	ld [hl+], a                                      ; $786e: $22
	inc de                                           ; $786f: $13
	ld d, h                                          ; $7870: $54
	ld b, d                                          ; $7871: $42
	ld l, a                                          ; $7872: $6f
	ld b, a                                          ; $7873: $47
	inc [hl]                                         ; $7874: $34
	ld l, e                                          ; $7875: $6b
	inc a                                            ; $7876: $3c
	ldh a, [rAUD2LEN]                                ; $7877: $f0 $16
	and c                                            ; $7879: $a1
	cpl                                              ; $787a: $2f
	ld [hl-], a                                      ; $787b: $32
	add hl, sp                                       ; $787c: $39
	dec sp                                           ; $787d: $3b

jr_089_787e:
	inc [hl]                                         ; $787e: $34
	db $ec                                           ; $787f: $ec
	ldh [$a8], a                                     ; $7880: $e0 $a8
	add sp, $7b                                      ; $7882: $e8 $7b
	and e                                            ; $7884: $a3
	ldh a, [rBGP]                                    ; $7885: $f0 $47
	ldh a, [$2a]                                     ; $7887: $f0 $2a
	ld b, d                                          ; $7889: $42
	ldh a, [rAUD1LOW]                                ; $788a: $f0 $13
	ldh a, [$af]                                     ; $788c: $f0 $af
	ld b, l                                          ; $788e: $45

jr_089_788f:
	xor b                                            ; $788f: $a8
	ldh a, [rAUD2LEN]                                ; $7890: $f0 $16
	ld d, e                                          ; $7892: $53
	ld a, [hl-]                                      ; $7893: $3a

jr_089_7894:
	jr c, jr_089_78d0                                ; $7894: $38 $3a

	ld d, b                                          ; $7896: $50
	pop af                                           ; $7897: $f1
	inc d                                            ; $7898: $14
	ld c, [hl]                                       ; $7899: $4e
	ld h, e                                          ; $789a: $63
	ld b, l                                          ; $789b: $45
	and b                                            ; $789c: $a0
	cpl                                              ; $789d: $2f
	jp hl                                            ; $789e: $e9


	daa                                              ; $789f: $27
	xor h                                            ; $78a0: $ac
	db $ec                                           ; $78a1: $ec
	ldh [rSCY], a                                    ; $78a2: $e0 $42
	ldh a, [$c6]                                     ; $78a4: $f0 $c6
	ldh a, [$64]                                     ; $78a6: $f0 $64
	ld h, d                                          ; $78a8: $62
	inc de                                           ; $78a9: $13
	ld [$a32d], a                                    ; $78aa: $ea $2d $a3
	ld b, b                                          ; $78ad: $40
	add hl, sp                                       ; $78ae: $39
	xor b                                            ; $78af: $a8
	ld [$a021], a                                    ; $78b0: $ea $21 $a0
	cpl                                              ; $78b3: $2f
	db $eb                                           ; $78b4: $eb
	ld [hl], a                                       ; $78b5: $77
	xor b                                            ; $78b6: $a8
	ld l, e                                          ; $78b7: $6b
	ld c, c                                          ; $78b8: $49
	inc a                                            ; $78b9: $3c
	inc [hl]                                         ; $78ba: $34
	db $ec                                           ; $78bb: $ec
	ldh [rSCY], a                                    ; $78bc: $e0 $42
	ldh a, [$c6]                                     ; $78be: $f0 $c6
	ldh a, [$64]                                     ; $78c0: $f0 $64
	ld c, a                                          ; $78c2: $4f
	inc de                                           ; $78c3: $13
	ldh a, [hDisp1_WX]                                     ; $78c4: $f0 $96
	dec sp                                           ; $78c6: $3b
	dec a                                            ; $78c7: $3d
	db $eb                                           ; $78c8: $eb
	sbc l                                            ; $78c9: $9d
	and e                                            ; $78ca: $a3
	xor $13                                          ; $78cb: $ee $13
	inc [hl]                                         ; $78cd: $34
	db $ed                                           ; $78ce: $ed
	cp l                                             ; $78cf: $bd

jr_089_78d0:
	ld c, d                                          ; $78d0: $4a
	ld d, c                                          ; $78d1: $51
	and b                                            ; $78d2: $a0
	ld e, [hl]                                       ; $78d3: $5e
	dec sp                                           ; $78d4: $3b
	inc [hl]                                         ; $78d5: $34
	ld d, $a8                                        ; $78d6: $16 $a8
	ld h, e                                          ; $78d8: $63
	inc [hl]                                         ; $78d9: $34
	ld l, a                                          ; $78da: $6f
	ld b, a                                          ; $78db: $47
	ld l, e                                          ; $78dc: $6b
	inc a                                            ; $78dd: $3c
	ldh a, [rAUD2LEN]                                ; $78de: $f0 $16
	and c                                            ; $78e0: $a1
	xor $14                                          ; $78e1: $ee $14
	inc [hl]                                         ; $78e3: $34
	ld d, $a8                                        ; $78e4: $16 $a8
	db $eb                                           ; $78e6: $eb
	rst FarCall                                          ; $78e7: $f7
	and c                                            ; $78e8: $a1
	xor $14                                          ; $78e9: $ee $14
	inc [hl]                                         ; $78eb: $34
	ld d, $a8                                        ; $78ec: $16 $a8
	ld l, a                                          ; $78ee: $6f
	ld b, a                                          ; $78ef: $47
	ldh a, [rAUD2LEN]                                ; $78f0: $f0 $16
	and c                                            ; $78f2: $a1
	cpl                                              ; $78f3: $2f
	ld [hl-], a                                      ; $78f4: $32
	halt                                             ; $78f5: $76
	ld c, e                                          ; $78f6: $4b
	inc [hl]                                         ; $78f7: $34
	db $ec                                           ; $78f8: $ec
	pop hl                                           ; $78f9: $e1
	ld c, c                                          ; $78fa: $49
	inc de                                           ; $78fb: $13
	sub b                                            ; $78fc: $90
	ld a, $55                                        ; $78fd: $3e $55
	ld h, h                                          ; $78ff: $64
	ld a, $56                                        ; $7900: $3e $56
	ldh a, [$8c]                                     ; $7902: $f0 $8c
	ld d, a                                          ; $7904: $57
	ld a, $3d                                        ; $7905: $3e $3d
	and e                                            ; $7907: $a3
	db $ed                                           ; $7908: $ed
	add c                                            ; $7909: $81
	ldh a, [$8e]                                     ; $790a: $f0 $8e
	pop af                                           ; $790c: $f1
	ld c, l                                          ; $790d: $4d
	ld h, l                                          ; $790e: $65
	inc [hl]                                         ; $790f: $34
	cp e                                             ; $7910: $bb
	inc de                                           ; $7911: $13
	ld h, e                                          ; $7912: $63
	dec [hl]                                         ; $7913: $35
	ld d, d                                          ; $7914: $52
	dec a                                            ; $7915: $3d
	db $ed                                           ; $7916: $ed
	halt                                             ; $7917: $76
	inc a                                            ; $7918: $3c
	ld e, l                                          ; $7919: $5d
	ccf                                              ; $791a: $3f
	ld c, h                                          ; $791b: $4c
	and b                                            ; $791c: $a0

jr_089_791d:
	ret                                              ; $791d: $c9


	sbc c                                            ; $791e: $99
	dec sp                                           ; $791f: $3b
	ccf                                              ; $7920: $3f
	inc h                                            ; $7921: $24
	ldh a, [rAUD3HIGH]                               ; $7922: $f0 $1e
	inc h                                            ; $7924: $24
	ldh a, [rAUD3HIGH]                               ; $7925: $f0 $1e
	inc h                                            ; $7927: $24
	ldh a, [rAUD3HIGH]                               ; $7928: $f0 $1e
	add hl, bc                                       ; $792a: $09
	db $ed                                           ; $792b: $ed
	ld l, l                                          ; $792c: $6d
	inc [hl]                                         ; $792d: $34
	ret nc                                           ; $792e: $d0

	and b                                            ; $792f: $a0
	db $ed                                           ; $7930: $ed
	ld a, l                                          ; $7931: $7d
	add [hl]                                         ; $7932: $86
	sbc b                                            ; $7933: $98
	ld e, c                                          ; $7934: $59
	inc [hl]                                         ; $7935: $34
	ldh a, [rTAC]                                    ; $7936: $f0 $07
	inc a                                            ; $7938: $3c
	dec sp                                           ; $7939: $3b
	dec a                                            ; $793a: $3d
	ld h, e                                          ; $793b: $63
	xor b                                            ; $793c: $a8
	or h                                             ; $793d: $b4
	inc [hl]                                         ; $793e: $34
	pop af                                           ; $793f: $f1
	inc d                                            ; $7940: $14
	ld c, [hl]                                       ; $7941: $4e
	ld h, e                                          ; $7942: $63
	ld b, l                                          ; $7943: $45
	and b                                            ; $7944: $a0
	ld b, [hl]                                       ; $7945: $46
	ld h, c                                          ; $7946: $61
	ld d, [hl]                                       ; $7947: $56
	ld e, c                                          ; $7948: $59
	xor b                                            ; $7949: $a8
	ld b, b                                          ; $794a: $40
	ld b, d                                          ; $794b: $42
	ld l, b                                          ; $794c: $68
	ld c, e                                          ; $794d: $4b
	inc [hl]                                         ; $794e: $34
	ret                                              ; $794f: $c9


	inc de                                           ; $7950: $13
	ld [$45cf], a                                    ; $7951: $ea $cf $45
	and b                                            ; $7954: $a0
	cpl                                              ; $7955: $2f
	ld b, e                                          ; $7956: $43
	xor $14                                          ; $7957: $ee $14
	ld e, c                                          ; $7959: $59
	inc [hl]                                         ; $795a: $34
	ret nz                                           ; $795b: $c0

	ld c, b                                          ; $795c: $48
	and b                                            ; $795d: $a0
	ldh a, [$5c]                                     ; $795e: $f0 $5c
	jr c, jr_089_79a3                                ; $7960: $38 $41

	ld b, h                                          ; $7962: $44
	ld e, l                                          ; $7963: $5d
	ld e, d                                          ; $7964: $5a
	xor h                                            ; $7965: $ac
	ld d, d                                          ; $7966: $52
	dec a                                            ; $7967: $3d
	ld l, d                                          ; $7968: $6a
	ldh a, [$0d]                                     ; $7969: $f0 $0d
	ldh a, [$3b]                                     ; $796b: $f0 $3b
	dec sp                                           ; $796d: $3b
	ccf                                              ; $796e: $3f
	ld d, l                                          ; $796f: $55
	ld b, c                                          ; $7970: $41
	ld a, [hl-]                                      ; $7971: $3a
	jr c, jr_089_791d                                ; $7972: $38 $a9

	ld [hl], b                                       ; $7974: $70
	ld [hl], c                                       ; $7975: $71
	ld b, c                                          ; $7976: $41
	ld c, h                                          ; $7977: $4c
	and b                                            ; $7978: $a0
	cpl                                              ; $7979: $2f
	ld b, e                                          ; $797a: $43
	jp hl                                            ; $797b: $e9


	rst SubAFromDE                                          ; $797c: $df
	xor b                                            ; $797d: $a8
	ld e, e                                          ; $797e: $5b
	ld d, [hl]                                       ; $797f: $56
	ld b, [hl]                                       ; $7980: $46
	inc [hl]                                         ; $7981: $34
	ld d, d                                          ; $7982: $52
	dec a                                            ; $7983: $3d
	and b                                            ; $7984: $a0
	ld b, b                                          ; $7985: $40
	ld b, d                                          ; $7986: $42
	ld l, b                                          ; $7987: $68
	ld c, e                                          ; $7988: $4b
	inc [hl]                                         ; $7989: $34
	ret                                              ; $798a: $c9


	inc de                                           ; $798b: $13
	ld [$45cf], a                                    ; $798c: $ea $cf $45
	and b                                            ; $798f: $a0
	call c, $5234                                    ; $7990: $dc $34 $52
	dec a                                            ; $7993: $3d
	ld l, d                                          ; $7994: $6a
	ldh a, [$0d]                                     ; $7995: $f0 $0d
	ld c, h                                          ; $7997: $4c
	and b                                            ; $7998: $a0
	inc hl                                           ; $7999: $23
	ld b, [hl]                                       ; $799a: $46
	dec sp                                           ; $799b: $3b
	inc [hl]                                         ; $799c: $34
	ld b, h                                          ; $799d: $44
	ld [hl], c                                       ; $799e: $71
	ld b, l                                          ; $799f: $45

Jump_089_79a0:
	ld b, b                                          ; $79a0: $40
	ld b, d                                          ; $79a1: $42
	ld l, b                                          ; $79a2: $68

jr_089_79a3:
	ld c, e                                          ; $79a3: $4b
	xor b                                            ; $79a4: $a8
	xor $07                                          ; $79a5: $ee $07
	ld b, [hl]                                       ; $79a7: $46
	ld c, [hl]                                       ; $79a8: $4e
	inc a                                            ; $79a9: $3c
	ld d, b                                          ; $79aa: $50
	and b                                            ; $79ab: $a0
	cpl                                              ; $79ac: $2f
	ld b, e                                          ; $79ad: $43
	ld b, b                                          ; $79ae: $40
	add hl, sp                                       ; $79af: $39
	xor l                                            ; $79b0: $ad
	ldh a, [$8d]                                     ; $79b1: $f0 $8d
	ldh a, [$9e]                                     ; $79b3: $f0 $9e
	ld b, h                                          ; $79b5: $44
	ld a, [hl-]                                      ; $79b6: $3a
	and b                                            ; $79b7: $a0
	ld b, b                                          ; $79b8: $40
	ld c, l                                          ; $79b9: $4d
	ld e, e                                          ; $79ba: $5b
	ld d, [hl]                                       ; $79bb: $56
	and b                                            ; $79bc: $a0
	ld a, [hl-]                                      ; $79bd: $3a
	ld b, c                                          ; $79be: $41
	ld b, h                                          ; $79bf: $44
	xor l                                            ; $79c0: $ad
	ld l, e                                          ; $79c1: $6b
	ld b, d                                          ; $79c2: $42
	ldh a, [rAUD2LEN]                                ; $79c3: $f0 $16
	and c                                            ; $79c5: $a1
	cpl                                              ; $79c6: $2f
	ld [hl-], a                                      ; $79c7: $32
	add hl, sp                                       ; $79c8: $39
	dec sp                                           ; $79c9: $3b
	inc [hl]                                         ; $79ca: $34
	db $ec                                           ; $79cb: $ec
	pop hl                                           ; $79cc: $e1
	xor b                                            ; $79cd: $a8
	add sp, $7b                                      ; $79ce: $e8 $7b
	and e                                            ; $79d0: $a3
	ldh a, [rAUD2LEN]                                ; $79d1: $f0 $16
	ld d, e                                          ; $79d3: $53
	ld a, [hl-]                                      ; $79d4: $3a
	jr c, jr_089_7a11                                ; $79d5: $38 $3a

	ld d, b                                          ; $79d7: $50
	pop af                                           ; $79d8: $f1
	inc d                                            ; $79d9: $14
	ld c, [hl]                                       ; $79da: $4e
	ld h, e                                          ; $79db: $63
	ld b, l                                          ; $79dc: $45
	and b                                            ; $79dd: $a0
	cpl                                              ; $79de: $2f
	jp hl                                            ; $79df: $e9


	daa                                              ; $79e0: $27
	xor h                                            ; $79e1: $ac
	db $ec                                           ; $79e2: $ec
	pop hl                                           ; $79e3: $e1
	ld b, d                                          ; $79e4: $42
	ldh a, [$c6]                                     ; $79e5: $f0 $c6
	ldh a, [$64]                                     ; $79e7: $f0 $64
	ld h, d                                          ; $79e9: $62
	inc de                                           ; $79ea: $13
	ld [$a32d], a                                    ; $79eb: $ea $2d $a3
	ld b, b                                          ; $79ee: $40

jr_089_79ef:
	add hl, sp                                       ; $79ef: $39
	xor b                                            ; $79f0: $a8
	ld b, b                                          ; $79f1: $40
	ld c, l                                          ; $79f2: $4d
	ld e, e                                          ; $79f3: $5b
	ld d, [hl]                                       ; $79f4: $56
	and b                                            ; $79f5: $a0
	cpl                                              ; $79f6: $2f
	db $eb                                           ; $79f7: $eb
	ld [hl], a                                       ; $79f8: $77
	xor b                                            ; $79f9: $a8
	ld l, e                                          ; $79fa: $6b
	ld c, c                                          ; $79fb: $49
	inc a                                            ; $79fc: $3c
	inc [hl]                                         ; $79fd: $34
	db $ec                                           ; $79fe: $ec
	pop hl                                           ; $79ff: $e1
	ld b, d                                          ; $7a00: $42
	ldh a, [$c6]                                     ; $7a01: $f0 $c6
	ldh a, [$64]                                     ; $7a03: $f0 $64
	ld c, a                                          ; $7a05: $4f
	inc de                                           ; $7a06: $13
	ldh a, [hDisp1_WX]                                     ; $7a07: $f0 $96

jr_089_7a09:
	dec sp                                           ; $7a09: $3b
	dec a                                            ; $7a0a: $3d
	db $eb                                           ; $7a0b: $eb
	sbc l                                            ; $7a0c: $9d
	and e                                            ; $7a0d: $a3
	xor $13                                          ; $7a0e: $ee $13
	inc [hl]                                         ; $7a10: $34

jr_089_7a11:
	ldh a, [$b3]                                     ; $7a11: $f0 $b3
	ld c, d                                          ; $7a13: $4a
	ld d, c                                          ; $7a14: $51
	and b                                            ; $7a15: $a0
	ld e, [hl]                                       ; $7a16: $5e
	dec sp                                           ; $7a17: $3b
	inc [hl]                                         ; $7a18: $34
	ld d, $a9                                        ; $7a19: $16 $a9
	db $ec                                           ; $7a1b: $ec
	push bc                                          ; $7a1c: $c5
	inc [hl]                                         ; $7a1d: $34
	ldh a, [c]                                       ; $7a1e: $f2
	rra                                              ; $7a1f: $1f
	ldh a, [$38]                                     ; $7a20: $f0 $38
	inc a                                            ; $7a22: $3c

jr_089_7a23:
	ld d, b                                          ; $7a23: $50
	db $ed                                           ; $7a24: $ed
	halt                                             ; $7a25: $76
	ld d, e                                          ; $7a26: $53
	inc de                                           ; $7a27: $13
	ld a, b                                          ; $7a28: $78
	ld c, [hl]                                       ; $7a29: $4e
	ldh a, [c]                                       ; $7a2a: $f2
	inc b                                            ; $7a2b: $04
	ld b, h                                          ; $7a2c: $44
	ld c, c                                          ; $7a2d: $49
	ld [hl], a                                       ; $7a2e: $77
	dec sp                                           ; $7a2f: $3b
	ccf                                              ; $7a30: $3f
	jr c, jr_089_7a70                                ; $7a31: $38 $3d

	ld h, e                                          ; $7a33: $63
	and b                                            ; $7a34: $a0
	ld b, [hl]                                       ; $7a35: $46
	dec sp                                           ; $7a36: $3b
	inc [hl]                                         ; $7a37: $34
	ld d, $a8                                        ; $7a38: $16 $a8
	ret                                              ; $7a3a: $c9


	sbc c                                            ; $7a3b: $99
	dec sp                                           ; $7a3c: $3b
	ccf                                              ; $7a3d: $3f
	ld c, h                                          ; $7a3e: $4c
	xor b                                            ; $7a3f: $a8
	ldh a, [c]                                       ; $7a40: $f2
	ld b, l                                          ; $7a41: $45
	inc [hl]                                         ; $7a42: $34
	ldh a, [$74]                                     ; $7a43: $f0 $74
	inc [hl]                                         ; $7a45: $34
	pop af                                           ; $7a46: $f1
	ld e, b                                          ; $7a47: $58
	inc a                                            ; $7a48: $3c
	ld b, a                                          ; $7a49: $47

jr_089_7a4a:
	ld a, $3a                                        ; $7a4a: $3e $3a
	ld e, b                                          ; $7a4c: $58
	jr c, jr_089_79ef                                ; $7a4d: $38 $a0

	ld b, [hl]                                       ; $7a4f: $46
	dec sp                                           ; $7a50: $3b
	inc [hl]                                         ; $7a51: $34
	ld d, $a8                                        ; $7a52: $16 $a8
	ret                                              ; $7a54: $c9


	sbc c                                            ; $7a55: $99
	dec sp                                           ; $7a56: $3b
	ccf                                              ; $7a57: $3f
	ld c, h                                          ; $7a58: $4c
	xor b                                            ; $7a59: $a8
	ldh a, [c]                                       ; $7a5a: $f2
	jp c, $f534                                      ; $7a5b: $da $34 $f5

	add d                                            ; $7a5e: $82
	inc [hl]                                         ; $7a5f: $34
	pop af                                           ; $7a60: $f1
	ld e, b                                          ; $7a61: $58
	inc a                                            ; $7a62: $3c
	ld b, a                                          ; $7a63: $47
	ld a, $3a                                        ; $7a64: $3e $3a
	ld e, b                                          ; $7a66: $58
	jr c, jr_089_7a09                                ; $7a67: $38 $a0

	ld b, [hl]                                       ; $7a69: $46
	dec sp                                           ; $7a6a: $3b
	inc [hl]                                         ; $7a6b: $34
	ld d, $a8                                        ; $7a6c: $16 $a8
	ret                                              ; $7a6e: $c9


	sbc c                                            ; $7a6f: $99

jr_089_7a70:
	dec sp                                           ; $7a70: $3b
	ccf                                              ; $7a71: $3f
	ld c, h                                          ; $7a72: $4c
	xor b                                            ; $7a73: $a8
	db $f4                                           ; $7a74: $f4
	add hl, de                                       ; $7a75: $19
	inc [hl]                                         ; $7a76: $34
	ldh a, [$79]                                     ; $7a77: $f0 $79
	inc [hl]                                         ; $7a79: $34
	pop af                                           ; $7a7a: $f1
	ld e, b                                          ; $7a7b: $58
	inc a                                            ; $7a7c: $3c
	ld b, a                                          ; $7a7d: $47
	ld a, $3a                                        ; $7a7e: $3e $3a
	ld e, b                                          ; $7a80: $58
	jr c, jr_089_7a23                                ; $7a81: $38 $a0

	ld d, $a9                                        ; $7a83: $16 $a9
	db $ed                                           ; $7a85: $ed
	ld d, a                                          ; $7a86: $57
	inc [hl]                                         ; $7a87: $34
	db $ed                                           ; $7a88: $ed
	halt                                             ; $7a89: $76
	ld a, e                                          ; $7a8a: $7b
	dec sp                                           ; $7a8b: $3b
	inc a                                            ; $7a8c: $3c
	ld d, a                                          ; $7a8d: $57
	xor l                                            ; $7a8e: $ad
	ld c, a                                          ; $7a8f: $4f
	ccf                                              ; $7a90: $3f
	ld d, c                                          ; $7a91: $51
	ldh a, [$cb]                                     ; $7a92: $f0 $cb
	ld c, [hl]                                       ; $7a94: $4e
	ld b, d                                          ; $7a95: $42
	ld c, a                                          ; $7a96: $4f
	inc [hl]                                         ; $7a97: $34
	pop af                                           ; $7a98: $f1
	sbc $57                                          ; $7a99: $de $57
	ldh a, [$2c]                                     ; $7a9b: $f0 $2c
	ld b, l                                          ; $7a9d: $45
	ld c, h                                          ; $7a9e: $4c
	xor b                                            ; $7a9f: $a8
	ld c, d                                          ; $7aa0: $4a
	inc [hl]                                         ; $7aa1: $34
	ld l, e                                          ; $7aa2: $6b
	ld b, d                                          ; $7aa3: $42
	ldh a, [rAUD2LEN]                                ; $7aa4: $f0 $16
	inc a                                            ; $7aa6: $3c
	ld a, $50                                        ; $7aa7: $3e $50
	and c                                            ; $7aa9: $a1
	xor $14                                          ; $7aaa: $ee $14
	inc [hl]                                         ; $7aac: $34
	ld l, e                                          ; $7aad: $6b
	ld b, d                                          ; $7aae: $42
	xor $1c                                          ; $7aaf: $ee $1c
	inc a                                            ; $7ab1: $3c
	ld a, $50                                        ; $7ab2: $3e $50
	and c                                            ; $7ab4: $a1
	cpl                                              ; $7ab5: $2f
	ld b, e                                          ; $7ab6: $43
	ldh a, [rRP]                                     ; $7ab7: $f0 $56
	ld b, d                                          ; $7ab9: $42
	ldh a, [rSVBK]                                   ; $7aba: $f0 $70
	dec sp                                           ; $7abc: $3b
	ccf                                              ; $7abd: $3f
	xor h                                            ; $7abe: $ac
	di                                               ; $7abf: $f3
	ld c, [hl]                                       ; $7ac0: $4e
	ld l, [hl]                                       ; $7ac1: $6e
	inc a                                            ; $7ac2: $3c
	ld b, h                                          ; $7ac3: $44
	ld c, h                                          ; $7ac4: $4c
	and b                                            ; $7ac5: $a0
	jr c, jr_089_7afc                                ; $7ac6: $38 $34

	jr c, jr_089_7a4a                                ; $7ac8: $38 $80

	ld c, a                                          ; $7aca: $4f
	ld c, e                                          ; $7acb: $4b
	xor h                                            ; $7acc: $ac
	ld d, h                                          ; $7acd: $54
	add hl, sp                                       ; $7ace: $39
	db $ec                                           ; $7acf: $ec
	ret c                                            ; $7ad0: $d8

	ld b, d                                          ; $7ad1: $42
	ld b, l                                          ; $7ad2: $45
	xor b                                            ; $7ad3: $a8
	ld c, c                                          ; $7ad4: $49
	ld d, h                                          ; $7ad5: $54
	ld e, a                                          ; $7ad6: $5f
	ld c, d                                          ; $7ad7: $4a
	inc [hl]                                         ; $7ad8: $34
	xor $1c                                          ; $7ad9: $ee $1c
	ld c, e                                          ; $7adb: $4b
	ld l, e                                          ; $7adc: $6b
	and c                                            ; $7add: $a1
	cpl                                              ; $7ade: $2f
	ld [hl-], a                                      ; $7adf: $32
	halt                                             ; $7ae0: $76
	ld c, e                                          ; $7ae1: $4b
	inc [hl]                                         ; $7ae2: $34
	db $ed                                           ; $7ae3: $ed
	ld d, e                                          ; $7ae4: $53
	ld c, c                                          ; $7ae5: $49
	inc de                                           ; $7ae6: $13
	sub b                                            ; $7ae7: $90
	ld a, $55                                        ; $7ae8: $3e $55
	ld h, h                                          ; $7aea: $64
	ld a, $56                                        ; $7aeb: $3e $56
	ldh a, [$8c]                                     ; $7aed: $f0 $8c
	ld d, a                                          ; $7aef: $57
	ld a, $3d                                        ; $7af0: $3e $3d
	and e                                            ; $7af2: $a3
	cp e                                             ; $7af3: $bb
	ld h, e                                          ; $7af4: $63
	xor b                                            ; $7af5: $a8
	ld d, d                                          ; $7af6: $52
	dec a                                            ; $7af7: $3d
	inc [hl]                                         ; $7af8: $34
	ld h, h                                          ; $7af9: $64
	db $ed                                           ; $7afa: $ed
	halt                                             ; $7afb: $76

jr_089_7afc:
	ld a, $3f                                        ; $7afc: $3e $3f
	ldh a, [$a3]                                     ; $7afe: $f0 $a3
	ld e, b                                          ; $7b00: $58
	ld c, [hl]                                       ; $7b01: $4e
	inc a                                            ; $7b02: $3c
	ld a, $50                                        ; $7b03: $3e $50
	and b                                            ; $7b05: $a0
	xor $14                                          ; $7b06: $ee $14
	inc [hl]                                         ; $7b08: $34
	ldh a, [c]                                       ; $7b09: $f2
	ld a, [$553e]                                    ; $7b0a: $fa $3e $55
	ldh a, [$c9]                                     ; $7b0d: $f0 $c9
	jr c, jr_089_7b50                                ; $7b0f: $38 $3f

	ld c, [hl]                                       ; $7b11: $4e
	ld h, e                                          ; $7b12: $63
	ld c, h                                          ; $7b13: $4c
	xor b                                            ; $7b14: $a8
	ret nc                                           ; $7b15: $d0

	and b                                            ; $7b16: $a0
	ldh a, [$2d]                                     ; $7b17: $f0 $2d
	dec sp                                           ; $7b19: $3b
	ccf                                              ; $7b1a: $3f
	ld c, [hl]                                       ; $7b1b: $4e
	ld c, c                                          ; $7b1c: $49
	ld [hl], a                                       ; $7b1d: $77
	add hl, sp                                       ; $7b1e: $39
	ld e, l                                          ; $7b1f: $5d
	ld e, d                                          ; $7b20: $5a
	xor h                                            ; $7b21: $ac
	ld l, a                                          ; $7b22: $6f
	inc [hl]                                         ; $7b23: $34
	sbc c                                            ; $7b24: $99
	dec a                                            ; $7b25: $3d
	ld e, b                                          ; $7b26: $58
	ld c, l                                          ; $7b27: $4d
	ld c, [hl]                                       ; $7b28: $4e
	ld b, d                                          ; $7b29: $42
	inc de                                           ; $7b2a: $13
	adc e                                            ; $7b2b: $8b
	ld e, h                                          ; $7b2c: $5c
	db $ec                                           ; $7b2d: $ec
	ret c                                            ; $7b2e: $d8

	inc a                                            ; $7b2f: $3c
	ld d, b                                          ; $7b30: $50
	and b                                            ; $7b31: $a0
	cpl                                              ; $7b32: $2f
	ld b, e                                          ; $7b33: $43
	db $eb                                           ; $7b34: $eb
	ld [hl], h                                       ; $7b35: $74
	ld b, l                                          ; $7b36: $45
	xor b                                            ; $7b37: $a8
	ld b, b                                          ; $7b38: $40
	ld c, l                                          ; $7b39: $4d
	ld e, e                                          ; $7b3a: $5b
	ld d, [hl]                                       ; $7b3b: $56
	and b                                            ; $7b3c: $a0
	xor $14                                          ; $7b3d: $ee $14
	inc [hl]                                         ; $7b3f: $34
	ldh a, [$8d]                                     ; $7b40: $f0 $8d
	ldh a, [$9e]                                     ; $7b42: $f0 $9e
	xor l                                            ; $7b44: $ad
	ld b, b                                          ; $7b45: $40
	ld b, d                                          ; $7b46: $42
	ld l, b                                          ; $7b47: $68
	ld c, e                                          ; $7b48: $4b
	inc [hl]                                         ; $7b49: $34
	ldh a, [$34]                                     ; $7b4a: $f0 $34
	ld b, d                                          ; $7b4c: $42
	add h                                            ; $7b4d: $84
	ld c, c                                          ; $7b4e: $49
	inc de                                           ; $7b4f: $13

jr_089_7b50:
	ld [$45cf], a                                    ; $7b50: $ea $cf $45
	and b                                            ; $7b53: $a0
	cpl                                              ; $7b54: $2f
	ld b, e                                          ; $7b55: $43
	ld b, b                                          ; $7b56: $40
	add hl, sp                                       ; $7b57: $39
	inc [hl]                                         ; $7b58: $34
	db $ec                                           ; $7b59: $ec
	reti                                             ; $7b5a: $d9


	and b                                            ; $7b5b: $a0
	ld c, a                                          ; $7b5c: $4f
	add hl, sp                                       ; $7b5d: $39
	ret                                              ; $7b5e: $c9


	xor h                                            ; $7b5f: $ac
	ldh a, [$0a]                                     ; $7b60: $f0 $0a
	ld d, l                                          ; $7b62: $55
	inc [hl]                                         ; $7b63: $34
	ldh a, [$3b]                                     ; $7b64: $f0 $3b
	dec sp                                           ; $7b66: $3b
	ccf                                              ; $7b67: $3f
	ldh a, [$a3]                                     ; $7b68: $f0 $a3
	ld e, b                                          ; $7b6a: $58
	ld c, l                                          ; $7b6b: $4d
	ld a, e                                          ; $7b6c: $7b
	inc de                                           ; $7b6d: $13
	db $ec                                           ; $7b6e: $ec
	cp c                                             ; $7b6f: $b9
	ld b, d                                          ; $7b70: $42
	ld b, a                                          ; $7b71: $47
	and b                                            ; $7b72: $a0
	cpl                                              ; $7b73: $2f
	ld b, e                                          ; $7b74: $43
	ld l, d                                          ; $7b75: $6a
	ldh a, [$0d]                                     ; $7b76: $f0 $0d
	inc a                                            ; $7b78: $3c
	ld d, b                                          ; $7b79: $50
	inc [hl]                                         ; $7b7a: $34
	ld b, b                                          ; $7b7b: $40
	add hl, sp                                       ; $7b7c: $39
	ld a, $45                                        ; $7b7d: $3e $45
	add hl, sp                                       ; $7b7f: $39
	xor b                                            ; $7b80: $a8
	ld b, b                                          ; $7b81: $40
	ld c, l                                          ; $7b82: $4d
	ld e, e                                          ; $7b83: $5b
	ld d, [hl]                                       ; $7b84: $56
	and b                                            ; $7b85: $a0
	db $eb                                           ; $7b86: $eb
	ccf                                              ; $7b87: $3f
	xor b                                            ; $7b88: $a8
	ld b, b                                          ; $7b89: $40
	ld b, d                                          ; $7b8a: $42
	ld l, b                                          ; $7b8b: $68
	ld c, e                                          ; $7b8c: $4b
	inc [hl]                                         ; $7b8d: $34
	ldh a, [$34]                                     ; $7b8e: $f0 $34
	ld b, d                                          ; $7b90: $42
	add h                                            ; $7b91: $84
	ld c, c                                          ; $7b92: $49
	inc de                                           ; $7b93: $13
	ld [$a0cf], a                                    ; $7b94: $ea $cf $a0
	cpl                                              ; $7b97: $2f
	ld b, e                                          ; $7b98: $43
	ld b, b                                          ; $7b99: $40
	add hl, sp                                       ; $7b9a: $39
	inc [hl]                                         ; $7b9b: $34
	db $ec                                           ; $7b9c: $ec
	reti                                             ; $7b9d: $d9


	ld c, b                                          ; $7b9e: $48
	and b                                            ; $7b9f: $a0
	ld d, d                                          ; $7ba0: $52
	dec a                                            ; $7ba1: $3d
	ld l, d                                          ; $7ba2: $6a
	ldh a, [$0d]                                     ; $7ba3: $f0 $0d
	xor h                                            ; $7ba5: $ac
	ldh a, [$3b]                                     ; $7ba6: $f0 $3b
	dec sp                                           ; $7ba8: $3b
	ccf                                              ; $7ba9: $3f
	ld d, l                                          ; $7baa: $55
	ld b, h                                          ; $7bab: $44
	ld e, b                                          ; $7bac: $58
	ld c, [hl]                                       ; $7bad: $4e
	and c                                            ; $7bae: $a1
	cpl                                              ; $7baf: $2f
	ld b, e                                          ; $7bb0: $43
	xor $1f                                          ; $7bb1: $ee $1f
	inc [hl]                                         ; $7bb3: $34
	ld b, b                                          ; $7bb4: $40
	add hl, sp                                       ; $7bb5: $39
	ld a, $45                                        ; $7bb6: $3e $45
	add hl, sp                                       ; $7bb8: $39
	xor b                                            ; $7bb9: $a8
	ld b, b                                          ; $7bba: $40
	ld c, l                                          ; $7bbb: $4d
	ld e, e                                          ; $7bbc: $5b
	ld d, [hl]                                       ; $7bbd: $56
	and b                                            ; $7bbe: $a0
	ldh a, [$8d]                                     ; $7bbf: $f0 $8d
	ldh a, [$9e]                                     ; $7bc1: $f0 $9e
	ld c, h                                          ; $7bc3: $4c
	add l                                            ; $7bc4: $85
	xor b                                            ; $7bc5: $a8
	ld b, b                                          ; $7bc6: $40
	ld b, d                                          ; $7bc7: $42
	ld l, b                                          ; $7bc8: $68
	ld c, e                                          ; $7bc9: $4b
	inc [hl]                                         ; $7bca: $34
	ldh a, [$34]                                     ; $7bcb: $f0 $34
	ld b, d                                          ; $7bcd: $42
	ldh a, [$ab]                                     ; $7bce: $f0 $ab
	pop af                                           ; $7bd0: $f1
	ld a, [bc]                                       ; $7bd1: $0a
	ld c, c                                          ; $7bd2: $49
	inc de                                           ; $7bd3: $13
	ld [$a0cf], a                                    ; $7bd4: $ea $cf $a0
	ld d, d                                          ; $7bd7: $52
	dec a                                            ; $7bd8: $3d
	ld l, d                                          ; $7bd9: $6a
	ldh a, [$0d]                                     ; $7bda: $f0 $0d
	xor h                                            ; $7bdc: $ac
	ldh a, [$3b]                                     ; $7bdd: $f0 $3b
	dec sp                                           ; $7bdf: $3b
	ccf                                              ; $7be0: $3f
	ld d, l                                          ; $7be1: $55
	ld b, h                                          ; $7be2: $44
	ld e, b                                          ; $7be3: $58
	ld c, [hl]                                       ; $7be4: $4e
	xor c                                            ; $7be5: $a9
	ldh a, [$cc]                                     ; $7be6: $f0 $cc
	ldh a, [$e2]                                     ; $7be8: $f0 $e2
	xor $2d                                          ; $7bea: $ee $2d
	dec sp                                           ; $7bec: $3b
	ldh a, [$36]                                     ; $7bed: $f0 $36
	jr c, jr_089_7c35                                ; $7bef: $38 $44

	ld e, l                                          ; $7bf1: $5d
	ld e, d                                          ; $7bf2: $5a
	xor b                                            ; $7bf3: $a8
	ldh a, [$08]                                     ; $7bf4: $f0 $08
	ld e, c                                          ; $7bf6: $59
	ldh a, [$08]                                     ; $7bf7: $f0 $08
	ldh a, [$08]                                     ; $7bf9: $f0 $08
	ldh a, [$08]                                     ; $7bfb: $f0 $08
	ldh a, [$08]                                     ; $7bfd: $f0 $08
	ldh a, [$08]                                     ; $7bff: $f0 $08
	and b                                            ; $7c01: $a0
	cpl                                              ; $7c02: $2f
	ld b, e                                          ; $7c03: $43
	ld b, b                                          ; $7c04: $40
	add hl, sp                                       ; $7c05: $39
	ld c, b                                          ; $7c06: $48
	and b                                            ; $7c07: $a0
	inc hl                                           ; $7c08: $23
	ld b, [hl]                                       ; $7c09: $46
	ld b, [hl]                                       ; $7c0a: $46
	inc [hl]                                         ; $7c0b: $34
	db $f4                                           ; $7c0c: $f4
	sbc c                                            ; $7c0d: $99
	ldh a, [c]                                       ; $7c0e: $f2
	reti                                             ; $7c0f: $d9


	ldh a, [rRP]                                     ; $7c10: $f0 $56
	ld c, h                                          ; $7c12: $4c
	and b                                            ; $7c13: $a0
	cpl                                              ; $7c14: $2f
	ld b, e                                          ; $7c15: $43
	ldh a, [$f5]                                     ; $7c16: $f0 $f5
	add hl, sp                                       ; $7c18: $39
	ld b, l                                          ; $7c19: $45
	xor b                                            ; $7c1a: $a8
	ld de, $4544                                     ; $7c1b: $11 $44 $45
	and b                                            ; $7c1e: $a0
	ldh a, [$98]                                     ; $7c1f: $f0 $98
	ld c, d                                          ; $7c21: $4a
	ld c, a                                          ; $7c22: $4f
	db $ec                                           ; $7c23: $ec
	ld [$46ad], sp                                   ; $7c24: $08 $ad $46
	ld a, [hl-]                                      ; $7c27: $3a
	dec a                                            ; $7c28: $3d
	ld l, h                                          ; $7c29: $6c
	dec a                                            ; $7c2a: $3d
	jr c, jr_089_7c67                                ; $7c2b: $38 $3a

	add h                                            ; $7c2d: $84
	ld d, e                                          ; $7c2e: $53
	inc [hl]                                         ; $7c2f: $34
	ld l, a                                          ; $7c30: $6f
	ld b, a                                          ; $7c31: $47
	inc de                                           ; $7c32: $13
	ld l, e                                          ; $7c33: $6b
	ld b, d                                          ; $7c34: $42

jr_089_7c35:
	xor $1c                                          ; $7c35: $ee $1c
	ld d, e                                          ; $7c37: $53
	ld b, [hl]                                       ; $7c38: $46
	ld c, [hl]                                       ; $7c39: $4e
	ld b, d                                          ; $7c3a: $42
	inc a                                            ; $7c3b: $3c
	ld a, $50                                        ; $7c3c: $3e $50
	and c                                            ; $7c3e: $a1
	cpl                                              ; $7c3f: $2f
	ld [hl-], a                                      ; $7c40: $32
	add hl, sp                                       ; $7c41: $39
	dec sp                                           ; $7c42: $3b
	inc [hl]                                         ; $7c43: $34
	db $ed                                           ; $7c44: $ed
	ld d, e                                          ; $7c45: $53
	xor b                                            ; $7c46: $a8
	add sp, $7b                                      ; $7c47: $e8 $7b
	and e                                            ; $7c49: $a3
	ld l, a                                          ; $7c4a: $6f
	ld d, h                                          ; $7c4b: $54
	ld c, l                                          ; $7c4c: $4d
	inc a                                            ; $7c4d: $3c
	ld d, b                                          ; $7c4e: $50
	xor h                                            ; $7c4f: $ac
	ld [$a8cf], a                                    ; $7c50: $ea $cf $a8
	ldh a, [$0a]                                     ; $7c53: $f0 $0a
	ld d, l                                          ; $7c55: $55
	ldh a, [rAUD2LEN]                                ; $7c56: $f0 $16
	ldh a, [c]                                       ; $7c58: $f2
	ld c, [hl]                                       ; $7c59: $4e
	ld h, d                                          ; $7c5a: $62
	add d                                            ; $7c5b: $82
	dec sp                                           ; $7c5c: $3b
	ccf                                              ; $7c5d: $3f
	ld d, l                                          ; $7c5e: $55
	ld b, h                                          ; $7c5f: $44
	ld e, b                                          ; $7c60: $58
	ld c, [hl]                                       ; $7c61: $4e
	and c                                            ; $7c62: $a1
	cpl                                              ; $7c63: $2f
	jp hl                                            ; $7c64: $e9


	daa                                              ; $7c65: $27
	xor h                                            ; $7c66: $ac

jr_089_7c67:
	db $ed                                           ; $7c67: $ed
	ld d, e                                          ; $7c68: $53
	ld b, d                                          ; $7c69: $42
	ldh a, [$c6]                                     ; $7c6a: $f0 $c6
	ldh a, [$64]                                     ; $7c6c: $f0 $64
	ld h, d                                          ; $7c6e: $62
	inc de                                           ; $7c6f: $13
	ld [$a32d], a                                    ; $7c70: $ea $2d $a3
	ld b, b                                          ; $7c73: $40
	add hl, sp                                       ; $7c74: $39
	xor b                                            ; $7c75: $a8
	ld [$5121], a                                    ; $7c76: $ea $21 $51
	ld c, [hl]                                       ; $7c79: $4e
	ld h, e                                          ; $7c7a: $63
	and b                                            ; $7c7b: $a0
	cpl                                              ; $7c7c: $2f
	db $eb                                           ; $7c7d: $eb
	ld [hl], a                                       ; $7c7e: $77
	xor b                                            ; $7c7f: $a8
	ld l, e                                          ; $7c80: $6b
	ld c, c                                          ; $7c81: $49
	inc a                                            ; $7c82: $3c
	inc [hl]                                         ; $7c83: $34
	db $ed                                           ; $7c84: $ed
	ld d, e                                          ; $7c85: $53
	ld b, d                                          ; $7c86: $42
	ldh a, [$c6]                                     ; $7c87: $f0 $c6
	ldh a, [$64]                                     ; $7c89: $f0 $64
	ld c, a                                          ; $7c8b: $4f
	inc de                                           ; $7c8c: $13
	ldh a, [hDisp1_WX]                                     ; $7c8d: $f0 $96
	dec sp                                           ; $7c8f: $3b
	dec a                                            ; $7c90: $3d
	db $eb                                           ; $7c91: $eb
	sbc l                                            ; $7c92: $9d
	and e                                            ; $7c93: $a3
	xor $13                                          ; $7c94: $ee $13
	inc [hl]                                         ; $7c96: $34
	db $ed                                           ; $7c97: $ed
	ld d, c                                          ; $7c98: $51
	ld c, d                                          ; $7c99: $4a
	ld d, c                                          ; $7c9a: $51
	and b                                            ; $7c9b: $a0
	ld d, $a9                                        ; $7c9c: $16 $a9
	jp hl                                            ; $7c9e: $e9


	db $fc                                           ; $7c9f: $fc
	xor b                                            ; $7ca0: $a8
	sub h                                            ; $7ca1: $94
	inc a                                            ; $7ca2: $3c
	ld e, l                                          ; $7ca3: $5d
	ld c, [hl]                                       ; $7ca4: $4e
	sbc [hl]                                         ; $7ca5: $9e
	ld c, d                                          ; $7ca6: $4a
	ld b, l                                          ; $7ca7: $45
	inc a                                            ; $7ca8: $3c
	dec sp                                           ; $7ca9: $3b
	dec a                                            ; $7caa: $3d
	ld c, h                                          ; $7cab: $4c
	xor b                                            ; $7cac: $a8
	ld c, d                                          ; $7cad: $4a
	inc [hl]                                         ; $7cae: $34
	ldh a, [rAUD2LEN]                                ; $7caf: $f0 $16
	ld c, e                                          ; $7cb1: $4b
	ld l, e                                          ; $7cb2: $6b
	and c                                            ; $7cb3: $a1
	ld d, $a9                                        ; $7cb4: $16 $a9
	ld l, e                                          ; $7cb6: $6b
	xor c                                            ; $7cb7: $a9
	db $eb                                           ; $7cb8: $eb
	rst FarCall                                          ; $7cb9: $f7
	and c                                            ; $7cba: $a1
	ld d, $a9                                        ; $7cbb: $16 $a9
	db $eb                                           ; $7cbd: $eb
	rst FarCall                                          ; $7cbe: $f7
	and c                                            ; $7cbf: $a1
	cpl                                              ; $7cc0: $2f
	ld [hl-], a                                      ; $7cc1: $32
	halt                                             ; $7cc2: $76
	ld c, e                                          ; $7cc3: $4b
	inc [hl]                                         ; $7cc4: $34
	db $eb                                           ; $7cc5: $eb
	ld a, [$1349]                                    ; $7cc6: $fa $49 $13
	sub b                                            ; $7cc9: $90
	ld a, $55                                        ; $7cca: $3e $55
	ld h, h                                          ; $7ccc: $64
	ld a, $56                                        ; $7ccd: $3e $56
	ldh a, [$8c]                                     ; $7ccf: $f0 $8c
	ld d, a                                          ; $7cd1: $57
	ld a, $3d                                        ; $7cd2: $3e $3d
	and e                                            ; $7cd4: $a3
	cp e                                             ; $7cd5: $bb
	ld b, l                                          ; $7cd6: $45
	xor b                                            ; $7cd7: $a8
	ld d, d                                          ; $7cd8: $52
	dec a                                            ; $7cd9: $3d
	db $ed                                           ; $7cda: $ed
	halt                                             ; $7cdb: $76
	ld a, $3f                                        ; $7cdc: $3e $3f
	ld c, h                                          ; $7cde: $4c
	and b                                            ; $7cdf: $a0
	db $ec                                           ; $7ce0: $ec
	rla                                              ; $7ce1: $17
	xor b                                            ; $7ce2: $a8
	ld b, b                                          ; $7ce3: $40
	ld b, d                                          ; $7ce4: $42
	ld l, b                                          ; $7ce5: $68
	inc [hl]                                         ; $7ce6: $34
	db $ec                                           ; $7ce7: $ec
	db $10                                           ; $7ce8: $10
	inc de                                           ; $7ce9: $13
	ldh a, [$ea]                                     ; $7cea: $f0 $ea
	ld b, h                                          ; $7cec: $44
	dec sp                                           ; $7ced: $3b
	dec a                                            ; $7cee: $3d
	ld b, c                                          ; $7cef: $41
	ld b, h                                          ; $7cf0: $44
	and b                                            ; $7cf1: $a0
	xor $1f                                          ; $7cf2: $ee $1f
	inc [hl]                                         ; $7cf4: $34
	ldh a, [rTAC]                                    ; $7cf5: $f0 $07
	inc a                                            ; $7cf7: $3c
	dec sp                                           ; $7cf8: $3b
	dec a                                            ; $7cf9: $3d
	ld h, e                                          ; $7cfa: $63
	xor b                                            ; $7cfb: $a8
	ldh a, [c]                                       ; $7cfc: $f2
	ld b, b                                          ; $7cfd: $40
	sbc h                                            ; $7cfe: $9c
	ld a, b                                          ; $7cff: $78
	ccf                                              ; $7d00: $3f
	ld b, l                                          ; $7d01: $45
	and b                                            ; $7d02: $a0
	db $ec                                           ; $7d03: $ec
	ld b, e                                          ; $7d04: $43
	xor b                                            ; $7d05: $a8
	ld l, e                                          ; $7d06: $6b
	ld c, d                                          ; $7d07: $4a
	inc [hl]                                         ; $7d08: $34
	ld b, b                                          ; $7d09: $40
	ld b, d                                          ; $7d0a: $42
	ld l, b                                          ; $7d0b: $68
	ld a, [hl-]                                      ; $7d0c: $3a
	ld b, d                                          ; $7d0d: $42
	xor c                                            ; $7d0e: $a9
	ldh a, [$cc]                                     ; $7d0f: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $7d11: $f0 $88
	inc [hl]                                         ; $7d13: $34
	sub [hl]                                         ; $7d14: $96
	ld c, l                                          ; $7d15: $4d
	ld h, c                                          ; $7d16: $61
	ld d, [hl]                                       ; $7d17: $56
	dec sp                                           ; $7d18: $3b
	dec a                                            ; $7d19: $3d
	ld h, e                                          ; $7d1a: $63
	ld b, l                                          ; $7d1b: $45
	and b                                            ; $7d1c: $a0
	cpl                                              ; $7d1d: $2f
	ld b, e                                          ; $7d1e: $43
	ld [hl], b                                       ; $7d1f: $70
	ld [hl], c                                       ; $7d20: $71
	ld b, c                                          ; $7d21: $41
	inc [hl]                                         ; $7d22: $34
	ld c, a                                          ; $7d23: $4f
	add hl, sp                                       ; $7d24: $39
	ldh a, [rHDMA4]                                  ; $7d25: $f0 $54
	ld a, $f0                                        ; $7d27: $3e $f0
	ld a, [bc]                                       ; $7d29: $0a
	ld d, l                                          ; $7d2a: $55
	inc de                                           ; $7d2b: $13
	ldh a, [$a7]                                     ; $7d2c: $f0 $a7
	pop af                                           ; $7d2e: $f1
	dec de                                           ; $7d2f: $1b
	ld d, c                                          ; $7d30: $51
	ld c, l                                          ; $7d31: $4d
	ld a, e                                          ; $7d32: $7b
	inc [hl]                                         ; $7d33: $34
	db $ec                                           ; $7d34: $ec
	cp c                                             ; $7d35: $b9
	ld c, h                                          ; $7d36: $4c
	and b                                            ; $7d37: $a0
	ld b, [hl]                                       ; $7d38: $46
	ld e, c                                          ; $7d39: $59
	ld b, [hl]                                       ; $7d3a: $46
	xor b                                            ; $7d3b: $a8
	xor $06                                          ; $7d3c: $ee $06
	ld b, a                                          ; $7d3e: $47
	sub h                                            ; $7d3f: $94
	inc a                                            ; $7d40: $3c
	ld e, l                                          ; $7d41: $5d
	dec a                                            ; $7d42: $3d
	inc a                                            ; $7d43: $3c
	dec sp                                           ; $7d44: $3b
	dec a                                            ; $7d45: $3d
	ld b, d                                          ; $7d46: $42
	ld b, a                                          ; $7d47: $47
	xor b                                            ; $7d48: $a8
	ld d, h                                          ; $7d49: $54
	ld b, d                                          ; $7d4a: $42
	ldh a, [$d6]                                     ; $7d4b: $f0 $d6
	ld c, e                                          ; $7d4d: $4b
	inc [hl]                                         ; $7d4e: $34
	ldh a, [$0a]                                     ; $7d4f: $f0 $0a
	ld [hl], c                                       ; $7d51: $71
	ld b, a                                          ; $7d52: $47
	ld a, $3f                                        ; $7d53: $3e $3f
	ld b, l                                          ; $7d55: $45
	and b                                            ; $7d56: $a0
	cpl                                              ; $7d57: $2f
	ld b, e                                          ; $7d58: $43
	ldh a, [rTAC]                                    ; $7d59: $f0 $07
	inc a                                            ; $7d5b: $3c
	dec sp                                           ; $7d5c: $3b
	dec a                                            ; $7d5d: $3d
	ld b, l                                          ; $7d5e: $45
	xor b                                            ; $7d5f: $a8
	ld b, b                                          ; $7d60: $40
	ld c, l                                          ; $7d61: $4d
	ld e, e                                          ; $7d62: $5b
	ld d, [hl]                                       ; $7d63: $56
	and b                                            ; $7d64: $a0
	ld b, [hl]                                       ; $7d65: $46
	ld d, a                                          ; $7d66: $57
	ld d, [hl]                                       ; $7d67: $56
	xor c                                            ; $7d68: $a9
	ld b, b                                          ; $7d69: $40
	ld b, d                                          ; $7d6a: $42
	ld l, b                                          ; $7d6b: $68
	inc [hl]                                         ; $7d6c: $34
	ld b, h                                          ; $7d6d: $44
	ld [hl], c                                       ; $7d6e: $71
	ld b, l                                          ; $7d6f: $45
	xor b                                            ; $7d70: $a8
	ld c, a                                          ; $7d71: $4f
	add hl, sp                                       ; $7d72: $39
	xor $1d                                          ; $7d73: $ee $1d
	db $eb                                           ; $7d75: $eb
	ld l, l                                          ; $7d76: $6d
	and b                                            ; $7d77: $a0
	cpl                                              ; $7d78: $2f
	ld b, e                                          ; $7d79: $43
	ld b, b                                          ; $7d7a: $40
	add hl, sp                                       ; $7d7b: $39
	ld c, b                                          ; $7d7c: $48
	inc [hl]                                         ; $7d7d: $34
	ldh a, [$8d]                                     ; $7d7e: $f0 $8d
	ldh a, [$9e]                                     ; $7d80: $f0 $9e
	ld b, h                                          ; $7d82: $44
	and b                                            ; $7d83: $a0
	ld d, d                                          ; $7d84: $52
	dec a                                            ; $7d85: $3d
	ld l, d                                          ; $7d86: $6a
	ldh a, [$0d]                                     ; $7d87: $f0 $0d
	inc [hl]                                         ; $7d89: $34
	ldh a, [$3b]                                     ; $7d8a: $f0 $3b
	dec sp                                           ; $7d8c: $3b
	ccf                                              ; $7d8d: $3f
	ld c, h                                          ; $7d8e: $4c
	and b                                            ; $7d8f: $a0
	cpl                                              ; $7d90: $2f
	ld b, e                                          ; $7d91: $43
	xor $1f                                          ; $7d92: $ee $1f
	inc [hl]                                         ; $7d94: $34
	ld b, b                                          ; $7d95: $40
	add hl, sp                                       ; $7d96: $39
	ld b, h                                          ; $7d97: $44
	ld c, h                                          ; $7d98: $4c
	xor b                                            ; $7d99: $a8
	ld b, b                                          ; $7d9a: $40
	ld c, l                                          ; $7d9b: $4d
	ld e, e                                          ; $7d9c: $5b
	ld d, [hl]                                       ; $7d9d: $56
	and b                                            ; $7d9e: $a0
	xor $05                                          ; $7d9f: $ee $05
	ld b, l                                          ; $7da1: $45
	xor b                                            ; $7da2: $a8
	ld c, a                                          ; $7da3: $4f
	add hl, sp                                       ; $7da4: $39
	inc [hl]                                         ; $7da5: $34
	xor $1d                                          ; $7da6: $ee $1d
	db $eb                                           ; $7da8: $eb
	ld l, l                                          ; $7da9: $6d
	and b                                            ; $7daa: $a0
	cpl                                              ; $7dab: $2f
	ld b, e                                          ; $7dac: $43
	ld b, b                                          ; $7dad: $40
	add hl, sp                                       ; $7dae: $39
	inc [hl]                                         ; $7daf: $34
	ldh a, [$8d]                                     ; $7db0: $f0 $8d
	ldh a, [$9e]                                     ; $7db2: $f0 $9e
	and b                                            ; $7db4: $a0
	ld l, a                                          ; $7db5: $6f
	inc [hl]                                         ; $7db6: $34
	ld d, h                                          ; $7db7: $54
	ld c, l                                          ; $7db8: $4d
	inc a                                            ; $7db9: $3c
	ld d, b                                          ; $7dba: $50
	inc de                                           ; $7dbb: $13
	sub h                                            ; $7dbc: $94
	inc a                                            ; $7dbd: $3c
	ld e, l                                          ; $7dbe: $5d
	ld c, [hl]                                       ; $7dbf: $4e
	inc a                                            ; $7dc0: $3c
	ld d, b                                          ; $7dc1: $50
	dec [hl]                                         ; $7dc2: $35
	db $ec                                           ; $7dc3: $ec
	dec h                                            ; $7dc4: $25
	ld c, b                                          ; $7dc5: $48
	and b                                            ; $7dc6: $a0
	inc hl                                           ; $7dc7: $23
	xor $10                                          ; $7dc8: $ee $10
	inc [hl]                                         ; $7dca: $34
	ldh a, [rAUD2LEN]                                ; $7dcb: $f0 $16
	ld c, e                                          ; $7dcd: $4b
	ld l, e                                          ; $7dce: $6b
	xor c                                            ; $7dcf: $a9
	ld l, a                                          ; $7dd0: $6f
	inc [hl]                                         ; $7dd1: $34
	ld d, h                                          ; $7dd2: $54
	ld c, l                                          ; $7dd3: $4d
	inc a                                            ; $7dd4: $3c
	ld d, b                                          ; $7dd5: $50
	inc de                                           ; $7dd6: $13
	sub h                                            ; $7dd7: $94
	inc a                                            ; $7dd8: $3c
	ld e, l                                          ; $7dd9: $5d
	ld c, [hl]                                       ; $7dda: $4e
	ld b, c                                          ; $7ddb: $41
	ld b, h                                          ; $7ddc: $44
	inc a                                            ; $7ddd: $3c
	ld d, b                                          ; $7dde: $50
	and b                                            ; $7ddf: $a0
	cpl                                              ; $7de0: $2f
	ld [hl-], a                                      ; $7de1: $32
	add hl, sp                                       ; $7de2: $39
	dec sp                                           ; $7de3: $3b
	inc [hl]                                         ; $7de4: $34
	db $eb                                           ; $7de5: $eb
	ld a, [$e8a8]                                    ; $7de6: $fa $a8 $e8
	ld a, e                                          ; $7de9: $7b
	and e                                            ; $7dea: $a3
	ldh a, [rAUD2LEN]                                ; $7deb: $f0 $16
	ld d, e                                          ; $7ded: $53
	ldh a, [rAUD1LOW]                                ; $7dee: $f0 $13
	jr c, jr_089_7e2c                                ; $7df0: $38 $3a

	ld d, b                                          ; $7df2: $50
	inc [hl]                                         ; $7df3: $34
	pop af                                           ; $7df4: $f1
	inc d                                            ; $7df5: $14
	ld c, [hl]                                       ; $7df6: $4e
	ld b, l                                          ; $7df7: $45
	xor b                                            ; $7df8: $a8
	pop af                                           ; $7df9: $f1
	ld d, $38                                        ; $7dfa: $16 $38
	ld c, d                                          ; $7dfc: $4a
	ld c, [hl]                                       ; $7dfd: $4e
	ld b, c                                          ; $7dfe: $41
	ld b, h                                          ; $7dff: $44
	inc a                                            ; $7e00: $3c
	ld d, b                                          ; $7e01: $50
	and b                                            ; $7e02: $a0
	cpl                                              ; $7e03: $2f
	ld b, e                                          ; $7e04: $43
	ld b, [hl]                                       ; $7e05: $46
	dec sp                                           ; $7e06: $3b
	xor h                                            ; $7e07: $ac
	ret                                              ; $7e08: $c9


	sbc c                                            ; $7e09: $99
	dec sp                                           ; $7e0a: $3b
	ccf                                              ; $7e0b: $3f
	and b                                            ; $7e0c: $a0
	cpl                                              ; $7e0d: $2f
	jp hl                                            ; $7e0e: $e9


	daa                                              ; $7e0f: $27
	xor h                                            ; $7e10: $ac
	db $eb                                           ; $7e11: $eb
	ld a, [$f042]                                    ; $7e12: $fa $42 $f0
	add $f0                                          ; $7e15: $c6 $f0
	ld h, h                                          ; $7e17: $64
	ld h, d                                          ; $7e18: $62
	inc de                                           ; $7e19: $13
	ld [$a32d], a                                    ; $7e1a: $ea $2d $a3
	ret nz                                           ; $7e1d: $c0

	xor b                                            ; $7e1e: $a8
	ld b, b                                          ; $7e1f: $40
	ld c, l                                          ; $7e20: $4d
	ld e, e                                          ; $7e21: $5b
	ld d, [hl]                                       ; $7e22: $56
	inc [hl]                                         ; $7e23: $34
	pop af                                           ; $7e24: $f1
	ld d, $9d                                        ; $7e25: $16 $9d
	inc a                                            ; $7e27: $3c
	ld d, b                                          ; $7e28: $50
	and b                                            ; $7e29: $a0
	cpl                                              ; $7e2a: $2f
	db $eb                                           ; $7e2b: $eb

jr_089_7e2c:
	ld [hl], a                                       ; $7e2c: $77
	xor b                                            ; $7e2d: $a8
	ld l, e                                          ; $7e2e: $6b
	ld c, c                                          ; $7e2f: $49
	inc a                                            ; $7e30: $3c
	inc [hl]                                         ; $7e31: $34
	db $eb                                           ; $7e32: $eb
	ld a, [$f042]                                    ; $7e33: $fa $42 $f0
	add $f0                                          ; $7e36: $c6 $f0
	ld h, h                                          ; $7e38: $64
	ld c, a                                          ; $7e39: $4f
	inc de                                           ; $7e3a: $13
	ldh a, [hDisp1_WX]                                     ; $7e3b: $f0 $96
	dec sp                                           ; $7e3d: $3b
	dec a                                            ; $7e3e: $3d
	db $eb                                           ; $7e3f: $eb
	sbc l                                            ; $7e40: $9d
	and e                                            ; $7e41: $a3
	ld d, $a9                                        ; $7e42: $16 $a9
	xor $27                                          ; $7e44: $ee $27
	ld b, a                                          ; $7e46: $47
	inc [hl]                                         ; $7e47: $34
	xor $1c                                          ; $7e48: $ee $1c
	ld c, d                                          ; $7e4a: $4a
	ld d, c                                          ; $7e4b: $51
	inc a                                            ; $7e4c: $3c
	and c                                            ; $7e4d: $a1
	ld b, [hl]                                       ; $7e4e: $46
	dec sp                                           ; $7e4f: $3b
	inc [hl]                                         ; $7e50: $34
	ld d, $a8                                        ; $7e51: $16 $a8
	xor $27                                          ; $7e53: $ee $27
	ld b, a                                          ; $7e55: $47
	inc [hl]                                         ; $7e56: $34
	ld l, e                                          ; $7e57: $6b
	inc a                                            ; $7e58: $3c
	ldh a, [rAUD2LEN]                                ; $7e59: $f0 $16
	and c                                            ; $7e5b: $a1
	ld d, $a9                                        ; $7e5c: $16 $a9
	db $eb                                           ; $7e5e: $eb
	pop af                                           ; $7e5f: $f1
	ld c, d                                          ; $7e60: $4a
	ld d, c                                          ; $7e61: $51
	inc a                                            ; $7e62: $3c
	and c                                            ; $7e63: $a1
	cpl                                              ; $7e64: $2f
	ld b, e                                          ; $7e65: $43
	jr c, jr_089_7ed6                                ; $7e66: $38 $6e

	inc [hl]                                         ; $7e68: $34
	db $eb                                           ; $7e69: $eb
	db $fc                                           ; $7e6a: $fc
	ld b, a                                          ; $7e6b: $47
	inc de                                           ; $7e6c: $13
	ldh a, [rAUD2LEN]                                ; $7e6d: $f0 $16
	ld d, e                                          ; $7e6f: $53
	ld b, [hl]                                       ; $7e70: $46
	ld c, [hl]                                       ; $7e71: $4e
	ld b, c                                          ; $7e72: $41
	ld b, h                                          ; $7e73: $44
	and b                                            ; $7e74: $a0
	xor $27                                          ; $7e75: $ee $27
	ld b, a                                          ; $7e77: $47
	inc [hl]                                         ; $7e78: $34
	ldh a, [rAUD2LEN]                                ; $7e79: $f0 $16
	dec sp                                           ; $7e7b: $3b
	ccf                                              ; $7e7c: $3f
	inc de                                           ; $7e7d: $13
	ld l, e                                          ; $7e7e: $6b
	ld c, d                                          ; $7e7f: $4a
	ld d, c                                          ; $7e80: $51
	inc a                                            ; $7e81: $3c
	and c                                            ; $7e82: $a1
	ld d, $a9                                        ; $7e83: $16 $a9
	xor $27                                          ; $7e85: $ee $27
	ld b, a                                          ; $7e87: $47
	inc [hl]                                         ; $7e88: $34
	ldh a, [rAUD2LEN]                                ; $7e89: $f0 $16
	ld a, [hl-]                                      ; $7e8b: $3a
	ld b, d                                          ; $7e8c: $42
	and c                                            ; $7e8d: $a1
	cpl                                              ; $7e8e: $2f
	ld [hl-], a                                      ; $7e8f: $32
	halt                                             ; $7e90: $76
	ld c, e                                          ; $7e91: $4b
	inc [hl]                                         ; $7e92: $34
	db $ed                                           ; $7e93: $ed
	ld d, d                                          ; $7e94: $52

jr_089_7e95:
	ld e, b                                          ; $7e95: $58
	ld b, c                                          ; $7e96: $41
	ld c, c                                          ; $7e97: $49
	inc de                                           ; $7e98: $13
	sub b                                            ; $7e99: $90
	ld a, $55                                        ; $7e9a: $3e $55
	ld h, h                                          ; $7e9c: $64
	ld a, $56                                        ; $7e9d: $3e $56
	ldh a, [$8c]                                     ; $7e9f: $f0 $8c
	ld d, a                                          ; $7ea1: $57
	ld a, $3d                                        ; $7ea2: $3e $3d
	and e                                            ; $7ea4: $a3
	cp e                                             ; $7ea5: $bb
	ld c, d                                          ; $7ea6: $4a
	ld d, c                                          ; $7ea7: $51
	xor b                                            ; $7ea8: $a8
	ld d, d                                          ; $7ea9: $52
	dec a                                            ; $7eaa: $3d
	inc [hl]                                         ; $7eab: $34
	xor $27                                          ; $7eac: $ee $27
	ld b, a                                          ; $7eae: $47
	ld h, h                                          ; $7eaf: $64
	db $ed                                           ; $7eb0: $ed
	halt                                             ; $7eb1: $76
	ld a, $3f                                        ; $7eb2: $3e $3f
	ld c, h                                          ; $7eb4: $4c
	and b                                            ; $7eb5: $a0
	xor $1f                                          ; $7eb6: $ee $1f
	inc [hl]                                         ; $7eb8: $34
	jr c, jr_089_7ef3                                ; $7eb9: $38 $38

	ld b, l                                          ; $7ebb: $45
	and b                                            ; $7ebc: $a0
	xor $1f                                          ; $7ebd: $ee $1f
	inc [hl]                                         ; $7ebf: $34
	ldh a, [rTAC]                                    ; $7ec0: $f0 $07
	inc a                                            ; $7ec2: $3c
	dec sp                                           ; $7ec3: $3b
	dec a                                            ; $7ec4: $3d
	xor b                                            ; $7ec5: $a8
	xor $1d                                          ; $7ec6: $ee $1d
	ldh a, [c]                                       ; $7ec8: $f2
	ld hl, $3d3b                                     ; $7ec9: $21 $3b $3d
	ld d, b                                          ; $7ecc: $50
	xor h                                            ; $7ecd: $ac
	push af                                          ; $7ece: $f5
	add c                                            ; $7ecf: $81
	db $f4                                           ; $7ed0: $f4
	or e                                             ; $7ed1: $b3
	adc b                                            ; $7ed2: $88
	ldh a, [c]                                       ; $7ed3: $f2
	and a                                            ; $7ed4: $a7
	ld d, d                                          ; $7ed5: $52

jr_089_7ed6:
	ld d, c                                          ; $7ed6: $51
	inc a                                            ; $7ed7: $3c
	ld d, b                                          ; $7ed8: $50
	ld c, h                                          ; $7ed9: $4c
	and b                                            ; $7eda: $a0
	cpl                                              ; $7edb: $2f
	ld b, e                                          ; $7edc: $43
	ld c, e                                          ; $7edd: $4b
	ld c, e                                          ; $7ede: $4b
	ld c, e                                          ; $7edf: $4b
	ld c, b                                          ; $7ee0: $48
	inc [hl]                                         ; $7ee1: $34
	pop af                                           ; $7ee2: $f1
	dec d                                            ; $7ee3: $15
	ld c, l                                          ; $7ee4: $4d
	ld a, [hl-]                                      ; $7ee5: $3a
	jr c, jr_089_7f2d                                ; $7ee6: $38 $45

	xor b                                            ; $7ee8: $a8
	ld b, b                                          ; $7ee9: $40
	ld c, l                                          ; $7eea: $4d
	ld e, e                                          ; $7eeb: $5b
	ld d, [hl]                                       ; $7eec: $56
	inc [hl]                                         ; $7eed: $34
	adc e                                            ; $7eee: $8b
	ldh a, [$72]                                     ; $7eef: $f0 $72
	ld b, a                                          ; $7ef1: $47
	db $ec                                           ; $7ef2: $ec

jr_089_7ef3:
	jr jr_089_7e95                                   ; $7ef3: $18 $a0

	db $eb                                           ; $7ef5: $eb
	ccf                                              ; $7ef6: $3f
	xor b                                            ; $7ef7: $a8
	xor $27                                          ; $7ef8: $ee $27
	inc [hl]                                         ; $7efa: $34
	ld b, b                                          ; $7efb: $40
	ld b, d                                          ; $7efc: $42
	ld l, b                                          ; $7efd: $68
	inc [hl]                                         ; $7efe: $34
	ld h, h                                          ; $7eff: $64
	db $ed                                           ; $7f00: $ed
	ld h, d                                          ; $7f01: $62
	ld c, c                                          ; $7f02: $49
	inc de                                           ; $7f03: $13
	xor $1d                                          ; $7f04: $ee $1d
	db $eb                                           ; $7f06: $eb
	ld d, [hl]                                       ; $7f07: $56
	ld c, b                                          ; $7f08: $48
	and b                                            ; $7f09: $a0
	cpl                                              ; $7f0a: $2f
	ld b, e                                          ; $7f0b: $43
	ld a, [hl-]                                      ; $7f0c: $3a
	ld b, c                                          ; $7f0d: $41
	ld b, h                                          ; $7f0e: $44
	inc [hl]                                         ; $7f0f: $34
	db $d3                                           ; $7f10: $d3
	and b                                            ; $7f11: $a0
	ld b, [hl]                                       ; $7f12: $46
	ld e, c                                          ; $7f13: $59
	ld b, [hl]                                       ; $7f14: $46
	xor b                                            ; $7f15: $a8
	sbc $f0                                          ; $7f16: $de $f0
	adc l                                            ; $7f18: $8d
	ldh a, [$9e]                                     ; $7f19: $f0 $9e
	ld b, h                                          ; $7f1b: $44
	ld a, [hl-]                                      ; $7f1c: $3a
	ld b, [hl]                                       ; $7f1d: $46
	and b                                            ; $7f1e: $a0
	cpl                                              ; $7f1f: $2f
	ld b, e                                          ; $7f20: $43
	ld e, e                                          ; $7f21: $5b
	ld d, [hl]                                       ; $7f22: $56
	inc [hl]                                         ; $7f23: $34
	ld d, d                                          ; $7f24: $52
	dec a                                            ; $7f25: $3d
	ldh a, [$d6]                                     ; $7f26: $f0 $d6
	ld b, d                                          ; $7f28: $42
	ldh a, [$c6]                                     ; $7f29: $f0 $c6
	ldh a, [rHDMA3]                                  ; $7f2b: $f0 $53

jr_089_7f2d:
	ld b, a                                          ; $7f2d: $47
	xor b                                            ; $7f2e: $a8
	adc e                                            ; $7f2f: $8b
	ldh a, [$72]                                     ; $7f30: $f0 $72
	ld b, a                                          ; $7f32: $47
	db $eb                                           ; $7f33: $eb
	sub [hl]                                         ; $7f34: $96
	and b                                            ; $7f35: $a0
	xor $27                                          ; $7f36: $ee $27
	inc [hl]                                         ; $7f38: $34
	ld b, b                                          ; $7f39: $40
	ld b, d                                          ; $7f3a: $42
	ld l, b                                          ; $7f3b: $68
	ld c, e                                          ; $7f3c: $4b
	xor h                                            ; $7f3d: $ac
	ld h, h                                          ; $7f3e: $64
	db $ed                                           ; $7f3f: $ed
	ld h, d                                          ; $7f40: $62
	ld c, c                                          ; $7f41: $49
	xor $1d                                          ; $7f42: $ee $1d
	ld d, e                                          ; $7f44: $53
	ld b, [hl]                                       ; $7f45: $46
	ld c, [hl]                                       ; $7f46: $4e
	ld b, c                                          ; $7f47: $41
	ld b, h                                          ; $7f48: $44
	and b                                            ; $7f49: $a0
	cpl                                              ; $7f4a: $2f
	ld b, e                                          ; $7f4b: $43
	ret nz                                           ; $7f4c: $c0

	xor l                                            ; $7f4d: $ad
	ld [$6a44], a                                    ; $7f4e: $ea $44 $6a
	ldh a, [$0d]                                     ; $7f51: $f0 $0d
	and b                                            ; $7f53: $a0
	or h                                             ; $7f54: $b4
	ld c, h                                          ; $7f55: $4c
	xor b                                            ; $7f56: $a8
	db $eb                                           ; $7f57: $eb
	sbc a                                            ; $7f58: $9f
	and b                                            ; $7f59: $a0
	ld b, b                                          ; $7f5a: $40
	ld b, d                                          ; $7f5b: $42
	ld l, b                                          ; $7f5c: $68
	ld c, e                                          ; $7f5d: $4b
	inc [hl]                                         ; $7f5e: $34
	xor $07                                          ; $7f5f: $ee $07
	ld d, e                                          ; $7f61: $53
	inc de                                           ; $7f62: $13
	ld b, [hl]                                       ; $7f63: $46
	dec sp                                           ; $7f64: $3b
	ccf                                              ; $7f65: $3f
	inc [hl]                                         ; $7f66: $34
	ldh a, [$f0]                                     ; $7f67: $f0 $f0
	ld b, a                                          ; $7f69: $47
	sub h                                            ; $7f6a: $94
	ld d, b                                          ; $7f6b: $50
	ld c, l                                          ; $7f6c: $4d
	ld a, [hl-]                                      ; $7f6d: $3a
	jr c, jr_089_7fb1                                ; $7f6e: $38 $41

	ld b, h                                          ; $7f70: $44
	and b                                            ; $7f71: $a0
	ld e, e                                          ; $7f72: $5b
	ld d, [hl]                                       ; $7f73: $56
	ld b, [hl]                                       ; $7f74: $46
	inc [hl]                                         ; $7f75: $34
	db $eb                                           ; $7f76: $eb
	sbc a                                            ; $7f77: $9f
	and b                                            ; $7f78: $a0
	ld l, e                                          ; $7f79: $6b
	inc a                                            ; $7f7a: $3c
	ldh a, [rAUD2LEN]                                ; $7f7b: $f0 $16
	and c                                            ; $7f7d: $a1
	cpl                                              ; $7f7e: $2f
	ld [hl-], a                                      ; $7f7f: $32
	add hl, sp                                       ; $7f80: $39
	dec sp                                           ; $7f81: $3b
	inc [hl]                                         ; $7f82: $34
	db $eb                                           ; $7f83: $eb
	db $fc                                           ; $7f84: $fc
	xor b                                            ; $7f85: $a8
	add sp, $7b                                      ; $7f86: $e8 $7b
	and e                                            ; $7f88: $a3
	db $ec                                           ; $7f89: $ec
	call nc, $eea9                                   ; $7f8a: $d4 $a9 $ee
	inc e                                            ; $7f8d: $1c
	ld c, e                                          ; $7f8e: $4b
	ld l, e                                          ; $7f8f: $6b
	and c                                            ; $7f90: $a1
	cpl                                              ; $7f91: $2f
	jp hl                                            ; $7f92: $e9


	daa                                              ; $7f93: $27
	xor h                                            ; $7f94: $ac
	db $eb                                           ; $7f95: $eb
	db $fc                                           ; $7f96: $fc
	ld b, d                                          ; $7f97: $42
	ldh a, [$c6]                                     ; $7f98: $f0 $c6
	ldh a, [$64]                                     ; $7f9a: $f0 $64
	ld h, d                                          ; $7f9c: $62
	inc de                                           ; $7f9d: $13
	ld [$a32d], a                                    ; $7f9e: $ea $2d $a3
	ret nz                                           ; $7fa1: $c0

	xor b                                            ; $7fa2: $a8
	ld e, e                                          ; $7fa3: $5b
	ld d, [hl]                                       ; $7fa4: $56
	ld b, [hl]                                       ; $7fa5: $46
	inc [hl]                                         ; $7fa6: $34
	db $eb                                           ; $7fa7: $eb
	sbc a                                            ; $7fa8: $9f
	and b                                            ; $7fa9: $a0
	cpl                                              ; $7faa: $2f
	db $eb                                           ; $7fab: $eb
	ld [hl], a                                       ; $7fac: $77
	xor b                                            ; $7fad: $a8
	ld l, e                                          ; $7fae: $6b
	ld c, c                                          ; $7faf: $49
	inc a                                            ; $7fb0: $3c

jr_089_7fb1:
	inc [hl]                                         ; $7fb1: $34
	db $eb                                           ; $7fb2: $eb
	db $fc                                           ; $7fb3: $fc
	ld b, d                                          ; $7fb4: $42
	ldh a, [$c6]                                     ; $7fb5: $f0 $c6
	ldh a, [$64]                                     ; $7fb7: $f0 $64
	ld c, a                                          ; $7fb9: $4f
	inc de                                           ; $7fba: $13
	ldh a, [hDisp1_WX]                                     ; $7fbb: $f0 $96
	dec sp                                           ; $7fbd: $3b
	dec a                                            ; $7fbe: $3d
	db $eb                                           ; $7fbf: $eb
	sbc l                                            ; $7fc0: $9d
	and e                                            ; $7fc1: $a3
	xor $13                                          ; $7fc2: $ee $13
	inc [hl]                                         ; $7fc4: $34
	xor $09                                          ; $7fc5: $ee $09
	ld c, d                                          ; $7fc7: $4a
	ld d, c                                          ; $7fc8: $51
	and b                                            ; $7fc9: $a0
	xor $20                                          ; $7fca: $ee $20
	ld d, $48                                        ; $7fcc: $16 $48
	xor c                                            ; $7fce: $a9
	db $eb                                           ; $7fcf: $eb
	rst FarCall                                          ; $7fd0: $f7
	and c                                            ; $7fd1: $a1
	xor $14                                          ; $7fd2: $ee $14
	inc [hl]                                         ; $7fd4: $34
	ld d, $a9                                        ; $7fd5: $16 $a9
	db $eb                                           ; $7fd7: $eb
	rst FarCall                                          ; $7fd8: $f7
	and c                                            ; $7fd9: $a1
	cpl                                              ; $7fda: $2f
	ld [hl-], a                                      ; $7fdb: $32
	halt                                             ; $7fdc: $76
	ld c, e                                          ; $7fdd: $4b
	inc [hl]                                         ; $7fde: $34
	db $ec                                           ; $7fdf: $ec
	and $49                                          ; $7fe0: $e6 $49
	inc de                                           ; $7fe2: $13
	sub b                                            ; $7fe3: $90
	ld a, $55                                        ; $7fe4: $3e $55
	ld h, h                                          ; $7fe6: $64
	ld a, $56                                        ; $7fe7: $3e $56
	ldh a, [$8c]                                     ; $7fe9: $f0 $8c
	ld d, a                                          ; $7feb: $57
	ld a, $3d                                        ; $7fec: $3e $3d
	and e                                            ; $7fee: $a3
	ld [$a8b7], a                                    ; $7fef: $ea $b7 $a8
	ld d, d                                          ; $7ff2: $52
	dec a                                            ; $7ff3: $3d
	db $ed                                           ; $7ff4: $ed
	halt                                             ; $7ff5: $76
	ld a, $3f                                        ; $7ff6: $3e $3f
	ld c, h                                          ; $7ff8: $4c
	and b                                            ; $7ff9: $a0
	inc hl                                           ; $7ffa: $23
	ret                                              ; $7ffb: $c9


	ld d, d                                          ; $7ffc: $52
	dec sp                                           ; $7ffd: $3b
	ccf                                              ; $7ffe: $3f
	ld c, h                                          ; $7fff: $4c
