; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $031", ROMX[$4000], BANK[$31]

	or h                                             ; $4000: $b4
	adc [hl]                                         ; $4001: $8e
	and c                                            ; $4002: $a1
	ld [bc], a                                       ; $4003: $02
	add hl, de                                       ; $4004: $19
	dec b                                            ; $4005: $05
	nop                                              ; $4006: $00
	ld bc, $0519                                     ; $4007: $01 $19 $05
	nop                                              ; $400a: $00
	ld bc, $0519                                     ; $400b: $01 $19 $05
	jp $0719                                         ; $400e: $c3 $19 $07


	jp nz, $0c19                                     ; $4011: $c2 $19 $0c

	nop                                              ; $4014: $00
	inc h                                            ; $4015: $24
	jp z, $0519                                      ; $4016: $ca $19 $05

	nop                                              ; $4019: $00
	ld bc, $0519                                     ; $401a: $01 $19 $05
	nop                                              ; $401d: $00
	ld bc, $0619                                     ; $401e: $01 $19 $06
	jp nz, $0619                                     ; $4021: $c2 $19 $06

	pop bc                                           ; $4024: $c1
	add hl, hl                                       ; $4025: $29
	inc c                                            ; $4026: $0c
	or l                                             ; $4027: $b5
	ld b, c                                          ; $4028: $41
	nop                                              ; $4029: $00
	ld h, h                                          ; $402a: $64
	rlca                                             ; $402b: $07

jr_031_402c:
	sub h                                            ; $402c: $94
	inc h                                            ; $402d: $24
	ld [de], a                                       ; $402e: $12
	ld b, $13                                        ; $402f: $06 $13
	ld b, $c5                                        ; $4031: $06 $c5
	inc d                                            ; $4033: $14
	ld b, $15                                        ; $4034: $06 $15
	ld b, $c7                                        ; $4036: $06 $c7
	ld d, $06                                        ; $4038: $16 $06
	ret z                                            ; $403a: $c8

	rla                                              ; $403b: $17
	ld b, $18                                        ; $403c: $06 $18
	ld b, $c9                                        ; $403e: $06 $c9
	add hl, de                                       ; $4040: $19
	ld b, $ca                                        ; $4041: $06 $ca
	dec de                                           ; $4043: $1b
	ld b, $1c                                        ; $4044: $06 $1c
	ld b, $cb                                        ; $4046: $06 $cb
	dec e                                            ; $4048: $1d
	ld b, $cc                                        ; $4049: $06 $cc
	ld e, $06                                        ; $404b: $1e $06
	call $0620                                       ; $404d: $cd $20 $06
	sla c                                            ; $4050: $cb $21
	ld b, $96                                        ; $4052: $06 $96
	nop                                              ; $4054: $00
	nop                                              ; $4055: $00
	sub h                                            ; $4056: $94
	ld [$cafe], sp                                   ; $4057: $08 $fe $ca
	sub b                                            ; $405a: $90
	ld a, l                                          ; $405b: $7d
	ld [bc], a                                       ; $405c: $02
	ld a, [hl]                                       ; $405d: $7e
	ld [bc], a                                       ; $405e: $02
	nop                                              ; $405f: $00
	and c                                            ; $4060: $a1
	ld [hl+], a                                      ; $4061: $22
	jr jr_031_402c                                   ; $4062: $18 $c8

	sub d                                            ; $4064: $92
	ld a, [hl]                                       ; $4065: $7e
	ld [bc], a                                       ; $4066: $02
	nop                                              ; $4067: $00
	and c                                            ; $4068: $a1
	ld d, $16                                        ; $4069: $16 $16
	ld a, [hl]                                       ; $406b: $7e
	nop                                              ; $406c: $00
	jp nz, $0216                                     ; $406d: $c2 $16 $02

	ret z                                            ; $4070: $c8

	sub d                                            ; $4071: $92
	ld a, [hl]                                       ; $4072: $7e
	ld [bc], a                                       ; $4073: $02
	nop                                              ; $4074: $00
	and b                                            ; $4075: $a0
	ld d, $06                                        ; $4076: $16 $06
	jp $0616                                         ; $4078: $c3 $16 $06


	ret z                                            ; $407b: $c8

	dec de                                           ; $407c: $1b
	ld [hl+], a                                      ; $407d: $22
	jp $021b                                         ; $407e: $c3 $1b $02


	ret z                                            ; $4081: $c8

	add hl, de                                       ; $4082: $19
	dec e                                            ; $4083: $1d
	jp $0719                                         ; $4084: $c3 $19 $07


	ret z                                            ; $4087: $c8

	cp l                                             ; $4088: $bd
	ld [bc], a                                       ; $4089: $02
	dec de                                           ; $408a: $1b
	inc c                                            ; $408b: $0c
	ld [hl+], a                                      ; $408c: $22
	jp nz, $021b                                     ; $408d: $c2 $1b $02

	jp z, $7e90                                      ; $4090: $ca $90 $7e

	ld [bc], a                                       ; $4093: $02
	nop                                              ; $4094: $00
	and b                                            ; $4095: $a0
	jr nz, @+$0c                                     ; $4096: $20 $0a

	jp $0220                                         ; $4098: $c3 $20 $02


	jp z, $027e                                      ; $409b: $ca $7e $02

	nop                                              ; $409e: $00
	and c                                            ; $409f: $a1
	ld [hl+], a                                      ; $40a0: $22
	jr @-$37                                         ; $40a1: $18 $c7

	sub d                                            ; $40a3: $92
	ld a, [hl]                                       ; $40a4: $7e
	ld [bc], a                                       ; $40a5: $02
	nop                                              ; $40a6: $00
	and c                                            ; $40a7: $a1
	ld d, $14                                        ; $40a8: $16 $14
	ld a, [hl]                                       ; $40aa: $7e
	nop                                              ; $40ab: $00
	jp nz, $0416                                     ; $40ac: $c2 $16 $04

	rst JumpTable                                          ; $40af: $c7
	sub d                                            ; $40b0: $92
	ld a, [hl]                                       ; $40b1: $7e
	ld [bc], a                                       ; $40b2: $02
	nop                                              ; $40b3: $00
	and b                                            ; $40b4: $a0
	ld d, $06                                        ; $40b5: $16 $06
	jp $0616                                         ; $40b7: $c3 $16 $06


	rst JumpTable                                          ; $40ba: $c7
	dec de                                           ; $40bb: $1b
	ld [hl+], a                                      ; $40bc: $22
	jp $021b                                         ; $40bd: $c3 $1b $02


	rst JumpTable                                          ; $40c0: $c7
	add hl, de                                       ; $40c1: $19
	dec e                                            ; $40c2: $1d
	jp $0719                                         ; $40c3: $c3 $19 $07


	ret                                              ; $40c6: $c9


	cp l                                             ; $40c7: $bd
	ld [bc], a                                       ; $40c8: $02
	dec de                                           ; $40c9: $1b
	inc c                                            ; $40ca: $0c
	inc h                                            ; $40cb: $24
	jp nz, $02bd                                     ; $40cc: $c2 $bd $02

	dec de                                           ; $40cf: $1b
	inc c                                            ; $40d0: $0c
	inc b                                            ; $40d1: $04
	ld a, [hl]                                       ; $40d2: $7e
	nop                                              ; $40d3: $00
	sub c                                            ; $40d4: $91
	ld a, l                                          ; $40d5: $7d
	ld bc, $c8fb                                     ; $40d6: $01 $fb $c8

jr_031_40d9:
	ld [hl+], a                                      ; $40d9: $22
	ld [de], a                                       ; $40da: $12
	jp $0622                                         ; $40db: $c3 $22 $06


	ei                                               ; $40de: $fb
	inc b                                            ; $40df: $04
	add $20                                          ; $40e0: $c6 $20
	ld b, $c3                                        ; $40e2: $06 $c3
	jr nz, jr_031_40ec                               ; $40e4: $20 $06

	add $1d                                          ; $40e6: $c6 $1d
	ld [de], a                                       ; $40e8: $12
	jp $061d                                         ; $40e9: $c3 $1d $06


jr_031_40ec:
	add $7e                                          ; $40ec: $c6 $7e
	ld bc, $a000                                     ; $40ee: $01 $00 $a0
	dec e                                            ; $40f1: $1d
	inc h                                            ; $40f2: $24
	ld a, [hl]                                       ; $40f3: $7e
	nop                                              ; $40f4: $00
	jp nz, $0c1d                                     ; $40f5: $c2 $1d $0c

	add $bd                                          ; $40f8: $c6 $bd
	ld [bc], a                                       ; $40fa: $02
	ld e, $0c                                        ; $40fb: $1e $0c
	ld b, $c3                                        ; $40fd: $06 $c3
	ld e, $06                                        ; $40ff: $1e $06
	add $1e                                          ; $4101: $c6 $1e
	ld b, $c3                                        ; $4103: $06 $c3
	ld e, $06                                        ; $4105: $1e $06
	add $1e                                          ; $4107: $c6 $1e
	ld [de], a                                       ; $4109: $12
	jp $061e                                         ; $410a: $c3 $1e $06


	add $1d                                          ; $410d: $c6 $1d
	ld b, $c3                                        ; $410f: $06 $c3
	dec e                                            ; $4111: $1d
	ld b, $c6                                        ; $4112: $06 $c6
	dec de                                           ; $4114: $1b
	ld [de], a                                       ; $4115: $12
	jp $061b                                         ; $4116: $c3 $1b $06


	push bc                                          ; $4119: $c5
	ld a, [hl]                                       ; $411a: $7e
	ld bc, $a000                                     ; $411b: $01 $00 $a0
	cp l                                             ; $411e: $bd
	ld [bc], a                                       ; $411f: $02
	dec e                                            ; $4120: $1d
	inc c                                            ; $4121: $0c
	jr nz, jr_031_40d9                               ; $4122: $20 $b5

	sub c                                            ; $4124: $91
	ld bc, $0206                                     ; $4125: $01 $06 $02
	ld a, l                                          ; $4128: $7d
	nop                                              ; $4129: $00
	ld a, [hl]                                       ; $412a: $7e
	nop                                              ; $412b: $00
	ld d, $06                                        ; $412c: $16 $06
	jr jr_031_4136                                   ; $412e: $18 $06

	jp z, $06be                                      ; $4130: $ca $be $06

	add hl, de                                       ; $4133: $19
	jr jr_031_414f                                   ; $4134: $18 $19

jr_031_4136:
	dec de                                           ; $4136: $1b
	cp [hl]                                          ; $4137: $be
	res 7, [hl]                                      ; $4138: $cb $be
	ld b, $1d                                        ; $413a: $06 $1d
	dec de                                           ; $413c: $1b
	dec e                                            ; $413d: $1d
	jr nz, @-$40                                     ; $413e: $20 $be

	sub d                                            ; $4140: $92
	ei                                               ; $4141: $fb
	or c                                             ; $4142: $b1
	ld b, c                                          ; $4143: $41
	ld b, $03                                        ; $4144: $06 $03
	cp [hl]                                          ; $4146: $be
	ld b, $36                                        ; $4147: $06 $36
	dec [hl]                                         ; $4149: $35
	inc sp                                           ; $414a: $33
	ld l, $be                                        ; $414b: $2e $be
	ei                                               ; $414d: $fb
	ld [bc], a                                       ; $414e: $02

jr_031_414f:
	cp [hl]                                          ; $414f: $be
	ld b, $36                                        ; $4150: $06 $36
	dec [hl]                                         ; $4152: $35
	inc sp                                           ; $4153: $33
	ld l, $36                                        ; $4154: $2e $36
	dec [hl]                                         ; $4156: $35
	inc sp                                           ; $4157: $33
	ld l, $be                                        ; $4158: $2e $be
	ei                                               ; $415a: $fb
	sub [hl]                                         ; $415b: $96
	ld b, $04                                        ; $415c: $06 $04
	cp [hl]                                          ; $415e: $be
	ld b, $35                                        ; $415f: $06 $35
	inc sp                                           ; $4161: $33
	ld sp, $be2e                                     ; $4162: $31 $2e $be
	ei                                               ; $4165: $fb
	ld [bc], a                                       ; $4166: $02
	cp [hl]                                          ; $4167: $be
	ld b, $35                                        ; $4168: $06 $35
	inc sp                                           ; $416a: $33
	ld sp, $be2e                                     ; $416b: $31 $2e $be
	push bc                                          ; $416e: $c5
	dec [hl]                                         ; $416f: $35
	ld b, $c2                                        ; $4170: $06 $c2
	dec [hl]                                         ; $4172: $35
	ld a, [bc]                                       ; $4173: $0a
	push bc                                          ; $4174: $c5
	ld a, l                                          ; $4175: $7d
	ld bc, $017e                                     ; $4176: $01 $7e $01
	nop                                              ; $4179: $00
	xor c                                            ; $417a: $a9
	cp l                                             ; $417b: $bd
	ld [bc], a                                       ; $417c: $02
	inc h                                            ; $417d: $24
	inc c                                            ; $417e: $0c
	ld a, [bc]                                       ; $417f: $0a
	ld a, [hl]                                       ; $4180: $7e
	nop                                              ; $4181: $00
	jp nz, $0224                                     ; $4182: $c2 $24 $02

	push bc                                          ; $4185: $c5
	inc h                                            ; $4186: $24
	ld b, $c2                                        ; $4187: $06 $c2
	inc h                                            ; $4189: $24
	ld b, $c5                                        ; $418a: $06 $c5
	inc h                                            ; $418c: $24
	ld d, $c2                                        ; $418d: $16 $c2
	inc h                                            ; $418f: $24
	ld [bc], a                                       ; $4190: $02
	push bc                                          ; $4191: $c5
	daa                                              ; $4192: $27
	ld b, $c2                                        ; $4193: $06 $c2
	daa                                              ; $4195: $27
	ld b, $7e                                        ; $4196: $06 $7e
	ld bc, $a900                                     ; $4198: $01 $00 $a9
	push bc                                          ; $419b: $c5
	dec h                                            ; $419c: $25
	ld [de], a                                       ; $419d: $12
	ld a, [hl]                                       ; $419e: $7e
	nop                                              ; $419f: $00
	jp nz, $0625                                     ; $41a0: $c2 $25 $06

	push bc                                          ; $41a3: $c5
	ld a, [hl]                                       ; $41a4: $7e
	ld bc, $a000                                     ; $41a5: $01 $00 $a0
	cp l                                             ; $41a8: $bd
	ld [bc], a                                       ; $41a9: $02
	ld [hl+], a                                      ; $41aa: $22
	inc c                                            ; $41ab: $0c
	ld e, $c3                                        ; $41ac: $1e $c3
	ld [hl+], a                                      ; $41ae: $22
	ld [bc], a                                       ; $41af: $02
	or c                                             ; $41b0: $b1
	ld h, c                                          ; $41b1: $61
	ld h, h                                          ; $41b2: $64
	rlca                                             ; $41b3: $07
	sub h                                            ; $41b4: $94
	inc h                                            ; $41b5: $24
	ld d, $06                                        ; $41b6: $16 $06
	rla                                              ; $41b8: $17
	ld b, $c7                                        ; $41b9: $06 $c7
	jr jr_031_41c3                                   ; $41bb: $18 $06

	ret z                                            ; $41bd: $c8

	add hl, de                                       ; $41be: $19
	ld b, $1b                                        ; $41bf: $06 $1b
	ld b, $c9                                        ; $41c1: $06 $c9

jr_031_41c3:
	inc e                                            ; $41c3: $1c
	ld b, $ca                                        ; $41c4: $06 $ca
	dec e                                            ; $41c6: $1d
	ld b, $cb                                        ; $41c7: $06 $cb
	ld e, $06                                        ; $41c9: $1e $06
	call z, $0620                                    ; $41cb: $cc $20 $06
	call $0621                                       ; $41ce: $cd $21 $06
	sub h                                            ; $41d1: $94
	ld [$0096], sp                                   ; $41d2: $08 $96 $00
	nop                                              ; $41d5: $00
	cp $ff                                           ; $41d6: $fe $ff
	or h                                             ; $41d8: $b4
	adc [hl]                                         ; $41d9: $8e
	and c                                            ; $41da: $a1
	nop                                              ; $41db: $00
	add hl, hl                                       ; $41dc: $29
	dec b                                            ; $41dd: $05
	nop                                              ; $41de: $00
	ld bc, $0529                                     ; $41df: $01 $29 $05
	nop                                              ; $41e2: $00
	ld bc, $0529                                     ; $41e3: $01 $29 $05
	pop bc                                           ; $41e6: $c1
	add hl, hl                                       ; $41e7: $29
	rlca                                             ; $41e8: $07
	ret nz                                           ; $41e9: $c0

	add hl, hl                                       ; $41ea: $29
	inc c                                            ; $41eb: $0c
	nop                                              ; $41ec: $00
	inc h                                            ; $41ed: $24
	jp z, $0529                                      ; $41ee: $ca $29 $05

	nop                                              ; $41f1: $00
	ld bc, $0529                                     ; $41f2: $01 $29 $05
	nop                                              ; $41f5: $00
	ld bc, $0629                                     ; $41f6: $01 $29 $06
	ret nz                                           ; $41f9: $c0

	add hl, hl                                       ; $41fa: $29
	ld b, $c0                                        ; $41fb: $06 $c0
	add hl, hl                                       ; $41fd: $29
	inc c                                            ; $41fe: $0c
	sub e                                            ; $41ff: $93
	ret nz                                           ; $4200: $c0

	jr nc, @+$08                                     ; $4201: $30 $06

	ld sp, $c106                                     ; $4203: $31 $06 $c1
	jr nc, @+$08                                     ; $4206: $30 $06

	ld sp, $c206                                     ; $4208: $31 $06 $c2
	jr nc, jr_031_4213                               ; $420b: $30 $06

	ld sp, $9106                                     ; $420d: $31 $06 $91
	jp z, $0629                                      ; $4210: $ca $29 $06

jr_031_4213:
	pop bc                                           ; $4213: $c1
	add hl, hl                                       ; $4214: $29
	ld b, $7e                                        ; $4215: $06 $7e
	ld [bc], a                                       ; $4217: $02
	nop                                              ; $4218: $00
	xor c                                            ; $4219: $a9
	ret                                              ; $421a: $c9


	inc l                                            ; $421b: $2c
	ld d, $7e                                        ; $421c: $16 $7e
	nop                                              ; $421e: $00
	pop bc                                           ; $421f: $c1
	inc l                                            ; $4220: $2c
	ld [bc], a                                       ; $4221: $02
	ret z                                            ; $4222: $c8

	dec l                                            ; $4223: $2d
	ld a, [bc]                                       ; $4224: $0a
	pop bc                                           ; $4225: $c1
	dec l                                            ; $4226: $2d
	ld [bc], a                                       ; $4227: $02
	cp $c9                                           ; $4228: $fe $c9
	sub c                                            ; $422a: $91
	ld a, [hl]                                       ; $422b: $7e
	ld [bc], a                                       ; $422c: $02
	nop                                              ; $422d: $00
	xor c                                            ; $422e: $a9
	ld l, $18                                        ; $422f: $2e $18
	jp $0c2e                                         ; $4231: $c3 $2e $0c


	jp nz, $0c2e                                     ; $4234: $c2 $2e $0c

	ld a, [hl]                                       ; $4237: $7e
	ld [bc], a                                       ; $4238: $02
	nop                                              ; $4239: $00
	and b                                            ; $423a: $a0
	ret z                                            ; $423b: $c8

	dec de                                           ; $423c: $1b
	ld b, $c2                                        ; $423d: $06 $c2
	dec de                                           ; $423f: $1b
	ld b, $c8                                        ; $4240: $06 $c8
	rra                                              ; $4242: $1f
	ld [hl+], a                                      ; $4243: $22
	jp nz, $021f                                     ; $4244: $c2 $1f $02

	ret z                                            ; $4247: $c8

	dec e                                            ; $4248: $1d
	dec e                                            ; $4249: $1d
	jp nz, $071d                                     ; $424a: $c2 $1d $07

	ret z                                            ; $424d: $c8

	cp l                                             ; $424e: $bd
	ld [bc], a                                       ; $424f: $02
	rra                                              ; $4250: $1f
	inc c                                            ; $4251: $0c
	ld [hl+], a                                      ; $4252: $22
	ret nz                                           ; $4253: $c0

	rra                                              ; $4254: $1f
	ld [bc], a                                       ; $4255: $02
	ret                                              ; $4256: $c9


	sub c                                            ; $4257: $91
	ld a, [hl]                                       ; $4258: $7e
	nop                                              ; $4259: $00
	inc l                                            ; $425a: $2c
	ld a, [bc]                                       ; $425b: $0a
	jp nz, $022c                                     ; $425c: $c2 $2c $02

	ret                                              ; $425f: $c9


	ld a, [hl]                                       ; $4260: $7e
	ld [bc], a                                       ; $4261: $02
	nop                                              ; $4262: $00
	xor c                                            ; $4263: $a9
	ld l, $18                                        ; $4264: $2e $18
	jp $0c2e                                         ; $4266: $c3 $2e $0c


	jp nz, $0c2e                                     ; $4269: $c2 $2e $0c

	ld a, [hl]                                       ; $426c: $7e
	ld [bc], a                                       ; $426d: $02
	nop                                              ; $426e: $00
	and b                                            ; $426f: $a0
	rst JumpTable                                          ; $4270: $c7
	dec de                                           ; $4271: $1b
	ld b, $c3                                        ; $4272: $06 $c3
	dec de                                           ; $4274: $1b
	ld b, $c7                                        ; $4275: $06 $c7
	rra                                              ; $4277: $1f
	ld [hl+], a                                      ; $4278: $22
	jp $021f                                         ; $4279: $c3 $1f $02


	rst JumpTable                                          ; $427c: $c7
	dec e                                            ; $427d: $1d
	dec e                                            ; $427e: $1d
	jp $071d                                         ; $427f: $c3 $1d $07


	rst JumpTable                                          ; $4282: $c7
	cp l                                             ; $4283: $bd
	ld [bc], a                                       ; $4284: $02
	rra                                              ; $4285: $1f
	inc c                                            ; $4286: $0c
	inc h                                            ; $4287: $24
	jp nz, $0c1f                                     ; $4288: $c2 $1f $0c

	ld a, [hl]                                       ; $428b: $7e
	nop                                              ; $428c: $00
	sub c                                            ; $428d: $91
	ei                                               ; $428e: $fb
	sla d                                            ; $428f: $cb $22
	ld [de], a                                       ; $4291: $12
	pop bc                                           ; $4292: $c1
	ld [hl+], a                                      ; $4293: $22
	ld b, $fb                                        ; $4294: $06 $fb
	inc b                                            ; $4296: $04
	jp z, $0620                                      ; $4297: $ca $20 $06

	pop bc                                           ; $429a: $c1
	jr nz, @+$08                                     ; $429b: $20 $06

	jp z, $121d                                      ; $429d: $ca $1d $12

	pop bc                                           ; $42a0: $c1
	dec e                                            ; $42a1: $1d
	ld b, $ca                                        ; $42a2: $06 $ca
	ld a, [hl]                                       ; $42a4: $7e
	ld bc, $a000                                     ; $42a5: $01 $00 $a0
	dec e                                            ; $42a8: $1d
	inc h                                            ; $42a9: $24
	ld a, [hl]                                       ; $42aa: $7e
	nop                                              ; $42ab: $00
	pop bc                                           ; $42ac: $c1
	dec e                                            ; $42ad: $1d

jr_031_42ae:
	inc c                                            ; $42ae: $0c
	jp z, $02bd                                      ; $42af: $ca $bd $02

	ld e, $0c                                        ; $42b2: $1e $0c
	ld b, $c1                                        ; $42b4: $06 $c1
	ld e, $06                                        ; $42b6: $1e $06
	rr [hl]                                          ; $42b8: $cb $1e
	ld b, $c1                                        ; $42ba: $06 $c1
	ld e, $06                                        ; $42bc: $1e $06
	rr [hl]                                          ; $42be: $cb $1e
	ld [de], a                                       ; $42c0: $12
	pop bc                                           ; $42c1: $c1
	ld e, $06                                        ; $42c2: $1e $06
	rr l                                             ; $42c4: $cb $1d
	ld b, $c1                                        ; $42c6: $06 $c1
	dec e                                            ; $42c8: $1d
	ld b, $cb                                        ; $42c9: $06 $cb
	dec de                                           ; $42cb: $1b
	ld [de], a                                       ; $42cc: $12
	pop bc                                           ; $42cd: $c1
	dec de                                           ; $42ce: $1b
	ld b, $cb                                        ; $42cf: $06 $cb
	ld a, [hl]                                       ; $42d1: $7e
	ld bc, $a000                                     ; $42d2: $01 $00 $a0
	cp l                                             ; $42d5: $bd
	ld [bc], a                                       ; $42d6: $02
	dec e                                            ; $42d7: $1d
	inc c                                            ; $42d8: $0c
	inc h                                            ; $42d9: $24
	ret nz                                           ; $42da: $c0

	ld a, [hl]                                       ; $42db: $7e
	nop                                              ; $42dc: $00
	dec e                                            ; $42dd: $1d
	inc c                                            ; $42de: $0c
	nop                                              ; $42df: $00
	jr nc, jr_031_42ae                               ; $42e0: $30 $cc

	sub c                                            ; $42e2: $91
	ld e, $06                                        ; $42e3: $1e $06
	pop bc                                           ; $42e5: $c1
	ld e, $06                                        ; $42e6: $1e $06
	call z, $101e                                    ; $42e8: $cc $1e $10
	pop bc                                           ; $42eb: $c1
	ld e, $08                                        ; $42ec: $1e $08
	call z, $017e                                    ; $42ee: $cc $7e $01
	nop                                              ; $42f1: $00
	and b                                            ; $42f2: $a0
	ld e, $30                                        ; $42f3: $1e $30
	ld a, [hl]                                       ; $42f5: $7e
	nop                                              ; $42f6: $00
	pop bc                                           ; $42f7: $c1
	ld e, $0c                                        ; $42f8: $1e $0c
	call z, $061d                                    ; $42fa: $cc $1d $06
	pop bc                                           ; $42fd: $c1
	dec e                                            ; $42fe: $1d
	ld b, $cc                                        ; $42ff: $06 $cc
	ld [hl+], a                                      ; $4301: $22
	db $10                                           ; $4302: $10
	pop bc                                           ; $4303: $c1
	ld [hl+], a                                      ; $4304: $22
	ld [$017e], sp                                   ; $4305: $08 $7e $01
	nop                                              ; $4308: $00
	and b                                            ; $4309: $a0
	call z, $2425                                    ; $430a: $cc $25 $24
	pop bc                                           ; $430d: $c1
	ld a, [hl]                                       ; $430e: $7e
	nop                                              ; $430f: $00
	dec h                                            ; $4310: $25
	inc c                                            ; $4311: $0c
	call z, $017e                                    ; $4312: $cc $7e $01
	nop                                              ; $4315: $00
	xor c                                            ; $4316: $a9
	cp l                                             ; $4317: $bd
	ld [bc], a                                       ; $4318: $02
	inc h                                            ; $4319: $24
	inc c                                            ; $431a: $0c
	ld [$007e], sp                                   ; $431b: $08 $7e $00
	pop bc                                           ; $431e: $c1
	inc h                                            ; $431f: $24
	inc b                                            ; $4320: $04
	call z, $0624                                    ; $4321: $cc $24 $06
	pop bc                                           ; $4324: $c1
	inc h                                            ; $4325: $24
	ld b, $cc                                        ; $4326: $06 $cc
	inc h                                            ; $4328: $24
	ld d, $c0                                        ; $4329: $16 $c0
	inc h                                            ; $432b: $24
	ld [bc], a                                       ; $432c: $02
	call z, $0627                                    ; $432d: $cc $27 $06
	pop bc                                           ; $4330: $c1
	daa                                              ; $4331: $27
	ld b, $7e                                        ; $4332: $06 $7e
	ld bc, $a900                                     ; $4334: $01 $00 $a9
	call z, $1225                                    ; $4337: $cc $25 $12
	ld a, [hl]                                       ; $433a: $7e
	nop                                              ; $433b: $00
	pop bc                                           ; $433c: $c1
	dec h                                            ; $433d: $25
	ld b, $cc                                        ; $433e: $06 $cc
	ld a, [hl]                                       ; $4340: $7e
	ld bc, $a000                                     ; $4341: $01 $00 $a0
	cp l                                             ; $4344: $bd
	ld [bc], a                                       ; $4345: $02
	ld [hl+], a                                      ; $4346: $22
	inc c                                            ; $4347: $0c
	inc h                                            ; $4348: $24
	pop bc                                           ; $4349: $c1
	ld [hl+], a                                      ; $434a: $22
	inc c                                            ; $434b: $0c
	or c                                             ; $434c: $b1
	ld d, c                                          ; $434d: $51
	ld b, $02                                        ; $434e: $06 $02
	ld a, [hl]                                       ; $4350: $7e
	add hl, bc                                       ; $4351: $09
	nop                                              ; $4352: $00
	xor c                                            ; $4353: $a9
	ld [hl+], a                                      ; $4354: $22
	ld b, $24                                        ; $4355: $06 $24
	ld b, $b1                                        ; $4357: $06 $b1
	ld h, c                                          ; $4359: $61
	ld b, $02                                        ; $435a: $06 $02
	dec h                                            ; $435c: $25
	ld b, $27                                        ; $435d: $06 $27
	ld b, $b1                                        ; $435f: $06 $b1
	ld [hl], c                                       ; $4361: $71
	ld b, $01                                        ; $4362: $06 $01
	add hl, hl                                       ; $4364: $29
	ld b, $2a                                        ; $4365: $06 $2a
	ld b, $b1                                        ; $4367: $06 $b1
	add c                                            ; $4369: $81
	ld b, $01                                        ; $436a: $06 $01
	inc l                                            ; $436c: $2c
	ld b, $2d                                        ; $436d: $06 $2d
	ld b, $7e                                        ; $436f: $06 $7e
	nop                                              ; $4371: $00
	sub [hl]                                         ; $4372: $96
	nop                                              ; $4373: $00
	nop                                              ; $4374: $00
	cp $ff                                           ; $4375: $fe $ff
	or h                                             ; $4377: $b4
	adc [hl]                                         ; $4378: $8e
	ld b, c                                          ; $4379: $41
	dec c                                            ; $437a: $0d
	dec l                                            ; $437b: $2d
	dec b                                            ; $437c: $05
	nop                                              ; $437d: $00
	ld bc, $052d                                     ; $437e: $01 $2d $05
	nop                                              ; $4381: $00
	ld bc, $062d                                     ; $4382: $01 $2d $06
	add $2d                                          ; $4385: $c6 $2d
	ld b, $00                                        ; $4387: $06 $00
	inc c                                            ; $4389: $0c
	add h                                            ; $438a: $84
	jp nz, $1611                                     ; $438b: $c2 $11 $16

	add $11                                          ; $438e: $c6 $11
	ld [bc], a                                       ; $4390: $02
	jp nz, $0b11                                     ; $4391: $c2 $11 $0b

	nop                                              ; $4394: $00
	ld bc, $c48d                                     ; $4395: $01 $8d $c4
	dec l                                            ; $4398: $2d
	dec b                                            ; $4399: $05
	nop                                              ; $439a: $00
	ld bc, $052d                                     ; $439b: $01 $2d $05
	nop                                              ; $439e: $00
	ld bc, $062d                                     ; $439f: $01 $2d $06
	add $2d                                          ; $43a2: $c6 $2d
	ld b, $84                                        ; $43a4: $06 $84
	nop                                              ; $43a6: $00
	inc c                                            ; $43a7: $0c
	jp nz, $107e                                     ; $43a8: $c2 $7e $10

	ld de, $11a4                                     ; $43ab: $11 $a4 $11
	ld [hl+], a                                      ; $43ae: $22
	ld a, [hl]                                       ; $43af: $7e
	nop                                              ; $43b0: $00
	add $0f                                          ; $43b1: $c6 $0f
	ld [bc], a                                       ; $43b3: $02
	add l                                            ; $43b4: $85
	jp nz, $0605                                     ; $43b5: $c2 $05 $06

	call nz, $0305                                   ; $43b8: $c4 $05 $03
	add $05                                          ; $43bb: $c6 $05
	inc bc                                           ; $43bd: $03
	jp nz, $027e                                     ; $43be: $c2 $7e $02

	nop                                              ; $43c1: $00
	and h                                            ; $43c2: $a4
	ld [$7e16], sp                                   ; $43c3: $08 $16 $7e
	nop                                              ; $43c6: $00
	add $08                                          ; $43c7: $c6 $08
	ld [bc], a                                       ; $43c9: $02
	jp nz, $0a09                                     ; $43ca: $c2 $09 $0a

	call nz, $0209                                   ; $43cd: $c4 $09 $02
	cp $c2                                           ; $43d0: $fe $c2
	adc e                                            ; $43d2: $8b
	ld a, [hl]                                       ; $43d3: $7e
	ld [bc], a                                       ; $43d4: $02
	nop                                              ; $43d5: $00
	and d                                            ; $43d6: $a2
	ld a, [bc]                                       ; $43d7: $0a
	ld a, [de]                                       ; $43d8: $1a
	add h                                            ; $43d9: $84
	jp nz, $080d                                     ; $43da: $c2 $0d $08

	call nz, $020d                                   ; $43dd: $c4 $0d $02
	jp nz, $0a0a                                     ; $43e0: $c2 $0a $0a

	call nz, $020a                                   ; $43e3: $c4 $0a $02
	jp nz, $0a0f                                     ; $43e6: $c2 $0f $0a

	add $0f                                          ; $43e9: $c6 $0f
	ld [bc], a                                       ; $43eb: $02
	jp nz, $0a0f                                     ; $43ec: $c2 $0f $0a

	add $0f                                          ; $43ef: $c6 $0f
	ld [bc], a                                       ; $43f1: $02
	jp nz, $0a0d                                     ; $43f2: $c2 $0d $0a

	add $0d                                          ; $43f5: $c6 $0d
	ld [bc], a                                       ; $43f7: $02
	jp nz, $0a0c                                     ; $43f8: $c2 $0c $0a

	add $0c                                          ; $43fb: $c6 $0c
	ld [bc], a                                       ; $43fd: $02
	ei                                               ; $43fe: $fb
	ld a, [hl]                                       ; $43ff: $7e
	ld [bc], a                                       ; $4400: $02
	nop                                              ; $4401: $00
	and d                                            ; $4402: $a2
	add h                                            ; $4403: $84
	jp nz, $0a0a                                     ; $4404: $c2 $0a $0a

	add $0a                                          ; $4407: $c6 $0a
	ld [bc], a                                       ; $4409: $02
	jp nz, $0a0a                                     ; $440a: $c2 $0a $0a

	add $0a                                          ; $440d: $c6 $0a
	ld [bc], a                                       ; $440f: $02
	jp nz, $0a0d                                     ; $4410: $c2 $0d $0a

	add $0d                                          ; $4413: $c6 $0d
	ld [bc], a                                       ; $4415: $02
	jp nz, $0a0a                                     ; $4416: $c2 $0a $0a

	add $0a                                          ; $4419: $c6 $0a
	ld [bc], a                                       ; $441b: $02
	jp nz, $0a0f                                     ; $441c: $c2 $0f $0a

	add $0f                                          ; $441f: $c6 $0f
	ld [bc], a                                       ; $4421: $02
	jp nz, $0a0f                                     ; $4422: $c2 $0f $0a

	add $0f                                          ; $4425: $c6 $0f
	ld [bc], a                                       ; $4427: $02
	jp nz, $0a0d                                     ; $4428: $c2 $0d $0a

	add $0d                                          ; $442b: $c6 $0d
	ld [bc], a                                       ; $442d: $02
	jp nz, $0a0c                                     ; $442e: $c2 $0c $0a

	add $0c                                          ; $4431: $c6 $0c
	ld [bc], a                                       ; $4433: $02
	ei                                               ; $4434: $fb
	inc bc                                           ; $4435: $03
	jp nz, $7e84                                     ; $4436: $c2 $84 $7e

	ld [bc], a                                       ; $4439: $02
	nop                                              ; $443a: $00
	and c                                            ; $443b: $a1
	ld a, [bc]                                       ; $443c: $0a
	ld a, [bc]                                       ; $443d: $0a
	call nz, $020a                                   ; $443e: $c4 $0a $02
	jp nz, $0a0a                                     ; $4441: $c2 $0a $0a

	call nz, $020a                                   ; $4444: $c4 $0a $02
	jp nz, $0a0d                                     ; $4447: $c2 $0d $0a

	add $0d                                          ; $444a: $c6 $0d
	ld [bc], a                                       ; $444c: $02
	jp nz, $0a0a                                     ; $444d: $c2 $0a $0a

	add $0a                                          ; $4450: $c6 $0a
	ld [bc], a                                       ; $4452: $02
	jp nz, $0611                                     ; $4453: $c2 $11 $06

	add $11                                          ; $4456: $c6 $11
	ld b, $c2                                        ; $4458: $06 $c2
	ld de, $c40a                                     ; $445a: $11 $0a $c4
	ld de, $c202                                     ; $445d: $11 $02 $c2
	ld a, [bc]                                       ; $4460: $0a
	ld a, [bc]                                       ; $4461: $0a
	add $0a                                          ; $4462: $c6 $0a
	ld [bc], a                                       ; $4464: $02
	jp nz, $0a0c                                     ; $4465: $c2 $0c $0a

	add $0c                                          ; $4468: $c6 $0c
	ld [bc], a                                       ; $446a: $02
	jp nz, $0a0d                                     ; $446b: $c2 $0d $0a

	add $0d                                          ; $446e: $c6 $0d
	ld [bc], a                                       ; $4470: $02
	jp nz, $0a0d                                     ; $4471: $c2 $0d $0a

	add $0d                                          ; $4474: $c6 $0d
	ld [bc], a                                       ; $4476: $02
	jp nz, $0a11                                     ; $4477: $c2 $11 $0a

	add $11                                          ; $447a: $c6 $11
	ld [bc], a                                       ; $447c: $02
	jp nz, $0a0d                                     ; $447d: $c2 $0d $0a

	add $0d                                          ; $4480: $c6 $0d
	ld [bc], a                                       ; $4482: $02
	jp nz, $0a14                                     ; $4483: $c2 $14 $0a

	add $14                                          ; $4486: $c6 $14
	ld [bc], a                                       ; $4488: $02
	jp nz, $0a14                                     ; $4489: $c2 $14 $0a

	add $14                                          ; $448c: $c6 $14
	ld [bc], a                                       ; $448e: $02
	jp nz, $0a11                                     ; $448f: $c2 $11 $0a

	add $11                                          ; $4492: $c6 $11
	ld [bc], a                                       ; $4494: $02
	jp nz, $0a0d                                     ; $4495: $c2 $0d $0a

	add $0d                                          ; $4498: $c6 $0d
	ld [bc], a                                       ; $449a: $02
	jp nz, $0a0f                                     ; $449b: $c2 $0f $0a

	call nz, $020f                                   ; $449e: $c4 $0f $02
	jp nz, $0a0f                                     ; $44a1: $c2 $0f $0a

	call nz, $020f                                   ; $44a4: $c4 $0f $02
	jp nz, $0a12                                     ; $44a7: $c2 $12 $0a

	add $12                                          ; $44aa: $c6 $12
	ld [bc], a                                       ; $44ac: $02
	jp nz, $0a0f                                     ; $44ad: $c2 $0f $0a

	add $0f                                          ; $44b0: $c6 $0f
	ld [bc], a                                       ; $44b2: $02
	jp nz, $0616                                     ; $44b3: $c2 $16 $06

	add $16                                          ; $44b6: $c6 $16
	ld b, $c2                                        ; $44b8: $06 $c2
	ld d, $0a                                        ; $44ba: $16 $0a
	call nz, $0216                                   ; $44bc: $c4 $16 $02
	jp nz, $0a0f                                     ; $44bf: $c2 $0f $0a

	add $0f                                          ; $44c2: $c6 $0f
	ld [bc], a                                       ; $44c4: $02
	jp nz, $0a12                                     ; $44c5: $c2 $12 $0a

	add $12                                          ; $44c8: $c6 $12
	ld [bc], a                                       ; $44ca: $02
	jp nz, $0a0d                                     ; $44cb: $c2 $0d $0a

	add $0d                                          ; $44ce: $c6 $0d
	ld [bc], a                                       ; $44d0: $02
	jp nz, $0a0d                                     ; $44d1: $c2 $0d $0a

	add $0d                                          ; $44d4: $c6 $0d
	ld [bc], a                                       ; $44d6: $02
	jp nz, $0a11                                     ; $44d7: $c2 $11 $0a

	add $11                                          ; $44da: $c6 $11
	ld [bc], a                                       ; $44dc: $02
	jp nz, $0a0d                                     ; $44dd: $c2 $0d $0a

	add $0d                                          ; $44e0: $c6 $0d
	ld [bc], a                                       ; $44e2: $02
	jp nz, $0a16                                     ; $44e3: $c2 $16 $0a

	add $16                                          ; $44e6: $c6 $16
	ld [bc], a                                       ; $44e8: $02
	jp nz, $0a16                                     ; $44e9: $c2 $16 $0a

	add $16                                          ; $44ec: $c6 $16
	ld [bc], a                                       ; $44ee: $02
	jp nz, $0a11                                     ; $44ef: $c2 $11 $0a

	add $11                                          ; $44f2: $c6 $11
	ld [bc], a                                       ; $44f4: $02
	jp nz, $0a16                                     ; $44f5: $c2 $16 $0a

	add $16                                          ; $44f8: $c6 $16
	ld [bc], a                                       ; $44fa: $02
	jp nz, $0f84                                     ; $44fb: $c2 $84 $0f

	ld a, [bc]                                       ; $44fe: $0a
	call nz, $020f                                   ; $44ff: $c4 $0f $02
	jp nz, $0a0f                                     ; $4502: $c2 $0f $0a

	call nz, $020f                                   ; $4505: $c4 $0f $02
	jp nz, $0a12                                     ; $4508: $c2 $12 $0a

	add $12                                          ; $450b: $c6 $12
	ld [bc], a                                       ; $450d: $02
	jp nz, $0a0f                                     ; $450e: $c2 $0f $0a

	add $0f                                          ; $4511: $c6 $0f
	ld [bc], a                                       ; $4513: $02
	jp nz, $0616                                     ; $4514: $c2 $16 $06

	add $16                                          ; $4517: $c6 $16
	ld b, $c2                                        ; $4519: $06 $c2
	ld d, $0a                                        ; $451b: $16 $0a
	call nz, $0216                                   ; $451d: $c4 $16 $02
	jp nz, $0a12                                     ; $4520: $c2 $12 $0a

	add $12                                          ; $4523: $c6 $12
	ld [bc], a                                       ; $4525: $02
	jp nz, $0a16                                     ; $4526: $c2 $16 $0a

	add $16                                          ; $4529: $c6 $16
	ld [bc], a                                       ; $452b: $02
	jp nz, $0a0d                                     ; $452c: $c2 $0d $0a

	add $0d                                          ; $452f: $c6 $0d
	ld [bc], a                                       ; $4531: $02
	jp nz, $0a0d                                     ; $4532: $c2 $0d $0a

	add $0d                                          ; $4535: $c6 $0d
	ld [bc], a                                       ; $4537: $02
	jp nz, $0a11                                     ; $4538: $c2 $11 $0a

	add $11                                          ; $453b: $c6 $11
	ld [bc], a                                       ; $453d: $02
	jp nz, $0a0d                                     ; $453e: $c2 $0d $0a

	add $0d                                          ; $4541: $c6 $0d
	ld [bc], a                                       ; $4543: $02
	jp nz, $0616                                     ; $4544: $c2 $16 $06

	add $16                                          ; $4547: $c6 $16

jr_031_4549:
	ld b, $c2                                        ; $4549: $06 $c2
	ld d, $0a                                        ; $454b: $16 $0a
	call nz, $0216                                   ; $454d: $c4 $16 $02
	jp nz, $0a11                                     ; $4550: $c2 $11 $0a

	add $11                                          ; $4553: $c6 $11
	ld [bc], a                                       ; $4555: $02
	jp nz, $02bd                                     ; $4556: $c2 $bd $02

	inc c                                            ; $4559: $0c
	inc c                                            ; $455a: $0c
	ld a, [bc]                                       ; $455b: $0a
	ld a, [hl]                                       ; $455c: $7e
	ld [bc], a                                       ; $455d: $02
	nop                                              ; $455e: $00
	and d                                            ; $455f: $a2
	add $0c                                          ; $4560: $c6 $0c
	ld [bc], a                                       ; $4562: $02
	jp nz, $060c                                     ; $4563: $c2 $0c $06

	add $0c                                          ; $4566: $c6 $0c

jr_031_4568:
	ld b, $c2                                        ; $4568: $06 $c2
	inc c                                            ; $456a: $0c
	ld d, $c6                                        ; $456b: $16 $c6
	inc c                                            ; $456d: $0c
	ld [bc], a                                       ; $456e: $02
	jp nz, $0611                                     ; $456f: $c2 $11 $06

	add $11                                          ; $4572: $c6 $11
	ld b, $c2                                        ; $4574: $06 $c2
	ld de, $c412                                     ; $4576: $11 $12 $c4
	ld de, $c603                                     ; $4579: $11 $03 $c6
	ld de, $c203                                     ; $457c: $11 $03 $c2
	cp l                                             ; $457f: $bd
	ld [bc], a                                       ; $4580: $02
	ld a, [bc]                                       ; $4581: $0a
	inc c                                            ; $4582: $0c
	jr jr_031_4549                                   ; $4583: $18 $c4

jr_031_4585:
	ld a, [bc]                                       ; $4585: $0a
	inc c                                            ; $4586: $0c
	add $0a                                          ; $4587: $c6 $0a
	inc c                                            ; $4589: $0c
	call nz, $037e                                   ; $458a: $c4 $7e $03
	nop                                              ; $458d: $00
	and e                                            ; $458e: $a3
	add [hl]                                         ; $458f: $86
	cp [hl]                                          ; $4590: $be
	ld b, $0a                                        ; $4591: $06 $0a
	inc c                                            ; $4593: $0c
	dec c                                            ; $4594: $0d
	rrca                                             ; $4595: $0f
	ld de, $1412                                     ; $4596: $11 $12 $14
	dec d                                            ; $4599: $15
	cp [hl]                                          ; $459a: $be
	ld a, [hl]                                       ; $459b: $7e
	nop                                              ; $459c: $00
	cp $ff                                           ; $459d: $fe $ff
	ret nc                                           ; $459f: $d0

	adc [hl]                                         ; $45a0: $8e
	inc c                                            ; $45a1: $0c
	ld b, $0c                                        ; $45a2: $06 $0c
	ld b, $0c                                        ; $45a4: $06 $0c
	jr jr_031_45b3                                   ; $45a6: $18 $0b

	jr jr_031_4568                                   ; $45a8: $18 $be

	ld b, $0b                                        ; $45aa: $06 $0b
	add hl, bc                                       ; $45ac: $09
	inc c                                            ; $45ad: $0c
	inc c                                            ; $45ae: $0c
	cp [hl]                                          ; $45af: $be
	inc c                                            ; $45b0: $0c
	inc c                                            ; $45b1: $0c
	cp [hl]                                          ; $45b2: $be

jr_031_45b3:
	inc c                                            ; $45b3: $0c
	add hl, bc                                       ; $45b4: $09
	dec bc                                           ; $45b5: $0b
	ld [de], a                                       ; $45b6: $12
	add hl, bc                                       ; $45b7: $09
	cp [hl]                                          ; $45b8: $be
	ld c, a                                          ; $45b9: $4f
	ld [bc], a                                       ; $45ba: $02

jr_031_45bb:
	ld c, a                                          ; $45bb: $4f
	ld a, [bc]                                       ; $45bc: $0a
	inc d                                            ; $45bd: $14
	jr jr_031_460d                                   ; $45be: $18 $4d

	ld b, $4d                                        ; $45c0: $06 $4d
	ld b, $fe                                        ; $45c2: $06 $fe
	inc d                                            ; $45c4: $14
	jr jr_031_4585                                   ; $45c5: $18 $be

	inc c                                            ; $45c7: $0c
	ld c, a                                          ; $45c8: $4f
	add hl, bc                                       ; $45c9: $09
	dec bc                                           ; $45ca: $0b
	dec bc                                           ; $45cb: $0b
	ld c, a                                          ; $45cc: $4f
	add hl, bc                                       ; $45cd: $09
	cp [hl]                                          ; $45ce: $be
	cp [hl]                                          ; $45cf: $be
	inc c                                            ; $45d0: $0c
	dec bc                                           ; $45d1: $0b
	add hl, bc                                       ; $45d2: $09
	ld c, a                                          ; $45d3: $4f
	add hl, bc                                       ; $45d4: $09
	dec bc                                           ; $45d5: $0b
	dec bc                                           ; $45d6: $0b
	cp [hl]                                          ; $45d7: $be
	ld c, $06                                        ; $45d8: $0e $06
	inc c                                            ; $45da: $0c
	inc c                                            ; $45db: $0c
	ld c, a                                          ; $45dc: $4f
	ld b, $be                                        ; $45dd: $06 $be
	inc c                                            ; $45df: $0c
	dec bc                                           ; $45e0: $0b
	add hl, bc                                       ; $45e1: $09
	ld c, a                                          ; $45e2: $4f
	add hl, bc                                       ; $45e3: $09
	dec bc                                           ; $45e4: $0b
	dec bc                                           ; $45e5: $0b
	ld c, a                                          ; $45e6: $4f
	add hl, bc                                       ; $45e7: $09
	cp [hl]                                          ; $45e8: $be
	cp [hl]                                          ; $45e9: $be
	inc c                                            ; $45ea: $0c
	dec bc                                           ; $45eb: $0b
	add hl, bc                                       ; $45ec: $09
	ld c, a                                          ; $45ed: $4f
	add hl, bc                                       ; $45ee: $09
	ld c, a                                          ; $45ef: $4f
	cp [hl]                                          ; $45f0: $be
	cp [hl]                                          ; $45f1: $be
	ld b, $09                                        ; $45f2: $06 $09
	inc c                                            ; $45f4: $0c
	ld c, a                                          ; $45f5: $4f
	ld c, a                                          ; $45f6: $4f
	cp [hl]                                          ; $45f7: $be
	dec bc                                           ; $45f8: $0b
	inc c                                            ; $45f9: $0c
	inc d                                            ; $45fa: $14
	jr jr_031_45bb                                   ; $45fb: $18 $be

	inc c                                            ; $45fd: $0c
	ld c, a                                          ; $45fe: $4f
	add hl, bc                                       ; $45ff: $09
	dec bc                                           ; $4600: $0b
	dec bc                                           ; $4601: $0b
	ld c, a                                          ; $4602: $4f
	add hl, bc                                       ; $4603: $09
	cp [hl]                                          ; $4604: $be
	cp [hl]                                          ; $4605: $be
	inc c                                            ; $4606: $0c
	dec bc                                           ; $4607: $0b
	add hl, bc                                       ; $4608: $09
	ld c, a                                          ; $4609: $4f
	add hl, bc                                       ; $460a: $09
	dec bc                                           ; $460b: $0b
	dec bc                                           ; $460c: $0b

jr_031_460d:
	ld c, a                                          ; $460d: $4f
	add hl, bc                                       ; $460e: $09
	cp [hl]                                          ; $460f: $be
	cp [hl]                                          ; $4610: $be
	inc c                                            ; $4611: $0c
	dec bc                                           ; $4612: $0b
	add hl, bc                                       ; $4613: $09
	ld c, a                                          ; $4614: $4f
	add hl, bc                                       ; $4615: $09
	dec bc                                           ; $4616: $0b
	dec bc                                           ; $4617: $0b
	ld c, a                                          ; $4618: $4f
	add hl, bc                                       ; $4619: $09
	cp [hl]                                          ; $461a: $be
	cp [hl]                                          ; $461b: $be
	inc c                                            ; $461c: $0c
	dec bc                                           ; $461d: $0b
	add hl, bc                                       ; $461e: $09
	ld c, a                                          ; $461f: $4f
	add hl, bc                                       ; $4620: $09
	dec bc                                           ; $4621: $0b
	dec bc                                           ; $4622: $0b
	ld c, a                                          ; $4623: $4f
	cp [hl]                                          ; $4624: $be
	add hl, bc                                       ; $4625: $09
	ld b, $09                                        ; $4626: $06 $09
	ld b, $be                                        ; $4628: $06 $be
	inc c                                            ; $462a: $0c
	dec bc                                           ; $462b: $0b
	add hl, bc                                       ; $462c: $09
	ld c, a                                          ; $462d: $4f
	add hl, bc                                       ; $462e: $09
	dec bc                                           ; $462f: $0b
	dec bc                                           ; $4630: $0b
	ld c, a                                          ; $4631: $4f
	add hl, bc                                       ; $4632: $09
	cp [hl]                                          ; $4633: $be
	cp [hl]                                          ; $4634: $be
	inc c                                            ; $4635: $0c
	dec bc                                           ; $4636: $0b
	add hl, bc                                       ; $4637: $09
	ld c, a                                          ; $4638: $4f
	add hl, bc                                       ; $4639: $09
	dec bc                                           ; $463a: $0b
	dec bc                                           ; $463b: $0b
	ld c, a                                          ; $463c: $4f
	cp [hl]                                          ; $463d: $be
	dec bc                                           ; $463e: $0b
	jr jr_031_4690                                   ; $463f: $18 $4f

	inc c                                            ; $4641: $0c
	ld c, a                                          ; $4642: $4f
	inc c                                            ; $4643: $0c
	cp [hl]                                          ; $4644: $be
	ld b, $09                                        ; $4645: $06 $09
	add hl, bc                                       ; $4647: $09
	ld c, a                                          ; $4648: $4f
	ld c, a                                          ; $4649: $4f
	dec c                                            ; $464a: $0d
	dec c                                            ; $464b: $0d
	cp [hl]                                          ; $464c: $be
	inc c                                            ; $464d: $0c
	ld [bc], a                                       ; $464e: $02
	ld c, a                                          ; $464f: $4f
	ld a, [bc]                                       ; $4650: $0a
	inc d                                            ; $4651: $14
	inc c                                            ; $4652: $0c
	nop                                              ; $4653: $00
	inc c                                            ; $4654: $0c
	ld c, a                                          ; $4655: $4f
	inc c                                            ; $4656: $0c
	ld c, a                                          ; $4657: $4f
	inc c                                            ; $4658: $0c
	cp [hl]                                          ; $4659: $be
	ld b, $4f                                        ; $465a: $06 $4f
	ld c, a                                          ; $465c: $4f
	ld c, a                                          ; $465d: $4f
	ld c, a                                          ; $465e: $4f
	ld c, a                                          ; $465f: $4f
	ld c, a                                          ; $4660: $4f
	jr jr_031_46b2                                   ; $4661: $18 $4f

	ld c, a                                          ; $4663: $4f
	ld c, a                                          ; $4664: $4f
	cp [hl]                                          ; $4665: $be
	cp $ff                                           ; $4666: $fe $ff
	ret nc                                           ; $4668: $d0

	ld a, b                                          ; $4669: $78
	cp $ca                                           ; $466a: $fe $ca
	sub b                                            ; $466c: $90
	add hl, hl                                       ; $466d: $29
	ld a, [bc]                                       ; $466e: $0a
	jp nz, $0829                                     ; $466f: $c2 $29 $08

	ret z                                            ; $4672: $c8

	jr z, jr_031_4681                                ; $4673: $28 $0c

	jp nz, $0628                                     ; $4675: $c2 $28 $06

	rst JumpTable                                          ; $4678: $c7
	daa                                              ; $4679: $27
	inc c                                            ; $467a: $0c
	jp nz, $0627                                     ; $467b: $c2 $27 $06

	sub e                                            ; $467e: $93
	sub a                                            ; $467f: $97
	dec a                                            ; $4680: $3d

jr_031_4681:
	ld [hl-], a                                      ; $4681: $32
	ld [de], a                                       ; $4682: $12
	sub a                                            ; $4683: $97
	ld c, h                                          ; $4684: $4c
	inc sp                                           ; $4685: $33
	inc c                                            ; $4686: $0c
	sub a                                            ; $4687: $97
	ld e, h                                          ; $4688: $5c
	inc [hl]                                         ; $4689: $34
	inc c                                            ; $468a: $0c
	sub a                                            ; $468b: $97
	ld e, [hl]                                       ; $468c: $5e
	dec [hl]                                         ; $468d: $35
	inc c                                            ; $468e: $0c
	sub a                                            ; $468f: $97

jr_031_4690:
	nop                                              ; $4690: $00
	jp nz, $0635                                     ; $4691: $c2 $35 $06

	ret z                                            ; $4694: $c8

	jr z, jr_031_46a3                                ; $4695: $28 $0c

	jp nz, $0628                                     ; $4697: $c2 $28 $06

	rst JumpTable                                          ; $469a: $c7
	daa                                              ; $469b: $27
	inc c                                            ; $469c: $0c
	jp nz, $0627                                     ; $469d: $c2 $27 $06

	rst JumpTable                                          ; $46a0: $c7
	sub e                                            ; $46a1: $93
	sub h                                            ; $46a2: $94

jr_031_46a3:
	ld [hl], a                                       ; $46a3: $77
	add hl, hl                                       ; $46a4: $29
	ld [de], a                                       ; $46a5: $12
	call $7c94                                       ; $46a6: $cd $94 $7c
	cp [hl]                                          ; $46a9: $be
	ld b, $19                                        ; $46aa: $06 $19
	add hl, de                                       ; $46ac: $19
	add hl, de                                       ; $46ad: $19
	add hl, de                                       ; $46ae: $19
	cp [hl]                                          ; $46af: $be
	sub h                                            ; $46b0: $94
	ld l, l                                          ; $46b1: $6d

jr_031_46b2:
	sub b                                            ; $46b2: $90
	call z, $0c29                                    ; $46b3: $cc $29 $0c
	jp nz, $0629                                     ; $46b6: $c2 $29 $06

	ret                                              ; $46b9: $c9


	jr z, @+$0e                                      ; $46ba: $28 $0c

	jp nz, $0628                                     ; $46bc: $c2 $28 $06

	rst JumpTable                                          ; $46bf: $c7
	daa                                              ; $46c0: $27
	inc c                                            ; $46c1: $0c
	jp nz, $0627                                     ; $46c2: $c2 $27 $06

	sub a                                            ; $46c5: $97
	nop                                              ; $46c6: $00
	add $90                                          ; $46c7: $c6 $90
	ld a, l                                          ; $46c9: $7d
	ld bc, $0894                                     ; $46ca: $01 $94 $08
	ld h, $11                                        ; $46cd: $26 $11
	nop                                              ; $46cf: $00
	ld bc, $0b27                                     ; $46d0: $01 $27 $0b
	nop                                              ; $46d3: $00
	ld bc, $0b28                                     ; $46d4: $01 $28 $0b
	nop                                              ; $46d7: $00
	ld bc, $0c29                                     ; $46d8: $01 $29 $0c
	sub a                                            ; $46db: $97
	nop                                              ; $46dc: $00
	jp nz, $0629                                     ; $46dd: $c2 $29 $06

	ld a, l                                          ; $46e0: $7d
	nop                                              ; $46e1: $00
	ret                                              ; $46e2: $c9


	jr z, jr_031_46f1                                ; $46e3: $28 $0c

	jp nz, $0628                                     ; $46e5: $c2 $28 $06

	rst JumpTable                                          ; $46e8: $c7
	daa                                              ; $46e9: $27
	inc c                                            ; $46ea: $0c
	jp nz, $0627                                     ; $46eb: $c2 $27 $06

	call nz, $9493                                   ; $46ee: $c4 $93 $94

jr_031_46f1:
	ld [$1226], sp                                   ; $46f1: $08 $26 $12
	call z, $7c94                                    ; $46f4: $cc $94 $7c
	cp [hl]                                          ; $46f7: $be
	ld b, $19                                        ; $46f8: $06 $19
	add hl, de                                       ; $46fa: $19
	add hl, de                                       ; $46fb: $19
	add hl, de                                       ; $46fc: $19
	cp [hl]                                          ; $46fd: $be
	sub h                                            ; $46fe: $94
	ld [$cbfb], sp                                   ; $46ff: $08 $fb $cb
	ld h, $0a                                        ; $4702: $26 $0a
	jp nz, $0826                                     ; $4704: $c2 $26 $08

	sla l                                            ; $4707: $cb $25
	inc c                                            ; $4709: $0c
	jp nz, $0625                                     ; $470a: $c2 $25 $06

	ret z                                            ; $470d: $c8

	inc h                                            ; $470e: $24
	inc c                                            ; $470f: $0c
	jp nz, $0624                                     ; $4710: $c2 $24 $06

	ret z                                            ; $4713: $c8

	sub e                                            ; $4714: $93
	ld a, [hl]                                       ; $4715: $7e
	dec b                                            ; $4716: $05
	nop                                              ; $4717: $00
	xor c                                            ; $4718: $a9
	inc hl                                           ; $4719: $23
	ld [de], a                                       ; $471a: $12
	ld a, [hl]                                       ; $471b: $7e
	nop                                              ; $471c: $00
	jp z, $0c24                                      ; $471d: $ca $24 $0c

	dec h                                            ; $4720: $25
	inc c                                            ; $4721: $0c
	ei                                               ; $4722: $fb
	inc b                                            ; $4723: $04
	add $90                                          ; $4724: $c6 $90
	nop                                              ; $4726: $00
	ld b, $7d                                        ; $4727: $06 $7d
	ld bc, $0d7e                                     ; $4729: $01 $7e $0d
	nop                                              ; $472c: $00
	and b                                            ; $472d: $a0
	jr z, jr_031_4760                                ; $472e: $28 $30

	ld a, [hl]                                       ; $4730: $7e
	nop                                              ; $4731: $00
	jp nz, $0c28                                     ; $4732: $c2 $28 $0c

	push bc                                          ; $4735: $c5
	daa                                              ; $4736: $27
	inc c                                            ; $4737: $0c
	dec h                                            ; $4738: $25
	inc c                                            ; $4739: $0c
	ld [hl+], a                                      ; $473a: $22
	ld b, $25                                        ; $473b: $06 $25
	ld b, $c3                                        ; $473d: $06 $c3
	dec h                                            ; $473f: $25
	ld b, $c2                                        ; $4740: $06 $c2
	dec h                                            ; $4742: $25
	ld b, $7d                                        ; $4743: $06 $7d
	nop                                              ; $4745: $00
	sub d                                            ; $4746: $92
	ret z                                            ; $4747: $c8

	add hl, de                                       ; $4748: $19
	ld b, $1d                                        ; $4749: $06 $1d
	inc c                                            ; $474b: $0c
	dec e                                            ; $474c: $1d
	inc c                                            ; $474d: $0c
	jp nz, $0c1d                                     ; $474e: $c2 $1d $0c

	or l                                             ; $4751: $b5
	add c                                            ; $4752: $81
	inc bc                                           ; $4753: $03
	rst $38                                          ; $4754: $ff
	rlca                                             ; $4755: $07
	ld a, [hl]                                       ; $4756: $7e
	ld [bc], a                                       ; $4757: $02
	nop                                              ; $4758: $00
	and b                                            ; $4759: $a0
	jr nz, @+$26                                     ; $475a: $20 $24

	ld a, [hl]                                       ; $475c: $7e
	nop                                              ; $475d: $00
	or l                                             ; $475e: $b5
	ld h, c                                          ; $475f: $61

jr_031_4760:
	nop                                              ; $4760: $00
	ld b, $02                                        ; $4761: $06 $02
	ld a, l                                          ; $4763: $7d
	ld bc, $0c20                                     ; $4764: $01 $20 $0c
	cp [hl]                                          ; $4767: $be
	ld b, $21                                        ; $4768: $06 $21
	ld [hl+], a                                      ; $476a: $22
	jr nz, jr_031_478e                               ; $476b: $20 $21

	cp [hl]                                          ; $476d: $be
	sub [hl]                                         ; $476e: $96
	inc c                                            ; $476f: $0c
	inc bc                                           ; $4770: $03
	cp [hl]                                          ; $4771: $be
	inc c                                            ; $4772: $0c
	ld [hl+], a                                      ; $4773: $22
	dec e                                            ; $4774: $1d
	inc e                                            ; $4775: $1c
	dec de                                           ; $4776: $1b
	cp [hl]                                          ; $4777: $be
	sub [hl]                                         ; $4778: $96
	ld b, $01                                        ; $4779: $06 $01
	add hl, de                                       ; $477b: $19
	dec b                                            ; $477c: $05
	nop                                              ; $477d: $00
	ld bc, $0119                                     ; $477e: $01 $19 $01
	dec de                                           ; $4781: $1b
	dec b                                            ; $4782: $05
	sub [hl]                                         ; $4783: $96
	ld b, $07                                        ; $4784: $06 $07
	add hl, de                                       ; $4786: $19
	ld b, $c1                                        ; $4787: $06 $c1
	add hl, de                                       ; $4789: $19
	ld b, $00                                        ; $478a: $06 $00
	inc c                                            ; $478c: $0c
	or l                                             ; $478d: $b5

jr_031_478e:
	ld sp, $1203                                     ; $478e: $31 $03 $12
	rlca                                             ; $4791: $07
	ld l, $12                                        ; $4792: $2e $12
	sub [hl]                                         ; $4794: $96
	dec b                                            ; $4795: $05
	rlca                                             ; $4796: $07
	ld l, $05                                        ; $4797: $2e $05
	nop                                              ; $4799: $00
	ld bc, $0c96                                     ; $479a: $01 $96 $0c
	inc b                                            ; $479d: $04
	ld sp, $310c                                     ; $479e: $31 $0c $31
	inc c                                            ; $47a1: $0c
	sub [hl]                                         ; $47a2: $96
	ld e, $07                                        ; $47a3: $1e $07
	cp l                                             ; $47a5: $bd
	ld [bc], a                                       ; $47a6: $02
	inc l                                            ; $47a7: $2c
	jr @+$08                                         ; $47a8: $18 $06

	ld a, l                                          ; $47aa: $7d
	nop                                              ; $47ab: $00
	sub [hl]                                         ; $47ac: $96
	nop                                              ; $47ad: $00
	nop                                              ; $47ae: $00
	add $90                                          ; $47af: $c6 $90
	ld a, l                                          ; $47b1: $7d
	ld bc, $0d7e                                     ; $47b2: $01 $7e $0d
	nop                                              ; $47b5: $00
	and b                                            ; $47b6: $a0
	jr z, jr_031_47e9                                ; $47b7: $28 $30

	ld a, [hl]                                       ; $47b9: $7e
	nop                                              ; $47ba: $00
	jp nz, $0c28                                     ; $47bb: $c2 $28 $0c

	push bc                                          ; $47be: $c5
	daa                                              ; $47bf: $27
	inc c                                            ; $47c0: $0c
	dec h                                            ; $47c1: $25
	inc c                                            ; $47c2: $0c
	ld [hl+], a                                      ; $47c3: $22
	ld b, $25                                        ; $47c4: $06 $25
	ld b, $c3                                        ; $47c6: $06 $c3
	dec h                                            ; $47c8: $25
	ld b, $c2                                        ; $47c9: $06 $c2
	dec h                                            ; $47cb: $25
	ld b, $c8                                        ; $47cc: $06 $c8
	sub d                                            ; $47ce: $92
	ld a, l                                          ; $47cf: $7d
	nop                                              ; $47d0: $00
	add hl, de                                       ; $47d1: $19
	ld b, $1d                                        ; $47d2: $06 $1d
	inc c                                            ; $47d4: $0c
	dec e                                            ; $47d5: $1d
	inc c                                            ; $47d6: $0c
	jp nz, $0c1d                                     ; $47d7: $c2 $1d $0c

	or l                                             ; $47da: $b5
	add c                                            ; $47db: $81
	inc bc                                           ; $47dc: $03
	rst $38                                          ; $47dd: $ff
	rlca                                             ; $47de: $07
	ld a, [hl]                                       ; $47df: $7e
	ld [bc], a                                       ; $47e0: $02
	nop                                              ; $47e1: $00
	and b                                            ; $47e2: $a0
	jr nz, @+$26                                     ; $47e3: $20 $24

	ld a, [hl]                                       ; $47e5: $7e
	nop                                              ; $47e6: $00
	add $7d                                          ; $47e7: $c6 $7d

jr_031_47e9:
	ld bc, $9690                                     ; $47e9: $01 $90 $96
	ld b, $02                                        ; $47ec: $06 $02
	jr nz, jr_031_47fc                               ; $47ee: $20 $0c

	cp [hl]                                          ; $47f0: $be
	ld b, $21                                        ; $47f1: $06 $21
	ld [hl+], a                                      ; $47f3: $22
	jr nz, jr_031_4817                               ; $47f4: $20 $21

	cp [hl]                                          ; $47f6: $be
	sub [hl]                                         ; $47f7: $96
	inc c                                            ; $47f8: $0c
	inc bc                                           ; $47f9: $03
	cp [hl]                                          ; $47fa: $be
	inc c                                            ; $47fb: $0c

jr_031_47fc:
	ld [hl+], a                                      ; $47fc: $22
	dec e                                            ; $47fd: $1d
	inc e                                            ; $47fe: $1c
	dec de                                           ; $47ff: $1b
	cp [hl]                                          ; $4800: $be
	sub [hl]                                         ; $4801: $96
	ld b, $01                                        ; $4802: $06 $01
	add hl, de                                       ; $4804: $19
	dec b                                            ; $4805: $05
	nop                                              ; $4806: $00
	ld bc, $0119                                     ; $4807: $01 $19 $01
	dec de                                           ; $480a: $1b
	dec b                                            ; $480b: $05
	add hl, de                                       ; $480c: $19
	ld b, $c1                                        ; $480d: $06 $c1
	add hl, de                                       ; $480f: $19
	ld b, $16                                        ; $4810: $06 $16
	ld b, $c2                                        ; $4812: $06 $c2
	ld d, $06                                        ; $4814: $16 $06
	or l                                             ; $4816: $b5

jr_031_4817:
	ld sp, $1203                                     ; $4817: $31 $03 $12
	rlca                                             ; $481a: $07
	ld a, l                                          ; $481b: $7d
	nop                                              ; $481c: $00
	ld sp, $9612                                     ; $481d: $31 $12 $96
	dec b                                            ; $4820: $05
	rlca                                             ; $4821: $07
	ld sp, $0005                                     ; $4822: $31 $05 $00
	ld bc, $0c96                                     ; $4825: $01 $96 $0c
	inc b                                            ; $4828: $04
	dec [hl]                                         ; $4829: $35
	inc c                                            ; $482a: $0c
	dec [hl]                                         ; $482b: $35
	inc c                                            ; $482c: $0c
	sub [hl]                                         ; $482d: $96
	jr jr_031_4837                                   ; $482e: $18 $07

	jr nc, jr_031_484a                               ; $4830: $30 $18

	ld a, l                                          ; $4832: $7d
	nop                                              ; $4833: $00
	sub [hl]                                         ; $4834: $96
	nop                                              ; $4835: $00
	nop                                              ; $4836: $00

jr_031_4837:
	cp $ff                                           ; $4837: $fe $ff
	ret nc                                           ; $4839: $d0

	ld a, b                                          ; $483a: $78
	cp $fb                                           ; $483b: $fe $fb
	or l                                             ; $483d: $b5
	jp $0600                                         ; $483e: $c3 $00 $06


	ld bc, $0622                                     ; $4841: $01 $22 $06
	ret z                                            ; $4844: $c8

	pop de                                           ; $4845: $d1
	ld d, $06                                        ; $4846: $16 $06
	ld d, $06                                        ; $4848: $16 $06

jr_031_484a:
	jp nc, $21cd                                     ; $484a: $d2 $cd $21

	ld b, $d1                                        ; $484d: $06 $d1
	ret                                              ; $484f: $c9


	dec d                                            ; $4850: $15
	ld b, $15                                        ; $4851: $06 $15
	ld b, $d3                                        ; $4853: $06 $d3
	jp z, $0620                                      ; $4855: $ca $20 $06

	pop de                                           ; $4858: $d1
	ret z                                            ; $4859: $c8

	inc d                                            ; $485a: $14
	ld b, $14                                        ; $485b: $06 $14
	ld b, $d2                                        ; $485d: $06 $d2
	rr a                                             ; $485f: $cb $1f
	ld b, $c9                                        ; $4861: $06 $c9
	pop de                                           ; $4863: $d1
	inc de                                           ; $4864: $13
	ld b, $13                                        ; $4865: $06 $13
	ld b, $d3                                        ; $4867: $06 $d3
	call z, $0620                                    ; $4869: $cc $20 $06
	jp z, $14d1                                      ; $486c: $ca $d1 $14

	ld b, $cd                                        ; $486f: $06 $cd
	jp nc, $0621                                     ; $4871: $d2 $21 $06

	call $15d1                                       ; $4874: $cd $d1 $15
	ld b, $fb                                        ; $4877: $06 $fb
	ld [bc], a                                       ; $4879: $02
	rst GetHLinHL                                          ; $487a: $cf
	db $d3                                           ; $487b: $d3
	sub b                                            ; $487c: $90
	ld [hl+], a                                      ; $487d: $22
	ld b, $ca                                        ; $487e: $06 $ca
	pop de                                           ; $4880: $d1
	ld d, $06                                        ; $4881: $16 $06
	ld d, $06                                        ; $4883: $16 $06
	jp nc, $21ce                                     ; $4885: $d2 $ce $21

	ld b, $d1                                        ; $4888: $06 $d1
	ret                                              ; $488a: $c9


	dec d                                            ; $488b: $15
	ld b, $15                                        ; $488c: $06 $15
	ld b, $d3                                        ; $488e: $06 $d3
	call $0620                                       ; $4890: $cd $20 $06
	pop de                                           ; $4893: $d1
	ret z                                            ; $4894: $c8

	inc d                                            ; $4895: $14
	ld b, $14                                        ; $4896: $06 $14
	ld b, $b5                                        ; $4898: $06 $b5
	ld [hl], c                                       ; $489a: $71
	inc bc                                           ; $489b: $03
	nop                                              ; $489c: $00
	nop                                              ; $489d: $00
	dec hl                                           ; $489e: $2b
	ld de, $0100                                     ; $489f: $11 $00 $01
	inc l                                            ; $48a2: $2c
	dec bc                                           ; $48a3: $0b
	nop                                              ; $48a4: $00
	ld bc, $0b2d                                     ; $48a5: $01 $2d $0b
	nop                                              ; $48a8: $00
	ld bc, $2ec6                                     ; $48a9: $01 $c6 $2e
	inc c                                            ; $48ac: $0c
	jp nz, $062e                                     ; $48ad: $c2 $2e $06

	or c                                             ; $48b0: $b1
	pop de                                           ; $48b1: $d1
	ld b, $01                                        ; $48b2: $06 $01
	ld hl, $ca06                                     ; $48b4: $21 $06 $ca
	pop de                                           ; $48b7: $d1
	dec d                                            ; $48b8: $15
	ld b, $15                                        ; $48b9: $06 $15
	ld b, $d3                                        ; $48bb: $06 $d3
	call $0620                                       ; $48bd: $cd $20 $06
	jp z, $14d1                                      ; $48c0: $ca $d1 $14

	ld b, $14                                        ; $48c3: $06 $14
	ld b, $d2                                        ; $48c5: $06 $d2
	call $061f                                       ; $48c7: $cd $1f $06
	jp z, $13d1                                      ; $48ca: $ca $d1 $13

	ld b, $13                                        ; $48cd: $06 $13
	ld b, $d3                                        ; $48cf: $06 $d3
	call $0620                                       ; $48d1: $cd $20 $06
	pop de                                           ; $48d4: $d1
	jp z, $0614                                      ; $48d5: $ca $14 $06

	jp nc, $21cd                                     ; $48d8: $d2 $cd $21

	ld b, $ca                                        ; $48db: $06 $ca
	pop de                                           ; $48dd: $d1
	dec d                                            ; $48de: $15
	ld b, $b5                                        ; $48df: $06 $b5
	di                                               ; $48e1: $f3
	nop                                              ; $48e2: $00
	ld b, $01                                        ; $48e3: $06 $01
	ld [hl+], a                                      ; $48e5: $22
	ld b, $ca                                        ; $48e6: $06 $ca
	pop de                                           ; $48e8: $d1
	ld d, $06                                        ; $48e9: $16 $06
	ld d, $06                                        ; $48eb: $16 $06
	jp nc, $21cd                                     ; $48ed: $d2 $cd $21

	ld b, $d1                                        ; $48f0: $06 $d1
	ret                                              ; $48f2: $c9


	dec d                                            ; $48f3: $15
	ld b, $15                                        ; $48f4: $06 $15
	ld b, $d3                                        ; $48f6: $06 $d3
	call z, $0620                                    ; $48f8: $cc $20 $06
	pop de                                           ; $48fb: $d1
	ret z                                            ; $48fc: $c8

	inc d                                            ; $48fd: $14
	ld b, $14                                        ; $48fe: $06 $14
	ld b, $d2                                        ; $4900: $06 $d2
	rr a                                             ; $4902: $cb $1f
	ld b, $c9                                        ; $4904: $06 $c9
	pop de                                           ; $4906: $d1
	inc de                                           ; $4907: $13
	ld b, $13                                        ; $4908: $06 $13
	ld b, $b5                                        ; $490a: $06 $b5
	ld [hl], c                                       ; $490c: $71
	inc bc                                           ; $490d: $03
	nop                                              ; $490e: $00
	nop                                              ; $490f: $00
	inc l                                            ; $4910: $2c
	inc c                                            ; $4911: $0c
	rst JumpTable                                          ; $4912: $c7
	dec l                                            ; $4913: $2d
	inc c                                            ; $4914: $0c
	ei                                               ; $4915: $fb
	rst JumpTable                                          ; $4916: $c7
	ld l, $0c                                        ; $4917: $2e $0c
	jp nz, $062e                                     ; $4919: $c2 $2e $06

	or l                                             ; $491c: $b5
	jp nc, $0600                                     ; $491d: $d2 $00 $06

	ld bc, $0621                                     ; $4920: $01 $21 $06
	pop de                                           ; $4923: $d1
	ret                                              ; $4924: $c9


	dec d                                            ; $4925: $15
	ld b, $15                                        ; $4926: $06 $15
	ld b, $d3                                        ; $4928: $06 $d3
	call z, $0620                                    ; $492a: $cc $20 $06
	pop de                                           ; $492d: $d1
	ret z                                            ; $492e: $c8

	inc d                                            ; $492f: $14
	ld b, $14                                        ; $4930: $06 $14
	ld b, $d2                                        ; $4932: $06 $d2
	rr a                                             ; $4934: $cb $1f
	ld b, $c9                                        ; $4936: $06 $c9
	pop de                                           ; $4938: $d1
	inc de                                           ; $4939: $13
	ld b, $13                                        ; $493a: $06 $13
	ld b, $b5                                        ; $493c: $06 $b5
	add c                                            ; $493e: $81
	inc bc                                           ; $493f: $03
	nop                                              ; $4940: $00
	nop                                              ; $4941: $00
	ld a, [hl]                                       ; $4942: $7e
	dec b                                            ; $4943: $05
	nop                                              ; $4944: $00
	xor c                                            ; $4945: $a9
	inc l                                            ; $4946: $2c
	inc c                                            ; $4947: $0c
	ret z                                            ; $4948: $c8

	ld a, [hl]                                       ; $4949: $7e
	nop                                              ; $494a: $00
	dec l                                            ; $494b: $2d
	inc c                                            ; $494c: $0c
	ei                                               ; $494d: $fb
	ld [bc], a                                       ; $494e: $02
	call z, $0a22                                    ; $494f: $cc $22 $0a
	jp nz, $0822                                     ; $4952: $c2 $22 $08

	call z, $0c21                                    ; $4955: $cc $21 $0c
	jp nz, $0621                                     ; $4958: $c2 $21 $06

	call z, $0c20                                    ; $495b: $cc $20 $0c
	jp nz, $0620                                     ; $495e: $c2 $20 $06

	call z, $7e93                                    ; $4961: $cc $93 $7e
	dec b                                            ; $4964: $05
	nop                                              ; $4965: $00
	and b                                            ; $4966: $a0
	rra                                              ; $4967: $1f
	ld [de], a                                       ; $4968: $12
	ld a, [hl]                                       ; $4969: $7e
	nop                                              ; $496a: $00
	jr nz, jr_031_4979                               ; $496b: $20 $0c

	ld hl, $cb0c                                     ; $496d: $21 $0c $cb
	sub b                                            ; $4970: $90
	ld a, [hl]                                       ; $4971: $7e
	dec c                                            ; $4972: $0d
	nop                                              ; $4973: $00
	and b                                            ; $4974: $a0
	jr z, jr_031_49a7                                ; $4975: $28 $30

	ld a, [hl]                                       ; $4977: $7e
	nop                                              ; $4978: $00

jr_031_4979:
	jp nz, $0c28                                     ; $4979: $c2 $28 $0c

	call z, $0c27                                    ; $497c: $cc $27 $0c
	dec h                                            ; $497f: $25
	inc c                                            ; $4980: $0c
	ld [hl+], a                                      ; $4981: $22
	ld b, $25                                        ; $4982: $06 $25
	ld b, $c3                                        ; $4984: $06 $c3
	dec h                                            ; $4986: $25
	ld b, $c2                                        ; $4987: $06 $c2
	dec h                                            ; $4989: $25
	ld b, $c1                                        ; $498a: $06 $c1
	dec h                                            ; $498c: $25
	ld b, $92                                        ; $498d: $06 $92
	jp z, $0616                                      ; $498f: $ca $16 $06

	add hl, de                                       ; $4992: $19
	inc c                                            ; $4993: $0c
	add hl, de                                       ; $4994: $19
	inc c                                            ; $4995: $0c
	jp nz, $0c19                                     ; $4996: $c2 $19 $0c

	or l                                             ; $4999: $b5
	sub c                                            ; $499a: $91
	inc bc                                           ; $499b: $03
	rst $38                                          ; $499c: $ff
	ld b, $7e                                        ; $499d: $06 $7e
	ld [bc], a                                       ; $499f: $02
	nop                                              ; $49a0: $00
	and b                                            ; $49a1: $a0
	inc hl                                           ; $49a2: $23
	inc h                                            ; $49a3: $24
	ld a, [hl]                                       ; $49a4: $7e
	nop                                              ; $49a5: $00
	or l                                             ; $49a6: $b5

jr_031_49a7:
	or c                                             ; $49a7: $b1
	nop                                              ; $49a8: $00
	ld b, $02                                        ; $49a9: $06 $02
	cp [hl]                                          ; $49ab: $be
	ld b, $20                                        ; $49ac: $06 $20
	ld hl, $2022                                     ; $49ae: $21 $22 $20
	ld hl, $96be                                     ; $49b1: $21 $be $96
	inc c                                            ; $49b4: $0c
	inc bc                                           ; $49b5: $03
	cp [hl]                                          ; $49b6: $be
	inc c                                            ; $49b7: $0c
	ld [hl+], a                                      ; $49b8: $22
	dec e                                            ; $49b9: $1d
	inc e                                            ; $49ba: $1c
	dec de                                           ; $49bb: $1b
	cp [hl]                                          ; $49bc: $be
	sub [hl]                                         ; $49bd: $96
	ld b, $01                                        ; $49be: $06 $01
	add hl, de                                       ; $49c0: $19
	dec b                                            ; $49c1: $05
	nop                                              ; $49c2: $00
	ld bc, $0119                                     ; $49c3: $01 $19 $01
	dec de                                           ; $49c6: $1b
	dec b                                            ; $49c7: $05
	sub [hl]                                         ; $49c8: $96
	ld b, $07                                        ; $49c9: $06 $07
	add hl, de                                       ; $49cb: $19
	ld b, $b1                                        ; $49cc: $06 $b1
	ld hl, $0000                                     ; $49ce: $21 $00 $00
	add hl, de                                       ; $49d1: $19
	ld b, $c1                                        ; $49d2: $06 $c1
	add hl, de                                       ; $49d4: $19
	ld b, $00                                        ; $49d5: $06 $00
	inc c                                            ; $49d7: $0c
	or l                                             ; $49d8: $b5
	pop bc                                           ; $49d9: $c1
	inc bc                                           ; $49da: $03
	ld [de], a                                       ; $49db: $12
	inc bc                                           ; $49dc: $03
	ld [hl+], a                                      ; $49dd: $22
	ld [de], a                                       ; $49de: $12
	sub [hl]                                         ; $49df: $96
	dec b                                            ; $49e0: $05
	ld b, $22                                        ; $49e1: $06 $22
	dec b                                            ; $49e3: $05
	nop                                              ; $49e4: $00
	ld bc, $0c96                                     ; $49e5: $01 $96 $0c
	ld [bc], a                                       ; $49e8: $02
	dec h                                            ; $49e9: $25
	inc c                                            ; $49ea: $0c
	dec h                                            ; $49eb: $25
	inc c                                            ; $49ec: $0c
	sub [hl]                                         ; $49ed: $96
	jr @+$08                                         ; $49ee: $18 $06

	jr nz, jr_031_4a0a                               ; $49f0: $20 $18

	sub [hl]                                         ; $49f2: $96
	nop                                              ; $49f3: $00
	nop                                              ; $49f4: $00
	res 2, b                                         ; $49f5: $cb $90
	ld a, [hl]                                       ; $49f7: $7e
	dec c                                            ; $49f8: $0d
	nop                                              ; $49f9: $00
	and b                                            ; $49fa: $a0
	jr z, jr_031_4a2d                                ; $49fb: $28 $30

	ld a, [hl]                                       ; $49fd: $7e
	nop                                              ; $49fe: $00
	jp nz, $0c28                                     ; $49ff: $c2 $28 $0c

	call z, $0c27                                    ; $4a02: $cc $27 $0c
	dec h                                            ; $4a05: $25
	inc c                                            ; $4a06: $0c
	ld [hl+], a                                      ; $4a07: $22
	ld b, $25                                        ; $4a08: $06 $25

jr_031_4a0a:
	ld b, $c3                                        ; $4a0a: $06 $c3
	dec h                                            ; $4a0c: $25
	ld b, $c2                                        ; $4a0d: $06 $c2
	dec h                                            ; $4a0f: $25
	ld b, $c1                                        ; $4a10: $06 $c1
	dec h                                            ; $4a12: $25
	ld b, $92                                        ; $4a13: $06 $92
	jp z, $0616                                      ; $4a15: $ca $16 $06

	add hl, de                                       ; $4a18: $19
	inc c                                            ; $4a19: $0c
	add hl, de                                       ; $4a1a: $19
	inc c                                            ; $4a1b: $0c
	jp nz, $0c19                                     ; $4a1c: $c2 $19 $0c

	or l                                             ; $4a1f: $b5
	sub c                                            ; $4a20: $91
	inc bc                                           ; $4a21: $03
	rst $38                                          ; $4a22: $ff
	ld b, $7e                                        ; $4a23: $06 $7e
	ld [bc], a                                       ; $4a25: $02
	nop                                              ; $4a26: $00
	and b                                            ; $4a27: $a0
	inc hl                                           ; $4a28: $23
	inc h                                            ; $4a29: $24
	ld a, [hl]                                       ; $4a2a: $7e
	nop                                              ; $4a2b: $00
	or l                                             ; $4a2c: $b5

jr_031_4a2d:
	or c                                             ; $4a2d: $b1
	nop                                              ; $4a2e: $00
	ld b, $02                                        ; $4a2f: $06 $02
	cp [hl]                                          ; $4a31: $be
	ld b, $20                                        ; $4a32: $06 $20
	ld hl, $2022                                     ; $4a34: $21 $22 $20
	ld hl, $96be                                     ; $4a37: $21 $be $96
	inc c                                            ; $4a3a: $0c
	inc bc                                           ; $4a3b: $03
	cp [hl]                                          ; $4a3c: $be
	inc c                                            ; $4a3d: $0c
	ld [hl+], a                                      ; $4a3e: $22
	dec e                                            ; $4a3f: $1d
	inc e                                            ; $4a40: $1c
	dec de                                           ; $4a41: $1b
	cp [hl]                                          ; $4a42: $be
	sub [hl]                                         ; $4a43: $96
	ld b, $01                                        ; $4a44: $06 $01
	add hl, de                                       ; $4a46: $19
	dec b                                            ; $4a47: $05
	nop                                              ; $4a48: $00
	ld bc, $0119                                     ; $4a49: $01 $19 $01
	dec de                                           ; $4a4c: $1b
	dec b                                            ; $4a4d: $05
	or c                                             ; $4a4e: $b1
	pop bc                                           ; $4a4f: $c1
	ld [de], a                                       ; $4a50: $12
	dec b                                            ; $4a51: $05
	cp l                                             ; $4a52: $bd
	ld [bc], a                                       ; $4a53: $02
	add hl, de                                       ; $4a54: $19
	ld b, $0c                                        ; $4a55: $06 $0c
	or c                                             ; $4a57: $b1
	and c                                            ; $4a58: $a1
	nop                                              ; $4a59: $00
	nop                                              ; $4a5a: $00
	ld d, $06                                        ; $4a5b: $16 $06
	jp nz, $0616                                     ; $4a5d: $c2 $16 $06

	or l                                             ; $4a60: $b5
	pop bc                                           ; $4a61: $c1

jr_031_4a62:
	inc bc                                           ; $4a62: $03
	ld [de], a                                       ; $4a63: $12
	inc bc                                           ; $4a64: $03
	ld [hl+], a                                      ; $4a65: $22
	ld [de], a                                       ; $4a66: $12
	sub [hl]                                         ; $4a67: $96
	dec b                                            ; $4a68: $05
	ld b, $22                                        ; $4a69: $06 $22
	dec b                                            ; $4a6b: $05
	nop                                              ; $4a6c: $00
	ld bc, $0c96                                     ; $4a6d: $01 $96 $0c
	ld [bc], a                                       ; $4a70: $02
	dec h                                            ; $4a71: $25
	inc c                                            ; $4a72: $0c
	dec h                                            ; $4a73: $25
	inc c                                            ; $4a74: $0c
	sub [hl]                                         ; $4a75: $96
	jr @+$08                                         ; $4a76: $18 $06

	jr nz, jr_031_4a92                               ; $4a78: $20 $18

	sub [hl]                                         ; $4a7a: $96
	nop                                              ; $4a7b: $00
	nop                                              ; $4a7c: $00
	cp $ff                                           ; $4a7d: $fe $ff
	ret nc                                           ; $4a7f: $d0

	ld a, b                                          ; $4a80: $78
	add l                                            ; $4a81: $85
	cp $fb                                           ; $4a82: $fe $fb
	jp nz, $050a                                     ; $4a84: $c2 $0a $05

	add $0a                                          ; $4a87: $c6 $0a
	ld bc, $0ac2                                     ; $4a89: $01 $c2 $0a
	ld b, $c6                                        ; $4a8c: $06 $c6
	ld a, [bc]                                       ; $4a8e: $0a
	ld b, $c2                                        ; $4a8f: $06 $c2
	ld a, [bc]                                       ; $4a91: $0a

jr_031_4a92:
	ld b, $c4                                        ; $4a92: $06 $c4
	ld a, [bc]                                       ; $4a94: $0a
	inc bc                                           ; $4a95: $03
	add $0a                                          ; $4a96: $c6 $0a
	inc bc                                           ; $4a98: $03
	nop                                              ; $4a99: $00
	ld [de], a                                       ; $4a9a: $12
	nop                                              ; $4a9b: $00
	jr nc, jr_031_4a9e                               ; $4a9c: $30 $00

jr_031_4a9e:
	jr jr_031_4a62                                   ; $4a9e: $18 $c2

	ld a, [bc]                                       ; $4aa0: $0a
	dec b                                            ; $4aa1: $05
	add $0a                                          ; $4aa2: $c6 $0a
	ld bc, $0ac2                                     ; $4aa4: $01 $c2 $0a
	ld b, $c6                                        ; $4aa7: $06 $c6
	ld a, [bc]                                       ; $4aa9: $0a
	ld b, $c2                                        ; $4aaa: $06 $c2
	ld a, [bc]                                       ; $4aac: $0a
	ld b, $c4                                        ; $4aad: $06 $c4
	ld a, [bc]                                       ; $4aaf: $0a
	inc bc                                           ; $4ab0: $03
	add $0a                                          ; $4ab1: $c6 $0a
	inc bc                                           ; $4ab3: $03
	nop                                              ; $4ab4: $00
	ld [de], a                                       ; $4ab5: $12
	jp nz, $0516                                     ; $4ab6: $c2 $16 $05

	add $16                                          ; $4ab9: $c6 $16
	ld bc, $16c2                                     ; $4abb: $01 $c2 $16
	dec b                                            ; $4abe: $05
	add $16                                          ; $4abf: $c6 $16
	ld bc, $16c2                                     ; $4ac1: $01 $c2 $16
	dec b                                            ; $4ac4: $05
	add $16                                          ; $4ac5: $c6 $16
	ld bc, $16c2                                     ; $4ac7: $01 $c2 $16
	dec b                                            ; $4aca: $05
	add $16                                          ; $4acb: $c6 $16
	ld bc, $03fb                                     ; $4acd: $01 $fb $03
	jp nz, $050a                                     ; $4ad0: $c2 $0a $05

	add $0a                                          ; $4ad3: $c6 $0a
	ld bc, $0ac2                                     ; $4ad5: $01 $c2 $0a
	ld b, $c6                                        ; $4ad8: $06 $c6
	ld a, [bc]                                       ; $4ada: $0a
	ld b, $c2                                        ; $4adb: $06 $c2
	ld a, [bc]                                       ; $4add: $0a
	ld b, $c4                                        ; $4ade: $06 $c4
	ld a, [bc]                                       ; $4ae0: $0a
	inc bc                                           ; $4ae1: $03
	add $0a                                          ; $4ae2: $c6 $0a
	inc bc                                           ; $4ae4: $03
	nop                                              ; $4ae5: $00
	ld b, d                                          ; $4ae6: $42
	ld a, a                                          ; $4ae7: $7f
	rla                                              ; $4ae8: $17
	jp nz, $0a22                                     ; $4ae9: $c2 $22 $0a

	add $22                                          ; $4aec: $c6 $22
	ld [$23c2], sp                                   ; $4aee: $08 $c2 $23
	inc c                                            ; $4af1: $0c
	add $23                                          ; $4af2: $c6 $23
	ld b, $c2                                        ; $4af4: $06 $c2
	inc h                                            ; $4af6: $24
	inc c                                            ; $4af7: $0c
	add $24                                          ; $4af8: $c6 $24
	ld b, $c2                                        ; $4afa: $06 $c2
	ld a, [hl]                                       ; $4afc: $7e
	dec b                                            ; $4afd: $05
	nop                                              ; $4afe: $00
	and c                                            ; $4aff: $a1
	dec h                                            ; $4b00: $25
	ld [de], a                                       ; $4b01: $12
	ld a, [hl]                                       ; $4b02: $7e
	nop                                              ; $4b03: $00
	ld h, $0c                                        ; $4b04: $26 $0c
	daa                                              ; $4b06: $27
	inc c                                            ; $4b07: $0c
	add l                                            ; $4b08: $85
	ei                                               ; $4b09: $fb
	jp nz, $110a                                     ; $4b0a: $c2 $0a $11

	add $0a                                          ; $4b0d: $c6 $0a
	ld bc, $0ac2                                     ; $4b0f: $01 $c2 $0a
	dec b                                            ; $4b12: $05
	add $0a                                          ; $4b13: $c6 $0a
	ld bc, $0dc2                                     ; $4b15: $01 $c2 $0d
	dec bc                                           ; $4b18: $0b
	add $0d                                          ; $4b19: $c6 $0d
	ld bc, $0dc2                                     ; $4b1b: $01 $c2 $0d
	inc c                                            ; $4b1e: $0c
	add $0d                                          ; $4b1f: $c6 $0d
	inc c                                            ; $4b21: $0c

jr_031_4b22:
	nop                                              ; $4b22: $00
	inc h                                            ; $4b23: $24
	ei                                               ; $4b24: $fb
	inc bc                                           ; $4b25: $03
	nop                                              ; $4b26: $00
	jr @-$3c                                         ; $4b27: $18 $c2

	ld a, [bc]                                       ; $4b29: $0a
	ld de, $0ac6                                     ; $4b2a: $11 $c6 $0a
	ld bc, $0ac2                                     ; $4b2d: $01 $c2 $0a
	dec b                                            ; $4b30: $05
	add $0a                                          ; $4b31: $c6 $0a
	ld bc, $0dc2                                     ; $4b33: $01 $c2 $0d
	dec bc                                           ; $4b36: $0b
	add $0d                                          ; $4b37: $c6 $0d
	ld bc, $0dc2                                     ; $4b39: $01 $c2 $0d
	inc c                                            ; $4b3c: $0c
	ld [$8518], sp                                   ; $4b3d: $08 $18 $85
	ei                                               ; $4b40: $fb
	jp nz, $110a                                     ; $4b41: $c2 $0a $11

	add $0a                                          ; $4b44: $c6 $0a
	ld bc, $0ac2                                     ; $4b46: $01 $c2 $0a
	dec b                                            ; $4b49: $05
	add $0a                                          ; $4b4a: $c6 $0a
	ld bc, $0dc2                                     ; $4b4c: $01 $c2 $0d
	dec bc                                           ; $4b4f: $0b
	add $0d                                          ; $4b50: $c6 $0d
	ld bc, $0dc2                                     ; $4b52: $01 $c2 $0d
	inc c                                            ; $4b55: $0c
	add $0d                                          ; $4b56: $c6 $0d
	inc c                                            ; $4b58: $0c
	nop                                              ; $4b59: $00
	inc h                                            ; $4b5a: $24
	ei                                               ; $4b5b: $fb
	inc bc                                           ; $4b5c: $03
	nop                                              ; $4b5d: $00
	jr jr_031_4b22                                   ; $4b5e: $18 $c2

	ld a, [bc]                                       ; $4b60: $0a
	ld de, $0ac6                                     ; $4b61: $11 $c6 $0a
	ld bc, $0ac2                                     ; $4b64: $01 $c2 $0a
	dec b                                            ; $4b67: $05
	add $0a                                          ; $4b68: $c6 $0a
	ld bc, $0dc2                                     ; $4b6a: $01 $c2 $0d
	dec bc                                           ; $4b6d: $0b
	add $0d                                          ; $4b6e: $c6 $0d
	ld bc, $0dc2                                     ; $4b70: $01 $c2 $0d
	inc c                                            ; $4b73: $0c
	ld [$fe18], sp                                   ; $4b74: $08 $18 $fe
	rst $38                                          ; $4b77: $ff
	ret nc                                           ; $4b78: $d0

	ld a, b                                          ; $4b79: $78
	cp $fb                                           ; $4b7a: $fe $fb
	cp [hl]                                          ; $4b7c: $be
	ld b, $0b                                        ; $4b7d: $06 $0b
	ld [de], a                                       ; $4b7f: $12
	dec bc                                           ; $4b80: $0b
	ld [de], a                                       ; $4b81: $12
	cp [hl]                                          ; $4b82: $be
	ld c, a                                          ; $4b83: $4f
	inc c                                            ; $4b84: $0c
	cp [hl]                                          ; $4b85: $be
	ld b, $09                                        ; $4b86: $06 $09
	ld [de], a                                       ; $4b88: $12
	add hl, bc                                       ; $4b89: $09
	dec c                                            ; $4b8a: $0d
	ld [de], a                                       ; $4b8b: $12
	ld [de], a                                       ; $4b8c: $12
	ld c, a                                          ; $4b8d: $4f
	add hl, bc                                       ; $4b8e: $09
	ld [de], a                                       ; $4b8f: $12
	cp [hl]                                          ; $4b90: $be
	ld c, $03                                        ; $4b91: $0e $03
	ld c, $03                                        ; $4b93: $0e $03
	cp [hl]                                          ; $4b95: $be
	ld b, $0b                                        ; $4b96: $06 $0b
	ld [de], a                                       ; $4b98: $12
	dec bc                                           ; $4b99: $0b
	ld [de], a                                       ; $4b9a: $12
	cp [hl]                                          ; $4b9b: $be
	ld c, a                                          ; $4b9c: $4f
	inc c                                            ; $4b9d: $0c
	cp [hl]                                          ; $4b9e: $be
	ld b, $09                                        ; $4b9f: $06 $09
	ld [de], a                                       ; $4ba1: $12
	add hl, bc                                       ; $4ba2: $09
	dec c                                            ; $4ba3: $0d
	add hl, bc                                       ; $4ba4: $09
	dec bc                                           ; $4ba5: $0b
	ld c, a                                          ; $4ba6: $4f
	add hl, bc                                       ; $4ba7: $09
	ld [de], a                                       ; $4ba8: $12
	dec c                                            ; $4ba9: $0d
	cp [hl]                                          ; $4baa: $be
	ei                                               ; $4bab: $fb
	inc bc                                           ; $4bac: $03
	cp [hl]                                          ; $4bad: $be
	ld b, $0b                                        ; $4bae: $06 $0b
	ld [de], a                                       ; $4bb0: $12
	dec bc                                           ; $4bb1: $0b
	ld [de], a                                       ; $4bb2: $12
	cp [hl]                                          ; $4bb3: $be
	ld c, a                                          ; $4bb4: $4f
	inc c                                            ; $4bb5: $0c
	cp [hl]                                          ; $4bb6: $be
	ld b, $09                                        ; $4bb7: $06 $09
	ld c, $0b                                        ; $4bb9: $0e $0b
	dec c                                            ; $4bbb: $0d
	dec c                                            ; $4bbc: $0d
	ld [de], a                                       ; $4bbd: $12
	dec bc                                           ; $4bbe: $0b
	dec c                                            ; $4bbf: $0d
	ld [de], a                                       ; $4bc0: $12
	dec c                                            ; $4bc1: $0d
	cp [hl]                                          ; $4bc2: $be
	inc d                                            ; $4bc3: $14
	inc c                                            ; $4bc4: $0c
	add hl, bc                                       ; $4bc5: $09
	ld b, $12                                        ; $4bc6: $06 $12
	ld b, $14                                        ; $4bc8: $06 $14
	inc c                                            ; $4bca: $0c
	ld d, $06                                        ; $4bcb: $16 $06
	ld d, $06                                        ; $4bcd: $16 $06
	inc d                                            ; $4bcf: $14
	inc c                                            ; $4bd0: $0c
	cp [hl]                                          ; $4bd1: $be
	ld b, $4f                                        ; $4bd2: $06 $4f
	ld c, a                                          ; $4bd4: $4f
	inc d                                            ; $4bd5: $14
	ld c, a                                          ; $4bd6: $4f
	ld c, a                                          ; $4bd7: $4f
	ld c, a                                          ; $4bd8: $4f
	cp [hl]                                          ; $4bd9: $be
	cp [hl]                                          ; $4bda: $be
	ld b, $0b                                        ; $4bdb: $06 $0b
	ld [de], a                                       ; $4bdd: $12
	add hl, bc                                       ; $4bde: $09
	ld [de], a                                       ; $4bdf: $12
	cp [hl]                                          ; $4be0: $be
	inc c                                            ; $4be1: $0c
	inc c                                            ; $4be2: $0c
	cp [hl]                                          ; $4be3: $be
	ld b, $09                                        ; $4be4: $06 $09
	inc c                                            ; $4be6: $0c
	add hl, bc                                       ; $4be7: $09
	ld [de], a                                       ; $4be8: $12
	add hl, bc                                       ; $4be9: $09
	ld [de], a                                       ; $4bea: $12
	inc c                                            ; $4beb: $0c
	add hl, bc                                       ; $4bec: $09
	ld [de], a                                       ; $4bed: $12
	cp [hl]                                          ; $4bee: $be
	ld c, $03                                        ; $4bef: $0e $03
	ld c, $03                                        ; $4bf1: $0e $03
	dec bc                                           ; $4bf3: $0b
	ld b, $12                                        ; $4bf4: $06 $12
	inc bc                                           ; $4bf6: $03
	ld [de], a                                       ; $4bf7: $12
	inc bc                                           ; $4bf8: $03
	add hl, bc                                       ; $4bf9: $09
	ld b, $12                                        ; $4bfa: $06 $12
	ld b, $0c                                        ; $4bfc: $06 $0c
	inc c                                            ; $4bfe: $0c
	cp [hl]                                          ; $4bff: $be
	ld b, $09                                        ; $4c00: $06 $09
	inc c                                            ; $4c02: $0c
	add hl, bc                                       ; $4c03: $09
	ld [de], a                                       ; $4c04: $12
	dec bc                                           ; $4c05: $0b
	ld [de], a                                       ; $4c06: $12
	inc c                                            ; $4c07: $0c
	add hl, bc                                       ; $4c08: $09
	ld [de], a                                       ; $4c09: $12
	cp [hl]                                          ; $4c0a: $be
	ld c, $03                                        ; $4c0b: $0e $03
	ld c, $03                                        ; $4c0d: $0e $03
	cp [hl]                                          ; $4c0f: $be
	ld b, $0b                                        ; $4c10: $06 $0b
	ld [de], a                                       ; $4c12: $12
	add hl, bc                                       ; $4c13: $09
	ld [de], a                                       ; $4c14: $12
	cp [hl]                                          ; $4c15: $be
	inc c                                            ; $4c16: $0c
	inc c                                            ; $4c17: $0c
	cp [hl]                                          ; $4c18: $be
	ld b, $09                                        ; $4c19: $06 $09
	inc c                                            ; $4c1b: $0c
	add hl, bc                                       ; $4c1c: $09
	ld [de], a                                       ; $4c1d: $12
	add hl, bc                                       ; $4c1e: $09
	ld [de], a                                       ; $4c1f: $12
	inc c                                            ; $4c20: $0c
	add hl, bc                                       ; $4c21: $09
	ld [de], a                                       ; $4c22: $12
	cp [hl]                                          ; $4c23: $be
	ld c, $03                                        ; $4c24: $0e $03
	ld c, $03                                        ; $4c26: $0e $03
	cp [hl]                                          ; $4c28: $be
	ld b, $09                                        ; $4c29: $06 $09
	ld [de], a                                       ; $4c2b: $12
	dec bc                                           ; $4c2c: $0b
	ld [de], a                                       ; $4c2d: $12
	cp [hl]                                          ; $4c2e: $be
	inc c                                            ; $4c2f: $0c
	inc c                                            ; $4c30: $0c
	cp [hl]                                          ; $4c31: $be
	ld b, $09                                        ; $4c32: $06 $09
	inc c                                            ; $4c34: $0c
	add hl, bc                                       ; $4c35: $09
	dec c                                            ; $4c36: $0d
	dec bc                                           ; $4c37: $0b
	ld [de], a                                       ; $4c38: $12
	inc c                                            ; $4c39: $0c
	add hl, bc                                       ; $4c3a: $09
	ld [de], a                                       ; $4c3b: $12
	dec bc                                           ; $4c3c: $0b
	cp [hl]                                          ; $4c3d: $be
	cp [hl]                                          ; $4c3e: $be
	ld b, $0b                                        ; $4c3f: $06 $0b
	ld [de], a                                       ; $4c41: $12
	add hl, bc                                       ; $4c42: $09
	ld [de], a                                       ; $4c43: $12
	cp [hl]                                          ; $4c44: $be
	inc c                                            ; $4c45: $0c
	inc c                                            ; $4c46: $0c
	cp [hl]                                          ; $4c47: $be
	ld b, $09                                        ; $4c48: $06 $09
	inc c                                            ; $4c4a: $0c
	add hl, bc                                       ; $4c4b: $09
	ld [de], a                                       ; $4c4c: $12
	add hl, bc                                       ; $4c4d: $09
	ld [de], a                                       ; $4c4e: $12
	inc c                                            ; $4c4f: $0c
	add hl, bc                                       ; $4c50: $09
	ld [de], a                                       ; $4c51: $12
	cp [hl]                                          ; $4c52: $be
	ld c, $03                                        ; $4c53: $0e $03
	ld c, $03                                        ; $4c55: $0e $03
	cp [hl]                                          ; $4c57: $be
	ld b, $12                                        ; $4c58: $06 $12
	dec c                                            ; $4c5a: $0d
	add hl, bc                                       ; $4c5b: $09
	ld [de], a                                       ; $4c5c: $12
	cp [hl]                                          ; $4c5d: $be
	inc c                                            ; $4c5e: $0c
	inc c                                            ; $4c5f: $0c
	cp [hl]                                          ; $4c60: $be

jr_031_4c61:
	ld b, $09                                        ; $4c61: $06 $09
	inc c                                            ; $4c63: $0c
	add hl, bc                                       ; $4c64: $09
	ld [de], a                                       ; $4c65: $12
	dec bc                                           ; $4c66: $0b
	ld [de], a                                       ; $4c67: $12
	inc c                                            ; $4c68: $0c
	add hl, bc                                       ; $4c69: $09
	ld [de], a                                       ; $4c6a: $12
	cp [hl]                                          ; $4c6b: $be
	ld c, $03                                        ; $4c6c: $0e $03
	ld c, $03                                        ; $4c6e: $0e $03

jr_031_4c70:
	cp [hl]                                          ; $4c70: $be
	ld b, $0b                                        ; $4c71: $06 $0b
	ld [de], a                                       ; $4c73: $12

jr_031_4c74:
	add hl, bc                                       ; $4c74: $09
	ld [de], a                                       ; $4c75: $12
	cp [hl]                                          ; $4c76: $be
	inc c                                            ; $4c77: $0c
	inc c                                            ; $4c78: $0c
	cp [hl]                                          ; $4c79: $be
	ld b, $09                                        ; $4c7a: $06 $09
	inc c                                            ; $4c7c: $0c
	add hl, bc                                       ; $4c7d: $09
	ld [de], a                                       ; $4c7e: $12
	add hl, bc                                       ; $4c7f: $09
	ld [de], a                                       ; $4c80: $12
	inc c                                            ; $4c81: $0c
	add hl, bc                                       ; $4c82: $09
	ld [de], a                                       ; $4c83: $12
	cp [hl]                                          ; $4c84: $be
	ld c, $03                                        ; $4c85: $0e $03
	ld c, $03                                        ; $4c87: $0e $03
	inc d                                            ; $4c89: $14
	ld [de], a                                       ; $4c8a: $12
	ld [de], a                                       ; $4c8b: $12

jr_031_4c8c:
	ld b, $0c                                        ; $4c8c: $06 $0c
	inc c                                            ; $4c8e: $0c
	cp [hl]                                          ; $4c8f: $be
	ld b, $09                                        ; $4c90: $06 $09
	dec c                                            ; $4c92: $0d
	add hl, bc                                       ; $4c93: $09
	dec c                                            ; $4c94: $0d
	dec c                                            ; $4c95: $0d
	cp [hl]                                          ; $4c96: $be
	ld d, $03                                        ; $4c97: $16 $03
	ld d, $03                                        ; $4c99: $16 $03
	cp [hl]                                          ; $4c9b: $be
	ld b, $0c                                        ; $4c9c: $06 $0c
	inc c                                            ; $4c9e: $0c
	ld c, a                                          ; $4c9f: $4f
	ld c, a                                          ; $4ca0: $4f

jr_031_4ca1:
	cp [hl]                                          ; $4ca1: $be
	cp $ff                                           ; $4ca2: $fe $ff
	ret nc                                           ; $4ca4: $d0

	add [hl]                                         ; $4ca5: $86
	cp $b5                                           ; $4ca6: $fe $b5
	ld h, c                                          ; $4ca8: $61
	ld [bc], a                                       ; $4ca9: $02
	jr z, @+$08                                      ; $4caa: $28 $06

	ld h, [hl]                                       ; $4cac: $66
	dec de                                           ; $4cad: $1b
	jr z, jr_031_4c61                                ; $4cae: $28 $b1

	ld [hl], c                                       ; $4cb0: $71
	ld [$1a02], sp                                   ; $4cb1: $08 $02 $1a
	ld [$3096], sp                                   ; $4cb4: $08 $96 $30
	ld b, $19                                        ; $4cb7: $06 $19

jr_031_4cb9:
	jr jr_031_4c70                                   ; $4cb9: $18 $b5

	or d                                             ; $4cbb: $b2
	ld bc, $0000                                     ; $4cbc: $01 $00 $00
	dec h                                            ; $4cbf: $25
	ld [$0829], sp                                   ; $4cc0: $08 $29 $08
	pop de                                           ; $4cc3: $d1
	ret z                                            ; $4cc4: $c8

	inc l                                            ; $4cc5: $2c
	ld [$b3b1], sp                                   ; $4cc6: $08 $b1 $b3
	jr nc, jr_031_4cd2                               ; $4cc9: $30 $07

	ld a, [hl]                                       ; $4ccb: $7e
	dec e                                            ; $4ccc: $1d
	inc d                                            ; $4ccd: $14

jr_031_4cce:
	xor c                                            ; $4cce: $a9
	jr nc, jr_031_4d01                               ; $4ccf: $30 $30

	ld a, [hl]                                       ; $4cd1: $7e

jr_031_4cd2:
	nop                                              ; $4cd2: $00
	and b                                            ; $4cd3: $a0
	nop                                              ; $4cd4: $00
	jr nc, jr_031_4c8c                               ; $4cd5: $30 $b5

	add c                                            ; $4cd7: $81
	ld [bc], a                                       ; $4cd8: $02
	jr z, jr_031_4ce1                                ; $4cd9: $28 $06

	dec de                                           ; $4cdb: $1b
	jr z, jr_031_4c74                                ; $4cdc: $28 $96

	ld [$1a02], sp                                   ; $4cde: $08 $02 $1a

jr_031_4ce1:
	ld [$3096], sp                                   ; $4ce1: $08 $96 $30
	ld b, $19                                        ; $4ce4: $06 $19

jr_031_4ce6:
	jr @-$49                                         ; $4ce6: $18 $b5

	or d                                             ; $4ce8: $b2
	ld bc, $0000                                     ; $4ce9: $01 $00 $00
	daa                                              ; $4cec: $27
	ld [$082a], sp                                   ; $4ced: $08 $2a $08
	pop de                                           ; $4cf0: $d1
	rst JumpTable                                          ; $4cf1: $c7
	ld l, $08                                        ; $4cf2: $2e $08
	or c                                             ; $4cf4: $b1
	or e                                             ; $4cf5: $b3
	jr nc, jr_031_4cff                               ; $4cf6: $30 $07

	ld a, [hl]                                       ; $4cf8: $7e
	dec e                                            ; $4cf9: $1d
	inc d                                            ; $4cfa: $14
	xor c                                            ; $4cfb: $a9
	ld sp, $7e30                                     ; $4cfc: $31 $30 $7e

jr_031_4cff:
	nop                                              ; $4cff: $00
	and b                                            ; $4d00: $a0

jr_031_4d01:
	nop                                              ; $4d01: $00
	jr nc, jr_031_4cb9                               ; $4d02: $30 $b5

	add c                                            ; $4d04: $81
	ld [bc], a                                       ; $4d05: $02
	jr z, jr_031_4d0e                                ; $4d06: $28 $06

	dec de                                           ; $4d08: $1b
	jr z, jr_031_4ca1                                ; $4d09: $28 $96

	ld [$1a02], sp                                   ; $4d0b: $08 $02 $1a

jr_031_4d0e:
	ld [$3096], sp                                   ; $4d0e: $08 $96 $30
	ld b, $19                                        ; $4d11: $06 $19
	jr @-$49                                         ; $4d13: $18 $b5

	or d                                             ; $4d15: $b2
	ld bc, $0000                                     ; $4d16: $01 $00 $00
	daa                                              ; $4d19: $27
	ld [$082a], sp                                   ; $4d1a: $08 $2a $08
	pop de                                           ; $4d1d: $d1
	ret z                                            ; $4d1e: $c8

	inc l                                            ; $4d1f: $2c
	ld [$b3b1], sp                                   ; $4d20: $08 $b1 $b3
	jr nc, jr_031_4d2c                               ; $4d23: $30 $07

	ld a, [hl]                                       ; $4d25: $7e
	dec e                                            ; $4d26: $1d
	inc d                                            ; $4d27: $14
	xor c                                            ; $4d28: $a9

jr_031_4d29:
	jr nc, jr_031_4d5b                               ; $4d29: $30 $30

	ld a, [hl]                                       ; $4d2b: $7e

jr_031_4d2c:
	nop                                              ; $4d2c: $00
	and b                                            ; $4d2d: $a0
	nop                                              ; $4d2e: $00
	jr nc, jr_031_4ce6                               ; $4d2f: $30 $b5

	add c                                            ; $4d31: $81
	ld [bc], a                                       ; $4d32: $02
	jr z, jr_031_4d3b                                ; $4d33: $28 $06

	add hl, de                                       ; $4d35: $19
	jr z, jr_031_4cce                                ; $4d36: $28 $96

	ld [$1802], sp                                   ; $4d38: $08 $02 $18

jr_031_4d3b:
	ld [$3096], sp                                   ; $4d3b: $08 $96 $30
	ld b, $16                                        ; $4d3e: $06 $16
	jr @-$49                                         ; $4d40: $18 $b5

	or d                                             ; $4d42: $b2
	ld bc, $0000                                     ; $4d43: $01 $00 $00
	dec h                                            ; $4d46: $25
	ld [$0829], sp                                   ; $4d47: $08 $29 $08
	pop de                                           ; $4d4a: $d1
	ret z                                            ; $4d4b: $c8

	inc l                                            ; $4d4c: $2c
	ld [$b3b1], sp                                   ; $4d4d: $08 $b1 $b3
	db $10                                           ; $4d50: $10
	dec b                                            ; $4d51: $05
	jr nc, jr_031_4d64                               ; $4d52: $30 $10

	nop                                              ; $4d54: $00
	ld [$a1b5], sp                                   ; $4d55: $08 $b5 $a1
	ld [bc], a                                       ; $4d58: $02
	jr jr_031_4d60                                   ; $4d59: $18 $05

jr_031_4d5b:
	dec e                                            ; $4d5b: $1d
	jr @+$1e                                         ; $4d5c: $18 $1c

	jr @+$80                                         ; $4d5e: $18 $7e

jr_031_4d60:
	dec e                                            ; $4d60: $1d
	nop                                              ; $4d61: $00
	xor c                                            ; $4d62: $a9
	dec de                                           ; $4d63: $1b

jr_031_4d64:
	jr jr_031_4de4                                   ; $4d64: $18 $7e

	nop                                              ; $4d66: $00
	and b                                            ; $4d67: $a0
	or l                                             ; $4d68: $b5
	ld h, c                                          ; $4d69: $61
	ld [bc], a                                       ; $4d6a: $02
	jr jr_031_4d73                                   ; $4d6b: $18 $06

	ld h, [hl]                                       ; $4d6d: $66

jr_031_4d6e:
	rra                                              ; $4d6e: $1f
	jr z, @-$68                                      ; $4d6f: $28 $96

	jr @+$06                                         ; $4d71: $18 $04

jr_031_4d73:
	ld e, $18                                        ; $4d73: $1e $18
	dec e                                            ; $4d75: $1d
	jr jr_031_4d29                                   ; $4d76: $18 $b1

	ld [hl], c                                       ; $4d78: $71
	jr jr_031_4d82                                   ; $4d79: $18 $07

	inc e                                            ; $4d7b: $1c
	inc b                                            ; $4d7c: $04
	jr nz, @+$04                                     ; $4d7d: $20 $02

	ld hl, $c702                                     ; $4d7f: $21 $02 $c7

jr_031_4d82:
	ld [hl+], a                                      ; $4d82: $22
	inc b                                            ; $4d83: $04

jr_031_4d84:
	nop                                              ; $4d84: $00
	inc c                                            ; $4d85: $0c
	ld [hl+], a                                      ; $4d86: $22
	ld [$1820], sp                                   ; $4d87: $08 $20 $18
	ld e, $18                                        ; $4d8a: $1e $18
	ld a, [hl]                                       ; $4d8c: $7e
	dec e                                            ; $4d8d: $1d
	nop                                              ; $4d8e: $00
	dec e                                            ; $4d8f: $1d

jr_031_4d90:
	jr jr_031_4e10                                   ; $4d90: $18 $7e

	nop                                              ; $4d92: $00
	and b                                            ; $4d93: $a0
	add $1e                                          ; $4d94: $c6 $1e
	ld [bc], a                                       ; $4d96: $02
	nop                                              ; $4d97: $00
	ld d, $d2                                        ; $4d98: $16 $d2
	ld a, [hl+]                                      ; $4d9a: $2a
	jr jr_031_4d6e                                   ; $4d9b: $18 $d1

	jr nz, @+$04                                     ; $4d9d: $20 $02

	nop                                              ; $4d9f: $00
	ld d, $d3                                        ; $4da0: $16 $d3
	inc l                                            ; $4da2: $2c
	jr @-$4d                                         ; $4da3: $18 $b1

	ld b, c                                          ; $4da5: $41
	jr jr_031_4dae                                   ; $4da6: $18 $06

	cp [hl]                                          ; $4da8: $be
	jr jr_031_4dab                                   ; $4da9: $18 $00

jr_031_4dab:
	ld a, [hl+]                                      ; $4dab: $2a
	ld a, [hl+]                                      ; $4dac: $2a
	add hl, hl                                       ; $4dad: $29

jr_031_4dae:
	cp [hl]                                          ; $4dae: $be

jr_031_4daf:
	daa                                              ; $4daf: $27
	jr jr_031_4de3                                   ; $4db0: $18 $31

	db $10                                           ; $4db2: $10
	ld l, $18                                        ; $4db3: $2e $18
	ld sp, $2e18                                     ; $4db5: $31 $18 $2e
	ld [$1831], sp                                   ; $4db8: $08 $31 $18

jr_031_4dbb:
	ld l, $18                                        ; $4dbb: $2e $18
	ld sp, $2e10                                     ; $4dbd: $31 $10 $2e
	jr @+$33                                         ; $4dc0: $18 $31

	ld [$c000], sp                                   ; $4dc2: $08 $00 $c0
	cp $ff                                           ; $4dc5: $fe $ff

jr_031_4dc7:
	ret nc                                           ; $4dc7: $d0

	add [hl]                                         ; $4dc8: $86
	cp $b5                                           ; $4dc9: $fe $b5
	ld [hl], c                                       ; $4dcb: $71
	ld [bc], a                                       ; $4dcc: $02

jr_031_4dcd:
	jr z, @+$08                                      ; $4dcd: $28 $06

	ld h, [hl]                                       ; $4dcf: $66
	inc h                                            ; $4dd0: $24
	jr z, jr_031_4d84                                ; $4dd1: $28 $b1

	sub c                                            ; $4dd3: $91

jr_031_4dd4:
	ld [$2302], sp                                   ; $4dd4: $08 $02 $23
	ld [$b1b1], sp                                   ; $4dd7: $08 $b1 $b1
	jr nc, jr_031_4de3                               ; $4dda: $30 $07

	ld [hl+], a                                      ; $4ddc: $22
	jr nc, jr_031_4d90                               ; $4ddd: $30 $b1

	ld sp, $0000                                     ; $4ddf: $31 $00 $00
	ld [hl+], a                                      ; $4de2: $22

jr_031_4de3:
	db $10                                           ; $4de3: $10

jr_031_4de4:
	sla b                                            ; $4de4: $cb $20
	ld [$1022], sp                                   ; $4de6: $08 $22 $10
	add $24                                          ; $4de9: $c6 $24
	ld [$29c6], sp                                   ; $4deb: $08 $c6 $29
	db $10                                           ; $4dee: $10
	add $24                                          ; $4def: $c6 $24
	ld [$22c8], sp                                   ; $4df1: $08 $c8 $22
	db $10                                           ; $4df4: $10
	jr nz, jr_031_4dff                               ; $4df5: $20 $08

	or c                                             ; $4df7: $b1

jr_031_4df8:
	ld [hl], c                                       ; $4df8: $71
	jr z, @+$08                                      ; $4df9: $28 $06

	inc h                                            ; $4dfb: $24
	jr z, jr_031_4daf                                ; $4dfc: $28 $b1

	sub c                                            ; $4dfe: $91

jr_031_4dff:
	ld [$2302], sp                                   ; $4dff: $08 $02 $23
	ld [$b1b1], sp                                   ; $4e02: $08 $b1 $b1
	jr nc, jr_031_4e0d                               ; $4e05: $30 $06

	ld [hl+], a                                      ; $4e07: $22
	jr nc, jr_031_4dbb                               ; $4e08: $30 $b1

	ld sp, $0000                                     ; $4e0a: $31 $00 $00

jr_031_4e0d:
	ld [hl+], a                                      ; $4e0d: $22
	jr nc, @-$3c                                     ; $4e0e: $30 $c2

jr_031_4e10:
	ld [hl+], a                                      ; $4e10: $22
	jr jr_031_4dd4                                   ; $4e11: $18 $c1

	ld [hl+], a                                      ; $4e13: $22
	jr jr_031_4dc7                                   ; $4e14: $18 $b1

	ld [hl], c                                       ; $4e16: $71
	jr z, @+$08                                      ; $4e17: $28 $06

	inc h                                            ; $4e19: $24
	jr z, jr_031_4dcd                                ; $4e1a: $28 $b1

	sub c                                            ; $4e1c: $91
	ld [$2302], sp                                   ; $4e1d: $08 $02 $23
	ld [$b1b1], sp                                   ; $4e20: $08 $b1 $b1
	jr nc, jr_031_4e2c                               ; $4e23: $30 $07

	ld [hl+], a                                      ; $4e25: $22
	jr nc, @-$4d                                     ; $4e26: $30 $b1

	ld b, c                                          ; $4e28: $41
	nop                                              ; $4e29: $00
	nop                                              ; $4e2a: $00
	ld [hl+], a                                      ; $4e2b: $22

jr_031_4e2c:
	db $10                                           ; $4e2c: $10
	sla b                                            ; $4e2d: $cb $20
	ld [$1022], sp                                   ; $4e2f: $08 $22 $10
	add $24                                          ; $4e32: $c6 $24
	ld [$29c6], sp                                   ; $4e34: $08 $c6 $29
	db $10                                           ; $4e37: $10
	add $24                                          ; $4e38: $c6 $24
	ld [$22c8], sp                                   ; $4e3a: $08 $c8 $22
	db $10                                           ; $4e3d: $10
	jr nz, jr_031_4e48                               ; $4e3e: $20 $08

	or c                                             ; $4e40: $b1
	sub c                                            ; $4e41: $91
	jr z, @+$08                                      ; $4e42: $28 $06

	ld [hl+], a                                      ; $4e44: $22
	jr z, jr_031_4df8                                ; $4e45: $28 $b1

	and c                                            ; $4e47: $a1

jr_031_4e48:
	ld [$2102], sp                                   ; $4e48: $08 $02 $21
	ld [$c1b1], sp                                   ; $4e4b: $08 $b1 $c1
	jr nc, @+$09                                     ; $4e4e: $30 $07

	jr nz, jr_031_4e82                               ; $4e50: $20 $30

	ret                                              ; $4e52: $c9


jr_031_4e53:
	nop                                              ; $4e53: $00
	jr @-$68                                         ; $4e54: $18 $96

	jr jr_031_4e5d                                   ; $4e56: $18 $05

	jr nz, jr_031_4e72                               ; $4e58: $20 $18

	rra                                              ; $4e5a: $1f
	jr jr_031_4edb                                   ; $4e5b: $18 $7e

jr_031_4e5d:
	dec e                                            ; $4e5d: $1d
	nop                                              ; $4e5e: $00
	xor c                                            ; $4e5f: $a9
	ld e, $18                                        ; $4e60: $1e $18
	ld a, [hl]                                       ; $4e62: $7e
	nop                                              ; $4e63: $00
	and b                                            ; $4e64: $a0
	or l                                             ; $4e65: $b5
	add c                                            ; $4e66: $81
	ld [bc], a                                       ; $4e67: $02
	jr z, jr_031_4e6f                                ; $4e68: $28 $05

	ld h, [hl]                                       ; $4e6a: $66
	inc hl                                           ; $4e6b: $23
	jr z, @-$4d                                      ; $4e6c: $28 $b1

	sub c                                            ; $4e6e: $91

jr_031_4e6f:
	jr @+$06                                         ; $4e6f: $18 $04

	ld [hl+], a                                      ; $4e71: $22

jr_031_4e72:
	jr jr_031_4e95                                   ; $4e72: $18 $21

	jr @-$68                                         ; $4e74: $18 $96

	ld [$2203], sp                                   ; $4e76: $08 $03 $22
	ld [$61b1], sp                                   ; $4e79: $08 $b1 $61
	jr jr_031_4e83                                   ; $4e7c: $18 $05

	add hl, hl                                       ; $4e7e: $29
	inc b                                            ; $4e7f: $04
	nop                                              ; $4e80: $00
	inc c                                            ; $4e81: $0c

jr_031_4e82:
	add hl, hl                                       ; $4e82: $29

jr_031_4e83:
	ld [$26c7], sp                                   ; $4e83: $08 $c7 $26
	jr @-$37                                         ; $4e86: $18 $c7

	inc hl                                           ; $4e88: $23
	jr jr_031_4e53                                   ; $4e89: $18 $c8

	ld [hl+], a                                      ; $4e8b: $22

jr_031_4e8c:
	jr @-$4d                                         ; $4e8c: $18 $b1

	ld h, c                                          ; $4e8e: $61
	jr jr_031_4e97                                   ; $4e8f: $18 $06

	daa                                              ; $4e91: $27

jr_031_4e92:
	jr jr_031_4f12                                   ; $4e92: $18 $7e

	dec e                                            ; $4e94: $1d

jr_031_4e95:
	nop                                              ; $4e95: $00
	xor c                                            ; $4e96: $a9

jr_031_4e97:
	ret z                                            ; $4e97: $c8

	ld [hl+], a                                      ; $4e98: $22
	jr jr_031_4f19                                   ; $4e99: $18 $7e

	nop                                              ; $4e9b: $00
	xor c                                            ; $4e9c: $a9
	add $29                                          ; $4e9d: $c6 $29
	jr @+$80                                         ; $4e9f: $18 $7e

	dec e                                            ; $4ea1: $1d
	nop                                              ; $4ea2: $00
	xor c                                            ; $4ea3: $a9
	ret z                                            ; $4ea4: $c8

	ld [hl+], a                                      ; $4ea5: $22
	jr jr_031_4f26                                   ; $4ea6: $18 $7e

	nop                                              ; $4ea8: $00
	xor c                                            ; $4ea9: $a9
	ld a, [hl+]                                      ; $4eaa: $2a
	jr jr_031_4ecf                                   ; $4eab: $18 $22

	jr jr_031_4ed1                                   ; $4ead: $18 $22

	jr jr_031_4f2f                                   ; $4eaf: $18 $7e

	dec e                                            ; $4eb1: $1d
	nop                                              ; $4eb2: $00
	xor c                                            ; $4eb3: $a9
	ld hl, $7e18                                     ; $4eb4: $21 $18 $7e
	nop                                              ; $4eb7: $00
	xor c                                            ; $4eb8: $a9
	or c                                             ; $4eb9: $b1
	pop bc                                           ; $4eba: $c1
	jr z, @+$06                                      ; $4ebb: $28 $04

jr_031_4ebd:
	jr nz, jr_031_4ee7                               ; $4ebd: $20 $28

	sub [hl]                                         ; $4ebf: $96
	jr @+$05                                         ; $4ec0: $18 $03

	jr nz, jr_031_4edc                               ; $4ec2: $20 $18

	jr nz, jr_031_4ede                               ; $4ec4: $20 $18

	or c                                             ; $4ec6: $b1
	ld d, c                                          ; $4ec7: $51
	ld [$2403], sp                                   ; $4ec8: $08 $03 $24
	inc b                                            ; $4ecb: $04
	jp nz, $0227                                     ; $4ecc: $c2 $27 $02

jr_031_4ecf:
	jr z, jr_031_4ed3                                ; $4ecf: $28 $02

jr_031_4ed1:
	or c                                             ; $4ed1: $b1
	add c                                            ; $4ed2: $81

jr_031_4ed3:
	jr z, jr_031_4edc                                ; $4ed3: $28 $07

	add hl, hl                                       ; $4ed5: $29
	jr nc, @-$38                                     ; $4ed6: $30 $c6

	inc h                                            ; $4ed8: $24
	jr nc, jr_031_4e8c                               ; $4ed9: $30 $b1

jr_031_4edb:
	ld h, c                                          ; $4edb: $61

jr_031_4edc:
	jr jr_031_4ee2                                   ; $4edc: $18 $04

jr_031_4ede:
	dec h                                            ; $4ede: $25
	jr jr_031_4e92                                   ; $4edf: $18 $b1

	add c                                            ; $4ee1: $81

jr_031_4ee2:
	db $10                                           ; $4ee2: $10
	inc b                                            ; $4ee3: $04
	jr nz, jr_031_4ef6                               ; $4ee4: $20 $10

	ld [hl+], a                                      ; $4ee6: $22

jr_031_4ee7:
	ld [$1000], sp                                   ; $4ee7: $08 $00 $10
	push bc                                          ; $4eea: $c5
	inc h                                            ; $4eeb: $24
	ld [$00c7], sp                                   ; $4eec: $08 $c7 $00
	db $10                                           ; $4eef: $10
	jr nz, jr_031_4efa                               ; $4ef0: $20 $08

	sub [hl]                                         ; $4ef2: $96
	jr jr_031_4ef9                                   ; $4ef3: $18 $04

	dec h                                            ; $4ef5: $25

jr_031_4ef6:
	jr jr_031_4ebd                                   ; $4ef6: $18 $c5

	inc h                                            ; $4ef8: $24

jr_031_4ef9:
	db $10                                           ; $4ef9: $10

jr_031_4efa:
	rst JumpTable                                          ; $4efa: $c7
	nop                                              ; $4efb: $00
	ld [$3096], sp                                   ; $4efc: $08 $96 $30
	ld b, $7e                                        ; $4eff: $06 $7e
	dec e                                            ; $4f01: $1d
	inc d                                            ; $4f02: $14
	dec h                                            ; $4f03: $25
	jr nc, jr_031_4f84                               ; $4f04: $30 $7e

	nop                                              ; $4f06: $00
	and b                                            ; $4f07: $a0
	cp $ff                                           ; $4f08: $fe $ff
	ret nc                                           ; $4f0a: $d0

	add [hl]                                         ; $4f0b: $86
	cp $c2                                           ; $4f0c: $fe $c2
	pop de                                           ; $4f0e: $d1
	ld a, a                                          ; $4f0f: $7f
	inc e                                            ; $4f10: $1c
	ld h, [hl]                                       ; $4f11: $66

jr_031_4f12:
	ei                                               ; $4f12: $fb
	dec c                                            ; $4f13: $0d
	jr jr_031_4f2a                                   ; $4f14: $18 $14

	inc b                                            ; $4f16: $04
	nop                                              ; $4f17: $00
	inc c                                            ; $4f18: $0c

jr_031_4f19:
	inc d                                            ; $4f19: $14
	inc b                                            ; $4f1a: $04
	nop                                              ; $4f1b: $00
	inc b                                            ; $4f1c: $04
	dec c                                            ; $4f1d: $0d
	jr jr_031_4f34                                   ; $4f1e: $18 $14

	inc b                                            ; $4f20: $04
	nop                                              ; $4f21: $00
	inc c                                            ; $4f22: $0c
	inc d                                            ; $4f23: $14
	inc b                                            ; $4f24: $04
	nop                                              ; $4f25: $00

jr_031_4f26:
	inc b                                            ; $4f26: $04
	ei                                               ; $4f27: $fb
	ld [bc], a                                       ; $4f28: $02
	ei                                               ; $4f29: $fb

jr_031_4f2a:
	rrca                                             ; $4f2a: $0f
	jr @+$18                                         ; $4f2b: $18 $16

	inc b                                            ; $4f2d: $04
	nop                                              ; $4f2e: $00

jr_031_4f2f:
	inc c                                            ; $4f2f: $0c
	ld d, $04                                        ; $4f30: $16 $04
	nop                                              ; $4f32: $00
	inc b                                            ; $4f33: $04

jr_031_4f34:
	rrca                                             ; $4f34: $0f
	jr @+$18                                         ; $4f35: $18 $16

	inc b                                            ; $4f37: $04
	nop                                              ; $4f38: $00
	inc c                                            ; $4f39: $0c
	ld d, $04                                        ; $4f3a: $16 $04
	nop                                              ; $4f3c: $00
	inc b                                            ; $4f3d: $04
	ei                                               ; $4f3e: $fb
	ld [bc], a                                       ; $4f3f: $02
	ei                                               ; $4f40: $fb
	rrca                                             ; $4f41: $0f
	jr jr_031_4f58                                   ; $4f42: $18 $14

	inc b                                            ; $4f44: $04
	nop                                              ; $4f45: $00
	inc c                                            ; $4f46: $0c
	inc d                                            ; $4f47: $14
	inc b                                            ; $4f48: $04
	nop                                              ; $4f49: $00
	inc b                                            ; $4f4a: $04
	rrca                                             ; $4f4b: $0f
	jr jr_031_4f62                                   ; $4f4c: $18 $14

	inc b                                            ; $4f4e: $04
	nop                                              ; $4f4f: $00
	inc c                                            ; $4f50: $0c
	inc d                                            ; $4f51: $14
	inc b                                            ; $4f52: $04
	nop                                              ; $4f53: $00
	inc b                                            ; $4f54: $04
	ei                                               ; $4f55: $fb
	ld [bc], a                                       ; $4f56: $02
	dec c                                            ; $4f57: $0d

jr_031_4f58:
	jr jr_031_4f6e                                   ; $4f58: $18 $14

	inc b                                            ; $4f5a: $04
	nop                                              ; $4f5b: $00
	inc c                                            ; $4f5c: $0c
	inc d                                            ; $4f5d: $14
	inc b                                            ; $4f5e: $04
	nop                                              ; $4f5f: $00
	inc b                                            ; $4f60: $04
	dec c                                            ; $4f61: $0d

jr_031_4f62:
	jr @+$16                                         ; $4f62: $18 $14

	inc b                                            ; $4f64: $04
	nop                                              ; $4f65: $00
	inc c                                            ; $4f66: $0c
	inc d                                            ; $4f67: $14
	inc b                                            ; $4f68: $04
	nop                                              ; $4f69: $00
	inc b                                            ; $4f6a: $04
	dec c                                            ; $4f6b: $0d
	stop                                             ; $4f6c: $10 $00

jr_031_4f6e:
	ld [$180d], sp                                   ; $4f6e: $08 $0d $18
	inc c                                            ; $4f71: $0c
	jr jr_031_4ff2                                   ; $4f72: $18 $7e

	dec e                                            ; $4f74: $1d
	nop                                              ; $4f75: $00
	dec bc                                           ; $4f76: $0b
	jr @+$80                                         ; $4f77: $18 $7e

	nop                                              ; $4f79: $00
	and b                                            ; $4f7a: $a0
	jp nz, Jump_031_7fd1                             ; $4f7b: $c2 $d1 $7f

	inc e                                            ; $4f7e: $1c
	ld h, [hl]                                       ; $4f7f: $66
	ei                                               ; $4f80: $fb
	ld a, [bc]                                       ; $4f81: $0a
	jr jr_031_4f95                                   ; $4f82: $18 $11

jr_031_4f84:
	inc b                                            ; $4f84: $04
	nop                                              ; $4f85: $00
	inc c                                            ; $4f86: $0c
	ld de, $0004                                     ; $4f87: $11 $04 $00
	inc b                                            ; $4f8a: $04
	ld a, [bc]                                       ; $4f8b: $0a
	jr jr_031_4f9f                                   ; $4f8c: $18 $11

	inc b                                            ; $4f8e: $04
	nop                                              ; $4f8f: $00
	inc c                                            ; $4f90: $0c
	ld de, $0004                                     ; $4f91: $11 $04 $00
	inc b                                            ; $4f94: $04

jr_031_4f95:
	ei                                               ; $4f95: $fb
	ld [bc], a                                       ; $4f96: $02
	rrca                                             ; $4f97: $0f
	ld [bc], a                                       ; $4f98: $02
	nop                                              ; $4f99: $00
	ld d, $1b                                        ; $4f9a: $16 $1b
	jr jr_031_4fac                                   ; $4f9c: $18 $0e

	ld [bc], a                                       ; $4f9e: $02

jr_031_4f9f:
	nop                                              ; $4f9f: $00
	ld d, $1a                                        ; $4fa0: $16 $1a
	jr @+$0f                                         ; $4fa2: $18 $0d

	ld [$1000], sp                                   ; $4fa4: $08 $00 $10
	ld a, [bc]                                       ; $4fa7: $0a
	ld [$1000], sp                                   ; $4fa8: $08 $00 $10
	ld a, [bc]                                       ; $4fab: $0a

jr_031_4fac:
	ld [$1000], sp                                   ; $4fac: $08 $00 $10
	add hl, bc                                       ; $4faf: $09
	jr @-$03                                         ; $4fb0: $18 $fb

	ld [$0f18], sp                                   ; $4fb2: $08 $18 $0f
	inc b                                            ; $4fb5: $04
	nop                                              ; $4fb6: $00
	inc c                                            ; $4fb7: $0c
	rrca                                             ; $4fb8: $0f
	inc b                                            ; $4fb9: $04
	nop                                              ; $4fba: $00
	inc b                                            ; $4fbb: $04
	ld [$0f18], sp                                   ; $4fbc: $08 $18 $0f
	inc b                                            ; $4fbf: $04
	nop                                              ; $4fc0: $00
	inc c                                            ; $4fc1: $0c
	rrca                                             ; $4fc2: $0f
	inc b                                            ; $4fc3: $04
	nop                                              ; $4fc4: $00
	inc b                                            ; $4fc5: $04
	ei                                               ; $4fc6: $fb
	ld [bc], a                                       ; $4fc7: $02
	dec c                                            ; $4fc8: $0d
	ld [$1000], sp                                   ; $4fc9: $08 $00 $10
	inc c                                            ; $4fcc: $0c
	ld [$0800], sp                                   ; $4fcd: $08 $00 $08
	dec c                                            ; $4fd0: $0d
	ld [$1000], sp                                   ; $4fd1: $08 $00 $10
	rrca                                             ; $4fd4: $0f
	ld [$1000], sp                                   ; $4fd5: $08 $00 $10
	inc c                                            ; $4fd8: $0c
	ld [$080d], sp                                   ; $4fd9: $08 $0d $08
	nop                                              ; $4fdc: $00
	db $10                                           ; $4fdd: $10
	inc c                                            ; $4fde: $0c
	ld [$1000], sp                                   ; $4fdf: $08 $00 $10
	dec c                                            ; $4fe2: $0d
	jr jr_031_4fed                                   ; $4fe3: $18 $08

jr_031_4fe5:
	jr jr_031_4fe5                                   ; $4fe5: $18 $fe

	rst $38                                          ; $4fe7: $ff
	ret nc                                           ; $4fe8: $d0

	add [hl]                                         ; $4fe9: $86
	cp $fb                                           ; $4fea: $fe $fb
	db $fd                                           ; $4fec: $fd

jr_031_4fed:
	jr c, jr_031_503f                                ; $4fed: $38 $50

	ei                                               ; $4fef: $fb
	rlca                                             ; $4ff0: $07
	dec e                                            ; $4ff1: $1d

jr_031_4ff2:
	jr jr_031_5011                                   ; $4ff2: $18 $1d

	jr @+$1f                                         ; $4ff4: $18 $1d

	jr @+$1f                                         ; $4ff6: $18 $1d

	ld [$081d], sp                                   ; $4ff8: $08 $1d $08
	dec e                                            ; $4ffb: $1d
	ld [$fdfc], sp                                   ; $4ffc: $08 $fc $fd
	jr c, jr_031_5051                                ; $4fff: $38 $50

	db $fc                                           ; $5001: $fc
	ld [bc], a                                       ; $5002: $02
	cp [hl]                                          ; $5003: $be
	jr jr_031_5023                                   ; $5004: $18 $1d

	ld e, $1d                                        ; $5006: $1e $1d
	ld e, $be                                        ; $5008: $1e $be
	rra                                              ; $500a: $1f
	jr jr_031_502d                                   ; $500b: $18 $20

	jr jr_031_502f                                   ; $500d: $18 $20

	jr jr_031_5031                                   ; $500f: $18 $20

jr_031_5011:
	ld [$0820], sp                                   ; $5011: $08 $20 $08
	jr nz, jr_031_501e                               ; $5014: $20 $08

	db $fd                                           ; $5016: $fd
	jr c, jr_031_5069                                ; $5017: $38 $50

	db $fd                                           ; $5019: $fd
	jr c, jr_031_506c                                ; $501a: $38 $50

	ld e, $18                                        ; $501c: $1e $18

jr_031_501e:
	jr nz, @+$12                                     ; $501e: $20 $10

	jr nz, jr_031_502a                               ; $5020: $20 $08

	nop                                              ; $5022: $00

jr_031_5023:
	db $10                                           ; $5023: $10
	jr nz, @+$0a                                     ; $5024: $20 $08

	nop                                              ; $5026: $00
	db $10                                           ; $5027: $10
	jr nz, @+$0a                                     ; $5028: $20 $08

jr_031_502a:
	jr nz, jr_031_5044                               ; $502a: $20 $18

	dec e                                            ; $502c: $1d

jr_031_502d:
	jr jr_031_504f                                   ; $502d: $18 $20

jr_031_502f:
	jr jr_031_5051                                   ; $502f: $18 $20

jr_031_5031:
	ld [$0820], sp                                   ; $5031: $08 $20 $08
	jr nz, jr_031_503e                               ; $5034: $20 $08

	cp $ff                                           ; $5036: $fe $ff
	rra                                              ; $5038: $1f
	jr jr_031_505b                                   ; $5039: $18 $20

	db $10                                           ; $503b: $10
	jr nz, jr_031_5046                               ; $503c: $20 $08

jr_031_503e:
	rra                                              ; $503e: $1f

jr_031_503f:
	jr jr_031_5061                                   ; $503f: $18 $20

	db $10                                           ; $5041: $10
	jr nz, @+$0a                                     ; $5042: $20 $08

jr_031_5044:
	db $fd                                           ; $5044: $fd
	or h                                             ; $5045: $b4

jr_031_5046:
	ld a, b                                          ; $5046: $78
	pop af                                           ; $5047: $f1
	nop                                              ; $5048: $00
	ld h, d                                          ; $5049: $62
	nop                                              ; $504a: $00

jr_031_504b:
	jr jr_031_504b                                   ; $504b: $18 $fe

	sub b                                            ; $504d: $90
	ret                                              ; $504e: $c9


jr_031_504f:
	ld [hl+], a                                      ; $504f: $22
	inc c                                            ; $5050: $0c

jr_031_5051:
	db $fd                                           ; $5051: $fd
	push hl                                          ; $5052: $e5
	ld d, c                                          ; $5053: $51
	rst JumpTable                                          ; $5054: $c7
	dec h                                            ; $5055: $25
	inc c                                            ; $5056: $0c
	jp nz, $0625                                     ; $5057: $c2 $25 $06

	ret                                              ; $505a: $c9


jr_031_505b:
	ld [hl+], a                                      ; $505b: $22
	inc bc                                           ; $505c: $03
	pop bc                                           ; $505d: $c1
	ld [hl+], a                                      ; $505e: $22
	inc bc                                           ; $505f: $03
	ret                                              ; $5060: $c9


jr_031_5061:
	ld [hl+], a                                      ; $5061: $22
	ld [$22c1], sp                                   ; $5062: $08 $c1 $22
	inc b                                            ; $5065: $04
	rst JumpTable                                          ; $5066: $c7
	ld e, $08                                        ; $5067: $1e $08

jr_031_5069:
	pop bc                                           ; $5069: $c1
	ld e, $04                                        ; $506a: $1e $04

jr_031_506c:
	rst JumpTable                                          ; $506c: $c7
	dec e                                            ; $506d: $1d
	ld [$1dc1], sp                                   ; $506e: $08 $c1 $1d
	inc b                                            ; $5071: $04
	ret                                              ; $5072: $c9


	ld [hl+], a                                      ; $5073: $22
	inc c                                            ; $5074: $0c
	pop bc                                           ; $5075: $c1
	ld [hl+], a                                      ; $5076: $22
	ld b, $c9                                        ; $5077: $06 $c9
	inc h                                            ; $5079: $24
	add hl, bc                                       ; $507a: $09
	pop bc                                           ; $507b: $c1
	inc h                                            ; $507c: $24
	add hl, bc                                       ; $507d: $09
	ret                                              ; $507e: $c9


	ld [hl+], a                                      ; $507f: $22
	inc c                                            ; $5080: $0c
	db $fd                                           ; $5081: $fd
	push hl                                          ; $5082: $e5
	ld d, c                                          ; $5083: $51
	sub d                                            ; $5084: $92
	rst JumpTable                                          ; $5085: $c7
	dec h                                            ; $5086: $25
	inc c                                            ; $5087: $0c
	jp nz, $0c25                                     ; $5088: $c2 $25 $0c

	sla h                                            ; $508b: $cb $24
	ld b, $c2                                        ; $508d: $06 $c2
	inc h                                            ; $508f: $24
	ld b, $fb                                        ; $5090: $06 $fb
	sla l                                            ; $5092: $cb $25
	ld b, $c2                                        ; $5094: $06 $c2
	dec h                                            ; $5096: $25
	ld b, $cb                                        ; $5097: $06 $cb
	inc h                                            ; $5099: $24
	ld b, $c2                                        ; $509a: $06 $c2
	inc h                                            ; $509c: $24
	ld b, $fb                                        ; $509d: $06 $fb
	ld [bc], a                                       ; $509f: $02
	sla b                                            ; $50a0: $cb $20
	ld b, $c2                                        ; $50a2: $06 $c2
	jr nz, jr_031_50ac                               ; $50a4: $20 $06

	sub b                                            ; $50a6: $90
	ret                                              ; $50a7: $c9


	ld [hl+], a                                      ; $50a8: $22
	inc c                                            ; $50a9: $0c
	db $fd                                           ; $50aa: $fd
	push hl                                          ; $50ab: $e5

jr_031_50ac:
	ld d, c                                          ; $50ac: $51
	rst JumpTable                                          ; $50ad: $c7
	dec h                                            ; $50ae: $25
	inc c                                            ; $50af: $0c
	jp nz, $0625                                     ; $50b0: $c2 $25 $06

	ret                                              ; $50b3: $c9


	ld [hl+], a                                      ; $50b4: $22
	inc bc                                           ; $50b5: $03
	pop bc                                           ; $50b6: $c1
	ld [hl+], a                                      ; $50b7: $22
	inc bc                                           ; $50b8: $03
	ret                                              ; $50b9: $c9


	ld [hl+], a                                      ; $50ba: $22
	ld [$22c1], sp                                   ; $50bb: $08 $c1 $22
	inc b                                            ; $50be: $04
	ret z                                            ; $50bf: $c8

	ld e, $08                                        ; $50c0: $1e $08
	jp nz, $041e                                     ; $50c2: $c2 $1e $04

	ret z                                            ; $50c5: $c8

	dec e                                            ; $50c6: $1d
	ld [$1dc2], sp                                   ; $50c7: $08 $c2 $1d
	inc b                                            ; $50ca: $04
	ret                                              ; $50cb: $c9


	ld [hl+], a                                      ; $50cc: $22
	inc c                                            ; $50cd: $0c
	jp nz, $0622                                     ; $50ce: $c2 $22 $06

	ret                                              ; $50d1: $c9


	inc h                                            ; $50d2: $24
	add hl, bc                                       ; $50d3: $09
	pop bc                                           ; $50d4: $c1
	inc h                                            ; $50d5: $24
	add hl, bc                                       ; $50d6: $09
	ret                                              ; $50d7: $c9


jr_031_50d8:
	ld [hl+], a                                      ; $50d8: $22
	inc c                                            ; $50d9: $0c
	jp nz, $0c22                                     ; $50da: $c2 $22 $0c

	ret                                              ; $50dd: $c9


	ld [hl+], a                                      ; $50de: $22
	ld [$22c2], sp                                   ; $50df: $08 $c2 $22
	inc b                                            ; $50e2: $04
	rst JumpTable                                          ; $50e3: $c7
	ld e, $08                                        ; $50e4: $1e $08
	pop bc                                           ; $50e6: $c1
	ld e, $04                                        ; $50e7: $1e $04
	rst JumpTable                                          ; $50e9: $c7
	dec e                                            ; $50ea: $1d
	ld [$1dc1], sp                                   ; $50eb: $08 $c1 $1d
	inc b                                            ; $50ee: $04
	ret                                              ; $50ef: $c9


	ld [hl+], a                                      ; $50f0: $22
	inc c                                            ; $50f1: $0c
	jp nz, $0622                                     ; $50f2: $c2 $22 $06

	ret                                              ; $50f5: $c9


	inc h                                            ; $50f6: $24
	add hl, bc                                       ; $50f7: $09
	pop bc                                           ; $50f8: $c1
	inc h                                            ; $50f9: $24
	add hl, bc                                       ; $50fa: $09
	ret                                              ; $50fb: $c9


	jr nz, jr_031_510a                               ; $50fc: $20 $0c

jr_031_50fe:
	jp nz, $0c20                                     ; $50fe: $c2 $20 $0c

	ei                                               ; $5101: $fb
	ret                                              ; $5102: $c9


	jr nz, jr_031_510b                               ; $5103: $20 $06

	jp nz, $0620                                     ; $5105: $c2 $20 $06

	ei                                               ; $5108: $fb
	ld [bc], a                                       ; $5109: $02

jr_031_510a:
	ret                                              ; $510a: $c9


jr_031_510b:
	jr nz, jr_031_5119                               ; $510b: $20 $0c

	jp nz, $0c20                                     ; $510d: $c2 $20 $0c

	nop                                              ; $5110: $00
	jr jr_031_50d8                                   ; $5111: $18 $c5

jr_031_5113:
	inc l                                            ; $5113: $2c
	inc c                                            ; $5114: $0c

jr_031_5115:
	pop de                                           ; $5115: $d1
	sub b                                            ; $5116: $90
	add $62                                          ; $5117: $c6 $62

jr_031_5119:
	inc l                                            ; $5119: $2c
	inc c                                            ; $511a: $0c
	pop bc                                           ; $511b: $c1
	inc l                                            ; $511c: $2c
	inc c                                            ; $511d: $0c
	jp nc, $92cb                                     ; $511e: $d2 $cb $92

	cp [hl]                                          ; $5121: $be
	ld b, $1d                                        ; $5122: $06 $1d
	nop                                              ; $5124: $00
	dec e                                            ; $5125: $1d
	nop                                              ; $5126: $00
	cp [hl]                                          ; $5127: $be

jr_031_5128:
	nop                                              ; $5128: $00
	jr jr_031_50fe                                   ; $5129: $18 $d3

	jr nz, jr_031_5133                               ; $512b: $20 $06

	nop                                              ; $512d: $00
	ld b, $b1                                        ; $512e: $06 $b1
	or c                                             ; $5130: $b1
	inc h                                            ; $5131: $24
	inc b                                            ; $5132: $04

jr_031_5133:
	jr nz, @+$26                                     ; $5133: $20 $24

	jp nc, $06be                                     ; $5135: $d2 $be $06

	inc h                                            ; $5138: $24
	nop                                              ; $5139: $00
	inc h                                            ; $513a: $24
	nop                                              ; $513b: $00
	cp [hl]                                          ; $513c: $be
	nop                                              ; $513d: $00
	jr jr_031_5113                                   ; $513e: $18 $d3

	inc h                                            ; $5140: $24
	ld b, $00                                        ; $5141: $06 $00
	ld b, $b1                                        ; $5143: $06 $b1
	or c                                             ; $5145: $b1
	inc h                                            ; $5146: $24
	inc b                                            ; $5147: $04
	ld [hl+], a                                      ; $5148: $22
	inc h                                            ; $5149: $24
	jp nc, $06be                                     ; $514a: $d2 $be $06

	dec h                                            ; $514d: $25
	nop                                              ; $514e: $00
	dec h                                            ; $514f: $25
	nop                                              ; $5150: $00
	cp [hl]                                          ; $5151: $be
	nop                                              ; $5152: $00
	jr jr_031_5128                                   ; $5153: $18 $d3

	dec h                                            ; $5155: $25
	ld b, $00                                        ; $5156: $06 $00
	ld b, $b1                                        ; $5158: $06 $b1
	or c                                             ; $515a: $b1
	jr jr_031_5161                                   ; $515b: $18 $04

jr_031_515d:
	inc h                                            ; $515d: $24
	jr jr_031_5115                                   ; $515e: $18 $b5

	ld h, c                                          ; $5160: $61

jr_031_5161:
	ld bc, $0000                                     ; $5161: $01 $00 $00
	cp [hl]                                          ; $5164: $be
	inc bc                                           ; $5165: $03
	jr nc, jr_031_5168                               ; $5166: $30 $00

jr_031_5168:
	jr nc, jr_031_516a                               ; $5168: $30 $00

jr_031_516a:
	cp [hl]                                          ; $516a: $be
	cp [hl]                                          ; $516b: $be
	ld b, $25                                        ; $516c: $06 $25
	nop                                              ; $516e: $00
	ld sp, $2a00                                     ; $516f: $31 $00 $2a
	nop                                              ; $5172: $00
	cp [hl]                                          ; $5173: $be
	cp [hl]                                          ; $5174: $be
	inc bc                                           ; $5175: $03
	ld [hl], $00                                     ; $5176: $36 $00
	ld [hl], $00                                     ; $5178: $36 $00
	inc h                                            ; $517a: $24
	nop                                              ; $517b: $00
	jr nc, jr_031_517e                               ; $517c: $30 $00

jr_031_517e:
	inc h                                            ; $517e: $24
	nop                                              ; $517f: $00
	jr nc, jr_031_5182                               ; $5180: $30 $00

jr_031_5182:
	cp [hl]                                          ; $5182: $be
	jp $92d1                                         ; $5183: $c3 $d1 $92


	ld h, d                                          ; $5186: $62
	ld a, [hl]                                       ; $5187: $7e
	dec e                                            ; $5188: $1d
	nop                                              ; $5189: $00
	xor c                                            ; $518a: $a9
	nop                                              ; $518b: $00
	ld [$1825], sp                                   ; $518c: $08 $25 $18
	ld l, $18                                        ; $518f: $2e $18
	inc h                                            ; $5191: $24
	db $10                                           ; $5192: $10
	ld a, [hl]                                       ; $5193: $7e
	nop                                              ; $5194: $00
	and b                                            ; $5195: $a0
	sub c                                            ; $5196: $91
	call nz, $0620                                   ; $5197: $c4 $20 $06
	ld [hl+], a                                      ; $519a: $22
	ld b, $c3                                        ; $519b: $06 $c3
	inc h                                            ; $519d: $24
	ld b, $25                                        ; $519e: $06 $25
	ld b, $b1                                        ; $51a0: $06 $b1
	ld [hl], c                                       ; $51a2: $71
	jr jr_031_51ac                                   ; $51a3: $18 $07

	add hl, hl                                       ; $51a5: $29
	jr jr_031_51cf                                   ; $51a6: $18 $27

	jr jr_031_51d0                                   ; $51a8: $18 $26

	jr jr_031_515d                                   ; $51aa: $18 $b1

jr_031_51ac:
	ld h, c                                          ; $51ac: $61
	inc c                                            ; $51ad: $0c
	rlca                                             ; $51ae: $07
	inc h                                            ; $51af: $24
	inc c                                            ; $51b0: $0c
	ld h, $0c                                        ; $51b1: $26 $0c
	dec de                                           ; $51b3: $1b
	inc c                                            ; $51b4: $0c
	dec e                                            ; $51b5: $1d
	inc c                                            ; $51b6: $0c
	ld e, $0c                                        ; $51b7: $1e $0c
	sub [hl]                                         ; $51b9: $96
	jr jr_031_51c0                                   ; $51ba: $18 $04

	ld [hl+], a                                      ; $51bc: $22
	jr @-$4d                                         ; $51bd: $18 $b1

	ld h, c                                          ; $51bf: $61

jr_031_51c0:
	nop                                              ; $51c0: $00
	nop                                              ; $51c1: $00
	cp [hl]                                          ; $51c2: $be
	inc bc                                           ; $51c3: $03
	inc h                                            ; $51c4: $24
	nop                                              ; $51c5: $00
	inc h                                            ; $51c6: $24
	nop                                              ; $51c7: $00
	cp [hl]                                          ; $51c8: $be
	or c                                             ; $51c9: $b1
	sub c                                            ; $51ca: $91
	inc c                                            ; $51cb: $0c
	inc bc                                           ; $51cc: $03
	jr jr_031_51db                                   ; $51cd: $18 $0c

jr_031_51cf:
	add hl, de                                       ; $51cf: $19

jr_031_51d0:
	inc c                                            ; $51d0: $0c
	nop                                              ; $51d1: $00
	inc c                                            ; $51d2: $0c
	add hl, de                                       ; $51d3: $19
	inc c                                            ; $51d4: $0c
	sub [hl]                                         ; $51d5: $96
	jr @+$04                                         ; $51d6: $18 $02

	dec h                                            ; $51d8: $25
	jr @-$68                                         ; $51d9: $18 $96

jr_031_51db:
	inc c                                            ; $51db: $0c
	inc bc                                           ; $51dc: $03
	jr nz, @+$0e                                     ; $51dd: $20 $0c

	rra                                              ; $51df: $1f
	inc c                                            ; $51e0: $0c
	nop                                              ; $51e1: $00
	inc c                                            ; $51e2: $0c
	cp $ff                                           ; $51e3: $fe $ff
	pop de                                           ; $51e5: $d1
	jp nz, $0c22                                     ; $51e6: $c2 $22 $0c

	jp z, $0822                                      ; $51e9: $ca $22 $08

	jp nz, $0422                                     ; $51ec: $c2 $22 $04

	jp z, $081e                                      ; $51ef: $ca $1e $08

	call nz, $041e                                   ; $51f2: $c4 $1e $04
	jp z, $081d                                      ; $51f5: $ca $1d $08

	call nz, $041d                                   ; $51f8: $c4 $1d $04
	jp z, $0c22                                      ; $51fb: $ca $22 $0c

	jp nz, $0622                                     ; $51fe: $c2 $22 $06

	jp z, $0924                                      ; $5201: $ca $24 $09

	jp nz, $0924                                     ; $5204: $c2 $24 $09

	db $fd                                           ; $5207: $fd
	or h                                             ; $5208: $b4
	ld a, b                                          ; $5209: $78
	pop af                                           ; $520a: $f1
	ld bc, $0062                                     ; $520b: $01 $62 $00

jr_031_520e:
	jr jr_031_520e                                   ; $520e: $18 $fe

	sub c                                            ; $5210: $91
	sla l                                            ; $5211: $cb $25
	inc c                                            ; $5213: $0c
	db $fd                                           ; $5214: $fd
	or l                                             ; $5215: $b5
	ld d, e                                          ; $5216: $53
	jp nz, $0629                                     ; $5217: $c2 $29 $06

	sla l                                            ; $521a: $cb $25
	inc bc                                           ; $521c: $03
	jp nz, $0325                                     ; $521d: $c2 $25 $03

	sla l                                            ; $5220: $cb $25
	ld [$25c2], sp                                   ; $5222: $08 $c2 $25
	inc b                                            ; $5225: $04
	sla d                                            ; $5226: $cb $22
	ld [$22c2], sp                                   ; $5228: $08 $c2 $22
	inc b                                            ; $522b: $04
	sla b                                            ; $522c: $cb $20
	ld [$20c2], sp                                   ; $522e: $08 $c2 $20
	inc b                                            ; $5231: $04
	ret                                              ; $5232: $c9


	dec h                                            ; $5233: $25
	inc c                                            ; $5234: $0c
	jp nz, $0625                                     ; $5235: $c2 $25 $06

	rst JumpTable                                          ; $5238: $c7
	daa                                              ; $5239: $27
	add hl, bc                                       ; $523a: $09
	pop bc                                           ; $523b: $c1
	daa                                              ; $523c: $27
	add hl, bc                                       ; $523d: $09
	sla l                                            ; $523e: $cb $25
	inc c                                            ; $5240: $0c
	db $fd                                           ; $5241: $fd
	or l                                             ; $5242: $b5
	ld d, e                                          ; $5243: $53
	jp nz, $0c29                                     ; $5244: $c2 $29 $0c

	pop bc                                           ; $5247: $c1
	add hl, hl                                       ; $5248: $29
	ld [de], a                                       ; $5249: $12
	sub d                                            ; $524a: $92
	call nz, $1d7e                                   ; $524b: $c4 $7e $1d
	nop                                              ; $524e: $00
	and c                                            ; $524f: $a1
	cp [hl]                                          ; $5250: $be
	inc c                                            ; $5251: $0c
	inc h                                            ; $5252: $24
	dec h                                            ; $5253: $25
	inc h                                            ; $5254: $24
	dec h                                            ; $5255: $25
	cp [hl]                                          ; $5256: $be
	inc h                                            ; $5257: $24
	ld b, $7e                                        ; $5258: $06 $7e
	nop                                              ; $525a: $00
	and b                                            ; $525b: $a0
	sub b                                            ; $525c: $90
	sla l                                            ; $525d: $cb $25
	inc c                                            ; $525f: $0c
	db $fd                                           ; $5260: $fd
	or l                                             ; $5261: $b5
	ld d, e                                          ; $5262: $53
	jp nz, $0629                                     ; $5263: $c2 $29 $06

	sla l                                            ; $5266: $cb $25
	inc bc                                           ; $5268: $03
	jp nz, $0325                                     ; $5269: $c2 $25 $03

	sla l                                            ; $526c: $cb $25
	ld [$25c2], sp                                   ; $526e: $08 $c2 $25
	inc b                                            ; $5271: $04
	sla d                                            ; $5272: $cb $22
	ld [$22c2], sp                                   ; $5274: $08 $c2 $22
	inc b                                            ; $5277: $04
	sla b                                            ; $5278: $cb $20
	ld [$20c2], sp                                   ; $527a: $08 $c2 $20
	inc b                                            ; $527d: $04
	ret                                              ; $527e: $c9


	dec h                                            ; $527f: $25
	inc c                                            ; $5280: $0c
	jp nz, $0625                                     ; $5281: $c2 $25 $06

	rst JumpTable                                          ; $5284: $c7
	daa                                              ; $5285: $27
	add hl, bc                                       ; $5286: $09
	pop bc                                           ; $5287: $c1
	daa                                              ; $5288: $27
	add hl, bc                                       ; $5289: $09
	sla l                                            ; $528a: $cb $25

jr_031_528c:
	inc c                                            ; $528c: $0c
	jp nz, $0c25                                     ; $528d: $c2 $25 $0c

	sla l                                            ; $5290: $cb $25
	ld [$25c2], sp                                   ; $5292: $08 $c2 $25
	inc b                                            ; $5295: $04
	sla d                                            ; $5296: $cb $22
	ld [$22c4], sp                                   ; $5298: $08 $c4 $22
	inc b                                            ; $529b: $04
	sla b                                            ; $529c: $cb $20

jr_031_529e:
	ld [$20c4], sp                                   ; $529e: $08 $c4 $20
	inc b                                            ; $52a1: $04
	ret                                              ; $52a2: $c9


	dec h                                            ; $52a3: $25
	inc c                                            ; $52a4: $0c
	jp nz, $0625                                     ; $52a5: $c2 $25 $06

	rst JumpTable                                          ; $52a8: $c7
	daa                                              ; $52a9: $27
	add hl, bc                                       ; $52aa: $09
	pop bc                                           ; $52ab: $c1
	daa                                              ; $52ac: $27
	add hl, bc                                       ; $52ad: $09
	sla l                                            ; $52ae: $cb $25
	inc c                                            ; $52b0: $0c
	jp nz, $0c25                                     ; $52b1: $c2 $25 $0c

	ei                                               ; $52b4: $fb
	sla l                                            ; $52b5: $cb $25
	ld b, $c1                                        ; $52b7: $06 $c1
	dec h                                            ; $52b9: $25
	ld b, $fb                                        ; $52ba: $06 $fb
	ld [bc], a                                       ; $52bc: $02
	sla l                                            ; $52bd: $cb $25
	inc c                                            ; $52bf: $0c
	call nz, $0c25                                   ; $52c0: $c4 $25 $0c
	nop                                              ; $52c3: $00
	jr jr_031_528c                                   ; $52c4: $18 $c6

	ld sp, $d10c                                     ; $52c6: $31 $0c $d1
	sub b                                            ; $52c9: $90
	call nz, $3162                                   ; $52ca: $c4 $62 $31
	inc c                                            ; $52cd: $0c
	pop bc                                           ; $52ce: $c1
	ld sp, $920c                                     ; $52cf: $31 $0c $92
	call $0c20                                       ; $52d2: $cd $20 $0c
	call nz, $0c20                                   ; $52d5: $c4 $20 $0c
	rst JumpTable                                          ; $52d8: $c7
	ld a, [hl]                                       ; $52d9: $7e
	dec e                                            ; $52da: $1d
	ld a, [bc]                                       ; $52db: $0a
	xor e                                            ; $52dc: $ab
	add hl, hl                                       ; $52dd: $29
	ld [de], a                                       ; $52de: $12
	ld a, [hl]                                       ; $52df: $7e
	dec e                                            ; $52e0: $1d
	nop                                              ; $52e1: $00
	xor d                                            ; $52e2: $aa
	jp nz, $0629                                     ; $52e3: $c2 $29 $06

	ld a, [hl]                                       ; $52e6: $7e
	nop                                              ; $52e7: $00
	and b                                            ; $52e8: $a0
	ret z                                            ; $52e9: $c8

	daa                                              ; $52ea: $27
	ld b, $c4                                        ; $52eb: $06 $c4
	daa                                              ; $52ed: $27
	ld b, $c7                                        ; $52ee: $06 $c7
	ld a, [hl]                                       ; $52f0: $7e
	dec e                                            ; $52f1: $1d
	jr jr_031_529e                                   ; $52f2: $18 $aa

	add hl, hl                                       ; $52f4: $29
	inc h                                            ; $52f5: $24
	ld a, [hl]                                       ; $52f6: $7e
	dec e                                            ; $52f7: $1d
	nop                                              ; $52f8: $00
	xor c                                            ; $52f9: $a9
	call nz, $0c29                                   ; $52fa: $c4 $29 $0c
	ld a, [hl]                                       ; $52fd: $7e
	nop                                              ; $52fe: $00
	and b                                            ; $52ff: $a0
	rst JumpTable                                          ; $5300: $c7
	add hl, hl                                       ; $5301: $29
	ld b, $c4                                        ; $5302: $06 $c4
	add hl, hl                                       ; $5304: $29
	ld b, $c8                                        ; $5305: $06 $c8
	ld l, $08                                        ; $5307: $2e $08
	jp nz, $042e                                     ; $5309: $c2 $2e $04

	rst JumpTable                                          ; $530c: $c7
	inc l                                            ; $530d: $2c
	ld [$2cc3], sp                                   ; $530e: $08 $c3 $2c
	inc b                                            ; $5311: $04
	ret z                                            ; $5312: $c8

	add hl, hl                                       ; $5313: $29
	ld [$29c3], sp                                   ; $5314: $08 $c3 $29
	inc b                                            ; $5317: $04
	ret z                                            ; $5318: $c8

	ld a, [hl]                                       ; $5319: $7e
	dec e                                            ; $531a: $1d
	ld e, $aa                                        ; $531b: $1e $aa
	ld a, [hl+]                                      ; $531d: $2a
	jr z, jr_031_539e                                ; $531e: $28 $7e

	dec e                                            ; $5320: $1d
	nop                                              ; $5321: $00
	xor c                                            ; $5322: $a9
	jp $142a                                         ; $5323: $c3 $2a $14


	ld a, [hl]                                       ; $5326: $7e
	nop                                              ; $5327: $00
	and b                                            ; $5328: $a0
	ret                                              ; $5329: $c9


	ld a, [hl+]                                      ; $532a: $2a
	ld [$2ac4], sp                                   ; $532b: $08 $c4 $2a
	inc b                                            ; $532e: $04
	rst JumpTable                                          ; $532f: $c7
	inc l                                            ; $5330: $2c
	ld [$2cc4], sp                                   ; $5331: $08 $c4 $2c
	inc b                                            ; $5334: $04
	add $2e                                          ; $5335: $c6 $2e
	ld [$2ec3], sp                                   ; $5337: $08 $c3 $2e
	inc b                                            ; $533a: $04
	ret z                                            ; $533b: $c8

	ld a, [hl]                                       ; $533c: $7e
	dec e                                            ; $533d: $1d
	ld e, $aa                                        ; $533e: $1e $aa
	inc l                                            ; $5340: $2c
	jr z, jr_031_53c1                                ; $5341: $28 $7e

	dec e                                            ; $5343: $1d
	nop                                              ; $5344: $00
	xor c                                            ; $5345: $a9
	jp $142c                                         ; $5346: $c3 $2c $14


	ld a, [hl]                                       ; $5349: $7e
	nop                                              ; $534a: $00
	and b                                            ; $534b: $a0
	rst JumpTable                                          ; $534c: $c7
	ld a, [hl]                                       ; $534d: $7e
	dec e                                            ; $534e: $1d
	inc d                                            ; $534f: $14
	xor d                                            ; $5350: $aa
	daa                                              ; $5351: $27
	inc h                                            ; $5352: $24
	ld a, [hl]                                       ; $5353: $7e
	dec e                                            ; $5354: $1d
	nop                                              ; $5355: $00
	xor c                                            ; $5356: $a9
	jp nz, $0c27                                     ; $5357: $c2 $27 $0c

	ld a, [hl]                                       ; $535a: $7e
	nop                                              ; $535b: $00
	and b                                            ; $535c: $a0
	jp z, $92d1                                      ; $535d: $ca $d1 $92

	ld h, d                                          ; $5360: $62
	dec h                                            ; $5361: $25
	inc c                                            ; $5362: $0c
	call nz, $0c25                                   ; $5363: $c4 $25 $0c
	rst JumpTable                                          ; $5366: $c7
	ld l, $0c                                        ; $5367: $2e $0c
	call nz, $0c2e                                   ; $5369: $c4 $2e $0c
	sla h                                            ; $536c: $cb $24
	inc c                                            ; $536e: $0c
	call nz, $0c24                                   ; $536f: $c4 $24 $0c
	ret z                                            ; $5372: $c8

	dec h                                            ; $5373: $25
	ld b, $27                                        ; $5374: $06 $27
	ld b, $c7                                        ; $5376: $06 $c7
	add hl, hl                                       ; $5378: $29
	ld b, $2a                                        ; $5379: $06 $2a
	ld b, $97                                        ; $537b: $06 $97
	ld e, l                                          ; $537d: $5d
	inc l                                            ; $537e: $2c
	jr jr_031_53ab                                   ; $537f: $18 $2a

	jr @+$2b                                         ; $5381: $18 $29

	jr @-$67                                         ; $5383: $18 $97

	nop                                              ; $5385: $00
	ret z                                            ; $5386: $c8

	ld a, [hl+]                                      ; $5387: $2a
	inc c                                            ; $5388: $0c
	inc l                                            ; $5389: $2c
	inc c                                            ; $538a: $0c
	ld a, [hl+]                                      ; $538b: $2a
	inc c                                            ; $538c: $0c
	add hl, hl                                       ; $538d: $29
	inc c                                            ; $538e: $0c
	add $27                                          ; $538f: $c6 $27
	inc c                                            ; $5391: $0c
	ret z                                            ; $5392: $c8

	dec h                                            ; $5393: $25
	inc c                                            ; $5394: $0c
	daa                                              ; $5395: $27
	inc c                                            ; $5396: $0c
	jp nz, $0c27                                     ; $5397: $c2 $27 $0c

	jp z, $0c27                                      ; $539a: $ca $27 $0c

	dec h                                            ; $539d: $25

jr_031_539e:
	inc c                                            ; $539e: $0c
	call nz, $0c25                                   ; $539f: $c4 $25 $0c
	call z, $0c25                                    ; $53a2: $cc $25 $0c
	call nz, $0c31                                   ; $53a5: $c4 $31 $0c
	jp nz, $0c31                                     ; $53a8: $c2 $31 $0c

jr_031_53ab:
	call z, $0c25                                    ; $53ab: $cc $25 $0c
	inc h                                            ; $53ae: $24
	inc c                                            ; $53af: $0c
	call nz, $0c24                                   ; $53b0: $c4 $24 $0c
	cp $ff                                           ; $53b3: $fe $ff
	pop de                                           ; $53b5: $d1
	jp $0c25                                         ; $53b6: $c3 $25 $0c


	sla l                                            ; $53b9: $cb $25
	ld [$25c3], sp                                   ; $53bb: $08 $c3 $25
	inc b                                            ; $53be: $04
	sla d                                            ; $53bf: $cb $22

jr_031_53c1:
	ld [$22c4], sp                                   ; $53c1: $08 $c4 $22
	inc b                                            ; $53c4: $04
	sla b                                            ; $53c5: $cb $20
	ld [$20c2], sp                                   ; $53c7: $08 $c2 $20
	inc b                                            ; $53ca: $04
	ret                                              ; $53cb: $c9


	dec h                                            ; $53cc: $25
	ld a, [bc]                                       ; $53cd: $0a
	nop                                              ; $53ce: $00
	ld [bc], a                                       ; $53cf: $02
	add hl, de                                       ; $53d0: $19
	ld b, $c7                                        ; $53d1: $06 $c7
	daa                                              ; $53d3: $27
	add hl, bc                                       ; $53d4: $09
	jp nz, $0927                                     ; $53d5: $c2 $27 $09

	ret z                                            ; $53d8: $c8

	add hl, hl                                       ; $53d9: $29
	inc c                                            ; $53da: $0c
	db $fd                                           ; $53db: $fd
	or h                                             ; $53dc: $b4
	ld a, b                                          ; $53dd: $78
	ld hl, $6221                                     ; $53de: $21 $21 $62
	nop                                              ; $53e1: $00

jr_031_53e2:
	jr jr_031_53e2                                   ; $53e2: $18 $fe

	cp l                                             ; $53e4: $bd
	ld [bc], a                                       ; $53e5: $02
	ld b, $0c                                        ; $53e6: $06 $0c
	ld b, $00                                        ; $53e8: $06 $00
	ld b, $06                                        ; $53ea: $06 $06
	inc c                                            ; $53ec: $0c
	ld a, [bc]                                       ; $53ed: $0a
	ld a, [bc]                                       ; $53ee: $0a
	nop                                              ; $53ef: $00
	ld [bc], a                                       ; $53f0: $02
	dec c                                            ; $53f1: $0d
	ld a, [bc]                                       ; $53f2: $0a
	nop                                              ; $53f3: $00
	ld [bc], a                                       ; $53f4: $02
	ld [$be0c], sp                                   ; $53f5: $08 $0c $be
	ld b, $18                                        ; $53f8: $06 $18
	rrca                                             ; $53fa: $0f
	nop                                              ; $53fb: $00
	nop                                              ; $53fc: $00
	cp [hl]                                          ; $53fd: $be
	cp l                                             ; $53fe: $bd
	ld [bc], a                                       ; $53ff: $02
	dec c                                            ; $5400: $0d
	inc c                                            ; $5401: $0c
	inc c                                            ; $5402: $0c
	add hl, de                                       ; $5403: $19
	ld b, $00                                        ; $5404: $06 $00
	ld b, $0c                                        ; $5406: $06 $0c
	inc c                                            ; $5408: $0c
	jr @+$08                                         ; $5409: $18 $06

	nop                                              ; $540b: $00
	ld b, $0a                                        ; $540c: $06 $0a
	inc c                                            ; $540e: $0c
	cp [hl]                                          ; $540f: $be
	ld b, $16                                        ; $5410: $06 $16
	ld [$0900], sp                                   ; $5412: $08 $00 $09
	cp [hl]                                          ; $5415: $be
	cp l                                             ; $5416: $bd
	ld [bc], a                                       ; $5417: $02
	ld b, $0c                                        ; $5418: $06 $0c
	ld a, [bc]                                       ; $541a: $0a
	nop                                              ; $541b: $00
	ld [bc], a                                       ; $541c: $02
	ld b, $06                                        ; $541d: $06 $06
	nop                                              ; $541f: $00
	ld b, $0a                                        ; $5420: $06 $0a
	inc c                                            ; $5422: $0c
	dec c                                            ; $5423: $0d
	inc bc                                           ; $5424: $03
	nop                                              ; $5425: $00
	add hl, bc                                       ; $5426: $09
	ld [$180c], sp                                   ; $5427: $08 $0c $18
	inc bc                                           ; $542a: $03
	nop                                              ; $542b: $00
	add hl, bc                                       ; $542c: $09
	add hl, bc                                       ; $542d: $09
	ld b, $11                                        ; $542e: $06 $11
	ld b, $bd                                        ; $5430: $06 $bd
	ld [bc], a                                       ; $5432: $02
	ld a, [bc]                                       ; $5433: $0a
	inc c                                            ; $5434: $0c
	ld a, [bc]                                       ; $5435: $0a
	nop                                              ; $5436: $00
	ld [bc], a                                       ; $5437: $02
	cp [hl]                                          ; $5438: $be
	inc bc                                           ; $5439: $03
	ld d, $00                                        ; $543a: $16 $00
	ld d, $00                                        ; $543c: $16 $00
	cp [hl]                                          ; $543e: $be
	inc c                                            ; $543f: $0c
	ld b, $18                                        ; $5440: $06 $18
	ld a, [bc]                                       ; $5442: $0a
	nop                                              ; $5443: $00
	ld [bc], a                                       ; $5444: $02
	jr jr_031_544d                                   ; $5445: $18 $06

	dec c                                            ; $5447: $0d
	ld [de], a                                       ; $5448: $12
	add hl, de                                       ; $5449: $19
	ld b, $be                                        ; $544a: $06 $be
	inc bc                                           ; $544c: $03

jr_031_544d:
	ld c, $00                                        ; $544d: $0e $00
	ld a, [de]                                       ; $544f: $1a
	nop                                              ; $5450: $00
	cp [hl]                                          ; $5451: $be
	cp l                                             ; $5452: $bd
	ld [bc], a                                       ; $5453: $02
	ld b, $0c                                        ; $5454: $06 $0c
	ld b, $00                                        ; $5456: $06 $00
	ld b, $06                                        ; $5458: $06 $06
	inc c                                            ; $545a: $0c
	ld a, [bc]                                       ; $545b: $0a
	ld a, [bc]                                       ; $545c: $0a
	nop                                              ; $545d: $00
	ld [bc], a                                       ; $545e: $02
	dec c                                            ; $545f: $0d
	ld a, [bc]                                       ; $5460: $0a
	nop                                              ; $5461: $00
	ld [bc], a                                       ; $5462: $02
	ld [$000a], sp                                   ; $5463: $08 $0a $00
	ld [bc], a                                       ; $5466: $02
	jr jr_031_546c                                   ; $5467: $18 $03

	nop                                              ; $5469: $00
	inc bc                                           ; $546a: $03
	rrca                                             ; $546b: $0f

jr_031_546c:
	inc c                                            ; $546c: $0c
	nop                                              ; $546d: $00
	ld b, $bd                                        ; $546e: $06 $bd
	ld [bc], a                                       ; $5470: $02
	dec c                                            ; $5471: $0d
	inc c                                            ; $5472: $0c
	ld b, $14                                        ; $5473: $06 $14
	inc bc                                           ; $5475: $03
	nop                                              ; $5476: $00
	inc bc                                           ; $5477: $03
	inc d                                            ; $5478: $14
	ld b, $00                                        ; $5479: $06 $00
	ld b, $0c                                        ; $547b: $06 $0c
	inc c                                            ; $547d: $0c
	jr jr_031_5486                                   ; $547e: $18 $06

	nop                                              ; $5480: $00
	ld b, $0a                                        ; $5481: $06 $0a
	inc c                                            ; $5483: $0c
	ld d, $03                                        ; $5484: $16 $03

jr_031_5486:
	nop                                              ; $5486: $00
	inc bc                                           ; $5487: $03
	ld [$000c], sp                                   ; $5488: $08 $0c $00
	ld b, $bd                                        ; $548b: $06 $bd
	ld [bc], a                                       ; $548d: $02
	ld b, $0c                                        ; $548e: $06 $0c
	ld a, [bc]                                       ; $5490: $0a
	nop                                              ; $5491: $00
	ld [bc], a                                       ; $5492: $02
	ld b, $06                                        ; $5493: $06 $06
	nop                                              ; $5495: $00
	ld b, $0a                                        ; $5496: $06 $0a
	inc c                                            ; $5498: $0c
	dec c                                            ; $5499: $0d
	ld a, [bc]                                       ; $549a: $0a
	nop                                              ; $549b: $00
	ld [bc], a                                       ; $549c: $02
	ld [$000a], sp                                   ; $549d: $08 $0a $00
	ld [bc], a                                       ; $54a0: $02
	cp [hl]                                          ; $54a1: $be
	ld b, $18                                        ; $54a2: $06 $18
	nop                                              ; $54a4: $00
	inc c                                            ; $54a5: $0c
	nop                                              ; $54a6: $00
	cp [hl]                                          ; $54a7: $be
	cp l                                             ; $54a8: $bd
	ld [bc], a                                       ; $54a9: $02
	dec c                                            ; $54aa: $0d
	inc c                                            ; $54ab: $0c
	ld a, [bc]                                       ; $54ac: $0a
	nop                                              ; $54ad: $00
	ld [bc], a                                       ; $54ae: $02
	dec c                                            ; $54af: $0d
	ld a, [bc]                                       ; $54b0: $0a
	nop                                              ; $54b1: $00
	ld [bc], a                                       ; $54b2: $02
	dec c                                            ; $54b3: $0d
	ld a, [bc]                                       ; $54b4: $0a
	nop                                              ; $54b5: $00
	ld [bc], a                                       ; $54b6: $02
	dec c                                            ; $54b7: $0d
	ld a, [bc]                                       ; $54b8: $0a
	nop                                              ; $54b9: $00
	ld h, $01                                        ; $54ba: $26 $01
	inc c                                            ; $54bc: $0c
	jp nz, Jump_031_7fd1                             ; $54bd: $c2 $d1 $7f

	ld hl, $be62                                     ; $54c0: $21 $62 $be
	ld b, $0d                                        ; $54c3: $06 $0d
	nop                                              ; $54c5: $00
	dec c                                            ; $54c6: $0d
	nop                                              ; $54c7: $00
	add hl, de                                       ; $54c8: $19
	nop                                              ; $54c9: $00
	dec c                                            ; $54ca: $0d
	nop                                              ; $54cb: $00
	cp [hl]                                          ; $54cc: $be
	dec c                                            ; $54cd: $0d
	ld a, [bc]                                       ; $54ce: $0a
	nop                                              ; $54cf: $00
	ld [bc], a                                       ; $54d0: $02
	cp [hl]                                          ; $54d1: $be
	inc bc                                           ; $54d2: $03
	dec c                                            ; $54d3: $0d
	nop                                              ; $54d4: $00
	dec c                                            ; $54d5: $0d
	nop                                              ; $54d6: $00
	cp [hl]                                          ; $54d7: $be
	add hl, de                                       ; $54d8: $19
	ld b, $00                                        ; $54d9: $06 $00
	ld b, $bd                                        ; $54db: $06 $bd
	ld [bc], a                                       ; $54dd: $02
	ld [$060c], sp                                   ; $54de: $08 $0c $06
	cp [hl]                                          ; $54e1: $be
	ld b, $00                                        ; $54e2: $06 $00
	ld [$1400], sp                                   ; $54e4: $08 $00 $14
	nop                                              ; $54e7: $00
	ld [$be00], sp                                   ; $54e8: $08 $00 $be
	ld [$000a], sp                                   ; $54eb: $08 $0a $00
	ld [bc], a                                       ; $54ee: $02
	cp [hl]                                          ; $54ef: $be
	inc bc                                           ; $54f0: $03
	ld [$0800], sp                                   ; $54f1: $08 $00 $08
	nop                                              ; $54f4: $00
	cp [hl]                                          ; $54f5: $be
	inc d                                            ; $54f6: $14
	ld b, $00                                        ; $54f7: $06 $00
	ld b, $bd                                        ; $54f9: $06 $bd
	ld [bc], a                                       ; $54fb: $02
	ld b, $0c                                        ; $54fc: $06 $0c
	ld b, $be                                        ; $54fe: $06 $be
	ld b, $00                                        ; $5500: $06 $00
	ld b, $00                                        ; $5502: $06 $00
	ld [de], a                                       ; $5504: $12
	nop                                              ; $5505: $00
	ld b, $00                                        ; $5506: $06 $00
	cp [hl]                                          ; $5508: $be
	ld b, $0a                                        ; $5509: $06 $0a
	nop                                              ; $550b: $00
	ld [bc], a                                       ; $550c: $02
	cp [hl]                                          ; $550d: $be
	inc bc                                           ; $550e: $03
	ld b, $00                                        ; $550f: $06 $00
	ld b, $00                                        ; $5511: $06 $00
	cp [hl]                                          ; $5513: $be
	ld [de], a                                       ; $5514: $12
	ld b, $00                                        ; $5515: $06 $00
	ld b, $bd                                        ; $5517: $06 $bd
	ld [bc], a                                       ; $5519: $02
	ld [$060c], sp                                   ; $551a: $08 $0c $06
	nop                                              ; $551d: $00
	ld b, $14                                        ; $551e: $06 $14
	ld b, $00                                        ; $5520: $06 $00
	ld b, $be                                        ; $5522: $06 $be
	inc c                                            ; $5524: $0c
	ld a, [bc]                                       ; $5525: $0a
	ld d, $0c                                        ; $5526: $16 $0c
	jr jr_031_5532                                   ; $5528: $18 $08

	inc d                                            ; $552a: $14
	cp [hl]                                          ; $552b: $be
	jp nz, Jump_031_7fd1                             ; $552c: $c2 $d1 $7f

	ld hl, $be62                                     ; $552f: $21 $62 $be

jr_031_5532:
	inc c                                            ; $5532: $0c
	ld b, $00                                        ; $5533: $06 $00
	ld [de], a                                       ; $5535: $12
	nop                                              ; $5536: $00
	cp [hl]                                          ; $5537: $be
	cp [hl]                                          ; $5538: $be
	ld b, $08                                        ; $5539: $06 $08
	nop                                              ; $553b: $00
	ld [$1400], sp                                   ; $553c: $08 $00 $14
	nop                                              ; $553f: $00
	inc d                                            ; $5540: $14
	nop                                              ; $5541: $00
	cp [hl]                                          ; $5542: $be
	cp [hl]                                          ; $5543: $be
	inc c                                            ; $5544: $0c
	dec c                                            ; $5545: $0d
	nop                                              ; $5546: $00
	inc c                                            ; $5547: $0c
	nop                                              ; $5548: $00
	ld a, [bc]                                       ; $5549: $0a
	ld c, $11                                        ; $554a: $0e $11
	ld c, $be                                        ; $554c: $0e $be
	cp [hl]                                          ; $554e: $be
	inc c                                            ; $554f: $0c
	inc bc                                           ; $5550: $03
	nop                                              ; $5551: $00
	ld a, [bc]                                       ; $5552: $0a
	nop                                              ; $5553: $00
	ld [$0c00], sp                                   ; $5554: $08 $00 $0c
	cp [hl]                                          ; $5557: $be
	cp l                                             ; $5558: $bd
	ld [bc], a                                       ; $5559: $02
	dec c                                            ; $555a: $0d
	inc c                                            ; $555b: $0c
	ld a, [bc]                                       ; $555c: $0a
	nop                                              ; $555d: $00
	ld [bc], a                                       ; $555e: $02
	cp [hl]                                          ; $555f: $be
	inc c                                            ; $5560: $0c
	dec c                                            ; $5561: $0d
	ld [$0d00], sp                                   ; $5562: $08 $00 $0d
	rlca                                             ; $5565: $07
	nop                                              ; $5566: $00
	cp [hl]                                          ; $5567: $be
	cp $ff                                           ; $5568: $fe $ff
	ret nc                                           ; $556a: $d0

	ld a, b                                          ; $556b: $78
	dec e                                            ; $556c: $1d
	ld b, $1d                                        ; $556d: $06 $1d
	ld b, $1d                                        ; $556f: $06 $1d
	inc c                                            ; $5571: $0c
	cp $1e                                           ; $5572: $fe $1e
	inc c                                            ; $5574: $0c
	ei                                               ; $5575: $fb
	db $fd                                           ; $5576: $fd
	db $d3                                           ; $5577: $d3
	ld d, l                                          ; $5578: $55
	ei                                               ; $5579: $fb
	rlca                                             ; $557a: $07
	cp [hl]                                          ; $557b: $be
	inc c                                            ; $557c: $0c
	nop                                              ; $557d: $00
	rra                                              ; $557e: $1f
	rra                                              ; $557f: $1f
	rra                                              ; $5580: $1f
	cp [hl]                                          ; $5581: $be
	dec e                                            ; $5582: $1d
	ld b, $1d                                        ; $5583: $06 $1d
	ld b, $1f                                        ; $5585: $06 $1f
	inc c                                            ; $5587: $0c
	ld e, $0c                                        ; $5588: $1e $0c
	rra                                              ; $558a: $1f
	inc c                                            ; $558b: $0c
	cp [hl]                                          ; $558c: $be
	inc c                                            ; $558d: $0c
	dec e                                            ; $558e: $1d
	dec e                                            ; $558f: $1d
	jr nz, jr_031_55af                               ; $5590: $20 $1d

	dec e                                            ; $5592: $1d
	cp [hl]                                          ; $5593: $be
	dec e                                            ; $5594: $1d
	ld b, $1d                                        ; $5595: $06 $1d
	ld b, $20                                        ; $5597: $06 $20
	inc c                                            ; $5599: $0c
	ld e, $0c                                        ; $559a: $1e $0c
	db $fd                                           ; $559c: $fd
	push hl                                          ; $559d: $e5
	ld d, l                                          ; $559e: $55
	db $fd                                           ; $559f: $fd
	push hl                                          ; $55a0: $e5
	ld d, l                                          ; $55a1: $55
	cp [hl]                                          ; $55a2: $be
	inc c                                            ; $55a3: $0c
	nop                                              ; $55a4: $00
	dec e                                            ; $55a5: $1d
	jr nz, jr_031_55c5                               ; $55a6: $20 $1d

	dec e                                            ; $55a8: $1d
	cp [hl]                                          ; $55a9: $be
	dec e                                            ; $55aa: $1d
	ld b, $1d                                        ; $55ab: $06 $1d
	ld b, $20                                        ; $55ad: $06 $20

jr_031_55af:
	inc c                                            ; $55af: $0c
	dec e                                            ; $55b0: $1d
	inc c                                            ; $55b1: $0c
	db $fd                                           ; $55b2: $fd
	or $55                                           ; $55b3: $f6 $55
	db $fd                                           ; $55b5: $fd
	or $55                                           ; $55b6: $f6 $55
	cp [hl]                                          ; $55b8: $be
	inc c                                            ; $55b9: $0c
	rra                                              ; $55ba: $1f
	dec hl                                           ; $55bb: $2b
	jr nz, jr_031_55e9                               ; $55bc: $20 $2b

	rra                                              ; $55be: $1f
	dec hl                                           ; $55bf: $2b
	jr nz, @+$20                                     ; $55c0: $20 $1e

	cp [hl]                                          ; $55c2: $be
	cp [hl]                                          ; $55c3: $be
	inc c                                            ; $55c4: $0c

jr_031_55c5:
	nop                                              ; $55c5: $00
	dec hl                                           ; $55c6: $2b
	jr nz, @+$2d                                     ; $55c7: $20 $2b

	ld e, $be                                        ; $55c9: $1e $be
	dec e                                            ; $55cb: $1d
	ld b, $1d                                        ; $55cc: $06 $1d
	ld b, $20                                        ; $55ce: $06 $20
	inc c                                            ; $55d0: $0c
	cp $ff                                           ; $55d1: $fe $ff
	cp [hl]                                          ; $55d3: $be
	inc c                                            ; $55d4: $0c
	dec e                                            ; $55d5: $1d
	dec e                                            ; $55d6: $1d
	jr nz, jr_031_55f8                               ; $55d7: $20 $1f

	rra                                              ; $55d9: $1f
	cp [hl]                                          ; $55da: $be
	cp [hl]                                          ; $55db: $be
	ld b, $1d                                        ; $55dc: $06 $1d
	dec e                                            ; $55de: $1d
	jr nz, jr_031_55fe                               ; $55df: $20 $1d

	cp [hl]                                          ; $55e1: $be
	ld e, $0c                                        ; $55e2: $1e $0c
	db $fd                                           ; $55e4: $fd
	cp [hl]                                          ; $55e5: $be
	inc c                                            ; $55e6: $0c
	nop                                              ; $55e7: $00
	dec e                                            ; $55e8: $1d

jr_031_55e9:
	jr nz, @+$1f                                     ; $55e9: $20 $1d

	dec e                                            ; $55eb: $1d
	cp [hl]                                          ; $55ec: $be
	dec e                                            ; $55ed: $1d
	ld b, $1d                                        ; $55ee: $06 $1d
	ld b, $20                                        ; $55f0: $06 $20
	inc c                                            ; $55f2: $0c
	ld e, $0c                                        ; $55f3: $1e $0c
	db $fd                                           ; $55f5: $fd
	cp [hl]                                          ; $55f6: $be
	inc c                                            ; $55f7: $0c

jr_031_55f8:
	rra                                              ; $55f8: $1f
	dec hl                                           ; $55f9: $2b
	jr nz, jr_031_5627                               ; $55fa: $20 $2b

	rra                                              ; $55fc: $1f
	dec hl                                           ; $55fd: $2b

jr_031_55fe:
	jr nz, jr_031_562b                               ; $55fe: $20 $2b

	cp [hl]                                          ; $5600: $be
	db $fd                                           ; $5601: $fd
	ret nc                                           ; $5602: $d0

	ld l, h                                          ; $5603: $6c
	cp $b5                                           ; $5604: $fe $b5
	sub c                                            ; $5606: $91
	ld bc, $0308                                     ; $5607: $01 $08 $03
	ld a, l                                          ; $560a: $7d
	nop                                              ; $560b: $00
	ld a, [hl]                                       ; $560c: $7e
	dec b                                            ; $560d: $05
	nop                                              ; $560e: $00
	and b                                            ; $560f: $a0
	ld hl, $b10a                                     ; $5610: $21 $0a $b1
	ld sp, $0000                                     ; $5613: $31 $00 $00
	ld hl, $d306                                     ; $5616: $21 $06 $d3
	jp $7e92                                         ; $5619: $c3 $92 $7e


	dec b                                            ; $561c: $05
	nop                                              ; $561d: $00
	and c                                            ; $561e: $a1
	ld hl, $250c                                     ; $561f: $21 $0c $25
	ld c, $c1                                        ; $5622: $0e $c1
	ld a, [hl]                                       ; $5624: $7e
	nop                                              ; $5625: $00
	dec h                                            ; $5626: $25

jr_031_5627:
	ld [bc], a                                       ; $5627: $02
	ld a, [hl]                                       ; $5628: $7e
	dec b                                            ; $5629: $05
	nop                                              ; $562a: $00

jr_031_562b:
	and b                                            ; $562b: $a0
	jp $0428                                         ; $562c: $c3 $28 $04


	or l                                             ; $562f: $b5
	sub c                                            ; $5630: $91
	ld bc, $0208                                     ; $5631: $01 $08 $02
	ld a, [hl]                                       ; $5634: $7e
	nop                                              ; $5635: $00
	ld hl, $c308                                     ; $5636: $21 $08 $c3
	ld hl, $b108                                     ; $5639: $21 $08 $b1
	add c                                            ; $563c: $81
	ld [$2304], sp                                   ; $563d: $08 $04 $23
	ld [$0825], sp                                   ; $5640: $08 $25 $08
	jp $0825                                         ; $5643: $c3 $25 $08


	ret                                              ; $5646: $c9


	ld a, [hl+]                                      ; $5647: $2a
	ld [$2ac3], sp                                   ; $5648: $08 $c3 $2a
	ld [$00c8], sp                                   ; $564b: $08 $c8 $00
	ld [$0828], sp                                   ; $564e: $08 $28 $08
	jp $0828                                         ; $5651: $c3 $28 $08


	ret z                                            ; $5654: $c8

	nop                                              ; $5655: $00
	ld [$0826], sp                                   ; $5656: $08 $26 $08
	jp $0826                                         ; $5659: $c3 $26 $08


	nop                                              ; $565c: $00
	ld [$81b1], sp                                   ; $565d: $08 $b1 $81
	jr jr_031_5669                                   ; $5660: $18 $07

	ld a, [hl]                                       ; $5662: $7e
	ld bc, $a00c                                     ; $5663: $01 $0c $a0
	dec h                                            ; $5666: $25
	jr jr_031_56e7                                   ; $5667: $18 $7e

jr_031_5669:
	nop                                              ; $5669: $00
	sub [hl]                                         ; $566a: $96
	ld [$2805], sp                                   ; $566b: $08 $05 $28
	ld [$28c3], sp                                   ; $566e: $08 $c3 $28
	ld [$0800], sp                                   ; $5671: $08 $00 $08
	or l                                             ; $5674: $b5
	add d                                            ; $5675: $82
	ld [bc], a                                       ; $5676: $02
	rst $38                                          ; $5677: $ff
	inc bc                                           ; $5678: $03
	ld a, [hl]                                       ; $5679: $7e
	dec b                                            ; $567a: $05
	nop                                              ; $567b: $00
	and c                                            ; $567c: $a1
	ld hl, $b108                                     ; $567d: $21 $08 $b1
	sub d                                            ; $5680: $92
	rst $38                                          ; $5681: $ff
	inc bc                                           ; $5682: $03
	dec h                                            ; $5683: $25
	ld c, $c2                                        ; $5684: $0e $c2
	ld a, [hl]                                       ; $5686: $7e
	nop                                              ; $5687: $00
	dec h                                            ; $5688: $25
	ld [bc], a                                       ; $5689: $02
	or c                                             ; $568a: $b1
	sub d                                            ; $568b: $92
	rst $38                                          ; $568c: $ff
	ld [bc], a                                       ; $568d: $02
	ld a, [hl]                                       ; $568e: $7e
	dec b                                            ; $568f: $05
	nop                                              ; $5690: $00
	and b                                            ; $5691: $a0
	jr z, @+$0a                                      ; $5692: $28 $08

	or l                                             ; $5694: $b5
	add c                                            ; $5695: $81
	ld bc, $0208                                     ; $5696: $01 $08 $02
	ld a, [hl]                                       ; $5699: $7e
	nop                                              ; $569a: $00
	ld hl, $c308                                     ; $569b: $21 $08 $c3
	ld hl, $b108                                     ; $569e: $21 $08 $b1
	add c                                            ; $56a1: $81
	ld [$2304], sp                                   ; $56a2: $08 $04 $23
	ld [$0825], sp                                   ; $56a5: $08 $25 $08
	jp $0825                                         ; $56a8: $c3 $25 $08


	ret z                                            ; $56ab: $c8

	add hl, hl                                       ; $56ac: $29
	ld [$29c3], sp                                   ; $56ad: $08 $c3 $29
	ld [$00c8], sp                                   ; $56b0: $08 $c8 $00
	ld [$0828], sp                                   ; $56b3: $08 $28 $08
	jp $0828                                         ; $56b6: $c3 $28 $08


	ret z                                            ; $56b9: $c8

	nop                                              ; $56ba: $00
	ld [$0823], sp                                   ; $56bb: $08 $23 $08
	jp $0823                                         ; $56be: $c3 $23 $08


	nop                                              ; $56c1: $00
	ld [$81b1], sp                                   ; $56c2: $08 $b1 $81
	jr @+$09                                         ; $56c5: $18 $07

	ld a, [hl]                                       ; $56c7: $7e
	ld bc, $a000                                     ; $56c8: $01 $00 $a0
	jr nz, jr_031_56eb                               ; $56cb: $20 $1e

	jp $007e                                         ; $56cd: $c3 $7e $00


	jr nz, jr_031_56d4                               ; $56d0: $20 $02

	or c                                             ; $56d2: $b1
	add c                                            ; $56d3: $81

jr_031_56d4:
	ld [$2104], sp                                   ; $56d4: $08 $04 $21
	ld [$21c3], sp                                   ; $56d7: $08 $c3 $21
	ld [$83b5], sp                                   ; $56da: $08 $b5 $83
	ld [bc], a                                       ; $56dd: $02
	nop                                              ; $56de: $00
	nop                                              ; $56df: $00
	ld a, [hl]                                       ; $56e0: $7e
	dec b                                            ; $56e1: $05
	nop                                              ; $56e2: $00
	and c                                            ; $56e3: $a1
	ld hl, $2508                                     ; $56e4: $21 $08 $25

jr_031_56e7:
	inc c                                            ; $56e7: $0c
	jp $007e                                         ; $56e8: $c3 $7e $00


jr_031_56eb:
	dec h                                            ; $56eb: $25
	inc b                                            ; $56ec: $04
	or c                                             ; $56ed: $b1
	add e                                            ; $56ee: $83
	ld [$7e05], sp                                   ; $56ef: $08 $05 $7e
	dec b                                            ; $56f2: $05
	nop                                              ; $56f3: $00
	and b                                            ; $56f4: $a0
	jr z, @+$0a                                      ; $56f5: $28 $08

	or l                                             ; $56f7: $b5
	add c                                            ; $56f8: $81
	ld bc, $0208                                     ; $56f9: $01 $08 $02
	ld a, [hl]                                       ; $56fc: $7e
	nop                                              ; $56fd: $00
	ld hl, $c308                                     ; $56fe: $21 $08 $c3
	ld hl, $b108                                     ; $5701: $21 $08 $b1
	add c                                            ; $5704: $81
	ld [$2304], sp                                   ; $5705: $08 $04 $23
	ld [$0825], sp                                   ; $5708: $08 $25 $08
	jp $0825                                         ; $570b: $c3 $25 $08


	ret z                                            ; $570e: $c8

	ld a, [hl+]                                      ; $570f: $2a
	ld [$2ac3], sp                                   ; $5710: $08 $c3 $2a
	ld [$00c8], sp                                   ; $5713: $08 $c8 $00
	ld [$0828], sp                                   ; $5716: $08 $28 $08
	jp $0828                                         ; $5719: $c3 $28 $08


	ret z                                            ; $571c: $c8

	nop                                              ; $571d: $00
	ld [$0826], sp                                   ; $571e: $08 $26 $08
	jp $0826                                         ; $5721: $c3 $26 $08


	nop                                              ; $5724: $00
	ld [$81b1], sp                                   ; $5725: $08 $b1 $81
	nop                                              ; $5728: $00
	nop                                              ; $5729: $00
	ld a, [hl]                                       ; $572a: $7e
	nop                                              ; $572b: $00
	dec h                                            ; $572c: $25
	ld e, $c3                                        ; $572d: $1e $c3
	dec h                                            ; $572f: $25
	ld [bc], a                                       ; $5730: $02
	or c                                             ; $5731: $b1
	pop bc                                           ; $5732: $c1
	ld [$2104], sp                                   ; $5733: $08 $04 $21
	ld [$21c3], sp                                   ; $5736: $08 $c3 $21
	ld [$92b5], sp                                   ; $5739: $08 $b5 $92
	ld [bc], a                                       ; $573c: $02
	ld [$7e07], sp                                   ; $573d: $08 $07 $7e
	dec b                                            ; $5740: $05
	nop                                              ; $5741: $00
	and c                                            ; $5742: $a1
	dec e                                            ; $5743: $1d
	ld [$92b1], sp                                   ; $5744: $08 $b1 $92
	nop                                              ; $5747: $00
	nop                                              ; $5748: $00
	ld hl, $c20c                                     ; $5749: $21 $0c $c2
	ld a, [hl]                                       ; $574c: $7e
	nop                                              ; $574d: $00
	ld hl, $b104                                     ; $574e: $21 $04 $b1
	add d                                            ; $5751: $82
	ld [$7e05], sp                                   ; $5752: $08 $05 $7e
	dec b                                            ; $5755: $05
	nop                                              ; $5756: $00
	xor d                                            ; $5757: $aa
	inc h                                            ; $5758: $24
	ld [$5d97], sp                                   ; $5759: $08 $97 $5d
	or l                                             ; $575c: $b5
	add c                                            ; $575d: $81
	ld [bc], a                                       ; $575e: $02
	nop                                              ; $575f: $00
	nop                                              ; $5760: $00
	ld a, [hl]                                       ; $5761: $7e
	nop                                              ; $5762: $00
	cp [hl]                                          ; $5763: $be
	ld [$151a], sp                                   ; $5764: $08 $1a $15
	ld a, [de]                                       ; $5767: $1a
	dec e                                            ; $5768: $1d
	ld a, [de]                                       ; $5769: $1a
	dec e                                            ; $576a: $1d
	cp [hl]                                          ; $576b: $be
	inc e                                            ; $576c: $1c
	ld [$0820], sp                                   ; $576d: $08 $20 $08
	sub a                                            ; $5770: $97
	ld c, [hl]                                       ; $5771: $4e
	cp [hl]                                          ; $5772: $be
	ld [$2623], sp                                   ; $5773: $08 $23 $26
	inc hl                                           ; $5776: $23
	ld h, $be                                        ; $5777: $26 $be
	sub a                                            ; $5779: $97
	ld e, [hl]                                       ; $577a: $5e
	inc hl                                           ; $577b: $23
	ld [$0829], sp                                   ; $577c: $08 $29 $08
	dec l                                            ; $577f: $2d
	ld [$6d97], sp                                   ; $5780: $08 $97 $6d
	inc l                                            ; $5783: $2c
	rla                                              ; $5784: $17
	sub a                                            ; $5785: $97
	nop                                              ; $5786: $00
	call nz, $012c                                   ; $5787: $c4 $2c $01
	pop de                                           ; $578a: $d1
	ret z                                            ; $578b: $c8

	sub d                                            ; $578c: $92
	sub a                                            ; $578d: $97
	nop                                              ; $578e: $00
	ld a, [hl]                                       ; $578f: $7e
	inc b                                            ; $5790: $04
	nop                                              ; $5791: $00
	xor c                                            ; $5792: $a9
	ld h, $28                                        ; $5793: $26 $28
	ld a, [hl]                                       ; $5795: $7e
	nop                                              ; $5796: $00
	or c                                             ; $5797: $b1
	ld sp, $0000                                     ; $5798: $31 $00 $00
	ld h, $08                                        ; $579b: $26 $08
	or c                                             ; $579d: $b1
	add c                                            ; $579e: $81
	db $10                                           ; $579f: $10
	rlca                                             ; $57a0: $07
	ld h, $10                                        ; $57a1: $26 $10
	sub [hl]                                         ; $57a3: $96
	ld [$2803], sp                                   ; $57a4: $08 $03 $28
	ld [$1096], sp                                   ; $57a7: $08 $96 $10
	rlca                                             ; $57aa: $07

jr_031_57ab:
	ld a, [hl+]                                      ; $57ab: $2a
	db $10                                           ; $57ac: $10
	sub [hl]                                         ; $57ad: $96
	ld [$2505], sp                                   ; $57ae: $08 $05 $25
	ld [$25c2], sp                                   ; $57b1: $08 $c2 $25
	ld [$0800], sp                                   ; $57b4: $08 $00 $08
	sub [hl]                                         ; $57b7: $96
	nop                                              ; $57b8: $00
	nop                                              ; $57b9: $00
	sub a                                            ; $57ba: $97
	ld l, h                                          ; $57bb: $6c
	ld a, [hl+]                                      ; $57bc: $2a
	ld [$0097], sp                                   ; $57bd: $08 $97 $00
	jp $082a                                         ; $57c0: $c3 $2a $08


	nop                                              ; $57c3: $00
	ld [$6c97], sp                                   ; $57c4: $08 $97 $6c
	inc l                                            ; $57c7: $2c
	ld [$97c3], sp                                   ; $57c8: $08 $c3 $97
	nop                                              ; $57cb: $00
	inc l                                            ; $57cc: $2c
	ld [$0800], sp                                   ; $57cd: $08 $00 $08
	sub a                                            ; $57d0: $97
	ld l, l                                          ; $57d1: $6d
	dec l                                            ; $57d2: $2d
	ld [$97c7], sp                                   ; $57d3: $08 $c7 $97
	nop                                              ; $57d6: $00
	dec l                                            ; $57d7: $2d
	db $10                                           ; $57d8: $10
	ld a, [hl]                                       ; $57d9: $7e
	nop                                              ; $57da: $00
	jp nz, $082d                                     ; $57db: $c2 $2d $08

	sub d                                            ; $57de: $92
	jp z, $2823                                      ; $57df: $ca $23 $28

	jp $0823                                         ; $57e2: $c3 $23 $08


	or c                                             ; $57e5: $b1
	pop bc                                           ; $57e6: $c1
	db $10                                           ; $57e7: $10
	rlca                                             ; $57e8: $07
	inc hl                                           ; $57e9: $23
	db $10                                           ; $57ea: $10
	sub [hl]                                         ; $57eb: $96
	ld [$2102], sp                                   ; $57ec: $08 $02 $21
	ld [$1096], sp                                   ; $57ef: $08 $96 $10
	rlca                                             ; $57f2: $07
	jr nz, jr_031_5805                               ; $57f3: $20 $10

	sub [hl]                                         ; $57f5: $96
	ld [$2103], sp                                   ; $57f6: $08 $03 $21
	ld [$c2b1], sp                                   ; $57f9: $08 $b1 $c2
	nop                                              ; $57fc: $00
	nop                                              ; $57fd: $00
	sub a                                            ; $57fe: $97
	ld e, [hl]                                       ; $57ff: $5e
	jr z, jr_031_5822                                ; $5800: $28 $20

	sub [hl]                                         ; $5802: $96
	nop                                              ; $5803: $00
	nop                                              ; $5804: $00

jr_031_5805:
	sub a                                            ; $5805: $97
	ld l, [hl]                                       ; $5806: $6e
	dec h                                            ; $5807: $25
	ld [$6e97], sp                                   ; $5808: $08 $97 $6e
	inc l                                            ; $580b: $2c
	ld [$5f97], sp                                   ; $580c: $08 $97 $5f
	dec l                                            ; $580f: $2d
	jr jr_031_583a                                   ; $5810: $18 $28

	jr jr_031_57ab                                   ; $5812: $18 $97

	nop                                              ; $5814: $00
	pop de                                           ; $5815: $d1
	ret                                              ; $5816: $c9


	sub c                                            ; $5817: $91
	ld a, l                                          ; $5818: $7d
	nop                                              ; $5819: $00
	ld a, [hl]                                       ; $581a: $7e
	inc bc                                           ; $581b: $03

jr_031_581c:
	nop                                              ; $581c: $00
	xor c                                            ; $581d: $a9
	ld hl, $c328                                     ; $581e: $21 $28 $c3
	ld a, [hl]                                       ; $5821: $7e

jr_031_5822:
	nop                                              ; $5822: $00
	ld hl, $b108                                     ; $5823: $21 $08 $b1
	sub c                                            ; $5826: $91
	db $10                                           ; $5827: $10
	rlca                                             ; $5828: $07
	ld a, [hl]                                       ; $5829: $7e
	inc bc                                           ; $582a: $03
	nop                                              ; $582b: $00
	xor c                                            ; $582c: $a9
	ld hl, $b110                                     ; $582d: $21 $10 $b1
	add c                                            ; $5830: $81
	ld [$7e05], sp                                   ; $5831: $08 $05 $7e
	nop                                              ; $5834: $00
	inc hl                                           ; $5835: $23
	ld [$71b1], sp                                   ; $5836: $08 $b1 $71

jr_031_5839:
	db $10                                           ; $5839: $10

jr_031_583a:
	rlca                                             ; $583a: $07
	ld h, $10                                        ; $583b: $26 $10
	sub [hl]                                         ; $583d: $96
	jr @+$09                                         ; $583e: $18 $07

	cp l                                             ; $5840: $bd
	ld [bc], a                                       ; $5841: $02
	dec h                                            ; $5842: $25
	ld [$9610], sp                                   ; $5843: $08 $10 $96
	ld [$2402], sp                                   ; $5846: $08 $02 $24
	ld [$0096], sp                                   ; $5849: $08 $96 $00
	nop                                              ; $584c: $00
	dec h                                            ; $584d: $25
	ld c, $c3                                        ; $584e: $0e $c3
	dec h                                            ; $5850: $25
	ld [bc], a                                       ; $5851: $02
	or c                                             ; $5852: $b1
	add c                                            ; $5853: $81
	nop                                              ; $5854: $00
	nop                                              ; $5855: $00
	ld a, [hl+]                                      ; $5856: $2a
	jr nz, jr_031_581c                               ; $5857: $20 $c3

	ld a, [hl+]                                      ; $5859: $2a
	ld [$0400], sp                                   ; $585a: $08 $00 $04
	or l                                             ; $585d: $b5
	ld d, c                                          ; $585e: $51
	ld bc, $0308                                     ; $585f: $01 $08 $03
	ld a, l                                          ; $5862: $7d
	ld [bc], a                                       ; $5863: $02
	ld a, [hl]                                       ; $5864: $7e
	dec b                                            ; $5865: $05
	nop                                              ; $5866: $00
	and b                                            ; $5867: $a0
	inc h                                            ; $5868: $24
	ld [$0429], sp                                   ; $5869: $08 $29 $04
	or c                                             ; $586c: $b1
	add c                                            ; $586d: $81
	nop                                              ; $586e: $00
	nop                                              ; $586f: $00
	ld a, [hl]                                       ; $5870: $7e
	ld bc, $a918                                     ; $5871: $01 $18 $a9
	add hl, hl                                       ; $5874: $29
	jr z, jr_031_5839                                ; $5875: $28 $c2

	add hl, hl                                       ; $5877: $29
	ld [$7ec9], sp                                   ; $5878: $08 $c9 $7e
	dec b                                            ; $587b: $05
	nop                                              ; $587c: $00
	xor c                                            ; $587d: $a9
	sub [hl]                                         ; $587e: $96
	db $10                                           ; $587f: $10
	rlca                                             ; $5880: $07
	add hl, hl                                       ; $5881: $29
	db $10                                           ; $5882: $10
	sub [hl]                                         ; $5883: $96
	ld [$2402], sp                                   ; $5884: $08 $02 $24
	ld [$1096], sp                                   ; $5887: $08 $96 $10
	rlca                                             ; $588a: $07
	ld hl, $9610                                     ; $588b: $21 $10 $96
	ld [$2002], sp                                   ; $588e: $08 $02 $20
	ld [$71b5], sp                                   ; $5891: $08 $b5 $71
	ld [bc], a                                       ; $5894: $02
	db $10                                           ; $5895: $10
	rlca                                             ; $5896: $07
	ld a, l                                          ; $5897: $7d
	ld [bc], a                                       ; $5898: $02
	ld a, [hl]                                       ; $5899: $7e
	dec b                                            ; $589a: $05
	nop                                              ; $589b: $00
	and d                                            ; $589c: $a2
	jr z, jr_031_58af                                ; $589d: $28 $10

	or c                                             ; $589f: $b1
	ld sp, $0508                                     ; $58a0: $31 $08 $05
	nop                                              ; $58a3: $00
	ld [bc], a                                       ; $58a4: $02
	ld a, [hl]                                       ; $58a5: $7e
	dec b                                            ; $58a6: $05
	nop                                              ; $58a7: $00
	and c                                            ; $58a8: $a1
	ld h, $08                                        ; $58a9: $26 $08
	sub [hl]                                         ; $58ab: $96
	db $10                                           ; $58ac: $10
	rlca                                             ; $58ad: $07
	inc hl                                           ; $58ae: $23

jr_031_58af:
	db $10                                           ; $58af: $10
	sub [hl]                                         ; $58b0: $96
	ld [$2005], sp                                   ; $58b1: $08 $05 $20
	ld [$1096], sp                                   ; $58b4: $08 $96 $10
	rlca                                             ; $58b7: $07
	inc e                                            ; $58b8: $1c
	db $10                                           ; $58b9: $10
	sub [hl]                                         ; $58ba: $96
	ld [$1e05], sp                                   ; $58bb: $08 $05 $1e
	ld [$1096], sp                                   ; $58be: $08 $96 $10
	rlca                                             ; $58c1: $07
	jr nz, @+$12                                     ; $58c2: $20 $10

	sub [hl]                                         ; $58c4: $96
	ld [$1c05], sp                                   ; $58c5: $08 $05 $1c
	ld b, $7e                                        ; $58c8: $06 $7e
	nop                                              ; $58ca: $00
	cp $ff                                           ; $58cb: $fe $ff
	ret nc                                           ; $58cd: $d0

	ld l, h                                          ; $58ce: $6c
	cp $b5                                           ; $58cf: $fe $b5
	or c                                             ; $58d1: $b1
	ld bc, $0308                                     ; $58d2: $01 $08 $03
	ld a, l                                          ; $58d5: $7d
	nop                                              ; $58d6: $00
	ld a, [hl]                                       ; $58d7: $7e
	dec b                                            ; $58d8: $05
	nop                                              ; $58d9: $00
	and b                                            ; $58da: $a0
	dec h                                            ; $58db: $25
	ld a, [bc]                                       ; $58dc: $0a
	or c                                             ; $58dd: $b1
	ld sp, $0000                                     ; $58de: $31 $00 $00
	dec h                                            ; $58e1: $25
	ld b, $d3                                        ; $58e2: $06 $d3
	ret                                              ; $58e4: $c9


	sub d                                            ; $58e5: $92
	ld a, [hl]                                       ; $58e6: $7e
	dec b                                            ; $58e7: $05
	nop                                              ; $58e8: $00
	and c                                            ; $58e9: $a1
	ld hl, $2508                                     ; $58ea: $21 $08 $25
	ld c, $c3                                        ; $58ed: $0e $c3
	ld a, [hl]                                       ; $58ef: $7e
	nop                                              ; $58f0: $00
	dec h                                            ; $58f1: $25
	ld [bc], a                                       ; $58f2: $02
	ld a, [hl]                                       ; $58f3: $7e
	dec b                                            ; $58f4: $05
	nop                                              ; $58f5: $00
	and b                                            ; $58f6: $a0
	ret                                              ; $58f7: $c9


	jr z, jr_031_5902                                ; $58f8: $28 $08

	or l                                             ; $58fa: $b5
	or c                                             ; $58fb: $b1
	ld bc, $0308                                     ; $58fc: $01 $08 $03
	ld a, [hl]                                       ; $58ff: $7e
	nop                                              ; $5900: $00
	dec h                                            ; $5901: $25

jr_031_5902:
	ld [$25c3], sp                                   ; $5902: $08 $c3 $25
	ld [$b1b1], sp                                   ; $5905: $08 $b1 $b1
	ld [$2604], sp                                   ; $5908: $08 $04 $26
	ld [$0828], sp                                   ; $590b: $08 $28 $08
	jp $0828                                         ; $590e: $c3 $28 $08


	call z, $0826                                    ; $5911: $cc $26 $08
	jp $0826                                         ; $5914: $c3 $26 $08


	call z, $0800                                    ; $5917: $cc $00 $08
	dec h                                            ; $591a: $25
	ld [$25c3], sp                                   ; $591b: $08 $c3 $25
	ld [$00cc], sp                                   ; $591e: $08 $cc $00
	ld [$0823], sp                                   ; $5921: $08 $23 $08
	jp $0823                                         ; $5924: $c3 $23 $08


	nop                                              ; $5927: $00
	ld [$c1b1], sp                                   ; $5928: $08 $b1 $c1
	jr jr_031_5934                                   ; $592b: $18 $07

	ld a, [hl]                                       ; $592d: $7e
	ld bc, $a00c                                     ; $592e: $01 $0c $a0
	ld hl, $7e18                                     ; $5931: $21 $18 $7e

jr_031_5934:
	nop                                              ; $5934: $00
	sub [hl]                                         ; $5935: $96
	ld [$2505], sp                                   ; $5936: $08 $05 $25
	ld [$25c3], sp                                   ; $5939: $08 $c3 $25
	ld [$0800], sp                                   ; $593c: $08 $00 $08
	or l                                             ; $593f: $b5
	ld d, c                                          ; $5940: $51
	ld [bc], a                                       ; $5941: $02
	rst $38                                          ; $5942: $ff
	inc b                                            ; $5943: $04
	add hl, sp                                       ; $5944: $39
	inc b                                            ; $5945: $04
	dec sp                                           ; $5946: $3b
	inc b                                            ; $5947: $04
	add hl, sp                                       ; $5948: $39
	ld [$31b1], sp                                   ; $5949: $08 $b1 $31
	nop                                              ; $594c: $00
	nop                                              ; $594d: $00
	add hl, sp                                       ; $594e: $39
	ld [$0800], sp                                   ; $594f: $08 $00 $08
	or l                                             ; $5952: $b5
	pop bc                                           ; $5953: $c1
	ld bc, $0608                                     ; $5954: $01 $08 $06
	dec h                                            ; $5957: $25
	ld [$25c3], sp                                   ; $5958: $08 $c3 $25
	ld [$26cc], sp                                   ; $595b: $08 $cc $26
	ld [$0828], sp                                   ; $595e: $08 $28 $08
	jp $0828                                         ; $5961: $c3 $28 $08


	jp z, $082d                                      ; $5964: $ca $2d $08

	jp $082d                                         ; $5967: $c3 $2d $08


	nop                                              ; $596a: $00
	ld [$2bca], sp                                   ; $596b: $08 $ca $2b
	ld [$2bc3], sp                                   ; $596e: $08 $c3 $2b
	ld [$00ca], sp                                   ; $5971: $08 $ca $00
	ld [$0828], sp                                   ; $5974: $08 $28 $08
	jp $0828                                         ; $5977: $c3 $28 $08


	nop                                              ; $597a: $00
	ld [$b1b1], sp                                   ; $597b: $08 $b1 $b1
	nop                                              ; $597e: $00
	nop                                              ; $597f: $00
	ld a, [hl]                                       ; $5980: $7e
	ld bc, $a900                                     ; $5981: $01 $00 $a9
	ld h, $1e                                        ; $5984: $26 $1e
	jp $007e                                         ; $5986: $c3 $7e $00


	ld h, $02                                        ; $5989: $26 $02
	or c                                             ; $598b: $b1
	pop bc                                           ; $598c: $c1
	ld [$2504], sp                                   ; $598d: $08 $04 $25
	ld [$25c3], sp                                   ; $5990: $08 $c3 $25
	ld [$2000], sp                                   ; $5993: $08 $00 $20
	or l                                             ; $5996: $b5
	pop bc                                           ; $5997: $c1
	ld bc, $0308                                     ; $5998: $01 $08 $03
	ld a, [hl]                                       ; $599b: $7e
	nop                                              ; $599c: $00
	dec h                                            ; $599d: $25
	ld [$25c3], sp                                   ; $599e: $08 $c3 $25
	ld [$26cc], sp                                   ; $59a1: $08 $cc $26
	ld [$0828], sp                                   ; $59a4: $08 $28 $08
	jp $0828                                         ; $59a7: $c3 $28 $08


	call z, $0826                                    ; $59aa: $cc $26 $08
	jp $0826                                         ; $59ad: $c3 $26 $08


	nop                                              ; $59b0: $00
	ld [$25cc], sp                                   ; $59b1: $08 $cc $25
	ld [$25c3], sp                                   ; $59b4: $08 $c3 $25
	ld [$00cc], sp                                   ; $59b7: $08 $cc $00
	ld [$0823], sp                                   ; $59ba: $08 $23 $08
	jp $0823                                         ; $59bd: $c3 $23 $08


	nop                                              ; $59c0: $00
	ld [$b1b1], sp                                   ; $59c1: $08 $b1 $b1
	nop                                              ; $59c4: $00
	nop                                              ; $59c5: $00
	ld hl, $c31e                                     ; $59c6: $21 $1e $c3
	ld hl, $b102                                     ; $59c9: $21 $02 $b1
	pop bc                                           ; $59cc: $c1
	ld [$2404], sp                                   ; $59cd: $08 $04 $24
	ld [$24c3], sp                                   ; $59d0: $08 $c3 $24
	ld [$2000], sp                                   ; $59d3: $08 $00 $20
	call z, $0824                                    ; $59d6: $cc $24 $08
	jp $0824                                         ; $59d9: $c3 $24 $08


	sla c                                            ; $59dc: $cb $21
	ld [$0824], sp                                   ; $59de: $08 $24 $08
	jp $0824                                         ; $59e1: $c3 $24 $08


	or c                                             ; $59e4: $b1
	pop bc                                           ; $59e5: $c1
	nop                                              ; $59e6: $00
	nop                                              ; $59e7: $00
	ld a, [hl]                                       ; $59e8: $7e
	ld bc, $a008                                     ; $59e9: $01 $08 $a0
	cp l                                             ; $59ec: $bd
	ld [bc], a                                       ; $59ed: $02
	inc hl                                           ; $59ee: $23
	ld [$9610], sp                                   ; $59ef: $08 $10 $96
	ld [$7e04], sp                                   ; $59f2: $08 $04 $7e
	nop                                              ; $59f5: $00
	ld [hl+], a                                      ; $59f6: $22
	ld [$1096], sp                                   ; $59f7: $08 $96 $10
	ld [bc], a                                       ; $59fa: $02
	inc hl                                           ; $59fb: $23
	db $10                                           ; $59fc: $10
	sub [hl]                                         ; $59fd: $96
	nop                                              ; $59fe: $00
	nop                                              ; $59ff: $00
	ld a, [hl]                                       ; $5a00: $7e
	ld bc, $a018                                     ; $5a01: $01 $18 $a0
	jr z, jr_031_5a24                                ; $5a04: $28 $1e

	jp $007e                                         ; $5a06: $c3 $7e $00


	jr z, jr_031_5a0d                                ; $5a09: $28 $02

	or c                                             ; $5a0b: $b1
	or c                                             ; $5a0c: $b1

jr_031_5a0d:
	rst $38                                          ; $5a0d: $ff
	rlca                                             ; $5a0e: $07
	ld a, [hl]                                       ; $5a0f: $7e
	ld bc, $a900                                     ; $5a10: $01 $00 $a9
	add hl, hl                                       ; $5a13: $29
	rla                                              ; $5a14: $17
	call nz, $007e                                   ; $5a15: $c4 $7e $00
	add hl, hl                                       ; $5a18: $29
	ld bc, $92c8                                     ; $5a19: $01 $c8 $92
	ld a, [hl]                                       ; $5a1c: $7e
	inc b                                            ; $5a1d: $04
	nop                                              ; $5a1e: $00
	xor c                                            ; $5a1f: $a9
	ld a, [hl+]                                      ; $5a20: $2a
	jr z, @+$80                                      ; $5a21: $28 $7e

	nop                                              ; $5a23: $00

jr_031_5a24:
	jp $082a                                         ; $5a24: $c3 $2a $08


	or c                                             ; $5a27: $b1
	add c                                            ; $5a28: $81
	db $10                                           ; $5a29: $10
	ld b, $2a                                        ; $5a2a: $06 $2a
	db $10                                           ; $5a2c: $10
	sub [hl]                                         ; $5a2d: $96
	ld [$2c02], sp                                   ; $5a2e: $08 $02 $2c
	ld [$1096], sp                                   ; $5a31: $08 $96 $10
	rlca                                             ; $5a34: $07
	dec l                                            ; $5a35: $2d
	db $10                                           ; $5a36: $10
	sub [hl]                                         ; $5a37: $96
	ld [$2804], sp                                   ; $5a38: $08 $04 $28
	ld [$28c3], sp                                   ; $5a3b: $08 $c3 $28
	ld [$0800], sp                                   ; $5a3e: $08 $00 $08
	sub [hl]                                         ; $5a41: $96
	nop                                              ; $5a42: $00
	nop                                              ; $5a43: $00
	sub a                                            ; $5a44: $97
	ld l, h                                          ; $5a45: $6c
	dec l                                            ; $5a46: $2d
	ld [$0097], sp                                   ; $5a47: $08 $97 $00
	jp $082d                                         ; $5a4a: $c3 $2d $08


	nop                                              ; $5a4d: $00
	ld [$6c97], sp                                   ; $5a4e: $08 $97 $6c
	cpl                                              ; $5a51: $2f
	ld [$97c3], sp                                   ; $5a52: $08 $c3 $97
	nop                                              ; $5a55: $00
	cpl                                              ; $5a56: $2f
	ld [$0800], sp                                   ; $5a57: $08 $00 $08
	sub a                                            ; $5a5a: $97
	ld l, l                                          ; $5a5b: $6d
	ld sp, $c708                                     ; $5a5c: $31 $08 $c7
	sub a                                            ; $5a5f: $97
	nop                                              ; $5a60: $00
	ld sp, $7e10                                     ; $5a61: $31 $10 $7e
	nop                                              ; $5a64: $00
	jp nz, $0831                                     ; $5a65: $c2 $31 $08

	ret z                                            ; $5a68: $c8

	ld h, $28                                        ; $5a69: $26 $28
	jp $0826                                         ; $5a6b: $c3 $26 $08


	or c                                             ; $5a6e: $b1
	add c                                            ; $5a6f: $81
	db $10                                           ; $5a70: $10
	rlca                                             ; $5a71: $07
	ld h, $10                                        ; $5a72: $26 $10
	sub [hl]                                         ; $5a74: $96
	ld [$2502], sp                                   ; $5a75: $08 $02 $25
	ld [$1096], sp                                   ; $5a78: $08 $96 $10

jr_031_5a7b:
	rlca                                             ; $5a7b: $07
	inc hl                                           ; $5a7c: $23
	db $10                                           ; $5a7d: $10
	sub [hl]                                         ; $5a7e: $96
	ld [$2503], sp                                   ; $5a7f: $08 $03 $25
	ld [$25c4], sp                                   ; $5a82: $08 $c4 $25
	ld [$0800], sp                                   ; $5a85: $08 $00 $08
	or l                                             ; $5a88: $b5
	add c                                            ; $5a89: $81
	nop                                              ; $5a8a: $00
	ld [$2d07], sp                                   ; $5a8b: $08 $07 $2d
	ld [$1096], sp                                   ; $5a8e: $08 $96 $10
	rlca                                             ; $5a91: $07
	cpl                                              ; $5a92: $2f
	db $10                                           ; $5a93: $10
	sub [hl]                                         ; $5a94: $96
	ld [$3007], sp                                   ; $5a95: $08 $07 $30
	ld [$057e], sp                                   ; $5a98: $08 $7e $05
	nop                                              ; $5a9b: $00
	xor c                                            ; $5a9c: $a9
	sub [hl]                                         ; $5a9d: $96
	db $10                                           ; $5a9e: $10
	rlca                                             ; $5a9f: $07
	ld sp, $7e10                                     ; $5aa0: $31 $10 $7e
	nop                                              ; $5aa3: $00
	sub [hl]                                         ; $5aa4: $96
	jr jr_031_5aae                                   ; $5aa5: $18 $07

	dec l                                            ; $5aa7: $2d
	jr @-$3b                                         ; $5aa8: $18 $c3

	dec l                                            ; $5aaa: $2d
	ld [$0096], sp                                   ; $5aab: $08 $96 $00

jr_031_5aae:
	nop                                              ; $5aae: $00
	ret z                                            ; $5aaf: $c8

	sub c                                            ; $5ab0: $91
	ld a, [hl]                                       ; $5ab1: $7e
	inc bc                                           ; $5ab2: $03

jr_031_5ab3:
	nop                                              ; $5ab3: $00
	xor c                                            ; $5ab4: $a9
	ld a, [hl+]                                      ; $5ab5: $2a
	jr z, jr_031_5a7b                                ; $5ab6: $28 $c3

	ld a, [hl]                                       ; $5ab8: $7e
	nop                                              ; $5ab9: $00
	ld a, [hl+]                                      ; $5aba: $2a
	ld [$81b1], sp                                   ; $5abb: $08 $b1 $81
	db $10                                           ; $5abe: $10
	rlca                                             ; $5abf: $07
	ld a, [hl]                                       ; $5ac0: $7e
	inc bc                                           ; $5ac1: $03
	nop                                              ; $5ac2: $00
	xor c                                            ; $5ac3: $a9
	ld a, [hl+]                                      ; $5ac4: $2a
	db $10                                           ; $5ac5: $10
	or c                                             ; $5ac6: $b1
	add c                                            ; $5ac7: $81
	ld [$7e02], sp                                   ; $5ac8: $08 $02 $7e
	nop                                              ; $5acb: $00
	inc l                                            ; $5acc: $2c

jr_031_5acd:
	ld [$1096], sp                                   ; $5acd: $08 $96 $10
	rlca                                             ; $5ad0: $07
	dec l                                            ; $5ad1: $2d
	db $10                                           ; $5ad2: $10
	or c                                             ; $5ad3: $b1
	sub c                                            ; $5ad4: $91
	rst $38                                          ; $5ad5: $ff
	ld b, $bd                                        ; $5ad6: $06 $bd
	ld [bc], a                                       ; $5ad8: $02
	jr z, jr_031_5ae3                                ; $5ad9: $28 $08

	db $10                                           ; $5adb: $10
	sub [hl]                                         ; $5adc: $96
	ld [$2a02], sp                                   ; $5add: $08 $02 $2a
	ld [$0096], sp                                   ; $5ae0: $08 $96 $00

jr_031_5ae3:
	nop                                              ; $5ae3: $00
	jr z, jr_031_5af4                                ; $5ae4: $28 $0e

	jp $0228                                         ; $5ae6: $c3 $28 $02


	or c                                             ; $5ae9: $b1
	add c                                            ; $5aea: $81
	nop                                              ; $5aeb: $00
	nop                                              ; $5aec: $00
	dec l                                            ; $5aed: $2d
	jr nz, jr_031_5ab3                               ; $5aee: $20 $c3

	dec l                                            ; $5af0: $2d
	ld [$91b5], sp                                   ; $5af1: $08 $b5 $91

jr_031_5af4:
	ld bc, $0308                                     ; $5af4: $01 $08 $03
	ld a, [hl]                                       ; $5af7: $7e
	dec b                                            ; $5af8: $05
	nop                                              ; $5af9: $00
	xor c                                            ; $5afa: $a9
	inc h                                            ; $5afb: $24
	ld [$0829], sp                                   ; $5afc: $08 $29 $08
	or c                                             ; $5aff: $b1
	add c                                            ; $5b00: $81
	nop                                              ; $5b01: $00
	nop                                              ; $5b02: $00
	ld a, [hl]                                       ; $5b03: $7e
	ld bc, $a918                                     ; $5b04: $01 $18 $a9
	dec l                                            ; $5b07: $2d
	jr z, jr_031_5acd                                ; $5b08: $28 $c3

	dec l                                            ; $5b0a: $2d
	ld [$81b1], sp                                   ; $5b0b: $08 $b1 $81
	db $10                                           ; $5b0e: $10
	rlca                                             ; $5b0f: $07
	ld a, [hl]                                       ; $5b10: $7e
	dec b                                            ; $5b11: $05
	nop                                              ; $5b12: $00
	xor c                                            ; $5b13: $a9
	dec l                                            ; $5b14: $2d
	db $10                                           ; $5b15: $10
	sub [hl]                                         ; $5b16: $96
	ld [$2b02], sp                                   ; $5b17: $08 $02 $2b
	ld [$1096], sp                                   ; $5b1a: $08 $96 $10
	rlca                                             ; $5b1d: $07
	add hl, hl                                       ; $5b1e: $29
	db $10                                           ; $5b1f: $10
	sub [hl]                                         ; $5b20: $96
	jr @+$05                                         ; $5b21: $18 $03

	jr z, @+$0a                                      ; $5b23: $28 $08

	call nz, $1028                                   ; $5b25: $c4 $28 $10
	or l                                             ; $5b28: $b5
	add c                                            ; $5b29: $81
	ld [bc], a                                       ; $5b2a: $02
	ld [$7e04], sp                                   ; $5b2b: $08 $04 $7e
	dec b                                            ; $5b2e: $05
	nop                                              ; $5b2f: $00
	and d                                            ; $5b30: $a2
	ld h, $08                                        ; $5b31: $26 $08
	sub [hl]                                         ; $5b33: $96
	db $10                                           ; $5b34: $10
	ld b, $23                                        ; $5b35: $06 $23
	db $10                                           ; $5b37: $10
	sub [hl]                                         ; $5b38: $96
	ld [$2004], sp                                   ; $5b39: $08 $04 $20
	ld [$1096], sp                                   ; $5b3c: $08 $96 $10
	ld b, $1c                                        ; $5b3f: $06 $1c
	db $10                                           ; $5b41: $10
	sub [hl]                                         ; $5b42: $96
	ld [$1e04], sp                                   ; $5b43: $08 $04 $1e
	ld [$1096], sp                                   ; $5b46: $08 $96 $10
	ld b, $20                                        ; $5b49: $06 $20
	db $10                                           ; $5b4b: $10
	sub [hl]                                         ; $5b4c: $96
	ld [$1c04], sp                                   ; $5b4d: $08 $04 $1c
	ld [$007e], sp                                   ; $5b50: $08 $7e $00
	cp $ff                                           ; $5b53: $fe $ff
	ret nc                                           ; $5b55: $d0

	ld l, h                                          ; $5b56: $6c
	cp $c2                                           ; $5b57: $fe $c2
	ld a, a                                          ; $5b59: $7f
	rla                                              ; $5b5a: $17
	ld a, l                                          ; $5b5b: $7d
	nop                                              ; $5b5c: $00
	ld a, [hl]                                       ; $5b5d: $7e
	nop                                              ; $5b5e: $00
	dec d                                            ; $5b5f: $15
	ld [$15c6], sp                                   ; $5b60: $08 $c6 $15
	inc b                                            ; $5b63: $04
	nop                                              ; $5b64: $00
	inc c                                            ; $5b65: $0c
	jp nz, $0819                                     ; $5b66: $c2 $19 $08

	add $19                                          ; $5b69: $c6 $19
	inc b                                            ; $5b6b: $04
	nop                                              ; $5b6c: $00
	inc c                                            ; $5b6d: $0c
	jp nz, $081c                                     ; $5b6e: $c2 $1c $08

	add $1c                                          ; $5b71: $c6 $1c
	inc b                                            ; $5b73: $04
	nop                                              ; $5b74: $00
	inc c                                            ; $5b75: $0c
	jp nz, $0819                                     ; $5b76: $c2 $19 $08

	add $19                                          ; $5b79: $c6 $19
	inc b                                            ; $5b7b: $04
	nop                                              ; $5b7c: $00
	inc c                                            ; $5b7d: $0c
	jp nz, $057e                                     ; $5b7e: $c2 $7e $05

	nop                                              ; $5b81: $00
	and d                                            ; $5b82: $a2
	ld c, $0e                                        ; $5b83: $0e $0e
	ld a, [hl]                                       ; $5b85: $7e
	nop                                              ; $5b86: $00
	add $0e                                          ; $5b87: $c6 $0e
	ld [bc], a                                       ; $5b89: $02
	jp nz, $0612                                     ; $5b8a: $c2 $12 $06

	add $12                                          ; $5b8d: $c6 $12
	ld [bc], a                                       ; $5b8f: $02
	jp nz, $0f15                                     ; $5b90: $c2 $15 $0f

	nop                                              ; $5b93: $00
	ld bc, $1610                                     ; $5b94: $01 $10 $16
	add $10                                          ; $5b97: $c6 $10
	ld [bc], a                                       ; $5b99: $02
	jp nz, $0614                                     ; $5b9a: $c2 $14 $06

	add $14                                          ; $5b9d: $c6 $14
	ld [bc], a                                       ; $5b9f: $02
	jp nz, $1617                                     ; $5ba0: $c2 $17 $16

	add $17                                          ; $5ba3: $c6 $17
	ld [bc], a                                       ; $5ba5: $02
	jp nz, $0815                                     ; $5ba6: $c2 $15 $08

	add $15                                          ; $5ba9: $c6 $15
	inc b                                            ; $5bab: $04
	nop                                              ; $5bac: $00
	inc c                                            ; $5bad: $0c
	jp nz, $0819                                     ; $5bae: $c2 $19 $08

	add $19                                          ; $5bb1: $c6 $19
	inc b                                            ; $5bb3: $04
	nop                                              ; $5bb4: $00
	inc c                                            ; $5bb5: $0c
	jp nz, $081c                                     ; $5bb6: $c2 $1c $08

	add $1c                                          ; $5bb9: $c6 $1c
	inc b                                            ; $5bbb: $04
	nop                                              ; $5bbc: $00
	inc c                                            ; $5bbd: $0c
	jp nz, $0819                                     ; $5bbe: $c2 $19 $08

	add $19                                          ; $5bc1: $c6 $19
	inc b                                            ; $5bc3: $04
	nop                                              ; $5bc4: $00
	inc c                                            ; $5bc5: $0c
	jp nz, $0e11                                     ; $5bc6: $c2 $11 $0e

	add $11                                          ; $5bc9: $c6 $11
	ld [bc], a                                       ; $5bcb: $02
	jp nz, $0615                                     ; $5bcc: $c2 $15 $06

	add $15                                          ; $5bcf: $c6 $15
	ld [bc], a                                       ; $5bd1: $02
	jp nz, $0e18                                     ; $5bd2: $c2 $18 $0e

	nop                                              ; $5bd5: $00
	ld [bc], a                                       ; $5bd6: $02
	db $10                                           ; $5bd7: $10
	ld d, $c6                                        ; $5bd8: $16 $c6
	db $10                                           ; $5bda: $10
	ld [bc], a                                       ; $5bdb: $02
	jp nz, $0614                                     ; $5bdc: $c2 $14 $06

	add $14                                          ; $5bdf: $c6 $14
	ld [bc], a                                       ; $5be1: $02
	jp nz, $1717                                     ; $5be2: $c2 $17 $17

	nop                                              ; $5be5: $00
	ld bc, $15c2                                     ; $5be6: $01 $c2 $15
	ld [$15c6], sp                                   ; $5be9: $08 $c6 $15
	inc b                                            ; $5bec: $04
	nop                                              ; $5bed: $00
	inc c                                            ; $5bee: $0c
	jp nz, $0819                                     ; $5bef: $c2 $19 $08

	add $19                                          ; $5bf2: $c6 $19
	inc b                                            ; $5bf4: $04
	nop                                              ; $5bf5: $00
	inc c                                            ; $5bf6: $0c
	jp nz, $081c                                     ; $5bf7: $c2 $1c $08

	add $1c                                          ; $5bfa: $c6 $1c
	inc b                                            ; $5bfc: $04
	nop                                              ; $5bfd: $00
	inc c                                            ; $5bfe: $0c
	jp nz, $0819                                     ; $5bff: $c2 $19 $08

	add $19                                          ; $5c02: $c6 $19
	inc b                                            ; $5c04: $04
	nop                                              ; $5c05: $00
	inc c                                            ; $5c06: $0c
	jp nz, $0e0e                                     ; $5c07: $c2 $0e $0e

	add $0e                                          ; $5c0a: $c6 $0e
	ld [bc], a                                       ; $5c0c: $02
	jp nz, $0612                                     ; $5c0d: $c2 $12 $06

	add $12                                          ; $5c10: $c6 $12
	ld [bc], a                                       ; $5c12: $02
	jp nz, $0f15                                     ; $5c13: $c2 $15 $0f

	nop                                              ; $5c16: $00
	ld bc, $1610                                     ; $5c17: $01 $10 $16
	add $10                                          ; $5c1a: $c6 $10
	ld [bc], a                                       ; $5c1c: $02
	jp nz, $0614                                     ; $5c1d: $c2 $14 $06

	add $14                                          ; $5c20: $c6 $14
	ld [bc], a                                       ; $5c22: $02
	jp nz, $1617                                     ; $5c23: $c2 $17 $16

	add $17                                          ; $5c26: $c6 $17
	ld [bc], a                                       ; $5c28: $02
	jp nz, $0811                                     ; $5c29: $c2 $11 $08

	add $11                                          ; $5c2c: $c6 $11
	inc b                                            ; $5c2e: $04
	nop                                              ; $5c2f: $00
	inc c                                            ; $5c30: $0c
	jp nz, $0815                                     ; $5c31: $c2 $15 $08

	add $15                                          ; $5c34: $c6 $15
	inc b                                            ; $5c36: $04
	nop                                              ; $5c37: $00
	inc c                                            ; $5c38: $0c
	jp nz, $0818                                     ; $5c39: $c2 $18 $08

	add $18                                          ; $5c3c: $c6 $18
	inc b                                            ; $5c3e: $04
	nop                                              ; $5c3f: $00
	inc c                                            ; $5c40: $0c
	jp nz, $0815                                     ; $5c41: $c2 $15 $08

	add $15                                          ; $5c44: $c6 $15
	inc b                                            ; $5c46: $04
	nop                                              ; $5c47: $00
	inc c                                            ; $5c48: $0c
	jp nz, $0e10                                     ; $5c49: $c2 $10 $0e

	add $10                                          ; $5c4c: $c6 $10
	ld [bc], a                                       ; $5c4e: $02
	jp nz, $0614                                     ; $5c4f: $c2 $14 $06

	add $14                                          ; $5c52: $c6 $14
	ld [bc], a                                       ; $5c54: $02
	jp nz, $0f17                                     ; $5c55: $c2 $17 $0f

	nop                                              ; $5c58: $00
	ld bc, $1614                                     ; $5c59: $01 $14 $16
	add $14                                          ; $5c5c: $c6 $14
	ld [bc], a                                       ; $5c5e: $02
	jp nz, $0617                                     ; $5c5f: $c2 $17 $06

	add $17                                          ; $5c62: $c6 $17
	ld [bc], a                                       ; $5c64: $02
	jp nz, $057e                                     ; $5c65: $c2 $7e $05

	nop                                              ; $5c68: $00
	and b                                            ; $5c69: $a0
	add hl, de                                       ; $5c6a: $19
	ld d, $7e                                        ; $5c6b: $16 $7e
	nop                                              ; $5c6d: $00
	add $19                                          ; $5c6e: $c6 $19
	ld [bc], a                                       ; $5c70: $02
	jp nz, $177f                                     ; $5c71: $c2 $7f $17

	ld c, $08                                        ; $5c74: $0e $08
	add $0e                                          ; $5c76: $c6 $0e
	inc b                                            ; $5c78: $04
	nop                                              ; $5c79: $00
	inc c                                            ; $5c7a: $0c
	jp nz, $0812                                     ; $5c7b: $c2 $12 $08

	add $12                                          ; $5c7e: $c6 $12
	inc b                                            ; $5c80: $04
	nop                                              ; $5c81: $00
	inc c                                            ; $5c82: $0c
	jp nz, $0815                                     ; $5c83: $c2 $15 $08

	add $15                                          ; $5c86: $c6 $15
	inc b                                            ; $5c88: $04
	nop                                              ; $5c89: $00
	inc c                                            ; $5c8a: $0c
	jp nz, $080e                                     ; $5c8b: $c2 $0e $08

	add $0e                                          ; $5c8e: $c6 $0e
	inc b                                            ; $5c90: $04
	nop                                              ; $5c91: $00
	inc c                                            ; $5c92: $0c
	jp nz, $0e15                                     ; $5c93: $c2 $15 $0e

	add $15                                          ; $5c96: $c6 $15
	ld [bc], a                                       ; $5c98: $02
	jp nz, $0417                                     ; $5c99: $c2 $17 $04

	add $17                                          ; $5c9c: $c6 $17
	inc b                                            ; $5c9e: $04
	jp nz, $0810                                     ; $5c9f: $c2 $10 $08

	add $10                                          ; $5ca2: $c6 $10
	ld [$12c2], sp                                   ; $5ca4: $08 $c2 $12
	ld d, $c6                                        ; $5ca7: $16 $c6
	ld [de], a                                       ; $5ca9: $12
	ld [bc], a                                       ; $5caa: $02
	jp nz, $0614                                     ; $5cab: $c2 $14 $06

	add $14                                          ; $5cae: $c6 $14
	ld [bc], a                                       ; $5cb0: $02
	jp nz, $1715                                     ; $5cb1: $c2 $15 $17

	nop                                              ; $5cb4: $00
	ld bc, $0ec2                                     ; $5cb5: $01 $c2 $0e
	ld c, $c6                                        ; $5cb8: $0e $c6
	ld c, $02                                        ; $5cba: $0e $02
	jp nz, $0612                                     ; $5cbc: $c2 $12 $06

	add $12                                          ; $5cbf: $c6 $12
	ld [bc], a                                       ; $5cc1: $02
	jp nz, $0e15                                     ; $5cc2: $c2 $15 $0e

	add $15                                          ; $5cc5: $c6 $15
	ld [bc], a                                       ; $5cc7: $02
	jp nz, $161a                                     ; $5cc8: $c2 $1a $16

	add $1a                                          ; $5ccb: $c6 $1a
	ld [bc], a                                       ; $5ccd: $02
	jp nz, $0619                                     ; $5cce: $c2 $19 $06

	add $19                                          ; $5cd1: $c6 $19
	ld [bc], a                                       ; $5cd3: $02
	jp nz, $0e17                                     ; $5cd4: $c2 $17 $0e

	add $17                                          ; $5cd7: $c6 $17
	ld [bc], a                                       ; $5cd9: $02
	jp nz, $0715                                     ; $5cda: $c2 $15 $07

	nop                                              ; $5cdd: $00
	ld bc, $0e09                                     ; $5cde: $01 $09 $0e
	nop                                              ; $5ce1: $00
	ld [bc], a                                       ; $5ce2: $02
	dec d                                            ; $5ce3: $15
	inc b                                            ; $5ce4: $04
	add $15                                          ; $5ce5: $c6 $15
	inc b                                            ; $5ce7: $04
	jp nz, $0e0b                                     ; $5ce8: $c2 $0b $0e

	nop                                              ; $5ceb: $00
	ld [bc], a                                       ; $5cec: $02
	rla                                              ; $5ced: $17
	inc b                                            ; $5cee: $04
	add $17                                          ; $5cef: $c6 $17
	inc b                                            ; $5cf1: $04
	jp nz, $0e0c                                     ; $5cf2: $c2 $0c $0e

	nop                                              ; $5cf5: $00
	ld [bc], a                                       ; $5cf6: $02
	jr @+$06                                         ; $5cf7: $18 $04

	add $18                                          ; $5cf9: $c6 $18
	inc b                                            ; $5cfb: $04
	jp nz, $0e0d                                     ; $5cfc: $c2 $0d $0e

	nop                                              ; $5cff: $00
	ld [bc], a                                       ; $5d00: $02
	add hl, de                                       ; $5d01: $19
	inc b                                            ; $5d02: $04
	add $19                                          ; $5d03: $c6 $19
	inc b                                            ; $5d05: $04
	jp nz, Jump_031_7fc2                             ; $5d06: $c2 $c2 $7f

	rla                                              ; $5d09: $17
	ld c, $08                                        ; $5d0a: $0e $08
	add $0e                                          ; $5d0c: $c6 $0e
	inc b                                            ; $5d0e: $04
	nop                                              ; $5d0f: $00
	inc c                                            ; $5d10: $0c
	jp nz, $0812                                     ; $5d11: $c2 $12 $08

	add $12                                          ; $5d14: $c6 $12
	inc b                                            ; $5d16: $04
	nop                                              ; $5d17: $00
	inc c                                            ; $5d18: $0c
	jp nz, $0815                                     ; $5d19: $c2 $15 $08

	add $15                                          ; $5d1c: $c6 $15
	inc b                                            ; $5d1e: $04
	nop                                              ; $5d1f: $00
	inc c                                            ; $5d20: $0c
	jp nz, $057e                                     ; $5d21: $c2 $7e $05

	nop                                              ; $5d24: $00
	and c                                            ; $5d25: $a1
	ld [de], a                                       ; $5d26: $12
	ld d, $c6                                        ; $5d27: $16 $c6
	ld a, [hl]                                       ; $5d29: $7e
	nop                                              ; $5d2a: $00
	ld [de], a                                       ; $5d2b: $12
	ld [bc], a                                       ; $5d2c: $02
	jp nz, $0e15                                     ; $5d2d: $c2 $15 $0e

	add $15                                          ; $5d30: $c6 $15
	ld [bc], a                                       ; $5d32: $02
	jp nz, $0619                                     ; $5d33: $c2 $19 $06

	add $19                                          ; $5d36: $c6 $19
	ld [bc], a                                       ; $5d38: $02
	jp nz, $0e10                                     ; $5d39: $c2 $10 $0e

	add $10                                          ; $5d3c: $c6 $10
	ld [bc], a                                       ; $5d3e: $02
	jp nz, $1612                                     ; $5d3f: $c2 $12 $16

	add $12                                          ; $5d42: $c6 $12
	ld [bc], a                                       ; $5d44: $02
	jp nz, $0615                                     ; $5d45: $c2 $15 $06

	add $15                                          ; $5d48: $c6 $15
	ld [bc], a                                       ; $5d4a: $02
	jp nz, $1719                                     ; $5d4b: $c2 $19 $17

	nop                                              ; $5d4e: $00
	ld bc, $11c2                                     ; $5d4f: $01 $c2 $11
	ld [$11c6], sp                                   ; $5d52: $08 $c6 $11
	inc b                                            ; $5d55: $04
	nop                                              ; $5d56: $00
	inc c                                            ; $5d57: $0c
	jp nz, $0815                                     ; $5d58: $c2 $15 $08

	add $15                                          ; $5d5b: $c6 $15
	inc b                                            ; $5d5d: $04
	nop                                              ; $5d5e: $00
	inc c                                            ; $5d5f: $0c
	jp nz, $0818                                     ; $5d60: $c2 $18 $08

	add $18                                          ; $5d63: $c6 $18
	inc b                                            ; $5d65: $04
	nop                                              ; $5d66: $00
	inc c                                            ; $5d67: $0c
	jp nz, $0815                                     ; $5d68: $c2 $15 $08

	add $15                                          ; $5d6b: $c6 $15
	inc b                                            ; $5d6d: $04
	nop                                              ; $5d6e: $00
	inc c                                            ; $5d6f: $0c
	jp nz, $0810                                     ; $5d70: $c2 $10 $08

	rla                                              ; $5d73: $17
	ld [bc], a                                       ; $5d74: $02
	nop                                              ; $5d75: $00
	ld bc, $17c6                                     ; $5d76: $01 $c6 $17
	dec b                                            ; $5d79: $05
	jp nz, $0810                                     ; $5d7a: $c2 $10 $08

	ld [de], a                                       ; $5d7d: $12
	ld [$0217], sp                                   ; $5d7e: $08 $17 $02
	nop                                              ; $5d81: $00
	ld bc, $17c6                                     ; $5d82: $01 $c6 $17
	dec b                                            ; $5d85: $05
	jp nz, $0812                                     ; $5d86: $c2 $12 $08

	inc de                                           ; $5d89: $13
	ld [$021c], sp                                   ; $5d8a: $08 $1c $02
	nop                                              ; $5d8d: $00
	ld bc, $1cc6                                     ; $5d8e: $01 $c6 $1c
	dec b                                            ; $5d91: $05
	jp nz, $0813                                     ; $5d92: $c2 $13 $08

	inc d                                            ; $5d95: $14
	ld [$021c], sp                                   ; $5d96: $08 $1c $02
	nop                                              ; $5d99: $00
	ld bc, $1cc6                                     ; $5d9a: $01 $c6 $1c
	dec b                                            ; $5d9d: $05
	jp nz, $0814                                     ; $5d9e: $c2 $14 $08

	cp $ff                                           ; $5da1: $fe $ff
	ret nc                                           ; $5da3: $d0

	ld l, h                                          ; $5da4: $6c
	cp $14                                           ; $5da5: $fe $14
	jr @+$0f                                         ; $5da7: $18 $0d

	db $10                                           ; $5da9: $10
	cp [hl]                                          ; $5daa: $be
	ld [$0912], sp                                   ; $5dab: $08 $12 $09
	nop                                              ; $5dae: $00
	ld [de], a                                       ; $5daf: $12
	cp [hl]                                          ; $5db0: $be
	dec c                                            ; $5db1: $0d
	db $10                                           ; $5db2: $10
	ld [de], a                                       ; $5db3: $12
	ld [$1009], sp                                   ; $5db4: $08 $09 $10
	ld [de], a                                       ; $5db7: $12
	ld [$100d], sp                                   ; $5db8: $08 $0d $10
	cp [hl]                                          ; $5dbb: $be
	ld [$0912], sp                                   ; $5dbc: $08 $12 $09
	jr @+$14                                         ; $5dbf: $18 $12

	cp [hl]                                          ; $5dc1: $be
	dec c                                            ; $5dc2: $0d
	db $10                                           ; $5dc3: $10
	ld [de], a                                       ; $5dc4: $12
	ld [$1009], sp                                   ; $5dc5: $08 $09 $10
	ld [de], a                                       ; $5dc8: $12
	ld [$100d], sp                                   ; $5dc9: $08 $0d $10
	ld [de], a                                       ; $5dcc: $12
	ld [$1009], sp                                   ; $5dcd: $08 $09 $10
	ld [de], a                                       ; $5dd0: $12
	ld [$100d], sp                                   ; $5dd1: $08 $0d $10
	ld [de], a                                       ; $5dd4: $12
	ld [$1009], sp                                   ; $5dd5: $08 $09 $10
	ld [de], a                                       ; $5dd8: $12
	ld [$100d], sp                                   ; $5dd9: $08 $0d $10
	ld [de], a                                       ; $5ddc: $12
	ld [$1009], sp                                   ; $5ddd: $08 $09 $10
	jr @+$0a                                         ; $5de0: $18 $08

	dec c                                            ; $5de2: $0d
	db $10                                           ; $5de3: $10
	ld [de], a                                       ; $5de4: $12
	ld [$1009], sp                                   ; $5de5: $08 $09 $10
	ld [de], a                                       ; $5de8: $12
	ld [$100d], sp                                   ; $5de9: $08 $0d $10
	ld [de], a                                       ; $5dec: $12
	ld [$1009], sp                                   ; $5ded: $08 $09 $10
	ld [de], a                                       ; $5df0: $12
	ld [$100d], sp                                   ; $5df1: $08 $0d $10
	ld [de], a                                       ; $5df4: $12
	ld [$1009], sp                                   ; $5df5: $08 $09 $10
	ld [de], a                                       ; $5df8: $12
	ld [$100d], sp                                   ; $5df9: $08 $0d $10
	cp [hl]                                          ; $5dfc: $be
	ld [$0912], sp                                   ; $5dfd: $08 $12 $09
	jr @+$10                                         ; $5e00: $18 $0e

	cp [hl]                                          ; $5e02: $be
	dec c                                            ; $5e03: $0d
	db $10                                           ; $5e04: $10
	ld [de], a                                       ; $5e05: $12
	ld [$1009], sp                                   ; $5e06: $08 $09 $10
	ld [de], a                                       ; $5e09: $12
	ld [$100d], sp                                   ; $5e0a: $08 $0d $10
	ld [de], a                                       ; $5e0d: $12
	ld [$1009], sp                                   ; $5e0e: $08 $09 $10
	ld c, $08                                        ; $5e11: $0e $08
	dec c                                            ; $5e13: $0d
	db $10                                           ; $5e14: $10
	ld [de], a                                       ; $5e15: $12
	ld [$1018], sp                                   ; $5e16: $08 $18 $10
	ld c, $08                                        ; $5e19: $0e $08
	dec c                                            ; $5e1b: $0d
	db $10                                           ; $5e1c: $10
	ld [de], a                                       ; $5e1d: $12
	ld [$100d], sp                                   ; $5e1e: $08 $0d $10
	ld c, $08                                        ; $5e21: $0e $08
	inc d                                            ; $5e23: $14
	jr jr_031_5e3a                                   ; $5e24: $18 $14

	jr jr_031_5e35                                   ; $5e26: $18 $0d

	db $10                                           ; $5e28: $10
	ld [de], a                                       ; $5e29: $12
	ld [$1009], sp                                   ; $5e2a: $08 $09 $10
	ld [de], a                                       ; $5e2d: $12
	ld [$100d], sp                                   ; $5e2e: $08 $0d $10
	ld [de], a                                       ; $5e31: $12
	ld [$1009], sp                                   ; $5e32: $08 $09 $10

jr_031_5e35:
	ld c, $08                                        ; $5e35: $0e $08
	dec c                                            ; $5e37: $0d
	db $10                                           ; $5e38: $10
	ld [de], a                                       ; $5e39: $12

jr_031_5e3a:
	ld [$1009], sp                                   ; $5e3a: $08 $09 $10
	cp [hl]                                          ; $5e3d: $be
	ld [$0d12], sp                                   ; $5e3e: $08 $12 $0d
	ld [de], a                                       ; $5e41: $12
	ld c, $be                                        ; $5e42: $0e $be
	add hl, bc                                       ; $5e44: $09
	db $10                                           ; $5e45: $10
	ld [de], a                                       ; $5e46: $12
	ld [$100d], sp                                   ; $5e47: $08 $0d $10
	ld [de], a                                       ; $5e4a: $12
	ld [$1009], sp                                   ; $5e4b: $08 $09 $10
	ld [de], a                                       ; $5e4e: $12
	ld [$100d], sp                                   ; $5e4f: $08 $0d $10
	ld [de], a                                       ; $5e52: $12
	ld [$1009], sp                                   ; $5e53: $08 $09 $10
	jr jr_031_5e60                                   ; $5e56: $18 $08

	dec c                                            ; $5e58: $0d
	db $10                                           ; $5e59: $10
	jr jr_031_5e64                                   ; $5e5a: $18 $08

	add hl, bc                                       ; $5e5c: $09
	db $10                                           ; $5e5d: $10
	jr @+$0a                                         ; $5e5e: $18 $08

jr_031_5e60:
	dec c                                            ; $5e60: $0d
	db $10                                           ; $5e61: $10
	jr @+$0a                                         ; $5e62: $18 $08

jr_031_5e64:
	add hl, bc                                       ; $5e64: $09
	db $10                                           ; $5e65: $10
	ld [de], a                                       ; $5e66: $12
	ld [$100d], sp                                   ; $5e67: $08 $0d $10
	ld [de], a                                       ; $5e6a: $12
	ld [$1009], sp                                   ; $5e6b: $08 $09 $10
	jr @+$0a                                         ; $5e6e: $18 $08

	dec c                                            ; $5e70: $0d
	db $10                                           ; $5e71: $10
	ld [de], a                                       ; $5e72: $12
	ld [$1000], sp                                   ; $5e73: $08 $00 $10
	ld [de], a                                       ; $5e76: $12
	ld [$100d], sp                                   ; $5e77: $08 $0d $10
	jr jr_031_5e94                                   ; $5e7a: $18 $18

	ld c, $08                                        ; $5e7c: $0e $08
	dec c                                            ; $5e7e: $0d
	db $10                                           ; $5e7f: $10
	dec c                                            ; $5e80: $0d
	ld [$1018], sp                                   ; $5e81: $08 $18 $10
	ld c, $08                                        ; $5e84: $0e $08
	dec c                                            ; $5e86: $0d

jr_031_5e87:
	db $10                                           ; $5e87: $10

jr_031_5e88:
	ld [de], a                                       ; $5e88: $12
	ld [$1009], sp                                   ; $5e89: $08 $09 $10
	ld [de], a                                       ; $5e8c: $12
	ld [$100d], sp                                   ; $5e8d: $08 $0d $10
	ld [de], a                                       ; $5e90: $12
	ld [$0809], sp                                   ; $5e91: $08 $09 $08

jr_031_5e94:
	ld [de], a                                       ; $5e94: $12
	ld [$0812], sp                                   ; $5e95: $08 $12 $08
	dec c                                            ; $5e98: $0d
	db $10                                           ; $5e99: $10
	cp [hl]                                          ; $5e9a: $be
	ld [$0912], sp                                   ; $5e9b: $08 $12 $09
	ld [de], a                                       ; $5e9e: $12
	ld c, $be                                        ; $5e9f: $0e $be
	dec c                                            ; $5ea1: $0d

jr_031_5ea2:
	db $10                                           ; $5ea2: $10
	ld [de], a                                       ; $5ea3: $12
	ld [$fffe], sp                                   ; $5ea4: $08 $fe $ff
	ret nc                                           ; $5ea7: $d0

	ld h, a                                          ; $5ea8: $67
	cp $b5                                           ; $5ea9: $fe $b5
	pop bc                                           ; $5eab: $c1
	ld [bc], a                                       ; $5eac: $02
	rst $38                                          ; $5ead: $ff
	ld b, $7e                                        ; $5eae: $06 $7e
	nop                                              ; $5eb0: $00
	ld a, [de]                                       ; $5eb1: $1a
	inc h                                            ; $5eb2: $24
	or c                                             ; $5eb3: $b1
	or c                                             ; $5eb4: $b1
	rst $38                                          ; $5eb5: $ff
	rlca                                             ; $5eb6: $07
	inc e                                            ; $5eb7: $1c
	inc h                                            ; $5eb8: $24
	or c                                             ; $5eb9: $b1
	add c                                            ; $5eba: $81

jr_031_5ebb:
	nop                                              ; $5ebb: $00
	nop                                              ; $5ebc: $00
	ld a, [de]                                       ; $5ebd: $1a
	jr jr_031_5e87                                   ; $5ebe: $18 $c7

	ld a, [de]                                       ; $5ec0: $1a
	jr nc, jr_031_5e88                               ; $5ec1: $30 $c5

	ld a, [de]                                       ; $5ec3: $1a
	inc c                                            ; $5ec4: $0c
	or c                                             ; $5ec5: $b1
	pop bc                                           ; $5ec6: $c1
	rst $38                                          ; $5ec7: $ff
	dec b                                            ; $5ec8: $05
	dec e                                            ; $5ec9: $1d
	inc c                                            ; $5eca: $0c
	inc e                                            ; $5ecb: $1c
	inc c                                            ; $5ecc: $0c
	dec e                                            ; $5ecd: $1d
	inc c                                            ; $5ece: $0c
	or c                                             ; $5ecf: $b1
	or c                                             ; $5ed0: $b1
	rst $38                                          ; $5ed1: $ff
	rlca                                             ; $5ed2: $07
	rra                                              ; $5ed3: $1f
	jr @-$68                                         ; $5ed4: $18 $96

	rst $38                                          ; $5ed6: $ff
	dec b                                            ; $5ed7: $05
	inc e                                            ; $5ed8: $1c
	inc c                                            ; $5ed9: $0c
	sub [hl]                                         ; $5eda: $96
	rst $38                                          ; $5edb: $ff
	ld [bc], a                                       ; $5edc: $02
	dec e                                            ; $5edd: $1d
	inc c                                            ; $5ede: $0c
	or c                                             ; $5edf: $b1
	ld sp, $0000                                     ; $5ee0: $31 $00 $00
	dec e                                            ; $5ee3: $1d
	inc c                                            ; $5ee4: $0c
	or c                                             ; $5ee5: $b1
	pop bc                                           ; $5ee6: $c1
	rst $38                                          ; $5ee7: $ff
	dec b                                            ; $5ee8: $05
	inc e                                            ; $5ee9: $1c
	inc c                                            ; $5eea: $0c
	sub [hl]                                         ; $5eeb: $96
	rst $38                                          ; $5eec: $ff
	rlca                                             ; $5eed: $07
	rra                                              ; $5eee: $1f
	jr jr_031_5ea2                                   ; $5eef: $18 $b1

	sub c                                            ; $5ef1: $91
	nop                                              ; $5ef2: $00
	nop                                              ; $5ef3: $00
	rra                                              ; $5ef4: $1f
	jr nc, jr_031_5ebb                               ; $5ef5: $30 $c4

	rra                                              ; $5ef7: $1f
	inc c                                            ; $5ef8: $0c
	or c                                             ; $5ef9: $b1
	pop bc                                           ; $5efa: $c1
	rst $38                                          ; $5efb: $ff
	rlca                                             ; $5efc: $07
	inc e                                            ; $5efd: $1c
	inc c                                            ; $5efe: $0c
	rra                                              ; $5eff: $1f
	inc c                                            ; $5f00: $0c
	inc hl                                           ; $5f01: $23
	inc c                                            ; $5f02: $0c
	push bc                                          ; $5f03: $c5
	inc hl                                           ; $5f04: $23
	inc c                                            ; $5f05: $0c
	nop                                              ; $5f06: $00
	inc c                                            ; $5f07: $0c
	or c                                             ; $5f08: $b1
	pop bc                                           ; $5f09: $c1
	rst $38                                          ; $5f0a: $ff
	rlca                                             ; $5f0b: $07
	rra                                              ; $5f0c: $1f
	inc c                                            ; $5f0d: $0c

jr_031_5f0e:
	sub [hl]                                         ; $5f0e: $96

jr_031_5f0f:
	rst $38                                          ; $5f0f: $ff
	rlca                                             ; $5f10: $07
	inc h                                            ; $5f11: $24
	ld b, $b1                                        ; $5f12: $06 $b1
	ld b, c                                          ; $5f14: $41
	nop                                              ; $5f15: $00
	nop                                              ; $5f16: $00
	inc h                                            ; $5f17: $24
	ld b, $c3                                        ; $5f18: $06 $c3
	inc h                                            ; $5f1a: $24
	inc c                                            ; $5f1b: $0c
	or c                                             ; $5f1c: $b1
	pop bc                                           ; $5f1d: $c1
	rst $38                                          ; $5f1e: $ff
	rlca                                             ; $5f1f: $07
	rra                                              ; $5f20: $1f
	ld b, $b1                                        ; $5f21: $06 $b1

jr_031_5f23:
	ld d, c                                          ; $5f23: $51
	nop                                              ; $5f24: $00

jr_031_5f25:
	nop                                              ; $5f25: $00
	rra                                              ; $5f26: $1f

jr_031_5f27:
	ld [de], a                                       ; $5f27: $12
	jp z, $301f                                      ; $5f28: $ca $1f $30

	or c                                             ; $5f2b: $b1
	sub c                                            ; $5f2c: $91
	rst $38                                          ; $5f2d: $ff

jr_031_5f2e:
	rlca                                             ; $5f2e: $07
	rra                                              ; $5f2f: $1f
	inc c                                            ; $5f30: $0c
	or c                                             ; $5f31: $b1
	ld h, c                                          ; $5f32: $61
	nop                                              ; $5f33: $00
	nop                                              ; $5f34: $00
	rra                                              ; $5f35: $1f
	inc d                                            ; $5f36: $14
	sub [hl]                                         ; $5f37: $96
	rst $38                                          ; $5f38: $ff
	rlca                                             ; $5f39: $07
	rra                                              ; $5f3a: $1f
	db $10                                           ; $5f3b: $10
	call nz, $0c1f                                   ; $5f3c: $c4 $1f $0c
	or c                                             ; $5f3f: $b1
	and c                                            ; $5f40: $a1
	nop                                              ; $5f41: $00
	nop                                              ; $5f42: $00
	inc h                                            ; $5f43: $24
	jr jr_031_5f0f                                   ; $5f44: $18 $c9

	inc h                                            ; $5f46: $24
	jr jr_031_5f0e                                   ; $5f47: $18 $c5

	inc h                                            ; $5f49: $24
	inc c                                            ; $5f4a: $0c
	or c                                             ; $5f4b: $b1
	or c                                             ; $5f4c: $b1
	rst $38                                          ; $5f4d: $ff
	ld b, $1d                                        ; $5f4e: $06 $1d
	inc c                                            ; $5f50: $0c
	rra                                              ; $5f51: $1f
	inc c                                            ; $5f52: $0c
	inc h                                            ; $5f53: $24
	inc c                                            ; $5f54: $0c
	or c                                             ; $5f55: $b1
	add c                                            ; $5f56: $81
	nop                                              ; $5f57: $00
	nop                                              ; $5f58: $00
	dec e                                            ; $5f59: $1d
	jr jr_031_5f23                                   ; $5f5a: $18 $c7

	dec e                                            ; $5f5c: $1d
	jr jr_031_5f25                                   ; $5f5d: $18 $c6

	dec e                                            ; $5f5f: $1d

jr_031_5f60:
	jr jr_031_5f27                                   ; $5f60: $18 $c5

	dec e                                            ; $5f62: $1d
	inc c                                            ; $5f63: $0c
	call nz, $0c1d                                   ; $5f64: $c4 $1d $0c
	or l                                             ; $5f67: $b5
	pop bc                                           ; $5f68: $c1
	ld [bc], a                                       ; $5f69: $02
	rst $38                                          ; $5f6a: $ff
	rlca                                             ; $5f6b: $07
	ld a, [de]                                       ; $5f6c: $1a
	inc h                                            ; $5f6d: $24
	inc e                                            ; $5f6e: $1c
	inc h                                            ; $5f6f: $24
	ld a, [hl]                                       ; $5f70: $7e
	inc bc                                           ; $5f71: $03
	nop                                              ; $5f72: $00
	xor c                                            ; $5f73: $a9
	ret z                                            ; $5f74: $c8

	ld h, $18                                        ; $5f75: $26 $18
	ld a, [hl]                                       ; $5f77: $7e
	nop                                              ; $5f78: $00
	or c                                             ; $5f79: $b1
	ld h, c                                          ; $5f7a: $61
	nop                                              ; $5f7b: $00
	nop                                              ; $5f7c: $00
	ld h, $0a                                        ; $5f7d: $26 $0a
	call nz, $0226                                   ; $5f7f: $c4 $26 $02
	or c                                             ; $5f82: $b1
	or c                                             ; $5f83: $b1
	rst $38                                          ; $5f84: $ff
	dec b                                            ; $5f85: $05
	inc h                                            ; $5f86: $24
	inc c                                            ; $5f87: $0c
	rra                                              ; $5f88: $1f
	inc c                                            ; $5f89: $0c
	ld hl, $b10c                                     ; $5f8a: $21 $0c $b1
	or c                                             ; $5f8d: $b1
	rst $38                                          ; $5f8e: $ff
	rlca                                             ; $5f8f: $07
	inc hl                                           ; $5f90: $23
	jr jr_031_5fb2                                   ; $5f91: $18 $1f

	jr jr_031_5f60                                   ; $5f93: $18 $cb

	inc hl                                           ; $5f95: $23
	jr jr_031_5f2e                                   ; $5f96: $18 $96

	rst $38                                          ; $5f98: $ff
	ld b, $1a                                        ; $5f99: $06 $1a
	inc c                                            ; $5f9b: $0c
	sub [hl]                                         ; $5f9c: $96
	rst $38                                          ; $5f9d: $ff
	rlca                                             ; $5f9e: $07
	dec e                                            ; $5f9f: $1d
	ld b, $b1                                        ; $5fa0: $06 $b1
	ld b, c                                          ; $5fa2: $41
	nop                                              ; $5fa3: $00
	nop                                              ; $5fa4: $00
	dec e                                            ; $5fa5: $1d
	ld [de], a                                       ; $5fa6: $12
	or c                                             ; $5fa7: $b1
	add c                                            ; $5fa8: $81
	rst $38                                          ; $5fa9: $ff
	ld [bc], a                                       ; $5faa: $02
	inc e                                            ; $5fab: $1c
	inc c                                            ; $5fac: $0c
	or c                                             ; $5fad: $b1
	ld [hl], c                                       ; $5fae: $71
	rst $38                                          ; $5faf: $ff
	rlca                                             ; $5fb0: $07
	rra                                              ; $5fb1: $1f

jr_031_5fb2:
	jr @-$4d                                         ; $5fb2: $18 $b1

	ld d, c                                          ; $5fb4: $51
	nop                                              ; $5fb5: $00
	nop                                              ; $5fb6: $00
	rra                                              ; $5fb7: $1f
	inc c                                            ; $5fb8: $0c
	or c                                             ; $5fb9: $b1
	add c                                            ; $5fba: $81
	rst $38                                          ; $5fbb: $ff
	inc bc                                           ; $5fbc: $03
	add hl, hl                                       ; $5fbd: $29
	inc c                                            ; $5fbe: $0c
	jr z, jr_031_5fcd                                ; $5fbf: $28 $0c

	sub [hl]                                         ; $5fc1: $96
	rst $38                                          ; $5fc2: $ff
	rlca                                             ; $5fc3: $07

jr_031_5fc4:
	inc h                                            ; $5fc4: $24
	ld b, $26                                        ; $5fc5: $06 $26
	ld b, $b1                                        ; $5fc7: $06 $b1
	or c                                             ; $5fc9: $b1
	rst $38                                          ; $5fca: $ff
	ld b, $be                                        ; $5fcb: $06 $be

jr_031_5fcd:
	inc c                                            ; $5fcd: $0c
	rra                                              ; $5fce: $1f
	inc e                                            ; $5fcf: $1c
	rra                                              ; $5fd0: $1f
	inc hl                                           ; $5fd1: $23
	cp [hl]                                          ; $5fd2: $be
	or c                                             ; $5fd3: $b1
	or c                                             ; $5fd4: $b1
	rst $38                                          ; $5fd5: $ff
	rlca                                             ; $5fd6: $07
	ld hl, $b116                                     ; $5fd7: $21 $16 $b1
	ld d, c                                          ; $5fda: $51
	nop                                              ; $5fdb: $00
	nop                                              ; $5fdc: $00
	ld hl, $b102                                     ; $5fdd: $21 $02 $b1
	or c                                             ; $5fe0: $b1
	rst $38                                          ; $5fe1: $ff
	rlca                                             ; $5fe2: $07
	inc hl                                           ; $5fe3: $23
	ld d, $b1                                        ; $5fe4: $16 $b1
	ld d, c                                          ; $5fe6: $51
	nop                                              ; $5fe7: $00
	nop                                              ; $5fe8: $00
	inc hl                                           ; $5fe9: $23
	ld [bc], a                                       ; $5fea: $02
	or c                                             ; $5feb: $b1
	or c                                             ; $5fec: $b1
	rst $38                                          ; $5fed: $ff
	rlca                                             ; $5fee: $07
	ld hl, $b118                                     ; $5fef: $21 $18 $b1
	ld h, c                                          ; $5ff2: $61
	nop                                              ; $5ff3: $00
	nop                                              ; $5ff4: $00
	ld hl, $c50c                                     ; $5ff5: $21 $0c $c5

jr_031_5ff8:
	ld hl, $b10c                                     ; $5ff8: $21 $0c $b1
	sub c                                            ; $5ffb: $91
	rst $38                                          ; $5ffc: $ff
	rlca                                             ; $5ffd: $07
	daa                                              ; $5ffe: $27
	inc h                                            ; $5fff: $24
	push bc                                          ; $6000: $c5
	daa                                              ; $6001: $27
	inc c                                            ; $6002: $0c
	or c                                             ; $6003: $b1
	sub c                                            ; $6004: $91
	rst $38                                          ; $6005: $ff
	rlca                                             ; $6006: $07
	inc hl                                           ; $6007: $23
	inc c                                            ; $6008: $0c
	ld h, $24                                        ; $6009: $26 $24
	sub [hl]                                         ; $600b: $96
	rst $38                                          ; $600c: $ff
	rlca                                             ; $600d: $07
	dec e                                            ; $600e: $1d
	jr jr_031_6035                                   ; $600f: $18 $24

	jr jr_031_5fc4                                   ; $6011: $18 $b1

	ld b, c                                          ; $6013: $41
	nop                                              ; $6014: $00
	nop                                              ; $6015: $00
	inc h                                            ; $6016: $24
	inc c                                            ; $6017: $0c
	or c                                             ; $6018: $b1
	add c                                            ; $6019: $81
	rst $38                                          ; $601a: $ff
	rlca                                             ; $601b: $07
	ld h, $18                                        ; $601c: $26 $18
	sub [hl]                                         ; $601e: $96
	rst $38                                          ; $601f: $ff
	rlca                                             ; $6020: $07
	daa                                              ; $6021: $27
	inc c                                            ; $6022: $0c
	or c                                             ; $6023: $b1
	ld [hl], c                                       ; $6024: $71
	nop                                              ; $6025: $00
	nop                                              ; $6026: $00
	jr z, jr_031_6059                                ; $6027: $28 $30

	push bc                                          ; $6029: $c5
	jr z, @+$1a                                      ; $602a: $28 $18

	jp $1828                                         ; $602c: $c3 $28 $18


	cp $ff                                           ; $602f: $fe $ff
	ret nc                                           ; $6031: $d0

	ld h, a                                          ; $6032: $67
	cp $b5                                           ; $6033: $fe $b5

jr_031_6035:
	pop af                                           ; $6035: $f1
	ld [bc], a                                       ; $6036: $02
	rst $38                                          ; $6037: $ff
	ld b, $7e                                        ; $6038: $06 $7e
	dec c                                            ; $603a: $0d
	nop                                              ; $603b: $00
	xor d                                            ; $603c: $aa
	inc hl                                           ; $603d: $23
	inc h                                            ; $603e: $24
	ld a, [hl]                                       ; $603f: $7e
	nop                                              ; $6040: $00
	sub [hl]                                         ; $6041: $96
	rst $38                                          ; $6042: $ff
	ld b, $24                                        ; $6043: $06 $24
	jr nc, jr_031_5ff8                               ; $6045: $30 $b1

	pop af                                           ; $6047: $f1
	rst $38                                          ; $6048: $ff
	rlca                                             ; $6049: $07
	rra                                              ; $604a: $1f
	ld l, $b1                                        ; $604b: $2e $b1
	ld h, c                                          ; $604d: $61
	nop                                              ; $604e: $00
	nop                                              ; $604f: $00
	rra                                              ; $6050: $1f
	ld [bc], a                                       ; $6051: $02
	or c                                             ; $6052: $b1
	pop af                                           ; $6053: $f1
	rst $38                                          ; $6054: $ff
	ld b, $24                                        ; $6055: $06 $24
	jr nc, @-$4d                                     ; $6057: $30 $b1

jr_031_6059:
	pop de                                           ; $6059: $d1
	rst $38                                          ; $605a: $ff
	ld b, $1f                                        ; $605b: $06 $1f
	inc c                                            ; $605d: $0c
	or c                                             ; $605e: $b1
	pop af                                           ; $605f: $f1
	rst $38                                          ; $6060: $ff
	ld b, $7e                                        ; $6061: $06 $7e
	dec c                                            ; $6063: $0d
	nop                                              ; $6064: $00
	xor d                                            ; $6065: $aa
	inc hl                                           ; $6066: $23
	inc h                                            ; $6067: $24
	ld a, [hl]                                       ; $6068: $7e
	nop                                              ; $6069: $00
	sub [hl]                                         ; $606a: $96
	rst $38                                          ; $606b: $ff
	ld b, $24                                        ; $606c: $06 $24
	inc h                                            ; $606e: $24
	push bc                                          ; $606f: $c5
	inc h                                            ; $6070: $24
	inc c                                            ; $6071: $0c
	or c                                             ; $6072: $b1
	sub c                                            ; $6073: $91
	rst $38                                          ; $6074: $ff
	ld b, $28                                        ; $6075: $06 $28
	ld e, $c6                                        ; $6077: $1e $c6
	jr z, jr_031_6081                                ; $6079: $28 $06

	call z, $1626                                    ; $607b: $cc $26 $16
	rst JumpTable                                          ; $607e: $c7
	ld h, $02                                        ; $607f: $26 $02

jr_031_6081:
	call $1624                                       ; $6081: $cd $24 $16
	rst JumpTable                                          ; $6084: $c7
	inc h                                            ; $6085: $24
	ld [bc], a                                       ; $6086: $02
	call z, $1626                                    ; $6087: $cc $26 $16
	rst JumpTable                                          ; $608a: $c7
	ld h, $02                                        ; $608b: $26 $02
	or c                                             ; $608d: $b1
	add c                                            ; $608e: $81
	rst $38                                          ; $608f: $ff
	rlca                                             ; $6090: $07
	ld a, [hl]                                       ; $6091: $7e
	dec c                                            ; $6092: $0d
	nop                                              ; $6093: $00

jr_031_6094:
	xor d                                            ; $6094: $aa
	dec hl                                           ; $6095: $2b
	inc a                                            ; $6096: $3c
	or c                                             ; $6097: $b1
	pop bc                                           ; $6098: $c1
	rst $38                                          ; $6099: $ff
	ld bc, $007e                                     ; $609a: $01 $7e $00

jr_031_609d:
	ld h, $06                                        ; $609d: $26 $06

jr_031_609f:
	push bc                                          ; $609f: $c5
	ld h, $06                                        ; $60a0: $26 $06
	or c                                             ; $60a2: $b1

jr_031_60a3:
	pop de                                           ; $60a3: $d1
	rst $38                                          ; $60a4: $ff
	rlca                                             ; $60a5: $07
	cp l                                             ; $60a6: $bd
	ld [bc], a                                       ; $60a7: $02
	inc h                                            ; $60a8: $24
	jr @+$1a                                         ; $60a9: $18 $18

	or c                                             ; $60ab: $b1

jr_031_60ac:
	ld [hl], c                                       ; $60ac: $71
	rst $38                                          ; $60ad: $ff
	rlca                                             ; $60ae: $07
	inc h                                            ; $60af: $24
	inc h                                            ; $60b0: $24
	call $1826                                       ; $60b1: $cd $26 $18

jr_031_60b4:
	ret                                              ; $60b4: $c9


	ld a, [hl]                                       ; $60b5: $7e
	dec c                                            ; $60b6: $0d
	nop                                              ; $60b7: $00
	xor d                                            ; $60b8: $aa
	dec hl                                           ; $60b9: $2b
	inc c                                            ; $60ba: $0c
	ld a, [hl]                                       ; $60bb: $7e
	nop                                              ; $60bc: $00
	or c                                             ; $60bd: $b1
	ld h, c                                          ; $60be: $61
	nop                                              ; $60bf: $00
	nop                                              ; $60c0: $00
	dec hl                                           ; $60c1: $2b
	jr @-$39                                         ; $60c2: $18 $c5

	dec hl                                           ; $60c4: $2b
	inc c                                            ; $60c5: $0c
	call nz, $0c2b                                   ; $60c6: $c4 $2b $0c
	call nz, $137e                                   ; $60c9: $c4 $7e $13
	ld a, [bc]                                       ; $60cc: $0a
	and c                                            ; $60cd: $a1
	dec hl                                           ; $60ce: $2b

jr_031_60cf:
	jr jr_031_6094                                   ; $60cf: $18 $c3

	ld a, [hl]                                       ; $60d1: $7e
	nop                                              ; $60d2: $00
	dec hl                                           ; $60d3: $2b
	jr jr_031_609d                                   ; $60d4: $18 $c7

	inc hl                                           ; $60d6: $23
	jr jr_031_609f                                   ; $60d7: $18 $c6

	inc hl                                           ; $60d9: $23
	jr @-$39                                         ; $60da: $18 $c5

	inc hl                                           ; $60dc: $23
	jr jr_031_60a3                                   ; $60dd: $18 $c4

	inc hl                                           ; $60df: $23
	inc c                                            ; $60e0: $0c
	jp $0c23                                         ; $60e1: $c3 $23 $0c


	call $9792                                       ; $60e4: $cd $92 $97
	ld c, a                                          ; $60e7: $4f
	ld a, l                                          ; $60e8: $7d
	ld de, $242d                                     ; $60e9: $11 $2d $24
	ld a, [hl]                                       ; $60ec: $7e
	nop                                              ; $60ed: $00
	ld a, l                                          ; $60ee: $7d
	ld [$3f97], sp                                   ; $60ef: $08 $97 $3f
	cpl                                              ; $60f2: $2f
	inc h                                            ; $60f3: $24
	sub a                                            ; $60f4: $97
	ld c, a                                          ; $60f5: $4f
	ld a, l                                          ; $60f6: $7d
	dec bc                                           ; $60f7: $0b
	ld a, [hl+]                                      ; $60f8: $2a
	jr jr_031_60ac                                   ; $60f9: $18 $b1

	and c                                            ; $60fb: $a1
	rst $38                                          ; $60fc: $ff
	rlca                                             ; $60fd: $07
	sub a                                            ; $60fe: $97
	nop                                              ; $60ff: $00
	ld a, [hl+]                                      ; $6100: $2a
	jr nc, jr_031_60b4                               ; $6101: $30 $b1

jr_031_6103:
	ld hl, $0000                                     ; $6103: $21 $00 $00
	ld a, [hl+]                                      ; $6106: $2a
	inc c                                            ; $6107: $0c
	sub a                                            ; $6108: $97
	ld l, l                                          ; $6109: $6d
	rst GetHLinHL                                          ; $610a: $cf
	ld a, l                                          ; $610b: $7d
	nop                                              ; $610c: $00
	add hl, hl                                       ; $610d: $29
	inc c                                            ; $610e: $0c
	jr z, jr_031_611d                                ; $610f: $28 $0c

	add hl, hl                                       ; $6111: $29
	inc c                                            ; $6112: $0c
	sub a                                            ; $6113: $97
	ccf                                              ; $6114: $3f
	dec hl                                           ; $6115: $2b
	inc h                                            ; $6116: $24
	sub a                                            ; $6117: $97
	ld l, d                                          ; $6118: $6a
	ld h, $0a                                        ; $6119: $26 $0a
	sub a                                            ; $611b: $97
	nop                                              ; $611c: $00

jr_031_611d:
	jp $0e26                                         ; $611d: $c3 $26 $0e


	sub a                                            ; $6120: $97
	ld l, d                                          ; $6121: $6a
	jr z, jr_031_612a                                ; $6122: $28 $06

	sub a                                            ; $6124: $97
	nop                                              ; $6125: $00
	call nz, $0628                                   ; $6126: $c4 $28 $06
	sub a                                            ; $6129: $97

jr_031_612a:
	ccf                                              ; $612a: $3f
	ld a, [hl]                                       ; $612b: $7e
	dec c                                            ; $612c: $0d
	nop                                              ; $612d: $00
	xor c                                            ; $612e: $a9
	dec l                                            ; $612f: $2d
	jr @-$36                                         ; $6130: $18 $c8

	sub a                                            ; $6132: $97
	nop                                              ; $6133: $00
	ld a, [hl]                                       ; $6134: $7e
	nop                                              ; $6135: $00
	dec l                                            ; $6136: $2d
	jr jr_031_60cf                                   ; $6137: $18 $96

	rst $38                                          ; $6139: $ff
	rlca                                             ; $613a: $07
	dec l                                            ; $613b: $2d
	jr jr_031_6103                                   ; $613c: $18 $c5

	dec l                                            ; $613e: $2d
	inc c                                            ; $613f: $0c
	sub [hl]                                         ; $6140: $96
	nop                                              ; $6141: $00
	nop                                              ; $6142: $00
	sub a                                            ; $6143: $97
	ld a, a                                          ; $6144: $7f
	dec hl                                           ; $6145: $2b
	inc c                                            ; $6146: $0c
	add hl, hl                                       ; $6147: $29
	inc c                                            ; $6148: $0c
	jr z, jr_031_6157                                ; $6149: $28 $0c

	sub a                                            ; $614b: $97
	ld e, a                                          ; $614c: $5f
	add hl, hl                                       ; $614d: $29
	ld a, [hl+]                                      ; $614e: $2a
	sub a                                            ; $614f: $97
	nop                                              ; $6150: $00
	rst JumpTable                                          ; $6151: $c7
	add hl, hl                                       ; $6152: $29
	ld b, $97                                        ; $6153: $06 $97
	ld e, l                                          ; $6155: $5d
	inc h                                            ; $6156: $24

jr_031_6157:
	jr @-$67                                         ; $6157: $18 $97

	ld e, [hl]                                       ; $6159: $5e
	add hl, hl                                       ; $615a: $29
	inc c                                            ; $615b: $0c
	dec hl                                           ; $615c: $2b
	inc c                                            ; $615d: $0c
	sub a                                            ; $615e: $97
	ccf                                              ; $615f: $3f
	inc l                                            ; $6160: $2c
	ld [hl+], a                                      ; $6161: $22
	sub a                                            ; $6162: $97
	nop                                              ; $6163: $00

jr_031_6164:
	add $2c                                          ; $6164: $c6 $2c
	ld [bc], a                                       ; $6166: $02
	sub a                                            ; $6167: $97
	ld c, a                                          ; $6168: $4f
	dec hl                                           ; $6169: $2b
	ld [hl+], a                                      ; $616a: $22
	sub a                                            ; $616b: $97
	nop                                              ; $616c: $00
	add $2b                                          ; $616d: $c6 $2b
	ld [bc], a                                       ; $616f: $02
	sub a                                            ; $6170: $97
	ld c, h                                          ; $6171: $4c
	add hl, hl                                       ; $6172: $29
	rla                                              ; $6173: $17
	nop                                              ; $6174: $00
	ld bc, $6b97                                     ; $6175: $01 $97 $6b
	add hl, hl                                       ; $6178: $29
	inc c                                            ; $6179: $0c
	sub a                                            ; $617a: $97
	ccf                                              ; $617b: $3f
	jr z, @+$32                                      ; $617c: $28 $30

	or c                                             ; $617e: $b1
	ld [hl], c                                       ; $617f: $71
	rst $38                                          ; $6180: $ff
	rlca                                             ; $6181: $07
	sub a                                            ; $6182: $97
	nop                                              ; $6183: $00
	jr z, jr_031_6194                                ; $6184: $28 $0e

	or c                                             ; $6186: $b1
	ld d, c                                          ; $6187: $51
	nop                                              ; $6188: $00
	nop                                              ; $6189: $00

jr_031_618a:
	jr z, jr_031_6195                                ; $618a: $28 $09

	nop                                              ; $618c: $00
	ld bc, $91b5                                     ; $618d: $01 $b5 $91
	ld [bc], a                                       ; $6190: $02
	rst $38                                          ; $6191: $ff
	rlca                                             ; $6192: $07
	inc hl                                           ; $6193: $23

jr_031_6194:
	inc c                                            ; $6194: $0c

jr_031_6195:
	sub [hl]                                         ; $6195: $96
	nop                                              ; $6196: $00
	nop                                              ; $6197: $00
	rra                                              ; $6198: $1f
	inc c                                            ; $6199: $0c
	ret z                                            ; $619a: $c8

jr_031_619b:
	rra                                              ; $619b: $1f
	inc h                                            ; $619c: $24
	push bc                                          ; $619d: $c5
	rra                                              ; $619e: $1f
	jr jr_031_6164                                   ; $619f: $18 $c3

	rra                                              ; $61a1: $1f

jr_031_61a2:
	jr jr_031_61a2                                   ; $61a2: $18 $fe

	rst $38                                          ; $61a4: $ff
	ret nc                                           ; $61a5: $d0

jr_031_61a6:
	ld h, a                                          ; $61a6: $67

jr_031_61a7:
	cp $c2                                           ; $61a7: $fe $c2
	add c                                            ; $61a9: $81
	jr jr_031_61be                                   ; $61aa: $18 $12

	call nz, $0618                                   ; $61ac: $c4 $18 $06
	jp nz, $0e18                                     ; $61af: $c2 $18 $0e

	call nz, $0a18                                   ; $61b2: $c4 $18 $0a
	nop                                              ; $61b5: $00
	inc c                                            ; $61b6: $0c
	call nz, $0b18                                   ; $61b7: $c4 $18 $0b
	nop                                              ; $61ba: $00
	ld bc, $18c2                                     ; $61bb: $01 $c2 $18

jr_031_61be:
	jr @+$1a                                         ; $61be: $18 $18

	ld [hl-], a                                      ; $61c0: $32
	call nz, $1618                                   ; $61c1: $c4 $18 $16
	add $18                                          ; $61c4: $c6 $18
	jr jr_031_618a                                   ; $61c6: $18 $c2

	dec d                                            ; $61c8: $15

jr_031_61c9:
	jr @-$3a                                         ; $61c9: $18 $c4

	dec d                                            ; $61cb: $15
	inc c                                            ; $61cc: $0c
	jp nz, $061a                                     ; $61cd: $c2 $1a $06

	call nz, $041a                                   ; $61d0: $c4 $1a $04
	add $1a                                          ; $61d3: $c6 $1a
	ld [bc], a                                       ; $61d5: $02
	nop                                              ; $61d6: $00
	jr jr_031_619b                                   ; $61d7: $18 $c2

	dec d                                            ; $61d9: $15
	jr jr_031_61f1                                   ; $61da: $18 $15

	jr nc, jr_031_61a2                               ; $61dc: $30 $c4

	dec d                                            ; $61de: $15
	jr jr_031_61a7                                   ; $61df: $18 $c6

	dec d                                            ; $61e1: $15
	jr jr_031_61a6                                   ; $61e2: $18 $c2

	ld de, $c60a                                     ; $61e4: $11 $0a $c6
	ld de, $c202                                     ; $61e7: $11 $02 $c2
	dec e                                            ; $61ea: $1d
	jr @-$3a                                         ; $61eb: $18 $c4

	dec e                                            ; $61ed: $1d
	inc c                                            ; $61ee: $0c
	nop                                              ; $61ef: $00
	inc c                                            ; $61f0: $0c

jr_031_61f1:
	jp nz, $061d                                     ; $61f1: $c2 $1d $06

	call nz, $061d                                   ; $61f4: $c4 $1d $06
	jp nz, $1811                                     ; $61f7: $c2 $11 $18

	ld de, $1118                                     ; $61fa: $11 $18 $11
	inc c                                            ; $61fd: $0c
	call nz, $0c11                                   ; $61fe: $c4 $11 $0c
	add $11                                          ; $6201: $c6 $11
	jr jr_031_6205                                   ; $6203: $18 $00

jr_031_6205:
	jr jr_031_61c9                                   ; $6205: $18 $c2

	dec e                                            ; $6207: $1d
	ld a, [bc]                                       ; $6208: $0a
	call nz, $021d                                   ; $6209: $c4 $1d $02
	jp nz, $0a1a                                     ; $620c: $c2 $1a $0a

	call nz, $021a                                   ; $620f: $c4 $1a $02
	jp nz, $3013                                     ; $6212: $c2 $13 $30

	call nz, $0c13                                   ; $6215: $c4 $13 $0c
	add $13                                          ; $6218: $c6 $13
	inc c                                            ; $621a: $0c
	jp nz, $3013                                     ; $621b: $c2 $13 $30

	call nz, $1813                                   ; $621e: $c4 $13 $18

jr_031_6221:
	add $13                                          ; $6221: $c6 $13
	jr jr_031_61a6                                   ; $6223: $18 $81

	jp nz, $1218                                     ; $6225: $c2 $18 $12

	call nz, $0618                                   ; $6228: $c4 $18 $06
	jp nz, $0c18                                     ; $622b: $c2 $18 $0c

	add $18                                          ; $622e: $c6 $18
	inc c                                            ; $6230: $0c
	nop                                              ; $6231: $00
	inc c                                            ; $6232: $0c
	jp nz, $0b18                                     ; $6233: $c2 $18 $0b

	nop                                              ; $6236: $00
	ld bc, $1818                                     ; $6237: $01 $18 $18
	jr jr_031_626c                                   ; $623a: $18 $30

	call nz, $1818                                   ; $623c: $c4 $18 $18
	add $18                                          ; $623f: $c6 $18
	jr jr_031_6205                                   ; $6241: $18 $c2

	dec d                                            ; $6243: $15
	jr @-$3a                                         ; $6244: $18 $c4

	dec d                                            ; $6246: $15

jr_031_6247:
	inc c                                            ; $6247: $0c
	jp nz, $061a                                     ; $6248: $c2 $1a $06

	call nz, $041a                                   ; $624b: $c4 $1a $04
	add $1a                                          ; $624e: $c6 $1a
	ld [bc], a                                       ; $6250: $02
	nop                                              ; $6251: $00
	jr @-$3c                                         ; $6252: $18 $c2

	dec d                                            ; $6254: $15
	jr jr_031_626c                                   ; $6255: $18 $15

	jr nc, @-$3a                                     ; $6257: $30 $c4

	dec d                                            ; $6259: $15
	jr @-$38                                         ; $625a: $18 $c6

	dec d                                            ; $625c: $15
	jr jr_031_6221                                   ; $625d: $18 $c2

	ld de, $c430                                     ; $625f: $11 $30 $c4
	ld de, $c618                                     ; $6262: $11 $18 $c6
	ld de, $c218                                     ; $6265: $11 $18 $c2
	dec e                                            ; $6268: $1d
	jr @-$3a                                         ; $6269: $18 $c4

	dec e                                            ; $626b: $1d

jr_031_626c:
	inc c                                            ; $626c: $0c
	add $1d                                          ; $626d: $c6 $1d
	inc c                                            ; $626f: $0c
	jp nz, $181d                                     ; $6270: $c2 $1d $18

	call nz, $0c1d                                   ; $6273: $c4 $1d $0c
	add $1d                                          ; $6276: $c6 $1d
	inc c                                            ; $6278: $0c
	jp nz, $1818                                     ; $6279: $c2 $18 $18

	call nz, $3018                                   ; $627c: $c4 $18 $30
	add $18                                          ; $627f: $c6 $18
	jr jr_031_6247                                   ; $6281: $18 $c4

	inc h                                            ; $6283: $24
	jr nc, @-$38                                     ; $6284: $30 $c6

	inc h                                            ; $6286: $24
	jr jr_031_62ad                                   ; $6287: $18 $24

jr_031_6289:
	jr jr_031_6289                                   ; $6289: $18 $fe

	rst $38                                          ; $628b: $ff
	ret nc                                           ; $628c: $d0

	ld h, a                                          ; $628d: $67
	cp $fb                                           ; $628e: $fe $fb
	cp [hl]                                          ; $6290: $be
	inc c                                            ; $6291: $0c
	add hl, bc                                       ; $6292: $09
	ld [de], a                                       ; $6293: $12
	add hl, bc                                       ; $6294: $09
	ld [de], a                                       ; $6295: $12
	ld [de], a                                       ; $6296: $12
	add hl, bc                                       ; $6297: $09
	ld [de], a                                       ; $6298: $12
	ld [de], a                                       ; $6299: $12
	ld [de], a                                       ; $629a: $12
	add hl, bc                                       ; $629b: $09
	ld [de], a                                       ; $629c: $12
	ld [de], a                                       ; $629d: $12
	ld [de], a                                       ; $629e: $12
	ld [de], a                                       ; $629f: $12
	add hl, bc                                       ; $62a0: $09
	ld [de], a                                       ; $62a1: $12
	cp [hl]                                          ; $62a2: $be
	ei                                               ; $62a3: $fb
	inc b                                            ; $62a4: $04
	ei                                               ; $62a5: $fb
	cp [hl]                                          ; $62a6: $be
	inc c                                            ; $62a7: $0c
	add hl, bc                                       ; $62a8: $09
	ld [de], a                                       ; $62a9: $12
	add hl, bc                                       ; $62aa: $09
	ld [de], a                                       ; $62ab: $12
	ld [de], a                                       ; $62ac: $12

jr_031_62ad:
	add hl, bc                                       ; $62ad: $09
	ld [de], a                                       ; $62ae: $12
	ld [de], a                                       ; $62af: $12
	cp [hl]                                          ; $62b0: $be
	cp [hl]                                          ; $62b1: $be
	ld b, $13                                        ; $62b2: $06 $13
	rla                                              ; $62b4: $17
	inc de                                           ; $62b5: $13
	rla                                              ; $62b6: $17
	dec d                                            ; $62b7: $15
	rla                                              ; $62b8: $17
	ld d, $17                                        ; $62b9: $16 $17
	ld d, $12                                        ; $62bb: $16 $12
	cp [hl]                                          ; $62bd: $be
	rla                                              ; $62be: $17
	inc c                                            ; $62bf: $0c
	rla                                              ; $62c0: $17
	inc c                                            ; $62c1: $0c
	rla                                              ; $62c2: $17
	inc c                                            ; $62c3: $0c
	ei                                               ; $62c4: $fb
	inc bc                                           ; $62c5: $03
	cp [hl]                                          ; $62c6: $be
	inc c                                            ; $62c7: $0c
	add hl, bc                                       ; $62c8: $09
	ld [de], a                                       ; $62c9: $12
	add hl, bc                                       ; $62ca: $09
	ld [de], a                                       ; $62cb: $12
	ld [de], a                                       ; $62cc: $12
	add hl, bc                                       ; $62cd: $09
	ld [de], a                                       ; $62ce: $12
	ld [de], a                                       ; $62cf: $12
	cp [hl]                                          ; $62d0: $be
	cp [hl]                                          ; $62d1: $be
	ld b, $13                                        ; $62d2: $06 $13
	rla                                              ; $62d4: $17
	inc de                                           ; $62d5: $13
	rla                                              ; $62d6: $17
	dec d                                            ; $62d7: $15
	rla                                              ; $62d8: $17
	ld d, $17                                        ; $62d9: $16 $17
	ld d, $12                                        ; $62db: $16 $12
	cp [hl]                                          ; $62dd: $be
	rla                                              ; $62de: $17
	inc c                                            ; $62df: $0c
	ld [de], a                                       ; $62e0: $12
	inc c                                            ; $62e1: $0c
	ld [de], a                                       ; $62e2: $12
	inc c                                            ; $62e3: $0c
	cp $ff                                           ; $62e4: $fe $ff
	ret nc                                           ; $62e6: $d0

	ld a, l                                          ; $62e7: $7d
	cp $ca                                           ; $62e8: $fe $ca
	sub d                                            ; $62ea: $92
	ld a, [hl]                                       ; $62eb: $7e
	ld [bc], a                                       ; $62ec: $02
	nop                                              ; $62ed: $00
	and b                                            ; $62ee: $a0
	ld a, [de]                                       ; $62ef: $1a
	ld [$1ac3], sp                                   ; $62f0: $08 $c3 $1a
	ld [$1bca], sp                                   ; $62f3: $08 $ca $1b
	rlca                                             ; $62f6: $07
	nop                                              ; $62f7: $00
	ld bc, $1cca                                     ; $62f8: $01 $ca $1c
	ld [$1cc3], sp                                   ; $62fb: $08 $c3 $1c
	ld [$1dca], sp                                   ; $62fe: $08 $ca $1d
	rlca                                             ; $6301: $07
	nop                                              ; $6302: $00
	ld bc, $1dc9                                     ; $6303: $01 $c9 $1d
	ld [$1dc3], sp                                   ; $6306: $08 $c3 $1d
	ld [$1fc9], sp                                   ; $6309: $08 $c9 $1f
	rlca                                             ; $630c: $07
	nop                                              ; $630d: $00
	ld bc, $20c8                                     ; $630e: $01 $c8 $20
	ld [$20c3], sp                                   ; $6311: $08 $c3 $20
	ld [$21c8], sp                                   ; $6314: $08 $c8 $21
	rlca                                             ; $6317: $07
	nop                                              ; $6318: $00
	ld bc, $26c8                                     ; $6319: $01 $c8 $26
	ld [$26c3], sp                                   ; $631c: $08 $c3 $26
	ld [$25c8], sp                                   ; $631f: $08 $c8 $25
	rlca                                             ; $6322: $07
	nop                                              ; $6323: $00
	ld bc, $7ec8                                     ; $6324: $01 $c8 $7e
	ld [bc], a                                       ; $6327: $02
	nop                                              ; $6328: $00
	xor e                                            ; $6329: $ab
	ld h, $08                                        ; $632a: $26 $08
	jp $0826                                         ; $632c: $c3 $26 $08


	ret z                                            ; $632f: $c8

	dec h                                            ; $6330: $25
	rlca                                             ; $6331: $07
	nop                                              ; $6332: $00
	ld bc, $26c8                                     ; $6333: $01 $c8 $26
	ld [$26c3], sp                                   ; $6336: $08 $c3 $26
	ld [$26c2], sp                                   ; $6339: $08 $c2 $26
	ld [$81b5], sp                                   ; $633c: $08 $b5 $81
	ld bc, $04ff                                     ; $633f: $01 $ff $04
	ld a, [hl]                                       ; $6342: $7e
	nop                                              ; $6343: $00
	rra                                              ; $6344: $1f
	db $10                                           ; $6345: $10
	rra                                              ; $6346: $1f
	ld [$91c8], sp                                   ; $6347: $08 $c8 $91

jr_031_634a:
	ld a, [hl]                                       ; $634a: $7e
	ld [bc], a                                       ; $634b: $02
	nop                                              ; $634c: $00
	and b                                            ; $634d: $a0
	jr nz, @+$0a                                     ; $634e: $20 $08

	jp $0820                                         ; $6350: $c3 $20 $08


	ret z                                            ; $6353: $c8

	rra                                              ; $6354: $1f
	rlca                                             ; $6355: $07
	nop                                              ; $6356: $00
	ld bc, $037e                                     ; $6357: $01 $7e $03
	nop                                              ; $635a: $00
	xor c                                            ; $635b: $a9
	sub [hl]                                         ; $635c: $96
	rst $38                                          ; $635d: $ff
	ld b, $20                                        ; $635e: $06 $20
	jr jr_031_63e0                                   ; $6360: $18 $7e

	ld [bc], a                                       ; $6362: $02
	nop                                              ; $6363: $00
	and b                                            ; $6364: $a0
	or c                                             ; $6365: $b1
	ld sp, $0000                                     ; $6366: $31 $00 $00
	jr nz, jr_031_637b                               ; $6369: $20 $10

	ret z                                            ; $636b: $c8

	jr nz, jr_031_6375                               ; $636c: $20 $07

	nop                                              ; $636e: $00
	ld bc, $0820                                     ; $636f: $01 $20 $08
	jp $0820                                         ; $6372: $c3 $20 $08


jr_031_6375:
	ret z                                            ; $6375: $c8

	jr nz, @+$0a                                     ; $6376: $20 $08

	ld a, [hl]                                       ; $6378: $7e
	ld [bc], a                                       ; $6379: $02
	nop                                              ; $637a: $00

jr_031_637b:
	and b                                            ; $637b: $a0
	ret z                                            ; $637c: $c8

	rra                                              ; $637d: $1f
	ld [$1fc3], sp                                   ; $637e: $08 $c3 $1f
	ld [$1ec8], sp                                   ; $6381: $08 $c8 $1e
	rlca                                             ; $6384: $07
	nop                                              ; $6385: $00
	ld bc, $037e                                     ; $6386: $01 $7e $03
	nop                                              ; $6389: $00
	xor c                                            ; $638a: $a9
	sub [hl]                                         ; $638b: $96
	rst $38                                          ; $638c: $ff
	rlca                                             ; $638d: $07
	rra                                              ; $638e: $1f
	jr @+$80                                         ; $638f: $18 $7e

	nop                                              ; $6391: $00
	or c                                             ; $6392: $b1
	ld sp, $0000                                     ; $6393: $31 $00 $00
	rra                                              ; $6396: $1f
	jr jr_031_634a                                   ; $6397: $18 $b1

	add c                                            ; $6399: $81
	ld [$1f03], sp                                   ; $639a: $08 $03 $1f
	ld [$0820], sp                                   ; $639d: $08 $20 $08
	dec de                                           ; $63a0: $1b
	ld [$1dc8], sp                                   ; $63a1: $08 $c8 $1d
	ld [$1dc3], sp                                   ; $63a4: $08 $c3 $1d
	ld [$20c8], sp                                   ; $63a7: $08 $c8 $20
	ld [$81b1], sp                                   ; $63aa: $08 $b1 $81
	rst $38                                          ; $63ad: $ff
	rlca                                             ; $63ae: $07
	ld a, [hl]                                       ; $63af: $7e
	inc bc                                           ; $63b0: $03
	nop                                              ; $63b1: $00
	xor c                                            ; $63b2: $a9
	ld d, $18                                        ; $63b3: $16 $18
	or c                                             ; $63b5: $b1
	sub c                                            ; $63b6: $91
	rst $38                                          ; $63b7: $ff
	ld b, $7e                                        ; $63b8: $06 $7e
	nop                                              ; $63ba: $00
	ld d, $08                                        ; $63bb: $16 $08
	dec d                                            ; $63bd: $15
	ld [$ff96], sp                                   ; $63be: $08 $96 $ff
	inc b                                            ; $63c1: $04
	ld d, $07                                        ; $63c2: $16 $07
	nop                                              ; $63c4: $00
	ld bc, $1018                                     ; $63c5: $01 $18 $10
	ld a, [de]                                       ; $63c8: $1a
	ld [$81b1], sp                                   ; $63c9: $08 $b1 $81
	nop                                              ; $63cc: $00
	nop                                              ; $63cd: $00
	dec de                                           ; $63ce: $1b
	ld [$1bc3], sp                                   ; $63cf: $08 $c3 $1b
	ld [$1fc8], sp                                   ; $63d2: $08 $c8 $1f
	rlca                                             ; $63d5: $07
	nop                                              ; $63d6: $00
	ld bc, $037e                                     ; $63d7: $01 $7e $03
	nop                                              ; $63da: $00
	xor c                                            ; $63db: $a9
	or c                                             ; $63dc: $b1
	and c                                            ; $63dd: $a1
	rst $38                                          ; $63de: $ff
	rlca                                             ; $63df: $07

jr_031_63e0:
	inc de                                           ; $63e0: $13
	jr jr_031_6461                                   ; $63e1: $18 $7e

	nop                                              ; $63e3: $00
	or c                                             ; $63e4: $b1
	ld sp, $0000                                     ; $63e5: $31 $00 $00
	inc de                                           ; $63e8: $13
	jr @-$4d                                         ; $63e9: $18 $b1

	add c                                            ; $63eb: $81
	rst $38                                          ; $63ec: $ff
	inc b                                            ; $63ed: $04
	rra                                              ; $63ee: $1f
	db $10                                           ; $63ef: $10
	rra                                              ; $63f0: $1f
	ld [$91c8], sp                                   ; $63f1: $08 $c8 $91
	ld a, [hl]                                       ; $63f4: $7e
	ld [bc], a                                       ; $63f5: $02
	nop                                              ; $63f6: $00
	and b                                            ; $63f7: $a0
	jr nz, @+$0a                                     ; $63f8: $20 $08

	jp $0820                                         ; $63fa: $c3 $20 $08


	ret z                                            ; $63fd: $c8

	rra                                              ; $63fe: $1f
	rlca                                             ; $63ff: $07
	nop                                              ; $6400: $00
	ld bc, $037e                                     ; $6401: $01 $7e $03
	nop                                              ; $6404: $00
	xor c                                            ; $6405: $a9
	sub [hl]                                         ; $6406: $96
	rst $38                                          ; $6407: $ff
	rlca                                             ; $6408: $07
	jr nz, jr_031_641b                               ; $6409: $20 $10

	or l                                             ; $640b: $b5
	ld [hl], c                                       ; $640c: $71
	ld [bc], a                                       ; $640d: $02
	ld [$7e02], sp                                   ; $640e: $08 $02 $7e
	nop                                              ; $6411: $00
	add hl, sp                                       ; $6412: $39
	ld bc, $063a                                     ; $6413: $01 $3a $06
	nop                                              ; $6416: $00
	ld bc, $0139                                     ; $6417: $01 $39 $01
	sub [hl]                                         ; $641a: $96

jr_031_641b:
	rrca                                             ; $641b: $0f
	inc b                                            ; $641c: $04
	ld a, [hl-]                                      ; $641d: $3a
	rrca                                             ; $641e: $0f
	sub c                                            ; $641f: $91
	ret z                                            ; $6420: $c8

	jr nz, jr_031_642a                               ; $6421: $20 $07

	nop                                              ; $6423: $00
	ld bc, $0820                                     ; $6424: $01 $20 $08
	jp $0820                                         ; $6427: $c3 $20 $08


jr_031_642a:
	ret z                                            ; $642a: $c8

	jr nz, @+$0a                                     ; $642b: $20 $08

	ld a, [hl]                                       ; $642d: $7e
	ld [bc], a                                       ; $642e: $02
	nop                                              ; $642f: $00
	and b                                            ; $6430: $a0
	ret z                                            ; $6431: $c8

	rra                                              ; $6432: $1f
	ld [$1fc3], sp                                   ; $6433: $08 $c3 $1f
	ld [$1ec8], sp                                   ; $6436: $08 $c8 $1e
	rlca                                             ; $6439: $07
	nop                                              ; $643a: $00
	ld bc, $037e                                     ; $643b: $01 $7e $03
	nop                                              ; $643e: $00
	xor c                                            ; $643f: $a9
	sub [hl]                                         ; $6440: $96
	rst $38                                          ; $6441: $ff
	rlca                                             ; $6442: $07
	rra                                              ; $6443: $1f
	db $10                                           ; $6444: $10
	or l                                             ; $6445: $b5
	ld [hl], c                                       ; $6446: $71
	ld [bc], a                                       ; $6447: $02
	ld [$7e02], sp                                   ; $6448: $08 $02 $7e
	nop                                              ; $644b: $00
	add hl, sp                                       ; $644c: $39
	ld bc, $063a                                     ; $644d: $01 $3a $06
	nop                                              ; $6450: $00
	ld bc, $39c7                                     ; $6451: $01 $c7 $39
	ld bc, $1796                                     ; $6454: $01 $96 $17
	ld b, $3a                                        ; $6457: $06 $3a
	rla                                              ; $6459: $17
	or l                                             ; $645a: $b5
	add c                                            ; $645b: $81
	ld bc, $0308                                     ; $645c: $01 $08 $03
	ld a, [hl]                                       ; $645f: $7e
	ld [bc], a                                       ; $6460: $02

jr_031_6461:
	nop                                              ; $6461: $00
	and b                                            ; $6462: $a0
	rra                                              ; $6463: $1f
	ld [$0820], sp                                   ; $6464: $08 $20 $08
	dec de                                           ; $6467: $1b
	ld [$1dc8], sp                                   ; $6468: $08 $c8 $1d
	ld [$1dc3], sp                                   ; $646b: $08 $c3 $1d
	ld [$20c8], sp                                   ; $646e: $08 $c8 $20
	ld [$81b1], sp                                   ; $6471: $08 $b1 $81
	rst $38                                          ; $6474: $ff
	rlca                                             ; $6475: $07
	ld a, [hl]                                       ; $6476: $7e
	inc bc                                           ; $6477: $03
	nop                                              ; $6478: $00
	xor c                                            ; $6479: $a9
	ld d, $18                                        ; $647a: $16 $18
	ld a, [hl]                                       ; $647c: $7e
	nop                                              ; $647d: $00
	or c                                             ; $647e: $b1
	ld sp, $0000                                     ; $647f: $31 $00 $00
	ld d, $10                                        ; $6482: $16 $10
	or l                                             ; $6484: $b5
	sub c                                            ; $6485: $91
	ld [bc], a                                       ; $6486: $02
	rst $38                                          ; $6487: $ff
	dec b                                            ; $6488: $05
	jr @+$09                                         ; $6489: $18 $07

	nop                                              ; $648b: $00
	ld bc, $1016                                     ; $648c: $01 $16 $10
	inc d                                            ; $648f: $14
	ld [$c1b1], sp                                   ; $6490: $08 $b1 $c1
	rst $38                                          ; $6493: $ff
	ld [bc], a                                       ; $6494: $02
	ld a, [hl]                                       ; $6495: $7e
	dec b                                            ; $6496: $05
	nop                                              ; $6497: $00
	and b                                            ; $6498: $a0
	cp [hl]                                          ; $6499: $be
	ld [$0a13], sp                                   ; $649a: $08 $13 $0a
	inc de                                           ; $649d: $13
	ld d, $11                                        ; $649e: $16 $11
	inc d                                            ; $64a0: $14
	cp [hl]                                          ; $64a1: $be
	or c                                             ; $64a2: $b1
	or c                                             ; $64a3: $b1
	rst $38                                          ; $64a4: $ff
	inc b                                            ; $64a5: $04
	inc de                                           ; $64a6: $13
	ld d, $b1                                        ; $64a7: $16 $b1
	ld sp, $0000                                     ; $64a9: $31 $00 $00
	inc de                                           ; $64ac: $13
	ld [bc], a                                       ; $64ad: $02
	or l                                             ; $64ae: $b5
	ld h, c                                          ; $64af: $61
	nop                                              ; $64b0: $00
	rst $38                                          ; $64b1: $ff
	dec b                                            ; $64b2: $05
	ld a, l                                          ; $64b3: $7d
	ld [bc], a                                       ; $64b4: $02
	ld a, [hl]                                       ; $64b5: $7e
	nop                                              ; $64b6: $00
	dec de                                           ; $64b7: $1b
	inc d                                            ; $64b8: $14
	dec e                                            ; $64b9: $1d
	inc b                                            ; $64ba: $04
	rra                                              ; $64bb: $1f
	ld [bc], a                                       ; $64bc: $02
	or l                                             ; $64bd: $b5
	ld h, c                                          ; $64be: $61
	nop                                              ; $64bf: $00
	rst $38                                          ; $64c0: $ff
	dec b                                            ; $64c1: $05
	ld a, l                                          ; $64c2: $7d
	ld [bc], a                                       ; $64c3: $02
	jr nz, @+$18                                     ; $64c4: $20 $16

	or c                                             ; $64c6: $b1
	ld sp, $0000                                     ; $64c7: $31 $00 $00
	jr nz, jr_031_64ce                               ; $64ca: $20 $02

	add $1b                                          ; $64cc: $c6 $1b

jr_031_64ce:
	ld [$1bc3], sp                                   ; $64ce: $08 $c3 $1b
	ld [$20c6], sp                                   ; $64d1: $08 $c6 $20
	ld [$ff96], sp                                   ; $64d4: $08 $96 $ff
	dec b                                            ; $64d7: $05
	inc h                                            ; $64d8: $24
	inc d                                            ; $64d9: $14
	or c                                             ; $64da: $b1
	ld sp, $0000                                     ; $64db: $31 $00 $00
	inc h                                            ; $64de: $24
	inc b                                            ; $64df: $04
	add $20                                          ; $64e0: $c6 $20
	ld [$20c3], sp                                   ; $64e2: $08 $c3 $20
	ld [$24c6], sp                                   ; $64e5: $08 $c6 $24
	ld [$0627], sp                                   ; $64e8: $08 $27 $06
	jp $0227                                         ; $64eb: $c3 $27 $02


	add $29                                          ; $64ee: $c6 $29
	ld b, $c3                                        ; $64f0: $06 $c3
	add hl, hl                                       ; $64f2: $29
	ld [bc], a                                       ; $64f3: $02
	add $27                                          ; $64f4: $c6 $27
	ld b, $c3                                        ; $64f6: $06 $c3
	daa                                              ; $64f8: $27
	ld [bc], a                                       ; $64f9: $02
	add $25                                          ; $64fa: $c6 $25
	ld b, $c3                                        ; $64fc: $06 $c3
	dec h                                            ; $64fe: $25
	ld [bc], a                                       ; $64ff: $02
	add $24                                          ; $6500: $c6 $24
	ld b, $c3                                        ; $6502: $06 $c3
	inc h                                            ; $6504: $24
	ld [bc], a                                       ; $6505: $02
	add $22                                          ; $6506: $c6 $22
	ld b, $c3                                        ; $6508: $06 $c3
	ld [hl+], a                                      ; $650a: $22
	ld [bc], a                                       ; $650b: $02
	add $20                                          ; $650c: $c6 $20
	ld [$20c7], sp                                   ; $650e: $08 $c7 $20
	ld [$20c3], sp                                   ; $6511: $08 $c3 $20
	ld b, $c9                                        ; $6514: $06 $c9
	sub d                                            ; $6516: $92
	ld a, [hl]                                       ; $6517: $7e
	ld [bc], a                                       ; $6518: $02
	nop                                              ; $6519: $00
	and b                                            ; $651a: $a0
	dec de                                           ; $651b: $1b
	ld d, $c3                                        ; $651c: $16 $c3
	dec de                                           ; $651e: $1b
	ld [bc], a                                       ; $651f: $02
	ld a, [hl]                                       ; $6520: $7e
	nop                                              ; $6521: $00
	ld a, l                                          ; $6522: $7d
	nop                                              ; $6523: $00
	cp $ff                                           ; $6524: $fe $ff
	ret nc                                           ; $6526: $d0

	ld a, l                                          ; $6527: $7d
	cp $cb                                           ; $6528: $fe $cb
	sub b                                            ; $652a: $90
	ld [hl+], a                                      ; $652b: $22
	ld [$22c2], sp                                   ; $652c: $08 $c2 $22
	ld [$23cb], sp                                   ; $652f: $08 $cb $23
	rlca                                             ; $6532: $07
	nop                                              ; $6533: $00
	ld bc, $24cb                                     ; $6534: $01 $cb $24
	ld [$24c2], sp                                   ; $6537: $08 $c2 $24
	ld [$25ca], sp                                   ; $653a: $08 $ca $25
	rlca                                             ; $653d: $07
	nop                                              ; $653e: $00
	ld bc, $26ca                                     ; $653f: $01 $ca $26
	ld [$26c2], sp                                   ; $6542: $08 $c2 $26
	ld [$27c9], sp                                   ; $6545: $08 $c9 $27
	rlca                                             ; $6548: $07
	nop                                              ; $6549: $00
	ld bc, $28c9                                     ; $654a: $01 $c9 $28
	ld [$28c2], sp                                   ; $654d: $08 $c2 $28
	ld [$29c9], sp                                   ; $6550: $08 $c9 $29
	rlca                                             ; $6553: $07
	nop                                              ; $6554: $00
	ld bc, $2ec8                                     ; $6555: $01 $c8 $2e
	ld [$2ec2], sp                                   ; $6558: $08 $c2 $2e
	ld [$2dc8], sp                                   ; $655b: $08 $c8 $2d
	rlca                                             ; $655e: $07
	nop                                              ; $655f: $00
	ld bc, $2ec8                                     ; $6560: $01 $c8 $2e
	ld [$2ec2], sp                                   ; $6563: $08 $c2 $2e
	ld [$2dc8], sp                                   ; $6566: $08 $c8 $2d
	rlca                                             ; $6569: $07
	nop                                              ; $656a: $00
	ld bc, $2ec8                                     ; $656b: $01 $c8 $2e
	ld [$2ec3], sp                                   ; $656e: $08 $c3 $2e
	ld [$2ec2], sp                                   ; $6571: $08 $c2 $2e
	ld [$91b5], sp                                   ; $6574: $08 $b5 $91
	ld bc, $03ff                                     ; $6577: $01 $ff $03
	daa                                              ; $657a: $27
	db $10                                           ; $657b: $10
	daa                                              ; $657c: $27
	ld [$91c9], sp                                   ; $657d: $08 $c9 $91
	ld h, $08                                        ; $6580: $26 $08
	jp nz, $0826                                     ; $6582: $c2 $26 $08

	ret                                              ; $6585: $c9


	dec h                                            ; $6586: $25
	rlca                                             ; $6587: $07
	nop                                              ; $6588: $00
	ld bc, $037e                                     ; $6589: $01 $7e $03
	nop                                              ; $658c: $00
	xor c                                            ; $658d: $a9
	sub [hl]                                         ; $658e: $96
	rst $38                                          ; $658f: $ff
	rlca                                             ; $6590: $07
	ld h, $18                                        ; $6591: $26 $18
	ld a, [hl]                                       ; $6593: $7e
	nop                                              ; $6594: $00
	or c                                             ; $6595: $b1
	ld hl, $0000                                     ; $6596: $21 $00 $00
	ld h, $10                                        ; $6599: $26 $10
	ret                                              ; $659b: $c9


	dec h                                            ; $659c: $25
	rlca                                             ; $659d: $07
	nop                                              ; $659e: $00
	ld bc, $0826                                     ; $659f: $01 $26 $08
	jp nz, $0826                                     ; $65a2: $c2 $26 $08

	ret                                              ; $65a5: $c9


	inc h                                            ; $65a6: $24
	ld [$22ca], sp                                   ; $65a7: $08 $ca $22
	ld [$22c2], sp                                   ; $65aa: $08 $c2 $22
	ld [$21ca], sp                                   ; $65ad: $08 $ca $21
	rlca                                             ; $65b0: $07
	nop                                              ; $65b1: $00
	ld bc, $037e                                     ; $65b2: $01 $7e $03
	nop                                              ; $65b5: $00
	xor c                                            ; $65b6: $a9
	sub [hl]                                         ; $65b7: $96
	rst $38                                          ; $65b8: $ff
	rlca                                             ; $65b9: $07
	ld [hl+], a                                      ; $65ba: $22
	jr @+$80                                         ; $65bb: $18 $7e

	nop                                              ; $65bd: $00
	or c                                             ; $65be: $b1
	ld hl, $0000                                     ; $65bf: $21 $00 $00
	ld [hl+], a                                      ; $65c2: $22

jr_031_65c3:
	jr @-$4d                                         ; $65c3: $18 $b1

	or c                                             ; $65c5: $b1
	ld [$2203], sp                                   ; $65c6: $08 $03 $22
	ld [$0824], sp                                   ; $65c9: $08 $24 $08
	rra                                              ; $65cc: $1f
	ld [$20cc], sp                                   ; $65cd: $08 $cc $20
	ld [$20c2], sp                                   ; $65d0: $08 $c2 $20
	ld [$24cc], sp                                   ; $65d3: $08 $cc $24
	ld [$d1b1], sp                                   ; $65d6: $08 $b1 $d1
	rst $38                                          ; $65d9: $ff
	rlca                                             ; $65da: $07
	ld a, [hl]                                       ; $65db: $7e
	inc bc                                           ; $65dc: $03
	nop                                              ; $65dd: $00
	xor c                                            ; $65de: $a9
	ld a, [de]                                       ; $65df: $1a
	jr jr_031_6660                                   ; $65e0: $18 $7e

	nop                                              ; $65e2: $00
	jp $101a                                         ; $65e3: $c3 $1a $10


	or c                                             ; $65e6: $b1
	or c                                             ; $65e7: $b1
	rst $38                                          ; $65e8: $ff
	inc bc                                           ; $65e9: $03
	jr nz, @+$09                                     ; $65ea: $20 $07

	nop                                              ; $65ec: $00
	ld bc, $101f                                     ; $65ed: $01 $1f $10
	dec e                                            ; $65f0: $1d
	ld [$b1b1], sp                                   ; $65f1: $08 $b1 $b1
	nop                                              ; $65f4: $00
	nop                                              ; $65f5: $00
	rra                                              ; $65f6: $1f
	ld [$1fc2], sp                                   ; $65f7: $08 $c2 $1f
	ld [$22cb], sp                                   ; $65fa: $08 $cb $22
	rlca                                             ; $65fd: $07
	nop                                              ; $65fe: $00
	ld bc, $037e                                     ; $65ff: $01 $7e $03
	nop                                              ; $6602: $00
	xor c                                            ; $6603: $a9
	sub [hl]                                         ; $6604: $96
	rst $38                                          ; $6605: $ff
	rlca                                             ; $6606: $07
	dec de                                           ; $6607: $1b
	jr jr_031_6688                                   ; $6608: $18 $7e

	nop                                              ; $660a: $00
	or c                                             ; $660b: $b1
	ld hl, $0000                                     ; $660c: $21 $00 $00
	dec de                                           ; $660f: $1b
	jr jr_031_65c3                                   ; $6610: $18 $b1

	and c                                            ; $6612: $a1
	rst $38                                          ; $6613: $ff
	inc bc                                           ; $6614: $03
	daa                                              ; $6615: $27
	db $10                                           ; $6616: $10
	daa                                              ; $6617: $27
	ld [$91ca], sp                                   ; $6618: $08 $ca $91
	ld h, $08                                        ; $661b: $26 $08
	jp nz, $0826                                     ; $661d: $c2 $26 $08

	jp z, $0725                                      ; $6620: $ca $25 $07

	nop                                              ; $6623: $00
	ld bc, $037e                                     ; $6624: $01 $7e $03
	nop                                              ; $6627: $00
	xor c                                            ; $6628: $a9
	sub [hl]                                         ; $6629: $96
	rst $38                                          ; $662a: $ff
	rlca                                             ; $662b: $07
	ld h, $18                                        ; $662c: $26 $18
	ld a, [hl]                                       ; $662e: $7e
	nop                                              ; $662f: $00
	or c                                             ; $6630: $b1
	ld hl, $0000                                     ; $6631: $21 $00 $00
	ld h, $10                                        ; $6634: $26 $10
	jp z, $0725                                      ; $6636: $ca $25 $07

	nop                                              ; $6639: $00
	ld bc, $0826                                     ; $663a: $01 $26 $08
	jp nz, $0826                                     ; $663d: $c2 $26 $08

	jp z, $0824                                      ; $6640: $ca $24 $08

	jp z, $0822                                      ; $6643: $ca $22 $08

	jp nz, $0822                                     ; $6646: $c2 $22 $08

	jp z, $0721                                      ; $6649: $ca $21 $07

	nop                                              ; $664c: $00
	ld bc, $037e                                     ; $664d: $01 $7e $03
	nop                                              ; $6650: $00
	xor c                                            ; $6651: $a9
	sub [hl]                                         ; $6652: $96
	rst $38                                          ; $6653: $ff
	rlca                                             ; $6654: $07
	ld [hl+], a                                      ; $6655: $22
	jr jr_031_66d6                                   ; $6656: $18 $7e

	nop                                              ; $6658: $00
	or c                                             ; $6659: $b1
	ld hl, $0000                                     ; $665a: $21 $00 $00
	ld [hl+], a                                      ; $665d: $22
	jr @-$4d                                         ; $665e: $18 $b1

jr_031_6660:
	and c                                            ; $6660: $a1
	ld [$2203], sp                                   ; $6661: $08 $03 $22
	ld [$0824], sp                                   ; $6664: $08 $24 $08
	rra                                              ; $6667: $1f
	ld [$20cb], sp                                   ; $6668: $08 $cb $20
	ld [$20c2], sp                                   ; $666b: $08 $c2 $20
	ld [$24cb], sp                                   ; $666e: $08 $cb $24
	ld [$c1b1], sp                                   ; $6671: $08 $b1 $c1
	rst $38                                          ; $6674: $ff
	rlca                                             ; $6675: $07
	ld a, [hl]                                       ; $6676: $7e
	inc bc                                           ; $6677: $03
	nop                                              ; $6678: $00
	xor c                                            ; $6679: $a9
	ld a, [de]                                       ; $667a: $1a
	jr @+$80                                         ; $667b: $18 $7e

	nop                                              ; $667d: $00
	jp nz, $101a                                     ; $667e: $c2 $1a $10

	or c                                             ; $6681: $b1
	or c                                             ; $6682: $b1
	rst $38                                          ; $6683: $ff
	inc bc                                           ; $6684: $03
	jr nz, @+$09                                     ; $6685: $20 $07

	nop                                              ; $6687: $00

jr_031_6688:
	ld bc, $101f                                     ; $6688: $01 $1f $10
	dec e                                            ; $668b: $1d
	ld [$a1b1], sp                                   ; $668c: $08 $b1 $a1
	nop                                              ; $668f: $00
	nop                                              ; $6690: $00
	ld a, [hl]                                       ; $6691: $7e
	dec b                                            ; $6692: $05
	nop                                              ; $6693: $00
	and b                                            ; $6694: $a0
	dec de                                           ; $6695: $1b
	db $10                                           ; $6696: $10
	jp nz, $081b                                     ; $6697: $c2 $1b $08

	jp z, $101b                                      ; $669a: $ca $1b $10

	jp nz, $081b                                     ; $669d: $c2 $1b $08

	jp z, $161b                                      ; $66a0: $ca $1b $16

	jp nz, $021b                                     ; $66a3: $c2 $1b $02

	ld a, [hl]                                       ; $66a6: $7e
	nop                                              ; $66a7: $00
	or l                                             ; $66a8: $b5
	and c                                            ; $66a9: $a1
	nop                                              ; $66aa: $00
	rst $38                                          ; $66ab: $ff
	dec b                                            ; $66ac: $05
	dec de                                           ; $66ad: $1b
	db $10                                           ; $66ae: $10
	dec e                                            ; $66af: $1d
	inc b                                            ; $66b0: $04
	rra                                              ; $66b1: $1f
	inc b                                            ; $66b2: $04
	or l                                             ; $66b3: $b5
	or c                                             ; $66b4: $b1
	nop                                              ; $66b5: $00
	rst $38                                          ; $66b6: $ff
	dec b                                            ; $66b7: $05
	jr nz, @+$18                                     ; $66b8: $20 $16

	or c                                             ; $66ba: $b1
	ld hl, $0000                                     ; $66bb: $21 $00 $00
	jr nz, jr_031_66c2                               ; $66be: $20 $02

	rr e                                             ; $66c0: $cb $1b

jr_031_66c2:
	ld [$1bc2], sp                                   ; $66c2: $08 $c2 $1b
	ld [$20cb], sp                                   ; $66c5: $08 $cb $20
	ld [$ff96], sp                                   ; $66c8: $08 $96 $ff
	dec b                                            ; $66cb: $05
	inc h                                            ; $66cc: $24
	inc d                                            ; $66cd: $14
	or c                                             ; $66ce: $b1
	ld hl, $0000                                     ; $66cf: $21 $00 $00
	inc h                                            ; $66d2: $24
	inc b                                            ; $66d3: $04
	sla b                                            ; $66d4: $cb $20

jr_031_66d6:
	ld [$20c2], sp                                   ; $66d6: $08 $c2 $20
	ld [$24ca], sp                                   ; $66d9: $08 $ca $24
	ld [$0627], sp                                   ; $66dc: $08 $27 $06
	jp nz, $0227                                     ; $66df: $c2 $27 $02

	ret                                              ; $66e2: $c9


	add hl, hl                                       ; $66e3: $29
	ld b, $c2                                        ; $66e4: $06 $c2
	add hl, hl                                       ; $66e6: $29
	ld [bc], a                                       ; $66e7: $02
	jp z, $0627                                      ; $66e8: $ca $27 $06

	jp nz, $0227                                     ; $66eb: $c2 $27 $02

	jp z, $0625                                      ; $66ee: $ca $25 $06

	jp nz, $0225                                     ; $66f1: $c2 $25 $02

	sla h                                            ; $66f4: $cb $24
	ld b, $c2                                        ; $66f6: $06 $c2
	inc h                                            ; $66f8: $24
	ld [bc], a                                       ; $66f9: $02
	sla d                                            ; $66fa: $cb $22
	ld b, $c2                                        ; $66fc: $06 $c2
	ld [hl+], a                                      ; $66fe: $22
	ld [bc], a                                       ; $66ff: $02
	jp z, $0820                                      ; $6700: $ca $20 $08

	add $20                                          ; $6703: $c6 $20
	ld [$20c2], sp                                   ; $6705: $08 $c2 $20
	ld [$90ca], sp                                   ; $6708: $08 $ca $90
	ld a, [hl]                                       ; $670b: $7e
	ld [bc], a                                       ; $670c: $02
	nop                                              ; $670d: $00
	and b                                            ; $670e: $a0
	ld hl, $c216                                     ; $670f: $21 $16 $c2
	ld hl, $7e02                                     ; $6712: $21 $02 $7e
	nop                                              ; $6715: $00
	cp $ff                                           ; $6716: $fe $ff
	ret nc                                           ; $6718: $d0

	ld a, l                                          ; $6719: $7d
	cp $c2                                           ; $671a: $fe $c2
	add l                                            ; $671c: $85
	ld [hl+], a                                      ; $671d: $22
	ld [$22c6], sp                                   ; $671e: $08 $c6 $22
	ld [$21c2], sp                                   ; $6721: $08 $c2 $21
	ld [$0820], sp                                   ; $6724: $08 $20 $08
	add $20                                          ; $6727: $c6 $20
	ld [$1fc2], sp                                   ; $6729: $08 $c2 $1f
	ld [$081d], sp                                   ; $672c: $08 $1d $08
	add $1d                                          ; $672f: $c6 $1d
	ld [$1bc2], sp                                   ; $6731: $08 $c2 $1b
	ld [$081a], sp                                   ; $6734: $08 $1a $08
	add $1a                                          ; $6737: $c6 $1a
	ld [$18c2], sp                                   ; $6739: $08 $c2 $18
	ld [$0816], sp                                   ; $673c: $08 $16 $08
	add $16                                          ; $673f: $c6 $16
	ld [$17c2], sp                                   ; $6741: $08 $c2 $17
	ld [$0816], sp                                   ; $6744: $08 $16 $08
	add $16                                          ; $6747: $c6 $16
	ld [$17c2], sp                                   ; $6749: $08 $c2 $17
	ld [$1016], sp                                   ; $674c: $08 $16 $10
	call nz, $0816                                   ; $674f: $c4 $16 $08
	add $16                                          ; $6752: $c6 $16
	ld [$1000], sp                                   ; $6754: $08 $00 $10
	add l                                            ; $6757: $85
	ei                                               ; $6758: $fb
	jp nz, $081d                                     ; $6759: $c2 $1d $08

	call nz, $081d                                   ; $675c: $c4 $1d $08
	add $1d                                          ; $675f: $c6 $1d
	ld [$16c2], sp                                   ; $6761: $08 $c2 $16
	ld [$16c4], sp                                   ; $6764: $08 $c4 $16
	ld [$16c6], sp                                   ; $6767: $08 $c6 $16
	ld [$1dc2], sp                                   ; $676a: $08 $c2 $1d
	ld [$1dc4], sp                                   ; $676d: $08 $c4 $1d
	ld [$1dc6], sp                                   ; $6770: $08 $c6 $1d
	ld [$16c2], sp                                   ; $6773: $08 $c2 $16
	rlca                                             ; $6776: $07
	call nz, $0116                                   ; $6777: $c4 $16 $01
	jp nz, $0718                                     ; $677a: $c2 $18 $07

	call nz, $0118                                   ; $677d: $c4 $18 $01
	jp nz, $071a                                     ; $6780: $c2 $1a $07

	call nz, $011a                                   ; $6783: $c4 $1a $01
	jp nz, $081b                                     ; $6786: $c2 $1b $08

	call nz, $081b                                   ; $6789: $c4 $1b $08
	add $1b                                          ; $678c: $c6 $1b
	ld [$16c2], sp                                   ; $678e: $08 $c2 $16
	ld [$16c4], sp                                   ; $6791: $08 $c4 $16
	ld [$16c6], sp                                   ; $6794: $08 $c6 $16
	ld [$1bc2], sp                                   ; $6797: $08 $c2 $1b
	ld [$1bc4], sp                                   ; $679a: $08 $c4 $1b
	ld [$1bc6], sp                                   ; $679d: $08 $c6 $1b
	ld [$16c2], sp                                   ; $67a0: $08 $c2 $16
	ld [$16c4], sp                                   ; $67a3: $08 $c4 $16
	ld [$16c6], sp                                   ; $67a6: $08 $c6 $16
	ld [$02fb], sp                                   ; $67a9: $08 $fb $02
	jp nz, $1d85                                     ; $67ac: $c2 $85 $1d

	ld [$1dc4], sp                                   ; $67af: $08 $c4 $1d
	ld [$1dc6], sp                                   ; $67b2: $08 $c6 $1d
	ld [$16c2], sp                                   ; $67b5: $08 $c2 $16
	ld [$16c4], sp                                   ; $67b8: $08 $c4 $16
	ld [$16c6], sp                                   ; $67bb: $08 $c6 $16
	ld [$1dc2], sp                                   ; $67be: $08 $c2 $1d
	ld [$1dc4], sp                                   ; $67c1: $08 $c4 $1d
	ld [$1dc6], sp                                   ; $67c4: $08 $c6 $1d
	ld [$16c2], sp                                   ; $67c7: $08 $c2 $16
	ld b, $c4                                        ; $67ca: $06 $c4
	ld d, $02                                        ; $67cc: $16 $02
	jp nz, $0618                                     ; $67ce: $c2 $18 $06

	call nz, $0218                                   ; $67d1: $c4 $18 $02
	jp nz, $061a                                     ; $67d4: $c2 $1a $06

	call nz, $021a                                   ; $67d7: $c4 $1a $02
	jp nz, $081b                                     ; $67da: $c2 $1b $08

	call nz, $081b                                   ; $67dd: $c4 $1b $08
	add $1b                                          ; $67e0: $c6 $1b
	ld [$16c2], sp                                   ; $67e2: $08 $c2 $16
	ld [$16c4], sp                                   ; $67e5: $08 $c4 $16
	ld [$16c6], sp                                   ; $67e8: $08 $c6 $16
	ld [$1bc2], sp                                   ; $67eb: $08 $c2 $1b
	ld [$1bc4], sp                                   ; $67ee: $08 $c4 $1b
	ld [$1bc6], sp                                   ; $67f1: $08 $c6 $1b
	ld [$16c2], sp                                   ; $67f4: $08 $c2 $16
	ld [$16c4], sp                                   ; $67f7: $08 $c4 $16
	ld [$16c6], sp                                   ; $67fa: $08 $c6 $16
	ld [$1dc2], sp                                   ; $67fd: $08 $c2 $1d
	ld [$1dc4], sp                                   ; $6800: $08 $c4 $1d
	ld [$1dc6], sp                                   ; $6803: $08 $c6 $1d
	ld [$16c2], sp                                   ; $6806: $08 $c2 $16
	ld [$16c4], sp                                   ; $6809: $08 $c4 $16
	ld [$16c6], sp                                   ; $680c: $08 $c6 $16
	ld [$1dc2], sp                                   ; $680f: $08 $c2 $1d
	ld [$1dc4], sp                                   ; $6812: $08 $c4 $1d
	ld [$1dc6], sp                                   ; $6815: $08 $c6 $1d
	ld [$16c2], sp                                   ; $6818: $08 $c2 $16
	ld b, $c4                                        ; $681b: $06 $c4
	ld d, $02                                        ; $681d: $16 $02
	jp nz, $0618                                     ; $681f: $c2 $18 $06

	call nz, $0218                                   ; $6822: $c4 $18 $02
	jp nz, $061a                                     ; $6825: $c2 $1a $06

	call nz, $021a                                   ; $6828: $c4 $1a $02
	jp nz, $081b                                     ; $682b: $c2 $1b $08

	call nz, $081b                                   ; $682e: $c4 $1b $08
	add $1b                                          ; $6831: $c6 $1b
	ld [$1bc2], sp                                   ; $6833: $08 $c2 $1b
	ld [$1bc4], sp                                   ; $6836: $08 $c4 $1b
	ld [$1bc6], sp                                   ; $6839: $08 $c6 $1b
	ld [$1bc2], sp                                   ; $683c: $08 $c2 $1b
	jr nz, @-$3a                                     ; $683f: $20 $c4

	dec de                                           ; $6841: $1b
	ld [$1bc6], sp                                   ; $6842: $08 $c6 $1b
	ld [$85c2], sp                                   ; $6845: $08 $c2 $85
	inc d                                            ; $6848: $14
	db $10                                           ; $6849: $10
	add $14                                          ; $684a: $c6 $14
	ld [$0fc2], sp                                   ; $684c: $08 $c2 $0f
	ld [$0fc6], sp                                   ; $684f: $08 $c6 $0f
	ld [$14c2], sp                                   ; $6852: $08 $c2 $14
	ld b, $c4                                        ; $6855: $06 $c4
	inc d                                            ; $6857: $14
	ld [bc], a                                       ; $6858: $02
	jp nz, $1418                                     ; $6859: $c2 $18 $14

	add $18                                          ; $685c: $c6 $18
	inc b                                            ; $685e: $04
	jp nz, $0814                                     ; $685f: $c2 $14 $08

jr_031_6862:
	add $14                                          ; $6862: $c6 $14
	ld [$18c2], sp                                   ; $6864: $08 $c2 $18
	ld [$1bc2], sp                                   ; $6867: $08 $c2 $1b
	ld b, $c4                                        ; $686a: $06 $c4
	dec de                                           ; $686c: $1b
	ld [bc], a                                       ; $686d: $02
	jp nz, $061d                                     ; $686e: $c2 $1d $06

	call nz, $021d                                   ; $6871: $c4 $1d $02
	jp nz, $061b                                     ; $6874: $c2 $1b $06

	call nz, $021b                                   ; $6877: $c4 $1b $02
	jp nz, $0619                                     ; $687a: $c2 $19 $06

	call nz, $0219                                   ; $687d: $c4 $19 $02
	jp nz, $0618                                     ; $6880: $c2 $18 $06

	call nz, $0218                                   ; $6883: $c4 $18 $02
	jp nz, $0616                                     ; $6886: $c2 $16 $06

	call nz, $0216                                   ; $6889: $c4 $16 $02
	jp nz, $0814                                     ; $688c: $c2 $14 $08

	call nz, $0814                                   ; $688f: $c4 $14 $08
	add $14                                          ; $6892: $c6 $14
	ld [$15c2], sp                                   ; $6894: $08 $c2 $15
	ld d, $c4                                        ; $6897: $16 $c4
	dec d                                            ; $6899: $15
	ld [bc], a                                       ; $689a: $02
	cp $ff                                           ; $689b: $fe $ff
	ret nc                                           ; $689d: $d0

	ld a, l                                          ; $689e: $7d
	cp $fb                                           ; $689f: $fe $fb
	inc d                                            ; $68a1: $14
	jr jr_031_6862                                   ; $68a2: $18 $be

	inc b                                            ; $68a4: $04
	dec c                                            ; $68a5: $0d
	dec c                                            ; $68a6: $0d
	dec c                                            ; $68a7: $0d
	dec c                                            ; $68a8: $0d
	dec c                                            ; $68a9: $0d
	dec c                                            ; $68aa: $0d
	cp [hl]                                          ; $68ab: $be
	ei                                               ; $68ac: $fb
	ld [bc], a                                       ; $68ad: $02
	inc d                                            ; $68ae: $14
	jr jr_031_68c5                                   ; $68af: $18 $14

	jr jr_031_68c7                                   ; $68b1: $18 $14

	jr nc, @+$0d                                     ; $68b3: $30 $0b

	db $10                                           ; $68b5: $10
	dec c                                            ; $68b6: $0d
	ld [$100b], sp                                   ; $68b7: $08 $0b $10
	dec c                                            ; $68ba: $0d
	ld [$100b], sp                                   ; $68bb: $08 $0b $10
	cp [hl]                                          ; $68be: $be
	ld [$0b0d], sp                                   ; $68bf: $08 $0d $0b
	dec c                                            ; $68c2: $0d
	dec c                                            ; $68c3: $0d
	cp [hl]                                          ; $68c4: $be

jr_031_68c5:
	dec bc                                           ; $68c5: $0b
	db $10                                           ; $68c6: $10

jr_031_68c7:
	dec c                                            ; $68c7: $0d
	ld [$100b], sp                                   ; $68c8: $08 $0b $10
	dec c                                            ; $68cb: $0d
	ld [$080b], sp                                   ; $68cc: $08 $0b $08
	ld c, $04                                        ; $68cf: $0e $04
	ld c, $04                                        ; $68d1: $0e $04
	cp [hl]                                          ; $68d3: $be
	ld [$0b0d], sp                                   ; $68d4: $08 $0d $0b
	dec c                                            ; $68d7: $0d
	dec c                                            ; $68d8: $0d
	cp [hl]                                          ; $68d9: $be
	dec bc                                           ; $68da: $0b
	db $10                                           ; $68db: $10
	dec c                                            ; $68dc: $0d
	ld [$100b], sp                                   ; $68dd: $08 $0b $10
	cp [hl]                                          ; $68e0: $be
	ld [$0b0d], sp                                   ; $68e1: $08 $0d $0b
	dec c                                            ; $68e4: $0d
	dec c                                            ; $68e5: $0d
	cp [hl]                                          ; $68e6: $be
	dec bc                                           ; $68e7: $0b
	db $10                                           ; $68e8: $10
	dec c                                            ; $68e9: $0d
	ld [$080b], sp                                   ; $68ea: $08 $0b $08
	dec c                                            ; $68ed: $0d
	ld [$080d], sp                                   ; $68ee: $08 $0d $08
	cp [hl]                                          ; $68f1: $be
	inc b                                            ; $68f2: $04
	dec bc                                           ; $68f3: $0b
	ld c, $0e                                        ; $68f4: $0e $0e
	ld c, $0e                                        ; $68f6: $0e $0e
	ld c, $be                                        ; $68f8: $0e $be
	dec bc                                           ; $68fa: $0b
	ld [$040d], sp                                   ; $68fb: $08 $0d $04
	dec c                                            ; $68fe: $0d
	inc b                                            ; $68ff: $04
	dec c                                            ; $6900: $0d
	ld [$04be], sp                                   ; $6901: $08 $be $04
	dec bc                                           ; $6904: $0b
	ld c, $0e                                        ; $6905: $0e $0e
	ld c, $0e                                        ; $6907: $0e $0e
	ld c, $be                                        ; $6909: $0e $be
	dec bc                                           ; $690b: $0b
	db $10                                           ; $690c: $10
	dec c                                            ; $690d: $0d
	ld [$100b], sp                                   ; $690e: $08 $0b $10
	dec c                                            ; $6911: $0d
	ld [$100b], sp                                   ; $6912: $08 $0b $10
	cp [hl]                                          ; $6915: $be
	ld [$0b0d], sp                                   ; $6916: $08 $0d $0b
	dec c                                            ; $6919: $0d
	dec c                                            ; $691a: $0d
	cp [hl]                                          ; $691b: $be
	dec bc                                           ; $691c: $0b
	db $10                                           ; $691d: $10
	cp [hl]                                          ; $691e: $be
	ld [$0b0d], sp                                   ; $691f: $08 $0d $0b
	dec c                                            ; $6922: $0d
	dec c                                            ; $6923: $0d
	cp [hl]                                          ; $6924: $be
	dec bc                                           ; $6925: $0b
	db $10                                           ; $6926: $10
	cp [hl]                                          ; $6927: $be
	ld [$0b0d], sp                                   ; $6928: $08 $0d $0b
	dec c                                            ; $692b: $0d
	dec c                                            ; $692c: $0d
	cp [hl]                                          ; $692d: $be
	dec bc                                           ; $692e: $0b
	db $10                                           ; $692f: $10
	dec c                                            ; $6930: $0d
	ld [$100b], sp                                   ; $6931: $08 $0b $10
	cp [hl]                                          ; $6934: $be
	ld [$0b0d], sp                                   ; $6935: $08 $0d $0b
	dec c                                            ; $6938: $0d
	dec c                                            ; $6939: $0d
	cp [hl]                                          ; $693a: $be
	cp [hl]                                          ; $693b: $be
	inc b                                            ; $693c: $04
	dec bc                                           ; $693d: $0b
	ld c, $0e                                        ; $693e: $0e $0e
	ld c, $0e                                        ; $6940: $0e $0e
	ld c, $be                                        ; $6942: $0e $be
	dec bc                                           ; $6944: $0b
	db $10                                           ; $6945: $10
	ld c, $03                                        ; $6946: $0e $03
	ld c, $03                                        ; $6948: $0e $03
	ld c, $02                                        ; $694a: $0e $02
	dec bc                                           ; $694c: $0b
	db $10                                           ; $694d: $10
	ld c, $03                                        ; $694e: $0e $03
	ld c, $03                                        ; $6950: $0e $03
	ld c, $02                                        ; $6952: $0e $02
	dec bc                                           ; $6954: $0b
	db $10                                           ; $6955: $10
	dec c                                            ; $6956: $0d
	ld [$03be], sp                                   ; $6957: $08 $be $03
	dec c                                            ; $695a: $0d
	ld c, $0e                                        ; $695b: $0e $0e
	ld c, $0e                                        ; $695d: $0e $0e
	ld c, $0e                                        ; $695f: $0e $0e
	ld c, $be                                        ; $6961: $0e $be
	dec bc                                           ; $6963: $0b
	db $10                                           ; $6964: $10
	ld c, $08                                        ; $6965: $0e $08
	inc d                                            ; $6967: $14
	jr @+$0d                                         ; $6968: $18 $0b

	ld [$040e], sp                                   ; $696a: $08 $0e $04
	ld c, $04                                        ; $696d: $0e $04
	ld c, $08                                        ; $696f: $0e $08
	inc d                                            ; $6971: $14
	jr @-$40                                         ; $6972: $18 $be

	ld [$0d0b], sp                                   ; $6974: $08 $0b $0d
	dec c                                            ; $6977: $0d
	dec bc                                           ; $6978: $0b
	dec c                                            ; $6979: $0d
	dec c                                            ; $697a: $0d
	cp [hl]                                          ; $697b: $be
	dec bc                                           ; $697c: $0b
	jr @+$16                                         ; $697d: $18 $14

jr_031_697f:
	jr jr_031_697f                                   ; $697f: $18 $fe

	rst $38                                          ; $6981: $ff
	or h                                             ; $6982: $b4
	inc [hl]                                         ; $6983: $34
	ld sp, $2502                                     ; $6984: $31 $02 $25
	ld [de], a                                       ; $6987: $12
	pop bc                                           ; $6988: $c1
	dec h                                            ; $6989: $25
	ld b, $fe                                        ; $698a: $06 $fe
	sub c                                            ; $698c: $91
	db $fc                                           ; $698d: $fc
	ei                                               ; $698e: $fb
	call z, $0312                                    ; $698f: $cc $12 $03
	jp z, $0312                                      ; $6992: $ca $12 $03

	rr c                                             ; $6995: $cb $19
	inc bc                                           ; $6997: $03
	jp $0319                                         ; $6998: $c3 $19 $03


	rst JumpTable                                          ; $699b: $c7
	ld e, $03                                        ; $699c: $1e $03
	jp $031e                                         ; $699e: $c3 $1e $03


	ret                                              ; $69a1: $c9


	ld [hl+], a                                      ; $69a2: $22
	inc bc                                           ; $69a3: $03
	jp $0322                                         ; $69a4: $c3 $22 $03


	ret                                              ; $69a7: $c9


	dec h                                            ; $69a8: $25
	inc bc                                           ; $69a9: $03
	jp $0325                                         ; $69aa: $c3 $25 $03


	ret                                              ; $69ad: $c9


	ld [hl+], a                                      ; $69ae: $22
	inc bc                                           ; $69af: $03
	jp $0322                                         ; $69b0: $c3 $22 $03


	ret                                              ; $69b3: $c9


	add hl, de                                       ; $69b4: $19
	inc bc                                           ; $69b5: $03
	jp $0319                                         ; $69b6: $c3 $19 $03


	jp z, $0316                                      ; $69b9: $ca $16 $03

	jp $0316                                         ; $69bc: $c3 $16 $03


	ei                                               ; $69bf: $fb
	inc b                                            ; $69c0: $04
	ei                                               ; $69c1: $fb
	call z, $030d                                    ; $69c2: $cc $0d $03
	jp z, $030d                                      ; $69c5: $ca $0d $03

	rl h                                             ; $69c8: $cb $14
	inc bc                                           ; $69ca: $03
	jp $0314                                         ; $69cb: $c3 $14 $03


	ret                                              ; $69ce: $c9


	add hl, de                                       ; $69cf: $19
	inc bc                                           ; $69d0: $03
	jp $0319                                         ; $69d1: $c3 $19 $03


	ret                                              ; $69d4: $c9


	dec e                                            ; $69d5: $1d
	inc bc                                           ; $69d6: $03
	jp $031d                                         ; $69d7: $c3 $1d $03


	ld a, l                                          ; $69da: $7d
	ld [bc], a                                       ; $69db: $02
	rst JumpTable                                          ; $69dc: $c7
	dec h                                            ; $69dd: $25
	inc bc                                           ; $69de: $03
	jp $0325                                         ; $69df: $c3 $25 $03


	ld a, l                                          ; $69e2: $7d
	nop                                              ; $69e3: $00
	ret                                              ; $69e4: $c9


	add hl, de                                       ; $69e5: $19
	inc bc                                           ; $69e6: $03
	jp $0319                                         ; $69e7: $c3 $19 $03


	ret                                              ; $69ea: $c9


	inc d                                            ; $69eb: $14
	inc bc                                           ; $69ec: $03
	jp $0314                                         ; $69ed: $c3 $14 $03


	ret                                              ; $69f0: $c9


	ld de, $c303                                     ; $69f1: $11 $03 $c3
	ld de, $fb03                                     ; $69f4: $11 $03 $fb
	inc b                                            ; $69f7: $04
	db $fc                                           ; $69f8: $fc
	ld [bc], a                                       ; $69f9: $02
	sub d                                            ; $69fa: $92
	pop de                                           ; $69fb: $d1
	ld a, l                                          ; $69fc: $7d
	ld bc, $fdfb                                     ; $69fd: $01 $fb $fd
	jr nz, jr_031_6a6c                               ; $6a00: $20 $6a

	ei                                               ; $6a02: $fb
	ld [$fdfb], sp                                   ; $6a03: $08 $fb $fd
	ld b, [hl]                                       ; $6a06: $46
	ld l, d                                          ; $6a07: $6a
	ei                                               ; $6a08: $fb
	ld [$fdfb], sp                                   ; $6a09: $08 $fb $fd
	ld l, h                                          ; $6a0c: $6c
	ld l, d                                          ; $6a0d: $6a
	ei                                               ; $6a0e: $fb
	ld [$fdfb], sp                                   ; $6a0f: $08 $fb $fd
	sub d                                            ; $6a12: $92
	ld l, d                                          ; $6a13: $6a
	ei                                               ; $6a14: $fb
	inc b                                            ; $6a15: $04
	ei                                               ; $6a16: $fb
	db $fd                                           ; $6a17: $fd
	cp b                                             ; $6a18: $b8
	ld l, d                                          ; $6a19: $6a
	ei                                               ; $6a1a: $fb
	inc b                                            ; $6a1b: $04
	ld a, l                                          ; $6a1c: $7d
	nop                                              ; $6a1d: $00
	cp $ff                                           ; $6a1e: $fe $ff
	db $fc                                           ; $6a20: $fc
	pop de                                           ; $6a21: $d1
	call nz, $022c                                   ; $6a22: $c4 $2c $02
	jp nz, $012c                                     ; $6a25: $c2 $2c $01

	db $fc                                           ; $6a28: $fc
	ld [bc], a                                       ; $6a29: $02
	db $fc                                           ; $6a2a: $fc
	call nz, $022f                                   ; $6a2b: $c4 $2f $02
	jp nz, $012c                                     ; $6a2e: $c2 $2c $01

	db $fc                                           ; $6a31: $fc
	ld [bc], a                                       ; $6a32: $02
	db $fc                                           ; $6a33: $fc
	call nz, $0233                                   ; $6a34: $c4 $33 $02
	jp nz, $012f                                     ; $6a37: $c2 $2f $01

	db $fc                                           ; $6a3a: $fc
	ld [bc], a                                       ; $6a3b: $02
	db $fc                                           ; $6a3c: $fc
	call nz, $0238                                   ; $6a3d: $c4 $38 $02
	jp nz, $0133                                     ; $6a40: $c2 $33 $01

	db $fc                                           ; $6a43: $fc
	ld [bc], a                                       ; $6a44: $02
	db $fd                                           ; $6a45: $fd
	db $fc                                           ; $6a46: $fc
	pop de                                           ; $6a47: $d1
	call nz, $022e                                   ; $6a48: $c4 $2e $02
	jp nz, $012e                                     ; $6a4b: $c2 $2e $01

	db $fc                                           ; $6a4e: $fc
	ld [bc], a                                       ; $6a4f: $02
	db $fc                                           ; $6a50: $fc
	call nz, $0231                                   ; $6a51: $c4 $31 $02
	jp nz, $012e                                     ; $6a54: $c2 $2e $01

	db $fc                                           ; $6a57: $fc
	ld [bc], a                                       ; $6a58: $02
	db $fc                                           ; $6a59: $fc
	push bc                                          ; $6a5a: $c5
	dec [hl]                                         ; $6a5b: $35
	ld [bc], a                                       ; $6a5c: $02
	jp nz, $0131                                     ; $6a5d: $c2 $31 $01

	db $fc                                           ; $6a60: $fc
	ld [bc], a                                       ; $6a61: $02
	db $fc                                           ; $6a62: $fc
	push bc                                          ; $6a63: $c5
	ld a, [hl-]                                      ; $6a64: $3a
	ld [bc], a                                       ; $6a65: $02
	jp nz, $0135                                     ; $6a66: $c2 $35 $01

	db $fc                                           ; $6a69: $fc
	ld [bc], a                                       ; $6a6a: $02
	db $fd                                           ; $6a6b: $fd

jr_031_6a6c:
	db $fc                                           ; $6a6c: $fc
	pop de                                           ; $6a6d: $d1
	call nz, $022d                                   ; $6a6e: $c4 $2d $02
	jp nz, $012d                                     ; $6a71: $c2 $2d $01

	db $fc                                           ; $6a74: $fc
	ld [bc], a                                       ; $6a75: $02
	db $fc                                           ; $6a76: $fc
	call nz, $0231                                   ; $6a77: $c4 $31 $02
	jp nz, $012d                                     ; $6a7a: $c2 $2d $01

	db $fc                                           ; $6a7d: $fc
	ld [bc], a                                       ; $6a7e: $02
	db $fc                                           ; $6a7f: $fc
	call nz, $0234                                   ; $6a80: $c4 $34 $02
	jp nz, $0131                                     ; $6a83: $c2 $31 $01

	db $fc                                           ; $6a86: $fc
	ld [bc], a                                       ; $6a87: $02
	db $fc                                           ; $6a88: $fc
	call nz, $0239                                   ; $6a89: $c4 $39 $02
	jp nz, $0134                               ; $6a8c: $c2 $34 $01

	db $fc                                           ; $6a8f: $fc
	ld [bc], a                                       ; $6a90: $02
	db $fd                                           ; $6a91: $fd
	db $fc                                           ; $6a92: $fc
	pop de                                           ; $6a93: $d1
	jp $022a                                         ; $6a94: $c3 $2a $02


	pop bc                                           ; $6a97: $c1
	ld a, [hl+]                                      ; $6a98: $2a
	ld bc, $02fc                                     ; $6a99: $01 $fc $02
	db $fc                                           ; $6a9c: $fc
	call nz, $022e                                   ; $6a9d: $c4 $2e $02
	jp nz, $012a                                     ; $6aa0: $c2 $2a $01

	db $fc                                           ; $6aa3: $fc
	ld [bc], a                                       ; $6aa4: $02
	db $fc                                           ; $6aa5: $fc
	jp $0233                                         ; $6aa6: $c3 $33 $02


	jp nz, $012e                                     ; $6aa9: $c2 $2e $01

	db $fc                                           ; $6aac: $fc
	ld [bc], a                                       ; $6aad: $02
	db $fc                                           ; $6aae: $fc
	jp $0236                                         ; $6aaf: $c3 $36 $02


	jp nz, $0133                                     ; $6ab2: $c2 $33 $01

	db $fc                                           ; $6ab5: $fc
	ld [bc], a                                       ; $6ab6: $02
	db $fd                                           ; $6ab7: $fd
	db $fc                                           ; $6ab8: $fc

jr_031_6ab9:
	pop de                                           ; $6ab9: $d1
	call nz, $022c                                   ; $6aba: $c4 $2c $02
	jp nz, $012c                                     ; $6abd: $c2 $2c $01

	db $fc                                           ; $6ac0: $fc
	ld [bc], a                                       ; $6ac1: $02
	db $fc                                           ; $6ac2: $fc
	jp $0233                                         ; $6ac3: $c3 $33 $02


	pop bc                                           ; $6ac6: $c1
	inc l                                            ; $6ac7: $2c
	ld bc, $02fc                                     ; $6ac8: $01 $fc $02
	db $fc                                           ; $6acb: $fc
	push bc                                          ; $6acc: $c5
	jr c, @+$04                                      ; $6acd: $38 $02

	jp nz, $0133                                     ; $6acf: $c2 $33 $01

	db $fc                                           ; $6ad2: $fc
	ld [bc], a                                       ; $6ad3: $02
	db $fc                                           ; $6ad4: $fc
	push bc                                          ; $6ad5: $c5
	inc a                                            ; $6ad6: $3c
	ld [bc], a                                       ; $6ad7: $02

jr_031_6ad8:
	jp nz, $0138                                     ; $6ad8: $c2 $38 $01

	db $fc                                           ; $6adb: $fc
	ld [bc], a                                       ; $6adc: $02
	db $fd                                           ; $6add: $fd
	or h                                             ; $6ade: $b4
	inc [hl]                                         ; $6adf: $34
	ld h, c                                          ; $6ae0: $61
	ld [bc], a                                       ; $6ae1: $02
	ld a, [hl+]                                      ; $6ae2: $2a
	ld [de], a                                       ; $6ae3: $12

jr_031_6ae4:
	jp nz, $062a                                     ; $6ae4: $c2 $2a $06

	cp $fd                                           ; $6ae7: $fe $fd
	db $dd                                           ; $6ae9: $dd
	ld l, e                                          ; $6aea: $6b
	add $2a                                          ; $6aeb: $c6 $2a
	jr @-$3d                                         ; $6aed: $18 $c1

	ld a, [hl+]                                      ; $6aef: $2a
	inc c                                            ; $6af0: $0c
	jp z, $0629                                      ; $6af1: $ca $29 $06

	daa                                              ; $6af4: $27
	ld b, $ca                                        ; $6af5: $06 $ca
	add hl, hl                                       ; $6af7: $29
	jr nc, @-$3c                                     ; $6af8: $30 $c2

	add hl, hl                                       ; $6afa: $29
	jr @-$3d                                         ; $6afb: $18 $c1

	add hl, hl                                       ; $6afd: $29
	ld [de], a                                       ; $6afe: $12
	jp z, $0327                                      ; $6aff: $ca $27 $03

	add hl, hl                                       ; $6b02: $29
	inc bc                                           ; $6b03: $03
	rst JumpTable                                          ; $6b04: $c7
	ld a, [hl+]                                      ; $6b05: $2a
	ld [de], a                                       ; $6b06: $12
	pop bc                                           ; $6b07: $c1
	ld a, [hl+]                                      ; $6b08: $2a
	ld b, $c9                                        ; $6b09: $06 $c9
	add hl, hl                                       ; $6b0b: $29
	ld [de], a                                       ; $6b0c: $12
	jp nz, $0629                                     ; $6b0d: $c2 $29 $06

	db $fd                                           ; $6b10: $fd
	db $dd                                           ; $6b11: $dd
	ld l, e                                          ; $6b12: $6b
	rst JumpTable                                          ; $6b13: $c7
	ld a, [hl+]                                      ; $6b14: $2a
	jr jr_031_6ad8                                   ; $6b15: $18 $c1

	ld a, [hl+]                                      ; $6b17: $2a
	inc c                                            ; $6b18: $0c
	jp z, $0629                                      ; $6b19: $ca $29 $06

	daa                                              ; $6b1c: $27
	ld b, $c6                                        ; $6b1d: $06 $c6
	inc l                                            ; $6b1f: $2c
	jr nc, jr_031_6ae4                               ; $6b20: $30 $c2

	inc l                                            ; $6b22: $2c
	jr @-$3d                                         ; $6b23: $18 $c1

jr_031_6b25:
	inc l                                            ; $6b25: $2c
	jr jr_031_6ab9                                   ; $6b26: $18 $91

	rst JumpTable                                          ; $6b28: $c7
	ld a, [hl+]                                      ; $6b29: $2a
	ld [de], a                                       ; $6b2a: $12
	pop bc                                           ; $6b2b: $c1

jr_031_6b2c:
	ld a, [hl+]                                      ; $6b2c: $2a
	ld b, $c8                                        ; $6b2d: $06 $c8
	add hl, hl                                       ; $6b2f: $29
	ld [de], a                                       ; $6b30: $12
	jp nz, $0629                                     ; $6b31: $c2 $29 $06

	pop de                                           ; $6b34: $d1
	sub c                                            ; $6b35: $91
	jp z, $1829                                      ; $6b36: $ca $29 $18

	jp $0c29                                         ; $6b39: $c3 $29 $0c


	sub a                                            ; $6b3c: $97
	ld l, a                                          ; $6b3d: $6f
	ld a, [hl+]                                      ; $6b3e: $2a
	inc c                                            ; $6b3f: $0c
	sub a                                            ; $6b40: $97
	nop                                              ; $6b41: $00
	ret                                              ; $6b42: $c9


	daa                                              ; $6b43: $27
	jr z, jr_031_6bc4                                ; $6b44: $28 $7e

	dec e                                            ; $6b46: $1d
	nop                                              ; $6b47: $00
	xor d                                            ; $6b48: $aa
	call nz, $1427                                   ; $6b49: $c4 $27 $14
	pop bc                                           ; $6b4c: $c1
	daa                                              ; $6b4d: $27
	inc c                                            ; $6b4e: $0c
	ld a, [hl]                                       ; $6b4f: $7e

jr_031_6b50:
	nop                                              ; $6b50: $00
	and b                                            ; $6b51: $a0
	ret                                              ; $6b52: $c9


	daa                                              ; $6b53: $27
	inc c                                            ; $6b54: $0c
	ret                                              ; $6b55: $c9


	add hl, hl                                       ; $6b56: $29
	inc c                                            ; $6b57: $0c
	ret z                                            ; $6b58: $c8

	ld a, [hl+]                                      ; $6b59: $2a
	jr jr_031_6b25                                   ; $6b5a: $18 $c9

	add hl, hl                                       ; $6b5c: $29
	inc c                                            ; $6b5d: $0c
	ret                                              ; $6b5e: $c9


	daa                                              ; $6b5f: $27
	ld a, [bc]                                       ; $6b60: $0a
	jp $0227                                         ; $6b61: $c3 $27 $02


	ret                                              ; $6b64: $c9


jr_031_6b65:
	daa                                              ; $6b65: $27
	jr jr_031_6b2c                                   ; $6b66: $18 $c4

	daa                                              ; $6b68: $27
	inc c                                            ; $6b69: $0c
	ret                                              ; $6b6a: $c9


	add hl, hl                                       ; $6b6b: $29
	inc c                                            ; $6b6c: $0c
	sla l                                            ; $6b6d: $cb $25
	jr z, @+$80                                      ; $6b6f: $28 $7e

	dec e                                            ; $6b71: $1d
	nop                                              ; $6b72: $00
	xor d                                            ; $6b73: $aa
	call nz, $1425                                   ; $6b74: $c4 $25 $14
	jp nz, $0c25                                     ; $6b77: $c2 $25 $0c

	ld a, [hl]                                       ; $6b7a: $7e
	nop                                              ; $6b7b: $00
	and b                                            ; $6b7c: $a0
	call z, $0c25                                    ; $6b7d: $cc $25 $0c
	ret                                              ; $6b80: $c9


	daa                                              ; $6b81: $27
	inc c                                            ; $6b82: $0c
	ret                                              ; $6b83: $c9


	add hl, hl                                       ; $6b84: $29
	jr jr_031_6b50                                   ; $6b85: $18 $c9

	daa                                              ; $6b87: $27
	inc c                                            ; $6b88: $0c
	call z, $0c25                                    ; $6b89: $cc $25 $0c
	ret                                              ; $6b8c: $c9


	jr z, jr_031_6ba7                                ; $6b8d: $28 $18

	call nz, $0c28                                   ; $6b8f: $c4 $28 $0c
	ret z                                            ; $6b92: $c8

	ld a, [hl+]                                      ; $6b93: $2a
	inc c                                            ; $6b94: $0c
	ret                                              ; $6b95: $c9


	inc l                                            ; $6b96: $2c
	inc h                                            ; $6b97: $24
	ld a, [hl]                                       ; $6b98: $7e
	dec e                                            ; $6b99: $1d
	nop                                              ; $6b9a: $00
	xor e                                            ; $6b9b: $ab
	push bc                                          ; $6b9c: $c5
	inc l                                            ; $6b9d: $2c
	jr @-$3b                                         ; $6b9e: $18 $c3

	inc l                                            ; $6ba0: $2c
	jr jr_031_6b65                                   ; $6ba1: $18 $c2

	inc l                                            ; $6ba3: $2c
	inc c                                            ; $6ba4: $0c
	ld a, [hl]                                       ; $6ba5: $7e
	nop                                              ; $6ba6: $00

jr_031_6ba7:
	and b                                            ; $6ba7: $a0
	ret z                                            ; $6ba8: $c8

	ld a, [hl+]                                      ; $6ba9: $2a
	jr @-$35                                         ; $6baa: $18 $c9

	jr z, jr_031_6bc6                                ; $6bac: $28 $18

	ret z                                            ; $6bae: $c8

	ld a, [hl+]                                      ; $6baf: $2a
	jr z, @+$80                                      ; $6bb0: $28 $7e

	dec e                                            ; $6bb2: $1d
	nop                                              ; $6bb3: $00
	xor d                                            ; $6bb4: $aa
	call nz, $142a                                   ; $6bb5: $c4 $2a $14
	jp nz, $0c2a                                     ; $6bb8: $c2 $2a $0c

	ld a, [hl]                                       ; $6bbb: $7e
	nop                                              ; $6bbc: $00
	and b                                            ; $6bbd: $a0
	ret                                              ; $6bbe: $c9


	daa                                              ; $6bbf: $27
	inc c                                            ; $6bc0: $0c
	ret                                              ; $6bc1: $c9


	ld a, [hl+]                                      ; $6bc2: $2a
	inc c                                            ; $6bc3: $0c

jr_031_6bc4:
	ret z                                            ; $6bc4: $c8

	inc l                                            ; $6bc5: $2c

jr_031_6bc6:
	jr z, jr_031_6c46                                ; $6bc6: $28 $7e

	dec e                                            ; $6bc8: $1d
	nop                                              ; $6bc9: $00
	xor d                                            ; $6bca: $aa
	call nz, $142c                                   ; $6bcb: $c4 $2c $14
	jp nz, $0c2c                                     ; $6bce: $c2 $2c $0c

	ld a, [hl]                                       ; $6bd1: $7e
	nop                                              ; $6bd2: $00
	and b                                            ; $6bd3: $a0
	sub d                                            ; $6bd4: $92
	add $2a                                          ; $6bd5: $c6 $2a
	ld [de], a                                       ; $6bd7: $12
	pop bc                                           ; $6bd8: $c1
	ld a, [hl+]                                      ; $6bd9: $2a
	ld b, $fe                                        ; $6bda: $06 $fe
	rst $38                                          ; $6bdc: $ff
	pop de                                           ; $6bdd: $d1
	ret                                              ; $6bde: $c9


	add hl, hl                                       ; $6bdf: $29
	ld b, $c6                                        ; $6be0: $06 $c6
	ld a, [hl+]                                      ; $6be2: $2a
	ld b, $c9                                        ; $6be3: $06 $c9
	add hl, hl                                       ; $6be5: $29
	ld b, $c8                                        ; $6be6: $06 $c8
	dec h                                            ; $6be8: $25
	ld b, $cc                                        ; $6be9: $06 $cc
	jr nz, @+$32                                     ; $6beb: $20 $30

	rst JumpTable                                          ; $6bed: $c7
	jr nz, jr_031_6c14                               ; $6bee: $20 $24

	call nz, $0c20                                   ; $6bf0: $c4 $20 $0c
	pop bc                                           ; $6bf3: $c1
	jr nz, jr_031_6c02                               ; $6bf4: $20 $0c

	sla d                                            ; $6bf6: $cb $22
	inc c                                            ; $6bf8: $0c
	dec h                                            ; $6bf9: $25
	ld [de], a                                       ; $6bfa: $12
	jp nz, $0625                                     ; $6bfb: $c2 $25 $06

	add $2a                                          ; $6bfe: $c6 $2a
	ld [de], a                                       ; $6c00: $12
	ret                                              ; $6c01: $c9


jr_031_6c02:
	daa                                              ; $6c02: $27
	inc bc                                           ; $6c03: $03
	add hl, hl                                       ; $6c04: $29
	inc bc                                           ; $6c05: $03
	db $fd                                           ; $6c06: $fd
	or h                                             ; $6c07: $b4
	inc [hl]                                         ; $6c08: $34
	pop af                                           ; $6c09: $f1
	jr jr_031_6c0c                                   ; $6c0a: $18 $00

jr_031_6c0c:
	jr jr_031_6c0c                                   ; $6c0c: $18 $fe

	add $7e                                          ; $6c0e: $c6 $7e
	dec e                                            ; $6c10: $1d
	nop                                              ; $6c11: $00
	xor d                                            ; $6c12: $aa
	ld a, l                                          ; $6c13: $7d

jr_031_6c14:
	ld bc, $1000                                     ; $6c14: $01 $00 $10
	ld a, [hl+]                                      ; $6c17: $2a
	ld [$062a], sp                                   ; $6c18: $08 $2a $06
	add hl, hl                                       ; $6c1b: $29
	ld b, $25                                        ; $6c1c: $06 $25
	ld b, $20                                        ; $6c1e: $06 $20
	jr nc, jr_031_6c42                               ; $6c20: $30 $20

	inc h                                            ; $6c22: $24
	jr nz, jr_031_6c31                               ; $6c23: $20 $0c

	jr nz, @+$1a                                     ; $6c25: $20 $18

	dec h                                            ; $6c27: $25
	ld [de], a                                       ; $6c28: $12
	dec h                                            ; $6c29: $25
	ld b, $2a                                        ; $6c2a: $06 $2a
	ld a, [bc]                                       ; $6c2c: $0a
	ld a, [hl+]                                      ; $6c2d: $2a
	ld [$0327], sp                                   ; $6c2e: $08 $27 $03

jr_031_6c31:
	add hl, hl                                       ; $6c31: $29
	inc bc                                           ; $6c32: $03
	ld a, [hl+]                                      ; $6c33: $2a
	jr @+$2c                                         ; $6c34: $18 $2a

	inc c                                            ; $6c36: $0c
	add hl, hl                                       ; $6c37: $29
	ld b, $27                                        ; $6c38: $06 $27
	ld b, $29                                        ; $6c3a: $06 $29
	jr nc, jr_031_6c67                               ; $6c3c: $30 $29

	jr jr_031_6c69                                   ; $6c3e: $18 $29

	ld [de], a                                       ; $6c40: $12
	daa                                              ; $6c41: $27

jr_031_6c42:
	inc bc                                           ; $6c42: $03
	add hl, hl                                       ; $6c43: $29
	inc bc                                           ; $6c44: $03
	ld a, [hl+]                                      ; $6c45: $2a

jr_031_6c46:
	ld [de], a                                       ; $6c46: $12
	ld a, [hl+]                                      ; $6c47: $2a
	ld b, $29                                        ; $6c48: $06 $29
	ld [de], a                                       ; $6c4a: $12
	add hl, hl                                       ; $6c4b: $29
	ld b, $be                                        ; $6c4c: $06 $be
	ld b, $29                                        ; $6c4e: $06 $29
	ld a, [hl+]                                      ; $6c50: $2a
	add hl, hl                                       ; $6c51: $29
	dec h                                            ; $6c52: $25
	cp [hl]                                          ; $6c53: $be
	jr nz, @+$32                                     ; $6c54: $20 $30

	jr nz, jr_031_6c7c                               ; $6c56: $20 $24

	jr nz, jr_031_6c66                               ; $6c58: $20 $0c

	jr nz, @+$1a                                     ; $6c5a: $20 $18

	dec h                                            ; $6c5c: $25
	ld [de], a                                       ; $6c5d: $12
	dec h                                            ; $6c5e: $25
	ld b, $2a                                        ; $6c5f: $06 $2a
	ld a, [bc]                                       ; $6c61: $0a
	ld a, [hl+]                                      ; $6c62: $2a
	ld [$0327], sp                                   ; $6c63: $08 $27 $03

jr_031_6c66:
	add hl, hl                                       ; $6c66: $29

jr_031_6c67:
	inc bc                                           ; $6c67: $03
	ld a, [hl+]                                      ; $6c68: $2a

jr_031_6c69:
	jr jr_031_6c95                                   ; $6c69: $18 $2a

	inc c                                            ; $6c6b: $0c
	add hl, hl                                       ; $6c6c: $29
	ld b, $27                                        ; $6c6d: $06 $27
	ld b, $2c                                        ; $6c6f: $06 $2c
	jr nc, jr_031_6c9f                               ; $6c71: $30 $2c

	jr @+$2e                                         ; $6c73: $18 $2c

	ld b, $7d                                        ; $6c75: $06 $7d
	nop                                              ; $6c77: $00
	ld a, [hl]                                       ; $6c78: $7e
	dec e                                            ; $6c79: $1d
	nop                                              ; $6c7a: $00
	xor c                                            ; $6c7b: $a9

jr_031_6c7c:
	call nz, $1225                                   ; $6c7c: $c4 $25 $12
	add $25                                          ; $6c7f: $c6 $25
	ld b, $c4                                        ; $6c81: $06 $c4
	dec h                                            ; $6c83: $25
	ld [de], a                                       ; $6c84: $12
	add $25                                          ; $6c85: $c6 $25
	ld b, $c2                                        ; $6c87: $06 $c2
	pop de                                           ; $6c89: $d1
	ld a, a                                          ; $6c8a: $7f
	inc e                                            ; $6c8b: $1c
	ld [$c606], sp                                   ; $6c8c: $08 $06 $c6
	ld [$c206], sp                                   ; $6c8f: $08 $06 $c2
	ld [$c606], sp                                   ; $6c92: $08 $06 $c6

jr_031_6c95:
	ld [$000c], sp                                   ; $6c95: $08 $0c $00
	inc c                                            ; $6c98: $0c
	jp nz, $0303                                     ; $6c99: $c2 $03 $03

	add $03                                          ; $6c9c: $c6 $03
	inc bc                                           ; $6c9e: $03

jr_031_6c9f:
	jp nz, $0608                                     ; $6c9f: $c2 $08 $06

	add $08                                          ; $6ca2: $c6 $08
	ld b, $c2                                        ; $6ca4: $06 $c2
	ld [$c606], sp                                   ; $6ca6: $08 $06 $c6
	ld [$c20c], sp                                   ; $6ca9: $08 $0c $c2
	nop                                              ; $6cac: $00
	ld b, $03                                        ; $6cad: $06 $03
	inc c                                            ; $6caf: $0c
	ld [$c606], sp                                   ; $6cb0: $08 $06 $c6
	ld [$c206], sp                                   ; $6cb3: $08 $06 $c2
	ld [$c606], sp                                   ; $6cb6: $08 $06 $c6
	ld [$000c], sp                                   ; $6cb9: $08 $0c $00
	inc c                                            ; $6cbc: $0c
	jp nz, $0303                                     ; $6cbd: $c2 $03 $03

	add $03                                          ; $6cc0: $c6 $03
	inc bc                                           ; $6cc2: $03
	jp nz, $0308                                     ; $6cc3: $c2 $08 $03

	add $08                                          ; $6cc6: $c6 $08
	inc bc                                           ; $6cc8: $03
	jp nz, $0308                                     ; $6cc9: $c2 $08 $03

	add $08                                          ; $6ccc: $c6 $08
	ld b, $00                                        ; $6cce: $06 $00
	inc bc                                           ; $6cd0: $03
	jp nz, $0608                                     ; $6cd1: $c2 $08 $06

	add $08                                          ; $6cd4: $c6 $08
	ld b, $00                                        ; $6cd6: $06 $00
	ld b, $c2                                        ; $6cd8: $06 $c2
	add hl, bc                                       ; $6cda: $09
	inc c                                            ; $6cdb: $0c
	ld a, [bc]                                       ; $6cdc: $0a
	ld b, $c6                                        ; $6cdd: $06 $c6
	ld a, [bc]                                       ; $6cdf: $0a
	ld b, $c2                                        ; $6ce0: $06 $c2
	ld a, [bc]                                       ; $6ce2: $0a
	ld b, $c6                                        ; $6ce3: $06 $c6
	ld a, [bc]                                       ; $6ce5: $0a
	inc c                                            ; $6ce6: $0c
	nop                                              ; $6ce7: $00
	inc c                                            ; $6ce8: $0c
	jp nz, $0305                                     ; $6ce9: $c2 $05 $03

	add $05                                          ; $6cec: $c6 $05
	inc bc                                           ; $6cee: $03
	jp nz, $060a                                     ; $6cef: $c2 $0a $06

	add $0a                                          ; $6cf2: $c6 $0a
	ld b, $c2                                        ; $6cf4: $06 $c2
	ld a, [bc]                                       ; $6cf6: $0a
	ld b, $c6                                        ; $6cf7: $06 $c6
	ld a, [bc]                                       ; $6cf9: $0a
	inc c                                            ; $6cfa: $0c
	nop                                              ; $6cfb: $00
	ld b, $c2                                        ; $6cfc: $06 $c2
	dec b                                            ; $6cfe: $05
	inc c                                            ; $6cff: $0c
	ld a, [bc]                                       ; $6d00: $0a
	ld b, $c6                                        ; $6d01: $06 $c6
	ld a, [bc]                                       ; $6d03: $0a
	ld b, $c2                                        ; $6d04: $06 $c2
	ld a, [bc]                                       ; $6d06: $0a
	ld b, $c6                                        ; $6d07: $06 $c6
	ld a, [bc]                                       ; $6d09: $0a
	inc c                                            ; $6d0a: $0c
	jp nz, $0c00                                     ; $6d0b: $c2 $00 $0c

	dec b                                            ; $6d0e: $05
	inc bc                                           ; $6d0f: $03
	add $05                                          ; $6d10: $c6 $05
	inc bc                                           ; $6d12: $03
	jp nz, $030a                                     ; $6d13: $c2 $0a $03

	add $0a                                          ; $6d16: $c6 $0a
	inc bc                                           ; $6d18: $03
	jp nz, $030a                                     ; $6d19: $c2 $0a $03

	add $00                                          ; $6d1c: $c6 $00
	ld b, $c2                                        ; $6d1e: $06 $c2
	nop                                              ; $6d20: $00
	inc bc                                           ; $6d21: $03
	ld a, [bc]                                       ; $6d22: $0a
	ld b, $c6                                        ; $6d23: $06 $c6
	ld a, [bc]                                       ; $6d25: $0a
	ld b, $00                                        ; $6d26: $06 $00
	ld b, $c2                                        ; $6d28: $06 $c2
	dec b                                            ; $6d2a: $05
	inc c                                            ; $6d2b: $0c
	add hl, bc                                       ; $6d2c: $09
	ld b, $c6                                        ; $6d2d: $06 $c6
	add hl, bc                                       ; $6d2f: $09
	ld b, $c2                                        ; $6d30: $06 $c2
	add hl, bc                                       ; $6d32: $09
	ld b, $c6                                        ; $6d33: $06 $c6
	add hl, bc                                       ; $6d35: $09
	inc c                                            ; $6d36: $0c
	nop                                              ; $6d37: $00
	inc c                                            ; $6d38: $0c
	jp nz, $0304                                     ; $6d39: $c2 $04 $03

	add $04                                          ; $6d3c: $c6 $04
	inc bc                                           ; $6d3e: $03
	jp nz, $0609                                     ; $6d3f: $c2 $09 $06

	add $09                                          ; $6d42: $c6 $09
	ld b, $c2                                        ; $6d44: $06 $c2
	add hl, bc                                       ; $6d46: $09
	ld b, $c6                                        ; $6d47: $06 $c6
	add hl, bc                                       ; $6d49: $09
	inc c                                            ; $6d4a: $0c
	jp nz, $0600                                     ; $6d4b: $c2 $00 $06

	inc b                                            ; $6d4e: $04
	inc c                                            ; $6d4f: $0c
	add hl, bc                                       ; $6d50: $09
	ld b, $c6                                        ; $6d51: $06 $c6
	add hl, bc                                       ; $6d53: $09
	ld b, $c2                                        ; $6d54: $06 $c2
	add hl, bc                                       ; $6d56: $09
	ld b, $c6                                        ; $6d57: $06 $c6
	add hl, bc                                       ; $6d59: $09
	inc c                                            ; $6d5a: $0c
	nop                                              ; $6d5b: $00
	inc c                                            ; $6d5c: $0c
	jp nz, $0304                                     ; $6d5d: $c2 $04 $03

	add $04                                          ; $6d60: $c6 $04
	inc bc                                           ; $6d62: $03
	jp nz, $0309                                     ; $6d63: $c2 $09 $03

	add $09                                          ; $6d66: $c6 $09
	inc bc                                           ; $6d68: $03
	jp nz, $0309                                     ; $6d69: $c2 $09 $03

	add $09                                          ; $6d6c: $c6 $09
	ld b, $00                                        ; $6d6e: $06 $00
	inc bc                                           ; $6d70: $03
	jp nz, $0609                                     ; $6d71: $c2 $09 $06

	add $09                                          ; $6d74: $c6 $09
	ld b, $00                                        ; $6d76: $06 $00
	ld b, $c2                                        ; $6d78: $06 $c2
	db $10                                           ; $6d7a: $10
	inc c                                            ; $6d7b: $0c
	rrca                                             ; $6d7c: $0f
	ld b, $c6                                        ; $6d7d: $06 $c6
	rrca                                             ; $6d7f: $0f
	ld b, $c2                                        ; $6d80: $06 $c2
	rrca                                             ; $6d82: $0f
	ld b, $c6                                        ; $6d83: $06 $c6
	rrca                                             ; $6d85: $0f
	inc c                                            ; $6d86: $0c
	nop                                              ; $6d87: $00
	inc c                                            ; $6d88: $0c
	jp nz, $030a                                     ; $6d89: $c2 $0a $03

	add $0a                                          ; $6d8c: $c6 $0a
	inc bc                                           ; $6d8e: $03
	jp nz, $060f                                     ; $6d8f: $c2 $0f $06

	add $0f                                          ; $6d92: $c6 $0f
	ld b, $c2                                        ; $6d94: $06 $c2
	rrca                                             ; $6d96: $0f
	ld b, $c6                                        ; $6d97: $06 $c6
	rrca                                             ; $6d99: $0f
	inc c                                            ; $6d9a: $0c
	nop                                              ; $6d9b: $00
	ld b, $c2                                        ; $6d9c: $06 $c2
	ld a, [bc]                                       ; $6d9e: $0a
	inc c                                            ; $6d9f: $0c
	jp nz, $1408                                     ; $6da0: $c2 $08 $14

	add $08                                          ; $6da3: $c6 $08
	inc b                                            ; $6da5: $04
	jp nz, $1406                                     ; $6da6: $c2 $06 $14

	add $06                                          ; $6da9: $c6 $06
	inc b                                            ; $6dab: $04
	jp nz, $1405                                     ; $6dac: $c2 $05 $14

	add $05                                          ; $6daf: $c6 $05
	inc b                                            ; $6db1: $04
	jp nz, $1403                                     ; $6db2: $c2 $03 $14

	add $03                                          ; $6db5: $c6 $03
	inc b                                            ; $6db7: $04
	cp $ff                                           ; $6db8: $fe $ff
	ret nc                                           ; $6dba: $d0

	inc [hl]                                         ; $6dbb: $34
	nop                                              ; $6dbc: $00

jr_031_6dbd:
	jr jr_031_6dbd                                   ; $6dbd: $18 $fe

	ei                                               ; $6dbf: $fb
	cp [hl]                                          ; $6dc0: $be
	ld b, $1f                                        ; $6dc1: $06 $1f
	rra                                              ; $6dc3: $1f
	ld h, $26                                        ; $6dc4: $26 $26
	daa                                              ; $6dc6: $27
	daa                                              ; $6dc7: $27
	jr z, jr_031_6df2                                ; $6dc8: $28 $28

	jr nz, jr_031_6dec                               ; $6dca: $20 $20

	ld hl, $2221                                     ; $6dcc: $21 $21 $22
	ld [hl+], a                                      ; $6dcf: $22

jr_031_6dd0:
	inc hl                                           ; $6dd0: $23
	inc hl                                           ; $6dd1: $23
	cp [hl]                                          ; $6dd2: $be
	ei                                               ; $6dd3: $fb
	ld [$befb], sp                                   ; $6dd4: $08 $fb $be
	ld b, $1f                                        ; $6dd7: $06 $1f

jr_031_6dd9:
	dec e                                            ; $6dd9: $1d
	rra                                              ; $6dda: $1f
	dec e                                            ; $6ddb: $1d
	jr nz, jr_031_6dfc                               ; $6ddc: $20 $1e

	nop                                              ; $6dde: $00
	rra                                              ; $6ddf: $1f
	rra                                              ; $6de0: $1f
	dec e                                            ; $6de1: $1d
	rra                                              ; $6de2: $1f
	dec e                                            ; $6de3: $1d
	jr nz, @+$1f                                     ; $6de4: $20 $1d

	rra                                              ; $6de6: $1f
	ld e, $be                                        ; $6de7: $1e $be
	cp [hl]                                          ; $6de9: $be
	ld b, $1f                                        ; $6dea: $06 $1f

jr_031_6dec:
	dec e                                            ; $6dec: $1d
	rra                                              ; $6ded: $1f
	dec e                                            ; $6dee: $1d
	jr nz, jr_031_6e0f                               ; $6def: $20 $1e

	nop                                              ; $6df1: $00

jr_031_6df2:
	rra                                              ; $6df2: $1f
	rra                                              ; $6df3: $1f
	rra                                              ; $6df4: $1f
	dec e                                            ; $6df5: $1d
	rra                                              ; $6df6: $1f
	jr nz, @+$1f                                     ; $6df7: $20 $1d

	rra                                              ; $6df9: $1f
	ld e, $be                                        ; $6dfa: $1e $be

jr_031_6dfc:
	ei                                               ; $6dfc: $fb
	inc b                                            ; $6dfd: $04

jr_031_6dfe:
	cp $ff                                           ; $6dfe: $fe $ff
	ret nc                                           ; $6e00: $d0

	ld [hl], e                                       ; $6e01: $73
	cp $cc                                           ; $6e02: $fe $cc
	pop de                                           ; $6e04: $d1
	sub c                                            ; $6e05: $91
	ld a, [hl]                                       ; $6e06: $7e
	nop                                              ; $6e07: $00
	and b                                            ; $6e08: $a0

jr_031_6e09:
	add hl, de                                       ; $6e09: $19
	jr jr_031_6dd0                                   ; $6e0a: $18 $c4

	add hl, de                                       ; $6e0c: $19
	jr jr_031_6dd9                                   ; $6e0d: $18 $ca

jr_031_6e0f:
	add hl, de                                       ; $6e0f: $19
	ld b, $1b                                        ; $6e10: $06 $1b
	ld b, $c3                                        ; $6e12: $06 $c3
	dec de                                           ; $6e14: $1b
	ld b, $ca                                        ; $6e15: $06 $ca
	dec e                                            ; $6e17: $1d
	ld b, $c3                                        ; $6e18: $06 $c3
	dec e                                            ; $6e1a: $1d
	ld b, $c7                                        ; $6e1b: $06 $c7
	ld [hl+], a                                      ; $6e1d: $22
	ld [de], a                                       ; $6e1e: $12
	call z, $181b                                    ; $6e1f: $cc $1b $18
	call nz, $181b                                   ; $6e22: $c4 $1b $18
	jp z, $061b                                      ; $6e25: $ca $1b $06

	dec e                                            ; $6e28: $1d
	ld b, $c3                                        ; $6e29: $06 $c3
	dec e                                            ; $6e2b: $1d
	ld b, $ca                                        ; $6e2c: $06 $ca
	ld e, $06                                        ; $6e2e: $1e $06
	jp $061e                                         ; $6e30: $c3 $1e $06


	rst JumpTable                                          ; $6e33: $c7
	inc h                                            ; $6e34: $24
	ld [de], a                                       ; $6e35: $12
	rr l                                             ; $6e36: $cb $1d
	jr jr_031_6dfe                                   ; $6e38: $18 $c4

	dec e                                            ; $6e3a: $1d
	jr jr_031_6e09                                   ; $6e3b: $18 $cc

	nop                                              ; $6e3d: $00
	inc c                                            ; $6e3e: $0c
	dec e                                            ; $6e3f: $1d
	ld b, $00                                        ; $6e40: $06 $00
	inc c                                            ; $6e42: $0c
	ld e, $12                                        ; $6e43: $1e $12
	sub b                                            ; $6e45: $90
	dec h                                            ; $6e46: $25
	inc c                                            ; $6e47: $0c
	call nz, $0c25                                   ; $6e48: $c4 $25 $0c
	sub c                                            ; $6e4b: $91
	jp $1d7e                                         ; $6e4c: $c3 $7e $1d


	nop                                              ; $6e4f: $00
	and b                                            ; $6e50: $a0
	nop                                              ; $6e51: $00
	ld [de], a                                       ; $6e52: $12
	ld [hl+], a                                      ; $6e53: $22
	ld b, $24                                        ; $6e54: $06 $24
	ld [de], a                                       ; $6e56: $12
	dec h                                            ; $6e57: $25
	ld b, $24                                        ; $6e58: $06 $24
	ld b, $27                                        ; $6e5a: $06 $27
	inc c                                            ; $6e5c: $0c
	add hl, hl                                       ; $6e5d: $29
	ld b, $7e                                        ; $6e5e: $06 $7e
	nop                                              ; $6e60: $00
	and b                                            ; $6e61: $a0
	ret                                              ; $6e62: $c9


	pop de                                           ; $6e63: $d1
	sub d                                            ; $6e64: $92
	ld a, [hl]                                       ; $6e65: $7e
	inc h                                            ; $6e66: $24
	nop                                              ; $6e67: $00
	xor e                                            ; $6e68: $ab
	dec e                                            ; $6e69: $1d
	ld b, $c3                                        ; $6e6a: $06 $c3
	dec e                                            ; $6e6c: $1d
	ld b, $c9                                        ; $6e6d: $06 $c9
	dec e                                            ; $6e6f: $1d
	ld b, $c3                                        ; $6e70: $06 $c3
	dec e                                            ; $6e72: $1d
	ld b, $c9                                        ; $6e73: $06 $c9
	dec e                                            ; $6e75: $1d
	ld b, $c3                                        ; $6e76: $06 $c3
	dec e                                            ; $6e78: $1d
	ld b, $c9                                        ; $6e79: $06 $c9
	add hl, de                                       ; $6e7b: $19
	ld b, $1b                                        ; $6e7c: $06 $1b
	ld b, $7d                                        ; $6e7e: $06 $7d
	ld bc, $0c1d                                     ; $6e80: $01 $1d $0c
	ld a, l                                          ; $6e83: $7d
	nop                                              ; $6e84: $00
	nop                                              ; $6e85: $00
	ld b, $1d                                        ; $6e86: $06 $1d
	inc bc                                           ; $6e88: $03
	nop                                              ; $6e89: $00
	inc bc                                           ; $6e8a: $03
	dec e                                            ; $6e8b: $1d
	ld b, $00                                        ; $6e8c: $06 $00
	ld b, $19                                        ; $6e8e: $06 $19
	inc c                                            ; $6e90: $0c
	nop                                              ; $6e91: $00
	ld b, $1d                                        ; $6e92: $06 $1d
	ld b, $c3                                        ; $6e94: $06 $c3
	dec e                                            ; $6e96: $1d
	inc c                                            ; $6e97: $0c
	ret                                              ; $6e98: $c9


	cp [hl]                                          ; $6e99: $be
	ld b, $1d                                        ; $6e9a: $06 $1d
	nop                                              ; $6e9c: $00
	dec e                                            ; $6e9d: $1d
	nop                                              ; $6e9e: $00
	cp [hl]                                          ; $6e9f: $be
	dec e                                            ; $6ea0: $1d
	inc c                                            ; $6ea1: $0c
	nop                                              ; $6ea2: $00
	inc c                                            ; $6ea3: $0c
	cp [hl]                                          ; $6ea4: $be
	ld b, $20                                        ; $6ea5: $06 $20
	nop                                              ; $6ea7: $00
	dec e                                            ; $6ea8: $1d
	dec h                                            ; $6ea9: $25
	cp [hl]                                          ; $6eaa: $be
	dec e                                            ; $6eab: $1d
	inc c                                            ; $6eac: $0c
	cp [hl]                                          ; $6ead: $be
	ld b, $18                                        ; $6eae: $06 $18
	nop                                              ; $6eb0: $00
	jr jr_031_6eb3                                   ; $6eb1: $18 $00

jr_031_6eb3:
	add hl, de                                       ; $6eb3: $19
	dec de                                           ; $6eb4: $1b
	cp [hl]                                          ; $6eb5: $be
	dec e                                            ; $6eb6: $1d
	inc c                                            ; $6eb7: $0c
	nop                                              ; $6eb8: $00
	ld b, $1d                                        ; $6eb9: $06 $1d
	inc bc                                           ; $6ebb: $03
	nop                                              ; $6ebc: $00
	inc bc                                           ; $6ebd: $03
	dec e                                            ; $6ebe: $1d
	ld b, $00                                        ; $6ebf: $06 $00
	ld b, $18                                        ; $6ec1: $06 $18
	inc c                                            ; $6ec3: $0c
	nop                                              ; $6ec4: $00
	ld b, $1d                                        ; $6ec5: $06 $1d
	inc c                                            ; $6ec7: $0c
	nop                                              ; $6ec8: $00
	ld b, $1d                                        ; $6ec9: $06 $1d
	ld b, $c3                                        ; $6ecb: $06 $c3
	dec e                                            ; $6ecd: $1d
	ld b, $c9                                        ; $6ece: $06 $c9

jr_031_6ed0:
	ld e, $06                                        ; $6ed0: $1e $06
	jp $061e                                         ; $6ed2: $c3 $1e $06


	ret                                              ; $6ed5: $c9


	dec e                                            ; $6ed6: $1d
	inc c                                            ; $6ed7: $0c
	nop                                              ; $6ed8: $00
	ld b, $1d                                        ; $6ed9: $06 $1d
	inc bc                                           ; $6edb: $03
	nop                                              ; $6edc: $00
	inc bc                                           ; $6edd: $03
	cp [hl]                                          ; $6ede: $be
	ld b, $1d                                        ; $6edf: $06 $1d
	nop                                              ; $6ee1: $00
	dec e                                            ; $6ee2: $1d
	ld hl, $7ebe                                     ; $6ee3: $21 $be $7e
	nop                                              ; $6ee6: $00
	rst JumpTable                                          ; $6ee7: $c7
	jp nc, Jump_031_7092                             ; $6ee8: $d2 $92 $70

	cp [hl]                                          ; $6eeb: $be
	ld b, $2e                                        ; $6eec: $06 $2e
	nop                                              ; $6eee: $00
	ld sp, $3100                                     ; $6eef: $31 $00 $31
	nop                                              ; $6ef2: $00
	ld sp, $d3be                                     ; $6ef3: $31 $be $d3
	cp [hl]                                          ; $6ef6: $be
	ld b, $2d                                        ; $6ef7: $06 $2d
	nop                                              ; $6ef9: $00
	dec l                                            ; $6efa: $2d
	nop                                              ; $6efb: $00
	cp [hl]                                          ; $6efc: $be
	jr nc, jr_031_6f02                               ; $6efd: $30 $03

	nop                                              ; $6eff: $00
	inc bc                                           ; $6f00: $03
	cp [hl]                                          ; $6f01: $be

jr_031_6f02:
	ld b, $30                                        ; $6f02: $06 $30
	nop                                              ; $6f04: $00
	jr nc, jr_031_6f07                               ; $6f05: $30 $00

jr_031_6f07:
	cp [hl]                                          ; $6f07: $be
	jp nc, $06be                                     ; $6f08: $d2 $be $06

	inc l                                            ; $6f0b: $2c
	nop                                              ; $6f0c: $00
	ld sp, $3100                                     ; $6f0d: $31 $00 $31
	nop                                              ; $6f10: $00
	ld sp, $d3be                                     ; $6f11: $31 $be $d3
	cp [hl]                                          ; $6f14: $be
	ld b, $2b                                        ; $6f15: $06 $2b
	nop                                              ; $6f17: $00
	dec hl                                           ; $6f18: $2b
	nop                                              ; $6f19: $00
	cp [hl]                                          ; $6f1a: $be
	inc sp                                           ; $6f1b: $33
	inc bc                                           ; $6f1c: $03
	nop                                              ; $6f1d: $00
	inc bc                                           ; $6f1e: $03
	cp [hl]                                          ; $6f1f: $be
	ld b, $33                                        ; $6f20: $06 $33
	nop                                              ; $6f22: $00
	inc sp                                           ; $6f23: $33
	nop                                              ; $6f24: $00
	cp [hl]                                          ; $6f25: $be
	ld a, h                                          ; $6f26: $7c
	or c                                             ; $6f27: $b1
	pop bc                                           ; $6f28: $c1
	jr jr_031_6f30                                   ; $6f29: $18 $05

	dec h                                            ; $6f2b: $25
	jr jr_031_6f2e                                   ; $6f2c: $18 $00

jr_031_6f2e:
	inc c                                            ; $6f2e: $0c
	sub [hl]                                         ; $6f2f: $96

jr_031_6f30:
	inc c                                            ; $6f30: $0c
	inc b                                            ; $6f31: $04
	dec h                                            ; $6f32: $25
	inc c                                            ; $6f33: $0c
	sub [hl]                                         ; $6f34: $96
	jr jr_031_6f3c                                   ; $6f35: $18 $05

	dec h                                            ; $6f37: $25
	jr jr_031_6ed0                                   ; $6f38: $18 $96

	inc c                                            ; $6f3a: $0c
	inc b                                            ; $6f3b: $04

jr_031_6f3c:
	dec h                                            ; $6f3c: $25
	inc c                                            ; $6f3d: $0c
	ld a, [hl+]                                      ; $6f3e: $2a
	inc c                                            ; $6f3f: $0c
	nop                                              ; $6f40: $00
	ld b, $96                                        ; $6f41: $06 $96
	ld [de], a                                       ; $6f43: $12
	ld [bc], a                                       ; $6f44: $02
	jr nc, @+$14                                     ; $6f45: $30 $12

	sub [hl]                                         ; $6f47: $96
	inc c                                            ; $6f48: $0c
	ld bc, $0c30                                     ; $6f49: $01 $30 $0c
	jr nc, jr_031_6f5a                               ; $6f4c: $30 $0c

	sub [hl]                                         ; $6f4e: $96
	jr jr_031_6f53                                   ; $6f4f: $18 $02

	jr nc, @+$1a                                     ; $6f51: $30 $18

jr_031_6f53:
	ld a, [hl]                                       ; $6f53: $7e
	dec e                                            ; $6f54: $1d
	nop                                              ; $6f55: $00
	xor c                                            ; $6f56: $a9
	cpl                                              ; $6f57: $2f
	jr jr_031_6fca                                   ; $6f58: $18 $70

jr_031_6f5a:
	jp z, $91d1                                      ; $6f5a: $ca $d1 $91

	ld [hl+], a                                      ; $6f5d: $22
	inc c                                            ; $6f5e: $0c
	jp $0c22                                         ; $6f5f: $c3 $22 $0c


	ld a, [hl]                                       ; $6f62: $7e
	dec de                                           ; $6f63: $1b
	nop                                              ; $6f64: $00
	xor e                                            ; $6f65: $ab
	jp nc, $2ecc                                     ; $6f66: $d2 $cc $2e

	inc c                                            ; $6f69: $0c
	jp $0c2e                                         ; $6f6a: $c3 $2e $0c


	ld a, [hl]                                       ; $6f6d: $7e
	nop                                              ; $6f6e: $00
	pop de                                           ; $6f6f: $d1
	add $2a                                          ; $6f70: $c6 $2a
	ld b, $2c                                        ; $6f72: $06 $2c
	ld b, $c3                                        ; $6f74: $06 $c3
	inc l                                            ; $6f76: $2c
	ld b, $c6                                        ; $6f77: $06 $c6
	ld l, $06                                        ; $6f79: $2e $06
	jp $062e                                         ; $6f7b: $c3 $2e $06


	add $7e                                          ; $6f7e: $c6 $7e
	dec e                                            ; $6f80: $1d
	inc c                                            ; $6f81: $0c
	xor c                                            ; $6f82: $a9
	dec h                                            ; $6f83: $25
	ld [de], a                                       ; $6f84: $12
	pop de                                           ; $6f85: $d1
	jp z, $0c24                                      ; $6f86: $ca $24 $0c

	jp $0c24                                         ; $6f89: $c3 $24 $0c


	ld a, [hl]                                       ; $6f8c: $7e
	dec de                                           ; $6f8d: $1b
	nop                                              ; $6f8e: $00
	xor d                                            ; $6f8f: $aa
	jp nc, $30cc                                     ; $6f90: $d2 $cc $30

	inc c                                            ; $6f93: $0c
	jp $0c30                                         ; $6f94: $c3 $30 $0c


	ld a, [hl]                                       ; $6f97: $7e
	nop                                              ; $6f98: $00
	and b                                            ; $6f99: $a0
	pop de                                           ; $6f9a: $d1
	add $2c                                          ; $6f9b: $c6 $2c
	ld b, $2e                                        ; $6f9d: $06 $2e
	ld b, $c2                                        ; $6f9f: $06 $c2
	ld l, $06                                        ; $6fa1: $2e $06
	add $30                                          ; $6fa3: $c6 $30
	ld b, $c2                                        ; $6fa5: $06 $c2
	jr nc, jr_031_6faf                               ; $6fa7: $30 $06

	call nz, $1d7e                                   ; $6fa9: $c4 $7e $1d
	nop                                              ; $6fac: $00
	xor c                                            ; $6fad: $a9
	daa                                              ; $6fae: $27

jr_031_6faf:
	ld [de], a                                       ; $6faf: $12
	or c                                             ; $6fb0: $b1
	ld h, c                                          ; $6fb1: $61
	nop                                              ; $6fb2: $00
	nop                                              ; $6fb3: $00
	ld a, [hl]                                       ; $6fb4: $7e
	nop                                              ; $6fb5: $00
	and b                                            ; $6fb6: $a0
	add hl, hl                                       ; $6fb7: $29
	inc c                                            ; $6fb8: $0c
	jp nz, $0c29                                     ; $6fb9: $c2 $29 $0c

	push bc                                          ; $6fbc: $c5
	daa                                              ; $6fbd: $27
	inc c                                            ; $6fbe: $0c
	pop bc                                           ; $6fbf: $c1
	daa                                              ; $6fc0: $27
	inc c                                            ; $6fc1: $0c
	push bc                                          ; $6fc2: $c5
	dec h                                            ; $6fc3: $25
	inc c                                            ; $6fc4: $0c
	pop bc                                           ; $6fc5: $c1
	dec h                                            ; $6fc6: $25
	inc c                                            ; $6fc7: $0c
	push bc                                          ; $6fc8: $c5
	inc h                                            ; $6fc9: $24

jr_031_6fca:
	inc c                                            ; $6fca: $0c
	pop bc                                           ; $6fcb: $c1
	inc h                                            ; $6fcc: $24
	inc c                                            ; $6fcd: $0c
	or c                                             ; $6fce: $b1
	add c                                            ; $6fcf: $81
	ld [de], a                                       ; $6fd0: $12
	inc b                                            ; $6fd1: $04
	ld [hl+], a                                      ; $6fd2: $22
	ld [de], a                                       ; $6fd3: $12
	ld [hl+], a                                      ; $6fd4: $22
	ld b, $00                                        ; $6fd5: $06 $00
	inc c                                            ; $6fd7: $0c
	rst JumpTable                                          ; $6fd8: $c7
	ld h, $0c                                        ; $6fd9: $26 $0c
	ret z                                            ; $6fdb: $c8

	cp [hl]                                          ; $6fdc: $be
	ld b, $0e                                        ; $6fdd: $06 $0e

jr_031_6fdf:
	ld de, $1116                                     ; $6fdf: $11 $16 $11
	cp [hl]                                          ; $6fe2: $be
	call nz, $0611                                   ; $6fe3: $c4 $11 $06
	ret z                                            ; $6fe6: $c8

	dec e                                            ; $6fe7: $1d
	ld b, $c4                                        ; $6fe8: $06 $c4
	ld h, $06                                        ; $6fea: $26 $06
	add $29                                          ; $6fec: $c6 $29
	ld b, $b5                                        ; $6fee: $06 $b5
	ld h, c                                          ; $6ff0: $61
	ld [bc], a                                       ; $6ff1: $02
	inc h                                            ; $6ff2: $24
	dec b                                            ; $6ff3: $05
	jr nz, jr_031_701a                               ; $6ff4: $20 $24

	sub [hl]                                         ; $6ff6: $96
	inc c                                            ; $6ff7: $0c

jr_031_6ff8:
	inc b                                            ; $6ff8: $04
	jr nz, jr_031_7007                               ; $6ff9: $20 $0c

	or c                                             ; $6ffb: $b1

jr_031_6ffc:
	ld d, c                                          ; $6ffc: $51
	ld b, $04                                        ; $6ffd: $06 $04
	ld e, $06                                        ; $6fff: $1e $06
	or c                                             ; $7001: $b1
	ld h, c                                          ; $7002: $61
	inc c                                            ; $7003: $0c
	inc b                                            ; $7004: $04
	jr nz, jr_031_7013                               ; $7005: $20 $0c

jr_031_7007:
	sub [hl]                                         ; $7007: $96
	ld b, $04                                        ; $7008: $06 $04
	ld [hl+], a                                      ; $700a: $22
	ld b, $00                                        ; $700b: $06 $00
	ld b, $96                                        ; $700d: $06 $96
	inc c                                            ; $700f: $0c

jr_031_7010:
	inc b                                            ; $7010: $04

jr_031_7011:
	jr nc, @+$0e                                     ; $7011: $30 $0c

jr_031_7013:
	sub [hl]                                         ; $7013: $96
	ld b, $04                                        ; $7014: $06 $04
	dec h                                            ; $7016: $25
	ld b, $b1                                        ; $7017: $06 $b1
	ld b, c                                          ; $7019: $41

jr_031_701a:
	nop                                              ; $701a: $00
	nop                                              ; $701b: $00
	daa                                              ; $701c: $27
	ld [$27c2], sp                                   ; $701d: $08 $c2 $27
	ld [$27c4], sp                                   ; $7020: $08 $c4 $27
	ld [$27c2], sp                                   ; $7023: $08 $c2 $27
	ld [$27c4], sp                                   ; $7026: $08 $c4 $27

jr_031_7029:
	ld [$27c2], sp                                   ; $7029: $08 $c2 $27
	ld [$3000], sp                                   ; $702c: $08 $00 $30
	or c                                             ; $702f: $b1
	sub c                                            ; $7030: $91
	nop                                              ; $7031: $00
	nop                                              ; $7032: $00
	dec h                                            ; $7033: $25
	jr jr_031_6ffc                                   ; $7034: $18 $c6

	ld a, [hl]                                       ; $7036: $7e
	dec e                                            ; $7037: $1d
	ld h, h                                          ; $7038: $64
	xor d                                            ; $7039: $aa
	ld sp, $7ea8                                     ; $703a: $31 $a8 $7e
	nop                                              ; $703d: $00
	cp $ff                                           ; $703e: $fe $ff
	ret nc                                           ; $7040: $d0

	ld [hl], e                                       ; $7041: $73

jr_031_7042:
	cp $cc                                           ; $7042: $fe $cc
	pop de                                           ; $7044: $d1
	sub d                                            ; $7045: $92
	ld a, [hl]                                       ; $7046: $7e
	nop                                              ; $7047: $00
	and b                                            ; $7048: $a0
	ld [hl+], a                                      ; $7049: $22
	jr jr_031_7010                                   ; $704a: $18 $c4

	ld [hl+], a                                      ; $704c: $22
	jr jr_031_6fdf                                   ; $704d: $18 $90

	ret                                              ; $704f: $c9


	ld [hl+], a                                      ; $7050: $22
	ld b, $24                                        ; $7051: $06 $24
	ld b, $c3                                        ; $7053: $06 $c3
	inc h                                            ; $7055: $24
	ld b, $c9                                        ; $7056: $06 $c9
	dec h                                            ; $7058: $25
	ld b, $c3                                        ; $7059: $06 $c3
	dec h                                            ; $705b: $25
	ld b, $c7                                        ; $705c: $06 $c7
	ld a, [hl+]                                      ; $705e: $2a
	ld [de], a                                       ; $705f: $12
	call z, $2492                                    ; $7060: $cc $92 $24
	jr jr_031_7029                                   ; $7063: $18 $c4

	inc h                                            ; $7065: $24
	jr jr_031_6ff8                                   ; $7066: $18 $90

	ret                                              ; $7068: $c9


	inc h                                            ; $7069: $24
	ld b, $25                                        ; $706a: $06 $25
	ld b, $c3                                        ; $706c: $06 $c3
	dec h                                            ; $706e: $25
	ld b, $c9                                        ; $706f: $06 $c9
	daa                                              ; $7071: $27
	ld b, $c3                                        ; $7072: $06 $c3
	daa                                              ; $7074: $27
	ld b, $c7                                        ; $7075: $06 $c7
	inc l                                            ; $7077: $2c
	ld [de], a                                       ; $7078: $12
	jp z, $2592                                      ; $7079: $ca $92 $25

	jr jr_031_7042                                   ; $707c: $18 $c4

	dec h                                            ; $707e: $25
	jr jr_031_7011                                   ; $707f: $18 $90

	ret                                              ; $7081: $c9


	nop                                              ; $7082: $00
	inc c                                            ; $7083: $0c
	dec h                                            ; $7084: $25
	ld b, $00                                        ; $7085: $06 $00
	inc c                                            ; $7087: $0c
	rst JumpTable                                          ; $7088: $c7
	daa                                              ; $7089: $27
	ld [de], a                                       ; $708a: $12
	sub c                                            ; $708b: $91
	dec e                                            ; $708c: $1d
	ld b, $91                                        ; $708d: $06 $91
	ret                                              ; $708f: $c9


	jr nz, jr_031_709e                               ; $7090: $20 $0c

Jump_031_7092:
	call nz, $061d                                   ; $7092: $c4 $1d $06
	call z, $0622                                    ; $7095: $cc $22 $06
	call nz, $0620                                   ; $7098: $c4 $20 $06
	call z, $0624                                    ; $709b: $cc $24 $06

jr_031_709e:
	call nz, $0622                                   ; $709e: $c4 $22 $06
	sla l                                            ; $70a1: $cb $25
	ld b, $c4                                        ; $70a3: $06 $c4
	inc h                                            ; $70a5: $24
	ld b, $cb                                        ; $70a6: $06 $cb
	daa                                              ; $70a8: $27
	ld b, $c4                                        ; $70a9: $06 $c4
	dec h                                            ; $70ab: $25
	ld b, $ca                                        ; $70ac: $06 $ca
	add hl, hl                                       ; $70ae: $29
	ld b, $c8                                        ; $70af: $06 $c8
	ld a, [hl+]                                      ; $70b1: $2a
	inc c                                            ; $70b2: $0c
	jp $0629                                         ; $70b3: $c3 $29 $06


	ret z                                            ; $70b6: $c8

	pop de                                           ; $70b7: $d1
	sub c                                            ; $70b8: $91
	ld a, [hl]                                       ; $70b9: $7e
	inc h                                            ; $70ba: $24
	nop                                              ; $70bb: $00
	xor e                                            ; $70bc: $ab
	inc l                                            ; $70bd: $2c
	ld b, $c2                                        ; $70be: $06 $c2
	ld a, [hl+]                                      ; $70c0: $2a
	ld b, $7e                                        ; $70c1: $06 $7e
	nop                                              ; $70c3: $00
	and b                                            ; $70c4: $a0
	jp z, $062a                                      ; $70c5: $ca $2a $06

	jp nz, $062c                                     ; $70c8: $c2 $2c $06

	jp z, $0629                                      ; $70cb: $ca $29 $06

	jp nz, $062a                                     ; $70ce: $c2 $2a $06

	jp z, $0627                                      ; $70d1: $ca $27 $06

	ld a, [hl]                                       ; $70d4: $7e
	dec e                                            ; $70d5: $1d

jr_031_70d6:
	inc d                                            ; $70d6: $14
	xor c                                            ; $70d7: $a9
	add hl, hl                                       ; $70d8: $29
	ld [hl+], a                                      ; $70d9: $22
	add $7e                                          ; $70da: $c6 $7e
	dec e                                            ; $70dc: $1d
	nop                                              ; $70dd: $00
	xor c                                            ; $70de: $a9
	add hl, hl                                       ; $70df: $29
	inc d                                            ; $70e0: $14
	ld a, [hl]                                       ; $70e1: $7e
	nop                                              ; $70e2: $00
	call nz, $0629                                   ; $70e3: $c4 $29 $06

jr_031_70e6:
	call z, $0c20                                    ; $70e6: $cc $20 $0c
	jp nz, $0629                                     ; $70e9: $c2 $29 $06

	call z, $0622                                    ; $70ec: $cc $22 $06
	jp nz, $0620                                     ; $70ef: $c2 $20 $06

	call z, $0624                                    ; $70f2: $cc $24 $06
	jp nz, $0622                                     ; $70f5: $c2 $22 $06

	call z, $0625                                    ; $70f8: $cc $25 $06
	pop bc                                           ; $70fb: $c1

jr_031_70fc:
	inc h                                            ; $70fc: $24
	ld b, $cc                                        ; $70fd: $06 $cc
	inc h                                            ; $70ff: $24
	ld b, $25                                        ; $7100: $06 $25
	ld b, $c4                                        ; $7102: $06 $c4
	dec h                                            ; $7104: $25
	ld b, $cc                                        ; $7105: $06 $cc
	daa                                              ; $7107: $27
	inc c                                            ; $7108: $0c
	jp nz, $0625                                     ; $7109: $c2 $25 $06

	rst JumpTable                                          ; $710c: $c7
	ld a, [hl]                                       ; $710d: $7e
	dec e                                            ; $710e: $1d
	inc c                                            ; $710f: $0c
	xor c                                            ; $7110: $a9
	ld a, [hl+]                                      ; $7111: $2a
	jr jr_031_70d6                                   ; $7112: $18 $c2

	ld a, [hl]                                       ; $7114: $7e
	dec e                                            ; $7115: $1d
	nop                                              ; $7116: $00
	xor c                                            ; $7117: $a9
	ld a, [hl+]                                      ; $7118: $2a
	inc c                                            ; $7119: $0c
	ret                                              ; $711a: $c9


	ld a, [hl]                                       ; $711b: $7e
	dec e                                            ; $711c: $1d
	ld e, $a9                                        ; $711d: $1e $a9
	add hl, hl                                       ; $711f: $29
	jr z, jr_031_70e6                                ; $7120: $28 $c4

	ld a, [hl]                                       ; $7122: $7e

jr_031_7123:
	dec e                                            ; $7123: $1d
	nop                                              ; $7124: $00
	xor c                                            ; $7125: $a9
	add hl, hl                                       ; $7126: $29
	inc d                                            ; $7127: $14
	ld a, [hl]                                       ; $7128: $7e
	nop                                              ; $7129: $00
	and b                                            ; $712a: $a0
	jp $1829                                         ; $712b: $c3 $29 $18


	nop                                              ; $712e: $00
	jr jr_031_70fc                                   ; $712f: $18 $cb

	add hl, hl                                       ; $7131: $29
	ld [de], a                                       ; $7132: $12
	jp nz, $0629                                     ; $7133: $c2 $29 $06

	jp z, $1227                                      ; $7136: $ca $27 $12

	jp nz, $0629                                     ; $7139: $c2 $29 $06

	call z, $91d1                                    ; $713c: $cc $d1 $91
	daa                                              ; $713f: $27
	ld b, $c3                                        ; $7140: $06 $c3
	add hl, hl                                       ; $7142: $29
	ld b, $cc                                        ; $7143: $06 $cc
	add hl, hl                                       ; $7145: $29
	ld b, $25                                        ; $7146: $06 $25
	inc a                                            ; $7148: $3c
	call nz, $2a25                                   ; $7149: $c4 $25 $2a
	adc $22                                          ; $714c: $ce $22
	inc c                                            ; $714e: $0c
	jp $0c25                                         ; $714f: $c3 $25 $0c


	adc $22                                          ; $7152: $ce $22
	inc c                                            ; $7154: $0c
	call nz, $0622                                   ; $7155: $c4 $22 $06
	adc $24                                          ; $7158: $ce $24
	inc c                                            ; $715a: $0c
	jp $0622                                         ; $715b: $c3 $22 $06


	sla l                                            ; $715e: $cb $25
	inc c                                            ; $7160: $0c
	ret                                              ; $7161: $c9


	ld l, $18                                        ; $7162: $2e $18
	call nz, $0c25                                   ; $7164: $c4 $25 $0c
	ret                                              ; $7167: $c9


	ld l, $06                                        ; $7168: $2e $06
	jp $062e                                         ; $716a: $c3 $2e $06


	jp z, $0c25                                      ; $716d: $ca $25 $0c

	jp $0c25                                         ; $7170: $c3 $25 $0c


	ret z                                            ; $7173: $c8

	add hl, hl                                       ; $7174: $29
	inc c                                            ; $7175: $0c
	ld a, [hl]                                       ; $7176: $7e
	dec e                                            ; $7177: $1d
	jr z, jr_031_7123                                ; $7178: $28 $a9

	daa                                              ; $717a: $27
	inc a                                            ; $717b: $3c
	ld a, [hl]                                       ; $717c: $7e
	dec e                                            ; $717d: $1d
	nop                                              ; $717e: $00
	xor c                                            ; $717f: $a9
	call nz, $1827                                   ; $7180: $c4 $27 $18
	ld a, [hl]                                       ; $7183: $7e
	nop                                              ; $7184: $00
	and b                                            ; $7185: $a0
	jp z, $1826                                      ; $7186: $ca $26 $18

	or l                                             ; $7189: $b5
	pop bc                                           ; $718a: $c1
	ld [bc], a                                       ; $718b: $02
	jr nc, jr_031_7193                               ; $718c: $30 $05

	ld a, [hl]                                       ; $718e: $7e
	dec e                                            ; $718f: $1d
	inc d                                            ; $7190: $14
	and d                                            ; $7191: $a2
	dec h                                            ; $7192: $25

jr_031_7193:
	jr nc, @-$40                                     ; $7193: $30 $be

jr_031_7195:
	ld b, $22                                        ; $7195: $06 $22
	inc h                                            ; $7197: $24
	nop                                              ; $7198: $00
	dec h                                            ; $7199: $25
	nop                                              ; $719a: $00
	cp [hl]                                          ; $719b: $be
	ld a, [hl]                                       ; $719c: $7e
	dec e                                            ; $719d: $1d
	inc c                                            ; $719e: $0c
	xor d                                            ; $719f: $aa
	or c                                             ; $71a0: $b1
	ld [hl], c                                       ; $71a1: $71
	inc c                                            ; $71a2: $0c
	rlca                                             ; $71a3: $07
	ld a, [hl+]                                      ; $71a4: $2a
	ld [de], a                                       ; $71a5: $12
	or c                                             ; $71a6: $b1
	pop bc                                           ; $71a7: $c1
	jr nc, jr_031_71af                               ; $71a8: $30 $05

	ld a, [hl]                                       ; $71aa: $7e
	dec e                                            ; $71ab: $1d
	inc d                                            ; $71ac: $14
	and d                                            ; $71ad: $a2
	daa                                              ; $71ae: $27

jr_031_71af:
	jr nc, @-$36                                     ; $71af: $30 $c8

	cp [hl]                                          ; $71b1: $be
	ld b, $24                                        ; $71b2: $06 $24
	dec h                                            ; $71b4: $25
	nop                                              ; $71b5: $00
	daa                                              ; $71b6: $27
	nop                                              ; $71b7: $00
	cp [hl]                                          ; $71b8: $be
	ld a, [hl]                                       ; $71b9: $7e
	dec e                                            ; $71ba: $1d
	inc c                                            ; $71bb: $0c
	xor d                                            ; $71bc: $aa
	ret z                                            ; $71bd: $c8

	inc l                                            ; $71be: $2c
	ld [de], a                                       ; $71bf: $12
	or c                                             ; $71c0: $b1
	sub c                                            ; $71c1: $91
	nop                                              ; $71c2: $00
	nop                                              ; $71c3: $00
	ld a, [hl]                                       ; $71c4: $7e
	nop                                              ; $71c5: $00
	inc l                                            ; $71c6: $2c
	inc c                                            ; $71c7: $0c
	jp nz, $0c2c                                     ; $71c8: $c2 $2c $0c

	rst JumpTable                                          ; $71cb: $c7
	ld a, [hl+]                                      ; $71cc: $2a
	inc c                                            ; $71cd: $0c
	jp nz, $0c2c                                     ; $71ce: $c2 $2c $0c

	ret                                              ; $71d1: $c9


	add hl, hl                                       ; $71d2: $29
	inc c                                            ; $71d3: $0c
	jp nz, $0c2a                                     ; $71d4: $c2 $2a $0c

	sla a                                            ; $71d7: $cb $27
	inc c                                            ; $71d9: $0c
	jp nz, $0c29                                     ; $71da: $c2 $29 $0c

	jp z, $1227                                      ; $71dd: $ca $27 $12

	sla [hl]                                         ; $71e0: $cb $26
	ld b, $c3                                        ; $71e2: $06 $c3
	ld h, $0c                                        ; $71e4: $26 $0c
	ret                                              ; $71e6: $c9


	ld a, [hl]                                       ; $71e7: $7e
	dec e                                            ; $71e8: $1d
	jr jr_031_7195                                   ; $71e9: $18 $aa

	add hl, hl                                       ; $71eb: $29
	inc h                                            ; $71ec: $24
	ld a, [hl]                                       ; $71ed: $7e
	nop                                              ; $71ee: $00
	xor c                                            ; $71ef: $a9
	adc $22                                          ; $71f0: $ce $22
	jr @-$49                                         ; $71f2: $18 $b5

	add c                                            ; $71f4: $81
	ld [bc], a                                       ; $71f5: $02
	inc h                                            ; $71f6: $24
	dec b                                            ; $71f7: $05
	ld a, [hl+]                                      ; $71f8: $2a
	inc h                                            ; $71f9: $24
	sub [hl]                                         ; $71fa: $96

jr_031_71fb:
	inc c                                            ; $71fb: $0c
	inc b                                            ; $71fc: $04
	ld a, [hl+]                                      ; $71fd: $2a
	inc c                                            ; $71fe: $0c
	sub [hl]                                         ; $71ff: $96
	ld b, $04                                        ; $7200: $06 $04
	daa                                              ; $7202: $27
	ld b, $96                                        ; $7203: $06 $96
	inc c                                            ; $7205: $0c
	inc b                                            ; $7206: $04
	add hl, hl                                       ; $7207: $29
	inc c                                            ; $7208: $0c
	sub [hl]                                         ; $7209: $96
	ld b, $04                                        ; $720a: $06 $04
	ld a, [hl+]                                      ; $720c: $2a
	ld b, $00                                        ; $720d: $06 $00
	ld b, $b1                                        ; $720f: $06 $b1
	ld h, c                                          ; $7211: $61
	inc c                                            ; $7212: $0c
	inc b                                            ; $7213: $04
	inc l                                            ; $7214: $2c
	inc c                                            ; $7215: $0c
	sub [hl]                                         ; $7216: $96
	ld b, $04                                        ; $7217: $06 $04
	ld l, $06                                        ; $7219: $2e $06
	or c                                             ; $721b: $b1
	sub c                                            ; $721c: $91
	nop                                              ; $721d: $00
	nop                                              ; $721e: $00
	jr nc, @+$0a                                     ; $721f: $30 $08

	jp $0830                                         ; $7221: $c3 $30 $08


	ret                                              ; $7224: $c9


	jr nc, @+$0a                                     ; $7225: $30 $08

	jp $0830                                         ; $7227: $c3 $30 $08


	ret                                              ; $722a: $c9


	jr nc, @+$0a                                     ; $722b: $30 $08

	jp $0830                                         ; $722d: $c3 $30 $08


	nop                                              ; $7230: $00
	jr nc, jr_031_71fb                               ; $7231: $30 $c8

	jp nc, $06be                                     ; $7233: $d2 $be $06

	add hl, hl                                       ; $7236: $29
	nop                                              ; $7237: $00
	inc l                                            ; $7238: $2c
	nop                                              ; $7239: $00
	inc l                                            ; $723a: $2c
	nop                                              ; $723b: $00
	cp [hl]                                          ; $723c: $be
	add hl, hl                                       ; $723d: $29
	inc bc                                           ; $723e: $03
	nop                                              ; $723f: $00
	inc bc                                           ; $7240: $03
	add hl, hl                                       ; $7241: $29
	ld b, $00                                        ; $7242: $06 $00
	ld b, $d3                                        ; $7244: $06 $d3
	inc l                                            ; $7246: $2c
	ld b, $00                                        ; $7247: $06 $00
	ld b, $2c                                        ; $7249: $06 $2c
	inc bc                                           ; $724b: $03
	nop                                              ; $724c: $00
	inc bc                                           ; $724d: $03
	cp [hl]                                          ; $724e: $be
	ld b, $2c                                        ; $724f: $06 $2c
	nop                                              ; $7251: $00
	add hl, hl                                       ; $7252: $29
	nop                                              ; $7253: $00
	cp [hl]                                          ; $7254: $be
	jp nc, $06be                                     ; $7255: $d2 $be $06

	add hl, hl                                       ; $7258: $29
	nop                                              ; $7259: $00
	inc l                                            ; $725a: $2c
	nop                                              ; $725b: $00
	inc l                                            ; $725c: $2c
	nop                                              ; $725d: $00
	cp [hl]                                          ; $725e: $be
	add hl, hl                                       ; $725f: $29
	inc bc                                           ; $7260: $03
	nop                                              ; $7261: $00
	inc bc                                           ; $7262: $03
	add hl, hl                                       ; $7263: $29
	ld b, $00                                        ; $7264: $06 $00
	ld b, $d3                                        ; $7266: $06 $d3
	inc l                                            ; $7268: $2c
	ld b, $00                                        ; $7269: $06 $00
	ld b, $2c                                        ; $726b: $06 $2c
	inc bc                                           ; $726d: $03
	nop                                              ; $726e: $00
	inc bc                                           ; $726f: $03
	cp [hl]                                          ; $7270: $be
	ld b, $2c                                        ; $7271: $06 $2c
	nop                                              ; $7273: $00
	add hl, hl                                       ; $7274: $29
	nop                                              ; $7275: $00
	cp [hl]                                          ; $7276: $be
	pop de                                           ; $7277: $d1
	cp $ff                                           ; $7278: $fe $ff
	ret nc                                           ; $727a: $d0

	ld [hl], e                                       ; $727b: $73
	cp $c2                                           ; $727c: $fe $c2
	pop de                                           ; $727e: $d1
	ld a, a                                          ; $727f: $7f
	ld hl, $007e                                     ; $7280: $21 $7e $00
	and b                                            ; $7283: $a0
	ld b, $09                                        ; $7284: $06 $09
	add $06                                          ; $7286: $c6 $06
	add hl, bc                                       ; $7288: $09
	jp nz, $090d                                     ; $7289: $c2 $0d $09

	add $0d                                          ; $728c: $c6 $0d
	add hl, bc                                       ; $728e: $09
	jp nz, $0c12                                     ; $728f: $c2 $12 $0c

	dec c                                            ; $7292: $0d
	inc b                                            ; $7293: $04
	nop                                              ; $7294: $00
	ld [$0c06], sp                                   ; $7295: $08 $06 $0c
	ld a, [bc]                                       ; $7298: $0a
	ld b, $0d                                        ; $7299: $06 $0d
	ld [de], a                                       ; $729b: $12
	ld [$c609], sp                                   ; $729c: $08 $09 $c6
	ld [$c209], sp                                   ; $729f: $08 $09 $c2
	rrca                                             ; $72a2: $0f
	add hl, bc                                       ; $72a3: $09
	add $0f                                          ; $72a4: $c6 $0f
	add hl, bc                                       ; $72a6: $09
	jp nz, $0c14                                     ; $72a7: $c2 $14 $0c

	rrca                                             ; $72aa: $0f
	inc b                                            ; $72ab: $04
	nop                                              ; $72ac: $00
	ld [$0c08], sp                                   ; $72ad: $08 $08 $0c
	inc c                                            ; $72b0: $0c
	ld b, $0f                                        ; $72b1: $06 $0f
	ld [de], a                                       ; $72b3: $12
	dec c                                            ; $72b4: $0d
	add hl, bc                                       ; $72b5: $09
	add $0d                                          ; $72b6: $c6 $0d
	add hl, bc                                       ; $72b8: $09
	jp nz, $0914                                     ; $72b9: $c2 $14 $09

	add $14                                          ; $72bc: $c6 $14
	add hl, bc                                       ; $72be: $09
	jp nz, $0c19                                     ; $72bf: $c2 $19 $0c

	inc d                                            ; $72c2: $14
	inc b                                            ; $72c3: $04
	nop                                              ; $72c4: $00
	ld [$0c0d], sp                                   ; $72c5: $08 $0d $0c
	ld de, $1406                                     ; $72c8: $11 $06 $14
	ld [de], a                                       ; $72cb: $12
	dec c                                            ; $72cc: $0d
	inc c                                            ; $72cd: $0c
	add $0d                                          ; $72ce: $c6 $0d
	inc c                                            ; $72d0: $0c
	nop                                              ; $72d1: $00
	ld c, b                                          ; $72d2: $48
	pop de                                           ; $72d3: $d1
	jp nz, $187f                                     ; $72d4: $c2 $7f $18

	cp [hl]                                          ; $72d7: $be
	ld b, $0d                                        ; $72d8: $06 $0d
	nop                                              ; $72da: $00
	ld [$0d00], sp                                   ; $72db: $08 $00 $0d
	nop                                              ; $72de: $00
	cp [hl]                                          ; $72df: $be
	jp nz, $0608                                     ; $72e0: $c2 $08 $06

	inc c                                            ; $72e3: $0c
	ld b, $0d                                        ; $72e4: $06 $0d
	inc c                                            ; $72e6: $0c
	nop                                              ; $72e7: $00
	ld b, $0d                                        ; $72e8: $06 $0d
	inc bc                                           ; $72ea: $03
	nop                                              ; $72eb: $00
	inc bc                                           ; $72ec: $03
	dec c                                            ; $72ed: $0d
	ld b, $00                                        ; $72ee: $06 $00
	ld b, $08                                        ; $72f0: $06 $08
	inc c                                            ; $72f2: $0c
	nop                                              ; $72f3: $00
	ld b, $0d                                        ; $72f4: $06 $0d
	inc c                                            ; $72f6: $0c
	cp [hl]                                          ; $72f7: $be
	ld b, $00                                        ; $72f8: $06 $00
	dec c                                            ; $72fa: $0d
	nop                                              ; $72fb: $00
	dec c                                            ; $72fc: $0d
	nop                                              ; $72fd: $00
	cp [hl]                                          ; $72fe: $be
	dec c                                            ; $72ff: $0d
	inc c                                            ; $7300: $0c
	nop                                              ; $7301: $00
	inc c                                            ; $7302: $0c
	cp [hl]                                          ; $7303: $be
	ld b, $08                                        ; $7304: $06 $08
	nop                                              ; $7306: $00
	dec c                                            ; $7307: $0d
	inc d                                            ; $7308: $14
	cp [hl]                                          ; $7309: $be
	inc c                                            ; $730a: $0c
	inc c                                            ; $730b: $0c
	cp [hl]                                          ; $730c: $be
	ld b, $15                                        ; $730d: $06 $15
	nop                                              ; $730f: $00
	dec d                                            ; $7310: $15
	nop                                              ; $7311: $00
	add hl, bc                                       ; $7312: $09
	ld a, [bc]                                       ; $7313: $0a
	cp [hl]                                          ; $7314: $be
	inc c                                            ; $7315: $0c
	inc c                                            ; $7316: $0c
	nop                                              ; $7317: $00
	ld b, $0c                                        ; $7318: $06 $0c
	inc bc                                           ; $731a: $03
	nop                                              ; $731b: $00
	inc bc                                           ; $731c: $03
	inc c                                            ; $731d: $0c
	ld b, $00                                        ; $731e: $06 $00
	ld b, $05                                        ; $7320: $06 $05
	inc c                                            ; $7322: $0c
	nop                                              ; $7323: $00
	ld b, $0c                                        ; $7324: $06 $0c
	inc c                                            ; $7326: $0c
	cp [hl]                                          ; $7327: $be
	ld b, $00                                        ; $7328: $06 $00
	inc c                                            ; $732a: $0c
	nop                                              ; $732b: $00
	inc c                                            ; $732c: $0c
	nop                                              ; $732d: $00
	cp [hl]                                          ; $732e: $be
	inc c                                            ; $732f: $0c
	inc c                                            ; $7330: $0c
	nop                                              ; $7331: $00
	ld b, $18                                        ; $7332: $06 $18
	inc bc                                           ; $7334: $03
	nop                                              ; $7335: $00
	inc bc                                           ; $7336: $03
	jr @+$08                                         ; $7337: $18 $06

	nop                                              ; $7339: $00
	ld b, $0c                                        ; $733a: $06 $0c
	ld b, $d1                                        ; $733c: $06 $d1
	ld de, $c206                                     ; $733e: $11 $06 $c2
	pop de                                           ; $7341: $d1
	ld a, a                                          ; $7342: $7f
	jr @+$0c                                         ; $7343: $18 $0a

	inc c                                            ; $7345: $0c
	add $0a                                          ; $7346: $c6 $0a
	ld b, $c2                                        ; $7348: $06 $c2
	ld de, $c60c                                     ; $734a: $11 $0c $c6
	ld de, $c206                                     ; $734d: $11 $06 $c2
	ld a, a                                          ; $7350: $7f
	inc e                                            ; $7351: $1c
	ld d, $06                                        ; $7352: $16 $06
	add hl, de                                       ; $7354: $19
	ld b, $7f                                        ; $7355: $06 $7f
	jr @+$0b                                         ; $7357: $18 $09

	inc c                                            ; $7359: $0c
	add $09                                          ; $735a: $c6 $09
	ld b, $c2                                        ; $735c: $06 $c2
	ld de, $c60c                                     ; $735e: $11 $0c $c6
	ld de, $c206                                     ; $7361: $11 $06 $c2
	ld a, a                                          ; $7364: $7f
	inc e                                            ; $7365: $1c
	dec d                                            ; $7366: $15
	ld b, $18                                        ; $7367: $06 $18
	ld b, $7f                                        ; $7369: $06 $7f
	jr jr_031_7375                                   ; $736b: $18 $08

	inc c                                            ; $736d: $0c
	add $08                                          ; $736e: $c6 $08
	ld b, $c2                                        ; $7370: $06 $c2
	ld de, $c60c                                     ; $7372: $11 $0c $c6

jr_031_7375:
	ld de, $c206                                     ; $7375: $11 $06 $c2
	ld a, a                                          ; $7378: $7f
	inc e                                            ; $7379: $1c
	add hl, de                                       ; $737a: $19
	ld b, $1b                                        ; $737b: $06 $1b
	ld b, $7f                                        ; $737d: $06 $7f
	jr @+$09                                         ; $737f: $18 $07

	inc c                                            ; $7381: $0c
	add $07                                          ; $7382: $c6 $07

jr_031_7384:
	ld b, $c2                                        ; $7384: $06 $c2
	ld de, $c60c                                     ; $7386: $11 $0c $c6
	ld de, $c206                                     ; $7389: $11 $06 $c2
	ld a, a                                          ; $738c: $7f
	inc e                                            ; $738d: $1c
	dec de                                           ; $738e: $1b
	ld b, $1d                                        ; $738f: $06 $1d
	ld b, $7f                                        ; $7391: $06 $7f
	jr jr_031_739b                                   ; $7393: $18 $06

	ld e, $00                                        ; $7395: $1e $00
	ld b, $01                                        ; $7397: $06 $01
	ld b, $00                                        ; $7399: $06 $00

jr_031_739b:
	ld b, $06                                        ; $739b: $06 $06
	jr jr_031_73a9                                   ; $739d: $18 $0a

	jr jr_031_73a1                                   ; $739f: $18 $00

jr_031_73a1:
	ld b, $08                                        ; $73a1: $06 $08
	stop                                             ; $73a3: $10 $00
	ld [bc], a                                       ; $73a5: $02
	ld [$0f0c], sp                                   ; $73a6: $08 $0c $0f

jr_031_73a9:
	ld b, $14                                        ; $73a9: $06 $14
	ld b, $08                                        ; $73ab: $06 $08
	jr jr_031_73b6                                   ; $73ad: $18 $07

	jr jr_031_7430                                   ; $73af: $18 $7f

	jr jr_031_7384                                   ; $73b1: $18 $d1

jr_031_73b3:
	jp nz, $0c06                                     ; $73b3: $c2 $06 $0c

jr_031_73b6:
	add $06                                          ; $73b6: $c6 $06
	inc c                                            ; $73b8: $0c
	ld a, [hl]                                       ; $73b9: $7e
	dec de                                           ; $73ba: $1b
	nop                                              ; $73bb: $00
	and b                                            ; $73bc: $a0
	db $d3                                           ; $73bd: $d3
	jp nz, $0c1e                                     ; $73be: $c2 $1e $0c

	add $1e                                          ; $73c1: $c6 $1e
	inc c                                            ; $73c3: $0c
	ld a, [hl]                                       ; $73c4: $7e
	nop                                              ; $73c5: $00
	and b                                            ; $73c6: $a0
	pop de                                           ; $73c7: $d1
	jp nz, $060d                                     ; $73c8: $c2 $0d $06

	rrca                                             ; $73cb: $0f
	ld b, $c6                                        ; $73cc: $06 $c6
	rrca                                             ; $73ce: $0f
	ld b, $c2                                        ; $73cf: $06 $c2
	ld de, $c606                                     ; $73d1: $11 $06 $c6
	ld de, $7f06                                     ; $73d4: $11 $06 $7f
	inc e                                            ; $73d7: $1c
	jp nz, $1d7e                                     ; $73d8: $c2 $7e $1d

	nop                                              ; $73db: $00
	and b                                            ; $73dc: $a0
	ld d, $12                                        ; $73dd: $16 $12
	ld a, a                                          ; $73df: $7f
	jr jr_031_73b3                                   ; $73e0: $18 $d1

	jp nz, $0c08                                     ; $73e2: $c2 $08 $0c

	add $08                                          ; $73e5: $c6 $08
	inc c                                            ; $73e7: $0c
	ld a, [hl]                                       ; $73e8: $7e
	dec de                                           ; $73e9: $1b
	nop                                              ; $73ea: $00
	xor c                                            ; $73eb: $a9
	db $d3                                           ; $73ec: $d3
	jp nz, $0c20                                     ; $73ed: $c2 $20 $0c

	add $20                                          ; $73f0: $c6 $20
	inc c                                            ; $73f2: $0c
	ld a, [hl]                                       ; $73f3: $7e
	nop                                              ; $73f4: $00
	and b                                            ; $73f5: $a0
	pop de                                           ; $73f6: $d1
	jp nz, $060f                                     ; $73f7: $c2 $0f $06

	ld de, $c606                                     ; $73fa: $11 $06 $c6
	ld de, $c206                                     ; $73fd: $11 $06 $c2
	ld [de], a                                       ; $7400: $12
	ld b, $c6                                        ; $7401: $06 $c6
	ld [de], a                                       ; $7403: $12
	ld b, $7f                                        ; $7404: $06 $7f
	inc e                                            ; $7406: $1c
	jp nz, $1d7e                                     ; $7407: $c2 $7e $1d

jr_031_740a:
	nop                                              ; $740a: $00
	and b                                            ; $740b: $a0
	jr jr_031_7420                                   ; $740c: $18 $12

	ld a, a                                          ; $740e: $7f
	jr @+$80                                         ; $740f: $18 $7e

	nop                                              ; $7411: $00
	and b                                            ; $7412: $a0
	ld bc, $0812                                     ; $7413: $01 $12 $08
	ld [de], a                                       ; $7416: $12
	dec c                                            ; $7417: $0d
	ld b, $11                                        ; $7418: $06 $11
	ld b, $0c                                        ; $741a: $06 $0c
	ld [de], a                                       ; $741c: $12
	ld [$1812], sp                                   ; $741d: $08 $12 $18

jr_031_7420:
	ld b, $11                                        ; $7420: $06 $11
	ld b, $0a                                        ; $7422: $06 $0a
	stop                                             ; $7424: $10 $00
	ld [bc], a                                       ; $7426: $02
	ld a, [bc]                                       ; $7427: $0a
	ld b, $00                                        ; $7428: $06 $00
	inc c                                            ; $742a: $0c
	ld a, [hl]                                       ; $742b: $7e
	dec e                                            ; $742c: $1d
	ld a, [bc]                                       ; $742d: $0a
	and b                                            ; $742e: $a0
	ld a, [bc]                                       ; $742f: $0a

jr_031_7430:
	inc h                                            ; $7430: $24
	ld a, [hl]                                       ; $7431: $7e
	nop                                              ; $7432: $00
	and b                                            ; $7433: $a0
	dec b                                            ; $7434: $05
	jr jr_031_74b6                                   ; $7435: $18 $7f

	jr jr_031_740a                                   ; $7437: $18 $d1

	jp nz, $0c0f                                     ; $7439: $c2 $0f $0c

	add $0f                                          ; $743c: $c6 $0f
	inc c                                            ; $743e: $0c
	jp nz, $0c0f                                     ; $743f: $c2 $0f $0c

	add $0f                                          ; $7442: $c6 $0f
	inc c                                            ; $7444: $0c
	jp nz, $060f                                     ; $7445: $c2 $0f $06

	db $10                                           ; $7448: $10
	inc c                                            ; $7449: $0c
	ld de, $0006                                     ; $744a: $11 $06 $00
	ld b, $1e                                        ; $744d: $06 $1e
	inc c                                            ; $744f: $0c
	rra                                              ; $7450: $1f
	ld b, $c2                                        ; $7451: $06 $c2
	inc d                                            ; $7453: $14
	ld [$14c6], sp                                   ; $7454: $08 $c6 $14
	ld [$14c2], sp                                   ; $7457: $08 $c2 $14
	ld [$14c6], sp                                   ; $745a: $08 $c6 $14
	ld [$14c2], sp                                   ; $745d: $08 $c2 $14
	ld [$14c6], sp                                   ; $7460: $08 $c6 $14
	ld [$3000], sp                                   ; $7463: $08 $00 $30
	jp nz, $120d                                     ; $7466: $c2 $0d $12

	ld a, a                                          ; $7469: $7f
	inc e                                            ; $746a: $1c
	jr nz, @+$14                                     ; $746b: $20 $12

	ld [hl+], a                                      ; $746d: $22
	ld b, $20                                        ; $746e: $06 $20
	ld b, $7f                                        ; $7470: $06 $7f
	jr jr_031_7481                                   ; $7472: $18 $0d

	ld [de], a                                       ; $7474: $12
	ld a, a                                          ; $7475: $7f
	inc e                                            ; $7476: $1c
	jr nz, @+$14                                     ; $7477: $20 $12

	ld [hl+], a                                      ; $7479: $22
	ld b, $20                                        ; $747a: $06 $20
	ld b, $7f                                        ; $747c: $06 $7f
	jr @+$0f                                         ; $747e: $18 $0d

	ld [de], a                                       ; $7480: $12

jr_031_7481:
	ld a, a                                          ; $7481: $7f
	inc e                                            ; $7482: $1c
	jr nz, jr_031_7497                               ; $7483: $20 $12

	ld [hl+], a                                      ; $7485: $22
	ld b, $20                                        ; $7486: $06 $20
	ld b, $7f                                        ; $7488: $06 $7f
	jr @+$0a                                         ; $748a: $18 $08

	jr jr_031_7495                                   ; $748c: $18 $07

jr_031_748e:
	jr jr_031_748e                                   ; $748e: $18 $fe

	rst $38                                          ; $7490: $ff
	ret nc                                           ; $7491: $d0

	ld [hl], e                                       ; $7492: $73
	cp $fd                                           ; $7493: $fe $fd

jr_031_7495:
	inc de                                           ; $7495: $13
	ld [hl], l                                       ; $7496: $75

jr_031_7497:
	db $fd                                           ; $7497: $fd
	inc de                                           ; $7498: $13
	ld [hl], l                                       ; $7499: $75
	cp [hl]                                          ; $749a: $be
	ld b, $1f                                        ; $749b: $06 $1f
	dec e                                            ; $749d: $1d
	dec e                                            ; $749e: $1d
	dec e                                            ; $749f: $1d
	jr nz, jr_031_74bf                               ; $74a0: $20 $1d

	cp [hl]                                          ; $74a2: $be
	ld e, $0c                                        ; $74a3: $1e $0c
	jr nz, @+$0e                                     ; $74a5: $20 $0c

	rra                                              ; $74a7: $1f
	ld b, $1d                                        ; $74a8: $06 $1d
	ld b, $20                                        ; $74aa: $06 $20
	inc c                                            ; $74ac: $0c
	rra                                              ; $74ad: $1f
	ld b, $1f                                        ; $74ae: $06 $1f
	ld b, $1f                                        ; $74b0: $06 $1f
	jr jr_031_74b4                                   ; $74b2: $18 $00

jr_031_74b4:
	jr nc, @+$22                                     ; $74b4: $30 $20

jr_031_74b6:
	ld b, $20                                        ; $74b6: $06 $20
	inc c                                            ; $74b8: $0c
	rra                                              ; $74b9: $1f
	ld b, $fd                                        ; $74ba: $06 $fd
	ld h, $75                                        ; $74bc: $26 $75
	db $fd                                           ; $74be: $fd

jr_031_74bf:
	ld h, $75                                        ; $74bf: $26 $75
	db $fd                                           ; $74c1: $fd
	ld c, h                                          ; $74c2: $4c
	ld [hl], l                                       ; $74c3: $75
	db $fd                                           ; $74c4: $fd
	ld c, h                                          ; $74c5: $4c
	ld [hl], l                                       ; $74c6: $75
	cp [hl]                                          ; $74c7: $be
	inc c                                            ; $74c8: $0c
	rra                                              ; $74c9: $1f
	dec e                                            ; $74ca: $1d
	jr nz, jr_031_74ec                               ; $74cb: $20 $1f

	rra                                              ; $74cd: $1f
	dec e                                            ; $74ce: $1d
	jr nz, jr_031_74ef                               ; $74cf: $20 $1e

	cp [hl]                                          ; $74d1: $be
	dec e                                            ; $74d2: $1d
	ld b, $1f                                        ; $74d3: $06 $1f
	ld b, $be                                        ; $74d5: $06 $be
	inc c                                            ; $74d7: $0c
	dec e                                            ; $74d8: $1d
	rra                                              ; $74d9: $1f
	rra                                              ; $74da: $1f
	rra                                              ; $74db: $1f
	dec e                                            ; $74dc: $1d
	rra                                              ; $74dd: $1f
	ld e, $be                                        ; $74de: $1e $be
	db $fd                                           ; $74e0: $fd

jr_031_74e1:
	ld h, l                                          ; $74e1: $65
	ld [hl], l                                       ; $74e2: $75
	db $fd                                           ; $74e3: $fd
	ld h, l                                          ; $74e4: $65
	ld [hl], l                                       ; $74e5: $75
	db $fd                                           ; $74e6: $fd
	ld a, h                                          ; $74e7: $7c
	ld [hl], l                                       ; $74e8: $75
	db $fd                                           ; $74e9: $fd
	ld a, h                                          ; $74ea: $7c
	ld [hl], l                                       ; $74eb: $75

jr_031_74ec:
	rra                                              ; $74ec: $1f
	inc c                                            ; $74ed: $0c
	dec e                                            ; $74ee: $1d

jr_031_74ef:
	inc c                                            ; $74ef: $0c
	jr nz, @+$0e                                     ; $74f0: $20 $0c

	cp [hl]                                          ; $74f2: $be
	ld b, $1d                                        ; $74f3: $06 $1d
	rra                                              ; $74f5: $1f
	jr nz, jr_031_7518                               ; $74f6: $20 $20

	rra                                              ; $74f8: $1f
	jr nz, @+$21                                     ; $74f9: $20 $1f

	jr nz, jr_031_751c                               ; $74fb: $20 $1f

	jr nz, @-$40                                     ; $74fd: $20 $be

	jr nz, jr_031_7511                               ; $74ff: $20 $10

	jr nz, jr_031_7513                               ; $7501: $20 $10

	jr nz, @+$12                                     ; $7503: $20 $10

jr_031_7505:
	nop                                              ; $7505: $00
	inc h                                            ; $7506: $24
	jr nz, jr_031_750f                               ; $7507: $20 $06

	jr nz, jr_031_7511                               ; $7509: $20 $06

	db $fd                                           ; $750b: $fd
	ld a, h                                          ; $750c: $7c
	ld [hl], l                                       ; $750d: $75
	db $fd                                           ; $750e: $fd

jr_031_750f:
	ld a, h                                          ; $750f: $7c
	ld [hl], l                                       ; $7510: $75

jr_031_7511:
	cp $ff                                           ; $7511: $fe $ff

jr_031_7513:
	cp [hl]                                          ; $7513: $be
	ld b, $1f                                        ; $7514: $06 $1f
	dec e                                            ; $7516: $1d
	dec e                                            ; $7517: $1d

jr_031_7518:
	dec e                                            ; $7518: $1d
	jr nz, @+$1f                                     ; $7519: $20 $1d

	dec e                                            ; $751b: $1d

jr_031_751c:
	dec e                                            ; $751c: $1d
	rra                                              ; $751d: $1f
	dec e                                            ; $751e: $1d
	dec e                                            ; $751f: $1d
	dec e                                            ; $7520: $1d
	jr nz, jr_031_74e1                               ; $7521: $20 $be

	ld e, $12                                        ; $7523: $1e $12
	db $fd                                           ; $7525: $fd
	rra                                              ; $7526: $1f
	inc c                                            ; $7527: $0c
	dec e                                            ; $7528: $1d
	inc c                                            ; $7529: $0c
	jr nz, @+$0e                                     ; $752a: $20 $0c

	rra                                              ; $752c: $1f
	ld b, $1f                                        ; $752d: $06 $1f
	ld b, $1f                                        ; $752f: $06 $1f
	inc c                                            ; $7531: $0c
	dec e                                            ; $7532: $1d
	inc c                                            ; $7533: $0c
	jr nz, @+$0e                                     ; $7534: $20 $0c

jr_031_7536:
	rra                                              ; $7536: $1f
	ld b, $1f                                        ; $7537: $06 $1f
	ld b, $00                                        ; $7539: $06 $00
	ld b, $1f                                        ; $753b: $06 $1f
	ld b, $be                                        ; $753d: $06 $be
	inc c                                            ; $753f: $0c
	dec e                                            ; $7540: $1d
	jr nz, @+$21                                     ; $7541: $20 $1f

	rra                                              ; $7543: $1f
	dec e                                            ; $7544: $1d
	jr nz, jr_031_7505                               ; $7545: $20 $be

	rra                                              ; $7547: $1f
	ld b, $1f                                        ; $7548: $06 $1f
	ld b, $fd                                        ; $754a: $06 $fd
	rra                                              ; $754c: $1f
	ld b, $1d                                        ; $754d: $06 $1d
	inc c                                            ; $754f: $0c
	dec e                                            ; $7550: $1d
	ld b, $1f                                        ; $7551: $06 $1f

jr_031_7553:
	inc c                                            ; $7553: $0c
	dec e                                            ; $7554: $1d
	ld b, $1d                                        ; $7555: $06 $1d
	ld b, $1f                                        ; $7557: $06 $1f
	ld b, $1d                                        ; $7559: $06 $1d
	inc c                                            ; $755b: $0c
	dec e                                            ; $755c: $1d
	ld b, $1f                                        ; $755d: $06 $1f
	inc c                                            ; $755f: $0c
	dec e                                            ; $7560: $1d
	ld b, $1d                                        ; $7561: $06 $1d
	ld b, $fd                                        ; $7563: $06 $fd
	rra                                              ; $7565: $1f
	inc c                                            ; $7566: $0c
	dec e                                            ; $7567: $1d
	inc c                                            ; $7568: $0c
	jr nz, jr_031_7577                               ; $7569: $20 $0c

	dec e                                            ; $756b: $1d
	ld b, $1f                                        ; $756c: $06 $1f
	ld b, $1f                                        ; $756e: $06 $1f
	ld b, $1f                                        ; $7570: $06 $1f
	inc c                                            ; $7572: $0c
	rra                                              ; $7573: $1f
	ld b, $20                                        ; $7574: $06 $20
	inc c                                            ; $7576: $0c

jr_031_7577:
	dec e                                            ; $7577: $1d
	ld b, $1f                                        ; $7578: $06 $1f
	ld b, $fd                                        ; $757a: $06 $fd
	rra                                              ; $757c: $1f

jr_031_757d:
	inc c                                            ; $757d: $0c
	dec e                                            ; $757e: $1d
	inc c                                            ; $757f: $0c
	jr nz, @+$0e                                     ; $7580: $20 $0c

	dec e                                            ; $7582: $1d
	ld b, $1f                                        ; $7583: $06 $1f
	ld b, $1f                                        ; $7585: $06 $1f
	inc c                                            ; $7587: $0c
	rra                                              ; $7588: $1f
	inc c                                            ; $7589: $0c
	jr nz, @+$0e                                     ; $758a: $20 $0c

	dec e                                            ; $758c: $1d
	ld b, $1f                                        ; $758d: $06 $1f
	ld b, $fd                                        ; $758f: $06 $fd
	ret nc                                           ; $7591: $d0

	call c, $b5fe                                    ; $7592: $dc $fe $b5
	pop af                                           ; $7595: $f1
	ld bc, $02ff                                     ; $7596: $01 $ff $02
	ld a, [hl]                                       ; $7599: $7e
	ld bc, $a000                                     ; $759a: $01 $00 $a0
	dec de                                           ; $759d: $1b
	jr jr_031_7536                                   ; $759e: $18 $96

	nop                                              ; $75a0: $00
	nop                                              ; $75a1: $00
	sub a                                            ; $75a2: $97
	ccf                                              ; $75a3: $3f
	dec de                                           ; $75a4: $1b

jr_031_75a5:
	ld c, b                                          ; $75a5: $48
	sub a                                            ; $75a6: $97
	ld l, [hl]                                       ; $75a7: $6e
	dec de                                           ; $75a8: $1b
	ld c, b                                          ; $75a9: $48
	or l                                             ; $75aa: $b5
	or c                                             ; $75ab: $b1
	nop                                              ; $75ac: $00
	rst $38                                          ; $75ad: $ff
	ld bc, $0097                                     ; $75ae: $01 $97 $00
	ld d, $0c                                        ; $75b1: $16 $0c
	jr jr_031_75c1                                   ; $75b3: $18 $0c

	or l                                             ; $75b5: $b5
	pop hl                                           ; $75b6: $e1
	ld bc, $02ff                                     ; $75b7: $01 $ff $02
	dec e                                            ; $75ba: $1d
	jr jr_031_7553                                   ; $75bb: $18 $96

	nop                                              ; $75bd: $00
	nop                                              ; $75be: $00
	sub a                                            ; $75bf: $97
	ccf                                              ; $75c0: $3f

jr_031_75c1:
	dec e                                            ; $75c1: $1d
	ld c, b                                          ; $75c2: $48
	sub a                                            ; $75c3: $97
	ld e, [hl]                                       ; $75c4: $5e
	dec e                                            ; $75c5: $1d
	jr jr_031_757d                                   ; $75c6: $18 $b5

	and c                                            ; $75c8: $a1
	nop                                              ; $75c9: $00
	rst $38                                          ; $75ca: $ff

jr_031_75cb:
	ld bc, $0097                                     ; $75cb: $01 $97 $00
	ld d, $0c                                        ; $75ce: $16 $0c
	or c                                             ; $75d0: $b1
	ld b, c                                          ; $75d1: $41
	nop                                              ; $75d2: $00
	nop                                              ; $75d3: $00
	ld d, $0c                                        ; $75d4: $16 $0c
	or c                                             ; $75d6: $b1
	or c                                             ; $75d7: $b1
	rst $38                                          ; $75d8: $ff
	ld bc, $0c16                                     ; $75d9: $01 $16 $0c
	jr jr_031_75ea                                   ; $75dc: $18 $0c

	or c                                             ; $75de: $b1
	pop de                                           ; $75df: $d1
	rst $38                                          ; $75e0: $ff
	ld bc, $0c16                                     ; $75e1: $01 $16 $0c
	or c                                             ; $75e4: $b1
	ld b, c                                          ; $75e5: $41
	nop                                              ; $75e6: $00
	nop                                              ; $75e7: $00
	ld d, $0c                                        ; $75e8: $16 $0c

jr_031_75ea:
	or l                                             ; $75ea: $b5
	and c                                            ; $75eb: $a1
	ld bc, $02ff                                     ; $75ec: $01 $ff $02
	ld e, $18                                        ; $75ef: $1e $18
	sub [hl]                                         ; $75f1: $96
	nop                                              ; $75f2: $00
	nop                                              ; $75f3: $00
	sub a                                            ; $75f4: $97
	cpl                                              ; $75f5: $2f
	ld e, $48                                        ; $75f6: $1e $48
	sub a                                            ; $75f8: $97
	ld e, a                                          ; $75f9: $5f
	ld e, $48                                        ; $75fa: $1e $48
	or l                                             ; $75fc: $b5
	or c                                             ; $75fd: $b1
	nop                                              ; $75fe: $00
	rst $38                                          ; $75ff: $ff
	ld bc, $0097                                     ; $7600: $01 $97 $00
	ld d, $0c                                        ; $7603: $16 $0c
	jr jr_031_7613                                   ; $7605: $18 $0c

	or l                                             ; $7607: $b5
	sub c                                            ; $7608: $91
	ld bc, $02ff                                     ; $7609: $01 $ff $02
	rra                                              ; $760c: $1f
	jr jr_031_75a5                                   ; $760d: $18 $96

	nop                                              ; $760f: $00
	nop                                              ; $7610: $00
	sub a                                            ; $7611: $97
	cpl                                              ; $7612: $2f

jr_031_7613:
	rra                                              ; $7613: $1f
	jr nc, jr_031_75cb                               ; $7614: $30 $b5

	pop bc                                           ; $7616: $c1
	nop                                              ; $7617: $00
	rst $38                                          ; $7618: $ff
	rlca                                             ; $7619: $07
	sub a                                            ; $761a: $97
	nop                                              ; $761b: $00
	ld a, [hl]                                       ; $761c: $7e
	dec b                                            ; $761d: $05
	nop                                              ; $761e: $00
	and c                                            ; $761f: $a1
	daa                                              ; $7620: $27
	inc c                                            ; $7621: $0c
	ld a, [hl]                                       ; $7622: $7e
	nop                                              ; $7623: $00
	ld [hl+], a                                      ; $7624: $22
	inc c                                            ; $7625: $0c
	or c                                             ; $7626: $b1
	ld sp, $0000                                     ; $7627: $31 $00 $00
	ld [hl+], a                                      ; $762a: $22
	inc c                                            ; $762b: $0c
	or c                                             ; $762c: $b1
	pop de                                           ; $762d: $d1
	rst $38                                          ; $762e: $ff
	ld [bc], a                                       ; $762f: $02
	ld a, [hl]                                       ; $7630: $7e
	dec b                                            ; $7631: $05
	nop                                              ; $7632: $00
	and c                                            ; $7633: $a1
	ld e, $18                                        ; $7634: $1e $18
	bit 7, [hl]                                      ; $7636: $cb $7e
	nop                                              ; $7638: $00
	dec e                                            ; $7639: $1d
	inc c                                            ; $763a: $0c
	jp z, $0c1b                                      ; $763b: $ca $1b $0c

	jr jr_031_764c                                   ; $763e: $18 $0c

	or l                                             ; $7640: $b5
	or c                                             ; $7641: $b1
	nop                                              ; $7642: $00
	rst $38                                          ; $7643: $ff
	ld bc, $0097                                     ; $7644: $01 $97 $00
	ld d, $0c                                        ; $7647: $16 $0c
	inc de                                           ; $7649: $13
	inc c                                            ; $764a: $0c
	or l                                             ; $764b: $b5

jr_031_764c:
	or c                                             ; $764c: $b1
	inc bc                                           ; $764d: $03
	rst $38                                          ; $764e: $ff
	ld [bc], a                                       ; $764f: $02
	ld a, [hl]                                       ; $7650: $7e
	ld bc, $a000                                     ; $7651: $01 $00 $a0
	ld d, $18                                        ; $7654: $16 $18
	sub [hl]                                         ; $7656: $96
	nop                                              ; $7657: $00
	nop                                              ; $7658: $00
	sub a                                            ; $7659: $97
	ld l, $16                                        ; $765a: $2e $16
	ld c, b                                          ; $765c: $48
	sub a                                            ; $765d: $97
	ld e, [hl]                                       ; $765e: $5e
	ld d, $30                                        ; $765f: $16 $30
	sub a                                            ; $7661: $97
	nop                                              ; $7662: $00
	sub [hl]                                         ; $7663: $96
	rst $38                                          ; $7664: $ff
	inc b                                            ; $7665: $04
	inc d                                            ; $7666: $14
	jr jr_031_767c                                   ; $7667: $18 $13

	jr @-$67                                         ; $7669: $18 $97

	nop                                              ; $766b: $00
	sub [hl]                                         ; $766c: $96
	rst $38                                          ; $766d: $ff
	ld [bc], a                                       ; $766e: $02
	jr @+$1a                                         ; $766f: $18 $18

	sub [hl]                                         ; $7671: $96
	nop                                              ; $7672: $00
	nop                                              ; $7673: $00
	sub a                                            ; $7674: $97
	ld l, $18                                        ; $7675: $2e $18
	ld c, b                                          ; $7677: $48
	sub a                                            ; $7678: $97
	ld e, [hl]                                       ; $7679: $5e
	jr jr_031_76c4                                   ; $767a: $18 $48

jr_031_767c:
	sub a                                            ; $767c: $97
	nop                                              ; $767d: $00
	sub [hl]                                         ; $767e: $96
	rst $38                                          ; $767f: $ff
	ld bc, $0c16                                     ; $7680: $01 $16 $0c
	jr jr_031_7691                                   ; $7683: $18 $0c

	or l                                             ; $7685: $b5
	sub c                                            ; $7686: $91
	ld bc, $07ff                                     ; $7687: $01 $ff $07
	sub a                                            ; $768a: $97
	nop                                              ; $768b: $00
	ld a, [hl]                                       ; $768c: $7e
	ld bc, $a918                                     ; $768d: $01 $18 $a9
	cp [hl]                                          ; $7690: $be

jr_031_7691:
	jr nc, @+$22                                     ; $7691: $30 $20

	rra                                              ; $7693: $1f
	jr nz, jr_031_76b1                               ; $7694: $20 $1b

	cp [hl]                                          ; $7696: $be
	or l                                             ; $7697: $b5
	sub c                                            ; $7698: $91
	ld bc, $03ff                                     ; $7699: $01 $ff $03
	ld a, [hl]                                       ; $769c: $7e
	nop                                              ; $769d: $00
	dec e                                            ; $769e: $1d
	inc h                                            ; $769f: $24
	dec e                                            ; $76a0: $1d
	inc h                                            ; $76a1: $24
	or c                                             ; $76a2: $b1
	sub c                                            ; $76a3: $91
	rst $38                                          ; $76a4: $ff
	rlca                                             ; $76a5: $07
	ld [hl+], a                                      ; $76a6: $22
	ld c, b                                          ; $76a7: $48
	sub c                                            ; $76a8: $91
	add $22                                          ; $76a9: $c6 $22
	ld [$24c7], sp                                   ; $76ab: $08 $c7 $24

jr_031_76ae:
	ld [$26c8], sp                                   ; $76ae: $08 $c8 $26

jr_031_76b1:
	ld [$0827], sp                                   ; $76b1: $08 $27 $08
	ret                                              ; $76b4: $c9


	add hl, hl                                       ; $76b5: $29
	ld [$082a], sp                                   ; $76b6: $08 $2a $08
	cp $ff                                           ; $76b9: $fe $ff
	ret nc                                           ; $76bb: $d0

	call c, $b5fe                                    ; $76bc: $dc $fe $b5
	pop af                                           ; $76bf: $f1
	ld bc, $01ff                                     ; $76c0: $01 $ff $01
	ld a, [hl]                                       ; $76c3: $7e

jr_031_76c4:
	ld bc, $a000                                     ; $76c4: $01 $00 $a0
	rra                                              ; $76c7: $1f
	jr @-$68                                         ; $76c8: $18 $96

	nop                                              ; $76ca: $00
	nop                                              ; $76cb: $00
	sub a                                            ; $76cc: $97
	ccf                                              ; $76cd: $3f
	rra                                              ; $76ce: $1f
	ld c, b                                          ; $76cf: $48
	sub a                                            ; $76d0: $97
	ld a, [hl]                                       ; $76d1: $7e
	rra                                              ; $76d2: $1f
	ld h, b                                          ; $76d3: $60
	sub a                                            ; $76d4: $97
	nop                                              ; $76d5: $00
	sub [hl]                                         ; $76d6: $96
	rst $38                                          ; $76d7: $ff
	ld bc, $1820                                     ; $76d8: $01 $20 $18
	sub [hl]                                         ; $76db: $96
	nop                                              ; $76dc: $00
	nop                                              ; $76dd: $00
	sub a                                            ; $76de: $97
	ccf                                              ; $76df: $3f
	jr nz, @+$4a                                     ; $76e0: $20 $48

	sub a                                            ; $76e2: $97
	ld l, a                                          ; $76e3: $6f
	jr nz, jr_031_7746                               ; $76e4: $20 $60

	sub a                                            ; $76e6: $97
	nop                                              ; $76e7: $00
	sub [hl]                                         ; $76e8: $96
	rst $38                                          ; $76e9: $ff
	ld bc, $1821                                     ; $76ea: $01 $21 $18
	sub [hl]                                         ; $76ed: $96
	nop                                              ; $76ee: $00
	nop                                              ; $76ef: $00

jr_031_76f0:
	sub a                                            ; $76f0: $97
	cpl                                              ; $76f1: $2f
	ld hl, $9748                                     ; $76f2: $21 $48 $97
	ld l, a                                          ; $76f5: $6f
	ld hl, $9760                                     ; $76f6: $21 $60 $97
	nop                                              ; $76f9: $00
	sub [hl]                                         ; $76fa: $96
	rst $38                                          ; $76fb: $ff
	ld bc, $1822                                     ; $76fc: $01 $22 $18
	sub [hl]                                         ; $76ff: $96
	nop                                              ; $7700: $00
	nop                                              ; $7701: $00
	sub a                                            ; $7702: $97
	cpl                                              ; $7703: $2f
	ld [hl+], a                                      ; $7704: $22
	ld c, b                                          ; $7705: $48
	sub a                                            ; $7706: $97
	ld l, a                                          ; $7707: $6f
	ld [hl+], a                                      ; $7708: $22
	ld h, b                                          ; $7709: $60
	sub a                                            ; $770a: $97
	nop                                              ; $770b: $00
	or l                                             ; $770c: $b5
	pop af                                           ; $770d: $f1
	inc bc                                           ; $770e: $03
	rst $38                                          ; $770f: $ff
	ld bc, $017e                                     ; $7710: $01 $7e $01
	nop                                              ; $7713: $00
	and b                                            ; $7714: $a0
	rra                                              ; $7715: $1f
	jr jr_031_76ae                                   ; $7716: $18 $96

	nop                                              ; $7718: $00
	nop                                              ; $7719: $00
	sub a                                            ; $771a: $97
	ld l, $1f                                        ; $771b: $2e $1f
	ld c, b                                          ; $771d: $48
	sub a                                            ; $771e: $97
	ld l, [hl]                                       ; $771f: $6e
	rra                                              ; $7720: $1f
	jr nc, jr_031_76f0                               ; $7721: $30 $cd

	sub a                                            ; $7723: $97
	nop                                              ; $7724: $00
	sub [hl]                                         ; $7725: $96
	rst $38                                          ; $7726: $ff
	ld [bc], a                                       ; $7727: $02
	dec e                                            ; $7728: $1d
	jr jr_031_7746                                   ; $7729: $18 $1b

	jr jr_031_76c4                                   ; $772b: $18 $97

	nop                                              ; $772d: $00
	sub [hl]                                         ; $772e: $96
	rst $38                                          ; $772f: $ff
	ld bc, $1820                                     ; $7730: $01 $20 $18
	sub [hl]                                         ; $7733: $96
	nop                                              ; $7734: $00
	nop                                              ; $7735: $00
	sub a                                            ; $7736: $97
	ld l, $20                                        ; $7737: $2e $20
	ld c, b                                          ; $7739: $48
	sub a                                            ; $773a: $97
	ld l, [hl]                                       ; $773b: $6e
	jr nz, jr_031_7786                               ; $773c: $20 $48

	sub a                                            ; $773e: $97
	nop                                              ; $773f: $00
	sub [hl]                                         ; $7740: $96
	rst $38                                          ; $7741: $ff
	ld bc, $0c1f                                     ; $7742: $01 $1f $0c
	dec e                                            ; $7745: $1d

jr_031_7746:
	inc c                                            ; $7746: $0c
	or l                                             ; $7747: $b5
	pop hl                                           ; $7748: $e1
	nop                                              ; $7749: $00
	rst $38                                          ; $774a: $ff
	dec b                                            ; $774b: $05
	sub a                                            ; $774c: $97
	nop                                              ; $774d: $00
	ld a, [hl]                                       ; $774e: $7e

jr_031_774f:
	ld bc, $a918                                     ; $774f: $01 $18 $a9
	cp [hl]                                          ; $7752: $be
	jr nc, @+$2b                                     ; $7753: $30 $29

	daa                                              ; $7755: $27
	add hl, hl                                       ; $7756: $29
	jr nz, @-$40                                     ; $7757: $20 $be

	or l                                             ; $7759: $b5
	pop de                                           ; $775a: $d1
	ld [bc], a                                       ; $775b: $02
	rst $38                                          ; $775c: $ff
	inc b                                            ; $775d: $04
	ld a, [hl]                                       ; $775e: $7e
	nop                                              ; $775f: $00
	daa                                              ; $7760: $27
	inc h                                            ; $7761: $24
	daa                                              ; $7762: $27
	inc h                                            ; $7763: $24
	ld a, [hl]                                       ; $7764: $7e
	ld bc, $a030                                     ; $7765: $01 $30 $a0
	or c                                             ; $7768: $b1
	pop de                                           ; $7769: $d1
	rst $38                                          ; $776a: $ff
	rlca                                             ; $776b: $07
	ld h, $78                                        ; $776c: $26 $78
	ld a, [hl]                                       ; $776e: $7e
	nop                                              ; $776f: $00
	cp $ff                                           ; $7770: $fe $ff
	ret nc                                           ; $7772: $d0

	call c, $fbfe                                    ; $7773: $dc $fe $fb
	add l                                            ; $7776: $85
	jp nz, $0c0f                                     ; $7777: $c2 $0f $0c

	call nz, $180f                                   ; $777a: $c4 $0f $18
	jp nz, $2216                                     ; $777d: $c2 $16 $22

	call nz, $0216                                   ; $7780: $c4 $16 $02
	jp nz, $0c1b                                     ; $7783: $c2 $1b $0c

jr_031_7786:
	call nz, $0c1b                                   ; $7786: $c4 $1b $0c
	add $1b                                          ; $7789: $c6 $1b
	jr jr_031_774f                                   ; $778b: $18 $c2

	ld d, $0c                                        ; $778d: $16 $0c
	call nz, $0c16                                   ; $778f: $c4 $16 $0c
	jp nz, $0c0f                                     ; $7792: $c2 $0f $0c

	call nz, $0c0f                                   ; $7795: $c4 $0f $0c
	jp nz, $1416                                     ; $7798: $c2 $16 $14

	call nz, $0416                                   ; $779b: $c4 $16 $04
	ei                                               ; $779e: $fb
	inc bc                                           ; $779f: $03

jr_031_77a0:
	jp nz, $0c0f                                     ; $77a0: $c2 $0f $0c

	call nz, $180f                                   ; $77a3: $c4 $0f $18
	jp nz, $2216                                     ; $77a6: $c2 $16 $22

	call nz, $0216                                   ; $77a9: $c4 $16 $02
	jp nz, $0c1b                                     ; $77ac: $c2 $1b $0c

	call nz, $0c1b                                   ; $77af: $c4 $1b $0c
	add $1b                                          ; $77b2: $c6 $1b
	jr @-$3c                                         ; $77b4: $18 $c2

	ld a, [de]                                       ; $77b6: $1a
	inc c                                            ; $77b7: $0c
	call nz, $0c1a                                   ; $77b8: $c4 $1a $0c
	jp nz, $0c18                                     ; $77bb: $c2 $18 $0c

	call nz, $0c18                                   ; $77be: $c4 $18 $0c
	jp nz, $1416                                     ; $77c1: $c2 $16 $14

	call nz, $0416                                   ; $77c4: $c4 $16 $04

jr_031_77c7:
	jp nz, $0c85                                     ; $77c7: $c2 $85 $0c

	inc c                                            ; $77ca: $0c
	call nz, $180c                                   ; $77cb: $c4 $0c $18
	jp nz, $2213                                     ; $77ce: $c2 $13 $22

	call nz, $0213                                   ; $77d1: $c4 $13 $02
	jp nz, $0c18                                     ; $77d4: $c2 $18 $0c

	call nz, $0c18                                   ; $77d7: $c4 $18 $0c
	add $18                                          ; $77da: $c6 $18
	jr jr_031_77a0                                   ; $77dc: $18 $c2

	inc de                                           ; $77de: $13
	inc c                                            ; $77df: $0c
	call nz, $0c13                                   ; $77e0: $c4 $13 $0c
	jp nz, $0c0c                                     ; $77e3: $c2 $0c $0c

	call nz, $0c0c                                   ; $77e6: $c4 $0c $0c
	jp nz, $1416                                     ; $77e9: $c2 $16 $14

	call nz, $0416                                   ; $77ec: $c4 $16 $04
	jp nz, $0c08                                     ; $77ef: $c2 $08 $0c

	call nz, $1808                                   ; $77f2: $c4 $08 $18
	jp nz, $220f                                     ; $77f5: $c2 $0f $22

	call nz, $020f                                   ; $77f8: $c4 $0f $02
	jp nz, $0c14                                     ; $77fb: $c2 $14 $0c

	call nz, $0c14                                   ; $77fe: $c4 $14 $0c
	add $14                                          ; $7801: $c6 $14
	jr jr_031_77c7                                   ; $7803: $18 $c2

	rrca                                             ; $7805: $0f
	inc c                                            ; $7806: $0c
	call nz, $0c0f                                   ; $7807: $c4 $0f $0c
	jp nz, $0c08                                     ; $780a: $c2 $08 $0c

	call nz, $0c08                                   ; $780d: $c4 $08 $0c
	jp nz, $140f                                     ; $7810: $c2 $0f $14

	call nz, $040f                                   ; $7813: $c4 $0f $04
	jp nz, $1811                                     ; $7816: $c2 $11 $18

	call nz, $0c11                                   ; $7819: $c4 $11 $0c
	jp nz, $1811                                     ; $781c: $c2 $11 $18

	call nz, $0c11                                   ; $781f: $c4 $11 $0c
	jp nz, $1811                                     ; $7822: $c2 $11 $18

	ld de, $c418                                     ; $7825: $11 $18 $c4
	ld de, $c418                                     ; $7828: $11 $18 $c4
	inc de                                           ; $782b: $13
	jr @-$3c                                         ; $782c: $18 $c2

	inc d                                            ; $782e: $14
	inc c                                            ; $782f: $0c
	call nz, $0c14                                   ; $7830: $c4 $14 $0c
	jp nz, $1814                                     ; $7833: $c2 $14 $18

	call nz, $0c14                                   ; $7836: $c4 $14 $0c
	jp nz, $1814                                     ; $7839: $c2 $14 $18

	call nz, $0c14                                   ; $783c: $c4 $14 $0c
	jp nz, $1816                                     ; $783f: $c2 $16 $18

	ld d, $18                                        ; $7842: $16 $18
	call nz, $1816                                   ; $7844: $c4 $16 $18
	jp nz, $0a16                                     ; $7847: $c2 $16 $0a

	call nz, $0216                                   ; $784a: $c4 $16 $02
	jp nz, $0a18                                     ; $784d: $c2 $18 $0a

	call nz, $0218                                   ; $7850: $c4 $18 $02
	jp nz, $0a1a                                     ; $7853: $c2 $1a $0a

	call nz, $021a                                   ; $7856: $c4 $1a $02
	jp nz, $0a16                                     ; $7859: $c2 $16 $0a

	call nz, $0216                                   ; $785c: $c4 $16 $02
	cp $ff                                           ; $785f: $fe $ff
	ret nc                                           ; $7861: $d0

	call c, $fbfe                                    ; $7862: $dc $fe $fb
	cp [hl]                                          ; $7865: $be
	inc c                                            ; $7866: $0c
	dec bc                                           ; $7867: $0b
	add hl, bc                                       ; $7868: $09
	ld [de], a                                       ; $7869: $12
	dec bc                                           ; $786a: $0b
	ld [de], a                                       ; $786b: $12
	add hl, bc                                       ; $786c: $09
	dec bc                                           ; $786d: $0b
	add hl, bc                                       ; $786e: $09
	cp [hl]                                          ; $786f: $be
	cp [hl]                                          ; $7870: $be
	inc c                                            ; $7871: $0c
	ld [de], a                                       ; $7872: $12
	ld c, a                                          ; $7873: $4f
	dec bc                                           ; $7874: $0b
	add hl, bc                                       ; $7875: $09
	ld d, b                                          ; $7876: $50
	add hl, bc                                       ; $7877: $09
	cp [hl]                                          ; $7878: $be
	ld e, $18                                        ; $7879: $1e $18
	ei                                               ; $787b: $fb
	inc bc                                           ; $787c: $03
	cp [hl]                                          ; $787d: $be
	inc c                                            ; $787e: $0c
	dec bc                                           ; $787f: $0b
	add hl, bc                                       ; $7880: $09

jr_031_7881:
	ld [de], a                                       ; $7881: $12
	dec bc                                           ; $7882: $0b
	ld [de], a                                       ; $7883: $12
	add hl, bc                                       ; $7884: $09
	dec bc                                           ; $7885: $0b
	add hl, bc                                       ; $7886: $09
	cp [hl]                                          ; $7887: $be
	cp [hl]                                          ; $7888: $be
	inc c                                            ; $7889: $0c
	ld [de], a                                       ; $788a: $12
	ld c, a                                          ; $788b: $4f
	dec bc                                           ; $788c: $0b
	add hl, bc                                       ; $788d: $09
	ld c, a                                          ; $788e: $4f
	add hl, bc                                       ; $788f: $09
	ld c, a                                          ; $7890: $4f
	ld c, a                                          ; $7891: $4f
	cp [hl]                                          ; $7892: $be
	ei                                               ; $7893: $fb
	cp [hl]                                          ; $7894: $be
	inc c                                            ; $7895: $0c
	dec bc                                           ; $7896: $0b
	add hl, bc                                       ; $7897: $09
	ld [de], a                                       ; $7898: $12
	dec bc                                           ; $7899: $0b
	ld [de], a                                       ; $789a: $12
	add hl, bc                                       ; $789b: $09
	dec bc                                           ; $789c: $0b
	add hl, bc                                       ; $789d: $09
	cp [hl]                                          ; $789e: $be
	cp [hl]                                          ; $789f: $be
	inc c                                            ; $78a0: $0c
	ld [de], a                                       ; $78a1: $12
	ld c, a                                          ; $78a2: $4f
	dec bc                                           ; $78a3: $0b
	add hl, bc                                       ; $78a4: $09
	ld d, b                                          ; $78a5: $50

jr_031_78a6:
	add hl, bc                                       ; $78a6: $09
	cp [hl]                                          ; $78a7: $be
	dec bc                                           ; $78a8: $0b
	jr jr_031_78a6                                   ; $78a9: $18 $fb

	ld [bc], a                                       ; $78ab: $02
	cp [hl]                                          ; $78ac: $be
	inc c                                            ; $78ad: $0c
	dec bc                                           ; $78ae: $0b
	ld [de], a                                       ; $78af: $12
	add hl, bc                                       ; $78b0: $09
	dec bc                                           ; $78b1: $0b
	ld d, b                                          ; $78b2: $50
	add hl, bc                                       ; $78b3: $09
	dec bc                                           ; $78b4: $0b
	add hl, bc                                       ; $78b5: $09
	cp [hl]                                          ; $78b6: $be
	cp [hl]                                          ; $78b7: $be
	inc c                                            ; $78b8: $0c
	ld [de], a                                       ; $78b9: $12
	ld c, a                                          ; $78ba: $4f
	dec bc                                           ; $78bb: $0b
	add hl, bc                                       ; $78bc: $09
	ld d, b                                          ; $78bd: $50
	add hl, bc                                       ; $78be: $09
	cp [hl]                                          ; $78bf: $be
	dec bc                                           ; $78c0: $0b
	jr jr_031_7881                                   ; $78c1: $18 $be

	inc c                                            ; $78c3: $0c
	dec bc                                           ; $78c4: $0b
	add hl, bc                                       ; $78c5: $09
	ld [de], a                                       ; $78c6: $12
	dec bc                                           ; $78c7: $0b
	ld d, b                                          ; $78c8: $50
	dec c                                            ; $78c9: $0d
	dec bc                                           ; $78ca: $0b
	ld e, $be                                        ; $78cb: $1e $be
	cp [hl]                                          ; $78cd: $be
	inc c                                            ; $78ce: $0c
	ld [de], a                                       ; $78cf: $12
	ld c, a                                          ; $78d0: $4f
	dec bc                                           ; $78d1: $0b
	add hl, bc                                       ; $78d2: $09
	ld d, b                                          ; $78d3: $50
	add hl, bc                                       ; $78d4: $09
	ld c, a                                          ; $78d5: $4f
	ld c, a                                          ; $78d6: $4f
	cp [hl]                                          ; $78d7: $be
	cp $ff                                           ; $78d8: $fe $ff
	or h                                             ; $78da: $b4
	ld e, d                                          ; $78db: $5a

jr_031_78dc:
	pop af                                           ; $78dc: $f1
	ld [bc], a                                       ; $78dd: $02
	sub a                                            ; $78de: $97
	sbc d                                            ; $78df: $9a
	ld h, c                                          ; $78e0: $61
	rrca                                             ; $78e1: $0f
	ld b, $15                                        ; $78e2: $06 $15
	ld b, $96                                        ; $78e4: $06 $96
	ld [bc], a                                       ; $78e6: $02
	ld bc, $047d                                     ; $78e7: $01 $7d $04
	ld d, $0c                                        ; $78ea: $16 $0c
	ld a, [hl]                                       ; $78ec: $7e
	dec e                                            ; $78ed: $1d
	inc d                                            ; $78ee: $14
	and e                                            ; $78ef: $a3
	sub [hl]                                         ; $78f0: $96
	nop                                              ; $78f1: $00
	nop                                              ; $78f2: $00
	sub a                                            ; $78f3: $97
	ld l, e                                          ; $78f4: $6b
	ld e, $60                                        ; $78f5: $1e $60
	sub a                                            ; $78f7: $97
	nop                                              ; $78f8: $00
	call nz, $301e                                   ; $78f9: $c4 $1e $30
	pop bc                                           ; $78fc: $c1

jr_031_78fd:
	ld e, $24                                        ; $78fd: $1e $24
	rst $38                                          ; $78ff: $ff
	or h                                             ; $7900: $b4
	ld e, d                                          ; $7901: $5a
	pop af                                           ; $7902: $f1
	ld bc, $9a97                                     ; $7903: $01 $97 $9a
	ld h, c                                          ; $7906: $61
	ld d, $06                                        ; $7907: $16 $06
	jr jr_031_7911                                   ; $7909: $18 $06

	sub a                                            ; $790b: $97
	sbc d                                            ; $790c: $9a
	ld a, [hl]                                       ; $790d: $7e
	dec e                                            ; $790e: $1d
	nop                                              ; $790f: $00
	and a                                            ; $7910: $a7

jr_031_7911:
	dec d                                            ; $7911: $15
	ld h, b                                          ; $7912: $60
	sub a                                            ; $7913: $97
	nop                                              ; $7914: $00
	add $15                                          ; $7915: $c6 $15
	jr nc, jr_031_78dc                               ; $7917: $30 $c3

	dec d                                            ; $7919: $15
	jr nc, @+$01                                     ; $791a: $30 $ff

	or h                                             ; $791c: $b4
	ld e, d                                          ; $791d: $5a
	pop af                                           ; $791e: $f1
	add hl, de                                       ; $791f: $19
	ld h, c                                          ; $7920: $61
	nop                                              ; $7921: $00
	inc c                                            ; $7922: $0c

jr_031_7923:
	add $fb                                          ; $7923: $c6 $fb
	jr nc, jr_031_792a                               ; $7925: $30 $03

	ld sp, $fb03                                     ; $7927: $31 $03 $fb

jr_031_792a:
	rlca                                             ; $792a: $07
	jr nc, jr_031_7930                               ; $792b: $30 $03

	call nz, $0331                                   ; $792d: $c4 $31 $03

jr_031_7930:
	ei                                               ; $7930: $fb
	jr nc, jr_031_7936                               ; $7931: $30 $03

	ld sp, $fb03                                     ; $7933: $31 $03 $fb

jr_031_7936:
	rlca                                             ; $7936: $07
	jp nz, $30fb                                     ; $7937: $c2 $fb $30

	inc bc                                           ; $793a: $03
	ld sp, $fb03                                     ; $793b: $31 $03 $fb
	rlca                                             ; $793e: $07
	jr nc, jr_031_7944                               ; $793f: $30 $03

	call nz, $31fb                                   ; $7941: $c4 $fb $31

jr_031_7944:
	inc bc                                           ; $7944: $03
	jr nc, jr_031_794a                               ; $7945: $30 $03

	ei                                               ; $7947: $fb
	dec b                                            ; $7948: $05
	ei                                               ; $7949: $fb

jr_031_794a:
	add $31                                          ; $794a: $c6 $31
	inc bc                                           ; $794c: $03
	jr nc, @+$05                                     ; $794d: $30 $03

	ei                                               ; $794f: $fb
	inc b                                            ; $7950: $04
	ld sp, $ff03                                     ; $7951: $31 $03 $ff
	or h                                             ; $7954: $b4
	sub [hl]                                         ; $7955: $96
	pop bc                                           ; $7956: $c1
	nop                                              ; $7957: $00

jr_031_7958:
	nop                                              ; $7958: $00

jr_031_7959:
	jr jr_031_7959                                   ; $7959: $18 $fe

	sub [hl]                                         ; $795b: $96
	rst $38                                          ; $795c: $ff
	inc bc                                           ; $795d: $03
	dec h                                            ; $795e: $25
	ld c, b                                          ; $795f: $48
	or c                                             ; $7960: $b1
	or c                                             ; $7961: $b1
	rst $38                                          ; $7962: $ff
	inc b                                            ; $7963: $04
	daa                                              ; $7964: $27
	jr jr_031_78fd                                   ; $7965: $18 $96

	rst $38                                          ; $7967: $ff
	ld b, $25                                        ; $7968: $06 $25
	jr nc, jr_031_7990                               ; $796a: $30 $24

	jr nc, jr_031_7923                               ; $796c: $30 $b5

	or c                                             ; $796e: $b1
	nop                                              ; $796f: $00
	rst $38                                          ; $7970: $ff
	inc b                                            ; $7971: $04

jr_031_7972:
	inc h                                            ; $7972: $24
	ld [hl-], a                                      ; $7973: $32
	or c                                             ; $7974: $b1
	ld d, c                                          ; $7975: $51
	rst $38                                          ; $7976: $ff
	inc bc                                           ; $7977: $03
	ld a, l                                          ; $7978: $7d
	ld bc, $0cbe                                     ; $7979: $01 $be $0c
	ld a, [hl+]                                      ; $797c: $2a
	ld l, $2c                                        ; $797d: $2e $2c
	ld a, [hl+]                                      ; $797f: $2a
	cp [hl]                                          ; $7980: $be
	add hl, hl                                       ; $7981: $29
	inc c                                            ; $7982: $0c
	inc l                                            ; $7983: $2c
	ld a, [bc]                                       ; $7984: $0a
	or c                                             ; $7985: $b1
	or c                                             ; $7986: $b1
	rst $38                                          ; $7987: $ff
	ld [bc], a                                       ; $7988: $02
	ld a, l                                          ; $7989: $7d

jr_031_798a:
	nop                                              ; $798a: $00
	cp [hl]                                          ; $798b: $be
	inc c                                            ; $798c: $0c
	dec e                                            ; $798d: $1d
	jr nz, jr_031_79ae                               ; $798e: $20 $1e

jr_031_7990:
	ld [hl+], a                                      ; $7990: $22
	daa                                              ; $7991: $27
	dec h                                            ; $7992: $25
	cp [hl]                                          ; $7993: $be
	sub [hl]                                         ; $7994: $96
	rst $38                                          ; $7995: $ff
	ld [bc], a                                       ; $7996: $02
	inc h                                            ; $7997: $24
	jr jr_031_7958                                   ; $7998: $18 $be

jr_031_799a:
	inc c                                            ; $799a: $0c
	dec de                                           ; $799b: $1b
	ld e, $1b                                        ; $799c: $1e $1b
	ld e, $25                                        ; $799e: $1e $25
	cp [hl]                                          ; $79a0: $be
	sub [hl]                                         ; $79a1: $96
	rst $38                                          ; $79a2: $ff
	ld bc, $061d                                     ; $79a3: $01 $1d $06
	inc e                                            ; $79a6: $1c
	ld b, $96                                        ; $79a7: $06 $96
	rst $38                                          ; $79a9: $ff
	inc b                                            ; $79aa: $04
	dec e                                            ; $79ab: $1d
	jr nc, jr_031_79ae                               ; $79ac: $30 $00

jr_031_79ae:
	inc c                                            ; $79ae: $0c
	or l                                             ; $79af: $b5
	sub c                                            ; $79b0: $91
	ld bc, $02ff                                     ; $79b1: $01 $ff $02
	ld a, h                                          ; $79b4: $7c
	dec e                                            ; $79b5: $1d
	inc c                                            ; $79b6: $0c
	dec de                                           ; $79b7: $1b
	inc c                                            ; $79b8: $0c
	jr jr_031_79c7                                   ; $79b9: $18 $0c

	sub [hl]                                         ; $79bb: $96
	rst $38                                          ; $79bc: $ff
	rlca                                             ; $79bd: $07
	add hl, de                                       ; $79be: $19
	jr nc, jr_031_7972                               ; $79bf: $30 $b1

	ld b, c                                          ; $79c1: $41
	nop                                              ; $79c2: $00
	nop                                              ; $79c3: $00
	add hl, de                                       ; $79c4: $19
	jr jr_031_798a                                   ; $79c5: $18 $c3

jr_031_79c7:
	add hl, de                                       ; $79c7: $19
	inc c                                            ; $79c8: $0c
	or l                                             ; $79c9: $b5
	or c                                             ; $79ca: $b1
	nop                                              ; $79cb: $00
	rst $38                                          ; $79cc: $ff
	ld bc, $2070                                     ; $79cd: $01 $70 $20

jr_031_79d0:
	ld b, $1f                                        ; $79d0: $06 $1f
	ld b, $96                                        ; $79d2: $06 $96
	rst $38                                          ; $79d4: $ff
	inc b                                            ; $79d5: $04
	jr nz, jr_031_7a08                               ; $79d6: $20 $30

	nop                                              ; $79d8: $00
	inc c                                            ; $79d9: $0c
	sub [hl]                                         ; $79da: $96
	rst $38                                          ; $79db: $ff
	ld [bc], a                                       ; $79dc: $02

jr_031_79dd:
	jr nz, @+$0e                                     ; $79dd: $20 $0c

	ld e, $0c                                        ; $79df: $1e $0c
	dec de                                           ; $79e1: $1b

jr_031_79e2:
	inc c                                            ; $79e2: $0c
	sub [hl]                                         ; $79e3: $96

jr_031_79e4:
	rst $38                                          ; $79e4: $ff
	rlca                                             ; $79e5: $07
	add hl, de                                       ; $79e6: $19
	ld [hl-], a                                      ; $79e7: $32
	or l                                             ; $79e8: $b5

jr_031_79e9:
	ld h, c                                          ; $79e9: $61
	ld bc, $02ff                                     ; $79ea: $01 $ff $02
	ld a, l                                          ; $79ed: $7d
	ld bc, $0c25                                     ; $79ee: $01 $25 $0c
	daa                                              ; $79f1: $27
	inc c                                            ; $79f2: $0c
	add hl, hl                                       ; $79f3: $29
	inc c                                            ; $79f4: $0c
	ld a, [hl+]                                      ; $79f5: $2a
	ld a, [bc]                                       ; $79f6: $0a
	ld a, l                                          ; $79f7: $7d

jr_031_79f8:
	nop                                              ; $79f8: $00
	or [hl]                                          ; $79f9: $b6
	adc a                                            ; $79fa: $8f
	and c                                            ; $79fb: $a1
	nop                                              ; $79fc: $00
	rst $38                                          ; $79fd: $ff
	dec b                                            ; $79fe: $05
	add hl, de                                       ; $79ff: $19
	jr jr_031_7a1d                                   ; $7a00: $18 $1b

	jr jr_031_799a                                   ; $7a02: $18 $96

	rst $38                                          ; $7a04: $ff
	rlca                                             ; $7a05: $07
	ld e, $18                                        ; $7a06: $1e $18

jr_031_7a08:
	or e                                             ; $7a08: $b3
	add e                                            ; $7a09: $83
	ld sp, $0000                                     ; $7a0a: $31 $00 $00
	ld e, $0c                                        ; $7a0d: $1e $0c
	jp nz, $0c1e                                     ; $7a0f: $c2 $1e $0c

	or e                                             ; $7a12: $b3
	ld a, h                                          ; $7a13: $7c
	or c                                             ; $7a14: $b1
	jr nc, @+$09                                     ; $7a15: $30 $07

	jr nz, jr_031_7a31                               ; $7a17: $20 $18

	or c                                             ; $7a19: $b1
	ld b, c                                          ; $7a1a: $41
	nop                                              ; $7a1b: $00
	nop                                              ; $7a1c: $00

jr_031_7a1d:
	jr nz, jr_031_7a37                               ; $7a1d: $20 $18

	jp $0c20                                         ; $7a1f: $c3 $20 $0c


	jp nz, $0c20                                     ; $7a22: $c2 $20 $0c

	nop                                              ; $7a25: $00
	jr jr_031_79f8                                   ; $7a26: $18 $d0

	sub c                                            ; $7a28: $91
	nop                                              ; $7a29: $00
	jr jr_031_79e2                                   ; $7a2a: $18 $b6

	sub [hl]                                         ; $7a2c: $96
	pop bc                                           ; $7a2d: $c1
	nop                                              ; $7a2e: $00
	rst $38                                          ; $7a2f: $ff
	inc bc                                           ; $7a30: $03

jr_031_7a31:
	dec h                                            ; $7a31: $25
	ld c, b                                          ; $7a32: $48
	or c                                             ; $7a33: $b1
	or c                                             ; $7a34: $b1
	rst $38                                          ; $7a35: $ff
	inc b                                            ; $7a36: $04

jr_031_7a37:
	daa                                              ; $7a37: $27
	jr jr_031_79d0                                   ; $7a38: $18 $96

	rst $38                                          ; $7a3a: $ff
	ld b, $25                                        ; $7a3b: $06 $25
	jr nc, @+$26                                     ; $7a3d: $30 $24

	jr nc, jr_031_7a62                               ; $7a3f: $30 $21

	jr nc, jr_031_7a60                               ; $7a41: $30 $1d

	jr nc, jr_031_7a62                               ; $7a43: $30 $1d

	jr nc, jr_031_79dd                               ; $7a45: $30 $96

	rst $38                                          ; $7a47: $ff
	dec b                                            ; $7a48: $05
	dec de                                           ; $7a49: $1b
	jr jr_031_7a66                                   ; $7a4a: $18 $1a

	jr jr_031_79e4                                   ; $7a4c: $18 $96

	rst $38                                          ; $7a4e: $ff
	ld b, $19                                        ; $7a4f: $06 $19
	jr nc, jr_031_79e9                               ; $7a51: $30 $96

	rst $38                                          ; $7a53: $ff
	dec b                                            ; $7a54: $05
	rla                                              ; $7a55: $17
	jr @+$18                                         ; $7a56: $18 $16

	jr @-$40                                         ; $7a58: $18 $be

	jr jr_031_7a72                                   ; $7a5a: $18 $16

	inc d                                            ; $7a5c: $14
	inc de                                           ; $7a5d: $13
	ld [de], a                                       ; $7a5e: $12
	cp [hl]                                          ; $7a5f: $be

jr_031_7a60:
	sub [hl]                                         ; $7a60: $96
	rst $38                                          ; $7a61: $ff

jr_031_7a62:
	ld b, $12                                        ; $7a62: $06 $12
	jr nc, jr_031_7a76                               ; $7a64: $30 $10

jr_031_7a66:
	jr nc, jr_031_7a1d                               ; $7a66: $30 $b5

	pop de                                           ; $7a68: $d1
	nop                                              ; $7a69: $00
	rst $38                                          ; $7a6a: $ff
	ld [bc], a                                       ; $7a6b: $02
	rrca                                             ; $7a6c: $0f
	jr @-$4d                                         ; $7a6d: $18 $b1

	ld d, c                                          ; $7a6f: $51
	nop                                              ; $7a70: $00
	nop                                              ; $7a71: $00

jr_031_7a72:
	rrca                                             ; $7a72: $0f
	ld c, b                                          ; $7a73: $48
	or c                                             ; $7a74: $b1
	pop de                                           ; $7a75: $d1

jr_031_7a76:
	rst $38                                          ; $7a76: $ff
	ld [bc], a                                       ; $7a77: $02
	ld de, $b118                                     ; $7a78: $11 $18 $b1
	ld d, c                                          ; $7a7b: $51
	nop                                              ; $7a7c: $00
	nop                                              ; $7a7d: $00
	ld de, $b148                                     ; $7a7e: $11 $48 $b1
	pop af                                           ; $7a81: $f1
	rst $38                                          ; $7a82: $ff
	ld bc, $0c16                                     ; $7a83: $01 $16 $0c
	or c                                             ; $7a86: $b1
	ld hl, $0000                                     ; $7a87: $21 $00 $00
	ld d, $0c                                        ; $7a8a: $16 $0c
	sub [hl]                                         ; $7a8c: $96
	rst $38                                          ; $7a8d: $ff
	ld bc, $c8fb                                     ; $7a8e: $01 $fb $c8
	ld l, $04                                        ; $7a91: $2e $04
	jp z, $042f                                      ; $7a93: $ca $2f $04

	ei                                               ; $7a96: $fb
	add hl, bc                                       ; $7a97: $09
	or e                                             ; $7a98: $b3
	sub c                                            ; $7a99: $91
	or c                                             ; $7a9a: $b1
	rst $38                                          ; $7a9b: $ff
	dec b                                            ; $7a9c: $05
	ld l, $18                                        ; $7a9d: $2e $18
	or c                                             ; $7a9f: $b1
	or c                                             ; $7aa0: $b1
	rst $38                                          ; $7aa1: $ff
	dec b                                            ; $7aa2: $05
	dec de                                           ; $7aa3: $1b
	jr jr_031_7ac6                                   ; $7aa4: $18 $20

	jr @+$1b                                         ; $7aa6: $18 $19

	jr @-$2e                                         ; $7aa8: $18 $d0

	add d                                            ; $7aaa: $82
	add hl, de                                       ; $7aab: $19
	jr jr_031_7ac6                                   ; $7aac: $18 $18

	jr @-$4b                                         ; $7aae: $18 $b3

	ld a, b                                          ; $7ab0: $78
	ld [hl], c                                       ; $7ab1: $71
	rst $38                                          ; $7ab2: $ff
	inc bc                                           ; $7ab3: $03
	ld e, $0c                                        ; $7ab4: $1e $0c
	or c                                             ; $7ab6: $b1
	ld b, c                                          ; $7ab7: $41
	nop                                              ; $7ab8: $00
	nop                                              ; $7ab9: $00
	ld e, $24                                        ; $7aba: $1e $24
	jp $181d                                         ; $7abc: $c3 $1d $18


	jp nz, $181d                                     ; $7abf: $c2 $1d $18

	dec e                                            ; $7ac2: $1d
	dec e                                            ; $7ac3: $1d
	or h                                             ; $7ac4: $b4
	sub [hl]                                         ; $7ac5: $96

jr_031_7ac6:
	pop bc                                           ; $7ac6: $c1
	nop                                              ; $7ac7: $00
	nop                                              ; $7ac8: $00

jr_031_7ac9:
	jr jr_031_7ac9                                   ; $7ac9: $18 $fe

	rst $38                                          ; $7acb: $ff
	or [hl]                                          ; $7acc: $b6
	sub [hl]                                         ; $7acd: $96
	pop hl                                           ; $7ace: $e1
	ld bc, $01ff                                     ; $7acf: $01 $ff $01
	add hl, hl                                       ; $7ad2: $29
	inc c                                            ; $7ad3: $0c
	ld a, [hl+]                                      ; $7ad4: $2a
	inc c                                            ; $7ad5: $0c
	cp $96                                           ; $7ad6: $fe $96
	rst $38                                          ; $7ad8: $ff
	ld bc, $0c2c                                     ; $7ad9: $01 $2c $0c
	or c                                             ; $7adc: $b1
	ld sp, $0000                                     ; $7add: $31 $00 $00
	inc l                                            ; $7ae0: $2c
	inc c                                            ; $7ae1: $0c
	or c                                             ; $7ae2: $b1
	pop hl                                           ; $7ae3: $e1
	rst $38                                          ; $7ae4: $ff
	ld bc, $0cbe                                     ; $7ae5: $01 $be $0c
	inc l                                            ; $7ae8: $2c
	dec hl                                           ; $7ae9: $2b
	inc l                                            ; $7aea: $2c
	ld l, $2c                                        ; $7aeb: $2e $2c
	ld a, [hl+]                                      ; $7aed: $2a
	cp [hl]                                          ; $7aee: $be
	add hl, hl                                       ; $7aef: $29
	inc c                                            ; $7af0: $0c
	or c                                             ; $7af1: $b1
	ld b, c                                          ; $7af2: $41
	nop                                              ; $7af3: $00
	nop                                              ; $7af4: $00
	add hl, hl                                       ; $7af5: $29
	inc h                                            ; $7af6: $24
	or c                                             ; $7af7: $b1
	pop hl                                           ; $7af8: $e1
	rst $38                                          ; $7af9: $ff
	ld bc, $0c27                                     ; $7afa: $01 $27 $0c
	or c                                             ; $7afd: $b1
	ld b, c                                          ; $7afe: $41
	nop                                              ; $7aff: $00
	nop                                              ; $7b00: $00
	daa                                              ; $7b01: $27
	inc c                                            ; $7b02: $0c
	or c                                             ; $7b03: $b1
	pop hl                                           ; $7b04: $e1
	rst $38                                          ; $7b05: $ff
	ld bc, $0c27                                     ; $7b06: $01 $27 $0c
	add hl, hl                                       ; $7b09: $29
	inc c                                            ; $7b0a: $0c
	or l                                             ; $7b0b: $b5
	pop hl                                           ; $7b0c: $e1
	ld bc, $01ff                                     ; $7b0d: $01 $ff $01
	ld a, [hl+]                                      ; $7b10: $2a
	inc c                                            ; $7b11: $0c
	or c                                             ; $7b12: $b1

jr_031_7b13:
	ld b, c                                          ; $7b13: $41
	nop                                              ; $7b14: $00
	nop                                              ; $7b15: $00
	ld a, [hl+]                                      ; $7b16: $2a
	inc c                                            ; $7b17: $0c
	or c                                             ; $7b18: $b1
	pop hl                                           ; $7b19: $e1
	rst $38                                          ; $7b1a: $ff
	ld bc, $0cbe                                     ; $7b1b: $01 $be $0c
	ld a, [hl+]                                      ; $7b1e: $2a
	add hl, hl                                       ; $7b1f: $29
	ld a, [hl+]                                      ; $7b20: $2a
	ld l, $2c                                        ; $7b21: $2e $2c
	ld a, [hl+]                                      ; $7b23: $2a
	cp [hl]                                          ; $7b24: $be
	cp [hl]                                          ; $7b25: $be
	inc c                                            ; $7b26: $0c
	add hl, hl                                       ; $7b27: $29
	inc l                                            ; $7b28: $2c
	ld sp, $2e30                                     ; $7b29: $31 $30 $2e
	inc l                                            ; $7b2c: $2c
	ld a, [hl+]                                      ; $7b2d: $2a
	add hl, hl                                       ; $7b2e: $29
	cp [hl]                                          ; $7b2f: $be
	cp [hl]                                          ; $7b30: $be
	inc c                                            ; $7b31: $0c
	daa                                              ; $7b32: $27
	ld a, [hl+]                                      ; $7b33: $2a
	jr nc, jr_031_7b64                               ; $7b34: $30 $2e

	dec l                                            ; $7b36: $2d
	ld a, [hl+]                                      ; $7b37: $2a
	add hl, hl                                       ; $7b38: $29
	daa                                              ; $7b39: $27
	cp [hl]                                          ; $7b3a: $be
	dec h                                            ; $7b3b: $25
	inc c                                            ; $7b3c: $0c
	or c                                             ; $7b3d: $b1
	ld b, c                                          ; $7b3e: $41
	nop                                              ; $7b3f: $00
	nop                                              ; $7b40: $00
	dec h                                            ; $7b41: $25
	inc h                                            ; $7b42: $24
	or c                                             ; $7b43: $b1
	pop af                                           ; $7b44: $f1
	rst $38                                          ; $7b45: $ff
	ld bc, $0cbe                                     ; $7b46: $01 $be $0c
	ld [hl+], a                                      ; $7b49: $22
	dec e                                            ; $7b4a: $1d
	rra                                              ; $7b4b: $1f
	ld hl, $bebe                                     ; $7b4c: $21 $be $be
	inc c                                            ; $7b4f: $0c
	ld [hl+], a                                      ; $7b50: $22
	dec e                                            ; $7b51: $1d
	rra                                              ; $7b52: $1f
	ld hl, $2422                                     ; $7b53: $21 $22 $24
	dec h                                            ; $7b56: $25
	daa                                              ; $7b57: $27
	cp [hl]                                          ; $7b58: $be
	add hl, hl                                       ; $7b59: $29
	inc c                                            ; $7b5a: $0c
	or c                                             ; $7b5b: $b1
	ld b, c                                          ; $7b5c: $41
	nop                                              ; $7b5d: $00
	nop                                              ; $7b5e: $00
	add hl, hl                                       ; $7b5f: $29
	jr jr_031_7b13                                   ; $7b60: $18 $b1

	pop af                                           ; $7b62: $f1
	rst $38                                          ; $7b63: $ff

jr_031_7b64:
	ld bc, $0625                                     ; $7b64: $01 $25 $06
	inc h                                            ; $7b67: $24
	ld b, $be                                        ; $7b68: $06 $be
	inc c                                            ; $7b6a: $0c
	dec h                                            ; $7b6b: $25
	jr nz, jr_031_7b90                               ; $7b6c: $20 $22

	inc h                                            ; $7b6e: $24
	cp [hl]                                          ; $7b6f: $be
	cp [hl]                                          ; $7b70: $be
	inc c                                            ; $7b71: $0c
	dec h                                            ; $7b72: $25
	jr nz, jr_031_7b97                               ; $7b73: $20 $22

	inc h                                            ; $7b75: $24

jr_031_7b76:
	dec h                                            ; $7b76: $25
	daa                                              ; $7b77: $27
	add hl, hl                                       ; $7b78: $29
	ld a, [hl+]                                      ; $7b79: $2a
	cp [hl]                                          ; $7b7a: $be
	ret nc                                           ; $7b7b: $d0

	adc a                                            ; $7b7c: $8f
	inc l                                            ; $7b7d: $2c
	inc c                                            ; $7b7e: $0c

jr_031_7b7f:
	or c                                             ; $7b7f: $b1
	ld b, c                                          ; $7b80: $41
	nop                                              ; $7b81: $00
	nop                                              ; $7b82: $00
	inc l                                            ; $7b83: $2c
	inc c                                            ; $7b84: $0c
	or c                                             ; $7b85: $b1
	pop hl                                           ; $7b86: $e1
	rst $38                                          ; $7b87: $ff
	ld bc, $0c2a                                     ; $7b88: $01 $2a $0c
	add hl, hl                                       ; $7b8b: $29
	inc c                                            ; $7b8c: $0c
	sub [hl]                                         ; $7b8d: $96
	rst $38                                          ; $7b8e: $ff
	ld [bc], a                                       ; $7b8f: $02

jr_031_7b90:
	daa                                              ; $7b90: $27
	inc b                                            ; $7b91: $04
	add hl, hl                                       ; $7b92: $29
	inc b                                            ; $7b93: $04
	daa                                              ; $7b94: $27
	inc b                                            ; $7b95: $04
	or c                                             ; $7b96: $b1

jr_031_7b97:
	add c                                            ; $7b97: $81
	nop                                              ; $7b98: $00
	nop                                              ; $7b99: $00
	daa                                              ; $7b9a: $27
	inc c                                            ; $7b9b: $0c
	or e                                             ; $7b9c: $b3
	add e                                            ; $7b9d: $83
	pop bc                                           ; $7b9e: $c1
	rst $38                                          ; $7b9f: $ff
	ld [bc], a                                       ; $7ba0: $02
	daa                                              ; $7ba1: $27
	inc c                                            ; $7ba2: $0c
	or c                                             ; $7ba3: $b1
	pop de                                           ; $7ba4: $d1
	rst $38                                          ; $7ba5: $ff
	ld bc, $0c25                                     ; $7ba6: $01 $25 $0c
	pop hl                                           ; $7ba9: $e1
	ld a, h                                          ; $7baa: $7c
	pop hl                                           ; $7bab: $e1
	dec h                                            ; $7bac: $25
	ld [$71b1], sp                                   ; $7bad: $08 $b1 $71
	nop                                              ; $7bb0: $00
	nop                                              ; $7bb1: $00
	dec h                                            ; $7bb2: $25
	inc b                                            ; $7bb3: $04
	add $25                                          ; $7bb4: $c6 $25
	inc c                                            ; $7bb6: $0c
	push bc                                          ; $7bb7: $c5
	dec h                                            ; $7bb8: $25
	jr jr_031_7b7f                                   ; $7bb9: $18 $c4

	dec h                                            ; $7bbb: $25
	inc c                                            ; $7bbc: $0c
	jp $0c25                                         ; $7bbd: $c3 $25 $0c


	nop                                              ; $7bc0: $00
	jr jr_031_7b76                                   ; $7bc1: $18 $b3

	sub c                                            ; $7bc3: $91
	pop hl                                           ; $7bc4: $e1
	rst $38                                          ; $7bc5: $ff
	ld bc, $0c29                                     ; $7bc6: $01 $29 $0c
	ld a, [hl+]                                      ; $7bc9: $2a
	inc c                                            ; $7bca: $0c
	or [hl]                                          ; $7bcb: $b6
	sub [hl]                                         ; $7bcc: $96
	pop hl                                           ; $7bcd: $e1
	ld bc, $01ff                                     ; $7bce: $01 $ff $01
	inc l                                            ; $7bd1: $2c
	inc c                                            ; $7bd2: $0c
	or c                                             ; $7bd3: $b1
	ld b, c                                          ; $7bd4: $41
	nop                                              ; $7bd5: $00
	nop                                              ; $7bd6: $00
	inc l                                            ; $7bd7: $2c
	inc c                                            ; $7bd8: $0c
	or c                                             ; $7bd9: $b1
	pop hl                                           ; $7bda: $e1
	rst $38                                          ; $7bdb: $ff
	ld bc, $0cbe                                     ; $7bdc: $01 $be $0c
	inc l                                            ; $7bdf: $2c
	dec hl                                           ; $7be0: $2b
	inc l                                            ; $7be1: $2c
	ld l, $2c                                        ; $7be2: $2e $2c
	ld a, [hl+]                                      ; $7be4: $2a
	cp [hl]                                          ; $7be5: $be
	add hl, hl                                       ; $7be6: $29
	inc c                                            ; $7be7: $0c
	or c                                             ; $7be8: $b1
	ld b, c                                          ; $7be9: $41
	nop                                              ; $7bea: $00
	nop                                              ; $7beb: $00
	add hl, hl                                       ; $7bec: $29
	inc h                                            ; $7bed: $24
	or c                                             ; $7bee: $b1
	pop hl                                           ; $7bef: $e1
	rst $38                                          ; $7bf0: $ff
	ld bc, $0c27                                     ; $7bf1: $01 $27 $0c
	or c                                             ; $7bf4: $b1
	ld b, c                                          ; $7bf5: $41
	nop                                              ; $7bf6: $00
	nop                                              ; $7bf7: $00
	daa                                              ; $7bf8: $27
	inc c                                            ; $7bf9: $0c
	or c                                             ; $7bfa: $b1
	pop hl                                           ; $7bfb: $e1
	rst $38                                          ; $7bfc: $ff
	ld bc, $0c24                                     ; $7bfd: $01 $24 $0c
	dec h                                            ; $7c00: $25
	inc c                                            ; $7c01: $0c
	daa                                              ; $7c02: $27
	inc c                                            ; $7c03: $0c
	or c                                             ; $7c04: $b1
	ld b, c                                          ; $7c05: $41
	nop                                              ; $7c06: $00
	nop                                              ; $7c07: $00
	daa                                              ; $7c08: $27
	inc c                                            ; $7c09: $0c
	or c                                             ; $7c0a: $b1
	pop hl                                           ; $7c0b: $e1
	rst $38                                          ; $7c0c: $ff
	ld bc, $0cbe                                     ; $7c0d: $01 $be $0c
	daa                                              ; $7c10: $27
	ld h, $27                                        ; $7c11: $26 $27
	ld a, [hl+]                                      ; $7c13: $2a
	add hl, hl                                       ; $7c14: $29
	daa                                              ; $7c15: $27
	cp [hl]                                          ; $7c16: $be
	dec h                                            ; $7c17: $25
	inc c                                            ; $7c18: $0c
	or c                                             ; $7c19: $b1
	ld b, c                                          ; $7c1a: $41
	nop                                              ; $7c1b: $00
	nop                                              ; $7c1c: $00
	dec h                                            ; $7c1d: $25
	inc c                                            ; $7c1e: $0c
	or c                                             ; $7c1f: $b1
	pop hl                                           ; $7c20: $e1
	rst $38                                          ; $7c21: $ff
	ld bc, $0cbe                                     ; $7c22: $01 $be $0c
	daa                                              ; $7c25: $27
	dec h                                            ; $7c26: $25
	inc hl                                           ; $7c27: $23
	inc l                                            ; $7c28: $2c
	inc hl                                           ; $7c29: $23
	dec h                                            ; $7c2a: $25
	cp [hl]                                          ; $7c2b: $be
	ld [hl+], a                                      ; $7c2c: $22
	inc c                                            ; $7c2d: $0c
	or c                                             ; $7c2e: $b1
	ld b, c                                          ; $7c2f: $41
	nop                                              ; $7c30: $00
	nop                                              ; $7c31: $00
	ld [hl+], a                                      ; $7c32: $22
	inc c                                            ; $7c33: $0c
	or c                                             ; $7c34: $b1
	pop hl                                           ; $7c35: $e1
	rst $38                                          ; $7c36: $ff
	ld bc, $0cbe                                     ; $7c37: $01 $be $0c
	inc hl                                           ; $7c3a: $23
	ld [hl+], a                                      ; $7c3b: $22
	jr nz, jr_031_7c67                               ; $7c3c: $20 $29

	jr nz, @+$24                                     ; $7c3e: $20 $22

	cp [hl]                                          ; $7c40: $be
	ld e, $0c                                        ; $7c41: $1e $0c
	or c                                             ; $7c43: $b1
	ld b, c                                          ; $7c44: $41
	nop                                              ; $7c45: $00
	nop                                              ; $7c46: $00
	ld e, $0c                                        ; $7c47: $1e $0c
	or c                                             ; $7c49: $b1
	pop hl                                           ; $7c4a: $e1
	rst $38                                          ; $7c4b: $ff
	ld bc, $0cbe                                     ; $7c4c: $01 $be $0c
	jr nz, @+$20                                     ; $7c4f: $20 $1e

	inc e                                            ; $7c51: $1c
	dec h                                            ; $7c52: $25
	inc e                                            ; $7c53: $1c
	ld e, $be                                        ; $7c54: $1e $be
	dec de                                           ; $7c56: $1b
	inc c                                            ; $7c57: $0c
	or c                                             ; $7c58: $b1
	ld b, c                                          ; $7c59: $41
	nop                                              ; $7c5a: $00
	nop                                              ; $7c5b: $00
	dec de                                           ; $7c5c: $1b
	inc c                                            ; $7c5d: $0c
	or c                                             ; $7c5e: $b1
	pop hl                                           ; $7c5f: $e1
	rst $38                                          ; $7c60: $ff
	ld bc, $0cbe                                     ; $7c61: $01 $be $0c
	inc e                                            ; $7c64: $1c
	dec de                                           ; $7c65: $1b
	add hl, de                                       ; $7c66: $19

jr_031_7c67:
	ld [hl+], a                                      ; $7c67: $22
	add hl, de                                       ; $7c68: $19
	dec de                                           ; $7c69: $1b
	cp [hl]                                          ; $7c6a: $be
	or l                                             ; $7c6b: $b5
	pop hl                                           ; $7c6c: $e1

jr_031_7c6d:
	ld bc, $01ff                                     ; $7c6d: $01 $ff $01
	rla                                              ; $7c70: $17
	inc c                                            ; $7c71: $0c
	or c                                             ; $7c72: $b1
	ld b, c                                          ; $7c73: $41
	nop                                              ; $7c74: $00
	nop                                              ; $7c75: $00
	rla                                              ; $7c76: $17
	ld d, h                                          ; $7c77: $54
	or c                                             ; $7c78: $b1
	pop hl                                           ; $7c79: $e1
	rst $38                                          ; $7c7a: $ff
	ld bc, $0c1a                                     ; $7c7b: $01 $1a $0c
	or c                                             ; $7c7e: $b1
	ld b, c                                          ; $7c7f: $41
	nop                                              ; $7c80: $00
	nop                                              ; $7c81: $00
	ld a, [de]                                       ; $7c82: $1a
	ld d, h                                          ; $7c83: $54
	or c                                             ; $7c84: $b1
	pop af                                           ; $7c85: $f1
	rst $38                                          ; $7c86: $ff
	ld bc, $0c1b                                     ; $7c87: $01 $1b $0c
	or c                                             ; $7c8a: $b1
	ld hl, $0000                                     ; $7c8b: $21 $00 $00
	dec de                                           ; $7c8e: $1b
	inc c                                            ; $7c8f: $0c
	or c                                             ; $7c90: $b1
	pop hl                                           ; $7c91: $e1
	rst $38                                          ; $7c92: $ff
	ld bc, $0cbe                                     ; $7c93: $01 $be $0c
	dec de                                           ; $7c96: $1b
	ld a, [de]                                       ; $7c97: $1a
	dec de                                           ; $7c98: $1b
	dec e                                            ; $7c99: $1d
	ld e, $20                                        ; $7c9a: $1e $20
	cp [hl]                                          ; $7c9c: $be
	ret nc                                           ; $7c9d: $d0

	sub c                                            ; $7c9e: $91
	cp [hl]                                          ; $7c9f: $be
	inc c                                            ; $7ca0: $0c
	ld [hl+], a                                      ; $7ca1: $22
	jr nz, jr_031_7cc6                               ; $7ca2: $20 $22

	inc h                                            ; $7ca4: $24
	cp [hl]                                          ; $7ca5: $be
	cp [hl]                                          ; $7ca6: $be
	inc c                                            ; $7ca7: $0c
	dec h                                            ; $7ca8: $25
	jr nz, @+$20                                     ; $7ca9: $20 $1e

	dec e                                            ; $7cab: $1d
	cp [hl]                                          ; $7cac: $be
	ret nc                                           ; $7cad: $d0

	add d                                            ; $7cae: $82
	dec de                                           ; $7caf: $1b
	inc b                                            ; $7cb0: $04
	dec e                                            ; $7cb1: $1d
	inc b                                            ; $7cb2: $04
	dec de                                           ; $7cb3: $1b

jr_031_7cb4:
	inc b                                            ; $7cb4: $04
	or c                                             ; $7cb5: $b1
	ld b, c                                          ; $7cb6: $41
	nop                                              ; $7cb7: $00
	nop                                              ; $7cb8: $00
	dec de                                           ; $7cb9: $1b
	jr jr_031_7c6d                                   ; $7cba: $18 $b1

	pop hl                                           ; $7cbc: $e1
	rst $38                                          ; $7cbd: $ff
	ld bc, $0c19                                     ; $7cbe: $01 $19 $0c
	or b                                             ; $7cc1: $b0
	ld a, b                                          ; $7cc2: $78
	rst $38                                          ; $7cc3: $ff
	ld [bc], a                                       ; $7cc4: $02
	add hl, de                                       ; $7cc5: $19

jr_031_7cc6:
	inc c                                            ; $7cc6: $0c
	or c                                             ; $7cc7: $b1
	ld sp, $0000                                     ; $7cc8: $31 $00 $00
	add hl, de                                       ; $7ccb: $19
	inc h                                            ; $7ccc: $24
	jp nz, $1819                                     ; $7ccd: $c2 $19 $18

	pop bc                                           ; $7cd0: $c1
	add hl, de                                       ; $7cd1: $19
	jr @+$1b                                         ; $7cd2: $18 $19

	dec e                                            ; $7cd4: $1d
	or [hl]                                          ; $7cd5: $b6
	sub [hl]                                         ; $7cd6: $96
	pop hl                                           ; $7cd7: $e1
	ld bc, $01ff                                     ; $7cd8: $01 $ff $01
	add hl, hl                                       ; $7cdb: $29
	inc c                                            ; $7cdc: $0c
	ld a, [hl+]                                      ; $7cdd: $2a
	inc c                                            ; $7cde: $0c
	cp $ff                                           ; $7cdf: $fe $ff
	or h                                             ; $7ce1: $b4
	sub [hl]                                         ; $7ce2: $96
	ld h, c                                          ; $7ce3: $61
	inc bc                                           ; $7ce4: $03
	nop                                              ; $7ce5: $00

jr_031_7ce6:
	jr jr_031_7ce6                                   ; $7ce6: $18 $fe

	jp nz, $0629                                     ; $7ce8: $c2 $29 $06

	call nz, $2a29                                   ; $7ceb: $c4 $29 $2a

jr_031_7cee:
	add $29                                          ; $7cee: $c6 $29
	jr jr_031_7cb4                                   ; $7cf0: $18 $c2

	ld a, [hl+]                                      ; $7cf2: $2a
	ld b, $c4                                        ; $7cf3: $06 $c4
	ld a, [hl+]                                      ; $7cf5: $2a
	ld [de], a                                       ; $7cf6: $12
	jp nz, $0620                                     ; $7cf7: $c2 $20 $06

	call nz, $1220                                   ; $7cfa: $c4 $20 $12
	jp nz, $0820                                     ; $7cfd: $c2 $20 $08

	call nz, $0420                                   ; $7d00: $c4 $20 $04
	jp nz, $081f                                     ; $7d03: $c2 $1f $08

	call nz, $041f                                   ; $7d06: $c4 $1f $04
	jp nz, $0820                                     ; $7d09: $c2 $20 $08

	call nz, $0420                                   ; $7d0c: $c4 $20 $04
	jp nz, $0822                                     ; $7d0f: $c2 $22 $08

	call nz, $0422                                   ; $7d12: $c4 $22 $04
	jp nz, $0824                                     ; $7d15: $c2 $24 $08

	call nz, $0424                                   ; $7d18: $c4 $24 $04
	jp nz, $0825                                     ; $7d1b: $c2 $25 $08

	call nz, $0425                                   ; $7d1e: $c4 $25 $04
	jp nz, $2783                                     ; $7d21: $c2 $83 $27

	ld [$27c4], sp                                   ; $7d24: $08 $c4 $27
	jr z, @-$38                                      ; $7d27: $28 $c6

	daa                                              ; $7d29: $27
	jr jr_031_7cee                                   ; $7d2a: $18 $c2

	inc h                                            ; $7d2c: $24
	ld [$24c4], sp                                   ; $7d2d: $08 $c4 $24
	db $10                                           ; $7d30: $10
	jp nz, $0625                                     ; $7d31: $c2 $25 $06

	call nz, $1225                                   ; $7d34: $c4 $25 $12
	call nz, $161d                                   ; $7d37: $c4 $1d $16
	add $1d                                          ; $7d3a: $c6 $1d
	ld [bc], a                                       ; $7d3c: $02
	call nz, $161e                                   ; $7d3d: $c4 $1e $16
	add $1e                                          ; $7d40: $c6 $1e
	ld [bc], a                                       ; $7d42: $02
	jp nz, $1422                                     ; $7d43: $c2 $22 $14

	call nz, $0422                                   ; $7d46: $c4 $22 $04
	jp nz, $1424                                     ; $7d49: $c2 $24 $14

	call nz, $0424                                   ; $7d4c: $c4 $24 $04
	call nz, $161b                                   ; $7d4f: $c4 $1b $16
	add $1b                                          ; $7d52: $c6 $1b
	ld [bc], a                                       ; $7d54: $02
	call nz, $161d                                   ; $7d55: $c4 $1d $16
	add $1d                                          ; $7d58: $c6 $1d
	ld [bc], a                                       ; $7d5a: $02
	jp nz, $1421                                     ; $7d5b: $c2 $21 $14

	call nz, $0421                                   ; $7d5e: $c4 $21 $04
	jp nz, $0822                                     ; $7d61: $c2 $22 $08

	call nz, $0422                                   ; $7d64: $c4 $22 $04
	call nz, $0a16                                   ; $7d67: $c4 $16 $0a
	add $16                                          ; $7d6a: $c6 $16
	ld [bc], a                                       ; $7d6c: $02
	jp nz, $0a18                                     ; $7d6d: $c2 $18 $0a

	call nz, $0218                                   ; $7d70: $c4 $18 $02
	jp nz, $0a19                                     ; $7d73: $c2 $19 $0a

	call nz, $0219                                   ; $7d76: $c4 $19 $02
	call nz, $0a1b                                   ; $7d79: $c4 $1b $0a
	call nz, $021b                                   ; $7d7c: $c4 $1b $02
	call nz, $0a1d                                   ; $7d7f: $c4 $1d $0a
	add $1d                                          ; $7d82: $c6 $1d
	ld [bc], a                                       ; $7d84: $02
	call nz, $0a1f                                   ; $7d85: $c4 $1f $0a
	add $1f                                          ; $7d88: $c6 $1f
	ld [bc], a                                       ; $7d8a: $02
	call nz, $0a21                                   ; $7d8b: $c4 $21 $0a
	add $21                                          ; $7d8e: $c6 $21
	ld [bc], a                                       ; $7d90: $02
	jp nz, $0822                                     ; $7d91: $c2 $22 $08

	call nz, $4022                                   ; $7d94: $c4 $22 $40
	add $22                                          ; $7d97: $c6 $22
	jr @+$24                                         ; $7d99: $18 $22

	ld b, $00                                        ; $7d9b: $06 $00
	ld b, $c4                                        ; $7d9d: $06 $c4
	add hl, de                                       ; $7d9f: $19
	ld a, [bc]                                       ; $7da0: $0a
	add $19                                          ; $7da1: $c6 $19
	ld [bc], a                                       ; $7da3: $02
	call nz, $0a1b                                   ; $7da4: $c4 $1b $0a
	add $1b                                          ; $7da7: $c6 $1b
	ld [bc], a                                       ; $7da9: $02
	call nz, $0a1d                                   ; $7daa: $c4 $1d $0a
	add $1d                                          ; $7dad: $c6 $1d
	ld [bc], a                                       ; $7daf: $02
	call nz, $0a1e                                   ; $7db0: $c4 $1e $0a
	add $1e                                          ; $7db3: $c6 $1e
	ld [bc], a                                       ; $7db5: $02
	call nz, $0a20                                   ; $7db6: $c4 $20 $0a
	add $20                                          ; $7db9: $c6 $20
	ld [bc], a                                       ; $7dbb: $02
	call nz, $0a22                                   ; $7dbc: $c4 $22 $0a
	add $22                                          ; $7dbf: $c6 $22
	ld [bc], a                                       ; $7dc1: $02
	call nz, $0a24                                   ; $7dc2: $c4 $24 $0a
	add $24                                          ; $7dc5: $c6 $24
	ld [bc], a                                       ; $7dc7: $02
	call nz, $0a25                                   ; $7dc8: $c4 $25 $0a
	add $25                                          ; $7dcb: $c6 $25
	ld [bc], a                                       ; $7dcd: $02
	call nz, $0a1d                                   ; $7dce: $c4 $1d $0a
	add $1d                                          ; $7dd1: $c6 $1d
	ld [bc], a                                       ; $7dd3: $02
	call nz, $0a1e                                   ; $7dd4: $c4 $1e $0a
	add $1e                                          ; $7dd7: $c6 $1e
	ld [bc], a                                       ; $7dd9: $02
	call nz, $0a20                                   ; $7dda: $c4 $20 $0a
	call nz, $0220                                   ; $7ddd: $c4 $20 $02
	call nz, $0a22                                   ; $7de0: $c4 $22 $0a
	add $22                                          ; $7de3: $c6 $22
	ld [bc], a                                       ; $7de5: $02

jr_031_7de6:
	call nz, $0a24                                   ; $7de6: $c4 $24 $0a
	add $24                                          ; $7de9: $c6 $24
	ld [bc], a                                       ; $7deb: $02
	call nz, $0a25                                   ; $7dec: $c4 $25 $0a
	add $25                                          ; $7def: $c6 $25
	ld [bc], a                                       ; $7df1: $02
	call nz, $0a27                                   ; $7df2: $c4 $27 $0a
	add $27                                          ; $7df5: $c6 $27
	ld [bc], a                                       ; $7df7: $02
	pop hl                                           ; $7df8: $e1
	adc a                                            ; $7df9: $8f
	ld hl, $081d                                     ; $7dfa: $21 $1d $08
	call nz, $101d                                   ; $7dfd: $c4 $1d $10

jr_031_7e00:
	jp nz, $081e                                     ; $7e00: $c2 $1e $08

	call nz, $101e                                   ; $7e03: $c4 $1e $10
	jp nz, $0c20                                     ; $7e06: $c2 $20 $0c

	call nz, $0c20                                   ; $7e09: $c4 $20 $0c
	pop hl                                           ; $7e0c: $e1
	add e                                            ; $7e0d: $83
	ld hl, $1414                                     ; $7e0e: $21 $14 $14
	call nz, $0414                                   ; $7e11: $c4 $14 $04
	pop hl                                           ; $7e14: $e1
	ld a, h                                          ; $7e15: $7c
	ld hl, $0c19                                     ; $7e16: $21 $19 $0c
	call nz, $0c19                                   ; $7e19: $c4 $19 $0c
	jp nz, $0c14                                     ; $7e1c: $c2 $14 $0c

	call nz, $0c14                                   ; $7e1f: $c4 $14 $0c
	jp nz, $0c0d                                     ; $7e22: $c2 $0d $0c

	call nz, $0c0d                                   ; $7e25: $c4 $0d $0c
	add $0d                                          ; $7e28: $c6 $0d
	inc c                                            ; $7e2a: $0c
	nop                                              ; $7e2b: $00
	inc c                                            ; $7e2c: $0c
	ret nc                                           ; $7e2d: $d0

	sub c                                            ; $7e2e: $91
	nop                                              ; $7e2f: $00
	jr jr_031_7de6                                   ; $7e30: $18 $b4

	sub [hl]                                         ; $7e32: $96
	ld hl, $2903                                     ; $7e33: $21 $03 $29
	ld b, $c4                                        ; $7e36: $06 $c4
	add hl, hl                                       ; $7e38: $29
	ld a, [hl+]                                      ; $7e39: $2a
	add $29                                          ; $7e3a: $c6 $29
	jr jr_031_7e00                                   ; $7e3c: $18 $c2

	ld a, [hl+]                                      ; $7e3e: $2a
	ld b, $c4                                        ; $7e3f: $06 $c4
	ld a, [hl+]                                      ; $7e41: $2a
	ld [de], a                                       ; $7e42: $12
	jp nz, $0620                                     ; $7e43: $c2 $20 $06

	call nz, $1220                                   ; $7e46: $c4 $20 $12
	jp nz, $0820                                     ; $7e49: $c2 $20 $08

	call nz, $0420                                   ; $7e4c: $c4 $20 $04
	jp nz, $081f                                     ; $7e4f: $c2 $1f $08

	call nz, $041f                                   ; $7e52: $c4 $1f $04
	jp nz, $0820                                     ; $7e55: $c2 $20 $08

	call nz, $0420                                   ; $7e58: $c4 $20 $04
	jp nz, $081f                                     ; $7e5b: $c2 $1f $08

	call nz, $041f                                   ; $7e5e: $c4 $1f $04
	jp nz, $0820                                     ; $7e61: $c2 $20 $08

	call nz, $0420                                   ; $7e64: $c4 $20 $04
	jp nz, $0822                                     ; $7e67: $c2 $22 $08

	call nz, $0422                                   ; $7e6a: $c4 $22 $04
	jp nz, $0824                                     ; $7e6d: $c2 $24 $08

	call nz, $2824                                   ; $7e70: $c4 $24 $28
	jp nz, $0821                                     ; $7e73: $c2 $21 $08

	call nz, $2821                                   ; $7e76: $c4 $21 $28
	jp nz, $0822                                     ; $7e79: $c2 $22 $08

	call nz, $1022                                   ; $7e7c: $c4 $22 $10
	jp nz, $081f                                     ; $7e7f: $c2 $1f $08

	call nz, $101f                                   ; $7e82: $c4 $1f $10
	jp nz, $0820                                     ; $7e85: $c2 $20 $08

	call nz, $1020                                   ; $7e88: $c4 $20 $10
	jp nz, $0c1d                                     ; $7e8b: $c2 $1d $0c

	call nz, $0c1d                                   ; $7e8e: $c4 $1d $0c
	jp nz, $081e                                     ; $7e91: $c2 $1e $08

	call nz, $101e                                   ; $7e94: $c4 $1e $10
	jp nz, $081b                                     ; $7e97: $c2 $1b $08

	call nz, $101b                                   ; $7e9a: $c4 $1b $10
	jp nz, $081d                                     ; $7e9d: $c2 $1d $08

	call nz, $101d                                   ; $7ea0: $c4 $1d $10
	jp nz, $0c1a                                     ; $7ea3: $c2 $1a $0c

	call nz, $0c1a                                   ; $7ea6: $c4 $1a $0c
	jp nz, $081b                                     ; $7ea9: $c2 $1b $08

	call nz, $101b                                   ; $7eac: $c4 $1b $10
	jp nz, $0818                                     ; $7eaf: $c2 $18 $08

	call nz, $1018                                   ; $7eb2: $c4 $18 $10
	jp nz, $0819                                     ; $7eb5: $c2 $19 $08

	call nz, $1019                                   ; $7eb8: $c4 $19 $10
	jp nz, $0c16                                     ; $7ebb: $c2 $16 $0c

	call nz, $0c16                                   ; $7ebe: $c4 $16 $0c
	jp nz, $0817                                     ; $7ec1: $c2 $17 $08

	call nz, $1017                                   ; $7ec4: $c4 $17 $10
	jp nz, $0814                                     ; $7ec7: $c2 $14 $08

	call nz, $1014                                   ; $7eca: $c4 $14 $10
	jp nz, $0816                                     ; $7ecd: $c2 $16 $08

	call nz, $1016                                   ; $7ed0: $c4 $16 $10
	jp nz, $0c13                                     ; $7ed3: $c2 $13 $0c

	call nz, $0c13                                   ; $7ed6: $c4 $13 $0c
	add e                                            ; $7ed9: $83
	ei                                               ; $7eda: $fb
	jp nz, $0814                                     ; $7edb: $c2 $14 $08

	call nz, $0314                                   ; $7ede: $c4 $14 $03
	add $14                                          ; $7ee1: $c6 $14
	ld bc, $10fb                                     ; $7ee3: $01 $fb $10
	jp nz, $0c12                                     ; $7ee6: $c2 $12 $0c

	call nz, $0612                                   ; $7ee9: $c4 $12 $06
	add $12                                          ; $7eec: $c6 $12
	ld b, $c2                                        ; $7eee: $06 $c2
	ld e, $0a                                        ; $7ef0: $1e $0a
	call nz, $021e                                   ; $7ef2: $c4 $1e $02
	jp nz, $0a1d                                     ; $7ef5: $c2 $1d $0a

	call nz, $021d                                   ; $7ef8: $c4 $1d $02
	jp nz, $0a1e                                     ; $7efb: $c2 $1e $0a

	call nz, $021e                                   ; $7efe: $c4 $1e $02
	jp nz, $0a22                                     ; $7f01: $c2 $22 $0a

	call nz, $0222                                   ; $7f04: $c4 $22 $02
	jp nz, $0a27                                     ; $7f07: $c2 $27 $0a

	call nz, $0227                                   ; $7f0a: $c4 $27 $02
	jp nz, $0a29                                     ; $7f0d: $c2 $29 $0a

	call nz, $0229                                   ; $7f10: $c4 $29 $02
	pop hl                                           ; $7f13: $e1
	sub c                                            ; $7f14: $91
	ld hl, $142a                                     ; $7f15: $21 $2a $14
	call nz, $042a                                   ; $7f18: $c4 $2a $04
	jp nz, $141b                                     ; $7f1b: $c2 $1b $14

	call nz, $041b                                   ; $7f1e: $c4 $1b $04
	jp nz, $141d                                     ; $7f21: $c2 $1d $14

	call nz, $041d                                   ; $7f24: $c4 $1d $04
	jp nz, $141e                                     ; $7f27: $c2 $1e $14

	call nz, $041e                                   ; $7f2a: $c4 $1e $04
	pop hl                                           ; $7f2d: $e1
	add d                                            ; $7f2e: $82
	ld hl, $1420                                     ; $7f2f: $21 $20 $14
	call nz, $0420                                   ; $7f32: $c4 $20 $04
	jp nz, $1414                                     ; $7f35: $c2 $14 $14

	call nz, $0414                                   ; $7f38: $c4 $14 $04
	pop hl                                           ; $7f3b: $e1
	ld a, b                                          ; $7f3c: $78
	ld hl, $1419                                     ; $7f3d: $21 $19 $14
	call nz, $0419                                   ; $7f40: $c4 $19 $04
	jp nz, $1414                                     ; $7f43: $c2 $14 $14

	call nz, $0414                                   ; $7f46: $c4 $14 $04
	jp nz, $180d                                     ; $7f49: $c2 $0d $18

	call nz, $180d                                   ; $7f4c: $c4 $0d $18
	add $0d                                          ; $7f4f: $c6 $0d
	dec e                                            ; $7f51: $1d
	or h                                             ; $7f52: $b4
	sub [hl]                                         ; $7f53: $96
	ld h, c                                          ; $7f54: $61
	inc bc                                           ; $7f55: $03
	dec c                                            ; $7f56: $0d

jr_031_7f57:
	jr jr_031_7f57                                   ; $7f57: $18 $fe

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

Jump_031_7fc2:
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

Jump_031_7fd1:
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
