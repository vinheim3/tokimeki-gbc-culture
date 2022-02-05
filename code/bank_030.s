; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $030", ROMX[$4000], BANK[$30]

	ret nc                                           ; $4000: $d0

	ld [hl], b                                       ; $4001: $70
	cp $b5                                           ; $4002: $fe $b5
	or c                                             ; $4004: $b1
	ld bc, $04ff                                     ; $4005: $01 $ff $04
	ld a, [hl]                                       ; $4008: $7e
	ld bc, $a000                                     ; $4009: $01 $00 $a0
	ld hl, $7e18                                     ; $400c: $21 $18 $7e
	nop                                              ; $400f: $00
	or c                                             ; $4010: $b1
	ld b, c                                          ; $4011: $41
	nop                                              ; $4012: $00
	nop                                              ; $4013: $00
	ld hl, $b50e                                     ; $4014: $21 $0e $b5
	ld h, c                                          ; $4017: $61
	ld bc, $0206                                     ; $4018: $01 $06 $02
	ld a, [hl]                                       ; $401b: $7e
	ld [bc], a                                       ; $401c: $02
	nop                                              ; $401d: $00
	and b                                            ; $401e: $a0
	dec e                                            ; $401f: $1d
	ld b, $29                                        ; $4020: $06 $29
	ld b, $b1                                        ; $4022: $06 $b1
	ld hl, $0000                                     ; $4024: $21 $00 $00
	add hl, hl                                       ; $4027: $29
	ld b, $b1                                        ; $4028: $06 $b1
	ld d, c                                          ; $402a: $51
	rst $38                                          ; $402b: $ff
	dec b                                            ; $402c: $05
	jr z, @+$0e                                      ; $402d: $28 $0c

	add hl, hl                                       ; $402f: $29
	ld b, $b1                                        ; $4030: $06 $b1
	ld hl, $0000                                     ; $4032: $21 $00 $00
	add hl, hl                                       ; $4035: $29
	inc b                                            ; $4036: $04
	or l                                             ; $4037: $b5
	or c                                             ; $4038: $b1

jr_030_4039:
	ld bc, $0412                                     ; $4039: $01 $12 $04
	ld a, [hl]                                       ; $403c: $7e
	nop                                              ; $403d: $00
	ld hl, $b112                                     ; $403e: $21 $12 $b1
	or c                                             ; $4041: $b1
	jr jr_030_4048                                   ; $4042: $18 $04

	ld a, [hl]                                       ; $4044: $7e
	ld bc, $a000                                     ; $4045: $01 $00 $a0

jr_030_4048:
	ld [hl+], a                                      ; $4048: $22
	db $18, $b1                                      ; $4049: $18 $b1
	ld sp, $0000                                     ; $404b: $31 $00 $00
	ld [hl+], a                                      ; $404e: $22
	ld c, $b5                                        ; $404f: $0e $b5
	ld h, c                                          ; $4051: $61
	ld bc, $0206                                     ; $4052: $01 $06 $02
	ld a, [hl]                                       ; $4055: $7e
	ld [bc], a                                       ; $4056: $02
	nop                                              ; $4057: $00
	and b                                            ; $4058: $a0
	add hl, hl                                       ; $4059: $29
	ld b, $26                                        ; $405a: $06 $26
	ld b, $b1                                        ; $405c: $06 $b1
	ld hl, $0000                                     ; $405e: $21 $00 $00
	ld h, $06                                        ; $4061: $26 $06
	or c                                             ; $4063: $b1
	ld [hl], c                                       ; $4064: $71
	rst $38                                          ; $4065: $ff
	ld [bc], a                                       ; $4066: $02
	jr z, @+$08                                      ; $4067: $28 $06

	add hl, hl                                       ; $4069: $29
	ld b, $22                                        ; $406a: $06 $22
	ld b, $b1                                        ; $406c: $06 $b1
	ld hl, $0000                                     ; $406e: $21 $00 $00
	ld [hl+], a                                      ; $4071: $22
	inc b                                            ; $4072: $04
	or l                                             ; $4073: $b5
	and c                                            ; $4074: $a1
	ld bc, $0412                                     ; $4075: $01 $12 $04
	ld a, [hl]                                       ; $4078: $7e
	ld bc, $a900                                     ; $4079: $01 $00 $a9
	ld [hl+], a                                      ; $407c: $22
	ld [de], a                                       ; $407d: $12
	ld a, [hl]                                       ; $407e: $7e
	ld bc, $a000                                     ; $407f: $01 $00 $a0
	sub [hl]                                         ; $4082: $96
	rst $38                                          ; $4083: $ff
	ld b, $22                                        ; $4084: $06 $22
	jr jr_030_4039                                   ; $4086: $18 $b1

	ld sp, $0000                                     ; $4088: $31 $00 $00
	ld a, [hl]                                       ; $408b: $7e
	nop                                              ; $408c: $00
	ld [hl+], a                                      ; $408d: $22
	ld c, $b5                                        ; $408e: $0e $b5
	ld [hl], c                                       ; $4090: $71
	ld bc, $0206                                     ; $4091: $01 $06 $02
	ld a, [hl]                                       ; $4094: $7e
	ld [bc], a                                       ; $4095: $02
	nop                                              ; $4096: $00
	and b                                            ; $4097: $a0
	ld [hl+], a                                      ; $4098: $22
	ld b, $29                                        ; $4099: $06 $29
	ld b, $b1                                        ; $409b: $06 $b1
	ld sp, $0000                                     ; $409d: $31 $00 $00
	add hl, hl                                       ; $40a0: $29
	ld b, $b1                                        ; $40a1: $06 $b1
	ld [hl], c                                       ; $40a3: $71
	ld b, $02                                        ; $40a4: $06 $02
	dec h                                            ; $40a6: $25
	ld b, $b1                                        ; $40a7: $06 $b1
	ld sp, $0000                                     ; $40a9: $31 $00 $00
	dec h                                            ; $40ac: $25
	ld b, $b1                                        ; $40ad: $06 $b1
	ld [hl], c                                       ; $40af: $71
	ld b, $02                                        ; $40b0: $06 $02
	inc h                                            ; $40b2: $24
	ld b, $b1                                        ; $40b3: $06 $b1
	ld sp, $0000                                     ; $40b5: $31 $00 $00
	inc h                                            ; $40b8: $24
	ld b, $b1                                        ; $40b9: $06 $b1
	ld [hl], c                                       ; $40bb: $71
	inc c                                            ; $40bc: $0c
	inc bc                                           ; $40bd: $03
	ld [hl+], a                                      ; $40be: $22
	inc c                                            ; $40bf: $0c
	or c                                             ; $40c0: $b1
	ld sp, $0000                                     ; $40c1: $31 $00 $00
	ld [hl+], a                                      ; $40c4: $22
	inc b                                            ; $40c5: $04
	or l                                             ; $40c6: $b5
	pop bc                                           ; $40c7: $c1
	ld bc, $0418                                     ; $40c8: $01 $18 $04
	ld a, [hl]                                       ; $40cb: $7e
	ld bc, $a900                                     ; $40cc: $01 $00 $a9
	ld hl, $b118                                     ; $40cf: $21 $18 $b1
	ld sp, $0000                                     ; $40d2: $31 $00 $00
	ld hl, $b10c                                     ; $40d5: $21 $0c $b1
	sub c                                            ; $40d8: $91
	ld b, $02                                        ; $40d9: $06 $02
	ld a, [hl]                                       ; $40db: $7e
	ld [bc], a                                       ; $40dc: $02
	nop                                              ; $40dd: $00
	and b                                            ; $40de: $a0
	ld hl, $0005                                     ; $40df: $21 $05 $00
	ld bc, $0621                                     ; $40e2: $01 $21 $06
	or c                                             ; $40e5: $b1
	ld sp, $0000                                     ; $40e6: $31 $00 $00
	ld hl, $c706                                     ; $40e9: $21 $06 $c7
	ld hl, $c306                                     ; $40ec: $21 $06 $c3
	ld hl, $c706                                     ; $40ef: $21 $06 $c7
	ld hl, $c306                                     ; $40f2: $21 $06 $c3
	ld hl, $b106                                     ; $40f5: $21 $06 $b1
	add c                                            ; $40f8: $81
	ld [de], a                                       ; $40f9: $12
	rlca                                             ; $40fa: $07
	ld a, [hl]                                       ; $40fb: $7e
	ld [de], a                                       ; $40fc: $12
	inc c                                            ; $40fd: $0c
	and e                                            ; $40fe: $a3
	rra                                              ; $40ff: $1f
	ld [de], a                                       ; $4100: $12
	or l                                             ; $4101: $b5
	ld d, c                                          ; $4102: $51
	nop                                              ; $4103: $00
	nop                                              ; $4104: $00
	nop                                              ; $4105: $00
	ld a, [hl]                                       ; $4106: $7e
	nop                                              ; $4107: $00
	inc c                                            ; $4108: $0c
	ld b, $c8                                        ; $4109: $06 $c8
	dec d                                            ; $410b: $15
	ld b, $c9                                        ; $410c: $06 $c9
	rra                                              ; $410e: $1f
	ld b, $cb                                        ; $410f: $06 $cb
	ld hl, $c406                                     ; $4111: $21 $06 $c4
	ld hl, $1d06                                     ; $4114: $21 $06 $1d
	ld [$61b5], sp                                   ; $4117: $08 $b5 $61
	ld bc, $0206                                     ; $411a: $01 $06 $02
	ld a, [hl]                                       ; $411d: $7e
	ld [bc], a                                       ; $411e: $02
	nop                                              ; $411f: $00
	and b                                            ; $4120: $a0
	dec e                                            ; $4121: $1d
	ld b, $29                                        ; $4122: $06 $29
	ld b, $b1                                        ; $4124: $06 $b1
	ld hl, $0000                                     ; $4126: $21 $00 $00
	add hl, hl                                       ; $4129: $29
	ld b, $b1                                        ; $412a: $06 $b1
	ld h, c                                          ; $412c: $61
	inc c                                            ; $412d: $0c
	dec b                                            ; $412e: $05
	jr z, jr_030_413d                                ; $412f: $28 $0c

	add hl, hl                                       ; $4131: $29
	ld b, $b1                                        ; $4132: $06 $b1
	ld hl, $0000                                     ; $4134: $21 $00 $00
	add hl, hl                                       ; $4137: $29
	inc b                                            ; $4138: $04
	or l                                             ; $4139: $b5
	add c                                            ; $413a: $81
	ld [bc], a                                       ; $413b: $02
	ld [de], a                                       ; $413c: $12

jr_030_413d:
	ld b, $7e                                        ; $413d: $06 $7e
	nop                                              ; $413f: $00
	ld hl, $b512                                     ; $4140: $21 $12 $b5
	ld sp, $0000                                     ; $4143: $31 $00 $00
	nop                                              ; $4146: $00
	inc de                                           ; $4147: $13
	ld b, $c6                                        ; $4148: $06 $c6
	ld a, [de]                                       ; $414a: $1a
	ld b, $c8                                        ; $414b: $06 $c8
	dec e                                            ; $414d: $1d
	ld b, $c9                                        ; $414e: $06 $c9
	ld [hl+], a                                      ; $4150: $22
	ld b, $c3                                        ; $4151: $06 $c3
	ld [hl+], a                                      ; $4153: $22
	ld b, $c2                                        ; $4154: $06 $c2
	ld a, [de]                                       ; $4156: $1a
	ld [$61b5], sp                                   ; $4157: $08 $b5 $61
	ld bc, $0206                                     ; $415a: $01 $06 $02
	ld a, [hl]                                       ; $415d: $7e
	ld [bc], a                                       ; $415e: $02
	nop                                              ; $415f: $00
	and b                                            ; $4160: $a0
	add hl, hl                                       ; $4161: $29
	ld b, $26                                        ; $4162: $06 $26
	ld b, $b1                                        ; $4164: $06 $b1
	ld hl, $0000                                     ; $4166: $21 $00 $00
	ld h, $06                                        ; $4169: $26 $06
	or c                                             ; $416b: $b1
	ld h, c                                          ; $416c: $61
	ld b, $02                                        ; $416d: $06 $02
	jr z, @+$08                                      ; $416f: $28 $06

	add hl, hl                                       ; $4171: $29
	ld b, $22                                        ; $4172: $06 $22
	ld b, $b1                                        ; $4174: $06 $b1
	ld hl, $0000                                     ; $4176: $21 $00 $00
	ld [hl+], a                                      ; $4179: $22
	inc b                                            ; $417a: $04
	or l                                             ; $417b: $b5
	add c                                            ; $417c: $81
	ld [bc], a                                       ; $417d: $02
	ld [de], a                                       ; $417e: $12
	inc b                                            ; $417f: $04
	ld a, [hl]                                       ; $4180: $7e
	nop                                              ; $4181: $00
	ld [hl+], a                                      ; $4182: $22
	ld [de], a                                       ; $4183: $12
	or l                                             ; $4184: $b5
	sub c                                            ; $4185: $91
	ld [bc], a                                       ; $4186: $02
	rst $38                                          ; $4187: $ff
	ld b, $94                                        ; $4188: $06 $94
	ld [hl], a                                       ; $418a: $77
	ld a, [hl]                                       ; $418b: $7e
	dec b                                            ; $418c: $05
	nop                                              ; $418d: $00
	and c                                            ; $418e: $a1
	rra                                              ; $418f: $1f
	jr @-$37                                         ; $4190: $18 $c7

	ld a, [hl]                                       ; $4192: $7e
	nop                                              ; $4193: $00
	sub h                                            ; $4194: $94
	ld a, a                                          ; $4195: $7f
	ld l, $10                                        ; $4196: $2e $10
	or l                                             ; $4198: $b5
	ld h, c                                          ; $4199: $61
	ld bc, $0206                                     ; $419a: $01 $06 $02
	sub h                                            ; $419d: $94
	ld [$027e], sp                                   ; $419e: $08 $7e $02
	nop                                              ; $41a1: $00
	and b                                            ; $41a2: $a0
	ld [hl+], a                                      ; $41a3: $22
	inc b                                            ; $41a4: $04
	add hl, hl                                       ; $41a5: $29
	ld b, $b1                                        ; $41a6: $06 $b1
	ld sp, $0000                                     ; $41a8: $31 $00 $00
	add hl, hl                                       ; $41ab: $29
	ld b, $b1                                        ; $41ac: $06 $b1
	ld h, c                                          ; $41ae: $61
	ld b, $02                                        ; $41af: $06 $02
	dec h                                            ; $41b1: $25
	ld b, $b1                                        ; $41b2: $06 $b1
	ld sp, $0000                                     ; $41b4: $31 $00 $00
	dec h                                            ; $41b7: $25
	ld b, $b1                                        ; $41b8: $06 $b1
	ld [hl], c                                       ; $41ba: $71
	ld b, $02                                        ; $41bb: $06 $02
	inc h                                            ; $41bd: $24
	ld b, $b1                                        ; $41be: $06 $b1
	ld sp, $0000                                     ; $41c0: $31 $00 $00
	inc h                                            ; $41c3: $24
	ld b, $b1                                        ; $41c4: $06 $b1
	ld [hl], c                                       ; $41c6: $71
	inc c                                            ; $41c7: $0c
	inc bc                                           ; $41c8: $03
	ld [hl+], a                                      ; $41c9: $22
	inc c                                            ; $41ca: $0c
	or c                                             ; $41cb: $b1
	ld sp, $0000                                     ; $41cc: $31 $00 $00
	ld [hl+], a                                      ; $41cf: $22
	inc b                                            ; $41d0: $04
	or l                                             ; $41d1: $b5
	or c                                             ; $41d2: $b1
	ld [bc], a                                       ; $41d3: $02
	jr jr_030_41da                                   ; $41d4: $18 $04

	ld a, [hl]                                       ; $41d6: $7e
	ld bc, $a000                                     ; $41d7: $01 $00 $a0

jr_030_41da:
	ld hl, $b118                                     ; $41da: $21 $18 $b1
	ld sp, $0000                                     ; $41dd: $31 $00 $00
	ld hl, $b50c                                     ; $41e0: $21 $0c $b5
	sub c                                            ; $41e3: $91
	ld bc, $0206                                     ; $41e4: $01 $06 $02
	ld a, [hl]                                       ; $41e7: $7e
	ld [bc], a                                       ; $41e8: $02
	nop                                              ; $41e9: $00
	and b                                            ; $41ea: $a0
	ld hl, $0005                                     ; $41eb: $21 $05 $00
	ld bc, $0621                                     ; $41ee: $01 $21 $06
	or c                                             ; $41f1: $b1
	ld sp, $0000                                     ; $41f2: $31 $00 $00
	ld hl, $c706                                     ; $41f5: $21 $06 $c7
	ld hl, $c306                                     ; $41f8: $21 $06 $c3
	ld hl, $c706                                     ; $41fb: $21 $06 $c7
	ld hl, $c306                                     ; $41fe: $21 $06 $c3
	ld hl, $b106                                     ; $4201: $21 $06 $b1
	ld h, c                                          ; $4204: $61
	ld [de], a                                       ; $4205: $12
	rlca                                             ; $4206: $07
	ld a, [hl]                                       ; $4207: $7e
	ld [de], a                                       ; $4208: $12
	inc c                                            ; $4209: $0c
	and e                                            ; $420a: $a3
	rra                                              ; $420b: $1f
	ld [de], a                                       ; $420c: $12
	sub b                                            ; $420d: $90
	nop                                              ; $420e: $00
	ld [de], a                                       ; $420f: $12
	jp z, $027e                                      ; $4210: $ca $7e $02

	nop                                              ; $4213: $00
	and b                                            ; $4214: $a0
	ld hl, $7e07                                     ; $4215: $21 $07 $7e
	nop                                              ; $4218: $00
	jp $0521                                         ; $4219: $c3 $21 $05


	jp nz, $0621                                     ; $421c: $c2 $21 $06

	jp nz, Jump_030_7d92                             ; $421f: $c2 $92 $7d

	ld bc, $012d                                     ; $4222: $01 $2d $01
	rst JumpTable                                          ; $4225: $c7
	ld hl, $c205                                     ; $4226: $21 $05 $c2
	dec l                                            ; $4229: $2d
	ld bc, $21c7                                     ; $422a: $01 $c7 $21
	dec b                                            ; $422d: $05
	jp nz, $012d                                     ; $422e: $c2 $2d $01

	rst JumpTable                                          ; $4231: $c7
	ld hl, $c205                                     ; $4232: $21 $05 $c2
	ld l, $01                                        ; $4235: $2e $01
	rst JumpTable                                          ; $4237: $c7
	ld [hl+], a                                      ; $4238: $22
	dec b                                            ; $4239: $05
	jp nz, $0622                                     ; $423a: $c2 $22 $06

	jp nz, $012d                                     ; $423d: $c2 $2d $01

	rst JumpTable                                          ; $4240: $c7
	ld hl, $c205                                     ; $4241: $21 $05 $c2
	ld hl, $c206                                     ; $4244: $21 $06 $c2
	ld l, $01                                        ; $4247: $2e $01
	rst JumpTable                                          ; $4249: $c7
	dec e                                            ; $424a: $1d
	dec b                                            ; $424b: $05
	jp nz, $0129                                     ; $424c: $c2 $29 $01

	rst JumpTable                                          ; $424f: $c7
	ld hl, $c205                                     ; $4250: $21 $05 $c2
	ld hl, $c206                                     ; $4253: $21 $06 $c2
	dec hl                                           ; $4256: $2b
	ld bc, $1fc7                                     ; $4257: $01 $c7 $1f
	dec b                                            ; $425a: $05
	jp nz, $061f                                     ; $425b: $c2 $1f $06

	jp nz, $0122                                     ; $425e: $c2 $22 $01

	push bc                                          ; $4261: $c5
	ld d, $05                                        ; $4262: $16 $05
	jp nz, $012b                                     ; $4264: $c2 $2b $01

	rst JumpTable                                          ; $4267: $c7
	rra                                              ; $4268: $1f
	dec b                                            ; $4269: $05
	jp nz, $061f                                     ; $426a: $c2 $1f $06

	jp nz, $012e                                     ; $426d: $c2 $2e $01

	rst JumpTable                                          ; $4270: $c7
	ld [hl+], a                                      ; $4271: $22
	dec b                                            ; $4272: $05
	jp nz, $012b                                     ; $4273: $c2 $2b $01

	rst JumpTable                                          ; $4276: $c7
	rra                                              ; $4277: $1f
	dec b                                            ; $4278: $05
	or c                                             ; $4279: $b1
	ld h, c                                          ; $427a: $61
	ld b, $02                                        ; $427b: $06 $02
	rra                                              ; $427d: $1f
	ld b, $c5                                        ; $427e: $06 $c5
	rra                                              ; $4280: $1f
	ld b, $c4                                        ; $4281: $06 $c4
	rra                                              ; $4283: $1f
	ld b, $c3                                        ; $4284: $06 $c3
	rra                                              ; $4286: $1f
	ld b, $c2                                        ; $4287: $06 $c2
	rra                                              ; $4289: $1f
	ld b, $c2                                        ; $428a: $06 $c2
	rra                                              ; $428c: $1f
	ld b, $c1                                        ; $428d: $06 $c1
	rra                                              ; $428f: $1f
	ld b, $b1                                        ; $4290: $06 $b1
	ld hl, $0000                                     ; $4292: $21 $00 $00
	dec hl                                           ; $4295: $2b
	ld bc, $1fc7                                     ; $4296: $01 $c7 $1f
	dec b                                            ; $4299: $05
	jp nz, $012e                                     ; $429a: $c2 $2e $01

	rst JumpTable                                          ; $429d: $c7
	ld [hl+], a                                      ; $429e: $22
	dec b                                            ; $429f: $05
	jp nz, $0129                                     ; $42a0: $c2 $29 $01

	rst JumpTable                                          ; $42a3: $c7
	add hl, hl                                       ; $42a4: $29
	dec b                                            ; $42a5: $05
	jp $0629                                         ; $42a6: $c3 $29 $06


	jp nz, $0629                                     ; $42a9: $c2 $29 $06

	pop bc                                           ; $42ac: $c1
	add hl, hl                                       ; $42ad: $29
	ld b, $c1                                        ; $42ae: $06 $c1
	dec h                                            ; $42b0: $25
	ld b, $c8                                        ; $42b1: $06 $c8
	sub e                                            ; $42b3: $93
	ld a, [hl]                                       ; $42b4: $7e
	ld [de], a                                       ; $42b5: $12
	inc c                                            ; $42b6: $0c
	and e                                            ; $42b7: $a3
	dec h                                            ; $42b8: $25
	ld [de], a                                       ; $42b9: $12
	push bc                                          ; $42ba: $c5
	sub d                                            ; $42bb: $92
	ld a, [hl]                                       ; $42bc: $7e
	nop                                              ; $42bd: $00
	dec hl                                           ; $42be: $2b
	ld bc, $2bc7                                     ; $42bf: $01 $c7 $2b
	dec b                                            ; $42c2: $05
	jp $062b                                         ; $42c3: $c3 $2b $06


	jp nz, $062b                                     ; $42c6: $c2 $2b $06

	jp nz, $062b                                     ; $42c9: $c2 $2b $06

	pop bc                                           ; $42cc: $c1
	dec hl                                           ; $42cd: $2b
	ld b, $c8                                        ; $42ce: $06 $c8
	sub e                                            ; $42d0: $93
	ld a, [hl]                                       ; $42d1: $7e
	ld [de], a                                       ; $42d2: $12
	inc c                                            ; $42d3: $0c
	and e                                            ; $42d4: $a3
	daa                                              ; $42d5: $27
	ld [de], a                                       ; $42d6: $12
	jp nz, Jump_030_7e92                             ; $42d7: $c2 $92 $7e

	nop                                              ; $42da: $00
	dec [hl]                                         ; $42db: $35
	ld bc, $29c7                                     ; $42dc: $01 $c7 $29
	dec b                                            ; $42df: $05
	jp nz, $0629                                     ; $42e0: $c2 $29 $06

	pop bc                                           ; $42e3: $c1
	add hl, hl                                       ; $42e4: $29
	ld b, $00                                        ; $42e5: $06 $00
	ld e, $00                                        ; $42e7: $1e $00
	rlca                                             ; $42e9: $07
	sub e                                            ; $42ea: $93
	rst JumpTable                                          ; $42eb: $c7
	ld a, [hl]                                       ; $42ec: $7e
	ld [bc], a                                       ; $42ed: $02
	nop                                              ; $42ee: $00
	xor c                                            ; $42ef: $a9
	dec hl                                           ; $42f0: $2b
	stop                                             ; $42f1: $10 $00
	ld bc, $0c2d                                     ; $42f3: $01 $2d $0c
	jp nz, $0c2d                                     ; $42f6: $c2 $2d $0c

	ld a, [hl]                                       ; $42f9: $7e
	nop                                              ; $42fa: $00
	ld a, l                                          ; $42fb: $7d
	nop                                              ; $42fc: $00
	cp $ff                                           ; $42fd: $fe $ff
	ret nc                                           ; $42ff: $d0

	ld [hl], b                                       ; $4300: $70
	cp $b5                                           ; $4301: $fe $b5
	pop bc                                           ; $4303: $c1
	ld [bc], a                                       ; $4304: $02
	rst $38                                          ; $4305: $ff
	dec b                                            ; $4306: $05
	ld a, [hl]                                       ; $4307: $7e
	ld bc, $a000                                     ; $4308: $01 $00 $a0
	inc h                                            ; $430b: $24
	jr jr_030_438c                                   ; $430c: $18 $7e

	nop                                              ; $430e: $00
	or c                                             ; $430f: $b1
	ld b, c                                          ; $4310: $41
	nop                                              ; $4311: $00
	nop                                              ; $4312: $00
	inc h                                            ; $4313: $24
	inc c                                            ; $4314: $0c
	or l                                             ; $4315: $b5
	and c                                            ; $4316: $a1
	ld bc, $0206                                     ; $4317: $01 $06 $02
	ld a, [hl]                                       ; $431a: $7e
	add hl, bc                                       ; $431b: $09
	nop                                              ; $431c: $00
	xor d                                            ; $431d: $aa
	dec e                                            ; $431e: $1d
	ld b, $29                                        ; $431f: $06 $29
	ld b, $b1                                        ; $4321: $06 $b1
	ld hl, $0000                                     ; $4323: $21 $00 $00
	add hl, hl                                       ; $4326: $29
	ld b, $b1                                        ; $4327: $06 $b1
	or c                                             ; $4329: $b1
	rst $38                                          ; $432a: $ff
	dec b                                            ; $432b: $05
	jr z, jr_030_433a                                ; $432c: $28 $0c

	add hl, hl                                       ; $432e: $29
	ld b, $b1                                        ; $432f: $06 $b1
	ld hl, $0000                                     ; $4331: $21 $00 $00
	add hl, hl                                       ; $4334: $29
	ld b, $b5                                        ; $4335: $06 $b5
	pop bc                                           ; $4337: $c1
	ld [bc], a                                       ; $4338: $02
	rst $38                                          ; $4339: $ff

jr_030_433a:
	inc bc                                           ; $433a: $03
	ld a, [hl]                                       ; $433b: $7e
	nop                                              ; $433c: $00
	inc h                                            ; $433d: $24
	ld [de], a                                       ; $433e: $12
	sub [hl]                                         ; $433f: $96
	rst $38                                          ; $4340: $ff
	dec b                                            ; $4341: $05
	ld a, [hl]                                       ; $4342: $7e
	ld bc, $a900                                     ; $4343: $01 $00 $a9
	ld h, $18                                        ; $4346: $26 $18
	ld a, [hl]                                       ; $4348: $7e
	nop                                              ; $4349: $00
	or c                                             ; $434a: $b1
	ld sp, $0000                                     ; $434b: $31 $00 $00
	ld h, $0c                                        ; $434e: $26 $0c
	or l                                             ; $4350: $b5
	and c                                            ; $4351: $a1
	ld bc, $02ff                                     ; $4352: $01 $ff $02
	ld a, [hl]                                       ; $4355: $7e
	add hl, bc                                       ; $4356: $09
	nop                                              ; $4357: $00
	xor d                                            ; $4358: $aa
	add hl, hl                                       ; $4359: $29
	ld b, $26                                        ; $435a: $06 $26
	ld b, $b1                                        ; $435c: $06 $b1
	ld hl, $0000                                     ; $435e: $21 $00 $00
	ld h, $06                                        ; $4361: $26 $06
	or c                                             ; $4363: $b1
	or c                                             ; $4364: $b1
	ld b, $02                                        ; $4365: $06 $02
	jr z, @+$08                                      ; $4367: $28 $06

	add hl, hl                                       ; $4369: $29
	ld b, $22                                        ; $436a: $06 $22
	ld b, $b1                                        ; $436c: $06 $b1
	ld hl, $0000                                     ; $436e: $21 $00 $00
	ld [hl+], a                                      ; $4371: $22
	ld b, $b5                                        ; $4372: $06 $b5
	or c                                             ; $4374: $b1
	ld [bc], a                                       ; $4375: $02
	ld [de], a                                       ; $4376: $12
	inc bc                                           ; $4377: $03
	ld h, $12                                        ; $4378: $26 $12
	ld a, [hl]                                       ; $437a: $7e

jr_030_437b:
	ld bc, $a900                                     ; $437b: $01 $00 $a9
	sub [hl]                                         ; $437e: $96
	jr jr_030_4385                                   ; $437f: $18 $04

	dec h                                            ; $4381: $25
	jr jr_030_4402                                   ; $4382: $18 $7e

	nop                                              ; $4384: $00

jr_030_4385:
	or c                                             ; $4385: $b1
	ld b, c                                          ; $4386: $41
	nop                                              ; $4387: $00
	nop                                              ; $4388: $00
	dec h                                            ; $4389: $25
	inc c                                            ; $438a: $0c
	or l                                             ; $438b: $b5

jr_030_438c:
	or c                                             ; $438c: $b1
	ld bc, $0206                                     ; $438d: $01 $06 $02
	ld [hl+], a                                      ; $4390: $22
	ld b, $29                                        ; $4391: $06 $29
	ld b, $b1                                        ; $4393: $06 $b1
	ld sp, $0000                                     ; $4395: $31 $00 $00
	add hl, hl                                       ; $4398: $29
	ld b, $b1                                        ; $4399: $06 $b1
	or c                                             ; $439b: $b1
	ld b, $02                                        ; $439c: $06 $02
	dec h                                            ; $439e: $25
	ld b, $b1                                        ; $439f: $06 $b1
	ld sp, $0000                                     ; $43a1: $31 $00 $00
	dec h                                            ; $43a4: $25
	ld b, $b1                                        ; $43a5: $06 $b1
	or c                                             ; $43a7: $b1
	ld b, $02                                        ; $43a8: $06 $02
	inc h                                            ; $43aa: $24
	ld b, $b1                                        ; $43ab: $06 $b1
	ld sp, $0000                                     ; $43ad: $31 $00 $00
	inc h                                            ; $43b0: $24
	ld b, $b1                                        ; $43b1: $06 $b1
	or c                                             ; $43b3: $b1
	inc c                                            ; $43b4: $0c
	inc bc                                           ; $43b5: $03
	ld [hl+], a                                      ; $43b6: $22
	inc c                                            ; $43b7: $0c
	or c                                             ; $43b8: $b1
	ld sp, $0000                                     ; $43b9: $31 $00 $00
	ld [hl+], a                                      ; $43bc: $22
	ld b, $b5                                        ; $43bd: $06 $b5
	pop bc                                           ; $43bf: $c1
	ld [bc], a                                       ; $43c0: $02
	rst $38                                          ; $43c1: $ff
	inc b                                            ; $43c2: $04
	ld a, [hl]                                       ; $43c3: $7e
	ld bc, $a900                                     ; $43c4: $01 $00 $a9
	inc h                                            ; $43c7: $24
	jr jr_030_437b                                   ; $43c8: $18 $b1

	ld b, c                                          ; $43ca: $41
	nop                                              ; $43cb: $00
	nop                                              ; $43cc: $00
	inc h                                            ; $43cd: $24
	inc c                                            ; $43ce: $0c
	or l                                             ; $43cf: $b5
	and c                                            ; $43d0: $a1
	ld bc, $0206                                     ; $43d1: $01 $06 $02
	ld a, [hl]                                       ; $43d4: $7e
	nop                                              ; $43d5: $00
	add hl, hl                                       ; $43d6: $29
	dec b                                            ; $43d7: $05
	nop                                              ; $43d8: $00
	ld bc, $0629                                     ; $43d9: $01 $29 $06
	or c                                             ; $43dc: $b1
	ld sp, $0000                                     ; $43dd: $31 $00 $00
	add hl, hl                                       ; $43e0: $29
	ld b, $ca                                        ; $43e1: $06 $ca
	add hl, hl                                       ; $43e3: $29
	ld b, $c3                                        ; $43e4: $06 $c3
	add hl, hl                                       ; $43e6: $29
	ld b, $ca                                        ; $43e7: $06 $ca
	add hl, hl                                       ; $43e9: $29
	ld b, $c3                                        ; $43ea: $06 $c3
	add hl, hl                                       ; $43ec: $29
	ld b, $b1                                        ; $43ed: $06 $b1
	and c                                            ; $43ef: $a1
	ld [de], a                                       ; $43f0: $12
	ld b, $7e                                        ; $43f1: $06 $7e
	ld [de], a                                       ; $43f3: $12
	inc c                                            ; $43f4: $0c
	and e                                            ; $43f5: $a3
	daa                                              ; $43f6: $27
	ld [de], a                                       ; $43f7: $12
	or l                                             ; $43f8: $b5
	ld [hl], c                                       ; $43f9: $71
	nop                                              ; $43fa: $00
	nop                                              ; $43fb: $00
	nop                                              ; $43fc: $00
	ld a, [hl]                                       ; $43fd: $7e
	nop                                              ; $43fe: $00
	dec d                                            ; $43ff: $15
	ld b, $c9                                        ; $4400: $06 $c9

jr_030_4402:
	dec e                                            ; $4402: $1d
	ld b, $cb                                        ; $4403: $06 $cb
	inc h                                            ; $4405: $24
	ld b, $cd                                        ; $4406: $06 $cd
	add hl, hl                                       ; $4408: $29
	ld b, $c4                                        ; $4409: $06 $c4
	add hl, hl                                       ; $440b: $29
	ld b, $24                                        ; $440c: $06 $24
	ld b, $b5                                        ; $440e: $06 $b5
	or c                                             ; $4410: $b1
	ld bc, $0206                                     ; $4411: $01 $06 $02
	ld a, [hl]                                       ; $4414: $7e
	add hl, bc                                       ; $4415: $09
	nop                                              ; $4416: $00
	xor d                                            ; $4417: $aa
	dec e                                            ; $4418: $1d
	ld b, $29                                        ; $4419: $06 $29
	ld b, $b1                                        ; $441b: $06 $b1
	ld hl, $0000                                     ; $441d: $21 $00 $00
	add hl, hl                                       ; $4420: $29
	ld b, $b1                                        ; $4421: $06 $b1
	pop bc                                           ; $4423: $c1
	rst $38                                          ; $4424: $ff
	ld b, $28                                        ; $4425: $06 $28
	inc c                                            ; $4427: $0c
	add hl, hl                                       ; $4428: $29
	ld b, $b1                                        ; $4429: $06 $b1
	ld hl, $0000                                     ; $442b: $21 $00 $00
	add hl, hl                                       ; $442e: $29
	ld b, $b5                                        ; $442f: $06 $b5
	and c                                            ; $4431: $a1
	ld [bc], a                                       ; $4432: $02
	ld [de], a                                       ; $4433: $12
	rlca                                             ; $4434: $07
	ld a, [hl]                                       ; $4435: $7e
	nop                                              ; $4436: $00
	inc h                                            ; $4437: $24
	ld [de], a                                       ; $4438: $12
	or l                                             ; $4439: $b5
	ld [hl], c                                       ; $443a: $71
	nop                                              ; $443b: $00
	nop                                              ; $443c: $00
	nop                                              ; $443d: $00
	ld d, $06                                        ; $443e: $16 $06
	ret                                              ; $4440: $c9


	dec e                                            ; $4441: $1d
	ld b, $ca                                        ; $4442: $06 $ca
	ld h, $06                                        ; $4444: $26 $06
	call z, $0629                                    ; $4446: $cc $29 $06
	call nz, $0629                                   ; $4449: $c4 $29 $06
	jp $061f                                         ; $444c: $c3 $1f $06


	or l                                             ; $444f: $b5
	or c                                             ; $4450: $b1
	ld bc, $0206                                     ; $4451: $01 $06 $02
	ld a, [hl]                                       ; $4454: $7e
	add hl, bc                                       ; $4455: $09
	nop                                              ; $4456: $00
	xor d                                            ; $4457: $aa
	add hl, hl                                       ; $4458: $29
	ld b, $26                                        ; $4459: $06 $26
	ld b, $b1                                        ; $445b: $06 $b1
	ld hl, $0000                                     ; $445d: $21 $00 $00
	ld h, $06                                        ; $4460: $26 $06
	or c                                             ; $4462: $b1
	or c                                             ; $4463: $b1
	ld b, $02                                        ; $4464: $06 $02
	jr z, @+$08                                      ; $4466: $28 $06

	add hl, hl                                       ; $4468: $29
	ld b, $22                                        ; $4469: $06 $22
	ld b, $b1                                        ; $446b: $06 $b1
	ld hl, $0000                                     ; $446d: $21 $00 $00
	ld [hl+], a                                      ; $4470: $22
	ld b, $b5                                        ; $4471: $06 $b5
	or c                                             ; $4473: $b1
	ld [bc], a                                       ; $4474: $02
	ld [de], a                                       ; $4475: $12
	inc b                                            ; $4476: $04
	ld h, $12                                        ; $4477: $26 $12
	or c                                             ; $4479: $b1
	pop bc                                           ; $447a: $c1

jr_030_447b:
	jr jr_030_4482                                   ; $447b: $18 $05

	ld a, [hl]                                       ; $447d: $7e
	ld bc, $a000                                     ; $447e: $01 $00 $a0
	dec h                                            ; $4481: $25

jr_030_4482:
	jr jr_030_4502                                   ; $4482: $18 $7e

	nop                                              ; $4484: $00
	or c                                             ; $4485: $b1
	ld d, c                                          ; $4486: $51
	nop                                              ; $4487: $00
	nop                                              ; $4488: $00
	dec h                                            ; $4489: $25
	inc c                                            ; $448a: $0c
	or l                                             ; $448b: $b5
	or c                                             ; $448c: $b1
	ld bc, $0206                                     ; $448d: $01 $06 $02
	ld [hl+], a                                      ; $4490: $22
	ld b, $29                                        ; $4491: $06 $29
	ld b, $b1                                        ; $4493: $06 $b1
	ld sp, $0000                                     ; $4495: $31 $00 $00
	add hl, hl                                       ; $4498: $29
	ld b, $b1                                        ; $4499: $06 $b1
	or c                                             ; $449b: $b1
	ld b, $02                                        ; $449c: $06 $02
	dec h                                            ; $449e: $25
	ld b, $b1                                        ; $449f: $06 $b1
	ld sp, $0000                                     ; $44a1: $31 $00 $00
	dec h                                            ; $44a4: $25
	ld b, $b1                                        ; $44a5: $06 $b1
	or c                                             ; $44a7: $b1
	ld b, $02                                        ; $44a8: $06 $02
	inc h                                            ; $44aa: $24
	ld b, $b1                                        ; $44ab: $06 $b1
	ld sp, $0000                                     ; $44ad: $31 $00 $00
	inc h                                            ; $44b0: $24
	ld b, $b1                                        ; $44b1: $06 $b1
	or c                                             ; $44b3: $b1
	inc c                                            ; $44b4: $0c
	inc bc                                           ; $44b5: $03
	ld [hl+], a                                      ; $44b6: $22
	inc c                                            ; $44b7: $0c
	or c                                             ; $44b8: $b1
	ld sp, $0000                                     ; $44b9: $31 $00 $00
	ld [hl+], a                                      ; $44bc: $22
	ld b, $b5                                        ; $44bd: $06 $b5
	pop bc                                           ; $44bf: $c1
	ld [bc], a                                       ; $44c0: $02
	jr @+$05                                         ; $44c1: $18 $03

	ld a, [hl]                                       ; $44c3: $7e
	ld bc, $a000                                     ; $44c4: $01 $00 $a0
	inc h                                            ; $44c7: $24
	jr jr_030_447b                                   ; $44c8: $18 $b1

	ld b, c                                          ; $44ca: $41
	nop                                              ; $44cb: $00
	nop                                              ; $44cc: $00
	inc h                                            ; $44cd: $24
	inc c                                            ; $44ce: $0c
	or l                                             ; $44cf: $b5
	and c                                            ; $44d0: $a1
	ld bc, $0206                                     ; $44d1: $01 $06 $02
	ld a, [hl]                                       ; $44d4: $7e
	nop                                              ; $44d5: $00
	add hl, hl                                       ; $44d6: $29
	dec b                                            ; $44d7: $05
	nop                                              ; $44d8: $00
	ld bc, $0629                                     ; $44d9: $01 $29 $06
	or c                                             ; $44dc: $b1
	ld sp, $0000                                     ; $44dd: $31 $00 $00
	add hl, hl                                       ; $44e0: $29
	ld b, $ca                                        ; $44e1: $06 $ca
	add hl, hl                                       ; $44e3: $29
	ld b, $c3                                        ; $44e4: $06 $c3
	add hl, hl                                       ; $44e6: $29
	ld b, $ca                                        ; $44e7: $06 $ca
	add hl, hl                                       ; $44e9: $29
	ld b, $c3                                        ; $44ea: $06 $c3
	add hl, hl                                       ; $44ec: $29
	ld b, $b1                                        ; $44ed: $06 $b1
	add c                                            ; $44ef: $81
	ld [de], a                                       ; $44f0: $12
	ld b, $7e                                        ; $44f1: $06 $7e
	ld [de], a                                       ; $44f3: $12
	inc c                                            ; $44f4: $0c
	and e                                            ; $44f5: $a3
	daa                                              ; $44f6: $27
	ld [de], a                                       ; $44f7: $12
	sub b                                            ; $44f8: $90
	nop                                              ; $44f9: $00
	ld [de], a                                       ; $44fa: $12
	jp z, $027e                                      ; $44fb: $ca $7e $02

	nop                                              ; $44fe: $00
	xor c                                            ; $44ff: $a9
	add hl, hl                                       ; $4500: $29
	rlca                                             ; $4501: $07

jr_030_4502:
	ld a, [hl]                                       ; $4502: $7e
	nop                                              ; $4503: $00
	jp $0529                                         ; $4504: $c3 $29 $05


	jp nz, $0629                                     ; $4507: $c2 $29 $06

	sub d                                            ; $450a: $92
	jp $0135                                         ; $450b: $c3 $35 $01


	ret                                              ; $450e: $c9


	add hl, hl                                       ; $450f: $29
	dec b                                            ; $4510: $05
	jp $0135                                         ; $4511: $c3 $35 $01


	ret                                              ; $4514: $c9


	add hl, hl                                       ; $4515: $29
	dec b                                            ; $4516: $05
	jp $0135                                         ; $4517: $c3 $35 $01


	ret                                              ; $451a: $c9


	add hl, hl                                       ; $451b: $29
	dec b                                            ; $451c: $05
	jp $0137                                         ; $451d: $c3 $37 $01


	ret                                              ; $4520: $c9


	dec hl                                           ; $4521: $2b
	dec b                                            ; $4522: $05
	jp nz, $062b                                     ; $4523: $c2 $2b $06

	jp $0135                                         ; $4526: $c3 $35 $01


	ret                                              ; $4529: $c9


	add hl, hl                                       ; $452a: $29
	dec b                                            ; $452b: $05
	jp nz, $0629                                     ; $452c: $c2 $29 $06

	jp $0130                                         ; $452f: $c3 $30 $01


	ret                                              ; $4532: $c9


	inc h                                            ; $4533: $24
	dec b                                            ; $4534: $05
	jp $0135                                         ; $4535: $c3 $35 $01


	ret                                              ; $4538: $c9


	add hl, hl                                       ; $4539: $29
	dec b                                            ; $453a: $05
	jp nz, $0629                                     ; $453b: $c2 $29 $06

	jp $0133                                         ; $453e: $c3 $33 $01


	ret                                              ; $4541: $c9


	daa                                              ; $4542: $27
	dec b                                            ; $4543: $05
	jp nz, $0627                                     ; $4544: $c2 $27 $06

	jp $012e                                         ; $4547: $c3 $2e $01


	ret                                              ; $454a: $c9


	ld [hl+], a                                      ; $454b: $22
	dec b                                            ; $454c: $05
	jp $0133                                         ; $454d: $c3 $33 $01


	ret                                              ; $4550: $c9


	daa                                              ; $4551: $27
	dec b                                            ; $4552: $05
	jp nz, $0627                                     ; $4553: $c2 $27 $06

	jp $0137                                         ; $4556: $c3 $37 $01


	ret                                              ; $4559: $c9


	dec hl                                           ; $455a: $2b
	dec b                                            ; $455b: $05
	jp $0133                                         ; $455c: $c3 $33 $01


	ret                                              ; $455f: $c9


	daa                                              ; $4560: $27
	dec b                                            ; $4561: $05
	or c                                             ; $4562: $b1
	ld [hl], c                                       ; $4563: $71
	ld b, $03                                        ; $4564: $06 $03
	daa                                              ; $4566: $27
	ld b, $c6                                        ; $4567: $06 $c6
	daa                                              ; $4569: $27
	ld b, $b1                                        ; $456a: $06 $b1
	ld d, c                                          ; $456c: $51
	ld b, $02                                        ; $456d: $06 $02
	daa                                              ; $456f: $27
	ld b, $c4                                        ; $4570: $06 $c4
	daa                                              ; $4572: $27
	ld b, $c3                                        ; $4573: $06 $c3
	daa                                              ; $4575: $27
	ld b, $c2                                        ; $4576: $06 $c2
	daa                                              ; $4578: $27
	ld b, $c1                                        ; $4579: $06 $c1
	daa                                              ; $457b: $27
	ld b, $b1                                        ; $457c: $06 $b1
	ld sp, $0000                                     ; $457e: $31 $00 $00
	inc sp                                           ; $4581: $33
	ld bc, $27c9                                     ; $4582: $01 $c9 $27
	dec b                                            ; $4585: $05
	jp $0137                                         ; $4586: $c3 $37 $01


	ret                                              ; $4589: $c9


	dec hl                                           ; $458a: $2b
	dec b                                            ; $458b: $05
	jp $0138                                         ; $458c: $c3 $38 $01


	ret                                              ; $458f: $c9


	inc l                                            ; $4590: $2c
	dec b                                            ; $4591: $05
	call nz, $062c                                   ; $4592: $c4 $2c $06
	jp $062c                                         ; $4595: $c3 $2c $06


	jp nz, $062c                                     ; $4598: $c2 $2c $06

	pop bc                                           ; $459b: $c1
	inc l                                            ; $459c: $2c
	ld b, $c8                                        ; $459d: $06 $c8
	sub e                                            ; $459f: $93
	ld a, [hl]                                       ; $45a0: $7e
	ld [de], a                                       ; $45a1: $12
	inc c                                            ; $45a2: $0c
	and e                                            ; $45a3: $a3
	inc l                                            ; $45a4: $2c
	ld [de], a                                       ; $45a5: $12
	ld a, [hl]                                       ; $45a6: $7e
	nop                                              ; $45a7: $00
	sub d                                            ; $45a8: $92
	jp $013a                                         ; $45a9: $c3 $3a $01


	ret                                              ; $45ac: $c9


	ld l, $05                                        ; $45ad: $2e $05
	call nz, $062e                                   ; $45af: $c4 $2e $06
	jp $062e                                         ; $45b2: $c3 $2e $06


	jp nz, $062e                                     ; $45b5: $c2 $2e $06

	pop bc                                           ; $45b8: $c1
	ld l, $06                                        ; $45b9: $2e $06
	ret z                                            ; $45bb: $c8

	sub e                                            ; $45bc: $93
	ld a, [hl]                                       ; $45bd: $7e
	ld [de], a                                       ; $45be: $12
	inc c                                            ; $45bf: $0c
	and e                                            ; $45c0: $a3
	ld l, $12                                        ; $45c1: $2e $12
	ld a, [hl]                                       ; $45c3: $7e
	nop                                              ; $45c4: $00
	sub d                                            ; $45c5: $92
	jp $0139                                         ; $45c6: $c3 $39 $01


	ret                                              ; $45c9: $c9


	dec l                                            ; $45ca: $2d
	dec b                                            ; $45cb: $05
	jp nz, $062d                                     ; $45cc: $c2 $2d $06

	pop bc                                           ; $45cf: $c1
	dec l                                            ; $45d0: $2d
	ld b, $00                                        ; $45d1: $06 $00
	ld e, $00                                        ; $45d3: $1e $00
	ld b, $93                                        ; $45d5: $06 $93
	ret z                                            ; $45d7: $c8

	dec hl                                           ; $45d8: $2b
	ld de, $0100                                     ; $45d9: $11 $00 $01
	dec l                                            ; $45dc: $2d
	inc c                                            ; $45dd: $0c
	jp nz, $0c2d                                     ; $45de: $c2 $2d $0c

	cp $ff                                           ; $45e1: $fe $ff
	ret nc                                           ; $45e3: $d0

	ld [hl], b                                       ; $45e4: $70
	cp $8b                                           ; $45e5: $fe $8b
	jp nz, $11fb                                     ; $45e7: $c2 $fb $11

	inc c                                            ; $45ea: $0c
	jp nz, $0c1d                                     ; $45eb: $c2 $1d $0c

	ld de, $1d0c                                     ; $45ee: $11 $0c $1d
	ld b, $11                                        ; $45f1: $06 $11
	ld b, $c6                                        ; $45f3: $06 $c6
	ld de, $c206                                     ; $45f5: $11 $06 $c2
	ld de, $1d06                                     ; $45f8: $11 $06 $1d
	inc c                                            ; $45fb: $0c
	ld de, $1d0c                                     ; $45fc: $11 $0c $1d
	inc c                                            ; $45ff: $0c
	ei                                               ; $4600: $fb
	inc bc                                           ; $4601: $03
	jp nz, $0c11                                     ; $4602: $c2 $11 $0c

	dec e                                            ; $4605: $1d
	inc c                                            ; $4606: $0c
	ld de, $1d0c                                     ; $4607: $11 $0c $1d
	ld b, $11                                        ; $460a: $06 $11
	ld b, $c6                                        ; $460c: $06 $c6
	ld de, $c206                                     ; $460e: $11 $06 $c2
	ld de, $c606                                     ; $4611: $11 $06 $c6
	ld de, $c206                                     ; $4614: $11 $06 $c2
	ld de, $c606                                     ; $4617: $11 $06 $c6
	ld de, $c206                                     ; $461a: $11 $06 $c2
	rrca                                             ; $461d: $0f
	db $10                                           ; $461e: $10
	call nz, $020f                                   ; $461f: $c4 $0f $02
	jp nz, $fb8b                                     ; $4622: $c2 $8b $fb

	jp nz, $0c11                                     ; $4625: $c2 $11 $0c

	dec e                                            ; $4628: $1d
	inc c                                            ; $4629: $0c
	ld de, $1d0c                                     ; $462a: $11 $0c $1d
	ld b, $11                                        ; $462d: $06 $11
	ld b, $c6                                        ; $462f: $06 $c6
	ld de, $c206                                     ; $4631: $11 $06 $c2
	ld de, $1d06                                     ; $4634: $11 $06 $1d
	inc c                                            ; $4637: $0c
	ld de, $1d0c                                     ; $4638: $11 $0c $1d
	inc c                                            ; $463b: $0c
	ei                                               ; $463c: $fb
	inc bc                                           ; $463d: $03
	jp nz, $0c11                                     ; $463e: $c2 $11 $0c

	dec e                                            ; $4641: $1d
	inc c                                            ; $4642: $0c
	ld de, $1d0c                                     ; $4643: $11 $0c $1d
	ld b, $11                                        ; $4646: $06 $11
	ld b, $c6                                        ; $4648: $06 $c6
	ld de, $c206                                     ; $464a: $11 $06 $c2
	ld de, $c606                                     ; $464d: $11 $06 $c6
	ld de, $c206                                     ; $4650: $11 $06 $c2
	ld de, $c606                                     ; $4653: $11 $06 $c6
	ld de, $c206                                     ; $4656: $11 $06 $c2
	rrca                                             ; $4659: $0f
	db $10                                           ; $465a: $10
	call nz, $020f                                   ; $465b: $c4 $0f $02
	jp nz, $fb8b                                     ; $465e: $c2 $8b $fb

	ld de, $c40a                                     ; $4661: $11 $0a $c4
	ld de, $c202                                     ; $4664: $11 $02 $c2
	dec b                                            ; $4667: $05
	inc c                                            ; $4668: $0c
	ld de, $c60a                                     ; $4669: $11 $0a $c6
	ld de, $c202                                     ; $466c: $11 $02 $c2
	ld de, $0506                                     ; $466f: $11 $06 $05
	ld b, $c6                                        ; $4672: $06 $c6
	dec b                                            ; $4674: $05
	ld b, $c2                                        ; $4675: $06 $c2
	dec b                                            ; $4677: $05
	ld b, $11                                        ; $4678: $06 $11
	ld a, [bc]                                       ; $467a: $0a
	add $11                                          ; $467b: $c6 $11
	ld [bc], a                                       ; $467d: $02
	jp nz, $0c05                                     ; $467e: $c2 $05 $0c

	ld de, $fb0c                                     ; $4681: $11 $0c $fb
	ld [bc], a                                       ; $4684: $02
	dec c                                            ; $4685: $0d
	ld a, [bc]                                       ; $4686: $0a
	call nz, $020d                                   ; $4687: $c4 $0d $02
	jp nz, $0c19                                     ; $468a: $c2 $19 $0c

	dec c                                            ; $468d: $0d
	ld a, [bc]                                       ; $468e: $0a
	add $0d                                          ; $468f: $c6 $0d
	ld [bc], a                                       ; $4691: $02
	jp nz, $0619                                     ; $4692: $c2 $19 $06

	rrca                                             ; $4695: $0f
	ld b, $c6                                        ; $4696: $06 $c6
	rrca                                             ; $4698: $0f
	ld b, $c2                                        ; $4699: $06 $c2
	rrca                                             ; $469b: $0f
	ld b, $1b                                        ; $469c: $06 $1b
	ld a, [bc]                                       ; $469e: $0a
	add $1b                                          ; $469f: $c6 $1b
	ld [bc], a                                       ; $46a1: $02
	jp nz, $0c0f                                     ; $46a2: $c2 $0f $0c

	dec de                                           ; $46a5: $1b
	inc c                                            ; $46a6: $0c
	ld de, $c40c                                     ; $46a7: $11 $0c $c4
	ld de, $c606                                     ; $46aa: $11 $06 $c6
	ld de, $0006                                     ; $46ad: $11 $06 $00
	ld e, $c2                                        ; $46b0: $1e $c2
	rrca                                             ; $46b2: $0f
	db $10                                           ; $46b3: $10
	add $0f                                          ; $46b4: $c6 $0f
	ld [bc], a                                       ; $46b6: $02
	jp nz, $0c11                                     ; $46b7: $c2 $11 $0c

	add $11                                          ; $46ba: $c6 $11
	inc c                                            ; $46bc: $0c
	cp $ff                                           ; $46bd: $fe $ff
	ret nc                                           ; $46bf: $d0

	ld [hl], b                                       ; $46c0: $70
	cp $fb                                           ; $46c1: $fe $fb
	cp [hl]                                          ; $46c3: $be
	ld b, $0b                                        ; $46c4: $06 $0b
	ld [de], a                                       ; $46c6: $12
	add hl, bc                                       ; $46c7: $09
	ld [de], a                                       ; $46c8: $12
	ld c, a                                          ; $46c9: $4f
	ld [de], a                                       ; $46ca: $12
	add hl, bc                                       ; $46cb: $09
	dec bc                                           ; $46cc: $0b
	cp [hl]                                          ; $46cd: $be
	cp [hl]                                          ; $46ce: $be
	ld b, $12                                        ; $46cf: $06 $12
	add hl, de                                       ; $46d1: $19
	add hl, de                                       ; $46d2: $19
	ld [de], a                                       ; $46d3: $12
	ld c, a                                          ; $46d4: $4f
	cp [hl]                                          ; $46d5: $be
	add hl, de                                       ; $46d6: $19
	inc bc                                           ; $46d7: $03
	ld [de], a                                       ; $46d8: $12
	inc bc                                           ; $46d9: $03
	add hl, bc                                       ; $46da: $09
	ld b, $12                                        ; $46db: $06 $12
	ld b, $fb                                        ; $46dd: $06 $fb
	inc bc                                           ; $46df: $03
	cp [hl]                                          ; $46e0: $be
	ld b, $0b                                        ; $46e1: $06 $0b
	ld [de], a                                       ; $46e3: $12
	add hl, bc                                       ; $46e4: $09
	ld [de], a                                       ; $46e5: $12
	ld c, a                                          ; $46e6: $4f
	ld [de], a                                       ; $46e7: $12
	add hl, bc                                       ; $46e8: $09
	cp [hl]                                          ; $46e9: $be
	ld d, $03                                        ; $46ea: $16 $03
	ld d, $03                                        ; $46ec: $16 $03
	cp [hl]                                          ; $46ee: $be
	ld b, $4f                                        ; $46ef: $06 $4f
	jr jr_030_46fc                                   ; $46f1: $18 $09

	jr jr_030_4702                                   ; $46f3: $18 $0d

	cp [hl]                                          ; $46f5: $be
	jr jr_030_470a                                   ; $46f6: $18 $12

	cp [hl]                                          ; $46f8: $be
	ld b, $0b                                        ; $46f9: $06 $0b
	ld [de], a                                       ; $46fb: $12

jr_030_46fc:
	add hl, bc                                       ; $46fc: $09
	inc de                                           ; $46fd: $13
	ld c, a                                          ; $46fe: $4f
	add hl, bc                                       ; $46ff: $09
	ld d, $0c                                        ; $4700: $16 $0c

jr_030_4702:
	cp [hl]                                          ; $4702: $be
	cp [hl]                                          ; $4703: $be
	ld b, $12                                        ; $4704: $06 $12
	add hl, de                                       ; $4706: $19
	add hl, de                                       ; $4707: $19
	ld [de], a                                       ; $4708: $12
	ld c, a                                          ; $4709: $4f

jr_030_470a:
	cp [hl]                                          ; $470a: $be
	add hl, de                                       ; $470b: $19
	inc bc                                           ; $470c: $03
	ld [de], a                                       ; $470d: $12
	inc bc                                           ; $470e: $03
	add hl, bc                                       ; $470f: $09
	ld b, $12                                        ; $4710: $06 $12
	ld b, $fb                                        ; $4712: $06 $fb
	cp [hl]                                          ; $4714: $be
	ld b, $0b                                        ; $4715: $06 $0b
	ld [de], a                                       ; $4717: $12
	add hl, bc                                       ; $4718: $09
	ld [de], a                                       ; $4719: $12
	ld c, a                                          ; $471a: $4f
	ld [de], a                                       ; $471b: $12
	add hl, bc                                       ; $471c: $09
	dec bc                                           ; $471d: $0b
	cp [hl]                                          ; $471e: $be
	cp [hl]                                          ; $471f: $be
	ld b, $12                                        ; $4720: $06 $12
	add hl, de                                       ; $4722: $19
	add hl, de                                       ; $4723: $19
	ld [de], a                                       ; $4724: $12
	ld c, a                                          ; $4725: $4f
	cp [hl]                                          ; $4726: $be
	add hl, de                                       ; $4727: $19
	inc bc                                           ; $4728: $03
	ld [de], a                                       ; $4729: $12
	inc bc                                           ; $472a: $03
	add hl, bc                                       ; $472b: $09
	ld b, $12                                        ; $472c: $06 $12
	ld b, $fb                                        ; $472e: $06 $fb
	ld [bc], a                                       ; $4730: $02
	cp [hl]                                          ; $4731: $be
	ld b, $0b                                        ; $4732: $06 $0b
	ld [de], a                                       ; $4734: $12
	add hl, bc                                       ; $4735: $09
	ld [de], a                                       ; $4736: $12
	ld c, a                                          ; $4737: $4f
	ld [de], a                                       ; $4738: $12
	add hl, bc                                       ; $4739: $09
	dec bc                                           ; $473a: $0b
	cp [hl]                                          ; $473b: $be
	cp [hl]                                          ; $473c: $be
	ld b, $0d                                        ; $473d: $06 $0d
	dec bc                                           ; $473f: $0b
	ld c, a                                          ; $4740: $4f
	dec bc                                           ; $4741: $0b
	ld c, a                                          ; $4742: $4f
	cp [hl]                                          ; $4743: $be
	dec [hl]                                         ; $4744: $35
	ld [de], a                                       ; $4745: $12
	cp [hl]                                          ; $4746: $be
	ld b, $0b                                        ; $4747: $06 $0b
	ld [de], a                                       ; $4749: $12
	add hl, bc                                       ; $474a: $09
	inc c                                            ; $474b: $0c
	ld [de], a                                       ; $474c: $12
	add hl, bc                                       ; $474d: $09
	ld [de], a                                       ; $474e: $12
	inc de                                           ; $474f: $13
	add hl, bc                                       ; $4750: $09
	cp [hl]                                          ; $4751: $be
	ld [de], a                                       ; $4752: $12
	inc bc                                           ; $4753: $03
	ld [de], a                                       ; $4754: $12
	inc bc                                           ; $4755: $03
	dec bc                                           ; $4756: $0b
	ld b, $12                                        ; $4757: $06 $12
	ld b, $4f                                        ; $4759: $06 $4f
	ld b, $19                                        ; $475b: $06 $19
	inc bc                                           ; $475d: $03
	ld [de], a                                       ; $475e: $12
	inc bc                                           ; $475f: $03
	add hl, bc                                       ; $4760: $09
	ld b, $12                                        ; $4761: $06 $12
	ld b, $be                                        ; $4763: $06 $be
	ld b, $0b                                        ; $4765: $06 $0b
	ld [de], a                                       ; $4767: $12
	add hl, bc                                       ; $4768: $09
	ld [de], a                                       ; $4769: $12
	ld c, a                                          ; $476a: $4f
	ld [de], a                                       ; $476b: $12
	add hl, bc                                       ; $476c: $09
	dec bc                                           ; $476d: $0b
	ld [de], a                                       ; $476e: $12
	add hl, de                                       ; $476f: $19
	add hl, de                                       ; $4770: $19
	ld [de], a                                       ; $4771: $12
	ld c, a                                          ; $4772: $4f
	cp [hl]                                          ; $4773: $be
	add hl, de                                       ; $4774: $19
	inc bc                                           ; $4775: $03
	ld [de], a                                       ; $4776: $12
	inc bc                                           ; $4777: $03
	add hl, bc                                       ; $4778: $09
	ld b, $12                                        ; $4779: $06 $12
	ld b, $be                                        ; $477b: $06 $be
	ld b, $0b                                        ; $477d: $06 $0b
	ld [de], a                                       ; $477f: $12
	add hl, bc                                       ; $4780: $09
	ld [de], a                                       ; $4781: $12
	ld c, a                                          ; $4782: $4f
	ld [de], a                                       ; $4783: $12
	add hl, bc                                       ; $4784: $09
	dec bc                                           ; $4785: $0b
	cp [hl]                                          ; $4786: $be
	cp [hl]                                          ; $4787: $be
	ld b, $12                                        ; $4788: $06 $12
	dec bc                                           ; $478a: $0b
	add hl, de                                       ; $478b: $19
	ld [de], a                                       ; $478c: $12
	ld c, a                                          ; $478d: $4f
	ld [de], a                                       ; $478e: $12
	add hl, bc                                       ; $478f: $09
	cp [hl]                                          ; $4790: $be
	inc de                                           ; $4791: $13
	inc bc                                           ; $4792: $03
	inc de                                           ; $4793: $13
	inc bc                                           ; $4794: $03
	ld c, a                                          ; $4795: $4f
	ld b, $0d                                        ; $4796: $06 $0d
	inc bc                                           ; $4798: $03
	dec c                                            ; $4799: $0d
	inc bc                                           ; $479a: $03
	cp [hl]                                          ; $479b: $be
	ld b, $0d                                        ; $479c: $06 $0d
	dec c                                            ; $479e: $0d
	dec c                                            ; $479f: $0d
	dec c                                            ; $47a0: $0d

jr_030_47a1:
	dec c                                            ; $47a1: $0d
	dec c                                            ; $47a2: $0d
	cp [hl]                                          ; $47a3: $be
	ld c, a                                          ; $47a4: $4f
	ld b, $18                                        ; $47a5: $06 $18
	ld [de], a                                       ; $47a7: $12
	ld a, [bc]                                       ; $47a8: $0a
	inc c                                            ; $47a9: $0c
	ld c, a                                          ; $47aa: $4f
	ld b, $4f                                        ; $47ab: $06 $4f
	ld b, $fe                                        ; $47ad: $06 $fe
	rst $38                                          ; $47af: $ff
	ret nc                                           ; $47b0: $d0

	ld a, e                                          ; $47b1: $7b
	cp $b5                                           ; $47b2: $fe $b5
	pop bc                                           ; $47b4: $c1
	nop                                              ; $47b5: $00
	rst $38                                          ; $47b6: $ff
	dec b                                            ; $47b7: $05
	jr nz, jr_030_47cc                               ; $47b8: $20 $12

	rra                                              ; $47ba: $1f
	ld b, $20                                        ; $47bb: $06 $20
	ld [de], a                                       ; $47bd: $12
	rra                                              ; $47be: $1f
	ld b, $20                                        ; $47bf: $06 $20
	ld b, $c3                                        ; $47c1: $06 $c3
	jr nz, @+$08                                     ; $47c3: $20 $06

	ret                                              ; $47c5: $c9


	ld [hl+], a                                      ; $47c6: $22
	ld b, $c3                                        ; $47c7: $06 $c3
	ld [hl+], a                                      ; $47c9: $22
	ld b, $c9                                        ; $47ca: $06 $c9

jr_030_47cc:
	dec h                                            ; $47cc: $25
	ld b, $c3                                        ; $47cd: $06 $c3
	dec h                                            ; $47cf: $25
	ld b, $ca                                        ; $47d0: $06 $ca
	daa                                              ; $47d2: $27
	ld b, $c3                                        ; $47d3: $06 $c3
	daa                                              ; $47d5: $27
	ld b, $ca                                        ; $47d6: $06 $ca
	dec h                                            ; $47d8: $25
	ld b, $c3                                        ; $47d9: $06 $c3
	dec h                                            ; $47db: $25
	ld b, $ca                                        ; $47dc: $06 $ca
	jr nz, jr_030_47e5                               ; $47de: $20 $05

	nop                                              ; $47e0: $00
	ld bc, $0520                                     ; $47e1: $01 $20 $05
	nop                                              ; $47e4: $00

jr_030_47e5:
	ld bc, $20ca                                     ; $47e5: $01 $ca $20
	ld b, $c3                                        ; $47e8: $06 $c3
	jr nz, @+$08                                     ; $47ea: $20 $06

	jp z, $051f                                      ; $47ec: $ca $1f $05

	nop                                              ; $47ef: $00
	ld bc, $0520                                     ; $47f0: $01 $20 $05
	nop                                              ; $47f3: $00
	ld bc, $a1b1                                     ; $47f4: $01 $b1 $a1
	rst $38                                          ; $47f7: $ff
	ld b, $25                                        ; $47f8: $06 $25
	inc h                                            ; $47fa: $24
	or c                                             ; $47fb: $b1
	ld sp, $0000                                     ; $47fc: $31 $00 $00
	dec h                                            ; $47ff: $25
	inc c                                            ; $4800: $0c
	or l                                             ; $4801: $b5
	sub c                                            ; $4802: $91
	ld [bc], a                                       ; $4803: $02
	rst $38                                          ; $4804: $ff
	inc b                                            ; $4805: $04
	ld a, [hl+]                                      ; $4806: $2a
	jr @-$3c                                         ; $4807: $18 $c2

	ld a, [hl+]                                      ; $4809: $2a
	inc c                                            ; $480a: $0c
	ret                                              ; $480b: $c9


	ld a, [hl+]                                      ; $480c: $2a
	inc c                                            ; $480d: $0c
	add hl, hl                                       ; $480e: $29
	jr jr_030_47a1                                   ; $480f: $18 $90

	call z, $0c20                                    ; $4811: $cc $20 $0c
	add $20                                          ; $4814: $c6 $20
	inc b                                            ; $4816: $04
	ret z                                            ; $4817: $c8

	ld [hl+], a                                      ; $4818: $22
	inc b                                            ; $4819: $04
	ret                                              ; $481a: $c9


	dec h                                            ; $481b: $25
	inc b                                            ; $481c: $04
	sla a                                            ; $481d: $cb $27
	ld b, $c3                                        ; $481f: $06 $c3
	daa                                              ; $4821: $27
	ld b, $cb                                        ; $4822: $06 $cb
	daa                                              ; $4824: $27
	ld d, $c3                                        ; $4825: $16 $c3
	daa                                              ; $4827: $27
	ld [bc], a                                       ; $4828: $02
	call z, $0627                                    ; $4829: $cc $27 $06
	jp $0627                                         ; $482c: $c3 $27 $06


	adc $20                                          ; $482f: $ce $20
	ld b, $c3                                        ; $4831: $06 $c3

jr_030_4833:
	jr nz, jr_030_483b                               ; $4833: $20 $06

	sub d                                            ; $4835: $92
	res 7, [hl]                                      ; $4836: $cb $be
	ld b, $20                                        ; $4838: $06 $20
	ld [hl+], a                                      ; $483a: $22

jr_030_483b:
	inc h                                            ; $483b: $24
	ld [hl+], a                                      ; $483c: $22
	jr nz, @-$40                                     ; $483d: $20 $be

	or c                                             ; $483f: $b1
	ld sp, $0000                                     ; $4840: $31 $00 $00
	jr nz, @+$08                                     ; $4843: $20 $06

	or l                                             ; $4845: $b5
	pop bc                                           ; $4846: $c1
	nop                                              ; $4847: $00
	rst $38                                          ; $4848: $ff
	dec b                                            ; $4849: $05
	jr nz, jr_030_485e                               ; $484a: $20 $12

	rra                                              ; $484c: $1f
	ld b, $20                                        ; $484d: $06 $20
	ld [de], a                                       ; $484f: $12
	rra                                              ; $4850: $1f
	ld b, $20                                        ; $4851: $06 $20
	ld b, $c3                                        ; $4853: $06 $c3
	jr nz, @+$08                                     ; $4855: $20 $06

	ret                                              ; $4857: $c9


	ld [hl+], a                                      ; $4858: $22
	ld b, $c3                                        ; $4859: $06 $c3
	ld [hl+], a                                      ; $485b: $22
	ld b, $c9                                        ; $485c: $06 $c9

jr_030_485e:
	dec h                                            ; $485e: $25
	ld b, $c3                                        ; $485f: $06 $c3
	dec h                                            ; $4861: $25
	ld b, $ca                                        ; $4862: $06 $ca
	daa                                              ; $4864: $27
	ld b, $c3                                        ; $4865: $06 $c3
	daa                                              ; $4867: $27
	ld b, $ca                                        ; $4868: $06 $ca
	add hl, hl                                       ; $486a: $29
	ld b, $c3                                        ; $486b: $06 $c3
	add hl, hl                                       ; $486d: $29
	ld b, $ca                                        ; $486e: $06 $ca
	jr nz, jr_030_4877                               ; $4870: $20 $05

	nop                                              ; $4872: $00
	ld bc, $0520                                     ; $4873: $01 $20 $05
	nop                                              ; $4876: $00

jr_030_4877:
	ld bc, $20ca                                     ; $4877: $01 $ca $20
	ld b, $c3                                        ; $487a: $06 $c3
	jr nz, @+$08                                     ; $487c: $20 $06

	rr a                                             ; $487e: $cb $1f
	dec b                                            ; $4880: $05
	nop                                              ; $4881: $00
	ld bc, $0520                                     ; $4882: $01 $20 $05
	nop                                              ; $4885: $00
	ld bc, $a1b1                                     ; $4886: $01 $b1 $a1
	inc h                                            ; $4889: $24
	ld b, $29                                        ; $488a: $06 $29
	inc h                                            ; $488c: $24
	or c                                             ; $488d: $b1
	ld sp, $0000                                     ; $488e: $31 $00 $00
	add hl, hl                                       ; $4891: $29
	inc c                                            ; $4892: $0c
	or l                                             ; $4893: $b5
	add c                                            ; $4894: $81
	ld [bc], a                                       ; $4895: $02
	rst $38                                          ; $4896: $ff
	inc b                                            ; $4897: $04
	ld a, [hl+]                                      ; $4898: $2a
	jr @-$3c                                         ; $4899: $18 $c2

	ld a, [hl+]                                      ; $489b: $2a
	inc c                                            ; $489c: $0c
	ret                                              ; $489d: $c9


	ld a, [hl+]                                      ; $489e: $2a
	inc c                                            ; $489f: $0c
	add hl, hl                                       ; $48a0: $29
	jr jr_030_4833                                   ; $48a1: $18 $90

	jp z, $0c20                                      ; $48a3: $ca $20 $0c

	add $20                                          ; $48a6: $c6 $20
	inc b                                            ; $48a8: $04
	ret z                                            ; $48a9: $c8

	ld [hl+], a                                      ; $48aa: $22
	inc b                                            ; $48ab: $04
	ret                                              ; $48ac: $c9


	dec h                                            ; $48ad: $25
	inc b                                            ; $48ae: $04
	sla a                                            ; $48af: $cb $27
	ld b, $c3                                        ; $48b1: $06 $c3
	daa                                              ; $48b3: $27
	ld b, $cb                                        ; $48b4: $06 $cb
	dec h                                            ; $48b6: $25
	ld b, $c3                                        ; $48b7: $06 $c3
	dec h                                            ; $48b9: $25
	ld b, $ca                                        ; $48ba: $06 $ca
	jr nz, jr_030_48c4                               ; $48bc: $20 $06

	jp $0620                                         ; $48be: $c3 $20 $06


	jp z, $061e                                      ; $48c1: $ca $1e $06

jr_030_48c4:
	jp $061e                                         ; $48c4: $c3 $1e $06


	jp z, $061d                                      ; $48c7: $ca $1d $06

	jp $061d                                         ; $48ca: $c3 $1d $06


	or l                                             ; $48cd: $b5
	ld [hl], c                                       ; $48ce: $71
	ld [bc], a                                       ; $48cf: $02
	nop                                              ; $48d0: $00
	nop                                              ; $48d1: $00
	dec e                                            ; $48d2: $1d
	inc c                                            ; $48d3: $0c
	ld e, $0c                                        ; $48d4: $1e $0c
	jr nz, jr_030_48e4                               ; $48d6: $20 $0c

	sub d                                            ; $48d8: $92
	ret z                                            ; $48d9: $c8

	ld [hl+], a                                      ; $48da: $22
	ld d, $c1                                        ; $48db: $16 $c1
	ld [hl+], a                                      ; $48dd: $22
	ld [bc], a                                       ; $48de: $02
	ret z                                            ; $48df: $c8

	dec h                                            ; $48e0: $25
	ld d, $c1                                        ; $48e1: $16 $c1
	dec h                                            ; $48e3: $25

jr_030_48e4:
	ld [bc], a                                       ; $48e4: $02
	ret z                                            ; $48e5: $c8

	inc h                                            ; $48e6: $24
	ld e, $c2                                        ; $48e7: $1e $c2
	inc h                                            ; $48e9: $24
	ld b, $c8                                        ; $48ea: $06 $c8
	ld e, $05                                        ; $48ec: $1e $05
	nop                                              ; $48ee: $00
	ld bc, $0520                                     ; $48ef: $01 $20 $05
	nop                                              ; $48f2: $00
	ld bc, $22c8                                     ; $48f3: $01 $c8 $22
	ld d, $c1                                        ; $48f6: $16 $c1
	ld [hl+], a                                      ; $48f8: $22
	ld [bc], a                                       ; $48f9: $02
	ret z                                            ; $48fa: $c8

	add hl, hl                                       ; $48fb: $29
	ld d, $c1                                        ; $48fc: $16 $c1
	add hl, hl                                       ; $48fe: $29
	ld [bc], a                                       ; $48ff: $02
	ret z                                            ; $4900: $c8

	add hl, hl                                       ; $4901: $29
	ld b, $c3                                        ; $4902: $06 $c3
	add hl, hl                                       ; $4904: $29
	ld b, $c8                                        ; $4905: $06 $c8
	daa                                              ; $4907: $27
	ld b, $c3                                        ; $4908: $06 $c3
	daa                                              ; $490a: $27
	ld b, $c8                                        ; $490b: $06 $c8
	inc h                                            ; $490d: $24
	ld b, $c3                                        ; $490e: $06 $c3
	inc h                                            ; $4910: $24
	ld b, $c8                                        ; $4911: $06 $c8
	jr nz, jr_030_491b                               ; $4913: $20 $06

	jp $0620                                         ; $4915: $c3 $20 $06


	sub d                                            ; $4918: $92
	ret z                                            ; $4919: $c8

	ld [hl+], a                                      ; $491a: $22

jr_030_491b:
	ld d, $c1                                        ; $491b: $16 $c1
	ld [hl+], a                                      ; $491d: $22
	ld [bc], a                                       ; $491e: $02
	ret z                                            ; $491f: $c8

	dec h                                            ; $4920: $25
	ld d, $c1                                        ; $4921: $16 $c1
	dec h                                            ; $4923: $25
	ld [bc], a                                       ; $4924: $02
	ret z                                            ; $4925: $c8

	inc h                                            ; $4926: $24
	ld e, $c2                                        ; $4927: $1e $c2
	inc h                                            ; $4929: $24
	ld b, $c8                                        ; $492a: $06 $c8
	ld e, $05                                        ; $492c: $1e $05
	nop                                              ; $492e: $00
	ld bc, $0520                                     ; $492f: $01 $20 $05
	nop                                              ; $4932: $00
	ld bc, $22c8                                     ; $4933: $01 $c8 $22
	ld b, $c3                                        ; $4936: $06 $c3
	ld [hl+], a                                      ; $4938: $22
	ld b, $c8                                        ; $4939: $06 $c8
	ld hl, $c306                                     ; $493b: $21 $06 $c3
	ld hl, $c806                                     ; $493e: $21 $06 $c8
	ld [hl+], a                                      ; $4941: $22
	ld b, $c3                                        ; $4942: $06 $c3
	ld [hl+], a                                      ; $4944: $22
	ld b, $c8                                        ; $4945: $06 $c8
	inc hl                                           ; $4947: $23
	ld b, $c3                                        ; $4948: $06 $c3
	inc hl                                           ; $494a: $23
	ld b, $c8                                        ; $494b: $06 $c8
	inc h                                            ; $494d: $24
	ld b, $c3                                        ; $494e: $06 $c3
	inc h                                            ; $4950: $24
	ld b, $c9                                        ; $4951: $06 $c9
	sub a                                            ; $4953: $97
	ld a, d                                          ; $4954: $7a
	jr c, jr_030_495c                                ; $4955: $38 $05

	nop                                              ; $4957: $00
	ld bc, $0538                                     ; $4958: $01 $38 $05
	nop                                              ; $495b: $00

jr_030_495c:
	ld bc, $8997                                     ; $495c: $01 $97 $89
	jr c, jr_030_4964                                ; $495f: $38 $03

	sub a                                            ; $4961: $97
	ld l, e                                          ; $4962: $6b
	cp [hl]                                          ; $4963: $be

jr_030_4964:
	inc bc                                           ; $4964: $03
	ld a, [hl-]                                      ; $4965: $3a
	jr c, @+$3c                                      ; $4966: $38 $3a

	jr c, jr_030_49a4                                ; $4968: $38 $3a

	cp [hl]                                          ; $496a: $be
	jr c, jr_030_496f                                ; $496b: $38 $02

	ld a, [hl-]                                      ; $496d: $3a
	ld [bc], a                                       ; $496e: $02

jr_030_496f:
	jr c, jr_030_4973                                ; $496f: $38 $02

	sub a                                            ; $4971: $97
	nop                                              ; $4972: $00

jr_030_4973:
	cp $ff                                           ; $4973: $fe $ff
	ret nc                                           ; $4975: $d0

	ld a, e                                          ; $4976: $7b
	cp $b5                                           ; $4977: $fe $b5
	pop bc                                           ; $4979: $c1
	ld [bc], a                                       ; $497a: $02
	rst $38                                          ; $497b: $ff
	inc bc                                           ; $497c: $03
	add hl, hl                                       ; $497d: $29
	ld [de], a                                       ; $497e: $12
	jr z, @+$08                                      ; $497f: $28 $06

	add hl, hl                                       ; $4981: $29
	ld [de], a                                       ; $4982: $12
	jr z, jr_030_498b                                ; $4983: $28 $06

	add hl, hl                                       ; $4985: $29
	ld b, $c3                                        ; $4986: $06 $c3
	add hl, hl                                       ; $4988: $29
	ld b, $ca                                        ; $4989: $06 $ca

jr_030_498b:
	ld a, [hl+]                                      ; $498b: $2a
	ld b, $c3                                        ; $498c: $06 $c3
	ld a, [hl+]                                      ; $498e: $2a
	ld b, $ca                                        ; $498f: $06 $ca
	inc l                                            ; $4991: $2c
	ld b, $c3                                        ; $4992: $06 $c3
	inc l                                            ; $4994: $2c
	ld b, $ca                                        ; $4995: $06 $ca
	ld l, $06                                        ; $4997: $2e $06
	jp $062e                                         ; $4999: $c3 $2e $06


	sra h                                            ; $499c: $cb $2c
	ld b, $c3                                        ; $499e: $06 $c3
	inc l                                            ; $49a0: $2c
	ld b, $cc                                        ; $49a1: $06 $cc
	dec h                                            ; $49a3: $25

jr_030_49a4:
	dec b                                            ; $49a4: $05
	nop                                              ; $49a5: $00
	ld bc, $0525                                     ; $49a6: $01 $25 $05
	nop                                              ; $49a9: $00
	ld bc, $25cc                                     ; $49aa: $01 $cc $25
	ld b, $c3                                        ; $49ad: $06 $c3
	dec h                                            ; $49af: $25
	ld b, $cc                                        ; $49b0: $06 $cc
	inc h                                            ; $49b2: $24
	dec b                                            ; $49b3: $05
	nop                                              ; $49b4: $00
	ld bc, $0525                                     ; $49b5: $01 $25 $05
	nop                                              ; $49b8: $00
	ld bc, $b1b1                                     ; $49b9: $01 $b1 $b1
	rst $38                                          ; $49bc: $ff
	ld b, $2c                                        ; $49bd: $06 $2c
	inc h                                            ; $49bf: $24
	or c                                             ; $49c0: $b1
	ld hl, $0000                                     ; $49c1: $21 $00 $00
	inc l                                            ; $49c4: $2c
	inc c                                            ; $49c5: $0c
	or c                                             ; $49c6: $b1
	pop bc                                           ; $49c7: $c1
	rst $38                                          ; $49c8: $ff
	inc b                                            ; $49c9: $04
	ld l, $12                                        ; $49ca: $2e $12
	dec h                                            ; $49cc: $25
	dec b                                            ; $49cd: $05
	nop                                              ; $49ce: $00
	ld bc, $25cd                                     ; $49cf: $01 $cd $25
	ld b, $c3                                        ; $49d2: $06 $c3
	dec h                                            ; $49d4: $25
	ld b, $cc                                        ; $49d5: $06 $cc
	ld l, $06                                        ; $49d7: $2e $06
	jp $062e                                         ; $49d9: $c3 $2e $06


	call z, $122c                                    ; $49dc: $cc $2c $12
	dec h                                            ; $49df: $25
	dec b                                            ; $49e0: $05
	nop                                              ; $49e1: $00
	ld bc, $25cd                                     ; $49e2: $01 $cd $25
	ld b, $c4                                        ; $49e5: $06 $c4
	dec h                                            ; $49e7: $25
	ld b, $cc                                        ; $49e8: $06 $cc
	dec h                                            ; $49ea: $25
	inc b                                            ; $49eb: $04
	daa                                              ; $49ec: $27
	inc b                                            ; $49ed: $04
	sra c                                            ; $49ee: $cb $29
	inc b                                            ; $49f0: $04
	ld a, [hl+]                                      ; $49f1: $2a
	ld b, $c3                                        ; $49f2: $06 $c3
	ld a, [hl+]                                      ; $49f4: $2a
	ld b, $cc                                        ; $49f5: $06 $cc
	add hl, hl                                       ; $49f7: $29
	ld b, $c3                                        ; $49f8: $06 $c3
	add hl, hl                                       ; $49fa: $29
	ld b, $cd                                        ; $49fb: $06 $cd
	daa                                              ; $49fd: $27
	ld b, $c3                                        ; $49fe: $06 $c3
	daa                                              ; $4a00: $27
	ld b, $cd                                        ; $4a01: $06 $cd
	dec h                                            ; $4a03: $25
	ld b, $c3                                        ; $4a04: $06 $c3
	dec h                                            ; $4a06: $25
	ld b, $cd                                        ; $4a07: $06 $cd
	daa                                              ; $4a09: $27
	ld b, $c3                                        ; $4a0a: $06 $c3
	daa                                              ; $4a0c: $27
	ld b, $cc                                        ; $4a0d: $06 $cc
	inc l                                            ; $4a0f: $2c
	dec b                                            ; $4a10: $05
	nop                                              ; $4a11: $00
	ld bc, $052c                                     ; $4a12: $01 $2c $05
	nop                                              ; $4a15: $00
	ld bc, $2cca                                     ; $4a16: $01 $ca $2c
	inc c                                            ; $4a19: $0c
	jp $0c2c                                         ; $4a1a: $c3 $2c $0c


	or l                                             ; $4a1d: $b5
	pop bc                                           ; $4a1e: $c1
	ld [bc], a                                       ; $4a1f: $02
	rst $38                                          ; $4a20: $ff
	inc bc                                           ; $4a21: $03
	add hl, hl                                       ; $4a22: $29
	ld [de], a                                       ; $4a23: $12
	jr z, @+$08                                      ; $4a24: $28 $06

	add hl, hl                                       ; $4a26: $29
	ld [de], a                                       ; $4a27: $12
	jr z, jr_030_4a30                                ; $4a28: $28 $06

	add hl, hl                                       ; $4a2a: $29
	ld b, $c3                                        ; $4a2b: $06 $c3
	add hl, hl                                       ; $4a2d: $29
	ld b, $ca                                        ; $4a2e: $06 $ca

jr_030_4a30:
	ld a, [hl+]                                      ; $4a30: $2a
	ld b, $c3                                        ; $4a31: $06 $c3
	ld a, [hl+]                                      ; $4a33: $2a
	ld b, $ca                                        ; $4a34: $06 $ca
	inc l                                            ; $4a36: $2c
	ld b, $c3                                        ; $4a37: $06 $c3
	inc l                                            ; $4a39: $2c
	ld b, $ca                                        ; $4a3a: $06 $ca
	ld l, $06                                        ; $4a3c: $2e $06
	jp $062e                                         ; $4a3e: $c3 $2e $06


	sra h                                            ; $4a41: $cb $2c
	ld b, $c3                                        ; $4a43: $06 $c3
	inc l                                            ; $4a45: $2c
	ld b, $cc                                        ; $4a46: $06 $cc
	dec h                                            ; $4a48: $25
	dec b                                            ; $4a49: $05
	nop                                              ; $4a4a: $00
	ld bc, $0525                                     ; $4a4b: $01 $25 $05
	nop                                              ; $4a4e: $00
	ld bc, $25cc                                     ; $4a4f: $01 $cc $25
	ld b, $c3                                        ; $4a52: $06 $c3
	dec h                                            ; $4a54: $25
	ld b, $cc                                        ; $4a55: $06 $cc
	inc h                                            ; $4a57: $24
	dec b                                            ; $4a58: $05
	nop                                              ; $4a59: $00
	ld bc, $0525                                     ; $4a5a: $01 $25 $05
	nop                                              ; $4a5d: $00
	ld bc, $b1b1                                     ; $4a5e: $01 $b1 $b1
	rst $38                                          ; $4a61: $ff
	ld b, $2c                                        ; $4a62: $06 $2c
	inc h                                            ; $4a64: $24
	or c                                             ; $4a65: $b1
	ld hl, $0000                                     ; $4a66: $21 $00 $00
	inc l                                            ; $4a69: $2c
	inc c                                            ; $4a6a: $0c
	or c                                             ; $4a6b: $b1
	pop de                                           ; $4a6c: $d1
	rst $38                                          ; $4a6d: $ff
	inc b                                            ; $4a6e: $04
	ld l, $12                                        ; $4a6f: $2e $12
	dec h                                            ; $4a71: $25
	dec b                                            ; $4a72: $05
	nop                                              ; $4a73: $00
	ld bc, $25cd                                     ; $4a74: $01 $cd $25
	ld b, $c3                                        ; $4a77: $06 $c3
	dec h                                            ; $4a79: $25
	ld b, $cc                                        ; $4a7a: $06 $cc
	ld l, $06                                        ; $4a7c: $2e $06
	jp $062e                                         ; $4a7e: $c3 $2e $06


	call z, $122c                                    ; $4a81: $cc $2c $12
	call $0525                                       ; $4a84: $cd $25 $05
	nop                                              ; $4a87: $00
	ld bc, $25cd                                     ; $4a88: $01 $cd $25
	ld b, $c3                                        ; $4a8b: $06 $c3
	dec h                                            ; $4a8d: $25
	ld b, $cc                                        ; $4a8e: $06 $cc
	dec h                                            ; $4a90: $25
	inc b                                            ; $4a91: $04
	daa                                              ; $4a92: $27
	inc b                                            ; $4a93: $04
	add hl, hl                                       ; $4a94: $29
	inc b                                            ; $4a95: $04
	sra d                                            ; $4a96: $cb $2a
	ld a, [bc]                                       ; $4a98: $0a
	jp $022a                                         ; $4a99: $c3 $2a $02


	call z, $0629                                    ; $4a9c: $cc $29 $06
	jp $0629                                         ; $4a9f: $c3 $29 $06


	call $0625                                       ; $4aa2: $cd $25 $06
	jp $0625                                         ; $4aa5: $c3 $25 $06


	call $0627                                       ; $4aa8: $cd $27 $06
	jp $0627                                         ; $4aab: $c3 $27 $06


	or c                                             ; $4aae: $b1
	pop de                                           ; $4aaf: $d1
	ld a, [bc]                                       ; $4ab0: $0a
	ld [bc], a                                       ; $4ab1: $02
	dec h                                            ; $4ab2: $25
	ld b, $b1                                        ; $4ab3: $06 $b1
	ld sp, $0000                                     ; $4ab5: $31 $00 $00
	dec h                                            ; $4ab8: $25
	ld b, $b5                                        ; $4ab9: $06 $b5
	pop hl                                           ; $4abb: $e1
	ld bc, $070c                                     ; $4abc: $01 $0c $07
	dec h                                            ; $4abf: $25
	dec bc                                           ; $4ac0: $0b
	nop                                              ; $4ac1: $00
	ld bc, $0b27                                     ; $4ac2: $01 $27 $0b
	nop                                              ; $4ac5: $00
	ld bc, $0c29                                     ; $4ac6: $01 $29 $0c
	sub [hl]                                         ; $4ac9: $96
	nop                                              ; $4aca: $00
	nop                                              ; $4acb: $00
	sub c                                            ; $4acc: $91
	call $162a                                       ; $4acd: $cd $2a $16
	pop bc                                           ; $4ad0: $c1
	ld a, [hl+]                                      ; $4ad1: $2a
	ld [bc], a                                       ; $4ad2: $02
	call $162e                                       ; $4ad3: $cd $2e $16
	pop bc                                           ; $4ad6: $c1
	ld l, $02                                        ; $4ad7: $2e $02
	call $1e2c                                       ; $4ad9: $cd $2c $1e
	jp nz, $062c                                     ; $4adc: $c2 $2c $06

	call $0527                                       ; $4adf: $cd $27 $05
	nop                                              ; $4ae2: $00
	ld bc, $0529                                     ; $4ae3: $01 $29 $05
	nop                                              ; $4ae6: $00
	ld bc, $2acd                                     ; $4ae7: $01 $cd $2a
	ld d, $c1                                        ; $4aea: $16 $c1
	ld a, [hl+]                                      ; $4aec: $2a
	ld [bc], a                                       ; $4aed: $02
	call $1631                                       ; $4aee: $cd $31 $16
	pop bc                                           ; $4af1: $c1
	ld sp, $cd02                                     ; $4af2: $31 $02 $cd
	ld sp, $c306                                     ; $4af5: $31 $06 $c3
	ld sp, $cd06                                     ; $4af8: $31 $06 $cd
	jr nc, jr_030_4b03                               ; $4afb: $30 $06

	jp $0630                                         ; $4afd: $c3 $30 $06


	call $162c                                       ; $4b00: $cd $2c $16

jr_030_4b03:
	jp $022c                                         ; $4b03: $c3 $2c $02


	sub c                                            ; $4b06: $91

jr_030_4b07:
	call $162a                                       ; $4b07: $cd $2a $16
	pop bc                                           ; $4b0a: $c1
	ld a, [hl+]                                      ; $4b0b: $2a
	ld [bc], a                                       ; $4b0c: $02
	call $162e                                       ; $4b0d: $cd $2e $16
	pop bc                                           ; $4b10: $c1
	ld l, $02                                        ; $4b11: $2e $02
	call $1e2c                                       ; $4b13: $cd $2c $1e
	jp nz, $062c                                     ; $4b16: $c2 $2c $06

	call $0527                                       ; $4b19: $cd $27 $05
	nop                                              ; $4b1c: $00
	ld bc, $0529                                     ; $4b1d: $01 $29 $05
	nop                                              ; $4b20: $00
	ld bc, $2acd                                     ; $4b21: $01 $cd $2a
	ld b, $c3                                        ; $4b24: $06 $c3
	ld a, [hl+]                                      ; $4b26: $2a
	ld b, $cd                                        ; $4b27: $06 $cd
	add hl, hl                                       ; $4b29: $29
	ld b, $c3                                        ; $4b2a: $06 $c3
	add hl, hl                                       ; $4b2c: $29
	ld b, $cd                                        ; $4b2d: $06 $cd
	ld a, [hl+]                                      ; $4b2f: $2a
	ld b, $c3                                        ; $4b30: $06 $c3
	ld a, [hl+]                                      ; $4b32: $2a
	ld b, $cd                                        ; $4b33: $06 $cd
	dec hl                                           ; $4b35: $2b
	ld b, $c3                                        ; $4b36: $06 $c3
	dec hl                                           ; $4b38: $2b
	ld b, $cd                                        ; $4b39: $06 $cd
	inc l                                            ; $4b3b: $2c
	ld b, $c3                                        ; $4b3c: $06 $c3
	inc l                                            ; $4b3e: $2c
	ld b, $cd                                        ; $4b3f: $06 $cd
	cp [hl]                                          ; $4b41: $be
	ld b, $20                                        ; $4b42: $06 $20
	ld [hl+], a                                      ; $4b44: $22
	inc h                                            ; $4b45: $24
	ld [hl+], a                                      ; $4b46: $22
	jr nz, jr_030_4b07                               ; $4b47: $20 $be

	jp $0620                                         ; $4b49: $c3 $20 $06


	cp $ff                                           ; $4b4c: $fe $ff
	ret nc                                           ; $4b4e: $d0

	ld a, e                                          ; $4b4f: $7b
	cp $7f                                           ; $4b50: $fe $7f
	rla                                              ; $4b52: $17
	ei                                               ; $4b53: $fb
	jp nz, $0c19                                     ; $4b54: $c2 $19 $0c

	add $19                                          ; $4b57: $c6 $19
	inc c                                            ; $4b59: $0c
	jp nz, $0c14                                     ; $4b5a: $c2 $14 $0c

	add $14                                          ; $4b5d: $c6 $14
	inc c                                            ; $4b5f: $0c
	ei                                               ; $4b60: $fb
	inc b                                            ; $4b61: $04
	jp nz, $0c1e                                     ; $4b62: $c2 $1e $0c

	add $1e                                          ; $4b65: $c6 $1e
	inc c                                            ; $4b67: $0c
	nop                                              ; $4b68: $00
	inc c                                            ; $4b69: $0c
	jp nz, $0c1e                                     ; $4b6a: $c2 $1e $0c

	jp nz, $0c1d                                     ; $4b6d: $c2 $1d $0c

	add $1d                                          ; $4b70: $c6 $1d
	inc c                                            ; $4b72: $0c
	nop                                              ; $4b73: $00
	inc c                                            ; $4b74: $0c
	jp nz, $0c1d                                     ; $4b75: $c2 $1d $0c

	jp nz, $061b                                     ; $4b78: $c2 $1b $06

	add $1b                                          ; $4b7b: $c6 $1b
	ld b, $c2                                        ; $4b7d: $06 $c2
	dec de                                           ; $4b7f: $1b
	ld d, $c6                                        ; $4b80: $16 $c6
	dec de                                           ; $4b82: $1b
	ld [bc], a                                       ; $4b83: $02
	jp nz, $061b                                     ; $4b84: $c2 $1b $06

	add $1b                                          ; $4b87: $c6 $1b
	ld b, $c2                                        ; $4b89: $06 $c2
	jr nz, @+$08                                     ; $4b8b: $20 $06

	add $20                                          ; $4b8d: $c6 $20
	ld b, $c2                                        ; $4b8f: $06 $c2
	cp [hl]                                          ; $4b91: $be
	ld b, $14                                        ; $4b92: $06 $14
	ld d, $18                                        ; $4b94: $16 $18
	ld d, $14                                        ; $4b96: $16 $14
	cp [hl]                                          ; $4b98: $be
	add $14                                          ; $4b99: $c6 $14
	ld b, $7f                                        ; $4b9b: $06 $7f
	rla                                              ; $4b9d: $17
	ei                                               ; $4b9e: $fb
	jp nz, $0c19                                     ; $4b9f: $c2 $19 $0c

	add $19                                          ; $4ba2: $c6 $19
	inc c                                            ; $4ba4: $0c
	jp nz, $0c14                                     ; $4ba5: $c2 $14 $0c

	add $14                                          ; $4ba8: $c6 $14
	inc c                                            ; $4baa: $0c
	ei                                               ; $4bab: $fb
	inc b                                            ; $4bac: $04
	jp nz, $0c1e                                     ; $4bad: $c2 $1e $0c

	add $1e                                          ; $4bb0: $c6 $1e
	inc c                                            ; $4bb2: $0c
	nop                                              ; $4bb3: $00
	inc c                                            ; $4bb4: $0c
	jp nz, $0c1e                                     ; $4bb5: $c2 $1e $0c

	jp nz, $0c1d                                     ; $4bb8: $c2 $1d $0c

	add $1d                                          ; $4bbb: $c6 $1d
	inc c                                            ; $4bbd: $0c
	nop                                              ; $4bbe: $00
	inc c                                            ; $4bbf: $0c
	jp nz, $0c1d                                     ; $4bc0: $c2 $1d $0c

	jp nz, $061b                                     ; $4bc3: $c2 $1b $06

	add $1b                                          ; $4bc6: $c6 $1b
	ld b, $c2                                        ; $4bc8: $06 $c2
	dec de                                           ; $4bca: $1b
	ld d, $c6                                        ; $4bcb: $16 $c6
	dec de                                           ; $4bcd: $1b
	ld [bc], a                                       ; $4bce: $02
	jp nz, $061b                                     ; $4bcf: $c2 $1b $06

	add $1b                                          ; $4bd2: $c6 $1b
	ld b, $c2                                        ; $4bd4: $06 $c2
	add hl, de                                       ; $4bd6: $19
	ld b, $c6                                        ; $4bd7: $06 $c6
	add hl, de                                       ; $4bd9: $19
	ld b, $c2                                        ; $4bda: $06 $c2
	inc d                                            ; $4bdc: $14
	ld a, [bc]                                       ; $4bdd: $0a
	add $14                                          ; $4bde: $c6 $14
	ld [bc], a                                       ; $4be0: $02
	jp nz, $0a18                                     ; $4be1: $c2 $18 $0a

	add $18                                          ; $4be4: $c6 $18
	ld [bc], a                                       ; $4be6: $02
	jp nz, $0a19                                     ; $4be7: $c2 $19 $0a

	add $19                                          ; $4bea: $c6 $19
	ld [bc], a                                       ; $4bec: $02
	ld a, a                                          ; $4bed: $7f
	rla                                              ; $4bee: $17
	ei                                               ; $4bef: $fb
	jp nz, $061e                                     ; $4bf0: $c2 $1e $06

	add $1e                                          ; $4bf3: $c6 $1e
	ld b, $c2                                        ; $4bf5: $06 $c2
	add hl, de                                       ; $4bf7: $19
	ld b, $c6                                        ; $4bf8: $06 $c6
	add hl, de                                       ; $4bfa: $19
	ld b, $fb                                        ; $4bfb: $06 $fb
	ld [bc], a                                       ; $4bfd: $02
	ei                                               ; $4bfe: $fb
	jp nz, $061d                                     ; $4bff: $c2 $1d $06

	add $1d                                          ; $4c02: $c6 $1d
	ld b, $c2                                        ; $4c04: $06 $c2
	add hl, de                                       ; $4c06: $19
	ld b, $c6                                        ; $4c07: $06 $c6
	add hl, de                                       ; $4c09: $19
	ld b, $fb                                        ; $4c0a: $06 $fb
	ld [bc], a                                       ; $4c0c: $02
	ei                                               ; $4c0d: $fb
	jp nz, $061e                                     ; $4c0e: $c2 $1e $06

	add $1e                                          ; $4c11: $c6 $1e
	ld b, $c2                                        ; $4c13: $06 $c2
	add hl, de                                       ; $4c15: $19
	ld b, $c6                                        ; $4c16: $06 $c6
	add hl, de                                       ; $4c18: $19
	ld b, $fb                                        ; $4c19: $06 $fb
	ld [bc], a                                       ; $4c1b: $02
	jp nz, $0620                                     ; $4c1c: $c2 $20 $06

	add $20                                          ; $4c1f: $c6 $20
	ld b, $c2                                        ; $4c21: $06 $c2
	dec de                                           ; $4c23: $1b
	ld b, $c6                                        ; $4c24: $06 $c6
	dec de                                           ; $4c26: $1b
	ld b, $c2                                        ; $4c27: $06 $c2
	inc d                                            ; $4c29: $14
	inc b                                            ; $4c2a: $04
	add $14                                          ; $4c2b: $c6 $14
	ld [$14c2], sp                                   ; $4c2d: $08 $c2 $14
	ld a, [bc]                                       ; $4c30: $0a
	add $14                                          ; $4c31: $c6 $14
	ld [bc], a                                       ; $4c33: $02
	ld a, a                                          ; $4c34: $7f
	rla                                              ; $4c35: $17
	ei                                               ; $4c36: $fb
	jp nz, $061e                                     ; $4c37: $c2 $1e $06

	add $1e                                          ; $4c3a: $c6 $1e
	ld b, $c2                                        ; $4c3c: $06 $c2
	add hl, de                                       ; $4c3e: $19
	ld b, $c6                                        ; $4c3f: $06 $c6
	add hl, de                                       ; $4c41: $19
	ld b, $fb                                        ; $4c42: $06 $fb
	ld [bc], a                                       ; $4c44: $02
	ei                                               ; $4c45: $fb
	jp nz, $061d                                     ; $4c46: $c2 $1d $06

	add $1d                                          ; $4c49: $c6 $1d
	ld b, $c2                                        ; $4c4b: $06 $c2
	add hl, de                                       ; $4c4d: $19
	ld b, $c6                                        ; $4c4e: $06 $c6
	add hl, de                                       ; $4c50: $19
	ld b, $fb                                        ; $4c51: $06 $fb
	ld [bc], a                                       ; $4c53: $02
	jp nz, $041b                                     ; $4c54: $c2 $1b $04

	add $1b                                          ; $4c57: $c6 $1b
	ld [$1bc2], sp                                   ; $4c59: $08 $c2 $1b
	ld [de], a                                       ; $4c5c: $12
	add $1b                                          ; $4c5d: $c6 $1b
	ld b, $c2                                        ; $4c5f: $06 $c2
	dec de                                           ; $4c61: $1b
	ld b, $c6                                        ; $4c62: $06 $c6
	dec de                                           ; $4c64: $1b
	ld b, $c2                                        ; $4c65: $06 $c2
	jr nz, jr_030_4c6f                               ; $4c67: $20 $06

	add $20                                          ; $4c69: $c6 $20
	ld b, $c2                                        ; $4c6b: $06 $c2
	dec de                                           ; $4c6d: $1b
	dec b                                            ; $4c6e: $05

jr_030_4c6f:
	call nz, $011b                                   ; $4c6f: $c4 $1b $01
	jp nz, $051d                                     ; $4c72: $c2 $1d $05

	call nz, $011d                                   ; $4c75: $c4 $1d $01
	jp nz, $051e                                     ; $4c78: $c2 $1e $05

	call nz, $011e                                   ; $4c7b: $c4 $1e $01
	jp nz, $051d                                     ; $4c7e: $c2 $1d $05

	call nz, $011d                                   ; $4c81: $c4 $1d $01
	jp nz, $061b                                     ; $4c84: $c2 $1b $06

	add $1b                                          ; $4c87: $c6 $1b
	ld b, $fe                                        ; $4c89: $06 $fe
	rst $38                                          ; $4c8b: $ff
	ret nc                                           ; $4c8c: $d0

	ld a, e                                          ; $4c8d: $7b
	cp $be                                           ; $4c8e: $fe $be
	inc c                                            ; $4c90: $0c
	inc d                                            ; $4c91: $14
	inc c                                            ; $4c92: $0c
	dec bc                                           ; $4c93: $0b
	inc c                                            ; $4c94: $0c
	inc d                                            ; $4c95: $14
	inc c                                            ; $4c96: $0c
	dec bc                                           ; $4c97: $0b
	inc c                                            ; $4c98: $0c
	cp [hl]                                          ; $4c99: $be
	cp [hl]                                          ; $4c9a: $be
	inc c                                            ; $4c9b: $0c
	inc d                                            ; $4c9c: $14
	inc c                                            ; $4c9d: $0c
	inc d                                            ; $4c9e: $14
	inc c                                            ; $4c9f: $0c
	inc d                                            ; $4ca0: $14
	inc c                                            ; $4ca1: $0c
	dec bc                                           ; $4ca2: $0b
	inc c                                            ; $4ca3: $0c
	cp [hl]                                          ; $4ca4: $be
	cp [hl]                                          ; $4ca5: $be
	inc c                                            ; $4ca6: $0c
	dec bc                                           ; $4ca7: $0b
	inc c                                            ; $4ca8: $0c
	inc c                                            ; $4ca9: $0c
	add hl, de                                       ; $4caa: $19
	dec bc                                           ; $4cab: $0b
	inc c                                            ; $4cac: $0c
	inc c                                            ; $4cad: $0c
	add hl, de                                       ; $4cae: $19
	cp [hl]                                          ; $4caf: $be
	dec bc                                           ; $4cb0: $0b
	inc c                                            ; $4cb1: $0c
	cp [hl]                                          ; $4cb2: $be
	ld b, $0c                                        ; $4cb3: $06 $0c
	ld d, $15                                        ; $4cb5: $16 $15
	inc c                                            ; $4cb7: $0c
	dec d                                            ; $4cb8: $15
	inc c                                            ; $4cb9: $0c
	cp [hl]                                          ; $4cba: $be
	inc c                                            ; $4cbb: $0c
	inc c                                            ; $4cbc: $0c
	inc c                                            ; $4cbd: $0c
	ld b, $0c                                        ; $4cbe: $06 $0c
	ld b, $0c                                        ; $4cc0: $06 $0c
	inc c                                            ; $4cc2: $0c
	jr jr_030_4cd1                                   ; $4cc3: $18 $0c

	cp [hl]                                          ; $4cc5: $be
	inc c                                            ; $4cc6: $0c
	inc d                                            ; $4cc7: $14
	inc c                                            ; $4cc8: $0c
	dec bc                                           ; $4cc9: $0b
	inc c                                            ; $4cca: $0c
	inc d                                            ; $4ccb: $14
	inc c                                            ; $4ccc: $0c
	dec bc                                           ; $4ccd: $0b
	inc c                                            ; $4cce: $0c
	cp [hl]                                          ; $4ccf: $be
	cp [hl]                                          ; $4cd0: $be

jr_030_4cd1:
	inc c                                            ; $4cd1: $0c
	inc d                                            ; $4cd2: $14
	inc c                                            ; $4cd3: $0c
	inc d                                            ; $4cd4: $14
	inc c                                            ; $4cd5: $0c
	inc d                                            ; $4cd6: $14
	inc c                                            ; $4cd7: $0c
	dec bc                                           ; $4cd8: $0b
	inc c                                            ; $4cd9: $0c
	cp [hl]                                          ; $4cda: $be
	cp [hl]                                          ; $4cdb: $be
	inc c                                            ; $4cdc: $0c
	inc c                                            ; $4cdd: $0c
	dec bc                                           ; $4cde: $0b
	dec bc                                           ; $4cdf: $0b
	inc c                                            ; $4ce0: $0c
	inc c                                            ; $4ce1: $0c
	dec bc                                           ; $4ce2: $0b
	dec bc                                           ; $4ce3: $0b
	inc c                                            ; $4ce4: $0c
	cp [hl]                                          ; $4ce5: $be
	dec bc                                           ; $4ce6: $0b
	inc c                                            ; $4ce7: $0c
	cp [hl]                                          ; $4ce8: $be
	ld b, $0c                                        ; $4ce9: $06 $0c
	ld d, $16                                        ; $4ceb: $16 $16
	inc c                                            ; $4ced: $0c
	dec d                                            ; $4cee: $15
	ld d, $be                                        ; $4cef: $16 $be
	inc c                                            ; $4cf1: $0c
	inc c                                            ; $4cf2: $0c
	add hl, bc                                       ; $4cf3: $09
	inc c                                            ; $4cf4: $0c
	inc d                                            ; $4cf5: $14
	jr @-$40                                         ; $4cf6: $18 $be

	inc c                                            ; $4cf8: $0c
	dec bc                                           ; $4cf9: $0b
	inc c                                            ; $4cfa: $0c
	dec bc                                           ; $4cfb: $0b
	inc c                                            ; $4cfc: $0c
	dec bc                                           ; $4cfd: $0b
	cp [hl]                                          ; $4cfe: $be
	dec d                                            ; $4cff: $15
	ld b, $0c                                        ; $4d00: $06 $0c
	ld b, $0b                                        ; $4d02: $06 $0b
	inc c                                            ; $4d04: $0c
	inc c                                            ; $4d05: $0c
	inc c                                            ; $4d06: $0c
	ei                                               ; $4d07: $fb
	dec bc                                           ; $4d08: $0b
	inc c                                            ; $4d09: $0c
	inc c                                            ; $4d0a: $0c
	inc c                                            ; $4d0b: $0c
	ei                                               ; $4d0c: $fb
	inc b                                            ; $4d0d: $04
	cp [hl]                                          ; $4d0e: $be
	inc c                                            ; $4d0f: $0c
	dec bc                                           ; $4d10: $0b
	inc c                                            ; $4d11: $0c
	dec bc                                           ; $4d12: $0b
	inc c                                            ; $4d13: $0c
	dec bc                                           ; $4d14: $0b
	cp [hl]                                          ; $4d15: $be
	dec d                                            ; $4d16: $15
	ld b, $0c                                        ; $4d17: $06 $0c
	ld b, $0b                                        ; $4d19: $06 $0b
	inc c                                            ; $4d1b: $0c
	inc c                                            ; $4d1c: $0c
	inc c                                            ; $4d1d: $0c
	inc c                                            ; $4d1e: $0c
	inc c                                            ; $4d1f: $0c
	cp [hl]                                          ; $4d20: $be
	inc bc                                           ; $4d21: $03
	inc c                                            ; $4d22: $0c
	ld c, $0e                                        ; $4d23: $0e $0e

jr_030_4d25:
	ld c, $0c                                        ; $4d25: $0e $0c
	ld c, $0e                                        ; $4d27: $0e $0e
	ld c, $0e                                        ; $4d29: $0e $0e
	ld c, $be                                        ; $4d2b: $0e $be
	inc c                                            ; $4d2d: $0c
	ld b, $0c                                        ; $4d2e: $06 $0c
	inc c                                            ; $4d30: $0c
	dec bc                                           ; $4d31: $0b
	inc c                                            ; $4d32: $0c
	inc d                                            ; $4d33: $14

jr_030_4d34:
	jr jr_030_4d34                                   ; $4d34: $18 $fe

	rst $38                                          ; $4d36: $ff
	ret nc                                           ; $4d37: $d0

	add d                                            ; $4d38: $82
	cp $b5                                           ; $4d39: $fe $b5
	and c                                            ; $4d3b: $a1
	ld [bc], a                                       ; $4d3c: $02
	rst $38                                          ; $4d3d: $ff
	inc bc                                           ; $4d3e: $03
	ld h, e                                          ; $4d3f: $63
	add hl, de                                       ; $4d40: $19
	ld de, $31b1                                     ; $4d41: $11 $b1 $31
	nop                                              ; $4d44: $00
	nop                                              ; $4d45: $00
	add hl, de                                       ; $4d46: $19
	ld [$c0fd], sp                                   ; $4d47: $08 $fd $c0
	ld c, [hl]                                       ; $4d4a: $4e
	db $fd                                           ; $4d4b: $fd
	ret nz                                           ; $4d4c: $c0

	ld c, [hl]                                       ; $4d4d: $4e
	ld [hl], d                                       ; $4d4e: $72
	db $fd                                           ; $4d4f: $fd
	ret nz                                           ; $4d50: $c0

	ld c, [hl]                                       ; $4d51: $4e
	ld h, e                                          ; $4d52: $63
	db $fd                                           ; $4d53: $fd
	ret nz                                           ; $4d54: $c0

	ld c, [hl]                                       ; $4d55: $4e
	db $fd                                           ; $4d56: $fd
	ret nz                                           ; $4d57: $c0

	ld c, [hl]                                       ; $4d58: $4e
	or c                                             ; $4d59: $b1
	sub c                                            ; $4d5a: $91
	rst $38                                          ; $4d5b: $ff
	inc bc                                           ; $4d5c: $03
	add hl, de                                       ; $4d5d: $19
	db $10                                           ; $4d5e: $10
	sub [hl]                                         ; $4d5f: $96
	ld [$1802], sp                                   ; $4d60: $08 $02 $18
	ld [$c0fd], sp                                   ; $4d63: $08 $fd $c0
	ld c, [hl]                                       ; $4d66: $4e
	ld h, d                                          ; $4d67: $62
	db $fd                                           ; $4d68: $fd
	ret nz                                           ; $4d69: $c0

	ld c, [hl]                                       ; $4d6a: $4e
	db $fd                                           ; $4d6b: $fd
	ret nz                                           ; $4d6c: $c0

	ld c, [hl]                                       ; $4d6d: $4e
	ld [hl], b                                       ; $4d6e: $70
	db $fd                                           ; $4d6f: $fd
	ret nz                                           ; $4d70: $c0

	ld c, [hl]                                       ; $4d71: $4e
	ld h, e                                          ; $4d72: $63
	or c                                             ; $4d73: $b1
	ld [hl], c                                       ; $4d74: $71
	db $10                                           ; $4d75: $10
	inc bc                                           ; $4d76: $03
	inc d                                            ; $4d77: $14
	db $10                                           ; $4d78: $10
	sub [hl]                                         ; $4d79: $96
	jr @+$06                                         ; $4d7a: $18 $04

	cp l                                             ; $4d7c: $bd
	ld [bc], a                                       ; $4d7d: $02
	dec de                                           ; $4d7e: $1b
	ld [$b510], sp                                   ; $4d7f: $08 $10 $b5
	add c                                            ; $4d82: $81
	ld [bc], a                                       ; $4d83: $02
	nop                                              ; $4d84: $00
	nop                                              ; $4d85: $00
	inc d                                            ; $4d86: $14
	ld [$91b1], sp                                   ; $4d87: $08 $b1 $91
	rst $38                                          ; $4d8a: $ff
	inc bc                                           ; $4d8b: $03
	dec d                                            ; $4d8c: $15
	jr jr_030_4da5                                   ; $4d8d: $18 $16

jr_030_4d8f:
	jr jr_030_4da9                                   ; $4d8f: $18 $18

	jr jr_030_4d25                                   ; $4d91: $18 $92

	jp z, $fd63                                      ; $4d93: $ca $63 $fd

	ret nz                                           ; $4d96: $c0

	ld c, [hl]                                       ; $4d97: $4e
	db $fd                                           ; $4d98: $fd
	ret nz                                           ; $4d99: $c0

	ld c, [hl]                                       ; $4d9a: $4e
	db $fd                                           ; $4d9b: $fd
	ret nz                                           ; $4d9c: $c0

	ld c, [hl]                                       ; $4d9d: $4e
	ld h, l                                          ; $4d9e: $65
	db $fd                                           ; $4d9f: $fd
	ret nz                                           ; $4da0: $c0

	ld c, [hl]                                       ; $4da1: $4e
	ld h, e                                          ; $4da2: $63
	db $fd                                           ; $4da3: $fd
	ret nz                                           ; $4da4: $c0

jr_030_4da5:
	ld c, [hl]                                       ; $4da5: $4e
	db $fd                                           ; $4da6: $fd
	ret nz                                           ; $4da7: $c0

	ld c, [hl]                                       ; $4da8: $4e

jr_030_4da9:
	or c                                             ; $4da9: $b1
	sub c                                            ; $4daa: $91
	rst $38                                          ; $4dab: $ff
	inc bc                                           ; $4dac: $03
	add hl, de                                       ; $4dad: $19
	db $10                                           ; $4dae: $10
	sub [hl]                                         ; $4daf: $96
	ld [$1802], sp                                   ; $4db0: $08 $02 $18
	ld [$c0fd], sp                                   ; $4db3: $08 $fd $c0
	ld c, [hl]                                       ; $4db6: $4e
	ld h, e                                          ; $4db7: $63
	db $fd                                           ; $4db8: $fd
	ret nz                                           ; $4db9: $c0

	ld c, [hl]                                       ; $4dba: $4e
	db $fd                                           ; $4dbb: $fd
	ret nz                                           ; $4dbc: $c0

	ld c, [hl]                                       ; $4dbd: $4e
	or c                                             ; $4dbe: $b1
	sub c                                            ; $4dbf: $91
	rst $38                                          ; $4dc0: $ff
	inc b                                            ; $4dc1: $04
	jr nz, @+$12                                     ; $4dc2: $20 $10

	sub [hl]                                         ; $4dc4: $96

jr_030_4dc5:
	ld [$1f03], sp                                   ; $4dc5: $08 $03 $1f
	ld [$ff96], sp                                   ; $4dc8: $08 $96 $ff
	inc b                                            ; $4dcb: $04
	ld e, $10                                        ; $4dcc: $1e $10
	sub [hl]                                         ; $4dce: $96
	rst $38                                          ; $4dcf: $ff
	inc bc                                           ; $4dd0: $03
	dec e                                            ; $4dd1: $1d
	ld [$101d], sp                                   ; $4dd2: $08 $1d $10
	or l                                             ; $4dd5: $b5
	ld [hl], c                                       ; $4dd6: $71
	ld [bc], a                                       ; $4dd7: $02
	ld [$1402], sp                                   ; $4dd8: $08 $02 $14
	ld [$81b1], sp                                   ; $4ddb: $08 $b1 $81
	rst $38                                          ; $4dde: $ff

jr_030_4ddf:
	inc bc                                           ; $4ddf: $03
	inc d                                            ; $4de0: $14
	db $10                                           ; $4de1: $10
	sub [hl]                                         ; $4de2: $96
	ld [$1402], sp                                   ; $4de3: $08 $02 $14
	ld [$fd70], sp                                   ; $4de6: $08 $70 $fd
	ret nz                                           ; $4de9: $c0

	ld c, [hl]                                       ; $4dea: $4e
	ld [hl], d                                       ; $4deb: $72
	db $fd                                           ; $4dec: $fd
	ret nz                                           ; $4ded: $c0

	ld c, [hl]                                       ; $4dee: $4e
	sub d                                            ; $4def: $92
	sub a                                            ; $4df0: $97
	ld c, a                                          ; $4df1: $4f
	ld h, e                                          ; $4df2: $63
	ld a, l                                          ; $4df3: $7d
	add hl, bc                                       ; $4df4: $09
	add hl, hl                                       ; $4df5: $29
	jr jr_030_4d8f                                   ; $4df6: $18 $97

	nop                                              ; $4df8: $00
	add $29                                          ; $4df9: $c6 $29
	ld c, b                                          ; $4dfb: $48
	ld a, [hl]                                       ; $4dfc: $7e
	ld bc, $a902                                     ; $4dfd: $01 $02 $a9
	add hl, hl                                       ; $4e00: $29
	jr nc, jr_030_4dc5                               ; $4e01: $30 $c2

	add hl, hl                                       ; $4e03: $29
	db $10                                           ; $4e04: $10
	ret nz                                           ; $4e05: $c0

	sub a                                            ; $4e06: $97
	ld e, h                                          ; $4e07: $5c
	ld a, l                                          ; $4e08: $7d
	nop                                              ; $4e09: $00
	ld a, [hl]                                       ; $4e0a: $7e
	nop                                              ; $4e0b: $00

jr_030_4e0c:
	add hl, hl                                       ; $4e0c: $29
	ld [$102a], sp                                   ; $4e0d: $08 $2a $10
	inc l                                            ; $4e10: $2c
	ld [$4f97], sp                                   ; $4e11: $08 $97 $4f
	ld a, l                                          ; $4e14: $7d
	rlca                                             ; $4e15: $07
	inc l                                            ; $4e16: $2c
	jr jr_030_4ddf                                   ; $4e17: $18 $c6

	sub a                                            ; $4e19: $97
	nop                                              ; $4e1a: $00
	ld a, [hl]                                       ; $4e1b: $7e
	ld bc, $a900                                     ; $4e1c: $01 $00 $a9
	inc l                                            ; $4e1f: $2c
	ld b, d                                          ; $4e20: $42
	ld a, [hl]                                       ; $4e21: $7e
	nop                                              ; $4e22: $00
	sub a                                            ; $4e23: $97
	nop                                              ; $4e24: $00
	jp nz, $062c                                     ; $4e25: $c2 $2c $06

	ld a, l                                          ; $4e28: $7d
	nop                                              ; $4e29: $00
	sub a                                            ; $4e2a: $97
	ld c, a                                          ; $4e2b: $4f
	inc sp                                           ; $4e2c: $33
	jr @-$67                                         ; $4e2d: $18 $97

	nop                                              ; $4e2f: $00
	add $33                                          ; $4e30: $c6 $33
	ld d, $c2                                        ; $4e32: $16 $c2
	inc sp                                           ; $4e34: $33
	ld [bc], a                                       ; $4e35: $02
	sub a                                            ; $4e36: $97
	ld c, a                                          ; $4e37: $4f
	ld sp, $9718                                     ; $4e38: $31 $18 $97
	nop                                              ; $4e3b: $00
	add $31                                          ; $4e3c: $c6 $31
	ld d, $c2                                        ; $4e3e: $16 $c2
	ld sp, $9202                                     ; $4e40: $31 $02 $92
	ret z                                            ; $4e43: $c8

	ld h, e                                          ; $4e44: $63
	nop                                              ; $4e45: $00
	ld [$0896], sp                                   ; $4e46: $08 $96 $08
	ld [bc], a                                       ; $4e49: $02
	cp [hl]                                          ; $4e4a: $be

jr_030_4e4b:
	ld [$1d20], sp                                   ; $4e4b: $08 $20 $1d
	add hl, de                                       ; $4e4e: $19
	jr nz, @-$40                                     ; $4e4f: $20 $be

	push bc                                          ; $4e51: $c5
	dec h                                            ; $4e52: $25
	ld [$81b1], sp                                   ; $4e53: $08 $b1 $81
	jr jr_030_4e5e                                   ; $4e56: $18 $06

	add hl, hl                                       ; $4e58: $29
	jr jr_030_4e0c                                   ; $4e59: $18 $b1

	ld sp, $0000                                     ; $4e5b: $31 $00 $00

jr_030_4e5e:
	add hl, hl                                       ; $4e5e: $29
	ld [$81b1], sp                                   ; $4e5f: $08 $b1 $81
	ld [$2a02], sp                                   ; $4e62: $08 $02 $2a
	ld [$0829], sp                                   ; $4e65: $08 $29 $08
	cp [hl]                                          ; $4e68: $be
	ld [$2025], sp                                   ; $4e69: $08 $25 $20
	inc e                                            ; $4e6c: $1c
	add hl, de                                       ; $4e6d: $19
	inc e                                            ; $4e6e: $1c
	cp [hl]                                          ; $4e6f: $be
	push bc                                          ; $4e70: $c5
	dec h                                            ; $4e71: $25
	ld [$81b1], sp                                   ; $4e72: $08 $b1 $81
	jr nc, @+$09                                     ; $4e75: $30 $07

	jr z, @+$2a                                      ; $4e77: $28 $28

	or c                                             ; $4e79: $b1
	ld hl, $0000                                     ; $4e7a: $21 $00 $00
	jr z, jr_030_4e87                                ; $4e7d: $28 $08

	or l                                             ; $4e7f: $b5
	or c                                             ; $4e80: $b1
	ld [bc], a                                       ; $4e81: $02
	rst $38                                          ; $4e82: $ff
	inc bc                                           ; $4e83: $03
	ld a, [hl]                                       ; $4e84: $7e
	nop                                              ; $4e85: $00
	rrca                                             ; $4e86: $0f

jr_030_4e87:
	db $10                                           ; $4e87: $10
	ret                                              ; $4e88: $c9


	ld [de], a                                       ; $4e89: $12
	ld [$1814], sp                                   ; $4e8a: $08 $14 $18
	sub [hl]                                         ; $4e8d: $96
	db $10                                           ; $4e8e: $10
	ld [bc], a                                       ; $4e8f: $02
	ld d, $10                                        ; $4e90: $16 $10
	ld d, $08                                        ; $4e92: $16 $08
	sub [hl]                                         ; $4e94: $96
	jr jr_030_4e9c                                   ; $4e95: $18 $05

	rla                                              ; $4e97: $17
	jr jr_030_4e4b                                   ; $4e98: $18 $b1

	add c                                            ; $4e9a: $81
	inc c                                            ; $4e9b: $0c

jr_030_4e9c:
	ld [bc], a                                       ; $4e9c: $02
	jr jr_030_4eab                                   ; $4e9d: $18 $0c

	or c                                             ; $4e9f: $b1
	ld hl, $0000                                     ; $4ea0: $21 $00 $00
	jr @+$0e                                         ; $4ea3: $18 $0c

	or l                                             ; $4ea5: $b5
	add c                                            ; $4ea6: $81
	ld [bc], a                                       ; $4ea7: $02
	ld [$1b03], sp                                   ; $4ea8: $08 $03 $1b

jr_030_4eab:
	ld [$081e], sp                                   ; $4eab: $08 $1e $08
	ld [hl+], a                                      ; $4eae: $22
	ld [$1096], sp                                   ; $4eaf: $08 $96 $10
	inc b                                            ; $4eb2: $04
	dec h                                            ; $4eb3: $25
	db $10                                           ; $4eb4: $10
	ld [hl+], a                                      ; $4eb5: $22
	db $10                                           ; $4eb6: $10
	sub [hl]                                         ; $4eb7: $96
	ld [$1e03], sp                                   ; $4eb8: $08 $03 $1e
	ld [$081b], sp                                   ; $4ebb: $08 $1b $08
	cp $ff                                           ; $4ebe: $fe $ff
	or c                                             ; $4ec0: $b1
	and c                                            ; $4ec1: $a1
	rst $38                                          ; $4ec2: $ff
	inc bc                                           ; $4ec3: $03
	add hl, de                                       ; $4ec4: $19
	db $10                                           ; $4ec5: $10
	or c                                             ; $4ec6: $b1
	ld sp, $0000                                     ; $4ec7: $31 $00 $00
	add hl, de                                       ; $4eca: $19
	ld [$d0fd], sp                                   ; $4ecb: $08 $fd $d0
	add d                                            ; $4ece: $82
	cp $b5                                           ; $4ecf: $fe $b5
	pop af                                           ; $4ed1: $f1
	nop                                              ; $4ed2: $00
	rst $38                                          ; $4ed3: $ff
	inc bc                                           ; $4ed4: $03
	ld a, [hl]                                       ; $4ed5: $7e
	dec b                                            ; $4ed6: $05
	nop                                              ; $4ed7: $00
	and d                                            ; $4ed8: $a2
	ld h, e                                          ; $4ed9: $63
	dec e                                            ; $4eda: $1d
	add hl, de                                       ; $4edb: $19
	adc $7e                                          ; $4edc: $ce $7e
	nop                                              ; $4ede: $00
	jr nz, jr_030_4ef1                               ; $4edf: $20 $10

	add hl, de                                       ; $4ee1: $19
	ld [$19c4], sp                                   ; $4ee2: $08 $c4 $19
	db $10                                           ; $4ee5: $10
	rst GetHLinHL                                          ; $4ee6: $cf
	add hl, de                                       ; $4ee7: $19
	jr jr_030_4f02                                   ; $4ee8: $18 $18

	ld [$1096], sp                                   ; $4eea: $08 $96 $10
	inc bc                                           ; $4eed: $03
	ld d, $0c                                        ; $4eee: $16 $0c
	or c                                             ; $4ef0: $b1

jr_030_4ef1:
	ld b, c                                          ; $4ef1: $41
	nop                                              ; $4ef2: $00
	nop                                              ; $4ef3: $00
	ld d, $0c                                        ; $4ef4: $16 $0c
	or c                                             ; $4ef6: $b1
	pop de                                           ; $4ef7: $d1
	rst $38                                          ; $4ef8: $ff
	dec b                                            ; $4ef9: $05
	ld e, $18                                        ; $4efa: $1e $18
	or c                                             ; $4efc: $b1
	ld b, c                                          ; $4efd: $41
	nop                                              ; $4efe: $00
	nop                                              ; $4eff: $00
	ld e, $10                                        ; $4f00: $1e $10

jr_030_4f02:
	or c                                             ; $4f02: $b1
	pop hl                                           ; $4f03: $e1
	rst $38                                          ; $4f04: $ff
	inc bc                                           ; $4f05: $03

jr_030_4f06:
	ld a, [hl]                                       ; $4f06: $7e
	dec b                                            ; $4f07: $05
	nop                                              ; $4f08: $00
	xor c                                            ; $4f09: $a9
	ld e, $18                                        ; $4f0a: $1e $18
	ld a, [hl]                                       ; $4f0c: $7e
	nop                                              ; $4f0d: $00
	dec e                                            ; $4f0e: $1d
	ld [$027d], sp                                   ; $4f0f: $08 $7d $02
	or c                                             ; $4f12: $b1
	pop hl                                           ; $4f13: $e1
	db $10                                           ; $4f14: $10
	ld [bc], a                                       ; $4f15: $02
	dec de                                           ; $4f16: $1b
	db $10                                           ; $4f17: $10
	or c                                             ; $4f18: $b1
	ld b, c                                          ; $4f19: $41
	nop                                              ; $4f1a: $00
	nop                                              ; $4f1b: $00
	dec de                                           ; $4f1c: $1b
	ld [$e1b1], sp                                   ; $4f1d: $08 $b1 $e1
	db $10                                           ; $4f20: $10
	ld [bc], a                                       ; $4f21: $02
	dec de                                           ; $4f22: $1b
	db $10                                           ; $4f23: $10
	or c                                             ; $4f24: $b1
	ld b, c                                          ; $4f25: $41
	nop                                              ; $4f26: $00
	nop                                              ; $4f27: $00
	dec de                                           ; $4f28: $1b
	ld [$d1b1], sp                                   ; $4f29: $08 $b1 $d1
	rst $38                                          ; $4f2c: $ff
	rlca                                             ; $4f2d: $07
	add hl, de                                       ; $4f2e: $19
	jr jr_030_4f49                                   ; $4f2f: $18 $18

	db $10                                           ; $4f31: $10
	or c                                             ; $4f32: $b1
	pop hl                                           ; $4f33: $e1
	rst $38                                          ; $4f34: $ff
	inc bc                                           ; $4f35: $03
	ld a, l                                          ; $4f36: $7d
	nop                                              ; $4f37: $00
	cp l                                             ; $4f38: $bd
	ld [bc], a                                       ; $4f39: $02
	jr nz, jr_030_4f44                               ; $4f3a: $20 $08

	rla                                              ; $4f3c: $17
	or c                                             ; $4f3d: $b1
	ld b, c                                          ; $4f3e: $41
	nop                                              ; $4f3f: $00
	nop                                              ; $4f40: $00
	jr nz, jr_030_4f44                               ; $4f41: $20 $01

	ld a, [hl]                                       ; $4f43: $7e

jr_030_4f44:
	nop                                              ; $4f44: $00
	or l                                             ; $4f45: $b5
	and c                                            ; $4f46: $a1
	ld [bc], a                                       ; $4f47: $02
	rst $38                                          ; $4f48: $ff

jr_030_4f49:
	inc bc                                           ; $4f49: $03
	add hl, de                                       ; $4f4a: $19
	jr @+$1d                                         ; $4f4b: $18 $1b

	jr jr_030_4f6d                                   ; $4f4d: $18 $1e

	jr jr_030_4f06                                   ; $4f4f: $18 $b5

	pop af                                           ; $4f51: $f1
	nop                                              ; $4f52: $00
	rst $38                                          ; $4f53: $ff
	inc bc                                           ; $4f54: $03
	ld a, [hl]                                       ; $4f55: $7e
	dec b                                            ; $4f56: $05
	nop                                              ; $4f57: $00
	and d                                            ; $4f58: $a2
	ld h, e                                          ; $4f59: $63
	dec e                                            ; $4f5a: $1d
	jr @+$80                                         ; $4f5b: $18 $7e

	nop                                              ; $4f5d: $00
	jr nz, jr_030_4f70                               ; $4f5e: $20 $10

	add hl, de                                       ; $4f60: $19
	ld [$19c4], sp                                   ; $4f61: $08 $c4 $19
	db $10                                           ; $4f64: $10
	adc $19                                          ; $4f65: $ce $19
	jr jr_030_4f81                                   ; $4f67: $18 $18

	ld [$d1b1], sp                                   ; $4f69: $08 $b1 $d1
	db $10                                           ; $4f6c: $10

jr_030_4f6d:
	ld [bc], a                                       ; $4f6d: $02
	ld d, $0c                                        ; $4f6e: $16 $0c

jr_030_4f70:
	or c                                             ; $4f70: $b1
	ld b, c                                          ; $4f71: $41
	nop                                              ; $4f72: $00
	nop                                              ; $4f73: $00
	ld d, $0b                                        ; $4f74: $16 $0b
	nop                                              ; $4f76: $00
	ld bc, $e1b1                                     ; $4f77: $01 $b1 $e1
	rst $38                                          ; $4f7a: $ff
	inc bc                                           ; $4f7b: $03
	ld hl, $2202                                     ; $4f7c: $21 $02 $22
	ld d, $b1                                        ; $4f7f: $16 $b1

jr_030_4f81:
	ld b, c                                          ; $4f81: $41
	nop                                              ; $4f82: $00
	nop                                              ; $4f83: $00
	ld [hl+], a                                      ; $4f84: $22
	db $10                                           ; $4f85: $10
	or c                                             ; $4f86: $b1
	pop af                                           ; $4f87: $f1
	rst $38                                          ; $4f88: $ff
	inc b                                            ; $4f89: $04
	ld [hl+], a                                      ; $4f8a: $22
	jr @+$20                                         ; $4f8b: $18 $1e

	ld [$1896], sp                                   ; $4f8d: $08 $96 $18
	ld [bc], a                                       ; $4f90: $02
	dec e                                            ; $4f91: $1d
	jr @-$68                                         ; $4f92: $18 $96

	rst $38                                          ; $4f94: $ff
	inc bc                                           ; $4f95: $03
	dec e                                            ; $4f96: $1d
	rrca                                             ; $4f97: $0f
	rst JumpTable                                          ; $4f98: $c7
	dec e                                            ; $4f99: $1d
	ld bc, $19cd                                     ; $4f9a: $01 $cd $19
	ld [$1018], sp                                   ; $4f9d: $08 $18 $10
	ld d, $08                                        ; $4fa0: $16 $08
	jr jr_030_4fb4                                   ; $4fa2: $18 $10

	sub [hl]                                         ; $4fa4: $96
	rst $38                                          ; $4fa5: $ff
	inc bc                                           ; $4fa6: $03
	cp l                                             ; $4fa7: $bd
	ld [bc], a                                       ; $4fa8: $02
	add hl, de                                       ; $4fa9: $19
	ld [$b518], sp                                   ; $4faa: $08 $18 $b5
	and c                                            ; $4fad: $a1
	ld [bc], a                                       ; $4fae: $02
	rst $38                                          ; $4faf: $ff
	inc b                                            ; $4fb0: $04
	dec e                                            ; $4fb1: $1d
	db $10                                           ; $4fb2: $10
	sub [hl]                                         ; $4fb3: $96

jr_030_4fb4:
	rst $38                                          ; $4fb4: $ff
	ld [bc], a                                       ; $4fb5: $02
	dec de                                           ; $4fb6: $1b
	ld [$ff96], sp                                   ; $4fb7: $08 $96 $ff
	inc b                                            ; $4fba: $04
	ld e, $18                                        ; $4fbb: $1e $18
	dec e                                            ; $4fbd: $1d
	db $10                                           ; $4fbe: $10
	or l                                             ; $4fbf: $b5
	pop de                                           ; $4fc0: $d1
	nop                                              ; $4fc1: $00
	rst $38                                          ; $4fc2: $ff
	inc b                                            ; $4fc3: $04
	cp l                                             ; $4fc4: $bd
	ld [bc], a                                       ; $4fc5: $02
	add hl, de                                       ; $4fc6: $19
	ld [$9010], sp                                   ; $4fc7: $08 $10 $90
	ld h, e                                          ; $4fca: $63
	or c                                             ; $4fcb: $b1
	pop de                                           ; $4fcc: $d1
	ld [$1902], sp                                   ; $4fcd: $08 $02 $19
	ld [$1096], sp                                   ; $4fd0: $08 $96 $10
	ld [bc], a                                       ; $4fd3: $02
	dec de                                           ; $4fd4: $1b
	db $10                                           ; $4fd5: $10
	sub [hl]                                         ; $4fd6: $96
	ld [$1b02], sp                                   ; $4fd7: $08 $02 $1b
	ld [$1096], sp                                   ; $4fda: $08 $96 $10
	ld [bc], a                                       ; $4fdd: $02
	dec e                                            ; $4fde: $1d
	db $10                                           ; $4fdf: $10
	sub [hl]                                         ; $4fe0: $96
	ld [$1d02], sp                                   ; $4fe1: $08 $02 $1d
	ld [$1096], sp                                   ; $4fe4: $08 $96 $10
	ld [bc], a                                       ; $4fe7: $02
	dec de                                           ; $4fe8: $1b
	db $10                                           ; $4fe9: $10
	sub [hl]                                         ; $4fea: $96
	ld [$1b02], sp                                   ; $4feb: $08 $02 $1b
	ld [$1096], sp                                   ; $4fee: $08 $96 $10
	ld [bc], a                                       ; $4ff1: $02
	add hl, de                                       ; $4ff2: $19
	db $10                                           ; $4ff3: $10
	sub [hl]                                         ; $4ff4: $96
	ld [$1902], sp                                   ; $4ff5: $08 $02 $19
	ld [$1096], sp                                   ; $4ff8: $08 $96 $10
	ld [bc], a                                       ; $4ffb: $02
	dec de                                           ; $4ffc: $1b
	db $10                                           ; $4ffd: $10
	or c                                             ; $4ffe: $b1
	pop de                                           ; $4fff: $d1
	ld [$1d03], sp                                   ; $5000: $08 $03 $1d
	ld [$31b1], sp                                   ; $5003: $08 $b1 $31
	db $10                                           ; $5006: $10
	ld b, $1d                                        ; $5007: $06 $1d
	db $10                                           ; $5009: $10
	or c                                             ; $500a: $b1
	pop de                                           ; $500b: $d1
	ld [$1b02], sp                                   ; $500c: $08 $02 $1b
	ld [$31b1], sp                                   ; $500f: $08 $b1 $31
	db $10                                           ; $5012: $10
	ld b, $1b                                        ; $5013: $06 $1b
	db $10                                           ; $5015: $10
	or c                                             ; $5016: $b1
	pop bc                                           ; $5017: $c1
	db $10                                           ; $5018: $10
	inc bc                                           ; $5019: $03
	cp l                                             ; $501a: $bd
	ld [bc], a                                       ; $501b: $02
	add hl, de                                       ; $501c: $19
	ld [$b108], sp                                   ; $501d: $08 $08 $b1
	ld b, c                                          ; $5020: $41
	nop                                              ; $5021: $00
	nop                                              ; $5022: $00
	add hl, de                                       ; $5023: $19
	ld [$d1b1], sp                                   ; $5024: $08 $b1 $d1
	ld [$1902], sp                                   ; $5027: $08 $02 $19
	ld [$1096], sp                                   ; $502a: $08 $96 $10
	ld [bc], a                                       ; $502d: $02
	dec de                                           ; $502e: $1b
	db $10                                           ; $502f: $10
	sub [hl]                                         ; $5030: $96
	ld [$1b02], sp                                   ; $5031: $08 $02 $1b
	ld [$1096], sp                                   ; $5034: $08 $96 $10

jr_030_5037:
	ld [bc], a                                       ; $5037: $02
	dec e                                            ; $5038: $1d
	db $10                                           ; $5039: $10
	sub [hl]                                         ; $503a: $96
	ld [$1d02], sp                                   ; $503b: $08 $02 $1d
	ld [$1096], sp                                   ; $503e: $08 $96 $10
	ld [bc], a                                       ; $5041: $02
	dec de                                           ; $5042: $1b
	db $10                                           ; $5043: $10
	sub [hl]                                         ; $5044: $96
	ld [$1b02], sp                                   ; $5045: $08 $02 $1b
	ld [$1096], sp                                   ; $5048: $08 $96 $10
	ld [bc], a                                       ; $504b: $02
	add hl, de                                       ; $504c: $19
	db $10                                           ; $504d: $10
	sub [hl]                                         ; $504e: $96
	ld [$1902], sp                                   ; $504f: $08 $02 $19
	ld [$1096], sp                                   ; $5052: $08 $96 $10
	ld [bc], a                                       ; $5055: $02
	dec de                                           ; $5056: $1b
	db $10                                           ; $5057: $10
	or c                                             ; $5058: $b1
	pop de                                           ; $5059: $d1
	ld [$1d03], sp                                   ; $505a: $08 $03 $1d

jr_030_505d:
	ld [$31b1], sp                                   ; $505d: $08 $b1 $31
	db $10                                           ; $5060: $10
	ld b, $1d                                        ; $5061: $06 $1d
	db $10                                           ; $5063: $10
	or c                                             ; $5064: $b1
	pop de                                           ; $5065: $d1
	ld [$1b02], sp                                   ; $5066: $08 $02 $1b
	ld [$31b1], sp                                   ; $5069: $08 $b1 $31
	db $10                                           ; $506c: $10
	ld b, $1b                                        ; $506d: $06 $1b
	db $10                                           ; $506f: $10
	or c                                             ; $5070: $b1
	pop de                                           ; $5071: $d1
	rst $38                                          ; $5072: $ff
	inc bc                                           ; $5073: $03
	cp l                                             ; $5074: $bd
	ld [bc], a                                       ; $5075: $02
	add hl, de                                       ; $5076: $19
	ld [$9318], sp                                   ; $5077: $08 $18 $93
	ld h, e                                          ; $507a: $63
	or c                                             ; $507b: $b1
	or c                                             ; $507c: $b1
	rst $38                                          ; $507d: $ff
	inc b                                            ; $507e: $04
	dec h                                            ; $507f: $25
	jr jr_030_50a6                                   ; $5080: $18 $24

	db $10                                           ; $5082: $10
	dec h                                            ; $5083: $25
	jr jr_030_5037                                   ; $5084: $18 $b1

	and c                                            ; $5086: $a1
	rst $38                                          ; $5087: $ff
	inc bc                                           ; $5088: $03
	ld a, [hl]                                       ; $5089: $7e
	dec b                                            ; $508a: $05
	nop                                              ; $508b: $00
	and b                                            ; $508c: $a0
	cp l                                             ; $508d: $bd
	ld [bc], a                                       ; $508e: $02
	inc l                                            ; $508f: $2c
	ld [$7e18], sp                                   ; $5090: $08 $18 $7e
	nop                                              ; $5093: $00
	or c                                             ; $5094: $b1
	pop bc                                           ; $5095: $c1
	rst $38                                          ; $5096: $ff
	inc b                                            ; $5097: $04
	dec h                                            ; $5098: $25
	jr jr_030_50bf                                   ; $5099: $18 $24

	db $10                                           ; $509b: $10
	dec h                                            ; $509c: $25
	jr jr_030_511d                                   ; $509d: $18 $7e

	dec b                                            ; $509f: $05
	nop                                              ; $50a0: $00
	and b                                            ; $50a1: $a0
	or c                                             ; $50a2: $b1
	and c                                            ; $50a3: $a1
	rst $38                                          ; $50a4: $ff
	inc b                                            ; $50a5: $04

jr_030_50a6:
	cp l                                             ; $50a6: $bd
	ld [bc], a                                       ; $50a7: $02
	inc l                                            ; $50a8: $2c
	ld [$b110], sp                                   ; $50a9: $08 $10 $b1
	ld sp, $0000                                     ; $50ac: $31 $00 $00
	inc l                                            ; $50af: $2c
	ld [$b1b5], sp                                   ; $50b0: $08 $b5 $b1
	ld [bc], a                                       ; $50b3: $02
	rst $38                                          ; $50b4: $ff
	inc bc                                           ; $50b5: $03
	ld a, [hl]                                       ; $50b6: $7e
	nop                                              ; $50b7: $00
	ld de, $9618                                     ; $50b8: $11 $18 $96
	db $10                                           ; $50bb: $10
	ld [bc], a                                       ; $50bc: $02
	ld [de], a                                       ; $50bd: $12
	db $10                                           ; $50be: $10

jr_030_50bf:
	ld [de], a                                       ; $50bf: $12
	ld [$1896], sp                                   ; $50c0: $08 $96 $18
	dec b                                            ; $50c3: $05
	inc de                                           ; $50c4: $13
	jr jr_030_505d                                   ; $50c5: $18 $96

	inc c                                            ; $50c7: $0c
	ld [bc], a                                       ; $50c8: $02
	inc d                                            ; $50c9: $14
	inc c                                            ; $50ca: $0c
	or c                                             ; $50cb: $b1
	ld hl, $0000                                     ; $50cc: $21 $00 $00
	inc d                                            ; $50cf: $14
	inc c                                            ; $50d0: $0c
	or l                                             ; $50d1: $b5
	or c                                             ; $50d2: $b1
	ld [bc], a                                       ; $50d3: $02
	ld [$1e02], sp                                   ; $50d4: $08 $02 $1e
	ld [$0822], sp                                   ; $50d7: $08 $22 $08
	dec h                                            ; $50da: $25
	ld [$1096], sp                                   ; $50db: $08 $96 $10
	inc bc                                           ; $50de: $03
	add hl, hl                                       ; $50df: $29
	db $10                                           ; $50e0: $10
	dec h                                            ; $50e1: $25
	db $10                                           ; $50e2: $10
	sub [hl]                                         ; $50e3: $96
	ld [$2202], sp                                   ; $50e4: $08 $02 $22
	ld [$081e], sp                                   ; $50e7: $08 $1e $08
	cp $ff                                           ; $50ea: $fe $ff
	ret nc                                           ; $50ec: $d0

	add d                                            ; $50ed: $82
	cp $81                                           ; $50ee: $fe $81
	jp nz, $0d63                                     ; $50f0: $c2 $63 $0d

	ld de, $0dc4                                     ; $50f3: $11 $c4 $0d
	inc b                                            ; $50f6: $04
	add $0d                                          ; $50f7: $c6 $0d
	inc b                                            ; $50f9: $04
	jp nz, $100d                                     ; $50fa: $c2 $0d $10

	call nz, $040d                                   ; $50fd: $c4 $0d $04
	add $0d                                          ; $5100: $c6 $0d
	inc b                                            ; $5102: $04
	jp nz, $1011                                     ; $5103: $c2 $11 $10

	call nz, $0411                                   ; $5106: $c4 $11 $04
	add $11                                          ; $5109: $c6 $11
	inc b                                            ; $510b: $04
	jp nz, $1011                                     ; $510c: $c2 $11 $10

	call nz, $0411                                   ; $510f: $c4 $11 $04
	add $11                                          ; $5112: $c6 $11
	inc b                                            ; $5114: $04
	jp nz, $1012                                     ; $5115: $c2 $12 $10

	call nz, $0412                                   ; $5118: $c4 $12 $04
	add $12                                          ; $511b: $c6 $12

jr_030_511d:
	inc b                                            ; $511d: $04
	jp nz, $1012                                     ; $511e: $c2 $12 $10

	call nz, $0412                                   ; $5121: $c4 $12 $04
	add $12                                          ; $5124: $c6 $12
	inc b                                            ; $5126: $04
	jp nz, $100f                                     ; $5127: $c2 $0f $10

	call nz, $040f                                   ; $512a: $c4 $0f $04
	add $0f                                          ; $512d: $c6 $0f
	inc b                                            ; $512f: $04
	jp nz, $100f                                     ; $5130: $c2 $0f $10

	call nz, $040f                                   ; $5133: $c4 $0f $04
	add $0f                                          ; $5136: $c6 $0f
	inc b                                            ; $5138: $04
	jp nz, $1014                                     ; $5139: $c2 $14 $10

	call nz, $0414                                   ; $513c: $c4 $14 $04
	add $14                                          ; $513f: $c6 $14
	inc b                                            ; $5141: $04
	jp nz, $1014                                     ; $5142: $c2 $14 $10

	call nz, $0414                                   ; $5145: $c4 $14 $04
	add $14                                          ; $5148: $c6 $14
	inc b                                            ; $514a: $04
	jp nz, $1012                                     ; $514b: $c2 $12 $10

	call nz, $0412                                   ; $514e: $c4 $12 $04
	add $12                                          ; $5151: $c6 $12
	inc b                                            ; $5153: $04
	jp nz, $1012                                     ; $5154: $c2 $12 $10

	call nz, $0412                                   ; $5157: $c4 $12 $04
	add $12                                          ; $515a: $c6 $12
	inc b                                            ; $515c: $04
	jp nz, $0c11                                     ; $515d: $c2 $11 $0c

	call nz, $0611                                   ; $5160: $c4 $11 $06
	add $11                                          ; $5163: $c6 $11
	ld b, $c2                                        ; $5165: $06 $c2
	db $10                                           ; $5167: $10
	inc d                                            ; $5168: $14
	call nz, $0410                                   ; $5169: $c4 $10 $04
	jp nz, $140f                                     ; $516c: $c2 $0f $14

	call nz, $040f                                   ; $516f: $c4 $0f $04
	jp nz, $1414                                     ; $5172: $c2 $14 $14

	call nz, $0414                                   ; $5175: $c4 $14 $04
	jp nz, Jump_030_6381                             ; $5178: $c2 $81 $63

	dec c                                            ; $517b: $0d
	db $10                                           ; $517c: $10
	call nz, $040d                                   ; $517d: $c4 $0d $04
	add $0d                                          ; $5180: $c6 $0d
	inc b                                            ; $5182: $04
	jp nz, $100d                                     ; $5183: $c2 $0d $10

	call nz, $040d                                   ; $5186: $c4 $0d $04
	add $0d                                          ; $5189: $c6 $0d
	inc b                                            ; $518b: $04
	jp nz, $1011                                     ; $518c: $c2 $11 $10

	call nz, $0411                                   ; $518f: $c4 $11 $04
	add $11                                          ; $5192: $c6 $11
	inc b                                            ; $5194: $04
	jp nz, $1011                                     ; $5195: $c2 $11 $10

	call nz, $0411                                   ; $5198: $c4 $11 $04
	add $11                                          ; $519b: $c6 $11
	inc b                                            ; $519d: $04
	jp nz, $1012                                     ; $519e: $c2 $12 $10

	call nz, $0412                                   ; $51a1: $c4 $12 $04
	add $12                                          ; $51a4: $c6 $12
	inc b                                            ; $51a6: $04
	jp nz, $1012                                     ; $51a7: $c2 $12 $10

	call nz, $0412                                   ; $51aa: $c4 $12 $04
	add $12                                          ; $51ad: $c6 $12
	inc b                                            ; $51af: $04
	jp nz, $1011                                     ; $51b0: $c2 $11 $10

	call nz, $0411                                   ; $51b3: $c4 $11 $04
	add $11                                          ; $51b6: $c6 $11
	inc b                                            ; $51b8: $04
	jp nz, $1011                                     ; $51b9: $c2 $11 $10

	call nz, $0411                                   ; $51bc: $c4 $11 $04
	add $11                                          ; $51bf: $c6 $11
	inc b                                            ; $51c1: $04
	jp nz, $100f                                     ; $51c2: $c2 $0f $10

	call nz, $040f                                   ; $51c5: $c4 $0f $04
	add $0f                                          ; $51c8: $c6 $0f
	inc b                                            ; $51ca: $04
	jp nz, $100f                                     ; $51cb: $c2 $0f $10

	call nz, $040f                                   ; $51ce: $c4 $0f $04
	add $0f                                          ; $51d1: $c6 $0f
	inc b                                            ; $51d3: $04
	jp nz, $1014                                     ; $51d4: $c2 $14 $10

	call nz, $0414                                   ; $51d7: $c4 $14 $04
	add $14                                          ; $51da: $c6 $14
	inc b                                            ; $51dc: $04
	jp nz, $1014                                     ; $51dd: $c2 $14 $10

	call nz, $0414                                   ; $51e0: $c4 $14 $04
	add $14                                          ; $51e3: $c6 $14
	inc b                                            ; $51e5: $04
	ld a, a                                          ; $51e6: $7f
	rla                                              ; $51e7: $17
	jp nz, $0c0d                                     ; $51e8: $c2 $0d $0c

	add $0d                                          ; $51eb: $c6 $0d
	inc c                                            ; $51ed: $0c
	jp nz, $140d                                     ; $51ee: $c2 $0d $14

	call nz, $040d                                   ; $51f1: $c4 $0d $04
	jp nz, $140f                                     ; $51f4: $c2 $0f $14

	call nz, $040f                                   ; $51f7: $c4 $0f $04
	jp nz, $1411                                     ; $51fa: $c2 $11 $14

	call nz, $0411                                   ; $51fd: $c4 $11 $04
	add c                                            ; $5200: $81
	ld h, e                                          ; $5201: $63
	ei                                               ; $5202: $fb
	jp nz, $1012                                     ; $5203: $c2 $12 $10

	call nz, $042e                                   ; $5206: $c4 $2e $04
	add $2e                                          ; $5209: $c6 $2e
	inc b                                            ; $520b: $04
	jp nz, $1016                                     ; $520c: $c2 $16 $10

	call nz, $042e                                   ; $520f: $c4 $2e $04
	add $2e                                          ; $5212: $c6 $2e
	inc b                                            ; $5214: $04
	jp nz, $1019                                     ; $5215: $c2 $19 $10

	call nz, $042e                                   ; $5218: $c4 $2e $04
	add $2e                                          ; $521b: $c6 $2e
	inc b                                            ; $521d: $04
	jp nz, $1016                                     ; $521e: $c2 $16 $10

	call nz, $042e                                   ; $5221: $c4 $2e $04
	add $2e                                          ; $5224: $c6 $2e
	inc b                                            ; $5226: $04
	ei                                               ; $5227: $fb
	ld [bc], a                                       ; $5228: $02
	jp nz, $1012                                     ; $5229: $c2 $12 $10

	call nz, $042d                                   ; $522c: $c4 $2d $04
	add $2d                                          ; $522f: $c6 $2d
	inc b                                            ; $5231: $04
	jp nz, $1015                                     ; $5232: $c2 $15 $10

	call nz, $042d                                   ; $5235: $c4 $2d $04
	add $2d                                          ; $5238: $c6 $2d
	inc b                                            ; $523a: $04
	jp nz, $1019                                     ; $523b: $c2 $19 $10

	call nz, $042d                                   ; $523e: $c4 $2d $04
	add $2d                                          ; $5241: $c6 $2d
	inc b                                            ; $5243: $04
	jp nz, $1015                                     ; $5244: $c2 $15 $10

	call nz, $042d                                   ; $5247: $c4 $2d $04
	add $2d                                          ; $524a: $c6 $2d
	inc b                                            ; $524c: $04
	jp nz, $1012                                     ; $524d: $c2 $12 $10

	call nz, $042f                                   ; $5250: $c4 $2f $04
	add $2f                                          ; $5253: $c6 $2f
	inc b                                            ; $5255: $04
	jp nz, $1015                                     ; $5256: $c2 $15 $10

	call nz, $042f                                   ; $5259: $c4 $2f $04
	add $2f                                          ; $525c: $c6 $2f
	inc b                                            ; $525e: $04
	jp nz, $1019                                     ; $525f: $c2 $19 $10

	call nz, $042d                                   ; $5262: $c4 $2d $04
	add $2d                                          ; $5265: $c6 $2d
	inc b                                            ; $5267: $04
	jp nz, $1015                                     ; $5268: $c2 $15 $10

	call nz, $042d                                   ; $526b: $c4 $2d $04
	add $2d                                          ; $526e: $c6 $2d
	inc b                                            ; $5270: $04
	add c                                            ; $5271: $81
	ld h, e                                          ; $5272: $63
	ei                                               ; $5273: $fb
	jp nz, $1011                                     ; $5274: $c2 $11 $10

	call nz, $0411                                   ; $5277: $c4 $11 $04
	add $11                                          ; $527a: $c6 $11
	inc b                                            ; $527c: $04
	ei                                               ; $527d: $fb
	inc b                                            ; $527e: $04
	ei                                               ; $527f: $fb
	jp nz, $1010                                     ; $5280: $c2 $10 $10

	call nz, $0410                                   ; $5283: $c4 $10 $04
	add $10                                          ; $5286: $c6 $10
	inc b                                            ; $5288: $04
	ei                                               ; $5289: $fb
	inc b                                            ; $528a: $04
	jp nz, $100f                                     ; $528b: $c2 $0f $10

	call nz, $040f                                   ; $528e: $c4 $0f $04
	add $0f                                          ; $5291: $c6 $0f
	inc b                                            ; $5293: $04
	jp nz, $1011                                     ; $5294: $c2 $11 $10

	call nz, $0411                                   ; $5297: $c4 $11 $04
	add $11                                          ; $529a: $c6 $11
	inc b                                            ; $529c: $04
	jp nz, $1012                                     ; $529d: $c2 $12 $10

	call nz, $0412                                   ; $52a0: $c4 $12 $04
	add $12                                          ; $52a3: $c6 $12
	inc b                                            ; $52a5: $04
	jp nz, $1013                                     ; $52a6: $c2 $13 $10

	call nz, $0413                                   ; $52a9: $c4 $13 $04
	add $13                                          ; $52ac: $c6 $13
	inc b                                            ; $52ae: $04
	jp nz, $0c14                                     ; $52af: $c2 $14 $0c

	add $14                                          ; $52b2: $c6 $14
	inc b                                            ; $52b4: $04
	add $14                                          ; $52b5: $c6 $14
	inc b                                            ; $52b7: $04
	nop                                              ; $52b8: $00
	inc l                                            ; $52b9: $2c
	jp nz, $1214                                     ; $52ba: $c2 $14 $12

	inc de                                           ; $52bd: $13
	inc bc                                           ; $52be: $03
	ld [de], a                                       ; $52bf: $12
	inc bc                                           ; $52c0: $03
	cp [hl]                                          ; $52c1: $be
	ld [bc], a                                       ; $52c2: $02
	ld de, $0f10                                     ; $52c3: $11 $10 $0f
	ld c, $be                                        ; $52c6: $0e $be
	cp $ff                                           ; $52c8: $fe $ff
	ret nc                                           ; $52ca: $d0

	add d                                            ; $52cb: $82
	cp $0b                                           ; $52cc: $fe $0b
	add hl, de                                       ; $52ce: $19
	inc c                                            ; $52cf: $0c
	jr jr_030_52db                                   ; $52d0: $18 $09

	db $10                                           ; $52d2: $10
	dec bc                                           ; $52d3: $0b
	ld [$100c], sp                                   ; $52d4: $08 $0c $10
	ld [de], a                                       ; $52d7: $12
	ld [$0bfb], sp                                   ; $52d8: $08 $fb $0b

jr_030_52db:
	jr jr_030_52e9                                   ; $52db: $18 $0c

	jr jr_030_52e8                                   ; $52dd: $18 $09

	db $10                                           ; $52df: $10
	dec bc                                           ; $52e0: $0b
	ld [$100c], sp                                   ; $52e1: $08 $0c $10
	ld [de], a                                       ; $52e4: $12
	ld [$03fb], sp                                   ; $52e5: $08 $fb $03

jr_030_52e8:
	ei                                               ; $52e8: $fb

jr_030_52e9:
	dec bc                                           ; $52e9: $0b
	jr jr_030_52f8                                   ; $52ea: $18 $0c

	jr jr_030_52f7                                   ; $52ec: $18 $09

	db $10                                           ; $52ee: $10
	dec bc                                           ; $52ef: $0b
	ld [$100c], sp                                   ; $52f0: $08 $0c $10
	ld [de], a                                       ; $52f3: $12
	ld [$03fb], sp                                   ; $52f4: $08 $fb $03

jr_030_52f7:
	dec bc                                           ; $52f7: $0b

jr_030_52f8:
	db $10                                           ; $52f8: $10
	dec c                                            ; $52f9: $0d
	ld [$180c], sp                                   ; $52fa: $08 $0c $18
	dec bc                                           ; $52fd: $0b
	db $10                                           ; $52fe: $10
	inc de                                           ; $52ff: $13
	ld [$100c], sp                                   ; $5300: $08 $0c $10
	jr @+$0a                                         ; $5303: $18 $08

	jr jr_030_531f                                   ; $5305: $18 $18

	inc c                                            ; $5307: $0c
	jr @+$14                                         ; $5308: $18 $12

	db $10                                           ; $530a: $10
	dec bc                                           ; $530b: $0b
	ld [$100c], sp                                   ; $530c: $08 $0c $10
	dec bc                                           ; $530f: $0b
	ld [$100b], sp                                   ; $5310: $08 $0b $10
	dec bc                                           ; $5313: $0b
	ld [$180c], sp                                   ; $5314: $08 $0c $18
	ld [de], a                                       ; $5317: $12
	db $10                                           ; $5318: $10
	cp [hl]                                          ; $5319: $be
	ld [$0c0b], sp                                   ; $531a: $08 $0b $0c
	ld d, $0c                                        ; $531d: $16 $0c

jr_030_531f:
	cp [hl]                                          ; $531f: $be
	dec bc                                           ; $5320: $0b
	db $10                                           ; $5321: $10
	dec bc                                           ; $5322: $0b
	ld [$180c], sp                                   ; $5323: $08 $0c $18
	ld [de], a                                       ; $5326: $12
	db $10                                           ; $5327: $10
	dec bc                                           ; $5328: $0b
	ld [$100c], sp                                   ; $5329: $08 $0c $10
	dec bc                                           ; $532c: $0b
	ld [$100b], sp                                   ; $532d: $08 $0b $10
	dec bc                                           ; $5330: $0b
	ld [$100c], sp                                   ; $5331: $08 $0c $10
	dec bc                                           ; $5334: $0b
	jr jr_030_5342                                   ; $5335: $18 $0b

	ld [$100c], sp                                   ; $5337: $08 $0c $10
	jr @+$0a                                         ; $533a: $18 $08

	dec bc                                           ; $533c: $0b
	db $10                                           ; $533d: $10
	ld [de], a                                       ; $533e: $12
	ld [$180c], sp                                   ; $533f: $08 $0c $18

jr_030_5342:
	dec bc                                           ; $5342: $0b
	ld [$0813], sp                                   ; $5343: $08 $13 $08
	add hl, bc                                       ; $5346: $09
	ld [$100c], sp                                   ; $5347: $08 $0c $10
	inc de                                           ; $534a: $13
	ld [$100b], sp                                   ; $534b: $08 $0b $10
	ld [de], a                                       ; $534e: $12
	ld [$100c], sp                                   ; $534f: $08 $0c $10
	add hl, bc                                       ; $5352: $09
	ld [$100b], sp                                   ; $5353: $08 $0b $10
	dec bc                                           ; $5356: $0b
	ld [$100c], sp                                   ; $5357: $08 $0c $10
	add hl, bc                                       ; $535a: $09
	ld [$1018], sp                                   ; $535b: $08 $18 $10
	inc de                                           ; $535e: $13
	ld [$100c], sp                                   ; $535f: $08 $0c $10
	dec bc                                           ; $5362: $0b
	ld [$0818], sp                                   ; $5363: $08 $18 $08
	add hl, bc                                       ; $5366: $09
	inc b                                            ; $5367: $04
	add hl, bc                                       ; $5368: $09
	inc b                                            ; $5369: $04
	cp [hl]                                          ; $536a: $be
	ld [$0b09], sp                                   ; $536b: $08 $09 $0b
	inc de                                           ; $536e: $13
	inc c                                            ; $536f: $0c
	cp [hl]                                          ; $5370: $be
	inc c                                            ; $5371: $0c
	jr nc, jr_030_5374                               ; $5372: $30 $00

jr_030_5374:
	db $10                                           ; $5374: $10
	inc de                                           ; $5375: $13
	ld [$100c], sp                                   ; $5376: $08 $0c $10
	jr jr_030_5383                                   ; $5379: $18 $08

	cp $ff                                           ; $537b: $fe $ff
	ret nc                                           ; $537d: $d0

	add sp, -$02                                     ; $537e: $e8 $fe
	or l                                             ; $5380: $b5
	pop bc                                           ; $5381: $c1
	ld [bc], a                                       ; $5382: $02

jr_030_5383:
	rst $38                                          ; $5383: $ff
	inc bc                                           ; $5384: $03
	dec e                                            ; $5385: $1d
	db $10                                           ; $5386: $10
	rra                                              ; $5387: $1f
	ld [$41b1], sp                                   ; $5388: $08 $b1 $41
	nop                                              ; $538b: $00
	nop                                              ; $538c: $00
	rra                                              ; $538d: $1f
	db $10                                           ; $538e: $10
	or c                                             ; $538f: $b1
	pop hl                                           ; $5390: $e1
	nop                                              ; $5391: $00
	nop                                              ; $5392: $00
	rra                                              ; $5393: $1f
	ld [$d1b5], sp                                   ; $5394: $08 $b5 $d1
	nop                                              ; $5397: $00
	nop                                              ; $5398: $00
	nop                                              ; $5399: $00
	inc de                                           ; $539a: $13
	dec b                                            ; $539b: $05
	nop                                              ; $539c: $00
	add hl, bc                                       ; $539d: $09
	inc de                                           ; $539e: $13
	dec b                                            ; $539f: $05
	nop                                              ; $53a0: $00
	dec b                                            ; $53a1: $05
	or l                                             ; $53a2: $b5
	pop bc                                           ; $53a3: $c1
	ld [bc], a                                       ; $53a4: $02
	rst $38                                          ; $53a5: $ff
	inc bc                                           ; $53a6: $03
	dec e                                            ; $53a7: $1d
	db $10                                           ; $53a8: $10
	rra                                              ; $53a9: $1f
	ld [$41b1], sp                                   ; $53aa: $08 $b1 $41
	nop                                              ; $53ad: $00
	nop                                              ; $53ae: $00
	rra                                              ; $53af: $1f
	db $10                                           ; $53b0: $10
	or c                                             ; $53b1: $b1
	pop hl                                           ; $53b2: $e1
	rst $38                                          ; $53b3: $ff
	inc bc                                           ; $53b4: $03
	rra                                              ; $53b5: $1f
	ld [$41b1], sp                                   ; $53b6: $08 $b1 $41
	nop                                              ; $53b9: $00
	nop                                              ; $53ba: $00
	rra                                              ; $53bb: $1f
	db $10                                           ; $53bc: $10
	sub b                                            ; $53bd: $90
	call $0413                                       ; $53be: $cd $13 $04
	nop                                              ; $53c1: $00
	inc b                                            ; $53c2: $04
	or l                                             ; $53c3: $b5
	or c                                             ; $53c4: $b1
	inc bc                                           ; $53c5: $03
	rst $38                                          ; $53c6: $ff
	inc bc                                           ; $53c7: $03
	ld a, [hl]                                       ; $53c8: $7e
	dec b                                            ; $53c9: $05
	nop                                              ; $53ca: $00
	and b                                            ; $53cb: $a0
	dec h                                            ; $53cc: $25
	db $10                                           ; $53cd: $10
	ld a, [hl]                                       ; $53ce: $7e
	nop                                              ; $53cf: $00
	inc h                                            ; $53d0: $24
	ld [$0c22], sp                                   ; $53d1: $08 $22 $0c
	or c                                             ; $53d4: $b1
	ld b, c                                          ; $53d5: $41
	rst $38                                          ; $53d6: $ff
	nop                                              ; $53d7: $00
	ld [hl+], a                                      ; $53d8: $22
	inc c                                            ; $53d9: $0c
	or l                                             ; $53da: $b5
	pop bc                                           ; $53db: $c1
	ld [bc], a                                       ; $53dc: $02
	rst $38                                          ; $53dd: $ff

jr_030_53de:
	inc bc                                           ; $53de: $03
	dec e                                            ; $53df: $1d
	db $10                                           ; $53e0: $10
	rra                                              ; $53e1: $1f
	ld [$41b1], sp                                   ; $53e2: $08 $b1 $41
	nop                                              ; $53e5: $00
	nop                                              ; $53e6: $00

jr_030_53e7:
	rra                                              ; $53e7: $1f
	db $10                                           ; $53e8: $10
	or c                                             ; $53e9: $b1
	pop hl                                           ; $53ea: $e1
	nop                                              ; $53eb: $00
	nop                                              ; $53ec: $00
	rra                                              ; $53ed: $1f
	ld [$d1b5], sp                                   ; $53ee: $08 $b5 $d1
	nop                                              ; $53f1: $00
	nop                                              ; $53f2: $00
	nop                                              ; $53f3: $00
	inc de                                           ; $53f4: $13
	dec b                                            ; $53f5: $05
	nop                                              ; $53f6: $00
	add hl, bc                                       ; $53f7: $09
	inc de                                           ; $53f8: $13
	dec b                                            ; $53f9: $05
	nop                                              ; $53fa: $00
	dec b                                            ; $53fb: $05
	or l                                             ; $53fc: $b5
	and c                                            ; $53fd: $a1

jr_030_53fe:
	ld bc, $07ff                                     ; $53fe: $01 $ff $07
	ld a, [hl]                                       ; $5401: $7e
	dec b                                            ; $5402: $05
	nop                                              ; $5403: $00
	xor c                                            ; $5404: $a9
	ld h, $30                                        ; $5405: $26 $30
	ld a, [hl]                                       ; $5407: $7e
	nop                                              ; $5408: $00
	ld [hl+], a                                      ; $5409: $22
	ld [$41b1], sp                                   ; $540a: $08 $b1 $41

jr_030_540d:
	nop                                              ; $540d: $00
	nop                                              ; $540e: $00
	ld [hl+], a                                      ; $540f: $22

jr_030_5410:
	db $10                                           ; $5410: $10
	or c                                             ; $5411: $b1
	sub c                                            ; $5412: $91
	rst $38                                          ; $5413: $ff
	inc bc                                           ; $5414: $03
	ld hl, $9610                                     ; $5415: $21 $10 $96
	rst $38                                          ; $5418: $ff
	dec b                                            ; $5419: $05
	ld a, [hl]                                       ; $541a: $7e
	ld [bc], a                                       ; $541b: $02
	nop                                              ; $541c: $00

jr_030_541d:
	and b                                            ; $541d: $a0
	ld [hl+], a                                      ; $541e: $22
	jr jr_030_53e7                                   ; $541f: $18 $c6

	ld [hl+], a                                      ; $5421: $22
	ld [$007e], sp                                   ; $5422: $08 $7e $00
	or l                                             ; $5425: $b5
	sub c                                            ; $5426: $91
	ld bc, $03ff                                     ; $5427: $01 $ff $03
	ld [hl+], a                                      ; $542a: $22
	jr jr_030_53de                                   ; $542b: $18 $b1

	ld b, c                                          ; $542d: $41
	nop                                              ; $542e: $00
	nop                                              ; $542f: $00
	ld [hl+], a                                      ; $5430: $22
	inc c                                            ; $5431: $0c
	or c                                             ; $5432: $b1
	pop bc                                           ; $5433: $c1
	nop                                              ; $5434: $00
	nop                                              ; $5435: $00
	rra                                              ; $5436: $1f
	inc c                                            ; $5437: $0c
	or l                                             ; $5438: $b5
	pop de                                           ; $5439: $d1
	nop                                              ; $543a: $00
	nop                                              ; $543b: $00
	nop                                              ; $543c: $00
	inc de                                           ; $543d: $13
	dec b                                            ; $543e: $05
	nop                                              ; $543f: $00
	add hl, bc                                       ; $5440: $09
	inc de                                           ; $5441: $13
	dec b                                            ; $5442: $05
	nop                                              ; $5443: $00
	dec b                                            ; $5444: $05
	or l                                             ; $5445: $b5
	ld [hl], c                                       ; $5446: $71
	ld bc, $05ff                                     ; $5447: $01 $ff $05
	add hl, hl                                       ; $544a: $29

jr_030_544b:
	jr nc, jr_030_53fe                               ; $544b: $30 $b1

	and c                                            ; $544d: $a1
	rst $38                                          ; $544e: $ff
	inc b                                            ; $544f: $04
	dec d                                            ; $5450: $15
	jr jr_030_541d                                   ; $5451: $18 $ca

	jr @+$1a                                         ; $5453: $18 $18

	dec de                                           ; $5455: $1b
	jr jr_030_540d                                   ; $5456: $18 $b5

	or c                                             ; $5458: $b1
	ld bc, $04ff                                     ; $5459: $01 $ff $04
	rra                                              ; $545c: $1f
	jr jr_030_5410                                   ; $545d: $18 $b1

	and c                                            ; $545f: $a1
	rst $38                                          ; $5460: $ff
	ld [bc], a                                       ; $5461: $02
	ld a, [de]                                       ; $5462: $1a
	ld [$081e], sp                                   ; $5463: $08 $1e $08
	rra                                              ; $5466: $1f
	ld [$b1b1], sp                                   ; $5467: $08 $b1 $b1
	rst $38                                          ; $546a: $ff
	inc b                                            ; $546b: $04
	ld hl, $b118                                     ; $546c: $21 $18 $b1
	pop bc                                           ; $546f: $c1
	rst $38                                          ; $5470: $ff
	ld [bc], a                                       ; $5471: $02
	ld e, $08                                        ; $5472: $1e $08
	rra                                              ; $5474: $1f
	ld [$0821], sp                                   ; $5475: $08 $21 $08
	or l                                             ; $5478: $b5
	sub c                                            ; $5479: $91
	ld bc, $04ff                                     ; $547a: $01 $ff $04
	ld [hl+], a                                      ; $547d: $22
	db $10                                           ; $547e: $10
	add hl, hl                                       ; $547f: $29
	ld [$41b1], sp                                   ; $5480: $08 $b1 $41
	nop                                              ; $5483: $00
	nop                                              ; $5484: $00
	add hl, hl                                       ; $5485: $29
	db $10                                           ; $5486: $10
	or c                                             ; $5487: $b1
	add c                                            ; $5488: $81
	rst $38                                          ; $5489: $ff
	inc b                                            ; $548a: $04
	add hl, hl                                       ; $548b: $29
	ld [$41b1], sp                                   ; $548c: $08 $b1 $41
	nop                                              ; $548f: $00
	nop                                              ; $5490: $00
	add hl, hl                                       ; $5491: $29
	db $10                                           ; $5492: $10
	or c                                             ; $5493: $b1
	add c                                            ; $5494: $81
	rst $38                                          ; $5495: $ff
	rlca                                             ; $5496: $07
	add hl, hl                                       ; $5497: $29
	jr jr_030_544b                                   ; $5498: $18 $b1

	ld b, c                                          ; $549a: $41
	nop                                              ; $549b: $00
	nop                                              ; $549c: $00
	add hl, hl                                       ; $549d: $29
	ld [$c1b5], sp                                   ; $549e: $08 $b5 $c1
	ld [bc], a                                       ; $54a1: $02
	rst $38                                          ; $54a2: $ff
	inc bc                                           ; $54a3: $03
	dec e                                            ; $54a4: $1d
	db $10                                           ; $54a5: $10
	rra                                              ; $54a6: $1f
	ld [$41b1], sp                                   ; $54a7: $08 $b1 $41
	nop                                              ; $54aa: $00
	nop                                              ; $54ab: $00
	rra                                              ; $54ac: $1f
	db $10                                           ; $54ad: $10
	or c                                             ; $54ae: $b1
	pop hl                                           ; $54af: $e1
	nop                                              ; $54b0: $00
	nop                                              ; $54b1: $00
	rra                                              ; $54b2: $1f
	ld [$d1b5], sp                                   ; $54b3: $08 $b5 $d1
	nop                                              ; $54b6: $00
	nop                                              ; $54b7: $00
	nop                                              ; $54b8: $00
	inc de                                           ; $54b9: $13
	dec b                                            ; $54ba: $05
	nop                                              ; $54bb: $00
	add hl, bc                                       ; $54bc: $09
	inc de                                           ; $54bd: $13
	dec b                                            ; $54be: $05
	nop                                              ; $54bf: $00
	dec b                                            ; $54c0: $05
	or l                                             ; $54c1: $b5
	pop bc                                           ; $54c2: $c1
	ld [bc], a                                       ; $54c3: $02
	rst $38                                          ; $54c4: $ff
	inc bc                                           ; $54c5: $03
	dec e                                            ; $54c6: $1d
	db $10                                           ; $54c7: $10
	rra                                              ; $54c8: $1f
	ld [$41b1], sp                                   ; $54c9: $08 $b1 $41
	nop                                              ; $54cc: $00
	nop                                              ; $54cd: $00
	rra                                              ; $54ce: $1f
	db $10                                           ; $54cf: $10
	or c                                             ; $54d0: $b1
	pop hl                                           ; $54d1: $e1
	rst $38                                          ; $54d2: $ff
	inc bc                                           ; $54d3: $03
	rra                                              ; $54d4: $1f
	ld [$41b1], sp                                   ; $54d5: $08 $b1 $41
	nop                                              ; $54d8: $00
	nop                                              ; $54d9: $00
	rra                                              ; $54da: $1f
	db $10                                           ; $54db: $10
	sub b                                            ; $54dc: $90
	call $0413                                       ; $54dd: $cd $13 $04
	nop                                              ; $54e0: $00
	inc b                                            ; $54e1: $04
	or l                                             ; $54e2: $b5
	or c                                             ; $54e3: $b1
	inc bc                                           ; $54e4: $03
	rst $38                                          ; $54e5: $ff
	inc bc                                           ; $54e6: $03
	ld a, [hl]                                       ; $54e7: $7e
	dec b                                            ; $54e8: $05
	nop                                              ; $54e9: $00
	and b                                            ; $54ea: $a0
	dec h                                            ; $54eb: $25
	db $10                                           ; $54ec: $10
	ld a, [hl]                                       ; $54ed: $7e
	nop                                              ; $54ee: $00
	inc h                                            ; $54ef: $24
	ld [$0c22], sp                                   ; $54f0: $08 $22 $0c
	or c                                             ; $54f3: $b1
	ld b, c                                          ; $54f4: $41
	rst $38                                          ; $54f5: $ff
	nop                                              ; $54f6: $00
	ld [hl+], a                                      ; $54f7: $22
	inc c                                            ; $54f8: $0c
	or l                                             ; $54f9: $b5
	pop bc                                           ; $54fa: $c1
	ld [bc], a                                       ; $54fb: $02
	rst $38                                          ; $54fc: $ff
	inc bc                                           ; $54fd: $03
	dec e                                            ; $54fe: $1d
	db $10                                           ; $54ff: $10
	rra                                              ; $5500: $1f
	ld [$41b1], sp                                   ; $5501: $08 $b1 $41
	nop                                              ; $5504: $00
	nop                                              ; $5505: $00
	rra                                              ; $5506: $1f
	db $10                                           ; $5507: $10
	or c                                             ; $5508: $b1
	pop hl                                           ; $5509: $e1
	nop                                              ; $550a: $00
	nop                                              ; $550b: $00
	rra                                              ; $550c: $1f
	ld [$d1b5], sp                                   ; $550d: $08 $b5 $d1
	nop                                              ; $5510: $00
	nop                                              ; $5511: $00
	nop                                              ; $5512: $00
	inc de                                           ; $5513: $13
	dec b                                            ; $5514: $05
	nop                                              ; $5515: $00
	add hl, bc                                       ; $5516: $09
	inc de                                           ; $5517: $13
	dec b                                            ; $5518: $05
	nop                                              ; $5519: $00
	dec b                                            ; $551a: $05
	or l                                             ; $551b: $b5
	ld [hl], c                                       ; $551c: $71
	ld bc, $07ff                                     ; $551d: $01 $ff $07
	ld a, [hl]                                       ; $5520: $7e
	dec b                                            ; $5521: $05
	nop                                              ; $5522: $00
	xor c                                            ; $5523: $a9
	add hl, hl                                       ; $5524: $29
	jr nc, @+$80                                     ; $5525: $30 $7e

	nop                                              ; $5527: $00
	ld h, $08                                        ; $5528: $26 $08
	or c                                             ; $552a: $b1
	ld b, c                                          ; $552b: $41
	nop                                              ; $552c: $00
	nop                                              ; $552d: $00
	ld h, $10                                        ; $552e: $26 $10
	or c                                             ; $5530: $b1
	sub c                                            ; $5531: $91
	rst $38                                          ; $5532: $ff
	inc bc                                           ; $5533: $03
	ld a, [hl]                                       ; $5534: $7e
	dec b                                            ; $5535: $05
	nop                                              ; $5536: $00
	and b                                            ; $5537: $a0
	inc h                                            ; $5538: $24
	db $10                                           ; $5539: $10
	sub [hl]                                         ; $553a: $96
	rst $38                                          ; $553b: $ff
	ld b, $7e                                        ; $553c: $06 $7e
	ld [bc], a                                       ; $553e: $02
	nop                                              ; $553f: $00
	and b                                            ; $5540: $a0
	ld h, $20                                        ; $5541: $26 $20
	ld a, [hl]                                       ; $5543: $7e
	nop                                              ; $5544: $00
	or l                                             ; $5545: $b5
	sub c                                            ; $5546: $91
	inc bc                                           ; $5547: $03
	rst $38                                          ; $5548: $ff

jr_030_5549:
	inc b                                            ; $5549: $04
	jr jr_030_555c                                   ; $554a: $18 $10

	dec de                                           ; $554c: $1b
	ld [$1fca], sp                                   ; $554d: $08 $ca $1f
	db $10                                           ; $5550: $10
	ld [hl+], a                                      ; $5551: $22
	ld b, $b1                                        ; $5552: $06 $b1
	ld b, c                                          ; $5554: $41
	nop                                              ; $5555: $00
	nop                                              ; $5556: $00
	ld [hl+], a                                      ; $5557: $22
	ld [de], a                                       ; $5558: $12
	or c                                             ; $5559: $b1
	and c                                            ; $555a: $a1
	rst $38                                          ; $555b: $ff

jr_030_555c:
	inc bc                                           ; $555c: $03
	ld [hl+], a                                      ; $555d: $22
	ld b, $b1                                        ; $555e: $06 $b1
	ld b, c                                          ; $5560: $41
	nop                                              ; $5561: $00
	nop                                              ; $5562: $00
	ld [hl+], a                                      ; $5563: $22
	ld [de], a                                       ; $5564: $12
	or c                                             ; $5565: $b1
	and c                                            ; $5566: $a1
	rst $38                                          ; $5567: $ff
	inc bc                                           ; $5568: $03
	ld hl, $b108                                     ; $5569: $21 $08 $b1
	ld b, c                                          ; $556c: $41
	nop                                              ; $556d: $00
	nop                                              ; $556e: $00
	ld hl, $b110                                     ; $556f: $21 $10 $b1
	and c                                            ; $5572: $a1
	rst $38                                          ; $5573: $ff
	inc bc                                           ; $5574: $03
	ld hl, $9608                                     ; $5575: $21 $08 $96
	rst $38                                          ; $5578: $ff
	ld b, $1d                                        ; $5579: $06 $1d
	jr jr_030_5549                                   ; $557b: $18 $cc

	sub h                                            ; $557d: $94
	ld h, [hl]                                       ; $557e: $66
	jr @+$32                                         ; $557f: $18 $30

	or l                                             ; $5581: $b5
	and c                                            ; $5582: $a1
	ld [bc], a                                       ; $5583: $02
	rst $38                                          ; $5584: $ff
	inc b                                            ; $5585: $04
	sub h                                            ; $5586: $94
	ld [$2427], sp                                   ; $5587: $08 $27 $24
	daa                                              ; $558a: $27

jr_030_558b:
	inc h                                            ; $558b: $24
	or c                                             ; $558c: $b1
	sub c                                            ; $558d: $91
	rst $38                                          ; $558e: $ff
	inc bc                                           ; $558f: $03
	ld a, [hl]                                       ; $5590: $7e
	ld bc, $a930                                     ; $5591: $01 $30 $a9
	ld h, $18                                        ; $5594: $26 $18
	or l                                             ; $5596: $b5
	pop bc                                           ; $5597: $c1
	ld bc, $07ff                                     ; $5598: $01 $ff $07
	jr @+$32                                         ; $559b: $18 $30

	ld a, [de]                                       ; $559d: $1a
	jr nc, jr_030_561e                               ; $559e: $30 $7e

	nop                                              ; $55a0: $00
	cp $ff                                           ; $55a1: $fe $ff
	ret nc                                           ; $55a3: $d0

	add sp, -$02                                     ; $55a4: $e8 $fe
	or l                                             ; $55a6: $b5
	and c                                            ; $55a7: $a1
	ld bc, $05ff                                     ; $55a8: $01 $ff $05
	inc hl                                           ; $55ab: $23
	inc bc                                           ; $55ac: $03
	inc h                                            ; $55ad: $24
	dec l                                            ; $55ae: $2d
	dec hl                                           ; $55af: $2b
	jr nc, jr_030_55df                               ; $55b0: $30 $2d

	inc bc                                           ; $55b2: $03

jr_030_55b3:
	ld l, $2d                                        ; $55b3: $2e $2d
	dec hl                                           ; $55b5: $2b
	jr nc, @-$68                                     ; $55b6: $30 $96

	rst $38                                          ; $55b8: $ff
	rlca                                             ; $55b9: $07
	ld a, [hl]                                       ; $55ba: $7e
	ld bc, $a930                                     ; $55bb: $01 $30 $a9
	ld sp, $3204                                     ; $55be: $31 $04 $32
	and h                                            ; $55c1: $a4
	ld a, [hl]                                       ; $55c2: $7e
	nop                                              ; $55c3: $00
	or c                                             ; $55c4: $b1
	pop bc                                           ; $55c5: $c1
	rst $38                                          ; $55c6: $ff
	inc bc                                           ; $55c7: $03
	ld l, $10                                        ; $55c8: $2e $10
	jr nc, jr_030_55d4                               ; $55ca: $30 $08

	swap c                                           ; $55cc: $cb $31
	inc bc                                           ; $55ce: $03
	ld [hl-], a                                      ; $55cf: $32
	dec d                                            ; $55d0: $15
	inc sp                                           ; $55d1: $33
	inc c                                            ; $55d2: $0c
	or c                                             ; $55d3: $b1

jr_030_55d4:
	pop bc                                           ; $55d4: $c1
	rst $38                                          ; $55d5: $ff
	ld b, $7e                                        ; $55d6: $06 $7e
	ld bc, $a930                                     ; $55d8: $01 $30 $a9
	ld l, $54                                        ; $55db: $2e $54
	ld a, [hl]                                       ; $55dd: $7e
	nop                                              ; $55de: $00

jr_030_55df:
	sub [hl]                                         ; $55df: $96
	rst $38                                          ; $55e0: $ff
	inc bc                                           ; $55e1: $03
	dec l                                            ; $55e2: $2d
	inc b                                            ; $55e3: $04

jr_030_55e4:
	ld l, $14                                        ; $55e4: $2e $14
	dec l                                            ; $55e6: $2d
	jr jr_030_5617                                   ; $55e7: $18 $2e

	jr @-$4d                                         ; $55e9: $18 $b1

	or c                                             ; $55eb: $b1
	rst $38                                          ; $55ec: $ff
	inc b                                            ; $55ed: $04
	inc sp                                           ; $55ee: $33
	inc h                                            ; $55ef: $24
	inc [hl]                                         ; $55f0: $34
	inc b                                            ; $55f1: $04
	dec [hl]                                         ; $55f2: $35
	jr nz, jr_030_558b                               ; $55f3: $20 $96

	rst $38                                          ; $55f5: $ff
	rlca                                             ; $55f6: $07
	ld a, [hl]                                       ; $55f7: $7e
	ld bc, $a930                                     ; $55f8: $01 $30 $a9
	ld sp, $3204                                     ; $55fb: $31 $04 $32
	ld e, h                                          ; $55fe: $5c
	or l                                             ; $55ff: $b5
	ld [hl], c                                       ; $5600: $71
	ld [bc], a                                       ; $5601: $02
	rst $38                                          ; $5602: $ff
	inc b                                            ; $5603: $04
	rlca                                             ; $5604: $07
	db $10                                           ; $5605: $10
	ret z                                            ; $5606: $c8

	ld a, [bc]                                       ; $5607: $0a
	ld [$007e], sp                                   ; $5608: $08 $7e $00
	or l                                             ; $560b: $b5
	or c                                             ; $560c: $b1
	ld bc, $05ff                                     ; $560d: $01 $ff $05
	inc hl                                           ; $5610: $23
	inc bc                                           ; $5611: $03
	inc h                                            ; $5612: $24
	dec l                                            ; $5613: $2d
	dec hl                                           ; $5614: $2b
	jr nc, jr_030_5644                               ; $5615: $30 $2d

jr_030_5617:
	inc bc                                           ; $5617: $03
	ld l, $2d                                        ; $5618: $2e $2d
	dec hl                                           ; $561a: $2b
	jr nc, jr_030_55b3                               ; $561b: $30 $96

	rst $38                                          ; $561d: $ff

jr_030_561e:
	rlca                                             ; $561e: $07
	ld a, [hl]                                       ; $561f: $7e
	ld bc, $a930                                     ; $5620: $01 $30 $a9
	ld sp, $3204                                     ; $5623: $31 $04 $32
	and h                                            ; $5626: $a4
	ld a, [hl]                                       ; $5627: $7e
	nop                                              ; $5628: $00
	sub [hl]                                         ; $5629: $96
	rst $38                                          ; $562a: $ff
	inc bc                                           ; $562b: $03
	ld l, $10                                        ; $562c: $2e $10
	jr nc, jr_030_5638                               ; $562e: $30 $08

	jp z, $0431                                      ; $5630: $ca $31 $04

	ld [hl-], a                                      ; $5633: $32
	inc d                                            ; $5634: $14
	inc sp                                           ; $5635: $33
	inc c                                            ; $5636: $0c
	sub [hl]                                         ; $5637: $96

jr_030_5638:
	rst $38                                          ; $5638: $ff
	ld b, $7e                                        ; $5639: $06 $7e
	ld bc, $a930                                     ; $563b: $01 $30 $a9
	ld l, $54                                        ; $563e: $2e $54
	ld a, [hl]                                       ; $5640: $7e
	nop                                              ; $5641: $00
	sub [hl]                                         ; $5642: $96
	rst $38                                          ; $5643: $ff

jr_030_5644:
	inc bc                                           ; $5644: $03
	dec l                                            ; $5645: $2d
	inc b                                            ; $5646: $04
	ld l, $14                                        ; $5647: $2e $14
	dec l                                            ; $5649: $2d
	jr jr_030_567a                                   ; $564a: $18 $2e

	jr jr_030_55e4                                   ; $564c: $18 $96

	rst $38                                          ; $564e: $ff
	inc b                                            ; $564f: $04
	cpl                                              ; $5650: $2f
	inc b                                            ; $5651: $04
	jr nc, jr_030_5674                               ; $5652: $30 $20

	jr nc, jr_030_566e                               ; $5654: $30 $18

	jr nc, @+$0e                                     ; $5656: $30 $0c

	sub [hl]                                         ; $5658: $96
	rst $38                                          ; $5659: $ff
	rlca                                             ; $565a: $07
	ld a, [hl]                                       ; $565b: $7e
	ld bc, $a930                                     ; $565c: $01 $30 $a9
	ld l, $78                                        ; $565f: $2e $78
	ld a, [hl]                                       ; $5661: $7e
	nop                                              ; $5662: $00
	cp $ff                                           ; $5663: $fe $ff
	ret nc                                           ; $5665: $d0

	add sp, -$02                                     ; $5666: $e8 $fe
	jp nz, $1b85                                     ; $5668: $c2 $85 $1b

	ld l, $c4                                        ; $566b: $2e $c4
	dec de                                           ; $566d: $1b

jr_030_566e:
	ld [bc], a                                       ; $566e: $02
	jp nz, $241b                                     ; $566f: $c2 $1b $24

	dec e                                            ; $5672: $1d
	inc c                                            ; $5673: $0c

jr_030_5674:
	add $1d                                          ; $5674: $c6 $1d
	inc c                                            ; $5676: $0c
	jp nz, $0c1d                                     ; $5677: $c2 $1d $0c

jr_030_567a:
	jp nz, $0c18                                     ; $567a: $c2 $18 $0c

	call nz, $0c18                                   ; $567d: $c4 $18 $0c
	jp nz, $171d                                     ; $5680: $c2 $1d $17

	nop                                              ; $5683: $00
	ld bc, $1715                                     ; $5684: $01 $15 $17
	nop                                              ; $5687: $00
	ld bc, $2c13                                     ; $5688: $01 $13 $2c
	call nz, $0413                                   ; $568b: $c4 $13 $04
	jp nz, $2c15                                     ; $568e: $c2 $15 $2c

	call nz, $0415                                   ; $5691: $c4 $15 $04
	jp nz, $2c16                                     ; $5694: $c2 $16 $2c

	call nz, $0416                                   ; $5697: $c4 $16 $04
	jp nz, $161a                                     ; $569a: $c2 $1a $16

	call nz, $021a                                   ; $569d: $c4 $1a $02
	jp nz, $141d                                     ; $56a0: $c2 $1d $14

	call nz, $041d                                   ; $56a3: $c4 $1d $04
	jp nz, $0c1b                                     ; $56a6: $c2 $1b $0c

	jp nz, $0c1a                                     ; $56a9: $c2 $1a $0c

	call nz, $0c16                                   ; $56ac: $c4 $16 $0c
	jp nz, $0c0f                                     ; $56af: $c2 $0f $0c

	add $0f                                          ; $56b2: $c6 $0f
	inc c                                            ; $56b4: $0c
	jp nz, $0c1b                                     ; $56b5: $c2 $1b $0c

	add $1b                                          ; $56b8: $c6 $1b
	inc c                                            ; $56ba: $0c
	jp nz, $0c1d                                     ; $56bb: $c2 $1d $0c

	add $1d                                          ; $56be: $c6 $1d
	inc c                                            ; $56c0: $0c
	jp nz, $0c1d                                     ; $56c1: $c2 $1d $0c

	dec de                                           ; $56c4: $1b
	ld d, $c4                                        ; $56c5: $16 $c4
	dec de                                           ; $56c7: $1b
	ld [bc], a                                       ; $56c8: $02
	jp nz, $161d                                     ; $56c9: $c2 $1d $16

	call nz, $021d                                   ; $56cc: $c4 $1d $02
	jp nz, $1615                                     ; $56cf: $c2 $15 $16

	call nz, $0215                                   ; $56d2: $c4 $15 $02
	jp nz, $2e13                                     ; $56d5: $c2 $13 $2e

	call nz, $0213                                   ; $56d8: $c4 $13 $02
	jp nz, $2e16                                     ; $56db: $c2 $16 $2e

	call nz, $0216                                   ; $56de: $c4 $16 $02
	jp nz, $0c1a                                     ; $56e1: $c2 $1a $0c

	add [hl]                                         ; $56e4: $86
	rra                                              ; $56e5: $1f
	inc c                                            ; $56e6: $0c
	add $1f                                          ; $56e7: $c6 $1f
	inc c                                            ; $56e9: $0c
	jp nz, $0c1f                                     ; $56ea: $c2 $1f $0c

	add $1f                                          ; $56ed: $c6 $1f
	inc c                                            ; $56ef: $0c
	jp nz, $1c1f                                     ; $56f0: $c2 $1f $1c

	call nz, $081f                                   ; $56f3: $c4 $1f $08
	jp nz, $1b85                                     ; $56f6: $c2 $85 $1b

	ld l, $c4                                        ; $56f9: $2e $c4
	dec de                                           ; $56fb: $1b
	ld [bc], a                                       ; $56fc: $02
	jp nz, $241b                                     ; $56fd: $c2 $1b $24

	dec e                                            ; $5700: $1d
	inc c                                            ; $5701: $0c

jr_030_5702:
	add $1d                                          ; $5702: $c6 $1d
	inc c                                            ; $5704: $0c
	jp nz, $0c1d                                     ; $5705: $c2 $1d $0c

	jp nz, $0c18                                     ; $5708: $c2 $18 $0c

	call nz, $0c18                                   ; $570b: $c4 $18 $0c
	jp nz, $171d                                     ; $570e: $c2 $1d $17

	nop                                              ; $5711: $00
	ld bc, $1721                                     ; $5712: $01 $21 $17
	nop                                              ; $5715: $00
	ld bc, $2c1f                                     ; $5716: $01 $1f $2c
	call nz, $041f                                   ; $5719: $c4 $1f $04
	jp nz, $2c1e                                     ; $571c: $c2 $1e $2c

	call nz, $041e                                   ; $571f: $c4 $1e $04
	jp nz, $2c1d                                     ; $5722: $c2 $1d $2c

	call nz, $041d                                   ; $5725: $c4 $1d $04
	jp nz, $161c                                     ; $5728: $c2 $1c $16

	call nz, $021c                                   ; $572b: $c4 $1c $02
	jp nz, $141c                                     ; $572e: $c2 $1c $14

	call nz, $041c                                   ; $5731: $c4 $1c $04
	jp nz, $101b                                     ; $5734: $c2 $1b $10

	ld d, $08                                        ; $5737: $16 $08
	rrca                                             ; $5739: $0f
	jr jr_030_5702                                   ; $573a: $18 $c6

	rrca                                             ; $573c: $0f
	db $10                                           ; $573d: $10
	jp nz, $081b                                     ; $573e: $c2 $1b $08

	add $1b                                          ; $5741: $c6 $1b
	db $10                                           ; $5743: $10
	jp nz, $081d                                     ; $5744: $c2 $1d $08

	add $1d                                          ; $5747: $c6 $1d
	db $10                                           ; $5749: $10
	jp nz, $0818                                     ; $574a: $c2 $18 $08

	ld de, $c416                                     ; $574d: $11 $16 $c4
	ld de, $c202                                     ; $5750: $11 $02 $c2
	dec e                                            ; $5753: $1d
	ld d, $c4                                        ; $5754: $16 $c4
	dec e                                            ; $5756: $1d
	ld [bc], a                                       ; $5757: $02
	jp nz, $1615                                     ; $5758: $c2 $15 $16

	call nz, $0215                                   ; $575b: $c4 $15 $02
	jp nz, $2416                                     ; $575e: $c2 $16 $24

	cp [hl]                                          ; $5761: $be
	inc b                                            ; $5762: $04
	ld d, $15                                        ; $5763: $16 $15
	inc d                                            ; $5765: $14
	inc de                                           ; $5766: $13
	ld [de], a                                       ; $5767: $12
	ld de, $0f10                                     ; $5768: $11 $10 $0f
	cp [hl]                                          ; $576b: $be
	call nz, $04be                                   ; $576c: $c4 $be $04
	ld c, $0d                                        ; $576f: $0e $0d
	inc c                                            ; $5771: $0c
	dec bc                                           ; $5772: $0b
	cp [hl]                                          ; $5773: $be
	jp nz, $300a                                     ; $5774: $c2 $0a $30

	call nz, $0c0a                                   ; $5777: $c4 $0a $0c
	jp nz, $3016                                     ; $577a: $c2 $16 $30

	cp $ff                                           ; $577d: $fe $ff
	ret nc                                           ; $577f: $d0

	add sp, -$02                                     ; $5780: $e8 $fe
	ld [hl], $0e                                     ; $5782: $36 $0e
	ld [de], a                                       ; $5784: $12
	ld a, [bc]                                       ; $5785: $0a
	add hl, bc                                       ; $5786: $09
	ld c, $12                                        ; $5787: $0e $12
	ld a, [bc]                                       ; $5789: $0a
	ld c, a                                          ; $578a: $4f
	ld c, $12                                        ; $578b: $0e $12
	ld a, [bc]                                       ; $578d: $0a
	add hl, bc                                       ; $578e: $09
	ld c, $36                                        ; $578f: $0e $36
	ld a, [bc]                                       ; $5791: $0a
	add hl, bc                                       ; $5792: $09
	ld c, $37                                        ; $5793: $0e $37
	ld a, [bc]                                       ; $5795: $0a
	ld c, [hl]                                       ; $5796: $4e
	ld c, $12                                        ; $5797: $0e $12
	ld a, [bc]                                       ; $5799: $0a
	ld c, a                                          ; $579a: $4f
	ld c, $12                                        ; $579b: $0e $12
	ld a, [bc]                                       ; $579d: $0a
	add hl, bc                                       ; $579e: $09
	ld c, $1e                                        ; $579f: $0e $1e
	ld a, [bc]                                       ; $57a1: $0a
	ld [hl], $18                                     ; $57a2: $36 $18
	add hl, bc                                       ; $57a4: $09
	ld c, $12                                        ; $57a5: $0e $12
	ld a, [bc]                                       ; $57a7: $0a
	ld c, a                                          ; $57a8: $4f
	ld c, $12                                        ; $57a9: $0e $12
	ld a, [bc]                                       ; $57ab: $0a
	add hl, bc                                       ; $57ac: $09
	ld c, $36                                        ; $57ad: $0e $36
	ld a, [bc]                                       ; $57af: $0a
	add hl, bc                                       ; $57b0: $09
	ld c, $37                                        ; $57b1: $0e $37
	ld a, [bc]                                       ; $57b3: $0a
	ld c, [hl]                                       ; $57b4: $4e
	ld c, $12                                        ; $57b5: $0e $12
	ld a, [bc]                                       ; $57b7: $0a
	ld c, a                                          ; $57b8: $4f
	ld c, $12                                        ; $57b9: $0e $12
	ld a, [bc]                                       ; $57bb: $0a
	add hl, bc                                       ; $57bc: $09
	ld c, $0c                                        ; $57bd: $0e $0c
	ld a, [bc]                                       ; $57bf: $0a
	ld [hl], $0e                                     ; $57c0: $36 $0e
	ld c, a                                          ; $57c2: $4f
	ld a, [bc]                                       ; $57c3: $0a
	ld [hl], $0e                                     ; $57c4: $36 $0e
	ld [de], a                                       ; $57c6: $12
	ld a, [bc]                                       ; $57c7: $0a
	ld c, a                                          ; $57c8: $4f
	ld c, $12                                        ; $57c9: $0e $12
	ld a, [bc]                                       ; $57cb: $0a
	add hl, bc                                       ; $57cc: $09
	ld c, $36                                        ; $57cd: $0e $36
	ld a, [bc]                                       ; $57cf: $0a
	add hl, bc                                       ; $57d0: $09
	ld c, $37                                        ; $57d1: $0e $37
	ld a, [bc]                                       ; $57d3: $0a
	ld c, [hl]                                       ; $57d4: $4e
	ld c, $12                                        ; $57d5: $0e $12
	ld a, [bc]                                       ; $57d7: $0a
	ld c, a                                          ; $57d8: $4f
	ld c, $12                                        ; $57d9: $0e $12
	ld a, [bc]                                       ; $57db: $0a
	add hl, bc                                       ; $57dc: $09
	ld c, $1e                                        ; $57dd: $0e $1e
	ld a, [bc]                                       ; $57df: $0a
	ld [hl], $18                                     ; $57e0: $36 $18
	add hl, bc                                       ; $57e2: $09
	ld c, $12                                        ; $57e3: $0e $12
	ld a, [bc]                                       ; $57e5: $0a
	ld c, a                                          ; $57e6: $4f
	ld c, $09                                        ; $57e7: $0e $09
	ld a, [bc]                                       ; $57e9: $0a
	add hl, bc                                       ; $57ea: $09
	ld c, $36                                        ; $57eb: $0e $36
	ld a, [bc]                                       ; $57ed: $0a
	ld [hl], $0e                                     ; $57ee: $36 $0e
	scf                                              ; $57f0: $37
	ld a, [bc]                                       ; $57f1: $0a
	add hl, bc                                       ; $57f2: $09
	ld c, $4f                                        ; $57f3: $0e $4f
	ld a, [bc]                                       ; $57f5: $0a
	ld [hl], $0e                                     ; $57f6: $36 $0e
	scf                                              ; $57f8: $37
	ld a, [bc]                                       ; $57f9: $0a
	inc c                                            ; $57fa: $0c
	ld c, $36                                        ; $57fb: $0e $36
	ld a, [bc]                                       ; $57fd: $0a
	ld [hl], $18                                     ; $57fe: $36 $18
	add hl, bc                                       ; $5800: $09
	ld c, $12                                        ; $5801: $0e $12
	ld a, [bc]                                       ; $5803: $0a
	ld c, a                                          ; $5804: $4f
	ld c, $12                                        ; $5805: $0e $12
	ld a, [bc]                                       ; $5807: $0a
	add hl, bc                                       ; $5808: $09
	ld c, $36                                        ; $5809: $0e $36
	ld a, [bc]                                       ; $580b: $0a
	add hl, bc                                       ; $580c: $09
	ld c, $37                                        ; $580d: $0e $37
	ld a, [bc]                                       ; $580f: $0a
	ld c, [hl]                                       ; $5810: $4e
	ld c, $12                                        ; $5811: $0e $12
	ld a, [bc]                                       ; $5813: $0a
	ld c, a                                          ; $5814: $4f
	ld c, $12                                        ; $5815: $0e $12
	ld a, [bc]                                       ; $5817: $0a
	add hl, bc                                       ; $5818: $09
	ld c, $1e                                        ; $5819: $0e $1e
	ld a, [bc]                                       ; $581b: $0a
	ld [hl], $18                                     ; $581c: $36 $18
	add hl, bc                                       ; $581e: $09
	ld c, $12                                        ; $581f: $0e $12
	ld a, [bc]                                       ; $5821: $0a
	ld c, a                                          ; $5822: $4f
	ld c, $09                                        ; $5823: $0e $09
	ld a, [bc]                                       ; $5825: $0a
	add hl, bc                                       ; $5826: $09
	ld c, $36                                        ; $5827: $0e $36
	ld a, [bc]                                       ; $5829: $0a
	add hl, bc                                       ; $582a: $09
	ld c, $37                                        ; $582b: $0e $37
	ld a, [bc]                                       ; $582d: $0a
	ld c, [hl]                                       ; $582e: $4e
	ld c, $12                                        ; $582f: $0e $12
	ld a, [bc]                                       ; $5831: $0a
	ld c, a                                          ; $5832: $4f
	ld c, $09                                        ; $5833: $0e $09
	ld a, [bc]                                       ; $5835: $0a
	dec c                                            ; $5836: $0d
	ld c, $4f                                        ; $5837: $0e $4f
	ld a, [bc]                                       ; $5839: $0a
	ld [hl], $0e                                     ; $583a: $36 $0e
	ld c, a                                          ; $583c: $4f
	ld a, [bc]                                       ; $583d: $0a
	scf                                              ; $583e: $37
	ld c, $12                                        ; $583f: $0e $12
	ld a, [bc]                                       ; $5841: $0a
	ld c, a                                          ; $5842: $4f
	ld c, $12                                        ; $5843: $0e $12
	ld a, [bc]                                       ; $5845: $0a
	add hl, bc                                       ; $5846: $09
	ld c, $36                                        ; $5847: $0e $36
	ld a, [bc]                                       ; $5849: $0a
	add hl, bc                                       ; $584a: $09
	ld c, $37                                        ; $584b: $0e $37
	ld a, [bc]                                       ; $584d: $0a
	ld c, [hl]                                       ; $584e: $4e
	ld c, $12                                        ; $584f: $0e $12

jr_030_5851:
	ld a, [bc]                                       ; $5851: $0a
	ld c, a                                          ; $5852: $4f
	ld c, $4f                                        ; $5853: $0e $4f
	ld a, [bc]                                       ; $5855: $0a
	add hl, bc                                       ; $5856: $09
	ld c, $4f                                        ; $5857: $0e $4f
	ld a, [bc]                                       ; $5859: $0a
	ld [hl], $18                                     ; $585a: $36 $18
	add hl, bc                                       ; $585c: $09
	ld c, $4f                                        ; $585d: $0e $4f
	ld a, [bc]                                       ; $585f: $0a
	ld c, a                                          ; $5860: $4f
	db $10                                           ; $5861: $10
	ld c, a                                          ; $5862: $4f
	ld [$2614], sp                                   ; $5863: $08 $14 $26
	ld c, a                                          ; $5866: $4f
	ld a, [bc]                                       ; $5867: $0a
	ld c, a                                          ; $5868: $4f
	stop                                             ; $5869: $10 $00
	ld [$0a4f], sp                                   ; $586b: $08 $4f $0a
	nop                                              ; $586e: $00
	ld c, $4f                                        ; $586f: $0e $4f
	ld c, $3d                                        ; $5871: $0e $3d
	ld a, [bc]                                       ; $5873: $0a
	cp $ff                                           ; $5874: $fe $ff
	ret nc                                           ; $5876: $d0

	ld a, b                                          ; $5877: $78
	cp $63                                           ; $5878: $fe $63
	pop de                                           ; $587a: $d1
	sub e                                            ; $587b: $93
	db $fd                                           ; $587c: $fd
	cp l                                             ; $587d: $bd
	ld e, b                                          ; $587e: $58
	adc $00                                          ; $587f: $ce $00
	jr jr_030_5851                                   ; $5881: $18 $ce

	ld d, $04                                        ; $5883: $16 $04
	call nz, $0516                                   ; $5885: $c4 $16 $05
	nop                                              ; $5888: $00
	add hl, bc                                       ; $5889: $09
	adc $16                                          ; $588a: $ce $16
	inc b                                            ; $588c: $04
	push bc                                          ; $588d: $c5
	ld d, $05                                        ; $588e: $16 $05

jr_030_5890:
	nop                                              ; $5890: $00
	add hl, bc                                       ; $5891: $09
	adc $7e                                          ; $5892: $ce $7e
	daa                                              ; $5894: $27
	nop                                              ; $5895: $00
	and b                                            ; $5896: $a0
	jr jr_030_58b1                                   ; $5897: $18 $18

	ld a, [hl]                                       ; $5899: $7e
	dec e                                            ; $589a: $1d
	ld b, $a1                                        ; $589b: $06 $a1
	ld d, $0c                                        ; $589d: $16 $0c
	nop                                              ; $589f: $00
	jr @-$30                                         ; $58a0: $18 $ce

	ld d, $04                                        ; $58a2: $16 $04
	call nz, $0516                                   ; $58a4: $c4 $16 $05
	nop                                              ; $58a7: $00
	dec bc                                           ; $58a8: $0b
	push bc                                          ; $58a9: $c5
	ld a, [hl]                                       ; $58aa: $7e
	dec e                                            ; $58ab: $1d
	nop                                              ; $58ac: $00
	and d                                            ; $58ad: $a2
	inc d                                            ; $58ae: $14

jr_030_58af:
	inc [hl]                                         ; $58af: $34
	ld a, [hl]                                       ; $58b0: $7e

jr_030_58b1:
	nop                                              ; $58b1: $00
	and b                                            ; $58b2: $a0
	pop de                                           ; $58b3: $d1
	sub e                                            ; $58b4: $93
	ei                                               ; $58b5: $fb
	db $fd                                           ; $58b6: $fd
	ld hl, sp+$58                                    ; $58b7: $f8 $58
	ei                                               ; $58b9: $fb
	inc b                                            ; $58ba: $04
	cp $ff                                           ; $58bb: $fe $ff
	pop de                                           ; $58bd: $d1
	adc $00                                          ; $58be: $ce $00
	jr jr_030_5890                                   ; $58c0: $18 $ce

	ld d, $04                                        ; $58c2: $16 $04
	call nz, $0516                                   ; $58c4: $c4 $16 $05
	nop                                              ; $58c7: $00
	add hl, bc                                       ; $58c8: $09
	adc $16                                          ; $58c9: $ce $16
	inc b                                            ; $58cb: $04
	push bc                                          ; $58cc: $c5
	ld d, $05                                        ; $58cd: $16 $05
	nop                                              ; $58cf: $00
	add hl, bc                                       ; $58d0: $09
	adc $7e                                          ; $58d1: $ce $7e
	daa                                              ; $58d3: $27
	nop                                              ; $58d4: $00
	and b                                            ; $58d5: $a0
	jr jr_030_58f0                                   ; $58d6: $18 $18

	ld a, [hl]                                       ; $58d8: $7e
	dec e                                            ; $58d9: $1d
	ld b, $a1                                        ; $58da: $06 $a1
	ld d, $0c                                        ; $58dc: $16 $0c
	nop                                              ; $58de: $00
	jr jr_030_58af                                   ; $58df: $18 $ce

	ld d, $04                                        ; $58e1: $16 $04
	call nz, $0516                                   ; $58e3: $c4 $16 $05
	nop                                              ; $58e6: $00
	add hl, bc                                       ; $58e7: $09
	adc $11                                          ; $58e8: $ce $11
	inc b                                            ; $58ea: $04
	push bc                                          ; $58eb: $c5
	ld de, $0005                                     ; $58ec: $11 $05 $00
	add hl, bc                                       ; $58ef: $09

jr_030_58f0:
	adc $0d                                          ; $58f0: $ce $0d
	inc c                                            ; $58f2: $0c
	rrca                                             ; $58f3: $0f
	inc c                                            ; $58f4: $0c
	db $10                                           ; $58f5: $10
	inc c                                            ; $58f6: $0c
	db $fd                                           ; $58f7: $fd
	pop de                                           ; $58f8: $d1
	jp z, $1800                                      ; $58f9: $ca $00 $18

	dec e                                            ; $58fc: $1d
	inc b                                            ; $58fd: $04
	call nz, $051d                                   ; $58fe: $c4 $1d $05
	nop                                              ; $5901: $00
	add hl, bc                                       ; $5902: $09
	jp z, $041d                                      ; $5903: $ca $1d $04

	push bc                                          ; $5906: $c5
	dec e                                            ; $5907: $1d
	dec b                                            ; $5908: $05
	nop                                              ; $5909: $00
	add hl, bc                                       ; $590a: $09
	jp z, $277e                                      ; $590b: $ca $7e $27

	nop                                              ; $590e: $00
	and b                                            ; $590f: $a0
	ld e, $18                                        ; $5910: $1e $18
	ld a, [hl]                                       ; $5912: $7e
	dec e                                            ; $5913: $1d
	ld b, $a0                                        ; $5914: $06 $a0
	dec e                                            ; $5916: $1d
	inc c                                            ; $5917: $0c
	nop                                              ; $5918: $00
	jr @-$34                                         ; $5919: $18 $ca

	dec e                                            ; $591b: $1d
	inc b                                            ; $591c: $04
	call nz, $051d                                   ; $591d: $c4 $1d $05
	nop                                              ; $5920: $00
	add hl, bc                                       ; $5921: $09
	jp z, $0411                                      ; $5922: $ca $11 $04

	push bc                                          ; $5925: $c5
	ld de, $0005                                     ; $5926: $11 $05 $00
	add hl, bc                                       ; $5929: $09
	jp z, $0c0d                                      ; $592a: $ca $0d $0c

	rrca                                             ; $592d: $0f
	inc c                                            ; $592e: $0c
	db $10                                           ; $592f: $10
	inc c                                            ; $5930: $0c
	db $fd                                           ; $5931: $fd
	ret nc                                           ; $5932: $d0

	ld a, b                                          ; $5933: $78
	cp $63                                           ; $5934: $fe $63
	pop de                                           ; $5936: $d1
	sub e                                            ; $5937: $93
	db $fd                                           ; $5938: $fd
	sbc d                                            ; $5939: $9a
	ld e, c                                          ; $593a: $59
	ei                                               ; $593b: $fb
	adc $16                                          ; $593c: $ce $16
	inc b                                            ; $593e: $04
	push bc                                          ; $593f: $c5
	ld d, $02                                        ; $5940: $16 $02
	ei                                               ; $5942: $fb
	inc b                                            ; $5943: $04
	adc $19                                          ; $5944: $ce $19
	inc b                                            ; $5946: $04
	call nz, $0519                                   ; $5947: $c4 $19 $05
	nop                                              ; $594a: $00
	inc bc                                           ; $594b: $03
	adc $16                                          ; $594c: $ce $16
	inc b                                            ; $594e: $04
	push bc                                          ; $594f: $c5
	ld d, $02                                        ; $5950: $16 $02
	adc $1b                                          ; $5952: $ce $1b
	inc b                                            ; $5954: $04
	push bc                                          ; $5955: $c5
	dec de                                           ; $5956: $1b
	dec b                                            ; $5957: $05
	nop                                              ; $5958: $00
	inc bc                                           ; $5959: $03
	adc $16                                          ; $595a: $ce $16
	inc b                                            ; $595c: $04
	push bc                                          ; $595d: $c5
	ld d, $02                                        ; $595e: $16 $02
	adc $7e                                          ; $5960: $ce $7e
	daa                                              ; $5962: $27
	nop                                              ; $5963: $00
	and b                                            ; $5964: $a0
	dec de                                           ; $5965: $1b
	jr jr_030_59e6                                   ; $5966: $18 $7e

	dec e                                            ; $5968: $1d
	ld b, $a1                                        ; $5969: $06 $a1
	add hl, de                                       ; $596b: $19
	inc c                                            ; $596c: $0c
	ei                                               ; $596d: $fb
	adc $16                                          ; $596e: $ce $16
	inc b                                            ; $5970: $04
	push bc                                          ; $5971: $c5
	ld d, $02                                        ; $5972: $16 $02
	ei                                               ; $5974: $fb
	inc b                                            ; $5975: $04
	adc $19                                          ; $5976: $ce $19
	inc b                                            ; $5978: $04
	call nz, $0519                                   ; $5979: $c4 $19 $05
	nop                                              ; $597c: $00
	inc bc                                           ; $597d: $03
	adc $16                                          ; $597e: $ce $16
	inc b                                            ; $5980: $04
	push bc                                          ; $5981: $c5
	ld d, $02                                        ; $5982: $16 $02
	adc $14                                          ; $5984: $ce $14
	inc c                                            ; $5986: $0c
	call nz, $0614                                   ; $5987: $c4 $14 $06
	jp nz, $1814                                     ; $598a: $c2 $14 $18

	pop bc                                           ; $598d: $c1
	inc d                                            ; $598e: $14
	inc c                                            ; $598f: $0c
	pop de                                           ; $5990: $d1
	sub e                                            ; $5991: $93
	ei                                               ; $5992: $fb
	db $fd                                           ; $5993: $fd
	sbc d                                            ; $5994: $9a
	ld e, c                                          ; $5995: $59
	ei                                               ; $5996: $fb
	inc b                                            ; $5997: $04
	cp $ff                                           ; $5998: $fe $ff
	db $fc                                           ; $599a: $fc
	pop de                                           ; $599b: $d1
	adc $16                                          ; $599c: $ce $16
	inc b                                            ; $599e: $04
	push bc                                          ; $599f: $c5
	ld d, $02                                        ; $59a0: $16 $02
	db $fc                                           ; $59a2: $fc
	inc b                                            ; $59a3: $04
	adc $19                                          ; $59a4: $ce $19
	inc b                                            ; $59a6: $04
	call nz, $0519                                   ; $59a7: $c4 $19 $05
	nop                                              ; $59aa: $00
	inc bc                                           ; $59ab: $03
	adc $16                                          ; $59ac: $ce $16
	inc b                                            ; $59ae: $04
	push bc                                          ; $59af: $c5
	ld d, $02                                        ; $59b0: $16 $02
	adc $1b                                          ; $59b2: $ce $1b
	inc b                                            ; $59b4: $04
	push bc                                          ; $59b5: $c5
	dec de                                           ; $59b6: $1b
	dec b                                            ; $59b7: $05
	nop                                              ; $59b8: $00
	inc bc                                           ; $59b9: $03
	adc $16                                          ; $59ba: $ce $16
	inc b                                            ; $59bc: $04
	push bc                                          ; $59bd: $c5
	ld d, $02                                        ; $59be: $16 $02
	adc $7e                                          ; $59c0: $ce $7e
	daa                                              ; $59c2: $27
	nop                                              ; $59c3: $00
	and b                                            ; $59c4: $a0
	dec de                                           ; $59c5: $1b
	jr jr_030_5a46                                   ; $59c6: $18 $7e

	dec e                                            ; $59c8: $1d
	ld b, $a1                                        ; $59c9: $06 $a1
	add hl, de                                       ; $59cb: $19
	inc c                                            ; $59cc: $0c
	db $fc                                           ; $59cd: $fc
	adc $16                                          ; $59ce: $ce $16
	inc b                                            ; $59d0: $04
	push bc                                          ; $59d1: $c5
	ld d, $02                                        ; $59d2: $16 $02
	db $fc                                           ; $59d4: $fc
	inc b                                            ; $59d5: $04
	adc $19                                          ; $59d6: $ce $19
	inc b                                            ; $59d8: $04
	call nz, $0519                                   ; $59d9: $c4 $19 $05
	nop                                              ; $59dc: $00
	inc bc                                           ; $59dd: $03
	adc $16                                          ; $59de: $ce $16
	inc b                                            ; $59e0: $04
	push bc                                          ; $59e1: $c5
	ld d, $02                                        ; $59e2: $16 $02
	adc $19                                          ; $59e4: $ce $19

jr_030_59e6:
	inc b                                            ; $59e6: $04
	push bc                                          ; $59e7: $c5
	add hl, de                                       ; $59e8: $19
	dec b                                            ; $59e9: $05
	nop                                              ; $59ea: $00
	inc bc                                           ; $59eb: $03
	adc $16                                          ; $59ec: $ce $16
	inc b                                            ; $59ee: $04
	push bc                                          ; $59ef: $c5
	ld d, $02                                        ; $59f0: $16 $02
	adc $11                                          ; $59f2: $ce $11
	inc c                                            ; $59f4: $0c
	inc d                                            ; $59f5: $14
	inc c                                            ; $59f6: $0c
	dec d                                            ; $59f7: $15
	inc c                                            ; $59f8: $0c
	db $fd                                           ; $59f9: $fd
	ret nc                                           ; $59fa: $d0

	ld a, b                                          ; $59fb: $78
	cp $63                                           ; $59fc: $fe $63
	pop de                                           ; $59fe: $d1
	jp nz, $1f7f                                     ; $59ff: $c2 $7f $1f

	ei                                               ; $5a02: $fb
	db $fd                                           ; $5a03: $fd
	inc [hl]                                         ; $5a04: $34
	ld e, d                                          ; $5a05: $5a
	ei                                               ; $5a06: $fb
	inc bc                                           ; $5a07: $03
	jp nz, $1800                                     ; $5a08: $c2 $00 $18

	ld a, [bc]                                       ; $5a0b: $0a
	ld [de], a                                       ; $5a0c: $12
	add $0a                                          ; $5a0d: $c6 $0a
	ld b, $c2                                        ; $5a0f: $06 $c2
	ld a, [bc]                                       ; $5a11: $0a
	inc bc                                           ; $5a12: $03
	nop                                              ; $5a13: $00
	add hl, bc                                       ; $5a14: $09
	ld d, $03                                        ; $5a15: $16 $03
	nop                                              ; $5a17: $00
	add hl, bc                                       ; $5a18: $09
	ld a, [bc]                                       ; $5a19: $0a
	inc b                                            ; $5a1a: $04
	add hl, bc                                       ; $5a1b: $09
	inc b                                            ; $5a1c: $04
	cp [hl]                                          ; $5a1d: $be
	ld [bc], a                                       ; $5a1e: $02
	ld [$0607], sp                                   ; $5a1f: $08 $07 $06
	dec b                                            ; $5a22: $05
	inc b                                            ; $5a23: $04
	inc bc                                           ; $5a24: $03
	ld [bc], a                                       ; $5a25: $02
	ld bc, $d1be                                     ; $5a26: $01 $be $d1
	jp nz, $1f7f                                     ; $5a29: $c2 $7f $1f

	db $fc                                           ; $5a2c: $fc
	db $fd                                           ; $5a2d: $fd
	ld b, [hl]                                       ; $5a2e: $46
	ld e, d                                          ; $5a2f: $5a
	db $fc                                           ; $5a30: $fc
	inc b                                            ; $5a31: $04
	cp $ff                                           ; $5a32: $fe $ff
	pop de                                           ; $5a34: $d1
	jp nz, $1800                                     ; $5a35: $c2 $00 $18

	ld a, [bc]                                       ; $5a38: $0a
	ld [de], a                                       ; $5a39: $12
	add $0a                                          ; $5a3a: $c6 $0a
	ld b, $c2                                        ; $5a3c: $06 $c2
	nop                                              ; $5a3e: $00
	jr @+$0c                                         ; $5a3f: $18 $0a

	ld [de], a                                       ; $5a41: $12
	add $0a                                          ; $5a42: $c6 $0a
	ld b, $fd                                        ; $5a44: $06 $fd

jr_030_5a46:
	ld a, [bc]                                       ; $5a46: $0a
	ld b, $d1                                        ; $5a47: $06 $d1
	call nz, $060a                                   ; $5a49: $c4 $0a $06
	jp nz, $060a                                     ; $5a4c: $c2 $0a $06

	call nz, $060a                                   ; $5a4f: $c4 $0a $06
	jp nz, $060d                                     ; $5a52: $c2 $0d $06

	call nz, $060d                                   ; $5a55: $c4 $0d $06
	jp nz, $06be                                     ; $5a58: $c2 $be $06

	ld a, [bc]                                       ; $5a5b: $0a
	dec c                                            ; $5a5c: $0d
	ld [$be14], sp                                   ; $5a5d: $08 $14 $be
	jp nz, $0608                                     ; $5a60: $c2 $08 $06

	call nz, $0608                                   ; $5a63: $c4 $08 $06
	jp nz, $0614                                     ; $5a66: $c2 $14 $06

	call nz, $0614                                   ; $5a69: $c4 $14 $06
	jp nz, $0608                                     ; $5a6c: $c2 $08 $06

	inc d                                            ; $5a6f: $14
	ld b, $06                                        ; $5a70: $06 $06
	ld b, $c4                                        ; $5a72: $06 $c4
	ld b, $06                                        ; $5a74: $06 $06
	jp nz, $0606                                     ; $5a76: $c2 $06 $06

	call nz, $0606                                   ; $5a79: $c4 $06 $06
	jp nz, $060d                                     ; $5a7c: $c2 $0d $06

	call nz, $060d                                   ; $5a7f: $c4 $0d $06
	jp nz, $06be                                     ; $5a82: $c2 $be $06

	ld b, $0d                                        ; $5a85: $06 $0d
	rlca                                             ; $5a87: $07
	inc de                                           ; $5a88: $13
	cp [hl]                                          ; $5a89: $be
	jp nz, $0607                                     ; $5a8a: $c2 $07 $06

	call nz, $0607                                   ; $5a8d: $c4 $07 $06
	jp nz, $0608                                     ; $5a90: $c2 $08 $06

jr_030_5a93:
	call nz, $0608                                   ; $5a93: $c4 $08 $06
	jp nz, $0609                                     ; $5a96: $c2 $09 $06

	dec d                                            ; $5a99: $15
	ld b, $fd                                        ; $5a9a: $06 $fd
	ret nc                                           ; $5a9c: $d0

	ld a, b                                          ; $5a9d: $78
	cp $fb                                           ; $5a9e: $fe $fb
	db $fd                                           ; $5aa0: $fd
	jp nz, $fb5a                                     ; $5aa1: $c2 $5a $fb

	inc bc                                           ; $5aa4: $03
	cp [hl]                                          ; $5aa5: $be
	ld b, $2f                                        ; $5aa6: $06 $2f
	jr nc, jr_030_5ad9                               ; $5aa8: $30 $2f

	jr nc, @-$40                                     ; $5aaa: $30 $be

	cp [hl]                                          ; $5aac: $be
	inc c                                            ; $5aad: $0c
	jr nz, jr_030_5acd                               ; $5aae: $20 $1d

	jr nz, jr_030_5acf                               ; $5ab0: $20 $1d

	cp [hl]                                          ; $5ab2: $be
	cp [hl]                                          ; $5ab3: $be
	ld b, $20                                        ; $5ab4: $06 $20
	jr nz, @+$22                                     ; $5ab6: $20 $20

	jr nz, @-$40                                     ; $5ab8: $20 $be

	db $fc                                           ; $5aba: $fc
	db $fd                                           ; $5abb: $fd
	sub $5a                                          ; $5abc: $d6 $5a
	db $fc                                           ; $5abe: $fc
	ld [$fffe], sp                                   ; $5abf: $08 $fe $ff
	cp [hl]                                          ; $5ac2: $be
	ld b, $2f                                        ; $5ac3: $06 $2f
	jr nc, jr_030_5af6                               ; $5ac5: $30 $2f

	jr nc, jr_030_5ae9                               ; $5ac7: $30 $20

	jr nc, jr_030_5afa                               ; $5ac9: $30 $2f

	jr nc, jr_030_5afc                               ; $5acb: $30 $2f

jr_030_5acd:
	jr nc, jr_030_5afe                               ; $5acd: $30 $2f

jr_030_5acf:
	jr nc, jr_030_5af1                               ; $5acf: $30 $20

	jr nc, jr_030_5b02                               ; $5ad1: $30 $2f

	jr nc, jr_030_5a93                               ; $5ad3: $30 $be

	db $fd                                           ; $5ad5: $fd
	cp [hl]                                          ; $5ad6: $be
	ld b, $1f                                        ; $5ad7: $06 $1f

jr_030_5ad9:
	dec e                                            ; $5ad9: $1d
	rra                                              ; $5ada: $1f
	dec e                                            ; $5adb: $1d
	jr nz, jr_030_5afb                               ; $5adc: $20 $1d

	rra                                              ; $5ade: $1f
	dec e                                            ; $5adf: $1d
	rra                                              ; $5ae0: $1f
	jr nz, jr_030_5b02                               ; $5ae1: $20 $1f

	dec e                                            ; $5ae3: $1d
	jr nz, jr_030_5b03                               ; $5ae4: $20 $1d

	rra                                              ; $5ae6: $1f
	jr nz, @-$40                                     ; $5ae7: $20 $be

jr_030_5ae9:
	db $fd                                           ; $5ae9: $fd
	ret nc                                           ; $5aea: $d0

	add d                                            ; $5aeb: $82
	cp $b5                                           ; $5aec: $fe $b5
	pop de                                           ; $5aee: $d1
	ld [bc], a                                       ; $5aef: $02
	ld c, b                                          ; $5af0: $48

jr_030_5af1:
	rlca                                             ; $5af1: $07
	ld h, h                                          ; $5af2: $64
	ld a, [hl]                                       ; $5af3: $7e
	dec e                                            ; $5af4: $1d
	inc d                                            ; $5af5: $14

jr_030_5af6:
	and c                                            ; $5af6: $a1
	add hl, de                                       ; $5af7: $19
	ld c, b                                          ; $5af8: $48
	ld a, [hl]                                       ; $5af9: $7e

jr_030_5afa:
	nop                                              ; $5afa: $00

jr_030_5afb:
	and b                                            ; $5afb: $a0

jr_030_5afc:
	or c                                             ; $5afc: $b1
	db $d3                                           ; $5afd: $d3

jr_030_5afe:
	nop                                              ; $5afe: $00
	nop                                              ; $5aff: $00
	jr nz, jr_030_5b08                               ; $5b00: $20 $06

jr_030_5b02:
	dec h                                            ; $5b02: $25

jr_030_5b03:
	ld b, $29                                        ; $5b03: $06 $29
	ld b, $cc                                        ; $5b05: $06 $cc
	inc l                                            ; $5b07: $2c

jr_030_5b08:
	ld b, $cd                                        ; $5b08: $06 $cd
	pop de                                           ; $5b0a: $d1
	ld a, [hl]                                       ; $5b0b: $7e
	dec e                                            ; $5b0c: $1d
	inc d                                            ; $5b0d: $14
	and c                                            ; $5b0e: $a1
	sub [hl]                                         ; $5b0f: $96
	ld c, b                                          ; $5b10: $48
	rlca                                             ; $5b11: $07
	add hl, de                                       ; $5b12: $19
	ld c, b                                          ; $5b13: $48
	ld a, [hl]                                       ; $5b14: $7e
	nop                                              ; $5b15: $00
	and b                                            ; $5b16: $a0
	or c                                             ; $5b17: $b1
	jp nc, $0000                                    ; $5b18: $d2 $00 $00

	jr nz, jr_030_5b23                               ; $5b1b: $20 $06

	dec h                                            ; $5b1d: $25
	ld b, $29                                        ; $5b1e: $06 $29
	ld b, $cc                                        ; $5b20: $06 $cc
	inc l                                            ; $5b22: $2c

jr_030_5b23:
	ld b, $7e                                        ; $5b23: $06 $7e
	dec e                                            ; $5b25: $1d
	inc d                                            ; $5b26: $14
	and c                                            ; $5b27: $a1
	or c                                             ; $5b28: $b1
	pop de                                           ; $5b29: $d1
	ld c, b                                          ; $5b2a: $48
	rlca                                             ; $5b2b: $07
	ld e, $48                                        ; $5b2c: $1e $48
	ld a, [hl]                                       ; $5b2e: $7e
	nop                                              ; $5b2f: $00
	and b                                            ; $5b30: $a0
	or c                                             ; $5b31: $b1
	db $d3                                           ; $5b32: $d3
	nop                                              ; $5b33: $00
	nop                                              ; $5b34: $00
	ld [hl+], a                                      ; $5b35: $22
	ld b, $25                                        ; $5b36: $06 $25
	ld b, $29                                        ; $5b38: $06 $29
	ld b, $cc                                        ; $5b3a: $06 $cc
	ld l, $06                                        ; $5b3c: $2e $06
	or c                                             ; $5b3e: $b1
	pop de                                           ; $5b3f: $d1
	ld c, b                                          ; $5b40: $48
	rlca                                             ; $5b41: $07
	ld a, [hl]                                       ; $5b42: $7e
	dec e                                            ; $5b43: $1d
	inc d                                            ; $5b44: $14
	and c                                            ; $5b45: $a1
	inc e                                            ; $5b46: $1c
	ld c, b                                          ; $5b47: $48
	ld a, [hl]                                       ; $5b48: $7e
	nop                                              ; $5b49: $00
	and b                                            ; $5b4a: $a0
	or c                                             ; $5b4b: $b1
	jp nc, $0000                                    ; $5b4c: $d2 $00 $00

	ld hl, $2506                                     ; $5b4f: $21 $06 $25
	ld b, $28                                        ; $5b52: $06 $28
	ld b, $cc                                        ; $5b54: $06 $cc
	dec l                                            ; $5b56: $2d
	ld b, $fe                                        ; $5b57: $06 $fe
	rst $38                                          ; $5b59: $ff
	ret nc                                           ; $5b5a: $d0

	add d                                            ; $5b5b: $82
	cp $92                                           ; $5b5c: $fe $92
	pop de                                           ; $5b5e: $d1
	ei                                               ; $5b5f: $fb
	db $fd                                           ; $5b60: $fd
	rst FarCall                                          ; $5b61: $f7
	ld e, e                                          ; $5b62: $5b
	ei                                               ; $5b63: $fb
	ld [bc], a                                       ; $5b64: $02
	rst GetHLinHL                                          ; $5b65: $cf
	ld l, $03                                        ; $5b66: $2e $03
	call nz, $032e                                   ; $5b68: $c4 $2e $03
	rst GetHLinHL                                          ; $5b6b: $cf
	ld l, $03                                        ; $5b6c: $2e $03
	call nz, $092e                                   ; $5b6e: $c4 $2e $09
	call z, $0330                                    ; $5b71: $cc $30 $03
	call nz, $0330                                   ; $5b74: $c4 $30 $03
	call z, $0330                                    ; $5b77: $cc $30 $03
	call nz, $0930                                   ; $5b7a: $c4 $30 $09
	rst GetHLinHL                                          ; $5b7d: $cf
	ld l, $03                                        ; $5b7e: $2e $03
	call nz, $032e                                   ; $5b80: $c4 $2e $03
	rst GetHLinHL                                          ; $5b83: $cf
	ld l, $03                                        ; $5b84: $2e $03
	call nz, $092e                                   ; $5b86: $c4 $2e $09
	call z, $0330                                    ; $5b89: $cc $30 $03
	call nz, $0330                                   ; $5b8c: $c4 $30 $03
	call z, $0330                                    ; $5b8f: $cc $30 $03
	call nz, $0930                                   ; $5b92: $c4 $30 $09
	call $0325                                       ; $5b95: $cd $25 $03
	jp nz, $0325                                     ; $5b98: $c2 $25 $03

	call z, $0329                                    ; $5b9b: $cc $29 $03
	jp nz, $0329                                     ; $5b9e: $c2 $29 $03

	sra [hl]                                         ; $5ba1: $cb $2e
	inc bc                                           ; $5ba3: $03
	jp $032e                                         ; $5ba4: $c3 $2e $03


	jp z, $0331                                      ; $5ba7: $ca $31 $03

	jp nz, $0331                                     ; $5baa: $c2 $31 $03

	rst GetHLinHL                                          ; $5bad: $cf
	dec l                                            ; $5bae: $2d
	inc bc                                           ; $5baf: $03
	call nz, $032d                                   ; $5bb0: $c4 $2d $03
	rst GetHLinHL                                          ; $5bb3: $cf
	dec l                                            ; $5bb4: $2d
	inc bc                                           ; $5bb5: $03
	call nz, $092d                                   ; $5bb6: $c4 $2d $09
	call z, $032f                                    ; $5bb9: $cc $2f $03
	call nz, $032f                                   ; $5bbc: $c4 $2f $03
	call z, $032f                                    ; $5bbf: $cc $2f $03
	call nz, $092f                                   ; $5bc2: $c4 $2f $09
	rst GetHLinHL                                          ; $5bc5: $cf
	dec l                                            ; $5bc6: $2d
	inc bc                                           ; $5bc7: $03
	call nz, $032d                                   ; $5bc8: $c4 $2d $03
	rst GetHLinHL                                          ; $5bcb: $cf
	dec l                                            ; $5bcc: $2d
	inc bc                                           ; $5bcd: $03
	call nz, $092d                                   ; $5bce: $c4 $2d $09
	call z, $032f                                    ; $5bd1: $cc $2f $03
	call nz, $032f                                   ; $5bd4: $c4 $2f $03
	call z, $032f                                    ; $5bd7: $cc $2f $03
	call nz, $092f                                   ; $5bda: $c4 $2f $09
	call $0325                                       ; $5bdd: $cd $25 $03
	jp nz, $0325                                     ; $5be0: $c2 $25 $03

	call $0329                                       ; $5be3: $cd $29 $03
	jp nz, $0329                                     ; $5be6: $c2 $29 $03

	sra l                                            ; $5be9: $cb $2d
	inc bc                                           ; $5beb: $03
	jp $032d                                         ; $5bec: $c3 $2d $03


	jp z, $0331                                      ; $5bef: $ca $31 $03

	jp $0331                                         ; $5bf2: $c3 $31 $03


	cp $ff                                           ; $5bf5: $fe $ff
	sub d                                            ; $5bf7: $92
	pop de                                           ; $5bf8: $d1
	ld a, b                                          ; $5bf9: $78
	adc $2a                                          ; $5bfa: $ce $2a
	inc bc                                           ; $5bfc: $03
	call nz, $032a                                   ; $5bfd: $c4 $2a $03
	rst GetHLinHL                                          ; $5c00: $cf
	ld a, [hl+]                                      ; $5c01: $2a
	inc bc                                           ; $5c02: $03
	call nz, $092a                                   ; $5c03: $c4 $2a $09
	rst GetHLinHL                                          ; $5c06: $cf
	add hl, hl                                       ; $5c07: $29
	inc bc                                           ; $5c08: $03
	call nz, $0329                                   ; $5c09: $c4 $29 $03
	rst GetHLinHL                                          ; $5c0c: $cf
	add hl, hl                                       ; $5c0d: $29
	inc bc                                           ; $5c0e: $03
	call nz, $0929                                   ; $5c0f: $c4 $29 $09
	rst GetHLinHL                                          ; $5c12: $cf
	ld l, $03                                        ; $5c13: $2e $03
	call nz, $032e                                   ; $5c15: $c4 $2e $03
	rst GetHLinHL                                          ; $5c18: $cf
	ld l, $03                                        ; $5c19: $2e $03
	call nz, $092e                                   ; $5c1b: $c4 $2e $09
	rst GetHLinHL                                          ; $5c1e: $cf
	inc l                                            ; $5c1f: $2c
	inc bc                                           ; $5c20: $03
	call nz, $032c                                   ; $5c21: $c4 $2c $03
	rst GetHLinHL                                          ; $5c24: $cf
	inc l                                            ; $5c25: $2c
	inc bc                                           ; $5c26: $03
	call nz, $092c                                   ; $5c27: $c4 $2c $09
	call $0325                                       ; $5c2a: $cd $25 $03
	jp nz, $0325                                     ; $5c2d: $c2 $25 $03

	call $0329                                       ; $5c30: $cd $29 $03
	jp nz, $0329                                     ; $5c33: $c2 $29 $03

	jp z, $032c                                      ; $5c36: $ca $2c $03

	jp nz, $032c                                     ; $5c39: $c2 $2c $03

	jp z, $0331                                      ; $5c3c: $ca $31 $03

	jp nz, $0331                                     ; $5c3f: $c2 $31 $03

	db $fd                                           ; $5c42: $fd
	ret nc                                           ; $5c43: $d0

	add d                                            ; $5c44: $82
	cp $b5                                           ; $5c45: $fe $b5
	ld hl, $0318                                     ; $5c47: $21 $18 $03
	ld [bc], a                                       ; $5c4a: $02
	ld h, h                                          ; $5c4b: $64
	ei                                               ; $5c4c: $fb
	ld a, a                                          ; $5c4d: $7f
	jr @+$0a                                         ; $5c4e: $18 $08

	ld b, $7f                                        ; $5c50: $06 $7f
	inc e                                            ; $5c52: $1c
	inc d                                            ; $5c53: $14
	ld b, $c6                                        ; $5c54: $06 $c6
	inc d                                            ; $5c56: $14
	ld b, $c2                                        ; $5c57: $06 $c2
	db $fc                                           ; $5c59: $fc
	ld a, a                                          ; $5c5a: $7f

jr_030_5c5b:
	jr jr_030_5c65                                   ; $5c5b: $18 $08

	ld b, $fc                                        ; $5c5d: $06 $fc
	ld b, $7f                                        ; $5c5f: $06 $7f
	inc e                                            ; $5c61: $1c
	inc d                                            ; $5c62: $14
	ld b, $c6                                        ; $5c63: $06 $c6

jr_030_5c65:
	inc d                                            ; $5c65: $14
	ld b, $7f                                        ; $5c66: $06 $7f
	jr @-$3c                                         ; $5c68: $18 $c2

	ld [$7f06], sp                                   ; $5c6a: $08 $06 $7f
	inc e                                            ; $5c6d: $1c
	add hl, de                                       ; $5c6e: $19
	ld b, $c6                                        ; $5c6f: $06 $c6
	add hl, de                                       ; $5c71: $19
	ld b, $7f                                        ; $5c72: $06 $7f
	jr @-$3c                                         ; $5c74: $18 $c2

	ld [$0806], sp                                   ; $5c76: $08 $06 $08
	ld b, $fb                                        ; $5c79: $06 $fb
	ld [bc], a                                       ; $5c7b: $02
	ld a, a                                          ; $5c7c: $7f
	jr jr_030_5c89                                   ; $5c7d: $18 $0a

	ld b, $7f                                        ; $5c7f: $06 $7f
	inc e                                            ; $5c81: $1c
	ld d, $06                                        ; $5c82: $16 $06
	add $16                                          ; $5c84: $c6 $16
	ld b, $c2                                        ; $5c86: $06 $c2

jr_030_5c88:
	ei                                               ; $5c88: $fb

jr_030_5c89:
	ld a, a                                          ; $5c89: $7f
	jr @+$0c                                         ; $5c8a: $18 $0a

	ld b, $fb                                        ; $5c8c: $06 $fb
	ld b, $7f                                        ; $5c8e: $06 $7f
	inc e                                            ; $5c90: $1c
	ld d, $06                                        ; $5c91: $16 $06
	add $16                                          ; $5c93: $c6 $16
	ld b, $7f                                        ; $5c95: $06 $7f
	jr jr_030_5c5b                                   ; $5c97: $18 $c2

	ld a, [bc]                                       ; $5c99: $0a
	ld b, $7f                                        ; $5c9a: $06 $7f
	inc e                                            ; $5c9c: $1c
	add hl, de                                       ; $5c9d: $19
	ld b, $c6                                        ; $5c9e: $06 $c6
	add hl, de                                       ; $5ca0: $19
	ld b, $7f                                        ; $5ca1: $06 $7f
	jr @-$3c                                         ; $5ca3: $18 $c2

	ld a, [bc]                                       ; $5ca5: $0a
	ld b, $0a                                        ; $5ca6: $06 $0a
	ld b, $7f                                        ; $5ca8: $06 $7f
	jr jr_030_5cb5                                   ; $5caa: $18 $09

	ld b, $7f                                        ; $5cac: $06 $7f
	inc e                                            ; $5cae: $1c
	dec d                                            ; $5caf: $15
	ld b, $c6                                        ; $5cb0: $06 $c6
	dec d                                            ; $5cb2: $15
	ld b, $c2                                        ; $5cb3: $06 $c2

jr_030_5cb5:
	ei                                               ; $5cb5: $fb
	ld a, a                                          ; $5cb6: $7f
	jr jr_030_5cc2                                   ; $5cb7: $18 $09

	ld b, $fb                                        ; $5cb9: $06 $fb
	ld b, $7f                                        ; $5cbb: $06 $7f
	inc e                                            ; $5cbd: $1c
	dec d                                            ; $5cbe: $15
	ld b, $c6                                        ; $5cbf: $06 $c6
	dec d                                            ; $5cc1: $15

jr_030_5cc2:
	ld b, $7f                                        ; $5cc2: $06 $7f
	jr jr_030_5c88                                   ; $5cc4: $18 $c2

	add hl, bc                                       ; $5cc6: $09
	ld b, $7f                                        ; $5cc7: $06 $7f
	inc e                                            ; $5cc9: $1c
	add hl, de                                       ; $5cca: $19
	ld b, $c6                                        ; $5ccb: $06 $c6
	add hl, de                                       ; $5ccd: $19
	ld b, $7f                                        ; $5cce: $06 $7f
	jr @-$3c                                         ; $5cd0: $18 $c2

	add hl, bc                                       ; $5cd2: $09
	ld b, $09                                        ; $5cd3: $06 $09
	ld b, $fe                                        ; $5cd5: $06 $fe
	rst $38                                          ; $5cd7: $ff
	ret nc                                           ; $5cd8: $d0

	add d                                            ; $5cd9: $82
	cp $fd                                           ; $5cda: $fe $fd
	ldh [$5c], a                                     ; $5cdc: $e0 $5c
	cp $ff                                           ; $5cde: $fe $ff
	cp [hl]                                          ; $5ce0: $be
	ld b, $1f                                        ; $5ce1: $06 $1f
	jr nc, jr_030_5d14                               ; $5ce3: $30 $2f

	jr nc, jr_030_5d07                               ; $5ce5: $30 $20

	jr nc, @+$31                                     ; $5ce7: $30 $2f

	jr nc, @+$21                                     ; $5ce9: $30 $1f

	jr nc, jr_030_5d0c                               ; $5ceb: $30 $1f

	jr nc, jr_030_5d0f                               ; $5ced: $30 $20

	jr nc, jr_030_5d10                               ; $5cef: $30 $1f

	jr nc, @-$40                                     ; $5cf1: $30 $be

	db $fd                                           ; $5cf3: $fd
	ret nc                                           ; $5cf4: $d0

	ld a, b                                          ; $5cf5: $78
	cp $d2                                           ; $5cf6: $fe $d2
	sub b                                            ; $5cf8: $90
	ld h, e                                          ; $5cf9: $63
	ei                                               ; $5cfa: $fb
	db $fd                                           ; $5cfb: $fd
	add hl, de                                       ; $5cfc: $19
	ld e, l                                          ; $5cfd: $5d
	ei                                               ; $5cfe: $fb
	ld [bc], a                                       ; $5cff: $02
	ld h, h                                          ; $5d00: $64
	db $fc                                           ; $5d01: $fc
	db $fd                                           ; $5d02: $fd
	add hl, de                                       ; $5d03: $19
	ld e, l                                          ; $5d04: $5d
	db $fc                                           ; $5d05: $fc
	ld [bc], a                                       ; $5d06: $02

jr_030_5d07:
	ld h, e                                          ; $5d07: $63
	jp nc, Jump_030_6390                             ; $5d08: $d2 $90 $63

	db $fd                                           ; $5d0b: $fd

jr_030_5d0c:
	ret nz                                           ; $5d0c: $c0

	ld e, l                                          ; $5d0d: $5d
	db $fd                                           ; $5d0e: $fd

jr_030_5d0f:
	ld sp, hl                                        ; $5d0f: $f9

jr_030_5d10:
	ld e, l                                          ; $5d10: $5d
	db $fd                                           ; $5d11: $fd
	ld [hl-], a                                      ; $5d12: $32
	ld e, [hl]                                       ; $5d13: $5e

jr_030_5d14:
	db $fd                                           ; $5d14: $fd
	ld l, e                                          ; $5d15: $6b
	ld e, [hl]                                       ; $5d16: $5e
	cp $ff                                           ; $5d17: $fe $ff
	pop de                                           ; $5d19: $d1
	ret z                                            ; $5d1a: $c8

	ld l, $03                                        ; $5d1b: $2e $03
	call nz, $032e                                   ; $5d1d: $c4 $2e $03
	ret z                                            ; $5d20: $c8

	ld l, $03                                        ; $5d21: $2e $03
	call nz, $032e                                   ; $5d23: $c4 $2e $03
	ld a, [hl]                                       ; $5d26: $7e
	dec e                                            ; $5d27: $1d
	ld b, $a1                                        ; $5d28: $06 $a1
	call z, $0c19                                    ; $5d2a: $cc $19 $0c
	ld a, [hl]                                       ; $5d2d: $7e
	dec e                                            ; $5d2e: $1d
	nop                                              ; $5d2f: $00
	and c                                            ; $5d30: $a1
	call nz, $0619                                   ; $5d31: $c4 $19 $06
	ret z                                            ; $5d34: $c8

	ld a, [hl]                                       ; $5d35: $7e
	nop                                              ; $5d36: $00
	and b                                            ; $5d37: $a0
	ld l, $03                                        ; $5d38: $2e $03
	call nz, $032e                                   ; $5d3a: $c4 $2e $03
	ret z                                            ; $5d3d: $c8

	ld l, $03                                        ; $5d3e: $2e $03
	call nz, $032e                                   ; $5d40: $c4 $2e $03
	ld a, [hl]                                       ; $5d43: $7e
	dec e                                            ; $5d44: $1d
	ld b, $a1                                        ; $5d45: $06 $a1
	call z, $1218                                    ; $5d47: $cc $18 $12
	ld a, [hl]                                       ; $5d4a: $7e
	dec e                                            ; $5d4b: $1d
	nop                                              ; $5d4c: $00
	and c                                            ; $5d4d: $a1
	call nz, $0c18                                   ; $5d4e: $c4 $18 $0c
	ld a, [hl]                                       ; $5d51: $7e
	nop                                              ; $5d52: $00
	and b                                            ; $5d53: $a0
	ret z                                            ; $5d54: $c8

	ld l, $03                                        ; $5d55: $2e $03
	call nz, $032e                                   ; $5d57: $c4 $2e $03
	ret z                                            ; $5d5a: $c8

	ld l, $03                                        ; $5d5b: $2e $03
	call nz, $032e                                   ; $5d5d: $c4 $2e $03
	pop de                                           ; $5d60: $d1
	ret z                                            ; $5d61: $c8

	ld l, $03                                        ; $5d62: $2e $03
	call nz, $032e                                   ; $5d64: $c4 $2e $03
	ret z                                            ; $5d67: $c8

	ld l, $03                                        ; $5d68: $2e $03
	call nz, $032e                                   ; $5d6a: $c4 $2e $03
	ret z                                            ; $5d6d: $c8

	ld l, $03                                        ; $5d6e: $2e $03
	call nz, $032e                                   ; $5d70: $c4 $2e $03
	ret                                              ; $5d73: $c9


	ld l, $03                                        ; $5d74: $2e $03
	call nz, $032e                                   ; $5d76: $c4 $2e $03
	ld a, [hl]                                       ; $5d79: $7e
	dec e                                            ; $5d7a: $1d
	ld b, $a1                                        ; $5d7b: $06 $a1
	call z, $0c19                                    ; $5d7d: $cc $19 $0c
	ld a, [hl]                                       ; $5d80: $7e
	dec e                                            ; $5d81: $1d
	nop                                              ; $5d82: $00
	and c                                            ; $5d83: $a1
	call nz, $0619                                   ; $5d84: $c4 $19 $06
	ret z                                            ; $5d87: $c8

	ld a, [hl]                                       ; $5d88: $7e
	nop                                              ; $5d89: $00
	and b                                            ; $5d8a: $a0
	ld l, $03                                        ; $5d8b: $2e $03
	call nz, $032e                                   ; $5d8d: $c4 $2e $03
	ret z                                            ; $5d90: $c8

	ld l, $03                                        ; $5d91: $2e $03
	call nz, $032e                                   ; $5d93: $c4 $2e $03
	ld a, [hl]                                       ; $5d96: $7e
	dec e                                            ; $5d97: $1d
	ld b, $a1                                        ; $5d98: $06 $a1
	call z, $121b                                    ; $5d9a: $cc $1b $12
	ld a, [hl]                                       ; $5d9d: $7e
	dec e                                            ; $5d9e: $1d
	nop                                              ; $5d9f: $00
	and c                                            ; $5da0: $a1
	call nz, $007e                                   ; $5da1: $c4 $7e $00
	and b                                            ; $5da4: $a0
	dec de                                           ; $5da5: $1b
	inc c                                            ; $5da6: $0c
	ret z                                            ; $5da7: $c8

	ld l, $03                                        ; $5da8: $2e $03
	call nz, $032e                                   ; $5daa: $c4 $2e $03
	ret z                                            ; $5dad: $c8

	ld l, $03                                        ; $5dae: $2e $03
	call nz, $032e                                   ; $5db0: $c4 $2e $03
	ret z                                            ; $5db3: $c8

	ld l, $03                                        ; $5db4: $2e $03
	call nz, $032e                                   ; $5db6: $c4 $2e $03
	ret z                                            ; $5db9: $c8

	ld l, $03                                        ; $5dba: $2e $03
	call nz, $032e                                   ; $5dbc: $c4 $2e $03
	db $fd                                           ; $5dbf: $fd
	pop de                                           ; $5dc0: $d1
	adc $19                                          ; $5dc1: $ce $19
	ld b, $c4                                        ; $5dc3: $06 $c4
	add hl, de                                       ; $5dc5: $19
	ld b, $ce                                        ; $5dc6: $06 $ce
	add hl, de                                       ; $5dc8: $19
	ld b, $c4                                        ; $5dc9: $06 $c4
	add hl, de                                       ; $5dcb: $19
	ld b, $00                                        ; $5dcc: $06 $00
	ld b, $ce                                        ; $5dce: $06 $ce
	add hl, de                                       ; $5dd0: $19
	ld b, $c4                                        ; $5dd1: $06 $c4
	add hl, de                                       ; $5dd3: $19
	ld b, $ce                                        ; $5dd4: $06 $ce
	add hl, de                                       ; $5dd6: $19
	inc bc                                           ; $5dd7: $03
	call nz, $0319                                   ; $5dd8: $c4 $19 $03
	adc $19                                          ; $5ddb: $ce $19
	ld b, $c4                                        ; $5ddd: $06 $c4
	add hl, de                                       ; $5ddf: $19
	ld b, $ce                                        ; $5de0: $06 $ce
	add hl, de                                       ; $5de2: $19
	ld b, $c4                                        ; $5de3: $06 $c4
	add hl, de                                       ; $5de5: $19
	ld b, $c7                                        ; $5de6: $06 $c7
	ld a, [hl]                                       ; $5de8: $7e
	dec e                                            ; $5de9: $1d
	ld b, $a9                                        ; $5dea: $06 $a9
	dec h                                            ; $5dec: $25
	ld [de], a                                       ; $5ded: $12
	ld a, [hl]                                       ; $5dee: $7e
	dec e                                            ; $5def: $1d
	nop                                              ; $5df0: $00
	xor c                                            ; $5df1: $a9
	call nz, $0625                                   ; $5df2: $c4 $25 $06
	ld a, [hl]                                       ; $5df5: $7e
	nop                                              ; $5df6: $00
	and b                                            ; $5df7: $a0
	db $fd                                           ; $5df8: $fd
	pop de                                           ; $5df9: $d1
	adc $19                                          ; $5dfa: $ce $19
	ld b, $c4                                        ; $5dfc: $06 $c4
	add hl, de                                       ; $5dfe: $19
	ld b, $ce                                        ; $5dff: $06 $ce
	add hl, de                                       ; $5e01: $19
	ld b, $c4                                        ; $5e02: $06 $c4
	add hl, de                                       ; $5e04: $19
	ld b, $00                                        ; $5e05: $06 $00
	ld b, $ce                                        ; $5e07: $06 $ce
	add hl, de                                       ; $5e09: $19
	ld b, $c4                                        ; $5e0a: $06 $c4
	add hl, de                                       ; $5e0c: $19
	ld b, $ce                                        ; $5e0d: $06 $ce
	add hl, de                                       ; $5e0f: $19
	inc bc                                           ; $5e10: $03
	call nz, $0319                                   ; $5e11: $c4 $19 $03
	adc $19                                          ; $5e14: $ce $19
	ld b, $c4                                        ; $5e16: $06 $c4
	add hl, de                                       ; $5e18: $19
	ld b, $ce                                        ; $5e19: $06 $ce
	add hl, de                                       ; $5e1b: $19
	ld b, $c4                                        ; $5e1c: $06 $c4
	add hl, de                                       ; $5e1e: $19
	ld b, $c7                                        ; $5e1f: $06 $c7
	ld a, [hl]                                       ; $5e21: $7e
	dec e                                            ; $5e22: $1d
	ld b, $a9                                        ; $5e23: $06 $a9
	daa                                              ; $5e25: $27
	ld [de], a                                       ; $5e26: $12
	ld a, [hl]                                       ; $5e27: $7e
	dec e                                            ; $5e28: $1d
	nop                                              ; $5e29: $00
	xor c                                            ; $5e2a: $a9
	call nz, $0627                                   ; $5e2b: $c4 $27 $06
	ld a, [hl]                                       ; $5e2e: $7e
	nop                                              ; $5e2f: $00
	and b                                            ; $5e30: $a0
	db $fd                                           ; $5e31: $fd
	pop de                                           ; $5e32: $d1
	adc $18                                          ; $5e33: $ce $18
	ld b, $c4                                        ; $5e35: $06 $c4
	jr jr_030_5e3f                                   ; $5e37: $18 $06

	adc $18                                          ; $5e39: $ce $18
	ld b, $c4                                        ; $5e3b: $06 $c4
	jr @+$08                                         ; $5e3d: $18 $06

jr_030_5e3f:
	nop                                              ; $5e3f: $00
	ld b, $ce                                        ; $5e40: $06 $ce
	jr jr_030_5e4a                                   ; $5e42: $18 $06

	call nz, $0618                                   ; $5e44: $c4 $18 $06
	adc $18                                          ; $5e47: $ce $18
	inc bc                                           ; $5e49: $03

jr_030_5e4a:
	call nz, $0318                                   ; $5e4a: $c4 $18 $03
	adc $18                                          ; $5e4d: $ce $18
	ld b, $c4                                        ; $5e4f: $06 $c4
	jr jr_030_5e59                                   ; $5e51: $18 $06

	adc $18                                          ; $5e53: $ce $18
	ld b, $c4                                        ; $5e55: $06 $c4
	jr jr_030_5e5f                                   ; $5e57: $18 $06

jr_030_5e59:
	rst JumpTable                                          ; $5e59: $c7
	ld a, [hl]                                       ; $5e5a: $7e
	dec e                                            ; $5e5b: $1d
	ld b, $a9                                        ; $5e5c: $06 $a9
	inc h                                            ; $5e5e: $24

jr_030_5e5f:
	ld [de], a                                       ; $5e5f: $12
	ld a, [hl]                                       ; $5e60: $7e
	dec e                                            ; $5e61: $1d
	nop                                              ; $5e62: $00
	xor c                                            ; $5e63: $a9
	call nz, $0624                                   ; $5e64: $c4 $24 $06
	ld a, [hl]                                       ; $5e67: $7e
	nop                                              ; $5e68: $00
	and b                                            ; $5e69: $a0
	db $fd                                           ; $5e6a: $fd
	pop de                                           ; $5e6b: $d1
	adc $18                                          ; $5e6c: $ce $18
	ld b, $c4                                        ; $5e6e: $06 $c4
	jr jr_030_5e78                                   ; $5e70: $18 $06

	adc $18                                          ; $5e72: $ce $18
	ld b, $c4                                        ; $5e74: $06 $c4
	jr @+$08                                         ; $5e76: $18 $06

jr_030_5e78:
	nop                                              ; $5e78: $00
	ld b, $ce                                        ; $5e79: $06 $ce
	jr jr_030_5e83                                   ; $5e7b: $18 $06

	call nz, $0618                                   ; $5e7d: $c4 $18 $06
	adc $18                                          ; $5e80: $ce $18
	inc bc                                           ; $5e82: $03

jr_030_5e83:
	call nz, $0318                                   ; $5e83: $c4 $18 $03
	adc $18                                          ; $5e86: $ce $18
	ld b, $c4                                        ; $5e88: $06 $c4
	jr jr_030_5e92                                   ; $5e8a: $18 $06

	adc $18                                          ; $5e8c: $ce $18
	ld b, $c4                                        ; $5e8e: $06 $c4
	jr jr_030_5e98                                   ; $5e90: $18 $06

jr_030_5e92:
	rst JumpTable                                          ; $5e92: $c7
	ld a, [hl]                                       ; $5e93: $7e
	dec e                                            ; $5e94: $1d
	ld b, $a0                                        ; $5e95: $06 $a0
	add hl, de                                       ; $5e97: $19

jr_030_5e98:
	ld [de], a                                       ; $5e98: $12
	ld a, [hl]                                       ; $5e99: $7e
	dec e                                            ; $5e9a: $1d
	nop                                              ; $5e9b: $00
	and b                                            ; $5e9c: $a0
	call nz, $0619                                   ; $5e9d: $c4 $19 $06
	ld a, [hl]                                       ; $5ea0: $7e
	nop                                              ; $5ea1: $00
	and b                                            ; $5ea2: $a0
	db $fd                                           ; $5ea3: $fd
	ret nc                                           ; $5ea4: $d0

	ld a, b                                          ; $5ea5: $78
	cp $d1                                           ; $5ea6: $fe $d1
	sub e                                            ; $5ea8: $93
	ld h, e                                          ; $5ea9: $63
	ei                                               ; $5eaa: $fb
	db $fd                                           ; $5eab: $fd
	ret                                              ; $5eac: $c9


	ld e, [hl]                                       ; $5ead: $5e
	ei                                               ; $5eae: $fb
	ld [bc], a                                       ; $5eaf: $02
	ld h, h                                          ; $5eb0: $64
	db $fc                                           ; $5eb1: $fc
	db $fd                                           ; $5eb2: $fd
	ld b, a                                          ; $5eb3: $47
	ld h, b                                          ; $5eb4: $60
	db $fc                                           ; $5eb5: $fc
	ld [bc], a                                       ; $5eb6: $02
	ld h, e                                          ; $5eb7: $63
	pop de                                           ; $5eb8: $d1
	sub e                                            ; $5eb9: $93
	ld h, e                                          ; $5eba: $63
	db $fd                                           ; $5ebb: $fd
	ld h, e                                          ; $5ebc: $63
	ld e, a                                          ; $5ebd: $5f
	db $fd                                           ; $5ebe: $fd
	sbc h                                            ; $5ebf: $9c
	ld e, a                                          ; $5ec0: $5f
	db $fd                                           ; $5ec1: $fd
	push de                                          ; $5ec2: $d5
	ld e, a                                          ; $5ec3: $5f
	db $fd                                           ; $5ec4: $fd
	ld c, $60                                        ; $5ec5: $0e $60
	cp $ff                                           ; $5ec7: $fe $ff
	pop de                                           ; $5ec9: $d1
	adc $11                                          ; $5eca: $ce $11
	inc bc                                           ; $5ecc: $03
	call nz, $0311                                   ; $5ecd: $c4 $11 $03
	adc $11                                          ; $5ed0: $ce $11
	inc bc                                           ; $5ed2: $03
	call nz, $0311                                   ; $5ed3: $c4 $11 $03
	ld a, [hl]                                       ; $5ed6: $7e
	dec e                                            ; $5ed7: $1d
	ld b, $a1                                        ; $5ed8: $06 $a1
	adc $16                                          ; $5eda: $ce $16
	inc c                                            ; $5edc: $0c
	ld a, [hl]                                       ; $5edd: $7e
	dec e                                            ; $5ede: $1d
	nop                                              ; $5edf: $00
	and c                                            ; $5ee0: $a1
	call nz, $0616                                   ; $5ee1: $c4 $16 $06
	adc $11                                          ; $5ee4: $ce $11
	inc bc                                           ; $5ee6: $03
	call nz, $0311                                   ; $5ee7: $c4 $11 $03
	adc $11                                          ; $5eea: $ce $11
	inc bc                                           ; $5eec: $03
	call nz, $0311                                   ; $5eed: $c4 $11 $03
	ld a, [hl]                                       ; $5ef0: $7e
	dec e                                            ; $5ef1: $1d
	ld b, $a1                                        ; $5ef2: $06 $a1
	call z, $1214                                    ; $5ef4: $cc $14 $12
	ld a, [hl]                                       ; $5ef7: $7e
	dec e                                            ; $5ef8: $1d
	nop                                              ; $5ef9: $00
	and c                                            ; $5efa: $a1
	call nz, $0c14                                   ; $5efb: $c4 $14 $0c
	adc $11                                          ; $5efe: $ce $11
	inc bc                                           ; $5f00: $03
	call nz, $0311                                   ; $5f01: $c4 $11 $03
	adc $11                                          ; $5f04: $ce $11
	inc bc                                           ; $5f06: $03
	call nz, $0311                                   ; $5f07: $c4 $11 $03
	adc $11                                          ; $5f0a: $ce $11
	inc bc                                           ; $5f0c: $03
	call nz, $0311                                   ; $5f0d: $c4 $11 $03
	adc $11                                          ; $5f10: $ce $11
	inc bc                                           ; $5f12: $03
	call nz, $0311                                   ; $5f13: $c4 $11 $03
	adc $11                                          ; $5f16: $ce $11
	inc bc                                           ; $5f18: $03
	call nz, $0311                                   ; $5f19: $c4 $11 $03
	adc $11                                          ; $5f1c: $ce $11
	inc bc                                           ; $5f1e: $03
	call nz, $0311                                   ; $5f1f: $c4 $11 $03
	ld a, [hl]                                       ; $5f22: $7e
	dec e                                            ; $5f23: $1d
	ld b, $a1                                        ; $5f24: $06 $a1
	call z, $0c16                                    ; $5f26: $cc $16 $0c
	ld a, [hl]                                       ; $5f29: $7e
	dec e                                            ; $5f2a: $1d
	nop                                              ; $5f2b: $00
	and c                                            ; $5f2c: $a1
	call nz, $0616                                   ; $5f2d: $c4 $16 $06
	adc $11                                          ; $5f30: $ce $11
	inc bc                                           ; $5f32: $03
	call nz, $0311                                   ; $5f33: $c4 $11 $03
	adc $11                                          ; $5f36: $ce $11
	inc bc                                           ; $5f38: $03
	call nz, $0311                                   ; $5f39: $c4 $11 $03
	ld a, [hl]                                       ; $5f3c: $7e
	dec e                                            ; $5f3d: $1d
	ld b, $a1                                        ; $5f3e: $06 $a1
	call z, $1218                                    ; $5f40: $cc $18 $12
	ld a, [hl]                                       ; $5f43: $7e
	dec e                                            ; $5f44: $1d
	nop                                              ; $5f45: $00
	and c                                            ; $5f46: $a1
	call nz, $0c18                                   ; $5f47: $c4 $18 $0c
	adc $11                                          ; $5f4a: $ce $11
	inc bc                                           ; $5f4c: $03
	call nz, $0311                                   ; $5f4d: $c4 $11 $03
	adc $11                                          ; $5f50: $ce $11
	inc bc                                           ; $5f52: $03
	call nz, $0311                                   ; $5f53: $c4 $11 $03
	adc $11                                          ; $5f56: $ce $11
	inc bc                                           ; $5f58: $03
	call nz, $0311                                   ; $5f59: $c4 $11 $03
	adc $11                                          ; $5f5c: $ce $11
	inc bc                                           ; $5f5e: $03
	call nz, $0311                                   ; $5f5f: $c4 $11 $03
	db $fd                                           ; $5f62: $fd
	pop de                                           ; $5f63: $d1
	adc $16                                          ; $5f64: $ce $16
	ld b, $c4                                        ; $5f66: $06 $c4
	ld d, $06                                        ; $5f68: $16 $06
	adc $16                                          ; $5f6a: $ce $16
	ld b, $c4                                        ; $5f6c: $06 $c4
	ld d, $06                                        ; $5f6e: $16 $06
	nop                                              ; $5f70: $00
	ld b, $ce                                        ; $5f71: $06 $ce
	ld d, $06                                        ; $5f73: $16 $06
	call nz, $0616                                   ; $5f75: $c4 $16 $06
	adc $16                                          ; $5f78: $ce $16
	inc bc                                           ; $5f7a: $03
	call nz, $0316                                   ; $5f7b: $c4 $16 $03
	adc $16                                          ; $5f7e: $ce $16
	ld b, $c4                                        ; $5f80: $06 $c4
	ld d, $06                                        ; $5f82: $16 $06
	adc $16                                          ; $5f84: $ce $16
	ld b, $c4                                        ; $5f86: $06 $c4
	ld d, $06                                        ; $5f88: $16 $06
	rst JumpTable                                          ; $5f8a: $c7
	ld a, [hl]                                       ; $5f8b: $7e
	dec e                                            ; $5f8c: $1d
	ld b, $a0                                        ; $5f8d: $06 $a0
	ld [hl+], a                                      ; $5f8f: $22
	ld [de], a                                       ; $5f90: $12
	ld a, [hl]                                       ; $5f91: $7e
	dec e                                            ; $5f92: $1d
	nop                                              ; $5f93: $00
	and b                                            ; $5f94: $a0
	jp nz, $0622                                     ; $5f95: $c2 $22 $06

	ld a, [hl]                                       ; $5f98: $7e
	nop                                              ; $5f99: $00
	and b                                            ; $5f9a: $a0
	db $fd                                           ; $5f9b: $fd
	pop de                                           ; $5f9c: $d1
	adc $16                                          ; $5f9d: $ce $16
	ld b, $c4                                        ; $5f9f: $06 $c4
	ld d, $06                                        ; $5fa1: $16 $06
	adc $16                                          ; $5fa3: $ce $16
	ld b, $c4                                        ; $5fa5: $06 $c4
	ld d, $06                                        ; $5fa7: $16 $06
	nop                                              ; $5fa9: $00
	ld b, $ce                                        ; $5faa: $06 $ce
	ld d, $06                                        ; $5fac: $16 $06
	call nz, $0616                                   ; $5fae: $c4 $16 $06
	adc $16                                          ; $5fb1: $ce $16
	inc bc                                           ; $5fb3: $03
	call nz, $0316                                   ; $5fb4: $c4 $16 $03
	adc $16                                          ; $5fb7: $ce $16
	ld b, $c4                                        ; $5fb9: $06 $c4
	ld d, $06                                        ; $5fbb: $16 $06
	adc $16                                          ; $5fbd: $ce $16
	ld b, $c4                                        ; $5fbf: $06 $c4
	ld d, $06                                        ; $5fc1: $16 $06
	rst JumpTable                                          ; $5fc3: $c7
	ld a, [hl]                                       ; $5fc4: $7e
	dec e                                            ; $5fc5: $1d
	ld b, $a0                                        ; $5fc6: $06 $a0
	inc h                                            ; $5fc8: $24
	ld [de], a                                       ; $5fc9: $12
	ld a, [hl]                                       ; $5fca: $7e
	dec e                                            ; $5fcb: $1d
	nop                                              ; $5fcc: $00
	and b                                            ; $5fcd: $a0
	call nz, $0624                                   ; $5fce: $c4 $24 $06
	ld a, [hl]                                       ; $5fd1: $7e
	nop                                              ; $5fd2: $00
	and b                                            ; $5fd3: $a0
	db $fd                                           ; $5fd4: $fd
	pop de                                           ; $5fd5: $d1
	adc $14                                          ; $5fd6: $ce $14
	ld b, $c4                                        ; $5fd8: $06 $c4
	inc d                                            ; $5fda: $14
	ld b, $ce                                        ; $5fdb: $06 $ce
	inc d                                            ; $5fdd: $14
	ld b, $c4                                        ; $5fde: $06 $c4
	inc d                                            ; $5fe0: $14
	ld b, $00                                        ; $5fe1: $06 $00
	ld b, $ce                                        ; $5fe3: $06 $ce
	inc d                                            ; $5fe5: $14
	ld b, $c4                                        ; $5fe6: $06 $c4
	inc d                                            ; $5fe8: $14
	ld b, $ce                                        ; $5fe9: $06 $ce
	inc d                                            ; $5feb: $14
	inc bc                                           ; $5fec: $03
	call nz, $0314                                   ; $5fed: $c4 $14 $03
	adc $14                                          ; $5ff0: $ce $14
	ld b, $c4                                        ; $5ff2: $06 $c4
	inc d                                            ; $5ff4: $14
	ld b, $ce                                        ; $5ff5: $06 $ce
	inc d                                            ; $5ff7: $14
	ld b, $c4                                        ; $5ff8: $06 $c4
	inc d                                            ; $5ffa: $14
	ld b, $c7                                        ; $5ffb: $06 $c7
	ld a, [hl]                                       ; $5ffd: $7e
	dec e                                            ; $5ffe: $1d
	ld b, $a0                                        ; $5fff: $06 $a0
	jr nz, @+$14                                     ; $6001: $20 $12

	ld a, [hl]                                       ; $6003: $7e
	dec e                                            ; $6004: $1d
	nop                                              ; $6005: $00
	and b                                            ; $6006: $a0
	call nz, $0620                                   ; $6007: $c4 $20 $06
	ld a, [hl]                                       ; $600a: $7e
	nop                                              ; $600b: $00
	and b                                            ; $600c: $a0
	db $fd                                           ; $600d: $fd
	pop de                                           ; $600e: $d1
	adc $14                                          ; $600f: $ce $14
	ld b, $c4                                        ; $6011: $06 $c4
	inc d                                            ; $6013: $14
	ld b, $ce                                        ; $6014: $06 $ce
	inc d                                            ; $6016: $14
	ld b, $c4                                        ; $6017: $06 $c4
	inc d                                            ; $6019: $14
	ld b, $00                                        ; $601a: $06 $00
	ld b, $ce                                        ; $601c: $06 $ce
	inc d                                            ; $601e: $14
	ld b, $c4                                        ; $601f: $06 $c4
	inc d                                            ; $6021: $14
	ld b, $ce                                        ; $6022: $06 $ce
	inc d                                            ; $6024: $14
	inc bc                                           ; $6025: $03
	call nz, $0314                                   ; $6026: $c4 $14 $03
	adc $14                                          ; $6029: $ce $14
	ld b, $c4                                        ; $602b: $06 $c4
	inc d                                            ; $602d: $14
	ld b, $ce                                        ; $602e: $06 $ce
	inc d                                            ; $6030: $14
	ld b, $c4                                        ; $6031: $06 $c4
	inc d                                            ; $6033: $14
	ld b, $c7                                        ; $6034: $06 $c7
	ld a, [hl]                                       ; $6036: $7e
	dec e                                            ; $6037: $1d
	ld b, $a0                                        ; $6038: $06 $a0
	ld [hl+], a                                      ; $603a: $22
	ld [de], a                                       ; $603b: $12
	ld a, [hl]                                       ; $603c: $7e
	dec e                                            ; $603d: $1d
	nop                                              ; $603e: $00
	and b                                            ; $603f: $a0
	call nz, $0622                                   ; $6040: $c4 $22 $06
	ld a, [hl]                                       ; $6043: $7e
	nop                                              ; $6044: $00
	and b                                            ; $6045: $a0
	db $fd                                           ; $6046: $fd
	pop de                                           ; $6047: $d1
	add $7e                                          ; $6048: $c6 $7e
	nop                                              ; $604a: $00
	and b                                            ; $604b: $a0
	add hl, hl                                       ; $604c: $29
	inc bc                                           ; $604d: $03
	jp nz, $0329                                     ; $604e: $c2 $29 $03

	add $29                                          ; $6051: $c6 $29
	inc bc                                           ; $6053: $03
	jp nz, $0329                                     ; $6054: $c2 $29 $03

	ld a, [hl]                                       ; $6057: $7e
	dec e                                            ; $6058: $1d
	ld b, $a0                                        ; $6059: $06 $a0
	call z, $0c1d                                    ; $605b: $cc $1d $0c
	ld a, [hl]                                       ; $605e: $7e
	dec e                                            ; $605f: $1d
	nop                                              ; $6060: $00
	and c                                            ; $6061: $a1
	call nz, $061d                                   ; $6062: $c4 $1d $06
	ld a, [hl]                                       ; $6065: $7e
	nop                                              ; $6066: $00
	and b                                            ; $6067: $a0
	add $29                                          ; $6068: $c6 $29
	inc bc                                           ; $606a: $03
	jp nz, $0329                                     ; $606b: $c2 $29 $03

	add $29                                          ; $606e: $c6 $29
	inc bc                                           ; $6070: $03
	jp nz, $0329                                     ; $6071: $c2 $29 $03

	ld a, [hl]                                       ; $6074: $7e
	dec e                                            ; $6075: $1d
	ld b, $a0                                        ; $6076: $06 $a0
	call z, $121b                                    ; $6078: $cc $1b $12
	ld a, [hl]                                       ; $607b: $7e
	dec e                                            ; $607c: $1d
	nop                                              ; $607d: $00
	and c                                            ; $607e: $a1
	call nz, $0c1b                                   ; $607f: $c4 $1b $0c
	add $7e                                          ; $6082: $c6 $7e
	nop                                              ; $6084: $00
	and b                                            ; $6085: $a0
	add hl, hl                                       ; $6086: $29
	inc bc                                           ; $6087: $03
	jp nz, $0329                                     ; $6088: $c2 $29 $03

	add $29                                          ; $608b: $c6 $29
	inc bc                                           ; $608d: $03
	jp nz, $0329                                     ; $608e: $c2 $29 $03

	add $29                                          ; $6091: $c6 $29
	inc bc                                           ; $6093: $03
	jp nz, $0329                                     ; $6094: $c2 $29 $03

	add $29                                          ; $6097: $c6 $29
	inc bc                                           ; $6099: $03
	jp nz, $0329                                     ; $609a: $c2 $29 $03

	add $29                                          ; $609d: $c6 $29
	inc bc                                           ; $609f: $03
	jp nz, $0329                                     ; $60a0: $c2 $29 $03

	add $29                                          ; $60a3: $c6 $29
	inc bc                                           ; $60a5: $03
	jp nz, $0329                                     ; $60a6: $c2 $29 $03

	ld a, [hl]                                       ; $60a9: $7e
	dec e                                            ; $60aa: $1d
	ld b, $a0                                        ; $60ab: $06 $a0
	call z, $0c1d                                    ; $60ad: $cc $1d $0c
	ld a, [hl]                                       ; $60b0: $7e
	dec e                                            ; $60b1: $1d
	nop                                              ; $60b2: $00
	and c                                            ; $60b3: $a1
	call nz, $061d                                   ; $60b4: $c4 $1d $06
	add $7e                                          ; $60b7: $c6 $7e
	nop                                              ; $60b9: $00
	and b                                            ; $60ba: $a0
	add hl, hl                                       ; $60bb: $29
	inc bc                                           ; $60bc: $03
	jp nz, $0329                                     ; $60bd: $c2 $29 $03

	add $29                                          ; $60c0: $c6 $29
	inc bc                                           ; $60c2: $03
	jp nz, $0329                                     ; $60c3: $c2 $29 $03

	ld a, [hl]                                       ; $60c6: $7e
	dec e                                            ; $60c7: $1d
	ld b, $a0                                        ; $60c8: $06 $a0
	call z, $121e                                    ; $60ca: $cc $1e $12
	ld a, [hl]                                       ; $60cd: $7e
	dec e                                            ; $60ce: $1d
	nop                                              ; $60cf: $00
	and c                                            ; $60d0: $a1
	call nz, $0c1e                                   ; $60d1: $c4 $1e $0c
	add $7e                                          ; $60d4: $c6 $7e
	nop                                              ; $60d6: $00
	and b                                            ; $60d7: $a0
	add hl, hl                                       ; $60d8: $29
	inc bc                                           ; $60d9: $03
	jp nz, $0329                                     ; $60da: $c2 $29 $03

	add $29                                          ; $60dd: $c6 $29
	inc bc                                           ; $60df: $03
	jp nz, $0329                                     ; $60e0: $c2 $29 $03

	add $29                                          ; $60e3: $c6 $29
	inc bc                                           ; $60e5: $03
	jp nz, $0329                                     ; $60e6: $c2 $29 $03

	add $29                                          ; $60e9: $c6 $29
	inc bc                                           ; $60eb: $03
	jp nz, $0329                                     ; $60ec: $c2 $29 $03

	db $fd                                           ; $60ef: $fd
	ret nc                                           ; $60f0: $d0

	ld a, b                                          ; $60f1: $78
	cp $d1                                           ; $60f2: $fe $d1
	ld a, a                                          ; $60f4: $7f
	jr jr_030_615a                                   ; $60f5: $18 $63

	ei                                               ; $60f7: $fb
	db $fd                                           ; $60f8: $fd
	ld de, $fb61                                     ; $60f9: $11 $61 $fb
	inc b                                            ; $60fc: $04
	ld h, h                                          ; $60fd: $64
	db $fc                                           ; $60fe: $fc
	db $fd                                           ; $60ff: $fd
	ld de, $fc61                                     ; $6100: $11 $61 $fc
	inc b                                            ; $6103: $04
	ld h, e                                          ; $6104: $63
	pop de                                           ; $6105: $d1
	ld a, a                                          ; $6106: $7f
	jr jr_030_616c                                   ; $6107: $18 $63

	ei                                               ; $6109: $fb
	db $fd                                           ; $610a: $fd
	ld [hl], e                                       ; $610b: $73
	ld h, c                                          ; $610c: $61
	ei                                               ; $610d: $fb
	inc b                                            ; $610e: $04
	cp $ff                                           ; $610f: $fe $ff
	pop de                                           ; $6111: $d1
	jp nz, $030a                                     ; $6112: $c2 $0a $03

	add $0a                                          ; $6115: $c6 $0a
	inc bc                                           ; $6117: $03
	jp nz, $030a                                     ; $6118: $c2 $0a $03

	add $0a                                          ; $611b: $c6 $0a
	inc bc                                           ; $611d: $03
	jp nz, $030d                                     ; $611e: $c2 $0d $03

	add $0d                                          ; $6121: $c6 $0d
	inc bc                                           ; $6123: $03
	jp nz, $030d                                     ; $6124: $c2 $0d $03

	add $0d                                          ; $6127: $c6 $0d
	inc bc                                           ; $6129: $03
	jp nz, $030c                                     ; $612a: $c2 $0c $03

	add $0c                                          ; $612d: $c6 $0c
	inc bc                                           ; $612f: $03
	jp nz, $030c                                     ; $6130: $c2 $0c $03

	add $0c                                          ; $6133: $c6 $0c
	inc bc                                           ; $6135: $03
	jp nz, $0308                                     ; $6136: $c2 $08 $03

	add $08                                          ; $6139: $c6 $08
	inc bc                                           ; $613b: $03
	jp nz, $0308                                     ; $613c: $c2 $08 $03

	add $08                                          ; $613f: $c6 $08
	inc bc                                           ; $6141: $03
	jp nz, $030a                                     ; $6142: $c2 $0a $03

	add $0a                                          ; $6145: $c6 $0a
	inc bc                                           ; $6147: $03
	jp nz, $030a                                     ; $6148: $c2 $0a $03

	add $0a                                          ; $614b: $c6 $0a
	inc bc                                           ; $614d: $03
	jp nz, $030d                                     ; $614e: $c2 $0d $03

	add $0d                                          ; $6151: $c6 $0d
	inc bc                                           ; $6153: $03
	jp nz, $030d                                     ; $6154: $c2 $0d $03

	add $0d                                          ; $6157: $c6 $0d
	inc bc                                           ; $6159: $03

jr_030_615a:
	jp nz, $030c                                     ; $615a: $c2 $0c $03

	add $0c                                          ; $615d: $c6 $0c
	inc bc                                           ; $615f: $03
	jp nz, $030c                                     ; $6160: $c2 $0c $03

	add $0c                                          ; $6163: $c6 $0c
	inc bc                                           ; $6165: $03
	jp nz, $030f                                     ; $6166: $c2 $0f $03

	add $0f                                          ; $6169: $c6 $0f
	inc bc                                           ; $616b: $03

jr_030_616c:
	jp nz, $030f                                     ; $616c: $c2 $0f $03

	add $0f                                          ; $616f: $c6 $0f
	inc bc                                           ; $6171: $03
	db $fd                                           ; $6172: $fd
	ld a, a                                          ; $6173: $7f
	jr @+$65                                         ; $6174: $18 $63

	pop de                                           ; $6176: $d1
	jp nz, $060a                                     ; $6177: $c2 $0a $06

	call nz, $2ed2                                   ; $617a: $c4 $d2 $2e
	ld b, $d1                                        ; $617d: $06 $d1
	jp nz, $060a                                     ; $617f: $c2 $0a $06

	call nz, $31d3                                   ; $6182: $c4 $d3 $31
	inc c                                            ; $6185: $0c
	pop de                                           ; $6186: $d1
	jp nz, $060a                                     ; $6187: $c2 $0a $06

	call nz, $30d2                                   ; $618a: $c4 $d2 $30
	ld b, $d1                                        ; $618d: $06 $d1
	jp nz, $030a                                     ; $618f: $c2 $0a $03

	add $0a                                          ; $6192: $c6 $0a
	inc bc                                           ; $6194: $03
	jp nz, $060a                                     ; $6195: $c2 $0a $06

jr_030_6198:
	call nz, $2fd3                                   ; $6198: $c4 $d3 $2f
	ld b, $d1                                        ; $619b: $06 $d1
	jp nz, $060a                                     ; $619d: $c2 $0a $06

	jp nc, $2ec4                                     ; $61a0: $d2 $c4 $2e

	ld b, $7e                                        ; $61a3: $06 $7e
	nop                                              ; $61a5: $00
	and b                                            ; $61a6: $a0
	pop de                                           ; $61a7: $d1
	call nz, $06be                                   ; $61a8: $c4 $be $06
	ld l, $30                                        ; $61ab: $2e $30
	ld sp, $be35                                     ; $61ad: $31 $35 $be
	db $fd                                           ; $61b0: $fd
	ret nc                                           ; $61b1: $d0

	ld a, b                                          ; $61b2: $78
	cp $fb                                           ; $61b3: $fe $fb
	db $fd                                           ; $61b5: $fd
	jp nz, $fb61                                     ; $61b6: $c2 $61 $fb

	ld [$fdfc], sp                                   ; $61b9: $08 $fc $fd
	db $db                                           ; $61bc: $db
	ld h, c                                          ; $61bd: $61
	db $fc                                           ; $61be: $fc
	inc b                                            ; $61bf: $04
	cp $ff                                           ; $61c0: $fe $ff
	cpl                                              ; $61c2: $2f
	ld b, $30                                        ; $61c3: $06 $30
	ld b, $0f                                        ; $61c5: $06 $0f
	inc c                                            ; $61c7: $0c
	jr nc, jr_030_61d0                               ; $61c8: $30 $06

	cpl                                              ; $61ca: $2f
	ld b, $30                                        ; $61cb: $06 $30
	ld b, $0f                                        ; $61cd: $06 $0f
	inc c                                            ; $61cf: $0c

jr_030_61d0:
	cp [hl]                                          ; $61d0: $be
	ld b, $30                                        ; $61d1: $06 $30
	cpl                                              ; $61d3: $2f
	jr nc, @+$31                                     ; $61d4: $30 $2f

	jr nc, jr_030_6207                               ; $61d6: $30 $2f

	jr nc, jr_030_6198                               ; $61d8: $30 $be

	db $fd                                           ; $61da: $fd
	jr nz, jr_030_61e9                               ; $61db: $20 $0c

	jr nz, @+$0e                                     ; $61dd: $20 $0c

	nop                                              ; $61df: $00
	ld b, $20                                        ; $61e0: $06 $20
	inc c                                            ; $61e2: $0c
	jr nz, @+$08                                     ; $61e3: $20 $06

	jr nz, @+$0e                                     ; $61e5: $20 $0c

	jr nz, jr_030_61f5                               ; $61e7: $20 $0c

jr_030_61e9:
	inc d                                            ; $61e9: $14
	jr jr_030_61e9                                   ; $61ea: $18 $fd

	or h                                             ; $61ec: $b4
	ld c, e                                          ; $61ed: $4b
	pop af                                           ; $61ee: $f1
	ld bc, $1800                                     ; $61ef: $01 $00 $18
	cp $fb                                           ; $61f2: $fe $fb
	db $fd                                           ; $61f4: $fd

jr_030_61f5:
	ei                                               ; $61f5: $fb
	ld h, c                                          ; $61f6: $61
	ei                                               ; $61f7: $fb
	inc b                                            ; $61f8: $04
	cp $ff                                           ; $61f9: $fe $ff
	jp nc, $35cc                                     ; $61fb: $d2 $cc $35

	inc bc                                           ; $61fe: $03
	db $d3                                           ; $61ff: $d3
	add $35                                          ; $6200: $c6 $35
	inc bc                                           ; $6202: $03
	jp nc, $30cc                                     ; $6203: $d2 $cc $30

	inc bc                                           ; $6206: $03

jr_030_6207:
	db $d3                                           ; $6207: $d3
	add $35                                          ; $6208: $c6 $35
	inc bc                                           ; $620a: $03
	jp nc, $33cc                                     ; $620b: $d2 $cc $33

	inc bc                                           ; $620e: $03
	db $d3                                           ; $620f: $d3
	add $30                                          ; $6210: $c6 $30
	inc bc                                           ; $6212: $03
	jp nc, $35cc                                     ; $6213: $d2 $cc $35

	inc bc                                           ; $6216: $03
	db $d3                                           ; $6217: $d3
	add $33                                          ; $6218: $c6 $33
	inc bc                                           ; $621a: $03
	jp nz, $0633                                     ; $621b: $c2 $33 $06

	jp nc, $38ca                                     ; $621e: $d2 $ca $38

	ld b, $d3                                        ; $6221: $06 $d3
	push bc                                          ; $6223: $c5
	dec [hl]                                         ; $6224: $35
	ld b, $d2                                        ; $6225: $06 $d2
	call z, $0335                                    ; $6227: $cc $35 $03
	db $d3                                           ; $622a: $d3
	add $38                                          ; $622b: $c6 $38
	inc bc                                           ; $622d: $03
	jp nz, $0638                                     ; $622e: $c2 $38 $06

	jp nc, $38ca                                     ; $6231: $d2 $ca $38

	ld b, $d3                                        ; $6234: $06 $d3
	push bc                                          ; $6236: $c5
	dec [hl]                                         ; $6237: $35
	ld b, $d2                                        ; $6238: $06 $d2
	call z, $0335                                    ; $623a: $cc $35 $03
	db $d3                                           ; $623d: $d3
	push bc                                          ; $623e: $c5
	jr c, jr_030_6244                                ; $623f: $38 $03

	jp nc, $33cc                                     ; $6241: $d2 $cc $33

jr_030_6244:
	ld b, $d3                                        ; $6244: $06 $d3
	add $35                                          ; $6246: $c6 $35
	ld b, $d2                                        ; $6248: $06 $d2
	call z, $0630                                    ; $624a: $cc $30 $06
	db $d3                                           ; $624d: $d3
	add $33                                          ; $624e: $c6 $33
	ld b, $d3                                        ; $6250: $06 $d3
	call z, $0335                                    ; $6252: $cc $35 $03
	jp nc, $30c6                                     ; $6255: $d2 $c6 $30

	inc bc                                           ; $6258: $03
	db $d3                                           ; $6259: $d3
	call z, $0330                                    ; $625a: $cc $30 $03
	jp nc, $35c6                                     ; $625d: $d2 $c6 $35

	inc bc                                           ; $6260: $03
	db $d3                                           ; $6261: $d3
	call z, $0333                                    ; $6262: $cc $33 $03
	jp nc, $30c6                                     ; $6265: $d2 $c6 $30

	inc bc                                           ; $6268: $03
	db $d3                                           ; $6269: $d3
	call z, $0335                                    ; $626a: $cc $35 $03
	jp nc, $33c6                                     ; $626d: $d2 $c6 $33

	inc bc                                           ; $6270: $03
	jp nz, $0633                                     ; $6271: $c2 $33 $06

	db $d3                                           ; $6274: $d3
	jp z, $0638                                      ; $6275: $ca $38 $06

	jp nc, $35c5                                     ; $6278: $d2 $c5 $35

	ld b, $d3                                        ; $627b: $06 $d3
	jp z, $0335                                      ; $627d: $ca $35 $03

	jp nc, $38c5                                     ; $6280: $d2 $c5 $38

	inc bc                                           ; $6283: $03
	pop bc                                           ; $6284: $c1
	jr c, jr_030_628d                                ; $6285: $38 $06

	db $d3                                           ; $6287: $d3
	ret z                                            ; $6288: $c8

	ld a, [hl-]                                      ; $6289: $3a
	ld b, $d2                                        ; $628a: $06 $d2
	push bc                                          ; $628c: $c5

jr_030_628d:
	dec [hl]                                         ; $628d: $35
	ld b, $d3                                        ; $628e: $06 $d3
	srl b                                            ; $6290: $cb $38
	inc bc                                           ; $6292: $03
	jp nc, $3ac5                                     ; $6293: $d2 $c5 $3a

	inc bc                                           ; $6296: $03
	db $d3                                           ; $6297: $d3
	swap l                                           ; $6298: $cb $35
	ld b, $d2                                        ; $629a: $06 $d2
	push bc                                          ; $629c: $c5
	jr c, @+$08                                      ; $629d: $38 $06

	db $d3                                           ; $629f: $d3
	call z, $0633                                    ; $62a0: $cc $33 $06
	jp nc, $35c6                                     ; $62a3: $d2 $c6 $35

	ld b, $fd                                        ; $62a6: $06 $fd
	or h                                             ; $62a8: $b4
	ld c, e                                          ; $62a9: $4b
	pop bc                                           ; $62aa: $c1
	inc bc                                           ; $62ab: $03
	ld a, [hl]                                       ; $62ac: $7e
	dec e                                            ; $62ad: $1d
	inc b                                            ; $62ae: $04
	xor c                                            ; $62af: $a9
	jr nz, @+$0a                                     ; $62b0: $20 $08

	ld a, [hl]                                       ; $62b2: $7e
	dec e                                            ; $62b3: $1d
	nop                                              ; $62b4: $00
	xor c                                            ; $62b5: $a9
	call nz, $0420                                   ; $62b6: $c4 $20 $04
	call z, $1d7e                                    ; $62b9: $cc $7e $1d
	inc b                                            ; $62bc: $04
	xor c                                            ; $62bd: $a9
	dec e                                            ; $62be: $1d
	ld [$7ec4], sp                                   ; $62bf: $08 $c4 $7e
	dec e                                            ; $62c2: $1d
	nop                                              ; $62c3: $00
	xor c                                            ; $62c4: $a9
	jr nz, jr_030_62cb                               ; $62c5: $20 $04

	cp $7e                                           ; $62c7: $fe $7e
	dec e                                            ; $62c9: $1d
	inc c                                            ; $62ca: $0c

jr_030_62cb:
	xor c                                            ; $62cb: $a9
	jp z, $1222                                      ; $62cc: $ca $22 $12

	ld a, [hl]                                       ; $62cf: $7e
	dec e                                            ; $62d0: $1d
	nop                                              ; $62d1: $00
	xor c                                            ; $62d2: $a9
	rst JumpTable                                          ; $62d3: $c7

jr_030_62d4:
	ld [hl+], a                                      ; $62d4: $22
	ld b, $7e                                        ; $62d5: $06 $7e
	dec e                                            ; $62d7: $1d
	inc b                                            ; $62d8: $04
	xor d                                            ; $62d9: $aa
	sra c                                            ; $62da: $cb $29
	ld [de], a                                       ; $62dc: $12
	ld a, [hl]                                       ; $62dd: $7e
	dec e                                            ; $62de: $1d
	nop                                              ; $62df: $00
	xor c                                            ; $62e0: $a9
	call nz, $0629                                   ; $62e1: $c4 $29 $06
	ld a, [hl]                                       ; $62e4: $7e
	dec e                                            ; $62e5: $1d
	inc b                                            ; $62e6: $04
	xor d                                            ; $62e7: $aa
	ret                                              ; $62e8: $c9


	daa                                              ; $62e9: $27
	jr @+$80                                         ; $62ea: $18 $7e

	dec e                                            ; $62ec: $1d
	nop                                              ; $62ed: $00
	xor c                                            ; $62ee: $a9
	call nz, $0c27                                   ; $62ef: $c4 $27 $0c
	ld a, [hl]                                       ; $62f2: $7e
	dec e                                            ; $62f3: $1d
	inc b                                            ; $62f4: $04
	xor c                                            ; $62f5: $a9
	ret                                              ; $62f6: $c9


	inc l                                            ; $62f7: $2c
	inc c                                            ; $62f8: $0c
	ld a, [hl]                                       ; $62f9: $7e
	dec e                                            ; $62fa: $1d
	inc h                                            ; $62fb: $24
	xor e                                            ; $62fc: $ab
	sra c                                            ; $62fd: $cb $29
	jr nc, @+$80                                     ; $62ff: $30 $7e

	dec e                                            ; $6301: $1d
	nop                                              ; $6302: $00
	xor e                                            ; $6303: $ab
	rst JumpTable                                          ; $6304: $c7
	add hl, hl                                       ; $6305: $29
	jr jr_030_62d4                                   ; $6306: $18 $cc

	ld a, [hl]                                       ; $6308: $7e
	dec e                                            ; $6309: $1d
	inc b                                            ; $630a: $04
	xor c                                            ; $630b: $a9
	jr nz, @+$0a                                     ; $630c: $20 $08

	ld a, [hl]                                       ; $630e: $7e
	dec e                                            ; $630f: $1d
	nop                                              ; $6310: $00
	xor c                                            ; $6311: $a9
	call nz, $0429                                   ; $6312: $c4 $29 $04
	call z, $1d7e                                    ; $6315: $cc $7e $1d
	inc b                                            ; $6318: $04
	xor c                                            ; $6319: $a9
	dec e                                            ; $631a: $1d
	ld [$7ec4], sp                                   ; $631b: $08 $c4 $7e
	dec e                                            ; $631e: $1d
	nop                                              ; $631f: $00
	xor c                                            ; $6320: $a9
	jr nz, jr_030_6327                               ; $6321: $20 $04

	ld a, [hl]                                       ; $6323: $7e
	dec e                                            ; $6324: $1d
	inc c                                            ; $6325: $0c
	xor c                                            ; $6326: $a9

jr_030_6327:
	jp z, $1222                                      ; $6327: $ca $22 $12

	ld a, [hl]                                       ; $632a: $7e
	dec e                                            ; $632b: $1d
	nop                                              ; $632c: $00
	xor c                                            ; $632d: $a9
	call nz, $0622                                   ; $632e: $c4 $22 $06
	ld a, [hl]                                       ; $6331: $7e
	dec e                                            ; $6332: $1d
	inc c                                            ; $6333: $0c
	xor d                                            ; $6334: $aa
	jp z, $1227                                      ; $6335: $ca $27 $12

	ld a, [hl]                                       ; $6338: $7e
	dec e                                            ; $6339: $1d
	nop                                              ; $633a: $00
	xor c                                            ; $633b: $a9
	call nz, $0627                                   ; $633c: $c4 $27 $06
	ld a, [hl]                                       ; $633f: $7e
	dec e                                            ; $6340: $1d
	inc b                                            ; $6341: $04
	xor c                                            ; $6342: $a9
	call z, $1224                                    ; $6343: $cc $24 $12
	ld a, [hl]                                       ; $6346: $7e
	dec e                                            ; $6347: $1d
	nop                                              ; $6348: $00
	xor c                                            ; $6349: $a9
	ret z                                            ; $634a: $c8

	inc h                                            ; $634b: $24
	ld b, $7e                                        ; $634c: $06 $7e
	dec e                                            ; $634e: $1d
	inc b                                            ; $634f: $04
	xor d                                            ; $6350: $aa
	ret z                                            ; $6351: $c8

	daa                                              ; $6352: $27
	ld [de], a                                       ; $6353: $12
	ld a, [hl]                                       ; $6354: $7e
	dec e                                            ; $6355: $1d
	nop                                              ; $6356: $00
	xor c                                            ; $6357: $a9
	call nz, $0624                                   ; $6358: $c4 $24 $06
	ld a, [hl]                                       ; $635b: $7e
	dec e                                            ; $635c: $1d
	inc h                                            ; $635d: $24
	xor e                                            ; $635e: $ab
	sla [hl]                                         ; $635f: $cb $26
	jr nc, jr_030_63e1                               ; $6361: $30 $7e

	dec e                                            ; $6363: $1d
	nop                                              ; $6364: $00
	xor e                                            ; $6365: $ab
	rst JumpTable                                          ; $6366: $c7
	ld h, $18                                        ; $6367: $26 $18
	call z, $1d7e                                    ; $6369: $cc $7e $1d
	inc b                                            ; $636c: $04
	xor c                                            ; $636d: $a9
	jr nz, @+$0a                                     ; $636e: $20 $08

	ld a, [hl]                                       ; $6370: $7e
	dec e                                            ; $6371: $1d
	nop                                              ; $6372: $00
	xor c                                            ; $6373: $a9
	call nz, $0426                                   ; $6374: $c4 $26 $04
	call z, $1d7e                                    ; $6377: $cc $7e $1d
	inc b                                            ; $637a: $04
	xor c                                            ; $637b: $a9
	dec e                                            ; $637c: $1d
	ld [$7ec4], sp                                   ; $637d: $08 $c4 $7e
	dec e                                            ; $6380: $1d

Jump_030_6381:
	nop                                              ; $6381: $00
	xor c                                            ; $6382: $a9
	jr nz, jr_030_6389                               ; $6383: $20 $04

	ld a, [hl]                                       ; $6385: $7e
	dec e                                            ; $6386: $1d
	inc c                                            ; $6387: $0c
	xor c                                            ; $6388: $a9

jr_030_6389:
	jp z, $1222                                      ; $6389: $ca $22 $12

	ld a, [hl]                                       ; $638c: $7e
	dec e                                            ; $638d: $1d
	nop                                              ; $638e: $00
	xor c                                            ; $638f: $a9

Jump_030_6390:
	call nz, $0622                                   ; $6390: $c4 $22 $06
	ld a, [hl]                                       ; $6393: $7e
	dec e                                            ; $6394: $1d
	inc b                                            ; $6395: $04
	xor d                                            ; $6396: $aa
	sra c                                            ; $6397: $cb $29
	ld [de], a                                       ; $6399: $12
	ld a, [hl]                                       ; $639a: $7e
	dec e                                            ; $639b: $1d
	nop                                              ; $639c: $00
	xor c                                            ; $639d: $a9
	call nz, $0629                                   ; $639e: $c4 $29 $06
	ld a, [hl]                                       ; $63a1: $7e
	dec e                                            ; $63a2: $1d
	inc c                                            ; $63a3: $0c
	xor d                                            ; $63a4: $aa
	ret                                              ; $63a5: $c9


	inc l                                            ; $63a6: $2c
	jr @+$80                                         ; $63a7: $18 $7e

	dec e                                            ; $63a9: $1d
	nop                                              ; $63aa: $00
	xor c                                            ; $63ab: $a9
	call nz, $0c2c                                   ; $63ac: $c4 $2c $0c
	ld a, [hl]                                       ; $63af: $7e
	dec e                                            ; $63b0: $1d
	inc b                                            ; $63b1: $04
	xor c                                            ; $63b2: $a9
	ret                                              ; $63b3: $c9


	daa                                              ; $63b4: $27
	inc c                                            ; $63b5: $0c
	ld a, [hl]                                       ; $63b6: $7e
	dec e                                            ; $63b7: $1d
	inc h                                            ; $63b8: $24
	xor e                                            ; $63b9: $ab
	sra c                                            ; $63ba: $cb $29
	jr nc, @+$80                                     ; $63bc: $30 $7e

	dec e                                            ; $63be: $1d
	nop                                              ; $63bf: $00
	xor e                                            ; $63c0: $ab
	add $29                                          ; $63c1: $c6 $29
	jr @-$32                                         ; $63c3: $18 $cc

	ld a, [hl]                                       ; $63c5: $7e
	dec e                                            ; $63c6: $1d
	inc b                                            ; $63c7: $04
	xor c                                            ; $63c8: $a9
	jr nz, @+$0a                                     ; $63c9: $20 $08

	ld a, [hl]                                       ; $63cb: $7e
	dec e                                            ; $63cc: $1d
	nop                                              ; $63cd: $00
	xor c                                            ; $63ce: $a9
	call nz, $0429                                   ; $63cf: $c4 $29 $04
	call z, $1d7e                                    ; $63d2: $cc $7e $1d
	inc b                                            ; $63d5: $04
	xor c                                            ; $63d6: $a9
	dec e                                            ; $63d7: $1d
	ld [$7ec4], sp                                   ; $63d8: $08 $c4 $7e
	dec e                                            ; $63db: $1d
	nop                                              ; $63dc: $00
	xor c                                            ; $63dd: $a9
	jr nz, jr_030_63e4                               ; $63de: $20 $04

	ld a, [hl]                                       ; $63e0: $7e

jr_030_63e1:
	dec e                                            ; $63e1: $1d
	inc c                                            ; $63e2: $0c
	xor c                                            ; $63e3: $a9

jr_030_63e4:
	jp z, $1222                                      ; $63e4: $ca $22 $12

	ld a, [hl]                                       ; $63e7: $7e
	dec e                                            ; $63e8: $1d
	nop                                              ; $63e9: $00
	xor c                                            ; $63ea: $a9
	call nz, $0622                                   ; $63eb: $c4 $22 $06
	ld a, [hl]                                       ; $63ee: $7e
	dec e                                            ; $63ef: $1d
	inc c                                            ; $63f0: $0c
	xor c                                            ; $63f1: $a9
	sra c                                            ; $63f2: $cb $29
	ld [de], a                                       ; $63f4: $12
	ld a, [hl]                                       ; $63f5: $7e
	dec e                                            ; $63f6: $1d
	nop                                              ; $63f7: $00
	xor c                                            ; $63f8: $a9
	call nz, $0629                                   ; $63f9: $c4 $29 $06
	ld a, [hl]                                       ; $63fc: $7e
	dec e                                            ; $63fd: $1d
	inc c                                            ; $63fe: $0c
	xor d                                            ; $63ff: $aa
	ret                                              ; $6400: $c9


	ld l, $12                                        ; $6401: $2e $12
	ld a, [hl]                                       ; $6403: $7e
	dec e                                            ; $6404: $1d
	nop                                              ; $6405: $00
	xor c                                            ; $6406: $a9
	call nz, $062e                                   ; $6407: $c4 $2e $06
	ld a, [hl]                                       ; $640a: $7e
	dec e                                            ; $640b: $1d
	inc c                                            ; $640c: $0c
	xor d                                            ; $640d: $aa
	ret                                              ; $640e: $c9


	inc l                                            ; $640f: $2c
	ld [de], a                                       ; $6410: $12
	ld a, [hl]                                       ; $6411: $7e
	dec e                                            ; $6412: $1d
	nop                                              ; $6413: $00
	xor c                                            ; $6414: $a9
	call nz, $062c                                   ; $6415: $c4 $2c $06
	ld a, [hl]                                       ; $6418: $7e
	dec e                                            ; $6419: $1d
	inc h                                            ; $641a: $24
	xor d                                            ; $641b: $aa
	ret                                              ; $641c: $c9


	ld l, $30                                        ; $641d: $2e $30
	ld a, [hl]                                       ; $641f: $7e
	dec e                                            ; $6420: $1d
	nop                                              ; $6421: $00
	xor c                                            ; $6422: $a9
	rst JumpTable                                          ; $6423: $c7
	ld l, $18                                        ; $6424: $2e $18
	call z, $1d7e                                    ; $6426: $cc $7e $1d
	inc b                                            ; $6429: $04
	xor c                                            ; $642a: $a9
	jr nz, @+$0a                                     ; $642b: $20 $08

	ld a, [hl]                                       ; $642d: $7e
	dec e                                            ; $642e: $1d
	nop                                              ; $642f: $00
	xor c                                            ; $6430: $a9
	call nz, $042e                                   ; $6431: $c4 $2e $04
	call z, $1d7e                                    ; $6434: $cc $7e $1d
	inc b                                            ; $6437: $04
	xor c                                            ; $6438: $a9
	dec e                                            ; $6439: $1d
	ld [$7ec4], sp                                   ; $643a: $08 $c4 $7e
	dec e                                            ; $643d: $1d
	nop                                              ; $643e: $00
	xor c                                            ; $643f: $a9
	jr nz, jr_030_6446                               ; $6440: $20 $04

	cp $ff                                           ; $6442: $fe $ff
	or h                                             ; $6444: $b4
	ld c, e                                          ; $6445: $4b

jr_030_6446:
	ld hl, $0018                                     ; $6446: $21 $18 $00

jr_030_6449:
	jr jr_030_6449                                   ; $6449: $18 $fe

	ei                                               ; $644b: $fb
	db $fd                                           ; $644c: $fd
	ld d, e                                          ; $644d: $53
	ld h, h                                          ; $644e: $64
	ei                                               ; $644f: $fb
	ld [bc], a                                       ; $6450: $02
	cp $ff                                           ; $6451: $fe $ff
	ld b, $24                                        ; $6453: $06 $24
	pop de                                           ; $6455: $d1
	call nz, $0606                                   ; $6456: $c4 $06 $06
	add $06                                          ; $6459: $c6 $06
	ld b, $c2                                        ; $645b: $06 $c2
	ld [$c412], sp                                   ; $645d: $08 $12 $c4
	ld [$c206], sp                                   ; $6460: $08 $06 $c2
	dec b                                            ; $6463: $05
	ld [de], a                                       ; $6464: $12
	call nz, $0605                                   ; $6465: $c4 $05 $06
	jp nz, $120a                                     ; $6468: $c2 $0a $12

	call nz, $060a                                   ; $646b: $c4 $0a $06
	jp nz, $06be                                     ; $646e: $c2 $be $06

	ld de, $1114                                     ; $6471: $11 $14 $11
	inc d                                            ; $6474: $14
	cp [hl]                                          ; $6475: $be
	ld a, a                                          ; $6476: $7f
	ld e, $7e                                        ; $6477: $1e $7e
	dec e                                            ; $6479: $1d
	ld b, $a2                                        ; $647a: $06 $a2
	ld d, $12                                        ; $647c: $16 $12
	ld a, [hl]                                       ; $647e: $7e
	dec e                                            ; $647f: $1d
	nop                                              ; $6480: $00
	and d                                            ; $6481: $a2
	add $16                                          ; $6482: $c6 $16
	ld b, $7f                                        ; $6484: $06 $7f
	jr @+$80                                         ; $6486: $18 $7e

	nop                                              ; $6488: $00
	and b                                            ; $6489: $a0
	jp nz, $0c0a                                     ; $648a: $c2 $0a $0c

	ld [$030c], sp                                   ; $648d: $08 $0c $03

jr_030_6490:
	inc h                                            ; $6490: $24
	call nz, $0603                                   ; $6491: $c4 $03 $06
	add $03                                          ; $6494: $c6 $03
	ld b, $c2                                        ; $6496: $06 $c2
	dec b                                            ; $6498: $05
	ld [de], a                                       ; $6499: $12
	call nz, $0605                                   ; $649a: $c4 $05 $06
	jp nz, $1208                                     ; $649d: $c2 $08 $12

	call nz, $0608                                   ; $64a0: $c4 $08 $06
	jp nz, $0cbe                                     ; $64a3: $c2 $be $0c

jr_030_64a6:
	ld a, [bc]                                       ; $64a6: $0a
	rrca                                             ; $64a7: $0f
	ld de, $be0f                                     ; $64a8: $11 $0f $be
	ld a, a                                          ; $64ab: $7f
	inc e                                            ; $64ac: $1c
	ld a, [hl]                                       ; $64ad: $7e
	dec e                                            ; $64ae: $1d
	ld b, $a3                                        ; $64af: $06 $a3
	ld c, $12                                        ; $64b1: $0e $12
	ld a, [hl]                                       ; $64b3: $7e
	dec e                                            ; $64b4: $1d
	nop                                              ; $64b5: $00
	and e                                            ; $64b6: $a3
	add $0e                                          ; $64b7: $c6 $0e
	ld b, $7f                                        ; $64b9: $06 $7f
	jr @+$80                                         ; $64bb: $18 $7e

	nop                                              ; $64bd: $00

jr_030_64be:
	and b                                            ; $64be: $a0
	jp nz, $0c0a                                     ; $64bf: $c2 $0a $0c

	ld [$fd0c], sp                                   ; $64c2: $08 $0c $fd
	ret nc                                           ; $64c5: $d0

	ld c, e                                          ; $64c6: $4b
	cp [hl]                                          ; $64c7: $be
	inc bc                                           ; $64c8: $03
	inc hl                                           ; $64c9: $23
	inc hl                                           ; $64ca: $23
	ld [hl+], a                                      ; $64cb: $22
	ld [hl+], a                                      ; $64cc: $22
	ld hl, $2021                                     ; $64cd: $21 $21 $20
	jr nz, jr_030_6490                               ; $64d0: $20 $be

	cp $fb                                           ; $64d2: $fe $fb
	db $fd                                           ; $64d4: $fd
	inc b                                            ; $64d5: $04
	ld h, l                                          ; $64d6: $65
	rra                                              ; $64d7: $1f
	inc c                                            ; $64d8: $0c
	rra                                              ; $64d9: $1f
	inc c                                            ; $64da: $0c
	jr nz, jr_030_64f5                               ; $64db: $20 $18

	rra                                              ; $64dd: $1f
	inc c                                            ; $64de: $0c
	rra                                              ; $64df: $1f
	inc c                                            ; $64e0: $0c
	cp [hl]                                          ; $64e1: $be
	ld b, $20                                        ; $64e2: $06 $20
	jr nz, jr_030_6505                               ; $64e4: $20 $1f

	jr nz, jr_030_64a6                               ; $64e6: $20 $be

	db $fd                                           ; $64e8: $fd
	inc b                                            ; $64e9: $04
	ld h, l                                          ; $64ea: $65
	rra                                              ; $64eb: $1f
	inc c                                            ; $64ec: $0c
	rra                                              ; $64ed: $1f
	inc c                                            ; $64ee: $0c
	jr nz, jr_030_6509                               ; $64ef: $20 $18

	rra                                              ; $64f1: $1f
	inc c                                            ; $64f2: $0c
	rra                                              ; $64f3: $1f
	inc c                                            ; $64f4: $0c

jr_030_64f5:
	cp [hl]                                          ; $64f5: $be
	inc bc                                           ; $64f6: $03
	inc hl                                           ; $64f7: $23
	inc hl                                           ; $64f8: $23
	ld [hl+], a                                      ; $64f9: $22
	ld [hl+], a                                      ; $64fa: $22
	ld hl, $2021                                     ; $64fb: $21 $21 $20
	jr nz, jr_030_64be                               ; $64fe: $20 $be

	ei                                               ; $6500: $fb
	ld [bc], a                                       ; $6501: $02
	cp $ff                                           ; $6502: $fe $ff
	rrca                                             ; $6504: $0f

jr_030_6505:
	jr @+$22                                         ; $6505: $18 $20

	jr jr_030_6528                                   ; $6507: $18 $1f

jr_030_6509:
	inc c                                            ; $6509: $0c
	rra                                              ; $650a: $1f
	inc c                                            ; $650b: $0c
	jr nz, @+$1a                                     ; $650c: $20 $18

	db $fd                                           ; $650e: $fd
	ret nc                                           ; $650f: $d0

	ld e, d                                          ; $6510: $5a
	cp $d1                                           ; $6511: $fe $d1
	jp z, $2690                                      ; $6513: $ca $90 $26

	ld b, $c3                                        ; $6516: $06 $c3
	ld h, $0c                                        ; $6518: $26 $0c
	jp z, $017e                                      ; $651a: $ca $7e $01

	nop                                              ; $651d: $00
	and c                                            ; $651e: $a1
	ld h, $1e                                        ; $651f: $26 $1e
	or l                                             ; $6521: $b5
	ld d, c                                          ; $6522: $51
	ld [bc], a                                       ; $6523: $02
	rst $38                                          ; $6524: $ff
	ld bc, $097e                                     ; $6525: $01 $7e $09

jr_030_6528:
	nop                                              ; $6528: $00
	xor c                                            ; $6529: $a9
	ld b, c                                          ; $652a: $41
	ld b, $b1                                        ; $652b: $06 $b1
	ld sp, $0000                                     ; $652d: $31 $00 $00
	ld b, c                                          ; $6530: $41
	ld b, $b5                                        ; $6531: $06 $b5
	ld h, c                                          ; $6533: $61
	ld bc, $01ff                                     ; $6534: $01 $ff $01
	ld b, c                                          ; $6537: $41
	ld b, $b1                                        ; $6538: $06 $b1
	ld sp, $0000                                     ; $653a: $31 $00 $00
	ld b, c                                          ; $653d: $41
	ld b, $b5                                        ; $653e: $06 $b5
	ld h, c                                          ; $6540: $61
	ld [bc], a                                       ; $6541: $02
	rst $38                                          ; $6542: $ff
	ld bc, $0638                                     ; $6543: $01 $38 $06
	or c                                             ; $6546: $b1
	ld sp, $0000                                     ; $6547: $31 $00 $00
	jr c, @+$08                                      ; $654a: $38 $06

	or l                                             ; $654c: $b5
	ld [hl], c                                       ; $654d: $71
	ld bc, $01ff                                     ; $654e: $01 $ff $01
	jr c, jr_030_6559                                ; $6551: $38 $06

	or c                                             ; $6553: $b1
	ld sp, $0000                                     ; $6554: $31 $00 $00
	jr c, jr_030_655f                                ; $6557: $38 $06

jr_030_6559:
	sub b                                            ; $6559: $90
	ret                                              ; $655a: $c9


	inc hl                                           ; $655b: $23
	ld b, $c3                                        ; $655c: $06 $c3
	inc hl                                           ; $655e: $23

jr_030_655f:
	inc c                                            ; $655f: $0c
	ret                                              ; $6560: $c9


	ld a, [hl]                                       ; $6561: $7e
	ld bc, $a100                                     ; $6562: $01 $00 $a1
	inc hl                                           ; $6565: $23
	ld e, $b5                                        ; $6566: $1e $b5
	ld [hl], c                                       ; $6568: $71
	ld [bc], a                                       ; $6569: $02
	rst $38                                          ; $656a: $ff
	ld bc, $097e                                     ; $656b: $01 $7e $09
	nop                                              ; $656e: $00
	and c                                            ; $656f: $a1
	jr z, jr_030_6578                                ; $6570: $28 $06

	or c                                             ; $6572: $b1
	ld d, c                                          ; $6573: $51
	nop                                              ; $6574: $00
	nop                                              ; $6575: $00
	jr z, @+$08                                      ; $6576: $28 $06

jr_030_6578:
	or l                                             ; $6578: $b5
	add c                                            ; $6579: $81
	ld bc, $01ff                                     ; $657a: $01 $ff $01
	jr z, jr_030_6585                                ; $657d: $28 $06

	or c                                             ; $657f: $b1
	ld d, c                                          ; $6580: $51
	nop                                              ; $6581: $00
	nop                                              ; $6582: $00
	jr z, @+$08                                      ; $6583: $28 $06

jr_030_6585:
	or l                                             ; $6585: $b5
	ld h, c                                          ; $6586: $61
	ld [bc], a                                       ; $6587: $02
	rst $38                                          ; $6588: $ff
	ld bc, $097e                                     ; $6589: $01 $7e $09
	nop                                              ; $658c: $00
	and b                                            ; $658d: $a0
	cpl                                              ; $658e: $2f
	ld b, $b1                                        ; $658f: $06 $b1
	ld sp, $0000                                     ; $6591: $31 $00 $00
	cpl                                              ; $6594: $2f
	ld b, $b5                                        ; $6595: $06 $b5
	ld [hl], c                                       ; $6597: $71
	ld bc, $01ff                                     ; $6598: $01 $ff $01
	cpl                                              ; $659b: $2f
	ld b, $b1                                        ; $659c: $06 $b1
	ld sp, $0000                                     ; $659e: $31 $00 $00
	cpl                                              ; $65a1: $2f
	ld b, $fe                                        ; $65a2: $06 $fe
	rst $38                                          ; $65a4: $ff
	ret nc                                           ; $65a5: $d0

	ld e, d                                          ; $65a6: $5a
	cp $90                                           ; $65a7: $fe $90
	ret z                                            ; $65a9: $c8

	inc [hl]                                         ; $65aa: $34
	ld b, $c3                                        ; $65ab: $06 $c3
	inc [hl]                                         ; $65ad: $34
	inc c                                            ; $65ae: $0c
	rst JumpTable                                          ; $65af: $c7
	ld a, [hl]                                       ; $65b0: $7e
	ld bc, $a100                                     ; $65b1: $01 $00 $a1
	inc [hl]                                         ; $65b4: $34
	ld e, $b5                                        ; $65b5: $1e $b5
	pop hl                                           ; $65b7: $e1
	nop                                              ; $65b8: $00
	inc c                                            ; $65b9: $0c
	ld bc, $007e                                     ; $65ba: $01 $7e $00
	ld a, l                                          ; $65bd: $7d
	ld [bc], a                                       ; $65be: $02
	db $10                                           ; $65bf: $10
	ld b, $10                                        ; $65c0: $06 $10
	ld b, $cd                                        ; $65c2: $06 $cd
	dec d                                            ; $65c4: $15
	ld b, $15                                        ; $65c5: $06 $15
	ld b, $7e                                        ; $65c7: $06 $7e
	dec b                                            ; $65c9: $05
	nop                                              ; $65ca: $00
	and d                                            ; $65cb: $a2
	add hl, de                                       ; $65cc: $19
	ld b, $7e                                        ; $65cd: $06 $7e
	nop                                              ; $65cf: $00
	rla                                              ; $65d0: $17
	ld b, $15                                        ; $65d1: $06 $15
	ld b, $10                                        ; $65d3: $06 $10
	ld b, $7d                                        ; $65d5: $06 $7d
	nop                                              ; $65d7: $00
	sub [hl]                                         ; $65d8: $96
	nop                                              ; $65d9: $00
	nop                                              ; $65da: $00
	cp $ff                                           ; $65db: $fe $ff
	ret nc                                           ; $65dd: $d0

	ld e, d                                          ; $65de: $5a
	cp $c2                                           ; $65df: $fe $c2
	add l                                            ; $65e1: $85
	db $10                                           ; $65e2: $10
	ld a, [bc]                                       ; $65e3: $0a
	call nz, $0210                                   ; $65e4: $c4 $10 $02
	jp nz, $0a14                                     ; $65e7: $c2 $14 $0a

	call nz, $0214                                   ; $65ea: $c4 $14 $02
	jp nz, $0a15                                     ; $65ed: $c2 $15 $0a

	call nz, $0215                                   ; $65f0: $c4 $15 $02
	jp nz, $0a17                                     ; $65f3: $c2 $17 $0a

	call nz, $0217                                   ; $65f6: $c4 $17 $02
	jp nz, $0a15                                     ; $65f9: $c2 $15 $0a

	call nz, $0215                                   ; $65fc: $c4 $15 $02
	add d                                            ; $65ff: $82
	jp nz, $0a1c                                     ; $6600: $c2 $1c $0a

	call nz, $021c                                   ; $6603: $c4 $1c $02
	add l                                            ; $6606: $85
	jp nz, $0a19                                     ; $6607: $c2 $19 $0a

	call nz, $0219                                   ; $660a: $c4 $19 $02
	jp nz, $0a15                                     ; $660d: $c2 $15 $0a

	call nz, $0215                                   ; $6610: $c4 $15 $02
	jp nz, $0414                                     ; $6613: $c2 $14 $04

	call nz, $0414                                   ; $6616: $c4 $14 $04
	jp nz, $0414                                     ; $6619: $c2 $14 $04

	jp nz, $0a10                                     ; $661c: $c2 $10 $0a

	call nz, $0210                                   ; $661f: $c4 $10 $02
	jp nz, $0a12                                     ; $6622: $c2 $12 $0a

	call nz, $0212                                   ; $6625: $c4 $12 $02
	jp nz, $0a14                                     ; $6628: $c2 $14 $0a

	call nz, $0214                                   ; $662b: $c4 $14 $02
	jp nz, $0a15                                     ; $662e: $c2 $15 $0a

	call nz, $0215                                   ; $6631: $c4 $15 $02
	jp nz, $0a1c                                     ; $6634: $c2 $1c $0a

	call nz, $021c                                   ; $6637: $c4 $1c $02
	jp nz, $0a19                                     ; $663a: $c2 $19 $0a

	call nz, $0219                                   ; $663d: $c4 $19 $02
	jp nz, $0a15                                     ; $6640: $c2 $15 $0a

	call nz, $0215                                   ; $6643: $c4 $15 $02
	cp $ff                                           ; $6646: $fe $ff
	ret nc                                           ; $6648: $d0

	ld e, d                                          ; $6649: $5a
	cp $be                                           ; $664a: $fe $be
	ld b, $0b                                        ; $664c: $06 $0b
	add hl, bc                                       ; $664e: $09
	ld c, a                                          ; $664f: $4f
	ld [de], a                                       ; $6650: $12
	add hl, bc                                       ; $6651: $09
	add hl, bc                                       ; $6652: $09
	cp [hl]                                          ; $6653: $be
	ld c, a                                          ; $6654: $4f
	ld [$0409], sp                                   ; $6655: $08 $09 $04
	dec bc                                           ; $6658: $0b
	ld [$0409], sp                                   ; $6659: $08 $09 $04
	inc c                                            ; $665c: $0c
	inc c                                            ; $665d: $0c
	dec bc                                           ; $665e: $0b
	ld [$0409], sp                                   ; $665f: $08 $09 $04
	inc c                                            ; $6662: $0c
	ld [$040c], sp                                   ; $6663: $08 $0c $04
	cp $ff                                           ; $6666: $fe $ff
	ret nc                                           ; $6668: $d0

	ld e, d                                          ; $6669: $5a
	cp $d1                                           ; $666a: $fe $d1
	sub e                                            ; $666c: $93
	ei                                               ; $666d: $fb
	db $fd                                           ; $666e: $fd
	ld a, e                                          ; $666f: $7b
	ld h, [hl]                                       ; $6670: $66
	ei                                               ; $6671: $fb
	ld [bc], a                                       ; $6672: $02
	db $fc                                           ; $6673: $fc
	db $fd                                           ; $6674: $fd
	cp l                                             ; $6675: $bd
	ld h, [hl]                                       ; $6676: $66
	db $fc                                           ; $6677: $fc
	ld [bc], a                                       ; $6678: $02
	cp $ff                                           ; $6679: $fe $ff
	pop de                                           ; $667b: $d1
	ret z                                            ; $667c: $c8

	dec hl                                           ; $667d: $2b
	inc bc                                           ; $667e: $03
	jp $032b                                         ; $667f: $c3 $2b $03


	ret z                                            ; $6682: $c8

	dec hl                                           ; $6683: $2b
	inc bc                                           ; $6684: $03
	jp $032b                                         ; $6685: $c3 $2b $03


	ret z                                            ; $6688: $c8

	dec hl                                           ; $6689: $2b
	ld b, $92                                        ; $668a: $06 $92
	jp nc, $03be                                     ; $668c: $d2 $be $03

	jr nc, jr_030_66c4                               ; $668f: $30 $33

	scf                                              ; $6691: $37
	inc a                                            ; $6692: $3c
	cp [hl]                                          ; $6693: $be
	sub e                                            ; $6694: $93
	pop de                                           ; $6695: $d1
	dec hl                                           ; $6696: $2b
	ld b, $c4                                        ; $6697: $06 $c4
	dec hl                                           ; $6699: $2b
	ld b, $c9                                        ; $669a: $06 $c9
	dec hl                                           ; $669c: $2b
	ld b, $92                                        ; $669d: $06 $92
	db $d3                                           ; $669f: $d3
	jr nc, jr_030_66a5                               ; $66a0: $30 $03

	inc sp                                           ; $66a2: $33
	inc bc                                           ; $66a3: $03
	scf                                              ; $66a4: $37

jr_030_66a5:
	inc bc                                           ; $66a5: $03
	inc a                                            ; $66a6: $3c
	add hl, bc                                       ; $66a7: $09
	sub e                                            ; $66a8: $93
	pop de                                           ; $66a9: $d1
	ret z                                            ; $66aa: $c8

	dec hl                                           ; $66ab: $2b
	ld b, $c3                                        ; $66ac: $06 $c3
	dec hl                                           ; $66ae: $2b
	ld b, $c8                                        ; $66af: $06 $c8
	dec hl                                           ; $66b1: $2b
	inc bc                                           ; $66b2: $03
	jp $032b                                         ; $66b3: $c3 $2b $03


	ret z                                            ; $66b6: $c8

	dec hl                                           ; $66b7: $2b
	ld b, $c3                                        ; $66b8: $06 $c3
	dec hl                                           ; $66ba: $2b
	ld b, $fd                                        ; $66bb: $06 $fd
	pop de                                           ; $66bd: $d1
	call z, $0322                                    ; $66be: $cc $22 $03
	call nz, $0322                                   ; $66c1: $c4 $22 $03

jr_030_66c4:
	call z, $0322                                    ; $66c4: $cc $22 $03
	call nz, $0322                                   ; $66c7: $c4 $22 $03
	call z, $0325                                    ; $66ca: $cc $25 $03
	call nz, $0325                                   ; $66cd: $c4 $25 $03
	call z, $0325                                    ; $66d0: $cc $25 $03
	call nz, $0325                                   ; $66d3: $c4 $25 $03
	call z, $0324                                    ; $66d6: $cc $24 $03
	call nz, $0324                                   ; $66d9: $c4 $24 $03
	call z, $0324                                    ; $66dc: $cc $24 $03
	call nz, $0324                                   ; $66df: $c4 $24 $03
	call z, $0320                                    ; $66e2: $cc $20 $03
	call nz, $0320                                   ; $66e5: $c4 $20 $03
	call z, $0320                                    ; $66e8: $cc $20 $03
	call nz, $0320                                   ; $66eb: $c4 $20 $03
	call z, $0322                                    ; $66ee: $cc $22 $03
	call nz, $0322                                   ; $66f1: $c4 $22 $03
	call z, $0322                                    ; $66f4: $cc $22 $03
	call nz, $0322                                   ; $66f7: $c4 $22 $03
	call z, $0325                                    ; $66fa: $cc $25 $03
	call nz, $0325                                   ; $66fd: $c4 $25 $03
	call z, $0325                                    ; $6700: $cc $25 $03
	call nz, $0325                                   ; $6703: $c4 $25 $03
	call z, $0324                                    ; $6706: $cc $24 $03
	call nz, $0324                                   ; $6709: $c4 $24 $03
	call z, $0324                                    ; $670c: $cc $24 $03
	call nz, $0324                                   ; $670f: $c4 $24 $03
	sla a                                            ; $6712: $cb $27
	inc bc                                           ; $6714: $03
	call nz, $0327                                   ; $6715: $c4 $27 $03
	sla a                                            ; $6718: $cb $27
	inc bc                                           ; $671a: $03
	call nz, $0327                                   ; $671b: $c4 $27 $03
	db $fd                                           ; $671e: $fd
	ret nc                                           ; $671f: $d0

	ld e, d                                          ; $6720: $5a
	cp $d1                                           ; $6721: $fe $d1
	sub b                                            ; $6723: $90
	db $fd                                           ; $6724: $fd
	inc l                                            ; $6725: $2c
	ld h, a                                          ; $6726: $67
	db $fd                                           ; $6727: $fd
	sub [hl]                                         ; $6728: $96
	ld h, a                                          ; $6729: $67
	cp $ff                                           ; $672a: $fe $ff
	pop de                                           ; $672c: $d1
	sla d                                            ; $672d: $cb $22
	inc bc                                           ; $672f: $03
	call nz, $0322                                   ; $6730: $c4 $22 $03
	sla d                                            ; $6733: $cb $22
	inc bc                                           ; $6735: $03
	call nz, $0322                                   ; $6736: $c4 $22 $03
	sla d                                            ; $6739: $cb $22
	ld b, $c4                                        ; $673b: $06 $c4
	ld [hl+], a                                      ; $673d: $22
	ld b, $00                                        ; $673e: $06 $00
	ld b, $cb                                        ; $6740: $06 $cb
	ld [hl+], a                                      ; $6742: $22
	ld b, $c4                                        ; $6743: $06 $c4
	ld [hl+], a                                      ; $6745: $22
	ld b, $cb                                        ; $6746: $06 $cb
	ld [hl+], a                                      ; $6748: $22
	ld b, $c4                                        ; $6749: $06 $c4
	ld [hl+], a                                      ; $674b: $22
	ld b, $00                                        ; $674c: $06 $00
	inc c                                            ; $674e: $0c
	sla d                                            ; $674f: $cb $22
	ld b, $c4                                        ; $6751: $06 $c4
	ld [hl+], a                                      ; $6753: $22
	ld b, $cb                                        ; $6754: $06 $cb
	ld [hl+], a                                      ; $6756: $22
	inc bc                                           ; $6757: $03
	call nz, $0322                                   ; $6758: $c4 $22 $03
	sla d                                            ; $675b: $cb $22
	ld b, $c4                                        ; $675d: $06 $c4
	ld [hl+], a                                      ; $675f: $22
	ld b, $ca                                        ; $6760: $06 $ca
	dec h                                            ; $6762: $25
	inc bc                                           ; $6763: $03
	call nz, $0325                                   ; $6764: $c4 $25 $03
	jp z, $0325                                      ; $6767: $ca $25 $03

	call nz, $0325                                   ; $676a: $c4 $25 $03
	jp z, $0625                                      ; $676d: $ca $25 $06

	call nz, $0625                                   ; $6770: $c4 $25 $06
	nop                                              ; $6773: $00
	ld b, $ca                                        ; $6774: $06 $ca
	dec h                                            ; $6776: $25
	ld b, $c4                                        ; $6777: $06 $c4
	dec h                                            ; $6779: $25
	ld b, $ca                                        ; $677a: $06 $ca
	dec h                                            ; $677c: $25
	ld b, $c4                                        ; $677d: $06 $c4
	dec h                                            ; $677f: $25
	ld b, $00                                        ; $6780: $06 $00
	inc c                                            ; $6782: $0c
	jp z, $0625                                      ; $6783: $ca $25 $06

	call nz, $0625                                   ; $6786: $c4 $25 $06
	jp z, $0325                                      ; $6789: $ca $25 $03

	call nz, $0325                                   ; $678c: $c4 $25 $03
	jp z, $0625                                      ; $678f: $ca $25 $06

	call nz, $0625                                   ; $6792: $c4 $25 $06
	db $fd                                           ; $6795: $fd
	pop de                                           ; $6796: $d1
	rst JumpTable                                          ; $6797: $c7
	dec hl                                           ; $6798: $2b
	inc bc                                           ; $6799: $03
	jp nz, $032b                                     ; $679a: $c2 $2b $03

	rst JumpTable                                          ; $679d: $c7
	ld a, [hl+]                                      ; $679e: $2a
	inc bc                                           ; $679f: $03
	jp nz, $032a                                     ; $67a0: $c2 $2a $03

	rst JumpTable                                          ; $67a3: $c7
	add hl, hl                                       ; $67a4: $29
	ld b, $c2                                        ; $67a5: $06 $c2
	add hl, hl                                       ; $67a7: $29
	ld b, $c4                                        ; $67a8: $06 $c4
	ld a, [hl]                                       ; $67aa: $7e
	dec e                                            ; $67ab: $1d
	nop                                              ; $67ac: $00
	xor c                                            ; $67ad: $a9
	ld a, [hl-]                                      ; $67ae: $3a
	ld b, $7e                                        ; $67af: $06 $7e
	nop                                              ; $67b1: $00
	and b                                            ; $67b2: $a0
	ret z                                            ; $67b3: $c8

	scf                                              ; $67b4: $37
	ld b, $c3                                        ; $67b5: $06 $c3
	scf                                              ; $67b7: $37
	ld b, $c8                                        ; $67b8: $06 $c8
	scf                                              ; $67ba: $37
	ld b, $c3                                        ; $67bb: $06 $c3
	scf                                              ; $67bd: $37
	ld b, $c4                                        ; $67be: $06 $c4
	ld a, [hl]                                       ; $67c0: $7e
	dec e                                            ; $67c1: $1d
	nop                                              ; $67c2: $00
	xor c                                            ; $67c3: $a9
	ld a, [hl-]                                      ; $67c4: $3a
	inc c                                            ; $67c5: $0c
	ld a, [hl]                                       ; $67c6: $7e
	nop                                              ; $67c7: $00
	and b                                            ; $67c8: $a0
	rst JumpTable                                          ; $67c9: $c7
	dec hl                                           ; $67ca: $2b
	ld b, $c2                                        ; $67cb: $06 $c2
	dec hl                                           ; $67cd: $2b
	ld b, $c7                                        ; $67ce: $06 $c7
	ld a, [hl+]                                      ; $67d0: $2a
	inc bc                                           ; $67d1: $03
	jp nz, $032a                                     ; $67d2: $c2 $2a $03

	rst JumpTable                                          ; $67d5: $c7
	add hl, hl                                       ; $67d6: $29
	ld b, $c2                                        ; $67d7: $06 $c2
	add hl, hl                                       ; $67d9: $29
	ld b, $d1                                        ; $67da: $06 $d1
	rst JumpTable                                          ; $67dc: $c7
	ld sp, $c203                                     ; $67dd: $31 $03 $c2
	ld sp, $c703                                     ; $67e0: $31 $03 $c7
	jr nc, jr_030_67e8                               ; $67e3: $30 $03

	jp nz, $0330                                     ; $67e5: $c2 $30 $03

jr_030_67e8:
	rst JumpTable                                          ; $67e8: $c7
	cpl                                              ; $67e9: $2f
	ld b, $c2                                        ; $67ea: $06 $c2
	cpl                                              ; $67ec: $2f
	ld b, $c4                                        ; $67ed: $06 $c4
	ld a, [hl]                                       ; $67ef: $7e
	dec e                                            ; $67f0: $1d
	nop                                              ; $67f1: $00
	xor c                                            ; $67f2: $a9
	ld a, [hl-]                                      ; $67f3: $3a
	ld b, $7e                                        ; $67f4: $06 $7e
	nop                                              ; $67f6: $00
	and b                                            ; $67f7: $a0
	ret z                                            ; $67f8: $c8

	ld sp, $c306                                     ; $67f9: $31 $06 $c3
	ld sp, $c806                                     ; $67fc: $31 $06 $c8
	ld sp, $c306                                     ; $67ff: $31 $06 $c3
	ld sp, $c406                                     ; $6802: $31 $06 $c4
	ld a, [hl]                                       ; $6805: $7e
	dec e                                            ; $6806: $1d
	nop                                              ; $6807: $00
	xor c                                            ; $6808: $a9
	ld a, [hl-]                                      ; $6809: $3a
	inc c                                            ; $680a: $0c
	ld a, [hl]                                       ; $680b: $7e
	nop                                              ; $680c: $00
	and b                                            ; $680d: $a0
	rst JumpTable                                          ; $680e: $c7
	ld sp, $c206                                     ; $680f: $31 $06 $c2
	ld sp, $c706                                     ; $6812: $31 $06 $c7
	jr nc, jr_030_681a                               ; $6815: $30 $03

	jp nz, $0330                                     ; $6817: $c2 $30 $03

jr_030_681a:
	rst JumpTable                                          ; $681a: $c7
	cpl                                              ; $681b: $2f
	ld b, $c2                                        ; $681c: $06 $c2
	cpl                                              ; $681e: $2f
	ld b, $fd                                        ; $681f: $06 $fd
	ret nc                                           ; $6821: $d0

	ld e, d                                          ; $6822: $5a
	cp $d1                                           ; $6823: $fe $d1
	jp nz, $1f7f                                     ; $6825: $c2 $7f $1f

	db $fd                                           ; $6828: $fd
	ld e, b                                          ; $6829: $58
	ld l, b                                          ; $682a: $68
	pop de                                           ; $682b: $d1
	ei                                               ; $682c: $fb
	jp nz, $060a                                     ; $682d: $c2 $0a $06

	add $0a                                          ; $6830: $c6 $0a
	ld b, $fb                                        ; $6832: $06 $fb
	ld [bc], a                                       ; $6834: $02
	ei                                               ; $6835: $fb
	jp nz, $060d                                     ; $6836: $c2 $0d $06

	add $0d                                          ; $6839: $c6 $0d
	ld b, $fb                                        ; $683b: $06 $fb
	ld [bc], a                                       ; $683d: $02
	ei                                               ; $683e: $fb
	jp nz, $060c                                     ; $683f: $c2 $0c $06

	add $0c                                          ; $6842: $c6 $0c
	ld b, $fb                                        ; $6844: $06 $fb
	ld [bc], a                                       ; $6846: $02
	ei                                               ; $6847: $fb
	jp nz, $060f                                     ; $6848: $c2 $0f $06

	add $0f                                          ; $684b: $c6 $0f
	ld b, $fb                                        ; $684d: $06 $fb
	ld [bc], a                                       ; $684f: $02
	ei                                               ; $6850: $fb
	db $fd                                           ; $6851: $fd
	add c                                            ; $6852: $81
	ld l, b                                          ; $6853: $68
	ei                                               ; $6854: $fb
	ld [bc], a                                       ; $6855: $02
	cp $ff                                           ; $6856: $fe $ff
	ei                                               ; $6858: $fb
	pop de                                           ; $6859: $d1
	jp nz, $060a                                     ; $685a: $c2 $0a $06

	add $0a                                          ; $685d: $c6 $0a
	ld b, $fb                                        ; $685f: $06 $fb
	ld [bc], a                                       ; $6861: $02
	ei                                               ; $6862: $fb
	jp nz, $060d                                     ; $6863: $c2 $0d $06

	add $0d                                          ; $6866: $c6 $0d
	ld b, $fb                                        ; $6868: $06 $fb
	ld [bc], a                                       ; $686a: $02
	ei                                               ; $686b: $fb
	jp nz, $060c                                     ; $686c: $c2 $0c $06

	add $0c                                          ; $686f: $c6 $0c
	ld b, $fb                                        ; $6871: $06 $fb
	ld [bc], a                                       ; $6873: $02
	jp nz, $0608                                     ; $6874: $c2 $08 $06

	add $08                                          ; $6877: $c6 $08
	ld b, $c2                                        ; $6879: $06 $c2
	add hl, bc                                       ; $687b: $09
	ld b, $c6                                        ; $687c: $06 $c6
	add hl, bc                                       ; $687e: $09
	ld b, $fd                                        ; $687f: $06 $fd
	pop de                                           ; $6881: $d1
	jp nz, $060a                                     ; $6882: $c2 $0a $06

	add $0a                                          ; $6885: $c6 $0a
	ld b, $c2                                        ; $6887: $06 $c2
	dec c                                            ; $6889: $0d
	ld b, $c6                                        ; $688a: $06 $c6
	dec c                                            ; $688c: $0d
	ld b, $c2                                        ; $688d: $06 $c2
	inc c                                            ; $688f: $0c
	ld b, $c6                                        ; $6890: $06 $c6
	inc c                                            ; $6892: $0c
	ld b, $c2                                        ; $6893: $06 $c2
	dec bc                                           ; $6895: $0b
	ld b, $c6                                        ; $6896: $06 $c6
	dec bc                                           ; $6898: $0b
	ld b, $c2                                        ; $6899: $06 $c2
	ld a, [bc]                                       ; $689b: $0a
	ld b, $c6                                        ; $689c: $06 $c6
	ld a, [bc]                                       ; $689e: $0a
	ld b, $c2                                        ; $689f: $06 $c2
	dec c                                            ; $68a1: $0d
	ld b, $c6                                        ; $68a2: $06 $c6
	dec c                                            ; $68a4: $0d
	ld b, $c2                                        ; $68a5: $06 $c2
	inc c                                            ; $68a7: $0c
	ld b, $c6                                        ; $68a8: $06 $c6
	inc c                                            ; $68aa: $0c
	ld b, $c2                                        ; $68ab: $06 $c2
	rrca                                             ; $68ad: $0f
	ld b, $c6                                        ; $68ae: $06 $c6
	rrca                                             ; $68b0: $0f
	ld b, $fd                                        ; $68b1: $06 $fd
	ret nc                                           ; $68b3: $d0

	ld e, d                                          ; $68b4: $5a
	cp $fb                                           ; $68b5: $fe $fb
	db $fd                                           ; $68b7: $fd
	call nz, $fb68                                   ; $68b8: $c4 $68 $fb
	ld [bc], a                                       ; $68bb: $02
	db $fc                                           ; $68bc: $fc
	db $fd                                           ; $68bd: $fd
	ldh [c], a                                       ; $68be: $e2
	ld l, b                                          ; $68bf: $68
	db $fc                                           ; $68c0: $fc
	ld [bc], a                                       ; $68c1: $02
	cp $ff                                           ; $68c2: $fe $ff
	rra                                              ; $68c4: $1f
	ld b, $1f                                        ; $68c5: $06 $1f
	inc bc                                           ; $68c7: $03
	rra                                              ; $68c8: $1f
	inc bc                                           ; $68c9: $03
	cp [hl]                                          ; $68ca: $be
	ld b, $20                                        ; $68cb: $06 $20
	rra                                              ; $68cd: $1f
	rra                                              ; $68ce: $1f
	inc l                                            ; $68cf: $2c
	rra                                              ; $68d0: $1f
	dec l                                            ; $68d1: $2d
	rra                                              ; $68d2: $1f
	cp [hl]                                          ; $68d3: $be
	rra                                              ; $68d4: $1f
	inc bc                                           ; $68d5: $03
	rra                                              ; $68d6: $1f
	inc bc                                           ; $68d7: $03
	cp [hl]                                          ; $68d8: $be
	ld b, $20                                        ; $68d9: $06 $20
	rra                                              ; $68db: $1f
	rra                                              ; $68dc: $1f
	inc l                                            ; $68dd: $2c
	rra                                              ; $68de: $1f
	dec l                                            ; $68df: $2d
	cp [hl]                                          ; $68e0: $be
	db $fd                                           ; $68e1: $fd
	cp [hl]                                          ; $68e2: $be
	ld b, $1d                                        ; $68e3: $06 $1d
	inc l                                            ; $68e5: $2c
	dec e                                            ; $68e6: $1d
	dec l                                            ; $68e7: $2d
	dec e                                            ; $68e8: $1d
	inc l                                            ; $68e9: $2c
	dec e                                            ; $68ea: $1d
	dec l                                            ; $68eb: $2d
	dec e                                            ; $68ec: $1d
	inc l                                            ; $68ed: $2c
	dec e                                            ; $68ee: $1d
	dec l                                            ; $68ef: $2d
	dec e                                            ; $68f0: $1d
	inc l                                            ; $68f1: $2c
	dec e                                            ; $68f2: $1d
	dec l                                            ; $68f3: $2d
	cp [hl]                                          ; $68f4: $be
	db $fd                                           ; $68f5: $fd
	or h                                             ; $68f6: $b4
	ld e, d                                          ; $68f7: $5a
	pop bc                                           ; $68f8: $c1
	ld [bc], a                                       ; $68f9: $02
	ld [hl], d                                       ; $68fa: $72
	nop                                              ; $68fb: $00

jr_030_68fc:
	jr jr_030_68fc                                   ; $68fc: $18 $fe

	ei                                               ; $68fe: $fb
	ld a, l                                          ; $68ff: $7d
	ld bc, $60fd                                     ; $6900: $01 $fd $60
	ld l, c                                          ; $6903: $69
	ei                                               ; $6904: $fb
	rlca                                             ; $6905: $07
	sub a                                            ; $6906: $97
	ld a, d                                          ; $6907: $7a
	ei                                               ; $6908: $fb
	pop de                                           ; $6909: $d1
	jr nc, jr_030_690f                               ; $690a: $30 $03

	db $d3                                           ; $690c: $d3
	jr nc, jr_030_6912                               ; $690d: $30 $03

jr_030_690f:
	ei                                               ; $690f: $fb
	ld [bc], a                                       ; $6910: $02
	ei                                               ; $6911: $fb

jr_030_6912:
	pop de                                           ; $6912: $d1
	ld sp, $d303                                     ; $6913: $31 $03 $d3
	jr nc, jr_030_691b                               ; $6916: $30 $03

	ei                                               ; $6918: $fb
	ld [bc], a                                       ; $6919: $02
	sub a                                            ; $691a: $97

jr_030_691b:
	ld c, d                                          ; $691b: $4a
	ei                                               ; $691c: $fb
	pop de                                           ; $691d: $d1
	add hl, sp                                       ; $691e: $39
	inc bc                                           ; $691f: $03
	db $d3                                           ; $6920: $d3
	ld sp, $fb03                                     ; $6921: $31 $03 $fb
	ld [bc], a                                       ; $6924: $02
	ei                                               ; $6925: $fb
	sub a                                            ; $6926: $97
	ld a, [hl-]                                      ; $6927: $3a
	pop de                                           ; $6928: $d1
	dec [hl]                                         ; $6929: $35
	inc bc                                           ; $692a: $03
	db $d3                                           ; $692b: $d3
	add hl, sp                                       ; $692c: $39
	inc bc                                           ; $692d: $03
	ei                                               ; $692e: $fb
	ld [bc], a                                       ; $692f: $02
	ei                                               ; $6930: $fb
	db $fd                                           ; $6931: $fd
	ld h, b                                          ; $6932: $60
	ld l, c                                          ; $6933: $69
	ei                                               ; $6934: $fb
	rlca                                             ; $6935: $07
	sub a                                            ; $6936: $97
	ld a, d                                          ; $6937: $7a
	db $fc                                           ; $6938: $fc
	pop de                                           ; $6939: $d1
	jr nc, jr_030_693f                               ; $693a: $30 $03

	db $d3                                           ; $693c: $d3
	jr nc, jr_030_6942                               ; $693d: $30 $03

jr_030_693f:
	db $fc                                           ; $693f: $fc
	ld [bc], a                                       ; $6940: $02
	sub a                                            ; $6941: $97

jr_030_6942:
	ld e, d                                          ; $6942: $5a
	db $fc                                           ; $6943: $fc
	pop de                                           ; $6944: $d1
	ld a, [hl-]                                      ; $6945: $3a
	inc bc                                           ; $6946: $03
	db $d3                                           ; $6947: $d3
	jr nc, jr_030_694d                               ; $6948: $30 $03

	db $fc                                           ; $694a: $fc
	ld [bc], a                                       ; $694b: $02
	db $fc                                           ; $694c: $fc

jr_030_694d:
	pop de                                           ; $694d: $d1
	jr c, jr_030_6953                                ; $694e: $38 $03

	db $d3                                           ; $6950: $d3
	ld a, [hl-]                                      ; $6951: $3a
	inc bc                                           ; $6952: $03

jr_030_6953:
	db $fc                                           ; $6953: $fc
	ld [bc], a                                       ; $6954: $02
	db $fc                                           ; $6955: $fc
	pop de                                           ; $6956: $d1
	inc sp                                           ; $6957: $33
	inc bc                                           ; $6958: $03
	db $d3                                           ; $6959: $d3
	jr c, @+$05                                      ; $695a: $38 $03

	db $fc                                           ; $695c: $fc
	ld [bc], a                                       ; $695d: $02
	cp $ff                                           ; $695e: $fe $ff
	sub a                                            ; $6960: $97
	ld a, d                                          ; $6961: $7a
	db $fc                                           ; $6962: $fc
	pop de                                           ; $6963: $d1
	jr nc, jr_030_6969                               ; $6964: $30 $03

	db $d3                                           ; $6966: $d3
	jr nc, jr_030_696c                               ; $6967: $30 $03

jr_030_6969:
	db $fc                                           ; $6969: $fc
	ld [bc], a                                       ; $696a: $02
	db $fc                                           ; $696b: $fc

jr_030_696c:
	pop de                                           ; $696c: $d1
	ld sp, $d303                                     ; $696d: $31 $03 $d3
	jr nc, jr_030_6975                               ; $6970: $30 $03

	db $fc                                           ; $6972: $fc
	ld [bc], a                                       ; $6973: $02
	sub a                                            ; $6974: $97

jr_030_6975:
	ld l, d                                          ; $6975: $6a
	db $fc                                           ; $6976: $fc
	pop de                                           ; $6977: $d1
	jr c, @+$05                                      ; $6978: $38 $03

	db $d3                                           ; $697a: $d3
	ld sp, $fc03                                     ; $697b: $31 $03 $fc
	ld [bc], a                                       ; $697e: $02
	db $fc                                           ; $697f: $fc
	pop de                                           ; $6980: $d1
	ld sp, $d303                                     ; $6981: $31 $03 $d3
	jr c, jr_030_6989                                ; $6984: $38 $03

	db $fc                                           ; $6986: $fc
	ld [bc], a                                       ; $6987: $02
	db $fd                                           ; $6988: $fd

jr_030_6989:
	or h                                             ; $6989: $b4
	ld e, d                                          ; $698a: $5a
	pop af                                           ; $698b: $f1
	ld bc, $7a97                                     ; $698c: $01 $97 $7a
	ld a, [hl]                                       ; $698f: $7e
	dec e                                            ; $6990: $1d
	inc c                                            ; $6991: $0c
	xor d                                            ; $6992: $aa
	ld [hl], d                                       ; $6993: $72
	jr nz, @+$14                                     ; $6994: $20 $12

	sub a                                            ; $6996: $97
	nop                                              ; $6997: $00
	call nz, $0620                                   ; $6998: $c4 $20 $06
	cp $97                                           ; $699b: $fe $97
	adc d                                            ; $699d: $8a
	dec h                                            ; $699e: $25
	inc h                                            ; $699f: $24
	sub a                                            ; $69a0: $97
	nop                                              ; $69a1: $00
	call nz, $0c25                                   ; $69a2: $c4 $25 $0c
	sub a                                            ; $69a5: $97
	ld a, e                                          ; $69a6: $7b
	jr nz, @+$0e                                     ; $69a7: $20 $0c

	sub a                                            ; $69a9: $97
	nop                                              ; $69aa: $00
	call nz, $0420                                   ; $69ab: $c4 $20 $04
	sub a                                            ; $69ae: $97
	adc d                                            ; $69af: $8a
	dec h                                            ; $69b0: $25
	inc c                                            ; $69b1: $0c
	sub a                                            ; $69b2: $97
	nop                                              ; $69b3: $00
	call nz, $0425                                   ; $69b4: $c4 $25 $04
	sub a                                            ; $69b7: $97
	ld a, e                                          ; $69b8: $7b
	add hl, hl                                       ; $69b9: $29
	inc c                                            ; $69ba: $0c
	sub a                                            ; $69bb: $97
	nop                                              ; $69bc: $00
	call nz, $0429                                   ; $69bd: $c4 $29 $04
	sub a                                            ; $69c0: $97
	adc h                                            ; $69c1: $8c
	daa                                              ; $69c2: $27
	inc h                                            ; $69c3: $24
	sub a                                            ; $69c4: $97
	nop                                              ; $69c5: $00
	call nz, $0c27                                   ; $69c6: $c4 $27 $0c
	sub a                                            ; $69c9: $97
	ld e, a                                          ; $69ca: $5f
	inc l                                            ; $69cb: $2c
	inc e                                            ; $69cc: $1c
	sub a                                            ; $69cd: $97
	nop                                              ; $69ce: $00
	call nz, $142c                                   ; $69cf: $c4 $2c $14
	sub a                                            ; $69d2: $97
	ld e, a                                          ; $69d3: $5f
	inc l                                            ; $69d4: $2c
	inc e                                            ; $69d5: $1c
	sub a                                            ; $69d6: $97
	nop                                              ; $69d7: $00
	call nz, $142c                                   ; $69d8: $c4 $2c $14
	sub a                                            ; $69db: $97
	ld e, l                                          ; $69dc: $5d
	ld l, $12                                        ; $69dd: $2e $12
	sub a                                            ; $69df: $97
	nop                                              ; $69e0: $00
	call nz, $062e                                   ; $69e1: $c4 $2e $06
	sub a                                            ; $69e4: $97
	adc h                                            ; $69e5: $8c
	jr nc, jr_030_69fa                               ; $69e6: $30 $12

	sub a                                            ; $69e8: $97
	nop                                              ; $69e9: $00
	call nz, $0630                                   ; $69ea: $c4 $30 $06
	sub a                                            ; $69ed: $97
	ld l, a                                          ; $69ee: $6f
	ld sp, $9724                                     ; $69ef: $31 $24 $97
	nop                                              ; $69f2: $00
	call nz, $0c31                                   ; $69f3: $c4 $31 $0c
	sub a                                            ; $69f6: $97
	adc e                                            ; $69f7: $8b
	jr nc, @+$0e                                     ; $69f8: $30 $0c

jr_030_69fa:
	sub a                                            ; $69fa: $97
	nop                                              ; $69fb: $00
	call nz, $0430                                   ; $69fc: $c4 $30 $04

jr_030_69ff:
	sub a                                            ; $69ff: $97
	adc e                                            ; $6a00: $8b
	ld sp, $970c                                     ; $6a01: $31 $0c $97
	nop                                              ; $6a04: $00
	call nz, $0431                                   ; $6a05: $c4 $31 $04
	sub a                                            ; $6a08: $97
	adc e                                            ; $6a09: $8b
	jr nc, @+$0e                                     ; $6a0a: $30 $0c

	sub a                                            ; $6a0c: $97
	nop                                              ; $6a0d: $00
	call nz, $0430                                   ; $6a0e: $c4 $30 $04
	sub a                                            ; $6a11: $97
	ld e, a                                          ; $6a12: $5f
	ld l, $1e                                        ; $6a13: $2e $1e
	sub a                                            ; $6a15: $97
	nop                                              ; $6a16: $00
	call nz, $122e                                   ; $6a17: $c4 $2e $12
	sub a                                            ; $6a1a: $97
	ld a, h                                          ; $6a1b: $7c
	jr nc, @+$14                                     ; $6a1c: $30 $12

	sub a                                            ; $6a1e: $97
	nop                                              ; $6a1f: $00
	call nz, $0630                                   ; $6a20: $c4 $30 $06
	sub a                                            ; $6a23: $97
	adc l                                            ; $6a24: $8d
	ld sp, $9712                                     ; $6a25: $31 $12 $97
	nop                                              ; $6a28: $00
	call nz, $0631                                   ; $6a29: $c4 $31 $06
	sub a                                            ; $6a2c: $97
	ld c, a                                          ; $6a2d: $4f
	inc l                                            ; $6a2e: $2c
	ld e, $97                                        ; $6a2f: $1e $97
	nop                                              ; $6a31: $00
	call nz, $122c                                   ; $6a32: $c4 $2c $12
	sub a                                            ; $6a35: $97
	ld l, a                                          ; $6a36: $6f
	ld a, [hl+]                                      ; $6a37: $2a
	ld [de], a                                       ; $6a38: $12
	sub a                                            ; $6a39: $97
	nop                                              ; $6a3a: $00
	call nz, $062a                                   ; $6a3b: $c4 $2a $06
	sub a                                            ; $6a3e: $97
	ld l, a                                          ; $6a3f: $6f
	add hl, hl                                       ; $6a40: $29
	ld [de], a                                       ; $6a41: $12
	sub a                                            ; $6a42: $97
	nop                                              ; $6a43: $00
	call nz, $0629                                   ; $6a44: $c4 $29 $06
	sub a                                            ; $6a47: $97
	ld a, e                                          ; $6a48: $7b
	add hl, hl                                       ; $6a49: $29
	inc c                                            ; $6a4a: $0c

jr_030_6a4b:
	daa                                              ; $6a4b: $27
	ld b, $97                                        ; $6a4c: $06 $97
	nop                                              ; $6a4e: $00
	call nz, $0627                                   ; $6a4f: $c4 $27 $06
	sub a                                            ; $6a52: $97
	ld a, h                                          ; $6a53: $7c
	daa                                              ; $6a54: $27
	inc h                                            ; $6a55: $24
	sub a                                            ; $6a56: $97
	nop                                              ; $6a57: $00
	call nz, $0c27                                   ; $6a58: $c4 $27 $0c
	sub a                                            ; $6a5b: $97
	adc d                                            ; $6a5c: $8a
	dec h                                            ; $6a5d: $25
	inc c                                            ; $6a5e: $0c
	sub a                                            ; $6a5f: $97
	ld a, d                                          ; $6a60: $7a
	add hl, hl                                       ; $6a61: $29
	inc c                                            ; $6a62: $0c
	sub a                                            ; $6a63: $97
	ld l, h                                          ; $6a64: $6c
	daa                                              ; $6a65: $27
	jr nc, jr_030_69ff                               ; $6a66: $30 $97

	nop                                              ; $6a68: $00

jr_030_6a69:
	call nz, $1827                                   ; $6a69: $c4 $27 $18
	sub a                                            ; $6a6c: $97
	ld a, e                                          ; $6a6d: $7b
	jr nz, jr_030_6a82                               ; $6a6e: $20 $12

	sub a                                            ; $6a70: $97
	nop                                              ; $6a71: $00
	call nz, $0620                                   ; $6a72: $c4 $20 $06
	cp $ff                                           ; $6a75: $fe $ff
	or h                                             ; $6a77: $b4
	ld e, d                                          ; $6a78: $5a
	pop af                                           ; $6a79: $f1
	ld hl, $0072                                     ; $6a7a: $21 $72 $00

jr_030_6a7d:
	jr jr_030_6a7d                                   ; $6a7d: $18 $fe

	jp nz, $180d                                     ; $6a7f: $c2 $0d $18

jr_030_6a82:
	call nz, $180d                                   ; $6a82: $c4 $0d $18
	add $0d                                          ; $6a85: $c6 $0d
	jr jr_030_6a4b                                   ; $6a87: $18 $c2

	dec b                                            ; $6a89: $05
	ld [de], a                                       ; $6a8a: $12
	add $05                                          ; $6a8b: $c6 $05
	ld b, $c2                                        ; $6a8d: $06 $c2
	ld [$c418], sp                                   ; $6a8f: $08 $18 $c4
	ld [$c618], sp                                   ; $6a92: $08 $18 $c6
	ld [$c218], sp                                   ; $6a95: $08 $18 $c2
	inc bc                                           ; $6a98: $03
	ld [de], a                                       ; $6a99: $12
	add $03                                          ; $6a9a: $c6 $03
	ld b, $c2                                        ; $6a9c: $06 $c2
	ld b, $18                                        ; $6a9e: $06 $18
	call nz, $1806                                   ; $6aa0: $c4 $06 $18
	add $06                                          ; $6aa3: $c6 $06
	jr jr_030_6a69                                   ; $6aa5: $18 $c2

	ld a, [bc]                                       ; $6aa7: $0a
	ld [de], a                                       ; $6aa8: $12
	add $0a                                          ; $6aa9: $c6 $0a
	ld b, $c2                                        ; $6aab: $06 $c2
	ld [$c624], sp                                   ; $6aad: $08 $24 $c6
	ld [$c20c], sp                                   ; $6ab0: $08 $0c $c2
	add hl, bc                                       ; $6ab3: $09
	inc h                                            ; $6ab4: $24
	add $09                                          ; $6ab5: $c6 $09
	inc c                                            ; $6ab7: $0c
	jp nz, $180a                                     ; $6ab8: $c2 $0a $18

	call nz, $180a                                   ; $6abb: $c4 $0a $18
	add $0a                                          ; $6abe: $c6 $0a
	jr @-$3c                                         ; $6ac0: $18 $c2

	dec b                                            ; $6ac2: $05
	inc c                                            ; $6ac3: $0c
	add $05                                          ; $6ac4: $c6 $05
	inc c                                            ; $6ac6: $0c
	jp nz, $1808                                     ; $6ac7: $c2 $08 $18

	call nz, $1808                                   ; $6aca: $c4 $08 $18
	add $08                                          ; $6acd: $c6 $08
	jr @-$3c                                         ; $6acf: $18 $c2

	dec b                                            ; $6ad1: $05
	inc c                                            ; $6ad2: $0c
	add $05                                          ; $6ad3: $c6 $05
	inc c                                            ; $6ad5: $0c
	jp nz, $180f                                     ; $6ad6: $c2 $0f $18

	call nz, $180f                                   ; $6ad9: $c4 $0f $18
	add $0f                                          ; $6adc: $c6 $0f
	jr @-$3c                                         ; $6ade: $18 $c2

	ld a, [bc]                                       ; $6ae0: $0a
	inc c                                            ; $6ae1: $0c
	add $0a                                          ; $6ae2: $c6 $0a
	inc c                                            ; $6ae4: $0c
	jp nz, $1808                                     ; $6ae5: $c2 $08 $18

	call nz, $1808                                   ; $6ae8: $c4 $08 $18
	add $08                                          ; $6aeb: $c6 $08
	jr @-$3c                                         ; $6aed: $18 $c2

	inc c                                            ; $6aef: $0c
	inc c                                            ; $6af0: $0c
	add $0c                                          ; $6af1: $c6 $0c
	inc c                                            ; $6af3: $0c
	cp $ff                                           ; $6af4: $fe $ff
	ret nc                                           ; $6af6: $d0

	ld e, d                                          ; $6af7: $5a
	nop                                              ; $6af8: $00

jr_030_6af9:
	jr jr_030_6af9                                   ; $6af9: $18 $fe

	ei                                               ; $6afb: $fb
	db $fd                                           ; $6afc: $fd
	inc bc                                           ; $6afd: $03
	ld l, e                                          ; $6afe: $6b
	ei                                               ; $6aff: $fb
	inc b                                            ; $6b00: $04
	cp $ff                                           ; $6b01: $fe $ff
	cp [hl]                                          ; $6b03: $be
	inc c                                            ; $6b04: $0c
	rra                                              ; $6b05: $1f
	dec e                                            ; $6b06: $1d
	rra                                              ; $6b07: $1f
	dec e                                            ; $6b08: $1d
	jr nz, jr_030_6b2c                               ; $6b09: $20 $21

	ld [hl+], a                                      ; $6b0b: $22
	inc hl                                           ; $6b0c: $23
	cp [hl]                                          ; $6b0d: $be
	cp [hl]                                          ; $6b0e: $be
	inc c                                            ; $6b0f: $0c
	rra                                              ; $6b10: $1f
	rra                                              ; $6b11: $1f
	dec e                                            ; $6b12: $1d
	rra                                              ; $6b13: $1f
	jr nz, @+$23                                     ; $6b14: $20 $21

	ld [hl+], a                                      ; $6b16: $22
	inc hl                                           ; $6b17: $23
	cp [hl]                                          ; $6b18: $be
	db $fd                                           ; $6b19: $fd
	ret nc                                           ; $6b1a: $d0

	ld [hl], e                                       ; $6b1b: $73
	cp $91                                           ; $6b1c: $fe $91
	sub [hl]                                         ; $6b1e: $96
	rst $38                                          ; $6b1f: $ff
	ld [bc], a                                       ; $6b20: $02
	ld a, l                                          ; $6b21: $7d
	ld [bc], a                                       ; $6b22: $02
	ld a, [hl]                                       ; $6b23: $7e
	ld [bc], a                                       ; $6b24: $02
	nop                                              ; $6b25: $00
	and b                                            ; $6b26: $a0
	ei                                               ; $6b27: $fb
	jp z, $0819                                      ; $6b28: $ca $19 $08

	or c                                             ; $6b2b: $b1

jr_030_6b2c:
	ld hl, $0000                                     ; $6b2c: $21 $00 $00
	add hl, de                                       ; $6b2f: $19
	ld [$91b1], sp                                   ; $6b30: $08 $b1 $91
	rst $38                                          ; $6b33: $ff
	ld [bc], a                                       ; $6b34: $02
	add hl, de                                       ; $6b35: $19
	ld [$71b1], sp                                   ; $6b36: $08 $b1 $71
	rst $38                                          ; $6b39: $ff
	ld [bc], a                                       ; $6b3a: $02
	add hl, de                                       ; $6b3b: $19
	ld [$1bc8], sp                                   ; $6b3c: $08 $c8 $1b
	ld [$081c], sp                                   ; $6b3f: $08 $1c $08
	ei                                               ; $6b42: $fb
	ld [bc], a                                       ; $6b43: $02
	or c                                             ; $6b44: $b1
	and c                                            ; $6b45: $a1
	rst $38                                          ; $6b46: $ff
	ld [bc], a                                       ; $6b47: $02
	cp [hl]                                          ; $6b48: $be
	ld [$1b19], sp                                   ; $6b49: $08 $19 $1b
	inc e                                            ; $6b4c: $1c
	add hl, de                                       ; $6b4d: $19
	dec de                                           ; $6b4e: $1b
	inc e                                            ; $6b4f: $1c
	cp [hl]                                          ; $6b50: $be
	ld a, [hl]                                       ; $6b51: $7e
	ld bc, $a00c                                     ; $6b52: $01 $0c $a0
	or c                                             ; $6b55: $b1
	add c                                            ; $6b56: $81
	rst $38                                          ; $6b57: $ff
	rlca                                             ; $6b58: $07
	add hl, de                                       ; $6b59: $19
	inc h                                            ; $6b5a: $24
	or c                                             ; $6b5b: $b1
	ld sp, $0000                                     ; $6b5c: $31 $00 $00
	ld a, [hl]                                       ; $6b5f: $7e
	ld bc, $a000                                     ; $6b60: $01 $00 $a0
	add hl, de                                       ; $6b63: $19
	inc c                                            ; $6b64: $0c
	or l                                             ; $6b65: $b5
	and c                                            ; $6b66: $a1
	ld bc, $02ff                                     ; $6b67: $01 $ff $02
	ld a, l                                          ; $6b6a: $7d
	ld [bc], a                                       ; $6b6b: $02
	ld a, [hl]                                       ; $6b6c: $7e
	ld [bc], a                                       ; $6b6d: $02
	nop                                              ; $6b6e: $00
	and b                                            ; $6b6f: $a0
	ei                                               ; $6b70: $fb
	inc e                                            ; $6b71: $1c
	ld [$21b1], sp                                   ; $6b72: $08 $b1 $21
	nop                                              ; $6b75: $00
	nop                                              ; $6b76: $00
	inc e                                            ; $6b77: $1c
	ld [$91b1], sp                                   ; $6b78: $08 $b1 $91
	rst $38                                          ; $6b7b: $ff
	ld [bc], a                                       ; $6b7c: $02
	inc e                                            ; $6b7d: $1c
	ld [$1cc7], sp                                   ; $6b7e: $08 $c7 $1c
	ld [$1ec9], sp                                   ; $6b81: $08 $c9 $1e
	ld [$20ca], sp                                   ; $6b84: $08 $ca $20
	ld [$02fb], sp                                   ; $6b87: $08 $fb $02
	or c                                             ; $6b8a: $b1
	sub c                                            ; $6b8b: $91
	rst $38                                          ; $6b8c: $ff
	ld [bc], a                                       ; $6b8d: $02
	cp [hl]                                          ; $6b8e: $be
	ld [$1e1c], sp                                   ; $6b8f: $08 $1c $1e
	jr nz, jr_030_6bab                               ; $6b92: $20 $17

	inc hl                                           ; $6b94: $23
	ld h, $be                                        ; $6b95: $26 $be
	ld a, [hl]                                       ; $6b97: $7e
	ld bc, $a90c                                     ; $6b98: $01 $0c $a9
	or c                                             ; $6b9b: $b1
	add c                                            ; $6b9c: $81
	rst $38                                          ; $6b9d: $ff
	rlca                                             ; $6b9e: $07
	jr nz, jr_030_6bb9                               ; $6b9f: $20 $18

	or c                                             ; $6ba1: $b1
	add c                                            ; $6ba2: $81
	nop                                              ; $6ba3: $00
	nop                                              ; $6ba4: $00
	db $fd                                           ; $6ba5: $fd
	ld b, l                                          ; $6ba6: $45
	ld l, h                                          ; $6ba7: $6c
	sub c                                            ; $6ba8: $91
	sub [hl]                                         ; $6ba9: $96
	rst $38                                          ; $6baa: $ff

jr_030_6bab:
	ld [bc], a                                       ; $6bab: $02
	ld a, l                                          ; $6bac: $7d
	ld [bc], a                                       ; $6bad: $02
	ld a, [hl]                                       ; $6bae: $7e
	ld [bc], a                                       ; $6baf: $02
	nop                                              ; $6bb0: $00
	xor c                                            ; $6bb1: $a9
	ei                                               ; $6bb2: $fb
	rst JumpTable                                          ; $6bb3: $c7
	dec h                                            ; $6bb4: $25
	ld [$21b1], sp                                   ; $6bb5: $08 $b1 $21
	nop                                              ; $6bb8: $00

jr_030_6bb9:
	nop                                              ; $6bb9: $00
	dec h                                            ; $6bba: $25
	ld [$71b1], sp                                   ; $6bbb: $08 $b1 $71
	rst $38                                          ; $6bbe: $ff
	ld [bc], a                                       ; $6bbf: $02
	dec h                                            ; $6bc0: $25
	ld [$61b1], sp                                   ; $6bc1: $08 $b1 $61
	rst $38                                          ; $6bc4: $ff
	ld [bc], a                                       ; $6bc5: $02
	dec h                                            ; $6bc6: $25
	ld [$0827], sp                                   ; $6bc7: $08 $27 $08
	jr z, @+$0a                                      ; $6bca: $28 $08

	ei                                               ; $6bcc: $fb
	ld [bc], a                                       ; $6bcd: $02
	or c                                             ; $6bce: $b1
	ld h, c                                          ; $6bcf: $61
	rst $38                                          ; $6bd0: $ff
	ld [bc], a                                       ; $6bd1: $02
	cp [hl]                                          ; $6bd2: $be
	ld [$2725], sp                                   ; $6bd3: $08 $25 $27
	jr z, @+$27                                      ; $6bd6: $28 $25

	daa                                              ; $6bd8: $27
	jr z, @-$40                                      ; $6bd9: $28 $be

	ld a, [hl]                                       ; $6bdb: $7e
	ld bc, $a90c                                     ; $6bdc: $01 $0c $a9
	sub [hl]                                         ; $6bdf: $96
	rst $38                                          ; $6be0: $ff
	rlca                                             ; $6be1: $07
	dec h                                            ; $6be2: $25
	jr @-$4d                                         ; $6be3: $18 $b1

	ld [hl], c                                       ; $6be5: $71
	nop                                              ; $6be6: $00
	nop                                              ; $6be7: $00
	db $fd                                           ; $6be8: $fd
	ld b, l                                          ; $6be9: $45
	ld l, h                                          ; $6bea: $6c
	or l                                             ; $6beb: $b5
	ld h, c                                          ; $6bec: $61
	ld bc, $02ff                                     ; $6bed: $01 $ff $02
	ld a, l                                          ; $6bf0: $7d
	ld [bc], a                                       ; $6bf1: $02
	ld a, [hl]                                       ; $6bf2: $7e
	ld [bc], a                                       ; $6bf3: $02
	nop                                              ; $6bf4: $00
	xor c                                            ; $6bf5: $a9
	jr z, jr_030_6c00                                ; $6bf6: $28 $08

	or c                                             ; $6bf8: $b1
	ld hl, $0000                                     ; $6bf9: $21 $00 $00
	jr z, jr_030_6c06                                ; $6bfc: $28 $08

	or c                                             ; $6bfe: $b1
	ld h, c                                          ; $6bff: $61

jr_030_6c00:
	rst $38                                          ; $6c00: $ff
	ld [bc], a                                       ; $6c01: $02
	jr z, @+$0a                                      ; $6c02: $28 $08

	or c                                             ; $6c04: $b1
	ld h, c                                          ; $6c05: $61

jr_030_6c06:
	rst $38                                          ; $6c06: $ff
	inc bc                                           ; $6c07: $03
	jr z, @+$0a                                      ; $6c08: $28 $08

	ld a, [hl+]                                      ; $6c0a: $2a
	ld [$082c], sp                                   ; $6c0b: $08 $2c $08
	sub [hl]                                         ; $6c0e: $96
	rst $38                                          ; $6c0f: $ff
	ld [bc], a                                       ; $6c10: $02
	jr nz, jr_030_6c1b                               ; $6c11: $20 $08

	or c                                             ; $6c13: $b1
	ld hl, $0000                                     ; $6c14: $21 $00 $00
	jr nz, jr_030_6c21                               ; $6c17: $20 $08

	or c                                             ; $6c19: $b1
	add c                                            ; $6c1a: $81

jr_030_6c1b:
	rst $38                                          ; $6c1b: $ff
	ld [bc], a                                       ; $6c1c: $02
	jr nz, jr_030_6c27                               ; $6c1d: $20 $08

	or c                                             ; $6c1f: $b1
	ld h, c                                          ; $6c20: $61

jr_030_6c21:
	rst $38                                          ; $6c21: $ff
	inc bc                                           ; $6c22: $03
	dec h                                            ; $6c23: $25
	ld [$23c7], sp                                   ; $6c24: $08 $c7 $23

jr_030_6c27:
	ld [$25c8], sp                                   ; $6c27: $08 $c8 $25
	ld [$c1b5], sp                                   ; $6c2a: $08 $b5 $c1
	ld [bc], a                                       ; $6c2d: $02
	rst $38                                          ; $6c2e: $ff
	ld bc, $08be                                     ; $6c2f: $01 $be $08
	add hl, de                                       ; $6c32: $19
	inc e                                            ; $6c33: $1c
	ld e, $20                                        ; $6c34: $1e $20
	inc e                                            ; $6c36: $1c
	jr nz, @-$40                                     ; $6c37: $20 $be

	or c                                             ; $6c39: $b1
	pop de                                           ; $6c3a: $d1
	rst $38                                          ; $6c3b: $ff
	rlca                                             ; $6c3c: $07
	ld a, [hl]                                       ; $6c3d: $7e
	ld bc, $a100                                     ; $6c3e: $01 $00 $a1
	ld e, $30                                        ; $6c41: $1e $30
	cp $ff                                           ; $6c43: $fe $ff
	cp [hl]                                          ; $6c45: $be
	inc bc                                           ; $6c46: $03
	dec c                                            ; $6c47: $0d
	ld c, $0f                                        ; $6c48: $0e $0f
	db $10                                           ; $6c4a: $10
	ld de, $1312                                     ; $6c4b: $11 $12 $13
	inc d                                            ; $6c4e: $14
	cp [hl]                                          ; $6c4f: $be
	db $fd                                           ; $6c50: $fd
	ret nc                                           ; $6c51: $d0

	ld [hl], e                                       ; $6c52: $73
	cp $91                                           ; $6c53: $fe $91
	sub [hl]                                         ; $6c55: $96
	rst $38                                          ; $6c56: $ff
	ld bc, $017e                                     ; $6c57: $01 $7e $01
	nop                                              ; $6c5a: $00
	and b                                            ; $6c5b: $a0
	ei                                               ; $6c5c: $fb
	rst GetHLinHL                                          ; $6c5d: $cf
	ld e, $08                                        ; $6c5e: $1e $08
	or c                                             ; $6c60: $b1
	ld sp, $0000                                     ; $6c61: $31 $00 $00
	ld e, $08                                        ; $6c64: $1e $08
	or c                                             ; $6c66: $b1
	pop bc                                           ; $6c67: $c1
	rst $38                                          ; $6c68: $ff
	ld bc, $081e                                     ; $6c69: $01 $1e $08
	or c                                             ; $6c6c: $b1
	pop de                                           ; $6c6d: $d1
	rst $38                                          ; $6c6e: $ff
	ld bc, $081e                                     ; $6c6f: $01 $1e $08
	adc $20                                          ; $6c72: $ce $20
	ld [$21cf], sp                                   ; $6c74: $08 $cf $21
	ld [$02fb], sp                                   ; $6c77: $08 $fb $02
	or c                                             ; $6c7a: $b1
	pop af                                           ; $6c7b: $f1
	rst $38                                          ; $6c7c: $ff
	ld bc, $08be                                     ; $6c7d: $01 $be $08
	ld e, $20                                        ; $6c80: $1e $20
	ld hl, $201e                                     ; $6c82: $21 $1e $20
	ld hl, $7ebe                                     ; $6c85: $21 $be $7e
	ld bc, $a00c                                     ; $6c88: $01 $0c $a0
	or c                                             ; $6c8b: $b1
	pop de                                           ; $6c8c: $d1
	rst $38                                          ; $6c8d: $ff
	rlca                                             ; $6c8e: $07
	ld e, $24                                        ; $6c8f: $1e $24
	or c                                             ; $6c91: $b1
	ld sp, $0000                                     ; $6c92: $31 $00 $00
	ld a, [hl]                                       ; $6c95: $7e
	ld bc, $a000                                     ; $6c96: $01 $00 $a0
	ld e, $0c                                        ; $6c99: $1e $0c
	sub c                                            ; $6c9b: $91
	sub [hl]                                         ; $6c9c: $96
	rst $38                                          ; $6c9d: $ff
	ld bc, $017e                                     ; $6c9e: $01 $7e $01
	nop                                              ; $6ca1: $00
	and b                                            ; $6ca2: $a0
	ei                                               ; $6ca3: $fb
	rst GetHLinHL                                          ; $6ca4: $cf
	jr nz, jr_030_6caf                               ; $6ca5: $20 $08

	or c                                             ; $6ca7: $b1
	ld sp, $0000                                     ; $6ca8: $31 $00 $00
	jr nz, @+$0a                                     ; $6cab: $20 $08

	or c                                             ; $6cad: $b1
	pop bc                                           ; $6cae: $c1

jr_030_6caf:
	rst $38                                          ; $6caf: $ff
	ld bc, $0820                                     ; $6cb0: $01 $20 $08
	call z, $0820                                    ; $6cb3: $cc $20 $08
	adc $21                                          ; $6cb6: $ce $21
	ld [$23cf], sp                                   ; $6cb8: $08 $cf $23
	ld [$02fb], sp                                   ; $6cbb: $08 $fb $02
	or c                                             ; $6cbe: $b1
	pop de                                           ; $6cbf: $d1
	rst $38                                          ; $6cc0: $ff
	ld bc, $0820                                     ; $6cc1: $01 $20 $08
	ld hl, $2308                                     ; $6cc4: $21 $08 $23
	ld [$007e], sp                                   ; $6cc7: $08 $7e $00
	ld h, $08                                        ; $6cca: $26 $08
	dec h                                            ; $6ccc: $25
	ld [$0823], sp                                   ; $6ccd: $08 $23 $08
	ld a, [hl]                                       ; $6cd0: $7e
	ld bc, $a00c                                     ; $6cd1: $01 $0c $a0
	or c                                             ; $6cd4: $b1
	pop bc                                           ; $6cd5: $c1
	rst $38                                          ; $6cd6: $ff
	rlca                                             ; $6cd7: $07
	dec h                                            ; $6cd8: $25
	inc h                                            ; $6cd9: $24
	ld a, [hl]                                       ; $6cda: $7e
	ld bc, $a000                                     ; $6cdb: $01 $00 $a0
	or c                                             ; $6cde: $b1
	ld sp, $0000                                     ; $6cdf: $31 $00 $00
	dec h                                            ; $6ce2: $25
	inc c                                            ; $6ce3: $0c
	sub c                                            ; $6ce4: $91
	ld a, l                                          ; $6ce5: $7d
	ld [bc], a                                       ; $6ce6: $02
	sub [hl]                                         ; $6ce7: $96
	rst $38                                          ; $6ce8: $ff
	ld bc, $017e                                     ; $6ce9: $01 $7e $01
	nop                                              ; $6cec: $00
	and b                                            ; $6ced: $a0
	ei                                               ; $6cee: $fb
	rst GetHLinHL                                          ; $6cef: $cf
	ld e, $08                                        ; $6cf0: $1e $08
	or c                                             ; $6cf2: $b1
	ld sp, $0000                                     ; $6cf3: $31 $00 $00
	ld e, $08                                        ; $6cf6: $1e $08
	or c                                             ; $6cf8: $b1
	or c                                             ; $6cf9: $b1
	rst $38                                          ; $6cfa: $ff
	ld [bc], a                                       ; $6cfb: $02
	ld e, $08                                        ; $6cfc: $1e $08
	or c                                             ; $6cfe: $b1
	pop bc                                           ; $6cff: $c1
	rst $38                                          ; $6d00: $ff
	ld bc, $081e                                     ; $6d01: $01 $1e $08
	call $0820                                       ; $6d04: $cd $20 $08
	adc $21                                          ; $6d07: $ce $21
	ld [$02fb], sp                                   ; $6d09: $08 $fb $02
	or c                                             ; $6d0c: $b1
	pop af                                           ; $6d0d: $f1
	rst $38                                          ; $6d0e: $ff
	ld bc, $08be                                     ; $6d0f: $01 $be $08
	ld e, $20                                        ; $6d12: $1e $20
	ld hl, $201e                                     ; $6d14: $21 $1e $20
	ld hl, $7ebe                                     ; $6d17: $21 $be $7e
	ld bc, $a00c                                     ; $6d1a: $01 $0c $a0

jr_030_6d1d:
	or c                                             ; $6d1d: $b1
	pop de                                           ; $6d1e: $d1
	rst $38                                          ; $6d1f: $ff
	rlca                                             ; $6d20: $07
	ld e, $24                                        ; $6d21: $1e $24
	ld a, [hl]                                       ; $6d23: $7e
	ld bc, $a000                                     ; $6d24: $01 $00 $a0
	or c                                             ; $6d27: $b1
	ld sp, $0000                                     ; $6d28: $31 $00 $00
	ld e, $0c                                        ; $6d2b: $1e $0c
	or l                                             ; $6d2d: $b5
	pop af                                           ; $6d2e: $f1
	ld bc, $01ff                                     ; $6d2f: $01 $ff $01
	ld a, l                                          ; $6d32: $7d
	ld [bc], a                                       ; $6d33: $02
	ld a, [hl]                                       ; $6d34: $7e
	ld bc, $a000                                     ; $6d35: $01 $00 $a0
	jr nz, jr_030_6d42                               ; $6d38: $20 $08

	or c                                             ; $6d3a: $b1
	ld sp, $0000                                     ; $6d3b: $31 $00 $00
	jr nz, jr_030_6d48                               ; $6d3e: $20 $08

	or c                                             ; $6d40: $b1
	or c                                             ; $6d41: $b1

jr_030_6d42:
	rst $38                                          ; $6d42: $ff
	ld [bc], a                                       ; $6d43: $02
	jr nz, @+$0a                                     ; $6d44: $20 $08

	or c                                             ; $6d46: $b1
	pop bc                                           ; $6d47: $c1

jr_030_6d48:
	rst $38                                          ; $6d48: $ff
	ld bc, $0820                                     ; $6d49: $01 $20 $08
	call $0821                                       ; $6d4c: $cd $21 $08
	adc $23                                          ; $6d4f: $ce $23
	ld [$f1b1], sp                                   ; $6d51: $08 $b1 $f1
	rst $38                                          ; $6d54: $ff
	ld bc, $08be                                     ; $6d55: $01 $be $08
	add hl, de                                       ; $6d58: $19
	inc e                                            ; $6d59: $1c
	ld e, $20                                        ; $6d5a: $1e $20
	inc e                                            ; $6d5c: $1c
	jr nz, jr_030_6d1d                               ; $6d5d: $20 $be

	or c                                             ; $6d5f: $b1
	pop de                                           ; $6d60: $d1
	rst $38                                          ; $6d61: $ff
	rlca                                             ; $6d62: $07
	ld e, $30                                        ; $6d63: $1e $30
	or c                                             ; $6d65: $b1
	ld sp, $0000                                     ; $6d66: $31 $00 $00
	ld e, $30                                        ; $6d69: $1e $30
	cp $ff                                           ; $6d6b: $fe $ff
	ret nc                                           ; $6d6d: $d0

	ld [hl], e                                       ; $6d6e: $73
	cp $7f                                           ; $6d6f: $fe $7f
	dec h                                            ; $6d71: $25
	db $fd                                           ; $6d72: $fd
	db $f4                                           ; $6d73: $f4
	ld l, l                                          ; $6d74: $6d
	db $fd                                           ; $6d75: $fd
	db $f4                                           ; $6d76: $f4
	ld l, l                                          ; $6d77: $6d
	db $fd                                           ; $6d78: $fd
	db $f4                                           ; $6d79: $f4
	ld l, l                                          ; $6d7a: $6d
	db $fd                                           ; $6d7b: $fd
	db $f4                                           ; $6d7c: $f4
	ld l, l                                          ; $6d7d: $6d
	db $fd                                           ; $6d7e: $fd
	db $f4                                           ; $6d7f: $f4
	ld l, l                                          ; $6d80: $6d
	db $fd                                           ; $6d81: $fd
	db $f4                                           ; $6d82: $f4
	ld l, l                                          ; $6d83: $6d
	db $fd                                           ; $6d84: $fd
	db $f4                                           ; $6d85: $f4
	ld l, l                                          ; $6d86: $6d
	jp nz, $161e                                     ; $6d87: $c2 $1e $16

	call nz, $021e                                   ; $6d8a: $c4 $1e $02
	ld a, a                                          ; $6d8d: $7f
	dec h                                            ; $6d8e: $25
	ld [hl], d                                       ; $6d8f: $72
	db $fd                                           ; $6d90: $fd
	db $f4                                           ; $6d91: $f4
	ld l, l                                          ; $6d92: $6d
	db $fd                                           ; $6d93: $fd
	db $f4                                           ; $6d94: $f4
	ld l, l                                          ; $6d95: $6d
	db $fd                                           ; $6d96: $fd
	db $f4                                           ; $6d97: $f4
	ld l, l                                          ; $6d98: $6d
	db $fd                                           ; $6d99: $fd
	db $f4                                           ; $6d9a: $f4
	ld l, l                                          ; $6d9b: $6d
	db $fd                                           ; $6d9c: $fd
	db $f4                                           ; $6d9d: $f4
	ld l, l                                          ; $6d9e: $6d
	db $fd                                           ; $6d9f: $fd
	db $f4                                           ; $6da0: $f4
	ld l, l                                          ; $6da1: $6d
	ld [hl], c                                       ; $6da2: $71
	db $fd                                           ; $6da3: $fd
	db $f4                                           ; $6da4: $f4
	ld l, l                                          ; $6da5: $6d
	ld [hl], b                                       ; $6da6: $70
	jp nz, $1619                                     ; $6da7: $c2 $19 $16

	call nz, $0219                                   ; $6daa: $c4 $19 $02
	ld a, a                                          ; $6dad: $7f
	dec h                                            ; $6dae: $25
	db $fd                                           ; $6daf: $fd
	db $f4                                           ; $6db0: $f4
	ld l, l                                          ; $6db1: $6d
	db $fd                                           ; $6db2: $fd
	db $f4                                           ; $6db3: $f4
	ld l, l                                          ; $6db4: $6d
	db $fd                                           ; $6db5: $fd
	db $f4                                           ; $6db6: $f4
	ld l, l                                          ; $6db7: $6d
	db $fd                                           ; $6db8: $fd
	db $f4                                           ; $6db9: $f4
	ld l, l                                          ; $6dba: $6d
	db $fd                                           ; $6dbb: $fd
	db $f4                                           ; $6dbc: $f4
	ld l, l                                          ; $6dbd: $6d
	db $fd                                           ; $6dbe: $fd
	db $f4                                           ; $6dbf: $f4
	ld l, l                                          ; $6dc0: $6d
	db $fd                                           ; $6dc1: $fd
	db $f4                                           ; $6dc2: $f4
	ld l, l                                          ; $6dc3: $6d
	jp nz, $161e                                     ; $6dc4: $c2 $1e $16

	call nz, $021e                                   ; $6dc7: $c4 $1e $02
	ld a, a                                          ; $6dca: $7f
	dec h                                            ; $6dcb: $25
	ld [hl], d                                       ; $6dcc: $72
	db $fd                                           ; $6dcd: $fd
	db $f4                                           ; $6dce: $f4
	ld l, l                                          ; $6dcf: $6d
	db $fd                                           ; $6dd0: $fd
	db $f4                                           ; $6dd1: $f4
	ld l, l                                          ; $6dd2: $6d
	db $fd                                           ; $6dd3: $fd
	db $f4                                           ; $6dd4: $f4
	ld l, l                                          ; $6dd5: $6d
	db $fd                                           ; $6dd6: $fd
	db $f4                                           ; $6dd7: $f4
	ld l, l                                          ; $6dd8: $6d
	ld [hl], b                                       ; $6dd9: $70
	jp nz, $141e                                     ; $6dda: $c2 $1e $14

	call nz, $041e                                   ; $6ddd: $c4 $1e $04
	jp nz, $141c                                     ; $6de0: $c2 $1c $14

	call nz, $041c                                   ; $6de3: $c4 $1c $04
	jp nz, $141b                                     ; $6de6: $c2 $1b $14

	call nz, $041b                                   ; $6de9: $c4 $1b $04
	jp nz, $1419                                     ; $6dec: $c2 $19 $14

	call nz, $0419                                   ; $6def: $c4 $19 $04
	cp $ff                                           ; $6df2: $fe $ff
	jp nz, $1ed1                                     ; $6df4: $c2 $d1 $1e

	ld a, [bc]                                       ; $6df7: $0a
	call nz, $1ed1                                   ; $6df8: $c4 $d1 $1e
	rlca                                             ; $6dfb: $07
	add $d1                                          ; $6dfc: $c6 $d1
	ld e, $07                                        ; $6dfe: $1e $07
	db $fd                                           ; $6e00: $fd
	ret nc                                           ; $6e01: $d0

	ld [hl], e                                       ; $6e02: $73
	cp $0b                                           ; $6e03: $fe $0b
	jr jr_030_6e12                                   ; $6e05: $18 $0b

	jr @+$0d                                         ; $6e07: $18 $0b

	jr jr_030_6e16                                   ; $6e09: $18 $0b

	ld [$080d], sp                                   ; $6e0b: $08 $0d $08
	dec c                                            ; $6e0e: $0d
	ld [$180b], sp                                   ; $6e0f: $08 $0b $18

jr_030_6e12:
	cp [hl]                                          ; $6e12: $be
	ld [$0d0b], sp                                   ; $6e13: $08 $0b $0d

jr_030_6e16:
	dec c                                            ; $6e16: $0d
	dec bc                                           ; $6e17: $0b
	dec c                                            ; $6e18: $0d
	dec c                                            ; $6e19: $0d
	cp [hl]                                          ; $6e1a: $be
	cp [hl]                                          ; $6e1b: $be
	inc bc                                           ; $6e1c: $03
	dec bc                                           ; $6e1d: $0b
	dec c                                            ; $6e1e: $0d
	dec c                                            ; $6e1f: $0d
	dec c                                            ; $6e20: $0d
	dec c                                            ; $6e21: $0d
	dec c                                            ; $6e22: $0d
	dec c                                            ; $6e23: $0d
	dec c                                            ; $6e24: $0d
	cp [hl]                                          ; $6e25: $be
	dec bc                                           ; $6e26: $0b
	jr jr_030_6e34                                   ; $6e27: $18 $0b

	ld [$080d], sp                                   ; $6e29: $08 $0d $08
	dec c                                            ; $6e2c: $0d
	ld [$180b], sp                                   ; $6e2d: $08 $0b $18
	dec bc                                           ; $6e30: $0b
	ld [$080d], sp                                   ; $6e31: $08 $0d $08

jr_030_6e34:
	dec c                                            ; $6e34: $0d
	ld [$08be], sp                                   ; $6e35: $08 $be $08
	dec bc                                           ; $6e38: $0b
	dec c                                            ; $6e39: $0d
	dec c                                            ; $6e3a: $0d
	dec bc                                           ; $6e3b: $0b
	dec c                                            ; $6e3c: $0d
	dec c                                            ; $6e3d: $0d
	dec bc                                           ; $6e3e: $0b
	dec c                                            ; $6e3f: $0d
	dec c                                            ; $6e40: $0d
	cp [hl]                                          ; $6e41: $be
	cp [hl]                                          ; $6e42: $be
	inc bc                                           ; $6e43: $03
	dec bc                                           ; $6e44: $0b
	dec c                                            ; $6e45: $0d
	dec c                                            ; $6e46: $0d
	dec c                                            ; $6e47: $0d
	dec c                                            ; $6e48: $0d
	dec c                                            ; $6e49: $0d
	dec c                                            ; $6e4a: $0d
	dec c                                            ; $6e4b: $0d
	cp [hl]                                          ; $6e4c: $be

jr_030_6e4d:
	dec bc                                           ; $6e4d: $0b
	ld [$080d], sp                                   ; $6e4e: $08 $0d $08
	dec c                                            ; $6e51: $0d
	ld [$100b], sp                                   ; $6e52: $08 $0b $10
	cp [hl]                                          ; $6e55: $be
	ld [$0b0c], sp                                   ; $6e56: $08 $0c $0b
	dec c                                            ; $6e59: $0d
	dec c                                            ; $6e5a: $0d
	cp [hl]                                          ; $6e5b: $be
	dec bc                                           ; $6e5c: $0b
	db $10                                           ; $6e5d: $10
	dec c                                            ; $6e5e: $0d
	ld [$08be], sp                                   ; $6e5f: $08 $be $08
	dec bc                                           ; $6e62: $0b
	dec c                                            ; $6e63: $0d
	dec c                                            ; $6e64: $0d
	dec bc                                           ; $6e65: $0b
	dec c                                            ; $6e66: $0d
	dec bc                                           ; $6e67: $0b
	dec bc                                           ; $6e68: $0b
	dec c                                            ; $6e69: $0d
	dec c                                            ; $6e6a: $0d
	cp [hl]                                          ; $6e6b: $be
	cp [hl]                                          ; $6e6c: $be
	inc bc                                           ; $6e6d: $03
	dec bc                                           ; $6e6e: $0b
	dec c                                            ; $6e6f: $0d
	dec c                                            ; $6e70: $0d
	dec c                                            ; $6e71: $0d
	dec c                                            ; $6e72: $0d
	dec c                                            ; $6e73: $0d
	dec c                                            ; $6e74: $0d
	dec c                                            ; $6e75: $0d
	cp [hl]                                          ; $6e76: $be
	dec bc                                           ; $6e77: $0b
	db $10                                           ; $6e78: $10
	dec c                                            ; $6e79: $0d
	ld [$100b], sp                                   ; $6e7a: $08 $0b $10
	cp [hl]                                          ; $6e7d: $be
	ld [$0b0d], sp                                   ; $6e7e: $08 $0d $0b
	dec c                                            ; $6e81: $0d
	dec c                                            ; $6e82: $0d
	cp [hl]                                          ; $6e83: $be
	dec bc                                           ; $6e84: $0b
	db $10                                           ; $6e85: $10
	dec c                                            ; $6e86: $0d
	ld [$1814], sp                                   ; $6e87: $08 $14 $18
	inc d                                            ; $6e8a: $14
	jr jr_030_6ea1                                   ; $6e8b: $18 $14

	jr jr_030_6e4d                                   ; $6e8d: $18 $be

	inc bc                                           ; $6e8f: $03
	dec c                                            ; $6e90: $0d
	dec c                                            ; $6e91: $0d
	dec c                                            ; $6e92: $0d
	dec c                                            ; $6e93: $0d
	dec c                                            ; $6e94: $0d
	dec c                                            ; $6e95: $0d
	dec c                                            ; $6e96: $0d
	dec c                                            ; $6e97: $0d
	cp [hl]                                          ; $6e98: $be
	cp $ff                                           ; $6e99: $fe $ff
	ret nc                                           ; $6e9b: $d0

	ld [hl], e                                       ; $6e9c: $73
	cp $d2                                           ; $6e9d: $fe $d2
	sub d                                            ; $6e9f: $92
	nop                                              ; $6ea0: $00

jr_030_6ea1:
	ld [de], a                                       ; $6ea1: $12
	ld a, [hl]                                       ; $6ea2: $7e
	dec e                                            ; $6ea3: $1d
	nop                                              ; $6ea4: $00
	xor d                                            ; $6ea5: $aa
	ld h, e                                          ; $6ea6: $63
	db $fd                                           ; $6ea7: $fd
	pop hl                                           ; $6ea8: $e1
	ld l, [hl]                                       ; $6ea9: $6e
	db $fd                                           ; $6eaa: $fd
	pop hl                                           ; $6eab: $e1
	ld l, [hl]                                       ; $6eac: $6e
	db $fd                                           ; $6ead: $fd
	rst AddAOntoHL                                          ; $6eae: $ef
	ld l, [hl]                                       ; $6eaf: $6e
	db $fd                                           ; $6eb0: $fd
	rst AddAOntoHL                                          ; $6eb1: $ef
	ld l, [hl]                                       ; $6eb2: $6e
	db $fd                                           ; $6eb3: $fd
	db $fd                                           ; $6eb4: $fd
	ld l, [hl]                                       ; $6eb5: $6e
	db $fd                                           ; $6eb6: $fd
	db $fd                                           ; $6eb7: $fd
	ld l, [hl]                                       ; $6eb8: $6e
	db $fd                                           ; $6eb9: $fd
	pop hl                                           ; $6eba: $e1
	ld l, [hl]                                       ; $6ebb: $6e
	db $fd                                           ; $6ebc: $fd
	pop hl                                           ; $6ebd: $e1
	ld l, [hl]                                       ; $6ebe: $6e
	db $fd                                           ; $6ebf: $fd
	dec bc                                           ; $6ec0: $0b
	ld l, a                                          ; $6ec1: $6f
	db $fd                                           ; $6ec2: $fd
	dec bc                                           ; $6ec3: $0b
	ld l, a                                          ; $6ec4: $6f
	db $fd                                           ; $6ec5: $fd
	add hl, de                                       ; $6ec6: $19
	ld l, a                                          ; $6ec7: $6f
	db $fd                                           ; $6ec8: $fd
	add hl, de                                       ; $6ec9: $19
	ld l, a                                          ; $6eca: $6f
	db $fd                                           ; $6ecb: $fd
	daa                                              ; $6ecc: $27
	ld l, a                                          ; $6ecd: $6f
	db $fd                                           ; $6ece: $fd
	daa                                              ; $6ecf: $27
	ld l, a                                          ; $6ed0: $6f
	db $fd                                           ; $6ed1: $fd
	pop hl                                           ; $6ed2: $e1
	ld l, [hl]                                       ; $6ed3: $6e
	cp [hl]                                          ; $6ed4: $be
	inc c                                            ; $6ed5: $0c
	add hl, de                                       ; $6ed6: $19
	dec e                                            ; $6ed7: $1d
	jr nz, @+$27                                     ; $6ed8: $20 $25

	add hl, hl                                       ; $6eda: $29
	dec h                                            ; $6edb: $25
	cp [hl]                                          ; $6edc: $be
	add hl, hl                                       ; $6edd: $29
	ld b, $fe                                        ; $6ede: $06 $fe
	rst $38                                          ; $6ee0: $ff
	pop de                                           ; $6ee1: $d1
	jp $0cbe                                         ; $6ee2: $c3 $be $0c


	add hl, de                                       ; $6ee5: $19
	dec e                                            ; $6ee6: $1d
	jr nz, @+$27                                     ; $6ee7: $20 $25

	add hl, hl                                       ; $6ee9: $29
	jr nz, jr_030_6f11                               ; $6eea: $20 $25

	add hl, hl                                       ; $6eec: $29
	cp [hl]                                          ; $6eed: $be
	db $fd                                           ; $6eee: $fd
	pop de                                           ; $6eef: $d1
	jp $0cbe                                         ; $6ef0: $c3 $be $0c


	add hl, de                                       ; $6ef3: $19
	dec de                                           ; $6ef4: $1b
	ld [hl+], a                                      ; $6ef5: $22
	daa                                              ; $6ef6: $27
	ld a, [hl+]                                      ; $6ef7: $2a
	ld [hl+], a                                      ; $6ef8: $22
	daa                                              ; $6ef9: $27
	ld a, [hl+]                                      ; $6efa: $2a
	cp [hl]                                          ; $6efb: $be
	db $fd                                           ; $6efc: $fd
	pop de                                           ; $6efd: $d1
	jp $0cbe                                         ; $6efe: $c3 $be $0c


	jr jr_030_6f1e                                   ; $6f01: $18 $1b

	jr nz, @+$29                                     ; $6f03: $20 $27

	ld a, [hl+]                                      ; $6f05: $2a
	jr nz, jr_030_6f2f                               ; $6f06: $20 $27

	ld a, [hl+]                                      ; $6f08: $2a
	cp [hl]                                          ; $6f09: $be
	db $fd                                           ; $6f0a: $fd
	pop de                                           ; $6f0b: $d1
	jp $0cbe                                         ; $6f0c: $c3 $be $0c


	add hl, de                                       ; $6f0f: $19
	dec e                                            ; $6f10: $1d

jr_030_6f11:
	ld [hl+], a                                      ; $6f11: $22
	add hl, hl                                       ; $6f12: $29
	ld l, $2e                                        ; $6f13: $2e $2e
	add hl, hl                                       ; $6f15: $29
	ld l, $be                                        ; $6f16: $2e $be
	db $fd                                           ; $6f18: $fd
	pop de                                           ; $6f19: $d1
	jp $0cbe                                         ; $6f1a: $c3 $be $0c


	add hl, de                                       ; $6f1d: $19

jr_030_6f1e:
	dec de                                           ; $6f1e: $1b
	rra                                              ; $6f1f: $1f
	ld [hl+], a                                      ; $6f20: $22
	daa                                              ; $6f21: $27
	rra                                              ; $6f22: $1f
	ld [hl+], a                                      ; $6f23: $22
	daa                                              ; $6f24: $27
	cp [hl]                                          ; $6f25: $be
	db $fd                                           ; $6f26: $fd
	pop de                                           ; $6f27: $d1
	jp $0cbe                                         ; $6f28: $c3 $be $0c


	jr jr_030_6f48                                   ; $6f2b: $18 $1b

	jr nz, jr_030_6f56                               ; $6f2d: $20 $27

jr_030_6f2f:
	inc l                                            ; $6f2f: $2c
	jr nz, jr_030_6f59                               ; $6f30: $20 $27

	inc l                                            ; $6f32: $2c
	cp [hl]                                          ; $6f33: $be
	db $fd                                           ; $6f34: $fd
	ret nc                                           ; $6f35: $d0

	ld [hl], e                                       ; $6f36: $73
	cp $d1                                           ; $6f37: $fe $d1
	sub d                                            ; $6f39: $92
	ld h, e                                          ; $6f3a: $63
	db $fd                                           ; $6f3b: $fd
	ld l, l                                          ; $6f3c: $6d
	ld l, a                                          ; $6f3d: $6f
	db $fd                                           ; $6f3e: $fd
	ld l, l                                          ; $6f3f: $6d
	ld l, a                                          ; $6f40: $6f
	db $fd                                           ; $6f41: $fd
	sbc a                                            ; $6f42: $9f
	ld l, a                                          ; $6f43: $6f
	db $fd                                           ; $6f44: $fd
	sbc a                                            ; $6f45: $9f
	ld l, a                                          ; $6f46: $6f
	db $fd                                           ; $6f47: $fd

jr_030_6f48:
	pop de                                           ; $6f48: $d1
	ld l, a                                          ; $6f49: $6f
	db $fd                                           ; $6f4a: $fd
	pop de                                           ; $6f4b: $d1
	ld l, a                                          ; $6f4c: $6f
	db $fd                                           ; $6f4d: $fd
	ld l, l                                          ; $6f4e: $6d
	ld l, a                                          ; $6f4f: $6f
	db $fd                                           ; $6f50: $fd
	ld l, l                                          ; $6f51: $6d
	ld l, a                                          ; $6f52: $6f
	db $fd                                           ; $6f53: $fd
	inc bc                                           ; $6f54: $03
	ld [hl], b                                       ; $6f55: $70

jr_030_6f56:
	db $fd                                           ; $6f56: $fd
	inc bc                                           ; $6f57: $03
	ld [hl], b                                       ; $6f58: $70

jr_030_6f59:
	db $fd                                           ; $6f59: $fd
	dec [hl]                                         ; $6f5a: $35
	ld [hl], b                                       ; $6f5b: $70
	db $fd                                           ; $6f5c: $fd
	dec [hl]                                         ; $6f5d: $35
	ld [hl], b                                       ; $6f5e: $70
	db $fd                                           ; $6f5f: $fd
	ld h, a                                          ; $6f60: $67
	ld [hl], b                                       ; $6f61: $70
	db $fd                                           ; $6f62: $fd
	ld h, a                                          ; $6f63: $67
	ld [hl], b                                       ; $6f64: $70
	db $fd                                           ; $6f65: $fd
	ld l, l                                          ; $6f66: $6d
	ld l, a                                          ; $6f67: $6f
	db $fd                                           ; $6f68: $fd
	ld l, l                                          ; $6f69: $6d
	ld l, a                                          ; $6f6a: $6f
	cp $ff                                           ; $6f6b: $fe $ff
	pop de                                           ; $6f6d: $d1
	call z, $0619                                    ; $6f6e: $cc $19 $06
	call nz, $0619                                   ; $6f71: $c4 $19 $06
	call z, $061d                                    ; $6f74: $cc $1d $06
	call nz, $061d                                   ; $6f77: $c4 $1d $06
	adc $20                                          ; $6f7a: $ce $20
	ld b, $c4                                        ; $6f7c: $06 $c4
	jr nz, jr_030_6f86                               ; $6f7e: $20 $06

	jp z, $0625                                      ; $6f80: $ca $25 $06

	call nz, $0625                                   ; $6f83: $c4 $25 $06

jr_030_6f86:
	rst JumpTable                                          ; $6f86: $c7
	add hl, hl                                       ; $6f87: $29
	ld b, $c2                                        ; $6f88: $06 $c2
	add hl, hl                                       ; $6f8a: $29
	ld b, $ce                                        ; $6f8b: $06 $ce
	jr nz, jr_030_6f95                               ; $6f8d: $20 $06

	jp nz, $0620                                     ; $6f8f: $c2 $20 $06

	jp z, $0625                                      ; $6f92: $ca $25 $06

jr_030_6f95:
	jp nz, $0625                                     ; $6f95: $c2 $25 $06

	rst JumpTable                                          ; $6f98: $c7
	add hl, hl                                       ; $6f99: $29
	ld b, $c2                                        ; $6f9a: $06 $c2
	add hl, hl                                       ; $6f9c: $29
	ld b, $fd                                        ; $6f9d: $06 $fd
	pop de                                           ; $6f9f: $d1
	call z, $0619                                    ; $6fa0: $cc $19 $06
	call nz, $0619                                   ; $6fa3: $c4 $19 $06
	adc $1b                                          ; $6fa6: $ce $1b
	ld b, $c4                                        ; $6fa8: $06 $c4
	dec de                                           ; $6faa: $1b
	ld b, $c9                                        ; $6fab: $06 $c9
	ld [hl+], a                                      ; $6fad: $22
	ld b, $c4                                        ; $6fae: $06 $c4
	ld [hl+], a                                      ; $6fb0: $22
	ld b, $c6                                        ; $6fb1: $06 $c6
	daa                                              ; $6fb3: $27
	ld b, $c2                                        ; $6fb4: $06 $c2
	daa                                              ; $6fb6: $27
	ld b, $c9                                        ; $6fb7: $06 $c9
	ld a, [hl+]                                      ; $6fb9: $2a
	ld b, $c2                                        ; $6fba: $06 $c2
	ld a, [hl+]                                      ; $6fbc: $2a
	ld b, $c9                                        ; $6fbd: $06 $c9
	ld [hl+], a                                      ; $6fbf: $22
	ld b, $c2                                        ; $6fc0: $06 $c2
	ld [hl+], a                                      ; $6fc2: $22
	ld b, $c6                                        ; $6fc3: $06 $c6
	daa                                              ; $6fc5: $27
	ld b, $c2                                        ; $6fc6: $06 $c2
	daa                                              ; $6fc8: $27
	ld b, $c9                                        ; $6fc9: $06 $c9
	ld a, [hl+]                                      ; $6fcb: $2a
	ld b, $c2                                        ; $6fcc: $06 $c2
	ld a, [hl+]                                      ; $6fce: $2a
	ld b, $fd                                        ; $6fcf: $06 $fd
	pop de                                           ; $6fd1: $d1
	call z, $0618                                    ; $6fd2: $cc $18 $06
	call nz, $0618                                   ; $6fd5: $c4 $18 $06
	adc $1b                                          ; $6fd8: $ce $1b
	ld b, $c4                                        ; $6fda: $06 $c4
	dec de                                           ; $6fdc: $1b
	ld b, $cb                                        ; $6fdd: $06 $cb
	jr nz, @+$08                                     ; $6fdf: $20 $06

	call nz, $0620                                   ; $6fe1: $c4 $20 $06
	push bc                                          ; $6fe4: $c5
	daa                                              ; $6fe5: $27
	ld b, $c2                                        ; $6fe6: $06 $c2
	daa                                              ; $6fe8: $27
	ld b, $c9                                        ; $6fe9: $06 $c9
	ld a, [hl+]                                      ; $6feb: $2a
	ld b, $c2                                        ; $6fec: $06 $c2
	ld a, [hl+]                                      ; $6fee: $2a
	ld b, $cb                                        ; $6fef: $06 $cb
	jr nz, @+$08                                     ; $6ff1: $20 $06

	call nz, $0620                                   ; $6ff3: $c4 $20 $06
	push bc                                          ; $6ff6: $c5
	daa                                              ; $6ff7: $27
	ld b, $c2                                        ; $6ff8: $06 $c2
	daa                                              ; $6ffa: $27
	ld b, $c9                                        ; $6ffb: $06 $c9
	ld a, [hl+]                                      ; $6ffd: $2a
	ld b, $c2                                        ; $6ffe: $06 $c2
	ld a, [hl+]                                      ; $7000: $2a
	ld b, $fd                                        ; $7001: $06 $fd
	pop de                                           ; $7003: $d1
	call z, $0619                                    ; $7004: $cc $19 $06
	call nz, $0619                                   ; $7007: $c4 $19 $06
	jp z, $061d                                      ; $700a: $ca $1d $06

	call nz, $061d                                   ; $700d: $c4 $1d $06
	ret                                              ; $7010: $c9


	ld [hl+], a                                      ; $7011: $22
	ld b, $c4                                        ; $7012: $06 $c4
	ld [hl+], a                                      ; $7014: $22
	ld b, $c7                                        ; $7015: $06 $c7
	add hl, hl                                       ; $7017: $29
	ld b, $c2                                        ; $7018: $06 $c2
	add hl, hl                                       ; $701a: $29
	ld b, $c7                                        ; $701b: $06 $c7
	ld l, $06                                        ; $701d: $2e $06
	jp nz, $062e                                     ; $701f: $c2 $2e $06

	ret                                              ; $7022: $c9


	ld [hl+], a                                      ; $7023: $22
	ld b, $c2                                        ; $7024: $06 $c2
	ld [hl+], a                                      ; $7026: $22
	ld b, $c7                                        ; $7027: $06 $c7
	add hl, hl                                       ; $7029: $29
	ld b, $c2                                        ; $702a: $06 $c2
	add hl, hl                                       ; $702c: $29
	ld b, $c7                                        ; $702d: $06 $c7
	ld l, $06                                        ; $702f: $2e $06
	jp nz, $062e                                     ; $7031: $c2 $2e $06

	db $fd                                           ; $7034: $fd
	pop de                                           ; $7035: $d1
	call z, $0619                                    ; $7036: $cc $19 $06
	call nz, $0619                                   ; $7039: $c4 $19 $06
	adc $1b                                          ; $703c: $ce $1b
	ld b, $c4                                        ; $703e: $06 $c4
	dec de                                           ; $7040: $1b
	ld b, $cc                                        ; $7041: $06 $cc
	rra                                              ; $7043: $1f
	ld b, $c4                                        ; $7044: $06 $c4
	rra                                              ; $7046: $1f
	ld b, $ca                                        ; $7047: $06 $ca
	ld [hl+], a                                      ; $7049: $22
	ld b, $c2                                        ; $704a: $06 $c2
	ld [hl+], a                                      ; $704c: $22
	ld b, $c6                                        ; $704d: $06 $c6
	daa                                              ; $704f: $27
	ld b, $c2                                        ; $7050: $06 $c2
	daa                                              ; $7052: $27
	ld b, $cc                                        ; $7053: $06 $cc
	rra                                              ; $7055: $1f
	ld b, $c2                                        ; $7056: $06 $c2
	rra                                              ; $7058: $1f
	ld b, $ca                                        ; $7059: $06 $ca
	ld [hl+], a                                      ; $705b: $22
	ld b, $c2                                        ; $705c: $06 $c2
	ld [hl+], a                                      ; $705e: $22
	ld b, $c6                                        ; $705f: $06 $c6
	daa                                              ; $7061: $27
	ld b, $c2                                        ; $7062: $06 $c2
	daa                                              ; $7064: $27
	ld b, $fd                                        ; $7065: $06 $fd
	pop de                                           ; $7067: $d1
	call z, $0618                                    ; $7068: $cc $18 $06
	call nz, $0618                                   ; $706b: $c4 $18 $06

jr_030_706e:
	adc $1b                                          ; $706e: $ce $1b
	ld b, $c4                                        ; $7070: $06 $c4
	dec de                                           ; $7072: $1b
	ld b, $ce                                        ; $7073: $06 $ce
	jr nz, @+$08                                     ; $7075: $20 $06

	call nz, $0620                                   ; $7077: $c4 $20 $06
	push bc                                          ; $707a: $c5
	daa                                              ; $707b: $27
	ld b, $c2                                        ; $707c: $06 $c2
	daa                                              ; $707e: $27
	ld b, $c8                                        ; $707f: $06 $c8

jr_030_7081:
	inc l                                            ; $7081: $2c
	ld b, $c2                                        ; $7082: $06 $c2
	inc l                                            ; $7084: $2c
	ld b, $ce                                        ; $7085: $06 $ce
	jr nz, @+$08                                     ; $7087: $20 $06

	jp nz, $0620                                     ; $7089: $c2 $20 $06

	push bc                                          ; $708c: $c5
	daa                                              ; $708d: $27
	ld b, $c2                                        ; $708e: $06 $c2
	daa                                              ; $7090: $27
	ld b, $c8                                        ; $7091: $06 $c8
	inc l                                            ; $7093: $2c
	ld b, $c2                                        ; $7094: $06 $c2
	inc l                                            ; $7096: $2c
	ld b, $fd                                        ; $7097: $06 $fd
	ret nc                                           ; $7099: $d0

	ld h, [hl]                                       ; $709a: $66
	cp $fb                                           ; $709b: $fe $fb
	call z, $9792                                    ; $709d: $cc $92 $97
	ld c, a                                          ; $70a0: $4f
	cp [hl]                                          ; $70a1: $be
	inc c                                            ; $70a2: $0c
	inc l                                            ; $70a3: $2c
	daa                                              ; $70a4: $27
	inc l                                            ; $70a5: $2c
	dec hl                                           ; $70a6: $2b
	cp [hl]                                          ; $70a7: $be
	jp nz, $0097                                     ; $70a8: $c2 $97 $00

	dec hl                                           ; $70ab: $2b
	inc c                                            ; $70ac: $0c
	sub a                                            ; $70ad: $97
	ld c, a                                          ; $70ae: $4f
	inc l                                            ; $70af: $2c
	inc c                                            ; $70b0: $0c
	sub a                                            ; $70b1: $97
	nop                                              ; $70b2: $00
	inc l                                            ; $70b3: $2c
	inc c                                            ; $70b4: $0c
	sub a                                            ; $70b5: $97
	ld c, a                                          ; $70b6: $4f
	add hl, hl                                       ; $70b7: $29
	inc c                                            ; $70b8: $0c
	push bc                                          ; $70b9: $c5
	sub a                                            ; $70ba: $97
	nop                                              ; $70bb: $00
	add hl, hl                                       ; $70bc: $29
	jr jr_030_7081                                   ; $70bd: $18 $c2

	add hl, hl                                       ; $70bf: $29
	inc c                                            ; $70c0: $0c
	sub a                                            ; $70c1: $97
	ccf                                              ; $70c2: $3f
	inc h                                            ; $70c3: $24
	ld b, $25                                        ; $70c4: $06 $25
	ld b, $97                                        ; $70c6: $06 $97
	ld c, a                                          ; $70c8: $4f
	cp [hl]                                          ; $70c9: $be
	inc c                                            ; $70ca: $0c
	add hl, hl                                       ; $70cb: $29
	dec h                                            ; $70cc: $25
	add hl, hl                                       ; $70cd: $29
	dec hl                                           ; $70ce: $2b
	cp [hl]                                          ; $70cf: $be
	ei                                               ; $70d0: $fb
	ld [bc], a                                       ; $70d1: $02
	sub a                                            ; $70d2: $97
	ccf                                              ; $70d3: $3f
	inc l                                            ; $70d4: $2c
	jr jr_030_706e                                   ; $70d5: $18 $97

	ld c, [hl]                                       ; $70d7: $4e
	jr nc, @+$0e                                     ; $70d8: $30 $0c

	sub a                                            ; $70da: $97
	ld c, l                                          ; $70db: $4d
	ld l, $0c                                        ; $70dc: $2e $0c
	sub a                                            ; $70de: $97
	nop                                              ; $70df: $00
	jp nz, $0c2e                                     ; $70e0: $c2 $2e $0c

	sub a                                            ; $70e3: $97
	ld c, h                                          ; $70e4: $4c
	jr nc, @+$0e                                     ; $70e5: $30 $0c

	sub a                                            ; $70e7: $97
	nop                                              ; $70e8: $00
	jp nz, $0c30                                     ; $70e9: $c2 $30 $0c

	sub a                                            ; $70ec: $97
	dec l                                            ; $70ed: $2d
	dec h                                            ; $70ee: $25
	inc c                                            ; $70ef: $0c
	ld a, l                                          ; $70f0: $7d
	ld bc, $4f97                                     ; $70f1: $01 $97 $4f
	add hl, hl                                       ; $70f4: $29
	inc c                                            ; $70f5: $0c
	sub a                                            ; $70f6: $97
	nop                                              ; $70f7: $00
	pop bc                                           ; $70f8: $c1
	add hl, hl                                       ; $70f9: $29
	inc c                                            ; $70fa: $0c
	jp nz, $0c29                                     ; $70fb: $c2 $29 $0c

	ld a, l                                          ; $70fe: $7d
	nop                                              ; $70ff: $00
	sub a                                            ; $7100: $97
	dec l                                            ; $7101: $2d
	jr nz, jr_030_7110                               ; $7102: $20 $0c

	sub a                                            ; $7104: $97
	ld c, a                                          ; $7105: $4f
	jr z, jr_030_7114                                ; $7106: $28 $0c

	sub a                                            ; $7108: $97
	nop                                              ; $7109: $00
	push bc                                          ; $710a: $c5
	jr z, jr_030_7119                                ; $710b: $28 $0c

	call nz, $0628                                   ; $710d: $c4 $28 $06

jr_030_7110:
	jp nz, $0628                                     ; $7110: $c2 $28 $06

	sub a                                            ; $7113: $97

jr_030_7114:
	dec l                                            ; $7114: $2d
	jr nz, jr_030_7123                               ; $7115: $20 $0c

	sub a                                            ; $7117: $97
	ld c, a                                          ; $7118: $4f

jr_030_7119:
	daa                                              ; $7119: $27
	inc c                                            ; $711a: $0c
	sub a                                            ; $711b: $97
	nop                                              ; $711c: $00
	add $27                                          ; $711d: $c6 $27
	ld c, $c2                                        ; $711f: $0e $c2
	daa                                              ; $7121: $27
	ld a, [bc]                                       ; $7122: $0a

jr_030_7123:
	sub a                                            ; $7123: $97
	ld c, h                                          ; $7124: $4c
	ld h, $0c                                        ; $7125: $26 $0c
	jp nz, $0097                                     ; $7127: $c2 $97 $00

	ld h, $0c                                        ; $712a: $26 $0c
	sub a                                            ; $712c: $97
	ld c, h                                          ; $712d: $4c
	dec h                                            ; $712e: $25
	inc c                                            ; $712f: $0c
	sub a                                            ; $7130: $97
	nop                                              ; $7131: $00
	jp nz, $0c25                                     ; $7132: $c2 $25 $0c

	sub a                                            ; $7135: $97
	ld c, h                                          ; $7136: $4c
	inc h                                            ; $7137: $24
	inc c                                            ; $7138: $0c
	sub a                                            ; $7139: $97
	nop                                              ; $713a: $00
	add $24                                          ; $713b: $c6 $24
	jr @-$3a                                         ; $713d: $18 $c4

	inc h                                            ; $713f: $24
	ld [$24c2], sp                                   ; $7140: $08 $c2 $24
	ld b, $b5                                        ; $7143: $06 $b5
	ld h, c                                          ; $7145: $61
	inc bc                                           ; $7146: $03
	rst $38                                          ; $7147: $ff
	inc bc                                           ; $7148: $03
	ld a, l                                          ; $7149: $7d
	ld bc, $0cbe                                     ; $714a: $01 $be $0c
	inc d                                            ; $714d: $14
	ld d, $19                                        ; $714e: $16 $19
	dec de                                           ; $7150: $1b
	cp [hl]                                          ; $7151: $be
	dec e                                            ; $7152: $1d
	ld a, [bc]                                       ; $7153: $0a
	sub a                                            ; $7154: $97
	nop                                              ; $7155: $00
	sub [hl]                                         ; $7156: $96
	nop                                              ; $7157: $00
	nop                                              ; $7158: $00
	ret                                              ; $7159: $c9


	sub d                                            ; $715a: $92
	add hl, de                                       ; $715b: $19
	ld d, $c3                                        ; $715c: $16 $c3
	add hl, de                                       ; $715e: $19
	ld [bc], a                                       ; $715f: $02
	ret                                              ; $7160: $c9


	add hl, de                                       ; $7161: $19
	ld a, [bc]                                       ; $7162: $0a
	jp $0219                                         ; $7163: $c3 $19 $02


	ret                                              ; $7166: $c9


	add hl, de                                       ; $7167: $19
	ld a, [bc]                                       ; $7168: $0a
	jp $0219                                         ; $7169: $c3 $19 $02


	ret                                              ; $716c: $c9


	ld d, $0a                                        ; $716d: $16 $0a
	jp $0216                                         ; $716f: $c3 $16 $02


	ret                                              ; $7172: $c9


	add hl, de                                       ; $7173: $19
	inc c                                            ; $7174: $0c
	jp $0c19                                         ; $7175: $c3 $19 $0c


	ret                                              ; $7178: $c9


	cp l                                             ; $7179: $bd
	ld [bc], a                                       ; $717a: $02
	add hl, de                                       ; $717b: $19
	inc c                                            ; $717c: $0c
	ld a, [bc]                                       ; $717d: $0a
	jp $0219                                         ; $717e: $c3 $19 $02


	ret                                              ; $7181: $c9


	inc d                                            ; $7182: $14
	ld a, [bc]                                       ; $7183: $0a
	call nz, $0214                                   ; $7184: $c4 $14 $02
	ret                                              ; $7187: $c9


	add hl, de                                       ; $7188: $19
	ld a, [bc]                                       ; $7189: $0a
	jp $0219                                         ; $718a: $c3 $19 $02


	ret                                              ; $718d: $c9


	jr jr_030_71a6                                   ; $718e: $18 $16

	jp $0218                                         ; $7190: $c3 $18 $02


	or c                                             ; $7193: $b1
	ld [hl], c                                       ; $7194: $71
	inc c                                            ; $7195: $0c
	inc bc                                           ; $7196: $03
	inc l                                            ; $7197: $2c
	inc c                                            ; $7198: $0c
	call z, Call_030_7ed3                            ; $7199: $cc $d3 $7e
	dec b                                            ; $719c: $05
	nop                                              ; $719d: $00
	xor c                                            ; $719e: $a9
	jr c, jr_030_71ad                                ; $719f: $38 $0c

	add $d1                                          ; $71a1: $c6 $d1
	ld a, [hl]                                       ; $71a3: $7e
	nop                                              ; $71a4: $00
	inc l                                            ; $71a5: $2c

jr_030_71a6:
	inc c                                            ; $71a6: $0c
	sub [hl]                                         ; $71a7: $96
	nop                                              ; $71a8: $00
	nop                                              ; $71a9: $00
	nop                                              ; $71aa: $00
	jr @-$35                                         ; $71ab: $18 $c9

jr_030_71ad:
	add hl, de                                       ; $71ad: $19
	ld d, $c3                                        ; $71ae: $16 $c3
	add hl, de                                       ; $71b0: $19
	ld [bc], a                                       ; $71b1: $02
	ret                                              ; $71b2: $c9


	add hl, de                                       ; $71b3: $19
	ld a, [bc]                                       ; $71b4: $0a
	jp $0219                                         ; $71b5: $c3 $19 $02


	ret                                              ; $71b8: $c9


	ld d, $0a                                        ; $71b9: $16 $0a
	jp $0216                                         ; $71bb: $c3 $16 $02


	ret                                              ; $71be: $c9


	dec de                                           ; $71bf: $1b
	ld a, [bc]                                       ; $71c0: $0a
	jp $021b                                         ; $71c1: $c3 $1b $02


	ret                                              ; $71c4: $c9


	add hl, de                                       ; $71c5: $19
	inc c                                            ; $71c6: $0c
	jp $0c19                                         ; $71c7: $c3 $19 $0c


	ret                                              ; $71ca: $c9


	ld d, $0a                                        ; $71cb: $16 $0a
	jp $0216                                         ; $71cd: $c3 $16 $02


	ret                                              ; $71d0: $c9


	add hl, de                                       ; $71d1: $19
	ld a, [bc]                                       ; $71d2: $0a
	jp $0219                                         ; $71d3: $c3 $19 $02


	ret                                              ; $71d6: $c9


	jr jr_030_71ef                                   ; $71d7: $18 $16

	jp $0218                                         ; $71d9: $c3 $18 $02


	or c                                             ; $71dc: $b1
	ld [hl], c                                       ; $71dd: $71
	inc c                                            ; $71de: $0c
	inc bc                                           ; $71df: $03
	inc l                                            ; $71e0: $2c
	inc c                                            ; $71e1: $0c
	call z, $7ed2                                    ; $71e2: $cc $d2 $7e
	dec b                                            ; $71e5: $05
	nop                                              ; $71e6: $00
	xor c                                            ; $71e7: $a9
	jr c, jr_030_71f6                                ; $71e8: $38 $0c

	add $d1                                          ; $71ea: $c6 $d1
	ld a, [hl]                                       ; $71ec: $7e
	nop                                              ; $71ed: $00
	inc l                                            ; $71ee: $2c

jr_030_71ef:
	inc c                                            ; $71ef: $0c
	or l                                             ; $71f0: $b5
	sub c                                            ; $71f1: $91
	ld [bc], a                                       ; $71f2: $02
	nop                                              ; $71f3: $00
	nop                                              ; $71f4: $00
	add hl, de                                       ; $71f5: $19

jr_030_71f6:
	ld d, $c3                                        ; $71f6: $16 $c3
	add hl, de                                       ; $71f8: $19
	ld [bc], a                                       ; $71f9: $02
	ret                                              ; $71fa: $c9


	add hl, de                                       ; $71fb: $19
	ld a, [bc]                                       ; $71fc: $0a
	jp $0219                                         ; $71fd: $c3 $19 $02


	ret                                              ; $7200: $c9


	add hl, de                                       ; $7201: $19
	inc c                                            ; $7202: $0c
	jp $0c19                                         ; $7203: $c3 $19 $0c


	ret                                              ; $7206: $c9


	inc e                                            ; $7207: $1c
	inc c                                            ; $7208: $0c
	jp $0c1c                                         ; $7209: $c3 $1c $0c


	ret                                              ; $720c: $c9


	cp l                                             ; $720d: $bd
	ld [bc], a                                       ; $720e: $02
	inc e                                            ; $720f: $1c
	inc c                                            ; $7210: $0c
	ld a, [bc]                                       ; $7211: $0a
	jp $021c                                         ; $7212: $c3 $1c $02


	ret                                              ; $7215: $c9


	inc e                                            ; $7216: $1c
	ld a, [bc]                                       ; $7217: $0a
	jp $021c                                         ; $7218: $c3 $1c $02


	ret                                              ; $721b: $c9


	inc e                                            ; $721c: $1c
	ld a, [bc]                                       ; $721d: $0a
	jp $021c                                         ; $721e: $c3 $1c $02


	ret                                              ; $7221: $c9


	dec de                                           ; $7222: $1b
	inc c                                            ; $7223: $0c
	jp $0c1b                                         ; $7224: $c3 $1b $0c


	ret                                              ; $7227: $c9


	dec de                                           ; $7228: $1b
	ld a, [bc]                                       ; $7229: $0a
	jp $021b                                         ; $722a: $c3 $1b $02


	ret                                              ; $722d: $c9


	ld a, [de]                                       ; $722e: $1a
	ld d, $c3                                        ; $722f: $16 $c3
	ld a, [de]                                       ; $7231: $1a
	ld [bc], a                                       ; $7232: $02
	ret                                              ; $7233: $c9


	dec de                                           ; $7234: $1b
	ld d, $c3                                        ; $7235: $16 $c3
	dec de                                           ; $7237: $1b
	ld [bc], a                                       ; $7238: $02
	ret                                              ; $7239: $c9


	dec de                                           ; $723a: $1b
	ld a, [bc]                                       ; $723b: $0a
	jp $021b                                         ; $723c: $c3 $1b $02


	ret                                              ; $723f: $c9


	dec de                                           ; $7240: $1b
	inc h                                            ; $7241: $24
	jp $181b                                         ; $7242: $c3 $1b $18


	ret z                                            ; $7245: $c8

	add hl, de                                       ; $7246: $19
	rla                                              ; $7247: $17
	jp $0d19                                         ; $7248: $c3 $19 $0d


	jp z, $2419                                      ; $724b: $ca $19 $24

	call nz, $0c19                                   ; $724e: $c4 $19 $0c
	jp $0c19                                         ; $7251: $c3 $19 $0c


	ei                                               ; $7254: $fb
	or l                                             ; $7255: $b5
	and c                                            ; $7256: $a1
	ld [bc], a                                       ; $7257: $02
	rst $38                                          ; $7258: $ff
	dec b                                            ; $7259: $05
	cp [hl]                                          ; $725a: $be
	inc c                                            ; $725b: $0c
	jr nz, @+$1d                                     ; $725c: $20 $1b

	jr nz, jr_030_727f                               ; $725e: $20 $1f

	cp [hl]                                          ; $7260: $be
	or c                                             ; $7261: $b1
	ld sp, $0000                                     ; $7262: $31 $00 $00
	rra                                              ; $7265: $1f
	inc c                                            ; $7266: $0c
	or c                                             ; $7267: $b1
	and c                                            ; $7268: $a1
	rst $38                                          ; $7269: $ff
	ld b, $20                                        ; $726a: $06 $20

jr_030_726c:
	inc c                                            ; $726c: $0c
	or c                                             ; $726d: $b1
	ld sp, $0000                                     ; $726e: $31 $00 $00
	jr nz, jr_030_727f                               ; $7271: $20 $0c

	ret z                                            ; $7273: $c8

	cp l                                             ; $7274: $bd
	ld [bc], a                                       ; $7275: $02
	dec e                                            ; $7276: $1d
	inc c                                            ; $7277: $0c
	jr @-$3a                                         ; $7278: $18 $c4

	dec e                                            ; $727a: $1d
	inc c                                            ; $727b: $0c
	jp nz, $0c1d                                     ; $727c: $c2 $1d $0c

jr_030_727f:
	or c                                             ; $727f: $b1
	and c                                            ; $7280: $a1
	rst $38                                          ; $7281: $ff
	dec b                                            ; $7282: $05
	cp [hl]                                          ; $7283: $be
	inc c                                            ; $7284: $0c
	dec e                                            ; $7285: $1d
	add hl, de                                       ; $7286: $19
	dec e                                            ; $7287: $1d
	rra                                              ; $7288: $1f
	cp [hl]                                          ; $7289: $be
	ei                                               ; $728a: $fb
	ld [bc], a                                       ; $728b: $02
	cp [hl]                                          ; $728c: $be
	inc c                                            ; $728d: $0c
	jr nz, jr_030_72ab                               ; $728e: $20 $1b

	inc h                                            ; $7290: $24
	ld [hl+], a                                      ; $7291: $22
	cp [hl]                                          ; $7292: $be
	or c                                             ; $7293: $b1
	ld sp, $0000                                     ; $7294: $31 $00 $00
	ld [hl+], a                                      ; $7297: $22

jr_030_7298:
	inc c                                            ; $7298: $0c
	or c                                             ; $7299: $b1
	add c                                            ; $729a: $81
	inc c                                            ; $729b: $0c
	rlca                                             ; $729c: $07
	inc h                                            ; $729d: $24
	inc c                                            ; $729e: $0c
	or c                                             ; $729f: $b1
	ld b, c                                          ; $72a0: $41
	nop                                              ; $72a1: $00
	nop                                              ; $72a2: $00
	inc h                                            ; $72a3: $24
	inc c                                            ; $72a4: $0c
	ret                                              ; $72a5: $c9


	cp l                                             ; $72a6: $bd
	ld [bc], a                                       ; $72a7: $02
	add hl, de                                       ; $72a8: $19
	inc c                                            ; $72a9: $0c
	inc c                                            ; $72aa: $0c

jr_030_72ab:
	add $19                                          ; $72ab: $c6 $19
	inc c                                            ; $72ad: $0c
	call nz, $1819                                   ; $72ae: $c4 $19 $18
	ret z                                            ; $72b1: $c8

	inc e                                            ; $72b2: $1c
	inc h                                            ; $72b3: $24
	jp $0c1c                                         ; $72b4: $c3 $1c $0c


	ret z                                            ; $72b7: $c8

	dec de                                           ; $72b8: $1b
	jr jr_030_726c                                   ; $72b9: $18 $b1

	ld sp, $0000                                     ; $72bb: $31 $00 $00

jr_030_72be:
	dec de                                           ; $72be: $1b
	inc c                                            ; $72bf: $0c
	ret z                                            ; $72c0: $c8

	ld a, [de]                                       ; $72c1: $1a
	inc c                                            ; $72c2: $0c
	call nz, $0c1a                                   ; $72c3: $c4 $1a $0c
	ret z                                            ; $72c6: $c8

	add hl, de                                       ; $72c7: $19
	inc c                                            ; $72c8: $0c
	jp $0c19                                         ; $72c9: $c3 $19 $0c


	add $bd                                          ; $72cc: $c6 $bd
	ld [bc], a                                       ; $72ce: $02
	jr @+$0e                                         ; $72cf: $18 $0c

	jr jr_030_7298                                   ; $72d1: $18 $c5

	jr jr_030_72ed                                   ; $72d3: $18 $18

	call nz, $0c18                                   ; $72d5: $c4 $18 $0c
	jp $0c18                                         ; $72d8: $c3 $18 $0c


	jp nz, $1818                                     ; $72db: $c2 $18 $18

	cp $ff                                           ; $72de: $fe $ff
	ret nc                                           ; $72e0: $d0

	ld h, [hl]                                       ; $72e1: $66
	cp $fb                                           ; $72e2: $fe $fb
	or l                                             ; $72e4: $b5
	add c                                            ; $72e5: $81
	ld [bc], a                                       ; $72e6: $02
	rst $38                                          ; $72e7: $ff
	dec b                                            ; $72e8: $05
	jr nc, jr_030_7303                               ; $72e9: $30 $18

	add $33                                          ; $72eb: $c6 $33

jr_030_72ed:
	inc c                                            ; $72ed: $0c
	ret z                                            ; $72ee: $c8

	ld l, $0c                                        ; $72ef: $2e $0c
	or c                                             ; $72f1: $b1
	ld sp, $0000                                     ; $72f2: $31 $00 $00
	ld l, $0c                                        ; $72f5: $2e $0c
	or c                                             ; $72f7: $b1
	ld [hl], c                                       ; $72f8: $71
	rst $38                                          ; $72f9: $ff
	dec b                                            ; $72fa: $05
	inc sp                                           ; $72fb: $33
	inc c                                            ; $72fc: $0c
	or c                                             ; $72fd: $b1
	ld sp, $0000                                     ; $72fe: $31 $00 $00
	inc sp                                           ; $7301: $33
	inc c                                            ; $7302: $0c

jr_030_7303:
	or c                                             ; $7303: $b1
	add c                                            ; $7304: $81
	sbc $05                                          ; $7305: $de $05
	cp l                                             ; $7307: $bd
	ld [bc], a                                       ; $7308: $02
	inc l                                            ; $7309: $2c
	inc c                                            ; $730a: $0c
	jr jr_030_72be                                   ; $730b: $18 $b1

	ld sp, $0000                                     ; $730d: $31 $00 $00
	inc l                                            ; $7310: $2c
	inc c                                            ; $7311: $0c
	or c                                             ; $7312: $b1
	add c                                            ; $7313: $81
	inc c                                            ; $7314: $0c
	inc bc                                           ; $7315: $03
	add hl, hl                                       ; $7316: $29
	inc c                                            ; $7317: $0c
	sub [hl]                                         ; $7318: $96
	inc c                                            ; $7319: $0c
	inc b                                            ; $731a: $04
	inc l                                            ; $731b: $2c
	inc c                                            ; $731c: $0c
	sub [hl]                                         ; $731d: $96
	inc c                                            ; $731e: $0c
	inc bc                                           ; $731f: $03
	add hl, hl                                       ; $7320: $29
	inc c                                            ; $7321: $0c
	sub [hl]                                         ; $7322: $96
	inc c                                            ; $7323: $0c
	dec b                                            ; $7324: $05
	inc l                                            ; $7325: $2c
	inc c                                            ; $7326: $0c
	ld l, $0c                                        ; $7327: $2e $0c
	ei                                               ; $7329: $fb
	ld [bc], a                                       ; $732a: $02
	sub [hl]                                         ; $732b: $96
	rst $38                                          ; $732c: $ff
	dec b                                            ; $732d: $05
	jr nc, jr_030_733c                               ; $732e: $30 $0c

	inc sp                                           ; $7330: $33
	inc c                                            ; $7331: $0c
	jr c, jr_030_7340                                ; $7332: $38 $0c

	ret z                                            ; $7334: $c8

	scf                                              ; $7335: $37
	inc c                                            ; $7336: $0c
	or c                                             ; $7337: $b1
	ld sp, $0000                                     ; $7338: $31 $00 $00
	scf                                              ; $733b: $37

jr_030_733c:
	inc c                                            ; $733c: $0c
	or c                                             ; $733d: $b1
	add c                                            ; $733e: $81
	rst $38                                          ; $733f: $ff

jr_030_7340:
	dec b                                            ; $7340: $05
	jr c, jr_030_734f                                ; $7341: $38 $0c

	or c                                             ; $7343: $b1
	ld sp, $0000                                     ; $7344: $31 $00 $00
	jr c, jr_030_7355                                ; $7347: $38 $0c

	or c                                             ; $7349: $b1

jr_030_734a:
	ld [hl], c                                       ; $734a: $71
	rst $38                                          ; $734b: $ff
	dec b                                            ; $734c: $05
	dec [hl]                                         ; $734d: $35
	inc c                                            ; $734e: $0c

jr_030_734f:
	add $35                                          ; $734f: $c6 $35
	inc c                                            ; $7351: $0c
	or c                                             ; $7352: $b1
	add c                                            ; $7353: $81
	inc c                                            ; $7354: $0c

jr_030_7355:
	inc b                                            ; $7355: $04
	add hl, hl                                       ; $7356: $29
	inc c                                            ; $7357: $0c
	inc l                                            ; $7358: $2c
	inc c                                            ; $7359: $0c
	ld l, $0c                                        ; $735a: $2e $0c
	sub [hl]                                         ; $735c: $96
	inc c                                            ; $735d: $0c
	ld [bc], a                                       ; $735e: $02
	cpl                                              ; $735f: $2f
	ld b, $b1                                        ; $7360: $06 $b1
	ld sp, $0000                                     ; $7362: $31 $00 $00
	cpl                                              ; $7365: $2f
	ld b, $b1                                        ; $7366: $06 $b1
	add c                                            ; $7368: $81
	inc c                                            ; $7369: $0c
	dec b                                            ; $736a: $05
	cpl                                              ; $736b: $2f
	inc c                                            ; $736c: $0c
	ld l, $0c                                        ; $736d: $2e $0c
	inc l                                            ; $736f: $2c
	inc c                                            ; $7370: $0c
	sub [hl]                                         ; $7371: $96
	jr jr_030_737a                                   ; $7372: $18 $06

	jr nc, jr_030_738e                               ; $7374: $30 $18

	sub [hl]                                         ; $7376: $96
	inc c                                            ; $7377: $0c
	inc b                                            ; $7378: $04
	inc l                                            ; $7379: $2c

jr_030_737a:
	inc c                                            ; $737a: $0c
	add hl, hl                                       ; $737b: $29
	inc c                                            ; $737c: $0c
	or c                                             ; $737d: $b1
	ld hl, $0000                                     ; $737e: $21 $00 $00
	add hl, hl                                       ; $7381: $29
	inc c                                            ; $7382: $0c
	or c                                             ; $7383: $b1
	add c                                            ; $7384: $81
	inc c                                            ; $7385: $0c

jr_030_7386:
	rlca                                             ; $7386: $07
	inc l                                            ; $7387: $2c
	inc c                                            ; $7388: $0c
	or c                                             ; $7389: $b1
	ld hl, $0000                                     ; $738a: $21 $00 $00
	inc l                                            ; $738d: $2c

jr_030_738e:
	inc c                                            ; $738e: $0c
	or c                                             ; $738f: $b1
	add c                                            ; $7390: $81
	inc h                                            ; $7391: $24
	dec b                                            ; $7392: $05
	cp l                                             ; $7393: $bd
	ld [bc], a                                       ; $7394: $02
	inc l                                            ; $7395: $2c
	inc c                                            ; $7396: $0c
	jr jr_030_734a                                   ; $7397: $18 $b1

	ld hl, $0000                                     ; $7399: $21 $00 $00
	inc l                                            ; $739c: $2c
	inc c                                            ; $739d: $0c

jr_030_739e:
	or l                                             ; $739e: $b5
	pop bc                                           ; $739f: $c1
	inc bc                                           ; $73a0: $03
	rst $38                                          ; $73a1: $ff
	ld [bc], a                                       ; $73a2: $02
	cp [hl]                                          ; $73a3: $be
	inc c                                            ; $73a4: $0c
	inc d                                            ; $73a5: $14
	ld d, $19                                        ; $73a6: $16 $19
	dec de                                           ; $73a8: $1b
	dec e                                            ; $73a9: $1d
	cp [hl]                                          ; $73aa: $be
	or l                                             ; $73ab: $b5
	pop de                                           ; $73ac: $d1
	inc bc                                           ; $73ad: $03
	rst $38                                          ; $73ae: $ff
	dec b                                            ; $73af: $05
	ld e, $18                                        ; $73b0: $1e $18
	sub [hl]                                         ; $73b2: $96
	inc c                                            ; $73b3: $0c
	ld b, $1d                                        ; $73b4: $06 $1d
	inc c                                            ; $73b6: $0c
	ld e, $0c                                        ; $73b7: $1e $0c
	or c                                             ; $73b9: $b1

jr_030_73ba:
	ld de, $0000                                     ; $73ba: $11 $00 $00
	ld e, $0c                                        ; $73bd: $1e $0c
	or c                                             ; $73bf: $b1
	pop de                                           ; $73c0: $d1
	inc c                                            ; $73c1: $0c
	ld b, $20                                        ; $73c2: $06 $20
	inc c                                            ; $73c4: $0c
	or c                                             ; $73c5: $b1
	ld de, $0000                                     ; $73c6: $11 $00 $00
	jr nz, @+$0e                                     ; $73c9: $20 $0c

	or c                                             ; $73cb: $b1
	pop bc                                           ; $73cc: $c1
	inc h                                            ; $73cd: $24
	ld b, $bd                                        ; $73ce: $06 $bd
	ld [bc], a                                       ; $73d0: $02
	dec e                                            ; $73d1: $1d
	inc c                                            ; $73d2: $0c
	jr jr_030_7386                                   ; $73d3: $18 $b1

	ld de, $0000                                     ; $73d5: $11 $00 $00
	dec e                                            ; $73d8: $1d
	inc c                                            ; $73d9: $0c
	or c                                             ; $73da: $b1
	pop bc                                           ; $73db: $c1
	inc h                                            ; $73dc: $24
	rlca                                             ; $73dd: $07
	dec de                                           ; $73de: $1b
	inc h                                            ; $73df: $24
	or c                                             ; $73e0: $b1
	ld hl, $0000                                     ; $73e1: $21 $00 $00
	dec de                                           ; $73e4: $1b
	inc c                                            ; $73e5: $0c
	pop bc                                           ; $73e6: $c1
	cp l                                             ; $73e7: $bd
	ld [bc], a                                       ; $73e8: $02
	dec de                                           ; $73e9: $1b
	inc c                                            ; $73ea: $0c
	jr jr_030_739e                                   ; $73eb: $18 $b1

	pop de                                           ; $73ed: $d1
	rst $38                                          ; $73ee: $ff
	inc bc                                           ; $73ef: $03
	ld e, $0c                                        ; $73f0: $1e $0c
	dec e                                            ; $73f2: $1d
	inc c                                            ; $73f3: $0c
	ld e, $0c                                        ; $73f4: $1e $0c
	sub [hl]                                         ; $73f6: $96
	rst $38                                          ; $73f7: $ff
	inc bc                                           ; $73f8: $03
	jr nz, jr_030_7407                               ; $73f9: $20 $0c

jr_030_73fb:
	or c                                             ; $73fb: $b1
	ld de, $0000                                     ; $73fc: $11 $00 $00
	jr nz, @+$0e                                     ; $73ff: $20 $0c

	or c                                             ; $7401: $b1
	pop bc                                           ; $7402: $c1
	rst $38                                          ; $7403: $ff
	dec b                                            ; $7404: $05
	cp l                                             ; $7405: $bd
	ld [bc], a                                       ; $7406: $02

jr_030_7407:
	dec e                                            ; $7407: $1d
	inc c                                            ; $7408: $0c
	jr @-$4d                                         ; $7409: $18 $b1

	ld de, $0000                                     ; $740b: $11 $00 $00
	dec e                                            ; $740e: $1d
	inc c                                            ; $740f: $0c
	or c                                             ; $7410: $b1
	or c                                             ; $7411: $b1
	jr nc, jr_030_741b                               ; $7412: $30 $07

	dec de                                           ; $7414: $1b
	jr nc, @-$4d                                     ; $7415: $30 $b1

	ld de, $0000                                     ; $7417: $11 $00 $00
	dec de                                           ; $741a: $1b

jr_030_741b:
	inc c                                            ; $741b: $0c
	or l                                             ; $741c: $b5
	pop de                                           ; $741d: $d1
	inc bc                                           ; $741e: $03
	rst $38                                          ; $741f: $ff

jr_030_7420:
	dec b                                            ; $7420: $05
	inc e                                            ; $7421: $1c
	jr jr_030_73ba                                   ; $7422: $18 $96

	inc c                                            ; $7424: $0c
	ld b, $1b                                        ; $7425: $06 $1b
	inc c                                            ; $7427: $0c
	inc e                                            ; $7428: $1c
	inc c                                            ; $7429: $0c
	or c                                             ; $742a: $b1
	ld de, $0000                                     ; $742b: $11 $00 $00
	inc e                                            ; $742e: $1c
	inc c                                            ; $742f: $0c
	or c                                             ; $7430: $b1
	pop de                                           ; $7431: $d1
	inc c                                            ; $7432: $0c
	ld b, $23                                        ; $7433: $06 $23
	inc c                                            ; $7435: $0c
	or c                                             ; $7436: $b1
	ld de, $0000                                     ; $7437: $11 $00 $00
	inc hl                                           ; $743a: $23
	inc c                                            ; $743b: $0c
	or c                                             ; $743c: $b1
	pop bc                                           ; $743d: $c1
	inc h                                            ; $743e: $24
	ld b, $bd                                        ; $743f: $06 $bd
	ld [bc], a                                       ; $7441: $02
	inc hl                                           ; $7442: $23
	inc c                                            ; $7443: $0c
	inc c                                            ; $7444: $0c
	sub [hl]                                         ; $7445: $96
	inc c                                            ; $7446: $0c
	inc b                                            ; $7447: $04
	ld [hl+], a                                      ; $7448: $22
	inc c                                            ; $7449: $0c
	jr nz, jr_030_7458                               ; $744a: $20 $0c

	ld e, $0c                                        ; $744c: $1e $0c
	or c                                             ; $744e: $b1
	ld de, $0000                                     ; $744f: $11 $00 $00
	ld e, $0c                                        ; $7452: $1e $0c
	or c                                             ; $7454: $b1
	pop bc                                           ; $7455: $c1
	rst $38                                          ; $7456: $ff
	dec b                                            ; $7457: $05

jr_030_7458:
	ld e, $18                                        ; $7458: $1e $18
	sub [hl]                                         ; $745a: $96
	rst $38                                          ; $745b: $ff
	inc bc                                           ; $745c: $03
	jr nz, @+$0e                                     ; $745d: $20 $0c

	sub [hl]                                         ; $745f: $96
	jr jr_030_7469                                   ; $7460: $18 $07

	ld [hl+], a                                      ; $7462: $22
	jr jr_030_73fb                                   ; $7463: $18 $96

	rst $38                                          ; $7465: $ff
	dec b                                            ; $7466: $05

jr_030_7467:
	ld e, $0c                                        ; $7467: $1e $0c

jr_030_7469:
	sub [hl]                                         ; $7469: $96
	jr nc, jr_030_7473                               ; $746a: $30 $07

	ld [hl+], a                                      ; $746c: $22
	jr nc, jr_030_7420                               ; $746d: $30 $b1

	ld de, $0000                                     ; $746f: $11 $00 $00
	ld [hl+], a                                      ; $7472: $22

jr_030_7473:
	inc c                                            ; $7473: $0c
	or c                                             ; $7474: $b1
	pop bc                                           ; $7475: $c1
	rst $38                                          ; $7476: $ff
	ld b, $20                                        ; $7477: $06 $20
	jr @-$4d                                         ; $7479: $18 $b1

	ld de, $0000                                     ; $747b: $11 $00 $00
	jr nz, jr_030_748c                               ; $747e: $20 $0c

	or c                                             ; $7480: $b1
	pop bc                                           ; $7481: $c1
	rst $38                                          ; $7482: $ff
	ld b, $22                                        ; $7483: $06 $22
	inc h                                            ; $7485: $24
	or c                                             ; $7486: $b1
	ld de, $0000                                     ; $7487: $11 $00 $00
	ld [hl+], a                                      ; $748a: $22
	inc c                                            ; $748b: $0c

jr_030_748c:
	or l                                             ; $748c: $b5
	pop bc                                           ; $748d: $c1
	ld bc, $040c                                     ; $748e: $01 $0c $04
	dec de                                           ; $7491: $1b
	inc c                                            ; $7492: $0c
	ei                                               ; $7493: $fb
	or l                                             ; $7494: $b5
	pop bc                                           ; $7495: $c1
	ld bc, $05ff                                     ; $7496: $01 $ff $05
	inc h                                            ; $7499: $24
	jr jr_030_7467                                   ; $749a: $18 $cb

	daa                                              ; $749c: $27
	inc c                                            ; $749d: $0c
	call z, $0c22                                    ; $749e: $cc $22 $0c
	or c                                             ; $74a1: $b1
	ld de, $0000                                     ; $74a2: $11 $00 $00
	ld [hl+], a                                      ; $74a5: $22
	inc c                                            ; $74a6: $0c
	or c                                             ; $74a7: $b1
	sub c                                            ; $74a8: $91
	rst $38                                          ; $74a9: $ff
	dec b                                            ; $74aa: $05
	daa                                              ; $74ab: $27
	inc c                                            ; $74ac: $0c
	or c                                             ; $74ad: $b1
	ld de, $0000                                     ; $74ae: $11 $00 $00
	daa                                              ; $74b1: $27
	inc c                                            ; $74b2: $0c
	or c                                             ; $74b3: $b1
	pop bc                                           ; $74b4: $c1
	inc h                                            ; $74b5: $24
	inc b                                            ; $74b6: $04
	cp l                                             ; $74b7: $bd
	ld [bc], a                                       ; $74b8: $02
	jr nz, jr_030_74c7                               ; $74b9: $20 $0c

	jr @-$4d                                         ; $74bb: $18 $b1

	ld de, $0000                                     ; $74bd: $11 $00 $00
	jr nz, jr_030_74ce                               ; $74c0: $20 $0c

	or c                                             ; $74c2: $b1
	pop bc                                           ; $74c3: $c1
	inc c                                            ; $74c4: $0c
	ld [bc], a                                       ; $74c5: $02

jr_030_74c6:
	dec e                                            ; $74c6: $1d

jr_030_74c7:
	inc c                                            ; $74c7: $0c
	sub [hl]                                         ; $74c8: $96
	inc c                                            ; $74c9: $0c
	inc bc                                           ; $74ca: $03
	jr nz, jr_030_74d9                               ; $74cb: $20 $0c

	sub [hl]                                         ; $74cd: $96

jr_030_74ce:
	inc c                                            ; $74ce: $0c
	inc bc                                           ; $74cf: $03
	dec e                                            ; $74d0: $1d
	inc c                                            ; $74d1: $0c
	sub [hl]                                         ; $74d2: $96
	inc c                                            ; $74d3: $0c
	inc b                                            ; $74d4: $04
	jr nz, jr_030_74e3                               ; $74d5: $20 $0c

	ld [hl+], a                                      ; $74d7: $22
	inc c                                            ; $74d8: $0c

jr_030_74d9:
	ei                                               ; $74d9: $fb
	ld [bc], a                                       ; $74da: $02
	sub [hl]                                         ; $74db: $96
	inc c                                            ; $74dc: $0c
	inc bc                                           ; $74dd: $03
	inc h                                            ; $74de: $24
	inc c                                            ; $74df: $0c
	sla a                                            ; $74e0: $cb $27
	inc c                                            ; $74e2: $0c

jr_030_74e3:
	or c                                             ; $74e3: $b1
	and c                                            ; $74e4: $a1
	inc c                                            ; $74e5: $0c
	inc b                                            ; $74e6: $04
	inc l                                            ; $74e7: $2c
	inc c                                            ; $74e8: $0c
	dec hl                                           ; $74e9: $2b
	inc c                                            ; $74ea: $0c
	or c                                             ; $74eb: $b1
	ld de, $0000                                     ; $74ec: $11 $00 $00
	dec hl                                           ; $74ef: $2b
	inc c                                            ; $74f0: $0c
	or c                                             ; $74f1: $b1
	and c                                            ; $74f2: $a1
	inc c                                            ; $74f3: $0c
	dec b                                            ; $74f4: $05
	inc l                                            ; $74f5: $2c
	inc c                                            ; $74f6: $0c
	or c                                             ; $74f7: $b1
	ld de, $0000                                     ; $74f8: $11 $00 $00
	inc l                                            ; $74fb: $2c
	inc c                                            ; $74fc: $0c
	or c                                             ; $74fd: $b1
	and c                                            ; $74fe: $a1
	rst $38                                          ; $74ff: $ff
	inc b                                            ; $7500: $04
	add hl, hl                                       ; $7501: $29
	inc c                                            ; $7502: $0c

jr_030_7503:
	rst JumpTable                                          ; $7503: $c7
	add hl, hl                                       ; $7504: $29
	inc c                                            ; $7505: $0c
	or c                                             ; $7506: $b1
	add c                                            ; $7507: $81
	inc c                                            ; $7508: $0c
	inc bc                                           ; $7509: $03
	dec e                                            ; $750a: $1d
	inc c                                            ; $750b: $0c
	or c                                             ; $750c: $b1
	and c                                            ; $750d: $a1
	inc c                                            ; $750e: $0c
	inc b                                            ; $750f: $04
	jr nz, jr_030_751e                               ; $7510: $20 $0c

	ld [hl+], a                                      ; $7512: $22
	inc c                                            ; $7513: $0c
	or c                                             ; $7514: $b1
	sub c                                            ; $7515: $91
	ld b, $07                                        ; $7516: $06 $07
	inc hl                                           ; $7518: $23
	ld b, $b1                                        ; $7519: $06 $b1
	ld hl, $0000                                     ; $751b: $21 $00 $00

jr_030_751e:
	inc hl                                           ; $751e: $23
	ld b, $b1                                        ; $751f: $06 $b1
	sub c                                            ; $7521: $91
	rst $38                                          ; $7522: $ff
	dec b                                            ; $7523: $05
	inc hl                                           ; $7524: $23
	inc c                                            ; $7525: $0c
	ld [hl+], a                                      ; $7526: $22
	inc c                                            ; $7527: $0c
	jr nz, jr_030_7536                               ; $7528: $20 $0c

	sub [hl]                                         ; $752a: $96
	jr jr_030_7532                                   ; $752b: $18 $05

	inc h                                            ; $752d: $24
	jr jr_030_74c6                                   ; $752e: $18 $96

	inc c                                            ; $7530: $0c
	inc b                                            ; $7531: $04

jr_030_7532:
	jr nz, jr_030_7540                               ; $7532: $20 $0c

	dec e                                            ; $7534: $1d
	inc c                                            ; $7535: $0c

jr_030_7536:
	or c                                             ; $7536: $b1
	ld de, $0000                                     ; $7537: $11 $00 $00
	dec e                                            ; $753a: $1d
	inc c                                            ; $753b: $0c
	or c                                             ; $753c: $b1
	sub c                                            ; $753d: $91
	inc c                                            ; $753e: $0c
	rlca                                             ; $753f: $07

jr_030_7540:
	jr nz, jr_030_754e                               ; $7540: $20 $0c

	or c                                             ; $7542: $b1
	ld de, $0000                                     ; $7543: $11 $00 $00
	jr nz, jr_030_7554                               ; $7546: $20 $0c

	or c                                             ; $7548: $b1
	sub c                                            ; $7549: $91
	inc h                                            ; $754a: $24
	rlca                                             ; $754b: $07
	cp l                                             ; $754c: $bd
	ld [bc], a                                       ; $754d: $02

jr_030_754e:
	jr nz, @+$0e                                     ; $754e: $20 $0c

	jr jr_030_7503                                   ; $7550: $18 $b1

	ld b, c                                          ; $7552: $41
	nop                                              ; $7553: $00

jr_030_7554:
	nop                                              ; $7554: $00
	jr nz, jr_030_756f                               ; $7555: $20 $18

	sub e                                            ; $7557: $93
	jr nz, jr_030_7566                               ; $7558: $20 $0c

	pop bc                                           ; $755a: $c1
	jr nz, jr_030_7569                               ; $755b: $20 $0c

	ret nz                                           ; $755d: $c0

	jr nz, jr_030_756c                               ; $755e: $20 $0c

	or l                                             ; $7560: $b5
	or c                                             ; $7561: $b1
	ld [bc], a                                       ; $7562: $02
	inc c                                            ; $7563: $0c
	inc bc                                           ; $7564: $03
	daa                                              ; $7565: $27

jr_030_7566:
	inc c                                            ; $7566: $0c
	sub [hl]                                         ; $7567: $96
	nop                                              ; $7568: $00

jr_030_7569:
	nop                                              ; $7569: $00
	cp $ff                                           ; $756a: $fe $ff

jr_030_756c:
	ret nc                                           ; $756c: $d0

	ld h, [hl]                                       ; $756d: $66
	adc c                                            ; $756e: $89

jr_030_756f:
	cp $fb                                           ; $756f: $fe $fb
	call nz, $1820                                   ; $7571: $c4 $20 $18
	add $20                                          ; $7574: $c6 $20
	inc c                                            ; $7576: $0c
	call nz, $2424                                   ; $7577: $c4 $24 $24
	add $24                                          ; $757a: $c6 $24
	inc c                                            ; $757c: $0c
	call nz, $02bd                                   ; $757d: $c4 $bd $02
	ld [hl+], a                                      ; $7580: $22
	inc c                                            ; $7581: $0c
	inc h                                            ; $7582: $24
	add $22                                          ; $7583: $c6 $22
	inc c                                            ; $7585: $0c
	call nz, $0c1b                                   ; $7586: $c4 $1b $0c
	add $1b                                          ; $7589: $c6 $1b
	inc c                                            ; $758b: $0c
	call nz, $161b                                   ; $758c: $c4 $1b $16
	add $1b                                          ; $758f: $c6 $1b
	ld [bc], a                                       ; $7591: $02
	ei                                               ; $7592: $fb
	ld [bc], a                                       ; $7593: $02
	call nz, $1820                                   ; $7594: $c4 $20 $18
	add $20                                          ; $7597: $c6 $20
	inc c                                            ; $7599: $0c
	call nz, $2424                                   ; $759a: $c4 $24 $24

jr_030_759d:
	add $24                                          ; $759d: $c6 $24
	inc c                                            ; $759f: $0c
	call nz, $02bd                                   ; $75a0: $c4 $bd $02
	dec h                                            ; $75a3: $25
	inc c                                            ; $75a4: $0c
	inc h                                            ; $75a5: $24
	add $25                                          ; $75a6: $c6 $25
	inc c                                            ; $75a8: $0c
	call nz, $0c25                                   ; $75a9: $c4 $25 $0c
	add $25                                          ; $75ac: $c6 $25
	inc c                                            ; $75ae: $0c
	call nz, $1625                                   ; $75af: $c4 $25 $16
	add $25                                          ; $75b2: $c6 $25
	ld [bc], a                                       ; $75b4: $02
	call nz, $1824                                   ; $75b5: $c4 $24 $18

jr_030_75b8:
	add $24                                          ; $75b8: $c6 $24
	inc c                                            ; $75ba: $0c
	call nz, $0c23                                   ; $75bb: $c4 $23 $0c
	add $23                                          ; $75be: $c6 $23
	inc c                                            ; $75c0: $0c
	call nz, $0c22                                   ; $75c1: $c4 $22 $0c
	add $22                                          ; $75c4: $c6 $22
	inc c                                            ; $75c6: $0c
	call nz, $02bd                                   ; $75c7: $c4 $bd $02
	jr nz, jr_030_75d8                               ; $75ca: $20 $0c

	inc h                                            ; $75cc: $24
	add $20                                          ; $75cd: $c6 $20
	inc c                                            ; $75cf: $0c
	nop                                              ; $75d0: $00
	jr nc, @-$3c                                     ; $75d1: $30 $c2

	add c                                            ; $75d3: $81
	dec de                                           ; $75d4: $1b
	jr jr_030_759d                                   ; $75d5: $18 $c6

	dec de                                           ; $75d7: $1b

jr_030_75d8:
	inc c                                            ; $75d8: $0c
	jp nz, $161b                                     ; $75d9: $c2 $1b $16

	add $1b                                          ; $75dc: $c6 $1b
	ld [bc], a                                       ; $75de: $02
	jp nz, $0a16                                     ; $75df: $c2 $16 $0a

	add $16                                          ; $75e2: $c6 $16
	ld [bc], a                                       ; $75e4: $02
	jp nz, $0a15                                     ; $75e5: $c2 $15 $0a

	add $15                                          ; $75e8: $c6 $15
	ld [bc], a                                       ; $75ea: $02
	jp nz, $02bd                                     ; $75eb: $c2 $bd $02

	inc d                                            ; $75ee: $14
	inc c                                            ; $75ef: $0c

jr_030_75f0:
	jr jr_030_75b8                                   ; $75f0: $18 $c6

	inc d                                            ; $75f2: $14
	inc c                                            ; $75f3: $0c
	jp nz, $1614                                     ; $75f4: $c2 $14 $16

	add $14                                          ; $75f7: $c6 $14
	ld [bc], a                                       ; $75f9: $02
	adc [hl]                                         ; $75fa: $8e
	jp nz, $057e                                     ; $75fb: $c2 $7e $05

	nop                                              ; $75fe: $00
	and d                                            ; $75ff: $a2
	jr nz, @+$18                                     ; $7600: $20 $16

	ld a, [hl]                                       ; $7602: $7e
	nop                                              ; $7603: $00

jr_030_7604:
	add $20                                          ; $7604: $c6 $20
	ld [bc], a                                       ; $7606: $02
	add c                                            ; $7607: $81
	jp nz, $0c14                                     ; $7608: $c2 $14 $0c

	jp nz, $181b                                     ; $760b: $c2 $1b $18

	add $1b                                          ; $760e: $c6 $1b
	inc c                                            ; $7610: $0c
	jp nz, $161b                                     ; $7611: $c2 $1b $16

	add $1b                                          ; $7614: $c6 $1b
	ld [bc], a                                       ; $7616: $02

jr_030_7617:
	jp nz, $0a16                                     ; $7617: $c2 $16 $0a

	add $16                                          ; $761a: $c6 $16
	ld [bc], a                                       ; $761c: $02
	jp nz, $0a15                                     ; $761d: $c2 $15 $0a

	add $15                                          ; $7620: $c6 $15
	ld [bc], a                                       ; $7622: $02
	jp nz, $02bd                                     ; $7623: $c2 $bd $02

	inc d                                            ; $7626: $14
	inc c                                            ; $7627: $0c
	jr jr_030_75f0                                   ; $7628: $18 $c6

	inc d                                            ; $762a: $14
	inc c                                            ; $762b: $0c
	jp nz, $1614                                     ; $762c: $c2 $14 $16

	add $14                                          ; $762f: $c6 $14
	ld [bc], a                                       ; $7631: $02

jr_030_7632:
	adc [hl]                                         ; $7632: $8e
	jp nz, $057e                                     ; $7633: $c2 $7e $05

	nop                                              ; $7636: $00
	and e                                            ; $7637: $a3
	ld [hl+], a                                      ; $7638: $22
	ld a, [bc]                                       ; $7639: $0a
	add $22                                          ; $763a: $c6 $22
	ld [bc], a                                       ; $763c: $02
	jp nz, $007e                                     ; $763d: $c2 $7e $00

	ld hl, $c60a                                     ; $7640: $21 $0a $c6
	ld hl, $c202                                     ; $7643: $21 $02 $c2
	jr nz, jr_030_7652                               ; $7646: $20 $0a

	add $20                                          ; $7648: $c6 $20
	ld [bc], a                                       ; $764a: $02
	jp nz, $81c2                                     ; $764b: $c2 $c2 $81

jr_030_764e:
	add hl, de                                       ; $764e: $19
	jr jr_030_7617                                   ; $764f: $18 $c6

	add hl, de                                       ; $7651: $19

jr_030_7652:
	inc c                                            ; $7652: $0c
	jp nz, $1619                                     ; $7653: $c2 $19 $16

	add $19                                          ; $7656: $c6 $19
	ld [bc], a                                       ; $7658: $02
	jp nz, $0a14                                     ; $7659: $c2 $14 $0a

	add $14                                          ; $765c: $c6 $14
	ld [bc], a                                       ; $765e: $02
	jp nz, $0a13                                     ; $765f: $c2 $13 $0a

	add $13                                          ; $7662: $c6 $13
	ld [bc], a                                       ; $7664: $02
	jp nz, $02bd                                     ; $7665: $c2 $bd $02

	ld [de], a                                       ; $7668: $12
	inc c                                            ; $7669: $0c
	jr jr_030_7632                                   ; $766a: $18 $c6

	ld [de], a                                       ; $766c: $12
	inc c                                            ; $766d: $0c
	jp nz, $1612                                     ; $766e: $c2 $12 $16

	add $12                                          ; $7671: $c6 $12
	ld [bc], a                                       ; $7673: $02
	jp nz, $0b0f                                     ; $7674: $c2 $0f $0b

	add $0f                                          ; $7677: $c6 $0f
	ld bc, $c28e                                     ; $7679: $01 $8e $c2
	ld a, [hl]                                       ; $767c: $7e
	dec c                                            ; $767d: $0d
	nop                                              ; $767e: $00
	and c                                            ; $767f: $a1
	ld [hl+], a                                      ; $7680: $22
	jr jr_030_7604                                   ; $7681: $18 $81

	ld a, [hl]                                       ; $7683: $7e
	nop                                              ; $7684: $00
	rla                                              ; $7685: $17
	jr jr_030_764e                                   ; $7686: $18 $c6

	rla                                              ; $7688: $17
	inc c                                            ; $7689: $0c
	jp nz, $3017                                     ; $768a: $c2 $17 $30

	add $17                                          ; $768d: $c6 $17
	inc c                                            ; $768f: $0c
	jp nz, $0a16                                     ; $7690: $c2 $16 $0a

	add $16                                          ; $7693: $c6 $16
	ld [bc], a                                       ; $7695: $02
	jp nz, $0d7e                                     ; $7696: $c2 $7e $0d

	nop                                              ; $7699: $00
	and d                                            ; $769a: $a2
	dec e                                            ; $769b: $1d
	ld a, [bc]                                       ; $769c: $0a
	ld a, [hl]                                       ; $769d: $7e
	nop                                              ; $769e: $00
	add $1d                                          ; $769f: $c6 $1d
	ld [bc], a                                       ; $76a1: $02
	jp nz, $0a1c                                     ; $76a2: $c2 $1c $0a

	add $1c                                          ; $76a5: $c6 $1c
	ld [bc], a                                       ; $76a7: $02
	jp nz, $241b                                     ; $76a8: $c2 $1b $24

	call nz, $0c1b                                   ; $76ab: $c4 $1b $0c
	add $1b                                          ; $76ae: $c6 $1b
	inc c                                            ; $76b0: $0c
	jp nz, $1481                                     ; $76b1: $c2 $81 $14

	ld d, $c6                                        ; $76b4: $16 $c6
	inc d                                            ; $76b6: $14
	ld [bc], a                                       ; $76b7: $02
	jp nz, $0c1b                                     ; $76b8: $c2 $1b $0c

	jr jr_030_76c9                                   ; $76bb: $18 $0c

	add $18                                          ; $76bd: $c6 $18
	inc c                                            ; $76bf: $0c
	jp nz, $0c18                                     ; $76c0: $c2 $18 $0c

	add $18                                          ; $76c3: $c6 $18
	inc c                                            ; $76c5: $0c
	jp nz, $02bd                                     ; $76c6: $c2 $bd $02

jr_030_76c9:
	ld d, $0c                                        ; $76c9: $16 $0c
	jr @-$3a                                         ; $76cb: $18 $c4

	ld d, $0c                                        ; $76cd: $16 $0c
	add $16                                          ; $76cf: $c6 $16
	inc c                                            ; $76d1: $0c
	jp nz, $0c1b                                     ; $76d2: $c2 $1b $0c

	add $1b                                          ; $76d5: $c6 $1b
	inc c                                            ; $76d7: $0c
	jp nz, $161b                                     ; $76d8: $c2 $1b $16

	add $1b                                          ; $76db: $c6 $1b
	ld [bc], a                                       ; $76dd: $02
	jp nz, $0cbe                                     ; $76de: $c2 $be $0c

	inc d                                            ; $76e1: $14
	dec de                                           ; $76e2: $1b

jr_030_76e3:
	jr nz, @+$1a                                     ; $76e3: $20 $18

	cp [hl]                                          ; $76e5: $be
	add $18                                          ; $76e6: $c6 $18
	inc c                                            ; $76e8: $0c
	jp nz, $0c18                                     ; $76e9: $c2 $18 $0c

	add $18                                          ; $76ec: $c6 $18
	inc c                                            ; $76ee: $0c
	jp nz, $02bd                                     ; $76ef: $c2 $bd $02

	ld d, $0c                                        ; $76f2: $16 $0c
	jr @-$3a                                         ; $76f4: $18 $c4

	ld d, $0c                                        ; $76f6: $16 $0c
	add $16                                          ; $76f8: $c6 $16
	inc c                                            ; $76fa: $0c
	jp nz, $0c1b                                     ; $76fb: $c2 $1b $0c

	add $1b                                          ; $76fe: $c6 $1b
	inc c                                            ; $7700: $0c
	jp nz, $161b                                     ; $7701: $c2 $1b $16

	add $1b                                          ; $7704: $c6 $1b
	ld [bc], a                                       ; $7706: $02
	jp nz, $0cbe                                     ; $7707: $c2 $be $0c

jr_030_770a:
	jr nz, jr_030_7727                               ; $770a: $20 $1b

	jr nz, @+$1a                                     ; $770c: $20 $18

	cp [hl]                                          ; $770e: $be
	add $18                                          ; $770f: $c6 $18
	inc c                                            ; $7711: $0c
	jp nz, $0c18                                     ; $7712: $c2 $18 $0c

	add $18                                          ; $7715: $c6 $18
	inc c                                            ; $7717: $0c
	jp nz, $02bd                                     ; $7718: $c2 $bd $02

	add hl, de                                       ; $771b: $19
	inc c                                            ; $771c: $0c
	jr jr_030_76e3                                   ; $771d: $18 $c4

jr_030_771f:
	add hl, de                                       ; $771f: $19
	inc c                                            ; $7720: $0c
	add $19                                          ; $7721: $c6 $19
	inc c                                            ; $7723: $0c
	jp nz, $1819                                     ; $7724: $c2 $19 $18

jr_030_7727:
	call nz, $0c19                                   ; $7727: $c4 $19 $0c
	add $19                                          ; $772a: $c6 $19
	inc c                                            ; $772c: $0c
	jp nz, $1818                                     ; $772d: $c2 $18 $18

	add $18                                          ; $7730: $c6 $18
	inc c                                            ; $7732: $0c
	jp nz, $0c17                                     ; $7733: $c2 $17 $0c

	add $17                                          ; $7736: $c6 $17
	inc c                                            ; $7738: $0c
	jp nz, $0c16                                     ; $7739: $c2 $16 $0c

	add $16                                          ; $773c: $c6 $16
	inc c                                            ; $773e: $0c
	jp nz, $02bd                                     ; $773f: $c2 $bd $02

	inc d                                            ; $7742: $14
	inc c                                            ; $7743: $0c
	jr nc, jr_030_770a                               ; $7744: $30 $c4

	inc d                                            ; $7746: $14
	inc c                                            ; $7747: $0c
	add $14                                          ; $7748: $c6 $14
	inc c                                            ; $774a: $0c
	nop                                              ; $774b: $00

jr_030_774c:
	jr jr_030_774c                                   ; $774c: $18 $fe

	rst $38                                          ; $774e: $ff
	ret nc                                           ; $774f: $d0

	ld h, [hl]                                       ; $7750: $66
	cp $00                                           ; $7751: $fe $00
	rst $38                                          ; $7753: $ff
	nop                                              ; $7754: $00
	rst $38                                          ; $7755: $ff
	nop                                              ; $7756: $00
	and d                                            ; $7757: $a2
	nop                                              ; $7758: $00
	inc h                                            ; $7759: $24
	dec d                                            ; $775a: $15
	inc c                                            ; $775b: $0c
	dec d                                            ; $775c: $15
	jr jr_030_7777                                   ; $775d: $18 $18

	jr jr_030_771f                                   ; $775f: $18 $be

	inc c                                            ; $7761: $0c
	ld [de], a                                       ; $7762: $12
	add hl, bc                                       ; $7763: $09
	ld [de], a                                       ; $7764: $12
	ld [de], a                                       ; $7765: $12
	add hl, bc                                       ; $7766: $09
	ld [de], a                                       ; $7767: $12
	add hl, bc                                       ; $7768: $09
	ld [de], a                                       ; $7769: $12
	cp [hl]                                          ; $776a: $be
	cp [hl]                                          ; $776b: $be
	inc c                                            ; $776c: $0c
	add hl, bc                                       ; $776d: $09
	ld [de], a                                       ; $776e: $12
	ld [de], a                                       ; $776f: $12
	add hl, bc                                       ; $7770: $09
	add hl, bc                                       ; $7771: $09
	ld [de], a                                       ; $7772: $12
	add hl, bc                                       ; $7773: $09
	ld [de], a                                       ; $7774: $12
	cp [hl]                                          ; $7775: $be
	cp [hl]                                          ; $7776: $be

jr_030_7777:
	inc c                                            ; $7777: $0c
	add hl, bc                                       ; $7778: $09
	ld [de], a                                       ; $7779: $12
	add hl, bc                                       ; $777a: $09
	add hl, bc                                       ; $777b: $09
	ld [de], a                                       ; $777c: $12
	add hl, bc                                       ; $777d: $09
	ld [de], a                                       ; $777e: $12
	add hl, bc                                       ; $777f: $09
	cp [hl]                                          ; $7780: $be
	cp [hl]                                          ; $7781: $be
	inc c                                            ; $7782: $0c
	add hl, bc                                       ; $7783: $09
	ld [de], a                                       ; $7784: $12
	ld [de], a                                       ; $7785: $12
	add hl, bc                                       ; $7786: $09
	ld [de], a                                       ; $7787: $12
	ld [de], a                                       ; $7788: $12
	add hl, bc                                       ; $7789: $09
	ld [de], a                                       ; $778a: $12
	cp [hl]                                          ; $778b: $be
	cp [hl]                                          ; $778c: $be
	inc c                                            ; $778d: $0c
	add hl, bc                                       ; $778e: $09
	ld [de], a                                       ; $778f: $12
	add hl, bc                                       ; $7790: $09
	add hl, bc                                       ; $7791: $09
	ld [de], a                                       ; $7792: $12
	ld [de], a                                       ; $7793: $12
	add hl, bc                                       ; $7794: $09
	add hl, bc                                       ; $7795: $09
	cp [hl]                                          ; $7796: $be
	cp [hl]                                          ; $7797: $be
	inc c                                            ; $7798: $0c
	ld [de], a                                       ; $7799: $12
	ld [de], a                                       ; $779a: $12
	add hl, bc                                       ; $779b: $09
	ld [de], a                                       ; $779c: $12
	ld [de], a                                       ; $779d: $12
	add hl, bc                                       ; $779e: $09
	add hl, bc                                       ; $779f: $09
	ld [de], a                                       ; $77a0: $12
	cp [hl]                                          ; $77a1: $be

jr_030_77a2:
	cp [hl]                                          ; $77a2: $be
	inc c                                            ; $77a3: $0c
	add hl, bc                                       ; $77a4: $09
	ld [de], a                                       ; $77a5: $12
	add hl, bc                                       ; $77a6: $09
	ld [de], a                                       ; $77a7: $12
	ld [de], a                                       ; $77a8: $12
	add hl, bc                                       ; $77a9: $09
	add hl, bc                                       ; $77aa: $09
	ld [de], a                                       ; $77ab: $12
	cp [hl]                                          ; $77ac: $be
	cp [hl]                                          ; $77ad: $be
	inc c                                            ; $77ae: $0c
	add hl, bc                                       ; $77af: $09
	ld [de], a                                       ; $77b0: $12
	add hl, bc                                       ; $77b1: $09
	ld [de], a                                       ; $77b2: $12
	ld [de], a                                       ; $77b3: $12
	add hl, bc                                       ; $77b4: $09
	add hl, bc                                       ; $77b5: $09
	ld [de], a                                       ; $77b6: $12
	cp [hl]                                          ; $77b7: $be
	cp [hl]                                          ; $77b8: $be
	inc c                                            ; $77b9: $0c
	add hl, de                                       ; $77ba: $19
	ld [de], a                                       ; $77bb: $12
	add hl, bc                                       ; $77bc: $09
	add hl, de                                       ; $77bd: $19
	ld [de], a                                       ; $77be: $12
	add hl, de                                       ; $77bf: $19
	ld [de], a                                       ; $77c0: $12
	add hl, de                                       ; $77c1: $19
	cp [hl]                                          ; $77c2: $be
	cp [hl]                                          ; $77c3: $be
	inc c                                            ; $77c4: $0c
	ld [de], a                                       ; $77c5: $12
	ld [de], a                                       ; $77c6: $12
	add hl, bc                                       ; $77c7: $09
	ld [de], a                                       ; $77c8: $12
	add hl, de                                       ; $77c9: $19
	jr jr_030_77d9                                   ; $77ca: $18 $0d

	ld [de], a                                       ; $77cc: $12
	cp [hl]                                          ; $77cd: $be
	cp [hl]                                          ; $77ce: $be
	inc c                                            ; $77cf: $0c
	add hl, de                                       ; $77d0: $19
	ld [de], a                                       ; $77d1: $12
	add hl, bc                                       ; $77d2: $09
	add hl, de                                       ; $77d3: $19
	ld [de], a                                       ; $77d4: $12
	add hl, de                                       ; $77d5: $19
	add hl, bc                                       ; $77d6: $09
	ld [de], a                                       ; $77d7: $12
	cp [hl]                                          ; $77d8: $be

jr_030_77d9:
	cp [hl]                                          ; $77d9: $be
	inc c                                            ; $77da: $0c
	ld [de], a                                       ; $77db: $12
	add hl, de                                       ; $77dc: $19
	add hl, de                                       ; $77dd: $19
	ld [de], a                                       ; $77de: $12
	add hl, de                                       ; $77df: $19
	jr jr_030_77ef                                   ; $77e0: $18 $0d

	jr jr_030_77a2                                   ; $77e2: $18 $be

	cp [hl]                                          ; $77e4: $be
	inc c                                            ; $77e5: $0c
	add hl, de                                       ; $77e6: $19
	ld [de], a                                       ; $77e7: $12
	add hl, bc                                       ; $77e8: $09
	add hl, de                                       ; $77e9: $19
	ld [de], a                                       ; $77ea: $12
	add hl, de                                       ; $77eb: $19
	ld [de], a                                       ; $77ec: $12
	add hl, de                                       ; $77ed: $19
	cp [hl]                                          ; $77ee: $be

jr_030_77ef:
	cp [hl]                                          ; $77ef: $be
	inc c                                            ; $77f0: $0c
	ld [de], a                                       ; $77f1: $12
	add hl, de                                       ; $77f2: $19
	add hl, de                                       ; $77f3: $19
	ld [de], a                                       ; $77f4: $12
	add hl, de                                       ; $77f5: $19
	jr @+$0f                                         ; $77f6: $18 $0d

	ld [de], a                                       ; $77f8: $12
	cp [hl]                                          ; $77f9: $be
	cp [hl]                                          ; $77fa: $be
	inc c                                            ; $77fb: $0c
	add hl, de                                       ; $77fc: $19
	ld [de], a                                       ; $77fd: $12
	add hl, de                                       ; $77fe: $19
	add hl, de                                       ; $77ff: $19
	ld [de], a                                       ; $7800: $12
	add hl, de                                       ; $7801: $19
	ld [de], a                                       ; $7802: $12
	cp [hl]                                          ; $7803: $be
	jr jr_030_7836                                   ; $7804: $18 $30

	dec d                                            ; $7806: $15
	inc c                                            ; $7807: $0c
	dec d                                            ; $7808: $15
	jr @+$1a                                         ; $7809: $18 $18

jr_030_780b:
	jr jr_030_780b                                   ; $780b: $18 $fe

	rst $38                                          ; $780d: $ff
	or [hl]                                          ; $780e: $b6
	add d                                            ; $780f: $82
	or c                                             ; $7810: $b1

jr_030_7811:
	nop                                              ; $7811: $00
	rst $38                                          ; $7812: $ff
	ld bc, $06be                                     ; $7813: $01 $be $06
	inc d                                            ; $7816: $14
	dec d                                            ; $7817: $15
	rla                                              ; $7818: $17
	dec d                                            ; $7819: $15
	inc d                                            ; $781a: $14
	rla                                              ; $781b: $17
	cp [hl]                                          ; $781c: $be
	cp $b5                                           ; $781d: $fe $b5
	add c                                            ; $781f: $81
	ld [bc], a                                       ; $7820: $02
	rst $38                                          ; $7821: $ff
	ld bc, $007e                                     ; $7822: $01 $7e $00
	cp [hl]                                          ; $7825: $be
	ld b, $2d                                        ; $7826: $06 $2d
	dec l                                            ; $7828: $2d
	nop                                              ; $7829: $00
	dec l                                            ; $782a: $2d
	dec l                                            ; $782b: $2d
	cp [hl]                                          ; $782c: $be
	or c                                             ; $782d: $b1
	ld hl, $0000                                     ; $782e: $21 $00 $00
	dec l                                            ; $7831: $2d
	ld e, $b1                                        ; $7832: $1e $b1
	add c                                            ; $7834: $81
	inc c                                            ; $7835: $0c

jr_030_7836:
	ld bc, $0c25                                     ; $7836: $01 $25 $0c
	ld a, [hl]                                       ; $7839: $7e
	inc bc                                           ; $783a: $03
	nop                                              ; $783b: $00
	and b                                            ; $783c: $a0
	or c                                             ; $783d: $b1
	ld h, c                                          ; $783e: $61
	inc c                                            ; $783f: $0c
	rlca                                             ; $7840: $07
	jr z, @+$0e                                      ; $7841: $28 $0c

	ld a, [hl]                                       ; $7843: $7e
	nop                                              ; $7844: $00
	sub [hl]                                         ; $7845: $96
	rst $38                                          ; $7846: $ff
	ld bc, $0c26                                     ; $7847: $01 $26 $0c
	or c                                             ; $784a: $b1
	ld hl, $0000                                     ; $784b: $21 $00 $00
	ld h, $0c                                        ; $784e: $26 $0c
	or l                                             ; $7850: $b5
	ld [hl], c                                       ; $7851: $71
	ld bc, $01ff                                     ; $7852: $01 $ff $01
	add hl, sp                                       ; $7855: $39
	inc c                                            ; $7856: $0c
	add hl, sp                                       ; $7857: $39
	inc c                                            ; $7858: $0c
	or c                                             ; $7859: $b1
	ld hl, $0000                                     ; $785a: $21 $00 $00
	add hl, sp                                       ; $785d: $39
	jr jr_030_7811                                   ; $785e: $18 $b1

	ld h, c                                          ; $7860: $61
	rst $38                                          ; $7861: $ff
	ld b, $7e                                        ; $7862: $06 $7e
	inc bc                                           ; $7864: $03
	nop                                              ; $7865: $00
	and b                                            ; $7866: $a0
	dec hl                                           ; $7867: $2b
	inc c                                            ; $7868: $0c
	sub [hl]                                         ; $7869: $96
	inc c                                            ; $786a: $0c
	ld bc, $007e                                     ; $786b: $01 $7e $00
	ld a, [hl+]                                      ; $786e: $2a
	inc c                                            ; $786f: $0c
	jr z, jr_030_787e                                ; $7870: $28 $0c

	or l                                             ; $7872: $b5
	or c                                             ; $7873: $b1
	ld bc, $01ff                                     ; $7874: $01 $ff $01
	ld a, l                                          ; $7877: $7d
	ld bc, $06be                                     ; $7878: $01 $be $06
	inc e                                            ; $787b: $1c
	inc e                                            ; $787c: $1c
	nop                                              ; $787d: $00

jr_030_787e:
	inc e                                            ; $787e: $1c
	inc e                                            ; $787f: $1c
	cp [hl]                                          ; $7880: $be
	or c                                             ; $7881: $b1
	ld hl, $0000                                     ; $7882: $21 $00 $00
	inc e                                            ; $7885: $1c
	ld e, $c7                                        ; $7886: $1e $c7
	ld a, l                                          ; $7888: $7d
	nop                                              ; $7889: $00
	sub [hl]                                         ; $788a: $96
	inc c                                            ; $788b: $0c
	ld bc, $0c25                                     ; $788c: $01 $25 $0c
	ld a, [hl]                                       ; $788f: $7e
	inc bc                                           ; $7890: $03
	nop                                              ; $7891: $00
	and b                                            ; $7892: $a0
	sub [hl]                                         ; $7893: $96
	inc c                                            ; $7894: $0c
	rlca                                             ; $7895: $07
	jr z, jr_030_78a4                                ; $7896: $28 $0c

	ld a, [hl]                                       ; $7898: $7e
	nop                                              ; $7899: $00
	sub [hl]                                         ; $789a: $96
	inc c                                            ; $789b: $0c
	ld bc, $0c26                                     ; $789c: $01 $26 $0c
	nop                                              ; $789f: $00
	inc c                                            ; $78a0: $0c
	sub c                                            ; $78a1: $91
	rst JumpTable                                          ; $78a2: $c7
	add hl, sp                                       ; $78a3: $39

jr_030_78a4:
	inc c                                            ; $78a4: $0c
	add hl, sp                                       ; $78a5: $39
	inc c                                            ; $78a6: $0c
	or c                                             ; $78a7: $b1
	ld h, c                                          ; $78a8: $61
	ld b, $01                                        ; $78a9: $06 $01
	cp [hl]                                          ; $78ab: $be
	ld b, $31                                        ; $78ac: $06 $31
	ld [hl-], a                                      ; $78ae: $32
	inc [hl]                                         ; $78af: $34
	inc [hl]                                         ; $78b0: $34
	cp [hl]                                          ; $78b1: $be
	sub [hl]                                         ; $78b2: $96
	inc c                                            ; $78b3: $0c
	ld bc, $0631                                     ; $78b4: $01 $31 $06
	or c                                             ; $78b7: $b1
	ld hl, $0000                                     ; $78b8: $21 $00 $00

jr_030_78bb:
	ld sp, $b106                                     ; $78bb: $31 $06 $b1
	ld h, c                                          ; $78be: $61
	rst $38                                          ; $78bf: $ff
	ld bc, $0634                                     ; $78c0: $01 $34 $06
	pop bc                                           ; $78c3: $c1
	inc [hl]                                         ; $78c4: $34
	ld b, $b1                                        ; $78c5: $06 $b1
	ld h, c                                          ; $78c7: $61
	rst $38                                          ; $78c8: $ff
	ld [bc], a                                       ; $78c9: $02
	ld a, [hl]                                       ; $78ca: $7e
	db $10                                           ; $78cb: $10
	inc b                                            ; $78cc: $04
	and c                                            ; $78cd: $a1
	ld [hl], $0c                                     ; $78ce: $36 $0c
	ld a, [hl]                                       ; $78d0: $7e
	nop                                              ; $78d1: $00
	or l                                             ; $78d2: $b5
	ld h, c                                          ; $78d3: $61
	ld [bc], a                                       ; $78d4: $02
	ld b, $01                                        ; $78d5: $06 $01
	cp [hl]                                          ; $78d7: $be
	ld b, $2d                                        ; $78d8: $06 $2d
	dec l                                            ; $78da: $2d
	nop                                              ; $78db: $00
	dec l                                            ; $78dc: $2d
	dec l                                            ; $78dd: $2d
	cp [hl]                                          ; $78de: $be
	or c                                             ; $78df: $b1
	ld hl, $0000                                     ; $78e0: $21 $00 $00
	dec l                                            ; $78e3: $2d
	ld e, $b1                                        ; $78e4: $1e $b1
	add c                                            ; $78e6: $81
	inc c                                            ; $78e7: $0c
	ld bc, $0c25                                     ; $78e8: $01 $25 $0c
	rst JumpTable                                          ; $78eb: $c7
	ld a, [hl]                                       ; $78ec: $7e
	inc bc                                           ; $78ed: $03
	nop                                              ; $78ee: $00
	and b                                            ; $78ef: $a0
	sub [hl]                                         ; $78f0: $96
	ld a, [$2806]                                    ; $78f1: $fa $06 $28
	inc c                                            ; $78f4: $0c
	ld a, [hl]                                       ; $78f5: $7e
	nop                                              ; $78f6: $00
	sub [hl]                                         ; $78f7: $96
	inc c                                            ; $78f8: $0c
	ld bc, $0c26                                     ; $78f9: $01 $26 $0c
	nop                                              ; $78fc: $00
	inc c                                            ; $78fd: $0c
	ret z                                            ; $78fe: $c8

	add hl, sp                                       ; $78ff: $39
	inc c                                            ; $7900: $0c
	add hl, sp                                       ; $7901: $39
	inc c                                            ; $7902: $0c
	or c                                             ; $7903: $b1
	ld hl, $0000                                     ; $7904: $21 $00 $00
	add hl, sp                                       ; $7907: $39
	jr jr_030_78bb                                   ; $7908: $18 $b1

	ld h, c                                          ; $790a: $61
	inc c                                            ; $790b: $0c
	ld b, $7e                                        ; $790c: $06 $7e
	inc bc                                           ; $790e: $03
	nop                                              ; $790f: $00
	and b                                            ; $7910: $a0
	dec hl                                           ; $7911: $2b
	inc c                                            ; $7912: $0c
	sub [hl]                                         ; $7913: $96
	inc c                                            ; $7914: $0c
	ld bc, $007e                                     ; $7915: $01 $7e $00
	ld a, [hl+]                                      ; $7918: $2a
	inc c                                            ; $7919: $0c
	jr z, @+$0e                                      ; $791a: $28 $0c

	or l                                             ; $791c: $b5
	ld [hl], c                                       ; $791d: $71
	ld bc, $0106                                     ; $791e: $01 $06 $01
	cp [hl]                                          ; $7921: $be
	ld b, $31                                        ; $7922: $06 $31
	ld sp, $3100                                     ; $7924: $31 $00 $31
	ld sp, $b1be                                     ; $7927: $31 $be $b1
	ld hl, $0000                                     ; $792a: $21 $00 $00
	ld sp, $b11e                                     ; $792d: $31 $1e $b1
	ld h, c                                          ; $7930: $61
	inc c                                            ; $7931: $0c
	ld bc, $0c23                                     ; $7932: $01 $23 $0c
	ld a, [hl]                                       ; $7935: $7e
	inc bc                                           ; $7936: $03
	nop                                              ; $7937: $00
	and b                                            ; $7938: $a0
	sub [hl]                                         ; $7939: $96
	inc c                                            ; $793a: $0c
	rlca                                             ; $793b: $07
	dec hl                                           ; $793c: $2b
	inc c                                            ; $793d: $0c
	ld a, [hl]                                       ; $793e: $7e
	nop                                              ; $793f: $00
	sub [hl]                                         ; $7940: $96
	inc c                                            ; $7941: $0c
	ld bc, $0c28                                     ; $7942: $01 $28 $0c
	or c                                             ; $7945: $b1
	ld bc, $0000                                     ; $7946: $01 $00 $00
	jr z, @+$0e                                      ; $7949: $28 $0c

	or c                                             ; $794b: $b1
	ld [hl], c                                       ; $794c: $71
	rst $38                                          ; $794d: $ff
	ld bc, $0c39                                     ; $794e: $01 $39 $0c
	add hl, sp                                       ; $7951: $39
	inc c                                            ; $7952: $0c
	or l                                             ; $7953: $b5
	ld d, c                                          ; $7954: $51
	ld bc, $0106                                     ; $7955: $01 $06 $01
	jr z, jr_030_7960                                ; $7958: $28 $06

	ld a, [hl+]                                      ; $795a: $2a
	ld b, $7e                                        ; $795b: $06 $7e
	inc bc                                           ; $795d: $03
	nop                                              ; $795e: $00
	and b                                            ; $795f: $a0

jr_030_7960:
	sub [hl]                                         ; $7960: $96
	rst $38                                          ; $7961: $ff
	inc bc                                           ; $7962: $03
	ld sp, $b106                                     ; $7963: $31 $06 $b1
	ld hl, $0000                                     ; $7966: $21 $00 $00
	ld sp, $b106                                     ; $7969: $31 $06 $b1
	ld h, c                                          ; $796c: $61
	rst $38                                          ; $796d: $ff
	ld bc, $007e                                     ; $796e: $01 $7e $00
	cpl                                              ; $7971: $2f
	ld b, $b1                                        ; $7972: $06 $b1
	ld hl, $0000                                     ; $7974: $21 $00 $00
	cpl                                              ; $7977: $2f
	ld b, $b1                                        ; $7978: $06 $b1
	ld h, c                                          ; $797a: $61
	rst $38                                          ; $797b: $ff
	rlca                                             ; $797c: $07
	ld a, [hl]                                       ; $797d: $7e
	ld bc, $a900                                     ; $797e: $01 $00 $a9
	dec l                                            ; $7981: $2d
	jr jr_030_7a02                                   ; $7982: $18 $7e

	nop                                              ; $7984: $00
	or l                                             ; $7985: $b5
	ld h, c                                          ; $7986: $61
	ld bc, $0106                                     ; $7987: $01 $06 $01
	ld a, [hl]                                       ; $798a: $7e
	nop                                              ; $798b: $00
	ld [hl], $06                                     ; $798c: $36 $06
	ei                                               ; $798e: $fb
	push bc                                          ; $798f: $c5
	ld [hl-], a                                      ; $7990: $32
	ld b, $b1                                        ; $7991: $06 $b1
	ld hl, $0000                                     ; $7993: $21 $00 $00
	ld [hl-], a                                      ; $7996: $32
	ld b, $b1                                        ; $7997: $06 $b1
	ld h, c                                          ; $7999: $61
	ld b, $01                                        ; $799a: $06 $01
	ld [hl-], a                                      ; $799c: $32
	ld b, $fb                                        ; $799d: $06 $fb
	inc b                                            ; $799f: $04
	ld [hl-], a                                      ; $79a0: $32
	ld b, $b1                                        ; $79a1: $06 $b1
	ld hl, $0000                                     ; $79a3: $21 $00 $00
	ld [hl-], a                                      ; $79a6: $32
	ld b, $b1                                        ; $79a7: $06 $b1
	ld [hl], c                                       ; $79a9: $71
	ld b, $01                                        ; $79aa: $06 $01
	ld [hl-], a                                      ; $79ac: $32
	ld b, $34                                        ; $79ad: $06 $34
	ld b, $c7                                        ; $79af: $06 $c7
	ei                                               ; $79b1: $fb
	ld sp, $b106                                     ; $79b2: $31 $06 $b1
	ld hl, $0000                                     ; $79b5: $21 $00 $00
	ld sp, $b106                                     ; $79b8: $31 $06 $b1
	ld [hl], c                                       ; $79bb: $71
	ld b, $01                                        ; $79bc: $06 $01
	ld sp, $fb06                                     ; $79be: $31 $06 $fb
	inc b                                            ; $79c1: $04
	ld sp, $b106                                     ; $79c2: $31 $06 $b1
	ld hl, $0000                                     ; $79c5: $21 $00 $00
	ld sp, $b106                                     ; $79c8: $31 $06 $b1
	ld [hl], c                                       ; $79cb: $71
	ld b, $01                                        ; $79cc: $06 $01
	inc [hl]                                         ; $79ce: $34
	ld b, $32                                        ; $79cf: $06 $32
	ld b, $c7                                        ; $79d1: $06 $c7
	ei                                               ; $79d3: $fb
	dec l                                            ; $79d4: $2d
	ld b, $b1                                        ; $79d5: $06 $b1
	ld de, $0000                                     ; $79d7: $11 $00 $00
	dec l                                            ; $79da: $2d
	ld b, $b1                                        ; $79db: $06 $b1
	ld [hl], c                                       ; $79dd: $71
	ld b, $01                                        ; $79de: $06 $01
	dec l                                            ; $79e0: $2d
	ld b, $fb                                        ; $79e1: $06 $fb
	inc b                                            ; $79e3: $04
	dec l                                            ; $79e4: $2d
	ld b, $b1                                        ; $79e5: $06 $b1
	ld de, $0000                                     ; $79e7: $11 $00 $00
	dec l                                            ; $79ea: $2d
	ld b, $b1                                        ; $79eb: $06 $b1
	ld [hl], c                                       ; $79ed: $71
	ld b, $01                                        ; $79ee: $06 $01
	dec l                                            ; $79f0: $2d
	ld b, $c2                                        ; $79f1: $06 $c2
	ld sp, $b106                                     ; $79f3: $31 $06 $b1
	ld [hl], c                                       ; $79f6: $71
	ld b, $01                                        ; $79f7: $06 $01
	cp [hl]                                          ; $79f9: $be
	ld b, $2d                                        ; $79fa: $06 $2d
	dec l                                            ; $79fc: $2d
	nop                                              ; $79fd: $00
	dec l                                            ; $79fe: $2d
	nop                                              ; $79ff: $00
	dec l                                            ; $7a00: $2d
	dec l                                            ; $7a01: $2d

jr_030_7a02:
	cp [hl]                                          ; $7a02: $be
	or c                                             ; $7a03: $b1
	ld hl, $0000                                     ; $7a04: $21 $00 $00
	dec l                                            ; $7a07: $2d
	ld b, $b1                                        ; $7a08: $06 $b1
	ld [hl], c                                       ; $7a0a: $71
	ld b, $01                                        ; $7a0b: $06 $01
	dec l                                            ; $7a0d: $2d
	ld b, $2d                                        ; $7a0e: $06 $2d
	ld b, $b1                                        ; $7a10: $06 $b1
	ld hl, $0000                                     ; $7a12: $21 $00 $00
	dec l                                            ; $7a15: $2d
	ld b, $b1                                        ; $7a16: $06 $b1
	ld [hl], c                                       ; $7a18: $71
	ld b, $01                                        ; $7a19: $06 $01
	dec l                                            ; $7a1b: $2d
	ld b, $b1                                        ; $7a1c: $06 $b1
	ld hl, $0000                                     ; $7a1e: $21 $00 $00
	dec l                                            ; $7a21: $2d
	ld b, $b1                                        ; $7a22: $06 $b1
	ld [hl], c                                       ; $7a24: $71
	ld b, $01                                        ; $7a25: $06 $01
	dec l                                            ; $7a27: $2d
	ld b, $2d                                        ; $7a28: $06 $2d
	ld b, $b5                                        ; $7a2a: $06 $b5
	ld [hl], c                                       ; $7a2c: $71
	ld bc, $01ff                                     ; $7a2d: $01 $ff $01
	ld a, [hl]                                       ; $7a30: $7e
	nop                                              ; $7a31: $00
	cpl                                              ; $7a32: $2f
	ld b, $c7                                        ; $7a33: $06 $c7
	dec l                                            ; $7a35: $2d
	ld b, $b1                                        ; $7a36: $06 $b1
	ld hl, $0000                                     ; $7a38: $21 $00 $00
	dec l                                            ; $7a3b: $2d
	ld b, $fb                                        ; $7a3c: $06 $fb
	or c                                             ; $7a3e: $b1
	ld [hl], c                                       ; $7a3f: $71
	rst $38                                          ; $7a40: $ff
	ld bc, $062d                                     ; $7a41: $01 $2d $06
	dec l                                            ; $7a44: $2d
	ld b, $b1                                        ; $7a45: $06 $b1
	ld hl, $0000                                     ; $7a47: $21 $00 $00
	dec l                                            ; $7a4a: $2d
	ld b, $fb                                        ; $7a4b: $06 $fb
	inc b                                            ; $7a4d: $04
	or c                                             ; $7a4e: $b1
	ld [hl], c                                       ; $7a4f: $71
	rst $38                                          ; $7a50: $ff
	ld bc, $062d                                     ; $7a51: $01 $2d $06
	ei                                               ; $7a54: $fb
	sub d                                            ; $7a55: $92
	add $39                                          ; $7a56: $c6 $39
	ld b, $39                                        ; $7a58: $06 $39
	ld b, $b1                                        ; $7a5a: $06 $b1
	ld de, $0000                                     ; $7a5c: $11 $00 $00
	add hl, sp                                       ; $7a5f: $39
	ld b, $96                                        ; $7a60: $06 $96
	ld b, $01                                        ; $7a62: $06 $01
	ei                                               ; $7a64: $fb
	dec b                                            ; $7a65: $05
	add $39                                          ; $7a66: $c6 $39
	ld b, $b5                                        ; $7a68: $06 $b5
	ld [hl], c                                       ; $7a6a: $71
	ld [bc], a                                       ; $7a6b: $02
	nop                                              ; $7a6c: $00
	nop                                              ; $7a6d: $00
	ld h, $0c                                        ; $7a6e: $26 $0c
	jr z, jr_030_7a78                                ; $7a70: $28 $06

	jp nz, $0628                                     ; $7a72: $c2 $28 $06

	rst JumpTable                                          ; $7a75: $c7
	ld h, $06                                        ; $7a76: $26 $06

jr_030_7a78:
	jp nz, $0626                                     ; $7a78: $c2 $26 $06

	rst JumpTable                                          ; $7a7b: $c7
	ld h, $0c                                        ; $7a7c: $26 $0c
	jr z, @+$08                                      ; $7a7e: $28 $06

	jp nz, $0628                                     ; $7a80: $c2 $28 $06

	rst JumpTable                                          ; $7a83: $c7
	ld a, [hl+]                                      ; $7a84: $2a
	ld b, $c2                                        ; $7a85: $06 $c2
	ld a, [hl+]                                      ; $7a87: $2a

jr_030_7a88:
	ld b, $c7                                        ; $7a88: $06 $c7
	dec l                                            ; $7a8a: $2d
	ld b, $c2                                        ; $7a8b: $06 $c2
	dec l                                            ; $7a8d: $2d
	ld b, $b5                                        ; $7a8e: $06 $b5
	add c                                            ; $7a90: $81
	ld bc, $05ff                                     ; $7a91: $01 $ff $05
	cp l                                             ; $7a94: $bd
	ld [bc], a                                       ; $7a95: $02
	jr nz, jr_030_7aa4                               ; $7a96: $20 $0c

	dec bc                                           ; $7a98: $0b
	nop                                              ; $7a99: $00
	ld bc, $91b1                                     ; $7a9a: $01 $b1 $91
	inc c                                            ; $7a9d: $0c
	ld [bc], a                                       ; $7a9e: $02
	jr nz, jr_030_7aad                               ; $7a9f: $20 $0c

	ld hl, $220c                                     ; $7aa1: $21 $0c $22

jr_030_7aa4:
	inc c                                            ; $7aa4: $0c
	or c                                             ; $7aa5: $b1
	ld [hl], c                                       ; $7aa6: $71
	inc c                                            ; $7aa7: $0c
	inc b                                            ; $7aa8: $04
	jr z, jr_030_7ab7                                ; $7aa9: $28 $0c

	or c                                             ; $7aab: $b1
	sub c                                            ; $7aac: $91

jr_030_7aad:
	inc c                                            ; $7aad: $0c
	inc bc                                           ; $7aae: $03
	inc e                                            ; $7aaf: $1c

jr_030_7ab0:
	inc c                                            ; $7ab0: $0c
	inc e                                            ; $7ab1: $1c
	inc c                                            ; $7ab2: $0c
	or c                                             ; $7ab3: $b1
	add c                                            ; $7ab4: $81
	inc c                                            ; $7ab5: $0c
	inc b                                            ; $7ab6: $04

jr_030_7ab7:
	jr z, @+$0e                                      ; $7ab7: $28 $0c

	cp $ff                                           ; $7ab9: $fe $ff
	or [hl]                                          ; $7abb: $b6
	add d                                            ; $7abc: $82
	pop de                                           ; $7abd: $d1
	ld bc, $01ff                                     ; $7abe: $01 $ff $01
	cp [hl]                                          ; $7ac1: $be
	ld b, $1c                                        ; $7ac2: $06 $1c
	ld e, $20                                        ; $7ac4: $1e $20
	ld e, $1c                                        ; $7ac6: $1e $1c
	jr nz, jr_030_7a88                               ; $7ac8: $20 $be

	cp $b5                                           ; $7aca: $fe $b5
	sub c                                            ; $7acc: $91
	ld bc, $0718                                     ; $7acd: $01 $18 $07
	ld a, [hl]                                       ; $7ad0: $7e
	inc bc                                           ; $7ad1: $03
	nop                                              ; $7ad2: $00
	and b                                            ; $7ad3: $a0
	dec h                                            ; $7ad4: $25
	db $10                                           ; $7ad5: $10
	jp $0825                                         ; $7ad6: $c3 $25 $08


	adc $7e                                          ; $7ad9: $ce $7e
	nop                                              ; $7adb: $00
	ld hl, $b118                                     ; $7adc: $21 $18 $b1
	ld sp, $0000                                     ; $7adf: $31 $00 $00
	ld hl, $b10c                                     ; $7ae2: $21 $0c $b1
	pop de                                           ; $7ae5: $d1
	inc c                                            ; $7ae6: $0c
	ld bc, $0c21                                     ; $7ae7: $01 $21 $0c
	jr nz, @+$0e                                     ; $7aea: $20 $0c

	or c                                             ; $7aec: $b1
	or c                                             ; $7aed: $b1
	nop                                              ; $7aee: $00
	nop                                              ; $7aef: $00
	ld a, [hl]                                       ; $7af0: $7e
	ld bc, $a100                                     ; $7af1: $01 $00 $a1
	rra                                              ; $7af4: $1f
	inc c                                            ; $7af5: $0c
	rra                                              ; $7af6: $1f
	jr @+$80                                         ; $7af7: $18 $7e

	nop                                              ; $7af9: $00
	jp $0c1f                                         ; $7afa: $c3 $1f $0c


	or c                                             ; $7afd: $b1
	pop de                                           ; $7afe: $d1
	ld b, $02                                        ; $7aff: $06 $02
	rra                                              ; $7b01: $1f
	ld b, $21                                        ; $7b02: $06 $21
	ld b, $96                                        ; $7b04: $06 $96
	inc c                                            ; $7b06: $0c
	ld bc, $0cbe                                     ; $7b07: $01 $be $0c
	inc hl                                           ; $7b0a: $23
	ld hl, $231f                                     ; $7b0b: $21 $1f $23
	cp [hl]                                          ; $7b0e: $be
	sub [hl]                                         ; $7b0f: $96
	inc h                                            ; $7b10: $24
	rlca                                             ; $7b11: $07
	ld hl, $9624                                     ; $7b12: $21 $24 $96
	jr jr_030_7b1e                                   ; $7b15: $18 $07

	inc e                                            ; $7b17: $1c
	jr jr_030_7ab0                                   ; $7b18: $18 $96

jr_030_7b1a:
	inc c                                            ; $7b1a: $0c
	ld bc, $0c19                                     ; $7b1b: $01 $19 $0c

jr_030_7b1e:
	ld a, [de]                                       ; $7b1e: $1a
	inc c                                            ; $7b1f: $0c
	ld a, [hl]                                       ; $7b20: $7e
	rrca                                             ; $7b21: $0f
	ld [$96a2], sp                                   ; $7b22: $08 $a2 $96
	jr nc, @+$09                                     ; $7b25: $30 $07

	cp l                                             ; $7b27: $bd
	ld [bc], a                                       ; $7b28: $02
	inc e                                            ; $7b29: $1c
	inc c                                            ; $7b2a: $0c
	inc h                                            ; $7b2b: $24
	jp $0c1c                                         ; $7b2c: $c3 $1c $0c


	or c                                             ; $7b2f: $b1
	and e                                            ; $7b30: $a3
	rst $38                                          ; $7b31: $ff
	ld bc, $007e                                     ; $7b32: $01 $7e $00
	add hl, sp                                       ; $7b35: $39
	ld b, $39                                        ; $7b36: $06 $39
	ld b, $96                                        ; $7b38: $06 $96
	inc c                                            ; $7b3a: $0c
	ld bc, $0636                                     ; $7b3b: $01 $36 $06
	or c                                             ; $7b3e: $b1
	inc sp                                           ; $7b3f: $33
	nop                                              ; $7b40: $00
	nop                                              ; $7b41: $00
	ld [hl], $06                                     ; $7b42: $36 $06
	or c                                             ; $7b44: $b1
	and e                                            ; $7b45: $a3
	rst $38                                          ; $7b46: $ff
	ld bc, $0639                                     ; $7b47: $01 $39 $06
	or c                                             ; $7b4a: $b1
	inc sp                                           ; $7b4b: $33
	nop                                              ; $7b4c: $00
	nop                                              ; $7b4d: $00
	add hl, sp                                       ; $7b4e: $39
	ld b, $b1                                        ; $7b4f: $06 $b1
	and e                                            ; $7b51: $a3
	rst $38                                          ; $7b52: $ff
	ld [bc], a                                       ; $7b53: $02
	ld a, [hl]                                       ; $7b54: $7e
	db $10                                           ; $7b55: $10
	inc b                                            ; $7b56: $04
	and c                                            ; $7b57: $a1
	dec sp                                           ; $7b58: $3b
	inc c                                            ; $7b59: $0c
	or l                                             ; $7b5a: $b5
	or c                                             ; $7b5b: $b1
	ld bc, $0718                                     ; $7b5c: $01 $18 $07
	ld a, [hl]                                       ; $7b5f: $7e
	inc bc                                           ; $7b60: $03
	nop                                              ; $7b61: $00
	and b                                            ; $7b62: $a0
	dec h                                            ; $7b63: $25
	db $10                                           ; $7b64: $10
	jp $0825                                         ; $7b65: $c3 $25 $08


	call $007e                                       ; $7b68: $cd $7e $00
	ld hl, $c218                                     ; $7b6b: $21 $18 $c2
	ld hl, $b10c                                     ; $7b6e: $21 $0c $b1
	pop hl                                           ; $7b71: $e1
	inc c                                            ; $7b72: $0c
	ld bc, $0c21                                     ; $7b73: $01 $21 $0c
	jr nz, jr_030_7b84                               ; $7b76: $20 $0c

	or c                                             ; $7b78: $b1
	or c                                             ; $7b79: $b1
	nop                                              ; $7b7a: $00
	nop                                              ; $7b7b: $00
	rra                                              ; $7b7c: $1f
	inc c                                            ; $7b7d: $0c
	sub a                                            ; $7b7e: $97
	xor a                                            ; $7b7f: $af
	rra                                              ; $7b80: $1f
	jr jr_030_7b1a                                   ; $7b81: $18 $97

	nop                                              ; $7b83: $00

jr_030_7b84:
	jp nz, $0c1f                                     ; $7b84: $c2 $1f $0c

jr_030_7b87:
	or c                                             ; $7b87: $b1
	pop bc                                           ; $7b88: $c1
	ld b, $01                                        ; $7b89: $06 $01
	rra                                              ; $7b8b: $1f
	ld b, $21                                        ; $7b8c: $06 $21
	ld b, $96                                        ; $7b8e: $06 $96
	inc c                                            ; $7b90: $0c
	ld bc, $0cbe                                     ; $7b91: $01 $be $0c
	inc hl                                           ; $7b94: $23
	ld hl, $231f                                     ; $7b95: $21 $1f $23
	cp [hl]                                          ; $7b98: $be
	or c                                             ; $7b99: $b1
	or c                                             ; $7b9a: $b1
	nop                                              ; $7b9b: $00
	nop                                              ; $7b9c: $00
	ld hl, $2518                                     ; $7b9d: $21 $18 $25

jr_030_7ba0:
	inc c                                            ; $7ba0: $0c
	inc hl                                           ; $7ba1: $23
	inc c                                            ; $7ba2: $0c
	jp nz, $0c23                                     ; $7ba3: $c2 $23 $0c

	jp z, $0c26                                      ; $7ba6: $ca $26 $0c

	jp nz, $0c26                                     ; $7ba9: $c2 $26 $0c

	ret                                              ; $7bac: $c9


	dec h                                            ; $7bad: $25
	inc c                                            ; $7bae: $0c
	jp nz, $0c25                                     ; $7baf: $c2 $25 $0c

	or c                                             ; $7bb2: $b1
	ld [hl], c                                       ; $7bb3: $71
	inc c                                            ; $7bb4: $0c
	ld [bc], a                                       ; $7bb5: $02
	ld h, $0c                                        ; $7bb6: $26 $0c
	sub [hl]                                         ; $7bb8: $96
	nop                                              ; $7bb9: $00
	nop                                              ; $7bba: $00
	ld a, [hl]                                       ; $7bbb: $7e
	rrca                                             ; $7bbc: $0f
	ld [$28a1], sp                                   ; $7bbd: $08 $a1 $28
	inc a                                            ; $7bc0: $3c
	jp nz, $007e                                     ; $7bc1: $c2 $7e $00

	jr z, @+$0e                                      ; $7bc4: $28 $0c

	or l                                             ; $7bc6: $b5
	and c                                            ; $7bc7: $a1
	ld [bc], a                                       ; $7bc8: $02
	rst $38                                          ; $7bc9: $ff
	rlca                                             ; $7bca: $07
	ld a, [hl]                                       ; $7bcb: $7e
	inc bc                                           ; $7bcc: $03
	nop                                              ; $7bcd: $00
	xor c                                            ; $7bce: $a9
	ld a, [hl+]                                      ; $7bcf: $2a
	inc h                                            ; $7bd0: $24
	call z, $007e                                    ; $7bd1: $cc $7e $00
	ld hl, $ca24                                     ; $7bd4: $21 $24 $ca
	ld a, [hl]                                       ; $7bd7: $7e
	ld bc, $a900                                     ; $7bd8: $01 $00 $a9
	ld a, [hl+]                                      ; $7bdb: $2a
	jr jr_030_7c5c                                   ; $7bdc: $18 $7e

	nop                                              ; $7bde: $00
	sub [hl]                                         ; $7bdf: $96
	nop                                              ; $7be0: $00
	nop                                              ; $7be1: $00
	jr z, jr_030_7bfa                                ; $7be2: $28 $16

	nop                                              ; $7be4: $00
	ld [bc], a                                       ; $7be5: $02
	sub [hl]                                         ; $7be6: $96
	inc c                                            ; $7be7: $0c
	ld bc, $0c26                                     ; $7be8: $01 $26 $0c
	sub [hl]                                         ; $7beb: $96
	jr jr_030_7bf5                                   ; $7bec: $18 $07

	dec h                                            ; $7bee: $25
	jr jr_030_7b87                                   ; $7bef: $18 $96

	inc c                                            ; $7bf1: $0c
	ld bc, $0c26                                     ; $7bf2: $01 $26 $0c

jr_030_7bf5:
	sub [hl]                                         ; $7bf5: $96
	jr jr_030_7bfe                                   ; $7bf6: $18 $06

	jr z, jr_030_7c12                                ; $7bf8: $28 $18

jr_030_7bfa:
	call z, $0c23                                    ; $7bfa: $cc $23 $0c
	sub [hl]                                         ; $7bfd: $96

jr_030_7bfe:
	inc c                                            ; $7bfe: $0c
	ld bc, $0c25                                     ; $7bff: $01 $25 $0c
	inc hl                                           ; $7c02: $23

jr_030_7c03:
	inc c                                            ; $7c03: $0c
	sub [hl]                                         ; $7c04: $96
	jr @+$09                                         ; $7c05: $18 $07

	inc hl                                           ; $7c07: $23
	jr jr_030_7ba0                                   ; $7c08: $18 $96

	inc c                                            ; $7c0a: $0c
	rlca                                             ; $7c0b: $07
	ld hl, $230c                                     ; $7c0c: $21 $0c $23
	inc c                                            ; $7c0f: $0c
	sub [hl]                                         ; $7c10: $96
	nop                                              ; $7c11: $00

jr_030_7c12:
	nop                                              ; $7c12: $00
	dec h                                            ; $7c13: $25
	inc c                                            ; $7c14: $0c
	jp nz, $0c25                                     ; $7c15: $c2 $25 $0c

	call z, $0c26                                    ; $7c18: $cc $26 $0c
	jp nz, $0c26                                     ; $7c1b: $c2 $26 $0c

	call z, $0c27                                    ; $7c1e: $cc $27 $0c
	jp nz, $0c27                                     ; $7c21: $c2 $27 $0c

	sra b                                            ; $7c24: $cb $28
	inc c                                            ; $7c26: $0c
	jp nz, $0c28                                     ; $7c27: $c2 $28 $0c

	sra c                                            ; $7c2a: $cb $29
	ld a, [bc]                                       ; $7c2c: $0a
	jp nz, $0229                                     ; $7c2d: $c2 $29 $02

	or l                                             ; $7c30: $b5
	and c                                            ; $7c31: $a1
	ld [bc], a                                       ; $7c32: $02
	nop                                              ; $7c33: $00
	nop                                              ; $7c34: $00
	ld a, [hl]                                       ; $7c35: $7e
	nop                                              ; $7c36: $00
	ld a, [hl+]                                      ; $7c37: $2a
	inc h                                            ; $7c38: $24
	or c                                             ; $7c39: $b1
	pop bc                                           ; $7c3a: $c1
	rst $38                                          ; $7c3b: $ff
	rlca                                             ; $7c3c: $07
	ld a, [hl]                                       ; $7c3d: $7e
	ld bc, $a000                                     ; $7c3e: $01 $00 $a0
	ld hl, $ca24                                     ; $7c41: $21 $24 $ca
	ld a, [hl]                                       ; $7c44: $7e
	ld bc, $a900                                     ; $7c45: $01 $00 $a9
	ld a, [hl+]                                      ; $7c48: $2a
	jr jr_030_7cc9                                   ; $7c49: $18 $7e

	nop                                              ; $7c4b: $00
	sub [hl]                                         ; $7c4c: $96
	nop                                              ; $7c4d: $00
	nop                                              ; $7c4e: $00
	jr z, jr_030_7c67                                ; $7c4f: $28 $16

	nop                                              ; $7c51: $00
	ld [bc], a                                       ; $7c52: $02
	ld h, $05                                        ; $7c53: $26 $05
	jp $0726                                         ; $7c55: $c3 $26 $07


	or c                                             ; $7c58: $b1
	pop de                                           ; $7c59: $d1
	rst $38                                          ; $7c5a: $ff
	rlca                                             ; $7c5b: $07

jr_030_7c5c:
	dec h                                            ; $7c5c: $25
	jr jr_030_7c85                                   ; $7c5d: $18 $26

	dec b                                            ; $7c5f: $05
	or c                                             ; $7c60: $b1
	ld hl, $0000                                     ; $7c61: $21 $00 $00
	ld h, $07                                        ; $7c64: $26 $07
	or c                                             ; $7c66: $b1

jr_030_7c67:
	or c                                             ; $7c67: $b1
	rst $38                                          ; $7c68: $ff
	ld b, $28                                        ; $7c69: $06 $28
	jr jr_030_7c03                                   ; $7c6b: $18 $96

	nop                                              ; $7c6d: $00
	nop                                              ; $7c6e: $00
	inc hl                                           ; $7c6f: $23
	inc c                                            ; $7c70: $0c
	dec h                                            ; $7c71: $25
	ld b, $c3                                        ; $7c72: $06 $c3
	dec h                                            ; $7c74: $25
	ld b, $ca                                        ; $7c75: $06 $ca
	inc hl                                           ; $7c77: $23
	ld b, $c3                                        ; $7c78: $06 $c3
	inc hl                                           ; $7c7a: $23
	ld b, $ca                                        ; $7c7b: $06 $ca
	inc hl                                           ; $7c7d: $23
	inc c                                            ; $7c7e: $0c
	dec h                                            ; $7c7f: $25
	ld b, $c3                                        ; $7c80: $06 $c3
	dec h                                            ; $7c82: $25
	ld b, $ca                                        ; $7c83: $06 $ca

jr_030_7c85:
	inc hl                                           ; $7c85: $23
	ld b, $c3                                        ; $7c86: $06 $c3
	inc hl                                           ; $7c88: $23
	ld b, $ca                                        ; $7c89: $06 $ca
	ld hl, $c306                                     ; $7c8b: $21 $06 $c3
	ld hl, $ca06                                     ; $7c8e: $21 $06 $ca
	ld a, [hl]                                       ; $7c91: $7e
	rrca                                             ; $7c92: $0f
	inc c                                            ; $7c93: $0c
	and c                                            ; $7c94: $a1
	cp l                                             ; $7c95: $bd
	ld [bc], a                                       ; $7c96: $02
	inc hl                                           ; $7c97: $23
	inc c                                            ; $7c98: $0c
	ld c, b                                          ; $7c99: $48
	ld a, [hl]                                       ; $7c9a: $7e
	nop                                              ; $7c9b: $00
	jp $1823                                         ; $7c9c: $c3 $23 $18


	cp $ff                                           ; $7c9f: $fe $ff
	or h                                             ; $7ca1: $b4
	add d                                            ; $7ca2: $82
	ld hl, $1003                                     ; $7ca3: $21 $03 $10
	inc b                                            ; $7ca6: $04
	nop                                              ; $7ca7: $00
	ld [bc], a                                       ; $7ca8: $02
	db $10                                           ; $7ca9: $10
	inc b                                            ; $7caa: $04
	nop                                              ; $7cab: $00
	ld [bc], a                                       ; $7cac: $02
	dec d                                            ; $7cad: $15
	dec b                                            ; $7cae: $05
	nop                                              ; $7caf: $00
	ld bc, $0619                                     ; $7cb0: $01 $19 $06
	inc e                                            ; $7cb3: $1c
	inc c                                            ; $7cb4: $0c
	cp $83                                           ; $7cb5: $fe $83
	ei                                               ; $7cb7: $fb
	jp nz, $007e                                     ; $7cb8: $c2 $7e $00

	dec d                                            ; $7cbb: $15
	ld d, $c4                                        ; $7cbc: $16 $c4
	dec d                                            ; $7cbe: $15
	ld [bc], a                                       ; $7cbf: $02
	jp nz, $1015                                     ; $7cc0: $c2 $15 $10

	call nz, $0215                                   ; $7cc3: $c4 $15 $02
	jp nz, $0415                                     ; $7cc6: $c2 $15 $04

jr_030_7cc9:
	nop                                              ; $7cc9: $00
	ld [bc], a                                       ; $7cca: $02
	jp nz, $0619                                     ; $7ccb: $c2 $19 $06

	call nz, $0619                                   ; $7cce: $c4 $19 $06
	jp nz, $061c                                     ; $7cd1: $c2 $1c $06

	call nz, $061c                                   ; $7cd4: $c4 $1c $06
	jp nz, $0621                                     ; $7cd7: $c2 $21 $06

	call nz, $0621                                   ; $7cda: $c4 $21 $06
	jp nz, $0c1c                                     ; $7cdd: $c2 $1c $0c

	inc hl                                           ; $7ce0: $23
	inc b                                            ; $7ce1: $04
	call nz, $0823                                   ; $7ce2: $c4 $23 $08
	jp nz, $041c                                     ; $7ce5: $c2 $1c $04

	call nz, $081c                                   ; $7ce8: $c4 $1c $08
	jp nz, $0623                                     ; $7ceb: $c2 $23 $06

	call nz, $0623                                   ; $7cee: $c4 $23 $06
	jp nz, $0c1c                                     ; $7cf1: $c2 $1c $0c

	jp nz, $061a                                     ; $7cf4: $c2 $1a $06

	call nz, $061a                                   ; $7cf7: $c4 $1a $06
	jp nz, $0619                                     ; $7cfa: $c2 $19 $06

	call nz, $0619                                   ; $7cfd: $c4 $19 $06
	jp nz, $061a                                     ; $7d00: $c2 $1a $06

	call nz, $061a                                   ; $7d03: $c4 $1a $06
	jp nz, $061c                                     ; $7d06: $c2 $1c $06

	call nz, $061c                                   ; $7d09: $c4 $1c $06
	ei                                               ; $7d0c: $fb
	inc b                                            ; $7d0d: $04
	jp nz, Jump_030_7e83                             ; $7d0e: $c2 $83 $7e

	nop                                              ; $7d11: $00
	ld a, [de]                                       ; $7d12: $1a
	ld d, $00                                        ; $7d13: $16 $00
	ld [bc], a                                       ; $7d15: $02
	ld a, [de]                                       ; $7d16: $1a
	stop                                             ; $7d17: $10 $00
	ld [bc], a                                       ; $7d19: $02
	rla                                              ; $7d1a: $17
	inc b                                            ; $7d1b: $04
	nop                                              ; $7d1c: $00
	ld [bc], a                                       ; $7d1d: $02
	add hl, de                                       ; $7d1e: $19
	ld b, $c4                                        ; $7d1f: $06 $c4
	add hl, de                                       ; $7d21: $19
	ld b, $c2                                        ; $7d22: $06 $c2
	ld a, [de]                                       ; $7d24: $1a
	ld b, $c4                                        ; $7d25: $06 $c4
	ld a, [de]                                       ; $7d27: $1a
	ld b, $c2                                        ; $7d28: $06 $c2
	dec de                                           ; $7d2a: $1b
	ld b, $c4                                        ; $7d2b: $06 $c4
	dec de                                           ; $7d2d: $1b
	ld b, $c2                                        ; $7d2e: $06 $c2
	add hl, de                                       ; $7d30: $19
	inc c                                            ; $7d31: $0c
	add hl, de                                       ; $7d32: $19
	ld a, [bc]                                       ; $7d33: $0a
	nop                                              ; $7d34: $00
	ld [bc], a                                       ; $7d35: $02
	add hl, de                                       ; $7d36: $19
	ld d, $00                                        ; $7d37: $16 $00
	ld [bc], a                                       ; $7d39: $02
	dec d                                            ; $7d3a: $15
	ld b, $c4                                        ; $7d3b: $06 $c4
	dec d                                            ; $7d3d: $15
	ld b, $c2                                        ; $7d3e: $06 $c2
	ld d, $06                                        ; $7d40: $16 $06
	call nz, $0616                                   ; $7d42: $c4 $16 $06
	jp nz, $0617                                     ; $7d45: $c2 $17 $06

	call nz, $0617                                   ; $7d48: $c4 $17 $06
	jp nz, $0618                                     ; $7d4b: $c2 $18 $06

	call nz, $0618                                   ; $7d4e: $c4 $18 $06
	jp nz, $0619                                     ; $7d51: $c2 $19 $06

	call nz, $0619                                   ; $7d54: $c4 $19 $06
	jp nz, $1617                                     ; $7d57: $c2 $17 $16

	nop                                              ; $7d5a: $00
	ld [bc], a                                       ; $7d5b: $02
	rla                                              ; $7d5c: $17
	stop                                             ; $7d5d: $10 $00
	ld [bc], a                                       ; $7d5f: $02
	rla                                              ; $7d60: $17
	inc b                                            ; $7d61: $04
	nop                                              ; $7d62: $00
	ld [bc], a                                       ; $7d63: $02
	add hl, de                                       ; $7d64: $19
	ld b, $c4                                        ; $7d65: $06 $c4
	add hl, de                                       ; $7d67: $19
	ld b, $c2                                        ; $7d68: $06 $c2
	add hl, de                                       ; $7d6a: $19
	ld b, $c4                                        ; $7d6b: $06 $c4
	add hl, de                                       ; $7d6d: $19
	ld b, $c2                                        ; $7d6e: $06 $c2
	ld a, [de]                                       ; $7d70: $1a
	ld b, $c4                                        ; $7d71: $06 $c4
	ld a, [de]                                       ; $7d73: $1a
	ld b, $c2                                        ; $7d74: $06 $c2
	inc e                                            ; $7d76: $1c
	inc c                                            ; $7d77: $0c
	inc e                                            ; $7d78: $1c
	ld a, [bc]                                       ; $7d79: $0a
	nop                                              ; $7d7a: $00
	ld [bc], a                                       ; $7d7b: $02
	inc e                                            ; $7d7c: $1c
	ld d, $00                                        ; $7d7d: $16 $00
	ld [bc], a                                       ; $7d7f: $02
	add hl, de                                       ; $7d80: $19
	ld b, $c4                                        ; $7d81: $06 $c4
	add hl, de                                       ; $7d83: $19
	ld b, $c2                                        ; $7d84: $06 $c2
	ld a, [de]                                       ; $7d86: $1a
	ld b, $c4                                        ; $7d87: $06 $c4
	ld a, [de]                                       ; $7d89: $1a
	ld b, $c2                                        ; $7d8a: $06 $c2
	dec de                                           ; $7d8c: $1b
	ld b, $c4                                        ; $7d8d: $06 $c4
	dec de                                           ; $7d8f: $1b
	ld b, $c2                                        ; $7d90: $06 $c2

Jump_030_7d92:
	inc e                                            ; $7d92: $1c
	ld b, $c4                                        ; $7d93: $06 $c4
	inc e                                            ; $7d95: $1c
	ld b, $c2                                        ; $7d96: $06 $c2
	add hl, de                                       ; $7d98: $19
	ld b, $c4                                        ; $7d99: $06 $c4
	add hl, de                                       ; $7d9b: $19
	ld b, $c2                                        ; $7d9c: $06 $c2
	add e                                            ; $7d9e: $83
	ld a, [hl]                                       ; $7d9f: $7e
	nop                                              ; $7da0: $00
	ld a, [de]                                       ; $7da1: $1a
	ld d, $00                                        ; $7da2: $16 $00
	ld [bc], a                                       ; $7da4: $02
	ld a, [de]                                       ; $7da5: $1a
	stop                                             ; $7da6: $10 $00
	ld [bc], a                                       ; $7da8: $02
	rla                                              ; $7da9: $17
	inc b                                            ; $7daa: $04
	nop                                              ; $7dab: $00
	ld [bc], a                                       ; $7dac: $02
	add hl, de                                       ; $7dad: $19
	ld b, $c4                                        ; $7dae: $06 $c4
	add hl, de                                       ; $7db0: $19
	ld b, $c2                                        ; $7db1: $06 $c2
	ld a, [de]                                       ; $7db3: $1a
	ld b, $c4                                        ; $7db4: $06 $c4
	ld a, [de]                                       ; $7db6: $1a
	ld b, $c2                                        ; $7db7: $06 $c2
	dec de                                           ; $7db9: $1b
	ld b, $c4                                        ; $7dba: $06 $c4
	dec de                                           ; $7dbc: $1b
	ld b, $c2                                        ; $7dbd: $06 $c2
	add hl, de                                       ; $7dbf: $19
	inc c                                            ; $7dc0: $0c
	add hl, de                                       ; $7dc1: $19
	ld a, [bc]                                       ; $7dc2: $0a
	nop                                              ; $7dc3: $00
	ld [bc], a                                       ; $7dc4: $02
	add hl, de                                       ; $7dc5: $19
	ld d, $00                                        ; $7dc6: $16 $00
	ld [bc], a                                       ; $7dc8: $02
	dec d                                            ; $7dc9: $15
	ld b, $c4                                        ; $7dca: $06 $c4
	dec d                                            ; $7dcc: $15
	ld b, $c2                                        ; $7dcd: $06 $c2
	ld d, $06                                        ; $7dcf: $16 $06
	call nz, $0616                                   ; $7dd1: $c4 $16 $06
	jp nz, $0617                                     ; $7dd4: $c2 $17 $06

	call nz, $0617                                   ; $7dd7: $c4 $17 $06
	jp nz, $0618                                     ; $7dda: $c2 $18 $06

	call nz, $0618                                   ; $7ddd: $c4 $18 $06
	jp nz, $0619                                     ; $7de0: $c2 $19 $06

	call nz, $0619                                   ; $7de3: $c4 $19 $06
	jp nz, $0623                                     ; $7de6: $c2 $23 $06

	call nz, $0623                                   ; $7de9: $c4 $23 $06
	jp nz, $06be                                     ; $7dec: $c2 $be $06

	rla                                              ; $7def: $17
	nop                                              ; $7df0: $00
	rla                                              ; $7df1: $17
	nop                                              ; $7df2: $00
	inc hl                                           ; $7df3: $23
	cp [hl]                                          ; $7df4: $be
	call nz, $0623                                   ; $7df5: $c4 $23 $06
	jp nz, $06be                                     ; $7df8: $c2 $be $06

	rla                                              ; $7dfb: $17
	nop                                              ; $7dfc: $00
	rla                                              ; $7dfd: $17
	nop                                              ; $7dfe: $00
	ld hl, $c4be                                     ; $7dff: $21 $be $c4
	ld hl, $c206                                     ; $7e02: $21 $06 $c2
	db $10                                           ; $7e05: $10
	inc c                                            ; $7e06: $0c
	db $10                                           ; $7e07: $10
	ld a, [bc]                                       ; $7e08: $0a
	nop                                              ; $7e09: $00
	ld [bc], a                                       ; $7e0a: $02
	db $10                                           ; $7e0b: $10
	ld a, [bc]                                       ; $7e0c: $0a
	nop                                              ; $7e0d: $00
	ld [bc], a                                       ; $7e0e: $02
	db $10                                           ; $7e0f: $10
	ld a, [bc]                                       ; $7e10: $0a
	nop                                              ; $7e11: $00
	ld [bc], a                                       ; $7e12: $02
	ld [de], a                                       ; $7e13: $12
	ld a, [bc]                                       ; $7e14: $0a
	nop                                              ; $7e15: $00
	ld [bc], a                                       ; $7e16: $02
	inc d                                            ; $7e17: $14
	ld a, [bc]                                       ; $7e18: $0a
	nop                                              ; $7e19: $00
	ld [bc], a                                       ; $7e1a: $02
	ld [de], a                                       ; $7e1b: $12
	ld a, [bc]                                       ; $7e1c: $0a
	nop                                              ; $7e1d: $00
	ld [bc], a                                       ; $7e1e: $02
	db $10                                           ; $7e1f: $10
	ld a, [bc]                                       ; $7e20: $0a
	nop                                              ; $7e21: $00
	ld [bc], a                                       ; $7e22: $02
	inc d                                            ; $7e23: $14
	ld a, [bc]                                       ; $7e24: $0a
	nop                                              ; $7e25: $00
	ld [bc], a                                       ; $7e26: $02
	cp $ff                                           ; $7e27: $fe $ff
	ret nc                                           ; $7e29: $d0

	add d                                            ; $7e2a: $82
	cp [hl]                                          ; $7e2b: $be
	ld b, $09                                        ; $7e2c: $06 $09
	add hl, bc                                       ; $7e2e: $09
	add hl, bc                                       ; $7e2f: $09
	add hl, bc                                       ; $7e30: $09
	add hl, bc                                       ; $7e31: $09
	add hl, bc                                       ; $7e32: $09
	cp [hl]                                          ; $7e33: $be
	cp $0f                                           ; $7e34: $fe $0f
	jr jr_030_7e87                                   ; $7e36: $18 $4f

	inc c                                            ; $7e38: $0c
	cp [hl]                                          ; $7e39: $be
	ld b, $09                                        ; $7e3a: $06 $09
	dec c                                            ; $7e3c: $0d
	add hl, bc                                       ; $7e3d: $09
	dec c                                            ; $7e3e: $0d
	cp [hl]                                          ; $7e3f: $be
	dec bc                                           ; $7e40: $0b
	inc c                                            ; $7e41: $0c
	ld c, a                                          ; $7e42: $4f
	inc c                                            ; $7e43: $0c
	add hl, bc                                       ; $7e44: $09
	ld b, $0e                                        ; $7e45: $06 $0e
	inc bc                                           ; $7e47: $03
	ld c, $03                                        ; $7e48: $0e $03
	add hl, bc                                       ; $7e4a: $09
	inc c                                            ; $7e4b: $0c
	dec bc                                           ; $7e4c: $0b
	inc c                                            ; $7e4d: $0c
	ld c, a                                          ; $7e4e: $4f
	inc c                                            ; $7e4f: $0c
	cp [hl]                                          ; $7e50: $be
	ld b, $09                                        ; $7e51: $06 $09
	dec c                                            ; $7e53: $0d
	add hl, bc                                       ; $7e54: $09
	dec c                                            ; $7e55: $0d
	cp [hl]                                          ; $7e56: $be
	dec bc                                           ; $7e57: $0b
	inc c                                            ; $7e58: $0c
	ld c, a                                          ; $7e59: $4f
	inc c                                            ; $7e5a: $0c
	add hl, bc                                       ; $7e5b: $09
	ld b, $0d                                        ; $7e5c: $06 $0d
	ld b, $0b                                        ; $7e5e: $06 $0b
	inc c                                            ; $7e60: $0c
	add hl, bc                                       ; $7e61: $09
	inc c                                            ; $7e62: $0c
	ld c, a                                          ; $7e63: $4f
	inc c                                            ; $7e64: $0c
	add hl, bc                                       ; $7e65: $09
	ld b, $0d                                        ; $7e66: $06 $0d
	ld b, $be                                        ; $7e68: $06 $be
	inc c                                            ; $7e6a: $0c
	add hl, bc                                       ; $7e6b: $09
	dec bc                                           ; $7e6c: $0b
	add hl, bc                                       ; $7e6d: $09
	ld c, a                                          ; $7e6e: $4f
	cp [hl]                                          ; $7e6f: $be
	add hl, bc                                       ; $7e70: $09
	inc c                                            ; $7e71: $0c
	dec bc                                           ; $7e72: $0b
	inc c                                            ; $7e73: $0c
	ld c, a                                          ; $7e74: $4f
	inc c                                            ; $7e75: $0c
	cp [hl]                                          ; $7e76: $be
	ld b, $09                                        ; $7e77: $06 $09
	dec c                                            ; $7e79: $0d
	add hl, bc                                       ; $7e7a: $09
	dec c                                            ; $7e7b: $0d
	cp [hl]                                          ; $7e7c: $be
	dec bc                                           ; $7e7d: $0b
	inc c                                            ; $7e7e: $0c
	inc c                                            ; $7e7f: $0c
	inc c                                            ; $7e80: $0c
	inc c                                            ; $7e81: $0c
	inc c                                            ; $7e82: $0c

Jump_030_7e83:
	add hl, bc                                       ; $7e83: $09
	inc c                                            ; $7e84: $0c
	ld e, $0c                                        ; $7e85: $1e $0c

jr_030_7e87:
	ld c, a                                          ; $7e87: $4f
	inc c                                            ; $7e88: $0c
	add hl, bc                                       ; $7e89: $09
	ld b, $0d                                        ; $7e8a: $06 $0d
	ld b, $be                                        ; $7e8c: $06 $be
	inc c                                            ; $7e8e: $0c
	add hl, bc                                       ; $7e8f: $09
	dec bc                                           ; $7e90: $0b
	add hl, bc                                       ; $7e91: $09

Jump_030_7e92:
	ld c, a                                          ; $7e92: $4f
	cp [hl]                                          ; $7e93: $be
	add hl, bc                                       ; $7e94: $09
	inc c                                            ; $7e95: $0c
	dec bc                                           ; $7e96: $0b
	inc c                                            ; $7e97: $0c
	ld c, a                                          ; $7e98: $4f
	inc c                                            ; $7e99: $0c
	add hl, bc                                       ; $7e9a: $09
	ld b, $0e                                        ; $7e9b: $06 $0e
	inc bc                                           ; $7e9d: $03
	ld c, $03                                        ; $7e9e: $0e $03
	add hl, bc                                       ; $7ea0: $09
	ld b, $0d                                        ; $7ea1: $06 $0d
	ld b, $0b                                        ; $7ea3: $06 $0b
	inc c                                            ; $7ea5: $0c
	ld c, a                                          ; $7ea6: $4f
	inc c                                            ; $7ea7: $0c
	add hl, bc                                       ; $7ea8: $09
	ld b, $0d                                        ; $7ea9: $06 $0d
	ld b, $0b                                        ; $7eab: $06 $0b
	inc c                                            ; $7ead: $0c
	add hl, bc                                       ; $7eae: $09
	inc c                                            ; $7eaf: $0c
	ld c, a                                          ; $7eb0: $4f
	inc c                                            ; $7eb1: $0c
	add hl, bc                                       ; $7eb2: $09
	ld b, $0d                                        ; $7eb3: $06 $0d
	ld b, $be                                        ; $7eb5: $06 $be
	inc c                                            ; $7eb7: $0c
	add hl, bc                                       ; $7eb8: $09
	dec bc                                           ; $7eb9: $0b
	add hl, bc                                       ; $7eba: $09
	ld c, a                                          ; $7ebb: $4f
	cp [hl]                                          ; $7ebc: $be
	add hl, bc                                       ; $7ebd: $09
	inc c                                            ; $7ebe: $0c
	dec bc                                           ; $7ebf: $0b
	inc c                                            ; $7ec0: $0c
	ld c, a                                          ; $7ec1: $4f
	inc c                                            ; $7ec2: $0c
	cp [hl]                                          ; $7ec3: $be
	ld b, $09                                        ; $7ec4: $06 $09
	dec c                                            ; $7ec6: $0d
	add hl, bc                                       ; $7ec7: $09
	dec c                                            ; $7ec8: $0d
	cp [hl]                                          ; $7ec9: $be
	dec bc                                           ; $7eca: $0b
	inc c                                            ; $7ecb: $0c
	ld c, a                                          ; $7ecc: $4f
	inc c                                            ; $7ecd: $0c
	dec c                                            ; $7ece: $0d
	ld b, $4f                                        ; $7ecf: $06 $4f
	ld b, $11                                        ; $7ed1: $06 $11

Call_030_7ed3:
	ld b, $10                                        ; $7ed3: $06 $10
	ld b, $0a                                        ; $7ed5: $06 $0a
	inc c                                            ; $7ed7: $0c
	ld c, a                                          ; $7ed8: $4f
	inc c                                            ; $7ed9: $0c
	cp [hl]                                          ; $7eda: $be
	ld b, $0d                                        ; $7edb: $06 $0d
	dec c                                            ; $7edd: $0d
	ld de, $be10                                     ; $7ede: $11 $10 $be
	ld a, [bc]                                       ; $7ee1: $0a
	inc c                                            ; $7ee2: $0c
	cp [hl]                                          ; $7ee3: $be
	ld b, $4f                                        ; $7ee4: $06 $4f
	ld de, $0d09                                     ; $7ee6: $11 $09 $0d
	cp [hl]                                          ; $7ee9: $be
	ld de, $1006                                     ; $7eea: $11 $06 $10
	ld b, $0a                                        ; $7eed: $06 $0a
	inc c                                            ; $7eef: $0c
	ld c, a                                          ; $7ef0: $4f
	inc c                                            ; $7ef1: $0c
	cp [hl]                                          ; $7ef2: $be
	ld b, $0d                                        ; $7ef3: $06 $0d
	dec c                                            ; $7ef5: $0d
	ld de, $be0d                                     ; $7ef6: $11 $0d $be
	dec bc                                           ; $7ef9: $0b
	inc c                                            ; $7efa: $0c
	ld c, a                                          ; $7efb: $4f
	inc c                                            ; $7efc: $0c
	dec c                                            ; $7efd: $0d
	ld b, $0c                                        ; $7efe: $06 $0c
	ld b, $11                                        ; $7f00: $06 $11
	ld b, $10                                        ; $7f02: $06 $10
	ld b, $0a                                        ; $7f04: $06 $0a
	inc c                                            ; $7f06: $0c
	ld c, a                                          ; $7f07: $4f
	inc c                                            ; $7f08: $0c
	cp [hl]                                          ; $7f09: $be
	ld b, $0d                                        ; $7f0a: $06 $0d
	dec c                                            ; $7f0c: $0d
	ld de, $be10                                     ; $7f0d: $11 $10 $be
	dec bc                                           ; $7f10: $0b
	inc c                                            ; $7f11: $0c
	ld c, a                                          ; $7f12: $4f
	inc c                                            ; $7f13: $0c
	ld a, [bc]                                       ; $7f14: $0a
	inc c                                            ; $7f15: $0c
	ld c, a                                          ; $7f16: $4f
	ld b, $4f                                        ; $7f17: $06 $4f
	ld b, $0b                                        ; $7f19: $06 $0b
	inc c                                            ; $7f1b: $0c
	ld c, a                                          ; $7f1c: $4f
	inc c                                            ; $7f1d: $0c
	dec bc                                           ; $7f1e: $0b
	inc c                                            ; $7f1f: $0c
	ld c, a                                          ; $7f20: $4f
	ld b, $4f                                        ; $7f21: $06 $4f
	ld b, $0b                                        ; $7f23: $06 $0b
	inc c                                            ; $7f25: $0c
	ld c, a                                          ; $7f26: $4f
	inc c                                            ; $7f27: $0c
	dec bc                                           ; $7f28: $0b
	inc c                                            ; $7f29: $0c
	rrca                                             ; $7f2a: $0f
	inc c                                            ; $7f2b: $0c
	ld a, [bc]                                       ; $7f2c: $0a
	inc c                                            ; $7f2d: $0c
	ld c, a                                          ; $7f2e: $4f
	inc c                                            ; $7f2f: $0c
	cp [hl]                                          ; $7f30: $be
	ld b, $0d                                        ; $7f31: $06 $0d
	dec c                                            ; $7f33: $0d
	ld de, $be10                                     ; $7f34: $11 $10 $be
	ld a, [bc]                                       ; $7f37: $0a
	inc c                                            ; $7f38: $0c
	cp [hl]                                          ; $7f39: $be
	ld b, $4f                                        ; $7f3a: $06 $4f
	db $10                                           ; $7f3c: $10
	ld a, [bc]                                       ; $7f3d: $0a
	dec c                                            ; $7f3e: $0d
	cp [hl]                                          ; $7f3f: $be
	ld de, $1006                                     ; $7f40: $11 $06 $10
	ld b, $0a                                        ; $7f43: $06 $0a
	inc c                                            ; $7f45: $0c
	ld c, a                                          ; $7f46: $4f
	inc c                                            ; $7f47: $0c
	cp [hl]                                          ; $7f48: $be
	ld b, $11                                        ; $7f49: $06 $11
	db $10                                           ; $7f4b: $10
	ld a, [bc]                                       ; $7f4c: $0a
	ld c, $be                                        ; $7f4d: $0e $be
	dec bc                                           ; $7f4f: $0b
	inc c                                            ; $7f50: $0c
	cp [hl]                                          ; $7f51: $be
	ld b, $4f                                        ; $7f52: $06 $4f
	dec c                                            ; $7f54: $0d
	dec c                                            ; $7f55: $0d
	inc c                                            ; $7f56: $0c
	cp [hl]                                          ; $7f57: $be
	cp [hl]                                          ; $7f58: $be
	inc c                                            ; $7f59: $0c
	dec bc                                           ; $7f5a: $0b
	ld c, a                                          ; $7f5b: $4f
	ld c, a                                          ; $7f5c: $4f
	dec bc                                           ; $7f5d: $0b
	ld c, a                                          ; $7f5e: $4f
	ld c, a                                          ; $7f5f: $4f
	dec bc                                           ; $7f60: $0b
	cp [hl]                                          ; $7f61: $be
	rrca                                             ; $7f62: $0f
	jr jr_030_7f71                                   ; $7f63: $18 $0c

	inc c                                            ; $7f65: $0c
	ld c, a                                          ; $7f66: $4f
	inc c                                            ; $7f67: $0c
	ld c, a                                          ; $7f68: $4f
	inc c                                            ; $7f69: $0c
	dec bc                                           ; $7f6a: $0b
	ld b, $0c                                        ; $7f6b: $06 $0c
	ld b, $0c                                        ; $7f6d: $06 $0c
	ld b, $0d                                        ; $7f6f: $06 $0d

jr_030_7f71:
	inc bc                                           ; $7f71: $03
	dec c                                            ; $7f72: $0d
	inc bc                                           ; $7f73: $03
	ld c, a                                          ; $7f74: $4f
	inc c                                            ; $7f75: $0c
	dec c                                            ; $7f76: $0d
	ld b, $0c                                        ; $7f77: $06 $0c
	ld b, $fe                                        ; $7f79: $06 $fe
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
