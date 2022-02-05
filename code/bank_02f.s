; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $02f", ROMX[$4000], BANK[$2f]

	or h                                             ; $4000: $b4
	ld [hl], b                                       ; $4001: $70
	ld [hl], c                                       ; $4002: $71
	nop                                              ; $4003: $00
	ld a, [hl]                                       ; $4004: $7e
	ld [bc], a                                       ; $4005: $02
	nop                                              ; $4006: $00
	and b                                            ; $4007: $a0
	jr jr_02f_401c                                   ; $4008: $18 $12

	ld a, [hl]                                       ; $400a: $7e
	nop                                              ; $400b: $00
	sub h                                            ; $400c: $94
	daa                                              ; $400d: $27
	jr jr_02f_4016                                   ; $400e: $18 $06

	ld a, [hl]                                       ; $4010: $7e
	nop                                              ; $4011: $00
	cp $c7                                           ; $4012: $fe $c7
	sub b                                            ; $4014: $90
	sub h                                            ; $4015: $94

jr_02f_4016:
	ld [$0621], sp                                   ; $4016: $08 $21 $06
	jp $0621                                         ; $4019: $c3 $21 $06


jr_02f_401c:
	or c                                             ; $401c: $b1
	add c                                            ; $401d: $81
	rst $38                                          ; $401e: $ff
	inc bc                                           ; $401f: $03
	cp [hl]                                          ; $4020: $be
	ld b, $21                                        ; $4021: $06 $21
	ld [hl+], a                                      ; $4023: $22
	ld hl, $1d1f                                     ; $4024: $21 $1f $1d
	rra                                              ; $4027: $1f
	ld hl, $b1be                                     ; $4028: $21 $be $b1
	ld sp, $0000                                     ; $402b: $31 $00 $00
	ld hl, $b106                                     ; $402e: $21 $06 $b1
	add c                                            ; $4031: $81
	rst $38                                          ; $4032: $ff
	inc bc                                           ; $4033: $03
	jr jr_02f_403b                                   ; $4034: $18 $05

	jp $0118                                         ; $4036: $c3 $18 $01


	ret                                              ; $4039: $c9


	add hl, de                                       ; $403a: $19

jr_02f_403b:
	dec b                                            ; $403b: $05
	jp $0119                                         ; $403c: $c3 $19 $01


	or c                                             ; $403f: $b1
	add c                                            ; $4040: $81
	nop                                              ; $4041: $00
	nop                                              ; $4042: $00
	ld a, [hl]                                       ; $4043: $7e
	ld [bc], a                                       ; $4044: $02
	nop                                              ; $4045: $00
	and c                                            ; $4046: $a1
	jr jr_02f_4055                                   ; $4047: $18 $0c

	ld a, [hl]                                       ; $4049: $7e
	dec b                                            ; $404a: $05
	nop                                              ; $404b: $00
	and b                                            ; $404c: $a0
	dec e                                            ; $404d: $1d
	dec bc                                           ; $404e: $0b
	jp $011d                                         ; $404f: $c3 $1d $01


	rst JumpTable                                          ; $4052: $c7
	sub b                                            ; $4053: $90
	ld a, [hl]                                       ; $4054: $7e

jr_02f_4055:
	nop                                              ; $4055: $00
	ld hl, $c306                                     ; $4056: $21 $06 $c3
	ld hl, $b106                                     ; $4059: $21 $06 $b1
	sub c                                            ; $405c: $91
	rst $38                                          ; $405d: $ff
	ld [bc], a                                       ; $405e: $02
	cp [hl]                                          ; $405f: $be
	ld b, $21                                        ; $4060: $06 $21
	ld [hl+], a                                      ; $4062: $22
	ld hl, $1d1f                                     ; $4063: $21 $1f $1d
	rra                                              ; $4066: $1f
	ld hl, $b1be                                     ; $4067: $21 $be $b1
	ld sp, $0000                                     ; $406a: $31 $00 $00
	ld hl, $b106                                     ; $406d: $21 $06 $b1
	add c                                            ; $4070: $81
	rst $38                                          ; $4071: $ff
	inc bc                                           ; $4072: $03
	jr jr_02f_407a                                   ; $4073: $18 $05

	jp $0118                                         ; $4075: $c3 $18 $01


	ret                                              ; $4078: $c9


	add hl, de                                       ; $4079: $19

jr_02f_407a:
	dec b                                            ; $407a: $05
	jp $0119                                         ; $407b: $c3 $19 $01


	or c                                             ; $407e: $b1
	add c                                            ; $407f: $81
	nop                                              ; $4080: $00
	nop                                              ; $4081: $00
	ld a, [hl]                                       ; $4082: $7e
	ld [bc], a                                       ; $4083: $02
	nop                                              ; $4084: $00
	and c                                            ; $4085: $a1
	jr @+$0e                                         ; $4086: $18 $0c

	ld a, [hl]                                       ; $4088: $7e
	dec b                                            ; $4089: $05
	nop                                              ; $408a: $00
	and b                                            ; $408b: $a0
	dec e                                            ; $408c: $1d
	inc c                                            ; $408d: $0c
	ld a, [hl]                                       ; $408e: $7e
	nop                                              ; $408f: $00
	or l                                             ; $4090: $b5
	ld h, c                                          ; $4091: $61
	ld [bc], a                                       ; $4092: $02
	ld b, $01                                        ; $4093: $06 $01
	ld [hl-], a                                      ; $4095: $32
	ld b, $32                                        ; $4096: $06 $32
	ld b, $b1                                        ; $4098: $06 $b1
	sub e                                            ; $409a: $93
	ld b, $01                                        ; $409b: $06 $01
	add hl, hl                                       ; $409d: $29
	ld b, $b1                                        ; $409e: $06 $b1
	inc hl                                           ; $40a0: $23
	ld b, $07                                        ; $40a1: $06 $07
	add hl, hl                                       ; $40a3: $29
	ld b, $b1                                        ; $40a4: $06 $b1
	sub e                                            ; $40a6: $93
	ld b, $01                                        ; $40a7: $06 $01
	add hl, hl                                       ; $40a9: $29
	ld b, $b1                                        ; $40aa: $06 $b1
	inc hl                                           ; $40ac: $23
	ld b, $07                                        ; $40ad: $06 $07
	add hl, hl                                       ; $40af: $29
	ld b, $b1                                        ; $40b0: $06 $b1
	ld h, c                                          ; $40b2: $61
	ld b, $01                                        ; $40b3: $06 $01
	ld [hl-], a                                      ; $40b5: $32
	ld b, $32                                        ; $40b6: $06 $32
	ld b, $b1                                        ; $40b8: $06 $b1

jr_02f_40ba:
	sub d                                            ; $40ba: $92
	ld b, $01                                        ; $40bb: $06 $01
	add hl, hl                                       ; $40bd: $29
	ld b, $b1                                        ; $40be: $06 $b1
	ld [hl+], a                                      ; $40c0: $22
	nop                                              ; $40c1: $00
	nop                                              ; $40c2: $00
	add hl, hl                                       ; $40c3: $29
	ld b, $b1                                        ; $40c4: $06 $b1
	sub d                                            ; $40c6: $92
	ld b, $01                                        ; $40c7: $06 $01
	add hl, hl                                       ; $40c9: $29
	ld b, $b1                                        ; $40ca: $06 $b1
	ld [hl+], a                                      ; $40cc: $22
	nop                                              ; $40cd: $00
	nop                                              ; $40ce: $00
	add hl, hl                                       ; $40cf: $29
	ld b, $c8                                        ; $40d0: $06 $c8
	pop de                                           ; $40d2: $d1
	sub c                                            ; $40d3: $91
	ld a, [hl]                                       ; $40d4: $7e
	ld [bc], a                                       ; $40d5: $02
	nop                                              ; $40d6: $00
	and c                                            ; $40d7: $a1
	rra                                              ; $40d8: $1f
	inc c                                            ; $40d9: $0c
	ld a, [hl]                                       ; $40da: $7e
	nop                                              ; $40db: $00
	sub h                                            ; $40dc: $94
	ld [hl], a                                       ; $40dd: $77
	add $1f                                          ; $40de: $c6 $1f
	inc c                                            ; $40e0: $0c
	or c                                             ; $40e1: $b1
	add c                                            ; $40e2: $81
	rst $38                                          ; $40e3: $ff
	ld bc, $0894                                     ; $40e4: $01 $94 $08
	cp [hl]                                          ; $40e7: $be
	ld b, $29                                        ; $40e8: $06 $29
	jr z, jr_02f_4112                                ; $40ea: $28 $26

	add hl, hl                                       ; $40ec: $29
	jr z, jr_02f_4115                                ; $40ed: $28 $26

	inc h                                            ; $40ef: $24
	cp [hl]                                          ; $40f0: $be
	sub [hl]                                         ; $40f1: $96
	rst $38                                          ; $40f2: $ff
	ld bc, $06be                                     ; $40f3: $01 $be $06
	jr z, jr_02f_4126                                ; $40f6: $28 $2e

	dec l                                            ; $40f8: $2d
	dec hl                                           ; $40f9: $2b
	jr z, jr_02f_40ba                                ; $40fa: $28 $be

	or c                                             ; $40fc: $b1
	sub c                                            ; $40fd: $91
	rst $38                                          ; $40fe: $ff
	ld [bc], a                                       ; $40ff: $02
	cp [hl]                                          ; $4100: $be
	ld b, $24                                        ; $4101: $06 $24
	ld h, $28                                        ; $4103: $26 $28
	inc h                                            ; $4105: $24
	cp [hl]                                          ; $4106: $be
	ret z                                            ; $4107: $c8

	sub b                                            ; $4108: $90
	sub h                                            ; $4109: $94
	ld [$0621], sp                                   ; $410a: $08 $21 $06
	jp $0621                                         ; $410d: $c3 $21 $06


	or c                                             ; $4110: $b1
	sub c                                            ; $4111: $91

jr_02f_4112:
	rst $38                                          ; $4112: $ff
	inc bc                                           ; $4113: $03
	cp [hl]                                          ; $4114: $be

jr_02f_4115:
	ld b, $21                                        ; $4115: $06 $21
	ld [hl+], a                                      ; $4117: $22
	ld hl, $1d1f                                     ; $4118: $21 $1f $1d
	rra                                              ; $411b: $1f
	ld hl, $b1be                                     ; $411c: $21 $be $b1
	ld sp, $0000                                     ; $411f: $31 $00 $00
	ld hl, $b106                                     ; $4122: $21 $06 $b1
	add c                                            ; $4125: $81

jr_02f_4126:
	rst $38                                          ; $4126: $ff
	inc bc                                           ; $4127: $03
	jr jr_02f_412f                                   ; $4128: $18 $05

	jp $0118                                         ; $412a: $c3 $18 $01


	ret z                                            ; $412d: $c8

	add hl, de                                       ; $412e: $19

jr_02f_412f:
	dec b                                            ; $412f: $05
	jp $0119                                         ; $4130: $c3 $19 $01


	or c                                             ; $4133: $b1
	add c                                            ; $4134: $81
	nop                                              ; $4135: $00
	nop                                              ; $4136: $00
	ld a, [hl]                                       ; $4137: $7e
	ld [bc], a                                       ; $4138: $02
	nop                                              ; $4139: $00
	and c                                            ; $413a: $a1
	jr jr_02f_4149                                   ; $413b: $18 $0c

	ld a, [hl]                                       ; $413d: $7e
	dec b                                            ; $413e: $05
	nop                                              ; $413f: $00
	xor c                                            ; $4140: $a9
	dec e                                            ; $4141: $1d
	dec bc                                           ; $4142: $0b
	jp $011d                                         ; $4143: $c3 $1d $01


	ret z                                            ; $4146: $c8

	ld a, [hl]                                       ; $4147: $7e
	nop                                              ; $4148: $00

jr_02f_4149:
	ld hl, $c306                                     ; $4149: $21 $06 $c3
	ld hl, $b106                                     ; $414c: $21 $06 $b1
	sub c                                            ; $414f: $91
	rst $38                                          ; $4150: $ff
	ld [bc], a                                       ; $4151: $02
	cp [hl]                                          ; $4152: $be
	ld b, $21                                        ; $4153: $06 $21
	ld [hl+], a                                      ; $4155: $22
	ld hl, $1d1f                                     ; $4156: $21 $1f $1d
	rra                                              ; $4159: $1f
	ld hl, $b1be                                     ; $415a: $21 $be $b1
	ld sp, $0000                                     ; $415d: $31 $00 $00

jr_02f_4160:
	ld hl, $b106                                     ; $4160: $21 $06 $b1
	add c                                            ; $4163: $81
	rst $38                                          ; $4164: $ff
	inc bc                                           ; $4165: $03
	jr @+$07                                         ; $4166: $18 $05

	jp $0118                                         ; $4168: $c3 $18 $01


	jp z, $051c                                      ; $416b: $ca $1c $05

	jp $011c                                         ; $416e: $c3 $1c $01


	or c                                             ; $4171: $b1
	sub c                                            ; $4172: $91
	nop                                              ; $4173: $00
	nop                                              ; $4174: $00
	ld a, [hl]                                       ; $4175: $7e
	ld [bc], a                                       ; $4176: $02
	nop                                              ; $4177: $00
	and c                                            ; $4178: $a1
	dec e                                            ; $4179: $1d
	inc c                                            ; $417a: $0c
	or c                                             ; $417b: $b1
	add c                                            ; $417c: $81
	rst $38                                          ; $417d: $ff
	rlca                                             ; $417e: $07
	ld a, [hl]                                       ; $417f: $7e
	nop                                              ; $4180: $00
	sub h                                            ; $4181: $94
	ld a, a                                          ; $4182: $7f
	add hl, hl                                       ; $4183: $29
	inc c                                            ; $4184: $0c
	ld a, [hl]                                       ; $4185: $7e
	nop                                              ; $4186: $00
	sub h                                            ; $4187: $94
	ld [$0096], sp                                   ; $4188: $08 $96 $00
	nop                                              ; $418b: $00
	or l                                             ; $418c: $b5
	ld h, c                                          ; $418d: $61
	ld bc, $0000                                     ; $418e: $01 $00 $00
	ld a, [hl]                                       ; $4191: $7e
	ld [bc], a                                       ; $4192: $02
	nop                                              ; $4193: $00
	and b                                            ; $4194: $a0
	ld e, $30                                        ; $4195: $1e $30
	add $13                                          ; $4197: $c6 $13
	jr nc, jr_02f_4160                               ; $4199: $30 $c5

	inc d                                            ; $419b: $14
	inc c                                            ; $419c: $0c
	rst JumpTable                                          ; $419d: $c7
	dec de                                           ; $419e: $1b
	inc c                                            ; $419f: $0c
	push bc                                          ; $41a0: $c5
	dec d                                            ; $41a1: $15
	inc c                                            ; $41a2: $0c
	rst JumpTable                                          ; $41a3: $c7
	inc e                                            ; $41a4: $1c
	inc c                                            ; $41a5: $0c
	push bc                                          ; $41a6: $c5
	ld d, $0c                                        ; $41a7: $16 $0c
	rst JumpTable                                          ; $41a9: $c7
	dec e                                            ; $41aa: $1d
	inc c                                            ; $41ab: $0c
	sub b                                            ; $41ac: $90
	ld a, [hl]                                       ; $41ad: $7e
	nop                                              ; $41ae: $00
	jr jr_02f_41c3                                   ; $41af: $18 $12

	sub h                                            ; $41b1: $94
	daa                                              ; $41b2: $27
	jr jr_02f_41bb                                   ; $41b3: $18 $06

	sub h                                            ; $41b5: $94
	ld [$fffe], sp                                   ; $41b6: $08 $fe $ff
	or [hl]                                          ; $41b9: $b6
	ld [hl], b                                       ; $41ba: $70

jr_02f_41bb:
	pop bc                                           ; $41bb: $c1
	ld bc, $02ff                                     ; $41bc: $01 $ff $02
	ld a, [hl]                                       ; $41bf: $7e
	dec b                                            ; $41c0: $05
	nop                                              ; $41c1: $00
	and b                                            ; $41c2: $a0

jr_02f_41c3:
	ld a, l                                          ; $41c3: $7d
	ld bc, $062f                                     ; $41c4: $01 $2f $06
	ld a, [hl]                                       ; $41c7: $7e
	nop                                              ; $41c8: $00
	jr nc, jr_02f_41d1                               ; $41c9: $30 $06

	cpl                                              ; $41cb: $2f
	ld b, $30                                        ; $41cc: $06 $30
	ld b, $fe                                        ; $41ce: $06 $fe
	rst JumpTable                                          ; $41d0: $c7

jr_02f_41d1:
	ld a, [hl]                                       ; $41d1: $7e
	dec b                                            ; $41d2: $05
	nop                                              ; $41d3: $00
	and c                                            ; $41d4: $a1
	dec [hl]                                         ; $41d5: $35
	dec b                                            ; $41d6: $05
	ld a, [hl]                                       ; $41d7: $7e
	nop                                              ; $41d8: $00
	or c                                             ; $41d9: $b1
	ld hl, $0000                                     ; $41da: $21 $00 $00
	dec [hl]                                         ; $41dd: $35
	rlca                                             ; $41de: $07
	ld a, [hl]                                       ; $41df: $7e
	dec b                                            ; $41e0: $05
	nop                                              ; $41e1: $00
	xor c                                            ; $41e2: $a9
	dec [hl]                                         ; $41e3: $35
	inc c                                            ; $41e4: $0c
	or c                                             ; $41e5: $b1
	or c                                             ; $41e6: $b1
	rst $38                                          ; $41e7: $ff
	rlca                                             ; $41e8: $07
	ld a, [hl]                                       ; $41e9: $7e
	ld bc, $a900                                     ; $41ea: $01 $00 $a9
	dec l                                            ; $41ed: $2d
	inc h                                            ; $41ee: $24
	or c                                             ; $41ef: $b1
	ld sp, $0000                                     ; $41f0: $31 $00 $00
	dec l                                            ; $41f3: $2d
	inc c                                            ; $41f4: $0c
	or c                                             ; $41f5: $b1
	or c                                             ; $41f6: $b1
	rst $38                                          ; $41f7: $ff
	inc bc                                           ; $41f8: $03
	ld a, [hl]                                       ; $41f9: $7e
	nop                                              ; $41fa: $00
	cp [hl]                                          ; $41fb: $be
	ld b, $2c                                        ; $41fc: $06 $2c
	dec l                                            ; $41fe: $2d
	inc l                                            ; $41ff: $2c
	dec l                                            ; $4200: $2d
	cp [hl]                                          ; $4201: $be
	ret z                                            ; $4202: $c8

	ld a, [hl]                                       ; $4203: $7e
	dec b                                            ; $4204: $05
	nop                                              ; $4205: $00
	and c                                            ; $4206: $a1
	jr nc, jr_02f_420f                               ; $4207: $30 $06

	ld a, [hl]                                       ; $4209: $7e
	nop                                              ; $420a: $00
	or c                                             ; $420b: $b1
	ld hl, $0000                                     ; $420c: $21 $00 $00

jr_02f_420f:
	jr nc, jr_02f_4217                               ; $420f: $30 $06

	ld a, [hl]                                       ; $4211: $7e
	dec b                                            ; $4212: $05
	nop                                              ; $4213: $00
	and b                                            ; $4214: $a0
	jr nc, @+$0e                                     ; $4215: $30 $0c

jr_02f_4217:
	or c                                             ; $4217: $b1
	or c                                             ; $4218: $b1
	rst $38                                          ; $4219: $ff
	rlca                                             ; $421a: $07
	ld a, [hl]                                       ; $421b: $7e
	ld bc, $a900                                     ; $421c: $01 $00 $a9
	add hl, hl                                       ; $421f: $29
	ld e, $b1                                        ; $4220: $1e $b1
	ld sp, $0000                                     ; $4222: $31 $00 $00
	add hl, hl                                       ; $4225: $29
	ld b, $b1                                        ; $4226: $06 $b1
	sub c                                            ; $4228: $91
	rst $38                                          ; $4229: $ff
	ld [bc], a                                       ; $422a: $02
	ld a, [hl]                                       ; $422b: $7e
	nop                                              ; $422c: $00
	cp [hl]                                          ; $422d: $be
	ld b, $29                                        ; $422e: $06 $29
	dec hl                                           ; $4230: $2b
	dec l                                            ; $4231: $2d
	dec hl                                           ; $4232: $2b
	add hl, hl                                       ; $4233: $29
	cp [hl]                                          ; $4234: $be
	or c                                             ; $4235: $b1
	ld sp, $0000                                     ; $4236: $31 $00 $00
	add hl, hl                                       ; $4239: $29
	ld b, $b5                                        ; $423a: $06 $b5
	add c                                            ; $423c: $81
	ld bc, $07ff                                     ; $423d: $01 $ff $07
	ld a, [hl]                                       ; $4240: $7e
	nop                                              ; $4241: $00
	ld l, $03                                        ; $4242: $2e $03
	cpl                                              ; $4244: $2f
	add hl, bc                                       ; $4245: $09
	dec hl                                           ; $4246: $2b
	ld b, $2a                                        ; $4247: $06 $2a
	ld b, $2b                                        ; $4249: $06 $2b
	ld b, $c3                                        ; $424b: $06 $c3
	dec hl                                           ; $424d: $2b
	ld b, $c8                                        ; $424e: $06 $c8
	cpl                                              ; $4250: $2f
	inc bc                                           ; $4251: $03
	cpl                                              ; $4252: $2f
	add hl, bc                                       ; $4253: $09
	dec hl                                           ; $4254: $2b
	ld b, $2a                                        ; $4255: $06 $2a
	ld b, $2b                                        ; $4257: $06 $2b
	ld b, $c3                                        ; $4259: $06 $c3
	dec hl                                           ; $425b: $2b
	ld b, $b1                                        ; $425c: $06 $b1
	sub c                                            ; $425e: $91
	rst $38                                          ; $425f: $ff
	inc bc                                           ; $4260: $03
	cpl                                              ; $4261: $2f
	inc c                                            ; $4262: $0c
	jr nc, @+$0e                                     ; $4263: $30 $0c

	or c                                             ; $4265: $b1
	sub c                                            ; $4266: $91
	nop                                              ; $4267: $00
	nop                                              ; $4268: $00
	ld sp, $3203                                     ; $4269: $31 $03 $32
	inc bc                                           ; $426c: $03
	ld a, [hl]                                       ; $426d: $7e
	nop                                              ; $426e: $00
	jp $0632                                         ; $426f: $c3 $32 $06


	ld a, [hl]                                       ; $4272: $7e
	dec b                                            ; $4273: $05
	nop                                              ; $4274: $00
	xor c                                            ; $4275: $a9
	ld [hl-], a                                      ; $4276: $32
	ld b, $c8                                        ; $4277: $06 $c8
	jr nc, jr_02f_4280                               ; $4279: $30 $05

	nop                                              ; $427b: $00
	ld bc, $017e                                     ; $427c: $01 $7e $01
	inc de                                           ; $427f: $13

jr_02f_4280:
	xor c                                            ; $4280: $a9
	jr nc, jr_02f_42a7                               ; $4281: $30 $24

	jp $0c30                                         ; $4283: $c3 $30 $0c


	or c                                             ; $4286: $b1
	or c                                             ; $4287: $b1
	rst $38                                          ; $4288: $ff
	inc bc                                           ; $4289: $03
	ld a, [hl]                                       ; $428a: $7e
	dec b                                            ; $428b: $05
	nop                                              ; $428c: $00
	xor c                                            ; $428d: $a9
	cpl                                              ; $428e: $2f
	ld b, $7e                                        ; $428f: $06 $7e
	nop                                              ; $4291: $00
	jr nc, jr_02f_429a                               ; $4292: $30 $06

	cpl                                              ; $4294: $2f
	ld b, $30                                        ; $4295: $06 $30
	ld b, $c7                                        ; $4297: $06 $c7
	sub c                                            ; $4299: $91

jr_02f_429a:
	ld a, [hl]                                       ; $429a: $7e
	dec b                                            ; $429b: $05
	nop                                              ; $429c: $00
	and c                                            ; $429d: $a1
	dec [hl]                                         ; $429e: $35
	ld b, $7e                                        ; $429f: $06 $7e
	nop                                              ; $42a1: $00
	or c                                             ; $42a2: $b1
	ld sp, $0000                                     ; $42a3: $31 $00 $00
	dec [hl]                                         ; $42a6: $35

jr_02f_42a7:
	ld b, $7e                                        ; $42a7: $06 $7e
	dec b                                            ; $42a9: $05
	nop                                              ; $42aa: $00
	xor c                                            ; $42ab: $a9
	dec [hl]                                         ; $42ac: $35
	inc c                                            ; $42ad: $0c
	or c                                             ; $42ae: $b1
	sub c                                            ; $42af: $91
	rst $38                                          ; $42b0: $ff
	rlca                                             ; $42b1: $07
	ld a, [hl]                                       ; $42b2: $7e
	ld bc, $a900                                     ; $42b3: $01 $00 $a9
	dec l                                            ; $42b6: $2d
	inc h                                            ; $42b7: $24
	or c                                             ; $42b8: $b1
	ld sp, $0000                                     ; $42b9: $31 $00 $00
	dec l                                            ; $42bc: $2d
	inc c                                            ; $42bd: $0c
	or c                                             ; $42be: $b1
	or c                                             ; $42bf: $b1
	rst $38                                          ; $42c0: $ff
	inc bc                                           ; $42c1: $03
	ld a, [hl]                                       ; $42c2: $7e
	nop                                              ; $42c3: $00
	cp [hl]                                          ; $42c4: $be
	ld b, $2c                                        ; $42c5: $06 $2c
	dec l                                            ; $42c7: $2d
	inc l                                            ; $42c8: $2c
	dec l                                            ; $42c9: $2d
	cp [hl]                                          ; $42ca: $be
	ret                                              ; $42cb: $c9


	ld a, [hl]                                       ; $42cc: $7e
	dec b                                            ; $42cd: $05
	nop                                              ; $42ce: $00
	and c                                            ; $42cf: $a1
	jr nc, jr_02f_42d8                               ; $42d0: $30 $06

	ld a, [hl]                                       ; $42d2: $7e
	nop                                              ; $42d3: $00
	or c                                             ; $42d4: $b1
	ld hl, $0000                                     ; $42d5: $21 $00 $00

jr_02f_42d8:
	jr nc, jr_02f_42e0                               ; $42d8: $30 $06

	ld a, [hl]                                       ; $42da: $7e
	dec b                                            ; $42db: $05
	nop                                              ; $42dc: $00
	and b                                            ; $42dd: $a0
	jr nc, @+$0e                                     ; $42de: $30 $0c

jr_02f_42e0:
	or c                                             ; $42e0: $b1
	and c                                            ; $42e1: $a1
	rst $38                                          ; $42e2: $ff
	rlca                                             ; $42e3: $07
	ld a, [hl]                                       ; $42e4: $7e
	ld bc, $a900                                     ; $42e5: $01 $00 $a9
	add hl, hl                                       ; $42e8: $29
	ld e, $b1                                        ; $42e9: $1e $b1
	ld sp, $0000                                     ; $42eb: $31 $00 $00
	add hl, hl                                       ; $42ee: $29
	ld b, $b1                                        ; $42ef: $06 $b1
	and c                                            ; $42f1: $a1
	rst $38                                          ; $42f2: $ff
	ld [bc], a                                       ; $42f3: $02
	ld a, [hl]                                       ; $42f4: $7e
	dec b                                            ; $42f5: $05
	nop                                              ; $42f6: $00
	xor c                                            ; $42f7: $a9
	add hl, hl                                       ; $42f8: $29
	ld b, $7e                                        ; $42f9: $06 $7e
	nop                                              ; $42fb: $00
	cp [hl]                                          ; $42fc: $be
	ld b, $2b                                        ; $42fd: $06 $2b
	dec l                                            ; $42ff: $2d
	dec hl                                           ; $4300: $2b
	add hl, hl                                       ; $4301: $29
	cp [hl]                                          ; $4302: $be
	or c                                             ; $4303: $b1
	ld sp, $0000                                     ; $4304: $31 $00 $00
	add hl, hl                                       ; $4307: $29
	ld b, $b5                                        ; $4308: $06 $b5
	pop bc                                           ; $430a: $c1
	nop                                              ; $430b: $00
	rst $38                                          ; $430c: $ff
	inc bc                                           ; $430d: $03
	ld a, [hl]                                       ; $430e: $7e
	dec b                                            ; $430f: $05
	nop                                              ; $4310: $00
	and c                                            ; $4311: $a1
	rla                                              ; $4312: $17
	inc c                                            ; $4313: $0c
	ld a, [hl]                                       ; $4314: $7e
	nop                                              ; $4315: $00
	call z, $051e                                    ; $4316: $cc $1e $05
	nop                                              ; $4319: $00
	ld bc, $051e                                     ; $431a: $01 $1e $05
	nop                                              ; $431d: $00
	ld bc, $061e                                     ; $431e: $01 $1e $06
	or c                                             ; $4321: $b1
	ld sp, $0000                                     ; $4322: $31 $00 $00
	ld e, $06                                        ; $4325: $1e $06
	or c                                             ; $4327: $b1
	or c                                             ; $4328: $b1
	rst $38                                          ; $4329: $ff
	inc b                                            ; $432a: $04
	ld a, [hl]                                       ; $432b: $7e
	dec b                                            ; $432c: $05
	nop                                              ; $432d: $00
	and c                                            ; $432e: $a1
	rla                                              ; $432f: $17
	inc c                                            ; $4330: $0c
	or c                                             ; $4331: $b1
	pop bc                                           ; $4332: $c1
	rst $38                                          ; $4333: $ff
	inc b                                            ; $4334: $04
	jr @+$0e                                         ; $4335: $18 $0c

	ld a, [hl]                                       ; $4337: $7e
	nop                                              ; $4338: $00
	call z, $051f                                    ; $4339: $cc $1f $05
	nop                                              ; $433c: $00
	ld bc, $051f                                     ; $433d: $01 $1f $05
	nop                                              ; $4340: $00
	ld bc, $061f                                     ; $4341: $01 $1f $06
	or c                                             ; $4344: $b1
	ld sp, $0000                                     ; $4345: $31 $00 $00
	rra                                              ; $4348: $1f
	ld b, $b1                                        ; $4349: $06 $b1
	pop bc                                           ; $434b: $c1
	rst $38                                          ; $434c: $ff
	inc b                                            ; $434d: $04
	jr jr_02f_435c                                   ; $434e: $18 $0c

	or c                                             ; $4350: $b1
	pop de                                           ; $4351: $d1
	rst $38                                          ; $4352: $ff
	inc b                                            ; $4353: $04
	ld a, [hl]                                       ; $4354: $7e
	dec b                                            ; $4355: $05
	nop                                              ; $4356: $00
	and c                                            ; $4357: $a1
	add hl, de                                       ; $4358: $19
	inc c                                            ; $4359: $0c
	ld a, [hl]                                       ; $435a: $7e
	nop                                              ; $435b: $00

jr_02f_435c:
	call z, $0620                                    ; $435c: $cc $20 $06
	or c                                             ; $435f: $b1
	ld sp, $0000                                     ; $4360: $31 $00 $00
	jr nz, jr_02f_436b                               ; $4363: $20 $06

	or c                                             ; $4365: $b1
	pop de                                           ; $4366: $d1
	rst $38                                          ; $4367: $ff
	inc b                                            ; $4368: $04
	ld a, [hl]                                       ; $4369: $7e
	dec b                                            ; $436a: $05

jr_02f_436b:
	nop                                              ; $436b: $00
	and c                                            ; $436c: $a1
	ld a, [de]                                       ; $436d: $1a
	inc c                                            ; $436e: $0c
	ld a, [hl]                                       ; $436f: $7e
	nop                                              ; $4370: $00
	call z, $0621                                    ; $4371: $cc $21 $06
	or c                                             ; $4374: $b1
	ld sp, $0000                                     ; $4375: $31 $00 $00
	ld hl, $b106                                     ; $4378: $21 $06 $b1
	pop de                                           ; $437b: $d1
	rst $38                                          ; $437c: $ff
	inc b                                            ; $437d: $04
	ld a, [hl]                                       ; $437e: $7e
	dec b                                            ; $437f: $05
	nop                                              ; $4380: $00
	and c                                            ; $4381: $a1
	dec de                                           ; $4382: $1b
	inc c                                            ; $4383: $0c
	ld a, [hl]                                       ; $4384: $7e
	nop                                              ; $4385: $00
	call z, $0622                                    ; $4386: $cc $22 $06
	or c                                             ; $4389: $b1
	ld sp, $0000                                     ; $438a: $31 $00 $00
	ld [hl+], a                                      ; $438d: $22
	ld b, $b5                                        ; $438e: $06 $b5
	or c                                             ; $4390: $b1
	ld bc, $03ff                                     ; $4391: $01 $ff $03
	ld a, [hl]                                       ; $4394: $7e
	dec b                                            ; $4395: $05
	nop                                              ; $4396: $00
	xor c                                            ; $4397: $a9
	cpl                                              ; $4398: $2f
	ld b, $7e                                        ; $4399: $06 $7e
	nop                                              ; $439b: $00
	jr nc, jr_02f_43a4                               ; $439c: $30 $06

	cpl                                              ; $439e: $2f
	ld b, $30                                        ; $439f: $06 $30
	ld b, $fe                                        ; $43a1: $06 $fe
	rst $38                                          ; $43a3: $ff

jr_02f_43a4:
	ret nc                                           ; $43a4: $d0

	ld [hl], b                                       ; $43a5: $70
	add d                                            ; $43a6: $82
	nop                                              ; $43a7: $00

jr_02f_43a8:
	jr jr_02f_43a8                                   ; $43a8: $18 $fe

	ei                                               ; $43aa: $fb
	jp nz, $051d                                     ; $43ab: $c2 $1d $05

	call nz, $071d                                   ; $43ae: $c4 $1d $07
	jp nz, $0618                                     ; $43b1: $c2 $18 $06

	call nz, $0618                                   ; $43b4: $c4 $18 $06
	ei                                               ; $43b7: $fb
	ld [bc], a                                       ; $43b8: $02
	jp nz, $061d                                     ; $43b9: $c2 $1d $06

	call nz, $061d                                   ; $43bc: $c4 $1d $06
	jp nz, $0618                                     ; $43bf: $c2 $18 $06

	call nz, $0618                                   ; $43c2: $c4 $18 $06
	jp nz, $0a15                                     ; $43c5: $c2 $15 $0a

	add $15                                          ; $43c8: $c6 $15
	ld [bc], a                                       ; $43ca: $02
	jp nz, $0618                                     ; $43cb: $c2 $18 $06

	call nz, $0618                                   ; $43ce: $c4 $18 $06
	ei                                               ; $43d1: $fb
	jp nz, $061d                                     ; $43d2: $c2 $1d $06

	call nz, $061d                                   ; $43d5: $c4 $1d $06
	jp nz, $0618                                     ; $43d8: $c2 $18 $06

	call nz, $0618                                   ; $43db: $c4 $18 $06
	ei                                               ; $43de: $fb
	inc bc                                           ; $43df: $03
	jp nz, $0a15                                     ; $43e0: $c2 $15 $0a

	add $15                                          ; $43e3: $c6 $15
	ld [bc], a                                       ; $43e5: $02
	jp nz, $0618                                     ; $43e6: $c2 $18 $06

	call nz, $0618                                   ; $43e9: $c4 $18 $06
	jp nz, $177f                                     ; $43ec: $c2 $7f $17

	rra                                              ; $43ef: $1f
	ld a, [bc]                                       ; $43f0: $0a
	call nz, $021f                                   ; $43f1: $c4 $1f $02
	jp nz, $0523                                     ; $43f4: $c2 $23 $05

	add $23                                          ; $43f7: $c6 $23
	rlca                                             ; $43f9: $07
	jp nz, $0523                                     ; $43fa: $c2 $23 $05

	add $23                                          ; $43fd: $c6 $23
	rlca                                             ; $43ff: $07
	jp nz, $0a1f                                     ; $4400: $c2 $1f $0a

	call nz, $021f                                   ; $4403: $c4 $1f $02
	jp nz, $0623                                     ; $4406: $c2 $23 $06

	call nz, $0623                                   ; $4409: $c4 $23 $06
	jp nz, $0626                                     ; $440c: $c2 $26 $06

	add $26                                          ; $440f: $c6 $26
	ld b, $c2                                        ; $4411: $06 $c2
	add hl, hl                                       ; $4413: $29
	dec bc                                           ; $4414: $0b
	call nz, $0129                                   ; $4415: $c4 $29 $01
	jp nz, $0623                                     ; $4418: $c2 $23 $06

	add $23                                          ; $441b: $c6 $23
	ld b, $fb                                        ; $441d: $06 $fb
	jp nz, $0624                                     ; $441f: $c2 $24 $06

	add $24                                          ; $4422: $c6 $24
	ld b, $c2                                        ; $4424: $06 $c2
	rra                                              ; $4426: $1f
	ld b, $c4                                        ; $4427: $06 $c4
	rra                                              ; $4429: $1f
	ld b, $fb                                        ; $442a: $06 $fb
	ld [bc], a                                       ; $442c: $02
	jp nz, $0624                                     ; $442d: $c2 $24 $06

	call nz, $0624                                   ; $4430: $c4 $24 $06
	jp nz, $061f                                     ; $4433: $c2 $1f $06

	call nz, $061f                                   ; $4436: $c4 $1f $06
	jp nz, $061c                                     ; $4439: $c2 $1c $06

	call nz, $061c                                   ; $443c: $c4 $1c $06
	jp nz, $061f                                     ; $443f: $c2 $1f $06

	call nz, $061f                                   ; $4442: $c4 $1f $06
	add c                                            ; $4445: $81
	ei                                               ; $4446: $fb
	jp nz, $061d                                     ; $4447: $c2 $1d $06

	call nz, $061d                                   ; $444a: $c4 $1d $06
	jp nz, $0618                                     ; $444d: $c2 $18 $06

	call nz, $0618                                   ; $4450: $c4 $18 $06
	ei                                               ; $4453: $fb
	ld [bc], a                                       ; $4454: $02
	jp nz, $061d                                     ; $4455: $c2 $1d $06

	call nz, $061d                                   ; $4458: $c4 $1d $06
	jp nz, $0618                                     ; $445b: $c2 $18 $06

	call nz, $0618                                   ; $445e: $c4 $18 $06
	jp nz, $0a15                                     ; $4461: $c2 $15 $0a

	add $15                                          ; $4464: $c6 $15
	ld [bc], a                                       ; $4466: $02
	jp nz, $0618                                     ; $4467: $c2 $18 $06

	call nz, $0618                                   ; $446a: $c4 $18 $06
	jp nz, $061d                                     ; $446d: $c2 $1d $06

	call nz, $061d                                   ; $4470: $c4 $1d $06
	jp nz, $0618                                     ; $4473: $c2 $18 $06

	call nz, $0618                                   ; $4476: $c4 $18 $06
	jp nz, $061d                                     ; $4479: $c2 $1d $06

	call nz, $061d                                   ; $447c: $c4 $1d $06
	jp nz, $0616                                     ; $447f: $c2 $16 $06

	call nz, $0616                                   ; $4482: $c4 $16 $06
	jp nz, $0615                                     ; $4485: $c2 $15 $06

	call nz, $0615                                   ; $4488: $c4 $15 $06
	jp nz, $0618                                     ; $448b: $c2 $18 $06

	call nz, $0618                                   ; $448e: $c4 $18 $06
	jp nz, $0a1d                                     ; $4491: $c2 $1d $0a

	add $1d                                          ; $4494: $c6 $1d
	ld [bc], a                                       ; $4496: $02
	jp nz, $0618                                     ; $4497: $c2 $18 $06

	call nz, $0618                                   ; $449a: $c4 $18 $06
	add c                                            ; $449d: $81
	ei                                               ; $449e: $fb
	ld a, [hl]                                       ; $449f: $7e
	dec bc                                           ; $44a0: $0b
	nop                                              ; $44a1: $00
	and l                                            ; $44a2: $a5
	jp nz, $0a17                                     ; $44a3: $c2 $17 $0a

	ld a, [hl]                                       ; $44a6: $7e
	nop                                              ; $44a7: $00
	call nz, $0217                                   ; $44a8: $c4 $17 $02
	jp nz, $0612                                     ; $44ab: $c2 $12 $06

	call nz, $0312                                   ; $44ae: $c4 $12 $03
	add $12                                          ; $44b1: $c6 $12
	inc bc                                           ; $44b3: $03
	ei                                               ; $44b4: $fb
	ld [bc], a                                       ; $44b5: $02
	ei                                               ; $44b6: $fb
	ld a, [hl]                                       ; $44b7: $7e
	dec bc                                           ; $44b8: $0b
	nop                                              ; $44b9: $00
	and h                                            ; $44ba: $a4
	jp nz, $0a18                                     ; $44bb: $c2 $18 $0a

	ld a, [hl]                                       ; $44be: $7e
	nop                                              ; $44bf: $00
	call nz, $0218                                   ; $44c0: $c4 $18 $02
	jp nz, $0613                                     ; $44c3: $c2 $13 $06

	call nz, $0313                                   ; $44c6: $c4 $13 $03
	add $13                                          ; $44c9: $c6 $13
	inc bc                                           ; $44cb: $03
	ei                                               ; $44cc: $fb
	ld [bc], a                                       ; $44cd: $02
	ld a, [hl]                                       ; $44ce: $7e
	dec bc                                           ; $44cf: $0b
	nop                                              ; $44d0: $00
	and l                                            ; $44d1: $a5
	jp nz, $0a19                                     ; $44d2: $c2 $19 $0a

	ld a, [hl]                                       ; $44d5: $7e
	nop                                              ; $44d6: $00
	call nz, $0219                                   ; $44d7: $c4 $19 $02
	jp nz, $0614                                     ; $44da: $c2 $14 $06

	call nz, $0314                                   ; $44dd: $c4 $14 $03
	add $14                                          ; $44e0: $c6 $14
	inc bc                                           ; $44e2: $03
	ld a, [hl]                                       ; $44e3: $7e
	dec bc                                           ; $44e4: $0b
	nop                                              ; $44e5: $00
	and l                                            ; $44e6: $a5
	jp nz, $0a1a                                     ; $44e7: $c2 $1a $0a

	ld a, [hl]                                       ; $44ea: $7e
	nop                                              ; $44eb: $00
	call nz, $021a                                   ; $44ec: $c4 $1a $02
	jp nz, $0615                                     ; $44ef: $c2 $15 $06

	call nz, $0315                                   ; $44f2: $c4 $15 $03
	add $15                                          ; $44f5: $c6 $15
	inc bc                                           ; $44f7: $03
	ld a, [hl]                                       ; $44f8: $7e
	dec bc                                           ; $44f9: $0b
	nop                                              ; $44fa: $00
	and l                                            ; $44fb: $a5
	jp nz, $0a1b                                     ; $44fc: $c2 $1b $0a

	ld a, [hl]                                       ; $44ff: $7e
	nop                                              ; $4500: $00
	call nz, $021b                                   ; $4501: $c4 $1b $02
	jp nz, $0616                                     ; $4504: $c2 $16 $06

	call nz, $0316                                   ; $4507: $c4 $16 $03
	add $16                                          ; $450a: $c6 $16
	inc bc                                           ; $450c: $03
	ld a, [hl]                                       ; $450d: $7e
	dec bc                                           ; $450e: $0b
	nop                                              ; $450f: $00
	and l                                            ; $4510: $a5
	jp nz, $0a1c                                     ; $4511: $c2 $1c $0a

	ld a, [hl]                                       ; $4514: $7e
	nop                                              ; $4515: $00
	call nz, $021c                                   ; $4516: $c4 $1c $02
	jp nz, $0618                                     ; $4519: $c2 $18 $06

	call nz, $0318                                   ; $451c: $c4 $18 $03
	add $18                                          ; $451f: $c6 $18
	inc bc                                           ; $4521: $03
	cp $ff                                           ; $4522: $fe $ff
	ret nc                                           ; $4524: $d0

	ld [hl], b                                       ; $4525: $70
	nop                                              ; $4526: $00

jr_02f_4527:
	jr jr_02f_4527                                   ; $4527: $18 $fe

	jr jr_02f_4537                                   ; $4529: $18 $0c

	dec c                                            ; $452b: $0d
	inc c                                            ; $452c: $0c
	dec bc                                           ; $452d: $0b
	inc c                                            ; $452e: $0c
	dec c                                            ; $452f: $0d
	ld b, $0e                                        ; $4530: $06 $0e
	ld b, $be                                        ; $4532: $06 $be
	inc c                                            ; $4534: $0c
	dec bc                                           ; $4535: $0b
	dec c                                            ; $4536: $0d

jr_02f_4537:
	dec bc                                           ; $4537: $0b
	dec c                                            ; $4538: $0d
	cp [hl]                                          ; $4539: $be
	dec bc                                           ; $453a: $0b
	inc c                                            ; $453b: $0c
	dec c                                            ; $453c: $0d
	inc c                                            ; $453d: $0c
	dec bc                                           ; $453e: $0b
	inc c                                            ; $453f: $0c
	dec c                                            ; $4540: $0d
	ld b, $0e                                        ; $4541: $06 $0e
	ld b, $0b                                        ; $4543: $06 $0b
	inc c                                            ; $4545: $0c
	dec c                                            ; $4546: $0d
	inc c                                            ; $4547: $0c
	dec bc                                           ; $4548: $0b
	inc c                                            ; $4549: $0c
	dec c                                            ; $454a: $0d
	inc b                                            ; $454b: $04
	ld d, $04                                        ; $454c: $16 $04
	ld d, $04                                        ; $454e: $16 $04
	dec bc                                           ; $4550: $0b
	inc c                                            ; $4551: $0c
	dec c                                            ; $4552: $0d
	inc b                                            ; $4553: $04
	ld d, $04                                        ; $4554: $16 $04
	ld d, $04                                        ; $4556: $16 $04
	dec c                                            ; $4558: $0d
	inc c                                            ; $4559: $0c
	dec bc                                           ; $455a: $0b
	inc c                                            ; $455b: $0c
	dec c                                            ; $455c: $0d
	inc b                                            ; $455d: $04
	ld d, $04                                        ; $455e: $16 $04
	ld d, $04                                        ; $4560: $16 $04
	dec c                                            ; $4562: $0d
	inc c                                            ; $4563: $0c
	dec bc                                           ; $4564: $0b
	inc b                                            ; $4565: $04
	ld d, $04                                        ; $4566: $16 $04
	ld d, $04                                        ; $4568: $16 $04
	dec c                                            ; $456a: $0d
	inc c                                            ; $456b: $0c
	dec bc                                           ; $456c: $0b
	inc c                                            ; $456d: $0c
	dec c                                            ; $456e: $0d
	ld b, $0d                                        ; $456f: $06 $0d
	ld b, $be                                        ; $4571: $06 $be
	inc b                                            ; $4573: $04
	dec bc                                           ; $4574: $0b
	ld d, $16                                        ; $4575: $16 $16
	ld d, $16                                        ; $4577: $16 $16
	ld d, $be                                        ; $4579: $16 $be
	dec bc                                           ; $457b: $0b
	inc c                                            ; $457c: $0c
	dec c                                            ; $457d: $0d
	ld b, $0d                                        ; $457e: $06 $0d
	ld b, $0b                                        ; $4580: $06 $0b
	inc b                                            ; $4582: $04
	ld d, $04                                        ; $4583: $16 $04
	ld d, $04                                        ; $4585: $16 $04
	dec c                                            ; $4587: $0d
	inc c                                            ; $4588: $0c
	dec bc                                           ; $4589: $0b
	inc c                                            ; $458a: $0c
	dec c                                            ; $458b: $0d
	inc c                                            ; $458c: $0c
	dec bc                                           ; $458d: $0b
	inc c                                            ; $458e: $0c
	dec c                                            ; $458f: $0d
	ld b, $0e                                        ; $4590: $06 $0e
	ld b, $be                                        ; $4592: $06 $be
	inc c                                            ; $4594: $0c
	dec bc                                           ; $4595: $0b
	dec c                                            ; $4596: $0d
	dec bc                                           ; $4597: $0b
	dec c                                            ; $4598: $0d
	cp [hl]                                          ; $4599: $be
	dec bc                                           ; $459a: $0b
	inc c                                            ; $459b: $0c
	dec c                                            ; $459c: $0d
	inc c                                            ; $459d: $0c
	dec bc                                           ; $459e: $0b
	inc c                                            ; $459f: $0c
	dec c                                            ; $45a0: $0d
	ld b, $0e                                        ; $45a1: $06 $0e
	ld b, $0b                                        ; $45a3: $06 $0b
	inc c                                            ; $45a5: $0c
	dec c                                            ; $45a6: $0d
	inc c                                            ; $45a7: $0c
	dec bc                                           ; $45a8: $0b
	inc c                                            ; $45a9: $0c
	dec c                                            ; $45aa: $0d
	inc b                                            ; $45ab: $04
	ld d, $04                                        ; $45ac: $16 $04
	ld d, $04                                        ; $45ae: $16 $04
	cp [hl]                                          ; $45b0: $be
	inc c                                            ; $45b1: $0c
	inc de                                           ; $45b2: $13
	dec bc                                           ; $45b3: $0b
	inc de                                           ; $45b4: $13
	dec bc                                           ; $45b5: $0b
	inc de                                           ; $45b6: $13
	cp [hl]                                          ; $45b7: $be
	add hl, de                                       ; $45b8: $19
	inc b                                            ; $45b9: $04
	ld [de], a                                       ; $45ba: $12
	inc b                                            ; $45bb: $04
	ld [de], a                                       ; $45bc: $12
	inc b                                            ; $45bd: $04
	inc de                                           ; $45be: $13
	inc c                                            ; $45bf: $0c
	dec bc                                           ; $45c0: $0b
	inc c                                            ; $45c1: $0c
	inc de                                           ; $45c2: $13
	inc c                                            ; $45c3: $0c
	dec bc                                           ; $45c4: $0b
	ld b, $12                                        ; $45c5: $06 $12
	ld b, $13                                        ; $45c7: $06 $13
	inc c                                            ; $45c9: $0c
	dec bc                                           ; $45ca: $0b
	inc b                                            ; $45cb: $04
	ld d, $04                                        ; $45cc: $16 $04
	ld d, $04                                        ; $45ce: $16 $04
	inc de                                           ; $45d0: $13
	inc c                                            ; $45d1: $0c
	cp [hl]                                          ; $45d2: $be
	ld b, $17                                        ; $45d3: $06 $17
	dec bc                                           ; $45d5: $0b
	inc de                                           ; $45d6: $13
	dec bc                                           ; $45d7: $0b
	nop                                              ; $45d8: $00
	dec bc                                           ; $45d9: $0b
	cp [hl]                                          ; $45da: $be
	cp $ff                                           ; $45db: $fe $ff
	or [hl]                                          ; $45dd: $b6
	ld a, l                                          ; $45de: $7d
	ld [hl], c                                       ; $45df: $71
	nop                                              ; $45e0: $00
	rst $38                                          ; $45e1: $ff
	ld b, $1d                                        ; $45e2: $06 $1d
	ld [$101e], sp                                   ; $45e4: $08 $1e $10
	dec e                                            ; $45e7: $1d
	ld [$20c8], sp                                   ; $45e8: $08 $c8 $20
	ld [$21b1], sp                                   ; $45eb: $08 $b1 $21
	nop                                              ; $45ee: $00
	nop                                              ; $45ef: $00
	jr nz, jr_02f_45fa                               ; $45f0: $20 $08

	or c                                             ; $45f2: $b1
	ld [hl], c                                       ; $45f3: $71
	rst $38                                          ; $45f4: $ff
	inc b                                            ; $45f5: $04
	inc e                                            ; $45f6: $1c
	ld [$81b1], sp                                   ; $45f7: $08 $b1 $81

jr_02f_45fa:
	nop                                              ; $45fa: $00
	nop                                              ; $45fb: $00
	dec e                                            ; $45fc: $1d
	ld [$0820], sp                                   ; $45fd: $08 $20 $08
	or c                                             ; $4600: $b1
	ld h, c                                          ; $4601: $61
	rst $38                                          ; $4602: $ff
	rlca                                             ; $4603: $07
	ld a, [hl]                                       ; $4604: $7e
	ld bc, $a008                                     ; $4605: $01 $08 $a0
	add hl, hl                                       ; $4608: $29
	ld [$0096], sp                                   ; $4609: $08 $96 $00
	nop                                              ; $460c: $00
	add hl, hl                                       ; $460d: $29
	jr z, jr_02f_468e                                ; $460e: $28 $7e

	nop                                              ; $4610: $00
	or c                                             ; $4611: $b1
	sub c                                            ; $4612: $91
	rst $38                                          ; $4613: $ff
	inc bc                                           ; $4614: $03
	jr nz, @+$0a                                     ; $4615: $20 $08

	inc hl                                           ; $4617: $23
	ld [$31b1], sp                                   ; $4618: $08 $b1 $31
	nop                                              ; $461b: $00
	nop                                              ; $461c: $00
	inc hl                                           ; $461d: $23
	ld [$81b1], sp                                   ; $461e: $08 $b1 $81
	rst $38                                          ; $4621: $ff
	inc b                                            ; $4622: $04
	ld e, $08                                        ; $4623: $1e $08
	sub [hl]                                         ; $4625: $96
	nop                                              ; $4626: $00
	nop                                              ; $4627: $00
	rra                                              ; $4628: $1f
	ld [$0820], sp                                   ; $4629: $08 $20 $08
	ld a, [hl]                                       ; $462c: $7e
	ld bc, $a008                                     ; $462d: $01 $08 $a0
	or c                                             ; $4630: $b1
	ld [hl], c                                       ; $4631: $71
	nop                                              ; $4632: $00
	nop                                              ; $4633: $00
	cp l                                             ; $4634: $bd
	ld [bc], a                                       ; $4635: $02
	jr z, jr_02f_4640                                ; $4636: $28 $08

	jr jr_02f_46b8                                   ; $4638: $18 $7e

	nop                                              ; $463a: $00
	or c                                             ; $463b: $b1
	ld [hl], c                                       ; $463c: $71
	rst $38                                          ; $463d: $ff
	inc bc                                           ; $463e: $03
	inc hl                                           ; $463f: $23

jr_02f_4640:
	db $10                                           ; $4640: $10
	inc h                                            ; $4641: $24
	ld [$71b1], sp                                   ; $4642: $08 $b1 $71
	nop                                              ; $4645: $00
	nop                                              ; $4646: $00
	dec h                                            ; $4647: $25
	db $10                                           ; $4648: $10
	jp $0825                                         ; $4649: $c3 $25 $08


	ret                                              ; $464c: $c9


	inc hl                                           ; $464d: $23
	db $10                                           ; $464e: $10
	jp $0823                                         ; $464f: $c3 $23 $08


	ret                                              ; $4652: $c9


	ld [hl+], a                                      ; $4653: $22
	db $10                                           ; $4654: $10
	jp $0822                                         ; $4655: $c3 $22 $08


	ret                                              ; $4658: $c9


	ld hl, $c310                                     ; $4659: $21 $10 $c3
	ld hl, $c208                                     ; $465c: $21 $08 $c2
	ld hl, $b506                                     ; $465f: $21 $06 $b5
	ld [hl], c                                       ; $4662: $71
	nop                                              ; $4663: $00
	rst $38                                          ; $4664: $ff
	ld [bc], a                                       ; $4665: $02
	ld hl, $be02                                     ; $4666: $21 $02 $be
	ld [$2222], sp                                   ; $4669: $08 $22 $22
	ld hl, $2222                                     ; $466c: $21 $22 $22
	ld [hl+], a                                      ; $466f: $22
	ld [hl+], a                                      ; $4670: $22
	ld [hl+], a                                      ; $4671: $22
	ld [hl+], a                                      ; $4672: $22
	ld [hl+], a                                      ; $4673: $22
	ld [hl+], a                                      ; $4674: $22
	cp [hl]                                          ; $4675: $be
	cp $b5                                           ; $4676: $fe $b5
	ld h, c                                          ; $4678: $61
	ld [bc], a                                       ; $4679: $02
	rst $38                                          ; $467a: $ff
	inc bc                                           ; $467b: $03
	ld a, [hl]                                       ; $467c: $7e
	add hl, bc                                       ; $467d: $09
	nop                                              ; $467e: $00
	xor d                                            ; $467f: $aa
	ld a, l                                          ; $4680: $7d
	ld [bc], a                                       ; $4681: $02
	nop                                              ; $4682: $00
	ld b, $fb                                        ; $4683: $06 $fb
	dec h                                            ; $4685: $25
	jr @+$22                                         ; $4686: $18 $20

	inc c                                            ; $4688: $0c
	ei                                               ; $4689: $fb
	inc b                                            ; $468a: $04
	cp [hl]                                          ; $468b: $be
	inc c                                            ; $468c: $0c
	dec h                                            ; $468d: $25

jr_02f_468e:
	inc h                                            ; $468e: $24
	dec h                                            ; $468f: $25
	ld h, $be                                        ; $4690: $26 $be
	daa                                              ; $4692: $27
	jr @+$24                                         ; $4693: $18 $22

	inc c                                            ; $4695: $0c
	daa                                              ; $4696: $27
	jr jr_02f_46bb                                   ; $4697: $18 $22

	inc c                                            ; $4699: $0c
	daa                                              ; $469a: $27
	jr jr_02f_471a                                   ; $469b: $18 $7d

	nop                                              ; $469d: $00

jr_02f_469e:
	or c                                             ; $469e: $b1
	ld h, c                                          ; $469f: $61
	ld [$2702], sp                                   ; $46a0: $08 $02 $27
	ld [$27c5], sp                                   ; $46a3: $08 $c5 $27
	ld [$41b1], sp                                   ; $46a6: $08 $b1 $41
	ld [$2702], sp                                   ; $46a9: $08 $02 $27
	ld [$27c3], sp                                   ; $46ac: $08 $c3 $27
	ld [$27c2], sp                                   ; $46af: $08 $c2 $27
	ld [$21b1], sp                                   ; $46b2: $08 $b1 $21
	ld [$2703], sp                                   ; $46b5: $08 $03 $27

jr_02f_46b8:
	ld [$11b1], sp                                   ; $46b8: $08 $b1 $11

jr_02f_46bb:
	ld [$2703], sp                                   ; $46bb: $08 $03 $27
	ld b, $b1                                        ; $46be: $06 $b1
	ld hl, $0308                                     ; $46c0: $21 $08 $03
	daa                                              ; $46c3: $27
	ld b, $7e                                        ; $46c4: $06 $7e
	add hl, bc                                       ; $46c6: $09
	nop                                              ; $46c7: $00
	xor d                                            ; $46c8: $aa
	or c                                             ; $46c9: $b1
	ld h, c                                          ; $46ca: $61
	rst $38                                          ; $46cb: $ff
	inc bc                                           ; $46cc: $03
	ld a, l                                          ; $46cd: $7d
	ld [bc], a                                       ; $46ce: $02
	dec h                                            ; $46cf: $25
	inc c                                            ; $46d0: $0c
	inc h                                            ; $46d1: $24
	inc c                                            ; $46d2: $0c
	ld [hl+], a                                      ; $46d3: $22
	inc c                                            ; $46d4: $0c
	ei                                               ; $46d5: $fb
	inc h                                            ; $46d6: $24
	jr jr_02f_46f9                                   ; $46d7: $18 $20

	inc c                                            ; $46d9: $0c
	ei                                               ; $46da: $fb
	inc b                                            ; $46db: $04
	inc h                                            ; $46dc: $24
	inc c                                            ; $46dd: $0c
	daa                                              ; $46de: $27
	jr jr_02f_4705                                   ; $46df: $18 $24

	inc c                                            ; $46e1: $0c
	dec h                                            ; $46e2: $25
	jr jr_02f_4705                                   ; $46e3: $18 $20

	inc c                                            ; $46e5: $0c
	dec h                                            ; $46e6: $25
	jr jr_02f_4709                                   ; $46e7: $18 $20

	inc c                                            ; $46e9: $0c
	dec h                                            ; $46ea: $25
	jr jr_02f_469e                                   ; $46eb: $18 $b1

	ld b, c                                          ; $46ed: $41
	rst $38                                          ; $46ee: $ff
	ld b, $29                                        ; $46ef: $06 $29
	ld [de], a                                       ; $46f1: $12
	or c                                             ; $46f2: $b1
	ld h, c                                          ; $46f3: $61

jr_02f_46f4:
	nop                                              ; $46f4: $00
	nop                                              ; $46f5: $00
	ld a, l                                          ; $46f6: $7d

jr_02f_46f7:
	nop                                              ; $46f7: $00
	ld a, [hl]                                       ; $46f8: $7e

jr_02f_46f9:
	nop                                              ; $46f9: $00
	cp [hl]                                          ; $46fa: $be
	inc c                                            ; $46fb: $0c
	inc d                                            ; $46fc: $14
	ld de, $1114                                     ; $46fd: $11 $14 $11
	inc c                                            ; $4700: $0c
	rrca                                             ; $4701: $0f
	cp [hl]                                          ; $4702: $be
	or l                                             ; $4703: $b5
	add c                                            ; $4704: $81

jr_02f_4705:
	ld [bc], a                                       ; $4705: $02
	rst $38                                          ; $4706: $ff
	inc bc                                           ; $4707: $03
	ld a, [hl]                                       ; $4708: $7e

jr_02f_4709:
	add hl, bc                                       ; $4709: $09
	nop                                              ; $470a: $00
	xor d                                            ; $470b: $aa
	ei                                               ; $470c: $fb
	dec e                                            ; $470d: $1d
	jr jr_02f_4729                                   ; $470e: $18 $19

	inc c                                            ; $4710: $0c
	ld e, $18                                        ; $4711: $1e $18
	add hl, de                                       ; $4713: $19
	inc c                                            ; $4714: $0c
	ei                                               ; $4715: $fb
	ld [bc], a                                       ; $4716: $02
	sub [hl]                                         ; $4717: $96
	rst $38                                          ; $4718: $ff
	ld [bc], a                                       ; $4719: $02

jr_02f_471a:
	dec e                                            ; $471a: $1d
	inc c                                            ; $471b: $0c
	jr nz, @+$0e                                     ; $471c: $20 $0c

	jr nz, jr_02f_472c                               ; $471e: $20 $0c

	sub [hl]                                         ; $4720: $96

jr_02f_4721:
	rst $38                                          ; $4721: $ff
	inc bc                                           ; $4722: $03
	ld [hl+], a                                      ; $4723: $22
	inc c                                            ; $4724: $0c

jr_02f_4725:
	ld e, $18                                        ; $4725: $1e $18
	dec de                                           ; $4727: $1b
	inc c                                            ; $4728: $0c

jr_02f_4729:
	ld e, $18                                        ; $4729: $1e $18
	dec de                                           ; $472b: $1b

jr_02f_472c:
	inc c                                            ; $472c: $0c
	ld e, $18                                        ; $472d: $1e $18
	or c                                             ; $472f: $b1
	ld h, c                                          ; $4730: $61
	rst $38                                          ; $4731: $ff
	inc bc                                           ; $4732: $03
	ld [hl+], a                                      ; $4733: $22
	jr jr_02f_46f7                                   ; $4734: $18 $c1

	ld a, [hl]                                       ; $4736: $7e
	nop                                              ; $4737: $00
	ld [hl+], a                                      ; $4738: $22
	inc c                                            ; $4739: $0c
	or c                                             ; $473a: $b1
	ld d, c                                          ; $473b: $51
	nop                                              ; $473c: $00
	nop                                              ; $473d: $00
	ld d, $0c                                        ; $473e: $16 $0c
	dec de                                           ; $4740: $1b
	jr jr_02f_46f4                                   ; $4741: $18 $b1

	add c                                            ; $4743: $81
	rst $38                                          ; $4744: $ff
	inc bc                                           ; $4745: $03
	ld a, [hl+]                                      ; $4746: $2a
	jr @-$49                                         ; $4747: $18 $b5

	ld [hl], c                                       ; $4749: $71
	ld [bc], a                                       ; $474a: $02

jr_02f_474b:
	rst $38                                          ; $474b: $ff
	inc bc                                           ; $474c: $03
	ld a, [hl]                                       ; $474d: $7e
	add hl, bc                                       ; $474e: $09
	nop                                              ; $474f: $00
	xor e                                            ; $4750: $ab
	daa                                              ; $4751: $27
	inc c                                            ; $4752: $0c
	dec h                                            ; $4753: $25
	inc c                                            ; $4754: $0c
	ld e, $0c                                        ; $4755: $1e $0c
	ld [hl+], a                                      ; $4757: $22
	jr jr_02f_4721                                   ; $4758: $18 $c7

	dec h                                            ; $475a: $25
	inc c                                            ; $475b: $0c
	or c                                             ; $475c: $b1
	ld sp, $0000                                     ; $475d: $31 $00 $00
	dec h                                            ; $4760: $25
	inc c                                            ; $4761: $0c
	or c                                             ; $4762: $b1
	ld h, c                                          ; $4763: $61
	rst $38                                          ; $4764: $ff
	inc bc                                           ; $4765: $03
	ld [hl+], a                                      ; $4766: $22
	inc c                                            ; $4767: $0c
	or c                                             ; $4768: $b1
	add c                                            ; $4769: $81
	rst $38                                          ; $476a: $ff
	inc bc                                           ; $476b: $03
	ld [hl+], a                                      ; $476c: $22
	inc c                                            ; $476d: $0c
	ld e, $0c                                        ; $476e: $1e $0c
	dec de                                           ; $4770: $1b
	inc c                                            ; $4771: $0c
	ret z                                            ; $4772: $c8

	ld d, $18                                        ; $4773: $16 $18
	rla                                              ; $4775: $17
	inc c                                            ; $4776: $0c
	dec de                                           ; $4777: $1b
	inc c                                            ; $4778: $0c
	dec e                                            ; $4779: $1d
	ld b, $96                                        ; $477a: $06 $96
	rst $38                                          ; $477c: $ff
	ld [bc], a                                       ; $477d: $02
	ld e, $05                                        ; $477e: $1e $05
	nop                                              ; $4780: $00
	ld bc, $ff96                                     ; $4781: $01 $96 $ff
	dec b                                            ; $4784: $05
	ld e, $18                                        ; $4785: $1e $18
	or l                                             ; $4787: $b5
	ld d, c                                          ; $4788: $51
	ld bc, $0000                                     ; $4789: $01 $00 $00
	inc d                                            ; $478c: $14
	jr jr_02f_47a7                                   ; $478d: $18 $18

	jr jr_02f_47ac                                   ; $478f: $18 $1b

	jr jr_02f_4725                                   ; $4791: $18 $92

	or c                                             ; $4793: $b1
	and c                                            ; $4794: $a1
	rst $38                                          ; $4795: $ff
	inc b                                            ; $4796: $04
	dec e                                            ; $4797: $1d
	jr jr_02f_474b                                   ; $4798: $18 $b1

	ld sp, $0000                                     ; $479a: $31 $00 $00
	dec e                                            ; $479d: $1d
	inc c                                            ; $479e: $0c
	or c                                             ; $479f: $b1
	ld [hl], c                                       ; $47a0: $71
	rst $38                                          ; $47a1: $ff
	inc bc                                           ; $47a2: $03
	cp [hl]                                          ; $47a3: $be
	ld b, $20                                        ; $47a4: $06 $20
	ld [hl+], a                                      ; $47a6: $22

jr_02f_47a7:
	jr nz, @+$20                                     ; $47a7: $20 $1e

	dec e                                            ; $47a9: $1d
	dec de                                           ; $47aa: $1b
	cp [hl]                                          ; $47ab: $be

jr_02f_47ac:
	or c                                             ; $47ac: $b1
	sub c                                            ; $47ad: $91
	rst $38                                          ; $47ae: $ff
	inc bc                                           ; $47af: $03
	jr jr_02f_47ca                                   ; $47b0: $18 $18

	cp $ff                                           ; $47b2: $fe $ff
	or [hl]                                          ; $47b4: $b6
	ld a, l                                          ; $47b5: $7d
	or c                                             ; $47b6: $b1
	ld bc, $04ff                                     ; $47b7: $01 $ff $04
	inc l                                            ; $47ba: $2c
	ld [$102e], sp                                   ; $47bb: $08 $2e $10
	inc l                                            ; $47be: $2c
	ld [$0831], sp                                   ; $47bf: $08 $31 $08
	or c                                             ; $47c2: $b1
	ld sp, $0000                                     ; $47c3: $31 $00 $00
	ld sp, $b108                                     ; $47c6: $31 $08 $b1
	or c                                             ; $47c9: $b1

jr_02f_47ca:
	rst $38                                          ; $47ca: $ff
	inc b                                            ; $47cb: $04
	ld sp, $b108                                     ; $47cc: $31 $08 $b1
	ld sp, $0000                                     ; $47cf: $31 $00 $00
	ld sp, $b110                                     ; $47d2: $31 $10 $b1
	sub c                                            ; $47d5: $91
	rst $38                                          ; $47d6: $ff
	inc b                                            ; $47d7: $04
	ld a, [hl]                                       ; $47d8: $7e
	ld bc, $a008                                     ; $47d9: $01 $08 $a0
	cp l                                             ; $47dc: $bd
	ld [bc], a                                       ; $47dd: $02
	ld sp, $1008                                     ; $47de: $31 $08 $10
	ld a, [hl]                                       ; $47e1: $7e
	nop                                              ; $47e2: $00
	sub [hl]                                         ; $47e3: $96
	rst $38                                          ; $47e4: $ff
	inc bc                                           ; $47e5: $03
	inc l                                            ; $47e6: $2c
	ld [$102e], sp                                   ; $47e7: $08 $2e $10
	inc l                                            ; $47ea: $2c
	ld [$0831], sp                                   ; $47eb: $08 $31 $08
	or c                                             ; $47ee: $b1
	ld sp, $0000                                     ; $47ef: $31 $00 $00
	ld sp, $b108                                     ; $47f2: $31 $08 $b1
	or c                                             ; $47f5: $b1
	rst $38                                          ; $47f6: $ff
	inc b                                            ; $47f7: $04
	ld sp, $b108                                     ; $47f8: $31 $08 $b1
	ld sp, $0000                                     ; $47fb: $31 $00 $00
	ld sp, $7e10                                     ; $47fe: $31 $10 $7e
	ld bc, $a008                                     ; $4801: $01 $08 $a0
	or c                                             ; $4804: $b1
	sub c                                            ; $4805: $91
	rst $38                                          ; $4806: $ff
	inc b                                            ; $4807: $04
	cp l                                             ; $4808: $bd
	ld [bc], a                                       ; $4809: $02
	ld sp, $1008                                     ; $480a: $31 $08 $10
	ld a, [hl]                                       ; $480d: $7e
	nop                                              ; $480e: $00
	sub [hl]                                         ; $480f: $96
	rst $38                                          ; $4810: $ff
	inc bc                                           ; $4811: $03
	inc l                                            ; $4812: $2c
	ld [$102e], sp                                   ; $4813: $08 $2e $10
	inc l                                            ; $4816: $2c
	ld [$a1b1], sp                                   ; $4817: $08 $b1 $a1
	nop                                              ; $481a: $00
	nop                                              ; $481b: $00
	ld sp, $c310                                     ; $481c: $31 $10 $c3
	ld sp, $c808                                     ; $481f: $31 $08 $c8
	inc [hl]                                         ; $4822: $34
	db $10                                           ; $4823: $10
	jp $0834                                         ; $4824: $c3 $34 $08


	ret z                                            ; $4827: $c8

	ld [hl], $10                                     ; $4828: $36 $10
	jp $0836                                         ; $482a: $c3 $36 $08


	ret z                                            ; $482d: $c8

	scf                                              ; $482e: $37
	db $10                                           ; $482f: $10
	jp $0837                                         ; $4830: $c3 $37 $08


	jp nz, $0637                                     ; $4833: $c2 $37 $06

	or l                                             ; $4836: $b5
	add c                                            ; $4837: $81
	inc bc                                           ; $4838: $03
	rst $38                                          ; $4839: $ff
	ld [bc], a                                       ; $483a: $02
	scf                                              ; $483b: $37
	ld [bc], a                                       ; $483c: $02
	jr c, jr_02f_4847                                ; $483d: $38 $08

	jr c, @+$09                                      ; $483f: $38 $07

	nop                                              ; $4841: $00
	ld bc, $0838                                     ; $4842: $01 $38 $08
	jr c, jr_02f_484f                                ; $4845: $38 $08

jr_02f_4847:
	jr c, jr_02f_4851                                ; $4847: $38 $08

	cp [hl]                                          ; $4849: $be
	ld [$3838], sp                                   ; $484a: $08 $38 $38
	jr c, @+$3a                                      ; $484d: $38 $38

jr_02f_484f:
	jr c, @+$3a                                      ; $484f: $38 $38

jr_02f_4851:
	cp [hl]                                          ; $4851: $be
	cp $b5                                           ; $4852: $fe $b5
	pop de                                           ; $4854: $d1
	ld [bc], a                                       ; $4855: $02
	rst $38                                          ; $4856: $ff
	ld [bc], a                                       ; $4857: $02
	ld a, [hl]                                       ; $4858: $7e
	add hl, bc                                       ; $4859: $09
	nop                                              ; $485a: $00
	xor d                                            ; $485b: $aa
	ei                                               ; $485c: $fb
	dec h                                            ; $485d: $25
	jr @+$22                                         ; $485e: $18 $20

	inc c                                            ; $4860: $0c
	ei                                               ; $4861: $fb
	inc b                                            ; $4862: $04
	cp [hl]                                          ; $4863: $be
	inc c                                            ; $4864: $0c
	dec h                                            ; $4865: $25
	inc h                                            ; $4866: $24
	dec h                                            ; $4867: $25
	ld h, $be                                        ; $4868: $26 $be
	daa                                              ; $486a: $27
	jr @+$24                                         ; $486b: $18 $22

	inc c                                            ; $486d: $0c
	daa                                              ; $486e: $27
	jr @+$24                                         ; $486f: $18 $22

	inc c                                            ; $4871: $0c

jr_02f_4872:
	daa                                              ; $4872: $27
	jr @-$4d                                         ; $4873: $18 $b1

	pop de                                           ; $4875: $d1
	ld [$2702], sp                                   ; $4876: $08 $02 $27
	ld [$27c8], sp                                   ; $4879: $08 $c8 $27
	ld [$71b1], sp                                   ; $487c: $08 $b1 $71
	ld [$2702], sp                                   ; $487f: $08 $02 $27
	ld [$27c6], sp                                   ; $4882: $08 $c6 $27
	ld [$27c6], sp                                   ; $4885: $08 $c6 $27
	ld [$41b1], sp                                   ; $4888: $08 $b1 $41
	ld [$2703], sp                                   ; $488b: $08 $03 $27
	ld [$41b1], sp                                   ; $488e: $08 $b1 $41
	ld [$2703], sp                                   ; $4891: $08 $03 $27
	ld b, $b1                                        ; $4894: $06 $b1
	ld sp, $0308                                     ; $4896: $31 $08 $03
	daa                                              ; $4899: $27
	ld b, $7e                                        ; $489a: $06 $7e
	add hl, bc                                       ; $489c: $09
	nop                                              ; $489d: $00
	xor d                                            ; $489e: $aa
	or c                                             ; $489f: $b1
	pop de                                           ; $48a0: $d1
	rst $38                                          ; $48a1: $ff
	ld [bc], a                                       ; $48a2: $02
	dec h                                            ; $48a3: $25
	inc c                                            ; $48a4: $0c
	inc h                                            ; $48a5: $24
	inc c                                            ; $48a6: $0c
	ld [hl+], a                                      ; $48a7: $22

jr_02f_48a8:
	inc c                                            ; $48a8: $0c
	ei                                               ; $48a9: $fb
	inc h                                            ; $48aa: $24
	jr jr_02f_48cd                                   ; $48ab: $18 $20

	inc c                                            ; $48ad: $0c

jr_02f_48ae:
	ei                                               ; $48ae: $fb
	inc b                                            ; $48af: $04
	inc h                                            ; $48b0: $24
	inc c                                            ; $48b1: $0c
	daa                                              ; $48b2: $27
	jr jr_02f_48d9                                   ; $48b3: $18 $24

	inc c                                            ; $48b5: $0c
	dec h                                            ; $48b6: $25
	jr jr_02f_48d9                                   ; $48b7: $18 $20

	inc c                                            ; $48b9: $0c

jr_02f_48ba:
	dec h                                            ; $48ba: $25
	jr jr_02f_48dd                                   ; $48bb: $18 $20

	inc c                                            ; $48bd: $0c
	dec h                                            ; $48be: $25
	jr jr_02f_4872                                   ; $48bf: $18 $b1

	add c                                            ; $48c1: $81
	rst $38                                          ; $48c2: $ff
	inc bc                                           ; $48c3: $03
	add hl, hl                                       ; $48c4: $29
	jr @-$4d                                         ; $48c5: $18 $b1

	ld d, c                                          ; $48c7: $51
	nop                                              ; $48c8: $00
	nop                                              ; $48c9: $00
	ld a, [hl]                                       ; $48ca: $7e
	nop                                              ; $48cb: $00
	cp [hl]                                          ; $48cc: $be

jr_02f_48cd:
	inc c                                            ; $48cd: $0c
	dec e                                            ; $48ce: $1d
	inc d                                            ; $48cf: $14
	dec e                                            ; $48d0: $1d
	inc d                                            ; $48d1: $14
	ld [de], a                                       ; $48d2: $12
	inc d                                            ; $48d3: $14
	cp [hl]                                          ; $48d4: $be
	or l                                             ; $48d5: $b5
	pop de                                           ; $48d6: $d1
	ld [bc], a                                       ; $48d7: $02
	rst $38                                          ; $48d8: $ff

jr_02f_48d9:
	ld [bc], a                                       ; $48d9: $02
	ld a, [hl]                                       ; $48da: $7e
	add hl, bc                                       ; $48db: $09
	nop                                              ; $48dc: $00

jr_02f_48dd:
	xor d                                            ; $48dd: $aa
	ei                                               ; $48de: $fb
	dec h                                            ; $48df: $25
	jr jr_02f_4902                                   ; $48e0: $18 $20

	inc c                                            ; $48e2: $0c
	ei                                               ; $48e3: $fb
	inc b                                            ; $48e4: $04
	cp [hl]                                          ; $48e5: $be
	inc c                                            ; $48e6: $0c
	dec h                                            ; $48e7: $25
	inc h                                            ; $48e8: $24
	dec h                                            ; $48e9: $25
	ld h, $be                                        ; $48ea: $26 $be
	daa                                              ; $48ec: $27
	jr @+$24                                         ; $48ed: $18 $22

	inc c                                            ; $48ef: $0c
	daa                                              ; $48f0: $27
	jr jr_02f_4915                                   ; $48f1: $18 $22

	inc c                                            ; $48f3: $0c
	daa                                              ; $48f4: $27
	jr jr_02f_48a8                                   ; $48f5: $18 $b1

	add c                                            ; $48f7: $81
	rst $38                                          ; $48f8: $ff
	inc b                                            ; $48f9: $04
	ld a, [hl+]                                      ; $48fa: $2a
	jr jr_02f_48ae                                   ; $48fb: $18 $b1

	ld de, $0000                                     ; $48fd: $11 $00 $00
	ld a, [hl]                                       ; $4900: $7e
	nop                                              ; $4901: $00

jr_02f_4902:
	ld a, [hl+]                                      ; $4902: $2a
	inc c                                            ; $4903: $0c
	or c                                             ; $4904: $b1
	ld h, c                                          ; $4905: $61

jr_02f_4906:
	nop                                              ; $4906: $00
	nop                                              ; $4907: $00
	dec e                                            ; $4908: $1d
	inc c                                            ; $4909: $0c
	ld e, $18                                        ; $490a: $1e $18
	or c                                             ; $490c: $b1
	sub c                                            ; $490d: $91
	rst $38                                          ; $490e: $ff
	inc bc                                           ; $490f: $03
	ld l, $18                                        ; $4910: $2e $18
	or l                                             ; $4912: $b5
	and c                                            ; $4913: $a1

jr_02f_4914:
	ld [bc], a                                       ; $4914: $02

jr_02f_4915:
	rst $38                                          ; $4915: $ff
	ld [bc], a                                       ; $4916: $02
	ld a, [hl]                                       ; $4917: $7e
	add hl, bc                                       ; $4918: $09
	nop                                              ; $4919: $00
	xor e                                            ; $491a: $ab
	inc l                                            ; $491b: $2c
	inc c                                            ; $491c: $0c

jr_02f_491d:
	ld a, [hl+]                                      ; $491d: $2a
	inc c                                            ; $491e: $0c
	daa                                              ; $491f: $27
	inc c                                            ; $4920: $0c
	ld a, [hl+]                                      ; $4921: $2a
	jr jr_02f_48ba                                   ; $4922: $18 $96

	rst $38                                          ; $4924: $ff
	ld [bc], a                                       ; $4925: $02
	inc l                                            ; $4926: $2c
	inc c                                            ; $4927: $0c
	or c                                             ; $4928: $b1
	ld hl, $0000                                     ; $4929: $21 $00 $00

jr_02f_492c:
	inc l                                            ; $492c: $2c
	inc c                                            ; $492d: $0c
	or c                                             ; $492e: $b1
	and c                                            ; $492f: $a1
	rst $38                                          ; $4930: $ff
	ld [bc], a                                       ; $4931: $02
	add hl, hl                                       ; $4932: $29
	inc c                                            ; $4933: $0c
	call $0c27                                       ; $4934: $cd $27 $0c
	dec h                                            ; $4937: $25
	inc c                                            ; $4938: $0c
	ld [hl+], a                                      ; $4939: $22
	inc c                                            ; $493a: $0c
	dec h                                            ; $493b: $25
	jr jr_02f_4965                                   ; $493c: $18 $27

	inc c                                            ; $493e: $0c
	or c                                             ; $493f: $b1
	ld sp, $0000                                     ; $4940: $31 $00 $00
	daa                                              ; $4943: $27
	inc c                                            ; $4944: $0c
	or c                                             ; $4945: $b1
	pop bc                                           ; $4946: $c1
	ld b, $01                                        ; $4947: $06 $01
	dec h                                            ; $4949: $25
	inc c                                            ; $494a: $0c
	sub [hl]                                         ; $494b: $96
	rst $38                                          ; $494c: $ff
	inc bc                                           ; $494d: $03
	daa                                              ; $494e: $27
	jr jr_02f_4906                                   ; $494f: $18 $b5

	ld d, c                                          ; $4951: $51
	ld bc, $0000                                     ; $4952: $01 $00 $00
	jr jr_02f_496f                                   ; $4955: $18 $18

	dec de                                           ; $4957: $1b
	jr jr_02f_4978                                   ; $4958: $18 $1e

	jr @-$6c                                         ; $495a: $18 $92

	or c                                             ; $495c: $b1
	pop de                                           ; $495d: $d1
	rst $38                                          ; $495e: $ff
	inc bc                                           ; $495f: $03
	dec h                                            ; $4960: $25
	jr jr_02f_4914                                   ; $4961: $18 $b1

	ld b, c                                          ; $4963: $41
	nop                                              ; $4964: $00

jr_02f_4965:
	nop                                              ; $4965: $00
	dec h                                            ; $4966: $25
	jr jr_02f_492c                                   ; $4967: $18 $c3

	dec h                                            ; $4969: $25
	jr jr_02f_491d                                   ; $496a: $18 $b1

	pop de                                           ; $496c: $d1
	rst $38                                          ; $496d: $ff
	inc bc                                           ; $496e: $03

jr_02f_496f:
	jr nz, @+$1a                                     ; $496f: $20 $18

	cp $ff                                           ; $4971: $fe $ff
	or h                                             ; $4973: $b4
	ld a, l                                          ; $4974: $7d
	ld b, c                                          ; $4975: $41
	ld b, $20                                        ; $4976: $06 $20

jr_02f_4978:
	ld [$1022], sp                                   ; $4978: $08 $22 $10
	jr nz, jr_02f_4985                               ; $497b: $20 $08

	call nz, $0829                                   ; $497d: $c4 $29 $08
	add $29                                          ; $4980: $c6 $29
	ld [$28c4], sp                                   ; $4982: $08 $c4 $28

jr_02f_4985:
	ld [$27c4], sp                                   ; $4985: $08 $c4 $27
	ld [$27c6], sp                                   ; $4988: $08 $c6 $27
	ld [$0dc2], sp                                   ; $498b: $08 $c2 $0d
	ld [$107e], sp                                   ; $498e: $08 $7e $10
	add hl, de                                       ; $4991: $19
	and e                                            ; $4992: $a3
	dec c                                            ; $4993: $0d
	jr z, jr_02f_4a14                                ; $4994: $28 $7e

	nop                                              ; $4996: $00
	add $0c                                          ; $4997: $c6 $0c
	ld [$29c4], sp                                   ; $4999: $08 $c4 $29
	ld [$29c6], sp                                   ; $499c: $08 $c6 $29
	ld [$28c4], sp                                   ; $499f: $08 $c4 $28
	ld [$0827], sp                                   ; $49a2: $08 $27 $08
	add $27                                          ; $49a5: $c6 $27
	ld [$10c2], sp                                   ; $49a7: $08 $c2 $10
	ld [$107e], sp                                   ; $49aa: $08 $7e $10
	add hl, de                                       ; $49ad: $19
	and e                                            ; $49ae: $a3
	db $10                                           ; $49af: $10
	jr z, jr_02f_4a30                                ; $49b0: $28 $7e

	nop                                              ; $49b2: $00
	add $0f                                          ; $49b3: $c6 $0f
	ld [$19c2], sp                                   ; $49b5: $08 $c2 $19
	ld d, $c4                                        ; $49b8: $16 $c4
	add hl, de                                       ; $49ba: $19
	ld [bc], a                                       ; $49bb: $02
	jp nz, $1619                                     ; $49bc: $c2 $19 $16

	call nz, $0219                                   ; $49bf: $c4 $19 $02
	jp nz, $1612                                     ; $49c2: $c2 $12 $16

	call nz, $0212                                   ; $49c5: $c4 $12 $02
	jp nz, $1610                                     ; $49c8: $c2 $10 $16

	call nz, $0210                                   ; $49cb: $c4 $10 $02
	add $10                                          ; $49ce: $c6 $10
	ld b, $82                                        ; $49d0: $06 $82
	call nz, $0126                                   ; $49d2: $c4 $26 $01
	cp [hl]                                          ; $49d5: $be
	ld [$2727], sp                                   ; $49d6: $08 $27 $27
	ld h, $27                                        ; $49d9: $26 $27
	daa                                              ; $49db: $27
	cp [hl]                                          ; $49dc: $be
	cp [hl]                                          ; $49dd: $be
	ld [$2727], sp                                   ; $49de: $08 $27 $27
	daa                                              ; $49e1: $27
	daa                                              ; $49e2: $27
	daa                                              ; $49e3: $27
	daa                                              ; $49e4: $27
	cp [hl]                                          ; $49e5: $be
	cp $fb                                           ; $49e6: $fe $fb
	add e                                            ; $49e8: $83
	jp nz, $0c0d                                     ; $49e9: $c2 $0d $0c

	call nz, $0c0d                                   ; $49ec: $c4 $0d $0c
	add h                                            ; $49ef: $84
	jp nz, $0c14                                     ; $49f0: $c2 $14 $0c

	add hl, de                                       ; $49f3: $19
	ld b, $c4                                        ; $49f4: $06 $c4
	add hl, de                                       ; $49f6: $19
	ld b, $c6                                        ; $49f7: $06 $c6
	add hl, de                                       ; $49f9: $19
	inc c                                            ; $49fa: $0c
	jp nz, $0c14                                     ; $49fb: $c2 $14 $0c

	ld de, $c406                                     ; $49fe: $11 $06 $c4
	ld de, $c206                                     ; $4a01: $11 $06 $c2
	inc d                                            ; $4a04: $14
	ld b, $c4                                        ; $4a05: $06 $c4
	inc d                                            ; $4a07: $14
	ld b, $fb                                        ; $4a08: $06 $fb
	ld [bc], a                                       ; $4a0a: $02
	ei                                               ; $4a0b: $fb
	add e                                            ; $4a0c: $83
	jp nz, $0c0f                                     ; $4a0d: $c2 $0f $0c

	call nz, $0c0f                                   ; $4a10: $c4 $0f $0c
	add h                                            ; $4a13: $84

jr_02f_4a14:
	jp nz, $0c12                                     ; $4a14: $c2 $12 $0c

	add hl, de                                       ; $4a17: $19
	ld b, $c4                                        ; $4a18: $06 $c4
	add hl, de                                       ; $4a1a: $19
	ld b, $c6                                        ; $4a1b: $06 $c6
	add hl, de                                       ; $4a1d: $19
	inc c                                            ; $4a1e: $0c
	jp nz, $0c12                                     ; $4a1f: $c2 $12 $0c

	rrca                                             ; $4a22: $0f
	ld b, $c4                                        ; $4a23: $06 $c4
	rrca                                             ; $4a25: $0f
	ld b, $c2                                        ; $4a26: $06 $c2
	ld [de], a                                       ; $4a28: $12
	ld b, $c4                                        ; $4a29: $06 $c4
	ld [de], a                                       ; $4a2b: $12
	ld b, $fb                                        ; $4a2c: $06 $fb
	ld [bc], a                                       ; $4a2e: $02
	add e                                            ; $4a2f: $83

jr_02f_4a30:
	jp nz, $0c08                                     ; $4a30: $c2 $08 $0c

	call nz, $0c08                                   ; $4a33: $c4 $08 $0c
	add h                                            ; $4a36: $84
	jp nz, $0c0f                                     ; $4a37: $c2 $0f $0c

	inc d                                            ; $4a3a: $14
	ld b, $c4                                        ; $4a3b: $06 $c4
	inc d                                            ; $4a3d: $14
	ld b, $c6                                        ; $4a3e: $06 $c6
	inc d                                            ; $4a40: $14
	inc c                                            ; $4a41: $0c
	jp nz, $0c0f                                     ; $4a42: $c2 $0f $0c

	inc c                                            ; $4a45: $0c
	ld b, $c4                                        ; $4a46: $06 $c4
	inc c                                            ; $4a48: $0c
	ld b, $c2                                        ; $4a49: $06 $c2
	rrca                                             ; $4a4b: $0f
	ld b, $c4                                        ; $4a4c: $06 $c4
	rrca                                             ; $4a4e: $0f
	ld b, $c2                                        ; $4a4f: $06 $c2
	inc d                                            ; $4a51: $14
	inc c                                            ; $4a52: $0c
	call nz, $0c14                                   ; $4a53: $c4 $14 $0c
	jp nz, $0c0f                                     ; $4a56: $c2 $0f $0c

	inc d                                            ; $4a59: $14
	ld b, $c4                                        ; $4a5a: $06 $c4
	inc d                                            ; $4a5c: $14
	ld b, $c6                                        ; $4a5d: $06 $c6
	inc d                                            ; $4a5f: $14
	inc c                                            ; $4a60: $0c
	jp nz, $0c0f                                     ; $4a61: $c2 $0f $0c

	ld [de], a                                       ; $4a64: $12
	ld b, $c4                                        ; $4a65: $06 $c4
	ld [de], a                                       ; $4a67: $12
	ld b, $c2                                        ; $4a68: $06 $c2
	inc c                                            ; $4a6a: $0c
	ld b, $c4                                        ; $4a6b: $06 $c4
	inc c                                            ; $4a6d: $0c
	ld b, $83                                        ; $4a6e: $06 $83
	jp nz, $0c0d                                     ; $4a70: $c2 $0d $0c

	call nz, $0c0d                                   ; $4a73: $c4 $0d $0c
	add h                                            ; $4a76: $84
	jp nz, $0c14                                     ; $4a77: $c2 $14 $0c

	dec c                                            ; $4a7a: $0d
	inc c                                            ; $4a7b: $0c
	call nz, $0c0d                                   ; $4a7c: $c4 $0d $0c
	jp nz, $0c14                                     ; $4a7f: $c2 $14 $0c

	dec c                                            ; $4a82: $0d
	inc c                                            ; $4a83: $0c
	call nz, $0c0d                                   ; $4a84: $c4 $0d $0c
	add e                                            ; $4a87: $83
	jp nz, $100d                                     ; $4a88: $c2 $0d $10

	call nz, $040d                                   ; $4a8b: $c4 $0d $04
	add $0d                                          ; $4a8e: $c6 $0d
	inc b                                            ; $4a90: $04
	add h                                            ; $4a91: $84
	jp nz, $0c14                                     ; $4a92: $c2 $14 $0c

	dec c                                            ; $4a95: $0d
	ld a, [bc]                                       ; $4a96: $0a
	call nz, $020d                                   ; $4a97: $c4 $0d $02
	jp nz, $0614                                     ; $4a9a: $c2 $14 $06

	call nz, $0614                                   ; $4a9d: $c4 $14 $06
	jp nz, $060d                                     ; $4aa0: $c2 $0d $06

	call nz, $060d                                   ; $4aa3: $c4 $0d $06
	jp nz, $0a0c                                     ; $4aa6: $c2 $0c $0a

	call nz, $020c                                   ; $4aa9: $c4 $0c $02
	jp nz, $0a0d                                     ; $4aac: $c2 $0d $0a

	call nz, $020d                                   ; $4aaf: $c4 $0d $02
	jp nz, $0d83                                     ; $4ab2: $c2 $83 $0d

	inc c                                            ; $4ab5: $0c
	call nz, $0c0d                                   ; $4ab6: $c4 $0d $0c
	add h                                            ; $4ab9: $84
	jp nz, $0c14                                     ; $4aba: $c2 $14 $0c

	add hl, de                                       ; $4abd: $19
	ld b, $c4                                        ; $4abe: $06 $c4
	add hl, de                                       ; $4ac0: $19
	ld b, $c6                                        ; $4ac1: $06 $c6
	add hl, de                                       ; $4ac3: $19
	inc c                                            ; $4ac4: $0c
	jp nz, $0c14                                     ; $4ac5: $c2 $14 $0c

	ld de, $c406                                     ; $4ac8: $11 $06 $c4
	ld de, $c206                                     ; $4acb: $11 $06 $c2
	inc d                                            ; $4ace: $14
	ld b, $c4                                        ; $4acf: $06 $c4
	inc d                                            ; $4ad1: $14
	ld b, $83                                        ; $4ad2: $06 $83
	jp nz, $0c0d                                     ; $4ad4: $c2 $0d $0c

	call nz, $0c0d                                   ; $4ad7: $c4 $0d $0c
	add h                                            ; $4ada: $84
	jp nz, $0c14                                     ; $4adb: $c2 $14 $0c

	add hl, de                                       ; $4ade: $19
	ld b, $c4                                        ; $4adf: $06 $c4
	add hl, de                                       ; $4ae1: $19
	ld b, $c6                                        ; $4ae2: $06 $c6
	add hl, de                                       ; $4ae4: $19
	inc c                                            ; $4ae5: $0c
	jp nz, $0c14                                     ; $4ae6: $c2 $14 $0c

	ld de, $c406                                     ; $4ae9: $11 $06 $c4
	ld de, $c206                                     ; $4aec: $11 $06 $c2
	dec c                                            ; $4aef: $0d
	ld b, $c4                                        ; $4af0: $06 $c4
	dec c                                            ; $4af2: $0d
	ld b, $83                                        ; $4af3: $06 $83
	jp nz, $0c12                                     ; $4af5: $c2 $12 $0c

	call nz, $0c12                                   ; $4af8: $c4 $12 $0c
	add h                                            ; $4afb: $84
	jp nz, $0c19                                     ; $4afc: $c2 $19 $0c

	add hl, de                                       ; $4aff: $19
	ld b, $c4                                        ; $4b00: $06 $c4
	add hl, de                                       ; $4b02: $19
	ld b, $c6                                        ; $4b03: $06 $c6
	add hl, de                                       ; $4b05: $19
	inc c                                            ; $4b06: $0c
	jp nz, $0c12                                     ; $4b07: $c2 $12 $0c

	rrca                                             ; $4b0a: $0f
	ld b, $c4                                        ; $4b0b: $06 $c4
	rrca                                             ; $4b0d: $0f
	ld b, $c2                                        ; $4b0e: $06 $c2
	ld [de], a                                       ; $4b10: $12
	ld b, $c4                                        ; $4b11: $06 $c4
	ld [de], a                                       ; $4b13: $12
	ld b, $c2                                        ; $4b14: $06 $c2
	ld [de], a                                       ; $4b16: $12
	inc c                                            ; $4b17: $0c
	call nz, $0612                                   ; $4b18: $c4 $12 $06
	add $12                                          ; $4b1b: $c6 $12
	ld b, $c4                                        ; $4b1d: $06 $c4
	ld d, $0c                                        ; $4b1f: $16 $0c
	jp nz, $061b                                     ; $4b21: $c2 $1b $06

	call nz, $061b                                   ; $4b24: $c4 $1b $06
	add $1b                                          ; $4b27: $c6 $1b
	inc c                                            ; $4b29: $0c
	call nz, $0c16                                   ; $4b2a: $c4 $16 $0c
	jp nz, $0612                                     ; $4b2d: $c2 $12 $06

	call nz, $0612                                   ; $4b30: $c4 $12 $06
	jp nz, $0611                                     ; $4b33: $c2 $11 $06

	call nz, $0611                                   ; $4b36: $c4 $11 $06
	jp nz, $1b83                                     ; $4b39: $c2 $83 $1b

	inc c                                            ; $4b3c: $0c
	add h                                            ; $4b3d: $84
	jp nz, $0612                                     ; $4b3e: $c2 $12 $06

	call nz, $0612                                   ; $4b41: $c4 $12 $06
	jp nz, $0616                                     ; $4b44: $c2 $16 $06

	call nz, $0616                                   ; $4b47: $c4 $16 $06
	jp nz, $0619                                     ; $4b4a: $c2 $19 $06

	call nz, $0619                                   ; $4b4d: $c4 $19 $06
	add $19                                          ; $4b50: $c6 $19
	inc c                                            ; $4b52: $0c
	jp nz, $0616                                     ; $4b53: $c2 $16 $06

	call nz, $0616                                   ; $4b56: $c4 $16 $06
	jp nz, $060f                                     ; $4b59: $c2 $0f $06

	call nz, $0c0f                                   ; $4b5c: $c4 $0f $0c
	add $0f                                          ; $4b5f: $c6 $0f
	ld b, $83                                        ; $4b61: $06 $83
	jp nz, $0a17                                     ; $4b63: $c2 $17 $0a

	call nz, $0217                                   ; $4b66: $c4 $17 $02
	add h                                            ; $4b69: $84
	jp nz, $060f                                     ; $4b6a: $c2 $0f $06

	call nz, $060f                                   ; $4b6d: $c4 $0f $06
	jp nz, $0612                                     ; $4b70: $c2 $12 $06

	call nz, $0612                                   ; $4b73: $c4 $12 $06
	jp nz, $0816                                     ; $4b76: $c2 $16 $08

	call nz, $0816                                   ; $4b79: $c4 $16 $08
	add $16                                          ; $4b7c: $c6 $16
	ld [$12c2], sp                                   ; $4b7e: $08 $c2 $12
	ld b, $c4                                        ; $4b81: $06 $c4
	ld [de], a                                       ; $4b83: $12
	ld b, $c2                                        ; $4b84: $06 $c2
	rrca                                             ; $4b86: $0f
	ld b, $c4                                        ; $4b87: $06 $c4
	rrca                                             ; $4b89: $0f
	ld b, $c2                                        ; $4b8a: $06 $c2
	dec bc                                           ; $4b8c: $0b
	ld b, $c4                                        ; $4b8d: $06 $c4
	dec bc                                           ; $4b8f: $0b
	ld b, $83                                        ; $4b90: $06 $83
	jp nz, $0c14                                     ; $4b92: $c2 $14 $0c

	call nz, $1614                                   ; $4b95: $c4 $14 $16
	add $14                                          ; $4b98: $c6 $14
	ld [bc], a                                       ; $4b9a: $02
	jp nz, $0c14                                     ; $4b9b: $c2 $14 $0c

	call nz, $1614                                   ; $4b9e: $c4 $14 $16
	add $14                                          ; $4ba1: $c6 $14
	ld [bc], a                                       ; $4ba3: $02
	jp nz, $0c0c                                     ; $4ba4: $c2 $0c $0c

	call nz, $0c0c                                   ; $4ba7: $c4 $0c $0c
	jp nz, $1e0d                                     ; $4baa: $c2 $0d $1e

	call nz, $180d                                   ; $4bad: $c4 $0d $18
	add $0d                                          ; $4bb0: $c6 $0d
	ld b, $c2                                        ; $4bb2: $06 $c2
	dec c                                            ; $4bb4: $0d

jr_02f_4bb5:
	ld [$0dc4], sp                                   ; $4bb5: $08 $c4 $0d
	inc b                                            ; $4bb8: $04
	jp nz, $0f14                                     ; $4bb9: $c2 $14 $0f

	call nz, $0914                                   ; $4bbc: $c4 $14 $09
	cp $ff                                           ; $4bbf: $fe $ff
	ret nc                                           ; $4bc1: $d0

	ld a, l                                          ; $4bc2: $7d
	nop                                              ; $4bc3: $00
	jr nz, jr_02f_4bf7                               ; $4bc4: $20 $31

	db $10                                           ; $4bc6: $10
	ld sp, $3108                                     ; $4bc7: $31 $08 $31
	db $10                                           ; $4bca: $10
	inc d                                            ; $4bcb: $14
	ld [$2800], sp                                   ; $4bcc: $08 $00 $28
	dec c                                            ; $4bcf: $0d
	ld [$080d], sp                                   ; $4bd0: $08 $0d $08
	ld sp, $3108                                     ; $4bd3: $31 $08 $31
	ld [$1031], sp                                   ; $4bd6: $08 $31 $10
	inc d                                            ; $4bd9: $14
	ld [$3000], sp                                   ; $4bda: $08 $00 $30
	cp [hl]                                          ; $4bdd: $be
	jr jr_02f_4c11                                   ; $4bde: $18 $31

	ld sp, $3131                                     ; $4be0: $31 $31 $31
	cp [hl]                                          ; $4be3: $be
	cp [hl]                                          ; $4be4: $be
	ld [$1212], sp                                   ; $4be5: $08 $12 $12
	ld [de], a                                       ; $4be8: $12
	ld [de], a                                       ; $4be9: $12
	ld [de], a                                       ; $4bea: $12
	ld [de], a                                       ; $4beb: $12
	ld [de], a                                       ; $4bec: $12
	ld [de], a                                       ; $4bed: $12
	ld [de], a                                       ; $4bee: $12
	ld [de], a                                       ; $4bef: $12
	ld [de], a                                       ; $4bf0: $12
	ld [de], a                                       ; $4bf1: $12
	cp [hl]                                          ; $4bf2: $be
	cp $14                                           ; $4bf3: $fe $14
	jr jr_02f_4bb5                                   ; $4bf5: $18 $be

jr_02f_4bf7:
	inc c                                            ; $4bf7: $0c
	ld sp, $0909                                     ; $4bf8: $31 $09 $09
	ld [de], a                                       ; $4bfb: $12
	ld sp, $be09                                     ; $4bfc: $31 $09 $be
	cp [hl]                                          ; $4bff: $be
	inc c                                            ; $4c00: $0c
	add hl, bc                                       ; $4c01: $09
	ld [de], a                                       ; $4c02: $12
	ld sp, $0912                                     ; $4c03: $31 $12 $09
	ld [de], a                                       ; $4c06: $12
	ld sp, $be31                                     ; $4c07: $31 $31 $be
	cp [hl]                                          ; $4c0a: $be
	inc c                                            ; $4c0b: $0c
	add hl, bc                                       ; $4c0c: $09
	ld [de], a                                       ; $4c0d: $12
	ld sp, $1212                                     ; $4c0e: $31 $12 $12

jr_02f_4c11:
	add hl, bc                                       ; $4c11: $09
	ld sp, $be12                                     ; $4c12: $31 $12 $be
	cp [hl]                                          ; $4c15: $be
	inc c                                            ; $4c16: $0c
	add hl, bc                                       ; $4c17: $09
	ld [de], a                                       ; $4c18: $12
	ld sp, $0912                                     ; $4c19: $31 $12 $09
	ld [de], a                                       ; $4c1c: $12
	ld sp, $be31                                     ; $4c1d: $31 $31 $be
	add hl, bc                                       ; $4c20: $09
	jr @-$40                                         ; $4c21: $18 $be

	inc c                                            ; $4c23: $0c
	ld sp, $0909                                     ; $4c24: $31 $09 $09
	ld [de], a                                       ; $4c27: $12
	ld sp, $be09                                     ; $4c28: $31 $09 $be
	cp [hl]                                          ; $4c2b: $be
	inc c                                            ; $4c2c: $0c
	add hl, bc                                       ; $4c2d: $09
	ld [de], a                                       ; $4c2e: $12
	ld sp, $0912                                     ; $4c2f: $31 $12 $09
	ld [de], a                                       ; $4c32: $12
	ld sp, $be31                                     ; $4c33: $31 $31 $be
	cp [hl]                                          ; $4c36: $be
	inc c                                            ; $4c37: $0c
	add hl, bc                                       ; $4c38: $09
	ld [de], a                                       ; $4c39: $12
	ld sp, $1212                                     ; $4c3a: $31 $12 $12
	add hl, bc                                       ; $4c3d: $09
	ld sp, $be18                                     ; $4c3e: $31 $18 $be
	cp [hl]                                          ; $4c41: $be
	inc c                                            ; $4c42: $0c
	add hl, bc                                       ; $4c43: $09
	ld sp, $1209                                     ; $4c44: $31 $09 $12
	ld sp, $3112                                     ; $4c47: $31 $12 $31
	cp [hl]                                          ; $4c4a: $be
	add hl, bc                                       ; $4c4b: $09
	ld b, $09                                        ; $4c4c: $06 $09
	ld b, $be                                        ; $4c4e: $06 $be
	inc c                                            ; $4c50: $0c
	add hl, bc                                       ; $4c51: $09
	ld [de], a                                       ; $4c52: $12

jr_02f_4c53:
	ld sp, $0909                                     ; $4c53: $31 $09 $09
	ld sp, $1209                                     ; $4c56: $31 $09 $12
	cp [hl]                                          ; $4c59: $be
	cp [hl]                                          ; $4c5a: $be
	inc c                                            ; $4c5b: $0c
	add hl, bc                                       ; $4c5c: $09
	ld [de], a                                       ; $4c5d: $12
	ld sp, $3112                                     ; $4c5e: $31 $12 $31
	ld [de], a                                       ; $4c61: $12
	inc de                                           ; $4c62: $13
	add hl, bc                                       ; $4c63: $09
	cp [hl]                                          ; $4c64: $be
	cp [hl]                                          ; $4c65: $be
	inc c                                            ; $4c66: $0c
	add hl, bc                                       ; $4c67: $09
	ld [de], a                                       ; $4c68: $12
	ld sp, $1212                                     ; $4c69: $31 $12 $12
	ld sp, $09be                                     ; $4c6c: $31 $be $09
	ld b, $12                                        ; $4c6f: $06 $12
	ld b, $12                                        ; $4c71: $06 $12
	inc c                                            ; $4c73: $0c
	cp [hl]                                          ; $4c74: $be
	inc c                                            ; $4c75: $0c
	add hl, bc                                       ; $4c76: $09
	ld [de], a                                       ; $4c77: $12
	ld sp, $3112                                     ; $4c78: $31 $12 $31
	add hl, bc                                       ; $4c7b: $09
	ld sp, $be31                                     ; $4c7c: $31 $31 $be
	cp [hl]                                          ; $4c7f: $be
	inc c                                            ; $4c80: $0c
	jr jr_02f_4c95                                   ; $4c81: $18 $12

	ld sp, $0909                                     ; $4c83: $31 $09 $09
	inc c                                            ; $4c86: $0c
	add hl, bc                                       ; $4c87: $09

jr_02f_4c88:
	ld sp, $bebe                                     ; $4c88: $31 $be $be
	inc c                                            ; $4c8b: $0c
	add hl, bc                                       ; $4c8c: $09
	ld [de], a                                       ; $4c8d: $12
	ld sp, $3112                                     ; $4c8e: $31 $12 $31
	ld [de], a                                       ; $4c91: $12
	add hl, bc                                       ; $4c92: $09
	jr jr_02f_4c53                                   ; $4c93: $18 $be

jr_02f_4c95:
	cp [hl]                                          ; $4c95: $be
	inc c                                            ; $4c96: $0c
	add hl, bc                                       ; $4c97: $09
	ld [de], a                                       ; $4c98: $12
	ld sp, $0912                                     ; $4c99: $31 $12 $09
	ld sp, $09be                                     ; $4c9c: $31 $be $09
	ld b, $12                                        ; $4c9f: $06 $12
	ld b, $12                                        ; $4ca1: $06 $12
	inc c                                            ; $4ca3: $0c
	cp [hl]                                          ; $4ca4: $be
	inc c                                            ; $4ca5: $0c
	add hl, bc                                       ; $4ca6: $09
	ld sp, $1231                                     ; $4ca7: $31 $31 $12
	ld sp, $09be                                     ; $4caa: $31 $be $09
	ld b, $09                                        ; $4cad: $06 $09
	ld b, $18                                        ; $4caf: $06 $18

jr_02f_4cb1:
	jr jr_02f_4cb1                                   ; $4cb1: $18 $fe

	rst $38                                          ; $4cb3: $ff
	or [hl]                                          ; $4cb4: $b6
	adc h                                            ; $4cb5: $8c
	ld b, c                                          ; $4cb6: $41
	ld [bc], a                                       ; $4cb7: $02
	sub [hl]                                         ; $4cb8: $96
	ld b, $7e                                        ; $4cb9: $06 $7e
	jr c, jr_02f_4cbe                                ; $4cbb: $38 $01

	xor c                                            ; $4cbd: $a9

jr_02f_4cbe:
	nop                                              ; $4cbe: $00
	inc c                                            ; $4cbf: $0c
	jr nz, @+$1a                                     ; $4cc0: $20 $18

	dec h                                            ; $4cc2: $25
	jr jr_02f_4c88                                   ; $4cc3: $18 $c3

	ld a, [hl+]                                      ; $4cc5: $2a
	jr @-$4d                                         ; $4cc6: $18 $b1

	sub e                                            ; $4cc8: $93
	nop                                              ; $4cc9: $00
	nop                                              ; $4cca: $00
	add hl, hl                                       ; $4ccb: $29
	inc c                                            ; $4ccc: $0c
	sub b                                            ; $4ccd: $90
	pop de                                           ; $4cce: $d1
	jp z, $2d7e                                      ; $4ccf: $ca $7e $2d

	ld [hl+], a                                      ; $4cd2: $22
	and b                                            ; $4cd3: $a0
	dec e                                            ; $4cd4: $1d
	inc a                                            ; $4cd5: $3c
	jp z, $0c1e                                      ; $4cd6: $ca $1e $0c

	jp nz, $0c1e                                     ; $4cd9: $c2 $1e $0c

	ei                                               ; $4cdc: $fb
	ret                                              ; $4cdd: $c9


	ld [de], a                                       ; $4cde: $12
	ld b, $c2                                        ; $4cdf: $06 $c2
	ld [de], a                                       ; $4ce1: $12
	ld b, $fb                                        ; $4ce2: $06 $fb
	inc b                                            ; $4ce4: $04
	ret                                              ; $4ce5: $c9


	ld de, $c106                                     ; $4ce6: $11 $06 $c1
	ld de, $fb06                                     ; $4ce9: $11 $06 $fb
	ret                                              ; $4cec: $c9


	ld [de], a                                       ; $4ced: $12
	ld b, $c1                                        ; $4cee: $06 $c1
	ld [de], a                                       ; $4cf0: $12
	ld b, $fb                                        ; $4cf1: $06 $fb
	ld [bc], a                                       ; $4cf3: $02
	pop bc                                           ; $4cf4: $c1
	ld [de], a                                       ; $4cf5: $12
	inc c                                            ; $4cf6: $0c
	sub c                                            ; $4cf7: $91
	ret z                                            ; $4cf8: $c8

	add hl, de                                       ; $4cf9: $19
	inc c                                            ; $4cfa: $0c
	jp nz, $0c19                                     ; $4cfb: $c2 $19 $0c

jr_02f_4cfe:
	ret z                                            ; $4cfe: $c8

	add hl, de                                       ; $4cff: $19
	inc c                                            ; $4d00: $0c
	jp nz, $0c19                                     ; $4d01: $c2 $19 $0c

jr_02f_4d04:
	ret z                                            ; $4d04: $c8

	add hl, de                                       ; $4d05: $19
	inc c                                            ; $4d06: $0c
	ret                                              ; $4d07: $c9


	inc d                                            ; $4d08: $14
	ld b, $c3                                        ; $4d09: $06 $c3
	inc d                                            ; $4d0b: $14
	ld b, $c9                                        ; $4d0c: $06 $c9
	ld d, $06                                        ; $4d0e: $16 $06
	jp $0614                                         ; $4d10: $c3 $14 $06


	add $22                                          ; $4d13: $c6 $22
	ld b, $c4                                        ; $4d15: $06 $c4
	ld [hl+], a                                      ; $4d17: $22
	ld b, $7e                                        ; $4d18: $06 $7e
	dec l                                            ; $4d1a: $2d
	inc d                                            ; $4d1b: $14
	and b                                            ; $4d1c: $a0
	ret z                                            ; $4d1d: $c8

	jr nz, jr_02f_4d44                               ; $4d1e: $20 $24

	sub d                                            ; $4d20: $92
	ld l, h                                          ; $4d21: $6c
	push bc                                          ; $4d22: $c5
	dec h                                            ; $4d23: $25
	ld b, $c3                                        ; $4d24: $06 $c3
	dec h                                            ; $4d26: $25
	ld b, $c5                                        ; $4d27: $06 $c5
	dec e                                            ; $4d29: $1d
	ld b, $c3                                        ; $4d2a: $06 $c3
	dec h                                            ; $4d2c: $25
	ld b, $c4                                        ; $4d2d: $06 $c4
	jr nz, jr_02f_4d37                               ; $4d2f: $20 $06

	jp $061d                                         ; $4d31: $c3 $1d $06


	call nz, $0625                                   ; $4d34: $c4 $25 $06

jr_02f_4d37:
	jp $0620                                         ; $4d37: $c3 $20 $06


	jp nz, $0625                                     ; $4d3a: $c2 $25 $06

	pop bc                                           ; $4d3d: $c1
	jr nz, jr_02f_4d46                               ; $4d3e: $20 $06

	jp nz, $0625                                     ; $4d40: $c2 $25 $06

	pop bc                                           ; $4d43: $c1

jr_02f_4d44:
	jr nz, @+$08                                     ; $4d44: $20 $06

jr_02f_4d46:
	ld [hl], b                                       ; $4d46: $70
	add $7e                                          ; $4d47: $c6 $7e
	nop                                              ; $4d49: $00
	ld [hl+], a                                      ; $4d4a: $22
	jr nc, jr_02f_4cfe                               ; $4d4b: $30 $b1

	sub c                                            ; $4d4d: $91
	ld a, [$2504]                                    ; $4d4e: $fa $04 $25
	jr jr_02f_4d04                                   ; $4d51: $18 $b1

	ld h, c                                          ; $4d53: $61
	nop                                              ; $4d54: $00
	nop                                              ; $4d55: $00
	inc h                                            ; $4d56: $24
	jr @+$22                                         ; $4d57: $18 $20

	jr jr_02f_4d7d                                   ; $4d59: $18 $22

	inc c                                            ; $4d5b: $0c
	inc h                                            ; $4d5c: $24
	inc h                                            ; $4d5d: $24
	ld a, [hl]                                       ; $4d5e: $7e
	nop                                              ; $4d5f: $00
	sub d                                            ; $4d60: $92
	ld a, h                                          ; $4d61: $7c
	ret                                              ; $4d62: $c9


	jr nz, @+$07                                     ; $4d63: $20 $05

	jp nz, $0720                                     ; $4d65: $c2 $20 $07

	ret                                              ; $4d68: $c9


	jr nc, @+$07                                     ; $4d69: $30 $05

	jp nz, $0729                                     ; $4d6b: $c2 $29 $07

	ret                                              ; $4d6e: $c9


	ld sp, $c205                                     ; $4d6f: $31 $05 $c2
	jr nc, jr_02f_4d7b                               ; $4d72: $30 $07

jr_02f_4d74:
	push bc                                          ; $4d74: $c5
	inc l                                            ; $4d75: $2c
	inc c                                            ; $4d76: $0c
	jp nz, $0c2c                                     ; $4d77: $c2 $2c $0c

	ret                                              ; $4d7a: $c9


jr_02f_4d7b:
	ld e, $05                                        ; $4d7b: $1e $05

jr_02f_4d7d:
	jp $071e                                         ; $4d7d: $c3 $1e $07


	ret                                              ; $4d80: $c9


	ld sp, $c305                                     ; $4d81: $31 $05 $c3
	jr nc, jr_02f_4d8d                               ; $4d84: $30 $07

	push bc                                          ; $4d86: $c5
	inc l                                            ; $4d87: $2c
	inc c                                            ; $4d88: $0c
	jp $0c2c                                         ; $4d89: $c3 $2c $0c


	ret z                                            ; $4d8c: $c8

jr_02f_4d8d:
	dec e                                            ; $4d8d: $1d
	dec b                                            ; $4d8e: $05
	jp nz, $0730                                     ; $4d8f: $c2 $30 $07

	rst JumpTable                                          ; $4d92: $c7
	ld sp, $c205                                     ; $4d93: $31 $05 $c2
	jr nc, jr_02f_4d9f                               ; $4d96: $30 $07

	push bc                                          ; $4d98: $c5
	inc l                                            ; $4d99: $2c
	inc c                                            ; $4d9a: $0c
	jp nz, $0c2c                                     ; $4d9b: $c2 $2c $0c

	ret                                              ; $4d9e: $c9


jr_02f_4d9f:
	sub e                                            ; $4d9f: $93
	ld a, [hl-]                                      ; $4da0: $3a
	dec b                                            ; $4da1: $05
	jp $073a                                         ; $4da2: $c3 $3a $07


	ret z                                            ; $4da5: $c8

	jr c, @+$07                                      ; $4da6: $38 $05

	jp $073a                                         ; $4da8: $c3 $3a $07


	rst JumpTable                                          ; $4dab: $c7
	ld sp, $700c                                     ; $4dac: $31 $0c $70
	pop de                                           ; $4daf: $d1
	add $22                                          ; $4db0: $c6 $22
	ld a, [bc]                                       ; $4db2: $0a
	jp nz, $0e22                                     ; $4db3: $c2 $22 $0e

	add $27                                          ; $4db6: $c6 $27
	ld a, [bc]                                       ; $4db8: $0a
	jp nz, $0e27                                     ; $4db9: $c2 $27 $0e

	add $27                                          ; $4dbc: $c6 $27
	ld a, [bc]                                       ; $4dbe: $0a
	jp nz, $0e27                                     ; $4dbf: $c2 $27 $0e

	add $25                                          ; $4dc2: $c6 $25
	ld a, [bc]                                       ; $4dc4: $0a
	jp nz, $0e25                                     ; $4dc5: $c2 $25 $0e

	rst JumpTable                                          ; $4dc8: $c7

jr_02f_4dc9:
	inc h                                            ; $4dc9: $24
	ld a, [bc]                                       ; $4dca: $0a
	jp nz, $0e24                                     ; $4dcb: $c2 $24 $0e

	res 2, b                                         ; $4dce: $cb $90
	ld a, [hl]                                       ; $4dd0: $7e
	dec l                                            ; $4dd1: $2d
	jr jr_02f_4d74                                   ; $4dd2: $18 $a0

	daa                                              ; $4dd4: $27
	jr nc, @+$80                                     ; $4dd5: $30 $7e

	dec l                                            ; $4dd7: $2d
	nop                                              ; $4dd8: $00
	and b                                            ; $4dd9: $a0
	push bc                                          ; $4dda: $c5
	daa                                              ; $4ddb: $27
	jr jr_02f_4e5c                                   ; $4ddc: $18 $7e

	nop                                              ; $4dde: $00
	pop de                                           ; $4ddf: $d1
	sub b                                            ; $4de0: $90
	call $1d7e                                       ; $4de1: $cd $7e $1d
	dec d                                            ; $4de4: $15
	and b                                            ; $4de5: $a0
	jr nz, jr_02f_4deb                               ; $4de6: $20 $03

	jp nz, $0920                                     ; $4de8: $c2 $20 $09

jr_02f_4deb:
	call z, $0320                                    ; $4deb: $cc $20 $03
	jp nz, $0320                                     ; $4dee: $c2 $20 $03

	call z, $0320                                    ; $4df1: $cc $20 $03
	jp nz, $0320                                     ; $4df4: $c2 $20 $03

	jp z, $0c2a                                      ; $4df7: $ca $2a $0c

	jp nz, $0c2a                                     ; $4dfa: $c2 $2a $0c

	ret z                                            ; $4dfd: $c8

	ld a, [hl+]                                      ; $4dfe: $2a

jr_02f_4dff:
	ld b, $c2                                        ; $4dff: $06 $c2
	ld a, [hl+]                                      ; $4e01: $2a
	ld b, $c7                                        ; $4e02: $06 $c7
	add hl, hl                                       ; $4e04: $29
	jr jr_02f_4dc9                                   ; $4e05: $18 $c2

	add hl, hl                                       ; $4e07: $29
	inc c                                            ; $4e08: $0c
	rst JumpTable                                          ; $4e09: $c7
	daa                                              ; $4e0a: $27
	inc c                                            ; $4e0b: $0c
	jp nz, $0c27                                     ; $4e0c: $c2 $27 $0c

	jp z, $0627                                      ; $4e0f: $ca $27 $06

	jp nz, $0627                                     ; $4e12: $c2 $27 $06

	ret z                                            ; $4e15: $c8

	add hl, hl                                       ; $4e16: $29
	inc h                                            ; $4e17: $24
	jp nz, $1829                                     ; $4e18: $c2 $29 $18

	call z, $0320                                    ; $4e1b: $cc $20 $03
	jp nz, $0920                                     ; $4e1e: $c2 $20 $09

	call z, $0320                                    ; $4e21: $cc $20 $03
	jp nz, $0320                                     ; $4e24: $c2 $20 $03

	call z, $0320                                    ; $4e27: $cc $20 $03
	jp nz, $0320                                     ; $4e2a: $c2 $20 $03

	ret                                              ; $4e2d: $c9


	ld a, [hl+]                                      ; $4e2e: $2a
	inc c                                            ; $4e2f: $0c
	jp nz, $0c2a                                     ; $4e30: $c2 $2a $0c

	ret                                              ; $4e33: $c9


	ld a, [hl+]                                      ; $4e34: $2a
	ld b, $c2                                        ; $4e35: $06 $c2
	ld a, [hl+]                                      ; $4e37: $2a
	ld b, $c9                                        ; $4e38: $06 $c9
	add hl, hl                                       ; $4e3a: $29
	jr jr_02f_4dff                                   ; $4e3b: $18 $c2

	add hl, hl                                       ; $4e3d: $29
	inc c                                            ; $4e3e: $0c
	ret                                              ; $4e3f: $c9


	daa                                              ; $4e40: $27
	inc c                                            ; $4e41: $0c
	jp nz, $0c27                                     ; $4e42: $c2 $27 $0c

	ret                                              ; $4e45: $c9


	daa                                              ; $4e46: $27
	ld b, $c2                                        ; $4e47: $06 $c2
	daa                                              ; $4e49: $27
	ld b, $c9                                        ; $4e4a: $06 $c9
	add hl, hl                                       ; $4e4c: $29
	ld [de], a                                       ; $4e4d: $12
	call nz, $0629                                   ; $4e4e: $c4 $29 $06
	call nz, $0092                                   ; $4e51: $c4 $92 $00
	ld b, $7e                                        ; $4e54: $06 $7e
	jr c, jr_02f_4e58                                ; $4e56: $38 $00

jr_02f_4e58:
	and c                                            ; $4e58: $a1
	jr nz, jr_02f_4e67                               ; $4e59: $20 $0c

	ld [hl+], a                                      ; $4e5b: $22

jr_02f_4e5c:
	inc c                                            ; $4e5c: $0c
	inc h                                            ; $4e5d: $24
	ld b, $7e                                        ; $4e5e: $06 $7e
	nop                                              ; $4e60: $00
	sub d                                            ; $4e61: $92
	jp nz, $387e                                     ; $4e62: $c2 $7e $38

jr_02f_4e65:
	nop                                              ; $4e65: $00
	and b                                            ; $4e66: $a0

jr_02f_4e67:
	nop                                              ; $4e67: $00
	ld [de], a                                       ; $4e68: $12
	add hl, hl                                       ; $4e69: $29
	jr jr_02f_4e95                                   ; $4e6a: $18 $29

	inc c                                            ; $4e6c: $0c
	add hl, hl                                       ; $4e6d: $29
	inc c                                            ; $4e6e: $0c
	inc l                                            ; $4e6f: $2c
	jr jr_02f_4e9b                                   ; $4e70: $18 $29

	inc c                                            ; $4e72: $0c
	dec h                                            ; $4e73: $25
	inc c                                            ; $4e74: $0c
	inc h                                            ; $4e75: $24
	jr jr_02f_4e9a                                   ; $4e76: $18 $22

	ld [de], a                                       ; $4e78: $12
	ld a, [hl]                                       ; $4e79: $7e
	nop                                              ; $4e7a: $00
	sub d                                            ; $4e7b: $92
	pop de                                           ; $4e7c: $d1
	call nz, $0c2a                                   ; $4e7d: $c4 $2a $0c
	add hl, hl                                       ; $4e80: $29
	inc c                                            ; $4e81: $0c
	daa                                              ; $4e82: $27
	inc c                                            ; $4e83: $0c
	sub d                                            ; $4e84: $92
	call nz, $1825                                   ; $4e85: $c4 $25 $18
	jp $017d                                         ; $4e88: $c3 $7d $01


	ld [hl+], a                                      ; $4e8b: $22
	inc c                                            ; $4e8c: $0c
	inc h                                            ; $4e8d: $24
	inc c                                            ; $4e8e: $0c
	call nz, $007d                                   ; $4e8f: $c4 $7d $00
	daa                                              ; $4e92: $27
	jr jr_02f_4e58                                   ; $4e93: $18 $c3

jr_02f_4e95:
	ld a, l                                          ; $4e95: $7d
	ld bc, $0c24                                     ; $4e96: $01 $24 $0c
	dec h                                            ; $4e99: $25

jr_02f_4e9a:
	inc c                                            ; $4e9a: $0c

jr_02f_4e9b:
	ld a, l                                          ; $4e9b: $7d
	nop                                              ; $4e9c: $00
	pop de                                           ; $4e9d: $d1
	rst JumpTable                                          ; $4e9e: $c7
	dec e                                            ; $4e9f: $1d
	ld [de], a                                       ; $4ea0: $12
	call nz, $061d                                   ; $4ea1: $c4 $1d $06
	ret                                              ; $4ea4: $c9


	sub b                                            ; $4ea5: $90
	dec h                                            ; $4ea6: $25
	add hl, bc                                       ; $4ea7: $09
	pop bc                                           ; $4ea8: $c1
	dec h                                            ; $4ea9: $25
	rrca                                             ; $4eaa: $0f
	ret                                              ; $4eab: $c9


	dec h                                            ; $4eac: $25
	ld b, $c2                                        ; $4ead: $06 $c2
	dec h                                            ; $4eaf: $25
	ld b, $c9                                        ; $4eb0: $06 $c9
	ld a, [hl]                                       ; $4eb2: $7e
	dec e                                            ; $4eb3: $1d
	inc c                                            ; $4eb4: $0c
	and b                                            ; $4eb5: $a0
	dec h                                            ; $4eb6: $25
	jr jr_02f_4f37                                   ; $4eb7: $18 $7e

	dec e                                            ; $4eb9: $1d
	nop                                              ; $4eba: $00
	and b                                            ; $4ebb: $a0
	call nz, $0c25                                   ; $4ebc: $c4 $25 $0c
	sub d                                            ; $4ebf: $92
	push bc                                          ; $4ec0: $c5
	ld a, [hl]                                       ; $4ec1: $7e
	dec e                                            ; $4ec2: $1d
	jr jr_02f_4e65                                   ; $4ec3: $18 $a0

	dec h                                            ; $4ec5: $25
	ld [de], a                                       ; $4ec6: $12
	jp nz, $0625                                     ; $4ec7: $c2 $25 $06

	push bc                                          ; $4eca: $c5
	dec h                                            ; $4ecb: $25
	ld b, $c2                                        ; $4ecc: $06 $c2
	dec h                                            ; $4ece: $25
	ld b, $c5                                        ; $4ecf: $06 $c5
	dec h                                            ; $4ed1: $25
	ld b, $c2                                        ; $4ed2: $06 $c2
	dec h                                            ; $4ed4: $25
	ld b, $c5                                        ; $4ed5: $06 $c5
	add hl, hl                                       ; $4ed7: $29
	ld [de], a                                       ; $4ed8: $12
	jp nz, $0629                                     ; $4ed9: $c2 $29 $06

	push bc                                          ; $4edc: $c5
	dec h                                            ; $4edd: $25
	ld b, $c2                                        ; $4ede: $06 $c2
	dec h                                            ; $4ee0: $25
	ld b, $c5                                        ; $4ee1: $06 $c5
	jr nz, jr_02f_4eeb                               ; $4ee3: $20 $06

	jp nz, $0620                                     ; $4ee5: $c2 $20 $06

	ld a, [hl]                                       ; $4ee8: $7e
	nop                                              ; $4ee9: $00
	sub a                                            ; $4eea: $97

jr_02f_4eeb:
	ld e, $27                                        ; $4eeb: $1e $27
	inc a                                            ; $4eed: $3c
	sub a                                            ; $4eee: $97
	nop                                              ; $4eef: $00
	sub d                                            ; $4ef0: $92
	pop de                                           ; $4ef1: $d1
	rst JumpTable                                          ; $4ef2: $c7
	ld a, [hl+]                                      ; $4ef3: $2a
	inc c                                            ; $4ef4: $0c
	add hl, hl                                       ; $4ef5: $29
	inc c                                            ; $4ef6: $0c
	daa                                              ; $4ef7: $27
	inc c                                            ; $4ef8: $0c
	jp nc, $19c6                                     ; $4ef9: $d2 $c6 $19

	ld [de], a                                       ; $4efc: $12
	call nz, $1e19                                   ; $4efd: $c4 $19 $1e
	db $d3                                           ; $4f00: $d3
	add $1b                                          ; $4f01: $c6 $1b
	ld [de], a                                       ; $4f03: $12

jr_02f_4f04:
	call nz, $1e1b                                   ; $4f04: $c4 $1b $1e
	pop de                                           ; $4f07: $d1
	add $1d                                          ; $4f08: $c6 $1d
	ld [de], a                                       ; $4f0a: $12
	call nz, $061d                                   ; $4f0b: $c4 $1d $06
	sub b                                            ; $4f0e: $90
	ret                                              ; $4f0f: $c9


	dec h                                            ; $4f10: $25

jr_02f_4f11:
	inc c                                            ; $4f11: $0c
	pop bc                                           ; $4f12: $c1
	dec h                                            ; $4f13: $25
	jr @-$30                                         ; $4f14: $18 $ce

	sub d                                            ; $4f16: $92

jr_02f_4f17:
	ld [hl+], a                                      ; $4f17: $22
	ld b, $c4                                        ; $4f18: $06 $c4
	ld [hl+], a                                      ; $4f1a: $22
	ld b, $ce                                        ; $4f1b: $06 $ce
	ld [hl+], a                                      ; $4f1d: $22
	ld b, $c4                                        ; $4f1e: $06 $c4
	ld [hl+], a                                      ; $4f20: $22
	ld b, $ce                                        ; $4f21: $06 $ce
	inc h                                            ; $4f23: $24
	ld b, $c4                                        ; $4f24: $06 $c4
	inc h                                            ; $4f26: $24
	ld b, $d1                                        ; $4f27: $06 $d1
	sub c                                            ; $4f29: $91
	push bc                                          ; $4f2a: $c5
	ld a, [hl]                                       ; $4f2b: $7e
	jr c, @+$18                                      ; $4f2c: $38 $16

	and b                                            ; $4f2e: $a0
	ld [hl+], a                                      ; $4f2f: $22
	ld a, $c4                                        ; $4f30: $3e $c4
	ld e, $22                                        ; $4f32: $1e $22
	push bc                                          ; $4f34: $c5
	jr nz, jr_02f_4f73                               ; $4f35: $20 $3c

jr_02f_4f37:
	ld a, [hl]                                       ; $4f37: $7e
	nop                                              ; $4f38: $00
	jp nz, $1430                                     ; $4f39: $c2 $30 $14

	cpl                                              ; $4f3c: $2f
	ld [$082e], sp                                   ; $4f3d: $08 $2e $08
	call nz, $387e                                   ; $4f40: $c4 $7e $38
	ld d, $a0                                        ; $4f43: $16 $a0
	inc l                                            ; $4f45: $2c
	ld h, b                                          ; $4f46: $60
	ld a, [hl]                                       ; $4f47: $7e
	nop                                              ; $4f48: $00
	ld a, l                                          ; $4f49: $7d

jr_02f_4f4a:
	nop                                              ; $4f4a: $00
	add $2a                                          ; $4f4b: $c6 $2a
	jr jr_02f_4f11                                   ; $4f4d: $18 $c2

	ld a, [hl+]                                      ; $4f4f: $2a
	inc c                                            ; $4f50: $0c
	add $29                                          ; $4f51: $c6 $29
	jr jr_02f_4f17                                   ; $4f53: $18 $c2

	add hl, hl                                       ; $4f55: $29
	inc c                                            ; $4f56: $0c
	add $26                                          ; $4f57: $c6 $26
	ld [de], a                                       ; $4f59: $12
	jp nz, $0626                                     ; $4f5a: $c2 $26 $06

	pop de                                           ; $4f5d: $d1
	sub d                                            ; $4f5e: $92
	ret z                                            ; $4f5f: $c8

	ld a, [hl]                                       ; $4f60: $7e
	dec e                                            ; $4f61: $1d
	jr jr_02f_4f04                                   ; $4f62: $18 $a0

	dec h                                            ; $4f64: $25
	inc c                                            ; $4f65: $0c
	jp $0c25                                         ; $4f66: $c3 $25 $0c


	ret z                                            ; $4f69: $c8

	dec h                                            ; $4f6a: $25
	inc c                                            ; $4f6b: $0c
	jp $0c25                                         ; $4f6c: $c3 $25 $0c


	ret z                                            ; $4f6f: $c8

	inc h                                            ; $4f70: $24
	ld b, $c3                                        ; $4f71: $06 $c3

jr_02f_4f73:
	inc h                                            ; $4f73: $24
	ld b, $c8                                        ; $4f74: $06 $c8
	ld [hl+], a                                      ; $4f76: $22
	inc c                                            ; $4f77: $0c
	jp $0c22                                         ; $4f78: $c3 $22 $0c


	ret z                                            ; $4f7b: $c8

	inc h                                            ; $4f7c: $24
	jr nc, @-$3b                                     ; $4f7d: $30 $c3

	inc h                                            ; $4f7f: $24
	inc h                                            ; $4f80: $24
	ret z                                            ; $4f81: $c8

	inc h                                            ; $4f82: $24
	ld b, $c2                                        ; $4f83: $06 $c2
	inc h                                            ; $4f85: $24
	ld b, $c8                                        ; $4f86: $06 $c8
	inc h                                            ; $4f88: $24
	ld b, $c2                                        ; $4f89: $06 $c2
	inc h                                            ; $4f8b: $24
	ld b, $c8                                        ; $4f8c: $06 $c8
	dec h                                            ; $4f8e: $25
	inc c                                            ; $4f8f: $0c
	jp nz, $0c25                                     ; $4f90: $c2 $25 $0c

	ret z                                            ; $4f93: $c8

	dec h                                            ; $4f94: $25
	inc c                                            ; $4f95: $0c
	jp nz, $0c25                                     ; $4f96: $c2 $25 $0c

	ret z                                            ; $4f99: $c8

	inc h                                            ; $4f9a: $24
	ld b, $c2                                        ; $4f9b: $06 $c2
	inc h                                            ; $4f9d: $24
	ld b, $c8                                        ; $4f9e: $06 $c8
	ld [hl+], a                                      ; $4fa0: $22
	inc c                                            ; $4fa1: $0c
	jp nz, $0c22                                     ; $4fa2: $c2 $22 $0c

	rst JumpTable                                          ; $4fa5: $c7
	ld a, [hl]                                       ; $4fa6: $7e
	dec e                                            ; $4fa7: $1d
	jr jr_02f_4f4a                                   ; $4fa8: $18 $a0

	dec h                                            ; $4faa: $25
	jr nc, @-$36                                     ; $4fab: $30 $c8

	inc h                                            ; $4fad: $24
	inc a                                            ; $4fae: $3c
	db $fd                                           ; $4faf: $fd
	inc a                                            ; $4fb0: $3c
	ld d, b                                          ; $4fb1: $50
	db $fd                                           ; $4fb2: $fd
	xor d                                            ; $4fb3: $aa
	ld d, b                                          ; $4fb4: $50
	ld a, [hl]                                       ; $4fb5: $7e
	nop                                              ; $4fb6: $00
	pop de                                           ; $4fb7: $d1
	sub c                                            ; $4fb8: $91
	rst JumpTable                                          ; $4fb9: $c7
	ld [hl+], a                                      ; $4fba: $22
	ld b, $c3                                        ; $4fbb: $06 $c3
	ld [hl+], a                                      ; $4fbd: $22
	ld b, $c7                                        ; $4fbe: $06 $c7
	ld e, $06                                        ; $4fc0: $1e $06
	jp $061e                                         ; $4fc2: $c3 $1e $06


	rst JumpTable                                          ; $4fc5: $c7
	ld [hl+], a                                      ; $4fc6: $22
	ld b, $c3                                        ; $4fc7: $06 $c3
	ld [hl+], a                                      ; $4fc9: $22

jr_02f_4fca:
	ld b, $c7                                        ; $4fca: $06 $c7
	dec h                                            ; $4fcc: $25
	ld b, $c3                                        ; $4fcd: $06 $c3
	dec h                                            ; $4fcf: $25
	ld b, $c7                                        ; $4fd0: $06 $c7

jr_02f_4fd2:
	ld e, $06                                        ; $4fd2: $1e $06
	jp $061e                                         ; $4fd4: $c3 $1e $06


	rst JumpTable                                          ; $4fd7: $c7
	ld [hl+], a                                      ; $4fd8: $22
	ld b, $c3                                        ; $4fd9: $06 $c3
	ld [hl+], a                                      ; $4fdb: $22
	ld b, $c7                                        ; $4fdc: $06 $c7
	dec h                                            ; $4fde: $25
	ld b, $c3                                        ; $4fdf: $06 $c3
	dec h                                            ; $4fe1: $25
	ld b, $c4                                        ; $4fe2: $06 $c4
	ld a, [hl]                                       ; $4fe4: $7e
	dec e                                            ; $4fe5: $1d
	dec bc                                           ; $4fe6: $0b
	and b                                            ; $4fe7: $a0
	inc h                                            ; $4fe8: $24
	inc a                                            ; $4fe9: $3c
	ld a, [hl]                                       ; $4fea: $7e
	nop                                              ; $4feb: $00
	ret z                                            ; $4fec: $c8

jr_02f_4fed:
	cp [hl]                                          ; $4fed: $be
	ld b, $20                                        ; $4fee: $06 $20
	ld [hl+], a                                      ; $4ff0: $22
	inc h                                            ; $4ff1: $24
	dec h                                            ; $4ff2: $25
	daa                                              ; $4ff3: $27

jr_02f_4ff4:
	add hl, hl                                       ; $4ff4: $29
	ld a, [hl+]                                      ; $4ff5: $2a
	inc l                                            ; $4ff6: $2c
	cp [hl]                                          ; $4ff7: $be
	db $fd                                           ; $4ff8: $fd
	inc a                                            ; $4ff9: $3c
	ld d, b                                          ; $4ffa: $50
	pop de                                           ; $4ffb: $d1
	rst JumpTable                                          ; $4ffc: $c7
	dec h                                            ; $4ffd: $25
	inc c                                            ; $4ffe: $0c
	jp $0c25                                         ; $4fff: $c3 $25 $0c


	rst JumpTable                                          ; $5002: $c7
	dec h                                            ; $5003: $25
	inc c                                            ; $5004: $0c
	jp $0c25                                         ; $5005: $c3 $25 $0c


	rst JumpTable                                          ; $5008: $c7
	dec h                                            ; $5009: $25
	ld b, $c3                                        ; $500a: $06 $c3
	dec h                                            ; $500c: $25
	ld b, $c7                                        ; $500d: $06 $c7
	dec h                                            ; $500f: $25
	inc c                                            ; $5010: $0c
	jp $0c25                                         ; $5011: $c3 $25 $0c


	rst JumpTable                                          ; $5014: $c7
	inc h                                            ; $5015: $24
	inc h                                            ; $5016: $24
	jp $1824                                         ; $5017: $c3 $24 $18


	rst JumpTable                                          ; $501a: $c7
	ld [hl+], a                                      ; $501b: $22
	ld b, $c3                                        ; $501c: $06 $c3
	ld [hl+], a                                      ; $501e: $22
	ld b, $c7                                        ; $501f: $06 $c7
	jr nz, jr_02f_503b                               ; $5021: $20 $18

	jp $0c20                                         ; $5023: $c3 $20 $0c


	ld a, [hl]                                       ; $5026: $7e
	dec l                                            ; $5027: $2d
	jr jr_02f_4fca                                   ; $5028: $18 $a0

	add $21                                          ; $502a: $c6 $21
	jr jr_02f_4ff4                                   ; $502c: $18 $c6

	ld hl, $b10c                                     ; $502e: $21 $0c $b1
	ld h, c                                          ; $5031: $61
	ld l, [hl]                                       ; $5032: $6e
	rlca                                             ; $5033: $07
	jr nz, jr_02f_4fd2                               ; $5034: $20 $9c

	sub [hl]                                         ; $5036: $96
	nop                                              ; $5037: $00
	nop                                              ; $5038: $00
	ld a, [hl]                                       ; $5039: $7e
	nop                                              ; $503a: $00

jr_02f_503b:
	rst $38                                          ; $503b: $ff
	sub b                                            ; $503c: $90
	pop de                                           ; $503d: $d1
	jp z, $1d7e                                      ; $503e: $ca $7e $1d

	ld a, [bc]                                       ; $5041: $0a
	and b                                            ; $5042: $a0
	dec h                                            ; $5043: $25
	ld [$0400], sp                                   ; $5044: $08 $00 $04
	rst GetHLinHL                                          ; $5047: $cf
	ld [$0002], sp                                   ; $5048: $08 $02 $00
	inc b                                            ; $504b: $04
	ld [$0002], sp                                   ; $504c: $08 $02 $00
	inc b                                            ; $504f: $04
	ret                                              ; $5050: $c9


	sub a                                            ; $5051: $97
	ld a, e                                          ; $5052: $7b
	dec h                                            ; $5053: $25
	jr jr_02f_4fed                                   ; $5054: $18 $97

	nop                                              ; $5056: $00
	call nz, $0c25                                   ; $5057: $c4 $25 $0c
	sub d                                            ; $505a: $92
	jp $387e                                         ; $505b: $c3 $7e $38


	nop                                              ; $505e: $00
	and c                                            ; $505f: $a1
	nop                                              ; $5060: $00
	inc c                                            ; $5061: $0c
	jr nz, @+$0e                                     ; $5062: $20 $0c

	dec h                                            ; $5064: $25
	inc c                                            ; $5065: $0c
	ld a, [hl+]                                      ; $5066: $2a
	jr @+$2c                                         ; $5067: $18 $2a

	inc c                                            ; $5069: $0c
	add hl, hl                                       ; $506a: $29
	jr jr_02f_5094                                   ; $506b: $18 $27

	inc c                                            ; $506d: $0c
	add hl, hl                                       ; $506e: $29
	jr @+$80                                         ; $506f: $18 $7e

	dec e                                            ; $5071: $1d
	ld a, [bc]                                       ; $5072: $0a
	and b                                            ; $5073: $a0
	pop de                                           ; $5074: $d1
	sub b                                            ; $5075: $90
	adc $ca                                          ; $5076: $ce $ca
	dec h                                            ; $5078: $25
	ld [$0400], sp                                   ; $5079: $08 $00 $04
	rst GetHLinHL                                          ; $507c: $cf
	ld b, $02                                        ; $507d: $06 $02
	nop                                              ; $507f: $00
	inc b                                            ; $5080: $04
	ld b, $02                                        ; $5081: $06 $02
	nop                                              ; $5083: $00
	inc b                                            ; $5084: $04
	ret                                              ; $5085: $c9


	sub a                                            ; $5086: $97
	ld a, e                                          ; $5087: $7b
	dec h                                            ; $5088: $25
	jr @-$67                                         ; $5089: $18 $97

	nop                                              ; $508b: $00
	call nz, $0c25                                   ; $508c: $c4 $25 $0c
	jp Jump_02f_7e92                                 ; $508f: $c3 $92 $7e


	jr c, jr_02f_5094                                ; $5092: $38 $00

jr_02f_5094:
	and c                                            ; $5094: $a1
	nop                                              ; $5095: $00
	inc c                                            ; $5096: $0c
	jr nz, jr_02f_50a5                               ; $5097: $20 $0c

	dec h                                            ; $5099: $25
	inc c                                            ; $509a: $0c
	ld a, [hl+]                                      ; $509b: $2a
	jr @+$2c                                         ; $509c: $18 $2a

	inc c                                            ; $509e: $0c
	add hl, hl                                       ; $509f: $29
	jr @+$29                                         ; $50a0: $18 $27

	inc c                                            ; $50a2: $0c
	daa                                              ; $50a3: $27
	inc c                                            ; $50a4: $0c

jr_02f_50a5:
	add hl, hl                                       ; $50a5: $29
	inc c                                            ; $50a6: $0c
	ld a, [hl]                                       ; $50a7: $7e
	nop                                              ; $50a8: $00
	db $fd                                           ; $50a9: $fd
	sub e                                            ; $50aa: $93
	rst JumpTable                                          ; $50ab: $c7
	pop de                                           ; $50ac: $d1
	ld [hl+], a                                      ; $50ad: $22
	ld b, $c3                                        ; $50ae: $06 $c3
	ld [hl+], a                                      ; $50b0: $22
	ld b, $c7                                        ; $50b1: $06 $c7
	ld e, $06                                        ; $50b3: $1e $06
	jp $061e                                         ; $50b5: $c3 $1e $06


	rst JumpTable                                          ; $50b8: $c7
	ld [hl+], a                                      ; $50b9: $22
	ld b, $c3                                        ; $50ba: $06 $c3
	ld [hl+], a                                      ; $50bc: $22
	ld b, $c7                                        ; $50bd: $06 $c7
	dec h                                            ; $50bf: $25
	ld b, $c3                                        ; $50c0: $06 $c3
	dec h                                            ; $50c2: $25
	ld b, $c7                                        ; $50c3: $06 $c7
	ld e, $06                                        ; $50c5: $1e $06
	jp $061e                                         ; $50c7: $c3 $1e $06


	rst JumpTable                                          ; $50ca: $c7
	ld [hl+], a                                      ; $50cb: $22
	ld b, $c3                                        ; $50cc: $06 $c3
	ld [hl+], a                                      ; $50ce: $22
	ld b, $c7                                        ; $50cf: $06 $c7
	dec h                                            ; $50d1: $25
	ld b, $c3                                        ; $50d2: $06 $c3

jr_02f_50d4:
	dec h                                            ; $50d4: $25
	ld b, $c6                                        ; $50d5: $06 $c6
	ld a, [hl]                                       ; $50d7: $7e
	dec e                                            ; $50d8: $1d
	dec bc                                           ; $50d9: $0b
	and b                                            ; $50da: $a0
	inc h                                            ; $50db: $24
	inc c                                            ; $50dc: $0c
	call nz, $1827                                   ; $50dd: $c4 $27 $18
	push bc                                          ; $50e0: $c5
	inc h                                            ; $50e1: $24
	jr @+$22                                         ; $50e2: $18 $20

	jr @+$20                                         ; $50e4: $18 $1e

	jr jr_02f_5166                                   ; $50e6: $18 $7e

	nop                                              ; $50e8: $00
	db $fd                                           ; $50e9: $fd
	or h                                             ; $50ea: $b4
	adc h                                            ; $50eb: $8c
	pop de                                           ; $50ec: $d1
	ld [bc], a                                       ; $50ed: $02
	jr nz, jr_02f_50fa                               ; $50ee: $20 $0a

	call nz, $0e20                                   ; $50f0: $c4 $20 $0e
	rst GetHLinHL                                          ; $50f3: $cf
	dec h                                            ; $50f4: $25
	ld a, [bc]                                       ; $50f5: $0a
	call nz, $0e25                                   ; $50f6: $c4 $25 $0e
	ret z                                            ; $50f9: $c8

jr_02f_50fa:
	ld a, [hl+]                                      ; $50fa: $2a
	ld a, [bc]                                       ; $50fb: $0a
	jp nz, $0e2a                                     ; $50fc: $c2 $2a $0e

	jp z, $0c29                                      ; $50ff: $ca $29 $0c

	jp $0c29                                         ; $5102: $c3 $29 $0c


	sla b                                            ; $5105: $cb $20
	jr jr_02f_50d4                                   ; $5107: $18 $cb

	ld a, [hl+]                                      ; $5109: $2a
	ld b, $c4                                        ; $510a: $06 $c4
	ld a, [hl+]                                      ; $510c: $2a
	ld b, $cb                                        ; $510d: $06 $cb
	add hl, hl                                       ; $510f: $29
	rlca                                             ; $5110: $07
	jp $052a                                         ; $5111: $c3 $2a $05


	sla a                                            ; $5114: $cb $27
	rlca                                             ; $5116: $07
	jp $0529                                         ; $5117: $c3 $29 $05


	call z, $0c29                                    ; $511a: $cc $29 $0c
	call nz, $0e29                                   ; $511d: $c4 $29 $0e
	adc $25                                          ; $5120: $ce $25
	ld [hl+], a                                      ; $5122: $22
	rst JumpTable                                          ; $5123: $c7
	ld a, [hl]                                       ; $5124: $7e
	dec l                                            ; $5125: $2d
	nop                                              ; $5126: $00
	and b                                            ; $5127: $a0
	dec h                                            ; $5128: $25
	jr jr_02f_51a9                                   ; $5129: $18 $7e

	nop                                              ; $512b: $00
	jp z, $0629                                      ; $512c: $ca $29 $06

	jp $0629                                         ; $512f: $c3 $29 $06


	ret                                              ; $5132: $c9


	ld a, [hl+]                                      ; $5133: $2a
	ld b, $c2                                        ; $5134: $06 $c2
	add hl, hl                                       ; $5136: $29
	ld b, $c9                                        ; $5137: $06 $c9
	inc l                                            ; $5139: $2c
	rlca                                             ; $513a: $07
	call nz, $052c                                   ; $513b: $c4 $2c $05
	ret                                              ; $513e: $c9


	inc l                                            ; $513f: $2c
	inc c                                            ; $5140: $0c
	call nz, $0c2c                                   ; $5141: $c4 $2c $0c
	ret                                              ; $5144: $c9


	inc l                                            ; $5145: $2c
	inc c                                            ; $5146: $0c
	call nz, $0c2c                                   ; $5147: $c4 $2c $0c
	ret                                              ; $514a: $c9


	inc l                                            ; $514b: $2c
	ld [$2cc4], sp                                   ; $514c: $08 $c4 $2c
	inc b                                            ; $514f: $04
	ret                                              ; $5150: $c9


	ld a, [hl+]                                      ; $5151: $2a
	ld b, $c3                                        ; $5152: $06 $c3
	ld a, [hl+]                                      ; $5154: $2a
	ld b, $cb                                        ; $5155: $06 $cb
	add hl, hl                                       ; $5157: $29

jr_02f_5158:
	rlca                                             ; $5158: $07
	jp $0529                                         ; $5159: $c3 $29 $05


	ret                                              ; $515c: $c9


	ld a, [hl+]                                      ; $515d: $2a
	ld [$2ac4], sp                                   ; $515e: $08 $c4 $2a
	inc b                                            ; $5161: $04
	ret                                              ; $5162: $c9


	ld a, [hl]                                       ; $5163: $7e
	dec l                                            ; $5164: $2d
	inc a                                            ; $5165: $3c

jr_02f_5166:
	and b                                            ; $5166: $a0
	add hl, hl                                       ; $5167: $29
	ld d, h                                          ; $5168: $54
	call nz, $1829                                   ; $5169: $c4 $29 $18
	ret                                              ; $516c: $c9


	ld a, [hl+]                                      ; $516d: $2a
	dec bc                                           ; $516e: $0b
	jp nz, $0d2a                                     ; $516f: $c2 $2a $0d

	ret                                              ; $5172: $c9


	ld a, [hl+]                                      ; $5173: $2a
	dec bc                                           ; $5174: $0b
	jp nz, $0d2a                                     ; $5175: $c2 $2a $0d

	jp z, $0b29                                      ; $5178: $ca $29 $0b

	jp $0d29                                         ; $517b: $c3 $29 $0d


	sla a                                            ; $517e: $cb $27
	dec bc                                           ; $5180: $0b
	jp nz, $0d27                                     ; $5181: $c2 $27 $0d

	sla h                                            ; $5184: $cb $24
	dec bc                                           ; $5186: $0b
	jp nz, $0d24                                     ; $5187: $c2 $24 $0d

	adc $25                                          ; $518a: $ce $25
	ld [$25c3], sp                                   ; $518c: $08 $c3 $25
	inc b                                            ; $518f: $04
	sla a                                            ; $5190: $cb $27
	jr jr_02f_5158                                   ; $5192: $18 $c4

	daa                                              ; $5194: $27
	inc c                                            ; $5195: $0c
	pop de                                           ; $5196: $d1
	sub d                                            ; $5197: $92
	jp nz, $007e                                     ; $5198: $c2 $7e $00

	daa                                              ; $519b: $27
	jr jr_02f_5166                                   ; $519c: $18 $c8

	inc l                                            ; $519e: $2c
	ld [$2cc2], sp                                   ; $519f: $08 $c2 $2c
	inc b                                            ; $51a2: $04
	ret z                                            ; $51a3: $c8

	inc l                                            ; $51a4: $2c
	ld [$2cc2], sp                                   ; $51a5: $08 $c2 $2c
	inc b                                            ; $51a8: $04

jr_02f_51a9:
	rst JumpTable                                          ; $51a9: $c7
	inc l                                            ; $51aa: $2c
	ld [$2cc3], sp                                   ; $51ab: $08 $c3 $2c
	inc b                                            ; $51ae: $04
	rst JumpTable                                          ; $51af: $c7
	ld a, [hl+]                                      ; $51b0: $2a
	ld [$2ac3], sp                                   ; $51b1: $08 $c3 $2a
	inc b                                            ; $51b4: $04
	ret z                                            ; $51b5: $c8

	add hl, hl                                       ; $51b6: $29
	ld [$29c3], sp                                   ; $51b7: $08 $c3 $29
	inc b                                            ; $51ba: $04
	ret                                              ; $51bb: $c9


	ld a, [hl+]                                      ; $51bc: $2a
	inc c                                            ; $51bd: $0c
	call nz, $0c2a                                   ; $51be: $c4 $2a $0c
	jp z, $2d7e                                      ; $51c1: $ca $7e $2d

	inc l                                            ; $51c4: $2c
	and b                                            ; $51c5: $a0
	add hl, hl                                       ; $51c6: $29
	ld d, h                                          ; $51c7: $54
	ld a, [hl]                                       ; $51c8: $7e
	nop                                              ; $51c9: $00
	pop bc                                           ; $51ca: $c1
	ld a, [hl]                                       ; $51cb: $7e
	dec l                                            ; $51cc: $2d
	nop                                              ; $51cd: $00
	and b                                            ; $51ce: $a0
	add hl, hl                                       ; $51cf: $29
	jr @+$80                                         ; $51d0: $18 $7e

	nop                                              ; $51d2: $00
	ret                                              ; $51d3: $c9


	ld a, [hl+]                                      ; $51d4: $2a
	ld a, [bc]                                       ; $51d5: $0a
	jp $0e2a                                         ; $51d6: $c3 $2a $0e


	ret                                              ; $51d9: $c9


	ld a, [hl+]                                      ; $51da: $2a
	ld a, [bc]                                       ; $51db: $0a
	jp $0e2a                                         ; $51dc: $c3 $2a $0e


	ret                                              ; $51df: $c9


	add hl, hl                                       ; $51e0: $29
	ld a, [bc]                                       ; $51e1: $0a
	jp $0e29                                         ; $51e2: $c3 $29 $0e


	jp z, $0c27                                      ; $51e5: $ca $27 $0c

	call nz, $0c27                                   ; $51e8: $c4 $27 $0c
	pop bc                                           ; $51eb: $c1
	daa                                              ; $51ec: $27
	jr @-$35                                         ; $51ed: $18 $c9

	daa                                              ; $51ef: $27
	ld [$27c4], sp                                   ; $51f0: $08 $c4 $27
	inc b                                            ; $51f3: $04
	sla l                                            ; $51f4: $cb $25
	ld [$25c4], sp                                   ; $51f6: $08 $c4 $25
	inc b                                            ; $51f9: $04
	call z, $0824                                    ; $51fa: $cc $24 $08
	call nz, $0424                                   ; $51fd: $c4 $24 $04
	adc $25                                          ; $5200: $ce $25
	inc c                                            ; $5202: $0c
	pop de                                           ; $5203: $d1
	sub d                                            ; $5204: $92
	adc $7e                                          ; $5205: $ce $7e
	dec l                                            ; $5207: $2d
	inc h                                            ; $5208: $24
	and b                                            ; $5209: $a0
	dec h                                            ; $520a: $25
	inc h                                            ; $520b: $24
	push bc                                          ; $520c: $c5
	ld a, [hl]                                       ; $520d: $7e
	dec l                                            ; $520e: $2d
	nop                                              ; $520f: $00
	and b                                            ; $5210: $a0
	dec h                                            ; $5211: $25
	jr jr_02f_5292                                   ; $5212: $18 $7e

	nop                                              ; $5214: $00
	sub b                                            ; $5215: $90
	jp z, $1820                                      ; $5216: $ca $20 $18

	call nz, $0c20                                   ; $5219: $c4 $20 $0c
	jp z, $0c20                                      ; $521c: $ca $20 $0c

	call nz, $0c20                                   ; $521f: $c4 $20 $0c
	jp z, $0620                                      ; $5222: $ca $20 $06

	call nz, $0620                                   ; $5225: $c4 $20 $06
	jp z, $2420                                      ; $5228: $ca $20 $24

	call nz, $1820                                   ; $522b: $c4 $20 $18
	rr l                                             ; $522e: $cb $1d
	inc bc                                           ; $5230: $03
	nop                                              ; $5231: $00
	add hl, bc                                       ; $5232: $09
	cp [hl]                                          ; $5233: $be
	inc bc                                           ; $5234: $03
	dec e                                            ; $5235: $1d
	nop                                              ; $5236: $00
	dec e                                            ; $5237: $1d
	nop                                              ; $5238: $00
	cp [hl]                                          ; $5239: $be
	jp z, $0c20                                      ; $523a: $ca $20 $0c

	jp nz, $0c20                                     ; $523d: $c2 $20 $0c

	jp z, $0620                                      ; $5240: $ca $20 $06

	jp nz, $0620                                     ; $5243: $c2 $20 $06

	jp z, $1820                                      ; $5246: $ca $20 $18

	jp nz, $0c20                                     ; $5249: $c2 $20 $0c

	sla b                                            ; $524c: $cb $20
	inc c                                            ; $524e: $0c
	jp nz, $0c20                                     ; $524f: $c2 $20 $0c

	sla b                                            ; $5252: $cb $20
	ld b, $c2                                        ; $5254: $06 $c2
	jr nz, jr_02f_525e                               ; $5256: $20 $06

	ret z                                            ; $5258: $c8

	jr nz, jr_02f_5273                               ; $5259: $20 $18

	or l                                             ; $525b: $b5
	pop af                                           ; $525c: $f1
	ld [bc], a                                       ; $525d: $02

jr_02f_525e:
	sub [hl]                                         ; $525e: $96
	ld bc, $0c20                                     ; $525f: $01 $20 $0c
	ld [hl+], a                                      ; $5262: $22
	inc c                                            ; $5263: $0c
	inc h                                            ; $5264: $24
	inc c                                            ; $5265: $0c
	sub [hl]                                         ; $5266: $96
	nop                                              ; $5267: $00
	nop                                              ; $5268: $00
	pop de                                           ; $5269: $d1
	sub d                                            ; $526a: $92
	ret                                              ; $526b: $c9


	add hl, hl                                       ; $526c: $29
	ld [de], a                                       ; $526d: $12
	call nz, $0629                                   ; $526e: $c4 $29 $06
	ret z                                            ; $5271: $c8

	add hl, hl                                       ; $5272: $29

jr_02f_5273:
	ld b, $c4                                        ; $5273: $06 $c4
	add hl, hl                                       ; $5275: $29
	ld b, $c8                                        ; $5276: $06 $c8
	add hl, hl                                       ; $5278: $29
	ld b, $c4                                        ; $5279: $06 $c4
	add hl, hl                                       ; $527b: $29
	ld b, $c8                                        ; $527c: $06 $c8
	inc l                                            ; $527e: $2c
	ld [de], a                                       ; $527f: $12
	call nz, $062c                                   ; $5280: $c4 $2c $06
	ret                                              ; $5283: $c9


	add hl, hl                                       ; $5284: $29
	ld b, $c4                                        ; $5285: $06 $c4
	add hl, hl                                       ; $5287: $29
	ld b, $c9                                        ; $5288: $06 $c9
	dec h                                            ; $528a: $25
	ld b, $c3                                        ; $528b: $06 $c3
	dec h                                            ; $528d: $25
	ld b, $cc                                        ; $528e: $06 $cc
	inc h                                            ; $5290: $24
	ld [de], a                                       ; $5291: $12

jr_02f_5292:
	call nz, $0624                                   ; $5292: $c4 $24 $06
	call z, $1222                                    ; $5295: $cc $22 $12
	call nz, $0622                                   ; $5298: $c4 $22 $06
	call z, $1820                                    ; $529b: $cc $20 $18
	push bc                                          ; $529e: $c5
	jr nz, jr_02f_52b9                               ; $529f: $20 $18

	call $1222                                       ; $52a1: $cd $22 $12
	call nz, $0622                                   ; $52a4: $c4 $22 $06
	call $0624                                       ; $52a7: $cd $24 $06
	call nz, $0624                                   ; $52aa: $c4 $24 $06
	call $0625                                       ; $52ad: $cd $25 $06
	jp $0625                                         ; $52b0: $c3 $25 $06


	call $1224                                       ; $52b3: $cd $24 $12
	call nz, $0624                                   ; $52b6: $c4 $24 $06

jr_02f_52b9:
	call $0625                                       ; $52b9: $cd $25 $06
	call nz, $0625                                   ; $52bc: $c4 $25 $06
	call $0627                                       ; $52bf: $cd $27 $06
	jp $0627                                         ; $52c2: $c3 $27 $06


	call $1220                                       ; $52c5: $cd $20 $12
	rst JumpTable                                          ; $52c8: $c7
	jr nz, @+$08                                     ; $52c9: $20 $06

	ret                                              ; $52cb: $c9


	sub b                                            ; $52cc: $90
	ret                                              ; $52cd: $c9


	ld a, [hl+]                                      ; $52ce: $2a
	add hl, bc                                       ; $52cf: $09
	jp nz, $0f2a                                     ; $52d0: $c2 $2a $0f

	ret                                              ; $52d3: $c9


	ld a, [hl+]                                      ; $52d4: $2a
	ld b, $c2                                        ; $52d5: $06 $c2
	ld a, [hl+]                                      ; $52d7: $2a
	ld b, $c9                                        ; $52d8: $06 $c9
	add hl, hl                                       ; $52da: $29
	inc h                                            ; $52db: $24
	sub d                                            ; $52dc: $92
	ret                                              ; $52dd: $c9


	add hl, hl                                       ; $52de: $29
	ld [de], a                                       ; $52df: $12
	call nz, $0629                                   ; $52e0: $c4 $29 $06
	ret z                                            ; $52e3: $c8

	add hl, hl                                       ; $52e4: $29
	ld b, $c4                                        ; $52e5: $06 $c4
	add hl, hl                                       ; $52e7: $29
	ld b, $c8                                        ; $52e8: $06 $c8
	add hl, hl                                       ; $52ea: $29
	ld b, $c4                                        ; $52eb: $06 $c4
	add hl, hl                                       ; $52ed: $29
	ld b, $c6                                        ; $52ee: $06 $c6
	inc l                                            ; $52f0: $2c
	ld [de], a                                       ; $52f1: $12
	jp nz, $062c                                     ; $52f2: $c2 $2c $06

	ret                                              ; $52f5: $c9


	add hl, hl                                       ; $52f6: $29
	ld b, $c4                                        ; $52f7: $06 $c4
	add hl, hl                                       ; $52f9: $29
	ld b, $c9                                        ; $52fa: $06 $c9
	dec h                                            ; $52fc: $25
	ld b, $c4                                        ; $52fd: $06 $c4
	dec h                                            ; $52ff: $25
	ld b, $c9                                        ; $5300: $06 $c9
	inc h                                            ; $5302: $24
	inc c                                            ; $5303: $0c
	call nz, $0c24                                   ; $5304: $c4 $24 $0c
	add $2e                                          ; $5307: $c6 $2e
	ld b, $c2                                        ; $5309: $06 $c2
	ld l, $06                                        ; $530b: $2e $06
	rst JumpTable                                          ; $530d: $c7
	ld a, [hl]                                       ; $530e: $7e
	dec l                                            ; $530f: $2d
	jr @-$5e                                         ; $5310: $18 $a0

	inc l                                            ; $5312: $2c
	inc h                                            ; $5313: $24
	ld a, [hl]                                       ; $5314: $7e
	dec l                                            ; $5315: $2d
	nop                                              ; $5316: $00
	and b                                            ; $5317: $a0
	jp nz, $182c                                     ; $5318: $c2 $2c $18

	ld a, [hl]                                       ; $531b: $7e
	nop                                              ; $531c: $00
	sla d                                            ; $531d: $cb $22
	ld b, $c6                                        ; $531f: $06 $c6
	ld [hl+], a                                      ; $5321: $22
	inc c                                            ; $5322: $0c
	jp nz, $0622                                     ; $5323: $c2 $22 $06

	ret                                              ; $5326: $c9


	ld a, [hl+]                                      ; $5327: $2a
	ld b, $c4                                        ; $5328: $06 $c4
	ld a, [hl+]                                      ; $532a: $2a
	ld b, $c9                                        ; $532b: $06 $c9
	add hl, hl                                       ; $532d: $29
	ld b, $c4                                        ; $532e: $06 $c4
	add hl, hl                                       ; $5330: $29
	ld b, $cc                                        ; $5331: $06 $cc
	daa                                              ; $5333: $27
	ld b, $c4                                        ; $5334: $06 $c4
	daa                                              ; $5336: $27
	ld b, $cc                                        ; $5337: $06 $cc
	daa                                              ; $5339: $27
	ld b, $c4                                        ; $533a: $06 $c4
	daa                                              ; $533c: $27
	ld b, $cc                                        ; $533d: $06 $cc
	dec h                                            ; $533f: $25
	ld b, $c4                                        ; $5340: $06 $c4
	dec h                                            ; $5342: $25
	ld b, $cc                                        ; $5343: $06 $cc
	inc h                                            ; $5345: $24
	ld b, $c4                                        ; $5346: $06 $c4
	inc h                                            ; $5348: $24
	ld b, $c9                                        ; $5349: $06 $c9
	dec h                                            ; $534b: $25
	ld [de], a                                       ; $534c: $12
	call nz, $0625                                   ; $534d: $c4 $25 $06
	jp z, $2a90                                      ; $5350: $ca $90 $2a

	add hl, bc                                       ; $5353: $09
	jp nz, $0f2a                                     ; $5354: $c2 $2a $0f

	ret                                              ; $5357: $c9


	ld a, [hl+]                                      ; $5358: $2a
	ld b, $c4                                        ; $5359: $06 $c4
	ld a, [hl+]                                      ; $535b: $2a
	ld b, $7e                                        ; $535c: $06 $7e
	dec l                                            ; $535e: $2d
	jr @-$5e                                         ; $535f: $18 $a0

	ret                                              ; $5361: $c9


	add hl, hl                                       ; $5362: $29
	jr jr_02f_53e3                                   ; $5363: $18 $7e

	dec l                                            ; $5365: $2d
	nop                                              ; $5366: $00
	and b                                            ; $5367: $a0
	call nz, $0c29                                   ; $5368: $c4 $29 $0c
	pop de                                           ; $536b: $d1
	sub d                                            ; $536c: $92
	call $2425                                       ; $536d: $cd $25 $24
	ret z                                            ; $5370: $c8

	ld a, [hl]                                       ; $5371: $7e
	dec l                                            ; $5372: $2d
	nop                                              ; $5373: $00
	and b                                            ; $5374: $a0
	dec h                                            ; $5375: $25
	jr @+$80                                         ; $5376: $18 $7e

	nop                                              ; $5378: $00
	adc $24                                          ; $5379: $ce $24
	ld b, $c4                                        ; $537b: $06 $c4
	inc h                                            ; $537d: $24
	ld b, $ce                                        ; $537e: $06 $ce
	inc h                                            ; $5380: $24
	ld b, $c4                                        ; $5381: $06 $c4
	inc h                                            ; $5383: $24
	ld b, $ce                                        ; $5384: $06 $ce

jr_02f_5386:
	dec h                                            ; $5386: $25
	ld b, $c4                                        ; $5387: $06 $c4
	dec h                                            ; $5389: $25
	ld b, $cd                                        ; $538a: $06 $cd
	daa                                              ; $538c: $27
	inc h                                            ; $538d: $24
	ld a, [hl]                                       ; $538e: $7e
	dec l                                            ; $538f: $2d
	nop                                              ; $5390: $00
	and b                                            ; $5391: $a0
	add $27                                          ; $5392: $c6 $27
	jr @+$80                                         ; $5394: $18 $7e

	nop                                              ; $5396: $00
	adc $25                                          ; $5397: $ce $25
	ld b, $c4                                        ; $5399: $06 $c4
	dec h                                            ; $539b: $25
	ld b, $ce                                        ; $539c: $06 $ce
	dec h                                            ; $539e: $25
	ld b, $c4                                        ; $539f: $06 $c4
	dec h                                            ; $53a1: $25
	ld b, $cd                                        ; $53a2: $06 $cd
	daa                                              ; $53a4: $27
	ld b, $c4                                        ; $53a5: $06 $c4
	daa                                              ; $53a7: $27
	ld b, $c8                                        ; $53a8: $06 $c8
	add hl, hl                                       ; $53aa: $29
	inc h                                            ; $53ab: $24
	ld a, [hl]                                       ; $53ac: $7e
	dec l                                            ; $53ad: $2d
	nop                                              ; $53ae: $00
	and b                                            ; $53af: $a0
	push bc                                          ; $53b0: $c5
	add hl, hl                                       ; $53b1: $29
	jr jr_02f_5432                                   ; $53b2: $18 $7e

	nop                                              ; $53b4: $00
	sla a                                            ; $53b5: $cb $27
	ld [de], a                                       ; $53b7: $12
	call nz, $0627                                   ; $53b8: $c4 $27 $06
	ret                                              ; $53bb: $c9


	add hl, hl                                       ; $53bc: $29
	inc c                                            ; $53bd: $0c

jr_02f_53be:
	daa                                              ; $53be: $27
	jr jr_02f_5386                                   ; $53bf: $18 $c5

	daa                                              ; $53c1: $27
	inc c                                            ; $53c2: $0c
	call z, $1826                                    ; $53c3: $cc $26 $18
	call nz, $0c26                                   ; $53c6: $c4 $26 $0c
	jp z, $1229                                      ; $53c9: $ca $29 $12

	call nz, $0629                                   ; $53cc: $c4 $29 $06
	pop de                                           ; $53cf: $d1
	sub d                                            ; $53d0: $92

jr_02f_53d1:
	ret z                                            ; $53d1: $c8

	ld a, [hl+]                                      ; $53d2: $2a
	inc c                                            ; $53d3: $0c
	jp nz, $0c2a                                     ; $53d4: $c2 $2a $0c

	ret z                                            ; $53d7: $c8

	add hl, hl                                       ; $53d8: $29
	inc c                                            ; $53d9: $0c
	jp nz, $0c29                                     ; $53da: $c2 $29 $0c

	jp z, $0627                                      ; $53dd: $ca $27 $06

	call nz, $0627                                   ; $53e0: $c4 $27 $06

jr_02f_53e3:
	jp z, $0c25                                      ; $53e3: $ca $25 $0c

	call nz, $0c25                                   ; $53e6: $c4 $25 $0c
	jp z, $3027                                      ; $53e9: $ca $27 $30

	push bc                                          ; $53ec: $c5
	ld a, [hl]                                       ; $53ed: $7e
	dec l                                            ; $53ee: $2d
	nop                                              ; $53ef: $00
	and b                                            ; $53f0: $a0
	daa                                              ; $53f1: $27
	inc h                                            ; $53f2: $24
	ld a, [hl]                                       ; $53f3: $7e
	nop                                              ; $53f4: $00
	jp z, $0629                                      ; $53f5: $ca $29 $06

	call nz, $0629                                   ; $53f8: $c4 $29 $06
	jp z, $0629                                      ; $53fb: $ca $29 $06

	call nz, $0629                                   ; $53fe: $c4 $29 $06
	ret z                                            ; $5401: $c8

	ld a, [hl+]                                      ; $5402: $2a
	inc c                                            ; $5403: $0c
	jp nz, $0c2a                                     ; $5404: $c2 $2a $0c

	ret z                                            ; $5407: $c8

	add hl, hl                                       ; $5408: $29
	inc c                                            ; $5409: $0c
	jp nz, $0c29                                     ; $540a: $c2 $29 $0c

	jp z, $0627                                      ; $540d: $ca $27 $06

jr_02f_5410:
	call nz, $0627                                   ; $5410: $c4 $27 $06
	jp z, $0c25                                      ; $5413: $ca $25 $0c

	call nz, $0c25                                   ; $5416: $c4 $25 $0c
	ret z                                            ; $5419: $c8

	ld a, [hl]                                       ; $541a: $7e

jr_02f_541b:
	dec l                                            ; $541b: $2d
	jr jr_02f_53be                                   ; $541c: $18 $a0

	inc l                                            ; $541e: $2c
	ld c, b                                          ; $541f: $48
	ld a, [hl]                                       ; $5420: $7e
	dec l                                            ; $5421: $2d
	nop                                              ; $5422: $00
	and b                                            ; $5423: $a0
	call nz, $122c                                   ; $5424: $c4 $2c $12
	jp $122c                                         ; $5427: $c3 $2c $12


	db $fd                                           ; $542a: $fd
	cp [hl]                                          ; $542b: $be
	ld d, h                                          ; $542c: $54
	ld a, [hl]                                       ; $542d: $7e
	dec l                                            ; $542e: $2d
	jr jr_02f_53d1                                   ; $542f: $18 $a0

	ret                                              ; $5431: $c9


jr_02f_5432:
	inc l                                            ; $5432: $2c
	jr @-$3a                                         ; $5433: $18 $c4

	inc l                                            ; $5435: $2c
	inc c                                            ; $5436: $0c
	ret                                              ; $5437: $c9


	inc l                                            ; $5438: $2c
	ld b, $c4                                        ; $5439: $06 $c4
	inc l                                            ; $543b: $2c
	ld b, $c8                                        ; $543c: $06 $c8
	ld a, [hl+]                                      ; $543e: $2a
	ld b, $c2                                        ; $543f: $06 $c2
	ld a, [hl+]                                      ; $5441: $2a
	ld b, $c9                                        ; $5442: $06 $c9
	add hl, hl                                       ; $5444: $29
	inc c                                            ; $5445: $0c
	call nz, $0c29                                   ; $5446: $c4 $29 $0c
	sla a                                            ; $5449: $cb $27
	inc a                                            ; $544b: $3c

jr_02f_544c:
	call nz, $2427                                   ; $544c: $c4 $27 $24
	ret z                                            ; $544f: $c8

	add hl, hl                                       ; $5450: $29
	ld b, $2a                                        ; $5451: $06 $2a
	ld b, $2c                                        ; $5453: $06 $2c
	jr jr_02f_541b                                   ; $5455: $18 $c4

	inc l                                            ; $5457: $2c
	inc c                                            ; $5458: $0c
	ret                                              ; $5459: $c9


	inc l                                            ; $545a: $2c
	ld b, $c4                                        ; $545b: $06 $c4
	inc l                                            ; $545d: $2c
	ld b, $c8                                        ; $545e: $06 $c8
	ld a, [hl+]                                      ; $5460: $2a
	ld b, $c2                                        ; $5461: $06 $c2
	ld a, [hl+]                                      ; $5463: $2a
	ld b, $c9                                        ; $5464: $06 $c9
	add hl, hl                                       ; $5466: $29
	inc c                                            ; $5467: $0c
	call nz, $0c29                                   ; $5468: $c4 $29 $0c
	bit 7, [hl]                                      ; $546b: $cb $7e
	dec l                                            ; $546d: $2d
	jr z, jr_02f_5410                                ; $546e: $28 $a0

	daa                                              ; $5470: $27
	ld c, b                                          ; $5471: $48
	call nz, $2d7e                                   ; $5472: $c4 $7e $2d
	nop                                              ; $5475: $00
	and b                                            ; $5476: $a0
	daa                                              ; $5477: $27
	inc h                                            ; $5478: $24
	ld a, [hl]                                       ; $5479: $7e
	nop                                              ; $547a: $00
	db $fd                                           ; $547b: $fd
	cp [hl]                                          ; $547c: $be
	ld d, h                                          ; $547d: $54
	ret                                              ; $547e: $c9


	inc l                                            ; $547f: $2c
	inc c                                            ; $5480: $0c
	call nz, $0c2c                                   ; $5481: $c4 $2c $0c
	ret                                              ; $5484: $c9


	inc l                                            ; $5485: $2c
	inc c                                            ; $5486: $0c
	call nz, $0c2c                                   ; $5487: $c4 $2c $0c
	ret z                                            ; $548a: $c8

	ld a, [hl+]                                      ; $548b: $2a
	ld b, $c2                                        ; $548c: $06 $c2
	ld a, [hl+]                                      ; $548e: $2a
	ld b, $c9                                        ; $548f: $06 $c9
	add hl, hl                                       ; $5491: $29
	inc c                                            ; $5492: $0c
	call nz, $0c29                                   ; $5493: $c4 $29 $0c
	jp z, $2427                                      ; $5496: $ca $27 $24

	call nz, $1827                                   ; $5499: $c4 $27 $18
	jp z, $0625                                      ; $549c: $ca $25 $06

	call nz, $0625                                   ; $549f: $c4 $25 $06
	jp z, $1824                                      ; $54a2: $ca $24 $18

	call nz, $0c24                                   ; $54a5: $c4 $24 $0c
	ld a, [hl]                                       ; $54a8: $7e
	dec l                                            ; $54a9: $2d
	jr jr_02f_544c                                   ; $54aa: $18 $a0

	call z, $1827                                    ; $54ac: $cc $27 $18
	add $27                                          ; $54af: $c6 $27
	inc c                                            ; $54b1: $0c
	or c                                             ; $54b2: $b1
	pop de                                           ; $54b3: $d1
	ld l, [hl]                                       ; $54b4: $6e
	rlca                                             ; $54b5: $07
	dec h                                            ; $54b6: $25
	sbc h                                            ; $54b7: $9c
	sub [hl]                                         ; $54b8: $96
	nop                                              ; $54b9: $00
	nop                                              ; $54ba: $00

jr_02f_54bb:
	ld a, [hl]                                       ; $54bb: $7e
	nop                                              ; $54bc: $00
	rst $38                                          ; $54bd: $ff
	pop de                                           ; $54be: $d1
	sub b                                            ; $54bf: $90
	ld a, [hl]                                       ; $54c0: $7e
	dec l                                            ; $54c1: $2d
	ld [de], a                                       ; $54c2: $12
	and b                                            ; $54c3: $a0
	ret                                              ; $54c4: $c9


	add hl, hl                                       ; $54c5: $29
	ld [$0400], sp                                   ; $54c6: $08 $00 $04
	rst GetHLinHL                                          ; $54c9: $cf
	dec c                                            ; $54ca: $0d
	ld [bc], a                                       ; $54cb: $02

jr_02f_54cc:
	nop                                              ; $54cc: $00
	inc b                                            ; $54cd: $04
	dec c                                            ; $54ce: $0d
	ld [bc], a                                       ; $54cf: $02
	nop                                              ; $54d0: $00
	inc b                                            ; $54d1: $04
	call z, Call_02f_7b97                            ; $54d2: $cc $97 $7b
	add hl, hl                                       ; $54d5: $29
	jr @-$67                                         ; $54d6: $18 $97

	nop                                              ; $54d8: $00
	call nz, $0c29                                   ; $54d9: $c4 $29 $0c
	ld a, [hl]                                       ; $54dc: $7e
	dec l                                            ; $54dd: $2d
	ld a, [bc]                                       ; $54de: $0a
	and b                                            ; $54df: $a0
	sub d                                            ; $54e0: $92
	call z, $0620                                    ; $54e1: $cc $20 $06
	call nz, $0620                                   ; $54e4: $c4 $20 $06
	call z, $0625                                    ; $54e7: $cc $25 $06
	call nz, $0625                                   ; $54ea: $c4 $25 $06
	ret z                                            ; $54ed: $c8

	ld a, [hl+]                                      ; $54ee: $2a
	inc c                                            ; $54ef: $0c
	jp nz, $0c2a                                     ; $54f0: $c2 $2a $0c

	ret z                                            ; $54f3: $c8

	ld a, [hl+]                                      ; $54f4: $2a
	ld b, $c2                                        ; $54f5: $06 $c2
	ld a, [hl+]                                      ; $54f7: $2a
	ld b, $c9                                        ; $54f8: $06 $c9
	add hl, hl                                       ; $54fa: $29
	inc c                                            ; $54fb: $0c
	jp $0c29                                         ; $54fc: $c3 $29 $0c


	ret                                              ; $54ff: $c9


	daa                                              ; $5500: $27
	ld b, $c3                                        ; $5501: $06 $c3
	daa                                              ; $5503: $27
	ld b, $c9                                        ; $5504: $06 $c9
	add hl, hl                                       ; $5506: $29
	jr jr_02f_54cc                                   ; $5507: $18 $c3

	add hl, hl                                       ; $5509: $29
	inc c                                            ; $550a: $0c
	sub b                                            ; $550b: $90
	ld a, [hl]                                       ; $550c: $7e
	dec l                                            ; $550d: $2d
	ld [de], a                                       ; $550e: $12
	and b                                            ; $550f: $a0
	jp z, $082c                                      ; $5510: $ca $2c $08

	nop                                              ; $5513: $00
	inc b                                            ; $5514: $04
	rst GetHLinHL                                          ; $5515: $cf
	dec bc                                           ; $5516: $0b
	ld [bc], a                                       ; $5517: $02
	nop                                              ; $5518: $00
	inc b                                            ; $5519: $04
	dec bc                                           ; $551a: $0b
	ld [bc], a                                       ; $551b: $02
	nop                                              ; $551c: $00
	inc b                                            ; $551d: $04
	ret                                              ; $551e: $c9


	sub a                                            ; $551f: $97
	ld a, e                                          ; $5520: $7b
	inc l                                            ; $5521: $2c
	jr jr_02f_54bb                                   ; $5522: $18 $97

	nop                                              ; $5524: $00
	call nz, $0c2c                                   ; $5525: $c4 $2c $0c
	ld a, [hl]                                       ; $5528: $7e
	nop                                              ; $5529: $00
	sub d                                            ; $552a: $92
	sla b                                            ; $552b: $cb $20
	ld b, $c3                                        ; $552d: $06 $c3
	jr nz, @+$08                                     ; $552f: $20 $06

	sla l                                            ; $5531: $cb $25
	ld b, $c3                                        ; $5533: $06 $c3
	dec h                                            ; $5535: $25
	ld b, $c8                                        ; $5536: $06 $c8
	ld a, [hl+]                                      ; $5538: $2a
	inc c                                            ; $5539: $0c
	jp $0c2a                                         ; $553a: $c3 $2a $0c


	ret z                                            ; $553d: $c8

	ld a, [hl+]                                      ; $553e: $2a
	ld b, $c3                                        ; $553f: $06 $c3
	ld a, [hl+]                                      ; $5541: $2a
	ld b, $c9                                        ; $5542: $06 $c9
	add hl, hl                                       ; $5544: $29
	inc c                                            ; $5545: $0c
	jp $0c29                                         ; $5546: $c3 $29 $0c


	ret                                              ; $5549: $c9


	daa                                              ; $554a: $27
	ld b, $c3                                        ; $554b: $06 $c3
	daa                                              ; $554d: $27
	ld b, $c9                                        ; $554e: $06 $c9
	daa                                              ; $5550: $27
	ld b, $c3                                        ; $5551: $06 $c3
	daa                                              ; $5553: $27
	ld b, $c9                                        ; $5554: $06 $c9
	add hl, hl                                       ; $5556: $29
	ld b, $c3                                        ; $5557: $06 $c3
	add hl, hl                                       ; $5559: $29
	ld b, $c9                                        ; $555a: $06 $c9
	ld a, [hl+]                                      ; $555c: $2a
	ld b, $c3                                        ; $555d: $06 $c3
	ld a, [hl+]                                      ; $555f: $2a
	ld b, $fd                                        ; $5560: $06 $fd
	or h                                             ; $5562: $b4
	adc h                                            ; $5563: $8c
	ld hl, $0018                                     ; $5564: $21 $18 $00
	ld c, b                                          ; $5567: $48
	nop                                              ; $5568: $00
	jr jr_02f_5578                                   ; $5569: $18 $0d

	inc hl                                           ; $556b: $23
	call nz, $190d                                   ; $556c: $c4 $0d $19
	jp nz, $0a0b                                     ; $556f: $c2 $0b $0a

	nop                                              ; $5572: $00
	ld [$0bc6], sp                                   ; $5573: $08 $c6 $0b
	ld b, $fb                                        ; $5576: $06 $fb

jr_02f_5578:
	jp nz, $060b                                     ; $5578: $c2 $0b $06

	add $0b                                          ; $557b: $c6 $0b
	ld b, $fb                                        ; $557d: $06 $fb
	inc b                                            ; $557f: $04
	jp nz, $060a                                     ; $5580: $c2 $0a $06

	add $0a                                          ; $5583: $c6 $0a
	ld b, $fb                                        ; $5585: $06 $fb
	jp nz, $060b                                     ; $5587: $c2 $0b $06

	call nz, $060b                                   ; $558a: $c4 $0b $06
	ei                                               ; $558d: $fb
	ld [bc], a                                       ; $558e: $02
	ei                                               ; $558f: $fb
	jp nz, $0606                                     ; $5590: $c2 $06 $06

	add $06                                          ; $5593: $c6 $06
	ld b, $fb                                        ; $5595: $06 $fb
	ld [bc], a                                       ; $5597: $02
	jp nz, $0612                                     ; $5598: $c2 $12 $06

	add $12                                          ; $559b: $c6 $12
	ld b, $c2                                        ; $559d: $06 $c2
	ld b, $06                                        ; $559f: $06 $06
	add $06                                          ; $55a1: $c6 $06
	ld b, $c2                                        ; $55a3: $06 $c2
	ld de, $c606                                     ; $55a5: $11 $06 $c6
	ld de, $c206                                     ; $55a8: $11 $06 $c2
	ld [de], a                                       ; $55ab: $12
	ld b, $c6                                        ; $55ac: $06 $c6
	ld [de], a                                       ; $55ae: $12
	ld b, $c2                                        ; $55af: $06 $c2
	ld b, $06                                        ; $55b1: $06 $06
	add $06                                          ; $55b3: $c6 $06
	ld b, $c2                                        ; $55b5: $06 $c2
	ld a, [bc]                                       ; $55b7: $0a
	ld b, $c6                                        ; $55b8: $06 $c6
	ld a, [bc]                                       ; $55ba: $0a
	ld b, $fb                                        ; $55bb: $06 $fb
	jp nz, $060d                                     ; $55bd: $c2 $0d $06

	add $0d                                          ; $55c0: $c6 $0d
	ld b, $fb                                        ; $55c2: $06 $fb
	ld [bc], a                                       ; $55c4: $02
	jp nz, $0619                                     ; $55c5: $c2 $19 $06

	add $19                                          ; $55c8: $c6 $19
	ld b, $c2                                        ; $55ca: $06 $c2
	dec c                                            ; $55cc: $0d
	ld b, $c6                                        ; $55cd: $06 $c6
	dec c                                            ; $55cf: $0d
	ld b, $c2                                        ; $55d0: $06 $c2
	jr @+$08                                         ; $55d2: $18 $06

	add $18                                          ; $55d4: $c6 $18
	ld b, $c2                                        ; $55d6: $06 $c2
	add hl, de                                       ; $55d8: $19
	ld b, $c6                                        ; $55d9: $06 $c6
	add hl, de                                       ; $55db: $19
	ld b, $c2                                        ; $55dc: $06 $c2
	dec c                                            ; $55de: $0d
	ld b, $c6                                        ; $55df: $06 $c6
	dec c                                            ; $55e1: $0d
	ld b, $c2                                        ; $55e2: $06 $c2
	inc d                                            ; $55e4: $14
	ld b, $c6                                        ; $55e5: $06 $c6
	inc d                                            ; $55e7: $14
	ld b, $c2                                        ; $55e8: $06 $c2
	cp [hl]                                          ; $55ea: $be
	ld b, $06                                        ; $55eb: $06 $06
	nop                                              ; $55ed: $00
	ld b, $00                                        ; $55ee: $06 $00
	cp [hl]                                          ; $55f0: $be
	ld [de], a                                       ; $55f1: $12
	inc c                                            ; $55f2: $0c
	add $12                                          ; $55f3: $c6 $12
	inc c                                            ; $55f5: $0c
	jp nz, $0611                                     ; $55f6: $c2 $11 $06

	add $11                                          ; $55f9: $c6 $11
	ld b, $c2                                        ; $55fb: $06 $c2
	ld [de], a                                       ; $55fd: $12
	ld b, $c6                                        ; $55fe: $06 $c6
	ld [de], a                                       ; $5600: $12

jr_02f_5601:
	ld b, $c2                                        ; $5601: $06 $c2
	ld b, $06                                        ; $5603: $06 $06
	add $06                                          ; $5605: $c6 $06
	ld b, $c2                                        ; $5607: $06 $c2
	ld a, [bc]                                       ; $5609: $0a
	ld b, $c6                                        ; $560a: $06 $c6
	ld a, [bc]                                       ; $560c: $0a
	ld b, $fb                                        ; $560d: $06 $fb
	jp nz, $0608                                     ; $560f: $c2 $08 $06

	add $08                                          ; $5612: $c6 $08
	ld b, $fb                                        ; $5614: $06 $fb
	ld [bc], a                                       ; $5616: $02
	jp nz, $0614                                     ; $5617: $c2 $14 $06

	add $14                                          ; $561a: $c6 $14
	ld b, $c2                                        ; $561c: $06 $c2
	ld [$c606], sp                                   ; $561e: $08 $06 $c6
	ld [$c206], sp                                   ; $5621: $08 $06 $c2
	inc de                                           ; $5624: $13
	ld b, $c6                                        ; $5625: $06 $c6
	inc de                                           ; $5627: $13
	ld b, $c2                                        ; $5628: $06 $c2
	inc d                                            ; $562a: $14
	ld b, $c6                                        ; $562b: $06 $c6
	inc d                                            ; $562d: $14
	ld b, $c2                                        ; $562e: $06 $c2
	ld [$c606], sp                                   ; $5630: $08 $06 $c6
	ld [$c206], sp                                   ; $5633: $08 $06 $c2
	rrca                                             ; $5636: $0f
	ld b, $c6                                        ; $5637: $06 $c6
	rrca                                             ; $5639: $0f
	ld b, $d1                                        ; $563a: $06 $d1
	ld a, a                                          ; $563c: $7f
	jr jr_02f_5601                                   ; $563d: $18 $c2

	dec c                                            ; $563f: $0d
	ld b, $c6                                        ; $5640: $06 $c6
	dec c                                            ; $5642: $0d
	ld b, $c4                                        ; $5643: $06 $c4
	add hl, de                                       ; $5645: $19
	ld b, $c6                                        ; $5646: $06 $c6
	add hl, de                                       ; $5648: $19
	ld b, $c2                                        ; $5649: $06 $c2
	dec c                                            ; $564b: $0d
	ld b, $c6                                        ; $564c: $06 $c6
	dec c                                            ; $564e: $0d
	ld b, $c2                                        ; $564f: $06 $c2
	inc c                                            ; $5651: $0c
	inc c                                            ; $5652: $0c
	add $0c                                          ; $5653: $c6 $0c
	inc c                                            ; $5655: $0c
	call nz, $0618                                   ; $5656: $c4 $18 $06
	add $18                                          ; $5659: $c6 $18
	ld b, $c2                                        ; $565b: $06 $c2
	inc c                                            ; $565d: $0c
	ld b, $c6                                        ; $565e: $06 $c6
	inc c                                            ; $5660: $0c
	ld b, $c2                                        ; $5661: $06 $c2
	ld a, [bc]                                       ; $5663: $0a
	inc c                                            ; $5664: $0c
	add $0a                                          ; $5665: $c6 $0a
	inc c                                            ; $5667: $0c
	call nz, $0616                                   ; $5668: $c4 $16 $06
	add $16                                          ; $566b: $c6 $16
	ld b, $c2                                        ; $566d: $06 $c2
	ld a, [bc]                                       ; $566f: $0a
	ld b, $c6                                        ; $5670: $06 $c6
	ld a, [bc]                                       ; $5672: $0a
	ld b, $c2                                        ; $5673: $06 $c2
	ld [$c60c], sp                                   ; $5675: $08 $0c $c6
	ld [$c40c], sp                                   ; $5678: $08 $0c $c4
	inc d                                            ; $567b: $14
	ld b, $c6                                        ; $567c: $06 $c6
	inc d                                            ; $567e: $14
	ld b, $c2                                        ; $567f: $06 $c2
	ld [$c606], sp                                   ; $5681: $08 $06 $c6
	ld [$c206], sp                                   ; $5684: $08 $06 $c2
	ld [$c606], sp                                   ; $5687: $08 $06 $c6
	ld [$c206], sp                                   ; $568a: $08 $06 $c2
	ei                                               ; $568d: $fb
	jp nz, $0606                                     ; $568e: $c2 $06 $06

	add $06                                          ; $5691: $c6 $06
	ld b, $fb                                        ; $5693: $06 $fb
	ld [bc], a                                       ; $5695: $02
	jp nz, $0612                                     ; $5696: $c2 $12 $06

	add $12                                          ; $5699: $c6 $12
	ld b, $c2                                        ; $569b: $06 $c2
	ld b, $06                                        ; $569d: $06 $06
	add $06                                          ; $569f: $c6 $06
	ld b, $c2                                        ; $56a1: $06 $c2
	ld de, $c606                                     ; $56a3: $11 $06 $c6
	ld de, $c206                                     ; $56a6: $11 $06 $c2
	ld [de], a                                       ; $56a9: $12
	ld b, $c6                                        ; $56aa: $06 $c6
	ld [de], a                                       ; $56ac: $12
	ld b, $c2                                        ; $56ad: $06 $c2
	ld b, $06                                        ; $56af: $06 $06
	add $06                                          ; $56b1: $c6 $06
	ld b, $c2                                        ; $56b3: $06 $c2
	ld a, [bc]                                       ; $56b5: $0a
	ld b, $c6                                        ; $56b6: $06 $c6
	ld a, [bc]                                       ; $56b8: $0a
	ld b, $c2                                        ; $56b9: $06 $c2
	ld [$0003], sp                                   ; $56bb: $08 $03 $00
	add hl, bc                                       ; $56be: $09
	ld [$0003], sp                                   ; $56bf: $08 $03 $00
	add hl, bc                                       ; $56c2: $09
	ld [$c422], sp                                   ; $56c3: $08 $22 $c4
	ld [$c61c], sp                                   ; $56c6: $08 $1c $c6
	ld [$d10a], sp                                   ; $56c9: $08 $0a $d1
	ld a, a                                          ; $56cc: $7f
	jr @-$03                                         ; $56cd: $18 $fb

	jp nz, $0c01                                     ; $56cf: $c2 $01 $0c

	cp [hl]                                          ; $56d2: $be
	inc bc                                           ; $56d3: $03
	dec c                                            ; $56d4: $0d
	nop                                              ; $56d5: $00
	dec c                                            ; $56d6: $0d
	nop                                              ; $56d7: $00
	cp [hl]                                          ; $56d8: $be
	ld bc, $be0c                                     ; $56d9: $01 $0c $be
	inc bc                                           ; $56dc: $03
	dec c                                            ; $56dd: $0d
	nop                                              ; $56de: $00
	dec c                                            ; $56df: $0d
	nop                                              ; $56e0: $00
	cp [hl]                                          ; $56e1: $be
	ld bc, $be0c                                     ; $56e2: $01 $0c $be
	inc bc                                           ; $56e5: $03
	dec c                                            ; $56e6: $0d
	nop                                              ; $56e7: $00
	dec c                                            ; $56e8: $0d
	nop                                              ; $56e9: $00
	cp [hl]                                          ; $56ea: $be
	ld bc, $be0c                                     ; $56eb: $01 $0c $be
	inc bc                                           ; $56ee: $03
	dec c                                            ; $56ef: $0d
	nop                                              ; $56f0: $00
	dec c                                            ; $56f1: $0d
	nop                                              ; $56f2: $00
	cp [hl]                                          ; $56f3: $be
	ld bc, $be0c                                     ; $56f4: $01 $0c $be
	inc bc                                           ; $56f7: $03
	dec c                                            ; $56f8: $0d
	nop                                              ; $56f9: $00
	dec c                                            ; $56fa: $0d
	nop                                              ; $56fb: $00
	cp [hl]                                          ; $56fc: $be
	ld bc, $be0c                                     ; $56fd: $01 $0c $be
	inc bc                                           ; $5700: $03
	dec c                                            ; $5701: $0d
	nop                                              ; $5702: $00
	dec c                                            ; $5703: $0d
	nop                                              ; $5704: $00
	cp [hl]                                          ; $5705: $be
	dec c                                            ; $5706: $0d
	ld b, $c4                                        ; $5707: $06 $c4
	dec c                                            ; $5709: $0d
	ld b, $c2                                        ; $570a: $06 $c2
	ld [$c406], sp                                   ; $570c: $08 $06 $c4
	ld [$c206], sp                                   ; $570f: $08 $06 $c2
	ld a, [bc]                                       ; $5712: $0a
	ld b, $c4                                        ; $5713: $06 $c4
	ld a, [bc]                                       ; $5715: $0a
	ld b, $c2                                        ; $5716: $06 $c2
	inc c                                            ; $5718: $0c
	ld b, $c4                                        ; $5719: $06 $c4
	inc c                                            ; $571b: $0c
	ld b, $fb                                        ; $571c: $06 $fb
	ld [bc], a                                       ; $571e: $02
	db $fc                                           ; $571f: $fc
	or l                                             ; $5720: $b5
	ld hl, $0618                                     ; $5721: $21 $18 $06
	ld [bc], a                                       ; $5724: $02
	db $fd                                           ; $5725: $fd
	db $f4                                           ; $5726: $f4
	ld e, b                                          ; $5727: $58
	sub [hl]                                         ; $5728: $96
	ld b, $02                                        ; $5729: $06 $02
	cp [hl]                                          ; $572b: $be
	inc c                                            ; $572c: $0c
	ld [$1408], sp                                   ; $572d: $08 $08 $14
	ld [$1408], sp                                   ; $5730: $08 $08 $14
	ld [$be14], sp                                   ; $5733: $08 $14 $be
	cp [hl]                                          ; $5736: $be
	inc c                                            ; $5737: $0c
	ld b, $06                                        ; $5738: $06 $06
	ld [de], a                                       ; $573a: $12
	rlca                                             ; $573b: $07
	ld [$0a14], sp                                   ; $573c: $08 $14 $0a
	inc c                                            ; $573f: $0c
	cp [hl]                                          ; $5740: $be
	db $fd                                           ; $5741: $fd
	db $f4                                           ; $5742: $f4
	ld e, b                                          ; $5743: $58
	sub [hl]                                         ; $5744: $96
	nop                                              ; $5745: $00
	nop                                              ; $5746: $00
	db $fc                                           ; $5747: $fc
	ld [bc], a                                       ; $5748: $02
	pop de                                           ; $5749: $d1
	jp nz, $187f                                     ; $574a: $c2 $7f $18

	ld a, [hl]                                       ; $574d: $7e
	dec e                                            ; $574e: $1d
	inc c                                            ; $574f: $0c
	and [hl]                                         ; $5750: $a6
	ld b, $18                                        ; $5751: $06 $18
	add $06                                          ; $5753: $c6 $06
	inc c                                            ; $5755: $0c
	call nz, $0606                                   ; $5756: $c4 $06 $06
	add $06                                          ; $5759: $c6 $06
	ld b, $c4                                        ; $575b: $06 $c4
	ld b, $0c                                        ; $575d: $06 $0c
	add $06                                          ; $575f: $c6 $06
	inc c                                            ; $5761: $0c
	jp nz, $1812                                     ; $5762: $c2 $12 $18

	jp nz, $1806                                     ; $5765: $c2 $06 $18

	add $06                                          ; $5768: $c6 $06
	inc c                                            ; $576a: $0c
	call nz, $0606                                   ; $576b: $c4 $06 $06
	add $06                                          ; $576e: $c6 $06
	ld b, $c4                                        ; $5770: $06 $c4
	ld b, $0c                                        ; $5772: $06 $0c
	add $06                                          ; $5774: $c6 $06
	inc c                                            ; $5776: $0c
	jp nz, $0c14                                     ; $5777: $c2 $14 $0c

	ld [de], a                                       ; $577a: $12
	inc c                                            ; $577b: $0c
	jp nz, $1805                                     ; $577c: $c2 $05 $18

	add $05                                          ; $577f: $c6 $05
	inc c                                            ; $5781: $0c
	call nz, $0605                                   ; $5782: $c4 $05 $06
	add $05                                          ; $5785: $c6 $05
	ld b, $c4                                        ; $5787: $06 $c4
	dec b                                            ; $5789: $05
	inc c                                            ; $578a: $0c
	add $05                                          ; $578b: $c6 $05
	inc c                                            ; $578d: $0c
	jp nz, $0c15                                     ; $578e: $c2 $15 $0c

	jr @+$0e                                         ; $5791: $18 $0c

	sub [hl]                                         ; $5793: $96
	ld [bc], a                                       ; $5794: $02
	ld [bc], a                                       ; $5795: $02
	ld a, [bc]                                       ; $5796: $0a
	inc c                                            ; $5797: $0c
	call nz, $0c0e                                   ; $5798: $c4 $0e $0c
	ld de, $c40c                                     ; $579b: $11 $0c $c4
	ld d, $18                                        ; $579e: $16 $18
	call nz, $1216                                   ; $57a0: $c4 $16 $12
	add $16                                          ; $57a3: $c6 $16
	ld [de], a                                       ; $57a5: $12
	or l                                             ; $57a6: $b5
	ld hl, $0618                                     ; $57a7: $21 $18 $06
	ld bc, $09fd                                     ; $57aa: $01 $fd $09
	ld e, c                                          ; $57ad: $59
	cp [hl]                                          ; $57ae: $be
	inc c                                            ; $57af: $0c
	ld [$1408], sp                                   ; $57b0: $08 $08 $14
	ld [$1408], sp                                   ; $57b3: $08 $08 $14
	ld [$be14], sp                                   ; $57b6: $08 $14 $be
	db $fd                                           ; $57b9: $fd
	add hl, bc                                       ; $57ba: $09
	ld e, c                                          ; $57bb: $59
	cp [hl]                                          ; $57bc: $be
	inc c                                            ; $57bd: $0c
	ld [$0808], sp                                   ; $57be: $08 $08 $08
	ld [$0808], sp                                   ; $57c1: $08 $08 $08
	cp [hl]                                          ; $57c4: $be
	sub [hl]                                         ; $57c5: $96
	nop                                              ; $57c6: $00
	nop                                              ; $57c7: $00
	ld [$0806], sp                                   ; $57c8: $08 $06 $08
	inc bc                                           ; $57cb: $03
	nop                                              ; $57cc: $00
	inc bc                                           ; $57cd: $03
	ld a, [bc]                                       ; $57ce: $0a
	ld b, $0c                                        ; $57cf: $06 $0c
	inc bc                                           ; $57d1: $03
	nop                                              ; $57d2: $00
	inc bc                                           ; $57d3: $03
	pop de                                           ; $57d4: $d1
	jp nz, $187f                                     ; $57d5: $c2 $7f $18

	db $fd                                           ; $57d8: $fd
	ld a, [hl+]                                      ; $57d9: $2a
	ld e, b                                          ; $57da: $58

jr_02f_57db:
	db $fd                                           ; $57db: $fd

jr_02f_57dc:
	xor h                                            ; $57dc: $ac
	ld e, b                                          ; $57dd: $58
	db $fd                                           ; $57de: $fd
	xor h                                            ; $57df: $ac
	ld e, b                                          ; $57e0: $58
	db $fd                                           ; $57e1: $fd

jr_02f_57e2:
	ld a, [hl+]                                      ; $57e2: $2a
	ld e, b                                          ; $57e3: $58
	ld b, $0c                                        ; $57e4: $06 $0c
	cp [hl]                                          ; $57e6: $be
	inc bc                                           ; $57e7: $03
	ld [de], a                                       ; $57e8: $12
	nop                                              ; $57e9: $00
	ld [de], a                                       ; $57ea: $12
	nop                                              ; $57eb: $00
	cp [hl]                                          ; $57ec: $be
	ld b, $0c                                        ; $57ed: $06 $0c
	cp [hl]                                          ; $57ef: $be
	inc bc                                           ; $57f0: $03
	ld [de], a                                       ; $57f1: $12
	nop                                              ; $57f2: $00
	ld [de], a                                       ; $57f3: $12
	nop                                              ; $57f4: $00
	cp [hl]                                          ; $57f5: $be
	ld b, $0c                                        ; $57f6: $06 $0c
	cp [hl]                                          ; $57f8: $be
	inc bc                                           ; $57f9: $03
	ld [de], a                                       ; $57fa: $12
	nop                                              ; $57fb: $00
	ld [de], a                                       ; $57fc: $12
	nop                                              ; $57fd: $00
	cp [hl]                                          ; $57fe: $be
	ld b, $0c                                        ; $57ff: $06 $0c
	cp [hl]                                          ; $5801: $be
	inc bc                                           ; $5802: $03
	ld [de], a                                       ; $5803: $12
	nop                                              ; $5804: $00
	ld [de], a                                       ; $5805: $12
	nop                                              ; $5806: $00
	cp [hl]                                          ; $5807: $be
	ld a, [hl]                                       ; $5808: $7e
	nop                                              ; $5809: $00
	ld [$be0c], sp                                   ; $580a: $08 $0c $be
	inc bc                                           ; $580d: $03
	inc d                                            ; $580e: $14
	nop                                              ; $580f: $00
	inc d                                            ; $5810: $14
	nop                                              ; $5811: $00
	cp [hl]                                          ; $5812: $be
	inc d                                            ; $5813: $14
	jr nc, jr_02f_57dc                               ; $5814: $30 $c6

	inc d                                            ; $5816: $14
	jr jr_02f_57db                                   ; $5817: $18 $c2

	dec c                                            ; $5819: $0d
	jr jr_02f_57e2                                   ; $581a: $18 $c6

	dec c                                            ; $581c: $0d
	inc c                                            ; $581d: $0c
	jp nz, $300d                                     ; $581e: $c2 $0d $30

	call nz, $180d                                   ; $5821: $c4 $0d $18
	add $0d                                          ; $5824: $c6 $0d
	jr nc, jr_02f_5828                               ; $5826: $30 $00

jr_02f_5828:
	inc h                                            ; $5828: $24
	rst $38                                          ; $5829: $ff
	or l                                             ; $582a: $b5
	ld hl, $0118                                     ; $582b: $21 $18 $01
	ld bc, $0a0d                                     ; $582e: $01 $0d $0a
	nop                                              ; $5831: $00
	ld c, $0d                                        ; $5832: $0e $0d
	ld d, $00                                        ; $5834: $16 $00
	ld [bc], a                                       ; $5836: $02
	dec c                                            ; $5837: $0d
	inc c                                            ; $5838: $0c
	cp [hl]                                          ; $5839: $be
	inc bc                                           ; $583a: $03
	dec c                                            ; $583b: $0d
	nop                                              ; $583c: $00
	dec c                                            ; $583d: $0d
	nop                                              ; $583e: $00
	cp [hl]                                          ; $583f: $be
	dec c                                            ; $5840: $0d
	inc c                                            ; $5841: $0c
	cp [hl]                                          ; $5842: $be
	inc bc                                           ; $5843: $03
	dec c                                            ; $5844: $0d
	nop                                              ; $5845: $00
	dec c                                            ; $5846: $0d
	nop                                              ; $5847: $00
	cp [hl]                                          ; $5848: $be
	dec c                                            ; $5849: $0d
	inc c                                            ; $584a: $0c
	cp [hl]                                          ; $584b: $be
	inc bc                                           ; $584c: $03
	dec c                                            ; $584d: $0d
	nop                                              ; $584e: $00
	dec c                                            ; $584f: $0d
	nop                                              ; $5850: $00
	cp [hl]                                          ; $5851: $be
	dec c                                            ; $5852: $0d
	inc c                                            ; $5853: $0c
	cp [hl]                                          ; $5854: $be
	inc bc                                           ; $5855: $03
	dec c                                            ; $5856: $0d
	nop                                              ; $5857: $00
	dec c                                            ; $5858: $0d
	nop                                              ; $5859: $00
	cp [hl]                                          ; $585a: $be
	dec c                                            ; $585b: $0d
	inc c                                            ; $585c: $0c
	cp [hl]                                          ; $585d: $be
	inc bc                                           ; $585e: $03
	dec c                                            ; $585f: $0d
	nop                                              ; $5860: $00
	dec c                                            ; $5861: $0d
	nop                                              ; $5862: $00
	cp [hl]                                          ; $5863: $be
	dec c                                            ; $5864: $0d
	inc c                                            ; $5865: $0c
	cp [hl]                                          ; $5866: $be
	inc bc                                           ; $5867: $03
	dec c                                            ; $5868: $0d
	nop                                              ; $5869: $00
	dec c                                            ; $586a: $0d
	nop                                              ; $586b: $00
	cp [hl]                                          ; $586c: $be
	dec bc                                           ; $586d: $0b
	ld a, [bc]                                       ; $586e: $0a
	nop                                              ; $586f: $00
	ld c, $0b                                        ; $5870: $0e $0b
	ld d, $00                                        ; $5872: $16 $00
	ld [bc], a                                       ; $5874: $02
	dec bc                                           ; $5875: $0b
	inc c                                            ; $5876: $0c
	cp [hl]                                          ; $5877: $be
	inc bc                                           ; $5878: $03
	dec bc                                           ; $5879: $0b
	nop                                              ; $587a: $00
	dec bc                                           ; $587b: $0b
	nop                                              ; $587c: $00
	cp [hl]                                          ; $587d: $be
	dec bc                                           ; $587e: $0b
	inc c                                            ; $587f: $0c
	cp [hl]                                          ; $5880: $be
	inc bc                                           ; $5881: $03
	dec bc                                           ; $5882: $0b
	nop                                              ; $5883: $00
	dec bc                                           ; $5884: $0b
	nop                                              ; $5885: $00
	cp [hl]                                          ; $5886: $be
	dec bc                                           ; $5887: $0b
	inc c                                            ; $5888: $0c
	cp [hl]                                          ; $5889: $be
	inc bc                                           ; $588a: $03
	dec bc                                           ; $588b: $0b
	nop                                              ; $588c: $00
	dec bc                                           ; $588d: $0b
	nop                                              ; $588e: $00
	cp [hl]                                          ; $588f: $be
	dec bc                                           ; $5890: $0b
	inc c                                            ; $5891: $0c
	cp [hl]                                          ; $5892: $be
	inc bc                                           ; $5893: $03
	dec bc                                           ; $5894: $0b
	nop                                              ; $5895: $00
	dec bc                                           ; $5896: $0b
	nop                                              ; $5897: $00
	cp [hl]                                          ; $5898: $be
	dec bc                                           ; $5899: $0b
	inc c                                            ; $589a: $0c
	cp [hl]                                          ; $589b: $be
	inc bc                                           ; $589c: $03
	dec bc                                           ; $589d: $0b
	nop                                              ; $589e: $00
	dec bc                                           ; $589f: $0b
	nop                                              ; $58a0: $00
	cp [hl]                                          ; $58a1: $be
	dec bc                                           ; $58a2: $0b
	inc c                                            ; $58a3: $0c
	cp [hl]                                          ; $58a4: $be
	inc bc                                           ; $58a5: $03
	dec bc                                           ; $58a6: $0b
	nop                                              ; $58a7: $00
	rla                                              ; $58a8: $17
	nop                                              ; $58a9: $00
	cp [hl]                                          ; $58aa: $be
	db $fd                                           ; $58ab: $fd
	sub [hl]                                         ; $58ac: $96
	ld bc, $0601                                     ; $58ad: $01 $01 $06
	inc c                                            ; $58b0: $0c
	cp [hl]                                          ; $58b1: $be
	inc bc                                           ; $58b2: $03
	ld b, $00                                        ; $58b3: $06 $00
	ld b, $00                                        ; $58b5: $06 $00
	cp [hl]                                          ; $58b7: $be
	ld b, $0c                                        ; $58b8: $06 $0c
	cp [hl]                                          ; $58ba: $be
	inc bc                                           ; $58bb: $03
	ld b, $00                                        ; $58bc: $06 $00
	ld b, $00                                        ; $58be: $06 $00
	cp [hl]                                          ; $58c0: $be
	ld b, $0c                                        ; $58c1: $06 $0c
	cp [hl]                                          ; $58c3: $be
	inc bc                                           ; $58c4: $03
	ld b, $00                                        ; $58c5: $06 $00
	ld b, $00                                        ; $58c7: $06 $00
	cp [hl]                                          ; $58c9: $be
	ld b, $0c                                        ; $58ca: $06 $0c
	ld [$080c], sp                                   ; $58cc: $08 $0c $08
	inc c                                            ; $58cf: $0c
	cp [hl]                                          ; $58d0: $be
	inc bc                                           ; $58d1: $03
	ld [$0800], sp                                   ; $58d2: $08 $00 $08
	nop                                              ; $58d5: $00
	cp [hl]                                          ; $58d6: $be
	ld [$be0c], sp                                   ; $58d7: $08 $0c $be
	inc bc                                           ; $58da: $03
	ld [$0800], sp                                   ; $58db: $08 $00 $08
	nop                                              ; $58de: $00
	cp [hl]                                          ; $58df: $be
	ld [$be0c], sp                                   ; $58e0: $08 $0c $be
	inc bc                                           ; $58e3: $03
	ld [$0800], sp                                   ; $58e4: $08 $00 $08
	nop                                              ; $58e7: $00
	cp [hl]                                          ; $58e8: $be
	sub [hl]                                         ; $58e9: $96
	nop                                              ; $58ea: $00
	nop                                              ; $58eb: $00
	cp [hl]                                          ; $58ec: $be
	ld b, $08                                        ; $58ed: $06 $08
	ld a, [bc]                                       ; $58ef: $0a
	inc c                                            ; $58f0: $0c
	dec c                                            ; $58f1: $0d
	cp [hl]                                          ; $58f2: $be
	db $fd                                           ; $58f3: $fd
	sub [hl]                                         ; $58f4: $96
	ld b, $02                                        ; $58f5: $06 $02
	cp [hl]                                          ; $58f7: $be
	inc c                                            ; $58f8: $0c
	dec c                                            ; $58f9: $0d
	dec c                                            ; $58fa: $0d
	add hl, de                                       ; $58fb: $19
	dec c                                            ; $58fc: $0d
	cp [hl]                                          ; $58fd: $be
	sub [hl]                                         ; $58fe: $96
	ld [$be02], sp                                   ; $58ff: $08 $02 $be
	inc c                                            ; $5902: $0c
	dec c                                            ; $5903: $0d
	add hl, de                                       ; $5904: $19
	dec c                                            ; $5905: $0d
	dec c                                            ; $5906: $0d
	cp [hl]                                          ; $5907: $be
	db $fd                                           ; $5908: $fd
	cp [hl]                                          ; $5909: $be
	inc c                                            ; $590a: $0c
	ld b, $06                                        ; $590b: $06 $06
	ld [de], a                                       ; $590d: $12
	ld b, $06                                        ; $590e: $06 $06
	ld b, $be                                        ; $5910: $06 $be
	sub [hl]                                         ; $5912: $96
	nop                                              ; $5913: $00
	nop                                              ; $5914: $00
	ld de, $120c                                     ; $5915: $11 $0c $12
	inc c                                            ; $5918: $0c
	sub [hl]                                         ; $5919: $96
	ld b, $01                                        ; $591a: $06 $01
	db $fd                                           ; $591c: $fd
	ret nc                                           ; $591d: $d0

jr_02f_591e:
	adc h                                            ; $591e: $8c
	dec e                                            ; $591f: $1d
	jr jr_02f_593f                                   ; $5920: $18 $1d

	jr jr_02f_5941                                   ; $5922: $18 $1d

	jr jr_02f_5945                                   ; $5924: $18 $1f

	jr jr_02f_5948                                   ; $5926: $18 $20

	inc h                                            ; $5928: $24
	dec e                                            ; $5929: $1d
	inc c                                            ; $592a: $0c
	dec e                                            ; $592b: $1d
	inc c                                            ; $592c: $0c
	jr nz, jr_02f_593b                               ; $592d: $20 $0c

	cp [hl]                                          ; $592f: $be
	inc c                                            ; $5930: $0c
	nop                                              ; $5931: $00
	dec e                                            ; $5932: $1d
	jr nz, jr_02f_5952                               ; $5933: $20 $1d

	rra                                              ; $5935: $1f
	rra                                              ; $5936: $1f

jr_02f_5937:
	jr nz, @+$1f                                     ; $5937: $20 $1d

	cp [hl]                                          ; $5939: $be
	ei                                               ; $593a: $fb

jr_02f_593b:
	db $fd                                           ; $593b: $fd
	dec e                                            ; $593c: $1d
	ld e, d                                          ; $593d: $5a
	ei                                               ; $593e: $fb

jr_02f_593f:
	inc bc                                           ; $593f: $03
	cp [hl]                                          ; $5940: $be

jr_02f_5941:
	inc c                                            ; $5941: $0c
	rra                                              ; $5942: $1f
	rra                                              ; $5943: $1f
	dec e                                            ; $5944: $1d

jr_02f_5945:
	jr nz, jr_02f_5966                               ; $5945: $20 $1f

	rra                                              ; $5947: $1f

jr_02f_5948:
	jr nz, jr_02f_5967                               ; $5948: $20 $1d

	cp [hl]                                          ; $594a: $be
	db $fd                                           ; $594b: $fd

jr_02f_594c:
	ld b, $5a                                        ; $594c: $06 $5a
	db $fd                                           ; $594e: $fd
	dec e                                            ; $594f: $1d
	ld e, d                                          ; $5950: $5a
	rra                                              ; $5951: $1f

jr_02f_5952:
	inc c                                            ; $5952: $0c
	jr nz, jr_02f_595b                               ; $5953: $20 $06

	jr nz, @+$08                                     ; $5955: $20 $06

	ld e, $18                                        ; $5957: $1e $18
	cp [hl]                                          ; $5959: $be
	inc c                                            ; $595a: $0c

jr_02f_595b:
	rra                                              ; $595b: $1f
	jr nz, jr_02f_597e                               ; $595c: $20 $20

	jr nz, jr_02f_591e                               ; $595e: $20 $be

	ei                                               ; $5960: $fb
	db $fd                                           ; $5961: $fd
	dec e                                            ; $5962: $1d
	ld e, d                                          ; $5963: $5a
	db $fd                                           ; $5964: $fd
	add hl, hl                                       ; $5965: $29

jr_02f_5966:
	ld e, d                                          ; $5966: $5a

jr_02f_5967:
	ei                                               ; $5967: $fb
	ld [bc], a                                       ; $5968: $02
	ei                                               ; $5969: $fb
	db $fd                                           ; $596a: $fd
	dec e                                            ; $596b: $1d
	ld e, d                                          ; $596c: $5a
	ei                                               ; $596d: $fb
	inc bc                                           ; $596e: $03
	cp [hl]                                          ; $596f: $be
	inc c                                            ; $5970: $0c
	rra                                              ; $5971: $1f
	dec e                                            ; $5972: $1d
	jr nz, jr_02f_5992                               ; $5973: $20 $1d

	jr nz, jr_02f_5994                               ; $5975: $20 $1d

	jr nz, jr_02f_5937                               ; $5977: $20 $be

	jr nz, jr_02f_5981                               ; $5979: $20 $06

	jr nz, jr_02f_5983                               ; $597b: $20 $06

	ei                                               ; $597d: $fb

jr_02f_597e:
	db $fd                                           ; $597e: $fd
	dec e                                            ; $597f: $1d
	ld e, d                                          ; $5980: $5a

jr_02f_5981:
	ei                                               ; $5981: $fb
	inc bc                                           ; $5982: $03

jr_02f_5983:
	cp [hl]                                          ; $5983: $be
	inc c                                            ; $5984: $0c
	rra                                              ; $5985: $1f
	dec e                                            ; $5986: $1d
	jr nz, @+$1f                                     ; $5987: $20 $1d

	rra                                              ; $5989: $1f
	jr nz, jr_02f_59ac                               ; $598a: $20 $20

	jr nz, jr_02f_594c                               ; $598c: $20 $be

	db $fd                                           ; $598e: $fd
	dec [hl]                                         ; $598f: $35
	ld e, d                                          ; $5990: $5a
	cp [hl]                                          ; $5991: $be

jr_02f_5992:
	inc c                                            ; $5992: $0c
	rra                                              ; $5993: $1f

jr_02f_5994:
	rra                                              ; $5994: $1f
	dec e                                            ; $5995: $1d
	rra                                              ; $5996: $1f
	rra                                              ; $5997: $1f
	dec e                                            ; $5998: $1d
	jr nz, jr_02f_59ba                               ; $5999: $20 $1f

	cp [hl]                                          ; $599b: $be
	db $fd                                           ; $599c: $fd
	dec [hl]                                         ; $599d: $35
	ld e, d                                          ; $599e: $5a
	cp [hl]                                          ; $599f: $be
	inc c                                            ; $59a0: $0c
	jr nz, jr_02f_59c2                               ; $59a1: $20 $1f

	jr nz, jr_02f_59c4                               ; $59a3: $20 $1f

jr_02f_59a5:
	jr nz, jr_02f_59c6                               ; $59a5: $20 $1f

	jr nz, jr_02f_59c8                               ; $59a7: $20 $1f

	cp [hl]                                          ; $59a9: $be
	ei                                               ; $59aa: $fb
	db $fd                                           ; $59ab: $fd

jr_02f_59ac:
	dec e                                            ; $59ac: $1d
	ld e, d                                          ; $59ad: $5a
	ei                                               ; $59ae: $fb
	inc bc                                           ; $59af: $03
	cp [hl]                                          ; $59b0: $be
	inc c                                            ; $59b1: $0c
	rra                                              ; $59b2: $1f
	jr nz, jr_02f_59d2                               ; $59b3: $20 $1d

	dec e                                            ; $59b5: $1d
	jr nz, jr_02f_59d7                               ; $59b6: $20 $1f

	cp [hl]                                          ; $59b8: $be
	cp [hl]                                          ; $59b9: $be

jr_02f_59ba:
	ld b, $20                                        ; $59ba: $06 $20
	jr nz, jr_02f_59db                               ; $59bc: $20 $1d

	jr nz, jr_02f_597e                               ; $59be: $20 $be

	ei                                               ; $59c0: $fb
	db $fd                                           ; $59c1: $fd

jr_02f_59c2:
	ld b, c                                          ; $59c2: $41
	ld e, d                                          ; $59c3: $5a

jr_02f_59c4:
	db $fd                                           ; $59c4: $fd
	dec e                                            ; $59c5: $1d

jr_02f_59c6:
	ld e, d                                          ; $59c6: $5a
	ei                                               ; $59c7: $fb

jr_02f_59c8:
	ld [bc], a                                       ; $59c8: $02
	db $fd                                           ; $59c9: $fd
	ld b, $5a                                        ; $59ca: $06 $5a
	cp [hl]                                          ; $59cc: $be
	inc c                                            ; $59cd: $0c
	rra                                              ; $59ce: $1f
	dec e                                            ; $59cf: $1d
	jr nz, jr_02f_59ef                               ; $59d0: $20 $1d

jr_02f_59d2:
	rra                                              ; $59d2: $1f
	rra                                              ; $59d3: $1f
	jr nz, jr_02f_59f5                               ; $59d4: $20 $1f

	cp [hl]                                          ; $59d6: $be

jr_02f_59d7:
	cp [hl]                                          ; $59d7: $be
	inc c                                            ; $59d8: $0c
	nop                                              ; $59d9: $00
	dec e                                            ; $59da: $1d

jr_02f_59db:
	jr nz, jr_02f_59fa                               ; $59db: $20 $1d

	jr nz, @+$22                                     ; $59dd: $20 $20

	cp [hl]                                          ; $59df: $be
	cp [hl]                                          ; $59e0: $be
	ld b, $20                                        ; $59e1: $06 $20
	jr nz, jr_02f_5a05                               ; $59e3: $20 $20

	jr nz, jr_02f_59a5                               ; $59e5: $20 $be

	ei                                               ; $59e7: $fb
	db $fd                                           ; $59e8: $fd
	ld b, c                                          ; $59e9: $41
	ld e, d                                          ; $59ea: $5a
	db $fd                                           ; $59eb: $fd
	dec e                                            ; $59ec: $1d
	ld e, d                                          ; $59ed: $5a
	ei                                               ; $59ee: $fb

jr_02f_59ef:
	ld [bc], a                                       ; $59ef: $02
	cp [hl]                                          ; $59f0: $be
	inc c                                            ; $59f1: $0c

jr_02f_59f2:
	rra                                              ; $59f2: $1f
	dec e                                            ; $59f3: $1d
	ld d, d                                          ; $59f4: $52

jr_02f_59f5:
	dec e                                            ; $59f5: $1d
	rra                                              ; $59f6: $1f
	rra                                              ; $59f7: $1f
	ld d, d                                          ; $59f8: $52
	rra                                              ; $59f9: $1f

jr_02f_59fa:
	cp [hl]                                          ; $59fa: $be
	ld d, d                                          ; $59fb: $52
	inc c                                            ; $59fc: $0c
	ld d, d                                          ; $59fd: $52
	ld b, $52                                        ; $59fe: $06 $52
	ld b, $1e                                        ; $5a00: $06 $1e
	ld c, b                                          ; $5a02: $48
	nop                                              ; $5a03: $00
	ret nz                                           ; $5a04: $c0

jr_02f_5a05:
	rst $38                                          ; $5a05: $ff
	cp [hl]                                          ; $5a06: $be
	inc c                                            ; $5a07: $0c

jr_02f_5a08:
	rra                                              ; $5a08: $1f
	dec e                                            ; $5a09: $1d
	jr nz, jr_02f_5a29                               ; $5a0a: $20 $1d

	rra                                              ; $5a0c: $1f
	rra                                              ; $5a0d: $1f
	jr nz, jr_02f_5a2f                               ; $5a0e: $20 $1f

	cp [hl]                                          ; $5a10: $be
	cp [hl]                                          ; $5a11: $be
	inc c                                            ; $5a12: $0c
	nop                                              ; $5a13: $00
	dec e                                            ; $5a14: $1d
	jr nz, jr_02f_5a34                               ; $5a15: $20 $1d

	rra                                              ; $5a17: $1f
	rra                                              ; $5a18: $1f
	jr nz, jr_02f_5a38                               ; $5a19: $20 $1d

	cp [hl]                                          ; $5a1b: $be
	db $fd                                           ; $5a1c: $fd
	cp [hl]                                          ; $5a1d: $be
	inc c                                            ; $5a1e: $0c
	rra                                              ; $5a1f: $1f
	dec e                                            ; $5a20: $1d
	jr nz, jr_02f_5a40                               ; $5a21: $20 $1d

	rra                                              ; $5a23: $1f
	rra                                              ; $5a24: $1f
	jr nz, jr_02f_5a44                               ; $5a25: $20 $1d

	cp [hl]                                          ; $5a27: $be
	db $fd                                           ; $5a28: $fd

jr_02f_5a29:
	cp [hl]                                          ; $5a29: $be
	inc c                                            ; $5a2a: $0c
	rra                                              ; $5a2b: $1f
	dec e                                            ; $5a2c: $1d
	jr nz, jr_02f_5a4c                               ; $5a2d: $20 $1d

jr_02f_5a2f:
	rra                                              ; $5a2f: $1f
	jr nz, jr_02f_5a52                               ; $5a30: $20 $20

	jr nz, jr_02f_59f2                               ; $5a32: $20 $be

jr_02f_5a34:
	db $fd                                           ; $5a34: $fd
	cp [hl]                                          ; $5a35: $be
	inc c                                            ; $5a36: $0c
	rra                                              ; $5a37: $1f

jr_02f_5a38:
	dec e                                            ; $5a38: $1d
	dec e                                            ; $5a39: $1d
	rra                                              ; $5a3a: $1f
	rra                                              ; $5a3b: $1f
	dec e                                            ; $5a3c: $1d
	jr nz, jr_02f_5a5e                               ; $5a3d: $20 $1f

	cp [hl]                                          ; $5a3f: $be

jr_02f_5a40:
	db $fd                                           ; $5a40: $fd
	ld d, d                                          ; $5a41: $52
	inc c                                            ; $5a42: $0c
	rra                                              ; $5a43: $1f

jr_02f_5a44:
	ld b, $1f                                        ; $5a44: $06 $1f
	ld b, $1e                                        ; $5a46: $06 $1e
	jr jr_02f_5a08                                   ; $5a48: $18 $be

	inc c                                            ; $5a4a: $0c
	rra                                              ; $5a4b: $1f

jr_02f_5a4c:
	rra                                              ; $5a4c: $1f
	ld d, d                                          ; $5a4d: $52
	dec e                                            ; $5a4e: $1d
	cp [hl]                                          ; $5a4f: $be
	db $fd                                           ; $5a50: $fd
	or h                                             ; $5a51: $b4

jr_02f_5a52:
	ld h, h                                          ; $5a52: $64
	ld d, c                                          ; $5a53: $51
	nop                                              ; $5a54: $00
	halt                                             ; $5a55: $76
	jr nz, @+$0a                                     ; $5a56: $20 $08

	jp nz, $0820                                     ; $5a58: $c2 $20 $08

	push bc                                          ; $5a5b: $c5
	jr nz, jr_02f_5a62                               ; $5a5c: $20 $04

jr_02f_5a5e:
	jp nz, $0420                                     ; $5a5e: $c2 $20 $04

	rst JumpTable                                          ; $5a61: $c7

jr_02f_5a62:
	dec e                                            ; $5a62: $1d
	ld [de], a                                       ; $5a63: $12
	jp $061d                                         ; $5a64: $c3 $1d $06


	ret z                                            ; $5a67: $c8

	ld e, $12                                        ; $5a68: $1e $12
	jp $061e                                         ; $5a6a: $c3 $1e $06


	ret z                                            ; $5a6d: $c8

	jr nz, @+$14                                     ; $5a6e: $20 $12

	jp $0620                                         ; $5a70: $c3 $20 $06


	ret z                                            ; $5a73: $c8

	inc h                                            ; $5a74: $24
	ld [de], a                                       ; $5a75: $12
	jp $0624                                         ; $5a76: $c3 $24 $06


	ret z                                            ; $5a79: $c8

	dec h                                            ; $5a7a: $25

jr_02f_5a7b:
	jr jr_02f_5a40                                   ; $5a7b: $18 $c3

	dec h                                            ; $5a7d: $25
	inc c                                            ; $5a7e: $0c
	ret z                                            ; $5a7f: $c8

	inc h                                            ; $5a80: $24
	ld b, $25                                        ; $5a81: $06 $25
	ld b, $c8                                        ; $5a83: $06 $c8
	inc h                                            ; $5a85: $24
	ld [de], a                                       ; $5a86: $12
	jp $0624                                         ; $5a87: $c3 $24 $06


	ret z                                            ; $5a8a: $c8

	jr nz, @+$0a                                     ; $5a8b: $20 $08

	jp $0820                                         ; $5a8d: $c3 $20 $08


	ret z                                            ; $5a90: $c8

	jr nz, jr_02f_5a97                               ; $5a91: $20 $04

	jp $0420                                         ; $5a93: $c3 $20 $04


	ret z                                            ; $5a96: $c8

jr_02f_5a97:
	add hl, de                                       ; $5a97: $19
	ld [de], a                                       ; $5a98: $12
	jp $0619                                         ; $5a99: $c3 $19 $06


	ret z                                            ; $5a9c: $c8

	ld [hl+], a                                      ; $5a9d: $22
	ld [de], a                                       ; $5a9e: $12
	jp $0622                                         ; $5a9f: $c3 $22 $06


	ret z                                            ; $5aa2: $c8

	jr nz, jr_02f_5ab7                               ; $5aa3: $20 $12

	jp $0620                                         ; $5aa5: $c3 $20 $06


	ret z                                            ; $5aa8: $c8

	ld e, $12                                        ; $5aa9: $1e $12
	jp $061e                                         ; $5aab: $c3 $1e $06


	ret z                                            ; $5aae: $c8

	dec h                                            ; $5aaf: $25
	ld [de], a                                       ; $5ab0: $12
	jp $0625                                         ; $5ab1: $c3 $25 $06


	sub d                                            ; $5ab4: $92
	ei                                               ; $5ab5: $fb
	push bc                                          ; $5ab6: $c5

jr_02f_5ab7:
	ld b, c                                          ; $5ab7: $41
	ld b, $c1                                        ; $5ab8: $06 $c1
	ld b, c                                          ; $5aba: $41
	ld [bc], a                                       ; $5abb: $02
	ei                                               ; $5abc: $fb
	inc bc                                           ; $5abd: $03
	push bc                                          ; $5abe: $c5
	ld b, c                                          ; $5abf: $41
	ld b, $c1                                        ; $5ac0: $06 $c1
	ld b, c                                          ; $5ac2: $41
	ld [bc], a                                       ; $5ac3: $02
	ei                                               ; $5ac4: $fb
	push bc                                          ; $5ac5: $c5
	ld b, c                                          ; $5ac6: $41
	inc b                                            ; $5ac7: $04
	ld b, d                                          ; $5ac8: $42
	inc b                                            ; $5ac9: $04
	ei                                               ; $5aca: $fb
	rlca                                             ; $5acb: $07
	push bc                                          ; $5acc: $c5
	ld a, [hl]                                       ; $5acd: $7e
	dec e                                            ; $5ace: $1d
	jr jr_02f_5a7b                                   ; $5acf: $18 $aa

	ld b, c                                          ; $5ad1: $41
	jr nc, jr_02f_5b52                               ; $5ad2: $30 $7e

	dec e                                            ; $5ad4: $1d

jr_02f_5ad5:
	nop                                              ; $5ad5: $00
	xor d                                            ; $5ad6: $aa
	pop bc                                           ; $5ad7: $c1
	ld b, c                                          ; $5ad8: $41
	jr nz, @+$80                                     ; $5ad9: $20 $7e

	nop                                              ; $5adb: $00
	and b                                            ; $5adc: $a0
	sub b                                            ; $5add: $90
	add $22                                          ; $5ade: $c6 $22
	jr @-$3c                                         ; $5ae0: $18 $c2

	ld [hl+], a                                      ; $5ae2: $22
	inc c                                            ; $5ae3: $0c
	rst JumpTable                                          ; $5ae4: $c7
	jr nz, @+$08                                     ; $5ae5: $20 $06

	ld [hl+], a                                      ; $5ae7: $22
	ld b, $c7                                        ; $5ae8: $06 $c7
	inc h                                            ; $5aea: $24
	ld [de], a                                       ; $5aeb: $12
	jp nz, $0624                                     ; $5aec: $c2 $24 $06

	ret z                                            ; $5aef: $c8

	add hl, hl                                       ; $5af0: $29
	ld [$29c3], sp                                   ; $5af1: $08 $c3 $29
	ld [$29c8], sp                                   ; $5af4: $08 $c8 $29
	inc b                                            ; $5af7: $04
	jp $0429                                         ; $5af8: $c3 $29 $04


	ret z                                            ; $5afb: $c8

	add hl, de                                       ; $5afc: $19
	ld [de], a                                       ; $5afd: $12
	jp $0619                                         ; $5afe: $c3 $19 $06


	ret z                                            ; $5b01: $c8

	ld [hl+], a                                      ; $5b02: $22
	ld [de], a                                       ; $5b03: $12
	jp $0622                                         ; $5b04: $c3 $22 $06


	ret z                                            ; $5b07: $c8

	jr nz, @+$14                                     ; $5b08: $20 $12

	jp $0620                                         ; $5b0a: $c3 $20 $06


	ret z                                            ; $5b0d: $c8

	ld e, $12                                        ; $5b0e: $1e $12
	jp $061e                                         ; $5b10: $c3 $1e $06


	ret z                                            ; $5b13: $c8

	dec e                                            ; $5b14: $1d
	ld b, $c3                                        ; $5b15: $06 $c3
	dec e                                            ; $5b17: $1d
	ld [bc], a                                       ; $5b18: $02
	ret z                                            ; $5b19: $c8

	dec de                                           ; $5b1a: $1b
	ld b, $c3                                        ; $5b1b: $06 $c3
	dec de                                           ; $5b1d: $1b
	ld [bc], a                                       ; $5b1e: $02
	ret z                                            ; $5b1f: $c8

	dec e                                            ; $5b20: $1d
	ld b, $c3                                        ; $5b21: $06 $c3
	dec e                                            ; $5b23: $1d
	ld [bc], a                                       ; $5b24: $02
	ret z                                            ; $5b25: $c8

	jr nz, @+$08                                     ; $5b26: $20 $06

	jp $0220                                         ; $5b28: $c3 $20 $02


	ret z                                            ; $5b2b: $c8

	dec e                                            ; $5b2c: $1d
	ld b, $c3                                        ; $5b2d: $06 $c3
	dec e                                            ; $5b2f: $1d
	ld [bc], a                                       ; $5b30: $02
	ret z                                            ; $5b31: $c8

	jr nz, jr_02f_5b3a                               ; $5b32: $20 $06

	jp $0220                                         ; $5b34: $c3 $20 $02


	sub a                                            ; $5b37: $97
	ld a, h                                          ; $5b38: $7c
	add hl, de                                       ; $5b39: $19

jr_02f_5b3a:
	jr @+$1a                                         ; $5b3a: $18 $18

	jr jr_02f_5ad5                                   ; $5b3c: $18 $97

	nop                                              ; $5b3e: $00
	pop de                                           ; $5b3f: $d1
	sub d                                            ; $5b40: $92
	halt                                             ; $5b41: $76
	ei                                               ; $5b42: $fb
	call nz, $0435                                   ; $5b43: $c4 $35 $04
	jp nz, $0435                                     ; $5b46: $c2 $35 $04

	ei                                               ; $5b49: $fb
	ld b, $fb                                        ; $5b4a: $06 $fb
	call nz, $0436                                   ; $5b4c: $c4 $36 $04
	jp nz, $0436                                     ; $5b4f: $c2 $36 $04

jr_02f_5b52:
	ei                                               ; $5b52: $fb
	ld b, $fb                                        ; $5b53: $06 $fb
	call nz, $0433                                   ; $5b55: $c4 $33 $04
	jp nz, $0433                                     ; $5b58: $c2 $33 $04

	ei                                               ; $5b5b: $fb
	ld b, $fb                                        ; $5b5c: $06 $fb
	call nz, $0435                                   ; $5b5e: $c4 $35 $04
	jp nz, $0435                                     ; $5b61: $c2 $35 $04

	ei                                               ; $5b64: $fb
	ld b, $fb                                        ; $5b65: $06 $fb
	call nz, $0431                                   ; $5b67: $c4 $31 $04
	jp nz, $0431                                     ; $5b6a: $c2 $31 $04

jr_02f_5b6d:
	ei                                               ; $5b6d: $fb
	ld b, $fb                                        ; $5b6e: $06 $fb
	jp $0433                                         ; $5b70: $c3 $33 $04


	pop bc                                           ; $5b73: $c1
	inc sp                                           ; $5b74: $33
	inc b                                            ; $5b75: $04
	ei                                               ; $5b76: $fb
	ld b, $c6                                        ; $5b77: $06 $c6
	cp [hl]                                          ; $5b79: $be
	ld [$2524], sp                                   ; $5b7a: $08 $24 $25
	daa                                              ; $5b7d: $27
	add hl, hl                                       ; $5b7e: $29
	daa                                              ; $5b7f: $27
	dec h                                            ; $5b80: $25
	cp [hl]                                          ; $5b81: $be
	cp [hl]                                          ; $5b82: $be
	ld [$2927], sp                                   ; $5b83: $08 $27 $29
	ld a, [hl+]                                      ; $5b86: $2a
	inc l                                            ; $5b87: $2c
	ld l, $30                                        ; $5b88: $2e $30
	cp [hl]                                          ; $5b8a: $be
	pop de                                           ; $5b8b: $d1
	sub b                                            ; $5b8c: $90
	rst JumpTable                                          ; $5b8d: $c7
	halt                                             ; $5b8e: $76
	dec e                                            ; $5b8f: $1d
	ld [de], a                                       ; $5b90: $12
	jp $061d                                         ; $5b91: $c3 $1d $06


	ret z                                            ; $5b94: $c8

	ld e, $12                                        ; $5b95: $1e $12
	jp $061e                                         ; $5b97: $c3 $1e $06


	rst JumpTable                                          ; $5b9a: $c7
	jr nz, @+$14                                     ; $5b9b: $20 $12

	jp $0620                                         ; $5b9d: $c3 $20 $06


	ret z                                            ; $5ba0: $c8

	inc h                                            ; $5ba1: $24
	ld [de], a                                       ; $5ba2: $12
	jp $0624                                         ; $5ba3: $c3 $24 $06


	ret z                                            ; $5ba6: $c8

	dec h                                            ; $5ba7: $25
	jr jr_02f_5b6d                                   ; $5ba8: $18 $c3

	dec h                                            ; $5baa: $25
	inc c                                            ; $5bab: $0c
	ret z                                            ; $5bac: $c8

	dec h                                            ; $5bad: $25
	ld b, $24                                        ; $5bae: $06 $24
	ld b, $c8                                        ; $5bb0: $06 $c8
	inc h                                            ; $5bb2: $24
	ld [de], a                                       ; $5bb3: $12
	jp $0624                                         ; $5bb4: $c3 $24 $06


	ret z                                            ; $5bb7: $c8

	jr nz, @+$0a                                     ; $5bb8: $20 $08

	jp $0820                                         ; $5bba: $c3 $20 $08


	ret z                                            ; $5bbd: $c8

	jr nz, jr_02f_5bc4                               ; $5bbe: $20 $04

	jp $0420                                         ; $5bc0: $c3 $20 $04


	rst JumpTable                                          ; $5bc3: $c7

jr_02f_5bc4:
	add hl, de                                       ; $5bc4: $19
	ld [de], a                                       ; $5bc5: $12
	jp $0619                                         ; $5bc6: $c3 $19 $06


	ret z                                            ; $5bc9: $c8

	ld [hl+], a                                      ; $5bca: $22
	ld [de], a                                       ; $5bcb: $12
	jp $0622                                         ; $5bcc: $c3 $22 $06


	add $20                                          ; $5bcf: $c6 $20
	ld [de], a                                       ; $5bd1: $12
	jp $0620                                         ; $5bd2: $c3 $20 $06


	ret z                                            ; $5bd5: $c8

	ld e, $12                                        ; $5bd6: $1e $12
	jp $061e                                         ; $5bd8: $c3 $1e $06


	ret z                                            ; $5bdb: $c8

	jr nz, jr_02f_5bf0                               ; $5bdc: $20 $12

	jp $0620                                         ; $5bde: $c3 $20 $06


	ei                                               ; $5be1: $fb
	push bc                                          ; $5be2: $c5
	dec a                                            ; $5be3: $3d
	inc b                                            ; $5be4: $04
	ccf                                              ; $5be5: $3f
	inc b                                            ; $5be6: $04
	ei                                               ; $5be7: $fb
	inc bc                                           ; $5be8: $03
	ret z                                            ; $5be9: $c8

	jr nz, @+$14                                     ; $5bea: $20 $12

	jp $0620                                         ; $5bec: $c3 $20 $06


	ei                                               ; $5bef: $fb

jr_02f_5bf0:
	push bc                                          ; $5bf0: $c5
	dec a                                            ; $5bf1: $3d
	inc b                                            ; $5bf2: $04
	ccf                                              ; $5bf3: $3f
	inc b                                            ; $5bf4: $04
	ei                                               ; $5bf5: $fb
	inc bc                                           ; $5bf6: $03
	pop hl                                           ; $5bf7: $e1
	ld d, b                                          ; $5bf8: $50
	ld h, c                                          ; $5bf9: $61
	jr nz, @+$32                                     ; $5bfa: $20 $30

	jp $1820                                         ; $5bfc: $c3 $20 $18


	jp nz, $0c20                                     ; $5bff: $c2 $20 $0c

	pop bc                                           ; $5c02: $c1
	jr nz, @+$0e                                     ; $5c03: $20 $0c

	rst $38                                          ; $5c05: $ff
	or h                                             ; $5c06: $b4
	ld h, h                                          ; $5c07: $64
	pop hl                                           ; $5c08: $e1
	ld bc, $2976                                     ; $5c09: $01 $76 $29
	ld [$29c4], sp                                   ; $5c0c: $08 $c4 $29
	ld [$29ce], sp                                   ; $5c0f: $08 $ce $29
	inc b                                            ; $5c12: $04
	call nz, $0429                                   ; $5c13: $c4 $29 $04
	ret                                              ; $5c16: $c9


	ld sp, $c218                                     ; $5c17: $31 $18 $c2
	ld sp, $c90c                                     ; $5c1a: $31 $0c $c9
	jr nc, @+$08                                     ; $5c1d: $30 $06

	ld sp, $c806                                     ; $5c1f: $31 $06 $c8
	jr nc, jr_02f_5c36                               ; $5c22: $30 $12

	call nz, $0630                                   ; $5c24: $c4 $30 $06
	jp z, $082c                                      ; $5c27: $ca $2c $08

	call nz, $082c                                   ; $5c2a: $c4 $2c $08
	call z, $042c                                    ; $5c2d: $cc $2c $04
	call nz, $042c                                   ; $5c30: $c4 $2c $04
	ret                                              ; $5c33: $c9


	ld l, $18                                        ; $5c34: $2e $18

jr_02f_5c36:
	call nz, $0c2e                                   ; $5c36: $c4 $2e $0c
	jp z, $062c                                      ; $5c39: $ca $2c $06

	ld l, $06                                        ; $5c3c: $2e $06
	call z, $122c                                    ; $5c3e: $cc $2c $12
	call nz, $062c                                   ; $5c41: $c4 $2c $06
	call z, $0829                                    ; $5c44: $cc $29 $08
	call nz, $0829                                   ; $5c47: $c4 $29 $08
	call z, $0429                                    ; $5c4a: $cc $29 $04
	call nz, $0429                                   ; $5c4d: $c4 $29 $04
	ei                                               ; $5c50: $fb
	sra d                                            ; $5c51: $cb $2a
	ld [de], a                                       ; $5c53: $12
	call nz, $062a                                   ; $5c54: $c4 $2a $06
	ei                                               ; $5c57: $fb
	ld [bc], a                                       ; $5c58: $02
	call z, $1229                                    ; $5c59: $cc $29 $12
	call nz, $0629                                   ; $5c5c: $c4 $29 $06
	call z, $1227                                    ; $5c5f: $cc $27 $12
	call nz, $0627                                   ; $5c62: $c4 $27 $06
	call z, $1229                                    ; $5c65: $cc $29 $12
	call nz, $0629                                   ; $5c68: $c4 $29 $06
	jp z, $122c                                      ; $5c6b: $ca $2c $12

	call nz, $062c                                   ; $5c6e: $c4 $2c $06
	ret z                                            ; $5c71: $c8

	ld sp, $c212                                     ; $5c72: $31 $12 $c2
	ld sp, $c806                                     ; $5c75: $31 $06 $c8
	ld sp, $c208                                     ; $5c78: $31 $08 $c2
	ld sp, $c808                                     ; $5c7b: $31 $08 $c8
	ld sp, $c204                                     ; $5c7e: $31 $04 $c2
	ld sp, $c904                                     ; $5c81: $31 $04 $c9
	ld sp, $c218                                     ; $5c84: $31 $18 $c2
	ld sp, $c80c                                     ; $5c87: $31 $0c $c8
	jr nc, @+$08                                     ; $5c8a: $30 $06

	ld sp, $c806                                     ; $5c8c: $31 $06 $c8
	inc sp                                           ; $5c8f: $33
	ld [de], a                                       ; $5c90: $12
	jp nz, $0633                                     ; $5c91: $c2 $33 $06

	ret                                              ; $5c94: $c9


	jr nc, @+$0a                                     ; $5c95: $30 $08

	jp nz, $0830                                     ; $5c97: $c2 $30 $08

	ret                                              ; $5c9a: $c9


	jr nc, jr_02f_5ca1                               ; $5c9b: $30 $04

	call nz, $0430                                   ; $5c9d: $c4 $30 $04
	ret                                              ; $5ca0: $c9


jr_02f_5ca1:
	ld sp, $c218                                     ; $5ca1: $31 $18 $c2
	ld sp, $c80c                                     ; $5ca4: $31 $0c $c8
	jr nc, @+$08                                     ; $5ca7: $30 $06

	ld sp, $c906                                     ; $5ca9: $31 $06 $c9
	dec [hl]                                         ; $5cac: $35
	ld [de], a                                       ; $5cad: $12
	jp nz, $0635                                     ; $5cae: $c2 $35 $06

	ret z                                            ; $5cb1: $c8

	jr c, jr_02f_5cc6                                ; $5cb2: $38 $12

	jp nz, $0638                                     ; $5cb4: $c2 $38 $06

	ei                                               ; $5cb7: $fb
	ret                                              ; $5cb8: $c9


	ld [hl], $12                                     ; $5cb9: $36 $12
	jp nz, $0636                                     ; $5cbb: $c2 $36 $06

	ei                                               ; $5cbe: $fb
	ld [bc], a                                       ; $5cbf: $02
	ret                                              ; $5cc0: $c9


	dec [hl]                                         ; $5cc1: $35
	ld [de], a                                       ; $5cc2: $12
	jp nz, $0635                                     ; $5cc3: $c2 $35 $06

jr_02f_5cc6:
	ret z                                            ; $5cc6: $c8

	inc sp                                           ; $5cc7: $33
	ld [de], a                                       ; $5cc8: $12
	jp nz, $0633                                     ; $5cc9: $c2 $33 $06

	ret                                              ; $5ccc: $c9


	ld sp, $c212                                     ; $5ccd: $31 $12 $c2
	ld sp, $ca06                                     ; $5cd0: $31 $06 $ca
	dec [hl]                                         ; $5cd3: $35
	ld [de], a                                       ; $5cd4: $12
	jp nz, $0635                                     ; $5cd5: $c2 $35 $06

	ret                                              ; $5cd8: $c9


	ld sp, $c212                                     ; $5cd9: $31 $12 $c2
	ld sp, $c906                                     ; $5cdc: $31 $06 $c9
	jr nc, jr_02f_5cf3                               ; $5cdf: $30 $12

	jp nz, $0630                                     ; $5ce1: $c2 $30 $06

	pop de                                           ; $5ce4: $d1
	sub c                                            ; $5ce5: $91
	halt                                             ; $5ce6: $76
	sub a                                            ; $5ce7: $97
	ld a, c                                          ; $5ce8: $79
	cp [hl]                                          ; $5ce9: $be
	ld [$1816], sp                                   ; $5cea: $08 $16 $18
	add hl, de                                       ; $5ced: $19
	dec de                                           ; $5cee: $1b
	add hl, de                                       ; $5cef: $19
	jr @-$40                                         ; $5cf0: $18 $be

	sub a                                            ; $5cf2: $97

jr_02f_5cf3:
	ld e, c                                          ; $5cf3: $59
	cp [hl]                                          ; $5cf4: $be
	ld [$2022], sp                                   ; $5cf5: $08 $22 $20
	ld e, $20                                        ; $5cf8: $1e $20
	ld e, $1d                                        ; $5cfa: $1e $1d
	cp [hl]                                          ; $5cfc: $be
	sub a                                            ; $5cfd: $97
	ld a, c                                          ; $5cfe: $79
	cp [hl]                                          ; $5cff: $be
	ld [$1614], sp                                   ; $5d00: $08 $14 $16
	jr jr_02f_5d1e                                   ; $5d03: $18 $19

	jr jr_02f_5d1d                                   ; $5d05: $18 $16

	cp [hl]                                          ; $5d07: $be
	sub a                                            ; $5d08: $97
	ld e, c                                          ; $5d09: $59
	cp [hl]                                          ; $5d0a: $be
	ld [$1e20], sp                                   ; $5d0b: $08 $20 $1e
	dec e                                            ; $5d0e: $1d
	ld e, $1d                                        ; $5d0f: $1e $1d
	dec de                                           ; $5d11: $1b
	cp [hl]                                          ; $5d12: $be
	sub a                                            ; $5d13: $97
	ld a, c                                          ; $5d14: $79
	cp [hl]                                          ; $5d15: $be
	ld [$1412], sp                                   ; $5d16: $08 $12 $14
	ld d, $18                                        ; $5d19: $16 $18
	ld d, $14                                        ; $5d1b: $16 $14

jr_02f_5d1d:
	cp [hl]                                          ; $5d1d: $be

jr_02f_5d1e:
	sub a                                            ; $5d1e: $97
	ld e, c                                          ; $5d1f: $59
	cp [hl]                                          ; $5d20: $be
	ld [$1d1e], sp                                   ; $5d21: $08 $1e $1d
	dec de                                           ; $5d24: $1b
	dec e                                            ; $5d25: $1d
	dec de                                           ; $5d26: $1b
	add hl, de                                       ; $5d27: $19
	cp [hl]                                          ; $5d28: $be
	sub a                                            ; $5d29: $97
	ld a, c                                          ; $5d2a: $79
	cp [hl]                                          ; $5d2b: $be
	ld [$1614], sp                                   ; $5d2c: $08 $14 $16
	jr @+$1b                                         ; $5d2f: $18 $19

	jr @+$18                                         ; $5d31: $18 $16

	cp [hl]                                          ; $5d33: $be
	sub a                                            ; $5d34: $97
	ld e, c                                          ; $5d35: $59
	cp [hl]                                          ; $5d36: $be
	ld [$1918], sp                                   ; $5d37: $08 $18 $19
	dec de                                           ; $5d3a: $1b
	dec e                                            ; $5d3b: $1d
	ld e, $20                                        ; $5d3c: $1e $20
	cp [hl]                                          ; $5d3e: $be
	sub a                                            ; $5d3f: $97
	nop                                              ; $5d40: $00
	pop de                                           ; $5d41: $d1
	sub c                                            ; $5d42: $91
	ret                                              ; $5d43: $c9


	halt                                             ; $5d44: $76
	ld sp, $c218                                     ; $5d45: $31 $18 $c2
	ld sp, $c90c                                     ; $5d48: $31 $0c $c9
	jr nc, @+$08                                     ; $5d4b: $30 $06

	ld sp, $c806                                     ; $5d4d: $31 $06 $c8
	inc sp                                           ; $5d50: $33
	ld [de], a                                       ; $5d51: $12
	jp nz, $0633                                     ; $5d52: $c2 $33 $06

	ret z                                            ; $5d55: $c8

	jr c, @+$14                                      ; $5d56: $38 $12

	jp nz, $0638                                     ; $5d58: $c2 $38 $06

	ret z                                            ; $5d5b: $c8

	ld [hl], $18                                     ; $5d5c: $36 $18
	jp nz, $0c36                                     ; $5d5e: $c2 $36 $0c

	ret z                                            ; $5d61: $c8

	dec [hl]                                         ; $5d62: $35
	ld b, $33                                        ; $5d63: $06 $33
	ld b, $c9                                        ; $5d65: $06 $c9
	dec [hl]                                         ; $5d67: $35
	ld [de], a                                       ; $5d68: $12
	jp nz, $0635                                     ; $5d69: $c2 $35 $06

	ret z                                            ; $5d6c: $c8

	ld sp, $c212                                     ; $5d6d: $31 $12 $c2
	ld sp, $c806                                     ; $5d70: $31 $06 $c8
	ld l, $12                                        ; $5d73: $2e $12
	jp nz, $062e                                     ; $5d75: $c2 $2e $06

	ret z                                            ; $5d78: $c8

	inc sp                                           ; $5d79: $33
	ld [de], a                                       ; $5d7a: $12
	jp nz, $0633                                     ; $5d7b: $c2 $33 $06

	rst JumpTable                                          ; $5d7e: $c7
	jr nc, jr_02f_5d93                               ; $5d7f: $30 $12

	jp nz, $0630                                     ; $5d81: $c2 $30 $06

	jp z, $122c                                      ; $5d84: $ca $2c $12

	jp nz, $062c                                     ; $5d87: $c2 $2c $06

	ret z                                            ; $5d8a: $c8

	ld sp, $c224                                     ; $5d8b: $31 $24 $c2
	ld sp, $c90c                                     ; $5d8e: $31 $0c $c9
	dec [hl]                                         ; $5d91: $35
	inc h                                            ; $5d92: $24

jr_02f_5d93:
	jp nz, $0c35                                     ; $5d93: $c2 $35 $0c

	pop hl                                           ; $5d96: $e1
	ld d, b                                          ; $5d97: $50
	ld [hl], c                                       ; $5d98: $71
	ld sp, $c530                                     ; $5d99: $31 $30 $c5
	ld sp, $c318                                     ; $5d9c: $31 $18 $c3
	ld sp, $c10c                                     ; $5d9f: $31 $0c $c1
	ld sp, $ff0c                                     ; $5da2: $31 $0c $ff
	or h                                             ; $5da5: $b4
	ld h, h                                          ; $5da6: $64
	ld b, c                                          ; $5da7: $41
	jr @+$78                                         ; $5da8: $18 $76

	dec h                                            ; $5daa: $25
	ld [$25c6], sp                                   ; $5dab: $08 $c6 $25
	ld [$25c4], sp                                   ; $5dae: $08 $c4 $25
	inc b                                            ; $5db1: $04
	add $25                                          ; $5db2: $c6 $25
	inc b                                            ; $5db4: $04
	jp nz, $120d                                     ; $5db5: $c2 $0d $12

	add $0d                                          ; $5db8: $c6 $0d
	ld b, $c2                                        ; $5dba: $06 $c2
	inc c                                            ; $5dbc: $0c
	ld [de], a                                       ; $5dbd: $12
	add $0c                                          ; $5dbe: $c6 $0c
	ld b, $c2                                        ; $5dc0: $06 $c2
	ld a, [bc]                                       ; $5dc2: $0a
	ld [de], a                                       ; $5dc3: $12
	add $0a                                          ; $5dc4: $c6 $0a
	ld b, $c2                                        ; $5dc6: $06 $c2
	ld [$c612], sp                                   ; $5dc8: $08 $12 $c6
	ld [$c206], sp                                   ; $5dcb: $08 $06 $c2
	ld [de], a                                       ; $5dce: $12
	jr @-$3a                                         ; $5dcf: $18 $c4

	ld [de], a                                       ; $5dd1: $12

jr_02f_5dd2:
	inc c                                            ; $5dd2: $0c
	add $12                                          ; $5dd3: $c6 $12
	inc c                                            ; $5dd5: $0c
	ld a, a                                          ; $5dd6: $7f
	inc e                                            ; $5dd7: $1c
	jp nz, $1811                                     ; $5dd8: $c2 $11 $18

	call nz, $0c11                                   ; $5ddb: $c4 $11 $0c
	add $11                                          ; $5dde: $c6 $11
	inc c                                            ; $5de0: $0c
	ld a, a                                          ; $5de1: $7f
	jr @-$03                                         ; $5de2: $18 $fb

	jp nz, $120f                                     ; $5de4: $c2 $0f $12

	add $0f                                          ; $5de7: $c6 $0f
	ld b, $fb                                        ; $5de9: $06 $fb
	ld [bc], a                                       ; $5deb: $02
	ei                                               ; $5dec: $fb
	jp nz, $1208                                     ; $5ded: $c2 $08 $12

	add $08                                          ; $5df0: $c6 $08
	ld b, $fb                                        ; $5df2: $06 $fb
	ld [bc], a                                       ; $5df4: $02
	jp nz, $180d                                     ; $5df5: $c2 $0d $18

	call nz, $0c0d                                   ; $5df8: $c4 $0d $0c
	add $0d                                          ; $5dfb: $c6 $0d
	inc c                                            ; $5dfd: $0c
	jp nz, $120d                                     ; $5dfe: $c2 $0d $12

	add $0d                                          ; $5e01: $c6 $0d
	ld b, $c2                                        ; $5e03: $06 $c2
	inc c                                            ; $5e05: $0c
	ld [de], a                                       ; $5e06: $12
	add $0c                                          ; $5e07: $c6 $0c
	ld b, $c2                                        ; $5e09: $06 $c2
	ld a, [bc]                                       ; $5e0b: $0a
	jr jr_02f_5dd2                                   ; $5e0c: $18 $c4

	ld a, [bc]                                       ; $5e0e: $0a
	inc c                                            ; $5e0f: $0c
	add $0a                                          ; $5e10: $c6 $0a
	inc c                                            ; $5e12: $0c
	jp nz, $1808                                     ; $5e13: $c2 $08 $18

	call nz, $0c08                                   ; $5e16: $c4 $08 $0c
	add $08                                          ; $5e19: $c6 $08
	inc c                                            ; $5e1b: $0c
	jp nz, $1812                                     ; $5e1c: $c2 $12 $18

	call nz, $0c12                                   ; $5e1f: $c4 $12 $0c
	add $12                                          ; $5e22: $c6 $12
	inc c                                            ; $5e24: $0c
	ld a, a                                          ; $5e25: $7f
	inc e                                            ; $5e26: $1c
	jp nz, $1811                                     ; $5e27: $c2 $11 $18

	call nz, $0c11                                   ; $5e2a: $c4 $11 $0c
	add $11                                          ; $5e2d: $c6 $11
	inc c                                            ; $5e2f: $0c
	ld a, a                                          ; $5e30: $7f
	jr @-$03                                         ; $5e31: $18 $fb

	jp nz, $120f                                     ; $5e33: $c2 $0f $12

	add $0f                                          ; $5e36: $c6 $0f
	ld b, $fb                                        ; $5e38: $06 $fb
	ld [bc], a                                       ; $5e3a: $02
	ei                                               ; $5e3b: $fb
	jp nz, $1208                                     ; $5e3c: $c2 $08 $12

	add $08                                          ; $5e3f: $c6 $08
	ld b, $fb                                        ; $5e41: $06 $fb
	ld [bc], a                                       ; $5e43: $02
	jp nz, $120d                                     ; $5e44: $c2 $0d $12

	add $0d                                          ; $5e47: $c6 $0d
	ld b, $c2                                        ; $5e49: $06 $c2
	ld [$c412], sp                                   ; $5e4b: $08 $12 $c4
	ld [$c406], sp                                   ; $5e4e: $08 $06 $c4
	dec e                                            ; $5e51: $1d
	ld [de], a                                       ; $5e52: $12
	add $1d                                          ; $5e53: $c6 $1d
	ld b, $c4                                        ; $5e55: $06 $c4
	dec de                                           ; $5e57: $1b
	ld [de], a                                       ; $5e58: $12
	call nz, $061b                                   ; $5e59: $c4 $1b $06
	pop de                                           ; $5e5c: $d1
	ld a, a                                          ; $5e5d: $7f
	jr jr_02f_5ed6                                   ; $5e5e: $18 $76

	ei                                               ; $5e60: $fb
	add $31                                          ; $5e61: $c6 $31
	inc b                                            ; $5e63: $04
	nop                                              ; $5e64: $00
	inc b                                            ; $5e65: $04

jr_02f_5e66:
	ei                                               ; $5e66: $fb
	ld b, $fb                                        ; $5e67: $06 $fb
	add $33                                          ; $5e69: $c6 $33
	inc b                                            ; $5e6b: $04
	nop                                              ; $5e6c: $00
	inc b                                            ; $5e6d: $04
	ei                                               ; $5e6e: $fb
	ld b, $fb                                        ; $5e6f: $06 $fb
	add $30                                          ; $5e71: $c6 $30
	inc b                                            ; $5e73: $04
	nop                                              ; $5e74: $00
	inc b                                            ; $5e75: $04
	ei                                               ; $5e76: $fb
	ld b, $fb                                        ; $5e77: $06 $fb
	add $31                                          ; $5e79: $c6 $31
	inc b                                            ; $5e7b: $04
	nop                                              ; $5e7c: $00
	inc b                                            ; $5e7d: $04
	ei                                               ; $5e7e: $fb
	ld b, $fb                                        ; $5e7f: $06 $fb
	add $2e                                          ; $5e81: $c6 $2e
	inc b                                            ; $5e83: $04

jr_02f_5e84:
	nop                                              ; $5e84: $00
	inc b                                            ; $5e85: $04
	ei                                               ; $5e86: $fb
	ld b, $fb                                        ; $5e87: $06 $fb
	add $30                                          ; $5e89: $c6 $30
	inc b                                            ; $5e8b: $04
	nop                                              ; $5e8c: $00
	inc b                                            ; $5e8d: $04
	ei                                               ; $5e8e: $fb
	ld b, $fb                                        ; $5e8f: $06 $fb
	add $33                                          ; $5e91: $c6 $33
	inc b                                            ; $5e93: $04
	nop                                              ; $5e94: $00
	inc b                                            ; $5e95: $04
	ei                                               ; $5e96: $fb
	ld b, $fb                                        ; $5e97: $06 $fb
	add $36                                          ; $5e99: $c6 $36
	inc b                                            ; $5e9b: $04
	nop                                              ; $5e9c: $00
	inc b                                            ; $5e9d: $04
	ei                                               ; $5e9e: $fb
	ld b, $d1                                        ; $5e9f: $06 $d1
	ld a, a                                          ; $5ea1: $7f
	jr jr_02f_5e66                                   ; $5ea2: $18 $c2

	halt                                             ; $5ea4: $76
	dec c                                            ; $5ea5: $0d
	ld [de], a                                       ; $5ea6: $12
	add $0d                                          ; $5ea7: $c6 $0d

jr_02f_5ea9:
	ld b, $c2                                        ; $5ea9: $06 $c2
	inc c                                            ; $5eab: $0c
	ld [de], a                                       ; $5eac: $12
	add $0c                                          ; $5ead: $c6 $0c
	ld b, $c2                                        ; $5eaf: $06 $c2
	ld a, [bc]                                       ; $5eb1: $0a

jr_02f_5eb2:
	ld [de], a                                       ; $5eb2: $12
	add $0a                                          ; $5eb3: $c6 $0a
	ld b, $c2                                        ; $5eb5: $06 $c2
	ld [$c612], sp                                   ; $5eb7: $08 $12 $c6
	ld [$c206], sp                                   ; $5eba: $08 $06 $c2
	ld [de], a                                       ; $5ebd: $12
	jr jr_02f_5e84                                   ; $5ebe: $18 $c4

	ld [de], a                                       ; $5ec0: $12
	inc c                                            ; $5ec1: $0c
	add $12                                          ; $5ec2: $c6 $12
	inc c                                            ; $5ec4: $0c
	ld a, a                                          ; $5ec5: $7f
	inc e                                            ; $5ec6: $1c
	jp nz, $1811                                     ; $5ec7: $c2 $11 $18

	call nz, $0c11                                   ; $5eca: $c4 $11 $0c
	add $11                                          ; $5ecd: $c6 $11
	inc c                                            ; $5ecf: $0c
	ld a, a                                          ; $5ed0: $7f
	jr @-$03                                         ; $5ed1: $18 $fb

	jp nz, $120f                                     ; $5ed3: $c2 $0f $12

jr_02f_5ed6:
	add $0f                                          ; $5ed6: $c6 $0f
	ld b, $fb                                        ; $5ed8: $06 $fb
	ld [bc], a                                       ; $5eda: $02
	ei                                               ; $5edb: $fb
	jp nz, $1208                                     ; $5edc: $c2 $08 $12

	add $08                                          ; $5edf: $c6 $08
	ld b, $fb                                        ; $5ee1: $06 $fb
	ld [bc], a                                       ; $5ee3: $02
	nop                                              ; $5ee4: $00
	jr jr_02f_5ea9                                   ; $5ee5: $18 $c2

	ld a, [hl]                                       ; $5ee7: $7e
	dec e                                            ; $5ee8: $1d
	nop                                              ; $5ee9: $00
	and d                                            ; $5eea: $a2
	dec c                                            ; $5eeb: $0d
	jr jr_02f_5eb2                                   ; $5eec: $18 $c4

	dec c                                            ; $5eee: $0d
	inc c                                            ; $5eef: $0c
	add $0d                                          ; $5ef0: $c6 $0d
	inc c                                            ; $5ef2: $0c
	jp nz, $1808                                     ; $5ef3: $c2 $08 $18

	ld a, [hl]                                       ; $5ef6: $7e
	nop                                              ; $5ef7: $00
	pop hl                                           ; $5ef8: $e1
	ld d, b                                          ; $5ef9: $50
	ld hl, $300d                                     ; $5efa: $21 $0d $30
	call nz, $180d                                   ; $5efd: $c4 $0d $18
	add $0d                                          ; $5f00: $c6 $0d
	jr @+$01                                         ; $5f02: $18 $ff

	ret nc                                           ; $5f04: $d0

jr_02f_5f05:
	ld h, h                                          ; $5f05: $64
	nop                                              ; $5f06: $00
	jr jr_02f_5f05                                   ; $5f07: $18 $fc

	ei                                               ; $5f09: $fb
	ld e, $14                                        ; $5f0a: $1e $14
	ld a, [hl+]                                      ; $5f0c: $2a
	ld [bc], a                                       ; $5f0d: $02
	inc hl                                           ; $5f0e: $23
	ld [bc], a                                       ; $5f0f: $02
	ld [hl+], a                                      ; $5f10: $22
	ld [$0822], sp                                   ; $5f11: $08 $22 $08
	ld hl, $fb08                                     ; $5f14: $21 $08 $fb
	inc bc                                           ; $5f17: $03
	ei                                               ; $5f18: $fb
	ld [hl+], a                                      ; $5f19: $22
	ld [$0821], sp                                   ; $5f1a: $08 $21 $08
	ld hl, $2a04                                     ; $5f1d: $21 $04 $2a
	ld [bc], a                                       ; $5f20: $02
	ld a, [hl+]                                      ; $5f21: $2a
	ld [bc], a                                       ; $5f22: $02
	ei                                               ; $5f23: $fb
	ld [bc], a                                       ; $5f24: $02
	db $fc                                           ; $5f25: $fc
	inc bc                                           ; $5f26: $03
	ld e, $14                                        ; $5f27: $1e $14
	ld a, [hl+]                                      ; $5f29: $2a
	ld [bc], a                                       ; $5f2a: $02
	inc hl                                           ; $5f2b: $23
	ld [bc], a                                       ; $5f2c: $02
	ld [hl+], a                                      ; $5f2d: $22
	ld [$0822], sp                                   ; $5f2e: $08 $22 $08
	ld hl, $1408                                     ; $5f31: $21 $08 $14
	inc d                                            ; $5f34: $14
	ld a, [hl+]                                      ; $5f35: $2a
	ld [bc], a                                       ; $5f36: $02
	ld [hl+], a                                      ; $5f37: $22
	ld [bc], a                                       ; $5f38: $02
	ld [hl+], a                                      ; $5f39: $22
	ld [$0800], sp                                   ; $5f3a: $08 $00 $08
	ld hl, $fb08                                     ; $5f3d: $21 $08 $fb
	ld e, $08                                        ; $5f40: $1e $08
	ld a, [hl+]                                      ; $5f42: $2a
	ld [$0822], sp                                   ; $5f43: $08 $22 $08
	ei                                               ; $5f46: $fb
	inc bc                                           ; $5f47: $03
	ld e, $08                                        ; $5f48: $1e $08
	ld a, [hl+]                                      ; $5f4a: $2a
	ld [$0823], sp                                   ; $5f4b: $08 $23 $08
	ei                                               ; $5f4e: $fb
	jr nc, @+$0a                                     ; $5f4f: $30 $08

	cpl                                              ; $5f51: $2f
	ld [$082f], sp                                   ; $5f52: $08 $2f $08
	ei                                               ; $5f55: $fb
	ld c, $be                                        ; $5f56: $0e $be
	ld [$2223], sp                                   ; $5f58: $08 $23 $22
	ld hl, $2021                                     ; $5f5b: $21 $21 $20
	jr nz, @-$40                                     ; $5f5e: $20 $be

	ei                                               ; $5f60: $fb
	ld e, $14                                        ; $5f61: $1e $14
	ld a, [hl+]                                      ; $5f63: $2a
	ld [bc], a                                       ; $5f64: $02
	inc hl                                           ; $5f65: $23
	ld [bc], a                                       ; $5f66: $02
	ld [hl+], a                                      ; $5f67: $22
	ld [$0822], sp                                   ; $5f68: $08 $22 $08
	ld hl, $fb08                                     ; $5f6b: $21 $08 $fb
	inc bc                                           ; $5f6e: $03
	ei                                               ; $5f6f: $fb
	ld [hl+], a                                      ; $5f70: $22
	ld [$0821], sp                                   ; $5f71: $08 $21 $08
	inc hl                                           ; $5f74: $23
	inc b                                            ; $5f75: $04
	ld a, [hl+]                                      ; $5f76: $2a
	ld [bc], a                                       ; $5f77: $02
	ld a, [hl+]                                      ; $5f78: $2a
	ld [bc], a                                       ; $5f79: $02
	ei                                               ; $5f7a: $fb
	ld [bc], a                                       ; $5f7b: $02
	ei                                               ; $5f7c: $fb
	ld e, $14                                        ; $5f7d: $1e $14
	ld a, [hl+]                                      ; $5f7f: $2a
	ld [bc], a                                       ; $5f80: $02
	inc hl                                           ; $5f81: $23
	ld [bc], a                                       ; $5f82: $02
	ld [hl+], a                                      ; $5f83: $22
	ld [$0822], sp                                   ; $5f84: $08 $22 $08
	ld hl, $fb08                                     ; $5f87: $21 $08 $fb
	ld [bc], a                                       ; $5f8a: $02
	ei                                               ; $5f8b: $fb
	ld e, $14                                        ; $5f8c: $1e $14
	ld a, [hl+]                                      ; $5f8e: $2a
	ld [bc], a                                       ; $5f8f: $02
	inc hl                                           ; $5f90: $23
	ld [bc], a                                       ; $5f91: $02
	ld [hl+], a                                      ; $5f92: $22
	ld [$0822], sp                                   ; $5f93: $08 $22 $08
	ld hl, $fb08                                     ; $5f96: $21 $08 $fb
	ld [bc], a                                       ; $5f99: $02
	ret nc                                           ; $5f9a: $d0

	ld d, b                                          ; $5f9b: $50
	ld e, $60                                        ; $5f9c: $1e $60
	rst $38                                          ; $5f9e: $ff
	or h                                             ; $5f9f: $b4
	ld d, b                                          ; $5fa0: $50
	add c                                            ; $5fa1: $81
	nop                                              ; $5fa2: $00
	ld [hl], d                                       ; $5fa3: $72
	ld e, $0c                                        ; $5fa4: $1e $0c
	jr nz, jr_02f_5fb4                               ; $5fa6: $20 $0c

	ret z                                            ; $5fa8: $c8

	ld [hl+], a                                      ; $5fa9: $22
	ld [de], a                                       ; $5faa: $12
	jp nz, $0622                                     ; $5fab: $c2 $22 $06

	rst JumpTable                                          ; $5fae: $c7
	jr nz, jr_02f_5fbd                               ; $5faf: $20 $0c

	ret z                                            ; $5fb1: $c8

	ld [hl+], a                                      ; $5fb2: $22
	inc c                                            ; $5fb3: $0c

jr_02f_5fb4:
	ret z                                            ; $5fb4: $c8

	daa                                              ; $5fb5: $27
	ld [de], a                                       ; $5fb6: $12
	jp nz, $0627                                     ; $5fb7: $c2 $27 $06

	ret                                              ; $5fba: $c9


	ld [hl+], a                                      ; $5fbb: $22
	inc c                                            ; $5fbc: $0c

jr_02f_5fbd:
	jp z, $0c24                                      ; $5fbd: $ca $24 $0c

	pop hl                                           ; $5fc0: $e1
	ld c, e                                          ; $5fc1: $4b
	ld h, c                                          ; $5fc2: $61
	jr z, jr_02f_5fdd                                ; $5fc3: $28 $18

	ld a, l                                          ; $5fc5: $7d
	ld bc, $21c6                                     ; $5fc6: $01 $c6 $21
	inc c                                            ; $5fc9: $0c
	ld a, l                                          ; $5fca: $7d
	nop                                              ; $5fcb: $00
	jp z, $0c25                                      ; $5fcc: $ca $25 $0c

	pop hl                                           ; $5fcf: $e1
	ld c, b                                          ; $5fd0: $48
	ld h, c                                          ; $5fd1: $61
	ld a, [hl+]                                      ; $5fd2: $2a
	inc h                                            ; $5fd3: $24
	rst JumpTable                                          ; $5fd4: $c7
	cpl                                              ; $5fd5: $2f
	inc c                                            ; $5fd6: $0c
	or h                                             ; $5fd7: $b4
	add d                                            ; $5fd8: $82
	add c                                            ; $5fd9: $81
	ld bc, $2572                                     ; $5fda: $01 $72 $25

jr_02f_5fdd:
	inc c                                            ; $5fdd: $0c
	ret z                                            ; $5fde: $c8

	dec h                                            ; $5fdf: $25
	inc c                                            ; $5fe0: $0c
	jp nz, $0c25                                     ; $5fe1: $c2 $25 $0c

	jp nc, $20cc                                     ; $5fe4: $d2 $cc $20

	inc c                                            ; $5fe7: $0c

jr_02f_5fe8:
	call nz, $0c20                                   ; $5fe8: $c4 $20 $0c
	call z, $0c20                                    ; $5feb: $cc $20 $0c
	call nz, $0c20                                   ; $5fee: $c4 $20 $0c
	call z, $0620                                    ; $5ff1: $cc $20 $06
	call nz, $0620                                   ; $5ff4: $c4 $20 $06
	pop de                                           ; $5ff7: $d1
	sla e                                            ; $5ff8: $cb $23
	ld b, $c3                                        ; $5ffa: $06 $c3
	inc hl                                           ; $5ffc: $23
	ld b, $cb                                        ; $5ffd: $06 $cb
	inc hl                                           ; $5fff: $23
	inc c                                            ; $6000: $0c
	jp $0c23                                         ; $6001: $c3 $23 $0c


	sla e                                            ; $6004: $cb $23
	inc c                                            ; $6006: $0c
	jp $0c23                                         ; $6007: $c3 $23 $0c


	sla e                                            ; $600a: $cb $23
	inc c                                            ; $600c: $0c
	jp $0c23                                         ; $600d: $c3 $23 $0c


	sla e                                            ; $6010: $cb $23
	ld b, $c3                                        ; $6012: $06 $c3
	inc hl                                           ; $6014: $23
	ld b, $d1                                        ; $6015: $06 $d1
	sub b                                            ; $6017: $90
	add $72                                          ; $6018: $c6 $72
	ld [hl+], a                                      ; $601a: $22
	inc c                                            ; $601b: $0c
	jp nz, $0c22                                     ; $601c: $c2 $22 $0c

	nop                                              ; $601f: $00
	jr jr_02f_5fe8                                   ; $6020: $18 $c6

	ld e, $12                                        ; $6022: $1e $12
	jp nz, $061e                                     ; $6024: $c2 $1e $06

	add $20                                          ; $6027: $c6 $20
	jr @-$01                                         ; $6029: $18 $fd

	pop bc                                           ; $602b: $c1
	ld h, c                                          ; $602c: $61
	db $d3                                           ; $602d: $d3
	call z, $061c                                    ; $602e: $cc $1c $06
	call nz, $061c                                   ; $6031: $c4 $1c $06
	call z, $0c1c                                    ; $6034: $cc $1c $0c
	call nz, $0c1c                                   ; $6037: $c4 $1c $0c
	ld a, [hl]                                       ; $603a: $7e
	dec e                                            ; $603b: $1d
	ld b, $a1                                        ; $603c: $06 $a1
	call z, $0c1c                                    ; $603e: $cc $1c $0c
	call nz, $0c1c                                   ; $6041: $c4 $1c $0c
	ld a, [hl]                                       ; $6044: $7e
	nop                                              ; $6045: $00
	and b                                            ; $6046: $a0
	call z, $0c1c                                    ; $6047: $cc $1c $0c
	call nz, $0c1c                                   ; $604a: $c4 $1c $0c
	call z, $061c                                    ; $604d: $cc $1c $06
	call nz, $061c                                   ; $6050: $c4 $1c $06
	pop de                                           ; $6053: $d1
	sub b                                            ; $6054: $90
	db $fd                                           ; $6055: $fd
	pop bc                                           ; $6056: $c1
	ld h, c                                          ; $6057: $61
	db $d3                                           ; $6058: $d3
	call z, $061c                                    ; $6059: $cc $1c $06
	call nz, $061c                                   ; $605c: $c4 $1c $06
	call z, $0c1c                                    ; $605f: $cc $1c $0c
	call nz, $0c1c                                   ; $6062: $c4 $1c $0c
	call z, $0c1c                                    ; $6065: $cc $1c $0c
	ld a, l                                          ; $6068: $7d
	nop                                              ; $6069: $00
	sub d                                            ; $606a: $92
	pop de                                           ; $606b: $d1
	ret z                                            ; $606c: $c8

	cp [hl]                                          ; $606d: $be
	ld b, $20                                        ; $606e: $06 $20
	inc hl                                           ; $6070: $23
	dec h                                            ; $6071: $25
	jr z, @-$40                                      ; $6072: $28 $be

	add $25                                          ; $6074: $c6 $25
	ld b, $28                                        ; $6076: $06 $28
	ld b, $c4                                        ; $6078: $06 $c4
	inc l                                            ; $607a: $2c
	ld b, $c6                                        ; $607b: $06 $c6
	cpl                                              ; $607d: $2f
	ld b, $d1                                        ; $607e: $06 $d1
	sub d                                            ; $6080: $92
	call nz, $2e61                                   ; $6081: $c4 $61 $2e
	jr nc, @+$80                                     ; $6084: $30 $7e

	dec e                                            ; $6086: $1d
	nop                                              ; $6087: $00
	xor c                                            ; $6088: $a9
	jp $182e                                         ; $6089: $c3 $2e $18


	jp nz, $0c2e                                     ; $608c: $c2 $2e $0c

	pop bc                                           ; $608f: $c1
	ld l, $0c                                        ; $6090: $2e $0c
	ld a, [hl]                                       ; $6092: $7e
	nop                                              ; $6093: $00
	and b                                            ; $6094: $a0
	ret z                                            ; $6095: $c8

	jr nz, jr_02f_609e                               ; $6096: $20 $06

	jp $0620                                         ; $6098: $c3 $20 $06


	ret z                                            ; $609b: $c8

	jr nz, @+$0e                                     ; $609c: $20 $0c

jr_02f_609e:
	jp $0c20                                         ; $609e: $c3 $20 $0c


	ld a, [hl]                                       ; $60a1: $7e
	dec e                                            ; $60a2: $1d
	ld b, $a0                                        ; $60a3: $06 $a0
	ret z                                            ; $60a5: $c8

	jr nz, jr_02f_60b4                               ; $60a6: $20 $0c

	jp $0c20                                         ; $60a8: $c3 $20 $0c


	ld a, [hl]                                       ; $60ab: $7e
	nop                                              ; $60ac: $00
	and b                                            ; $60ad: $a0
	ret z                                            ; $60ae: $c8

	jr nz, @+$0e                                     ; $60af: $20 $0c

	jp $0c20                                         ; $60b1: $c3 $20 $0c


jr_02f_60b4:
	ret z                                            ; $60b4: $c8

	dec h                                            ; $60b5: $25
	ld b, $c3                                        ; $60b6: $06 $c3
	dec h                                            ; $60b8: $25
	ld b, $c9                                        ; $60b9: $06 $c9
	ld [hl+], a                                      ; $60bb: $22
	ld b, $c3                                        ; $60bc: $06 $c3
	ld [hl+], a                                      ; $60be: $22
	ld b, $c9                                        ; $60bf: $06 $c9
	ld [hl+], a                                      ; $60c1: $22
	inc c                                            ; $60c2: $0c
	jp $0c22                                         ; $60c3: $c3 $22 $0c


	ld a, [hl]                                       ; $60c6: $7e

jr_02f_60c7:
	dec e                                            ; $60c7: $1d
	ld b, $a0                                        ; $60c8: $06 $a0
	ret                                              ; $60ca: $c9


	ld [hl+], a                                      ; $60cb: $22
	inc c                                            ; $60cc: $0c
	jp $0c22                                         ; $60cd: $c3 $22 $0c


	ld a, [hl]                                       ; $60d0: $7e
	nop                                              ; $60d1: $00
	and b                                            ; $60d2: $a0
	ret                                              ; $60d3: $c9


	ld [hl+], a                                      ; $60d4: $22
	inc c                                            ; $60d5: $0c
	jp $0c22                                         ; $60d6: $c3 $22 $0c


	add $27                                          ; $60d9: $c6 $27
	ld b, $c2                                        ; $60db: $06 $c2
	daa                                              ; $60dd: $27
	ld b, $c7                                        ; $60de: $06 $c7
	dec h                                            ; $60e0: $25
	ld b, $c2                                        ; $60e1: $06 $c2
	dec h                                            ; $60e3: $25
	ld b, $c7                                        ; $60e4: $06 $c7
	dec h                                            ; $60e6: $25
	inc c                                            ; $60e7: $0c
	jp nz, $0c25                                     ; $60e8: $c2 $25 $0c

	ld a, [hl]                                       ; $60eb: $7e
	dec e                                            ; $60ec: $1d
	ld b, $a0                                        ; $60ed: $06 $a0
	rst JumpTable                                          ; $60ef: $c7
	dec h                                            ; $60f0: $25
	inc c                                            ; $60f1: $0c
	jp nz, $0c25                                     ; $60f2: $c2 $25 $0c

	ld a, [hl]                                       ; $60f5: $7e
	nop                                              ; $60f6: $00
	and b                                            ; $60f7: $a0
	rst JumpTable                                          ; $60f8: $c7
	dec h                                            ; $60f9: $25
	inc c                                            ; $60fa: $0c
	jp nz, $0c25                                     ; $60fb: $c2 $25 $0c

	rst JumpTable                                          ; $60fe: $c7
	dec h                                            ; $60ff: $25
	ld b, $c2                                        ; $6100: $06 $c2
	dec h                                            ; $6102: $25
	ld b, $d1                                        ; $6103: $06 $d1
	sub c                                            ; $6105: $91
	rst JumpTable                                          ; $6106: $c7
	ld [hl], d                                       ; $6107: $72
	ld [hl+], a                                      ; $6108: $22
	inc h                                            ; $6109: $24
	jp nz, $0c22                                     ; $610a: $c2 $22 $0c

	rst JumpTable                                          ; $610d: $c7
	jr nz, @+$14                                     ; $610e: $20 $12

	jp nz, $0620                                     ; $6110: $c2 $20 $06

	rst JumpTable                                          ; $6113: $c7
	ld [hl+], a                                      ; $6114: $22
	ld [de], a                                       ; $6115: $12
	jp nz, $0622                                     ; $6116: $c2 $22 $06

	ld a, [hl]                                       ; $6119: $7e
	dec e                                            ; $611a: $1d
	jr jr_02f_60c7                                   ; $611b: $18 $aa

	rst JumpTable                                          ; $611d: $c7
	jr nz, jr_02f_6144                               ; $611e: $20 $24

	jp nz, $0c20                                     ; $6120: $c2 $20 $0c

	rst JumpTable                                          ; $6123: $c7
	ld e, $12                                        ; $6124: $1e $12
	jp nz, $061e                                     ; $6126: $c2 $1e $06

	rst JumpTable                                          ; $6129: $c7
	jr nz, jr_02f_613e                               ; $612a: $20 $12

	jp nz, $0620                                     ; $612c: $c2 $20 $06

	rst JumpTable                                          ; $612f: $c7
	ld [hl+], a                                      ; $6130: $22
	ld [de], a                                       ; $6131: $12
	jp nz, $0622                                     ; $6132: $c2 $22 $06

	rst JumpTable                                          ; $6135: $c7
	jr nz, jr_02f_614a                               ; $6136: $20 $12

	jp nz, $0620                                     ; $6138: $c2 $20 $06

	rst JumpTable                                          ; $613b: $c7
	ld e, $12                                        ; $613c: $1e $12

jr_02f_613e:
	jp nz, $061e                                     ; $613e: $c2 $1e $06

	rst JumpTable                                          ; $6141: $c7
	jr nz, jr_02f_6174                               ; $6142: $20 $30

jr_02f_6144:
	jp nz, $1820                                     ; $6144: $c2 $20 $18

	pop bc                                           ; $6147: $c1
	jr nz, jr_02f_617a                               ; $6148: $20 $30

jr_02f_614a:
	jp nc, $c691                                     ; $614a: $d2 $91 $c6

	ld [hl], d                                       ; $614d: $72
	ld a, l                                          ; $614e: $7d
	ld [bc], a                                       ; $614f: $02
	nop                                              ; $6150: $00
	ld [de], a                                       ; $6151: $12
	ld a, [hl]                                       ; $6152: $7e
	dec e                                            ; $6153: $1d
	nop                                              ; $6154: $00
	and c                                            ; $6155: $a1
	ld [hl+], a                                      ; $6156: $22
	inc c                                            ; $6157: $0c

jr_02f_6158:
	inc h                                            ; $6158: $24
	inc c                                            ; $6159: $0c
	ld h, $30                                        ; $615a: $26 $30
	inc h                                            ; $615c: $24
	inc b                                            ; $615d: $04
	ld h, $04                                        ; $615e: $26 $04
	inc h                                            ; $6160: $24
	inc b                                            ; $6161: $04
	ld h, $06                                        ; $6162: $26 $06
	inc h                                            ; $6164: $24
	ld b, $22                                        ; $6165: $06 $22
	inc c                                            ; $6167: $0c
	ld [hl+], a                                      ; $6168: $22
	inc h                                            ; $6169: $24
	cp [hl]                                          ; $616a: $be
	inc c                                            ; $616b: $0c
	ld [hl+], a                                      ; $616c: $22
	inc h                                            ; $616d: $24
	ld h, $24                                        ; $616e: $26 $24
	ld [hl+], a                                      ; $6170: $22
	cp [hl]                                          ; $6171: $be
	ld a, [hl]                                       ; $6172: $7e
	dec e                                            ; $6173: $1d

jr_02f_6174:
	inc c                                            ; $6174: $0c
	xor d                                            ; $6175: $aa
	sub [hl]                                         ; $6176: $96
	ld h, h                                          ; $6177: $64
	rlca                                             ; $6178: $07
	inc h                                            ; $6179: $24

jr_02f_617a:
	add h                                            ; $617a: $84
	sub [hl]                                         ; $617b: $96
	nop                                              ; $617c: $00
	nop                                              ; $617d: $00
	ld a, l                                          ; $617e: $7d
	nop                                              ; $617f: $00
	or h                                             ; $6180: $b4
	ld e, d                                          ; $6181: $5a
	ld h, d                                          ; $6182: $62
	ld bc, $7d72                                     ; $6183: $01 $72 $7d
	ld b, $16                                        ; $6186: $06 $16
	ld b, $c2                                        ; $6188: $06 $c2
	ld d, $06                                        ; $618a: $16 $06
	ld a, [hl]                                       ; $618c: $7e
	rla                                              ; $618d: $17
	nop                                              ; $618e: $00
	xor e                                            ; $618f: $ab
	add $11                                          ; $6190: $c6 $11
	ld [$0412], sp                                   ; $6192: $08 $12 $04
	inc de                                           ; $6195: $13
	ld [$0412], sp                                   ; $6196: $08 $12 $04
	ld a, [hl]                                       ; $6199: $7e
	nop                                              ; $619a: $00
	and b                                            ; $619b: $a0
	ld de, $c206                                     ; $619c: $11 $06 $c2
	ld de, $d10c                                     ; $619f: $11 $0c $d1
	sub c                                            ; $61a2: $91
	ld a, l                                          ; $61a3: $7d
	nop                                              ; $61a4: $00
	ret                                              ; $61a5: $c9


	ld de, $c406                                     ; $61a6: $11 $06 $c4
	ld de, $7e08                                     ; $61a9: $11 $08 $7e
	dec e                                            ; $61ac: $1d
	jr jr_02f_6158                                   ; $61ad: $18 $a9

	sub a                                            ; $61af: $97
	adc a                                            ; $61b0: $8f
	ld a, [de]                                       ; $61b1: $1a
	sub d                                            ; $61b2: $92
	ld a, [hl]                                       ; $61b3: $7e
	nop                                              ; $61b4: $00
	and b                                            ; $61b5: $a0
	sub a                                            ; $61b6: $97
	nop                                              ; $61b7: $00
	call nz, $0c1a                                   ; $61b8: $c4 $1a $0c
	pop bc                                           ; $61bb: $c1
	ld a, [de]                                       ; $61bc: $1a
	inc c                                            ; $61bd: $0c
	nop                                              ; $61be: $00
	jr @+$01                                         ; $61bf: $18 $ff

	call Call_02f_72d2                               ; $61c1: $cd $d2 $72
	add hl, de                                       ; $61c4: $19
	ld b, $c4                                        ; $61c5: $06 $c4
	add hl, de                                       ; $61c7: $19
	ld b, $cd                                        ; $61c8: $06 $cd
	add hl, de                                       ; $61ca: $19
	inc c                                            ; $61cb: $0c
	call nz, $0c19                                   ; $61cc: $c4 $19 $0c
	ld a, [hl]                                       ; $61cf: $7e
	dec e                                            ; $61d0: $1d
	nop                                              ; $61d1: $00
	and c                                            ; $61d2: $a1
	call $0c19                                       ; $61d3: $cd $19 $0c
	call nz, $0c19                                   ; $61d6: $c4 $19 $0c
	ld a, [hl]                                       ; $61d9: $7e
	nop                                              ; $61da: $00
	and b                                            ; $61db: $a0
	call $0c19                                       ; $61dc: $cd $19 $0c
	call nz, $0c19                                   ; $61df: $c4 $19 $0c
	call $0619                                       ; $61e2: $cd $19 $06
	call nz, $0619                                   ; $61e5: $c4 $19 $06
	db $d3                                           ; $61e8: $d3
	call $0617                                       ; $61e9: $cd $17 $06
	call nz, $0617                                   ; $61ec: $c4 $17 $06
	call $0c17                                       ; $61ef: $cd $17 $0c
	call nz, $0c17                                   ; $61f2: $c4 $17 $0c
	call $1d7e                                       ; $61f5: $cd $7e $1d
	ld b, $a1                                        ; $61f8: $06 $a1
	rla                                              ; $61fa: $17
	inc c                                            ; $61fb: $0c
	call nz, $0c17                                   ; $61fc: $c4 $17 $0c
	ld a, [hl]                                       ; $61ff: $7e
	nop                                              ; $6200: $00
	and b                                            ; $6201: $a0
	call $0c17                                       ; $6202: $cd $17 $0c
	call nz, $0c17                                   ; $6205: $c4 $17 $0c
	call $061b                                       ; $6208: $cd $1b $06
	call nz, $061b                                   ; $620b: $c4 $1b $06
	jp nc, $19cd                                     ; $620e: $d2 $cd $19

	ld b, $c4                                        ; $6211: $06 $c4
	add hl, de                                       ; $6213: $19
	ld b, $cd                                        ; $6214: $06 $cd
	add hl, de                                       ; $6216: $19
	inc c                                            ; $6217: $0c
	call nz, $0c19                                   ; $6218: $c4 $19 $0c
	ld a, [hl]                                       ; $621b: $7e
	dec e                                            ; $621c: $1d
	ld b, $a1                                        ; $621d: $06 $a1
	call $0c19                                       ; $621f: $cd $19 $0c
	call nz, $0c19                                   ; $6222: $c4 $19 $0c
	ld a, [hl]                                       ; $6225: $7e
	nop                                              ; $6226: $00
	and b                                            ; $6227: $a0
	call $0c19                                       ; $6228: $cd $19 $0c
	call nz, $0c19                                   ; $622b: $c4 $19 $0c
	call $061e                                       ; $622e: $cd $1e $06
	call nz, $061e                                   ; $6231: $c4 $1e $06
	db $fd                                           ; $6234: $fd
	or h                                             ; $6235: $b4
	ld d, b                                          ; $6236: $50
	or c                                             ; $6237: $b1
	ld bc, $7e72                                     ; $6238: $01 $72 $7e
	dec e                                            ; $623b: $1d
	ld [$22aa], sp                                   ; $623c: $08 $aa $22
	inc c                                            ; $623f: $0c
	inc h                                            ; $6240: $24
	inc c                                            ; $6241: $0c
	jp z, $1225                                      ; $6242: $ca $25 $12

	call nz, $0625                                   ; $6245: $c4 $25 $06
	jp z, $0c24                                      ; $6248: $ca $24 $0c

	sla l                                            ; $624b: $cb $25
	inc c                                            ; $624d: $0c
	sla h                                            ; $624e: $cb $24
	ld [de], a                                       ; $6250: $12
	call nz, $0624                                   ; $6251: $c4 $24 $06
	sla l                                            ; $6254: $cb $25
	inc c                                            ; $6256: $0c
	sla a                                            ; $6257: $cb $27
	inc c                                            ; $6259: $0c
	pop hl                                           ; $625a: $e1
	ld c, e                                          ; $625b: $4b
	or c                                             ; $625c: $b1
	dec h                                            ; $625d: $25
	inc c                                            ; $625e: $0c
	ret                                              ; $625f: $c9


	inc hl                                           ; $6260: $23
	inc c                                            ; $6261: $0c
	sla l                                            ; $6262: $cb $25
	inc c                                            ; $6264: $0c
	ret                                              ; $6265: $c9


	jr z, jr_02f_6274                                ; $6266: $28 $0c

	pop hl                                           ; $6268: $e1
	ld c, b                                          ; $6269: $48
	sub c                                            ; $626a: $91
	daa                                              ; $626b: $27
	inc c                                            ; $626c: $0c
	jp z, $0c25                                      ; $626d: $ca $25 $0c

	ret                                              ; $6270: $c9


	daa                                              ; $6271: $27
	inc c                                            ; $6272: $0c
	ld a, [hl]                                       ; $6273: $7e

jr_02f_6274:
	dec e                                            ; $6274: $1d
	nop                                              ; $6275: $00
	xor d                                            ; $6276: $aa
	ret                                              ; $6277: $c9


	ld a, [hl+]                                      ; $6278: $2a
	inc c                                            ; $6279: $0c
	or h                                             ; $627a: $b4
	add d                                            ; $627b: $82
	sub c                                            ; $627c: $91
	ld bc, $7e72                                     ; $627d: $01 $72 $7e
	nop                                              ; $6280: $00
	and b                                            ; $6281: $a0

jr_02f_6282:
	add hl, hl                                       ; $6282: $29
	inc c                                            ; $6283: $0c
	ret z                                            ; $6284: $c8

	add hl, hl                                       ; $6285: $29
	inc c                                            ; $6286: $0c
	jp nz, $0c29                                     ; $6287: $c2 $29 $0c

	nop                                              ; $628a: $00
	inc a                                            ; $628b: $3c
	db $d3                                           ; $628c: $d3
	sla [hl]                                         ; $628d: $cb $26
	ld b, $c3                                        ; $628f: $06 $c3
	ld h, $06                                        ; $6291: $26 $06
	sla [hl]                                         ; $6293: $cb $26
	inc c                                            ; $6295: $0c
	jp $0c26                                         ; $6296: $c3 $26 $0c


	sla [hl]                                         ; $6299: $cb $26
	inc c                                            ; $629b: $0c
	jp $0c26                                         ; $629c: $c3 $26 $0c


	sla [hl]                                         ; $629f: $cb $26
	inc c                                            ; $62a1: $0c
	jp $0c26                                         ; $62a2: $c3 $26 $0c


	sla [hl]                                         ; $62a5: $cb $26
	ld b, $c3                                        ; $62a7: $06 $c3
	ld h, $06                                        ; $62a9: $26 $06
	pop de                                           ; $62ab: $d1
	pop de                                           ; $62ac: $d1
	sub c                                            ; $62ad: $91

jr_02f_62ae:
	bit 6, d                                         ; $62ae: $cb $72
	dec h                                            ; $62b0: $25
	inc c                                            ; $62b1: $0c
	call nz, $0c25                                   ; $62b2: $c4 $25 $0c
	nop                                              ; $62b5: $00
	jr jr_02f_6282                                   ; $62b6: $18 $ca

	ld [hl+], a                                      ; $62b8: $22
	ld [de], a                                       ; $62b9: $12
	call nz, $0622                                   ; $62ba: $c4 $22 $06
	ld a, [hl]                                       ; $62bd: $7e
	dec e                                            ; $62be: $1d
	inc c                                            ; $62bf: $0c
	xor c                                            ; $62c0: $a9
	jp z, $1823                                      ; $62c1: $ca $23 $18

	ld a, [hl]                                       ; $62c4: $7e
	nop                                              ; $62c5: $00
	and b                                            ; $62c6: $a0
	db $fd                                           ; $62c7: $fd
	jr nc, jr_02f_632e                               ; $62c8: $30 $64

	sla l                                            ; $62ca: $cb $25
	ld [de], a                                       ; $62cc: $12
	call nz, $0625                                   ; $62cd: $c4 $25 $06
	sla e                                            ; $62d0: $cb $23
	ld [de], a                                       ; $62d2: $12
	call nz, $0623                                   ; $62d3: $c4 $23 $06
	sla d                                            ; $62d6: $cb $22
	ld [de], a                                       ; $62d8: $12
	call nz, $0622                                   ; $62d9: $c4 $22 $06
	sla e                                            ; $62dc: $cb $23
	jr nc, @-$3a                                     ; $62de: $30 $c4

	inc hl                                           ; $62e0: $23

jr_02f_62e1:
	jr jr_02f_62ae                                   ; $62e1: $18 $cb

	ld [hl+], a                                      ; $62e3: $22
	ld [de], a                                       ; $62e4: $12
	call nz, $0622                                   ; $62e5: $c4 $22 $06
	sla e                                            ; $62e8: $cb $23
	ld [de], a                                       ; $62ea: $12
	call nz, $0623                                   ; $62eb: $c4 $23 $06
	pop de                                           ; $62ee: $d1
	sub c                                            ; $62ef: $91
	ld [hl], d                                       ; $62f0: $72
	db $fd                                           ; $62f1: $fd
	jr nc, @+$66                                     ; $62f2: $30 $64

	sla l                                            ; $62f4: $cb $25
	ld [de], a                                       ; $62f6: $12
	call nz, $0625                                   ; $62f7: $c4 $25 $06
	sla d                                            ; $62fa: $cb $22
	ld [de], a                                       ; $62fc: $12
	call nz, $0622                                   ; $62fd: $c4 $22 $06
	sla l                                            ; $6300: $cb $25
	ld [de], a                                       ; $6302: $12
	call nz, $0625                                   ; $6303: $c4 $25 $06
	ret z                                            ; $6306: $c8

	ld a, [hl+]                                      ; $6307: $2a
	ld [de], a                                       ; $6308: $12
	call nz, $062a                                   ; $6309: $c4 $2a $06
	ret                                              ; $630c: $c9


	jr z, @+$26                                      ; $630d: $28 $24

	call nz, $0c28                                   ; $630f: $c4 $28 $0c
	sla l                                            ; $6312: $cb $25
	ld [de], a                                       ; $6314: $12
	call nz, $0625                                   ; $6315: $c4 $25 $06
	ret z                                            ; $6318: $c8

	ld h, $12                                        ; $6319: $26 $12
	jp nz, $0626                                     ; $631b: $c2 $26 $06

	pop de                                           ; $631e: $d1
	sub c                                            ; $631f: $91
	pop de                                           ; $6320: $d1
	jp z, $2561                                      ; $6321: $ca $61 $25

	inc h                                            ; $6324: $24
	jp $0c25                                         ; $6325: $c3 $25 $0c


	jp z, $1223                                      ; $6328: $ca $23 $12

	jp $0623                                         ; $632b: $c3 $23 $06


jr_02f_632e:
	jp z, $1225                                      ; $632e: $ca $25 $12

jr_02f_6331:
	jp $0625                                         ; $6331: $c3 $25 $06


	ld a, [hl]                                       ; $6334: $7e
	dec e                                            ; $6335: $1d
	jr jr_02f_62e1                                   ; $6336: $18 $a9

	jp z, $2423                                      ; $6338: $ca $23 $24

	jp $0c23                                         ; $633b: $c3 $23 $0c


	jp z, $1222                                      ; $633e: $ca $22 $12

	jp $0622                                         ; $6341: $c3 $22 $06


	jp z, $1223                                      ; $6344: $ca $23 $12

	jp $0623                                         ; $6347: $c3 $23 $06


	jp z, $1225                                      ; $634a: $ca $25 $12

	jp $0625                                         ; $634d: $c3 $25 $06


	jp z, $1223                                      ; $6350: $ca $23 $12

	jp $0623                                         ; $6353: $c3 $23 $06


	jp z, $1222                                      ; $6356: $ca $22 $12

	jp $0622                                         ; $6359: $c3 $22 $06


	jp z, $3023                                      ; $635c: $ca $23 $30

	jp $1823                                         ; $635f: $c3 $23 $18


	jp z, $1222                                      ; $6362: $ca $22 $12

	jp $0622                                         ; $6365: $c3 $22 $06


	jp z, $1223                                      ; $6368: $ca $23 $12

	jp $0623                                         ; $636b: $c3 $23 $06


	pop de                                           ; $636e: $d1
	sub c                                            ; $636f: $91
	jp z, $2572                                      ; $6370: $ca $72 $25

jr_02f_6373:
	inc h                                            ; $6373: $24
	call nz, $0c25                                   ; $6374: $c4 $25 $0c
	ret z                                            ; $6377: $c8

	inc hl                                           ; $6378: $23
	ld [de], a                                       ; $6379: $12
	jp nz, $0623                                     ; $637a: $c2 $23 $06

	ret                                              ; $637d: $c9


	dec h                                            ; $637e: $25
	ld [de], a                                       ; $637f: $12
	jp $0625                                         ; $6380: $c3 $25 $06


	ld a, [hl]                                       ; $6383: $7e
	dec e                                            ; $6384: $1d
	jr jr_02f_6331                                   ; $6385: $18 $aa

	ret z                                            ; $6387: $c8

	inc hl                                           ; $6388: $23
	inc h                                            ; $6389: $24
	jp nz, $0c23                                     ; $638a: $c2 $23 $0c

	ret                                              ; $638d: $c9


	ld [hl+], a                                      ; $638e: $22
	ld [de], a                                       ; $638f: $12
	jp $0622                                         ; $6390: $c3 $22 $06


	ret z                                            ; $6393: $c8

	inc hl                                           ; $6394: $23
	ld [de], a                                       ; $6395: $12
	jp nz, $0623                                     ; $6396: $c2 $23 $06

	jp z, $1225                                      ; $6399: $ca $25 $12

	jp $0625                                         ; $639c: $c3 $25 $06


	ret z                                            ; $639f: $c8

	inc hl                                           ; $63a0: $23
	ld [de], a                                       ; $63a1: $12
	jp nz, $0623                                     ; $63a2: $c2 $23 $06

	jp z, $1222                                      ; $63a5: $ca $22 $12

	jp $0622                                         ; $63a8: $c3 $22 $06


	ret z                                            ; $63ab: $c8

jr_02f_63ac:
	inc hl                                           ; $63ac: $23
	jr nc, @-$3c                                     ; $63ad: $30 $c2

	inc hl                                           ; $63af: $23
	jr jr_02f_6373                                   ; $63b0: $18 $c1

	inc hl                                           ; $63b2: $23
	jr nc, @-$2d                                     ; $63b3: $30 $d1

	sub c                                            ; $63b5: $91
	call z, $2272                                    ; $63b6: $cc $72 $22
	inc c                                            ; $63b9: $0c
	inc h                                            ; $63ba: $24
	inc c                                            ; $63bb: $0c
	ld a, [hl]                                       ; $63bc: $7e
	dec e                                            ; $63bd: $1d
	inc c                                            ; $63be: $0c
	and b                                            ; $63bf: $a0
	jp z, $2426                                      ; $63c0: $ca $26 $24

	ld a, [hl]                                       ; $63c3: $7e
	dec e                                            ; $63c4: $1d
	nop                                              ; $63c5: $00
	and b                                            ; $63c6: $a0
	call nz, $0c26                                   ; $63c7: $c4 $26 $0c
	ld a, [hl]                                       ; $63ca: $7e
	nop                                              ; $63cb: $00
	and b                                            ; $63cc: $a0
	call z, $0424                                    ; $63cd: $cc $24 $04
	ld h, $04                                        ; $63d0: $26 $04
	inc h                                            ; $63d2: $24
	inc b                                            ; $63d3: $04
	ld h, $06                                        ; $63d4: $26 $06
	inc h                                            ; $63d6: $24
	ld b, $22                                        ; $63d7: $06 $22
	inc c                                            ; $63d9: $0c
	call nz, $0c22                                   ; $63da: $c4 $22 $0c
	nop                                              ; $63dd: $00
	jr jr_02f_63ac                                   ; $63de: $18 $cc

	cp [hl]                                          ; $63e0: $be
	inc c                                            ; $63e1: $0c
	ld [hl+], a                                      ; $63e2: $22
	inc h                                            ; $63e3: $24
	ld h, $24                                        ; $63e4: $26 $24
	ld [hl+], a                                      ; $63e6: $22
	cp [hl]                                          ; $63e7: $be
	ld a, [hl]                                       ; $63e8: $7e
	dec e                                            ; $63e9: $1d
	inc c                                            ; $63ea: $0c
	xor d                                            ; $63eb: $aa
	sub [hl]                                         ; $63ec: $96
	ld h, h                                          ; $63ed: $64
	rlca                                             ; $63ee: $07
	inc h                                            ; $63ef: $24

jr_02f_63f0:
	sub [hl]                                         ; $63f0: $96
	sub [hl]                                         ; $63f1: $96
	nop                                              ; $63f2: $00
	nop                                              ; $63f3: $00
	or h                                             ; $63f4: $b4
	ld e, d                                          ; $63f5: $5a
	pop bc                                           ; $63f6: $c1
	ld [bc], a                                       ; $63f7: $02
	ld [hl], d                                       ; $63f8: $72
	ld [hl+], a                                      ; $63f9: $22
	ld b, $c4                                        ; $63fa: $06 $c4
	ld [hl+], a                                      ; $63fc: $22
	ld b, $7e                                        ; $63fd: $06 $7e
	rla                                              ; $63ff: $17
	nop                                              ; $6400: $00
	xor e                                            ; $6401: $ab
	call z, $081d                                    ; $6402: $cc $1d $08
	ld e, $04                                        ; $6405: $1e $04
	rra                                              ; $6407: $1f
	ld [$041e], sp                                   ; $6408: $08 $1e $04
	ld a, [hl]                                       ; $640b: $7e
	nop                                              ; $640c: $00
	and b                                            ; $640d: $a0
	dec e                                            ; $640e: $1d
	ld b, $c2                                        ; $640f: $06 $c2
	dec e                                            ; $6411: $1d
	inc c                                            ; $6412: $0c
	sub c                                            ; $6413: $91
	sla d                                            ; $6414: $cb $22
	ld b, $c4                                        ; $6416: $06 $c4
	ld [hl+], a                                      ; $6418: $22
	ld [$1d7e], sp                                   ; $6419: $08 $7e $1d
	jr @-$54                                         ; $641c: $18 $aa

	sub a                                            ; $641e: $97
	adc a                                            ; $641f: $8f
	inc h                                            ; $6420: $24
	sub d                                            ; $6421: $92
	ld a, [hl]                                       ; $6422: $7e
	nop                                              ; $6423: $00
	and b                                            ; $6424: $a0
	sub a                                            ; $6425: $97
	nop                                              ; $6426: $00
	call nz, $0c24                                   ; $6427: $c4 $24 $0c
	pop bc                                           ; $642a: $c1
	inc h                                            ; $642b: $24
	inc c                                            ; $642c: $0c
	nop                                              ; $642d: $00
	jr @+$01                                         ; $642e: $18 $ff

	pop de                                           ; $6430: $d1
	sla l                                            ; $6431: $cb $25
	inc h                                            ; $6433: $24
	call nz, $0c25                                   ; $6434: $c4 $25 $0c
	sla e                                            ; $6437: $cb $23
	ld [de], a                                       ; $6439: $12
	call nz, $0623                                   ; $643a: $c4 $23 $06
	sla l                                            ; $643d: $cb $25
	ld [de], a                                       ; $643f: $12
	call nz, $0625                                   ; $6440: $c4 $25 $06
	ld a, [hl]                                       ; $6443: $7e
	dec e                                            ; $6444: $1d
	jr jr_02f_63f0                                   ; $6445: $18 $a9

	sla e                                            ; $6447: $cb $23
	inc h                                            ; $6449: $24
	call nz, $0c23                                   ; $644a: $c4 $23 $0c
	sla d                                            ; $644d: $cb $22
	ld [de], a                                       ; $644f: $12
	call nz, $0622                                   ; $6450: $c4 $22 $06
	sla e                                            ; $6453: $cb $23
	ld [de], a                                       ; $6455: $12
	call nz, $0623                                   ; $6456: $c4 $23 $06
	db $fd                                           ; $6459: $fd
	or h                                             ; $645a: $b4
	ld d, b                                          ; $645b: $50
	ld hl, $7218                                     ; $645c: $21 $18 $72
	nop                                              ; $645f: $00
	jr jr_02f_64e0                                   ; $6460: $18 $7e

	dec e                                            ; $6462: $1d
	inc c                                            ; $6463: $0c
	and b                                            ; $6464: $a0
	ld [de], a                                       ; $6465: $12
	inc h                                            ; $6466: $24
	call nz, $0612                                   ; $6467: $c4 $12 $06
	add $12                                          ; $646a: $c6 $12
	ld b, $c2                                        ; $646c: $06 $c2
	inc d                                            ; $646e: $14
	inc h                                            ; $646f: $24
	call nz, $0614                                   ; $6470: $c4 $14 $06
	add $14                                          ; $6473: $c6 $14
	ld b, $e1                                        ; $6475: $06 $e1
	ld c, e                                          ; $6477: $4b
	ld hl, $2415                                     ; $6478: $21 $15 $24
	call nz, $0615                                   ; $647b: $c4 $15 $06
	add $15                                          ; $647e: $c6 $15
	ld b, $b4                                        ; $6480: $06 $b4
	ld c, b                                          ; $6482: $48
	ld hl, $171c                                     ; $6483: $21 $1c $17
	inc h                                            ; $6486: $24
	call nz, $0617                                   ; $6487: $c4 $17 $06
	add $17                                          ; $648a: $c6 $17
	ld b, $b4                                        ; $648c: $06 $b4
	add d                                            ; $648e: $82
	ld hl, $7218                                     ; $648f: $21 $18 $72
	ei                                               ; $6492: $fb
	db $fd                                           ; $6493: $fd
	sbc e                                            ; $6494: $9b
	ld h, l                                          ; $6495: $65
	ei                                               ; $6496: $fb
	ld [bc], a                                       ; $6497: $02
	pop de                                           ; $6498: $d1
	jp nz, $187f                                     ; $6499: $c2 $7f $18

	ld [hl], d                                       ; $649c: $72
	ld b, $0c                                        ; $649d: $06 $0c
	add $06                                          ; $649f: $c6 $06
	inc c                                            ; $64a1: $0c
	nop                                              ; $64a2: $00
	ld c, b                                          ; $64a3: $48
	ei                                               ; $64a4: $fb
	db $fd                                           ; $64a5: $fd
	ld a, e                                          ; $64a6: $7b
	ld h, l                                          ; $64a7: $65
	ei                                               ; $64a8: $fb
	inc bc                                           ; $64a9: $03
	db $fd                                           ; $64aa: $fd
	sbc e                                            ; $64ab: $9b
	ld h, l                                          ; $64ac: $65
	pop de                                           ; $64ad: $d1
	jp nz, $187f                                     ; $64ae: $c2 $7f $18

	ld [hl], d                                       ; $64b1: $72
	ei                                               ; $64b2: $fb
	db $fd                                           ; $64b3: $fd
	ld a, e                                          ; $64b4: $7b
	ld h, l                                          ; $64b5: $65
	ei                                               ; $64b6: $fb
	inc bc                                           ; $64b7: $03
	db $fd                                           ; $64b8: $fd
	sbc e                                            ; $64b9: $9b
	ld h, l                                          ; $64ba: $65
	pop de                                           ; $64bb: $d1
	jp nz, $187f                                     ; $64bc: $c2 $7f $18

	ld h, c                                          ; $64bf: $61
	ei                                               ; $64c0: $fb
	db $fd                                           ; $64c1: $fd
	ld a, e                                          ; $64c2: $7b
	ld h, l                                          ; $64c3: $65
	ei                                               ; $64c4: $fb
	inc bc                                           ; $64c5: $03
	db $fd                                           ; $64c6: $fd
	sbc e                                            ; $64c7: $9b
	ld h, l                                          ; $64c8: $65
	db $d3                                           ; $64c9: $d3
	ld a, a                                          ; $64ca: $7f
	jr @-$3a                                         ; $64cb: $18 $c4

	ld [hl], d                                       ; $64cd: $72
	ld a, l                                          ; $64ce: $7d
	ld [bc], a                                       ; $64cf: $02
	nop                                              ; $64d0: $00
	ld [bc], a                                       ; $64d1: $02
	dec h                                            ; $64d2: $25
	inc h                                            ; $64d3: $24
	add $25                                          ; $64d4: $c6 $25
	inc c                                            ; $64d6: $0c
	call nz, $1223                                   ; $64d7: $c4 $23 $12
	add $23                                          ; $64da: $c6 $23
	ld b, $c4                                        ; $64dc: $06 $c4
	dec h                                            ; $64de: $25
	ld [de], a                                       ; $64df: $12

jr_02f_64e0:
	add $25                                          ; $64e0: $c6 $25
	ld b, $7e                                        ; $64e2: $06 $7e
	dec e                                            ; $64e4: $1d
	inc c                                            ; $64e5: $0c
	and b                                            ; $64e6: $a0

jr_02f_64e7:
	call nz, $2423                                   ; $64e7: $c4 $23 $24
	add $23                                          ; $64ea: $c6 $23
	inc c                                            ; $64ec: $0c
	call nz, $1222                                   ; $64ed: $c4 $22 $12
	add $22                                          ; $64f0: $c6 $22
	ld b, $c4                                        ; $64f2: $06 $c4
	inc hl                                           ; $64f4: $23
	ld [de], a                                       ; $64f5: $12
	add $23                                          ; $64f6: $c6 $23
	ld b, $c4                                        ; $64f8: $06 $c4
	dec h                                            ; $64fa: $25
	ld [de], a                                       ; $64fb: $12
	add $25                                          ; $64fc: $c6 $25
	ld b, $c4                                        ; $64fe: $06 $c4
	inc hl                                           ; $6500: $23

jr_02f_6501:
	ld [de], a                                       ; $6501: $12
	add $23                                          ; $6502: $c6 $23
	ld b, $c4                                        ; $6504: $06 $c4
	ld [hl+], a                                      ; $6506: $22
	ld [de], a                                       ; $6507: $12
	add $22                                          ; $6508: $c6 $22
	ld b, $c4                                        ; $650a: $06 $c4
	inc hl                                           ; $650c: $23
	jr nc, @-$38                                     ; $650d: $30 $c6

	inc hl                                           ; $650f: $23
	ld d, $7d                                        ; $6510: $16 $7d
	nop                                              ; $6512: $00
	nop                                              ; $6513: $00
	jr nc, jr_02f_64e7                               ; $6514: $30 $d1

	ld a, a                                          ; $6516: $7f
	jr @-$3a                                         ; $6517: $18 $c4

	ld [hl], d                                       ; $6519: $72
	ld d, $0c                                        ; $651a: $16 $0c
	jr jr_02f_652a                                   ; $651c: $18 $0c

	ld a, [hl]                                       ; $651e: $7e
	dec e                                            ; $651f: $1d
	inc c                                            ; $6520: $0c
	and b                                            ; $6521: $a0
	ld a, [de]                                       ; $6522: $1a
	inc h                                            ; $6523: $24
	ld a, [hl]                                       ; $6524: $7e
	dec e                                            ; $6525: $1d
	nop                                              ; $6526: $00
	and b                                            ; $6527: $a0
	add $1a                                          ; $6528: $c6 $1a

jr_02f_652a:
	inc c                                            ; $652a: $0c
	ld a, [hl]                                       ; $652b: $7e
	nop                                              ; $652c: $00
	and b                                            ; $652d: $a0
	call nz, $0418                                   ; $652e: $c4 $18 $04
	ld a, [de]                                       ; $6531: $1a
	inc b                                            ; $6532: $04
	jr @+$06                                         ; $6533: $18 $04

	ld a, [de]                                       ; $6535: $1a
	ld b, $18                                        ; $6536: $06 $18
	ld b, $16                                        ; $6538: $06 $16
	inc c                                            ; $653a: $0c
	add $16                                          ; $653b: $c6 $16
	inc c                                            ; $653d: $0c
	nop                                              ; $653e: $00
	jr @-$3a                                         ; $653f: $18 $c4

	cp [hl]                                          ; $6541: $be
	inc c                                            ; $6542: $0c
	ld d, $18                                        ; $6543: $16 $18
	ld a, [de]                                       ; $6545: $1a
	jr jr_02f_655e                                   ; $6546: $18 $16

	cp [hl]                                          ; $6548: $be
	ld a, [hl]                                       ; $6549: $7e
	dec e                                            ; $654a: $1d
	inc c                                            ; $654b: $0c
	and b                                            ; $654c: $a0
	jr jr_02f_65b3                                   ; $654d: $18 $64

	ld a, [hl]                                       ; $654f: $7e
	dec e                                            ; $6550: $1d
	nop                                              ; $6551: $00
	and b                                            ; $6552: $a0
	add $18                                          ; $6553: $c6 $18
	ld [hl-], a                                      ; $6555: $32
	or h                                             ; $6556: $b4
	ld e, d                                          ; $6557: $5a
	ld b, c                                          ; $6558: $41
	jr jr_02f_65cd                                   ; $6559: $18 $72

	nop                                              ; $655b: $00
	ld b, d                                          ; $655c: $42
	ld a, [hl]                                       ; $655d: $7e

jr_02f_655e:
	dec e                                            ; $655e: $1d
	jr jr_02f_6501                                   ; $655f: $18 $a0

	call nz, $820a                                   ; $6561: $c4 $0a $82
	jp nz, $120a                                     ; $6564: $c2 $0a $12

	ld a, [hl]                                       ; $6567: $7e
	nop                                              ; $6568: $00
	and b                                            ; $6569: $a0
	add $0a                                          ; $656a: $c6 $0a
	jr jr_02f_65ec                                   ; $656c: $18 $7e

	rla                                              ; $656e: $17
	nop                                              ; $656f: $00
	and b                                            ; $6570: $a0
	jp nz, $0c16                                     ; $6571: $c2 $16 $0c

	ld a, [hl]                                       ; $6574: $7e
	nop                                              ; $6575: $00
	and b                                            ; $6576: $a0
	add $16                                          ; $6577: $c6 $16
	inc c                                            ; $6579: $0c
	rst $38                                          ; $657a: $ff
	pop de                                           ; $657b: $d1
	jp nz, $0606                                     ; $657c: $c2 $06 $06

	add $06                                          ; $657f: $c6 $06
	ld b, $c2                                        ; $6581: $06 $c2
	ld b, $0c                                        ; $6583: $06 $0c
	add $06                                          ; $6585: $c6 $06
	inc c                                            ; $6587: $0c
	jp nz, $0c06                                     ; $6588: $c2 $06 $0c

	add $06                                          ; $658b: $c6 $06
	inc c                                            ; $658d: $0c
	jp nz, $0c06                                     ; $658e: $c2 $06 $0c

	add $06                                          ; $6591: $c6 $06
	inc c                                            ; $6593: $0c

jr_02f_6594:
	jp nz, $0606                                     ; $6594: $c2 $06 $06

	add $06                                          ; $6597: $c6 $06
	ld b, $fd                                        ; $6599: $06 $fd
	pop de                                           ; $659b: $d1
	jp nz, $060d                                     ; $659c: $c2 $0d $06

	add $0d                                          ; $659f: $c6 $0d
	ld b, $c2                                        ; $65a1: $06 $c2
	dec c                                            ; $65a3: $0d
	inc c                                            ; $65a4: $0c
	add $0d                                          ; $65a5: $c6 $0d
	inc c                                            ; $65a7: $0c
	jp nz, $0c0d                                     ; $65a8: $c2 $0d $0c

	add $0d                                          ; $65ab: $c6 $0d
	inc c                                            ; $65ad: $0c
	jp nz, $0c0d                                     ; $65ae: $c2 $0d $0c

	add $0d                                          ; $65b1: $c6 $0d

jr_02f_65b3:
	inc c                                            ; $65b3: $0c
	jp nz, $060d                                     ; $65b4: $c2 $0d $06

	add $0d                                          ; $65b7: $c6 $0d
	ld b, $fd                                        ; $65b9: $06 $fd
	ret nc                                           ; $65bb: $d0

	ld d, b                                          ; $65bc: $50
	nop                                              ; $65bd: $00
	ld a, b                                          ; $65be: $78
	ret nc                                           ; $65bf: $d0

	ld c, e                                          ; $65c0: $4b
	nop                                              ; $65c1: $00
	jr nc, jr_02f_6594                               ; $65c2: $30 $d0

	ld c, b                                          ; $65c4: $48
	nop                                              ; $65c5: $00
	jr nc, @-$2e                                     ; $65c6: $30 $d0

	add d                                            ; $65c8: $82
	db $fd                                           ; $65c9: $fd
	rla                                              ; $65ca: $17
	ld h, [hl]                                       ; $65cb: $66
	db $fd                                           ; $65cc: $fd

jr_02f_65cd:
	rla                                              ; $65cd: $17
	ld h, [hl]                                       ; $65ce: $66
	inc d                                            ; $65cf: $14
	inc c                                            ; $65d0: $0c
	nop                                              ; $65d1: $00
	ld d, h                                          ; $65d2: $54
	ei                                               ; $65d3: $fb
	db $fd                                           ; $65d4: $fd
	ld l, $66                                        ; $65d5: $2e $66
	db $fd                                           ; $65d7: $fd
	rla                                              ; $65d8: $17
	ld h, [hl]                                       ; $65d9: $66
	ei                                               ; $65da: $fb
	ld [bc], a                                       ; $65db: $02
	ei                                               ; $65dc: $fb
	db $fd                                           ; $65dd: $fd
	ld l, $66                                        ; $65de: $2e $66
	db $fd                                           ; $65e0: $fd
	rla                                              ; $65e1: $17
	ld h, [hl]                                       ; $65e2: $66
	ei                                               ; $65e3: $fb
	ld [bc], a                                       ; $65e4: $02
	ei                                               ; $65e5: $fb
	db $fd                                           ; $65e6: $fd
	ld l, $66                                        ; $65e7: $2e $66
	db $fd                                           ; $65e9: $fd
	rla                                              ; $65ea: $17

jr_02f_65eb:
	ld h, [hl]                                       ; $65eb: $66

jr_02f_65ec:
	ei                                               ; $65ec: $fb
	ld [bc], a                                       ; $65ed: $02
	inc d                                            ; $65ee: $14
	inc c                                            ; $65ef: $0c
	nop                                              ; $65f0: $00
	or h                                             ; $65f1: $b4
	nop                                              ; $65f2: $00
	ret nz                                           ; $65f3: $c0

	nop                                              ; $65f4: $00

jr_02f_65f5:
	rst $38                                          ; $65f5: $ff
	nop                                              ; $65f6: $00
	ld h, e                                          ; $65f7: $63
	ret nc                                           ; $65f8: $d0

	ld e, d                                          ; $65f9: $5a
	nop                                              ; $65fa: $00
	ld b, d                                          ; $65fb: $42
	rrca                                             ; $65fc: $0f
	inc hl                                           ; $65fd: $23
	ei                                               ; $65fe: $fb
	jr z, jr_02f_6604                                ; $65ff: $28 $03

	ei                                               ; $6601: $fb
	rlca                                             ; $6602: $07
	ei                                               ; $6603: $fb

jr_02f_6604:
	daa                                              ; $6604: $27
	inc bc                                           ; $6605: $03
	ei                                               ; $6606: $fb
	ld a, [bc]                                       ; $6607: $0a
	ei                                               ; $6608: $fb
	ld h, $03                                        ; $6609: $26 $03
	ei                                               ; $660b: $fb
	ld a, [bc]                                       ; $660c: $0a
	ei                                               ; $660d: $fb
	rra                                              ; $660e: $1f
	inc bc                                           ; $660f: $03
	ei                                               ; $6610: $fb
	ld b, $20                                        ; $6611: $06 $20
	ld c, $00                                        ; $6613: $0e $00
	jr nc, @+$01                                     ; $6615: $30 $ff

	jr nz, @+$0e                                     ; $6617: $20 $0c

	ld [hl+], a                                      ; $6619: $22
	ld b, $22                                        ; $661a: $06 $22
	ld b, $22                                        ; $661c: $06 $22
	inc c                                            ; $661e: $0c
	jr nz, @+$0e                                     ; $661f: $20 $0c

	ld [hl+], a                                      ; $6621: $22
	ld b, $22                                        ; $6622: $06 $22
	ld b, $22                                        ; $6624: $06 $22
	inc c                                            ; $6626: $0c
	jr nz, @+$0e                                     ; $6627: $20 $0c

	ld [hl+], a                                      ; $6629: $22
	ld b, $22                                        ; $662a: $06 $22
	ld b, $fd                                        ; $662c: $06 $fd
	inc d                                            ; $662e: $14
	ld [de], a                                       ; $662f: $12
	ld [hl+], a                                      ; $6630: $22
	ld b, $22                                        ; $6631: $06 $22
	inc c                                            ; $6633: $0c
	jr nz, @+$0e                                     ; $6634: $20 $0c

	ld [hl+], a                                      ; $6636: $22
	ld b, $22                                        ; $6637: $06 $22
	ld b, $22                                        ; $6639: $06 $22
	inc c                                            ; $663b: $0c
	jr nz, jr_02f_664a                               ; $663c: $20 $0c

	ld [hl+], a                                      ; $663e: $22
	ld b, $22                                        ; $663f: $06 $22
	ld b, $fd                                        ; $6641: $06 $fd
	or h                                             ; $6643: $b4
	ld d, c                                          ; $6644: $51
	sub c                                            ; $6645: $91
	inc bc                                           ; $6646: $03
	nop                                              ; $6647: $00
	ld h, b                                          ; $6648: $60
	nop                                              ; $6649: $00

jr_02f_664a:
	ld h, b                                          ; $664a: $60
	ld a, [hl]                                       ; $664b: $7e
	ld bc, $a100                                     ; $664c: $01 $00 $a1
	sub a                                            ; $664f: $97
	rra                                              ; $6650: $1f
	ld [de], a                                       ; $6651: $12
	jr jr_02f_65eb                                   ; $6652: $18 $97

	nop                                              ; $6654: $00
	call nz, $3012                                   ; $6655: $c4 $12 $30
	or c                                             ; $6658: $b1
	ld d, c                                          ; $6659: $51
	rst $38                                          ; $665a: $ff
	rlca                                             ; $665b: $07
	ld [de], a                                       ; $665c: $12
	jr jr_02f_65f5                                   ; $665d: $18 $96

	nop                                              ; $665f: $00
	nop                                              ; $6660: $00
	jp z, $6c97                                      ; $6661: $ca $97 $6c

	ld a, [hl]                                       ; $6664: $7e
	ld [de], a                                       ; $6665: $12
	nop                                              ; $6666: $00
	xor c                                            ; $6667: $a9
	cp [hl]                                          ; $6668: $be
	ld b, $20                                        ; $6669: $06 $20
	jr nz, jr_02f_668d                               ; $666b: $20 $20

	jr nz, @-$40                                     ; $666d: $20 $be

	sub a                                            ; $666f: $97
	ld a, h                                          ; $6670: $7c
	ld [hl+], a                                      ; $6671: $22
	ld b, $97                                        ; $6672: $06 $97
	nop                                              ; $6674: $00
	jp $0622                                         ; $6675: $c3 $22 $06


	ret                                              ; $6678: $c9


	sub a                                            ; $6679: $97
	ld a, h                                          ; $667a: $7c
	ld a, [hl]                                       ; $667b: $7e
	ld [de], a                                       ; $667c: $12
	nop                                              ; $667d: $00
	xor c                                            ; $667e: $a9
	ld [hl+], a                                      ; $667f: $22
	ld b, $ca                                        ; $6680: $06 $ca
	inc h                                            ; $6682: $24
	ld b, $d1                                        ; $6683: $06 $d1
	ei                                               ; $6685: $fb
	sub a                                            ; $6686: $97
	nop                                              ; $6687: $00
	ld a, [hl]                                       ; $6688: $7e
	nop                                              ; $6689: $00
	sub c                                            ; $668a: $91
	ret z                                            ; $668b: $c8

	ld a, l                                          ; $668c: $7d

jr_02f_668d:
	ld bc, $1794                                     ; $668d: $01 $94 $17
	daa                                              ; $6690: $27
	inc bc                                           ; $6691: $03
	sub b                                            ; $6692: $90
	jp z, $007d                                      ; $6693: $ca $7d $00

	sub h                                            ; $6696: $94
	ld e, $41                                        ; $6697: $1e $41
	inc bc                                           ; $6699: $03
	sub b                                            ; $669a: $90
	adc $94                                          ; $669b: $ce $94
	rla                                              ; $669d: $17
	ld a, l                                          ; $669e: $7d
	ld [$0327], sp                                   ; $669f: $08 $27 $03
	sub h                                            ; $66a2: $94
	ld [$0300], sp                                   ; $66a3: $08 $00 $03
	ei                                               ; $66a6: $fb
	ld [bc], a                                       ; $66a7: $02
	sub b                                            ; $66a8: $90
	ret z                                            ; $66a9: $c8

	ld a, l                                          ; $66aa: $7d
	ld bc, $1f94                                     ; $66ab: $01 $94 $1f
	inc l                                            ; $66ae: $2c
	ld b, $1d                                        ; $66af: $06 $1d
	ld b, $94                                        ; $66b1: $06 $94
	rla                                              ; $66b3: $17
	ld [hl+], a                                      ; $66b4: $22
	ld b, $00                                        ; $66b5: $06 $00
	ld b, $94                                        ; $66b7: $06 $94
	ld [$cb90], sp                                   ; $66b9: $08 $90 $cb
	ld a, l                                          ; $66bc: $7d
	nop                                              ; $66bd: $00
	ei                                               ; $66be: $fb
	nop                                              ; $66bf: $00
	inc c                                            ; $66c0: $0c
	sub h                                            ; $66c1: $94
	rra                                              ; $66c2: $1f
	ld l, $06                                        ; $66c3: $2e $06
	sub [hl]                                         ; $66c5: $96
	ld b, $01                                        ; $66c6: $06 $01
	sub h                                            ; $66c8: $94
	inc a                                            ; $66c9: $3c
	dec de                                           ; $66ca: $1b
	ld b, $96                                        ; $66cb: $06 $96
	nop                                              ; $66cd: $00
	nop                                              ; $66ce: $00
	ei                                               ; $66cf: $fb
	inc b                                            ; $66d0: $04
	nop                                              ; $66d1: $00
	ld h, b                                          ; $66d2: $60
	sub b                                            ; $66d3: $90
	rlc b                                            ; $66d4: $cb $00
	inc c                                            ; $66d6: $0c
	sub h                                            ; $66d7: $94
	rra                                              ; $66d8: $1f
	ld l, $06                                        ; $66d9: $2e $06
	sub [hl]                                         ; $66db: $96
	ld b, $01                                        ; $66dc: $06 $01
	sub h                                            ; $66de: $94
	inc a                                            ; $66df: $3c
	dec de                                           ; $66e0: $1b
	ld b, $96                                        ; $66e1: $06 $96
	nop                                              ; $66e3: $00
	nop                                              ; $66e4: $00
	nop                                              ; $66e5: $00
	inc c                                            ; $66e6: $0c
	sub h                                            ; $66e7: $94
	rra                                              ; $66e8: $1f
	ld l, $06                                        ; $66e9: $2e $06
	sub [hl]                                         ; $66eb: $96
	ld b, $01                                        ; $66ec: $06 $01
	sub h                                            ; $66ee: $94
	inc a                                            ; $66ef: $3c
	dec de                                           ; $66f0: $1b
	ld b, $96                                        ; $66f1: $06 $96
	nop                                              ; $66f3: $00
	nop                                              ; $66f4: $00
	sub h                                            ; $66f5: $94
	rra                                              ; $66f6: $1f
	ld l, $06                                        ; $66f7: $2e $06
	sub [hl]                                         ; $66f9: $96
	ld b, $01                                        ; $66fa: $06 $01
	sub h                                            ; $66fc: $94
	inc a                                            ; $66fd: $3c
	dec de                                           ; $66fe: $1b
	ld b, $96                                        ; $66ff: $06 $96
	nop                                              ; $6701: $00
	nop                                              ; $6702: $00
	sub h                                            ; $6703: $94
	rra                                              ; $6704: $1f
	ld l, $06                                        ; $6705: $2e $06
	sub h                                            ; $6707: $94
	rra                                              ; $6708: $1f
	ld l, $06                                        ; $6709: $2e $06
	sub [hl]                                         ; $670b: $96
	ld b, $01                                        ; $670c: $06 $01
	sub h                                            ; $670e: $94
	inc a                                            ; $670f: $3c
	dec de                                           ; $6710: $1b
	ld b, $96                                        ; $6711: $06 $96
	nop                                              ; $6713: $00
	nop                                              ; $6714: $00
	nop                                              ; $6715: $00
	ld b, $94                                        ; $6716: $06 $94
	rra                                              ; $6718: $1f
	ld l, $06                                        ; $6719: $2e $06
	sub [hl]                                         ; $671b: $96
	ld b, $01                                        ; $671c: $06 $01
	sub h                                            ; $671e: $94
	inc a                                            ; $671f: $3c
	dec de                                           ; $6720: $1b
	ld b, $96                                        ; $6721: $06 $96
	nop                                              ; $6723: $00
	nop                                              ; $6724: $00
	nop                                              ; $6725: $00
	ld h, b                                          ; $6726: $60
	sub b                                            ; $6727: $90
	res 2, h                                         ; $6728: $cb $94
	ld h, $19                                        ; $672a: $26 $19
	ld b, $94                                        ; $672c: $06 $94
	ld [$0600], sp                                   ; $672e: $08 $00 $06
	sub [hl]                                         ; $6731: $96
	nop                                              ; $6732: $00
	nop                                              ; $6733: $00
	sub h                                            ; $6734: $94
	ld h, $19                                        ; $6735: $26 $19
	ld b, $94                                        ; $6737: $06 $94
	ld h, $19                                        ; $6739: $26 $19
	ld b, $94                                        ; $673b: $06 $94
	ld [$00c2], sp                                   ; $673d: $08 $c2 $00
	jr @-$33                                         ; $6740: $18 $cb

	sub h                                            ; $6742: $94
	ld h, $19                                        ; $6743: $26 $19
	ld b, $94                                        ; $6745: $06 $94
	ld [$0696], sp                                   ; $6747: $08 $96 $06
	ld bc, $0600                                     ; $674a: $01 $00 $06
	sub [hl]                                         ; $674d: $96
	nop                                              ; $674e: $00
	nop                                              ; $674f: $00
	sub h                                            ; $6750: $94
	ld h, $19                                        ; $6751: $26 $19
	ld b, $94                                        ; $6753: $06 $94
	ld h, $19                                        ; $6755: $26 $19
	ld b, $94                                        ; $6757: $06 $94
	ld h, $19                                        ; $6759: $26 $19
	ld b, $94                                        ; $675b: $06 $94
	ld [$0600], sp                                   ; $675d: $08 $00 $06
	res 2, h                                         ; $6760: $cb $94
	ld h, $19                                        ; $6762: $26 $19
	ld b, $94                                        ; $6764: $06 $94
	ld [$00c2], sp                                   ; $6766: $08 $c2 $00
	ld b, $00                                        ; $6769: $06 $00
	ld h, b                                          ; $676b: $60
	sub b                                            ; $676c: $90
	ei                                               ; $676d: $fb
	res 2, h                                         ; $676e: $cb $94
	ld h, $19                                        ; $6770: $26 $19
	ld b, $94                                        ; $6772: $06 $94
	ld [$2694], sp                                   ; $6774: $08 $94 $26
	add hl, de                                       ; $6777: $19
	ld b, $94                                        ; $6778: $06 $94
	ld [$0600], sp                                   ; $677a: $08 $00 $06
	ei                                               ; $677d: $fb
	inc bc                                           ; $677e: $03
	nop                                              ; $677f: $00
	ld b, $94                                        ; $6780: $06 $94
	ld h, $19                                        ; $6782: $26 $19
	ld b, $94                                        ; $6784: $06 $94
	ld [$1200], sp                                   ; $6786: $08 $00 $12
	sub h                                            ; $6789: $94
	ld h, $19                                        ; $678a: $26 $19
	ld b, $94                                        ; $678c: $06 $94
	ld [$0600], sp                                   ; $678e: $08 $00 $06
	nop                                              ; $6791: $00
	ld h, b                                          ; $6792: $60
	nop                                              ; $6793: $00
	ld h, b                                          ; $6794: $60
	sub b                                            ; $6795: $90
	res 2, h                                         ; $6796: $cb $94
	rra                                              ; $6798: $1f
	ld l, $06                                        ; $6799: $2e $06
	sub h                                            ; $679b: $94
	ld [$1f94], sp                                   ; $679c: $08 $94 $1f
	ld l, $06                                        ; $679f: $2e $06
	sub h                                            ; $67a1: $94
	ld [$1f94], sp                                   ; $67a2: $08 $94 $1f
	ld l, $06                                        ; $67a5: $2e $06
	sub h                                            ; $67a7: $94
	ld [$1f94], sp                                   ; $67a8: $08 $94 $1f
	ld l, $06                                        ; $67ab: $2e $06
	sub h                                            ; $67ad: $94
	ld [$1f94], sp                                   ; $67ae: $08 $94 $1f
	ld l, $06                                        ; $67b1: $2e $06
	sub h                                            ; $67b3: $94
	ld [$0600], sp                                   ; $67b4: $08 $00 $06
	sub h                                            ; $67b7: $94
	rra                                              ; $67b8: $1f
	ld l, $06                                        ; $67b9: $2e $06
	sub h                                            ; $67bb: $94
	ld [$1f94], sp                                   ; $67bc: $08 $94 $1f
	ld l, $06                                        ; $67bf: $2e $06
	sub h                                            ; $67c1: $94
	ld [$1f94], sp                                   ; $67c2: $08 $94 $1f
	ld l, $06                                        ; $67c5: $2e $06
	sub h                                            ; $67c7: $94
	ld [$1f94], sp                                   ; $67c8: $08 $94 $1f
	ld l, $06                                        ; $67cb: $2e $06
	sub h                                            ; $67cd: $94
	ld [$1f94], sp                                   ; $67ce: $08 $94 $1f
	ld l, $06                                        ; $67d1: $2e $06
	sub h                                            ; $67d3: $94
	ld [$1f94], sp                                   ; $67d4: $08 $94 $1f
	ld l, $06                                        ; $67d7: $2e $06
	sub h                                            ; $67d9: $94
	ld [$1f94], sp                                   ; $67da: $08 $94 $1f
	ld l, $06                                        ; $67dd: $2e $06
	sub h                                            ; $67df: $94
	ld [$0600], sp                                   ; $67e0: $08 $00 $06
	sub h                                            ; $67e3: $94
	rra                                              ; $67e4: $1f
	ld l, $06                                        ; $67e5: $2e $06
	sub h                                            ; $67e7: $94
	ld [$0600], sp                                   ; $67e8: $08 $00 $06
	nop                                              ; $67eb: $00
	ld h, b                                          ; $67ec: $60
	sub b                                            ; $67ed: $90
	rlc b                                            ; $67ee: $cb $00
	inc c                                            ; $67f0: $0c
	sub h                                            ; $67f1: $94
	ld h, $19                                        ; $67f2: $26 $19
	ld b, $94                                        ; $67f4: $06 $94
	ld [$0600], sp                                   ; $67f6: $08 $00 $06
	sub h                                            ; $67f9: $94
	ld h, $19                                        ; $67fa: $26 $19
	ld b, $94                                        ; $67fc: $06 $94
	ld [$0600], sp                                   ; $67fe: $08 $00 $06
	sub h                                            ; $6801: $94
	ld h, $19                                        ; $6802: $26 $19
	ld b, $94                                        ; $6804: $06 $94
	ld [$2694], sp                                   ; $6806: $08 $94 $26
	add hl, de                                       ; $6809: $19
	ld b, $94                                        ; $680a: $06 $94
	ld [$2694], sp                                   ; $680c: $08 $94 $26
	add hl, de                                       ; $680f: $19
	ld b, $94                                        ; $6810: $06 $94
	ld [$2694], sp                                   ; $6812: $08 $94 $26
	add hl, de                                       ; $6815: $19
	ld b, $94                                        ; $6816: $06 $94
	ld [$0600], sp                                   ; $6818: $08 $00 $06
	sub h                                            ; $681b: $94
	ld h, $19                                        ; $681c: $26 $19
	ld b, $94                                        ; $681e: $06 $94
	ld [$2694], sp                                   ; $6820: $08 $94 $26
	add hl, de                                       ; $6823: $19
	ld b, $94                                        ; $6824: $06 $94
	ld [$2694], sp                                   ; $6826: $08 $94 $26
	add hl, de                                       ; $6829: $19
	ld b, $94                                        ; $682a: $06 $94
	ld [$2694], sp                                   ; $682c: $08 $94 $26
	add hl, de                                       ; $682f: $19
	ld b, $94                                        ; $6830: $06 $94
	ld [$2694], sp                                   ; $6832: $08 $94 $26
	add hl, de                                       ; $6835: $19
	ld b, $94                                        ; $6836: $06 $94
	ld [$6000], sp                                   ; $6838: $08 $00 $60
	rst $38                                          ; $683b: $ff
	or h                                             ; $683c: $b4
	ld d, c                                          ; $683d: $51
	and c                                            ; $683e: $a1
	ld [bc], a                                       ; $683f: $02
	ei                                               ; $6840: $fb
	ld a, l                                          ; $6841: $7d
	ld bc, $0c96                                     ; $6842: $01 $96 $0c
	dec b                                            ; $6845: $05
	dec c                                            ; $6846: $0d
	inc c                                            ; $6847: $0c
	dec c                                            ; $6848: $0d
	inc c                                            ; $6849: $0c
	nop                                              ; $684a: $00
	inc a                                            ; $684b: $3c
	ld c, $0c                                        ; $684c: $0e $0c
	ei                                               ; $684e: $fb
	inc bc                                           ; $684f: $03
	or l                                             ; $6850: $b5
	pop hl                                           ; $6851: $e1
	ld bc, $0206                                     ; $6852: $01 $06 $02
	ld [hl], c                                       ; $6855: $71
	ld a, l                                          ; $6856: $7d
	ld c, $7e                                        ; $6857: $0e $7e
	ld b, $00                                        ; $6859: $06 $00
	and b                                            ; $685b: $a0
	cp [hl]                                          ; $685c: $be
	ld b, $24                                        ; $685d: $06 $24
	inc h                                            ; $685f: $24
	inc h                                            ; $6860: $24
	inc h                                            ; $6861: $24
	daa                                              ; $6862: $27
	cp [hl]                                          ; $6863: $be
	or c                                             ; $6864: $b1
	ld sp, $0000                                     ; $6865: $31 $00 $00
	ld a, l                                          ; $6868: $7d
	dec bc                                           ; $6869: $0b
	ld a, [hl]                                       ; $686a: $7e
	nop                                              ; $686b: $00
	daa                                              ; $686c: $27
	ld b, $b1                                        ; $686d: $06 $b1
	and c                                            ; $686f: $a1
	ld b, $02                                        ; $6870: $06 $02
	ld a, [hl]                                       ; $6872: $7e
	ld b, $00                                        ; $6873: $06 $00
	and b                                            ; $6875: $a0
	daa                                              ; $6876: $27
	ld b, $cc                                        ; $6877: $06 $cc
	ld a, [hl]                                       ; $6879: $7e
	nop                                              ; $687a: $00
	ld a, l                                          ; $687b: $7d
	ld [$0629], sp                                   ; $687c: $08 $29 $06
	or l                                             ; $687f: $b5
	sub e                                            ; $6880: $93
	inc bc                                           ; $6881: $03
	nop                                              ; $6882: $00
	nop                                              ; $6883: $00
	nop                                              ; $6884: $00
	ld [$1f97], sp                                   ; $6885: $08 $97 $1f
	ld a, [hl]                                       ; $6888: $7e
	dec b                                            ; $6889: $05
	nop                                              ; $688a: $00
	and b                                            ; $688b: $a0
	jr nc, jr_02f_6892                               ; $688c: $30 $04

	sub a                                            ; $688e: $97
	nop                                              ; $688f: $00
	ld a, [hl]                                       ; $6890: $7e
	ld [bc], a                                       ; $6891: $02

jr_02f_6892:
	nop                                              ; $6892: $00
	and e                                            ; $6893: $a3
	jr nc, @+$08                                     ; $6894: $30 $06

	sub a                                            ; $6896: $97
	adc d                                            ; $6897: $8a
	inc sp                                           ; $6898: $33
	dec b                                            ; $6899: $05
	nop                                              ; $689a: $00
	ld bc, $0e7e                                     ; $689b: $01 $7e $0e
	nop                                              ; $689e: $00
	and l                                            ; $689f: $a5
	sub a                                            ; $68a0: $97
	ld a, d                                          ; $68a1: $7a
	dec sp                                           ; $68a2: $3b
	inc b                                            ; $68a3: $04
	ld a, [hl-]                                      ; $68a4: $3a
	inc b                                            ; $68a5: $04
	sub a                                            ; $68a6: $97

jr_02f_68a7:
	ld l, d                                          ; $68a7: $6a
	add hl, sp                                       ; $68a8: $39
	inc b                                            ; $68a9: $04
	jr c, jr_02f_68b0                                ; $68aa: $38 $04

	sub a                                            ; $68ac: $97
	ld e, d                                          ; $68ad: $5a
	scf                                              ; $68ae: $37
	inc b                                            ; $68af: $04

jr_02f_68b0:
	ld [hl], $04                                     ; $68b0: $36 $04
	db $d3                                           ; $68b2: $d3
	jp z, $0097                                      ; $68b3: $ca $97 $00

	sub d                                            ; $68b6: $92
	ld [hl], b                                       ; $68b7: $70
	ld a, l                                          ; $68b8: $7d
	nop                                              ; $68b9: $00
	nop                                              ; $68ba: $00
	ld h, b                                          ; $68bb: $60
	jp z, $027e                                      ; $68bc: $ca $7e $02

	nop                                              ; $68bf: $00
	and b                                            ; $68c0: $a0
	dec h                                            ; $68c1: $25
	inc c                                            ; $68c2: $0c
	push bc                                          ; $68c3: $c5
	dec h                                            ; $68c4: $25
	inc c                                            ; $68c5: $0c

jr_02f_68c6:
	call nz, $0c25                                   ; $68c6: $c4 $25 $0c

jr_02f_68c9:
	jp $0c25                                         ; $68c9: $c3 $25 $0c


	jp nz, $0c25                                     ; $68cc: $c2 $25 $0c

	pop bc                                           ; $68cf: $c1
	dec h                                            ; $68d0: $25
	inc c                                            ; $68d1: $0c
	nop                                              ; $68d2: $00
	jr jr_02f_68a7                                   ; $68d3: $18 $d2

	jp z, $0097                                      ; $68d5: $ca $97 $00

	sub b                                            ; $68d8: $90
	ld [hl], b                                       ; $68d9: $70
	nop                                              ; $68da: $00
	ld h, b                                          ; $68db: $60
	jp z, $027e                                      ; $68dc: $ca $7e $02

	nop                                              ; $68df: $00
	and b                                            ; $68e0: $a0
	dec h                                            ; $68e1: $25
	inc c                                            ; $68e2: $0c
	push bc                                          ; $68e3: $c5
	dec h                                            ; $68e4: $25
	inc c                                            ; $68e5: $0c

jr_02f_68e6:
	call nz, $0c25                                   ; $68e6: $c4 $25 $0c
	jp $0c25                                         ; $68e9: $c3 $25 $0c


	jp nz, $0c25                                     ; $68ec: $c2 $25 $0c

	pop bc                                           ; $68ef: $c1
	dec h                                            ; $68f0: $25
	inc c                                            ; $68f1: $0c
	nop                                              ; $68f2: $00
	jr jr_02f_68c6                                   ; $68f3: $18 $d1

	jp z, $0097                                      ; $68f5: $ca $97 $00

	sub e                                            ; $68f8: $93
	ld [hl], b                                       ; $68f9: $70
	nop                                              ; $68fa: $00
	ld h, b                                          ; $68fb: $60
	jp z, $027e                                      ; $68fc: $ca $7e $02

	nop                                              ; $68ff: $00
	and b                                            ; $6900: $a0
	dec h                                            ; $6901: $25
	inc c                                            ; $6902: $0c
	push bc                                          ; $6903: $c5
	dec h                                            ; $6904: $25
	inc c                                            ; $6905: $0c
	call nz, $0c25                                   ; $6906: $c4 $25 $0c
	jp $0c25                                         ; $6909: $c3 $25 $0c


	jp nz, $0c25                                     ; $690c: $c2 $25 $0c

	pop bc                                           ; $690f: $c1
	dec h                                            ; $6910: $25
	inc c                                            ; $6911: $0c
	nop                                              ; $6912: $00
	jr jr_02f_68e6                                   ; $6913: $18 $d1

	sub a                                            ; $6915: $97
	nop                                              ; $6916: $00
	jp z, $0070                                      ; $6917: $ca $70 $00

	ld h, b                                          ; $691a: $60
	sub b                                            ; $691b: $90
	db $d3                                           ; $691c: $d3
	jp z, $027e                                      ; $691d: $ca $7e $02

	nop                                              ; $6920: $00
	and b                                            ; $6921: $a0
	dec h                                            ; $6922: $25
	inc c                                            ; $6923: $0c
	push bc                                          ; $6924: $c5
	dec h                                            ; $6925: $25
	inc c                                            ; $6926: $0c
	call nz, $0c25                                   ; $6927: $c4 $25 $0c
	jp $0c25                                         ; $692a: $c3 $25 $0c


	jp nz, $0c25                                     ; $692d: $c2 $25 $0c

	pop bc                                           ; $6930: $c1
	dec h                                            ; $6931: $25
	inc c                                            ; $6932: $0c
	nop                                              ; $6933: $00
	jr jr_02f_68c9                                   ; $6934: $18 $93

	jp nc, Jump_02f_7ec9                             ; $6936: $d2 $c9 $7e

	ld [bc], a                                       ; $6939: $02
	nop                                              ; $693a: $00
	and b                                            ; $693b: $a0
	dec h                                            ; $693c: $25
	inc c                                            ; $693d: $0c
	push bc                                          ; $693e: $c5
	dec h                                            ; $693f: $25
	inc c                                            ; $6940: $0c
	call nz, $0c25                                   ; $6941: $c4 $25 $0c
	jp $0c25                                         ; $6944: $c3 $25 $0c


	jp nz, $0c25                                     ; $6947: $c2 $25 $0c

	pop bc                                           ; $694a: $c1
	dec h                                            ; $694b: $25
	inc c                                            ; $694c: $0c
	nop                                              ; $694d: $00
	jr @+$80                                         ; $694e: $18 $7e

	nop                                              ; $6950: $00
	sub c                                            ; $6951: $91
	rst JumpTable                                          ; $6952: $c7
	nop                                              ; $6953: $00
	ld h, b                                          ; $6954: $60
	ld a, [hl]                                       ; $6955: $7e
	nop                                              ; $6956: $00
	or c                                             ; $6957: $b1
	ld [hl], c                                       ; $6958: $71
	ld a, [$6c05]                                    ; $6959: $fa $05 $6c
	jr nc, jr_02f_6961                               ; $695c: $30 $03

	call nz, $0331                                   ; $695e: $c4 $31 $03

jr_02f_6961:
	rst JumpTable                                          ; $6961: $c7
	ld sp, $c403                                     ; $6962: $31 $03 $c4
	inc sp                                           ; $6965: $33
	inc bc                                           ; $6966: $03
	rst JumpTable                                          ; $6967: $c7
	jr nc, jr_02f_696d                               ; $6968: $30 $03

	call nz, $0331                                   ; $696a: $c4 $31 $03

jr_02f_696d:
	rst JumpTable                                          ; $696d: $c7
	ld l, $03                                        ; $696e: $2e $03
	call nz, $0331                                   ; $6970: $c4 $31 $03
	rst JumpTable                                          ; $6973: $c7
	dec l                                            ; $6974: $2d
	inc bc                                           ; $6975: $03
	call nz, $032a                                   ; $6976: $c4 $2a $03
	rst JumpTable                                          ; $6979: $c7
	add hl, hl                                       ; $697a: $29
	inc bc                                           ; $697b: $03
	call nz, $0331                                   ; $697c: $c4 $31 $03
	rst JumpTable                                          ; $697f: $c7
	ld a, [hl+]                                      ; $6980: $2a
	inc bc                                           ; $6981: $03
	call nz, $032c                                   ; $6982: $c4 $2c $03
	rst JumpTable                                          ; $6985: $c7
	inc h                                            ; $6986: $24
	inc bc                                           ; $6987: $03
	call nz, $0320                                   ; $6988: $c4 $20 $03
	add $22                                          ; $698b: $c6 $22
	inc bc                                           ; $698d: $03
	call nz, $031e                                   ; $698e: $c4 $1e $03
	push bc                                          ; $6991: $c5
	ld hl, $c403                                     ; $6992: $21 $03 $c4
	dec e                                            ; $6995: $1d
	inc bc                                           ; $6996: $03
	push bc                                          ; $6997: $c5
	ld e, $03                                        ; $6998: $1e $03
	call nz, $031b                                   ; $699a: $c4 $1b $03
	call nz, $031d                                   ; $699d: $c4 $1d $03
	jp $0318                                         ; $69a0: $c3 $18 $03


	call nz, $0319                                   ; $69a3: $c4 $19 $03
	jp $0316                                         ; $69a6: $c3 $16 $03


	jp $0315                                         ; $69a9: $c3 $15 $03


	jp $0312                                         ; $69ac: $c3 $12 $03


	jp nz, $0311                                     ; $69af: $c2 $11 $03

	jp nz, $0318                                     ; $69b2: $c2 $18 $03

	jp nz, $030f                                     ; $69b5: $c2 $0f $03

	jp nz, $0315                                     ; $69b8: $c2 $15 $03

	sub c                                            ; $69bb: $91
	rst JumpTable                                          ; $69bc: $c7
	nop                                              ; $69bd: $00
	ld h, b                                          ; $69be: $60
	ld a, [hl]                                       ; $69bf: $7e
	nop                                              ; $69c0: $00
	or c                                             ; $69c1: $b1
	ld [hl], c                                       ; $69c2: $71
	ld a, [$6c05]                                    ; $69c3: $fa $05 $6c
	jr nc, jr_02f_69cb                               ; $69c6: $30 $03

	call nz, $0331                                   ; $69c8: $c4 $31 $03

jr_02f_69cb:
	rst JumpTable                                          ; $69cb: $c7
	ld sp, $c403                                     ; $69cc: $31 $03 $c4
	inc sp                                           ; $69cf: $33
	inc bc                                           ; $69d0: $03
	rst JumpTable                                          ; $69d1: $c7
	jr nc, jr_02f_69d7                               ; $69d2: $30 $03

	call nz, $0331                                   ; $69d4: $c4 $31 $03

jr_02f_69d7:
	rst JumpTable                                          ; $69d7: $c7
	ld l, $03                                        ; $69d8: $2e $03
	call nz, $0331                                   ; $69da: $c4 $31 $03
	rst JumpTable                                          ; $69dd: $c7
	dec l                                            ; $69de: $2d
	inc bc                                           ; $69df: $03
	call nz, $032a                                   ; $69e0: $c4 $2a $03
	rst JumpTable                                          ; $69e3: $c7
	add hl, hl                                       ; $69e4: $29
	inc bc                                           ; $69e5: $03
	call nz, $0331                                   ; $69e6: $c4 $31 $03
	rst JumpTable                                          ; $69e9: $c7
	ld a, [hl+]                                      ; $69ea: $2a
	inc bc                                           ; $69eb: $03
	call nz, $032c                                   ; $69ec: $c4 $2c $03
	rst JumpTable                                          ; $69ef: $c7
	inc h                                            ; $69f0: $24
	inc bc                                           ; $69f1: $03
	call nz, $0320                                   ; $69f2: $c4 $20 $03
	add $22                                          ; $69f5: $c6 $22
	inc bc                                           ; $69f7: $03
	call nz, $031e                                   ; $69f8: $c4 $1e $03
	push bc                                          ; $69fb: $c5
	ld hl, $c403                                     ; $69fc: $21 $03 $c4
	dec e                                            ; $69ff: $1d
	inc bc                                           ; $6a00: $03
	push bc                                          ; $6a01: $c5
	ld e, $03                                        ; $6a02: $1e $03
	call nz, $031b                                   ; $6a04: $c4 $1b $03
	call nz, $031d                                   ; $6a07: $c4 $1d $03
	jp $0318                                         ; $6a0a: $c3 $18 $03


	call nz, $0319                                   ; $6a0d: $c4 $19 $03
	jp $0316                                         ; $6a10: $c3 $16 $03


	jp $0315                                         ; $6a13: $c3 $15 $03


	jp $0312                                         ; $6a16: $c3 $12 $03


	jp nz, $0311                                     ; $6a19: $c2 $11 $03

	jp nz, $0318                                     ; $6a1c: $c2 $18 $03

	jp nz, $030f                                     ; $6a1f: $c2 $0f $03

	jp nz, $0315                                     ; $6a22: $c2 $15 $03

	rst $38                                          ; $6a25: $ff
	ret nc                                           ; $6a26: $d0

	ld d, c                                          ; $6a27: $51
	add h                                            ; $6a28: $84
	ei                                               ; $6a29: $fb
	jp nz, $0a01                                     ; $6a2a: $c2 $01 $0a

	call nz, $0201                                   ; $6a2d: $c4 $01 $02
	jp nz, $0c01                                     ; $6a30: $c2 $01 $0c

	call nz, $0301                                   ; $6a33: $c4 $01 $03
	add $01                                          ; $6a36: $c6 $01
	inc bc                                           ; $6a38: $03
	nop                                              ; $6a39: $00
	ld [de], a                                       ; $6a3a: $12
	nop                                              ; $6a3b: $00
	inc h                                            ; $6a3c: $24
	jp nz, $0a02                                     ; $6a3d: $c2 $02 $0a

	call nz, $0202                                   ; $6a40: $c4 $02 $02
	ei                                               ; $6a43: $fb
	inc bc                                           ; $6a44: $03
	adc a                                            ; $6a45: $8f
	ld a, [hl]                                       ; $6a46: $7e
	dec b                                            ; $6a47: $05
	nop                                              ; $6a48: $00
	and b                                            ; $6a49: $a0
	pop de                                           ; $6a4a: $d1
	ld l, h                                          ; $6a4b: $6c
	inc h                                            ; $6a4c: $24
	dec b                                            ; $6a4d: $05
	add $24                                          ; $6a4e: $c6 $24
	ld bc, $24c4                                     ; $6a50: $01 $c4 $24
	dec b                                            ; $6a53: $05
	add $24                                          ; $6a54: $c6 $24
	ld bc, $24c4                                     ; $6a56: $01 $c4 $24
	dec b                                            ; $6a59: $05
	add $24                                          ; $6a5a: $c6 $24
	ld bc, $24c4                                     ; $6a5c: $01 $c4 $24
	dec b                                            ; $6a5f: $05
	add $24                                          ; $6a60: $c6 $24
	ld bc, $27c4                                     ; $6a62: $01 $c4 $27
	ld b, $7e                                        ; $6a65: $06 $7e
	nop                                              ; $6a67: $00
	add $27                                          ; $6a68: $c6 $27
	ld b, $c4                                        ; $6a6a: $06 $c4
	ld a, [hl]                                       ; $6a6c: $7e
	nop                                              ; $6a6d: $00
	daa                                              ; $6a6e: $27
	ld b, $7d                                        ; $6a6f: $06 $7d
	dec b                                            ; $6a71: $05
	jr z, jr_02f_6a7a                                ; $6a72: $28 $06

	jp nc, $85c4                                     ; $6a74: $d2 $c4 $85

	ld a, h                                          ; $6a77: $7c
	nop                                              ; $6a78: $00
	inc c                                            ; $6a79: $0c

jr_02f_6a7a:
	ld a, [hl]                                       ; $6a7a: $7e
	ld [bc], a                                       ; $6a7b: $02
	nop                                              ; $6a7c: $00
	and e                                            ; $6a7d: $a3
	jr nc, jr_02f_6a86                               ; $6a7e: $30 $06

	inc sp                                           ; $6a80: $33
	dec b                                            ; $6a81: $05
	nop                                              ; $6a82: $00
	ld bc, $78c4                                     ; $6a83: $01 $c4 $78

jr_02f_6a86:
	add l                                            ; $6a86: $85
	ld a, [hl]                                       ; $6a87: $7e
	ld bc, $a500                                     ; $6a88: $01 $00 $a5
	cp [hl]                                          ; $6a8b: $be
	inc b                                            ; $6a8c: $04
	dec sp                                           ; $6a8d: $3b
	ld a, [hl-]                                      ; $6a8e: $3a
	add hl, sp                                       ; $6a8f: $39
	jr c, jr_02f_6ac9                                ; $6a90: $38 $37

	ld [hl], $be                                     ; $6a92: $36 $be
	pop de                                           ; $6a94: $d1
	ld [hl], b                                       ; $6a95: $70
	add e                                            ; $6a96: $83
	ld a, [hl]                                       ; $6a97: $7e
	nop                                              ; $6a98: $00
	ei                                               ; $6a99: $fb
	jp nz, $0a06                                     ; $6a9a: $c2 $06 $0a

	call nz, $0206                                   ; $6a9d: $c4 $06 $02
	jp nz, $0c06                                     ; $6aa0: $c2 $06 $0c

	call nz, $0606                                   ; $6aa3: $c4 $06 $06
	add $06                                          ; $6aa6: $c6 $06
	ld b, $00                                        ; $6aa8: $06 $00
	inc c                                            ; $6aaa: $0c
	nop                                              ; $6aab: $00
	jr nc, @-$03                                     ; $6aac: $30 $fb

	ld [bc], a                                       ; $6aae: $02
	pop de                                           ; $6aaf: $d1
	add e                                            ; $6ab0: $83
	ld [hl], b                                       ; $6ab1: $70
	ld a, [hl]                                       ; $6ab2: $7e
	nop                                              ; $6ab3: $00
	ei                                               ; $6ab4: $fb
	jp nz, $0a06                                     ; $6ab5: $c2 $06 $0a

	call nz, $0206                                   ; $6ab8: $c4 $06 $02
	jp nz, $0c06                                     ; $6abb: $c2 $06 $0c

	call nz, $0606                                   ; $6abe: $c4 $06 $06
	add $06                                          ; $6ac1: $c6 $06
	ld b, $00                                        ; $6ac3: $06 $00
	inc c                                            ; $6ac5: $0c
	nop                                              ; $6ac6: $00
	jr nc, @-$03                                     ; $6ac7: $30 $fb

jr_02f_6ac9:
	ld [bc], a                                       ; $6ac9: $02
	pop de                                           ; $6aca: $d1
	add e                                            ; $6acb: $83
	ld [hl], b                                       ; $6acc: $70
	ld a, [hl]                                       ; $6acd: $7e
	nop                                              ; $6ace: $00
	ei                                               ; $6acf: $fb
	jp nz, $0a06                                     ; $6ad0: $c2 $06 $0a

	call nz, $0206                                   ; $6ad3: $c4 $06 $02
	jp nz, $0c06                                     ; $6ad6: $c2 $06 $0c

	call nz, $0606                                   ; $6ad9: $c4 $06 $06
	add $06                                          ; $6adc: $c6 $06
	ld b, $00                                        ; $6ade: $06 $00
	inc c                                            ; $6ae0: $0c
	nop                                              ; $6ae1: $00
	jr nc, @-$03                                     ; $6ae2: $30 $fb

	ld [bc], a                                       ; $6ae4: $02
	pop de                                           ; $6ae5: $d1
	jp nz, $007e                                     ; $6ae6: $c2 $7e $00

	adc d                                            ; $6ae9: $8a
	ld [hl], b                                       ; $6aea: $70
	nop                                              ; $6aeb: $00
	ld c, b                                          ; $6aec: $48
	ld a, [hl]                                       ; $6aed: $7e
	stop                                             ; $6aee: $10 $00
	and c                                            ; $6af0: $a1
	dec d                                            ; $6af1: $15
	inc c                                            ; $6af2: $0c
	ld a, [hl]                                       ; $6af3: $7e
	nop                                              ; $6af4: $00
	call nz, $0a14                                   ; $6af5: $c4 $14 $0a
	add $14                                          ; $6af8: $c6 $14
	ld [bc], a                                       ; $6afa: $02
	ei                                               ; $6afb: $fb
	add e                                            ; $6afc: $83
	jp nz, $0a06                                     ; $6afd: $c2 $06 $0a

	call nz, $0206                                   ; $6b00: $c4 $06 $02
	jp nz, $0c06                                     ; $6b03: $c2 $06 $0c

	call nz, $0606                                   ; $6b06: $c4 $06 $06
	add $06                                          ; $6b09: $c6 $06
	ld b, $00                                        ; $6b0b: $06 $00
	inc c                                            ; $6b0d: $0c
	nop                                              ; $6b0e: $00
	jr nc, @-$03                                     ; $6b0f: $30 $fb

	ld [bc], a                                       ; $6b11: $02
	pop de                                           ; $6b12: $d1
	ld a, [hl]                                       ; $6b13: $7e
	nop                                              ; $6b14: $00
	add e                                            ; $6b15: $83
	ld [hl], b                                       ; $6b16: $70
	ei                                               ; $6b17: $fb
	jp nz, $0a06                                     ; $6b18: $c2 $06 $0a

	call nz, $0206                                   ; $6b1b: $c4 $06 $02
	jp nz, $0c06                                     ; $6b1e: $c2 $06 $0c

	call nz, $0606                                   ; $6b21: $c4 $06 $06
	add $06                                          ; $6b24: $c6 $06
	ld b, $00                                        ; $6b26: $06 $00
	inc c                                            ; $6b28: $0c
	nop                                              ; $6b29: $00
	jr nc, @-$03                                     ; $6b2a: $30 $fb

	ld [bc], a                                       ; $6b2c: $02
	pop de                                           ; $6b2d: $d1
	ld a, [hl]                                       ; $6b2e: $7e
	nop                                              ; $6b2f: $00
	add e                                            ; $6b30: $83
	ld [hl], b                                       ; $6b31: $70
	ei                                               ; $6b32: $fb
	jp nz, $0a06                                     ; $6b33: $c2 $06 $0a

	call nz, $0206                                   ; $6b36: $c4 $06 $02
	jp nz, $0c06                                     ; $6b39: $c2 $06 $0c

	call nz, $0606                                   ; $6b3c: $c4 $06 $06
	add $06                                          ; $6b3f: $c6 $06
	ld b, $00                                        ; $6b41: $06 $00
	inc c                                            ; $6b43: $0c
	nop                                              ; $6b44: $00
	jr nc, @-$03                                     ; $6b45: $30 $fb

	ld [bc], a                                       ; $6b47: $02
	rst $38                                          ; $6b48: $ff
	ret nc                                           ; $6b49: $d0

	ld d, c                                          ; $6b4a: $51
	ei                                               ; $6b4b: $fb
	dec bc                                           ; $6b4c: $0b
	inc c                                            ; $6b4d: $0c
	jr jr_02f_6b5c                                   ; $6b4e: $18 $0c

	inc c                                            ; $6b50: $0c
	inc c                                            ; $6b51: $0c
	add hl, bc                                       ; $6b52: $09
	ld [$0412], sp                                   ; $6b53: $08 $12 $04
	add hl, bc                                       ; $6b56: $09
	ld [$0412], sp                                   ; $6b57: $08 $12 $04
	dec bc                                           ; $6b5a: $0b
	inc c                                            ; $6b5b: $0c

jr_02f_6b5c:
	inc c                                            ; $6b5c: $0c
	inc c                                            ; $6b5d: $0c
	add hl, bc                                       ; $6b5e: $09
	inc b                                            ; $6b5f: $04
	ld [de], a                                       ; $6b60: $12
	inc b                                            ; $6b61: $04
	ld [de], a                                       ; $6b62: $12
	inc b                                            ; $6b63: $04
	ei                                               ; $6b64: $fb
	inc bc                                           ; $6b65: $03
	nop                                              ; $6b66: $00
	ld h, b                                          ; $6b67: $60
	ei                                               ; $6b68: $fb
	dec bc                                           ; $6b69: $0b
	inc c                                            ; $6b6a: $0c
	dec bc                                           ; $6b6b: $0b
	inc c                                            ; $6b6c: $0c
	inc c                                            ; $6b6d: $0c
	inc c                                            ; $6b6e: $0c
	add hl, bc                                       ; $6b6f: $09
	add hl, bc                                       ; $6b70: $09
	inc de                                           ; $6b71: $13
	inc bc                                           ; $6b72: $03
	ei                                               ; $6b73: $fb
	inc b                                            ; $6b74: $04
	ei                                               ; $6b75: $fb
	dec bc                                           ; $6b76: $0b
	inc c                                            ; $6b77: $0c
	dec bc                                           ; $6b78: $0b
	inc c                                            ; $6b79: $0c
	inc c                                            ; $6b7a: $0c
	inc c                                            ; $6b7b: $0c
	add hl, bc                                       ; $6b7c: $09
	add hl, bc                                       ; $6b7d: $09
	inc de                                           ; $6b7e: $13
	inc bc                                           ; $6b7f: $03
	ei                                               ; $6b80: $fb
	inc b                                            ; $6b81: $04
	ei                                               ; $6b82: $fb
	dec bc                                           ; $6b83: $0b
	inc c                                            ; $6b84: $0c
	dec bc                                           ; $6b85: $0b
	inc c                                            ; $6b86: $0c
	inc c                                            ; $6b87: $0c
	inc c                                            ; $6b88: $0c
	add hl, bc                                       ; $6b89: $09
	add hl, bc                                       ; $6b8a: $09
	inc de                                           ; $6b8b: $13
	inc bc                                           ; $6b8c: $03
	ei                                               ; $6b8d: $fb
	inc b                                            ; $6b8e: $04
	cp [hl]                                          ; $6b8f: $be
	ld b, $1e                                        ; $6b90: $06 $1e
	add hl, bc                                       ; $6b92: $09
	add hl, bc                                       ; $6b93: $09
	ld e, $09                                        ; $6b94: $1e $09
	add hl, bc                                       ; $6b96: $09
	ld e, $09                                        ; $6b97: $1e $09
	cp [hl]                                          ; $6b99: $be
	add hl, bc                                       ; $6b9a: $09
	inc c                                            ; $6b9b: $0c
	add hl, bc                                       ; $6b9c: $09
	ld b, $09                                        ; $6b9d: $06 $09
	ld b, $18                                        ; $6b9f: $06 $18
	inc c                                            ; $6ba1: $0c
	add hl, bc                                       ; $6ba2: $09
	inc c                                            ; $6ba3: $0c
	ld [de], a                                       ; $6ba4: $12
	inc c                                            ; $6ba5: $0c
	dec bc                                           ; $6ba6: $0b
	inc c                                            ; $6ba7: $0c
	inc c                                            ; $6ba8: $0c
	inc c                                            ; $6ba9: $0c
	add hl, bc                                       ; $6baa: $09
	add hl, bc                                       ; $6bab: $09
	inc de                                           ; $6bac: $13
	inc bc                                           ; $6bad: $03
	ei                                               ; $6bae: $fb
	dec bc                                           ; $6baf: $0b
	inc c                                            ; $6bb0: $0c
	dec bc                                           ; $6bb1: $0b
	inc c                                            ; $6bb2: $0c
	inc c                                            ; $6bb3: $0c
	inc c                                            ; $6bb4: $0c
	add hl, bc                                       ; $6bb5: $09
	add hl, bc                                       ; $6bb6: $09
	inc de                                           ; $6bb7: $13
	inc bc                                           ; $6bb8: $03
	ei                                               ; $6bb9: $fb
	inc bc                                           ; $6bba: $03
	ei                                               ; $6bbb: $fb
	cp [hl]                                          ; $6bbc: $be
	ld b, $4e                                        ; $6bbd: $06 $4e
	ld [de], a                                       ; $6bbf: $12
	ld c, [hl]                                       ; $6bc0: $4e
	add hl, bc                                       ; $6bc1: $09
	ld c, l                                          ; $6bc2: $4d
	add hl, bc                                       ; $6bc3: $09
	cp [hl]                                          ; $6bc4: $be
	add hl, bc                                       ; $6bc5: $09
	inc b                                            ; $6bc6: $04
	add hl, bc                                       ; $6bc7: $09
	inc b                                            ; $6bc8: $04
	dec bc                                           ; $6bc9: $0b
	inc b                                            ; $6bca: $04
	cp [hl]                                          ; $6bcb: $be
	ld b, $4e                                        ; $6bcc: $06 $4e
	ld [de], a                                       ; $6bce: $12
	ld c, [hl]                                       ; $6bcf: $4e
	ld [de], a                                       ; $6bd0: $12
	ld c, l                                          ; $6bd1: $4d
	add hl, bc                                       ; $6bd2: $09
	cp [hl]                                          ; $6bd3: $be
	ld e, $09                                        ; $6bd4: $1e $09
	inc de                                           ; $6bd6: $13
	inc bc                                           ; $6bd7: $03
	ei                                               ; $6bd8: $fb
	ld [bc], a                                       ; $6bd9: $02
	ei                                               ; $6bda: $fb
	cp [hl]                                          ; $6bdb: $be
	ld b, $4e                                        ; $6bdc: $06 $4e
	ld [de], a                                       ; $6bde: $12
	ld c, [hl]                                       ; $6bdf: $4e
	add hl, bc                                       ; $6be0: $09
	ld c, l                                          ; $6be1: $4d
	add hl, bc                                       ; $6be2: $09
	cp [hl]                                          ; $6be3: $be
	add hl, bc                                       ; $6be4: $09
	inc b                                            ; $6be5: $04
	add hl, bc                                       ; $6be6: $09
	inc b                                            ; $6be7: $04
	dec bc                                           ; $6be8: $0b
	inc b                                            ; $6be9: $04
	cp [hl]                                          ; $6bea: $be
	ld b, $4e                                        ; $6beb: $06 $4e
	ld [de], a                                       ; $6bed: $12
	ld c, [hl]                                       ; $6bee: $4e
	ld [de], a                                       ; $6bef: $12
	ld c, l                                          ; $6bf0: $4d
	add hl, bc                                       ; $6bf1: $09
	cp [hl]                                          ; $6bf2: $be
	ld e, $09                                        ; $6bf3: $1e $09
	inc de                                           ; $6bf5: $13
	inc bc                                           ; $6bf6: $03
	ei                                               ; $6bf7: $fb
	ld [bc], a                                       ; $6bf8: $02
	ei                                               ; $6bf9: $fb
	cp [hl]                                          ; $6bfa: $be
	ld b, $4e                                        ; $6bfb: $06 $4e
	ld [de], a                                       ; $6bfd: $12
	ld c, [hl]                                       ; $6bfe: $4e
	add hl, bc                                       ; $6bff: $09
	ld c, l                                          ; $6c00: $4d
	add hl, bc                                       ; $6c01: $09
	cp [hl]                                          ; $6c02: $be
	add hl, bc                                       ; $6c03: $09
	inc b                                            ; $6c04: $04
	ld [de], a                                       ; $6c05: $12
	inc b                                            ; $6c06: $04
	dec bc                                           ; $6c07: $0b
	inc b                                            ; $6c08: $04
	cp [hl]                                          ; $6c09: $be
	ld b, $4e                                        ; $6c0a: $06 $4e
	ld [de], a                                       ; $6c0c: $12
	ld c, [hl]                                       ; $6c0d: $4e
	ld [de], a                                       ; $6c0e: $12
	ld c, l                                          ; $6c0f: $4d
	add hl, bc                                       ; $6c10: $09
	cp [hl]                                          ; $6c11: $be
	ld e, $09                                        ; $6c12: $1e $09
	inc de                                           ; $6c14: $13
	inc bc                                           ; $6c15: $03
	ei                                               ; $6c16: $fb
	ld a, [bc]                                       ; $6c17: $0a
	rst $38                                          ; $6c18: $ff
	ret nc                                           ; $6c19: $d0

	ld h, d                                          ; $6c1a: $62
	cp $90                                           ; $6c1b: $fe $90
	ld h, e                                          ; $6c1d: $63
	db $fd                                           ; $6c1e: $fd
	adc a                                            ; $6c1f: $8f
	ld l, h                                          ; $6c20: $6c
	or c                                             ; $6c21: $b1
	add c                                            ; $6c22: $81
	rst $38                                          ; $6c23: $ff
	ld bc, $061d                                     ; $6c24: $01 $1d $06
	dec e                                            ; $6c27: $1d
	ld b, $b1                                        ; $6c28: $06 $b1
	or c                                             ; $6c2a: $b1
	rst $38                                          ; $6c2b: $ff
	ld [bc], a                                       ; $6c2c: $02
	ld a, [hl]                                       ; $6c2d: $7e
	inc bc                                           ; $6c2e: $03
	nop                                              ; $6c2f: $00
	and b                                            ; $6c30: $a0
	add hl, de                                       ; $6c31: $19
	inc c                                            ; $6c32: $0c
	sub [hl]                                         ; $6c33: $96
	rst $38                                          ; $6c34: $ff
	ld [bc], a                                       ; $6c35: $02
	ld a, [hl]                                       ; $6c36: $7e
	nop                                              ; $6c37: $00
	add hl, de                                       ; $6c38: $19
	ld b, $19                                        ; $6c39: $06 $19
	ld b, $b1                                        ; $6c3b: $06 $b1
	ld sp, $0000                                     ; $6c3d: $31 $00 $00
	add hl, de                                       ; $6c40: $19
	ld b, $b1                                        ; $6c41: $06 $b1
	ld [hl], c                                       ; $6c43: $71
	rst $38                                          ; $6c44: $ff
	ld bc, $0619                                     ; $6c45: $01 $19 $06
	or c                                             ; $6c48: $b1
	pop bc                                           ; $6c49: $c1
	rst $38                                          ; $6c4a: $ff
	ld bc, $017d                                     ; $6c4b: $01 $7d $01
	dec e                                            ; $6c4e: $1d
	ld b, $1d                                        ; $6c4f: $06 $1d
	ld b, $b1                                        ; $6c51: $06 $b1
	ld sp, $0000                                     ; $6c53: $31 $00 $00
	dec e                                            ; $6c56: $1d
	ld b, $b1                                        ; $6c57: $06 $b1
	pop bc                                           ; $6c59: $c1
	rst $38                                          ; $6c5a: $ff
	ld bc, $0619                                     ; $6c5b: $01 $19 $06
	or c                                             ; $6c5e: $b1
	ld sp, $0000                                     ; $6c5f: $31 $00 $00
	add hl, de                                       ; $6c62: $19
	inc c                                            ; $6c63: $0c
	or c                                             ; $6c64: $b1
	ld hl, $0000                                     ; $6c65: $21 $00 $00
	add hl, de                                       ; $6c68: $19
	inc c                                            ; $6c69: $0c
	nop                                              ; $6c6a: $00
	inc c                                            ; $6c6b: $0c
	or c                                             ; $6c6c: $b1
	pop bc                                           ; $6c6d: $c1
	rst $38                                          ; $6c6e: $ff
	ld [bc], a                                       ; $6c6f: $02
	ld a, [hl]                                       ; $6c70: $7e
	dec b                                            ; $6c71: $05
	nop                                              ; $6c72: $00
	and c                                            ; $6c73: $a1
	ld e, $06                                        ; $6c74: $1e $06
	or l                                             ; $6c76: $b5
	or c                                             ; $6c77: $b1
	nop                                              ; $6c78: $00
	rst $38                                          ; $6c79: $ff
	ld bc, $007e                                     ; $6c7a: $01 $7e $00
	ld e, $06                                        ; $6c7d: $1e $06
	call $061e                                       ; $6c7f: $cd $1e $06
	sub b                                            ; $6c82: $90
	ld e, $06                                        ; $6c83: $1e $06
	or c                                             ; $6c85: $b1
	ld sp, $0000                                     ; $6c86: $31 $00 $00
	ld a, [hl+]                                      ; $6c89: $2a
	ld b, $00                                        ; $6c8a: $06 $00
	ld b, $fe                                        ; $6c8c: $06 $fe
	rst $38                                          ; $6c8e: $ff
	or c                                             ; $6c8f: $b1
	pop bc                                           ; $6c90: $c1
	rst $38                                          ; $6c91: $ff
	ld bc, $017d                                     ; $6c92: $01 $7d $01
	dec e                                            ; $6c95: $1d
	ld b, $1d                                        ; $6c96: $06 $1d
	ld b, $b1                                        ; $6c98: $06 $b1
	ld sp, $0000                                     ; $6c9a: $31 $00 $00
	dec e                                            ; $6c9d: $1d
	ld b, $b1                                        ; $6c9e: $06 $b1
	pop hl                                           ; $6ca0: $e1
	rst $38                                          ; $6ca1: $ff
	ld bc, $061d                                     ; $6ca2: $01 $1d $06
	or c                                             ; $6ca5: $b1
	ld sp, $0000                                     ; $6ca6: $31 $00 $00
	dec e                                            ; $6ca9: $1d
	inc c                                            ; $6caa: $0c
	or c                                             ; $6cab: $b1
	ld sp, $0000                                     ; $6cac: $31 $00 $00
	dec e                                            ; $6caf: $1d
	inc c                                            ; $6cb0: $0c
	db $fd                                           ; $6cb1: $fd
	ret nc                                           ; $6cb2: $d0

	ld h, d                                          ; $6cb3: $62
	cp $90                                           ; $6cb4: $fe $90
	ld h, e                                          ; $6cb6: $63
	db $fd                                           ; $6cb7: $fd
	add hl, bc                                       ; $6cb8: $09
	ld l, l                                          ; $6cb9: $6d
	or c                                             ; $6cba: $b1
	ld [hl], c                                       ; $6cbb: $71
	rst $38                                          ; $6cbc: $ff
	ld bc, $0616                                     ; $6cbd: $01 $16 $06
	ld d, $06                                        ; $6cc0: $16 $06
	or c                                             ; $6cc2: $b1
	pop hl                                           ; $6cc3: $e1
	rst $38                                          ; $6cc4: $ff
	ld [bc], a                                       ; $6cc5: $02
	ld a, [hl]                                       ; $6cc6: $7e
	inc bc                                           ; $6cc7: $03
	nop                                              ; $6cc8: $00
	xor c                                            ; $6cc9: $a9
	ld [hl+], a                                      ; $6cca: $22
	inc c                                            ; $6ccb: $0c
	sub [hl]                                         ; $6ccc: $96
	rst $38                                          ; $6ccd: $ff
	ld [bc], a                                       ; $6cce: $02
	ld a, [hl]                                       ; $6ccf: $7e
	nop                                              ; $6cd0: $00
	ld [hl+], a                                      ; $6cd1: $22
	ld b, $22                                        ; $6cd2: $06 $22
	ld b, $b1                                        ; $6cd4: $06 $b1
	ld sp, $0000                                     ; $6cd6: $31 $00 $00
	ld [hl+], a                                      ; $6cd9: $22
	ld b, $b1                                        ; $6cda: $06 $b1
	ld [hl], c                                       ; $6cdc: $71
	rst $38                                          ; $6cdd: $ff
	ld bc, $0616                                     ; $6cde: $01 $16 $06
	db $fd                                           ; $6ce1: $fd
	add hl, bc                                       ; $6ce2: $09
	ld l, l                                          ; $6ce3: $6d
	nop                                              ; $6ce4: $00
	inc c                                            ; $6ce5: $0c
	or c                                             ; $6ce6: $b1
	pop bc                                           ; $6ce7: $c1
	rst $38                                          ; $6ce8: $ff
	ld [bc], a                                       ; $6ce9: $02
	ld a, [hl]                                       ; $6cea: $7e
	dec b                                            ; $6ceb: $05
	nop                                              ; $6cec: $00
	and b                                            ; $6ced: $a0
	daa                                              ; $6cee: $27
	ld b, $b5                                        ; $6cef: $06 $b5
	or c                                             ; $6cf1: $b1
	ld bc, $01ff                                     ; $6cf2: $01 $ff $01
	ld a, [hl]                                       ; $6cf5: $7e
	nop                                              ; $6cf6: $00
	daa                                              ; $6cf7: $27
	ld b, $cd                                        ; $6cf8: $06 $cd
	daa                                              ; $6cfa: $27
	ld b, $90                                        ; $6cfb: $06 $90
	daa                                              ; $6cfd: $27
	ld b, $b1                                        ; $6cfe: $06 $b1
	ld sp, $0000                                     ; $6d00: $31 $00 $00
	daa                                              ; $6d03: $27
	ld b, $00                                        ; $6d04: $06 $00
	ld b, $fe                                        ; $6d06: $06 $fe
	rst $38                                          ; $6d08: $ff
	or c                                             ; $6d09: $b1
	pop hl                                           ; $6d0a: $e1
	rst $38                                          ; $6d0b: $ff
	ld bc, $017d                                     ; $6d0c: $01 $7d $01
	inc h                                            ; $6d0f: $24
	ld b, $24                                        ; $6d10: $06 $24
	ld b, $b1                                        ; $6d12: $06 $b1
	ld sp, $0000                                     ; $6d14: $31 $00 $00
	inc h                                            ; $6d17: $24
	ld b, $b1                                        ; $6d18: $06 $b1
	pop hl                                           ; $6d1a: $e1
	rst $38                                          ; $6d1b: $ff
	ld bc, $0622                                     ; $6d1c: $01 $22 $06
	or c                                             ; $6d1f: $b1
	ld sp, $0000                                     ; $6d20: $31 $00 $00
	ld [hl+], a                                      ; $6d23: $22
	inc c                                            ; $6d24: $0c
	or c                                             ; $6d25: $b1
	ld sp, $0000                                     ; $6d26: $31 $00 $00
	ld [hl+], a                                      ; $6d29: $22
	inc c                                            ; $6d2a: $0c
	db $fd                                           ; $6d2b: $fd
	ret nc                                           ; $6d2c: $d0

	ld h, d                                          ; $6d2d: $62
	add e                                            ; $6d2e: $83
	ld h, e                                          ; $6d2f: $63
	cp $c2                                           ; $6d30: $fe $c2
	ld a, [bc]                                       ; $6d32: $0a
	dec b                                            ; $6d33: $05
	call nz, $060a                                   ; $6d34: $c4 $0a $06
	nop                                              ; $6d37: $00
	ld bc, $0ac2                                     ; $6d38: $01 $c2 $0a
	ld [$0ac4], sp                                   ; $6d3b: $08 $c4 $0a
	ld b, $c6                                        ; $6d3e: $06 $c6
	ld a, [bc]                                       ; $6d40: $0a
	inc b                                            ; $6d41: $04
	jp nz, $040c                                     ; $6d42: $c2 $0c $04

	call nz, $020c                                   ; $6d45: $c4 $0c $02
	jp nz, $040d                                     ; $6d48: $c2 $0d $04

	call nz, $020d                                   ; $6d4b: $c4 $0d $02
	jp nz, $0408                                     ; $6d4e: $c2 $08 $04

	call nz, $0208                                   ; $6d51: $c4 $08 $02
	jp nz, $050d                                     ; $6d54: $c2 $0d $05

	call nz, $070d                                   ; $6d57: $c4 $0d $07
	jp nz, $050d                                     ; $6d5a: $c2 $0d $05

	call nz, $070d                                   ; $6d5d: $c4 $0d $07
	jp nz, $0511                                     ; $6d60: $c2 $11 $05

	nop                                              ; $6d63: $00
	ld bc, $0511                                     ; $6d64: $01 $11 $05
	add $11                                          ; $6d67: $c6 $11
	rlca                                             ; $6d69: $07
	jp nz, $0605                                     ; $6d6a: $c2 $05 $06

	jp nz, $050f                                     ; $6d6d: $c2 $0f $05

	nop                                              ; $6d70: $00
	ld bc, $050f                                     ; $6d71: $01 $0f $05
	add $0f                                          ; $6d74: $c6 $0f
	rlca                                             ; $6d76: $07
	jp nz, $060f                                     ; $6d77: $c2 $0f $06

	call nz, $060f                                   ; $6d7a: $c4 $0f $06
	jp nz, $0606                                     ; $6d7d: $c2 $06 $06

	rrca                                             ; $6d80: $0f
	ld b, $c4                                        ; $6d81: $06 $c4
	rrca                                             ; $6d83: $0f
	ld b, $c4                                        ; $6d84: $06 $c4
	ld b, $0c                                        ; $6d86: $06 $0c
	jp nz, $0512                                     ; $6d88: $c2 $12 $05

	call nz, $0706                                   ; $6d8b: $c4 $06 $07
	call nz, $0606                                   ; $6d8e: $c4 $06 $06
	jp nz, $0608                                     ; $6d91: $c2 $08 $06

	inc d                                            ; $6d94: $14
	dec b                                            ; $6d95: $05
	call nz, $0708                                   ; $6d96: $c4 $08 $07
	cp $ff                                           ; $6d99: $fe $ff
	ret nc                                           ; $6d9b: $d0

	ld h, d                                          ; $6d9c: $62
	cp $0b                                           ; $6d9d: $fe $0b
	inc c                                            ; $6d9f: $0c
	cp [hl]                                          ; $6da0: $be
	ld b, $09                                        ; $6da1: $06 $09
	add hl, bc                                       ; $6da3: $09
	ld c, a                                          ; $6da4: $4f
	ld [de], a                                       ; $6da5: $12
	add hl, bc                                       ; $6da6: $09
	dec bc                                           ; $6da7: $0b
	dec bc                                           ; $6da8: $0b
	ld [de], a                                       ; $6da9: $12
	add hl, bc                                       ; $6daa: $09
	ld [de], a                                       ; $6dab: $12
	ld c, a                                          ; $6dac: $4f
	add hl, bc                                       ; $6dad: $09
	cp [hl]                                          ; $6dae: $be
	ld e, $0c                                        ; $6daf: $1e $0c
	dec bc                                           ; $6db1: $0b
	inc c                                            ; $6db2: $0c
	cp [hl]                                          ; $6db3: $be
	ld b, $09                                        ; $6db4: $06 $09
	add hl, bc                                       ; $6db6: $09
	ld c, a                                          ; $6db7: $4f
	ld [de], a                                       ; $6db8: $12
	add hl, bc                                       ; $6db9: $09
	dec bc                                           ; $6dba: $0b
	dec bc                                           ; $6dbb: $0b
	ld c, a                                          ; $6dbc: $4f
	add hl, bc                                       ; $6dbd: $09
	dec bc                                           ; $6dbe: $0b
	ld c, a                                          ; $6dbf: $4f
	add hl, bc                                       ; $6dc0: $09
	dec bc                                           ; $6dc1: $0b
	dec c                                            ; $6dc2: $0d
	cp [hl]                                          ; $6dc3: $be
	cp $ff                                           ; $6dc4: $fe $ff
	ret nc                                           ; $6dc6: $d0

	sbc d                                            ; $6dc7: $9a
	cp $b5                                           ; $6dc8: $fe $b5
	ld d, c                                          ; $6dca: $51
	nop                                              ; $6dcb: $00
	rst $38                                          ; $6dcc: $ff
	dec b                                            ; $6dcd: $05
	ld a, [hl]                                       ; $6dce: $7e
	dec b                                            ; $6dcf: $05
	nop                                              ; $6dd0: $00
	and b                                            ; $6dd1: $a0
	rra                                              ; $6dd2: $1f
	jr @-$68                                         ; $6dd3: $18 $96

	nop                                              ; $6dd5: $00
	nop                                              ; $6dd6: $00
	ld a, [hl]                                       ; $6dd7: $7e

jr_02f_6dd8:
	nop                                              ; $6dd8: $00
	sub c                                            ; $6dd9: $91
	ret z                                            ; $6dda: $c8

	ld a, l                                          ; $6ddb: $7d
	ld [bc], a                                       ; $6ddc: $02
	sub h                                            ; $6ddd: $94

jr_02f_6dde:
	ld d, $20                                        ; $6dde: $16 $20
	dec b                                            ; $6de0: $05
	ld a, l                                          ; $6de1: $7d
	nop                                              ; $6de2: $00
	nop                                              ; $6de3: $00

jr_02f_6de4:
	add hl, bc                                       ; $6de4: $09
	sub b                                            ; $6de5: $90
	call $1e94                                       ; $6de6: $cd $94 $1e
	sub [hl]                                         ; $6de9: $96
	rst $38                                          ; $6dea: $ff
	ld bc, $0538                                     ; $6deb: $01 $38 $05
	sub h                                            ; $6dee: $94
	ld [$0096], sp                                   ; $6def: $08 $96 $00
	nop                                              ; $6df2: $00
	nop                                              ; $6df3: $00
	dec b                                            ; $6df4: $05
	nop                                              ; $6df5: $00
	jr nc, jr_02f_6df8                               ; $6df6: $30 $00

jr_02f_6df8:
	ld h, b                                          ; $6df8: $60
	cp $91                                           ; $6df9: $fe $91
	ret z                                            ; $6dfb: $c8

	ld a, l                                          ; $6dfc: $7d
	ld [bc], a                                       ; $6dfd: $02
	sub h                                            ; $6dfe: $94
	ld d, $20                                        ; $6dff: $16 $20
	dec b                                            ; $6e01: $05
	ld a, l                                          ; $6e02: $7d
	nop                                              ; $6e03: $00
	nop                                              ; $6e04: $00
	add hl, bc                                       ; $6e05: $09
	sub b                                            ; $6e06: $90
	call z, $1e94                                    ; $6e07: $cc $94 $1e
	sub [hl]                                         ; $6e0a: $96
	rst $38                                          ; $6e0b: $ff
	ld bc, $0538                                     ; $6e0c: $01 $38 $05
	sub h                                            ; $6e0f: $94
	ld [$0096], sp                                   ; $6e10: $08 $96 $00
	nop                                              ; $6e13: $00
	nop                                              ; $6e14: $00
	dec b                                            ; $6e15: $05
	rst $38                                          ; $6e16: $ff
	ret nc                                           ; $6e17: $d0

	sbc d                                            ; $6e18: $9a
	cp $90                                           ; $6e19: $fe $90
	add $70                                          ; $6e1b: $c6 $70
	sub [hl]                                         ; $6e1d: $96
	rst $38                                          ; $6e1e: $ff
	dec b                                            ; $6e1f: $05
	ld a, [hl]                                       ; $6e20: $7e
	dec b                                            ; $6e21: $05
	nop                                              ; $6e22: $00
	and b                                            ; $6e23: $a0
	cpl                                              ; $6e24: $2f
	jr jr_02f_6dd8                                   ; $6e25: $18 $b1

	ld sp, $06ff                                     ; $6e27: $31 $ff $06
	cpl                                              ; $6e2a: $2f
	jr jr_02f_6dde                                   ; $6e2b: $18 $b1

	ld sp, $05ff                                     ; $6e2d: $31 $ff $05
	cpl                                              ; $6e30: $2f
	jr jr_02f_6de4                                   ; $6e31: $18 $b1

	ld hl, $06ff                                     ; $6e33: $21 $ff $06
	cpl                                              ; $6e36: $2f
	jr jr_02f_6e39                                   ; $6e37: $18 $00

jr_02f_6e39:
	ld h, b                                          ; $6e39: $60
	cp $ff                                           ; $6e3a: $fe $ff
	ret nc                                           ; $6e3c: $d0

	sbc d                                            ; $6e3d: $9a
	cp $85                                           ; $6e3e: $fe $85
	jp nz, $170b                                     ; $6e40: $c2 $0b $17

	add $0b                                          ; $6e43: $c6 $0b
	ld bc, $0bc4                                     ; $6e45: $01 $c4 $0b
	inc c                                            ; $6e48: $0c
	add $0b                                          ; $6e49: $c6 $0b
	ld [bc], a                                       ; $6e4b: $02
	jp nz, $0612                                     ; $6e4c: $c2 $12 $06

	add $12                                          ; $6e4f: $c6 $12
	inc b                                            ; $6e51: $04
	jp nz, $0c17                                     ; $6e52: $c2 $17 $0c

	add $17                                          ; $6e55: $c6 $17
	ld [bc], a                                       ; $6e57: $02
	jp nz, $0715                                     ; $6e58: $c2 $15 $07

	add $15                                          ; $6e5b: $c6 $15
	inc bc                                           ; $6e5d: $03
	call nz, $0712                                   ; $6e5e: $c4 $12 $07
	nop                                              ; $6e61: $00
	rlca                                             ; $6e62: $07
	jp nz, $050b                                     ; $6e63: $c2 $0b $05

	or c                                             ; $6e66: $b1
	ld h, c                                          ; $6e67: $61
	ld [bc], a                                       ; $6e68: $02
	ld bc, $050b                                     ; $6e69: $01 $0b $05
	nop                                              ; $6e6c: $00
	ld c, $b1                                        ; $6e6d: $0e $b1
	ld hl, $0000                                     ; $6e6f: $21 $00 $00
	rla                                              ; $6e72: $17
	rlca                                             ; $6e73: $07
	add $17                                          ; $6e74: $c6 $17
	inc bc                                           ; $6e76: $03
	jp nz, $0312                                     ; $6e77: $c2 $12 $03

	add $12                                          ; $6e7a: $c6 $12
	dec bc                                           ; $6e7c: $0b
	or c                                             ; $6e7d: $b1
	ld hl, $0000                                     ; $6e7e: $21 $00 $00
	dec d                                            ; $6e81: $15
	ld [hl+], a                                      ; $6e82: $22
	add $15                                          ; $6e83: $c6 $15

jr_02f_6e85:
	ld [$1000], sp                                   ; $6e85: $08 $00 $10
	cp $ff                                           ; $6e88: $fe $ff
	ret nc                                           ; $6e8a: $d0

	sbc d                                            ; $6e8b: $9a
	cp $4e                                           ; $6e8c: $fe $4e
	ld c, $09                                        ; $6e8e: $0e $09
	ld a, [bc]                                       ; $6e90: $0a
	ld c, [hl]                                       ; $6e91: $4e
	ld c, $09                                        ; $6e92: $0e $09
	ld a, [bc]                                       ; $6e94: $0a
	ld d, b                                          ; $6e95: $50
	ld c, $09                                        ; $6e96: $0e $09
	ld a, [bc]                                       ; $6e98: $0a
	add hl, bc                                       ; $6e99: $09
	ld c, $12                                        ; $6e9a: $0e $12
	ld a, [bc]                                       ; $6e9c: $0a
	add hl, bc                                       ; $6e9d: $09
	ld c, $13                                        ; $6e9e: $0e $13
	ld a, [bc]                                       ; $6ea0: $0a
	ld c, [hl]                                       ; $6ea1: $4e

jr_02f_6ea2:
	ld c, $09                                        ; $6ea2: $0e $09
	ld a, [bc]                                       ; $6ea4: $0a
	ld d, b                                          ; $6ea5: $50
	ld c, $09                                        ; $6ea6: $0e $09
	ld a, [bc]                                       ; $6ea8: $0a
	add hl, bc                                       ; $6ea9: $09
	ld [$0609], sp                                   ; $6eaa: $08 $09 $06
	ld c, [hl]                                       ; $6ead: $4e
	ld a, [bc]                                       ; $6eae: $0a
	cp $ff                                           ; $6eaf: $fe $ff
	ret nc                                           ; $6eb1: $d0

	ld c, e                                          ; $6eb2: $4b
	cp $d1                                           ; $6eb3: $fe $d1
	sub c                                            ; $6eb5: $91
	nop                                              ; $6eb6: $00
	jr jr_02f_6e85                                   ; $6eb7: $18 $cc

	dec c                                            ; $6eb9: $0d
	ld [de], a                                       ; $6eba: $12
	call nz, $060d                                   ; $6ebb: $c4 $0d $06
	call z, $0a1d                                    ; $6ebe: $cc $1d $0a
	nop                                              ; $6ec1: $00
	ld [bc], a                                       ; $6ec2: $02
	call nz, $0a1d                                   ; $6ec3: $c4 $1d $0a
	nop                                              ; $6ec6: $00
	ld [bc], a                                       ; $6ec7: $02
	jp $0a1d                                         ; $6ec8: $c3 $1d $0a


	nop                                              ; $6ecb: $00
	ld [bc], a                                       ; $6ecc: $02
	jp nz, $0a1d                                     ; $6ecd: $c2 $1d $0a

	nop                                              ; $6ed0: $00
	ld [bc], a                                       ; $6ed1: $02
	call z, $120f                                    ; $6ed2: $cc $0f $12
	call nz, $060f                                   ; $6ed5: $c4 $0f $06
	ret                                              ; $6ed8: $c9


	ld e, $0a                                        ; $6ed9: $1e $0a
	nop                                              ; $6edb: $00
	ld [bc], a                                       ; $6edc: $02
	call nz, $0a1e                                   ; $6edd: $c4 $1e $0a
	nop                                              ; $6ee0: $00
	ld [bc], a                                       ; $6ee1: $02
	jp $0a1e                                         ; $6ee2: $c3 $1e $0a


	nop                                              ; $6ee5: $00
	ld [bc], a                                       ; $6ee6: $02
	jp nz, $0a1e                                     ; $6ee7: $c2 $1e $0a

	nop                                              ; $6eea: $00
	ld [bc], a                                       ; $6eeb: $02
	call z, $1211                                    ; $6eec: $cc $11 $12
	call nz, $0611                                   ; $6eef: $c4 $11 $06
	jp z, $0a20                                      ; $6ef2: $ca $20 $0a

	nop                                              ; $6ef5: $00
	ld [bc], a                                       ; $6ef6: $02
	call nz, $0a20                                   ; $6ef7: $c4 $20 $0a
	nop                                              ; $6efa: $00
	ld [bc], a                                       ; $6efb: $02
	jp $0a20                                         ; $6efc: $c3 $20 $0a


	nop                                              ; $6eff: $00
	ld [bc], a                                       ; $6f00: $02
	jp nz, $0a20                                     ; $6f01: $c2 $20 $0a

	nop                                              ; $6f04: $00
	ld [bc], a                                       ; $6f05: $02
	sub a                                            ; $6f06: $97
	ld c, [hl]                                       ; $6f07: $4e
	ld [hl+], a                                      ; $6f08: $22
	jr nc, jr_02f_6ea2                               ; $6f09: $30 $97

	nop                                              ; $6f0b: $00
	jp nz, $1822                                     ; $6f0c: $c2 $22 $18

	call z, $1211                                    ; $6f0f: $cc $11 $12
	call nz, $0611                                   ; $6f12: $c4 $11 $06
	call z, $0a24                                    ; $6f15: $cc $24 $0a
	nop                                              ; $6f18: $00
	ld [bc], a                                       ; $6f19: $02
	call nz, $0a24                                   ; $6f1a: $c4 $24 $0a
	nop                                              ; $6f1d: $00
	ld [bc], a                                       ; $6f1e: $02
	jp $0a24                                         ; $6f1f: $c3 $24 $0a


	nop                                              ; $6f22: $00
	ld [bc], a                                       ; $6f23: $02
	jp nz, $0a24                                     ; $6f24: $c2 $24 $0a

	nop                                              ; $6f27: $00
	ld [bc], a                                       ; $6f28: $02
	call z, $120a                                    ; $6f29: $cc $0a $12
	call nz, $060a                                   ; $6f2c: $c4 $0a $06
	jp z, $0a1d                                      ; $6f2f: $ca $1d $0a

	nop                                              ; $6f32: $00
	ld [bc], a                                       ; $6f33: $02
	call nz, $0a1d                                   ; $6f34: $c4 $1d $0a
	nop                                              ; $6f37: $00
	ld [bc], a                                       ; $6f38: $02
	jp $0a1d                                         ; $6f39: $c3 $1d $0a


	nop                                              ; $6f3c: $00
	ld [bc], a                                       ; $6f3d: $02
	jp nz, $0a1d                                     ; $6f3e: $c2 $1d $0a

	nop                                              ; $6f41: $00
	ld [bc], a                                       ; $6f42: $02
	call z, $120f                                    ; $6f43: $cc $0f $12
	call nz, $060f                                   ; $6f46: $c4 $0f $06
	sla d                                            ; $6f49: $cb $22
	ld a, [bc]                                       ; $6f4b: $0a
	nop                                              ; $6f4c: $00
	ld [bc], a                                       ; $6f4d: $02
	call nz, $0a22                                   ; $6f4e: $c4 $22 $0a
	nop                                              ; $6f51: $00
	ld [bc], a                                       ; $6f52: $02
	jp $0a1e                                         ; $6f53: $c3 $1e $0a


	nop                                              ; $6f56: $00
	ld [bc], a                                       ; $6f57: $02
	jp nz, $0a1e                                     ; $6f58: $c2 $1e $0a

	nop                                              ; $6f5b: $00
	ld [bc], a                                       ; $6f5c: $02
	call z, $1214                                    ; $6f5d: $cc $14 $12
	call nz, $0614                                   ; $6f60: $c4 $14 $06
	sla h                                            ; $6f63: $cb $24
	ld a, [bc]                                       ; $6f65: $0a
	nop                                              ; $6f66: $00
	ld [bc], a                                       ; $6f67: $02
	call nz, $0a24                                   ; $6f68: $c4 $24 $0a
	nop                                              ; $6f6b: $00
	ld [bc], a                                       ; $6f6c: $02
	jp $0a14                                         ; $6f6d: $c3 $14 $0a


	nop                                              ; $6f70: $00
	ld [bc], a                                       ; $6f71: $02
	jp nz, $0a14                                     ; $6f72: $c2 $14 $0a

	nop                                              ; $6f75: $00
	ld [bc], a                                       ; $6f76: $02
	sub a                                            ; $6f77: $97
	ld c, a                                          ; $6f78: $4f
	ld e, $30                                        ; $6f79: $1e $30
	sub a                                            ; $6f7b: $97
	nop                                              ; $6f7c: $00
	jp nz, $181e                                     ; $6f7d: $c2 $1e $18

	sub a                                            ; $6f80: $97
	ld c, [hl]                                       ; $6f81: $4e
	dec c                                            ; $6f82: $0d
	jr nc, @-$67                                     ; $6f83: $30 $97

	nop                                              ; $6f85: $00
	jp nz, $180d                                     ; $6f86: $c2 $0d $18

	cp $ff                                           ; $6f89: $fe $ff
	ret nc                                           ; $6f8b: $d0

	ld c, e                                          ; $6f8c: $4b
	cp $d1                                           ; $6f8d: $fe $d1
	sub d                                            ; $6f8f: $92
	sla h                                            ; $6f90: $cb $24
	ld a, [bc]                                       ; $6f92: $0a
	call nz, $0224                                   ; $6f93: $c4 $24 $02
	ret                                              ; $6f96: $c9


	dec h                                            ; $6f97: $25
	ld a, [bc]                                       ; $6f98: $0a
	call nz, $0225                                   ; $6f99: $c4 $25 $02
	ei                                               ; $6f9c: $fb
	rst JumpTable                                          ; $6f9d: $c7
	inc l                                            ; $6f9e: $2c
	inc h                                            ; $6f9f: $24
	jp nz, $0c2c                                     ; $6fa0: $c2 $2c $0c

	sla h                                            ; $6fa3: $cb $24
	ld a, [bc]                                       ; $6fa5: $0a
	jp $0224                                         ; $6fa6: $c3 $24 $02


	ret                                              ; $6fa9: $c9


	dec h                                            ; $6faa: $25
	ld a, [bc]                                       ; $6fab: $0a
	jp $0225                                         ; $6fac: $c3 $25 $02


	ei                                               ; $6faf: $fb
	ld [bc], a                                       ; $6fb0: $02
	rst JumpTable                                          ; $6fb1: $c7
	inc l                                            ; $6fb2: $2c
	ld [de], a                                       ; $6fb3: $12
	jp nz, $062c                                     ; $6fb4: $c2 $2c $06

	call nz, $1233                                   ; $6fb7: $c4 $33 $12
	jp nz, $0633                                     ; $6fba: $c2 $33 $06

	rst JumpTable                                          ; $6fbd: $c7
	jr nc, jr_02f_6fd2                               ; $6fbe: $30 $12

	jp $0630                                         ; $6fc0: $c3 $30 $06


	rst JumpTable                                          ; $6fc3: $c7
	ld sp, $c224                                     ; $6fc4: $31 $24 $c2
	ld sp, $c80c                                     ; $6fc7: $31 $0c $c8
	jr nc, jr_02f_6fd6                               ; $6fca: $30 $0a

	jp nz, $0230                                     ; $6fcc: $c2 $30 $02

	rst JumpTable                                          ; $6fcf: $c7
	ld l, $0a                                        ; $6fd0: $2e $0a

jr_02f_6fd2:
	jp nz, $022e                                     ; $6fd2: $c2 $2e $02

	rst JumpTable                                          ; $6fd5: $c7

jr_02f_6fd6:
	inc l                                            ; $6fd6: $2c
	inc h                                            ; $6fd7: $24
	jp $0c2c                                         ; $6fd8: $c3 $2c $0c


	rst JumpTable                                          ; $6fdb: $c7
	add hl, hl                                       ; $6fdc: $29
	ld [de], a                                       ; $6fdd: $12
	jp nz, $0629                                     ; $6fde: $c2 $29 $06

	rst JumpTable                                          ; $6fe1: $c7
	ld l, $24                                        ; $6fe2: $2e $24
	jp nz, $0c2e                                     ; $6fe4: $c2 $2e $0c

	rst JumpTable                                          ; $6fe7: $c7
	inc l                                            ; $6fe8: $2c
	ld a, [bc]                                       ; $6fe9: $0a
	jp nz, $022c                                     ; $6fea: $c2 $2c $02

	push bc                                          ; $6fed: $c5
	ld a, [hl+]                                      ; $6fee: $2a
	ld a, [bc]                                       ; $6fef: $0a
	jp nz, $022a                                     ; $6ff0: $c2 $2a $02

	ret z                                            ; $6ff3: $c8

	add hl, hl                                       ; $6ff4: $29
	ld [de], a                                       ; $6ff5: $12
	jp nz, $0629                                     ; $6ff6: $c2 $29 $06

	add $2a                                          ; $6ff9: $c6 $2a
	inc c                                            ; $6ffb: $0c
	jp nz, $0c2a                                     ; $6ffc: $c2 $2a $0c

jr_02f_6fff:
	call z, $1222                                    ; $6fff: $cc $22 $12
	jp $0622                                         ; $7002: $c3 $22 $06


	jp z, $2425                                      ; $7005: $ca $25 $24

	jp $0c25                                         ; $7008: $c3 $25 $0c


	sla h                                            ; $700b: $cb $24
	ld [de], a                                       ; $700d: $12
	jp $0624                                         ; $700e: $c3 $24 $06


	ret z                                            ; $7011: $c8

	daa                                              ; $7012: $27
	inc h                                            ; $7013: $24
	jp $0c27                                         ; $7014: $c3 $27 $0c


	sla l                                            ; $7017: $cb $25
	ld a, [bc]                                       ; $7019: $0a
	jp $0225                                         ; $701a: $c3 $25 $02


	call z, $0a24                                    ; $701d: $cc $24 $0a
	jp $0224                                         ; $7020: $c3 $24 $02


	sla l                                            ; $7023: $cb $25
	inc h                                            ; $7025: $24
	rst JumpTable                                          ; $7026: $c7
	dec h                                            ; $7027: $25
	inc c                                            ; $7028: $0c
	push bc                                          ; $7029: $c5
	dec h                                            ; $702a: $25

jr_02f_702b:
	inc c                                            ; $702b: $0c
	jp nz, $0c25                                     ; $702c: $c2 $25 $0c

	cp $ff                                           ; $702f: $fe $ff
	ret nc                                           ; $7031: $d0

	ld c, e                                          ; $7032: $4b
	cp $d1                                           ; $7033: $fe $d1
	ld a, a                                          ; $7035: $7f
	dec e                                            ; $7036: $1d
	jp nz, $1800                                     ; $7037: $c2 $00 $18

	nop                                              ; $703a: $00
	jr jr_02f_6fff                                   ; $703b: $18 $c2

	jr jr_02f_7049                                   ; $703d: $18 $0a

	nop                                              ; $703f: $00
	ld [bc], a                                       ; $7040: $02
	call nz, $0a18                                   ; $7041: $c4 $18 $0a
	nop                                              ; $7044: $00
	ld [bc], a                                       ; $7045: $02
	call nz, $0a18                                   ; $7046: $c4 $18 $0a

jr_02f_7049:
	nop                                              ; $7049: $00
	ld [bc], a                                       ; $704a: $02
	add $18                                          ; $704b: $c6 $18
	ld a, [bc]                                       ; $704d: $0a
	nop                                              ; $704e: $00
	ld [bc], a                                       ; $704f: $02
	nop                                              ; $7050: $00
	jr @-$3c                                         ; $7051: $18 $c2

	add hl, de                                       ; $7053: $19
	ld a, [bc]                                       ; $7054: $0a
	nop                                              ; $7055: $00
	ld [bc], a                                       ; $7056: $02
	call nz, $0a19                                   ; $7057: $c4 $19 $0a
	nop                                              ; $705a: $00
	ld [bc], a                                       ; $705b: $02
	call nz, $0a19                                   ; $705c: $c4 $19 $0a
	nop                                              ; $705f: $00
	ld [bc], a                                       ; $7060: $02
	add $19                                          ; $7061: $c6 $19
	ld a, [bc]                                       ; $7063: $0a
	nop                                              ; $7064: $00
	ld [bc], a                                       ; $7065: $02
	nop                                              ; $7066: $00
	jr jr_02f_702b                                   ; $7067: $18 $c2

	dec de                                           ; $7069: $1b
	ld a, [bc]                                       ; $706a: $0a
	nop                                              ; $706b: $00
	ld [bc], a                                       ; $706c: $02
	call nz, $0a1b                                   ; $706d: $c4 $1b $0a
	nop                                              ; $7070: $00
	ld [bc], a                                       ; $7071: $02
	call nz, $0a1b                                   ; $7072: $c4 $1b $0a
	nop                                              ; $7075: $00
	ld [bc], a                                       ; $7076: $02
	add $1b                                          ; $7077: $c6 $1b
	ld a, [bc]                                       ; $7079: $0a
	nop                                              ; $707a: $00
	ld [bc], a                                       ; $707b: $02
	call nz, $301d                                   ; $707c: $c4 $1d $30
	add $1d                                          ; $707f: $c6 $1d
	jr jr_02f_7083                                   ; $7081: $18 $00

jr_02f_7083:
	jr @-$3c                                         ; $7083: $18 $c2

	dec de                                           ; $7085: $1b
	ld a, [bc]                                       ; $7086: $0a
	nop                                              ; $7087: $00
	ld [bc], a                                       ; $7088: $02

jr_02f_7089:
	call nz, $0a1b                                   ; $7089: $c4 $1b $0a
	nop                                              ; $708c: $00
	ld [bc], a                                       ; $708d: $02
	call nz, $0a1b                                   ; $708e: $c4 $1b $0a
	nop                                              ; $7091: $00
	ld [bc], a                                       ; $7092: $02
	add $1b                                          ; $7093: $c6 $1b
	ld a, [bc]                                       ; $7095: $0a
	nop                                              ; $7096: $00
	ld [bc], a                                       ; $7097: $02
	nop                                              ; $7098: $00
	jr @-$3c                                         ; $7099: $18 $c2

	jr nz, jr_02f_70a7                               ; $709b: $20 $0a

	nop                                              ; $709d: $00
	ld [bc], a                                       ; $709e: $02
	call nz, $0a20                                   ; $709f: $c4 $20 $0a
	nop                                              ; $70a2: $00
	ld [bc], a                                       ; $70a3: $02
	call nz, $0a20                                   ; $70a4: $c4 $20 $0a

jr_02f_70a7:
	nop                                              ; $70a7: $00
	ld [bc], a                                       ; $70a8: $02
	add $20                                          ; $70a9: $c6 $20
	ld a, [bc]                                       ; $70ab: $0a
	nop                                              ; $70ac: $00
	ld [bc], a                                       ; $70ad: $02
	nop                                              ; $70ae: $00
	jr @-$3c                                         ; $70af: $18 $c2

	add hl, de                                       ; $70b1: $19
	ld a, [bc]                                       ; $70b2: $0a
	nop                                              ; $70b3: $00
	ld [bc], a                                       ; $70b4: $02
	call nz, $0a19                                   ; $70b5: $c4 $19 $0a
	nop                                              ; $70b8: $00
	ld [bc], a                                       ; $70b9: $02
	call nz, $0a19                                   ; $70ba: $c4 $19 $0a
	nop                                              ; $70bd: $00
	ld [bc], a                                       ; $70be: $02
	add $19                                          ; $70bf: $c6 $19
	ld a, [bc]                                       ; $70c1: $0a
	nop                                              ; $70c2: $00
	ld [bc], a                                       ; $70c3: $02
	nop                                              ; $70c4: $00
	jr jr_02f_7089                                   ; $70c5: $18 $c2

	dec de                                           ; $70c7: $1b
	ld a, [bc]                                       ; $70c8: $0a
	nop                                              ; $70c9: $00
	ld [bc], a                                       ; $70ca: $02
	call nz, $0a1b                                   ; $70cb: $c4 $1b $0a
	nop                                              ; $70ce: $00
	ld [bc], a                                       ; $70cf: $02
	call nz, $0a1b                                   ; $70d0: $c4 $1b $0a
	nop                                              ; $70d3: $00
	ld [bc], a                                       ; $70d4: $02
	add $1b                                          ; $70d5: $c6 $1b
	ld a, [bc]                                       ; $70d7: $0a
	nop                                              ; $70d8: $00
	ld [bc], a                                       ; $70d9: $02
	call nz, $3021                                   ; $70da: $c4 $21 $30
	add $21                                          ; $70dd: $c6 $21
	jr @-$3a                                         ; $70df: $18 $c4

	jr nz, jr_02f_7113                               ; $70e1: $20 $30

	add $20                                          ; $70e3: $c6 $20

jr_02f_70e5:
	jr jr_02f_70e5                                   ; $70e5: $18 $fe

	rst $38                                          ; $70e7: $ff
	ret nc                                           ; $70e8: $d0

	add d                                            ; $70e9: $82
	cp $c4                                           ; $70ea: $fe $c4
	pop de                                           ; $70ec: $d1
	sub b                                            ; $70ed: $90
	ld [hl], a                                       ; $70ee: $77
	nop                                              ; $70ef: $00
	ld [de], a                                       ; $70f0: $12
	ld a, [hl]                                       ; $70f1: $7e
	dec e                                            ; $70f2: $1d
	nop                                              ; $70f3: $00
	and b                                            ; $70f4: $a0
	inc l                                            ; $70f5: $2c
	jr nc, jr_02f_7124                               ; $70f6: $30 $2c

	ld [de], a                                       ; $70f8: $12
	jp $0631                                         ; $70f9: $c3 $31 $06


	jr nc, @+$14                                     ; $70fc: $30 $12

	ld sp, $c406                                     ; $70fe: $31 $06 $c4
	inc l                                            ; $7101: $2c
	ld b, $7e                                        ; $7102: $06 $7e
	nop                                              ; $7104: $00
	and b                                            ; $7105: $a0
	add $d1                                          ; $7106: $c6 $d1
	dec [hl]                                         ; $7108: $35
	ld a, [bc]                                       ; $7109: $0a
	pop bc                                           ; $710a: $c1
	dec [hl]                                         ; $710b: $35
	ld b, $c6                                        ; $710c: $06 $c6
	dec [hl]                                         ; $710e: $35
	ld b, $c1                                        ; $710f: $06 $c1
	dec [hl]                                         ; $7111: $35
	ld [bc], a                                       ; $7112: $02

jr_02f_7113:
	add $35                                          ; $7113: $c6 $35
	inc h                                            ; $7115: $24
	pop bc                                           ; $7116: $c1
	dec [hl]                                         ; $7117: $35
	inc c                                            ; $7118: $0c
	ld a, l                                          ; $7119: $7d
	ld [bc], a                                       ; $711a: $02
	pop de                                           ; $711b: $d1
	call nz, $1d7e                                   ; $711c: $c4 $7e $1d
	nop                                              ; $711f: $00
	and b                                            ; $7120: $a0
	nop                                              ; $7121: $00
	ld [de], a                                       ; $7122: $12
	add hl, hl                                       ; $7123: $29

jr_02f_7124:
	jr nc, jr_02f_714f                               ; $7124: $30 $29

	ld [de], a                                       ; $7126: $12
	inc l                                            ; $7127: $2c
	ld b, $2b                                        ; $7128: $06 $2b
	ld [de], a                                       ; $712a: $12
	inc l                                            ; $712b: $2c
	ld b, $25                                        ; $712c: $06 $25
	ld b, $7e                                        ; $712e: $06 $7e
	nop                                              ; $7130: $00
	and b                                            ; $7131: $a0
	ei                                               ; $7132: $fb
	sub b                                            ; $7133: $90
	pop de                                           ; $7134: $d1
	rst JumpTable                                          ; $7135: $c7
	ld sp, wWramBank                                     ; $7136: $31 $04 $c1
	ld sp, $fb04                                     ; $7139: $31 $04 $fb
	inc bc                                           ; $713c: $03
	rst JumpTable                                          ; $713d: $c7
	ld sp, $c124                                     ; $713e: $31 $24 $c1
	ld sp, $d10c                                     ; $7141: $31 $0c $d1
	call nz, $1d7e                                   ; $7144: $c4 $7e $1d
	nop                                              ; $7147: $00
	and b                                            ; $7148: $a0
	nop                                              ; $7149: $00
	ld [de], a                                       ; $714a: $12
	daa                                              ; $714b: $27
	inc h                                            ; $714c: $24
	daa                                              ; $714d: $27
	inc c                                            ; $714e: $0c

jr_02f_714f:
	add hl, hl                                       ; $714f: $29
	jr jr_02f_717d                                   ; $7150: $18 $2b

	jr jr_02f_7180                                   ; $7152: $18 $2c

	ld b, $7e                                        ; $7154: $06 $7e
	nop                                              ; $7156: $00
	and b                                            ; $7157: $a0
	rst JumpTable                                          ; $7158: $c7
	pop de                                           ; $7159: $d1
	ld a, l                                          ; $715a: $7d
	nop                                              ; $715b: $00
	sub b                                            ; $715c: $90
	inc sp                                           ; $715d: $33
	ld a, [bc]                                       ; $715e: $0a
	jp nz, $0633                                     ; $715f: $c2 $33 $06

	rst JumpTable                                          ; $7162: $c7
	inc sp                                           ; $7163: $33
	ld b, $c2                                        ; $7164: $06 $c2
	inc sp                                           ; $7166: $33
	ld [bc], a                                       ; $7167: $02
	rst JumpTable                                          ; $7168: $c7
	inc sp                                           ; $7169: $33
	inc h                                            ; $716a: $24
	jp nz, $0c33                                     ; $716b: $c2 $33 $0c

	call nz, Call_02f_7ed1                           ; $716e: $c4 $d1 $7e
	dec e                                            ; $7171: $1d
	nop                                              ; $7172: $00
	and b                                            ; $7173: $a0
	nop                                              ; $7174: $00
	ld [de], a                                       ; $7175: $12
	ld l, $30                                        ; $7176: $2e $30
	ld l, $12                                        ; $7178: $2e $12
	ld sp, $3006                                     ; $717a: $31 $06 $30

jr_02f_717d:
	ld b, $7e                                        ; $717d: $06 $7e
	nop                                              ; $717f: $00

jr_02f_7180:
	and b                                            ; $7180: $a0
	ret                                              ; $7181: $c9


	pop de                                           ; $7182: $d1
	jr c, jr_02f_7189                                ; $7183: $38 $04

	jp $0438                                         ; $7185: $c3 $38 $04


	ret                                              ; $7188: $c9


jr_02f_7189:
	inc sp                                           ; $7189: $33
	inc b                                            ; $718a: $04
	jp $0433                                         ; $718b: $c3 $33 $04


	ret z                                            ; $718e: $c8

	jr c, jr_02f_7195                                ; $718f: $38 $04

	jp $0438                                         ; $7191: $c3 $38 $04


	rst JumpTable                                          ; $7194: $c7

jr_02f_7195:
	inc a                                            ; $7195: $3c
	add hl, bc                                       ; $7196: $09
	jp $093c                                         ; $7197: $c3 $3c $09


	ret z                                            ; $719a: $c8

	jr c, jr_02f_71a3                                ; $719b: $38 $06

	ret z                                            ; $719d: $c8

	ld a, l                                          ; $719e: $7d
	ld bc, $3033                                     ; $719f: $01 $33 $30
	ld a, l                                          ; $71a2: $7d

jr_02f_71a3:
	nop                                              ; $71a3: $00
	cp $ff                                           ; $71a4: $fe $ff
	ret nc                                           ; $71a6: $d0

	add d                                            ; $71a7: $82
	cp $cf                                           ; $71a8: $fe $cf
	pop de                                           ; $71aa: $d1
	sub b                                            ; $71ab: $90
	ld [hl], a                                       ; $71ac: $77
	inc l                                            ; $71ad: $2c
	jr nc, @-$35                                     ; $71ae: $30 $c9

	inc l                                            ; $71b0: $2c
	ld [de], a                                       ; $71b1: $12
	jp z, $0631                                      ; $71b2: $ca $31 $06

	jp z, $1230                                      ; $71b5: $ca $30 $12

	jp z, $0631                                      ; $71b8: $ca $31 $06

	call z, $0c2c                                    ; $71bb: $cc $2c $0c
	ret                                              ; $71be: $c9


jr_02f_71bf:
	inc l                                            ; $71bf: $2c
	inc c                                            ; $71c0: $0c
	add $31                                          ; $71c1: $c6 $31
	ld a, [bc]                                       ; $71c3: $0a
	pop bc                                           ; $71c4: $c1
	ld sp, $c606                                     ; $71c5: $31 $06 $c6
	ld sp, $c106                                     ; $71c8: $31 $06 $c1
	ld sp, $c602                                     ; $71cb: $31 $02 $c6
	ld sp, $c124                                     ; $71ce: $31 $24 $c1
	ld sp, $ce0c                                     ; $71d1: $31 $0c $ce
	add hl, hl                                       ; $71d4: $29
	jr nc, @-$35                                     ; $71d5: $30 $c9

	add hl, hl                                       ; $71d7: $29
	ld [de], a                                       ; $71d8: $12
	call $062c                                       ; $71d9: $cd $2c $06
	call z, $122b                                    ; $71dc: $cc $2b $12
	jp z, $062c                                      ; $71df: $ca $2c $06

	call z, $0c25                                    ; $71e2: $cc $25 $0c
	push bc                                          ; $71e5: $c5
	dec h                                            ; $71e6: $25
	inc c                                            ; $71e7: $0c
	ei                                               ; $71e8: $fb
	sub b                                            ; $71e9: $90
	pop de                                           ; $71ea: $d1
	rst JumpTable                                          ; $71eb: $c7
	inc l                                            ; $71ec: $2c
	inc b                                            ; $71ed: $04
	pop bc                                           ; $71ee: $c1
	inc l                                            ; $71ef: $2c
	inc b                                            ; $71f0: $04
	ei                                               ; $71f1: $fb
	inc bc                                           ; $71f2: $03
	rst JumpTable                                          ; $71f3: $c7
	inc l                                            ; $71f4: $2c
	jr jr_02f_71bf                                   ; $71f5: $18 $c8

	dec h                                            ; $71f7: $25
	inc c                                            ; $71f8: $0c
	jp $0625                                         ; $71f9: $c3 $25 $06


	ret z                                            ; $71fc: $c8

	dec h                                            ; $71fd: $25
	ld b, $cd                                        ; $71fe: $06 $cd
	daa                                              ; $7200: $27
	inc h                                            ; $7201: $24
	ret z                                            ; $7202: $c8

	daa                                              ; $7203: $27
	inc c                                            ; $7204: $0c
	call $1829                                       ; $7205: $cd $29 $18
	dec hl                                           ; $7208: $2b
	jr jr_02f_7237                                   ; $7209: $18 $2c

	jr @-$35                                         ; $720b: $18 $c9

	ld l, $18                                        ; $720d: $2e $18
	jp z, $1830                                      ; $720f: $ca $30 $18

	rst JumpTable                                          ; $7212: $c7
	ld l, $12                                        ; $7213: $2e $12
	inc l                                            ; $7215: $2c
	ld b, $ca                                        ; $7216: $06 $ca
	ld l, $30                                        ; $7218: $2e $30
	ret z                                            ; $721a: $c8

	ld l, $12                                        ; $721b: $2e $12
	jp z, $0631                                      ; $721d: $ca $31 $06

	ret                                              ; $7220: $c9


	jr nc, @+$14                                     ; $7221: $30 $12

	jp z, $0631                                      ; $7223: $ca $31 $06

	ret                                              ; $7226: $c9


	inc sp                                           ; $7227: $33
	ld [de], a                                       ; $7228: $12
	jp $0633                                         ; $7229: $c3 $33 $06


	ret z                                            ; $722c: $c8

	inc sp                                           ; $722d: $33
	add hl, bc                                       ; $722e: $09
	jp nz, $0933                                     ; $722f: $c2 $33 $09

	ret z                                            ; $7232: $c8

	inc a                                            ; $7233: $3c
	ld b, $c8                                        ; $7234: $06 $c8
	inc l                                            ; $7236: $2c

jr_02f_7237:
	jr nc, jr_02f_7237                               ; $7237: $30 $fe

	rst $38                                          ; $7239: $ff
	ret nc                                           ; $723a: $d0

	add d                                            ; $723b: $82
	cp $d1                                           ; $723c: $fe $d1
	jp nz, $187f                                     ; $723e: $c2 $7f $18

	ld [hl], a                                       ; $7241: $77
	ei                                               ; $7242: $fb

jr_02f_7243:
	db $fd                                           ; $7243: $fd
	ld h, d                                          ; $7244: $62
	ld [hl], d                                       ; $7245: $72
	ei                                               ; $7246: $fb
	ld [bc], a                                       ; $7247: $02
	ei                                               ; $7248: $fb
	jp nz, $180f                                     ; $7249: $c2 $0f $18

	add $0f                                          ; $724c: $c6 $0f
	jr @-$03                                         ; $724e: $18 $fb

	ld [bc], a                                       ; $7250: $02
	db $fd                                           ; $7251: $fd
	add b                                            ; $7252: $80
	ld [hl], d                                       ; $7253: $72
	ei                                               ; $7254: $fb

jr_02f_7255:
	jp nz, $1812                                     ; $7255: $c2 $12 $18

	add $12                                          ; $7258: $c6 $12
	jr @-$03                                         ; $725a: $18 $fb

	ld [bc], a                                       ; $725c: $02
	db $fd                                           ; $725d: $fd
	add b                                            ; $725e: $80
	ld [hl], d                                       ; $725f: $72
	cp $ff                                           ; $7260: $fe $ff
	db $fc                                           ; $7262: $fc
	pop de                                           ; $7263: $d1
	jp nz, $180d                                     ; $7264: $c2 $0d $18

jr_02f_7267:
	add $0d                                          ; $7267: $c6 $0d
	jr jr_02f_7267                                   ; $7269: $18 $fc

	ld [bc], a                                       ; $726b: $02
	ld a, a                                          ; $726c: $7f
	jr @-$2d                                         ; $726d: $18 $d1

	jp nz, $180d                                     ; $726f: $c2 $0d $18

	ld [$c60c], sp                                   ; $7272: $08 $0c $c6
	ld [$c206], sp                                   ; $7275: $08 $06 $c2
	ld [$0d06], sp                                   ; $7278: $08 $06 $0d
	jr jr_02f_7243                                   ; $727b: $18 $c6

jr_02f_727d:
	dec c                                            ; $727d: $0d
	jr jr_02f_727d                                   ; $727e: $18 $fd

	pop de                                           ; $7280: $d1
	jp nz, $1814                                     ; $7281: $c2 $14 $18

	rrca                                             ; $7284: $0f
	inc c                                            ; $7285: $0c
	add $0f                                          ; $7286: $c6 $0f
	ld b, $c2                                        ; $7288: $06 $c2
	rrca                                             ; $728a: $0f
	ld b, $14                                        ; $728b: $06 $14
	jr jr_02f_7255                                   ; $728d: $18 $c6

jr_02f_728f:
	inc d                                            ; $728f: $14
	jr jr_02f_728f                                   ; $7290: $18 $fd

	ret nc                                           ; $7292: $d0

jr_02f_7293:
	add d                                            ; $7293: $82
	cp $fb                                           ; $7294: $fe $fb
	add hl, sp                                       ; $7296: $39
	jr nc, jr_02f_72d2                               ; $7297: $30 $39

jr_02f_7299:
	jr nc, @+$3b                                     ; $7299: $30 $39

	jr @+$22                                         ; $729b: $18 $20

	jr jr_02f_72bf                                   ; $729d: $18 $20

	jr nc, @-$03                                     ; $729f: $30 $fb

	inc bc                                           ; $72a1: $03
	add hl, sp                                       ; $72a2: $39
	jr nc, jr_02f_72de                               ; $72a3: $30 $39

	jr nc, @+$22                                     ; $72a5: $30 $20

	jr jr_02f_72c9                                   ; $72a7: $18 $20

	jr jr_02f_72cb                                   ; $72a9: $18 $20

jr_02f_72ab:
	jr nc, jr_02f_72ab                               ; $72ab: $30 $fe

	rst $38                                          ; $72ad: $ff
	or h                                             ; $72ae: $b4
	sub [hl]                                         ; $72af: $96
	and c                                            ; $72b0: $a1
	ld bc, $fd71                                     ; $72b1: $01 $71 $fd
	add hl, bc                                       ; $72b4: $09
	ld [hl], h                                       ; $72b5: $74
	db $fd                                           ; $72b6: $fd
	ld l, $74                                        ; $72b7: $2e $74
	cp $90                                           ; $72b9: $fe $90
	pop de                                           ; $72bb: $d1
	call nz, $017d                                   ; $72bc: $c4 $7d $01

jr_02f_72bf:
	ld [hl], c                                       ; $72bf: $71
	nop                                              ; $72c0: $00
	ld [de], a                                       ; $72c1: $12
	ld a, [hl]                                       ; $72c2: $7e
	dec e                                            ; $72c3: $1d
	nop                                              ; $72c4: $00
	and b                                            ; $72c5: $a0
	ld l, $18                                        ; $72c6: $2e $18
	cp [hl]                                          ; $72c8: $be

jr_02f_72c9:
	inc c                                            ; $72c9: $0c
	inc l                                            ; $72ca: $2c

jr_02f_72cb:
	add hl, hl                                       ; $72cb: $29
	inc l                                            ; $72cc: $2c
	add hl, hl                                       ; $72cd: $29
	daa                                              ; $72ce: $27
	add hl, hl                                       ; $72cf: $29
	add hl, hl                                       ; $72d0: $29
	ld [hl+], a                                      ; $72d1: $22

Call_02f_72d2:
jr_02f_72d2:
	ld [hl+], a                                      ; $72d2: $22
	jr nz, jr_02f_7293                               ; $72d3: $20 $be

	ld [hl+], a                                      ; $72d5: $22
	jr jr_02f_72fc                                   ; $72d6: $18 $24

	ld b, $7d                                        ; $72d8: $06 $7d
	nop                                              ; $72da: $00
	sub d                                            ; $72db: $92
	ld a, [hl]                                       ; $72dc: $7e
	nop                                              ; $72dd: $00

jr_02f_72de:
	and b                                            ; $72de: $a0
	db $d3                                           ; $72df: $d3
	ret                                              ; $72e0: $c9


	add hl, de                                       ; $72e1: $19
	ld [bc], a                                       ; $72e2: $02
	nop                                              ; $72e3: $00
	ld a, [bc]                                       ; $72e4: $0a
	add hl, de                                       ; $72e5: $19
	ld [bc], a                                       ; $72e6: $02
	nop                                              ; $72e7: $00
	ld a, [bc]                                       ; $72e8: $0a
	inc l                                            ; $72e9: $2c
	inc c                                            ; $72ea: $0c
	jp nz, $182c                                     ; $72eb: $c2 $2c $18

	ret                                              ; $72ee: $c9


	inc l                                            ; $72ef: $2c
	inc c                                            ; $72f0: $0c
	jp nz, $0c2c                                     ; $72f1: $c2 $2c $0c

	ret                                              ; $72f4: $c9


	ld a, [hl]                                       ; $72f5: $7e
	dec e                                            ; $72f6: $1d
	jr jr_02f_7299                                   ; $72f7: $18 $a0

	dec hl                                           ; $72f9: $2b
	jr nc, jr_02f_737a                               ; $72fa: $30 $7e

jr_02f_72fc:
	nop                                              ; $72fc: $00
	and b                                            ; $72fd: $a0
	jp nz, $182b                                     ; $72fe: $c2 $2b $18

	sub c                                            ; $7301: $91
	pop de                                           ; $7302: $d1
	rst JumpTable                                          ; $7303: $c7
	ld [hl+], a                                      ; $7304: $22
	inc c                                            ; $7305: $0c
	dec h                                            ; $7306: $25
	inc c                                            ; $7307: $0c
	add $27                                          ; $7308: $c6 $27
	inc c                                            ; $730a: $0c
	push bc                                          ; $730b: $c5
	pop de                                           ; $730c: $d1
	ld a, [hl]                                       ; $730d: $7e
	dec e                                            ; $730e: $1d
	nop                                              ; $730f: $00
	xor c                                            ; $7310: $a9
	add hl, hl                                       ; $7311: $29
	jr jr_02f_7392                                   ; $7312: $18 $7e

	nop                                              ; $7314: $00
	and b                                            ; $7315: $a0
	push bc                                          ; $7316: $c5
	cp [hl]                                          ; $7317: $be
	inc c                                            ; $7318: $0c
	daa                                              ; $7319: $27
	dec h                                            ; $731a: $25
	daa                                              ; $731b: $27
	dec h                                            ; $731c: $25
	inc h                                            ; $731d: $24
	dec h                                            ; $731e: $25
	cp [hl]                                          ; $731f: $be
	ld a, [hl]                                       ; $7320: $7e
	dec e                                            ; $7321: $1d
	nop                                              ; $7322: $00
	and b                                            ; $7323: $a0
	dec h                                            ; $7324: $25
	inc c                                            ; $7325: $0c
	ld a, [hl]                                       ; $7326: $7e
	nop                                              ; $7327: $00
	and b                                            ; $7328: $a0
	dec e                                            ; $7329: $1d
	ld a, [bc]                                       ; $732a: $0a
	nop                                              ; $732b: $00
	ld [bc], a                                       ; $732c: $02
	cp [hl]                                          ; $732d: $be
	inc c                                            ; $732e: $0c
	dec e                                            ; $732f: $1d
	dec de                                           ; $7330: $1b
	dec e                                            ; $7331: $1d
	nop                                              ; $7332: $00
	cp [hl]                                          ; $7333: $be
	ld a, [hl]                                       ; $7334: $7e
	inc hl                                           ; $7335: $23
	nop                                              ; $7336: $00
	xor d                                            ; $7337: $aa
	ld a, l                                          ; $7338: $7d
	ld c, $21                                        ; $7339: $0e $21
	jr jr_02f_73bb                                   ; $733b: $18 $7e

	nop                                              ; $733d: $00
	and b                                            ; $733e: $a0
	ld a, l                                          ; $733f: $7d
	nop                                              ; $7340: $00

jr_02f_7341:
	db $d3                                           ; $7341: $d3
	ret                                              ; $7342: $c9


	add hl, de                                       ; $7343: $19
	ld [bc], a                                       ; $7344: $02
	nop                                              ; $7345: $00
	ld a, [bc]                                       ; $7346: $0a

jr_02f_7347:
	add hl, de                                       ; $7347: $19
	ld [bc], a                                       ; $7348: $02
	nop                                              ; $7349: $00
	ld a, [bc]                                       ; $734a: $0a
	inc l                                            ; $734b: $2c
	inc c                                            ; $734c: $0c

jr_02f_734d:
	jp nz, $182c                                     ; $734d: $c2 $2c $18

	ret                                              ; $7350: $c9


	inc l                                            ; $7351: $2c
	inc c                                            ; $7352: $0c

jr_02f_7353:
	jp nz, $0c2c                                     ; $7353: $c2 $2c $0c

	ret                                              ; $7356: $c9


	ld a, [hl]                                       ; $7357: $7e
	dec e                                            ; $7358: $1d
	jr @-$5e                                         ; $7359: $18 $a0

	dec hl                                           ; $735b: $2b
	jr nc, jr_02f_73dc                               ; $735c: $30 $7e

	nop                                              ; $735e: $00
	and b                                            ; $735f: $a0
	jp nz, $182b                                     ; $7360: $c2 $2b $18

	pop de                                           ; $7363: $d1
	add $25                                          ; $7364: $c6 $25
	inc c                                            ; $7366: $0c
	inc h                                            ; $7367: $24
	inc c                                            ; $7368: $0c
	ld [hl+], a                                      ; $7369: $22
	inc c                                            ; $736a: $0c

jr_02f_736b:
	sub c                                            ; $736b: $91
	pop de                                           ; $736c: $d1
	jp z, $0071                                      ; $736d: $ca $71 $00

	jr @+$1f                                         ; $7370: $18 $1d

	inc c                                            ; $7372: $0c
	pop bc                                           ; $7373: $c1

jr_02f_7374:
	dec e                                            ; $7374: $1d
	jr jr_02f_7341                                   ; $7375: $18 $ca

	dec e                                            ; $7377: $1d
	inc c                                            ; $7378: $0c
	pop bc                                           ; $7379: $c1

jr_02f_737a:
	dec e                                            ; $737a: $1d
	jr jr_02f_7347                                   ; $737b: $18 $ca

	dec e                                            ; $737d: $1d
	inc c                                            ; $737e: $0c
	pop bc                                           ; $737f: $c1
	dec e                                            ; $7380: $1d
	jr jr_02f_734d                                   ; $7381: $18 $ca

	inc e                                            ; $7383: $1c
	inc c                                            ; $7384: $0c
	pop bc                                           ; $7385: $c1
	inc e                                            ; $7386: $1c
	jr jr_02f_7353                                   ; $7387: $18 $ca

	ld a, [hl]                                       ; $7389: $7e
	dec e                                            ; $738a: $1d
	nop                                              ; $738b: $00
	and c                                            ; $738c: $a1
	dec de                                           ; $738d: $1b
	jr jr_02f_740e                                   ; $738e: $18 $7e

	nop                                              ; $7390: $00
	and b                                            ; $7391: $a0

jr_02f_7392:
	jp z, $1800                                      ; $7392: $ca $00 $18

	dec e                                            ; $7395: $1d
	inc c                                            ; $7396: $0c
	pop bc                                           ; $7397: $c1
	dec e                                            ; $7398: $1d
	jr @-$34                                         ; $7399: $18 $ca

	dec e                                            ; $739b: $1d
	inc c                                            ; $739c: $0c
	pop bc                                           ; $739d: $c1
	dec e                                            ; $739e: $1d
	jr jr_02f_736b                                   ; $739f: $18 $ca

	ld hl, $c10c                                     ; $73a1: $21 $0c $c1
	ld hl, $c818                                     ; $73a4: $21 $18 $c8
	inc e                                            ; $73a7: $1c
	inc c                                            ; $73a8: $0c
	pop bc                                           ; $73a9: $c1
	inc e                                            ; $73aa: $1c
	jr jr_02f_7374                                   ; $73ab: $18 $c7

	ld a, [hl]                                       ; $73ad: $7e
	dec e                                            ; $73ae: $1d
	nop                                              ; $73af: $00
	and c                                            ; $73b0: $a1
	dec de                                           ; $73b1: $1b
	jr jr_02f_7432                                   ; $73b2: $18 $7e

	nop                                              ; $73b4: $00
	and b                                            ; $73b5: $a0
	sub c                                            ; $73b6: $91
	pop de                                           ; $73b7: $d1
	ret                                              ; $73b8: $c9


	ld [hl], c                                       ; $73b9: $71
	inc d                                            ; $73ba: $14

jr_02f_73bb:
	ld [bc], a                                       ; $73bb: $02
	nop                                              ; $73bc: $00
	ld a, [bc]                                       ; $73bd: $0a
	inc d                                            ; $73be: $14
	ld [bc], a                                       ; $73bf: $02
	nop                                              ; $73c0: $00
	ld a, [bc]                                       ; $73c1: $0a
	add hl, de                                       ; $73c2: $19
	inc c                                            ; $73c3: $0c
	jp nz, $1819                                     ; $73c4: $c2 $19 $18

	ret                                              ; $73c7: $c9


	add hl, de                                       ; $73c8: $19
	inc c                                            ; $73c9: $0c
	jp nz, $0c19                                     ; $73ca: $c2 $19 $0c

	rst JumpTable                                          ; $73cd: $c7
	ld a, [hl]                                       ; $73ce: $7e
	dec e                                            ; $73cf: $1d
	jr @+$1d                                         ; $73d0: $18 $1b

	jr nc, jr_02f_7452                               ; $73d2: $30 $7e

	nop                                              ; $73d4: $00
	and b                                            ; $73d5: $a0
	jp nz, $181b                                     ; $73d6: $c2 $1b $18

	ret                                              ; $73d9: $c9


	dec de                                           ; $73da: $1b
	inc c                                            ; $73db: $0c

jr_02f_73dc:
	rra                                              ; $73dc: $1f

jr_02f_73dd:
	inc c                                            ; $73dd: $0c
	ld [hl+], a                                      ; $73de: $22
	inc c                                            ; $73df: $0c
	ret                                              ; $73e0: $c9


	inc d                                            ; $73e1: $14
	ld [bc], a                                       ; $73e2: $02

jr_02f_73e3:
	nop                                              ; $73e3: $00
	ld a, [bc]                                       ; $73e4: $0a
	inc d                                            ; $73e5: $14
	ld [bc], a                                       ; $73e6: $02
	nop                                              ; $73e7: $00
	ld a, [bc]                                       ; $73e8: $0a

jr_02f_73e9:
	dec e                                            ; $73e9: $1d
	inc c                                            ; $73ea: $0c
	jp nz, $181d                                     ; $73eb: $c2 $1d $18

	ret                                              ; $73ee: $c9


jr_02f_73ef:
	inc e                                            ; $73ef: $1c
	inc c                                            ; $73f0: $0c
	jp nz, $0c1c                                     ; $73f1: $c2 $1c $0c

	rst JumpTable                                          ; $73f4: $c7
	ld a, [hl]                                       ; $73f5: $7e
	dec e                                            ; $73f6: $1d
	jr jr_02f_7414                                   ; $73f7: $18 $1b

	jr nc, jr_02f_7479                               ; $73f9: $30 $7e

	nop                                              ; $73fb: $00
	and b                                            ; $73fc: $a0
	jp nz, $181b                                     ; $73fd: $c2 $1b $18

	ret z                                            ; $7400: $c8

	inc h                                            ; $7401: $24

jr_02f_7402:
	inc c                                            ; $7402: $0c
	daa                                              ; $7403: $27
	inc c                                            ; $7404: $0c
	add hl, hl                                       ; $7405: $29
	inc c                                            ; $7406: $0c
	cp $ff                                           ; $7407: $fe $ff
	pop de                                           ; $7409: $d1
	jp z, $1800                                      ; $740a: $ca $00 $18

	dec e                                            ; $740d: $1d

jr_02f_740e:
	inc c                                            ; $740e: $0c
	pop bc                                           ; $740f: $c1
	dec e                                            ; $7410: $1d
	jr jr_02f_73dd                                   ; $7411: $18 $ca

	dec e                                            ; $7413: $1d

jr_02f_7414:
	inc c                                            ; $7414: $0c
	pop bc                                           ; $7415: $c1
	dec e                                            ; $7416: $1d
	jr jr_02f_73e3                                   ; $7417: $18 $ca

	dec e                                            ; $7419: $1d
	inc c                                            ; $741a: $0c
	pop bc                                           ; $741b: $c1
	dec e                                            ; $741c: $1d
	jr jr_02f_73e9                                   ; $741d: $18 $ca

	inc e                                            ; $741f: $1c
	inc c                                            ; $7420: $0c
	pop bc                                           ; $7421: $c1
	inc e                                            ; $7422: $1c
	jr jr_02f_73ef                                   ; $7423: $18 $ca

	ld a, [hl]                                       ; $7425: $7e
	dec e                                            ; $7426: $1d
	nop                                              ; $7427: $00
	dec de                                           ; $7428: $1b
	jr jr_02f_74a9                                   ; $7429: $18 $7e

	nop                                              ; $742b: $00
	and b                                            ; $742c: $a0
	db $fd                                           ; $742d: $fd
	pop de                                           ; $742e: $d1
	jp z, $1800                                      ; $742f: $ca $00 $18

jr_02f_7432:
	dec e                                            ; $7432: $1d
	inc c                                            ; $7433: $0c
	pop bc                                           ; $7434: $c1
	dec e                                            ; $7435: $1d
	jr jr_02f_7402                                   ; $7436: $18 $ca

	dec e                                            ; $7438: $1d
	inc c                                            ; $7439: $0c
	pop bc                                           ; $743a: $c1
	dec e                                            ; $743b: $1d
	jr @-$34                                         ; $743c: $18 $ca

	dec e                                            ; $743e: $1d
	inc c                                            ; $743f: $0c
	pop bc                                           ; $7440: $c1
	dec e                                            ; $7441: $1d
	jr jr_02f_740e                                   ; $7442: $18 $ca

	inc e                                            ; $7444: $1c
	inc c                                            ; $7445: $0c
	pop bc                                           ; $7446: $c1
	inc e                                            ; $7447: $1c
	jr jr_02f_7414                                   ; $7448: $18 $ca

	ld a, [hl]                                       ; $744a: $7e
	dec e                                            ; $744b: $1d
	nop                                              ; $744c: $00
	dec de                                           ; $744d: $1b
	jr jr_02f_74ce                                   ; $744e: $18 $7e

	nop                                              ; $7450: $00
	and b                                            ; $7451: $a0

jr_02f_7452:
	db $fd                                           ; $7452: $fd
	or h                                             ; $7453: $b4
	sub [hl]                                         ; $7454: $96
	sub c                                            ; $7455: $91
	nop                                              ; $7456: $00
	ld [hl], c                                       ; $7457: $71
	nop                                              ; $7458: $00
	ret nz                                           ; $7459: $c0

	nop                                              ; $745a: $00
	sbc h                                            ; $745b: $9c
	add hl, hl                                       ; $745c: $29
	inc c                                            ; $745d: $0c
	inc l                                            ; $745e: $2c
	inc c                                            ; $745f: $0c
	ret                                              ; $7460: $c9


	ld l, $0c                                        ; $7461: $2e $0c
	cp $c9                                           ; $7463: $fe $c9
	sub b                                            ; $7465: $90
	pop de                                           ; $7466: $d1
	ld [hl], c                                       ; $7467: $71
	ld a, [hl]                                       ; $7468: $7e
	dec e                                            ; $7469: $1d
	inc c                                            ; $746a: $0c
	xor d                                            ; $746b: $aa
	ld l, $18                                        ; $746c: $2e $18
	ld a, [hl]                                       ; $746e: $7e
	nop                                              ; $746f: $00
	and b                                            ; $7470: $a0
	call z, $0cbe                                    ; $7471: $cc $be $0c
	inc l                                            ; $7474: $2c
	add hl, hl                                       ; $7475: $29
	inc l                                            ; $7476: $2c
	add hl, hl                                       ; $7477: $29
	daa                                              ; $7478: $27

jr_02f_7479:
	add hl, hl                                       ; $7479: $29
	cp [hl]                                          ; $747a: $be
	bit 7, [hl]                                      ; $747b: $cb $7e
	dec e                                            ; $747d: $1d
	ld b, $a0                                        ; $747e: $06 $a0
	add hl, hl                                       ; $7480: $29
	inc c                                            ; $7481: $0c
	ld a, [hl]                                       ; $7482: $7e
	nop                                              ; $7483: $00
	and b                                            ; $7484: $a0
	sla d                                            ; $7485: $cb $22
	ld a, [bc]                                       ; $7487: $0a
	nop                                              ; $7488: $00
	ld [bc], a                                       ; $7489: $02
	cp [hl]                                          ; $748a: $be
	inc c                                            ; $748b: $0c
	ld [hl+], a                                      ; $748c: $22
	jr nz, jr_02f_74b1                               ; $748d: $20 $22

	nop                                              ; $748f: $00
	cp [hl]                                          ; $7490: $be
	ld a, [hl]                                       ; $7491: $7e
	inc hl                                           ; $7492: $23
	nop                                              ; $7493: $00
	xor c                                            ; $7494: $a9
	ld a, l                                          ; $7495: $7d
	ld c, $24                                        ; $7496: $0e $24
	jr @+$80                                         ; $7498: $18 $7e

	nop                                              ; $749a: $00
	and b                                            ; $749b: $a0
	ld a, l                                          ; $749c: $7d
	nop                                              ; $749d: $00
	sub c                                            ; $749e: $91
	jp nc, $29ca                                     ; $749f: $d2 $ca $29

	ld [bc], a                                       ; $74a2: $02
	nop                                              ; $74a3: $00
	ld a, [bc]                                       ; $74a4: $0a
	add hl, hl                                       ; $74a5: $29
	ld [bc], a                                       ; $74a6: $02
	nop                                              ; $74a7: $00
	ld a, [bc]                                       ; $74a8: $0a

jr_02f_74a9:
	add hl, hl                                       ; $74a9: $29
	inc c                                            ; $74aa: $0c
	jp nz, $1829                                     ; $74ab: $c2 $29 $18

	jp z, $0c29                                      ; $74ae: $ca $29 $0c

jr_02f_74b1:
	jp nz, $0c29                                     ; $74b1: $c2 $29 $0c

	jp z, $1d7e                                      ; $74b4: $ca $7e $1d

	jr @-$55                                         ; $74b7: $18 $a9

	daa                                              ; $74b9: $27
	jr nc, jr_02f_753a                               ; $74ba: $30 $7e

	nop                                              ; $74bc: $00
	and b                                            ; $74bd: $a0

jr_02f_74be:
	jp nz, $1827                                     ; $74be: $c2 $27 $18

	sub b                                            ; $74c1: $90
	pop de                                           ; $74c2: $d1
	ret                                              ; $74c3: $c9


	add hl, hl                                       ; $74c4: $29
	inc c                                            ; $74c5: $0c
	ret                                              ; $74c6: $c9


	inc l                                            ; $74c7: $2c
	inc c                                            ; $74c8: $0c
	ld l, $0c                                        ; $74c9: $2e $0c
	jp z, Jump_02f_7ed1                              ; $74cb: $ca $d1 $7e

jr_02f_74ce:
	dec e                                            ; $74ce: $1d
	inc c                                            ; $74cf: $0c
	xor d                                            ; $74d0: $aa
	ld l, $18                                        ; $74d1: $2e $18
	ld a, [hl]                                       ; $74d3: $7e
	nop                                              ; $74d4: $00
	and b                                            ; $74d5: $a0
	sra h                                            ; $74d6: $cb $2c
	inc c                                            ; $74d8: $0c
	res 7, [hl]                                      ; $74d9: $cb $be
	inc c                                            ; $74db: $0c
	add hl, hl                                       ; $74dc: $29
	inc l                                            ; $74dd: $2c
	add hl, hl                                       ; $74de: $29
	daa                                              ; $74df: $27
	add hl, hl                                       ; $74e0: $29
	cp [hl]                                          ; $74e1: $be
	ld a, [hl]                                       ; $74e2: $7e
	dec e                                            ; $74e3: $1d
	ld b, $a0                                        ; $74e4: $06 $a0
	add hl, hl                                       ; $74e6: $29
	inc c                                            ; $74e7: $0c
	ld a, [hl]                                       ; $74e8: $7e
	nop                                              ; $74e9: $00
	and b                                            ; $74ea: $a0
	ld [hl+], a                                      ; $74eb: $22
	ld a, [bc]                                       ; $74ec: $0a
	nop                                              ; $74ed: $00
	ld [bc], a                                       ; $74ee: $02
	cp [hl]                                          ; $74ef: $be
	inc c                                            ; $74f0: $0c
	ld [hl+], a                                      ; $74f1: $22
	jr nz, jr_02f_7516                               ; $74f2: $20 $22

	nop                                              ; $74f4: $00
	cp [hl]                                          ; $74f5: $be
	ld a, [hl]                                       ; $74f6: $7e
	inc hl                                           ; $74f7: $23
	nop                                              ; $74f8: $00
	xor c                                            ; $74f9: $a9
	ld a, l                                          ; $74fa: $7d
	ld c, $24                                        ; $74fb: $0e $24
	jr @+$80                                         ; $74fd: $18 $7e

	nop                                              ; $74ff: $00
	and b                                            ; $7500: $a0
	ld a, l                                          ; $7501: $7d
	nop                                              ; $7502: $00
	sub c                                            ; $7503: $91

jr_02f_7504:
	jp nc, $29ca                                     ; $7504: $d2 $ca $29

jr_02f_7507:
	ld [bc], a                                       ; $7507: $02
	nop                                              ; $7508: $00
	ld a, [bc]                                       ; $7509: $0a

jr_02f_750a:
	add hl, hl                                       ; $750a: $29
	ld [bc], a                                       ; $750b: $02
	nop                                              ; $750c: $00
	ld a, [bc]                                       ; $750d: $0a
	add hl, hl                                       ; $750e: $29

jr_02f_750f:
	inc c                                            ; $750f: $0c

jr_02f_7510:
	jp nz, $1829                                     ; $7510: $c2 $29 $18

	jp z, $0c29                                      ; $7513: $ca $29 $0c

jr_02f_7516:
	jp nz, $0c29                                     ; $7516: $c2 $29 $0c

	jp z, $1d7e                                      ; $7519: $ca $7e $1d

jr_02f_751c:
	jr jr_02f_74be                                   ; $751c: $18 $a0

	daa                                              ; $751e: $27

jr_02f_751f:
	jr nc, @+$80                                     ; $751f: $30 $7e

	nop                                              ; $7521: $00
	and b                                            ; $7522: $a0
	jp nz, $1827                                     ; $7523: $c2 $27 $18

	sub b                                            ; $7526: $90
	pop de                                           ; $7527: $d1
	jp z, $0c29                                      ; $7528: $ca $29 $0c

	daa                                              ; $752b: $27
	inc c                                            ; $752c: $0c
	dec h                                            ; $752d: $25
	inc c                                            ; $752e: $0c
	sub b                                            ; $752f: $90
	pop de                                           ; $7530: $d1
	call $1d7e                                       ; $7531: $cd $7e $1d
	inc c                                            ; $7534: $0c
	and b                                            ; $7535: $a0
	ld [hl], c                                       ; $7536: $71
	daa                                              ; $7537: $27
	jr @-$3a                                         ; $7538: $18 $c4

jr_02f_753a:
	daa                                              ; $753a: $27
	jr jr_02f_7507                                   ; $753b: $18 $ca

	add hl, hl                                       ; $753d: $29
	jr jr_02f_7504                                   ; $753e: $18 $c4

	add hl, hl                                       ; $7540: $29
	jr jr_02f_750f                                   ; $7541: $18 $cc

	ld [hl+], a                                      ; $7543: $22
	jr jr_02f_750a                                   ; $7544: $18 $c4

	ld [hl+], a                                      ; $7546: $22
	jr @-$32                                         ; $7547: $18 $cc

	dec h                                            ; $7549: $25
	jr jr_02f_7510                                   ; $754a: $18 $c4

	dec h                                            ; $754c: $25
	jr jr_02f_751c                                   ; $754d: $18 $cd

	daa                                              ; $754f: $27
	jr jr_02f_7516                                   ; $7550: $18 $c4

	daa                                              ; $7552: $27
	jr jr_02f_751f                                   ; $7553: $18 $ca

	add hl, hl                                       ; $7555: $29
	jr jr_02f_751c                                   ; $7556: $18 $c4

	add hl, hl                                       ; $7558: $29
	inc c                                            ; $7559: $0c
	rst JumpTable                                          ; $755a: $c7
	ld a, [hl]                                       ; $755b: $7e
	rla                                              ; $755c: $17
	nop                                              ; $755d: $00
	and d                                            ; $755e: $a2
	ld a, [hl+]                                      ; $755f: $2a
	ld b, $2b                                        ; $7560: $06 $2b
	ld b, $7e                                        ; $7562: $06 $7e
	inc hl                                           ; $7564: $23
	nop                                              ; $7565: $00
	xor d                                            ; $7566: $aa
	rst JumpTable                                          ; $7567: $c7
	inc l                                            ; $7568: $2c
	inc c                                            ; $7569: $0c
	jp nz, $0c2c                                     ; $756a: $c2 $2c $0c

	ld a, [hl]                                       ; $756d: $7e
	nop                                              ; $756e: $00
	and b                                            ; $756f: $a0
	call z, $0829                                    ; $7570: $cc $29 $08
	call nz, $0429                                   ; $7573: $c4 $29 $04

jr_02f_7576:
	call z, $0c27                                    ; $7576: $cc $27 $0c
	call nz, $0c27                                   ; $7579: $c4 $27 $0c
	call z, $1d7e                                    ; $757c: $cc $7e $1d
	nop                                              ; $757f: $00
	and b                                            ; $7580: $a0
	dec h                                            ; $7581: $25
	jr @-$3a                                         ; $7582: $18 $c4

	dec h                                            ; $7584: $25
	inc c                                            ; $7585: $0c
	ld a, [hl]                                       ; $7586: $7e
	nop                                              ; $7587: $00
	and b                                            ; $7588: $a0
	sub c                                            ; $7589: $91
	pop de                                           ; $758a: $d1
	ret z                                            ; $758b: $c8

	ld [hl], c                                       ; $758c: $71
	add hl, de                                       ; $758d: $19
	ld [bc], a                                       ; $758e: $02
	nop                                              ; $758f: $00
	ld a, [bc]                                       ; $7590: $0a
	add hl, de                                       ; $7591: $19
	ld [bc], a                                       ; $7592: $02
	nop                                              ; $7593: $00
	ld a, [bc]                                       ; $7594: $0a
	add hl, hl                                       ; $7595: $29
	inc c                                            ; $7596: $0c
	jp nz, $1829                                     ; $7597: $c2 $29 $18

	ret z                                            ; $759a: $c8

	add hl, hl                                       ; $759b: $29
	inc c                                            ; $759c: $0c
	jp nz, $0c29                                     ; $759d: $c2 $29 $0c

	rst JumpTable                                          ; $75a0: $c7
	ld a, [hl]                                       ; $75a1: $7e
	dec e                                            ; $75a2: $1d
	jr @-$55                                         ; $75a3: $18 $a9

	dec hl                                           ; $75a5: $2b
	jr nc, jr_02f_7626                               ; $75a6: $30 $7e

	nop                                              ; $75a8: $00
	and b                                            ; $75a9: $a0
	jp nz, $182b                                     ; $75aa: $c2 $2b $18

	ret z                                            ; $75ad: $c8

	inc h                                            ; $75ae: $24
	inc c                                            ; $75af: $0c
	daa                                              ; $75b0: $27
	inc c                                            ; $75b1: $0c
	add hl, hl                                       ; $75b2: $29
	inc c                                            ; $75b3: $0c
	ret z                                            ; $75b4: $c8

	add hl, de                                       ; $75b5: $19
	ld [bc], a                                       ; $75b6: $02
	nop                                              ; $75b7: $00
	ld a, [bc]                                       ; $75b8: $0a
	add hl, de                                       ; $75b9: $19
	ld [bc], a                                       ; $75ba: $02
	nop                                              ; $75bb: $00
	ld a, [bc]                                       ; $75bc: $0a
	inc l                                            ; $75bd: $2c
	inc c                                            ; $75be: $0c
	jp nz, $182c                                     ; $75bf: $c2 $2c $18

	ret z                                            ; $75c2: $c8

	inc l                                            ; $75c3: $2c
	inc c                                            ; $75c4: $0c
	jp nz, $0c2c                                     ; $75c5: $c2 $2c $0c

	rst JumpTable                                          ; $75c8: $c7
	ld a, [hl]                                       ; $75c9: $7e
	dec e                                            ; $75ca: $1d
	jr jr_02f_7576                                   ; $75cb: $18 $a9

	dec hl                                           ; $75cd: $2b
	jr nc, jr_02f_764e                               ; $75ce: $30 $7e

	nop                                              ; $75d0: $00
	and b                                            ; $75d1: $a0
	jp nz, $182b                                     ; $75d2: $c2 $2b $18

	sub b                                            ; $75d5: $90
	ret                                              ; $75d6: $c9


	add hl, hl                                       ; $75d7: $29
	inc c                                            ; $75d8: $0c
	inc l                                            ; $75d9: $2c
	inc c                                            ; $75da: $0c
	ld l, $0c                                        ; $75db: $2e $0c
	cp $ff                                           ; $75dd: $fe $ff
	or h                                             ; $75df: $b4
	sub [hl]                                         ; $75e0: $96
	ld hl, $711f                                     ; $75e1: $21 $1f $71
	db $fd                                           ; $75e4: $fd
	inc l                                            ; $75e5: $2c
	halt                                             ; $75e6: $76
	db $fd                                           ; $75e7: $fd
	inc l                                            ; $75e8: $2c
	halt                                             ; $75e9: $76
	cp $c2                                           ; $75ea: $fe $c2
	pop de                                           ; $75ec: $d1
	ld a, a                                          ; $75ed: $7f
	rra                                              ; $75ee: $1f
	ld [hl], c                                       ; $75ef: $71
	ei                                               ; $75f0: $fb
	db $fd                                           ; $75f1: $fd
	inc l                                            ; $75f2: $2c
	halt                                             ; $75f3: $76
	ei                                               ; $75f4: $fb
	inc b                                            ; $75f5: $04
	or l                                             ; $75f6: $b5
	ld hl, $061f                                     ; $75f7: $21 $1f $06
	ld [bc], a                                       ; $75fa: $02
	ld [hl], c                                       ; $75fb: $71
	ei                                               ; $75fc: $fb
	cp [hl]                                          ; $75fd: $be
	inc c                                            ; $75fe: $0c
	ld b, $06                                        ; $75ff: $06 $06
	ld [de], a                                       ; $7601: $12
	ld b, $06                                        ; $7602: $06 $06
	ld b, $12                                        ; $7604: $06 $12
	ld b, $be                                        ; $7606: $06 $be
	ei                                               ; $7608: $fb
	ld [bc], a                                       ; $7609: $02
	cp [hl]                                          ; $760a: $be
	inc c                                            ; $760b: $0c
	ld [$1408], sp                                   ; $760c: $08 $08 $14
	ld [$0808], sp                                   ; $760f: $08 $08 $08
	inc d                                            ; $7612: $14
	ld [$96be], sp                                   ; $7613: $08 $be $96
	nop                                              ; $7616: $00
	nop                                              ; $7617: $00
	ld de, $c60c                                     ; $7618: $11 $0c $c6
	ld de, $000c                                     ; $761b: $11 $0c $00
	ld c, b                                          ; $761e: $48
	jp nz, Jump_02f_7fd1                             ; $761f: $c2 $d1 $7f

	rra                                              ; $7622: $1f

jr_02f_7623:
	ld [hl], c                                       ; $7623: $71
	db $fd                                           ; $7624: $fd
	inc l                                            ; $7625: $2c

jr_02f_7626:
	halt                                             ; $7626: $76
	db $fd                                           ; $7627: $fd
	inc l                                            ; $7628: $2c
	halt                                             ; $7629: $76
	cp $ff                                           ; $762a: $fe $ff
	cp [hl]                                          ; $762c: $be
	inc c                                            ; $762d: $0c
	ld a, [bc]                                       ; $762e: $0a
	nop                                              ; $762f: $00
	ld a, [bc]                                       ; $7630: $0a
	dec c                                            ; $7631: $0d
	nop                                              ; $7632: $00
	dec c                                            ; $7633: $0d
	rrca                                             ; $7634: $0f
	nop                                              ; $7635: $00
	cp [hl]                                          ; $7636: $be

jr_02f_7637:
	cp [hl]                                          ; $7637: $be
	inc c                                            ; $7638: $0c
	dec c                                            ; $7639: $0d
	stop                                             ; $763a: $10 $00
	dec c                                            ; $763c: $0d
	rrca                                             ; $763d: $0f
	nop                                              ; $763e: $00
	cp [hl]                                          ; $763f: $be
	ld a, [hl]                                       ; $7640: $7e
	dec e                                            ; $7641: $1d
	nop                                              ; $7642: $00
	and d                                            ; $7643: $a2
	dec c                                            ; $7644: $0d
	jr @+$80                                         ; $7645: $18 $7e

	nop                                              ; $7647: $00
	and b                                            ; $7648: $a0
	db $fd                                           ; $7649: $fd
	ret nc                                           ; $764a: $d0

	sub [hl]                                         ; $764b: $96
	ei                                               ; $764c: $fb
	db $fd                                           ; $764d: $fd

jr_02f_764e:
	add c                                            ; $764e: $81
	halt                                             ; $764f: $76
	ei                                               ; $7650: $fb
	inc bc                                           ; $7651: $03
	cpl                                              ; $7652: $2f
	inc c                                            ; $7653: $0c
	jr nc, jr_02f_765c                               ; $7654: $30 $06

	jr nc, jr_02f_765e                               ; $7656: $30 $06

	cpl                                              ; $7658: $2f
	inc c                                            ; $7659: $0c
	jr nc, @+$08                                     ; $765a: $30 $06

jr_02f_765c:
	jr nc, @+$08                                     ; $765c: $30 $06

jr_02f_765e:
	cp [hl]                                          ; $765e: $be
	inc c                                            ; $765f: $0c
	rra                                              ; $7660: $1f
	jr nz, jr_02f_7683                               ; $7661: $20 $20

	jr nz, jr_02f_7623                               ; $7663: $20 $be

	cp $fc                                           ; $7665: $fe $fc
	db $fd                                           ; $7667: $fd
	sbc d                                            ; $7668: $9a
	halt                                             ; $7669: $76
	db $fc                                           ; $766a: $fc
	inc b                                            ; $766b: $04
	ei                                               ; $766c: $fb
	db $fd                                           ; $766d: $fd
	or c                                             ; $766e: $b1
	halt                                             ; $766f: $76
	ei                                               ; $7670: $fb
	inc bc                                           ; $7671: $03
	cp [hl]                                          ; $7672: $be
	jr @+$11                                         ; $7673: $18 $0f

	rra                                              ; $7675: $1f
	rra                                              ; $7676: $1f
	jr nz, jr_02f_7637                               ; $7677: $20 $be

	db $fd                                           ; $7679: $fd
	sbc d                                            ; $767a: $9a
	halt                                             ; $767b: $76
	db $fd                                           ; $767c: $fd
	sbc d                                            ; $767d: $9a
	halt                                             ; $767e: $76
	cp $ff                                           ; $767f: $fe $ff
	cpl                                              ; $7681: $2f
	inc c                                            ; $7682: $0c

jr_02f_7683:
	jr nc, jr_02f_768b                               ; $7683: $30 $06

	jr nc, jr_02f_768d                               ; $7685: $30 $06

	cpl                                              ; $7687: $2f
	inc c                                            ; $7688: $0c
	jr nc, jr_02f_7691                               ; $7689: $30 $06

jr_02f_768b:
	jr nc, jr_02f_7693                               ; $768b: $30 $06

jr_02f_768d:
	cpl                                              ; $768d: $2f
	inc c                                            ; $768e: $0c
	jr nc, jr_02f_7697                               ; $768f: $30 $06

jr_02f_7691:
	jr nc, jr_02f_7699                               ; $7691: $30 $06

jr_02f_7693:
	cpl                                              ; $7693: $2f
	inc c                                            ; $7694: $0c
	jr nc, jr_02f_769d                               ; $7695: $30 $06

jr_02f_7697:
	jr nc, @+$08                                     ; $7697: $30 $06

jr_02f_7699:
	db $fd                                           ; $7699: $fd
	cp [hl]                                          ; $769a: $be

jr_02f_769b:
	inc c                                            ; $769b: $0c
	rra                                              ; $769c: $1f

jr_02f_769d:
	dec e                                            ; $769d: $1d
	jr nz, jr_02f_76bd                               ; $769e: $20 $1d

	rra                                              ; $76a0: $1f
	rra                                              ; $76a1: $1f
	jr nz, jr_02f_76c3                               ; $76a2: $20 $1f

	cp [hl]                                          ; $76a4: $be
	cp [hl]                                          ; $76a5: $be
	inc c                                            ; $76a6: $0c
	dec e                                            ; $76a7: $1d
	rra                                              ; $76a8: $1f
	jr nz, jr_02f_76c8                               ; $76a9: $20 $1d

	rra                                              ; $76ab: $1f
	rra                                              ; $76ac: $1f
	jr nz, jr_02f_76cc                               ; $76ad: $20 $1d

	cp [hl]                                          ; $76af: $be
	db $fd                                           ; $76b0: $fd
	cp [hl]                                          ; $76b1: $be
	inc c                                            ; $76b2: $0c
	rra                                              ; $76b3: $1f
	rra                                              ; $76b4: $1f
	jr nz, jr_02f_76d4                               ; $76b5: $20 $1d

	rra                                              ; $76b7: $1f
	rra                                              ; $76b8: $1f
	jr nz, jr_02f_76d8                               ; $76b9: $20 $1d

	cp [hl]                                          ; $76bb: $be
	db $fd                                           ; $76bc: $fd

jr_02f_76bd:
	or h                                             ; $76bd: $b4
	ret z                                            ; $76be: $c8

	and c                                            ; $76bf: $a1
	inc bc                                           ; $76c0: $03
	ld [hl], e                                       ; $76c1: $73
	nop                                              ; $76c2: $00

jr_02f_76c3:
	ld c, b                                          ; $76c3: $48
	cp $fd                                           ; $76c4: $fe $fd
	dec d                                            ; $76c6: $15
	ld [hl], a                                       ; $76c7: $77

jr_02f_76c8:
	ld a, l                                          ; $76c8: $7d
	ld bc, $51b5                                     ; $76c9: $01 $b5 $51

jr_02f_76cc:
	inc bc                                           ; $76cc: $03
	nop                                              ; $76cd: $00
	nop                                              ; $76ce: $00
	nop                                              ; $76cf: $00
	jr nc, jr_02f_76fe                               ; $76d0: $30 $2c

	ld b, $30                                        ; $76d2: $06 $30

jr_02f_76d4:
	ld b, $33                                        ; $76d4: $06 $33
	ld b, $c4                                        ; $76d6: $06 $c4

jr_02f_76d8:
	jr c, @+$16                                      ; $76d8: $38 $14

	jp nz, $0a38                                     ; $76da: $c2 $38 $0a

	call nz, $062c                                   ; $76dd: $c4 $2c $06
	jr nc, jr_02f_76e8                               ; $76e0: $30 $06

	inc sp                                           ; $76e2: $33
	ld b, $c1                                        ; $76e3: $06 $c1
	jr c, jr_02f_76fb                                ; $76e5: $38 $14

	pop bc                                           ; $76e7: $c1

jr_02f_76e8:
	jr c, jr_02f_76f4                                ; $76e8: $38 $0a

	jp $062c                                         ; $76ea: $c3 $2c $06


	jr nc, jr_02f_76f5                               ; $76ed: $30 $06

jr_02f_76ef:
	inc sp                                           ; $76ef: $33
	ld b, $c2                                        ; $76f0: $06 $c2
	jr c, @+$16                                      ; $76f2: $38 $14

jr_02f_76f4:
	pop bc                                           ; $76f4: $c1

jr_02f_76f5:
	jr c, jr_02f_7701                                ; $76f5: $38 $0a

	ld a, l                                          ; $76f7: $7d
	nop                                              ; $76f8: $00
	sub e                                            ; $76f9: $93
	db $fd                                           ; $76fa: $fd

jr_02f_76fb:
	dec d                                            ; $76fb: $15
	ld [hl], a                                       ; $76fc: $77

jr_02f_76fd:
	sub [hl]                                         ; $76fd: $96

jr_02f_76fe:
	jr @+$06                                         ; $76fe: $18 $04

	nop                                              ; $7700: $00

jr_02f_7701:
	jr jr_02f_7724                                   ; $7701: $18 $21

	jr jr_02f_769b                                   ; $7703: $18 $96

	jr nc, jr_02f_770d                               ; $7705: $30 $06

	jr nz, jr_02f_7739                               ; $7707: $20 $30

	sub [hl]                                         ; $7709: $96
	jr @+$06                                         ; $770a: $18 $04

	cp [hl]                                          ; $770c: $be

jr_02f_770d:
	jr jr_02f_7730                                   ; $770d: $18 $21

	jr nz, @+$20                                     ; $770f: $20 $1e

	dec e                                            ; $7711: $1d
	cp [hl]                                          ; $7712: $be
	cp $ff                                           ; $7713: $fe $ff
	or c                                             ; $7715: $b1
	ld d, c                                          ; $7716: $51
	jr jr_02f_771e                                   ; $7717: $18 $05

	add hl, hl                                       ; $7719: $29
	jr @+$29                                         ; $771a: $18 $27

	jr @+$27                                         ; $771c: $18 $25

jr_02f_771e:
	jr @-$68                                         ; $771e: $18 $96

	jr nc, @+$09                                     ; $7720: $30 $07

	jr nz, jr_02f_7754                               ; $7722: $20 $30

jr_02f_7724:
	or c                                             ; $7724: $b1
	ld de, $0000                                     ; $7725: $11 $00 $00
	jr nz, jr_02f_7742                               ; $7728: $20 $18

	add $20                                          ; $772a: $c6 $20
	jr nc, jr_02f_76ef                               ; $772c: $30 $c1

	jr nz, jr_02f_7748                               ; $772e: $20 $18

jr_02f_7730:
	add $24                                          ; $7730: $c6 $24
	jr jr_02f_76f5                                   ; $7732: $18 $c1

	inc h                                            ; $7734: $24

jr_02f_7735:
	jr jr_02f_76fd                                   ; $7735: $18 $c6

	jr nz, jr_02f_773a                               ; $7737: $20 $01

jr_02f_7739:
	nop                                              ; $7739: $00

jr_02f_773a:
	rla                                              ; $773a: $17
	jr nz, @+$1a                                     ; $773b: $20 $18

	pop bc                                           ; $773d: $c1
	jr nz, jr_02f_7758                               ; $773e: $20 $18

	add $22                                          ; $7740: $c6 $22

jr_02f_7742:
	jr nc, jr_02f_76f5                               ; $7742: $30 $b1

	ld d, c                                          ; $7744: $51

jr_02f_7745:
	jr jr_02f_774c                                   ; $7745: $18 $05

	cp [hl]                                          ; $7747: $be

jr_02f_7748:
	jr jr_02f_7776                                   ; $7748: $18 $2c

	ld a, [hl+]                                      ; $774a: $2a

jr_02f_774b:
	add hl, hl                                       ; $774b: $29

jr_02f_774c:
	dec h                                            ; $774c: $25
	inc l                                            ; $774d: $2c
	ld l, $be                                        ; $774e: $2e $be
	or c                                             ; $7750: $b1
	ld sp, $0000                                     ; $7751: $31 $00 $00

jr_02f_7754:
	ld l, $18                                        ; $7754: $2e $18
	or c                                             ; $7756: $b1
	ld d, c                                          ; $7757: $51

jr_02f_7758:
	inc a                                            ; $7758: $3c
	rlca                                             ; $7759: $07
	cp l                                             ; $775a: $bd
	ld [bc], a                                       ; $775b: $02
	add hl, hl                                       ; $775c: $29
	jr jr_02f_77bf                                   ; $775d: $18 $60

	sub [hl]                                         ; $775f: $96
	nop                                              ; $7760: $00
	nop                                              ; $7761: $00
	sub [hl]                                         ; $7762: $96
	jr nc, jr_02f_776c                               ; $7763: $30 $07

	dec h                                            ; $7765: $25
	jr nc, @+$2c                                     ; $7766: $30 $2a

	jr nc, jr_02f_7793                               ; $7768: $30 $29

	jr @-$3d                                         ; $776a: $18 $c1

jr_02f_776c:
	add hl, hl                                       ; $776c: $29
	jr nc, jr_02f_7735                               ; $776d: $30 $c6

	dec h                                            ; $776f: $25
	inc c                                            ; $7770: $0c
	pop bc                                           ; $7771: $c1
	dec h                                            ; $7772: $25
	inc c                                            ; $7773: $0c

jr_02f_7774:
	add $25                                          ; $7774: $c6 $25

jr_02f_7776:
	jr jr_02f_7739                                   ; $7776: $18 $c1

	dec h                                            ; $7778: $25
	jr @-$38                                         ; $7779: $18 $c6

	dec h                                            ; $777b: $25
	jr nc, @-$3d                                     ; $777c: $30 $c1

	dec h                                            ; $777e: $25
	jr @-$39                                         ; $777f: $18 $c5

jr_02f_7781:
	ld a, [hl+]                                      ; $7781: $2a
	jr jr_02f_7745                                   ; $7782: $18 $c1

jr_02f_7784:
	ld a, [hl+]                                      ; $7784: $2a
	jr jr_02f_774b                                   ; $7785: $18 $c4

	inc l                                            ; $7787: $2c
	jr nc, jr_02f_774b                               ; $7788: $30 $c1

	inc l                                            ; $778a: $2c
	jr @-$38                                         ; $778b: $18 $c6

	add hl, hl                                       ; $778d: $29
	jr nc, @-$4d                                     ; $778e: $30 $b1

	ld d, c                                          ; $7790: $51
	jr jr_02f_7799                                   ; $7791: $18 $06

jr_02f_7793:
	cp [hl]                                          ; $7793: $be
	jr jr_02f_77c4                                   ; $7794: $18 $2e

	inc l                                            ; $7796: $2c
	ld l, $2c                                        ; $7797: $2e $2c

jr_02f_7799:
	ld l, $be                                        ; $7799: $2e $be
	sub [hl]                                         ; $779b: $96
	jr nc, @+$09                                     ; $779c: $30 $07

	ld l, $24                                        ; $779e: $2e $24
	or c                                             ; $77a0: $b1
	ld sp, $0730                                     ; $77a1: $31 $30 $07
	ld l, $0c                                        ; $77a4: $2e $0c
	add $19                                          ; $77a6: $c6 $19
	jr @-$01                                         ; $77a8: $18 $fd

	or h                                             ; $77aa: $b4
	ret z                                            ; $77ab: $c8

	pop de                                           ; $77ac: $d1
	ld bc, $9673                                     ; $77ad: $01 $73 $96
	jr jr_02f_77b5                                   ; $77b0: $18 $03

	add hl, hl                                       ; $77b2: $29
	jr jr_02f_77de                                   ; $77b3: $18 $29

jr_02f_77b5:
	jr jr_02f_7781                                   ; $77b5: $18 $ca

	ld a, [hl+]                                      ; $77b7: $2a

jr_02f_77b8:
	jr jr_02f_77b8                                   ; $77b8: $18 $fe

	db $fd                                           ; $77ba: $fd
	ld l, $78                                        ; $77bb: $2e $78
	or c                                             ; $77bd: $b1
	add c                                            ; $77be: $81

jr_02f_77bf:
	jr jr_02f_77c6                                   ; $77bf: $18 $05

	cp [hl]                                          ; $77c1: $be
	jr jr_02f_77f5                                   ; $77c2: $18 $31

jr_02f_77c4:
	jr nc, @+$33                                     ; $77c4: $30 $31

jr_02f_77c6:
	jr nc, @+$33                                     ; $77c6: $30 $31

	cp [hl]                                          ; $77c8: $be
	or c                                             ; $77c9: $b1
	ld h, c                                          ; $77ca: $61
	inc h                                            ; $77cb: $24
	dec b                                            ; $77cc: $05
	inc sp                                           ; $77cd: $33
	inc h                                            ; $77ce: $24

jr_02f_77cf:
	or c                                             ; $77cf: $b1
	ld sp, $0518                                     ; $77d0: $31 $18 $05
	inc sp                                           ; $77d3: $33
	inc c                                            ; $77d4: $0c
	ret                                              ; $77d5: $c9


	cp l                                             ; $77d6: $bd
	ld [bc], a                                       ; $77d7: $02
	jr nc, jr_02f_77f2                               ; $77d8: $30 $18

	jr jr_02f_780a                                   ; $77da: $18 $2e

	jr jr_02f_7774                                   ; $77dc: $18 $96

jr_02f_77de:
	inc a                                            ; $77de: $3c

jr_02f_77df:
	dec b                                            ; $77df: $05
	inc l                                            ; $77e0: $2c
	inc a                                            ; $77e1: $3c

jr_02f_77e2:
	jp $0c2c                                         ; $77e2: $c3 $2c $0c


	or c                                             ; $77e5: $b1
	and c                                            ; $77e6: $a1
	jr jr_02f_77ee                                   ; $77e7: $18 $05

	add hl, hl                                       ; $77e9: $29
	jr jr_02f_7815                                   ; $77ea: $18 $29

jr_02f_77ec:
	jr jr_02f_7784                                   ; $77ec: $18 $96

jr_02f_77ee:
	inc c                                            ; $77ee: $0c
	dec b                                            ; $77ef: $05
	ld a, [hl+]                                      ; $77f0: $2a
	inc c                                            ; $77f1: $0c

jr_02f_77f2:
	sub [hl]                                         ; $77f2: $96
	nop                                              ; $77f3: $00
	nop                                              ; $77f4: $00

jr_02f_77f5:
	dec h                                            ; $77f5: $25
	ld b, $29                                        ; $77f6: $06 $29
	ld b, $fd                                        ; $77f8: $06 $fd
	ld l, $78                                        ; $77fa: $2e $78

jr_02f_77fc:
	or c                                             ; $77fc: $b1
	add c                                            ; $77fd: $81
	jr jr_02f_7805                                   ; $77fe: $18 $05

	cp [hl]                                          ; $7800: $be
	jr @+$33                                         ; $7801: $18 $31

jr_02f_7803:
	jr nc, jr_02f_7836                               ; $7803: $30 $31

jr_02f_7805:
	jr nc, jr_02f_7838                               ; $7805: $30 $31

	cp [hl]                                          ; $7807: $be
	ret z                                            ; $7808: $c8

	inc sp                                           ; $7809: $33

jr_02f_780a:
	jr jr_02f_77cf                                   ; $780a: $18 $c3

	inc sp                                           ; $780c: $33
	inc c                                            ; $780d: $0c
	or c                                             ; $780e: $b1
	ld h, c                                          ; $780f: $61
	nop                                              ; $7810: $00
	nop                                              ; $7811: $00
	ld sp, $3306                                     ; $7812: $31 $06 $33

jr_02f_7815:
	ld b, $b1                                        ; $7815: $06 $b1
	add c                                            ; $7817: $81
	nop                                              ; $7818: $00
	nop                                              ; $7819: $00
	jr c, @+$1a                                      ; $781a: $38 $18

	add $38                                          ; $781c: $c6 $38
	jr z, jr_02f_77e2                                ; $781e: $28 $c2

	jr c, jr_02f_7872                                ; $7820: $38 $50

	or c                                             ; $7822: $b1
	and c                                            ; $7823: $a1
	jr jr_02f_782b                                   ; $7824: $18 $05

	add hl, hl                                       ; $7826: $29
	jr jr_02f_7852                                   ; $7827: $18 $29

	jr @+$2c                                         ; $7829: $18 $2a

jr_02f_782b:
	jr jr_02f_782b                                   ; $782b: $18 $fe

	rst $38                                          ; $782d: $ff
	or c                                             ; $782e: $b1
	pop bc                                           ; $782f: $c1
	jr @+$07                                         ; $7830: $18 $05

	inc l                                            ; $7832: $2c
	jr @-$34                                         ; $7833: $18 $ca

	ld a, [hl+]                                      ; $7835: $2a

jr_02f_7836:
	jr @-$32                                         ; $7836: $18 $cc

jr_02f_7838:
	add hl, hl                                       ; $7838: $29
	jr jr_02f_77ec                                   ; $7839: $18 $b1

	sub c                                            ; $783b: $91
	jr nc, jr_02f_7845                               ; $783c: $30 $07

jr_02f_783e:
	dec h                                            ; $783e: $25
	jr nc, jr_02f_77f2                               ; $783f: $30 $b1

	and c                                            ; $7841: $a1
	jr jr_02f_7849                                   ; $7842: $18 $05

	add hl, hl                                       ; $7844: $29

jr_02f_7845:
	jr jr_02f_7871                                   ; $7845: $18 $2a

	jr jr_02f_77df                                   ; $7847: $18 $96

jr_02f_7849:
	inc c                                            ; $7849: $0c
	ld b, $2c                                        ; $784a: $06 $2c
	inc c                                            ; $784c: $0c
	or c                                             ; $784d: $b1
	ld b, c                                          ; $784e: $41

jr_02f_784f:
	nop                                              ; $784f: $00
	nop                                              ; $7850: $00
	add hl, hl                                       ; $7851: $29

jr_02f_7852:
	ld b, $2c                                        ; $7852: $06 $2c
	ld b, $b1                                        ; $7854: $06 $b1
	sub c                                            ; $7856: $91
	jr jr_02f_785e                                   ; $7857: $18 $05

	jr nc, jr_02f_7873                               ; $7859: $30 $18

	jp z, $182c                                      ; $785b: $ca $2c $18

jr_02f_785e:
	add hl, hl                                       ; $785e: $29
	jr @-$68                                         ; $785f: $18 $96

	jr nc, @+$09                                     ; $7861: $30 $07

	dec h                                            ; $7863: $25
	jr nc, jr_02f_77fc                               ; $7864: $30 $96

	jr jr_02f_786d                                   ; $7866: $18 $05

	add hl, hl                                       ; $7868: $29
	jr jr_02f_7894                                   ; $7869: $18 $29

	jr jr_02f_7803                                   ; $786b: $18 $96

jr_02f_786d:
	inc c                                            ; $786d: $0c
	ld b, $2a                                        ; $786e: $06 $2a
	inc c                                            ; $7870: $0c

jr_02f_7871:
	or c                                             ; $7871: $b1

jr_02f_7872:
	ld d, c                                          ; $7872: $51

jr_02f_7873:
	nop                                              ; $7873: $00
	nop                                              ; $7874: $00
	inc l                                            ; $7875: $2c
	ld b, $2e                                        ; $7876: $06 $2e
	ld b, $b1                                        ; $7878: $06 $b1
	sub c                                            ; $787a: $91
	jr jr_02f_7883                                   ; $787b: $18 $06

	jr nc, @+$1a                                     ; $787d: $30 $18

	ret z                                            ; $787f: $c8

	ld l, $18                                        ; $7880: $2e $18
	ret z                                            ; $7882: $c8

jr_02f_7883:
	inc l                                            ; $7883: $2c
	jr jr_02f_784f                                   ; $7884: $18 $c9

	add hl, hl                                       ; $7886: $29
	jr @+$32                                         ; $7887: $18 $30

	jr jr_02f_78bc                                   ; $7889: $18 $31

	jr jr_02f_783e                                   ; $788b: $18 $b1

	ld sp, $0000                                     ; $788d: $31 $00 $00
	ld sp, $b112                                     ; $7890: $31 $12 $b1
	sub c                                            ; $7893: $91

jr_02f_7894:
	ld b, $06                                        ; $7894: $06 $06
	jr nc, @+$08                                     ; $7896: $30 $06

	sub [hl]                                         ; $7898: $96
	ld a, b                                          ; $7899: $78

jr_02f_789a:
	rlca                                             ; $789a: $07
	cp l                                             ; $789b: $bd
	ld [bc], a                                       ; $789c: $02
	ld sp, $6018                                     ; $789d: $31 $18 $60
	or c                                             ; $78a0: $b1
	and c                                            ; $78a1: $a1
	jr nc, jr_02f_78ab                               ; $78a2: $30 $07

	ld sp, $c930                                     ; $78a4: $31 $30 $c9
	inc sp                                           ; $78a7: $33
	ld a, [hl+]                                      ; $78a8: $2a
	or c                                             ; $78a9: $b1
	ld d, c                                          ; $78aa: $51

jr_02f_78ab:
	nop                                              ; $78ab: $00
	nop                                              ; $78ac: $00
	inc [hl]                                         ; $78ad: $34
	ld b, $b1                                        ; $78ae: $06 $b1
	sub c                                            ; $78b0: $91
	jr @+$08                                         ; $78b1: $18 $06

	dec [hl]                                         ; $78b3: $35
	jr jr_02f_78e7                                   ; $78b4: $18 $31

	jr @-$38                                         ; $78b6: $18 $c6

	ld l, $18                                        ; $78b8: $2e $18
	or c                                             ; $78ba: $b1
	add c                                            ; $78bb: $81

jr_02f_78bc:
	jr nc, @+$09                                     ; $78bc: $30 $07

	dec [hl]                                         ; $78be: $35
	jr nc, jr_02f_7872                               ; $78bf: $30 $b1

	sub c                                            ; $78c1: $91
	jr @+$07                                         ; $78c2: $18 $05

	ld sp, $ca18                                     ; $78c4: $31 $18 $ca
	inc sp                                           ; $78c7: $33
	jr @-$68                                         ; $78c8: $18 $96

	inc c                                            ; $78ca: $0c
	ld b, $35                                        ; $78cb: $06 $35
	inc c                                            ; $78cd: $0c
	or c                                             ; $78ce: $b1
	ld d, c                                          ; $78cf: $51
	nop                                              ; $78d0: $00
	nop                                              ; $78d1: $00
	ld l, $06                                        ; $78d2: $2e $06
	ld sp, $b106                                     ; $78d4: $31 $06 $b1
	sub c                                            ; $78d7: $91
	jr jr_02f_78df                                   ; $78d8: $18 $05

	inc sp                                           ; $78da: $33
	jr @-$35                                         ; $78db: $18 $c9

	jr nc, jr_02f_78f7                               ; $78dd: $30 $18

jr_02f_78df:
	rst JumpTable                                          ; $78df: $c7
	inc l                                            ; $78e0: $2c
	jr jr_02f_7894                                   ; $78e1: $18 $b1

	add c                                            ; $78e3: $81
	jr nc, jr_02f_78ec                               ; $78e4: $30 $06

	ld [hl-], a                                      ; $78e6: $32

jr_02f_78e7:
	jr nc, jr_02f_789a                               ; $78e7: $30 $b1

	ld [hl], c                                       ; $78e9: $71
	jr jr_02f_78f1                                   ; $78ea: $18 $05

jr_02f_78ec:
	ld l, $18                                        ; $78ec: $2e $18
	rst JumpTable                                          ; $78ee: $c7
	ld l, $18                                        ; $78ef: $2e $18

jr_02f_78f1:
	or c                                             ; $78f1: $b1
	ld [hl], c                                       ; $78f2: $71
	ld [de], a                                       ; $78f3: $12
	ld b, $30                                        ; $78f4: $06 $30
	ld [de], a                                       ; $78f6: $12

jr_02f_78f7:
	sub [hl]                                         ; $78f7: $96
	nop                                              ; $78f8: $00
	nop                                              ; $78f9: $00
	jr nc, jr_02f_7902                               ; $78fa: $30 $06

	db $fd                                           ; $78fc: $fd
	or h                                             ; $78fd: $b4
	ret z                                            ; $78fe: $c8

	ld hl, $7321                                     ; $78ff: $21 $21 $73

jr_02f_7902:
	nop                                              ; $7902: $00
	ld c, b                                          ; $7903: $48
	cp $fd                                           ; $7904: $fe $fd
	ccf                                              ; $7906: $3f
	ld a, c                                          ; $7907: $79
	nop                                              ; $7908: $00
	ld b, b                                          ; $7909: $40
	ld a, l                                          ; $790a: $7d
	ld bc, $1d7e                                     ; $790b: $01 $7e $1d
	nop                                              ; $790e: $00
	xor e                                            ; $790f: $ab
	add $7f                                          ; $7910: $c6 $7f
	ld e, $2c                                        ; $7912: $1e $2c
	ld b, $30                                        ; $7914: $06 $30
	ld b, $33                                        ; $7916: $06 $33
	ld b, $38                                        ; $7918: $06 $38
	ld e, $2c                                        ; $791a: $1e $2c
	ld b, $30                                        ; $791c: $06 $30
	ld b, $33                                        ; $791e: $06 $33
	ld b, $38                                        ; $7920: $06 $38
	ld e, $7f                                        ; $7922: $1e $7f
	jr nz, jr_02f_7952                               ; $7924: $20 $2c

	ld b, $30                                        ; $7926: $06 $30
	ld b, $33                                        ; $7928: $06 $33
	ld b, $38                                        ; $792a: $06 $38
	ld c, $7e                                        ; $792c: $0e $7e
	nop                                              ; $792e: $00
	and b                                            ; $792f: $a0
	ld a, a                                          ; $7930: $7f
	inc e                                            ; $7931: $1c
	ld a, l                                          ; $7932: $7d
	nop                                              ; $7933: $00
	ld a, a                                          ; $7934: $7f
	ld hl, $d1c2                                     ; $7935: $21 $c2 $d1
	db $fd                                           ; $7938: $fd
	ccf                                              ; $7939: $3f
	ld a, c                                          ; $793a: $79
	nop                                              ; $793b: $00
	ret nz                                           ; $793c: $c0

	cp $ff                                           ; $793d: $fe $ff
	jp nz, $0dd1                                     ; $793f: $c2 $d1 $0d

	jr jr_02f_7944                                   ; $7942: $18 $00

jr_02f_7944:
	jr nc, @+$0f                                     ; $7944: $30 $0d

	inc c                                            ; $7946: $0c
	nop                                              ; $7947: $00
	inc c                                            ; $7948: $0c
	dec c                                            ; $7949: $0d
	jr jr_02f_794c                                   ; $794a: $18 $00

jr_02f_794c:
	jr jr_02f_7956                                   ; $794c: $18 $08

	jr nc, jr_02f_7950                               ; $794e: $30 $00

jr_02f_7950:
	jr @+$0f                                         ; $7950: $18 $0d

jr_02f_7952:
	jr jr_02f_7954                                   ; $7952: $18 $00

jr_02f_7954:
	jr @+$0f                                         ; $7954: $18 $0d

jr_02f_7956:
	ld bc, $1700                                     ; $7956: $01 $00 $17
	dec c                                            ; $7959: $0d
	jr jr_02f_795c                                   ; $795a: $18 $00

jr_02f_795c:
	jr jr_02f_796a                                   ; $795c: $18 $0c

	jr nc, jr_02f_796a                               ; $795e: $30 $0a

	jr jr_02f_7962                                   ; $7960: $18 $00

jr_02f_7962:
	jr nc, jr_02f_796e                               ; $7962: $30 $0a

	inc c                                            ; $7964: $0c
	nop                                              ; $7965: $00
	inc c                                            ; $7966: $0c
	ld a, [bc]                                       ; $7967: $0a
	jr jr_02f_796a                                   ; $7968: $18 $00

jr_02f_796a:
	jr @+$07                                         ; $796a: $18 $05

	jr nc, jr_02f_796e                               ; $796c: $30 $00

jr_02f_796e:
	jr jr_02f_797a                                   ; $796e: $18 $0a

	jr jr_02f_7972                                   ; $7970: $18 $00

jr_02f_7972:
	jr jr_02f_797e                                   ; $7972: $18 $0a

	ld bc, $1700                                     ; $7974: $01 $00 $17
	ld a, [bc]                                       ; $7977: $0a
	jr nc, jr_02f_7982                               ; $7978: $30 $08

jr_02f_797a:
	jr nc, jr_02f_7982                               ; $797a: $30 $06

	jr jr_02f_797e                                   ; $797c: $18 $00

jr_02f_797e:
	jr nc, jr_02f_7986                               ; $797e: $30 $06

	inc c                                            ; $7980: $0c
	nop                                              ; $7981: $00

jr_02f_7982:
	inc c                                            ; $7982: $0c
	ld b, $18                                        ; $7983: $06 $18
	nop                                              ; $7985: $00

jr_02f_7986:
	jr @+$0f                                         ; $7986: $18 $0d

	jr nc, jr_02f_798a                               ; $7988: $30 $00

jr_02f_798a:
	jr jr_02f_7994                                   ; $798a: $18 $08

	jr jr_02f_798e                                   ; $798c: $18 $00

jr_02f_798e:
	jr jr_02f_799a                                   ; $798e: $18 $0a

	jr nc, jr_02f_7992                               ; $7990: $30 $00

jr_02f_7992:
	jr @+$07                                         ; $7992: $18 $05

jr_02f_7994:
	jr nc, jr_02f_799c                               ; $7994: $30 $06

	jr jr_02f_7998                                   ; $7996: $18 $00

jr_02f_7998:
	jr nc, jr_02f_79a0                               ; $7998: $30 $06

jr_02f_799a:
	inc c                                            ; $799a: $0c
	nop                                              ; $799b: $00

jr_02f_799c:
	inc c                                            ; $799c: $0c
	ld b, $18                                        ; $799d: $06 $18
	nop                                              ; $799f: $00

jr_02f_79a0:
	jr jr_02f_79af                                   ; $79a0: $18 $0d

	jr nc, @-$01                                     ; $79a2: $30 $fd

	ret nc                                           ; $79a4: $d0

	ret z                                            ; $79a5: $c8

	nop                                              ; $79a6: $00
	ld c, b                                          ; $79a7: $48
	cp $fb                                           ; $79a8: $fe $fb
	db $fd                                           ; $79aa: $fd
	call z, $fb79                                    ; $79ab: $cc $79 $fb
	inc bc                                           ; $79ae: $03

jr_02f_79af:
	db $fd                                           ; $79af: $fd
	rst SubAFromBC                                          ; $79b0: $e7
	ld a, c                                          ; $79b1: $79
	nop                                              ; $79b2: $00
	ret nz                                           ; $79b3: $c0

	ei                                               ; $79b4: $fb
	db $fd                                           ; $79b5: $fd
	call z, $fb79                                    ; $79b6: $cc $79 $fb
	inc bc                                           ; $79b9: $03
	db $fd                                           ; $79ba: $fd
	rst SubAFromBC                                          ; $79bb: $e7
	ld a, c                                          ; $79bc: $79
	nop                                              ; $79bd: $00
	jr jr_02f_79df                                   ; $79be: $18 $1f

	jr jr_02f_79e1                                   ; $79c0: $18 $1f

	jr nc, jr_02f_7982                               ; $79c2: $30 $be

	jr jr_02f_79f2                                   ; $79c4: $18 $2c

	inc l                                            ; $79c6: $2c
	rra                                              ; $79c7: $1f
	dec l                                            ; $79c8: $2d
	cp [hl]                                          ; $79c9: $be
	cp $ff                                           ; $79ca: $fe $ff
	rra                                              ; $79cc: $1f
	jr jr_02f_79fa                                   ; $79cd: $18 $2b

	inc c                                            ; $79cf: $0c
	dec hl                                           ; $79d0: $2b
	inc c                                            ; $79d1: $0c
	cp [hl]                                          ; $79d2: $be
	jr jr_02f_79f5                                   ; $79d3: $18 $20

	rra                                              ; $79d5: $1f
	rra                                              ; $79d6: $1f
	dec hl                                           ; $79d7: $2b
	rra                                              ; $79d8: $1f
	dec hl                                           ; $79d9: $2b
	cp [hl]                                          ; $79da: $be
	cp [hl]                                          ; $79db: $be
	jr jr_02f_7a09                                   ; $79dc: $18 $2b

	rra                                              ; $79de: $1f

jr_02f_79df:
	jr nz, jr_02f_7a00                               ; $79df: $20 $1f

jr_02f_79e1:
	rra                                              ; $79e1: $1f
	dec hl                                           ; $79e2: $2b
	rra                                              ; $79e3: $1f
	dec hl                                           ; $79e4: $2b
	cp [hl]                                          ; $79e5: $be
	db $fd                                           ; $79e6: $fd
	rra                                              ; $79e7: $1f
	jr jr_02f_7a15                                   ; $79e8: $18 $2b

	inc c                                            ; $79ea: $0c
	dec hl                                           ; $79eb: $2b
	inc c                                            ; $79ec: $0c
	cp [hl]                                          ; $79ed: $be
	jr jr_02f_7a10                                   ; $79ee: $18 $20

	rra                                              ; $79f0: $1f
	rra                                              ; $79f1: $1f

jr_02f_79f2:
	dec hl                                           ; $79f2: $2b
	rra                                              ; $79f3: $1f
	dec hl                                           ; $79f4: $2b

jr_02f_79f5:
	cp [hl]                                          ; $79f5: $be
	db $fd                                           ; $79f6: $fd
	rst $38                                          ; $79f7: $ff
	rst $38                                          ; $79f8: $ff
	rst $38                                          ; $79f9: $ff

jr_02f_79fa:
	rst $38                                          ; $79fa: $ff
	rst $38                                          ; $79fb: $ff
	rst $38                                          ; $79fc: $ff
	rst $38                                          ; $79fd: $ff
	rst $38                                          ; $79fe: $ff
	rst $38                                          ; $79ff: $ff

jr_02f_7a00:
	rst $38                                          ; $7a00: $ff
	rst $38                                          ; $7a01: $ff
	rst $38                                          ; $7a02: $ff
	rst $38                                          ; $7a03: $ff
	rst $38                                          ; $7a04: $ff
	rst $38                                          ; $7a05: $ff
	rst $38                                          ; $7a06: $ff
	rst $38                                          ; $7a07: $ff
	rst $38                                          ; $7a08: $ff

jr_02f_7a09:
	rst $38                                          ; $7a09: $ff
	rst $38                                          ; $7a0a: $ff
	rst $38                                          ; $7a0b: $ff
	rst $38                                          ; $7a0c: $ff
	rst $38                                          ; $7a0d: $ff
	rst $38                                          ; $7a0e: $ff
	rst $38                                          ; $7a0f: $ff

jr_02f_7a10:
	rst $38                                          ; $7a10: $ff
	rst $38                                          ; $7a11: $ff
	rst $38                                          ; $7a12: $ff
	rst $38                                          ; $7a13: $ff
	rst $38                                          ; $7a14: $ff

jr_02f_7a15:
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

Call_02f_7b97:
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

Jump_02f_7e92:
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

Jump_02f_7ec9:
	rst $38                                          ; $7ec9: $ff
	rst $38                                          ; $7eca: $ff
	rst $38                                          ; $7ecb: $ff
	rst $38                                          ; $7ecc: $ff
	rst $38                                          ; $7ecd: $ff
	rst $38                                          ; $7ece: $ff
	rst $38                                          ; $7ecf: $ff
	rst $38                                          ; $7ed0: $ff

Call_02f_7ed1:
Jump_02f_7ed1:
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

Jump_02f_7fd1:
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
