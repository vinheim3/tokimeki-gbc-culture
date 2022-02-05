; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $033", ROMX[$4000], BANK[$33]

	or [hl]                                          ; $4000: $b6
	adc a                                            ; $4001: $8f
	pop bc                                           ; $4002: $c1
	nop                                              ; $4003: $00
	ld b, $02                                        ; $4004: $06 $02
	ld a, [hl]                                       ; $4006: $7e
	nop                                              ; $4007: $00
	daa                                              ; $4008: $27
	ld b, $25                                        ; $4009: $06 $25
	ld b, $96                                        ; $400b: $06 $96
	nop                                              ; $400d: $00
	nop                                              ; $400e: $00
	ld a, [hl]                                       ; $400f: $7e
	ld [bc], a                                       ; $4010: $02
	nop                                              ; $4011: $00
	xor c                                            ; $4012: $a9
	daa                                              ; $4013: $27
	ld b, c                                          ; $4014: $41
	ld a, [hl]                                       ; $4015: $7e
	nop                                              ; $4016: $00
	sub [hl]                                         ; $4017: $96
	rst $38                                          ; $4018: $ff
	inc b                                            ; $4019: $04
	jr z, jr_033_4022                                ; $401a: $28 $06

	ld [hl+], a                                      ; $401c: $22
	ld b, $cc                                        ; $401d: $06 $cc
	dec h                                            ; $401f: $25
	ld b, $1f                                        ; $4020: $06 $1f

jr_033_4022:
	ld b, $cb                                        ; $4022: $06 $cb
	ld [hl+], a                                      ; $4024: $22
	ld b, $1c                                        ; $4025: $06 $1c
	ld b, $ca                                        ; $4027: $06 $ca
	rra                                              ; $4029: $1f
	ld b, $19                                        ; $402a: $06 $19
	ld b, $c9                                        ; $402c: $06 $c9
	inc e                                            ; $402e: $1c
	ld b, $16                                        ; $402f: $06 $16
	ld b, $c8                                        ; $4031: $06 $c8
	add hl, de                                       ; $4033: $19
	ld b, $13                                        ; $4034: $06 $13
	ld b, $c7                                        ; $4036: $06 $c7
	ld d, $06                                        ; $4038: $16 $06
	push bc                                          ; $403a: $c5
	rrca                                             ; $403b: $0f
	ld b, $c2                                        ; $403c: $06 $c2
	rrca                                             ; $403e: $0f
	ld a, [bc]                                       ; $403f: $0a
	or l                                             ; $4040: $b5
	or c                                             ; $4041: $b1
	ld bc, $020a                                     ; $4042: $01 $0a $02
	rra                                              ; $4045: $1f
	dec bc                                           ; $4046: $0b
	or c                                             ; $4047: $b1
	and c                                            ; $4048: $a1
	nop                                              ; $4049: $00
	nop                                              ; $404a: $00
	ld a, [hl]                                       ; $404b: $7e
	ld [bc], a                                       ; $404c: $02
	nop                                              ; $404d: $00
	xor c                                            ; $404e: $a9
	jr nz, jr_033_40b4                               ; $404f: $20 $63

	jp $0620                                         ; $4051: $c3 $20 $06


	jp nz, $0620                                     ; $4054: $c2 $20 $06

	pop bc                                           ; $4057: $c1
	jr nz, jr_033_4060                               ; $4058: $20 $06

	rst $38                                          ; $405a: $ff
	or h                                             ; $405b: $b4
	adc a                                            ; $405c: $8f
	ld b, c                                          ; $405d: $41
	ld [bc], a                                       ; $405e: $02
	ld a, l                                          ; $405f: $7d

jr_033_4060:
	ld bc, $027e                                     ; $4060: $01 $7e $02
	nop                                              ; $4063: $00
	and b                                            ; $4064: $a0
	nop                                              ; $4065: $00
	inc bc                                           ; $4066: $03
	sub [hl]                                         ; $4067: $96
	ld b, $02                                        ; $4068: $06 $02
	daa                                              ; $406a: $27
	ld b, $25                                        ; $406b: $06 $25
	ld b, $96                                        ; $406d: $06 $96
	nop                                              ; $406f: $00
	nop                                              ; $4070: $00
	daa                                              ; $4071: $27
	ld a, $00                                        ; $4072: $3e $00
	add hl, bc                                       ; $4074: $09
	or l                                             ; $4075: $b5
	add c                                            ; $4076: $81
	nop                                              ; $4077: $00
	rst $38                                          ; $4078: $ff
	inc b                                            ; $4079: $04
	ld a, l                                          ; $407a: $7d
	inc bc                                           ; $407b: $03
	jr z, jr_033_4084                                ; $407c: $28 $06

	ld [hl+], a                                      ; $407e: $22
	ld b, $c7                                        ; $407f: $06 $c7
	dec h                                            ; $4081: $25
	ld b, $1f                                        ; $4082: $06 $1f

jr_033_4084:
	ld b, $c6                                        ; $4084: $06 $c6
	ld [hl+], a                                      ; $4086: $22
	ld b, $1c                                        ; $4087: $06 $1c
	ld b, $c6                                        ; $4089: $06 $c6
	rra                                              ; $408b: $1f
	ld b, $19                                        ; $408c: $06 $19
	ld b, $c6                                        ; $408e: $06 $c6
	inc e                                            ; $4090: $1c
	ld b, $16                                        ; $4091: $06 $16
	ld b, $c5                                        ; $4093: $06 $c5
	add hl, de                                       ; $4095: $19
	ld b, $13                                        ; $4096: $06 $13
	ld b, $c4                                        ; $4098: $06 $c4
	ld d, $06                                        ; $409a: $16 $06
	call nz, $070f                                   ; $409c: $c4 $0f $07
	or l                                             ; $409f: $b5
	add c                                            ; $40a0: $81
	ld [bc], a                                       ; $40a1: $02
	ld [$7e02], sp                                   ; $40a2: $08 $02 $7e
	nop                                              ; $40a5: $00
	dec h                                            ; $40a6: $25
	add hl, bc                                       ; $40a7: $09
	or c                                             ; $40a8: $b1
	ld [hl], c                                       ; $40a9: $71
	nop                                              ; $40aa: $00
	nop                                              ; $40ab: $00
	inc hl                                           ; $40ac: $23
	ld h, l                                          ; $40ad: $65
	jp $0623                                         ; $40ae: $c3 $23 $06


	jp nz, $0623                                     ; $40b1: $c2 $23 $06

jr_033_40b4:
	pop bc                                           ; $40b4: $c1
	inc hl                                           ; $40b5: $23
	ld b, $ff                                        ; $40b6: $06 $ff
	or h                                             ; $40b8: $b4
	adc a                                            ; $40b9: $8f
	ld hl, $7e03                                     ; $40ba: $21 $03 $7e
	nop                                              ; $40bd: $00
	dec de                                           ; $40be: $1b
	ld b, $19                                        ; $40bf: $06 $19
	ld b, $7e                                        ; $40c1: $06 $7e
	ld [bc], a                                       ; $40c3: $02
	nop                                              ; $40c4: $00
	and b                                            ; $40c5: $a0
	dec de                                           ; $40c6: $1b
	ld a, [hl]                                       ; $40c7: $7e
	call nz, $0c1b                                   ; $40c8: $c4 $1b $0c
	add $1b                                          ; $40cb: $c6 $1b
	dec d                                            ; $40cd: $15
	add c                                            ; $40ce: $81
	jp nz, $080f                                     ; $40cf: $c2 $0f $08

	add $0f                                          ; $40d2: $c6 $0f
	inc bc                                           ; $40d4: $03
	jp nz, $027e                                     ; $40d5: $c2 $7e $02

	nop                                              ; $40d8: $00
	and c                                            ; $40d9: $a1
	inc d                                            ; $40da: $14
	ld h, e                                          ; $40db: $63
	add $14                                          ; $40dc: $c6 $14
	inc c                                            ; $40de: $0c
	nop                                              ; $40df: $00
	ld b, $ff                                        ; $40e0: $06 $ff
	or h                                             ; $40e2: $b4
	ld h, h                                          ; $40e3: $64
	sub c                                            ; $40e4: $91
	ld [bc], a                                       ; $40e5: $02
	dec de                                           ; $40e6: $1b
	ld d, $c3                                        ; $40e7: $16 $c3
	dec de                                           ; $40e9: $1b
	ld [bc], a                                       ; $40ea: $02
	ld a, [hl]                                       ; $40eb: $7e
	dec b                                            ; $40ec: $05
	nop                                              ; $40ed: $00
	xor c                                            ; $40ee: $a9
	ret                                              ; $40ef: $c9


	ld [hl+], a                                      ; $40f0: $22
	inc h                                            ; $40f1: $24
	ret z                                            ; $40f2: $c8

	ld a, [hl]                                       ; $40f3: $7e
	ld [bc], a                                       ; $40f4: $02
	nop                                              ; $40f5: $00
	and b                                            ; $40f6: $a0
	ld [hl+], a                                      ; $40f7: $22
	inc c                                            ; $40f8: $0c
	ld [hl+], a                                      ; $40f9: $22
	inc c                                            ; $40fa: $0c
	jp z, $007e                                      ; $40fb: $ca $7e $00

	sub h                                            ; $40fe: $94
	ld a, a                                          ; $40ff: $7f
	ld [hl+], a                                      ; $4100: $22
	ld a, [bc]                                       ; $4101: $0a
	sub h                                            ; $4102: $94
	ld [$1fc3], sp                                   ; $4103: $08 $c3 $1f
	ld [bc], a                                       ; $4106: $02
	ld a, [hl]                                       ; $4107: $7e
	ld [bc], a                                       ; $4108: $02
	nop                                              ; $4109: $00
	and b                                            ; $410a: $a0
	ret z                                            ; $410b: $c8

	rra                                              ; $410c: $1f
	ld a, [hl+]                                      ; $410d: $2a
	ld a, [hl]                                       ; $410e: $7e
	nop                                              ; $410f: $00
	jp $061f                                         ; $4110: $c3 $1f $06


	rst JumpTable                                          ; $4113: $c7
	ld a, [hl]                                       ; $4114: $7e
	ld [bc], a                                       ; $4115: $02
	nop                                              ; $4116: $00
	xor c                                            ; $4117: $a9
	dec h                                            ; $4118: $25
	inc h                                            ; $4119: $24
	jp $0225                                         ; $411a: $c3 $25 $02


	ld a, [hl]                                       ; $411d: $7e
	nop                                              ; $411e: $00
	ret z                                            ; $411f: $c8

	inc h                                            ; $4120: $24
	dec b                                            ; $4121: $05
	ld [hl+], a                                      ; $4122: $22
	dec b                                            ; $4123: $05
	ld a, [hl]                                       ; $4124: $7e
	ld [bc], a                                       ; $4125: $02
	nop                                              ; $4126: $00
	and b                                            ; $4127: $a0
	ret                                              ; $4128: $c9


	jr nz, jr_033_414d                               ; $4129: $20 $22

	ld a, [hl]                                       ; $412b: $7e
	ld [bc], a                                       ; $412c: $02
	nop                                              ; $412d: $00
	and b                                            ; $412e: $a0
	add $20                                          ; $412f: $c6 $20
	ld [$20c4], sp                                   ; $4131: $08 $c4 $20
	ld b, $7e                                        ; $4134: $06 $7e
	nop                                              ; $4136: $00
	ret z                                            ; $4137: $c8

	inc hl                                           ; $4138: $23
	inc hl                                           ; $4139: $23
	jp $0223                                         ; $413a: $c3 $23 $02


	ret z                                            ; $413d: $c8

	ld a, [de]                                       ; $413e: $1a
	ld b, $20                                        ; $413f: $06 $20
	dec b                                            ; $4141: $05
	ret                                              ; $4142: $c9


	rra                                              ; $4143: $1f
	inc c                                            ; $4144: $0c
	ret z                                            ; $4145: $c8

	jr @+$0e                                         ; $4146: $18 $0c

	ld a, [hl]                                       ; $4148: $7e
	ld [bc], a                                       ; $4149: $02
	nop                                              ; $414a: $00
	and b                                            ; $414b: $a0
	ret z                                            ; $414c: $c8

jr_033_414d:
	ld [hl+], a                                      ; $414d: $22
	ld c, b                                          ; $414e: $48
	sub [hl]                                         ; $414f: $96
	rst $38                                          ; $4150: $ff
	rlca                                             ; $4151: $07
	ld [hl+], a                                      ; $4152: $22
	ld d, $c3                                        ; $4153: $16 $c3
	ld [hl+], a                                      ; $4155: $22
	ld [bc], a                                       ; $4156: $02
	or c                                             ; $4157: $b1
	sub c                                            ; $4158: $91
	nop                                              ; $4159: $00
	nop                                              ; $415a: $00
	jr nz, jr_033_4169                               ; $415b: $20 $0c

	ret z                                            ; $415d: $c8

	rra                                              ; $415e: $1f
	inc b                                            ; $415f: $04
	dec e                                            ; $4160: $1d
	inc b                                            ; $4161: $04
	dec de                                           ; $4162: $1b
	inc b                                            ; $4163: $04
	ld a, [de]                                       ; $4164: $1a
	ld a, [hl+]                                      ; $4165: $2a
	jp $061a                                         ; $4166: $c3 $1a $06


jr_033_4169:
	ret z                                            ; $4169: $c8

	ld a, [hl]                                       ; $416a: $7e
	dec b                                            ; $416b: $05
	nop                                              ; $416c: $00
	xor c                                            ; $416d: $a9
	dec e                                            ; $416e: $1d
	jr @+$80                                         ; $416f: $18 $7e

	nop                                              ; $4171: $00
	add $bd                                          ; $4172: $c6 $bd
	ld [bc], a                                       ; $4174: $02
	dec de                                           ; $4175: $1b
	jr @+$0e                                         ; $4176: $18 $0c

	or c                                             ; $4178: $b1
	ld sp, $0000                                     ; $4179: $31 $00 $00
	dec de                                           ; $417c: $1b
	inc c                                            ; $417d: $0c
	jp nz, $061b                                     ; $417e: $c2 $1b $06

	pop bc                                           ; $4181: $c1
	dec de                                           ; $4182: $1b
	ld b, $ff                                        ; $4183: $06 $ff
	pop hl                                           ; $4185: $e1
	ld h, h                                          ; $4186: $64
	pop af                                           ; $4187: $f1
	sub a                                            ; $4188: $97
	ld a, d                                          ; $4189: $7a
	ld a, [hl]                                       ; $418a: $7e
	add hl, bc                                       ; $418b: $09
	nop                                              ; $418c: $00
	xor e                                            ; $418d: $ab
	sub b                                            ; $418e: $90
	inc h                                            ; $418f: $24
	inc c                                            ; $4190: $0c
	sub a                                            ; $4191: $97
	adc h                                            ; $4192: $8c
	rra                                              ; $4193: $1f
	inc c                                            ; $4194: $0c
	inc h                                            ; $4195: $24
	inc c                                            ; $4196: $0c
	sub a                                            ; $4197: $97
	ld a, d                                          ; $4198: $7a
	daa                                              ; $4199: $27
	inc c                                            ; $419a: $0c
	sub a                                            ; $419b: $97
	ld a, l                                          ; $419c: $7d
	ld h, $18                                        ; $419d: $26 $18
	ld a, [hl]                                       ; $419f: $7e
	nop                                              ; $41a0: $00
	add hl, hl                                       ; $41a1: $29
	jr @-$67                                         ; $41a2: $18 $97

	nop                                              ; $41a4: $00
	or c                                             ; $41a5: $b1
	and c                                            ; $41a6: $a1
	dec c                                            ; $41a7: $0d
	ld b, $29                                        ; $41a8: $06 $29
	ld a, [bc]                                       ; $41aa: $0a
	or c                                             ; $41ab: $b1
	ld sp, $0000                                     ; $41ac: $31 $00 $00
	add hl, hl                                       ; $41af: $29
	ld [bc], a                                       ; $41b0: $02
	sub a                                            ; $41b1: $97
	ld a, e                                          ; $41b2: $7b
	daa                                              ; $41b3: $27
	inc c                                            ; $41b4: $0c
	add hl, hl                                       ; $41b5: $29
	inc c                                            ; $41b6: $0c
	sub a                                            ; $41b7: $97
	ld a, d                                          ; $41b8: $7a
	dec hl                                           ; $41b9: $2b
	inc c                                            ; $41ba: $0c
	sub a                                            ; $41bb: $97
	ld a, e                                          ; $41bc: $7b
	jr z, jr_033_41cb                                ; $41bd: $28 $0c

	add hl, hl                                       ; $41bf: $29
	inc c                                            ; $41c0: $0c
	sub a                                            ; $41c1: $97
	ld a, e                                          ; $41c2: $7b
	dec hl                                           ; $41c3: $2b
	inc c                                            ; $41c4: $0c
	inc l                                            ; $41c5: $2c
	inc c                                            ; $41c6: $0c
	sub a                                            ; $41c7: $97
	nop                                              ; $41c8: $00
	or c                                             ; $41c9: $b1
	or c                                             ; $41ca: $b1

jr_033_41cb:
	rst $38                                          ; $41cb: $ff
	ld b, $2c                                        ; $41cc: $06 $2c
	ld a, [bc]                                       ; $41ce: $0a
	or c                                             ; $41cf: $b1
	ld sp, $0000                                     ; $41d0: $31 $00 $00
	inc l                                            ; $41d3: $2c
	ld [bc], a                                       ; $41d4: $02
	sub a                                            ; $41d5: $97
	ld a, e                                          ; $41d6: $7b
	dec hl                                           ; $41d7: $2b
	inc c                                            ; $41d8: $0c
	add hl, hl                                       ; $41d9: $29
	inc c                                            ; $41da: $0c
	sub a                                            ; $41db: $97
	ld a, h                                          ; $41dc: $7c
	daa                                              ; $41dd: $27
	inc c                                            ; $41de: $0c
	ld h, $0c                                        ; $41df: $26 $0c
	add hl, hl                                       ; $41e1: $29
	inc c                                            ; $41e2: $0c
	inc hl                                           ; $41e3: $23
	inc c                                            ; $41e4: $0c
	sub a                                            ; $41e5: $97
	ld l, e                                          ; $41e6: $6b
	dec hl                                           ; $41e7: $2b
	inc c                                            ; $41e8: $0c
	sub a                                            ; $41e9: $97
	nop                                              ; $41ea: $00
	or c                                             ; $41eb: $b1
	or c                                             ; $41ec: $b1
	rst $38                                          ; $41ed: $ff
	ld b, $2b                                        ; $41ee: $06 $2b
	ld a, [bc]                                       ; $41f0: $0a
	or c                                             ; $41f1: $b1
	ld sp, $0000                                     ; $41f2: $31 $00 $00
	dec hl                                           ; $41f5: $2b
	ld [bc], a                                       ; $41f6: $02
	sub a                                            ; $41f7: $97
	ld a, e                                          ; $41f8: $7b
	add hl, hl                                       ; $41f9: $29
	inc c                                            ; $41fa: $0c
	sub a                                            ; $41fb: $97
	ld a, d                                          ; $41fc: $7a
	daa                                              ; $41fd: $27
	ld b, $29                                        ; $41fe: $06 $29
	ld b, $97                                        ; $4200: $06 $97
	ld a, e                                          ; $4202: $7b
	ld h, $0c                                        ; $4203: $26 $0c
	inc h                                            ; $4205: $24
	db $10                                           ; $4206: $10
	sub a                                            ; $4207: $97
	ld a, d                                          ; $4208: $7a
	ld h, $04                                        ; $4209: $26 $04
	daa                                              ; $420b: $27
	inc b                                            ; $420c: $04
	sub a                                            ; $420d: $97
	ld a, h                                          ; $420e: $7c
	inc h                                            ; $420f: $24
	inc c                                            ; $4210: $0c
	sub a                                            ; $4211: $97
	ld a, e                                          ; $4212: $7b
	add hl, hl                                       ; $4213: $29
	inc c                                            ; $4214: $0c
	sub a                                            ; $4215: $97
	nop                                              ; $4216: $00
	or c                                             ; $4217: $b1
	or c                                             ; $4218: $b1
	rst $38                                          ; $4219: $ff
	ld b, $29                                        ; $421a: $06 $29
	ld a, [bc]                                       ; $421c: $0a
	or c                                             ; $421d: $b1
	ld sp, $0000                                     ; $421e: $31 $00 $00
	add hl, hl                                       ; $4221: $29
	ld [bc], a                                       ; $4222: $02
	sub a                                            ; $4223: $97
	ld a, e                                          ; $4224: $7b
	daa                                              ; $4225: $27
	inc c                                            ; $4226: $0c
	sub a                                            ; $4227: $97
	ld a, h                                          ; $4228: $7c
	ld h, $0c                                        ; $4229: $26 $0c
	inc h                                            ; $422b: $24
	inc c                                            ; $422c: $0c
	inc hl                                           ; $422d: $23
	inc c                                            ; $422e: $0c
	call nz, $0097                                   ; $422f: $c4 $97 $00
	inc hl                                           ; $4232: $23
	inc bc                                           ; $4233: $03
	sub a                                            ; $4234: $97
	ld a, c                                          ; $4235: $79
	inc hl                                           ; $4236: $23
	inc bc                                           ; $4237: $03
	inc h                                            ; $4238: $24
	inc bc                                           ; $4239: $03
	inc hl                                           ; $423a: $23
	inc bc                                           ; $423b: $03
	sub a                                            ; $423c: $97
	ld l, e                                          ; $423d: $6b
	ld hl, $230c                                     ; $423e: $21 $0c $23
	inc c                                            ; $4241: $0c
	sub a                                            ; $4242: $97
	ld a, e                                          ; $4243: $7b
	inc h                                            ; $4244: $24
	inc c                                            ; $4245: $0c
	sub a                                            ; $4246: $97
	nop                                              ; $4247: $00
	or c                                             ; $4248: $b1
	pop bc                                           ; $4249: $c1
	rst $38                                          ; $424a: $ff
	ld b, $24                                        ; $424b: $06 $24
	ld a, [bc]                                       ; $424d: $0a
	or c                                             ; $424e: $b1
	ld sp, $0000                                     ; $424f: $31 $00 $00
	inc h                                            ; $4252: $24
	ld [bc], a                                       ; $4253: $02
	ld a, l                                          ; $4254: $7d
	ld bc, $4c97                                     ; $4255: $01 $97 $4c
	jr jr_033_4266                                   ; $4258: $18 $0c

	sub a                                            ; $425a: $97
	nop                                              ; $425b: $00
	or c                                             ; $425c: $b1
	ld [hl], c                                       ; $425d: $71
	dec c                                            ; $425e: $0d
	ld b, $bd                                        ; $425f: $06 $bd
	ld [bc], a                                       ; $4261: $02
	jr @+$0e                                         ; $4262: $18 $0c

	inc c                                            ; $4264: $0c
	or c                                             ; $4265: $b1

jr_033_4266:
	ld sp, $0000                                     ; $4266: $31 $00 $00
	jr jr_033_4277                                   ; $4269: $18 $0c

	jp nz, $0618                                     ; $426b: $c2 $18 $06

	pop bc                                           ; $426e: $c1
	jr jr_033_4277                                   ; $426f: $18 $06

	rst $38                                          ; $4271: $ff
	or h                                             ; $4272: $b4
	ld h, h                                          ; $4273: $64
	ld hl, $0c02                                     ; $4274: $21 $02 $0c

jr_033_4277:
	ld d, $c4                                        ; $4277: $16 $c4
	inc c                                            ; $4279: $0c
	ld [bc], a                                       ; $427a: $02
	jp nz, $1618                                     ; $427b: $c2 $18 $16

	call nz, $0218                                   ; $427e: $c4 $18 $02
	jp nz, $160e                                     ; $4281: $c2 $0e $16

	call nz, $020e                                   ; $4284: $c4 $0e $02
	jp nz, $161a                                     ; $4287: $c2 $1a $16

	call nz, $021a                                   ; $428a: $c4 $1a $02
	jp nz, $160f                                     ; $428d: $c2 $0f $16

	call nz, $020f                                   ; $4290: $c4 $0f $02
	jp nz, $161b                                     ; $4293: $c2 $1b $16

	call nz, $021b                                   ; $4296: $c4 $1b $02
	jp nz, $1610                                     ; $4299: $c2 $10 $16

	call nz, $0210                                   ; $429c: $c4 $10 $02
	jp nz, $161c                                     ; $429f: $c2 $1c $16

	call nz, $021c                                   ; $42a2: $c4 $1c $02
	jp nz, $1611                                     ; $42a5: $c2 $11 $16

	call nz, $0211                                   ; $42a8: $c4 $11 $02
	jp nz, $161d                                     ; $42ab: $c2 $1d $16

	call nz, $021d                                   ; $42ae: $c4 $1d $02
	jp nz, $1607                                     ; $42b1: $c2 $07 $16

	call nz, $0207                                   ; $42b4: $c4 $07 $02
	jp nz, $1617                                     ; $42b7: $c2 $17 $16

	call nz, $0217                                   ; $42ba: $c4 $17 $02
	jp nz, $1618                                     ; $42bd: $c2 $18 $16

	call nz, $0218                                   ; $42c0: $c4 $18 $02
	jp nz, $1616                                     ; $42c3: $c2 $16 $16

	call nz, $0216                                   ; $42c6: $c4 $16 $02
	jp nz, $1615                                     ; $42c9: $c2 $15 $16

	call nz, $0215                                   ; $42cc: $c4 $15 $02
	jp nz, $161d                                     ; $42cf: $c2 $1d $16

	call nz, $021d                                   ; $42d2: $c4 $1d $02
	jp nz, $1614                                     ; $42d5: $c2 $14 $16

	call nz, $0214                                   ; $42d8: $c4 $14 $02
	jp nz, $1618                                     ; $42db: $c2 $18 $16

	call nz, $0218                                   ; $42de: $c4 $18 $02
	jp nz, $1617                                     ; $42e1: $c2 $17 $16

	call nz, $0217                                   ; $42e4: $c4 $17 $02
	jp nz, $1613                                     ; $42e7: $c2 $13 $16

	call nz, $0213                                   ; $42ea: $c4 $13 $02
	add e                                            ; $42ed: $83
	jp nz, $1618                                     ; $42ee: $c2 $18 $16

	call nz, $0218                                   ; $42f1: $c4 $18 $02
	jp nz, $180c                                     ; $42f4: $c2 $0c $18

	inc c                                            ; $42f7: $0c
	inc c                                            ; $42f8: $0c
	call nz, $0c0c                                   ; $42f9: $c4 $0c $0c
	add $0c                                          ; $42fc: $c6 $0c
	inc c                                            ; $42fe: $0c
	rst $38                                          ; $42ff: $ff
	or h                                             ; $4300: $b4
	and l                                            ; $4301: $a5
	add c                                            ; $4302: $81
	ld bc, $1800                                     ; $4303: $01 $00 $18
	jr nc, @+$03                                     ; $4306: $30 $01

	cp $fb                                           ; $4308: $fe $fb
	db $fd                                           ; $430a: $fd
	jp z, $fb43                                      ; $430b: $ca $43 $fb

	ld [bc], a                                       ; $430e: $02
	or l                                             ; $430f: $b5
	or c                                             ; $4310: $b1
	ld bc, $010c                                     ; $4311: $01 $0c $01
	ld sp, $310c                                     ; $4314: $31 $0c $31
	inc c                                            ; $4317: $0c
	or c                                             ; $4318: $b1
	ld [hl], c                                       ; $4319: $71
	inc c                                            ; $431a: $0c
	ld [bc], a                                       ; $431b: $02
	ld sp, $b10c                                     ; $431c: $31 $0c $b1
	or c                                             ; $431f: $b1
	inc c                                            ; $4320: $0c
	ld bc, $0c2c                                     ; $4321: $01 $2c $0c
	inc l                                            ; $4324: $2c
	inc c                                            ; $4325: $0c
	or c                                             ; $4326: $b1
	ld h, c                                          ; $4327: $61
	inc c                                            ; $4328: $0c
	ld [bc], a                                       ; $4329: $02
	inc l                                            ; $432a: $2c
	dec bc                                           ; $432b: $0b
	add $2e                                          ; $432c: $c6 $2e
	ld bc, $b1b1                                     ; $432e: $01 $b1 $b1
	inc c                                            ; $4331: $0c
	ld bc, $0c2f                                     ; $4332: $01 $2f $0c
	or c                                             ; $4335: $b1
	ld h, c                                          ; $4336: $61
	inc c                                            ; $4337: $0c
	inc bc                                           ; $4338: $03
	cpl                                              ; $4339: $2f
	inc c                                            ; $433a: $0c
	push bc                                          ; $433b: $c5
	cpl                                              ; $433c: $2f
	inc c                                            ; $433d: $0c
	or c                                             ; $433e: $b1
	ld sp, $040c                                     ; $433f: $31 $0c $04
	cpl                                              ; $4342: $2f
	inc c                                            ; $4343: $0c
	or c                                             ; $4344: $b1
	and c                                            ; $4345: $a1
	inc c                                            ; $4346: $0c
	ld bc, $0c2c                                     ; $4347: $01 $2c $0c
	or c                                             ; $434a: $b1
	ld h, c                                          ; $434b: $61
	inc c                                            ; $434c: $0c
	ld [bc], a                                       ; $434d: $02
	inc l                                            ; $434e: $2c
	inc c                                            ; $434f: $0c
	or c                                             ; $4350: $b1
	pop bc                                           ; $4351: $c1
	inc c                                            ; $4352: $0c
	ld bc, $0c2a                                     ; $4353: $01 $2a $0c
	or c                                             ; $4356: $b1
	ld [hl], c                                       ; $4357: $71
	inc c                                            ; $4358: $0c
	ld [bc], a                                       ; $4359: $02
	ld a, [hl+]                                      ; $435a: $2a
	inc c                                            ; $435b: $0c
	or c                                             ; $435c: $b1
	ld b, c                                          ; $435d: $41
	inc c                                            ; $435e: $0c
	inc bc                                           ; $435f: $03
	ld a, [hl+]                                      ; $4360: $2a
	dec bc                                           ; $4361: $0b
	or c                                             ; $4362: $b1
	ld h, c                                          ; $4363: $61
	nop                                              ; $4364: $00
	nop                                              ; $4365: $00
	add hl, hl                                       ; $4366: $29
	ld bc, $c1b1                                     ; $4367: $01 $b1 $c1
	inc c                                            ; $436a: $0c
	ld bc, $0c2a                                     ; $436b: $01 $2a $0c
	or c                                             ; $436e: $b1
	ld [hl], c                                       ; $436f: $71
	inc c                                            ; $4370: $0c
	ld [bc], a                                       ; $4371: $02
	ld a, [hl+]                                      ; $4372: $2a
	inc c                                            ; $4373: $0c
	or c                                             ; $4374: $b1
	ld b, c                                          ; $4375: $41
	inc c                                            ; $4376: $0c
	inc bc                                           ; $4377: $03
	ld a, [hl+]                                      ; $4378: $2a
	inc c                                            ; $4379: $0c
	or c                                             ; $437a: $b1
	pop bc                                           ; $437b: $c1
	inc c                                            ; $437c: $0c
	ld bc, $0c29                                     ; $437d: $01 $29 $0c
	or c                                             ; $4380: $b1
	ld h, c                                          ; $4381: $61
	inc c                                            ; $4382: $0c
	ld [bc], a                                       ; $4383: $02
	add hl, hl                                       ; $4384: $29
	inc c                                            ; $4385: $0c
	or c                                             ; $4386: $b1
	pop bc                                           ; $4387: $c1
	inc c                                            ; $4388: $0c
	ld bc, $0c2a                                     ; $4389: $01 $2a $0c
	or c                                             ; $438c: $b1
	ld [hl], c                                       ; $438d: $71
	inc c                                            ; $438e: $0c
	ld [bc], a                                       ; $438f: $02
	ld a, [hl+]                                      ; $4390: $2a
	inc c                                            ; $4391: $0c
	or c                                             ; $4392: $b1
	ld b, c                                          ; $4393: $41
	inc c                                            ; $4394: $0c
	inc bc                                           ; $4395: $03
	ld a, [hl+]                                      ; $4396: $2a
	inc c                                            ; $4397: $0c
	or c                                             ; $4398: $b1
	pop bc                                           ; $4399: $c1
	inc c                                            ; $439a: $0c
	ld bc, $0c2a                                     ; $439b: $01 $2a $0c
	or c                                             ; $439e: $b1
	ld h, c                                          ; $439f: $61
	inc c                                            ; $43a0: $0c
	ld [bc], a                                       ; $43a1: $02
	ld a, [hl+]                                      ; $43a2: $2a
	inc c                                            ; $43a3: $0c
	or c                                             ; $43a4: $b1
	ld b, c                                          ; $43a5: $41
	inc c                                            ; $43a6: $0c
	inc bc                                           ; $43a7: $03
	ld a, [hl+]                                      ; $43a8: $2a
	inc c                                            ; $43a9: $0c
	or c                                             ; $43aa: $b1
	pop bc                                           ; $43ab: $c1
	inc c                                            ; $43ac: $0c
	ld bc, $0c2c                                     ; $43ad: $01 $2c $0c
	or c                                             ; $43b0: $b1
	ld h, c                                          ; $43b1: $61
	inc c                                            ; $43b2: $0c
	ld [bc], a                                       ; $43b3: $02
	inc l                                            ; $43b4: $2c
	inc c                                            ; $43b5: $0c
	or c                                             ; $43b6: $b1
	ld d, c                                          ; $43b7: $51
	inc c                                            ; $43b8: $0c
	inc bc                                           ; $43b9: $03
	inc l                                            ; $43ba: $2c
	inc c                                            ; $43bb: $0c
	or c                                             ; $43bc: $b1
	ld sp, $040c                                     ; $43bd: $31 $0c $04
	inc l                                            ; $43c0: $2c
	dec bc                                           ; $43c1: $0b
	or c                                             ; $43c2: $b1
	ld [hl], c                                       ; $43c3: $71
	nop                                              ; $43c4: $00
	nop                                              ; $43c5: $00
	jr nc, @+$03                                     ; $43c6: $30 $01

	cp $ff                                           ; $43c8: $fe $ff
	or l                                             ; $43ca: $b5
	or c                                             ; $43cb: $b1
	ld bc, $010c                                     ; $43cc: $01 $0c $01
	ld sp, $310c                                     ; $43cf: $31 $0c $31
	inc c                                            ; $43d2: $0c
	or c                                             ; $43d3: $b1
	ld [hl], c                                       ; $43d4: $71
	inc c                                            ; $43d5: $0c
	ld [bc], a                                       ; $43d6: $02
	ld sp, $b10c                                     ; $43d7: $31 $0c $b1
	or c                                             ; $43da: $b1
	inc c                                            ; $43db: $0c
	ld bc, $0c2c                                     ; $43dc: $01 $2c $0c
	inc l                                            ; $43df: $2c
	inc c                                            ; $43e0: $0c
	or c                                             ; $43e1: $b1

jr_033_43e2:
	ld h, c                                          ; $43e2: $61
	inc c                                            ; $43e3: $0c
	ld [bc], a                                       ; $43e4: $02
	inc l                                            ; $43e5: $2c
	dec bc                                           ; $43e6: $0b
	or c                                             ; $43e7: $b1
	ld d, c                                          ; $43e8: $51
	nop                                              ; $43e9: $00
	nop                                              ; $43ea: $00
	ld l, $01                                        ; $43eb: $2e $01
	or c                                             ; $43ed: $b1
	or c                                             ; $43ee: $b1
	inc c                                            ; $43ef: $0c
	ld bc, $0c2f                                     ; $43f0: $01 $2f $0c
	or c                                             ; $43f3: $b1
	ld h, c                                          ; $43f4: $61
	inc c                                            ; $43f5: $0c
	inc bc                                           ; $43f6: $03
	cpl                                              ; $43f7: $2f
	inc c                                            ; $43f8: $0c
	pop de                                           ; $43f9: $d1
	push bc                                          ; $43fa: $c5
	cpl                                              ; $43fb: $2f
	inc c                                            ; $43fc: $0c
	or c                                             ; $43fd: $b1
	ld sp, $040c                                     ; $43fe: $31 $0c $04
	cpl                                              ; $4401: $2f
	inc c                                            ; $4402: $0c
	or c                                             ; $4403: $b1
	or c                                             ; $4404: $b1
	inc c                                            ; $4405: $0c
	ld bc, $0c2c                                     ; $4406: $01 $2c $0c
	or c                                             ; $4409: $b1
	ld h, c                                          ; $440a: $61
	inc c                                            ; $440b: $0c
	ld [bc], a                                       ; $440c: $02
	inc l                                            ; $440d: $2c
	inc c                                            ; $440e: $0c
	or c                                             ; $440f: $b1
	or c                                             ; $4410: $b1
	inc c                                            ; $4411: $0c
	ld bc, $0c2f                                     ; $4412: $01 $2f $0c
	or c                                             ; $4415: $b1
	ld h, c                                          ; $4416: $61
	inc c                                            ; $4417: $0c
	ld [bc], a                                       ; $4418: $02
	cpl                                              ; $4419: $2f
	inc c                                            ; $441a: $0c
	pop de                                           ; $441b: $d1
	push bc                                          ; $441c: $c5
	cpl                                              ; $441d: $2f
	inc c                                            ; $441e: $0c
	or c                                             ; $441f: $b1
	ld b, c                                          ; $4420: $41
	inc c                                            ; $4421: $0c
	inc bc                                           ; $4422: $03
	cpl                                              ; $4423: $2f
	dec bc                                           ; $4424: $0b
	or c                                             ; $4425: $b1
	ld h, c                                          ; $4426: $61
	nop                                              ; $4427: $00
	nop                                              ; $4428: $00
	jr nc, jr_033_442c                               ; $4429: $30 $01

	db $fd                                           ; $442b: $fd

jr_033_442c:
	or h                                             ; $442c: $b4
	and l                                            ; $442d: $a5
	pop bc                                           ; $442e: $c1
	ld [bc], a                                       ; $442f: $02
	nop                                              ; $4430: $00
	ld bc, $b1fe                                     ; $4431: $01 $fe $b1
	pop bc                                           ; $4434: $c1
	rst $38                                          ; $4435: $ff
	ld [bc], a                                       ; $4436: $02
	ld a, [hl]                                       ; $4437: $7e
	add hl, bc                                       ; $4438: $09
	nop                                              ; $4439: $00
	xor c                                            ; $443a: $a9
	cp [hl]                                          ; $443b: $be
	inc c                                            ; $443c: $0c
	dec h                                            ; $443d: $25
	inc h                                            ; $443e: $24
	inc hl                                           ; $443f: $23
	inc h                                            ; $4440: $24
	cp [hl]                                          ; $4441: $be
	ld a, [hl]                                       ; $4442: $7e
	ld [bc], a                                       ; $4443: $02
	nop                                              ; $4444: $00
	and b                                            ; $4445: $a0
	sub [hl]                                         ; $4446: $96
	rst $38                                          ; $4447: $ff
	inc bc                                           ; $4448: $03
	dec h                                            ; $4449: $25
	jr jr_033_43e2                                   ; $444a: $18 $96

	rst $38                                          ; $444c: $ff
	ld [bc], a                                       ; $444d: $02
	ld a, [hl]                                       ; $444e: $7e
	add hl, bc                                       ; $444f: $09
	nop                                              ; $4450: $00
	and b                                            ; $4451: $a0
	cp [hl]                                          ; $4452: $be
	inc c                                            ; $4453: $0c
	dec h                                            ; $4454: $25
	inc h                                            ; $4455: $24
	inc hl                                           ; $4456: $23
	inc h                                            ; $4457: $24
	cp [hl]                                          ; $4458: $be
	ld a, [hl]                                       ; $4459: $7e
	ld [bc], a                                       ; $445a: $02
	nop                                              ; $445b: $00
	and b                                            ; $445c: $a0
	sub [hl]                                         ; $445d: $96
	rst $38                                          ; $445e: $ff
	inc bc                                           ; $445f: $03
	dec h                                            ; $4460: $25
	jr @-$4d                                         ; $4461: $18 $b1

	and c                                            ; $4463: $a1
	rst $38                                          ; $4464: $ff
	inc b                                            ; $4465: $04
	ld a, [hl]                                       ; $4466: $7e
	dec b                                            ; $4467: $05
	nop                                              ; $4468: $00
	and b                                            ; $4469: $a0
	add hl, hl                                       ; $446a: $29

jr_033_446b:
	jr jr_033_446b                                   ; $446b: $18 $fe

	rst $38                                          ; $446d: $ff
	or h                                             ; $446e: $b4
	and l                                            ; $446f: $a5
	ld bc, $0002                                     ; $4470: $01 $02 $00
	ld bc, $c2fe                                     ; $4473: $01 $fe $c2
	dec c                                            ; $4476: $0d
	inc c                                            ; $4477: $0c
	call nz, $060d                                   ; $4478: $c4 $0d $06
	add $0d                                          ; $447b: $c6 $0d
	ld b, $00                                        ; $447d: $06 $00

jr_033_447f:
	jr jr_033_447f                                   ; $447f: $18 $fe

	rst $38                                          ; $4481: $ff
	ret nc                                           ; $4482: $d0

	and l                                            ; $4483: $a5
	nop                                              ; $4484: $00
	ld bc, $befe                                     ; $4485: $01 $fe $be
	inc c                                            ; $4488: $0c
	ld d, $12                                        ; $4489: $16 $12
	add hl, bc                                       ; $448b: $09
	ld [de], a                                       ; $448c: $12
	cp [hl]                                          ; $448d: $be
	cp $ff                                           ; $448e: $fe $ff
	or h                                             ; $4490: $b4
	ld [hl], c                                       ; $4491: $71
	pop de                                           ; $4492: $d1
	ld [bc], a                                       ; $4493: $02
	nop                                              ; $4494: $00
	inc c                                            ; $4495: $0c
	nop                                              ; $4496: $00
	ld a, [bc]                                       ; $4497: $0a
	ld a, l                                          ; $4498: $7d
	ld [bc], a                                       ; $4499: $02
	sub [hl]                                         ; $449a: $96
	inc bc                                           ; $449b: $03
	ld bc, $027e                                     ; $449c: $01 $7e $02
	nop                                              ; $449f: $00
	and c                                            ; $44a0: $a1
	dec e                                            ; $44a1: $1d
	inc bc                                           ; $44a2: $03
	nop                                              ; $44a3: $00
	ld bc, $031d                                     ; $44a4: $01 $1d $03
	nop                                              ; $44a7: $00
	ld bc, $0896                                     ; $44a8: $01 $96 $08
	ld bc, $081d                                     ; $44ab: $01 $1d $08
	sub [hl]                                         ; $44ae: $96
	ld [$1d03], sp                                   ; $44af: $08 $03 $1d
	ld [$0896], sp                                   ; $44b2: $08 $96 $08
	ld bc, $0818                                     ; $44b5: $01 $18 $08
	jr @+$0a                                         ; $44b8: $18 $08

	sub [hl]                                         ; $44ba: $96
	ld [$1803], sp                                   ; $44bb: $08 $03 $18
	ld [$0896], sp                                   ; $44be: $08 $96 $08
	ld bc, $081d                                     ; $44c1: $01 $1d $08
	dec e                                            ; $44c4: $1d
	ld [$0896], sp                                   ; $44c5: $08 $96 $08
	inc bc                                           ; $44c8: $03
	dec e                                            ; $44c9: $1d
	ld [$0896], sp                                   ; $44ca: $08 $96 $08
	ld bc, $027e                                     ; $44cd: $01 $7e $02
	nop                                              ; $44d0: $00
	and b                                            ; $44d1: $a0
	ld hl, $2108                                     ; $44d2: $21 $08 $21
	ld [$91b1], sp                                   ; $44d5: $08 $b1 $91
	ld [$7e02], sp                                   ; $44d8: $08 $02 $7e
	ld [bc], a                                       ; $44db: $02
	nop                                              ; $44dc: $00
	and b                                            ; $44dd: $a0
	inc h                                            ; $44de: $24
	ld b, $b1                                        ; $44df: $06 $b1
	ld hl, $0000                                     ; $44e1: $21 $00 $00
	inc h                                            ; $44e4: $24
	ld [$51b1], sp                                   ; $44e5: $08 $b1 $51
	nop                                              ; $44e8: $00
	nop                                              ; $44e9: $00
	jr z, jr_033_44f3                                ; $44ea: $28 $07

	nop                                              ; $44ec: $00
	ld bc, $02bd                                     ; $44ed: $01 $bd $02
	jr z, @+$4a                                      ; $44f0: $28 $48

	ld a, [bc]                                       ; $44f2: $0a

jr_033_44f3:
	jp $0528                                         ; $44f3: $c3 $28 $05


	rst $38                                          ; $44f6: $ff
	or h                                             ; $44f7: $b4
	ld [hl], c                                       ; $44f8: $71
	pop bc                                           ; $44f9: $c1
	inc bc                                           ; $44fa: $03
	nop                                              ; $44fb: $00
	inc c                                            ; $44fc: $0c
	nop                                              ; $44fd: $00
	ld [$ff96], sp                                   ; $44fe: $08 $96 $ff
	ld bc, $0324                                     ; $4501: $01 $24 $03
	nop                                              ; $4504: $00
	ld bc, $0324                                     ; $4505: $01 $24 $03
	nop                                              ; $4508: $00
	ld bc, $ff96                                     ; $4509: $01 $96 $ff
	ld bc, $0824                                     ; $450c: $01 $24 $08
	sub [hl]                                         ; $450f: $96
	ld [$2403], sp                                   ; $4510: $08 $03 $24
	ld [$0896], sp                                   ; $4513: $08 $96 $08
	ld bc, $0821                                     ; $4516: $01 $21 $08
	ld hl, $9608                                     ; $4519: $21 $08 $96
	ld [$2103], sp                                   ; $451c: $08 $03 $21
	ld [$0896], sp                                   ; $451f: $08 $96 $08
	ld bc, $0824                                     ; $4522: $01 $24 $08
	inc h                                            ; $4525: $24
	ld [$0896], sp                                   ; $4526: $08 $96 $08
	inc bc                                           ; $4529: $03
	inc h                                            ; $452a: $24
	ld [$91b1], sp                                   ; $452b: $08 $b1 $91
	ld [$2901], sp                                   ; $452e: $08 $01 $29
	ld [$0829], sp                                   ; $4531: $08 $29 $08
	sub [hl]                                         ; $4534: $96
	ld [$2b02], sp                                   ; $4535: $08 $02 $2b
	ld [$21b1], sp                                   ; $4538: $08 $b1 $21
	nop                                              ; $453b: $00
	nop                                              ; $453c: $00
	dec hl                                           ; $453d: $2b
	ld [$71b1], sp                                   ; $453e: $08 $b1 $71
	nop                                              ; $4541: $00
	nop                                              ; $4542: $00
	jr nc, jr_033_454c                               ; $4543: $30 $07

	nop                                              ; $4545: $00
	ld bc, $017e                                     ; $4546: $01 $7e $01
	jr @-$55                                         ; $4549: $18 $a9

	cp l                                             ; $454b: $bd

jr_033_454c:
	ld [bc], a                                       ; $454c: $02
	jr nc, @+$4a                                     ; $454d: $30 $48

	ld a, [bc]                                       ; $454f: $0a
	call nz, $0530                                   ; $4550: $c4 $30 $05
	rst $38                                          ; $4553: $ff
	or h                                             ; $4554: $b4
	ld [hl], c                                       ; $4555: $71
	ld hl, $0005                                     ; $4556: $21 $05 $00
	inc c                                            ; $4559: $0c
	ld de, $c410                                     ; $455a: $11 $10 $c4
	dec [hl]                                         ; $455d: $35
	inc b                                            ; $455e: $04
	add $11                                          ; $455f: $c6 $11
	inc b                                            ; $4561: $04
	jp nz, $1011                                     ; $4562: $c2 $11 $10

	call nz, $0435                                   ; $4565: $c4 $35 $04
	add $11                                          ; $4568: $c6 $11
	inc b                                            ; $456a: $04
	jp nz, $100c                                     ; $456b: $c2 $0c $10

	call nz, $0435                                   ; $456e: $c4 $35 $04
	add $0c                                          ; $4571: $c6 $0c
	inc b                                            ; $4573: $04
	jp nz, $1011                                     ; $4574: $c2 $11 $10

	call nz, $0435                                   ; $4577: $c4 $35 $04
	add $11                                          ; $457a: $c6 $11
	inc b                                            ; $457c: $04
	jp nz, $0610                                     ; $457d: $c2 $10 $06

	add $10                                          ; $4580: $c6 $10
	ld b, $00                                        ; $4582: $06 $00
	inc b                                            ; $4584: $04
	jp nz, $0718                                     ; $4585: $c2 $18 $07

	add $18                                          ; $4588: $c6 $18
	ld bc, $18c2                                     ; $458a: $01 $c2 $18
	ld c, b                                          ; $458d: $48
	jr jr_033_459a                                   ; $458e: $18 $0a

	call nz, $0318                                   ; $4590: $c4 $18 $03
	add $18                                          ; $4593: $c6 $18
	ld [bc], a                                       ; $4595: $02

jr_033_4596:
	jp nz, $d0ff                                     ; $4596: $c2 $ff $d0

	ld [hl], c                                       ; $4599: $71

jr_033_459a:
	dec c                                            ; $459a: $0d
	inc b                                            ; $459b: $04
	dec c                                            ; $459c: $0d
	inc b                                            ; $459d: $04
	dec c                                            ; $459e: $0d
	inc b                                            ; $459f: $04
	rrca                                             ; $45a0: $0f
	db $10                                           ; $45a1: $10
	dec a                                            ; $45a2: $3d
	ld [$37fb], sp                                   ; $45a3: $08 $fb $37
	ld [$083d], sp                                   ; $45a6: $08 $3d $08
	dec a                                            ; $45a9: $3d
	ld [$03fb], sp                                   ; $45aa: $08 $fb $03
	scf                                              ; $45ad: $37
	db $10                                           ; $45ae: $10
	dec a                                            ; $45af: $3d
	ld [$04be], sp                                   ; $45b0: $08 $be $04
	inc de                                           ; $45b3: $13
	inc de                                           ; $45b4: $13
	inc de                                           ; $45b5: $13
	inc de                                           ; $45b6: $13
	inc de                                           ; $45b7: $13
	inc de                                           ; $45b8: $13
	inc de                                           ; $45b9: $13
	inc de                                           ; $45ba: $13
	inc de                                           ; $45bb: $13
	inc de                                           ; $45bc: $13
	inc de                                           ; $45bd: $13
	inc de                                           ; $45be: $13
	inc de                                           ; $45bf: $13
	inc de                                           ; $45c0: $13
	inc de                                           ; $45c1: $13
	inc de                                           ; $45c2: $13
	inc de                                           ; $45c3: $13
	inc de                                           ; $45c4: $13

jr_033_45c5:
	cp [hl]                                          ; $45c5: $be
	inc d                                            ; $45c6: $14
	rrca                                             ; $45c7: $0f
	rst $38                                          ; $45c8: $ff
	or h                                             ; $45c9: $b4
	sub [hl]                                         ; $45ca: $96
	add c                                            ; $45cb: $81
	ld bc, $017e                                     ; $45cc: $01 $7e $01
	inc c                                            ; $45cf: $0c
	and b                                            ; $45d0: $a0
	ld e, $20                                        ; $45d1: $1e $20
	jp $041e                                         ; $45d3: $c3 $1e $04


	ret z                                            ; $45d6: $c8

	ld hl, $c312                                     ; $45d7: $21 $12 $c3
	ld hl, $c806                                     ; $45da: $21 $06 $c8
	ld a, [hl+]                                      ; $45dd: $2a
	inc d                                            ; $45de: $14
	jp $042a                                         ; $45df: $c3 $2a $04


	ret z                                            ; $45e2: $c8

	inc hl                                           ; $45e3: $23
	ld [$23c4], sp                                   ; $45e4: $08 $c4 $23
	inc b                                            ; $45e7: $04
	ld a, [hl]                                       ; $45e8: $7e
	ld bc, $a90c                                     ; $45e9: $01 $0c $a9
	jp $0c23                                         ; $45ec: $c3 $23 $0c


	jp z, $0618                                      ; $45ef: $ca $18 $06

	jp $0618                                         ; $45f2: $c3 $18 $06


	jp z, $1819                                      ; $45f5: $ca $19 $18

	rr c                                             ; $45f8: $cb $19
	jr jr_033_45c5                                   ; $45fa: $18 $c9

	add hl, de                                       ; $45fc: $19
	jr jr_033_4596                                   ; $45fd: $18 $97

	nop                                              ; $45ff: $00
	jp $061c                                         ; $4600: $c3 $1c $06


	jp nz, $061c                                     ; $4603: $c2 $1c $06

	pop bc                                           ; $4606: $c1
	inc e                                            ; $4607: $1c
	ld b, $ff                                        ; $4608: $06 $ff
	or h                                             ; $460a: $b4
	sub [hl]                                         ; $460b: $96
	ld [hl], c                                       ; $460c: $71
	inc bc                                           ; $460d: $03
	ld a, [hl]                                       ; $460e: $7e
	ld bc, $a00c                                     ; $460f: $01 $0c $a0

jr_033_4612:
	dec l                                            ; $4612: $2d
	jr nz, jr_033_4693                               ; $4613: $20 $7e

	ld bc, $a000                                     ; $4615: $01 $00 $a0
	jp $042d                                         ; $4618: $c3 $2d $04


	ld a, [hl]                                       ; $461b: $7e
	ld bc, $a00c                                     ; $461c: $01 $0c $a0
	ret z                                            ; $461f: $c8

	ld h, $12                                        ; $4620: $26 $12
	jp $0626                                         ; $4622: $c3 $26 $06


	ret z                                            ; $4625: $c8

	dec l                                            ; $4626: $2d
	inc d                                            ; $4627: $14
	jp $042d                                         ; $4628: $c3 $2d $04


	ret z                                            ; $462b: $c8

	dec hl                                           ; $462c: $2b
	ld [$2bc3], sp                                   ; $462d: $08 $c3 $2b
	inc b                                            ; $4630: $04
	ld a, [hl]                                       ; $4631: $7e
	ld bc, $a90c                                     ; $4632: $01 $0c $a9
	jp $0c2b                                         ; $4635: $c3 $2b $0c


	ret z                                            ; $4638: $c8

	inc l                                            ; $4639: $2c
	ld b, $c3                                        ; $463a: $06 $c3
	inc l                                            ; $463c: $2c
	ld b, $c8                                        ; $463d: $06 $c8
	dec l                                            ; $463f: $2d
	ld c, b                                          ; $4640: $48
	sub a                                            ; $4641: $97
	nop                                              ; $4642: $00
	jp $062d                                         ; $4643: $c3 $2d $06


	jp nz, $062d                                     ; $4646: $c2 $2d $06

	pop bc                                           ; $4649: $c1
	dec l                                            ; $464a: $2d
	ld b, $ff                                        ; $464b: $06 $ff
	or h                                             ; $464d: $b4
	sub [hl]                                         ; $464e: $96
	ld hl, $1a01                                     ; $464f: $21 $01 $1a
	jr jr_033_4612                                   ; $4652: $18 $be

	ld bc, $1819                                     ; $4654: $01 $19 $18
	rla                                              ; $4657: $17
	ld d, $15                                        ; $4658: $16 $15
	inc d                                            ; $465a: $14
	inc de                                           ; $465b: $13
	ld [de], a                                       ; $465c: $12
	ld de, $be10                                     ; $465d: $11 $10 $be
	add $0f                                          ; $4660: $c6 $0f
	ld [bc], a                                       ; $4662: $02
	jp nz, $180e                                     ; $4663: $c2 $0e $18

	ld [de], a                                       ; $4666: $12
	inc d                                            ; $4667: $14
	call nz, $0412                                   ; $4668: $c4 $12 $04
	jp nz, $0817                                     ; $466b: $c2 $17 $08

	call nz, $0417                                   ; $466e: $c4 $17 $04
	add $17                                          ; $4671: $c6 $17
	ld b, $c2                                        ; $4673: $06 $c2
	inc de                                           ; $4675: $13
	dec b                                            ; $4676: $05
	nop                                              ; $4677: $00
	ld bc, $0512                                     ; $4678: $01 $12 $05
	nop                                              ; $467b: $00
	ld bc, $0510                                     ; $467c: $01 $10 $05
	nop                                              ; $467f: $00
	ld bc, $c283                                     ; $4680: $01 $83 $c2
	dec d                                            ; $4683: $15
	ld c, b                                          ; $4684: $48
	dec d                                            ; $4685: $15
	ld b, $c4                                        ; $4686: $06 $c4
	dec d                                            ; $4688: $15
	ld b, $c6                                        ; $4689: $06 $c6
	dec d                                            ; $468b: $15
	ld b, $ff                                        ; $468c: $06 $ff
	ret nc                                           ; $468e: $d0

	sub [hl]                                         ; $468f: $96
	dec bc                                           ; $4690: $0b
	inc c                                            ; $4691: $0c
	dec c                                            ; $4692: $0d

jr_033_4693:
	ld b, $0d                                        ; $4693: $06 $0d
	ld b, $be                                        ; $4695: $06 $be
	inc c                                            ; $4697: $0c
	dec c                                            ; $4698: $0d
	ld a, [bc]                                       ; $4699: $0a

jr_033_469a:
	add hl, bc                                       ; $469a: $09
	ld a, [bc]                                       ; $469b: $0a
	dec c                                            ; $469c: $0d
	inc c                                            ; $469d: $0c
	cp [hl]                                          ; $469e: $be
	dec c                                            ; $469f: $0d
	ld b, $0d                                        ; $46a0: $06 $0d
	ld b, $0c                                        ; $46a2: $06 $0c
	inc c                                            ; $46a4: $0c
	inc c                                            ; $46a5: $0c
	ld b, $fb                                        ; $46a6: $06 $fb
	ld c, $03                                        ; $46a8: $0e $03
	ei                                               ; $46aa: $fb
	ld d, $4f                                        ; $46ab: $16 $4f
	inc c                                            ; $46ad: $0c
	rst $38                                          ; $46ae: $ff
	ret nc                                           ; $46af: $d0

	sbc b                                            ; $46b0: $98
	cp $b5                                           ; $46b1: $fe $b5
	add d                                            ; $46b3: $82
	inc bc                                           ; $46b4: $03
	nop                                              ; $46b5: $00
	nop                                              ; $46b6: $00
	ld a, l                                          ; $46b7: $7d
	ld [bc], a                                       ; $46b8: $02
	nop                                              ; $46b9: $00

jr_033_46ba:
	ld b, $20                                        ; $46ba: $06 $20
	jr nc, jr_033_473c                               ; $46bc: $30 $7e

	ld bc, $a018                                     ; $46be: $01 $18 $a0
	inc h                                            ; $46c1: $24
	jr nc, jr_033_4742                               ; $46c2: $30 $7e

	ld bc, $a900                                     ; $46c4: $01 $00 $a9
	dec h                                            ; $46c7: $25
	jr jr_033_46f1                                   ; $46c8: $18 $27

	jr @+$7f                                         ; $46ca: $18 $7d

	nop                                              ; $46cc: $00
	add hl, hl                                       ; $46cd: $29
	jr jr_033_474d                                   ; $46ce: $18 $7d

	ld [bc], a                                       ; $46d0: $02
	dec h                                            ; $46d1: $25
	inc c                                            ; $46d2: $0c
	inc h                                            ; $46d3: $24
	inc c                                            ; $46d4: $0c
	ld a, [hl]                                       ; $46d5: $7e
	ld bc, $a028                                     ; $46d6: $01 $28 $a0
	ld [hl+], a                                      ; $46d9: $22
	jr nc, jr_033_475a                               ; $46da: $30 $7e

	ld bc, $a900                                     ; $46dc: $01 $00 $a9

jr_033_46df:
	cp [hl]                                          ; $46df: $be
	jr jr_033_470c                                   ; $46e0: $18 $2a

	add hl, hl                                       ; $46e2: $29
	daa                                              ; $46e3: $27
	dec h                                            ; $46e4: $25
	cp [hl]                                          ; $46e5: $be
	daa                                              ; $46e6: $27
	inc d                                            ; $46e7: $14
	or c                                             ; $46e8: $b1
	ld h, d                                          ; $46e9: $62
	nop                                              ; $46ea: $00
	nop                                              ; $46eb: $00
	daa                                              ; $46ec: $27
	inc b                                            ; $46ed: $04
	or c                                             ; $46ee: $b1
	ld d, d                                          ; $46ef: $52
	rst $38                                          ; $46f0: $ff

jr_033_46f1:
	rlca                                             ; $46f1: $07
	add hl, hl                                       ; $46f2: $29
	inc c                                            ; $46f3: $0c
	ld a, [hl+]                                      ; $46f4: $2a
	ld b, $b5                                        ; $46f5: $06 $b5
	and c                                            ; $46f7: $a1
	ld [bc], a                                       ; $46f8: $02
	nop                                              ; $46f9: $00
	nop                                              ; $46fa: $00
	ld a, [hl]                                       ; $46fb: $7e
	ld bc, $a900                                     ; $46fc: $01 $00 $a9
	ld a, l                                          ; $46ff: $7d
	nop                                              ; $4700: $00
	dec e                                            ; $4701: $1d
	jr jr_033_469a                                   ; $4702: $18 $96

	rst $38                                          ; $4704: $ff
	ld b, $1d                                        ; $4705: $06 $1d
	jr jr_033_46ba                                   ; $4707: $18 $b1

	sub c                                            ; $4709: $91
	rst $38                                          ; $470a: $ff
	rlca                                             ; $470b: $07

jr_033_470c:
	ld a, [hl]                                       ; $470c: $7e
	dec b                                            ; $470d: $05
	nop                                              ; $470e: $00
	xor e                                            ; $470f: $ab
	jr nz, jr_033_472a                               ; $4710: $20 $18

	inc h                                            ; $4712: $24
	jr jr_033_46df                                   ; $4713: $18 $ca

	cp [hl]                                          ; $4715: $be
	jr jr_033_473a                                   ; $4716: $18 $22

	dec e                                            ; $4718: $1d
	add hl, de                                       ; $4719: $19
	ld d, $be                                        ; $471a: $16 $be
	jp z, $181b                                      ; $471c: $ca $1b $18

	ld e, $18                                        ; $471f: $1e $18
	ret                                              ; $4721: $c9


	ld [hl+], a                                      ; $4722: $22
	jr jr_033_474a                                   ; $4723: $18 $25

	jr @-$4d                                         ; $4725: $18 $b1

	sub c                                            ; $4727: $91
	rst $38                                          ; $4728: $ff
	ld [bc], a                                       ; $4729: $02

jr_033_472a:
	inc h                                            ; $472a: $24
	inc d                                            ; $472b: $14
	or c                                             ; $472c: $b1
	ld d, c                                          ; $472d: $51
	nop                                              ; $472e: $00
	nop                                              ; $472f: $00
	inc h                                            ; $4730: $24
	inc b                                            ; $4731: $04
	or l                                             ; $4732: $b5
	ld d, d                                          ; $4733: $52
	ld [bc], a                                       ; $4734: $02
	nop                                              ; $4735: $00
	nop                                              ; $4736: $00
	ld a, [hl]                                       ; $4737: $7e

jr_033_4738:
	ld b, $00                                        ; $4738: $06 $00

jr_033_473a:
	xor d                                            ; $473a: $aa
	ld a, l                                          ; $473b: $7d

jr_033_473c:
	ld bc, $0600                                     ; $473c: $01 $00 $06
	add hl, hl                                       ; $473f: $29

jr_033_4740:
	ld d, $c5                                        ; $4740: $16 $c5

jr_033_4742:
	add hl, hl                                       ; $4742: $29
	ld [bc], a                                       ; $4743: $02
	ld a, [hl]                                       ; $4744: $7e
	nop                                              ; $4745: $00
	ret z                                            ; $4746: $c8

	add hl, hl                                       ; $4747: $29
	ld d, $c4                                        ; $4748: $16 $c4

jr_033_474a:
	add hl, hl                                       ; $474a: $29
	ld [bc], a                                       ; $474b: $02
	ret z                                            ; $474c: $c8

jr_033_474d:
	ld a, [hl+]                                      ; $474d: $2a
	ld [de], a                                       ; $474e: $12
	ld a, l                                          ; $474f: $7d
	nop                                              ; $4750: $00
	or l                                             ; $4751: $b5
	sub c                                            ; $4752: $91
	ld bc, $0000                                     ; $4753: $01 $00 $00
	ld a, l                                          ; $4756: $7d
	nop                                              ; $4757: $00
	dec e                                            ; $4758: $1d
	ld [de], a                                       ; $4759: $12

jr_033_475a:
	ret z                                            ; $475a: $c8

	dec e                                            ; $475b: $1d
	inc c                                            ; $475c: $0c
	rst JumpTable                                          ; $475d: $c7
	dec e                                            ; $475e: $1d
	stop                                             ; $475f: $10 $00
	ld [bc], a                                       ; $4761: $02
	or c                                             ; $4762: $b1
	add c                                            ; $4763: $81
	nop                                              ; $4764: $00
	nop                                              ; $4765: $00
	dec e                                            ; $4766: $1d

jr_033_4767:
	jr jr_033_4787                                   ; $4767: $18 $1e

	ld d, $00                                        ; $4769: $16 $00
	ld [bc], a                                       ; $476b: $02
	ret z                                            ; $476c: $c8

	dec e                                            ; $476d: $1d
	jr jr_033_4738                                   ; $476e: $18 $c8

	inc d                                            ; $4770: $14
	jr @-$4d                                         ; $4771: $18 $b1

	ld [hl], c                                       ; $4773: $71
	rst $38                                          ; $4774: $ff

jr_033_4775:
	ld [bc], a                                       ; $4775: $02
	add hl, de                                       ; $4776: $19
	inc b                                            ; $4777: $04

jr_033_4778:
	dec de                                           ; $4778: $1b
	inc b                                            ; $4779: $04
	add hl, de                                       ; $477a: $19
	dec b                                            ; $477b: $05
	or c                                             ; $477c: $b1
	sub c                                            ; $477d: $91
	rst $38                                          ; $477e: $ff
	inc bc                                           ; $477f: $03
	jr jr_033_478c                                   ; $4780: $18 $0a

	nop                                              ; $4782: $00
	ld bc, $71b1                                     ; $4783: $01 $b1 $71
	nop                                              ; $4786: $00

jr_033_4787:
	nop                                              ; $4787: $00

jr_033_4788:
	ld a, [hl]                                       ; $4788: $7e
	ld bc, $a900                                     ; $4789: $01 $00 $a9

jr_033_478c:
	add hl, de                                       ; $478c: $19
	jr jr_033_4740                                   ; $478d: $18 $b1

	ld b, c                                          ; $478f: $41
	nop                                              ; $4790: $00
	nop                                              ; $4791: $00
	add hl, de                                       ; $4792: $19
	jr jr_033_4813                                   ; $4793: $18 $7e

	nop                                              ; $4795: $00
	ret z                                            ; $4796: $c8

	dec e                                            ; $4797: $1d
	ld d, $c4                                        ; $4798: $16 $c4
	dec e                                            ; $479a: $1d
	ld [bc], a                                       ; $479b: $02

jr_033_479c:
	ret z                                            ; $479c: $c8

	dec e                                            ; $479d: $1d
	ld d, $c4                                        ; $479e: $16 $c4
	dec e                                            ; $47a0: $1d
	ld [bc], a                                       ; $47a1: $02
	ret z                                            ; $47a2: $c8

	ld e, $16                                        ; $47a3: $1e $16
	call nz, $021e                                   ; $47a5: $c4 $1e $02
	ret z                                            ; $47a8: $c8

	dec e                                            ; $47a9: $1d
	jr jr_033_4775                                   ; $47aa: $18 $c9

	inc d                                            ; $47ac: $14
	jr jr_033_4778                                   ; $47ad: $18 $c9

	rla                                              ; $47af: $17
	jr jr_033_4767                                   ; $47b0: $18 $b5

	add c                                            ; $47b2: $81
	ld [bc], a                                       ; $47b3: $02
	nop                                              ; $47b4: $00
	nop                                              ; $47b5: $00
	ld a, l                                          ; $47b6: $7d
	ld bc, $017e                                     ; $47b7: $01 $7e $01
	nop                                              ; $47ba: $00
	xor c                                            ; $47bb: $a9
	add hl, de                                       ; $47bc: $19
	jr jr_033_4788                                   ; $47bd: $18 $c9

	ld a, [hl]                                       ; $47bf: $7e
	ld bc, $a000                                     ; $47c0: $01 $00 $a0
	ld a, [de]                                       ; $47c3: $1a
	ld h, b                                          ; $47c4: $60
	ld a, [hl]                                       ; $47c5: $7e
	ld bc, $a900                                     ; $47c6: $01 $00 $a9
	dec de                                           ; $47c9: $1b
	jr nc, @-$36                                     ; $47ca: $30 $c8

	dec e                                            ; $47cc: $1d
	jr nc, jr_033_47ed                               ; $47cd: $30 $1e

	jr nc, jr_033_47f1                               ; $47cf: $30 $20

	jr nc, jr_033_47f5                               ; $47d1: $30 $22

	jr nc, jr_033_479c                               ; $47d3: $30 $c7

	ld [hl+], a                                      ; $47d5: $22
	inc c                                            ; $47d6: $0c
	add $22                                          ; $47d7: $c6 $22
	inc c                                            ; $47d9: $0c
	push bc                                          ; $47da: $c5

jr_033_47db:
	ld [hl+], a                                      ; $47db: $22
	jr jr_033_485c                                   ; $47dc: $18 $7e

	nop                                              ; $47de: $00
	or l                                             ; $47df: $b5
	sub c                                            ; $47e0: $91
	ld bc, $0000                                     ; $47e1: $01 $00 $00
	dec de                                           ; $47e4: $1b
	ld a, [hl+]                                      ; $47e5: $2a
	call nz, $061b                                   ; $47e6: $c4 $1b $06
	ret z                                            ; $47e9: $c8

	dec de                                           ; $47ea: $1b
	jr jr_033_480a                                   ; $47eb: $18 $1d

jr_033_47ed:
	ld d, $00                                        ; $47ed: $16 $00
	ld [bc], a                                       ; $47ef: $02
	ld a, l                                          ; $47f0: $7d

jr_033_47f1:
	ld [bc], a                                       ; $47f1: $02
	ret z                                            ; $47f2: $c8

	dec de                                           ; $47f3: $1b
	ld h, b                                          ; $47f4: $60

jr_033_47f5:
	ld a, [hl]                                       ; $47f5: $7e
	ld bc, $a900                                     ; $47f6: $01 $00 $a9
	call nz, $181b                                   ; $47f9: $c4 $1b $18
	ret z                                            ; $47fc: $c8

	dec de                                           ; $47fd: $1b
	ld d, $c4                                        ; $47fe: $16 $c4
	dec de                                           ; $4800: $1b
	ld [bc], a                                       ; $4801: $02
	ret z                                            ; $4802: $c8

	dec de                                           ; $4803: $1b
	jr jr_033_4823                                   ; $4804: $18 $1d

jr_033_4806:
	ld d, $00                                        ; $4806: $16 $00
	ld [bc], a                                       ; $4808: $02
	ret z                                            ; $4809: $c8

jr_033_480a:
	dec de                                           ; $480a: $1b

jr_033_480b:
	ld h, b                                          ; $480b: $60
	or c                                             ; $480c: $b1
	ld d, c                                          ; $480d: $51
	nop                                              ; $480e: $00
	nop                                              ; $480f: $00
	dec de                                           ; $4810: $1b
	jr jr_033_47db                                   ; $4811: $18 $c8

Jump_033_4813:
jr_033_4813:
	sub d                                            ; $4813: $92
	ld a, [hl]                                       ; $4814: $7e
	nop                                              ; $4815: $00
	ld a, l                                          ; $4816: $7d
	nop                                              ; $4817: $00
	daa                                              ; $4818: $27
	dec bc                                           ; $4819: $0b

jr_033_481a:
	call nz, $0d27                                   ; $481a: $c4 $27 $0d
	ret z                                            ; $481d: $c8

	ld h, $0b                                        ; $481e: $26 $0b
	call nz, $0d26                                   ; $4820: $c4 $26 $0d

jr_033_4823:
	ret z                                            ; $4823: $c8

	dec h                                            ; $4824: $25
	dec bc                                           ; $4825: $0b
	call nz, $0d25                                   ; $4826: $c4 $25 $0d
	rst JumpTable                                          ; $4829: $c7
	inc h                                            ; $482a: $24
	inc h                                            ; $482b: $24
	add $24                                          ; $482c: $c6 $24
	ld b, $c5                                        ; $482e: $06 $c5
	inc h                                            ; $4830: $24
	ld b, $c7                                        ; $4831: $06 $c7
	jr nz, jr_033_4859                               ; $4833: $20 $24

	add $20                                          ; $4835: $c6 $20
	ld b, $c5                                        ; $4837: $06 $c5
	jr nz, jr_033_4841                               ; $4839: $20 $06

	ret z                                            ; $483b: $c8

	dec h                                            ; $483c: $25
	jr jr_033_4806                                   ; $483d: $18 $c7

	jr nz, jr_033_4859                               ; $483f: $20 $18

jr_033_4841:
	ret z                                            ; $4841: $c8

	ld e, $16                                        ; $4842: $1e $16
	push bc                                          ; $4844: $c5
	ld e, $02                                        ; $4845: $1e $02
	ret z                                            ; $4847: $c8

	dec e                                            ; $4848: $1d
	inc c                                            ; $4849: $0c
	dec de                                           ; $484a: $1b
	inc c                                            ; $484b: $0c
	ld a, [hl]                                       ; $484c: $7e
	ld bc, $a900                                     ; $484d: $01 $00 $a9
	add hl, de                                       ; $4850: $19
	jr jr_033_481a                                   ; $4851: $18 $c7

	add hl, de                                       ; $4853: $19
	jr jr_033_480b                                   ; $4854: $18 $b5

	ld d, c                                          ; $4856: $51
	nop                                              ; $4857: $00
	nop                                              ; $4858: $00

jr_033_4859:
	nop                                              ; $4859: $00
	ld a, [hl]                                       ; $485a: $7e
	nop                                              ; $485b: $00

jr_033_485c:
	inc l                                            ; $485c: $2c
	dec d                                            ; $485d: $15
	jr nc, jr_033_4866                               ; $485e: $30 $06

	ld sp, $3306                                     ; $4860: $31 $06 $33
	dec b                                            ; $4863: $05
	dec [hl]                                         ; $4864: $35
	dec b                                            ; $4865: $05

jr_033_4866:
	ld [hl], $05                                     ; $4866: $36 $05
	or l                                             ; $4868: $b5
	sub d                                            ; $4869: $92
	nop                                              ; $486a: $00
	rst $38                                          ; $486b: $ff
	ld [bc], a                                       ; $486c: $02
	ld a, [hl]                                       ; $486d: $7e
	add hl, bc                                       ; $486e: $09
	nop                                              ; $486f: $00
	xor e                                            ; $4870: $ab
	cp [hl]                                          ; $4871: $be
	inc c                                            ; $4872: $0c
	jr c, jr_033_48aa                                ; $4873: $38 $35

	ld sp, $382c                                     ; $4875: $31 $2c $38
	dec [hl]                                         ; $4878: $35
	ld sp, $be2c                                     ; $4879: $31 $2c $be
	or c                                             ; $487c: $b1
	ld h, c                                          ; $487d: $61
	rst $38                                          ; $487e: $ff
	inc b                                            ; $487f: $04
	cp [hl]                                          ; $4880: $be
	inc c                                            ; $4881: $0c
	jr c, jr_033_48b9                                ; $4882: $38 $35

	ld sp, $be2c                                     ; $4884: $31 $2c $be
	or c                                             ; $4887: $b1
	and e                                            ; $4888: $a3
	rst $38                                          ; $4889: $ff
	ld [bc], a                                       ; $488a: $02
	cp [hl]                                          ; $488b: $be
	inc c                                            ; $488c: $0c
	add hl, hl                                       ; $488d: $29
	inc l                                            ; $488e: $2c
	ld sp, $be35                                     ; $488f: $31 $35 $be
	or c                                             ; $4892: $b1
	sub d                                            ; $4893: $92
	rst $38                                          ; $4894: $ff
	ld [bc], a                                       ; $4895: $02
	cp [hl]                                          ; $4896: $be
	inc c                                            ; $4897: $0c
	jr c, jr_033_48cf                                ; $4898: $38 $35

	cpl                                              ; $489a: $2f
	inc l                                            ; $489b: $2c
	jr c, jr_033_48d3                                ; $489c: $38 $35

	cpl                                              ; $489e: $2f
	inc l                                            ; $489f: $2c
	cp [hl]                                          ; $48a0: $be
	or c                                             ; $48a1: $b1
	ld h, c                                          ; $48a2: $61
	rst $38                                          ; $48a3: $ff
	inc b                                            ; $48a4: $04
	cp [hl]                                          ; $48a5: $be
	inc c                                            ; $48a6: $0c
	jr c, jr_033_48de                                ; $48a7: $38 $35

	cpl                                              ; $48a9: $2f

jr_033_48aa:
	inc l                                            ; $48aa: $2c
	cp [hl]                                          ; $48ab: $be
	or c                                             ; $48ac: $b1
	and e                                            ; $48ad: $a3
	rst $38                                          ; $48ae: $ff
	ld [bc], a                                       ; $48af: $02
	cp [hl]                                          ; $48b0: $be
	inc c                                            ; $48b1: $0c
	add hl, hl                                       ; $48b2: $29
	inc l                                            ; $48b3: $2c
	cpl                                              ; $48b4: $2f
	dec [hl]                                         ; $48b5: $35
	cp [hl]                                          ; $48b6: $be
	or c                                             ; $48b7: $b1
	sub d                                            ; $48b8: $92

jr_033_48b9:
	rst $38                                          ; $48b9: $ff
	ld [bc], a                                       ; $48ba: $02
	cp [hl]                                          ; $48bb: $be
	inc c                                            ; $48bc: $0c
	jr c, jr_033_48f4                                ; $48bd: $38 $35

	ld [hl-], a                                      ; $48bf: $32
	ld l, $38                                        ; $48c0: $2e $38
	dec [hl]                                         ; $48c2: $35
	ld [hl-], a                                      ; $48c3: $32
	ld l, $be                                        ; $48c4: $2e $be
	or c                                             ; $48c6: $b1
	ld h, c                                          ; $48c7: $61
	rst $38                                          ; $48c8: $ff
	inc b                                            ; $48c9: $04
	cp [hl]                                          ; $48ca: $be
	inc c                                            ; $48cb: $0c
	jr c, jr_033_4903                                ; $48cc: $38 $35

	ld [hl-], a                                      ; $48ce: $32

jr_033_48cf:
	ld l, $be                                        ; $48cf: $2e $be
	or c                                             ; $48d1: $b1
	and e                                            ; $48d2: $a3

jr_033_48d3:
	rst $38                                          ; $48d3: $ff
	ld [bc], a                                       ; $48d4: $02
	cp [hl]                                          ; $48d5: $be
	inc c                                            ; $48d6: $0c
	add hl, hl                                       ; $48d7: $29
	ld l, $32                                        ; $48d8: $2e $32
	dec [hl]                                         ; $48da: $35
	cp [hl]                                          ; $48db: $be
	or c                                             ; $48dc: $b1
	sub d                                            ; $48dd: $92

jr_033_48de:
	rst $38                                          ; $48de: $ff
	ld [bc], a                                       ; $48df: $02
	cp [hl]                                          ; $48e0: $be
	inc c                                            ; $48e1: $0c
	ld a, [hl-]                                      ; $48e2: $3a
	ld [hl], $33                                     ; $48e3: $36 $33
	ld l, $3a                                        ; $48e5: $2e $3a
	ld [hl], $32                                     ; $48e7: $36 $32
	ld l, $be                                        ; $48e9: $2e $be
	or c                                             ; $48eb: $b1
	ld h, c                                          ; $48ec: $61
	rst $38                                          ; $48ed: $ff
	inc b                                            ; $48ee: $04
	cp [hl]                                          ; $48ef: $be
	inc c                                            ; $48f0: $0c
	ld a, [hl-]                                      ; $48f1: $3a
	ld [hl], $2e                                     ; $48f2: $36 $2e

jr_033_48f4:
	ld a, [hl+]                                      ; $48f4: $2a
	cp [hl]                                          ; $48f5: $be
	or c                                             ; $48f6: $b1
	and e                                            ; $48f7: $a3
	rst $38                                          ; $48f8: $ff
	ld [bc], a                                       ; $48f9: $02
	cp [hl]                                          ; $48fa: $be
	inc c                                            ; $48fb: $0c
	daa                                              ; $48fc: $27
	ld a, [hl+]                                      ; $48fd: $2a
	ld l, $33                                        ; $48fe: $2e $33
	cp [hl]                                          ; $4900: $be
	or l                                             ; $4901: $b5
	sub d                                            ; $4902: $92

jr_033_4903:
	nop                                              ; $4903: $00
	rst $38                                          ; $4904: $ff
	ld [bc], a                                       ; $4905: $02
	ld a, [hl]                                       ; $4906: $7e
	add hl, bc                                       ; $4907: $09
	nop                                              ; $4908: $00
	xor e                                            ; $4909: $ab
	cp [hl]                                          ; $490a: $be
	inc c                                            ; $490b: $0c
	ld [hl], $33                                     ; $490c: $36 $33
	cpl                                              ; $490e: $2f
	ld a, [hl+]                                      ; $490f: $2a
	ld [hl], $33                                     ; $4910: $36 $33
	cpl                                              ; $4912: $2f
	ld a, [hl+]                                      ; $4913: $2a
	cp [hl]                                          ; $4914: $be
	or c                                             ; $4915: $b1
	ld h, c                                          ; $4916: $61
	rst $38                                          ; $4917: $ff
	inc b                                            ; $4918: $04
	cp [hl]                                          ; $4919: $be
	inc c                                            ; $491a: $0c
	ld [hl], $33                                     ; $491b: $36 $33
	jr nc, @+$2e                                     ; $491d: $30 $2c

	cp [hl]                                          ; $491f: $be
	or c                                             ; $4920: $b1
	and e                                            ; $4921: $a3
	rst $38                                          ; $4922: $ff
	ld [bc], a                                       ; $4923: $02
	cp [hl]                                          ; $4924: $be
	inc c                                            ; $4925: $0c
	daa                                              ; $4926: $27
	inc l                                            ; $4927: $2c
	jr nc, jr_033_495d                               ; $4928: $30 $33

	cp [hl]                                          ; $492a: $be
	or c                                             ; $492b: $b1
	sub d                                            ; $492c: $92
	rst $38                                          ; $492d: $ff
	ld [bc], a                                       ; $492e: $02
	cp [hl]                                          ; $492f: $be
	inc c                                            ; $4930: $0c
	dec [hl]                                         ; $4931: $35
	inc sp                                           ; $4932: $33
	ld sp, $352c                                     ; $4933: $31 $2c $35
	inc sp                                           ; $4936: $33
	ld sp, $be2c                                     ; $4937: $31 $2c $be
	or c                                             ; $493a: $b1
	ld d, c                                          ; $493b: $51
	rst $38                                          ; $493c: $ff
	inc b                                            ; $493d: $04
	inc sp                                           ; $493e: $33
	ld b, $35                                        ; $493f: $06 $35
	ld b, $33                                        ; $4941: $06 $33
	inc b                                            ; $4943: $04
	dec [hl]                                         ; $4944: $35
	inc b                                            ; $4945: $04
	inc sp                                           ; $4946: $33
	inc b                                            ; $4947: $04
	push bc                                          ; $4948: $c5
	ld sp, $2c0c                                     ; $4949: $31 $0c $2c
	inc c                                            ; $494c: $0c
	or c                                             ; $494d: $b1
	sub e                                            ; $494e: $93
	rst $38                                          ; $494f: $ff
	ld [bc], a                                       ; $4950: $02
	cp [hl]                                          ; $4951: $be
	inc c                                            ; $4952: $0c
	add hl, hl                                       ; $4953: $29
	inc l                                            ; $4954: $2c
	ld sp, $be35                                     ; $4955: $31 $35 $be
	or c                                             ; $4958: $b1
	sub d                                            ; $4959: $92
	rst $38                                          ; $495a: $ff
	ld [bc], a                                       ; $495b: $02
	cp [hl]                                          ; $495c: $be

jr_033_495d:
	inc c                                            ; $495d: $0c
	ld [hl], $33                                     ; $495e: $36 $33
	ld sp, $2a2e                                     ; $4960: $31 $2e $2a
	cp [hl]                                          ; $4963: $be
	jp z, $0cbe                                      ; $4964: $ca $be $0c

	daa                                              ; $4967: $27
	dec h                                            ; $4968: $25
	ld e, $20                                        ; $4969: $1e $20
	cp [hl]                                          ; $496b: $be
	or c                                             ; $496c: $b1
	ld b, d                                          ; $496d: $42
	nop                                              ; $496e: $00
	nop                                              ; $496f: $00
	jr nz, jr_033_497c                               ; $4970: $20 $0a

	pop de                                           ; $4972: $d1
	nop                                              ; $4973: $00
	ld [bc], a                                       ; $4974: $02
	sub c                                            ; $4975: $91
	rst JumpTable                                          ; $4976: $c7
	jr nz, jr_033_4982                               ; $4977: $20 $09

	call nz, $0f20                                   ; $4979: $c4 $20 $0f

jr_033_497c:
	rst JumpTable                                          ; $497c: $c7
	ld e, $0a                                        ; $497d: $1e $0a
	call nz, $021e                                   ; $497f: $c4 $1e $02

jr_033_4982:
	rst JumpTable                                          ; $4982: $c7
	dec e                                            ; $4983: $1d
	ld a, [bc]                                       ; $4984: $0a
	call nz, $021d                                   ; $4985: $c4 $1d $02

jr_033_4988:
	rst JumpTable                                          ; $4988: $c7
	dec de                                           ; $4989: $1b

jr_033_498a:
	ld a, [bc]                                       ; $498a: $0a
	call nz, $021b                                   ; $498b: $c4 $1b $02
	rst JumpTable                                          ; $498e: $c7
	ld e, $0a                                        ; $498f: $1e $0a
	call nz, $021e                                   ; $4991: $c4 $1e $02
	rst JumpTable                                          ; $4994: $c7
	dec e                                            ; $4995: $1d
	rla                                              ; $4996: $17
	jp $011d                                         ; $4997: $c3 $1d $01


	sub d                                            ; $499a: $92
	push bc                                          ; $499b: $c5
	inc l                                            ; $499c: $2c
	ld b, $c4                                        ; $499d: $06 $c4
	inc l                                            ; $499f: $2c
	ld b, $c5                                        ; $49a0: $06 $c5
	ld a, [hl+]                                      ; $49a2: $2a
	ld b, $c4                                        ; $49a3: $06 $c4
	ld a, [hl+]                                      ; $49a5: $2a
	ld b, $c5                                        ; $49a6: $06 $c5
	add hl, hl                                       ; $49a8: $29
	ld b, $c4                                        ; $49a9: $06 $c4
	add hl, hl                                       ; $49ab: $29
	ld b, $c7                                        ; $49ac: $06 $c7
	jr nz, jr_033_49b6                               ; $49ae: $20 $06

	call nz, $0620                                   ; $49b0: $c4 $20 $06
	rst JumpTable                                          ; $49b3: $c7
	ld e, $06                                        ; $49b4: $1e $06

jr_033_49b6:
	call nz, $061e                                   ; $49b6: $c4 $1e $06

jr_033_49b9:
	rst JumpTable                                          ; $49b9: $c7
	jr nz, @+$08                                     ; $49ba: $20 $06

	call nz, $0620                                   ; $49bc: $c4 $20 $06
	rst JumpTable                                          ; $49bf: $c7
	dec e                                            ; $49c0: $1d
	jr nc, jr_033_4988                               ; $49c1: $30 $c5

	dec e                                            ; $49c3: $1d
	jr jr_033_498a                                   ; $49c4: $18 $c4

	dec e                                            ; $49c6: $1d
	ld b, $c3                                        ; $49c7: $06 $c3
	dec e                                            ; $49c9: $1d
	ld b, $00                                        ; $49ca: $06 $00
	inc c                                            ; $49cc: $0c
	cp $ff                                           ; $49cd: $fe $ff
	ret nc                                           ; $49cf: $d0

	sbc b                                            ; $49d0: $98
	cp $b5                                           ; $49d1: $fe $b5
	pop de                                           ; $49d3: $d1
	inc bc                                           ; $49d4: $03
	rst $38                                          ; $49d5: $ff
	rlca                                             ; $49d6: $07
	ld a, [hl]                                       ; $49d7: $7e
	nop                                              ; $49d8: $00
	jr nz, jr_033_4a0b                               ; $49d9: $20 $30

jr_033_49db:
	ld a, [hl]                                       ; $49db: $7e
	ld bc, $a918                                     ; $49dc: $01 $18 $a9
	inc h                                            ; $49df: $24
	jr nc, jr_033_4a60                               ; $49e0: $30 $7e

	nop                                              ; $49e2: $00
	or c                                             ; $49e3: $b1
	pop bc                                           ; $49e4: $c1
	rst $38                                          ; $49e5: $ff
	inc b                                            ; $49e6: $04
	dec h                                            ; $49e7: $25
	jr @-$33                                         ; $49e8: $18 $cb

	daa                                              ; $49ea: $27
	jr @-$4d                                         ; $49eb: $18 $b1

	sub c                                            ; $49ed: $91
	rst $38                                          ; $49ee: $ff
	ld b, $7d                                        ; $49ef: $06 $7d
	ld a, [bc]                                       ; $49f1: $0a
	jr z, jr_033_4a0c                                ; $49f2: $28 $18

	or c                                             ; $49f4: $b1
	or c                                             ; $49f5: $b1
	rst $38                                          ; $49f6: $ff
	dec b                                            ; $49f7: $05
	ld a, l                                          ; $49f8: $7d
	nop                                              ; $49f9: $00
	dec h                                            ; $49fa: $25
	inc c                                            ; $49fb: $0c
	inc h                                            ; $49fc: $24
	inc c                                            ; $49fd: $0c
	or c                                             ; $49fe: $b1
	pop bc                                           ; $49ff: $c1
	rst $38                                          ; $4a00: $ff
	rlca                                             ; $4a01: $07
	ld a, [hl]                                       ; $4a02: $7e
	ld bc, $2228                                     ; $4a03: $01 $28 $22
	jr nc, jr_033_49b9                               ; $4a06: $30 $b1

	and c                                            ; $4a08: $a1
	rst $38                                          ; $4a09: $ff
	dec b                                            ; $4a0a: $05

jr_033_4a0b:
	ld a, [hl+]                                      ; $4a0b: $2a

jr_033_4a0c:
	jr jr_033_4a37                                   ; $4a0c: $18 $29

	jr jr_033_49db                                   ; $4a0e: $18 $cb

	daa                                              ; $4a10: $27
	jr @+$27                                         ; $4a11: $18 $25

	jr jr_033_4a3c                                   ; $4a13: $18 $27

	inc d                                            ; $4a15: $14
	or c                                             ; $4a16: $b1
	ld b, c                                          ; $4a17: $41
	nop                                              ; $4a18: $00
	nop                                              ; $4a19: $00
	daa                                              ; $4a1a: $27
	inc b                                            ; $4a1b: $04
	or c                                             ; $4a1c: $b1
	or c                                             ; $4a1d: $b1
	rst $38                                          ; $4a1e: $ff
	inc bc                                           ; $4a1f: $03
	add hl, hl                                       ; $4a20: $29
	inc c                                            ; $4a21: $0c
	jp z, $0c2a                                      ; $4a22: $ca $2a $0c

	or c                                             ; $4a25: $b1
	and c                                            ; $4a26: $a1
	rst $38                                          ; $4a27: $ff
	rlca                                             ; $4a28: $07
	ld a, [hl]                                       ; $4a29: $7e
	ld bc, $a918                                     ; $4a2a: $01 $18 $a9
	inc l                                            ; $4a2d: $2c
	jr @-$4d                                         ; $4a2e: $18 $b1

	ld h, c                                          ; $4a30: $61
	nop                                              ; $4a31: $00
	nop                                              ; $4a32: $00
	inc l                                            ; $4a33: $2c
	inc c                                            ; $4a34: $0c
	push bc                                          ; $4a35: $c5
	inc l                                            ; $4a36: $2c

jr_033_4a37:
	ld [$2cc3], sp                                   ; $4a37: $08 $c3 $2c
	inc b                                            ; $4a3a: $04
	or c                                             ; $4a3b: $b1

jr_033_4a3c:
	pop bc                                           ; $4a3c: $c1
	rst $38                                          ; $4a3d: $ff
	inc b                                            ; $4a3e: $04
	ld a, [hl]                                       ; $4a3f: $7e
	dec b                                            ; $4a40: $05
	nop                                              ; $4a41: $00
	xor c                                            ; $4a42: $a9
	inc h                                            ; $4a43: $24
	jr jr_033_4ac4                                   ; $4a44: $18 $7e

	nop                                              ; $4a46: $00
	daa                                              ; $4a47: $27
	jr jr_033_4ac8                                   ; $4a48: $18 $7e

	ld bc, $a918                                     ; $4a4a: $01 $18 $a9
	or c                                             ; $4a4d: $b1
	pop de                                           ; $4a4e: $d1
	rst $38                                          ; $4a4f: $ff
	rlca                                             ; $4a50: $07
	dec h                                            ; $4a51: $25
	inc a                                            ; $4a52: $3c
	or c                                             ; $4a53: $b1
	ld b, c                                          ; $4a54: $41
	nop                                              ; $4a55: $00
	nop                                              ; $4a56: $00
	dec h                                            ; $4a57: $25
	inc c                                            ; $4a58: $0c
	or c                                             ; $4a59: $b1
	or c                                             ; $4a5a: $b1
	rst $38                                          ; $4a5b: $ff
	inc bc                                           ; $4a5c: $03
	ld a, [hl]                                       ; $4a5d: $7e
	nop                                              ; $4a5e: $00
	ld a, [hl+]                                      ; $4a5f: $2a

jr_033_4a60:
	inc c                                            ; $4a60: $0c
	inc l                                            ; $4a61: $2c
	inc c                                            ; $4a62: $0c
	or c                                             ; $4a63: $b1
	and c                                            ; $4a64: $a1
	rst $38                                          ; $4a65: $ff
	rlca                                             ; $4a66: $07
	ld a, [hl]                                       ; $4a67: $7e
	ld bc, $a918                                     ; $4a68: $01 $18 $a9
	ld l, $30                                        ; $4a6b: $2e $30
	ld a, [hl]                                       ; $4a6d: $7e
	nop                                              ; $4a6e: $00
	or c                                             ; $4a6f: $b1
	or c                                             ; $4a70: $b1
	rst $38                                          ; $4a71: $ff
	inc b                                            ; $4a72: $04
	ld a, [hl+]                                      ; $4a73: $2a
	jr jr_033_4a9f                                   ; $4a74: $18 $29

	jr jr_033_4a9f                                   ; $4a76: $18 $27

	inc c                                            ; $4a78: $0c
	or c                                             ; $4a79: $b1
	ld b, c                                          ; $4a7a: $41
	nop                                              ; $4a7b: $00
	nop                                              ; $4a7c: $00
	daa                                              ; $4a7d: $27
	inc c                                            ; $4a7e: $0c
	or l                                             ; $4a7f: $b5
	sub c                                            ; $4a80: $91
	ld [bc], a                                       ; $4a81: $02
	rst $38                                          ; $4a82: $ff
	ld b, $7e                                        ; $4a83: $06 $7e
	dec b                                            ; $4a85: $05
	nop                                              ; $4a86: $00
	xor d                                            ; $4a87: $aa
	add hl, hl                                       ; $4a88: $29
	ld d, $b1                                        ; $4a89: $16 $b1
	ld b, c                                          ; $4a8b: $41
	nop                                              ; $4a8c: $00
	nop                                              ; $4a8d: $00
	add hl, hl                                       ; $4a8e: $29
	ld [bc], a                                       ; $4a8f: $02
	ld a, [hl]                                       ; $4a90: $7e
	nop                                              ; $4a91: $00
	or c                                             ; $4a92: $b1
	sub c                                            ; $4a93: $91
	rst $38                                          ; $4a94: $ff
	ld b, $29                                        ; $4a95: $06 $29
	ld d, $b1                                        ; $4a97: $16 $b1
	ld b, c                                          ; $4a99: $41
	nop                                              ; $4a9a: $00
	nop                                              ; $4a9b: $00
	add hl, hl                                       ; $4a9c: $29
	ld [bc], a                                       ; $4a9d: $02
	or c                                             ; $4a9e: $b1

jr_033_4a9f:
	sub c                                            ; $4a9f: $91
	rst $38                                          ; $4aa0: $ff
	ld b, $2a                                        ; $4aa1: $06 $2a
	ld d, $b1                                        ; $4aa3: $16 $b1
	ld b, c                                          ; $4aa5: $41
	nop                                              ; $4aa6: $00
	nop                                              ; $4aa7: $00
	ld a, [hl+]                                      ; $4aa8: $2a
	ld [bc], a                                       ; $4aa9: $02
	or l                                             ; $4aaa: $b5
	add c                                            ; $4aab: $81
	ld [bc], a                                       ; $4aac: $02
	rst $38                                          ; $4aad: $ff
	rlca                                             ; $4aae: $07
	ld a, [hl]                                       ; $4aaf: $7e
	ld bc, $a930                                     ; $4ab0: $01 $30 $a9
	inc l                                            ; $4ab3: $2c
	inc c                                            ; $4ab4: $0c
	or c                                             ; $4ab5: $b1
	ld [hl], c                                       ; $4ab6: $71
	nop                                              ; $4ab7: $00
	nop                                              ; $4ab8: $00
	inc l                                            ; $4ab9: $2c
	ld d, h                                          ; $4aba: $54
	call nz, $007e                                   ; $4abb: $c4 $7e $00
	inc l                                            ; $4abe: $2c
	jr @-$35                                         ; $4abf: $18 $c9

	add hl, hl                                       ; $4ac1: $29
	ld d, $c3                                        ; $4ac2: $16 $c3

jr_033_4ac4:
	add hl, hl                                       ; $4ac4: $29
	ld [bc], a                                       ; $4ac5: $02
	ret                                              ; $4ac6: $c9


	add hl, hl                                       ; $4ac7: $29

jr_033_4ac8:
	ld d, $c3                                        ; $4ac8: $16 $c3
	add hl, hl                                       ; $4aca: $29
	ld [bc], a                                       ; $4acb: $02
	ret                                              ; $4acc: $c9


	ld a, [hl+]                                      ; $4acd: $2a
	ld d, $c3                                        ; $4ace: $16 $c3
	ld a, [hl+]                                      ; $4ad0: $2a
	ld [bc], a                                       ; $4ad1: $02
	ld a, [hl]                                       ; $4ad2: $7e
	ld bc, $a930                                     ; $4ad3: $01 $30 $a9
	ret z                                            ; $4ad6: $c8

	inc l                                            ; $4ad7: $2c
	ld h, b                                          ; $4ad8: $60
	ld a, [hl]                                       ; $4ad9: $7e
	ld bc, $a900                                     ; $4ada: $01 $00 $a9
	call nz, $182c                                   ; $4add: $c4 $2c $18
	ld a, [hl]                                       ; $4ae0: $7e
	nop                                              ; $4ae1: $00
	ret                                              ; $4ae2: $c9


	add hl, hl                                       ; $4ae3: $29
	ld d, $c3                                        ; $4ae4: $16 $c3
	add hl, hl                                       ; $4ae6: $29
	ld [bc], a                                       ; $4ae7: $02
	ret                                              ; $4ae8: $c9


	add hl, hl                                       ; $4ae9: $29
	ld d, $c3                                        ; $4aea: $16 $c3
	add hl, hl                                       ; $4aec: $29
	ld [bc], a                                       ; $4aed: $02
	ret                                              ; $4aee: $c9


	ld a, [hl+]                                      ; $4aef: $2a
	ld d, $c3                                        ; $4af0: $16 $c3
	ld a, [hl+]                                      ; $4af2: $2a
	ld [bc], a                                       ; $4af3: $02
	ld a, [hl]                                       ; $4af4: $7e
	ld bc, $a930                                     ; $4af5: $01 $30 $a9
	ret z                                            ; $4af8: $c8

	inc l                                            ; $4af9: $2c
	ld h, b                                          ; $4afa: $60
	ld a, [hl]                                       ; $4afb: $7e
	ld bc, $a900                                     ; $4afc: $01 $00 $a9
	call nz, $162c                                   ; $4aff: $c4 $2c $16
	ld a, [hl]                                       ; $4b02: $7e
	nop                                              ; $4b03: $00
	rst JumpTable                                          ; $4b04: $c7
	dec l                                            ; $4b05: $2d
	inc bc                                           ; $4b06: $03
	ret                                              ; $4b07: $c9


	ld l, $08                                        ; $4b08: $2e $08
	jp $0f2e                                         ; $4b0a: $c3 $2e $0f


	ret                                              ; $4b0d: $c9


	inc l                                            ; $4b0e: $2c
	ld a, [bc]                                       ; $4b0f: $0a
	jp $022c                                         ; $4b10: $c3 $2c $02


	ret                                              ; $4b13: $c9


	ld a, [hl+]                                      ; $4b14: $2a
	ld a, [bc]                                       ; $4b15: $0a
	jp $022a                                         ; $4b16: $c3 $2a $02


	ret                                              ; $4b19: $c9


	add hl, hl                                       ; $4b1a: $29
	ld a, [bc]                                       ; $4b1b: $0a
	jp $0229                                         ; $4b1c: $c3 $29 $02


	ret z                                            ; $4b1f: $c8

	inc l                                            ; $4b20: $2c
	ld a, [bc]                                       ; $4b21: $0a
	jp $022c                                         ; $4b22: $c3 $2c $02


	ld a, [hl]                                       ; $4b25: $7e
	ld bc, $a930                                     ; $4b26: $01 $30 $a9
	rst JumpTable                                          ; $4b29: $c7
	ld a, [hl+]                                      ; $4b2a: $2a
	ld h, b                                          ; $4b2b: $60
	ld a, [hl]                                       ; $4b2c: $7e
	ld bc, $a900                                     ; $4b2d: $01 $00 $a9
	call nz, $182a                                   ; $4b30: $c4 $2a $18
	ld a, [hl]                                       ; $4b33: $7e
	nop                                              ; $4b34: $00
	ret                                              ; $4b35: $c9


	daa                                              ; $4b36: $27
	ld d, $c3                                        ; $4b37: $16 $c3
	daa                                              ; $4b39: $27
	ld [bc], a                                       ; $4b3a: $02
	ret                                              ; $4b3b: $c9


	daa                                              ; $4b3c: $27
	ld d, $c3                                        ; $4b3d: $16 $c3
	daa                                              ; $4b3f: $27
	ld [bc], a                                       ; $4b40: $02
	ret                                              ; $4b41: $c9


	add hl, hl                                       ; $4b42: $29
	ld d, $c3                                        ; $4b43: $16 $c3
	add hl, hl                                       ; $4b45: $29
	ld [bc], a                                       ; $4b46: $02
	or l                                             ; $4b47: $b5
	add c                                            ; $4b48: $81
	ld [bc], a                                       ; $4b49: $02
	rst $38                                          ; $4b4a: $ff
	ld b, $7e                                        ; $4b4b: $06 $7e
	ld bc, $a930                                     ; $4b4d: $01 $30 $a9
	ld a, [hl+]                                      ; $4b50: $2a
	inc c                                            ; $4b51: $0c
	or c                                             ; $4b52: $b1
	ld h, c                                          ; $4b53: $61
	nop                                              ; $4b54: $00
	nop                                              ; $4b55: $00
	ld a, [hl+]                                      ; $4b56: $2a
	ld d, h                                          ; $4b57: $54
	ld a, [hl]                                       ; $4b58: $7e
	ld bc, $a900                                     ; $4b59: $01 $00 $a9
	call nz, $182a                                   ; $4b5c: $c4 $2a $18
	ld a, [hl]                                       ; $4b5f: $7e
	nop                                              ; $4b60: $00
	ret z                                            ; $4b61: $c8

	daa                                              ; $4b62: $27
	ld d, $c4                                        ; $4b63: $16 $c4
	daa                                              ; $4b65: $27
	ld [bc], a                                       ; $4b66: $02
	ret                                              ; $4b67: $c9


	daa                                              ; $4b68: $27
	ld d, $c4                                        ; $4b69: $16 $c4
	daa                                              ; $4b6b: $27
	ld [bc], a                                       ; $4b6c: $02
	ret                                              ; $4b6d: $c9


	add hl, hl                                       ; $4b6e: $29
	ld d, $c4                                        ; $4b6f: $16 $c4
	add hl, hl                                       ; $4b71: $29
	ld [bc], a                                       ; $4b72: $02
	ld a, [hl]                                       ; $4b73: $7e
	ld bc, $a930                                     ; $4b74: $01 $30 $a9
	ret z                                            ; $4b77: $c8

	ld a, [hl+]                                      ; $4b78: $2a
	ld h, b                                          ; $4b79: $60
	ld a, [hl]                                       ; $4b7a: $7e
	ld bc, $a900                                     ; $4b7b: $01 $00 $a9
	call nz, $182a                                   ; $4b7e: $c4 $2a $18
	ld a, [hl]                                       ; $4b81: $7e
	nop                                              ; $4b82: $00
	ret                                              ; $4b83: $c9


	daa                                              ; $4b84: $27
	ld d, $c4                                        ; $4b85: $16 $c4
	daa                                              ; $4b87: $27
	ld [bc], a                                       ; $4b88: $02
	ret                                              ; $4b89: $c9


	daa                                              ; $4b8a: $27
	ld d, $c4                                        ; $4b8b: $16 $c4
	daa                                              ; $4b8d: $27
	ld [bc], a                                       ; $4b8e: $02
	ret                                              ; $4b8f: $c9


jr_033_4b90:
	add hl, hl                                       ; $4b90: $29
	ld d, $c4                                        ; $4b91: $16 $c4
	add hl, hl                                       ; $4b93: $29
	ld [bc], a                                       ; $4b94: $02
	ld a, [hl]                                       ; $4b95: $7e
	ld bc, $a930                                     ; $4b96: $01 $30 $a9
	ret z                                            ; $4b99: $c8

	ld a, [hl+]                                      ; $4b9a: $2a
	ld h, b                                          ; $4b9b: $60
	ld a, [hl]                                       ; $4b9c: $7e
	ld bc, $a900                                     ; $4b9d: $01 $00 $a9
	call nz, $182a                                   ; $4ba0: $c4 $2a $18
	ld a, [hl]                                       ; $4ba3: $7e
	nop                                              ; $4ba4: $00
	ret z                                            ; $4ba5: $c8

	inc l                                            ; $4ba6: $2c
	add hl, bc                                       ; $4ba7: $09
	jp $0f2c                                         ; $4ba8: $c3 $2c $0f


	ret z                                            ; $4bab: $c8

	ld a, [hl+]                                      ; $4bac: $2a
	ld a, [bc]                                       ; $4bad: $0a
	jp $022a                                         ; $4bae: $c3 $2a $02


	ret                                              ; $4bb1: $c9


	add hl, hl                                       ; $4bb2: $29
	ld a, [bc]                                       ; $4bb3: $0a
	jp $0229                                         ; $4bb4: $c3 $29 $02


	ret                                              ; $4bb7: $c9


	daa                                              ; $4bb8: $27
	ld a, [bc]                                       ; $4bb9: $0a
	jp $0227                                         ; $4bba: $c3 $27 $02


	ret                                              ; $4bbd: $c9


	ld a, [hl+]                                      ; $4bbe: $2a
	ld a, [bc]                                       ; $4bbf: $0a
	jp $022a                                         ; $4bc0: $c3 $2a $02


	rst JumpTable                                          ; $4bc3: $c7
	ld a, [hl]                                       ; $4bc4: $7e
	ld bc, $a930                                     ; $4bc5: $01 $30 $a9
	add hl, hl                                       ; $4bc8: $29
	jr nc, jr_033_4b90                               ; $4bc9: $30 $c5

	add hl, hl                                       ; $4bcb: $29
	inc c                                            ; $4bcc: $0c
	jp $0c29                                         ; $4bcd: $c3 $29 $0c


	add $14                                          ; $4bd0: $c6 $14
	inc c                                            ; $4bd2: $0c
	ld [de], a                                       ; $4bd3: $12
	inc c                                            ; $4bd4: $0c
	ld a, [hl]                                       ; $4bd5: $7e
	ld bc, $a900                                     ; $4bd6: $01 $00 $a9
	ld de, $c40c                                     ; $4bd9: $11 $0c $c4
	ld de, $b50c                                     ; $4bdc: $11 $0c $b5
	sub c                                            ; $4bdf: $91
	ld bc, $0000                                     ; $4be0: $01 $00 $00
	ld a, [hl]                                       ; $4be3: $7e
	nop                                              ; $4be4: $00
	add hl, hl                                       ; $4be5: $29
	ld d, $c4                                        ; $4be6: $16 $c4
	add hl, hl                                       ; $4be8: $29
	ld [bc], a                                       ; $4be9: $02
	ret                                              ; $4bea: $c9


	add hl, hl                                       ; $4beb: $29
	ld d, $c4                                        ; $4bec: $16 $c4
	add hl, hl                                       ; $4bee: $29
	ld [bc], a                                       ; $4bef: $02
	ret                                              ; $4bf0: $c9


	ld a, [hl+]                                      ; $4bf1: $2a
	ld d, $c4                                        ; $4bf2: $16 $c4
	ld a, [hl+]                                      ; $4bf4: $2a
	ld [bc], a                                       ; $4bf5: $02
	or l                                             ; $4bf6: $b5
	add c                                            ; $4bf7: $81
	ld bc, $0000                                     ; $4bf8: $01 $00 $00
	ld a, [hl]                                       ; $4bfb: $7e
	ld bc, $a930                                     ; $4bfc: $01 $30 $a9
	inc l                                            ; $4bff: $2c
	ld h, b                                          ; $4c00: $60
	ld a, [hl]                                       ; $4c01: $7e
	ld bc, $a900                                     ; $4c02: $01 $00 $a9
	call nz, $182c                                   ; $4c05: $c4 $2c $18
	ld a, [hl]                                       ; $4c08: $7e
	nop                                              ; $4c09: $00
	rst JumpTable                                          ; $4c0a: $c7
	add hl, hl                                       ; $4c0b: $29
	inc c                                            ; $4c0c: $0c
	push bc                                          ; $4c0d: $c5
	add hl, hl                                       ; $4c0e: $29
	inc c                                            ; $4c0f: $0c
	ret z                                            ; $4c10: $c8

	add hl, hl                                       ; $4c11: $29
	inc c                                            ; $4c12: $0c
	push bc                                          ; $4c13: $c5
	add hl, hl                                       ; $4c14: $29
	inc c                                            ; $4c15: $0c
	ret z                                            ; $4c16: $c8

	ld a, [hl+]                                      ; $4c17: $2a
	inc c                                            ; $4c18: $0c
	push bc                                          ; $4c19: $c5
	ld a, [hl+]                                      ; $4c1a: $2a
	inc c                                            ; $4c1b: $0c
	ld a, [hl]                                       ; $4c1c: $7e
	ld bc, $a918                                     ; $4c1d: $01 $18 $a9
	ret z                                            ; $4c20: $c8

	inc l                                            ; $4c21: $2c
	jr nc, jr_033_4ca2                               ; $4c22: $30 $7e

	ld bc, $a900                                     ; $4c24: $01 $00 $a9
	call nz, $0a2c                                   ; $4c27: $c4 $2c $0a
	ld a, [hl]                                       ; $4c2a: $7e
	nop                                              ; $4c2b: $00
	add $2d                                          ; $4c2c: $c6 $2d
	ld [bc], a                                       ; $4c2e: $02
	rst JumpTable                                          ; $4c2f: $c7
	cp [hl]                                          ; $4c30: $be
	inc c                                            ; $4c31: $0c
	ld l, $2c                                        ; $4c32: $2e $2c
	ld l, $2c                                        ; $4c34: $2e $2c
	cp [hl]                                          ; $4c36: $be
	call nz, $0c2c                                   ; $4c37: $c4 $2c $0c
	or c                                             ; $4c3a: $b1
	add c                                            ; $4c3b: $81
	rst $38                                          ; $4c3c: $ff
	rlca                                             ; $4c3d: $07
	add hl, hl                                       ; $4c3e: $29
	inc c                                            ; $4c3f: $0c
	push bc                                          ; $4c40: $c5
	add hl, hl                                       ; $4c41: $29
	inc c                                            ; $4c42: $0c
	ret z                                            ; $4c43: $c8

	add hl, hl                                       ; $4c44: $29
	inc c                                            ; $4c45: $0c
	push bc                                          ; $4c46: $c5
	add hl, hl                                       ; $4c47: $29
	inc c                                            ; $4c48: $0c
	rst JumpTable                                          ; $4c49: $c7
	ld a, [hl+]                                      ; $4c4a: $2a
	inc c                                            ; $4c4b: $0c
	push bc                                          ; $4c4c: $c5
	ld a, [hl+]                                      ; $4c4d: $2a
	inc c                                            ; $4c4e: $0c
	or c                                             ; $4c4f: $b1
	ld [hl], c                                       ; $4c50: $71
	nop                                              ; $4c51: $00
	nop                                              ; $4c52: $00
	ld a, [hl]                                       ; $4c53: $7e
	ld bc, $a930                                     ; $4c54: $01 $30 $a9
	inc l                                            ; $4c57: $2c
	ld h, b                                          ; $4c58: $60
	ld a, [hl]                                       ; $4c59: $7e
	ld bc, $a900                                     ; $4c5a: $01 $00 $a9
	call nz, $162c                                   ; $4c5d: $c4 $2c $16
	ld a, [hl]                                       ; $4c60: $7e
	nop                                              ; $4c61: $00
	ret                                              ; $4c62: $c9


	dec l                                            ; $4c63: $2d
	ld [bc], a                                       ; $4c64: $02
	ret z                                            ; $4c65: $c8

	ld l, $08                                        ; $4c66: $2e $08
	call nz, $102e                                   ; $4c68: $c4 $2e $10
	ret z                                            ; $4c6b: $c8

	inc l                                            ; $4c6c: $2c
	ld a, [bc]                                       ; $4c6d: $0a
	call nz, $022c                                   ; $4c6e: $c4 $2c $02
	rst JumpTable                                          ; $4c71: $c7
	ld a, [hl+]                                      ; $4c72: $2a
	ld a, [bc]                                       ; $4c73: $0a
	jp $022a                                         ; $4c74: $c3 $2a $02


	ret z                                            ; $4c77: $c8

	add hl, hl                                       ; $4c78: $29
	ld a, [bc]                                       ; $4c79: $0a
	jp $0229                                         ; $4c7a: $c3 $29 $02


	ret z                                            ; $4c7d: $c8

	inc l                                            ; $4c7e: $2c
	ld a, [bc]                                       ; $4c7f: $0a
	jp $022c                                         ; $4c80: $c3 $2c $02


	ld a, [hl]                                       ; $4c83: $7e
	ld bc, $a930                                     ; $4c84: $01 $30 $a9
	rst JumpTable                                          ; $4c87: $c7
	ld a, [hl+]                                      ; $4c88: $2a
	ld h, b                                          ; $4c89: $60
	ld a, [hl]                                       ; $4c8a: $7e
	ld bc, $a900                                     ; $4c8b: $01 $00 $a9
	call nz, $182a                                   ; $4c8e: $c4 $2a $18
	ld a, [hl]                                       ; $4c91: $7e
	nop                                              ; $4c92: $00
	ret z                                            ; $4c93: $c8

	daa                                              ; $4c94: $27
	inc c                                            ; $4c95: $0c
	jp $0c27                                         ; $4c96: $c3 $27 $0c


	ret z                                            ; $4c99: $c8

	daa                                              ; $4c9a: $27
	inc c                                            ; $4c9b: $0c
	jp $0c27                                         ; $4c9c: $c3 $27 $0c


	ret z                                            ; $4c9f: $c8

	add hl, hl                                       ; $4ca0: $29
	inc c                                            ; $4ca1: $0c

jr_033_4ca2:
	jp $0c29                                         ; $4ca2: $c3 $29 $0c


	or l                                             ; $4ca5: $b5
	ld [hl], c                                       ; $4ca6: $71
	ld bc, $0000                                     ; $4ca7: $01 $00 $00
	ld a, [hl]                                       ; $4caa: $7e
	ld bc, $a930                                     ; $4cab: $01 $30 $a9
	ld a, [hl+]                                      ; $4cae: $2a
	ld h, b                                          ; $4caf: $60
	ld a, [hl]                                       ; $4cb0: $7e
	ld bc, $a900                                     ; $4cb1: $01 $00 $a9
	call nz, $182a                                   ; $4cb4: $c4 $2a $18
	ld a, [hl]                                       ; $4cb7: $7e
	nop                                              ; $4cb8: $00
	rst JumpTable                                          ; $4cb9: $c7
	inc l                                            ; $4cba: $2c
	add hl, bc                                       ; $4cbb: $09
	jp $0f2c                                         ; $4cbc: $c3 $2c $0f


	rst JumpTable                                          ; $4cbf: $c7
	ld a, [hl+]                                      ; $4cc0: $2a
	ld a, [bc]                                       ; $4cc1: $0a
	call nz, $022a                                   ; $4cc2: $c4 $2a $02
	ret z                                            ; $4cc5: $c8

	add hl, hl                                       ; $4cc6: $29
	ld b, $c4                                        ; $4cc7: $06 $c4
	add hl, hl                                       ; $4cc9: $29
	ld b, $c8                                        ; $4cca: $06 $c8
	daa                                              ; $4ccc: $27
	ld b, $c4                                        ; $4ccd: $06 $c4
	daa                                              ; $4ccf: $27
	ld b, $c7                                        ; $4cd0: $06 $c7
	ld a, [hl+]                                      ; $4cd2: $2a
	ld b, $c4                                        ; $4cd3: $06 $c4
	ld a, [hl+]                                      ; $4cd5: $2a
	ld b, $7e                                        ; $4cd6: $06 $7e
	ld bc, $a930                                     ; $4cd8: $01 $30 $a9
	rst JumpTable                                          ; $4cdb: $c7
	add hl, hl                                       ; $4cdc: $29
	ld h, b                                          ; $4cdd: $60
	ld a, [hl]                                       ; $4cde: $7e
	ld bc, $a900                                     ; $4cdf: $01 $00 $a9
	call nz, $1829                                   ; $4ce2: $c4 $29 $18
	ld a, [hl]                                       ; $4ce5: $7e
	nop                                              ; $4ce6: $00
	rst JumpTable                                          ; $4ce7: $c7
	dec h                                            ; $4ce8: $25
	ld d, $c3                                        ; $4ce9: $16 $c3
	dec h                                            ; $4ceb: $25
	ld [bc], a                                       ; $4cec: $02
	add $2a                                          ; $4ced: $c6 $2a
	ld d, $c4                                        ; $4cef: $16 $c4
	ld a, [hl+]                                      ; $4cf1: $2a
	ld [bc], a                                       ; $4cf2: $02
	rst JumpTable                                          ; $4cf3: $c7
	add hl, hl                                       ; $4cf4: $29
	ld d, $c4                                        ; $4cf5: $16 $c4
	add hl, hl                                       ; $4cf7: $29
	ld [bc], a                                       ; $4cf8: $02
	ld a, [hl]                                       ; $4cf9: $7e
	ld bc, $a930                                     ; $4cfa: $01 $30 $a9

jr_033_4cfd:
	rst JumpTable                                          ; $4cfd: $c7
	daa                                              ; $4cfe: $27
	ld h, b                                          ; $4cff: $60
	ld a, [hl]                                       ; $4d00: $7e
	ld bc, $a900                                     ; $4d01: $01 $00 $a9
	call nz, $1827                                   ; $4d04: $c4 $27 $18
	ld a, [hl]                                       ; $4d07: $7e
	nop                                              ; $4d08: $00
	rst JumpTable                                          ; $4d09: $c7
	add hl, hl                                       ; $4d0a: $29
	add hl, bc                                       ; $4d0b: $09
	jp $0f29                                         ; $4d0c: $c3 $29 $0f


	ret z                                            ; $4d0f: $c8

	daa                                              ; $4d10: $27
	ld a, [bc]                                       ; $4d11: $0a
	jp $0227                                         ; $4d12: $c3 $27 $02


	ret z                                            ; $4d15: $c8

	dec h                                            ; $4d16: $25
	ld a, [bc]                                       ; $4d17: $0a
	jp $0225                                         ; $4d18: $c3 $25 $02


	ret z                                            ; $4d1b: $c8

	inc h                                            ; $4d1c: $24
	ld a, [bc]                                       ; $4d1d: $0a
	jp $0224                                         ; $4d1e: $c3 $24 $02


	ret z                                            ; $4d21: $c8

	daa                                              ; $4d22: $27
	ld a, [bc]                                       ; $4d23: $0a
	jp $0227                                         ; $4d24: $c3 $27 $02


	ld a, [hl]                                       ; $4d27: $7e
	ld bc, $a930                                     ; $4d28: $01 $30 $a9
	ret z                                            ; $4d2b: $c8

	dec h                                            ; $4d2c: $25
	ld h, b                                          ; $4d2d: $60
	ld a, [hl]                                       ; $4d2e: $7e
	ld bc, $a900                                     ; $4d2f: $01 $00 $a9
	rst JumpTable                                          ; $4d32: $c7
	dec h                                            ; $4d33: $25
	jr @-$38                                         ; $4d34: $18 $c6

	dec h                                            ; $4d36: $25
	jr jr_033_4cfd                                   ; $4d37: $18 $c4

	dec h                                            ; $4d39: $25
	inc c                                            ; $4d3a: $0c
	jp $0c25                                         ; $4d3b: $c3 $25 $0c


	jp nz, $0c25                                     ; $4d3e: $c2 $25 $0c

	nop                                              ; $4d41: $00
	inc c                                            ; $4d42: $0c
	cp $ff                                           ; $4d43: $fe $ff
	ret nc                                           ; $4d45: $d0

	sbc b                                            ; $4d46: $98
	cp $c2                                           ; $4d47: $fe $c2
	pop de                                           ; $4d49: $d1
	add c                                            ; $4d4a: $81
	ld a, [hl]                                       ; $4d4b: $7e
	ld b, $00                                        ; $4d4c: $06 $00
	xor c                                            ; $4d4e: $a9
	add hl, de                                       ; $4d4f: $19
	ld a, [hl+]                                      ; $4d50: $2a
	call nz, $0619                                   ; $4d51: $c4 $19 $06
	jp nz, $2a19                                     ; $4d54: $c2 $19 $2a

	call nz, $0619                                   ; $4d57: $c4 $19 $06
	jp nz, $2a1d                                     ; $4d5a: $c2 $1d $2a

	call nz, $061d                                   ; $4d5d: $c4 $1d $06
	jp nz, $2a1d                                     ; $4d60: $c2 $1d $2a

	call nz, $061d                                   ; $4d63: $c4 $1d $06
	jp nz, $2a1e                                     ; $4d66: $c2 $1e $2a

	call nz, $061e                                   ; $4d69: $c4 $1e $06
	jp nz, $241e                                     ; $4d6c: $c2 $1e $24

	ld a, [hl]                                       ; $4d6f: $7e
	nop                                              ; $4d70: $00
	ld [hl+], a                                      ; $4d71: $22
	inc c                                            ; $4d72: $0c
	jp nz, $017e                                     ; $4d73: $c2 $7e $01

	inc d                                            ; $4d76: $14

jr_033_4d77:
	xor c                                            ; $4d77: $a9
	jr nz, @+$2e                                     ; $4d78: $20 $2c

	ld a, [hl]                                       ; $4d7a: $7e
	nop                                              ; $4d7b: $00
	add $20                                          ; $4d7c: $c6 $20

jr_033_4d7e:
	inc b                                            ; $4d7e: $04
	jp nz, $067e                                     ; $4d7f: $c2 $7e $06

	nop                                              ; $4d82: $00
	and c                                            ; $4d83: $a1
	jr nz, @+$18                                     ; $4d84: $20 $16

	call nz, $0220                                   ; $4d86: $c4 $20 $02
	jp nz, $161e                                     ; $4d89: $c2 $1e $16

	call nz, $021e                                   ; $4d8c: $c4 $1e $02
	jp nz, $141d                                     ; $4d8f: $c2 $1d $14

	call nz, $041d                                   ; $4d92: $c4 $1d $04
	jp nz, $1618                                     ; $4d95: $c2 $18 $16

	call nz, $0218                                   ; $4d98: $c4 $18 $02
	jp nz, $161d                                     ; $4d9b: $c2 $1d $16

	call nz, $021d                                   ; $4d9e: $c4 $1d $02
	jp nz, $161b                                     ; $4da1: $c2 $1b $16

	call nz, $021b                                   ; $4da4: $c4 $1b $02
	jp nz, $2a16                                     ; $4da7: $c2 $16 $2a

	call nz, $0616                                   ; $4daa: $c4 $16 $06
	jp nz, $3016                                     ; $4dad: $c2 $16 $30

	dec de                                           ; $4db0: $1b
	jr z, jr_033_4d77                                ; $4db1: $28 $c4

	dec de                                           ; $4db3: $1b
	ld [$1bc2], sp                                   ; $4db4: $08 $c2 $1b
	jr z, @-$3a                                      ; $4db7: $28 $c4

	dec de                                           ; $4db9: $1b
	ld [$20c2], sp                                   ; $4dba: $08 $c2 $20
	inc c                                            ; $4dbd: $0c
	ld a, [hl]                                       ; $4dbe: $7e
	nop                                              ; $4dbf: $00
	call nz, $0620                                   ; $4dc0: $c4 $20 $06
	add $20                                          ; $4dc3: $c6 $20
	ld b, $00                                        ; $4dc5: $06 $00
	jr jr_033_4d7e                                   ; $4dc7: $18 $b5

	ld b, c                                          ; $4dc9: $41
	ld c, $01                                        ; $4dca: $0e $01
	ld bc, $042c                                     ; $4dcc: $01 $2c $04
	add $2c                                          ; $4dcf: $c6 $2c
	inc b                                            ; $4dd1: $04
	call nz, $042e                                   ; $4dd2: $c4 $2e $04
	add $2e                                          ; $4dd5: $c6 $2e
	inc b                                            ; $4dd7: $04
	call nz, $0430                                   ; $4dd8: $c4 $30 $04
	add $30                                          ; $4ddb: $c6 $30
	inc b                                            ; $4ddd: $04
	call nz, $0433                                   ; $4dde: $c4 $33 $04
	add $33                                          ; $4de1: $c6 $33
	inc b                                            ; $4de3: $04
	call nz, $0435                                   ; $4de4: $c4 $35 $04
	add $35                                          ; $4de7: $c6 $35
	inc b                                            ; $4de9: $04
	call nz, $0436                                   ; $4dea: $c4 $36 $04
	add $36                                          ; $4ded: $c6 $36
	inc b                                            ; $4def: $04
	sub [hl]                                         ; $4df0: $96
	nop                                              ; $4df1: $00
	nop                                              ; $4df2: $00
	jp nz, $80d1                                     ; $4df3: $c2 $d1 $80

	ld a, [hl]                                       ; $4df6: $7e
	inc b                                            ; $4df7: $04
	nop                                              ; $4df8: $00
	and b                                            ; $4df9: $a0
	dec c                                            ; $4dfa: $0d
	ld l, $c4                                        ; $4dfb: $2e $c4
	dec c                                            ; $4dfd: $0d
	ld [bc], a                                       ; $4dfe: $02
	ld a, [hl]                                       ; $4dff: $7e
	nop                                              ; $4e00: $00
	jp nz, $0619                                     ; $4e01: $c2 $19 $06

	add $19                                          ; $4e04: $c6 $19
	ld b, $00                                        ; $4e06: $06 $00
	inc c                                            ; $4e08: $0c
	jp nz, $0a0d                                     ; $4e09: $c2 $0d $0a

	add $0d                                          ; $4e0c: $c6 $0d
	ld c, $c2                                        ; $4e0e: $0e $c2
	dec c                                            ; $4e10: $0d
	ld a, [hl+]                                      ; $4e11: $2a
	call nz, $120d                                   ; $4e12: $c4 $0d $12
	add $87                                          ; $4e15: $c6 $87
	ld a, [hl]                                       ; $4e17: $7e
	nop                                              ; $4e18: $00
	ld a, l                                          ; $4e19: $7d
	ld b, $34                                        ; $4e1a: $06 $34
	jr jr_033_4e53                                   ; $4e1c: $18 $35

	inc c                                            ; $4e1e: $0c
	ld a, l                                          ; $4e1f: $7d
	nop                                              ; $4e20: $00
	add b                                            ; $4e21: $80
	jp nz, $047e                                     ; $4e22: $c2 $7e $04

	nop                                              ; $4e25: $00
	and b                                            ; $4e26: $a0
	dec bc                                           ; $4e27: $0b
	ld l, $c4                                        ; $4e28: $2e $c4
	dec bc                                           ; $4e2a: $0b
	ld [bc], a                                       ; $4e2b: $02
	ld a, [hl]                                       ; $4e2c: $7e
	nop                                              ; $4e2d: $00
	jp nz, $0617                                     ; $4e2e: $c2 $17 $06

	add $17                                          ; $4e31: $c6 $17
	ld b, $00                                        ; $4e33: $06 $00
	inc c                                            ; $4e35: $0c
	jp nz, $0a0b                                     ; $4e36: $c2 $0b $0a

	add $0b                                          ; $4e39: $c6 $0b
	ld c, $c2                                        ; $4e3b: $0e $c2
	dec bc                                           ; $4e3d: $0b
	ld a, [hl+]                                      ; $4e3e: $2a
	call nz, $120b                                   ; $4e3f: $c4 $0b $12
	add $87                                          ; $4e42: $c6 $87
	ld a, [hl]                                       ; $4e44: $7e
	nop                                              ; $4e45: $00
	ld a, l                                          ; $4e46: $7d
	ld b, $34                                        ; $4e47: $06 $34
	jr jr_033_4e80                                   ; $4e49: $18 $35

	inc c                                            ; $4e4b: $0c
	ld a, l                                          ; $4e4c: $7d
	nop                                              ; $4e4d: $00
	add b                                            ; $4e4e: $80
	jp nz, $047e                                     ; $4e4f: $c2 $7e $04

	nop                                              ; $4e52: $00

jr_033_4e53:
	ld a, [bc]                                       ; $4e53: $0a
	jr nc, jr_033_4ed4                               ; $4e54: $30 $7e

	nop                                              ; $4e56: $00
	ld d, $06                                        ; $4e57: $16 $06
	add $16                                          ; $4e59: $c6 $16
	ld b, $c6                                        ; $4e5b: $06 $c6
	ld d, $0c                                        ; $4e5d: $16 $0c
	jp nz, $060a                                     ; $4e5f: $c2 $0a $06

	add $0a                                          ; $4e62: $c6 $0a
	ld [de], a                                       ; $4e64: $12
	jp nz, $160e                                     ; $4e65: $c2 $0e $16

	add $0e                                          ; $4e68: $c6 $0e
	ld [bc], a                                       ; $4e6a: $02
	jp nz, $160f                                     ; $4e6b: $c2 $0f $16

	add $0f                                          ; $4e6e: $c6 $0f
	ld [bc], a                                       ; $4e70: $02
	jp nz, $1611                                     ; $4e71: $c2 $11 $16

	add $11                                          ; $4e74: $c6 $11
	ld [bc], a                                       ; $4e76: $02
	jp nz, $1614                                     ; $4e77: $c2 $14 $16

	add $14                                          ; $4e7a: $c6 $14
	ld [bc], a                                       ; $4e7c: $02
	jp nz, $2a0f                                     ; $4e7d: $c2 $0f $2a

jr_033_4e80:
	call nz, $060f                                   ; $4e80: $c4 $0f $06
	jp nz, $2a0e                                     ; $4e83: $c2 $0e $2a

	call nz, $060e                                   ; $4e86: $c4 $0e $06
	jp nz, $2a0d                                     ; $4e89: $c2 $0d $2a

	call nz, $060d                                   ; $4e8c: $c4 $0d $06
	jp nz, $2a0c                                     ; $4e8f: $c2 $0c $2a

	call nz, $060c                                   ; $4e92: $c4 $0c $06
	pop de                                           ; $4e95: $d1
	jp nz, Jump_033_7e80                             ; $4e96: $c2 $80 $7e

	inc b                                            ; $4e99: $04
	nop                                              ; $4e9a: $00
	and b                                            ; $4e9b: $a0
	dec bc                                           ; $4e9c: $0b
	ld l, $c4                                        ; $4e9d: $2e $c4
	dec bc                                           ; $4e9f: $0b
	ld [bc], a                                       ; $4ea0: $02
	ld a, [hl]                                       ; $4ea1: $7e
	nop                                              ; $4ea2: $00
	jp nz, $0617                                     ; $4ea3: $c2 $17 $06

	add $17                                          ; $4ea6: $c6 $17
	ld b, $00                                        ; $4ea8: $06 $00
	inc c                                            ; $4eaa: $0c
	jp nz, $0a0b                                     ; $4eab: $c2 $0b $0a

	add $0b                                          ; $4eae: $c6 $0b
	ld c, $c2                                        ; $4eb0: $0e $c2
	dec bc                                           ; $4eb2: $0b
	ld [de], a                                       ; $4eb3: $12
	call nz, $060b                                   ; $4eb4: $c4 $0b $06
	call nz, Call_033_7e87                           ; $4eb7: $c4 $87 $7e
	nop                                              ; $4eba: $00
	ld a, [hl+]                                      ; $4ebb: $2a
	rla                                              ; $4ebc: $17
	cpl                                              ; $4ebd: $2f
	inc b                                            ; $4ebe: $04
	ld sp, $2f04                                     ; $4ebf: $31 $04 $2f
	dec b                                            ; $4ec2: $05
	ld l, $0c                                        ; $4ec3: $2e $0c

jr_033_4ec5:
	cpl                                              ; $4ec5: $2f
	jr @-$7e                                         ; $4ec6: $18 $80

	jp nz, $047e                                     ; $4ec8: $c2 $7e $04

	nop                                              ; $4ecb: $00
	and b                                            ; $4ecc: $a0
	inc c                                            ; $4ecd: $0c
	ld l, $c4                                        ; $4ece: $2e $c4

jr_033_4ed0:
	inc c                                            ; $4ed0: $0c
	ld [bc], a                                       ; $4ed1: $02
	ld a, [hl]                                       ; $4ed2: $7e

jr_033_4ed3:
	nop                                              ; $4ed3: $00

jr_033_4ed4:
	jp nz, $0618                                     ; $4ed4: $c2 $18 $06

	add $18                                          ; $4ed7: $c6 $18
	ld b, $00                                        ; $4ed9: $06 $00
	inc c                                            ; $4edb: $0c
	jp nz, $0a0c                                     ; $4edc: $c2 $0c $0a

	add $0c                                          ; $4edf: $c6 $0c
	ld c, $c2                                        ; $4ee1: $0e $c2
	inc c                                            ; $4ee3: $0c
	ld [de], a                                       ; $4ee4: $12
	call nz, $060c                                   ; $4ee5: $c4 $0c $06
	call nz, Call_033_7e87                           ; $4ee8: $c4 $87 $7e
	nop                                              ; $4eeb: $00
	ld a, [hl+]                                      ; $4eec: $2a
	rla                                              ; $4eed: $17
	jr nc, jr_033_4ef4                               ; $4eee: $30 $04

	ld sp, $3004                                     ; $4ef0: $31 $04 $30
	dec b                                            ; $4ef3: $05

jr_033_4ef4:
	ld l, $0c                                        ; $4ef4: $2e $0c
	jr nc, @+$1a                                     ; $4ef6: $30 $18

	add b                                            ; $4ef8: $80
	jp nz, $007e                                     ; $4ef9: $c2 $7e $00

	rrca                                             ; $4efc: $0f
	jr nc, jr_033_4ec5                               ; $4efd: $30 $c6

	rrca                                             ; $4eff: $0f
	jr @-$3c                                         ; $4f00: $18 $c2

	rrca                                             ; $4f02: $0f
	ld d, $c6                                        ; $4f03: $16 $c6
	rrca                                             ; $4f05: $0f
	ld [bc], a                                       ; $4f06: $02
	jp nz, $3014                                     ; $4f07: $c2 $14 $30

	add $14                                          ; $4f0a: $c6 $14
	jr jr_033_4ed0                                   ; $4f0c: $18 $c2

	inc d                                            ; $4f0e: $14
	jr jr_033_4ed3                                   ; $4f0f: $18 $c2

	ld a, [hl]                                       ; $4f11: $7e
	nop                                              ; $4f12: $00
	dec c                                            ; $4f13: $0d
	ld c, b                                          ; $4f14: $48
	call nz, $180d                                   ; $4f15: $c4 $0d $18
	dec c                                            ; $4f18: $0d
	inc c                                            ; $4f19: $0c
	add $0d                                          ; $4f1a: $c6 $0d
	inc c                                            ; $4f1c: $0c
	nop                                              ; $4f1d: $00
	ld c, b                                          ; $4f1e: $48
	jp nz, $80d1                                     ; $4f1f: $c2 $d1 $80

	ld a, [hl]                                       ; $4f22: $7e
	inc b                                            ; $4f23: $04
	nop                                              ; $4f24: $00
	and b                                            ; $4f25: $a0
	dec c                                            ; $4f26: $0d
	ld l, $c4                                        ; $4f27: $2e $c4
	dec c                                            ; $4f29: $0d
	ld [bc], a                                       ; $4f2a: $02
	ld a, [hl]                                       ; $4f2b: $7e
	nop                                              ; $4f2c: $00
	jp nz, $0619                                     ; $4f2d: $c2 $19 $06

	add $19                                          ; $4f30: $c6 $19
	ld b, $00                                        ; $4f32: $06 $00
	inc c                                            ; $4f34: $0c
	jp nz, $0a0d                                     ; $4f35: $c2 $0d $0a

	add $0d                                          ; $4f38: $c6 $0d
	ld c, $c2                                        ; $4f3a: $0e $c2
	dec c                                            ; $4f3c: $0d
	ld a, [hl-]                                      ; $4f3d: $3a
	add $0d                                          ; $4f3e: $c6 $0d
	ld c, $c2                                        ; $4f40: $0e $c2
	dec c                                            ; $4f42: $0d
	ld d, $c6                                        ; $4f43: $16 $c6
	dec c                                            ; $4f45: $0d
	ld [bc], a                                       ; $4f46: $02
	jp nz, $047e                                     ; $4f47: $c2 $7e $04

	nop                                              ; $4f4a: $00
	and b                                            ; $4f4b: $a0
	dec bc                                           ; $4f4c: $0b
	ld l, $c4                                        ; $4f4d: $2e $c4
	dec bc                                           ; $4f4f: $0b
	ld [bc], a                                       ; $4f50: $02
	ld a, [hl]                                       ; $4f51: $7e
	nop                                              ; $4f52: $00
	jp nz, $0617                                     ; $4f53: $c2 $17 $06

	add $17                                          ; $4f56: $c6 $17
	ld b, $00                                        ; $4f58: $06 $00
	inc c                                            ; $4f5a: $0c
	jp nz, $0a0b                                     ; $4f5b: $c2 $0b $0a

	add $0b                                          ; $4f5e: $c6 $0b
	ld c, $c2                                        ; $4f60: $0e $c2
	dec bc                                           ; $4f62: $0b
	ld a, [hl-]                                      ; $4f63: $3a
	add $0b                                          ; $4f64: $c6 $0b
	ld c, $c2                                        ; $4f66: $0e $c2
	dec bc                                           ; $4f68: $0b
	ld d, $c6                                        ; $4f69: $16 $c6
	dec bc                                           ; $4f6b: $0b
	ld [bc], a                                       ; $4f6c: $02
	jp nz, $017e                                     ; $4f6d: $c2 $7e $01

	nop                                              ; $4f70: $00
	ld a, [bc]                                       ; $4f71: $0a
	jr nc, @+$80                                     ; $4f72: $30 $7e

	nop                                              ; $4f74: $00
	ld d, $06                                        ; $4f75: $16 $06
	add $16                                          ; $4f77: $c6 $16
	ld [de], a                                       ; $4f79: $12
	jp nz, $0b0a                                     ; $4f7a: $c2 $0a $0b

	add $0a                                          ; $4f7d: $c6 $0a
	dec c                                            ; $4f7f: $0d
	jp nz, $160e                                     ; $4f80: $c2 $0e $16

	add $0e                                          ; $4f83: $c6 $0e
	ld [bc], a                                       ; $4f85: $02
	jp nz, $160f                                     ; $4f86: $c2 $0f $16

	add $0f                                          ; $4f89: $c6 $0f
	ld [bc], a                                       ; $4f8b: $02
	jp nz, $1611                                     ; $4f8c: $c2 $11 $16

	add $11                                          ; $4f8f: $c6 $11
	ld [bc], a                                       ; $4f91: $02
	jp nz, $160a                                     ; $4f92: $c2 $0a $16

	add $0a                                          ; $4f95: $c6 $0a
	ld [bc], a                                       ; $4f97: $02
	jp nz, $007e                                     ; $4f98: $c2 $7e $00

	rrca                                             ; $4f9b: $0f
	dec bc                                           ; $4f9c: $0b
	call nz, $010f                                   ; $4f9d: $c4 $0f $01
	jp nz, $091b                                     ; $4fa0: $c2 $1b $09

	call nz, $021b                                   ; $4fa3: $c4 $1b $02
	add $1b                                          ; $4fa6: $c6 $1b
	ld bc, $16c2                                     ; $4fa8: $01 $c2 $16
	add hl, bc                                       ; $4fab: $09
	call nz, $0216                                   ; $4fac: $c4 $16 $02
	add $16                                          ; $4faf: $c6 $16
	ld bc, $12c2                                     ; $4fb1: $01 $c2 $12
	add hl, bc                                       ; $4fb4: $09
	call nz, $0212                                   ; $4fb5: $c4 $12 $02
	add $12                                          ; $4fb8: $c6 $12
	ld bc, $0ec2                                     ; $4fba: $01 $c2 $0e
	dec bc                                           ; $4fbd: $0b
	call nz, $010e                                   ; $4fbe: $c4 $0e $01
	jp nz, $091a                                     ; $4fc1: $c2 $1a $09

	call nz, $021a                                   ; $4fc4: $c4 $1a $02
	add $1a                                          ; $4fc7: $c6 $1a
	ld bc, $16c2                                     ; $4fc9: $01 $c2 $16
	add hl, bc                                       ; $4fcc: $09
	call nz, $0216                                   ; $4fcd: $c4 $16 $02
	add $16                                          ; $4fd0: $c6 $16
	ld bc, $11c2                                     ; $4fd2: $01 $c2 $11
	add hl, bc                                       ; $4fd5: $09
	call nz, $0211                                   ; $4fd6: $c4 $11 $02
	add $11                                          ; $4fd9: $c6 $11
	ld bc, $0fc2                                     ; $4fdb: $01 $c2 $0f
	dec bc                                           ; $4fde: $0b
	call nz, $010f                                   ; $4fdf: $c4 $0f $01
	jp nz, $091b                                     ; $4fe2: $c2 $1b $09

	call nz, $021b                                   ; $4fe5: $c4 $1b $02
	add $1b                                          ; $4fe8: $c6 $1b
	ld bc, $16c2                                     ; $4fea: $01 $c2 $16
	add hl, bc                                       ; $4fed: $09
	call nz, $0216                                   ; $4fee: $c4 $16 $02
	add $16                                          ; $4ff1: $c6 $16
	ld bc, $12c2                                     ; $4ff3: $01 $c2 $12
	add hl, bc                                       ; $4ff6: $09
	call nz, $0212                                   ; $4ff7: $c4 $12 $02
	add $12                                          ; $4ffa: $c6 $12
	ld bc, $0ac2                                     ; $4ffc: $01 $c2 $0a
	dec bc                                           ; $4fff: $0b
	call nz, $010a                                   ; $5000: $c4 $0a $01
	jp nz, $090f                                     ; $5003: $c2 $0f $09

	call nz, $020f                                   ; $5006: $c4 $0f $02
	add $0f                                          ; $5009: $c6 $0f
	ld bc, $12c2                                     ; $500b: $01 $c2 $12
	add hl, bc                                       ; $500e: $09
	call nz, $0212                                   ; $500f: $c4 $12 $02
	add $12                                          ; $5012: $c6 $12
	ld bc, $16c2                                     ; $5014: $01 $c2 $16
	add hl, bc                                       ; $5017: $09
	call nz, $0216                                   ; $5018: $c4 $16 $02
	add $16                                          ; $501b: $c6 $16
	ld bc, $d1c2                                     ; $501d: $01 $c2 $d1
	add b                                            ; $5020: $80
	ld a, [hl]                                       ; $5021: $7e
	inc b                                            ; $5022: $04
	nop                                              ; $5023: $00
	xor d                                            ; $5024: $aa
	dec bc                                           ; $5025: $0b
	ld d, $c4                                        ; $5026: $16 $c4
	dec bc                                           ; $5028: $0b
	ld [bc], a                                       ; $5029: $02
	jp nz, $1617                                     ; $502a: $c2 $17 $16

	call nz, $0217                                   ; $502d: $c4 $17 $02
	jp nz, $1616                                     ; $5030: $c2 $16 $16

	call nz, $0216                                   ; $5033: $c4 $16 $02
	jp nz, $1615                                     ; $5036: $c2 $15 $16

	call nz, $0215                                   ; $5039: $c4 $15 $02
	jp nz, $2414                                     ; $503c: $c2 $14 $24

	call nz, $0a14                                   ; $503f: $c4 $14 $0a
	add $14                                          ; $5042: $c6 $14
	ld [bc], a                                       ; $5044: $02
	jp nz, $007e                                     ; $5045: $c2 $7e $00

	ld [$c412], sp                                   ; $5048: $08 $12 $c4
	ld [$c206], sp                                   ; $504b: $08 $06 $c2
	inc c                                            ; $504e: $0c
	ld [de], a                                       ; $504f: $12
	call nz, $060c                                   ; $5050: $c4 $0c $06
	jp nz, $180d                                     ; $5053: $c2 $0d $18

	call nz, $0c0d                                   ; $5056: $c4 $0d $0c
	jp nz, $060d                                     ; $5059: $c2 $0d $06

	call nz, $060d                                   ; $505c: $c4 $0d $06
	jp nz, $1608                                     ; $505f: $c2 $08 $16

	add $08                                          ; $5062: $c6 $08
	ld [bc], a                                       ; $5064: $02
	jp nz, $060d                                     ; $5065: $c2 $0d $06

	call nz, $060d                                   ; $5068: $c4 $0d $06
	jp nz, $0608                                     ; $506b: $c2 $08 $06

	add $08                                          ; $506e: $c6 $08
	ld b, $c2                                        ; $5070: $06 $c2
	ld bc, $c426                                     ; $5072: $01 $26 $c4
	ld bc, $c606                                     ; $5075: $01 $06 $c6
	ld bc, $c204                                     ; $5078: $01 $04 $c2
	cp [hl]                                          ; $507b: $be
	inc c                                            ; $507c: $0c
	ld bc, SetWramBankAStoringCurrInHighByteInStackAfterReturn                                     ; $507d: $01 $05 $08
	dec c                                            ; $5080: $0d
	cp [hl]                                          ; $5081: $be
	inc bc                                           ; $5082: $03
	jr z, @-$3a                                      ; $5083: $28 $c4

	inc bc                                           ; $5085: $03
	db $10                                           ; $5086: $10
	add $03                                          ; $5087: $c6 $03
	inc b                                            ; $5089: $04
	jp nz, $0c0f                                     ; $508a: $c2 $0f $0c

	ld a, [bc]                                       ; $508d: $0a
	inc c                                            ; $508e: $0c
	dec c                                            ; $508f: $0d
	inc c                                            ; $5090: $0c
	ld [$c418], sp                                   ; $5091: $08 $18 $c4
	ld [$c60c], sp                                   ; $5094: $08 $0c $c6
	ld [$c40c], sp                                   ; $5097: $08 $0c $c4
	inc bc                                           ; $509a: $03
	inc c                                            ; $509b: $0c
	jp nz, $0a06                                     ; $509c: $c2 $06 $0a

	call nz, $0206                                   ; $509f: $c4 $06 $02
	jp nz, $0a08                                     ; $50a2: $c2 $08 $0a

	call nz, $0208                                   ; $50a5: $c4 $08 $02
	jp nz, $0a0c                                     ; $50a8: $c2 $0c $0a

	call nz, $020c                                   ; $50ab: $c4 $0c $02
	jp nz, $180d                                     ; $50ae: $c2 $0d $18

	call nz, $0c0d                                   ; $50b1: $c4 $0d $0c
	jp nz, $0c0d                                     ; $50b4: $c2 $0d $0c

	jp nz, $180d                                     ; $50b7: $c2 $0d $18

	call nz, $0c0d                                   ; $50ba: $c4 $0d $0c
	jp nz, $0c08                                     ; $50bd: $c2 $08 $0c

	jp nz, $3001                                     ; $50c0: $c2 $01 $30

	call nz, $1801                                   ; $50c3: $c4 $01 $18
	add $01                                          ; $50c6: $c6 $01
	inc c                                            ; $50c8: $0c
	nop                                              ; $50c9: $00
	inc c                                            ; $50ca: $0c
	cp $ff                                           ; $50cb: $fe $ff
	ret nc                                           ; $50cd: $d0

	sbc b                                            ; $50ce: $98
	cp $be                                           ; $50cf: $fe $be
	jr nc, @+$0b                                     ; $50d1: $30 $09

	add hl, bc                                       ; $50d3: $09
	nop                                              ; $50d4: $00
	add hl, bc                                       ; $50d5: $09
	cp [hl]                                          ; $50d6: $be
	nop                                              ; $50d7: $00
	jr jr_033_50ec                                   ; $50d8: $18 $12

	ld [$0812], sp                                   ; $50da: $08 $12 $08
	ld [de], a                                       ; $50dd: $12
	ld [$3009], sp                                   ; $50de: $08 $09 $30

jr_033_50e1:
	add hl, bc                                       ; $50e1: $09
	jr nc, jr_033_50ed                               ; $50e2: $30 $09

	jr nc, jr_033_50e1                               ; $50e4: $30 $fb

jr_033_50e6:
	nop                                              ; $50e6: $00
	jr nc, jr_033_50f2                               ; $50e7: $30 $09

	jr nc, jr_033_50e6                               ; $50e9: $30 $fb

	ld [bc], a                                       ; $50eb: $02

jr_033_50ec:
	nop                                              ; $50ec: $00

jr_033_50ed:
	jr jr_033_5101                                   ; $50ed: $18 $12

	ld [$0812], sp                                   ; $50ef: $08 $12 $08

jr_033_50f2:
	ld [de], a                                       ; $50f2: $12
	ld [$3009], sp                                   ; $50f3: $08 $09 $30
	add hl, bc                                       ; $50f6: $09
	jr nc, jr_033_510b                               ; $50f7: $30 $12

	jr nc, @+$1a                                     ; $50f9: $30 $18

	jr nc, @-$40                                     ; $50fb: $30 $be

	jr jr_033_5108                                   ; $50fd: $18 $09

	ld [de], a                                       ; $50ff: $12
	add hl, bc                                       ; $5100: $09

jr_033_5101:
	ld [de], a                                       ; $5101: $12
	inc de                                           ; $5102: $13
	ld [de], a                                       ; $5103: $12
	cp [hl]                                          ; $5104: $be
	cp [hl]                                          ; $5105: $be
	jr jr_033_5111                                   ; $5106: $18 $09

jr_033_5108:
	ld [de], a                                       ; $5108: $12
	add hl, bc                                       ; $5109: $09
	ld [de], a                                       ; $510a: $12

jr_033_510b:
	add hl, bc                                       ; $510b: $09
	ld [de], a                                       ; $510c: $12
	cp [hl]                                          ; $510d: $be
	inc de                                           ; $510e: $13
	inc c                                            ; $510f: $0c

jr_033_5110:
	ld [de], a                                       ; $5110: $12

jr_033_5111:
	inc c                                            ; $5111: $0c
	jr jr_033_512c                                   ; $5112: $18 $18

	cp [hl]                                          ; $5114: $be
	jr jr_033_5120                                   ; $5115: $18 $09

	ld [de], a                                       ; $5117: $12
	add hl, bc                                       ; $5118: $09
	ld [de], a                                       ; $5119: $12
	add hl, bc                                       ; $511a: $09
	ld [de], a                                       ; $511b: $12
	inc de                                           ; $511c: $13

jr_033_511d:
	ld [de], a                                       ; $511d: $12
	cp [hl]                                          ; $511e: $be
	add hl, bc                                       ; $511f: $09

jr_033_5120:
	jr jr_033_5134                                   ; $5120: $18 $12

	ld [$0812], sp                                   ; $5122: $08 $12 $08
	ld [de], a                                       ; $5125: $12
	ld [$18be], sp                                   ; $5126: $08 $be $18
	add hl, bc                                       ; $5129: $09
	ld [de], a                                       ; $512a: $12
	add hl, bc                                       ; $512b: $09

jr_033_512c:
	ld [de], a                                       ; $512c: $12
	cp [hl]                                          ; $512d: $be
	add hl, bc                                       ; $512e: $09
	inc c                                            ; $512f: $0c
	ld [de], a                                       ; $5130: $12
	inc c                                            ; $5131: $0c
	jr jr_033_514c                                   ; $5132: $18 $18

jr_033_5134:
	cp [hl]                                          ; $5134: $be
	jr jr_033_5140                                   ; $5135: $18 $09

	ld [de], a                                       ; $5137: $12
	add hl, bc                                       ; $5138: $09
	ld [de], a                                       ; $5139: $12
	add hl, bc                                       ; $513a: $09
	ld [de], a                                       ; $513b: $12
	inc de                                           ; $513c: $13
	ld [de], a                                       ; $513d: $12
	cp [hl]                                          ; $513e: $be
	cp [hl]                                          ; $513f: $be

jr_033_5140:
	jr jr_033_514b                                   ; $5140: $18 $09

	ld [de], a                                       ; $5142: $12
	add hl, bc                                       ; $5143: $09
	ld [de], a                                       ; $5144: $12
	add hl, bc                                       ; $5145: $09
	cp [hl]                                          ; $5146: $be
	nop                                              ; $5147: $00
	ld [$0812], sp                                   ; $5148: $08 $12 $08

jr_033_514b:
	ld [de], a                                       ; $514b: $12

jr_033_514c:
	ld [$1813], sp                                   ; $514c: $08 $13 $18
	ld [de], a                                       ; $514f: $12
	jr jr_033_5110                                   ; $5150: $18 $be

	jr jr_033_515d                                   ; $5152: $18 $09

	ld [de], a                                       ; $5154: $12
	add hl, bc                                       ; $5155: $09
	ld [de], a                                       ; $5156: $12
	ld [de], a                                       ; $5157: $12
	add hl, bc                                       ; $5158: $09
	inc de                                           ; $5159: $13
	ld [de], a                                       ; $515a: $12
	cp [hl]                                          ; $515b: $be
	add hl, bc                                       ; $515c: $09

jr_033_515d:
	jr jr_033_511d                                   ; $515d: $18 $be

	inc c                                            ; $515f: $0c
	ld [de], a                                       ; $5160: $12
	ld [de], a                                       ; $5161: $12
	ld [de], a                                       ; $5162: $12
	ld [de], a                                       ; $5163: $12
	cp [hl]                                          ; $5164: $be
	add hl, bc                                       ; $5165: $09
	jr jr_033_5180                                   ; $5166: $18 $18

	ld h, b                                          ; $5168: $60
	jr jr_033_519b                                   ; $5169: $18 $30

	cp [hl]                                          ; $516b: $be
	inc c                                            ; $516c: $0c
	ld [de], a                                       ; $516d: $12
	ld [de], a                                       ; $516e: $12
	add hl, bc                                       ; $516f: $09
	ld [de], a                                       ; $5170: $12
	cp [hl]                                          ; $5171: $be
	cp [hl]                                          ; $5172: $be
	inc c                                            ; $5173: $0c
	ld [de], a                                       ; $5174: $12
	ld [de], a                                       ; $5175: $12
	add hl, bc                                       ; $5176: $09
	ld [de], a                                       ; $5177: $12
	inc de                                           ; $5178: $13
	ld [de], a                                       ; $5179: $12
	add hl, bc                                       ; $517a: $09
	ld [de], a                                       ; $517b: $12
	cp [hl]                                          ; $517c: $be
	cp [hl]                                          ; $517d: $be
	inc c                                            ; $517e: $0c
	add hl, bc                                       ; $517f: $09

jr_033_5180:
	ld [de], a                                       ; $5180: $12
	add hl, bc                                       ; $5181: $09
	ld [de], a                                       ; $5182: $12
	ld [de], a                                       ; $5183: $12
	ld [de], a                                       ; $5184: $12
	add hl, bc                                       ; $5185: $09
	ld [de], a                                       ; $5186: $12
	cp [hl]                                          ; $5187: $be
	cp [hl]                                          ; $5188: $be
	inc c                                            ; $5189: $0c
	ld [de], a                                       ; $518a: $12
	ld [de], a                                       ; $518b: $12
	add hl, bc                                       ; $518c: $09
	ld [de], a                                       ; $518d: $12
	inc de                                           ; $518e: $13
	ld [de], a                                       ; $518f: $12
	add hl, bc                                       ; $5190: $09
	ld [de], a                                       ; $5191: $12
	cp [hl]                                          ; $5192: $be
	cp [hl]                                          ; $5193: $be
	inc c                                            ; $5194: $0c
	add hl, bc                                       ; $5195: $09
	ld [de], a                                       ; $5196: $12
	add hl, bc                                       ; $5197: $09
	ld [de], a                                       ; $5198: $12
	ld [de], a                                       ; $5199: $12
	ld [de], a                                       ; $519a: $12

jr_033_519b:
	add hl, bc                                       ; $519b: $09
	ld [de], a                                       ; $519c: $12
	cp [hl]                                          ; $519d: $be
	cp [hl]                                          ; $519e: $be
	inc c                                            ; $519f: $0c
	ld [de], a                                       ; $51a0: $12
	ld [de], a                                       ; $51a1: $12
	add hl, bc                                       ; $51a2: $09
	ld [de], a                                       ; $51a3: $12
	inc de                                           ; $51a4: $13
	ld [de], a                                       ; $51a5: $12
	add hl, bc                                       ; $51a6: $09
	ld [de], a                                       ; $51a7: $12
	cp [hl]                                          ; $51a8: $be
	cp [hl]                                          ; $51a9: $be
	inc c                                            ; $51aa: $0c
	add hl, bc                                       ; $51ab: $09
	ld [de], a                                       ; $51ac: $12
	add hl, bc                                       ; $51ad: $09
	ld [de], a                                       ; $51ae: $12
	inc de                                           ; $51af: $13
	ld [de], a                                       ; $51b0: $12
	add hl, bc                                       ; $51b1: $09
	ld [de], a                                       ; $51b2: $12
	cp [hl]                                          ; $51b3: $be
	add hl, bc                                       ; $51b4: $09
	inc c                                            ; $51b5: $0c
	ld [de], a                                       ; $51b6: $12
	inc c                                            ; $51b7: $0c
	cp [hl]                                          ; $51b8: $be
	ld [$1212], sp                                   ; $51b9: $08 $12 $12
	ld [de], a                                       ; $51bc: $12
	inc de                                           ; $51bd: $13
	ld [de], a                                       ; $51be: $12
	ld [de], a                                       ; $51bf: $12
	cp [hl]                                          ; $51c0: $be
	add hl, bc                                       ; $51c1: $09
	inc c                                            ; $51c2: $0c
	ld [de], a                                       ; $51c3: $12
	inc c                                            ; $51c4: $0c
	cp [hl]                                          ; $51c5: $be
	inc c                                            ; $51c6: $0c
	add hl, bc                                       ; $51c7: $09
	ld [de], a                                       ; $51c8: $12
	add hl, bc                                       ; $51c9: $09
	ld [de], a                                       ; $51ca: $12
	add hl, bc                                       ; $51cb: $09
	ld [de], a                                       ; $51cc: $12
	add hl, bc                                       ; $51cd: $09
	ld [de], a                                       ; $51ce: $12
	cp [hl]                                          ; $51cf: $be
	cp [hl]                                          ; $51d0: $be
	inc c                                            ; $51d1: $0c
	add hl, bc                                       ; $51d2: $09
	ld [de], a                                       ; $51d3: $12
	add hl, bc                                       ; $51d4: $09
	ld [de], a                                       ; $51d5: $12
	inc de                                           ; $51d6: $13
	ld [de], a                                       ; $51d7: $12
	add hl, bc                                       ; $51d8: $09
	ld [de], a                                       ; $51d9: $12
	cp [hl]                                          ; $51da: $be
	cp [hl]                                          ; $51db: $be
	inc c                                            ; $51dc: $0c
	add hl, bc                                       ; $51dd: $09
	ld [de], a                                       ; $51de: $12
	add hl, bc                                       ; $51df: $09
	ld [de], a                                       ; $51e0: $12
	inc de                                           ; $51e1: $13
	ld [de], a                                       ; $51e2: $12
	add hl, bc                                       ; $51e3: $09
	ld [de], a                                       ; $51e4: $12
	cp [hl]                                          ; $51e5: $be
	cp [hl]                                          ; $51e6: $be
	inc c                                            ; $51e7: $0c
	ld [de], a                                       ; $51e8: $12
	ld [de], a                                       ; $51e9: $12
	add hl, bc                                       ; $51ea: $09
	ld [de], a                                       ; $51eb: $12
	inc de                                           ; $51ec: $13
	ld [de], a                                       ; $51ed: $12
	add hl, bc                                       ; $51ee: $09
	ld [de], a                                       ; $51ef: $12
	cp [hl]                                          ; $51f0: $be
	add hl, bc                                       ; $51f1: $09
	jr @+$14                                         ; $51f2: $18 $12

	jr jr_033_51ff                                   ; $51f4: $18 $09

	jr jr_033_520a                                   ; $51f6: $18 $12

	ld [$0812], sp                                   ; $51f8: $08 $12 $08
	ld [de], a                                       ; $51fb: $12
	ld [$1809], sp                                   ; $51fc: $08 $09 $18

jr_033_51ff:
	ld [de], a                                       ; $51ff: $12
	ld [$0812], sp                                   ; $5200: $08 $12 $08
	ld [de], a                                       ; $5203: $12
	ld [$1813], sp                                   ; $5204: $08 $13 $18
	add hl, bc                                       ; $5207: $09
	inc c                                            ; $5208: $0c
	ld [de], a                                       ; $5209: $12

jr_033_520a:
	inc c                                            ; $520a: $0c
	jr jr_033_5225                                   ; $520b: $18 $18

	ld [de], a                                       ; $520d: $12
	ld [$0812], sp                                   ; $520e: $08 $12 $08
	ld [de], a                                       ; $5211: $12
	ld [$3013], sp                                   ; $5212: $08 $13 $30
	cp [hl]                                          ; $5215: $be
	inc c                                            ; $5216: $0c
	dec d                                            ; $5217: $15
	dec d                                            ; $5218: $15
	ld d, $16                                        ; $5219: $16 $16
	ld d, $17                                        ; $521b: $16 $17
	rla                                              ; $521d: $17
	rla                                              ; $521e: $17
	cp [hl]                                          ; $521f: $be
	cp $ff                                           ; $5220: $fe $ff
	ret nc                                           ; $5222: $d0

	ld c, e                                          ; $5223: $4b
	nop                                              ; $5224: $00

jr_033_5225:
	jr jr_033_5225                                   ; $5225: $18 $fe

	or l                                             ; $5227: $b5
	or c                                             ; $5228: $b1
	nop                                              ; $5229: $00
	add hl, de                                       ; $522a: $19
	dec b                                            ; $522b: $05
	dec h                                            ; $522c: $25
	inc c                                            ; $522d: $0c
	pop de                                           ; $522e: $d1
	ret                                              ; $522f: $c9


	dec h                                            ; $5230: $25
	inc c                                            ; $5231: $0c
	ret z                                            ; $5232: $c8

	dec h                                            ; $5233: $25
	inc c                                            ; $5234: $0c
	rst JumpTable                                          ; $5235: $c7
	dec h                                            ; $5236: $25
	inc c                                            ; $5237: $0c
	add $25                                          ; $5238: $c6 $25
	inc c                                            ; $523a: $0c
	push bc                                          ; $523b: $c5
	dec h                                            ; $523c: $25
	inc c                                            ; $523d: $0c
	jp z, $0c25                                      ; $523e: $ca $25 $0c

	dec h                                            ; $5241: $25
	inc c                                            ; $5242: $0c
	pop de                                           ; $5243: $d1
	rr a                                             ; $5244: $cb $1f
	inc c                                            ; $5246: $0c
	ret                                              ; $5247: $c9


	rra                                              ; $5248: $1f
	inc c                                            ; $5249: $0c
	rst JumpTable                                          ; $524a: $c7
	rra                                              ; $524b: $1f
	inc c                                            ; $524c: $0c
	push bc                                          ; $524d: $c5
	rra                                              ; $524e: $1f
	inc c                                            ; $524f: $0c
	rr a                                             ; $5250: $cb $1f
	inc c                                            ; $5252: $0c
	ret z                                            ; $5253: $c8

	rra                                              ; $5254: $1f
	inc c                                            ; $5255: $0c
	add $1f                                          ; $5256: $c6 $1f
	inc c                                            ; $5258: $0c
	ret z                                            ; $5259: $c8

	rra                                              ; $525a: $1f
	inc c                                            ; $525b: $0c
	sla c                                            ; $525c: $cb $21
	inc c                                            ; $525e: $0c
	ret z                                            ; $525f: $c8

	ld hl, $c70c                                     ; $5260: $21 $0c $c7
	ld hl, $c60c                                     ; $5263: $21 $0c $c6
	ld hl, $c50c                                     ; $5266: $21 $0c $c5
	ld hl, $c40c                                     ; $5269: $21 $0c $c4
	ld hl, $c80c                                     ; $526c: $21 $0c $c8
	inc h                                            ; $526f: $24
	inc c                                            ; $5270: $0c
	ld hl, $cb0c                                     ; $5271: $21 $0c $cb
	dec e                                            ; $5274: $1d
	inc c                                            ; $5275: $0c
	ret z                                            ; $5276: $c8

	dec e                                            ; $5277: $1d
	inc c                                            ; $5278: $0c
	rst JumpTable                                          ; $5279: $c7
	dec e                                            ; $527a: $1d
	inc c                                            ; $527b: $0c
	add $1d                                          ; $527c: $c6 $1d
	inc c                                            ; $527e: $0c
	push bc                                          ; $527f: $c5
	dec e                                            ; $5280: $1d
	inc c                                            ; $5281: $0c
	call nz, $0c1d                                   ; $5282: $c4 $1d $0c
	rr c                                             ; $5285: $cb $19
	ld [$081d], sp                                   ; $5287: $08 $1d $08
	jr nz, @+$0a                                     ; $528a: $20 $08

	or l                                             ; $528c: $b5
	pop de                                           ; $528d: $d1
	nop                                              ; $528e: $00
	add hl, de                                       ; $528f: $19
	inc bc                                           ; $5290: $03
	ld [hl+], a                                      ; $5291: $22
	inc c                                            ; $5292: $0c
	jp z, $0c22                                      ; $5293: $ca $22 $0c

	ret                                              ; $5296: $c9


	ld [hl+], a                                      ; $5297: $22
	inc c                                            ; $5298: $0c
	ret z                                            ; $5299: $c8

	ld [hl+], a                                      ; $529a: $22
	inc c                                            ; $529b: $0c
	rst JumpTable                                          ; $529c: $c7
	ld [hl+], a                                      ; $529d: $22
	inc c                                            ; $529e: $0c
	add $22                                          ; $529f: $c6 $22
	inc c                                            ; $52a1: $0c
	jp z, $0c19                                      ; $52a2: $ca $19 $0c

	add hl, de                                       ; $52a5: $19
	inc c                                            ; $52a6: $0c
	call $0c1c                                       ; $52a7: $cd $1c $0c
	jp z, $0c1c                                      ; $52aa: $ca $1c $0c

	ret z                                            ; $52ad: $c8

	inc e                                            ; $52ae: $1c
	inc c                                            ; $52af: $0c
	add $1c                                          ; $52b0: $c6 $1c
	inc c                                            ; $52b2: $0c
	call $0c1c                                       ; $52b3: $cd $1c $0c
	jp z, $0c1c                                      ; $52b6: $ca $1c $0c

	ret z                                            ; $52b9: $c8

	inc e                                            ; $52ba: $1c
	inc c                                            ; $52bb: $0c
	add $1c                                          ; $52bc: $c6 $1c
	inc c                                            ; $52be: $0c
	call $0c18                                       ; $52bf: $cd $18 $0c
	jp z, $0c18                                      ; $52c2: $ca $18 $0c

	ret                                              ; $52c5: $c9


	jr jr_033_52d4                                   ; $52c6: $18 $0c

	ret z                                            ; $52c8: $c8

	jr @+$0e                                         ; $52c9: $18 $0c

	rst JumpTable                                          ; $52cb: $c7
	jr @+$0e                                         ; $52cc: $18 $0c

	add $18                                          ; $52ce: $c6 $18
	inc c                                            ; $52d0: $0c
	jp z, $0c1d                                      ; $52d1: $ca $1d $0c

jr_033_52d4:
	dec e                                            ; $52d4: $1d
	inc c                                            ; $52d5: $0c
	call $0c19                                       ; $52d6: $cd $19 $0c
	jp z, $0c19                                      ; $52d9: $ca $19 $0c

	jp z, $0c19                                      ; $52dc: $ca $19 $0c

	ret                                              ; $52df: $c9


	add hl, de                                       ; $52e0: $19
	inc c                                            ; $52e1: $0c
	rst JumpTable                                          ; $52e2: $c7
	add hl, de                                       ; $52e3: $19
	inc c                                            ; $52e4: $0c
	push bc                                          ; $52e5: $c5
	add hl, de                                       ; $52e6: $19
	inc c                                            ; $52e7: $0c
	ret z                                            ; $52e8: $c8

	add hl, de                                       ; $52e9: $19
	inc c                                            ; $52ea: $0c
	jp z, $0c19                                      ; $52eb: $ca $19 $0c

	cp $ff                                           ; $52ee: $fe $ff
	ret nc                                           ; $52f0: $d0

	ld c, e                                          ; $52f1: $4b
	cp $b5                                           ; $52f2: $fe $b5
	or c                                             ; $52f4: $b1
	ld bc, $0000                                     ; $52f5: $01 $00 $00
	dec e                                            ; $52f8: $1d
	ld b, $1e                                        ; $52f9: $06 $1e
	ld b, $1d                                        ; $52fb: $06 $1d
	inc b                                            ; $52fd: $04
	inc e                                            ; $52fe: $1c
	inc b                                            ; $52ff: $04
	dec e                                            ; $5300: $1d
	inc b                                            ; $5301: $04
	sub [hl]                                         ; $5302: $96
	add hl, de                                       ; $5303: $19
	dec b                                            ; $5304: $05
	add hl, hl                                       ; $5305: $29
	inc c                                            ; $5306: $0c
	pop de                                           ; $5307: $d1
	jp z, $0c29                                      ; $5308: $ca $29 $0c

	ret z                                            ; $530b: $c8

	add hl, hl                                       ; $530c: $29
	inc c                                            ; $530d: $0c
	add $29                                          ; $530e: $c6 $29
	inc c                                            ; $5310: $0c
	push bc                                          ; $5311: $c5
	add hl, hl                                       ; $5312: $29
	inc c                                            ; $5313: $0c
	call nz, $0c29                                   ; $5314: $c4 $29 $0c
	pop de                                           ; $5317: $d1
	sra d                                            ; $5318: $cb $2a
	inc c                                            ; $531a: $0c
	add hl, hl                                       ; $531b: $29
	inc c                                            ; $531c: $0c
	jr z, jr_033_532b                                ; $531d: $28 $0c

	ret z                                            ; $531f: $c8

	jr z, jr_033_532e                                ; $5320: $28 $0c

	add $28                                          ; $5322: $c6 $28
	inc c                                            ; $5324: $0c
	call nz, $0c28                                   ; $5325: $c4 $28 $0c
	sla h                                            ; $5328: $cb $24
	inc c                                            ; $532a: $0c

jr_033_532b:
	ret z                                            ; $532b: $c8

	inc h                                            ; $532c: $24
	inc c                                            ; $532d: $0c

jr_033_532e:
	sla h                                            ; $532e: $cb $24
	inc c                                            ; $5330: $0c
	dec h                                            ; $5331: $25
	inc c                                            ; $5332: $0c
	daa                                              ; $5333: $27
	inc c                                            ; $5334: $0c
	ret z                                            ; $5335: $c8

	daa                                              ; $5336: $27
	inc c                                            ; $5337: $0c
	rst JumpTable                                          ; $5338: $c7
	daa                                              ; $5339: $27
	inc c                                            ; $533a: $0c
	add $27                                          ; $533b: $c6 $27
	inc c                                            ; $533d: $0c
	push bc                                          ; $533e: $c5
	daa                                              ; $533f: $27
	inc c                                            ; $5340: $0c
	call nz, $0c27                                   ; $5341: $c4 $27 $0c
	sra c                                            ; $5344: $cb $29
	inc c                                            ; $5346: $0c
	daa                                              ; $5347: $27
	inc c                                            ; $5348: $0c
	dec h                                            ; $5349: $25
	inc c                                            ; $534a: $0c
	ret z                                            ; $534b: $c8

	dec h                                            ; $534c: $25
	inc c                                            ; $534d: $0c
	rst JumpTable                                          ; $534e: $c7
	dec h                                            ; $534f: $25
	inc c                                            ; $5350: $0c
	add $25                                          ; $5351: $c6 $25
	inc c                                            ; $5353: $0c
	push bc                                          ; $5354: $c5
	dec h                                            ; $5355: $25
	inc c                                            ; $5356: $0c
	call nz, $0c25                                   ; $5357: $c4 $25 $0c
	rr l                                             ; $535a: $cb $1d
	ld [$0822], sp                                   ; $535c: $08 $22 $08
	inc h                                            ; $535f: $24
	ld [$d1cd], sp                                   ; $5360: $08 $cd $d1
	sub c                                            ; $5363: $91
	sub [hl]                                         ; $5364: $96
	add hl, de                                       ; $5365: $19
	inc bc                                           ; $5366: $03
	dec h                                            ; $5367: $25
	inc c                                            ; $5368: $0c
	jp z, $0c25                                      ; $5369: $ca $25 $0c

	ret                                              ; $536c: $c9


	dec h                                            ; $536d: $25
	inc c                                            ; $536e: $0c
	ret z                                            ; $536f: $c8

	dec h                                            ; $5370: $25
	inc c                                            ; $5371: $0c
	rst JumpTable                                          ; $5372: $c7
	dec h                                            ; $5373: $25
	inc c                                            ; $5374: $0c
	push bc                                          ; $5375: $c5
	dec h                                            ; $5376: $25
	inc c                                            ; $5377: $0c
	call $0c24                                       ; $5378: $cd $24 $0c
	ld [hl+], a                                      ; $537b: $22
	inc c                                            ; $537c: $0c
	call $0c24                                       ; $537d: $cd $24 $0c
	jp z, $0c24                                      ; $5380: $ca $24 $0c

	ret z                                            ; $5383: $c8

	inc h                                            ; $5384: $24
	inc c                                            ; $5385: $0c
	add $24                                          ; $5386: $c6 $24
	inc c                                            ; $5388: $0c
	call $0c1f                                       ; $5389: $cd $1f $0c
	jp z, $0c1f                                      ; $538c: $ca $1f $0c

	ret z                                            ; $538f: $c8

	rra                                              ; $5390: $1f
	inc c                                            ; $5391: $0c
	add $1f                                          ; $5392: $c6 $1f
	inc c                                            ; $5394: $0c
	call $0c21                                       ; $5395: $cd $21 $0c
	jp z, $0c21                                      ; $5398: $ca $21 $0c

	ret                                              ; $539b: $c9


	ld hl, $c80c                                     ; $539c: $21 $0c $c8
	ld hl, $c70c                                     ; $539f: $21 $0c $c7
	ld hl, $c60c                                     ; $53a2: $21 $0c $c6
	ld hl, $cd0c                                     ; $53a5: $21 $0c $cd
	rra                                              ; $53a8: $1f
	inc c                                            ; $53a9: $0c
	ld hl, $220c                                     ; $53aa: $21 $0c $22
	inc c                                            ; $53ad: $0c
	jp z, $0c22                                      ; $53ae: $ca $22 $0c

	jp z, $0c22                                      ; $53b1: $ca $22 $0c

	ret                                              ; $53b4: $c9


	ld [hl+], a                                      ; $53b5: $22
	inc c                                            ; $53b6: $0c
	rst JumpTable                                          ; $53b7: $c7
	ld [hl+], a                                      ; $53b8: $22
	inc c                                            ; $53b9: $0c
	push bc                                          ; $53ba: $c5
	ld [hl+], a                                      ; $53bb: $22
	inc c                                            ; $53bc: $0c
	cp $ff                                           ; $53bd: $fe $ff
	or [hl]                                          ; $53bf: $b6
	ld c, e                                          ; $53c0: $4b
	ld hl, $0122                                     ; $53c1: $21 $22 $01
	ld bc, $1800                                     ; $53c4: $01 $00 $18
	cp $0a                                           ; $53c7: $fe $0a
	ld b, $0a                                        ; $53c9: $06 $0a
	ld a, [hl+]                                      ; $53cb: $2a
	ld de, $1618                                     ; $53cc: $11 $18 $16
	inc c                                            ; $53cf: $0c
	ld de, $0c0c                                     ; $53d0: $11 $0c $0c
	ld b, $0c                                        ; $53d3: $06 $0c
	ld a, [hl+]                                      ; $53d5: $2a
	cp [hl]                                          ; $53d6: $be
	inc c                                            ; $53d7: $0c
	inc de                                           ; $53d8: $13
	ld [de], a                                       ; $53d9: $12
	inc de                                           ; $53da: $13
	ld [de], a                                       ; $53db: $12
	cp [hl]                                          ; $53dc: $be
	ld de, $1106                                     ; $53dd: $11 $06 $11
	ld a, [hl+]                                      ; $53e0: $2a
	add hl, bc                                       ; $53e1: $09
	jr jr_033_53f5                                   ; $53e2: $18 $11

	jr jr_033_53f0                                   ; $53e4: $18 $0a

	ld b, $0a                                        ; $53e6: $06 $0a
	ld a, [hl+]                                      ; $53e8: $2a
	ld de, $1618                                     ; $53e9: $11 $18 $16
	jr @-$3c                                         ; $53ec: $18 $c2

	pop de                                           ; $53ee: $d1
	ld a, a                                          ; $53ef: $7f

jr_033_53f0:
	ld [hl+], a                                      ; $53f0: $22
	ld [de], a                                       ; $53f1: $12
	ld b, $12                                        ; $53f2: $06 $12
	ld a, [hl+]                                      ; $53f4: $2a

jr_033_53f5:
	dec c                                            ; $53f5: $0d
	jr jr_033_540a                                   ; $53f6: $18 $12

	jr @+$0e                                         ; $53f8: $18 $0c

	ld b, $0c                                        ; $53fa: $06 $0c
	ld a, [hl+]                                      ; $53fc: $2a
	jr jr_033_5417                                   ; $53fd: $18 $18

	inc de                                           ; $53ff: $13
	jr jr_033_5413                                   ; $5400: $18 $11

	ld b, $11                                        ; $5402: $06 $11
	ld a, [hl+]                                      ; $5404: $2a
	ld de, $0918                                     ; $5405: $11 $18 $09
	jr jr_033_5414                                   ; $5408: $18 $0a

jr_033_540a:
	ld b, $0a                                        ; $540a: $06 $0a
	ld b, d                                          ; $540c: $42
	ld de, $fe18                                     ; $540d: $11 $18 $fe
	rst $38                                          ; $5410: $ff
	ret nc                                           ; $5411: $d0

	ld c, e                                          ; $5412: $4b

jr_033_5413:
	nop                                              ; $5413: $00

jr_033_5414:
	jr jr_033_5414                                   ; $5414: $18 $fe

	ei                                               ; $5416: $fb

jr_033_5417:
	db $fd                                           ; $5417: $fd
	inc [hl]                                         ; $5418: $34
	ld d, h                                          ; $5419: $54
	ei                                               ; $541a: $fb
	inc bc                                           ; $541b: $03
	scf                                              ; $541c: $37
	ld b, $37                                        ; $541d: $06 $37

Jump_033_541f:
	ld b, $34                                        ; $541f: $06 $34
	inc c                                            ; $5421: $0c
	ld sp, $3306                                     ; $5422: $31 $06 $33
	ld b, $34                                        ; $5425: $06 $34
	inc c                                            ; $5427: $0c
	dec a                                            ; $5428: $3d
	ld b, $33                                        ; $5429: $06 $33
	ld b, $34                                        ; $542b: $06 $34
	inc c                                            ; $542d: $0c
	dec a                                            ; $542e: $3d
	inc c                                            ; $542f: $0c
	dec a                                            ; $5430: $3d
	inc c                                            ; $5431: $0c
	cp $ff                                           ; $5432: $fe $ff
	scf                                              ; $5434: $37
	ld b, $37                                        ; $5435: $06 $37
	ld b, $34                                        ; $5437: $06 $34
	inc c                                            ; $5439: $0c
	ld sp, $3306                                     ; $543a: $31 $06 $33
	ld b, $34                                        ; $543d: $06 $34
	inc c                                            ; $543f: $0c
	dec a                                            ; $5440: $3d
	ld b, $33                                        ; $5441: $06 $33
	ld b, $34                                        ; $5443: $06 $34
	inc c                                            ; $5445: $0c
	ld sp, $3306                                     ; $5446: $31 $06 $33
	ld b, $34                                        ; $5449: $06 $34
	inc c                                            ; $544b: $0c
	db $fd                                           ; $544c: $fd
	or h                                             ; $544d: $b4
	adc h                                            ; $544e: $8c
	pop bc                                           ; $544f: $c1
	nop                                              ; $5450: $00
	sub [hl]                                         ; $5451: $96
	rrca                                             ; $5452: $0f
	ld bc, $241c                                     ; $5453: $01 $1c $24
	inc e                                            ; $5456: $1c
	inc c                                            ; $5457: $0c
	or c                                             ; $5458: $b1
	or e                                             ; $5459: $b3
	ld a, [bc]                                       ; $545a: $0a
	rlca                                             ; $545b: $07
	inc e                                            ; $545c: $1c
	inc c                                            ; $545d: $0c
	jp nc, $1cc9                                     ; $545e: $d2 $c9 $1c

	inc c                                            ; $5461: $0c
	db $d3                                           ; $5462: $d3
	rst JumpTable                                          ; $5463: $c7
	inc e                                            ; $5464: $1c
	inc c                                            ; $5465: $0c
	or c                                             ; $5466: $b1
	pop af                                           ; $5467: $f1
	rrca                                             ; $5468: $0f
	ld bc, $181e                                     ; $5469: $01 $1e $18
	ld e, $0c                                        ; $546c: $1e $0c
	sub [hl]                                         ; $546e: $96
	ld e, $01                                        ; $546f: $1e $01
	sub a                                            ; $5471: $97
	adc d                                            ; $5472: $8a
	ld e, $48                                        ; $5473: $1e $48
	or c                                             ; $5475: $b1
	pop hl                                           ; $5476: $e1
	inc d                                            ; $5477: $14
	ld bc, $0097                                     ; $5478: $01 $97 $00
	ld e, $24                                        ; $547b: $1e $24
	or c                                             ; $547d: $b1
	or c                                             ; $547e: $b1
	jr z, jr_033_5483                                ; $547f: $28 $02

	dec e                                            ; $5481: $1d
	sbc h                                            ; $5482: $9c

jr_033_5483:
	db $fd                                           ; $5483: $fd
	sub a                                            ; $5484: $97
	ld d, [hl]                                       ; $5485: $56
	set 2, e                                         ; $5486: $cb $d3
	cp [hl]                                          ; $5488: $be
	inc c                                            ; $5489: $0c
	inc sp                                           ; $548a: $33
	ld [hl-], a                                      ; $548b: $32
	ld l, $29                                        ; $548c: $2e $29
	cp [hl]                                          ; $548e: $be
	or l                                             ; $548f: $b5
	or d                                             ; $5490: $b2
	ld bc, $0673                                     ; $5491: $01 $73 $06
	ld h, $0c                                        ; $5494: $26 $0c
	daa                                              ; $5496: $27
	inc c                                            ; $5497: $0c
	ret                                              ; $5498: $c9


	ld l, $18                                        ; $5499: $2e $18
	db $fd                                           ; $549b: $fd
	sub a                                            ; $549c: $97
	ld d, [hl]                                       ; $549d: $56
	or l                                             ; $549e: $b5
	or d                                             ; $549f: $b2
	ld [bc], a                                       ; $54a0: $02
	ld [hl], e                                       ; $54a1: $73

jr_033_54a2:
	rlca                                             ; $54a2: $07
	cp [hl]                                          ; $54a3: $be
	ld b, $22                                        ; $54a4: $06 $22
	inc h                                            ; $54a6: $24
	ld h, $27                                        ; $54a7: $26 $27
	add hl, hl                                       ; $54a9: $29
	dec hl                                           ; $54aa: $2b
	inc l                                            ; $54ab: $2c
	dec l                                            ; $54ac: $2d
	ld l, $30                                        ; $54ad: $2e $30
	cp [hl]                                          ; $54af: $be
	jp z, $0632                                      ; $54b0: $ca $32 $06

	inc sp                                           ; $54b3: $33
	ld b, $35                                        ; $54b4: $06 $35
	ld b, $c9                                        ; $54b6: $06 $c9
	scf                                              ; $54b8: $37
	ld b, $38                                        ; $54b9: $06 $38
	ld b, $39                                        ; $54bb: $06 $39
	ld b, $fd                                        ; $54bd: $06 $fd
	db $fd                                           ; $54bf: $fd
	ld d, [hl]                                       ; $54c0: $56
	db $fd                                           ; $54c1: $fd
	adc b                                            ; $54c2: $88
	ld d, a                                          ; $54c3: $57
	db $fd                                           ; $54c4: $fd
	rst GetHLinHL                                          ; $54c5: $cf
	ld d, a                                          ; $54c6: $57
	or l                                             ; $54c7: $b5
	add e                                            ; $54c8: $83
	ld [bc], a                                       ; $54c9: $02
	add hl, de                                       ; $54ca: $19
	ld b, $7e                                        ; $54cb: $06 $7e
	dec l                                            ; $54cd: $2d
	inc d                                            ; $54ce: $14
	and b                                            ; $54cf: $a0
	ld a, [hl+]                                      ; $54d0: $2a
	inc h                                            ; $54d1: $24
	or c                                             ; $54d2: $b1
	or e                                             ; $54d3: $b3
	add d                                            ; $54d4: $82
	ld bc, $064b                                     ; $54d5: $01 $4b $06
	ld c, e                                          ; $54d8: $4b
	ld b, $4b                                        ; $54d9: $06 $4b

jr_033_54db:
	inc c                                            ; $54db: $0c
	or c                                             ; $54dc: $b1
	sub e                                            ; $54dd: $93
	add hl, de                                       ; $54de: $19
	ld b, $25                                        ; $54df: $06 $25
	inc h                                            ; $54e1: $24
	ld a, [hl+]                                      ; $54e2: $2a
	inc h                                            ; $54e3: $24
	rst JumpTable                                          ; $54e4: $c7
	dec l                                            ; $54e5: $2d
	inc h                                            ; $54e6: $24
	ret                                              ; $54e7: $c9


	ld a, [hl+]                                      ; $54e8: $2a
	jr jr_033_5514                                   ; $54e9: $18 $29

	jr jr_033_54a2                                   ; $54eb: $18 $b5

	ldh a, [c]                                       ; $54ed: $f2
	ld bc, $0000                                     ; $54ee: $01 $00 $00
	dec de                                           ; $54f1: $1b
	ld b, $00                                        ; $54f2: $06 $00
	ld [de], a                                       ; $54f4: $12
	dec de                                           ; $54f5: $1b
	inc c                                            ; $54f6: $0c
	add hl, de                                       ; $54f7: $19
	inc h                                            ; $54f8: $24
	adc $be                                          ; $54f9: $ce $be
	inc c                                            ; $54fb: $0c
	dec de                                           ; $54fc: $1b
	dec e                                            ; $54fd: $1d
	nop                                              ; $54fe: $00
	ld e, $00                                        ; $54ff: $1e $00
	cp [hl]                                          ; $5501: $be
	jr nz, @+$26                                     ; $5502: $20 $24

	or l                                             ; $5504: $b5
	add e                                            ; $5505: $83
	ld [bc], a                                       ; $5506: $02
	add hl, de                                       ; $5507: $19
	ld b, $2a                                        ; $5508: $06 $2a
	inc h                                            ; $550a: $24
	or c                                             ; $550b: $b1
	db $d3                                           ; $550c: $d3
	add hl, de                                       ; $550d: $19
	ld [bc], a                                       ; $550e: $02
	ld c, e                                          ; $550f: $4b
	ld b, $4b                                        ; $5510: $06 $4b

jr_033_5512:
	ld b, $4b                                        ; $5512: $06 $4b

jr_033_5514:
	inc c                                            ; $5514: $0c
	or c                                             ; $5515: $b1
	sub e                                            ; $5516: $93
	ld [hl-], a                                      ; $5517: $32
	rlca                                             ; $5518: $07
	dec h                                            ; $5519: $25
	inc h                                            ; $551a: $24

jr_033_551b:
	ld a, [hl+]                                      ; $551b: $2a
	inc h                                            ; $551c: $24
	rst JumpTable                                          ; $551d: $c7
	dec l                                            ; $551e: $2d
	jr @+$2e                                         ; $551f: $18 $2c

	inc c                                            ; $5521: $0c
	ret z                                            ; $5522: $c8

	ld a, [hl+]                                      ; $5523: $2a

jr_033_5524:
	jr jr_033_54db                                   ; $5524: $18 $b5

	ld [hl], c                                       ; $5526: $71
	ld bc, $0732                                     ; $5527: $01 $32 $07
	add hl, hl                                       ; $552a: $29
	jr jr_033_5558                                   ; $552b: $18 $2b

	inc c                                            ; $552d: $0c
	nop                                              ; $552e: $00
	inc c                                            ; $552f: $0c
	dec hl                                           ; $5530: $2b
	inc c                                            ; $5531: $0c
	add hl, hl                                       ; $5532: $29
	inc h                                            ; $5533: $24
	dec hl                                           ; $5534: $2b
	inc c                                            ; $5535: $0c
	nop                                              ; $5536: $00
	inc c                                            ; $5537: $0c
	dec hl                                           ; $5538: $2b
	inc c                                            ; $5539: $0c
	add hl, hl                                       ; $553a: $29
	inc a                                            ; $553b: $3c
	ld a, [hl]                                       ; $553c: $7e
	nop                                              ; $553d: $00
	or l                                             ; $553e: $b5
	sub d                                            ; $553f: $92
	ld [bc], a                                       ; $5540: $02
	ld h, h                                          ; $5541: $64
	dec b                                            ; $5542: $05
	sub a                                            ; $5543: $97
	nop                                              ; $5544: $00
	ld [hl-], a                                      ; $5545: $32
	ld l, $b1                                        ; $5546: $2e $b1

jr_033_5548:
	ld b, e                                          ; $5548: $43
	sub [hl]                                         ; $5549: $96
	rlca                                             ; $554a: $07
	ld a, l                                          ; $554b: $7d
	ld bc, $0c22                                     ; $554c: $01 $22 $0c
	ld h, $0c                                        ; $554f: $26 $0c
	dec hl                                           ; $5551: $2b
	jr @-$41                                         ; $5552: $18 $bd

	ld [bc], a                                       ; $5554: $02

jr_033_5555:
	add hl, hl                                       ; $5555: $29
	jr jr_033_5564                                   ; $5556: $18 $0c

jr_033_5558:
	daa                                              ; $5558: $27
	jr jr_033_5581                                   ; $5559: $18 $26

	jr jr_033_5581                                   ; $555b: $18 $24

	jr jr_033_5585                                   ; $555d: $18 $26

	inc h                                            ; $555f: $24
	ld [hl+], a                                      ; $5560: $22
	inc c                                            ; $5561: $0c
	ld h, $0c                                        ; $5562: $26 $0c

jr_033_5564:
	inc l                                            ; $5564: $2c
	jr jr_033_5524                                   ; $5565: $18 $bd

	ld [bc], a                                       ; $5567: $02
	dec hl                                           ; $5568: $2b
	jr jr_033_556d                                   ; $5569: $18 $02

	or l                                             ; $556b: $b5
	and c                                            ; $556c: $a1

jr_033_556d:
	ld [bc], a                                       ; $556d: $02
	nop                                              ; $556e: $00
	nop                                              ; $556f: $00
	sub a                                            ; $5570: $97
	ld e, l                                          ; $5571: $5d
	ld a, l                                          ; $5572: $7d
	nop                                              ; $5573: $00
	dec bc                                           ; $5574: $0b
	jr @+$0e                                         ; $5575: $18 $0c

	jr @+$10                                         ; $5577: $18 $0e

	jr jr_033_5512                                   ; $5579: $18 $97

	ld c, a                                          ; $557b: $4f
	rrca                                             ; $557c: $0f
	jr nc, jr_033_5548                               ; $557d: $30 $c9

	sub a                                            ; $557f: $97
	nop                                              ; $5580: $00

jr_033_5581:
	rrca                                             ; $5581: $0f
	jr jr_033_551b                                   ; $5582: $18 $97

	ld e, h                                          ; $5584: $5c

jr_033_5585:
	ld de, $9718                                     ; $5585: $11 $18 $97
	ld c, a                                          ; $5588: $4f
	inc de                                           ; $5589: $13

jr_033_558a:
	jr nc, jr_033_5555                               ; $558a: $30 $c9

	sub a                                            ; $558c: $97
	nop                                              ; $558d: $00
	inc de                                           ; $558e: $13
	jr jr_033_5558                                   ; $558f: $18 $c7

	inc de                                           ; $5591: $13
	jr @-$38                                         ; $5592: $18 $c6

jr_033_5594:
	inc de                                           ; $5594: $13
	ld e, $c5                                        ; $5595: $1e $c5
	inc de                                           ; $5597: $13
	ld e, $96                                        ; $5598: $1e $96
	nop                                              ; $559a: $00
	nop                                              ; $559b: $00
	sub a                                            ; $559c: $97
	ld e, e                                          ; $559d: $5b
	inc c                                            ; $559e: $0c
	inc c                                            ; $559f: $0c
	rrca                                             ; $55a0: $0f
	inc c                                            ; $55a1: $0c
	ld d, $0c                                        ; $55a2: $16 $0c
	sub a                                            ; $55a4: $97
	ld c, e                                          ; $55a5: $4b
	cp [hl]                                          ; $55a6: $be
	jr jr_033_55be                                   ; $55a7: $18 $15

	inc de                                           ; $55a9: $13
	ld de, $be0f                                     ; $55aa: $11 $0f $be
	or l                                             ; $55ad: $b5
	ld d, e                                          ; $55ae: $53
	ld bc, $07c8                                     ; $55af: $01 $c8 $07
	sub a                                            ; $55b2: $97
	nop                                              ; $55b3: $00
	ld l, $0e                                        ; $55b4: $2e $0e
	or l                                             ; $55b6: $b5
	ld b, e                                          ; $55b7: $43

jr_033_55b8:
	ld [bc], a                                       ; $55b8: $02
	nop                                              ; $55b9: $00
	nop                                              ; $55ba: $00
	ld h, $20                                        ; $55bb: $26 $20
	ld [hl+], a                                      ; $55bd: $22

jr_033_55be:
	inc c                                            ; $55be: $0c
	ld h, $0c                                        ; $55bf: $26 $0c
	dec hl                                           ; $55c1: $2b
	jr jr_033_5581                                   ; $55c2: $18 $bd

	ld [bc], a                                       ; $55c4: $02
	add hl, hl                                       ; $55c5: $29

jr_033_55c6:
	jr jr_033_55d4                                   ; $55c6: $18 $0c

	daa                                              ; $55c8: $27
	jr jr_033_55f1                                   ; $55c9: $18 $26

	jr jr_033_55f1                                   ; $55cb: $18 $24

	jr @+$28                                         ; $55cd: $18 $26

	inc h                                            ; $55cf: $24
	ld [hl+], a                                      ; $55d0: $22
	inc c                                            ; $55d1: $0c

jr_033_55d2:
	ld h, $0c                                        ; $55d2: $26 $0c

jr_033_55d4:
	inc l                                            ; $55d4: $2c
	jr jr_033_5594                                   ; $55d5: $18 $bd

	ld [bc], a                                       ; $55d7: $02
	dec hl                                           ; $55d8: $2b
	jr @+$04                                         ; $55d9: $18 $02

	pop de                                           ; $55db: $d1
	jp z, $9792                                      ; $55dc: $ca $92 $97

	ld e, l                                          ; $55df: $5d
	dec bc                                           ; $55e0: $0b
	jr @+$0e                                         ; $55e1: $18 $0c

	jr jr_033_55f3                                   ; $55e3: $18 $0e

	jr @-$67                                         ; $55e5: $18 $97

	ld c, a                                          ; $55e7: $4f
	rrca                                             ; $55e8: $0f
	jr nc, @-$34                                     ; $55e9: $30 $ca

	sub a                                            ; $55eb: $97
	nop                                              ; $55ec: $00
	rrca                                             ; $55ed: $0f
	jr jr_033_55b8                                   ; $55ee: $18 $c8

	rrca                                             ; $55f0: $0f

jr_033_55f1:
	jr jr_033_558a                                   ; $55f1: $18 $97

jr_033_55f3:
	ld c, a                                          ; $55f3: $4f
	ld de, $ca30                                     ; $55f4: $11 $30 $ca
	sub a                                            ; $55f7: $97
	nop                                              ; $55f8: $00
	ld de, $c918                                     ; $55f9: $11 $18 $c9
	ld de, $9718                                     ; $55fc: $11 $18 $97
	ld c, a                                          ; $55ff: $4f
	inc de                                           ; $5600: $13
	jr nc, @-$33                                     ; $5601: $30 $cb

	sub a                                            ; $5603: $97
	nop                                              ; $5604: $00
	inc de                                           ; $5605: $13
	jr jr_033_55d2                                   ; $5606: $18 $ca

	inc de                                           ; $5608: $13
	jr @-$4d                                         ; $5609: $18 $b1

	sub c                                            ; $560b: $91
	ld [hl-], a                                      ; $560c: $32
	inc bc                                           ; $560d: $03
	sub a                                            ; $560e: $97
	nop                                              ; $560f: $00
	inc h                                            ; $5610: $24
	jr jr_033_5637                                   ; $5611: $18 $24

	jr jr_033_55c6                                   ; $5613: $18 $b1

	or e                                             ; $5615: $b3
	nop                                              ; $5616: $00
	nop                                              ; $5617: $00
	cp [hl]                                          ; $5618: $be
	ld b, $22                                        ; $5619: $06 $22
	inc h                                            ; $561b: $24
	ld h, $27                                        ; $561c: $26 $27
	add hl, hl                                       ; $561e: $29
	dec hl                                           ; $561f: $2b
	inc l                                            ; $5620: $2c
	dec l                                            ; $5621: $2d
	cp [hl]                                          ; $5622: $be
	db $fd                                           ; $5623: $fd
	db $fd                                           ; $5624: $fd
	ld d, [hl]                                       ; $5625: $56
	db $fd                                           ; $5626: $fd
	adc b                                            ; $5627: $88
	ld d, a                                          ; $5628: $57
	db $fd                                           ; $5629: $fd
	rst GetHLinHL                                          ; $562a: $cf
	ld d, a                                          ; $562b: $57
	or l                                             ; $562c: $b5
	di                                               ; $562d: $f3
	ld bc, $0000                                     ; $562e: $01 $00 $00
	nop                                              ; $5631: $00
	inc c                                            ; $5632: $0c
	ld a, [hl+]                                      ; $5633: $2a
	inc c                                            ; $5634: $0c
	nop                                              ; $5635: $00
	ld a, [bc]                                       ; $5636: $0a

jr_033_5637:
	push bc                                          ; $5637: $c5
	db $d3                                           ; $5638: $d3
	sub d                                            ; $5639: $92
	ld a, [hl]                                       ; $563a: $7e
	dec l                                            ; $563b: $2d
	nop                                              ; $563c: $00
	and b                                            ; $563d: $a0
	ld a, [hl+]                                      ; $563e: $2a
	jr jr_033_566b                                   ; $563f: $18 $2a

	jr jr_033_566c                                   ; $5641: $18 $29

	jr jr_033_566c                                   ; $5643: $18 $27

	jr jr_033_566e                                   ; $5645: $18 $27

	jr @+$2b                                         ; $5647: $18 $29

	jr jr_033_5675                                   ; $5649: $18 $2a

	ld c, $b1                                        ; $564b: $0e $b1
	sub c                                            ; $564d: $91
	ld [hl-], a                                      ; $564e: $32
	inc b                                            ; $564f: $04
	ld a, [hl]                                       ; $5650: $7e
	nop                                              ; $5651: $00
	ld [hl+], a                                      ; $5652: $22
	inc h                                            ; $5653: $24
	jr nz, jr_033_5662                               ; $5654: $20 $0c

	sub [hl]                                         ; $5656: $96
	ld [hl-], a                                      ; $5657: $32
	rlca                                             ; $5658: $07
	jr nz, jr_033_568b                               ; $5659: $20 $30

	or l                                             ; $565b: $b5
	add c                                            ; $565c: $81
	inc bc                                           ; $565d: $03
	ld [hl-], a                                      ; $565e: $32
	ld bc, $0c00                                     ; $565f: $01 $00 $0c

jr_033_5662:
	ld l, $18                                        ; $5662: $2e $18
	ld l, $18                                        ; $5664: $2e $18
	sub [hl]                                         ; $5666: $96

jr_033_5667:
	ld [hl-], a                                      ; $5667: $32
	inc b                                            ; $5668: $04
	inc l                                            ; $5669: $2c
	inc h                                            ; $566a: $24

jr_033_566b:
	rst GetHLinHL                                          ; $566b: $cf

jr_033_566c:
	pop de                                           ; $566c: $d1
	sub b                                            ; $566d: $90

jr_033_566e:
	nop                                              ; $566e: $00
	jr @-$68                                         ; $566f: $18 $96

	ld e, $01                                        ; $5671: $1e $01
	cp [hl]                                          ; $5673: $be

jr_033_5674:
	inc h                                            ; $5674: $24

jr_033_5675:
	inc e                                            ; $5675: $1c
	ld e, $1c                                        ; $5676: $1e $1c
	ld e, $be                                        ; $5678: $1e $be
	ld e, $0c                                        ; $567a: $1e $0c
	sub [hl]                                         ; $567c: $96
	ld e, d                                          ; $567d: $5a
	rlca                                             ; $567e: $07
	cp l                                             ; $567f: $bd
	ld [bc], a                                       ; $5680: $02
	jr nz, @+$0e                                     ; $5681: $20 $0c

	ld d, h                                          ; $5683: $54
	jr nz, @+$08                                     ; $5684: $20 $06

	jr nz, @+$08                                     ; $5686: $20 $06

	jr nz, jr_033_5696                               ; $5688: $20 $0c

	push bc                                          ; $568a: $c5

jr_033_568b:
	jr nz, jr_033_5696                               ; $568b: $20 $09

	call nz, $0920                                   ; $568d: $c4 $20 $09
	jp $0620                                         ; $5690: $c3 $20 $06


	jp nz, $0620                                     ; $5693: $c2 $20 $06

jr_033_5696:
	rst $38                                          ; $5696: $ff
	or l                                             ; $5697: $b5
	db $d3                                           ; $5698: $d3
	ld [bc], a                                       ; $5699: $02
	inc d                                            ; $569a: $14
	inc bc                                           ; $569b: $03
	sub a                                            ; $569c: $97
	nop                                              ; $569d: $00
	cp [hl]                                          ; $569e: $be
	inc c                                            ; $569f: $0c
	add hl, de                                       ; $56a0: $19
	jr nz, jr_033_56c8                               ; $56a1: $20 $25

	add hl, hl                                       ; $56a3: $29
	inc l                                            ; $56a4: $2c
	add hl, hl                                       ; $56a5: $29
	dec h                                            ; $56a6: $25
	jr nz, jr_033_5667                               ; $56a7: $20 $be

	call $bed2                                       ; $56a9: $cd $d2 $be
	inc c                                            ; $56ac: $0c
	jr jr_033_56cf                                   ; $56ad: $18 $20

	inc h                                            ; $56af: $24
	daa                                              ; $56b0: $27
	inc l                                            ; $56b1: $2c
	daa                                              ; $56b2: $27
	inc h                                            ; $56b3: $24
	jr nz, jr_033_5674                               ; $56b4: $20 $be

	call $bed3                                       ; $56b6: $cd $d3 $be
	inc c                                            ; $56b9: $0c
	ld d, $22                                        ; $56ba: $16 $22
	dec h                                            ; $56bc: $25
	add hl, hl                                       ; $56bd: $29

jr_033_56be:
	ld l, $29                                        ; $56be: $2e $29
	dec h                                            ; $56c0: $25
	ld [hl+], a                                      ; $56c1: $22
	cp [hl]                                          ; $56c2: $be
	call $bed2                                       ; $56c3: $cd $d2 $be
	inc c                                            ; $56c6: $0c
	ld [de], a                                       ; $56c7: $12

jr_033_56c8:
	ld [hl+], a                                      ; $56c8: $22
	dec h                                            ; $56c9: $25
	ld a, [hl+]                                      ; $56ca: $2a
	ld l, $2a                                        ; $56cb: $2e $2a
	dec h                                            ; $56cd: $25
	ld [hl+], a                                      ; $56ce: $22

jr_033_56cf:
	cp [hl]                                          ; $56cf: $be
	call $bed3                                       ; $56d0: $cd $d3 $be
	inc c                                            ; $56d3: $0c
	dec de                                           ; $56d4: $1b
	ld [hl+], a                                      ; $56d5: $22
	dec h                                            ; $56d6: $25
	ld a, [hl+]                                      ; $56d7: $2a
	ld l, $2a                                        ; $56d8: $2e $2a
	dec h                                            ; $56da: $25
	ld [hl+], a                                      ; $56db: $22
	cp [hl]                                          ; $56dc: $be
	call $bed2                                       ; $56dd: $cd $d2 $be
	inc c                                            ; $56e0: $0c
	dec e                                            ; $56e1: $1d
	jr nz, @+$26                                     ; $56e2: $20 $24

	add hl, hl                                       ; $56e4: $29
	inc l                                            ; $56e5: $2c
	add hl, hl                                       ; $56e6: $29
	inc h                                            ; $56e7: $24
	jr nz, @-$40                                     ; $56e8: $20 $be

	call $bed3                                       ; $56ea: $cd $d3 $be
	inc c                                            ; $56ed: $0c
	ld e, $22                                        ; $56ee: $1e $22
	dec h                                            ; $56f0: $25
	ld a, [hl+]                                      ; $56f1: $2a
	cp [hl]                                          ; $56f2: $be
	call $bed2                                       ; $56f3: $cd $d2 $be
	inc c                                            ; $56f6: $0c
	jr nz, @+$26                                     ; $56f7: $20 $24

jr_033_56f9:
	daa                                              ; $56f9: $27
	inc l                                            ; $56fa: $2c
	cp [hl]                                          ; $56fb: $be
	db $fd                                           ; $56fc: $fd
	or l                                             ; $56fd: $b5
	di                                               ; $56fe: $f3
	ld bc, $020f                                     ; $56ff: $01 $0f $02
	ld a, [hl]                                       ; $5702: $7e
	cpl                                              ; $5703: $2f
	rrca                                             ; $5704: $0f
	and b                                            ; $5705: $a0
	dec h                                            ; $5706: $25
	jr jr_033_56be                                   ; $5707: $18 $b5

	ld d, e                                          ; $5709: $53
	ld [bc], a                                       ; $570a: $02
	nop                                              ; $570b: $00
	nop                                              ; $570c: $00
	ld a, [hl]                                       ; $570d: $7e
	dec l                                            ; $570e: $2d
	nop                                              ; $570f: $00
	and b                                            ; $5710: $a0
	nop                                              ; $5711: $00
	ld a, [bc]                                       ; $5712: $0a

jr_033_5713:
	ld l, $18                                        ; $5713: $2e $18
	ld a, [hl+]                                      ; $5715: $2a
	jr jr_033_5746                                   ; $5716: $18 $2e

	jr jr_033_5746                                   ; $5718: $18 $2c

	jr jr_033_5746                                   ; $571a: $18 $2a

	jr jr_033_5747                                   ; $571c: $18 $29

	jr jr_033_5747                                   ; $571e: $18 $27

	ld c, $b1                                        ; $5720: $0e $b1
	sub c                                            ; $5722: $91
	ld [hl], e                                       ; $5723: $73
	rlca                                             ; $5724: $07
	ld a, [hl]                                       ; $5725: $7e
	dec l                                            ; $5726: $2d
	inc d                                            ; $5727: $14
	and b                                            ; $5728: $a0
	jr nz, jr_033_575b                               ; $5729: $20 $30

	ld [hl+], a                                      ; $572b: $22
	jr nc, @+$26                                     ; $572c: $30 $24

	jr nc, jr_033_5755                               ; $572e: $30 $25

	inc h                                            ; $5730: $24
	jp z, $91d2                                      ; $5731: $ca $d2 $91

	ld a, [hl]                                       ; $5734: $7e
	nop                                              ; $5735: $00
	dec h                                            ; $5736: $25
	add hl, bc                                       ; $5737: $09
	nop                                              ; $5738: $00
	inc bc                                           ; $5739: $03
	or c                                             ; $573a: $b1
	ldh a, [c]                                       ; $573b: $f2
	rrca                                             ; $573c: $0f

jr_033_573d:
	ld [bc], a                                       ; $573d: $02
	ld a, [hl]                                       ; $573e: $7e
	cpl                                              ; $573f: $2f
	rrca                                             ; $5740: $0f
	dec h                                            ; $5741: $25
	jr jr_033_56f9                                   ; $5742: $18 $b5

	ld d, d                                          ; $5744: $52
	ld [bc], a                                       ; $5745: $02

jr_033_5746:
	nop                                              ; $5746: $00

jr_033_5747:
	nop                                              ; $5747: $00
	ld a, [hl]                                       ; $5748: $7e

jr_033_5749:
	dec l                                            ; $5749: $2d
	nop                                              ; $574a: $00
	and b                                            ; $574b: $a0
	nop                                              ; $574c: $00
	ld a, [bc]                                       ; $574d: $0a
	ld l, $18                                        ; $574e: $2e $18
	ld a, [hl+]                                      ; $5750: $2a
	jr @+$2b                                         ; $5751: $18 $29

	jr jr_033_5713                                   ; $5753: $18 $be

jr_033_5755:
	jr jr_033_577e                                   ; $5755: $18 $27

	inc h                                            ; $5757: $24
	dec h                                            ; $5758: $25
	daa                                              ; $5759: $27
	cp [hl]                                          ; $575a: $be

jr_033_575b:
	add hl, hl                                       ; $575b: $29
	ld c, $b1                                        ; $575c: $0e $b1
	sub c                                            ; $575e: $91
	ld [hl], e                                       ; $575f: $73
	rlca                                             ; $5760: $07
	ld a, [hl]                                       ; $5761: $7e
	nop                                              ; $5762: $00
	jr nz, jr_033_577d                               ; $5763: $20 $18

	dec h                                            ; $5765: $25
	jr @+$26                                         ; $5766: $18 $24

	jr jr_033_573d                                   ; $5768: $18 $d3

	rst GetHLinHL                                          ; $576a: $cf
	sub c                                            ; $576b: $91
	cp [hl]                                          ; $576c: $be
	ld b, $17                                        ; $576d: $06 $17
	ld d, $17                                        ; $576f: $16 $17
	add hl, de                                       ; $5771: $19
	dec de                                           ; $5772: $1b
	inc e                                            ; $5773: $1c
	dec e                                            ; $5774: $1d
	ld e, $20                                        ; $5775: $1e $20
	ld [hl+], a                                      ; $5777: $22
	inc hl                                           ; $5778: $23
	inc h                                            ; $5779: $24
	cp [hl]                                          ; $577a: $be
	adc $d3                                          ; $577b: $ce $d3

jr_033_577d:
	dec h                                            ; $577d: $25

jr_033_577e:
	ld b, $27                                        ; $577e: $06 $27
	ld b, $cd                                        ; $5780: $06 $cd
	db $d3                                           ; $5782: $d3
	jr z, @+$08                                      ; $5783: $28 $06

	add hl, hl                                       ; $5785: $29
	ld b, $fd                                        ; $5786: $06 $fd
	or l                                             ; $5788: $b5
	di                                               ; $5789: $f3
	ld bc, $020f                                     ; $578a: $01 $0f $02
	ld a, [hl]                                       ; $578d: $7e
	cpl                                              ; $578e: $2f
	rrca                                             ; $578f: $0f
	and b                                            ; $5790: $a0
	dec h                                            ; $5791: $25
	jr jr_033_5749                                   ; $5792: $18 $b5

	ld d, e                                          ; $5794: $53
	ld [bc], a                                       ; $5795: $02
	nop                                              ; $5796: $00
	nop                                              ; $5797: $00
	ld a, [hl]                                       ; $5798: $7e
	dec l                                            ; $5799: $2d
	nop                                              ; $579a: $00
	and b                                            ; $579b: $a0
	nop                                              ; $579c: $00
	ld a, [bc]                                       ; $579d: $0a
	ld l, $18                                        ; $579e: $2e $18
	ld a, [hl+]                                      ; $57a0: $2a
	jr jr_033_57d1                                   ; $57a1: $18 $2e

	jr jr_033_57d1                                   ; $57a3: $18 $2c

	jr jr_033_57d1                                   ; $57a5: $18 $2a

	jr @+$2b                                         ; $57a7: $18 $29

	jr jr_033_57d5                                   ; $57a9: $18 $2a

	ld c, $b1                                        ; $57ab: $0e $b1
	pop bc                                           ; $57ad: $c1
	inc a                                            ; $57ae: $3c
	dec b                                            ; $57af: $05
	ld a, [hl]                                       ; $57b0: $7e
	inc l                                            ; $57b1: $2c
	inc d                                            ; $57b2: $14
	xor c                                            ; $57b3: $a9
	dec e                                            ; $57b4: $1d
	jr nc, @+$1d                                     ; $57b5: $30 $1b

	jr nc, @+$1b                                     ; $57b7: $30 $19

	inc c                                            ; $57b9: $0c
	or l                                             ; $57ba: $b5
	ldh a, [c]                                       ; $57bb: $f2
	ld bc, $0246                                     ; $57bc: $01 $46 $02
	ld a, [hl]                                       ; $57bf: $7e
	cpl                                              ; $57c0: $2f
	dec c                                            ; $57c1: $0d
	ld l, $18                                        ; $57c2: $2e $18
	dec h                                            ; $57c4: $25
	jr jr_033_5845                                   ; $57c5: $18 $7e

	nop                                              ; $57c7: $00
	dec h                                            ; $57c8: $25
	inc c                                            ; $57c9: $0c
	daa                                              ; $57ca: $27
	inc c                                            ; $57cb: $0c
	add hl, hl                                       ; $57cc: $29
	inc c                                            ; $57cd: $0c
	db $fd                                           ; $57ce: $fd
	or l                                             ; $57cf: $b5
	ldh a, [c]                                       ; $57d0: $f2

jr_033_57d1:
	ld bc, $0000                                     ; $57d1: $01 $00 $00
	nop                                              ; $57d4: $00

jr_033_57d5:
	inc c                                            ; $57d5: $0c
	ld a, [hl+]                                      ; $57d6: $2a
	inc c                                            ; $57d7: $0c
	nop                                              ; $57d8: $00
	ld a, [bc]                                       ; $57d9: $0a
	push bc                                          ; $57da: $c5
	db $d3                                           ; $57db: $d3
	sub d                                            ; $57dc: $92
	ld a, [hl]                                       ; $57dd: $7e
	dec l                                            ; $57de: $2d
	nop                                              ; $57df: $00
	and b                                            ; $57e0: $a0
	ld a, [hl+]                                      ; $57e1: $2a
	jr jr_033_580e                                   ; $57e2: $18 $2a

	jr jr_033_580f                                   ; $57e4: $18 $29

	jr jr_033_580f                                   ; $57e6: $18 $27

	jr jr_033_5811                                   ; $57e8: $18 $27

	jr jr_033_5811                                   ; $57ea: $18 $25

	jr jr_033_5812                                   ; $57ec: $18 $24

	ld c, $b1                                        ; $57ee: $0e $b1
	ld [hl], c                                       ; $57f0: $71
	jr z, jr_033_57f7                                ; $57f1: $28 $04

	ld a, [hl]                                       ; $57f3: $7e
	dec l                                            ; $57f4: $2d
	inc d                                            ; $57f5: $14
	and b                                            ; $57f6: $a0

jr_033_57f7:
	ld a, [hl+]                                      ; $57f7: $2a
	inc h                                            ; $57f8: $24
	add hl, hl                                       ; $57f9: $29
	inc c                                            ; $57fa: $0c
	sub [hl]                                         ; $57fb: $96
	jr z, @+$09                                      ; $57fc: $28 $07

	add hl, hl                                       ; $57fe: $29
	jr nc, @-$49                                     ; $57ff: $30 $b5

	sub c                                            ; $5801: $91
	inc bc                                           ; $5802: $03
	ld [hl-], a                                      ; $5803: $32
	ld bc, $007e                                     ; $5804: $01 $7e $00
	nop                                              ; $5807: $00
	inc c                                            ; $5808: $0c
	daa                                              ; $5809: $27
	jr @+$29                                         ; $580a: $18 $27

	jr @-$68                                         ; $580c: $18 $96

jr_033_580e:
	ld [hl-], a                                      ; $580e: $32

jr_033_580f:
	inc b                                            ; $580f: $04

jr_033_5810:
	dec h                                            ; $5810: $25

jr_033_5811:
	inc h                                            ; $5811: $24

jr_033_5812:
	db $fd                                           ; $5812: $fd
	or [hl]                                          ; $5813: $b6
	adc h                                            ; $5814: $8c
	add c                                            ; $5815: $81
	ld bc, $0728                                     ; $5816: $01 $28 $07
	db $fd                                           ; $5819: $fd
	ld c, [hl]                                       ; $581a: $4e
	ld e, e                                          ; $581b: $5b
	inc a                                            ; $581c: $3c
	ld b, $c5                                        ; $581d: $06 $c5
	ld a, [hl]                                       ; $581f: $7e
	dec l                                            ; $5820: $2d
	ld [hl-], a                                      ; $5821: $32
	xor c                                            ; $5822: $a9
	dec a                                            ; $5823: $3d
	ld l, h                                          ; $5824: $6c
	or l                                             ; $5825: $b5
	db $e3                                           ; $5826: $e3
	ld [bc], a                                       ; $5827: $02
	ld c, e                                          ; $5828: $4b
	ld [bc], a                                       ; $5829: $02
	inc l                                            ; $582a: $2c
	inc c                                            ; $582b: $0c
	sra h                                            ; $582c: $cb $2c
	inc c                                            ; $582e: $0c
	adc $d2                                          ; $582f: $ce $d2
	ld sp, $cb0c                                     ; $5831: $31 $0c $cb
	ld sp, $ce0c                                     ; $5834: $31 $0c $ce
	db $d3                                           ; $5837: $d3
	inc sp                                           ; $5838: $33
	inc c                                            ; $5839: $0c
	swap e                                           ; $583a: $cb $33
	inc c                                            ; $583c: $0c
	adc $d2                                          ; $583d: $ce $d2
	jr c, jr_033_584d                                ; $583f: $38 $0c

	sub d                                            ; $5841: $92
	rst JumpTable                                          ; $5842: $c7
	jr c, jr_033_5851                                ; $5843: $38 $0c

jr_033_5845:
	db $fd                                           ; $5845: $fd
	ld e, l                                          ; $5846: $5d
	ld e, d                                          ; $5847: $5a
	or c                                             ; $5848: $b1
	ldh [c], a                                       ; $5849: $e2
	ld [hl-], a                                      ; $584a: $32
	rlca                                             ; $584b: $07
	ld a, [hl]                                       ; $584c: $7e

jr_033_584d:
	inc l                                            ; $584d: $2c
	add hl, de                                       ; $584e: $19
	and b                                            ; $584f: $a0
	ld [hl+], a                                      ; $5850: $22

jr_033_5851:
	ld [hl], $b5                                     ; $5851: $36 $b5
	ld h, d                                          ; $5853: $62
	ld bc, $0773                                     ; $5854: $01 $73 $07
	ld a, [hl]                                       ; $5857: $7e
	nop                                              ; $5858: $00
	ld h, $0c                                        ; $5859: $26 $0c
	daa                                              ; $585b: $27
	inc c                                            ; $585c: $0c
	ld a, [hl]                                       ; $585d: $7e
	inc l                                            ; $585e: $2c
	ld a, [bc]                                       ; $585f: $0a
	and b                                            ; $5860: $a0
	ld l, $1e                                        ; $5861: $2e $1e
	ld a, [hl]                                       ; $5863: $7e
	nop                                              ; $5864: $00
	db $fd                                           ; $5865: $fd
	ld e, l                                          ; $5866: $5d
	ld e, d                                          ; $5867: $5a
	or c                                             ; $5868: $b1
	jp nc, $0746                                     ; $5869: $d2 $46 $07

	ld a, [hl]                                       ; $586c: $7e
	inc l                                            ; $586d: $2c
	jr z, jr_033_5810                                ; $586e: $28 $a0

	ld [hl+], a                                      ; $5870: $22
	ld d, h                                          ; $5871: $54
	adc $d3                                          ; $5872: $ce $d3
	sub c                                            ; $5874: $91
	ld a, [hl]                                       ; $5875: $7e
	nop                                              ; $5876: $00
	jr z, jr_033_587f                                ; $5877: $28 $06

	add hl, hl                                       ; $5879: $29
	ld b, $fd                                        ; $587a: $06 $fd
	ld a, e                                          ; $587c: $7b
	ld e, e                                          ; $587d: $5b
	db $fd                                           ; $587e: $fd

jr_033_587f:
	add sp, $5b                                      ; $587f: $e8 $5b
	db $fd                                           ; $5881: $fd
	jr z, jr_033_58e0                                ; $5882: $28 $5c

	or l                                             ; $5884: $b5
	pop af                                           ; $5885: $f1
	nop                                              ; $5886: $00
	ld [hl-], a                                      ; $5887: $32
	rlca                                             ; $5888: $07
	sub a                                            ; $5889: $97
	ld c, a                                          ; $588a: $4f
	inc sp                                           ; $588b: $33
	ld h, b                                          ; $588c: $60
	sub [hl]                                         ; $588d: $96
	ld e, $07                                        ; $588e: $1e $07
	sub a                                            ; $5890: $97
	ld a, e                                          ; $5891: $7b
	dec [hl]                                         ; $5892: $35
	inc h                                            ; $5893: $24
	inc sp                                           ; $5894: $33
	inc h                                            ; $5895: $24
	sub a                                            ; $5896: $97
	ld a, d                                          ; $5897: $7a
	ld sp, $9618                                     ; $5898: $31 $18 $96
	ld [hl-], a                                      ; $589b: $32
	rlca                                             ; $589c: $07
	sub a                                            ; $589d: $97
	ld c, a                                          ; $589e: $4f
	inc l                                            ; $589f: $2c
	ld h, b                                          ; $58a0: $60
	sub c                                            ; $58a1: $91
	call z, $97d3                                    ; $58a2: $cc $d3 $97
	nop                                              ; $58a5: $00
	cp [hl]                                          ; $58a6: $be
	inc c                                            ; $58a7: $0c
	daa                                              ; $58a8: $27
	add hl, hl                                       ; $58a9: $29
	nop                                              ; $58aa: $00
	ld a, [hl+]                                      ; $58ab: $2a
	nop                                              ; $58ac: $00
	cp [hl]                                          ; $58ad: $be
	inc l                                            ; $58ae: $2c
	inc h                                            ; $58af: $24
	pop de                                           ; $58b0: $d1
	rst GetHLinHL                                          ; $58b1: $cf
	sub b                                            ; $58b2: $90
	sub a                                            ; $58b3: $97
	ld e, a                                          ; $58b4: $5f
	inc sp                                           ; $58b5: $33
	ld h, b                                          ; $58b6: $60
	sub [hl]                                         ; $58b7: $96
	ld e, $07                                        ; $58b8: $1e $07
	sub a                                            ; $58ba: $97
	ld a, d                                          ; $58bb: $7a
	dec [hl]                                         ; $58bc: $35
	inc h                                            ; $58bd: $24
	inc sp                                           ; $58be: $33
	inc h                                            ; $58bf: $24
	ld sp, $9618                                     ; $58c0: $31 $18 $96
	ld [hl-], a                                      ; $58c3: $32
	rlca                                             ; $58c4: $07
	sub a                                            ; $58c5: $97
	ld c, a                                          ; $58c6: $4f
	jr nc, jr_033_5929                               ; $58c7: $30 $60

	or l                                             ; $58c9: $b5
	jp nc, $0002                                     ; $58ca: $d2 $02 $00

	nop                                              ; $58cd: $00
	sub a                                            ; $58ce: $97
	nop                                              ; $58cf: $00
	cp [hl]                                          ; $58d0: $be
	ld b, $21                                        ; $58d1: $06 $21
	rra                                              ; $58d3: $1f
	ld hl, $2422                                     ; $58d4: $21 $22 $24
	ld h, $27                                        ; $58d7: $26 $27
	add hl, hl                                       ; $58d9: $29
	cp [hl]                                          ; $58da: $be
	call z, $06be                                    ; $58db: $cc $be $06
	dec l                                            ; $58de: $2d
	dec hl                                           ; $58df: $2b

jr_033_58e0:
	add hl, hl                                       ; $58e0: $29
	dec hl                                           ; $58e1: $2b
	dec l                                            ; $58e2: $2d
	ld l, $30                                        ; $58e3: $2e $30
	ld sp, $b5be                                     ; $58e5: $31 $be $b5
	add c                                            ; $58e8: $81
	ld [bc], a                                       ; $58e9: $02
	ld [hl-], a                                      ; $58ea: $32
	inc b                                            ; $58eb: $04
	sub a                                            ; $58ec: $97
	nop                                              ; $58ed: $00
	ld h, $24                                        ; $58ee: $26 $24
	ld [hl+], a                                      ; $58f0: $22
	inc c                                            ; $58f1: $0c
	ld h, $0c                                        ; $58f2: $26 $0c
	dec hl                                           ; $58f4: $2b
	jr jr_033_5920                                   ; $58f5: $18 $29

	inc h                                            ; $58f7: $24
	daa                                              ; $58f8: $27
	jr @+$28                                         ; $58f9: $18 $26

	jr @+$26                                         ; $58fb: $18 $24

	jr @+$28                                         ; $58fd: $18 $26

	inc h                                            ; $58ff: $24
	ld [hl+], a                                      ; $5900: $22
	inc c                                            ; $5901: $0c
	ld h, $0c                                        ; $5902: $26 $0c
	inc l                                            ; $5904: $2c
	jr jr_033_5932                                   ; $5905: $18 $2b

	inc h                                            ; $5907: $24
	or c                                             ; $5908: $b1
	add c                                            ; $5909: $81
	ld [hl-], a                                      ; $590a: $32
	dec b                                            ; $590b: $05
	inc l                                            ; $590c: $2c
	inc c                                            ; $590d: $0c
	add $2c                                          ; $590e: $c6 $2c
	inc c                                            ; $5910: $0c
	ret z                                            ; $5911: $c8

	dec hl                                           ; $5912: $2b
	inc c                                            ; $5913: $0c
	add $2b                                          ; $5914: $c6 $2b
	inc c                                            ; $5916: $0c
	ret                                              ; $5917: $c9


	ld h, $0c                                        ; $5918: $26 $0c
	rst JumpTable                                          ; $591a: $c7
	ld h, $0c                                        ; $591b: $26 $0c
	ret z                                            ; $591d: $c8

	daa                                              ; $591e: $27

jr_033_591f:
	inc c                                            ; $591f: $0c

jr_033_5920:
	add $27                                          ; $5920: $c6 $27
	inc c                                            ; $5922: $0c
	call nz, $0c27                                   ; $5923: $c4 $27 $0c
	ret z                                            ; $5926: $c8

	daa                                              ; $5927: $27
	inc c                                            ; $5928: $0c

jr_033_5929:
	ld h, $0c                                        ; $5929: $26 $0c
	daa                                              ; $592b: $27
	inc c                                            ; $592c: $0c
	rst JumpTable                                          ; $592d: $c7
	daa                                              ; $592e: $27
	inc c                                            ; $592f: $0c
	or c                                             ; $5930: $b1
	ld [hl], c                                       ; $5931: $71

jr_033_5932:
	ld d, b                                          ; $5932: $50
	rlca                                             ; $5933: $07
	inc h                                            ; $5934: $24
	ld d, h                                          ; $5935: $54
	or c                                             ; $5936: $b1
	add c                                            ; $5937: $81
	ld [hl-], a                                      ; $5938: $32
	dec b                                            ; $5939: $05
	ld h, $0c                                        ; $593a: $26 $0c
	add $26                                          ; $593c: $c6 $26
	inc c                                            ; $593e: $0c
	ret z                                            ; $593f: $c8

	daa                                              ; $5940: $27
	inc c                                            ; $5941: $0c
	add $27                                          ; $5942: $c6 $27
	inc c                                            ; $5944: $0c
	ret z                                            ; $5945: $c8

	ld h, $0c                                        ; $5946: $26 $0c
	add $26                                          ; $5948: $c6 $26
	inc c                                            ; $594a: $0c
	ret z                                            ; $594b: $c8

	inc h                                            ; $594c: $24
	inc c                                            ; $594d: $0c
	ld [hl+], a                                      ; $594e: $22
	inc c                                            ; $594f: $0c
	add $22                                          ; $5950: $c6 $22
	inc c                                            ; $5952: $0c
	ret z                                            ; $5953: $c8

	inc h                                            ; $5954: $24
	inc c                                            ; $5955: $0c
	add $24                                          ; $5956: $c6 $24
	inc c                                            ; $5958: $0c
	call nz, $0c24                                   ; $5959: $c4 $24 $0c
	or l                                             ; $595c: $b5
	sub e                                            ; $595d: $93
	ld bc, $0000                                     ; $595e: $01 $00 $00
	sub a                                            ; $5961: $97
	ld c, h                                          ; $5962: $4c
	add hl, hl                                       ; $5963: $29
	jr @+$2d                                         ; $5964: $18 $2b

	jr jr_033_5995                                   ; $5966: $18 $2d

	jr jr_033_591f                                   ; $5968: $18 $b5

	add c                                            ; $596a: $81
	ld [bc], a                                       ; $596b: $02
	ld [hl-], a                                      ; $596c: $32
	inc b                                            ; $596d: $04
	sub a                                            ; $596e: $97
	nop                                              ; $596f: $00
	ld h, $24                                        ; $5970: $26 $24
	ld [hl+], a                                      ; $5972: $22
	inc c                                            ; $5973: $0c
	ld h, $0c                                        ; $5974: $26 $0c
	dec hl                                           ; $5976: $2b
	jr jr_033_59a2                                   ; $5977: $18 $29

	inc h                                            ; $5979: $24
	daa                                              ; $597a: $27
	jr @+$28                                         ; $597b: $18 $26

	jr @+$26                                         ; $597d: $18 $24

	jr @+$28                                         ; $597f: $18 $26

	inc h                                            ; $5981: $24
	ld [hl+], a                                      ; $5982: $22
	inc c                                            ; $5983: $0c
	ld h, $0c                                        ; $5984: $26 $0c
	inc l                                            ; $5986: $2c
	jr jr_033_59b4                                   ; $5987: $18 $2b

	inc h                                            ; $5989: $24
	or c                                             ; $598a: $b1
	add c                                            ; $598b: $81
	ld [hl-], a                                      ; $598c: $32
	dec b                                            ; $598d: $05
	inc l                                            ; $598e: $2c
	inc c                                            ; $598f: $0c
	add $2c                                          ; $5990: $c6 $2c
	inc c                                            ; $5992: $0c
	ret z                                            ; $5993: $c8

	dec hl                                           ; $5994: $2b

jr_033_5995:
	inc c                                            ; $5995: $0c
	add $2b                                          ; $5996: $c6 $2b
	inc c                                            ; $5998: $0c
	ret                                              ; $5999: $c9


	ld h, $0c                                        ; $599a: $26 $0c
	rst JumpTable                                          ; $599c: $c7
	ld h, $0c                                        ; $599d: $26 $0c
	ret z                                            ; $599f: $c8

	daa                                              ; $59a0: $27
	inc c                                            ; $59a1: $0c

jr_033_59a2:
	add $27                                          ; $59a2: $c6 $27
	inc c                                            ; $59a4: $0c
	call nz, $0c27                                   ; $59a5: $c4 $27 $0c
	ret z                                            ; $59a8: $c8

	daa                                              ; $59a9: $27
	inc c                                            ; $59aa: $0c
	ld h, $0c                                        ; $59ab: $26 $0c
	daa                                              ; $59ad: $27
	inc c                                            ; $59ae: $0c
	add $27                                          ; $59af: $c6 $27
	inc c                                            ; $59b1: $0c
	or c                                             ; $59b2: $b1
	ld [hl], c                                       ; $59b3: $71

jr_033_59b4:
	ld d, b                                          ; $59b4: $50
	rlca                                             ; $59b5: $07
	inc h                                            ; $59b6: $24
	ld d, h                                          ; $59b7: $54
	or c                                             ; $59b8: $b1
	add c                                            ; $59b9: $81
	ld [hl-], a                                      ; $59ba: $32
	dec b                                            ; $59bb: $05
	ld h, $0c                                        ; $59bc: $26 $0c
	add $26                                          ; $59be: $c6 $26
	inc c                                            ; $59c0: $0c
	ret z                                            ; $59c1: $c8

jr_033_59c2:
	daa                                              ; $59c2: $27
	inc c                                            ; $59c3: $0c
	add $27                                          ; $59c4: $c6 $27
	inc c                                            ; $59c6: $0c
	ret z                                            ; $59c7: $c8

	daa                                              ; $59c8: $27
	inc c                                            ; $59c9: $0c
	add $27                                          ; $59ca: $c6 $27
	inc c                                            ; $59cc: $0c
	ret z                                            ; $59cd: $c8

jr_033_59ce:
	ld h, $09                                        ; $59ce: $26 $09
	add $26                                          ; $59d0: $c6 $26
	inc bc                                           ; $59d2: $03
	ret z                                            ; $59d3: $c8

	daa                                              ; $59d4: $27
	inc c                                            ; $59d5: $0c

jr_033_59d6:
	add $27                                          ; $59d6: $c6 $27
	inc c                                            ; $59d8: $0c
	ret                                              ; $59d9: $c9


	add hl, hl                                       ; $59da: $29
	inc h                                            ; $59db: $24
	or l                                             ; $59dc: $b5
	ld [hl], c                                       ; $59dd: $71
	ld bc, $0000                                     ; $59de: $01 $00 $00
	dec l                                            ; $59e1: $2d
	inc c                                            ; $59e2: $0c
	push bc                                          ; $59e3: $c5
	dec l                                            ; $59e4: $2d
	inc c                                            ; $59e5: $0c
	rst JumpTable                                          ; $59e6: $c7
	ld l, $0c                                        ; $59e7: $2e $0c
	push bc                                          ; $59e9: $c5
	ld l, $0c                                        ; $59ea: $2e $0c
	rst JumpTable                                          ; $59ec: $c7
	jr nc, jr_033_59fb                               ; $59ed: $30 $0c

	push bc                                          ; $59ef: $c5
	jr nc, @+$0e                                     ; $59f0: $30 $0c

	db $fd                                           ; $59f2: $fd
	ld a, e                                          ; $59f3: $7b
	ld e, e                                          ; $59f4: $5b
	db $fd                                           ; $59f5: $fd
	add sp, $5b                                      ; $59f6: $e8 $5b
	db $fd                                           ; $59f8: $fd
	jr z, @+$5e                                      ; $59f9: $28 $5c

jr_033_59fb:
	or l                                             ; $59fb: $b5
	di                                               ; $59fc: $f3
	ld bc, $0000                                     ; $59fd: $01 $00 $00
	nop                                              ; $5a00: $00
	inc c                                            ; $5a01: $0c
	ld [hl+], a                                      ; $5a02: $22
	inc c                                            ; $5a03: $0c
	or l                                             ; $5a04: $b5
	sub c                                            ; $5a05: $91
	ld [bc], a                                       ; $5a06: $02
	add hl, de                                       ; $5a07: $19
	inc bc                                           ; $5a08: $03
	ld a, [hl+]                                      ; $5a09: $2a
	jr jr_033_5a36                                   ; $5a0a: $18 $2a

	jr jr_033_5a37                                   ; $5a0c: $18 $29

	jr jr_033_59ce                                   ; $5a0e: $18 $be

	jr jr_033_5a39                                   ; $5a10: $18 $27

	daa                                              ; $5a12: $27
	add hl, hl                                       ; $5a13: $29
	ld a, [hl+]                                      ; $5a14: $2a
	cp [hl]                                          ; $5a15: $be
	sra d                                            ; $5a16: $cb $2a
	inc h                                            ; $5a18: $24
	add hl, hl                                       ; $5a19: $29
	inc c                                            ; $5a1a: $0c
	sub [hl]                                         ; $5a1b: $96
	ld [hl-], a                                      ; $5a1c: $32
	ld b, $29                                        ; $5a1d: $06 $29
	jr nc, jr_033_59d6                               ; $5a1f: $30 $b5

	add c                                            ; $5a21: $81
	inc bc                                           ; $5a22: $03
	ld [hl-], a                                      ; $5a23: $32
	ld bc, $0c00                                     ; $5a24: $01 $00 $0c
	ld a, [hl+]                                      ; $5a27: $2a
	jr @+$2c                                         ; $5a28: $18 $2a

	jr jr_033_59c2                                   ; $5a2a: $18 $96

	ld [hl-], a                                      ; $5a2c: $32
	inc b                                            ; $5a2d: $04
	add hl, hl                                       ; $5a2e: $29
	inc h                                            ; $5a2f: $24
	ret z                                            ; $5a30: $c8

	pop de                                           ; $5a31: $d1
	sub c                                            ; $5a32: $91
	sub [hl]                                         ; $5a33: $96
	jr z, jr_033_5a3d                                ; $5a34: $28 $07

jr_033_5a36:
	db $fd                                           ; $5a36: $fd

jr_033_5a37:
	ld c, [hl]                                       ; $5a37: $4e
	ld e, e                                          ; $5a38: $5b

jr_033_5a39:
	add $7e                                          ; $5a39: $c6 $7e
	ld l, $02                                        ; $5a3b: $2e $02

jr_033_5a3d:
	xor c                                            ; $5a3d: $a9
	dec a                                            ; $5a3e: $3d
	ld [de], a                                       ; $5a3f: $12
	nop                                              ; $5a40: $00
	inc c                                            ; $5a41: $0c
	ld a, [hl]                                       ; $5a42: $7e
	dec l                                            ; $5a43: $2d
	ld [hl-], a                                      ; $5a44: $32
	and b                                            ; $5a45: $a0
	sub b                                            ; $5a46: $90
	call z, $3c1e                                    ; $5a47: $cc $1e $3c
	ld e, $06                                        ; $5a4a: $1e $06
	ld e, $06                                        ; $5a4c: $1e $06
	dec e                                            ; $5a4e: $1d
	inc c                                            ; $5a4f: $0c
	push bc                                          ; $5a50: $c5
	dec e                                            ; $5a51: $1d
	ld a, [bc]                                       ; $5a52: $0a
	call nz, $091d                                   ; $5a53: $c4 $1d $09
	jp $061d                                         ; $5a56: $c3 $1d $06


	jp nz, $051d                                     ; $5a59: $c2 $1d $05

	rst $38                                          ; $5a5c: $ff
	or l                                             ; $5a5d: $b5
	pop bc                                           ; $5a5e: $c1
	inc bc                                           ; $5a5f: $03
	rst $38                                          ; $5a60: $ff
	rlca                                             ; $5a61: $07
	nop                                              ; $5a62: $00
	inc c                                            ; $5a63: $0c
	dec h                                            ; $5a64: $25
	inc c                                            ; $5a65: $0c
	rst JumpTable                                          ; $5a66: $c7
	pop de                                           ; $5a67: $d1
	dec h                                            ; $5a68: $25
	inc c                                            ; $5a69: $0c
	call z, $27d1                                    ; $5a6a: $cc $d1 $27
	inc c                                            ; $5a6d: $0c
	rst JumpTable                                          ; $5a6e: $c7
	pop de                                           ; $5a6f: $d1
	daa                                              ; $5a70: $27
	inc c                                            ; $5a71: $0c
	call z, $29d1                                    ; $5a72: $cc $d1 $29
	inc c                                            ; $5a75: $0c
	rst JumpTable                                          ; $5a76: $c7
	pop de                                           ; $5a77: $d1
	add hl, hl                                       ; $5a78: $29
	inc c                                            ; $5a79: $0c
	call z, $27d1                                    ; $5a7a: $cc $d1 $27
	inc c                                            ; $5a7d: $0c
	rst JumpTable                                          ; $5a7e: $c7
	pop de                                           ; $5a7f: $d1
	daa                                              ; $5a80: $27
	inc c                                            ; $5a81: $0c
	set 2, c                                         ; $5a82: $cb $d1
	inc l                                            ; $5a84: $2c
	inc c                                            ; $5a85: $0c
	add $d1                                          ; $5a86: $c6 $d1
	inc l                                            ; $5a88: $2c
	inc c                                            ; $5a89: $0c
	call z, $27d1                                    ; $5a8a: $cc $d1 $27
	inc c                                            ; $5a8d: $0c
	rst JumpTable                                          ; $5a8e: $c7
	pop de                                           ; $5a8f: $d1
	daa                                              ; $5a90: $27
	inc c                                            ; $5a91: $0c
	call z, $24d1                                    ; $5a92: $cc $d1 $24
	inc c                                            ; $5a95: $0c
	rst JumpTable                                          ; $5a96: $c7
	pop de                                           ; $5a97: $d1
	inc h                                            ; $5a98: $24
	inc c                                            ; $5a99: $0c
	call $25d1                                       ; $5a9a: $cd $d1 $25
	inc c                                            ; $5a9d: $0c
	ret z                                            ; $5a9e: $c8

	pop de                                           ; $5a9f: $d1
	dec h                                            ; $5aa0: $25
	inc c                                            ; $5aa1: $0c
	push bc                                          ; $5aa2: $c5
	pop de                                           ; $5aa3: $d1
	dec h                                            ; $5aa4: $25
	inc c                                            ; $5aa5: $0c
	call z, $27d1                                    ; $5aa6: $cc $d1 $27
	ld [$d1c8], sp                                   ; $5aa9: $08 $c8 $d1
	daa                                              ; $5aac: $27
	inc b                                            ; $5aad: $04
	call $25d1                                       ; $5aae: $cd $d1 $25
	inc c                                            ; $5ab1: $0c
	ret z                                            ; $5ab2: $c8

	pop de                                           ; $5ab3: $d1
	dec h                                            ; $5ab4: $25
	inc c                                            ; $5ab5: $0c
	push bc                                          ; $5ab6: $c5
	pop de                                           ; $5ab7: $d1
	dec h                                            ; $5ab8: $25
	inc c                                            ; $5ab9: $0c
	call z, $24d1                                    ; $5aba: $cc $d1 $24
	ld [$d1c8], sp                                   ; $5abd: $08 $c8 $d1
	inc h                                            ; $5ac0: $24
	inc b                                            ; $5ac1: $04
	or c                                             ; $5ac2: $b1
	and c                                            ; $5ac3: $a1
	nop                                              ; $5ac4: $00
	nop                                              ; $5ac5: $00
	ld [hl+], a                                      ; $5ac6: $22
	add hl, bc                                       ; $5ac7: $09
	ret z                                            ; $5ac8: $c8

	pop de                                           ; $5ac9: $d1
	ld [hl+], a                                      ; $5aca: $22
	inc bc                                           ; $5acb: $03
	sub a                                            ; $5acc: $97
	dec hl                                           ; $5acd: $2b
	sub d                                            ; $5ace: $92
	sub [hl]                                         ; $5acf: $96
	nop                                              ; $5ad0: $00
	nop                                              ; $5ad1: $00
	cp [hl]                                          ; $5ad2: $be
	inc c                                            ; $5ad3: $0c
	ld l, $31                                        ; $5ad4: $2e $31
	jr c, @+$38                                      ; $5ad6: $38 $36

	dec [hl]                                         ; $5ad8: $35
	inc sp                                           ; $5ad9: $33
	dec [hl]                                         ; $5ada: $35
	cp [hl]                                          ; $5adb: $be
	or c                                             ; $5adc: $b1
	ld b, c                                          ; $5add: $41
	rst $38                                          ; $5ade: $ff
	rlca                                             ; $5adf: $07
	sub a                                            ; $5ae0: $97
	nop                                              ; $5ae1: $00
	ld sp, $9318                                     ; $5ae2: $31 $18 $93
	call z, $22d1                                    ; $5ae5: $cc $d1 $22
	inc c                                            ; $5ae8: $0c
	rst JumpTable                                          ; $5ae9: $c7
	pop de                                           ; $5aea: $d1
	ld [hl+], a                                      ; $5aeb: $22
	inc c                                            ; $5aec: $0c
	call z, $25d1                                    ; $5aed: $cc $d1 $25
	inc c                                            ; $5af0: $0c
	rst JumpTable                                          ; $5af1: $c7
	pop de                                           ; $5af2: $d1
	dec h                                            ; $5af3: $25
	inc c                                            ; $5af4: $0c
	call z, $27d1                                    ; $5af5: $cc $d1 $27
	add hl, bc                                       ; $5af8: $09
	ret z                                            ; $5af9: $c8

	pop de                                           ; $5afa: $d1
	daa                                              ; $5afb: $27
	inc bc                                           ; $5afc: $03
	set 2, c                                         ; $5afd: $cb $d1
	ld a, [hl+]                                      ; $5aff: $2a
	add hl, bc                                       ; $5b00: $09
	rst JumpTable                                          ; $5b01: $c7
	pop de                                           ; $5b02: $d1
	ld a, [hl+]                                      ; $5b03: $2a
	inc bc                                           ; $5b04: $03
	call z, $27d1                                    ; $5b05: $cc $d1 $27
	inc c                                            ; $5b08: $0c
	rst JumpTable                                          ; $5b09: $c7
	pop de                                           ; $5b0a: $d1
	daa                                              ; $5b0b: $27
	inc c                                            ; $5b0c: $0c
	call z, $24d1                                    ; $5b0d: $cc $d1 $24
	inc c                                            ; $5b10: $0c
	rst JumpTable                                          ; $5b11: $c7
	pop de                                           ; $5b12: $d1
	inc h                                            ; $5b13: $24
	inc c                                            ; $5b14: $0c
	call $20d1                                       ; $5b15: $cd $d1 $20
	inc c                                            ; $5b18: $0c
	ret z                                            ; $5b19: $c8

	pop de                                           ; $5b1a: $d1
	jr nz, jr_033_5b29                               ; $5b1b: $20 $0c

	call z, $24d1                                    ; $5b1d: $cc $d1 $24
	inc c                                            ; $5b20: $0c
	rst JumpTable                                          ; $5b21: $c7
	pop de                                           ; $5b22: $d1
	inc h                                            ; $5b23: $24
	inc c                                            ; $5b24: $0c
	call $25d1                                       ; $5b25: $cd $d1 $25
	inc c                                            ; $5b28: $0c

jr_033_5b29:
	ret                                              ; $5b29: $c9


	pop de                                           ; $5b2a: $d1
	dec h                                            ; $5b2b: $25
	inc c                                            ; $5b2c: $0c
	add $d1                                          ; $5b2d: $c6 $d1
	dec h                                            ; $5b2f: $25
	inc c                                            ; $5b30: $0c
	call $22d1                                       ; $5b31: $cd $d1 $22
	ld a, [bc]                                       ; $5b34: $0a
	ret z                                            ; $5b35: $c8

	pop de                                           ; $5b36: $d1
	ld [hl+], a                                      ; $5b37: $22
	ld [bc], a                                       ; $5b38: $02
	call $24d1                                       ; $5b39: $cd $d1 $24

jr_033_5b3c:
	inc c                                            ; $5b3c: $0c
	ret                                              ; $5b3d: $c9


	pop de                                           ; $5b3e: $d1
	inc h                                            ; $5b3f: $24
	inc c                                            ; $5b40: $0c
	add $d1                                          ; $5b41: $c6 $d1
	inc h                                            ; $5b43: $24
	inc c                                            ; $5b44: $0c
	call $20d1                                       ; $5b45: $cd $d1 $20
	ld a, [bc]                                       ; $5b48: $0a
	ret z                                            ; $5b49: $c8

	pop de                                           ; $5b4a: $d1
	jr nz, jr_033_5b4f                               ; $5b4b: $20 $02

	db $fd                                           ; $5b4d: $fd
	cp [hl]                                          ; $5b4e: $be

jr_033_5b4f:
	ld b, $21                                        ; $5b4f: $06 $21
	inc hl                                           ; $5b51: $23
	ld hl, $2120                                     ; $5b52: $21 $20 $21
	inc hl                                           ; $5b55: $23
	dec h                                            ; $5b56: $25
	daa                                              ; $5b57: $27
	jr z, jr_033_5b81                                ; $5b58: $28 $27

	dec h                                            ; $5b5a: $25
	daa                                              ; $5b5b: $27
	jr z, jr_033_5b88                                ; $5b5c: $28 $2a

	inc l                                            ; $5b5e: $2c
	jr z, @-$40                                      ; $5b5f: $28 $be

	rst JumpTable                                          ; $5b61: $c7
	pop de                                           ; $5b62: $d1
	cp [hl]                                          ; $5b63: $be
	ld b, $2d                                        ; $5b64: $06 $2d
	cpl                                              ; $5b66: $2f
	dec l                                            ; $5b67: $2d
	inc l                                            ; $5b68: $2c
	dec l                                            ; $5b69: $2d
	cpl                                              ; $5b6a: $2f
	ld sp, $3433                                     ; $5b6b: $31 $33 $34
	inc sp                                           ; $5b6e: $33
	inc [hl]                                         ; $5b6f: $34
	cp [hl]                                          ; $5b70: $be

jr_033_5b71:
	add $d1                                          ; $5b71: $c6 $d1
	cp [hl]                                          ; $5b73: $be
	ld b, $36                                        ; $5b74: $06 $36
	jr c, jr_033_5bb1                                ; $5b76: $38 $39

	dec sp                                           ; $5b78: $3b
	cp [hl]                                          ; $5b79: $be
	db $fd                                           ; $5b7a: $fd
	or l                                             ; $5b7b: $b5
	di                                               ; $5b7c: $f3
	ld bc, $020f                                     ; $5b7d: $01 $0f $02
	ld a, [hl]                                       ; $5b80: $7e

jr_033_5b81:
	cpl                                              ; $5b81: $2f
	dec c                                            ; $5b82: $0d
	and b                                            ; $5b83: $a0
	ld a, [hl+]                                      ; $5b84: $2a
	jr jr_033_5b3c                                   ; $5b85: $18 $b5

	sub c                                            ; $5b87: $91

jr_033_5b88:
	ld [bc], a                                       ; $5b88: $02
	add hl, de                                       ; $5b89: $19
	inc bc                                           ; $5b8a: $03
	ld a, [hl]                                       ; $5b8b: $7e
	nop                                              ; $5b8c: $00
	cp [hl]                                          ; $5b8d: $be
	jr jr_033_5bbe                                   ; $5b8e: $18 $2e

	ld a, [hl+]                                      ; $5b90: $2a
	ld l, $2c                                        ; $5b91: $2e $2c
	ld a, [hl+]                                      ; $5b93: $2a
	add hl, hl                                       ; $5b94: $29
	daa                                              ; $5b95: $27
	cp [hl]                                          ; $5b96: $be
	or c                                             ; $5b97: $b1
	ld [hl], c                                       ; $5b98: $71
	add hl, de                                       ; $5b99: $19
	dec b                                            ; $5b9a: $05
	ld a, [hl]                                       ; $5b9b: $7e
	inc l                                            ; $5b9c: $2c
	ld b, [hl]                                       ; $5b9d: $46
	xor c                                            ; $5b9e: $a9
	add hl, hl                                       ; $5b9f: $29
	inc h                                            ; $5ba0: $24
	or c                                             ; $5ba1: $b1
	add c                                            ; $5ba2: $81
	add hl, de                                       ; $5ba3: $19
	rlca                                             ; $5ba4: $07
	inc l                                            ; $5ba5: $2c
	sub b                                            ; $5ba6: $90
	or l                                             ; $5ba7: $b5
	ldh a, [c]                                       ; $5ba8: $f2

jr_033_5ba9:
	ld bc, $0519                                     ; $5ba9: $01 $19 $05
	ld a, [hl]                                       ; $5bac: $7e
	nop                                              ; $5bad: $00
	jr z, jr_033_5bb6                                ; $5bae: $28 $06

	add hl, hl                                       ; $5bb0: $29

jr_033_5bb1:
	ld b, $96                                        ; $5bb1: $06 $96
	rrca                                             ; $5bb3: $0f
	ld [bc], a                                       ; $5bb4: $02
	ld a, [hl]                                       ; $5bb5: $7e

jr_033_5bb6:
	cpl                                              ; $5bb6: $2f
	dec c                                            ; $5bb7: $0d
	and b                                            ; $5bb8: $a0
	ld a, [hl+]                                      ; $5bb9: $2a
	jr jr_033_5b71                                   ; $5bba: $18 $b5

	sub c                                            ; $5bbc: $91
	ld [bc], a                                       ; $5bbd: $02

jr_033_5bbe:
	add hl, de                                       ; $5bbe: $19
	inc bc                                           ; $5bbf: $03
	ld a, [hl]                                       ; $5bc0: $7e
	nop                                              ; $5bc1: $00
	cp [hl]                                          ; $5bc2: $be
	jr @+$30                                         ; $5bc3: $18 $2e

	ld a, [hl+]                                      ; $5bc5: $2a
	add hl, hl                                       ; $5bc6: $29
	daa                                              ; $5bc7: $27
	inc h                                            ; $5bc8: $24
	dec h                                            ; $5bc9: $25
	daa                                              ; $5bca: $27
	cp [hl]                                          ; $5bcb: $be
	or c                                             ; $5bcc: $b1
	ld [hl], c                                       ; $5bcd: $71
	add hl, de                                       ; $5bce: $19
	dec b                                            ; $5bcf: $05
	ld a, [hl]                                       ; $5bd0: $7e
	dec l                                            ; $5bd1: $2d
	inc a                                            ; $5bd2: $3c
	and b                                            ; $5bd3: $a0
	add hl, hl                                       ; $5bd4: $29
	ld h, b                                          ; $5bd5: $60

jr_033_5bd6:
	or c                                             ; $5bd6: $b1
	or c                                             ; $5bd7: $b1
	add hl, de                                       ; $5bd8: $19
	inc bc                                           ; $5bd9: $03
	ld a, [hl]                                       ; $5bda: $7e
	inc l                                            ; $5bdb: $2c
	ld [hl-], a                                      ; $5bdc: $32
	and b                                            ; $5bdd: $a0
	inc hl                                           ; $5bde: $23
	ld d, h                                          ; $5bdf: $54
	set 2, e                                         ; $5be0: $cb $d3
	sub c                                            ; $5be2: $91
	ld a, [hl]                                       ; $5be3: $7e
	nop                                              ; $5be4: $00
	dec h                                            ; $5be5: $25
	inc c                                            ; $5be6: $0c
	db $fd                                           ; $5be7: $fd
	or l                                             ; $5be8: $b5
	di                                               ; $5be9: $f3
	ld bc, $020f                                     ; $5bea: $01 $0f $02
	ld a, [hl]                                       ; $5bed: $7e
	cpl                                              ; $5bee: $2f
	dec c                                            ; $5bef: $0d
	and b                                            ; $5bf0: $a0
	ld a, [hl+]                                      ; $5bf1: $2a
	jr jr_033_5ba9                                   ; $5bf2: $18 $b5

	sub c                                            ; $5bf4: $91
	ld [bc], a                                       ; $5bf5: $02
	add hl, de                                       ; $5bf6: $19

jr_033_5bf7:
	inc bc                                           ; $5bf7: $03
	ld a, [hl]                                       ; $5bf8: $7e
	nop                                              ; $5bf9: $00
	cp [hl]                                          ; $5bfa: $be

jr_033_5bfb:
	jr @+$30                                         ; $5bfb: $18 $2e

	ld a, [hl+]                                      ; $5bfd: $2a
	ld l, $2c                                        ; $5bfe: $2e $2c
	ld a, [hl+]                                      ; $5c00: $2a
	add hl, hl                                       ; $5c01: $29
	ld a, [hl+]                                      ; $5c02: $2a
	cp [hl]                                          ; $5c03: $be
	rst JumpTable                                          ; $5c04: $c7
	pop de                                           ; $5c05: $d1
	ld a, [hl]                                       ; $5c06: $7e
	inc l                                            ; $5c07: $2c
	rra                                              ; $5c08: $1f

jr_033_5c09:
	xor c                                            ; $5c09: $a9
	inc l                                            ; $5c0a: $2c
	jr nc, jr_033_5bd6                               ; $5c0b: $30 $c9

	pop de                                           ; $5c0d: $d1
	add hl, hl                                       ; $5c0e: $29
	inc c                                            ; $5c0f: $0c
	inc l                                            ; $5c10: $2c
	jr @+$2b                                         ; $5c11: $18 $29

	inc c                                            ; $5c13: $0c
	or c                                             ; $5c14: $b1
	or c                                             ; $5c15: $b1
	add hl, de                                       ; $5c16: $19
	ld b, $25                                        ; $5c17: $06 $25
	inc a                                            ; $5c19: $3c
	or l                                             ; $5c1a: $b5
	ldh a, [c]                                       ; $5c1b: $f2
	ld bc, $0319                                     ; $5c1c: $01 $19 $03
	ld a, [hl]                                       ; $5c1f: $7e
	nop                                              ; $5c20: $00
	dec e                                            ; $5c21: $1d
	inc c                                            ; $5c22: $0c
	ld e, $0c                                        ; $5c23: $1e $0c
	jr nz, jr_033_5c33                               ; $5c25: $20 $0c

	db $fd                                           ; $5c27: $fd
	or l                                             ; $5c28: $b5
	ldh a, [c]                                       ; $5c29: $f2
	ld bc, $0000                                     ; $5c2a: $01 $00 $00
	nop                                              ; $5c2d: $00
	inc c                                            ; $5c2e: $0c
	ld [hl+], a                                      ; $5c2f: $22
	inc c                                            ; $5c30: $0c
	or l                                             ; $5c31: $b5
	sub c                                            ; $5c32: $91

jr_033_5c33:
	ld [bc], a                                       ; $5c33: $02
	add hl, de                                       ; $5c34: $19
	inc bc                                           ; $5c35: $03
	ld a, [hl+]                                      ; $5c36: $2a
	jr jr_033_5c63                                   ; $5c37: $18 $2a

	jr jr_033_5c64                                   ; $5c39: $18 $29

	jr jr_033_5bfb                                   ; $5c3b: $18 $be

	jr jr_033_5c66                                   ; $5c3d: $18 $27

	daa                                              ; $5c3f: $27
	dec h                                            ; $5c40: $25
	inc h                                            ; $5c41: $24
	cp [hl]                                          ; $5c42: $be
	ld a, [hl]                                       ; $5c43: $7e
	inc l                                            ; $5c44: $2c
	inc d                                            ; $5c45: $14
	xor c                                            ; $5c46: $a9
	sub [hl]                                         ; $5c47: $96
	jr z, jr_033_5c4e                                ; $5c48: $28 $04

	daa                                              ; $5c4a: $27
	inc h                                            ; $5c4b: $24
	dec h                                            ; $5c4c: $25
	inc c                                            ; $5c4d: $0c

jr_033_5c4e:
	sub [hl]                                         ; $5c4e: $96
	jr z, @+$09                                      ; $5c4f: $28 $07

	dec h                                            ; $5c51: $25
	jr nc, jr_033_5c09                               ; $5c52: $30 $b5

	sub c                                            ; $5c54: $91
	inc bc                                           ; $5c55: $03
	ld [hl-], a                                      ; $5c56: $32
	ld bc, $007e                                     ; $5c57: $01 $7e $00
	nop                                              ; $5c5a: $00
	inc c                                            ; $5c5b: $0c
	ld a, [hl+]                                      ; $5c5c: $2a
	jr @+$2c                                         ; $5c5d: $18 $2a

	jr jr_033_5bf7                                   ; $5c5f: $18 $96

	ld [hl-], a                                      ; $5c61: $32
	inc b                                            ; $5c62: $04

jr_033_5c63:
	add hl, hl                                       ; $5c63: $29

jr_033_5c64:
	inc h                                            ; $5c64: $24
	db $fd                                           ; $5c65: $fd

jr_033_5c66:
	or [hl]                                          ; $5c66: $b6
	adc h                                            ; $5c67: $8c
	ld hl, $0222                                     ; $5c68: $21 $22 $02
	ld bc, $a7fd                                     ; $5c6b: $01 $fd $a7
	ld e, a                                          ; $5c6e: $5f
	db $fd                                           ; $5c6f: $fd
	cp c                                             ; $5c70: $b9
	ld e, a                                          ; $5c71: $5f
	db $fd                                           ; $5c72: $fd
	bit 3, a                                         ; $5c73: $cb $5f
	db $fd                                           ; $5c75: $fd
	bit 3, a                                         ; $5c76: $cb $5f
	jp nz, Jump_033_7fd1                             ; $5c78: $c2 $d1 $7f

	ld [hl+], a                                      ; $5c7b: $22
	db $fd                                           ; $5c7c: $fd
	inc d                                            ; $5c7d: $14
	ld h, b                                          ; $5c7e: $60
	cp [hl]                                          ; $5c7f: $be
	inc c                                            ; $5c80: $0c
	ld [hl+], a                                      ; $5c81: $22
	dec e                                            ; $5c82: $1d
	ld d, $22                                        ; $5c83: $16 $22
	ld d, $22                                        ; $5c85: $16 $22
	cp [hl]                                          ; $5c87: $be
	jr nz, jr_033_5ca2                               ; $5c88: $20 $18

	db $fd                                           ; $5c8a: $fd
	inc d                                            ; $5c8b: $14
	ld h, b                                          ; $5c8c: $60
	cp [hl]                                          ; $5c8d: $be
	inc c                                            ; $5c8e: $0c
	ld [hl+], a                                      ; $5c8f: $22
	dec e                                            ; $5c90: $1d
	ld d, $22                                        ; $5c91: $16 $22
	ld d, $22                                        ; $5c93: $16 $22
	jr nz, @+$22                                     ; $5c95: $20 $20

	cp [hl]                                          ; $5c97: $be
	or l                                             ; $5c98: $b5
	ld hl, $0222                                     ; $5c99: $21 $22 $02
	ld bc, $77fb                                     ; $5c9c: $01 $fb $77
	db $fd                                           ; $5c9f: $fd
	bit 3, a                                         ; $5ca0: $cb $5f

jr_033_5ca2:
	ld [hl], l                                       ; $5ca2: $75
	db $fd                                           ; $5ca3: $fd
	bit 3, a                                         ; $5ca4: $cb $5f
	ld [hl], b                                       ; $5ca6: $70
	db $fd                                           ; $5ca7: $fd
	bit 3, a                                         ; $5ca8: $cb $5f
	db $fd                                           ; $5caa: $fd
	bit 3, a                                         ; $5cab: $cb $5f
	ei                                               ; $5cad: $fb
	ld [bc], a                                       ; $5cae: $02
	jp nz, Jump_033_7fd1                             ; $5caf: $c2 $d1 $7f

	ld [hl+], a                                      ; $5cb2: $22
	sub [hl]                                         ; $5cb3: $96
	ld [bc], a                                       ; $5cb4: $02
	ld bc, $fd77                                     ; $5cb5: $01 $77 $fd
	bit 3, a                                         ; $5cb8: $cb $5f
	ld [hl], l                                       ; $5cba: $75
	db $fd                                           ; $5cbb: $fd
	bit 3, a                                         ; $5cbc: $cb $5f
	or c                                             ; $5cbe: $b1
	ld hl, $0000                                     ; $5cbf: $21 $00 $00
	ld [hl], b                                       ; $5cc2: $70
	add hl, de                                       ; $5cc3: $19
	add hl, hl                                       ; $5cc4: $29
	call nz, $0719                                   ; $5cc5: $c4 $19 $07
	jp nz, $2918                                     ; $5cc8: $c2 $18 $29

	call nz, $0718                                   ; $5ccb: $c4 $18 $07
	jp nz, $2916                                     ; $5cce: $c2 $16 $29

	call nz, $0716                                   ; $5cd1: $c4 $16 $07
	jp nz, $2914                                     ; $5cd4: $c2 $14 $29

	call nz, $0714                                   ; $5cd7: $c4 $14 $07
	jp nz, Jump_033_7fd1                             ; $5cda: $c2 $d1 $7f

	ld [hl+], a                                      ; $5cdd: $22
	sub [hl]                                         ; $5cde: $96
	ld [bc], a                                       ; $5cdf: $02
	ld bc, $fd77                                     ; $5ce0: $01 $77 $fd
	bit 3, a                                         ; $5ce3: $cb $5f
	ld [hl], l                                       ; $5ce5: $75
	db $fd                                           ; $5ce6: $fd
	bit 3, a                                         ; $5ce7: $cb $5f
	or c                                             ; $5ce9: $b1
	ld hl, $0000                                     ; $5cea: $21 $00 $00
	ld [hl], b                                       ; $5ced: $70
	add hl, de                                       ; $5cee: $19
	inc e                                            ; $5cef: $1c
	call nz, $0819                                   ; $5cf0: $c4 $19 $08
	jp nz, $0a19                                     ; $5cf3: $c2 $19 $0a

	call nz, $0219                                   ; $5cf6: $c4 $19 $02
	jp nz, $1c19                                     ; $5cf9: $c2 $19 $1c

	call nz, $0819                                   ; $5cfc: $c4 $19 $08
	jp nz, $0a14                                     ; $5cff: $c2 $14 $0a

	call nz, $0214                                   ; $5d02: $c4 $14 $02
	jp nz, $0c19                                     ; $5d05: $c2 $19 $0c

	jp nz, $0425                                     ; $5d08: $c2 $25 $04

	call nz, $0625                                   ; $5d0b: $c4 $25 $06
	add $25                                          ; $5d0e: $c6 $25
	inc b                                            ; $5d10: $04
	nop                                              ; $5d11: $00
	ld a, [bc]                                       ; $5d12: $0a
	jp nz, $0a25                                     ; $5d13: $c2 $25 $0a

	call nz, $0225                                   ; $5d16: $c4 $25 $02
	jp nz, $0a19                                     ; $5d19: $c2 $19 $0a

	call nz, $0219                                   ; $5d1c: $c4 $19 $02
	jp nz, $0a1b                                     ; $5d1f: $c2 $1b $0a

	call nz, $021b                                   ; $5d22: $c4 $1b $02
	jp nz, $0a1c                                     ; $5d25: $c2 $1c $0a

	call nz, $021c                                   ; $5d28: $c4 $1c $02
	jp nz, $0a1d                                     ; $5d2b: $c2 $1d $0a

	call nz, $021d                                   ; $5d2e: $c4 $1d $02
	jp nz, Jump_033_7fd1                             ; $5d31: $c2 $d1 $7f

	inc h                                            ; $5d34: $24
	add hl, de                                       ; $5d35: $19
	dec de                                           ; $5d36: $1b
	call nz, $0919                                   ; $5d37: $c4 $19 $09
	jp nz, $0c19                                     ; $5d3a: $c2 $19 $0c

	call nz, $0c19                                   ; $5d3d: $c4 $19 $0c
	jp nz, $0c1e                                     ; $5d40: $c2 $1e $0c

	ld hl, $1e0c                                     ; $5d43: $21 $0c $1e
	inc c                                            ; $5d46: $0c
	jp nz, $0a19                                     ; $5d47: $c2 $19 $0a

	call nz, $0219                                   ; $5d4a: $c4 $19 $02
	jp nz, $0a19                                     ; $5d4d: $c2 $19 $0a

	call nz, $0a19                                   ; $5d50: $c4 $19 $0a
	add $19                                          ; $5d53: $c6 $19
	inc b                                            ; $5d55: $04
	jp nz, $0a19                                     ; $5d56: $c2 $19 $0a

	call nz, $0219                                   ; $5d59: $c4 $19 $02
	jp nz, $0c19                                     ; $5d5c: $c2 $19 $0c

	dec de                                           ; $5d5f: $1b
	inc c                                            ; $5d60: $0c
	add hl, de                                       ; $5d61: $19
	ld [de], a                                       ; $5d62: $12
	call nz, $0619                                   ; $5d63: $c4 $19 $06
	jp nz, $1b19                                     ; $5d66: $c2 $19 $1b

	call nz, $0919                                   ; $5d69: $c4 $19 $09
	jp nz, $0c19                                     ; $5d6c: $c2 $19 $0c

	call nz, $0c19                                   ; $5d6f: $c4 $19 $0c
	jp nz, $0c20                                     ; $5d72: $c2 $20 $0c

	dec e                                            ; $5d75: $1d
	inc c                                            ; $5d76: $0c
	jr nz, jr_033_5d85                               ; $5d77: $20 $0c

	jp nz, $0a19                                     ; $5d79: $c2 $19 $0a

	nop                                              ; $5d7c: $00
	ld [bc], a                                       ; $5d7d: $02
	add hl, de                                       ; $5d7e: $19
	ld a, [bc]                                       ; $5d7f: $0a
	nop                                              ; $5d80: $00
	ld c, $1b                                        ; $5d81: $0e $1b
	inc c                                            ; $5d83: $0c
	nop                                              ; $5d84: $00

jr_033_5d85:
	inc c                                            ; $5d85: $0c
	dec e                                            ; $5d86: $1d
	dec de                                           ; $5d87: $1b
	call nz, $091d                                   ; $5d88: $c4 $1d $09
	jp nz, $181e                                     ; $5d8b: $c2 $1e $18

	call nz, $081e                                   ; $5d8e: $c4 $1e $08
	add $1e                                          ; $5d91: $c6 $1e
	inc b                                            ; $5d93: $04
	jp nz, $0c1e                                     ; $5d94: $c2 $1e $0c

	call nz, $0c1e                                   ; $5d97: $c4 $1e $0c
	add c                                            ; $5d9a: $81
	jp nz, $0c19                                     ; $5d9b: $c2 $19 $0c

	dec d                                            ; $5d9e: $15
	inc c                                            ; $5d9f: $0c
	inc d                                            ; $5da0: $14
	inc c                                            ; $5da1: $0c
	jp nz, $1812                                     ; $5da2: $c2 $12 $18

	call nz, $0c12                                   ; $5da5: $c4 $12 $0c
	jp nz, $0c12                                     ; $5da8: $c2 $12 $0c

	call nz, $0c12                                   ; $5dab: $c4 $12 $0c
	jp nz, $0c19                                     ; $5dae: $c2 $19 $0c

	dec de                                           ; $5db1: $1b
	inc c                                            ; $5db2: $0c
	inc e                                            ; $5db3: $1c
	inc c                                            ; $5db4: $0c
	jp nz, $271d                                     ; $5db5: $c2 $1d $27

	call nz, $091d                                   ; $5db8: $c4 $1d $09
	jp nz, $271b                                     ; $5dbb: $c2 $1b $27

	call nz, $091b                                   ; $5dbe: $c4 $1b $09
	jp nz, $271a                                     ; $5dc1: $c2 $1a $27

	call nz, $091a                                   ; $5dc4: $c4 $1a $09
	jp nz, $2718                                     ; $5dc7: $c2 $18 $27

	call nz, $0918                                   ; $5dca: $c4 $18 $09
	call nz, Call_033_7fd1                           ; $5dcd: $c4 $d1 $7f
	inc h                                            ; $5dd0: $24
	ld [hl+], a                                      ; $5dd1: $22
	ld [de], a                                       ; $5dd2: $12
	add $22                                          ; $5dd3: $c6 $22
	ld b, $c4                                        ; $5dd5: $06 $c4
	ld a, a                                          ; $5dd7: $7f
	dec hl                                           ; $5dd8: $2b
	cp [hl]                                          ; $5dd9: $be
	inc c                                            ; $5dda: $0c
	ld [hl-], a                                      ; $5ddb: $32
	dec [hl]                                         ; $5ddc: $35
	ld a, [hl-]                                      ; $5ddd: $3a
	dec [hl]                                         ; $5dde: $35
	ld [hl-], a                                      ; $5ddf: $32
	ld l, $be                                        ; $5de0: $2e $be
	ld a, a                                          ; $5de2: $7f
	inc h                                            ; $5de3: $24
	ld hl, $c612                                     ; $5de4: $21 $12 $c6
	ld hl, $c406                                     ; $5de7: $21 $06 $c4
	ld a, a                                          ; $5dea: $7f
	dec hl                                           ; $5deb: $2b

jr_033_5dec:
	cp [hl]                                          ; $5dec: $be
	inc c                                            ; $5ded: $0c
	ld [hl-], a                                      ; $5dee: $32
	dec [hl]                                         ; $5def: $35
	add hl, sp                                       ; $5df0: $39
	dec [hl]                                         ; $5df1: $35
	ld [hl-], a                                      ; $5df2: $32
	dec l                                            ; $5df3: $2d
	cp [hl]                                          ; $5df4: $be
	ld a, a                                          ; $5df5: $7f
	inc h                                            ; $5df6: $24
	jr nz, jr_033_5e0b                               ; $5df7: $20 $12

	add $20                                          ; $5df9: $c6 $20
	ld b, $c4                                        ; $5dfb: $06 $c4
	ld a, a                                          ; $5dfd: $7f
	dec hl                                           ; $5dfe: $2b
	cp [hl]                                          ; $5dff: $be
	inc c                                            ; $5e00: $0c
	ld [hl-], a                                      ; $5e01: $32
	dec [hl]                                         ; $5e02: $35
	jr c, jr_033_5e3a                                ; $5e03: $38 $35

	ld [hl-], a                                      ; $5e05: $32
	inc l                                            ; $5e06: $2c
	cp [hl]                                          ; $5e07: $be
	ld a, a                                          ; $5e08: $7f
	inc h                                            ; $5e09: $24
	rra                                              ; $5e0a: $1f

jr_033_5e0b:
	ld [de], a                                       ; $5e0b: $12
	add $1f                                          ; $5e0c: $c6 $1f
	ld b, $c4                                        ; $5e0e: $06 $c4
	ld a, a                                          ; $5e10: $7f
	dec hl                                           ; $5e11: $2b
	cp [hl]                                          ; $5e12: $be
	inc c                                            ; $5e13: $0c
	ld [hl-], a                                      ; $5e14: $32
	dec [hl]                                         ; $5e15: $35
	scf                                              ; $5e16: $37
	dec [hl]                                         ; $5e17: $35
	ld [hl-], a                                      ; $5e18: $32
	dec hl                                           ; $5e19: $2b
	cp [hl]                                          ; $5e1a: $be
	ld a, a                                          ; $5e1b: $7f
	inc h                                            ; $5e1c: $24
	inc h                                            ; $5e1d: $24
	ld [de], a                                       ; $5e1e: $12
	add $24                                          ; $5e1f: $c6 $24
	ld b, $c4                                        ; $5e21: $06 $c4
	ld a, a                                          ; $5e23: $7f
	dec hl                                           ; $5e24: $2b
	cp [hl]                                          ; $5e25: $be
	inc c                                            ; $5e26: $0c
	inc sp                                           ; $5e27: $33
	scf                                              ; $5e28: $37
	inc a                                            ; $5e29: $3c
	scf                                              ; $5e2a: $37
	inc sp                                           ; $5e2b: $33
	jr nc, jr_033_5dec                               ; $5e2c: $30 $be

	ld a, a                                          ; $5e2e: $7f
	inc h                                            ; $5e2f: $24
	inc hl                                           ; $5e30: $23
	ld [de], a                                       ; $5e31: $12
	add $23                                          ; $5e32: $c6 $23
	ld b, $c4                                        ; $5e34: $06 $c4
	ld a, a                                          ; $5e36: $7f
	dec hl                                           ; $5e37: $2b
	cp [hl]                                          ; $5e38: $be
	inc c                                            ; $5e39: $0c

jr_033_5e3a:
	inc sp                                           ; $5e3a: $33
	scf                                              ; $5e3b: $37
	dec sp                                           ; $5e3c: $3b
	scf                                              ; $5e3d: $37
	inc sp                                           ; $5e3e: $33
	cpl                                              ; $5e3f: $2f
	cp [hl]                                          ; $5e40: $be
	ld a, a                                          ; $5e41: $7f
	inc h                                            ; $5e42: $24
	ld [hl+], a                                      ; $5e43: $22
	ld [de], a                                       ; $5e44: $12
	add $22                                          ; $5e45: $c6 $22
	ld b, $c4                                        ; $5e47: $06 $c4
	ld a, a                                          ; $5e49: $7f
	dec hl                                           ; $5e4a: $2b
	cp [hl]                                          ; $5e4b: $be
	inc c                                            ; $5e4c: $0c
	inc sp                                           ; $5e4d: $33
	scf                                              ; $5e4e: $37
	ld a, [hl-]                                      ; $5e4f: $3a
	scf                                              ; $5e50: $37
	inc sp                                           ; $5e51: $33
	ld l, $be                                        ; $5e52: $2e $be
	ld a, a                                          ; $5e54: $7f
	inc h                                            ; $5e55: $24
	add hl, hl                                       ; $5e56: $29
	ld [de], a                                       ; $5e57: $12
	add $29                                          ; $5e58: $c6 $29
	ld b, $c4                                        ; $5e5a: $06 $c4
	ld a, a                                          ; $5e5c: $7f
	dec hl                                           ; $5e5d: $2b
	cp [hl]                                          ; $5e5e: $be
	inc c                                            ; $5e5f: $0c
	jr nc, jr_033_5e97                               ; $5e60: $30 $35

	inc a                                            ; $5e62: $3c
	add hl, sp                                       ; $5e63: $39
	dec [hl]                                         ; $5e64: $35
	inc sp                                           ; $5e65: $33
	cp [hl]                                          ; $5e66: $be
	call nz, Call_033_7fd1                           ; $5e67: $c4 $d1 $7f
	dec hl                                           ; $5e6a: $2b
	ld [hl+], a                                      ; $5e6b: $22
	ld [de], a                                       ; $5e6c: $12
	add $22                                          ; $5e6d: $c6 $22
	ld b, $c4                                        ; $5e6f: $06 $c4
	ld a, a                                          ; $5e71: $7f
	dec hl                                           ; $5e72: $2b
	cp [hl]                                          ; $5e73: $be
	inc c                                            ; $5e74: $0c
	ld [hl-], a                                      ; $5e75: $32
	dec [hl]                                         ; $5e76: $35
	ld a, [hl-]                                      ; $5e77: $3a
	dec [hl]                                         ; $5e78: $35
	ld [hl-], a                                      ; $5e79: $32
	ld l, $be                                        ; $5e7a: $2e $be
	ld a, a                                          ; $5e7c: $7f
	inc h                                            ; $5e7d: $24
	ld hl, $c612                                     ; $5e7e: $21 $12 $c6
	ld hl, $c406                                     ; $5e81: $21 $06 $c4
	ld a, a                                          ; $5e84: $7f
	dec hl                                           ; $5e85: $2b

jr_033_5e86:
	cp [hl]                                          ; $5e86: $be
	inc c                                            ; $5e87: $0c
	ld [hl-], a                                      ; $5e88: $32
	dec [hl]                                         ; $5e89: $35
	add hl, sp                                       ; $5e8a: $39
	dec [hl]                                         ; $5e8b: $35
	ld [hl-], a                                      ; $5e8c: $32
	dec l                                            ; $5e8d: $2d
	cp [hl]                                          ; $5e8e: $be
	ld a, a                                          ; $5e8f: $7f
	inc h                                            ; $5e90: $24
	jr nz, jr_033_5ea5                               ; $5e91: $20 $12

	add $20                                          ; $5e93: $c6 $20
	ld b, $c4                                        ; $5e95: $06 $c4

jr_033_5e97:
	ld a, a                                          ; $5e97: $7f
	dec hl                                           ; $5e98: $2b
	cp [hl]                                          ; $5e99: $be
	inc c                                            ; $5e9a: $0c
	ld [hl-], a                                      ; $5e9b: $32
	dec [hl]                                         ; $5e9c: $35
	jr c, jr_033_5ed4                                ; $5e9d: $38 $35

	ld [hl-], a                                      ; $5e9f: $32
	inc l                                            ; $5ea0: $2c
	cp [hl]                                          ; $5ea1: $be
	ld a, a                                          ; $5ea2: $7f
	inc h                                            ; $5ea3: $24
	rra                                              ; $5ea4: $1f

jr_033_5ea5:
	ld [de], a                                       ; $5ea5: $12
	add $1f                                          ; $5ea6: $c6 $1f
	ld b, $c4                                        ; $5ea8: $06 $c4
	ld a, a                                          ; $5eaa: $7f
	dec hl                                           ; $5eab: $2b
	cp [hl]                                          ; $5eac: $be
	inc c                                            ; $5ead: $0c
	ld [hl-], a                                      ; $5eae: $32
	dec [hl]                                         ; $5eaf: $35
	scf                                              ; $5eb0: $37
	dec [hl]                                         ; $5eb1: $35
	ld [hl-], a                                      ; $5eb2: $32
	dec hl                                           ; $5eb3: $2b

jr_033_5eb4:
	cp [hl]                                          ; $5eb4: $be
	ld a, a                                          ; $5eb5: $7f
	inc h                                            ; $5eb6: $24
	inc h                                            ; $5eb7: $24
	ld [de], a                                       ; $5eb8: $12
	add $24                                          ; $5eb9: $c6 $24
	ld b, $c4                                        ; $5ebb: $06 $c4
	ld a, a                                          ; $5ebd: $7f
	dec hl                                           ; $5ebe: $2b
	cp [hl]                                          ; $5ebf: $be
	inc c                                            ; $5ec0: $0c
	inc sp                                           ; $5ec1: $33
	scf                                              ; $5ec2: $37
	inc a                                            ; $5ec3: $3c
	scf                                              ; $5ec4: $37
	inc sp                                           ; $5ec5: $33
	jr nc, jr_033_5e86                               ; $5ec6: $30 $be

	ld a, a                                          ; $5ec8: $7f
	inc h                                            ; $5ec9: $24
	inc hl                                           ; $5eca: $23
	ld [de], a                                       ; $5ecb: $12
	add $23                                          ; $5ecc: $c6 $23
	ld b, $c4                                        ; $5ece: $06 $c4
	ld a, a                                          ; $5ed0: $7f
	dec hl                                           ; $5ed1: $2b
	cp [hl]                                          ; $5ed2: $be
	inc c                                            ; $5ed3: $0c

jr_033_5ed4:
	inc sp                                           ; $5ed4: $33
	scf                                              ; $5ed5: $37
	dec sp                                           ; $5ed6: $3b
	scf                                              ; $5ed7: $37
	inc sp                                           ; $5ed8: $33
	cpl                                              ; $5ed9: $2f
	cp [hl]                                          ; $5eda: $be
	ld a, a                                          ; $5edb: $7f
	inc h                                            ; $5edc: $24
	ld [hl+], a                                      ; $5edd: $22
	ld [de], a                                       ; $5ede: $12
	add $22                                          ; $5edf: $c6 $22
	ld b, $c4                                        ; $5ee1: $06 $c4
	ld a, a                                          ; $5ee3: $7f
	dec hl                                           ; $5ee4: $2b
	cp [hl]                                          ; $5ee5: $be
	inc c                                            ; $5ee6: $0c
	inc sp                                           ; $5ee7: $33
	scf                                              ; $5ee8: $37
	ld a, [hl-]                                      ; $5ee9: $3a
	scf                                              ; $5eea: $37
	inc sp                                           ; $5eeb: $33
	ld l, $be                                        ; $5eec: $2e $be
	ld a, a                                          ; $5eee: $7f
	inc h                                            ; $5eef: $24
	jp nz, $181d                                     ; $5ef0: $c2 $1d $18

	ld a, a                                          ; $5ef3: $7f
	inc hl                                           ; $5ef4: $23
	sub [hl]                                         ; $5ef5: $96
	inc bc                                           ; $5ef6: $03
	ld bc, $1811                                     ; $5ef7: $01 $11 $18
	inc de                                           ; $5efa: $13
	jr @+$17                                         ; $5efb: $18 $15

	jr jr_033_5eb4                                   ; $5efd: $18 $b5

	ld hl, $0022                                     ; $5eff: $21 $22 $00
	nop                                              ; $5f02: $00
	ei                                               ; $5f03: $fb
	ld [hl], a                                       ; $5f04: $77
	db $fd                                           ; $5f05: $fd
	bit 3, a                                         ; $5f06: $cb $5f
	ld [hl], l                                       ; $5f08: $75
	db $fd                                           ; $5f09: $fd
	bit 3, a                                         ; $5f0a: $cb $5f
	ld [hl], b                                       ; $5f0c: $70
	db $fd                                           ; $5f0d: $fd
	bit 3, a                                         ; $5f0e: $cb $5f
	db $fd                                           ; $5f10: $fd
	bit 3, a                                         ; $5f11: $cb $5f
	ei                                               ; $5f13: $fb
	ld [bc], a                                       ; $5f14: $02
	ld [hl], a                                       ; $5f15: $77
	db $fd                                           ; $5f16: $fd
	bit 3, a                                         ; $5f17: $cb $5f
	ld [hl], l                                       ; $5f19: $75
	db $fd                                           ; $5f1a: $fd
	bit 3, a                                         ; $5f1b: $cb $5f
	jp nz, $be70                                     ; $5f1d: $c2 $70 $be

	jr nc, jr_033_5f3b                               ; $5f20: $30 $19

	jr jr_033_5f3a                                   ; $5f22: $18 $16

	inc d                                            ; $5f24: $14
	cp [hl]                                          ; $5f25: $be
	ld [hl], a                                       ; $5f26: $77
	db $fd                                           ; $5f27: $fd
	bit 3, a                                         ; $5f28: $cb $5f
	ld [hl], l                                       ; $5f2a: $75
	db $fd                                           ; $5f2b: $fd
	bit 3, a                                         ; $5f2c: $cb $5f
	jp nz, $1970                                     ; $5f2e: $c2 $70 $19

	inc h                                            ; $5f31: $24
	add hl, de                                       ; $5f32: $19
	inc c                                            ; $5f33: $0c
	add hl, de                                       ; $5f34: $19
	inc h                                            ; $5f35: $24
	inc d                                            ; $5f36: $14
	inc c                                            ; $5f37: $0c
	sub [hl]                                         ; $5f38: $96
	nop                                              ; $5f39: $00

jr_033_5f3a:
	nop                                              ; $5f3a: $00

jr_033_5f3b:
	cp [hl]                                          ; $5f3b: $be
	inc c                                            ; $5f3c: $0c
	add hl, de                                       ; $5f3d: $19
	dec h                                            ; $5f3e: $25
	nop                                              ; $5f3f: $00
	dec h                                            ; $5f40: $25
	add hl, de                                       ; $5f41: $19
	dec de                                           ; $5f42: $1b
	inc e                                            ; $5f43: $1c
	dec e                                            ; $5f44: $1d
	cp [hl]                                          ; $5f45: $be
	or l                                             ; $5f46: $b5
	ld hl, $0222                                     ; $5f47: $21 $22 $02
	ld bc, $fd77                                     ; $5f4a: $01 $77 $fd
	bit 3, a                                         ; $5f4d: $cb $5f
	ld [hl], l                                       ; $5f4f: $75
	db $fd                                           ; $5f50: $fd
	bit 3, a                                         ; $5f51: $cb $5f
	jp nz, $9670                                     ; $5f53: $c2 $70 $96

	nop                                              ; $5f56: $00
	nop                                              ; $5f57: $00
	add hl, de                                       ; $5f58: $19
	dec de                                           ; $5f59: $1b
	call nz, $0919                                   ; $5f5a: $c4 $19 $09
	jp nz, $0a19                                     ; $5f5d: $c2 $19 $0a

	call nz, $0219                                   ; $5f60: $c4 $19 $02
	jp nz, $1b19                                     ; $5f63: $c2 $19 $1b

	call nz, $0919                                   ; $5f66: $c4 $19 $09
	jp nz, $0a14                                     ; $5f69: $c2 $14 $0a

	call nz, $0214                                   ; $5f6c: $c4 $14 $02
	jp nz, $0c19                                     ; $5f6f: $c2 $19 $0c

	call nz, $0c25                                   ; $5f72: $c4 $25 $0c
	nop                                              ; $5f75: $00
	inc c                                            ; $5f76: $0c
	dec h                                            ; $5f77: $25
	jr @+$26                                         ; $5f78: $18 $24

	inc c                                            ; $5f7a: $0c
	inc hl                                           ; $5f7b: $23
	inc c                                            ; $5f7c: $0c
	ld [hl+], a                                      ; $5f7d: $22
	inc c                                            ; $5f7e: $0c
	or l                                             ; $5f7f: $b5
	ld hl, $1922                                     ; $5f80: $21 $22 $19
	ld bc, $1800                                     ; $5f83: $01 $00 $18
	cp [hl]                                          ; $5f86: $be
	inc h                                            ; $5f87: $24
	dec d                                            ; $5f88: $15
	rla                                              ; $5f89: $17
	dec d                                            ; $5f8a: $15
	rla                                              ; $5f8b: $17
	cp [hl]                                          ; $5f8c: $be
	sub [hl]                                         ; $5f8d: $96
	ld b, $01                                        ; $5f8e: $06 $01
	rla                                              ; $5f90: $17
	inc c                                            ; $5f91: $0c
	cp l                                             ; $5f92: $bd
	ld [bc], a                                       ; $5f93: $02
	add hl, de                                       ; $5f94: $19
	inc c                                            ; $5f95: $0c
	ld d, h                                          ; $5f96: $54
	sub [hl]                                         ; $5f97: $96
	ld bc, $1901                                     ; $5f98: $01 $01 $19
	ld b, $19                                        ; $5f9b: $06 $19
	ld b, $19                                        ; $5f9d: $06 $19
	inc c                                            ; $5f9f: $0c
	call nz, $0c19                                   ; $5fa0: $c4 $19 $0c
	add $19                                          ; $5fa3: $c6 $19
	inc c                                            ; $5fa5: $0c
	rst $38                                          ; $5fa6: $ff
	dec d                                            ; $5fa7: $15
	inc c                                            ; $5fa8: $0c
	ld hl, $150c                                     ; $5fa9: $21 $0c $15
	inc c                                            ; $5fac: $0c
	ld hl, $2106                                     ; $5fad: $21 $06 $21
	ld b, $be                                        ; $5fb0: $06 $be
	inc c                                            ; $5fb2: $0c
	dec d                                            ; $5fb3: $15
	ld hl, $2115                                     ; $5fb4: $21 $15 $21
	cp [hl]                                          ; $5fb7: $be
	db $fd                                           ; $5fb8: $fd
	rla                                              ; $5fb9: $17
	inc c                                            ; $5fba: $0c
	inc hl                                           ; $5fbb: $23
	inc c                                            ; $5fbc: $0c
	rla                                              ; $5fbd: $17
	inc c                                            ; $5fbe: $0c
	inc hl                                           ; $5fbf: $23
	ld b, $23                                        ; $5fc0: $06 $23
	ld b, $be                                        ; $5fc2: $06 $be
	inc c                                            ; $5fc4: $0c
	rla                                              ; $5fc5: $17
	inc hl                                           ; $5fc6: $23
	rla                                              ; $5fc7: $17
	inc hl                                           ; $5fc8: $23
	cp [hl]                                          ; $5fc9: $be
	db $fd                                           ; $5fca: $fd
	jp nz, $19d1                                     ; $5fcb: $c2 $d1 $19

	ld [$d1c4], sp                                   ; $5fce: $08 $c4 $d1
	add hl, de                                       ; $5fd1: $19
	inc b                                            ; $5fd2: $04
	jp nz, $25d1                                     ; $5fd3: $c2 $d1 $25

	ld [$d1c4], sp                                   ; $5fd6: $08 $c4 $d1
	dec h                                            ; $5fd9: $25
	inc b                                            ; $5fda: $04
	jp nz, $19d1                                     ; $5fdb: $c2 $d1 $19

	ld [$d1c4], sp                                   ; $5fde: $08 $c4 $d1
	add hl, de                                       ; $5fe1: $19
	inc b                                            ; $5fe2: $04
	jp nz, $25d1                                     ; $5fe3: $c2 $d1 $25

	dec b                                            ; $5fe6: $05
	call nz, $25d1                                   ; $5fe7: $c4 $d1 $25
	ld bc, $d1c2                                     ; $5fea: $01 $c2 $d1
	dec h                                            ; $5fed: $25
	dec b                                            ; $5fee: $05
	call nz, $25d1                                   ; $5fef: $c4 $d1 $25
	ld bc, $d1c2                                     ; $5ff2: $01 $c2 $d1
	add hl, de                                       ; $5ff5: $19
	ld [$d1c4], sp                                   ; $5ff6: $08 $c4 $d1
	add hl, de                                       ; $5ff9: $19
	inc b                                            ; $5ffa: $04
	jp nz, $25d1                                     ; $5ffb: $c2 $d1 $25

	ld [$d1c4], sp                                   ; $5ffe: $08 $c4 $d1
	dec h                                            ; $6001: $25
	inc b                                            ; $6002: $04
	jp nz, $19d1                                     ; $6003: $c2 $d1 $19

	ld [$d1c4], sp                                   ; $6006: $08 $c4 $d1
	add hl, de                                       ; $6009: $19
	inc b                                            ; $600a: $04
	jp nz, $25d1                                     ; $600b: $c2 $d1 $25

	ld [$d1c4], sp                                   ; $600e: $08 $c4 $d1
	dec h                                            ; $6011: $25
	inc b                                            ; $6012: $04
	db $fd                                           ; $6013: $fd
	sub [hl]                                         ; $6014: $96
	nop                                              ; $6015: $00
	nop                                              ; $6016: $00
	add hl, de                                       ; $6017: $19
	ld a, [bc]                                       ; $6018: $0a
	nop                                              ; $6019: $00
	ld [bc], a                                       ; $601a: $02
	add hl, de                                       ; $601b: $19
	ld [de], a                                       ; $601c: $12
	jp nc, $31c4                                     ; $601d: $d2 $c4 $31

	jr jr_033_6055                                   ; $6020: $18 $33

	ld b, $d1                                        ; $6022: $06 $d1
	jp nz, $0c20                                     ; $6024: $c2 $20 $0c

	dec e                                            ; $6027: $1d
	inc c                                            ; $6028: $0c
	jr nz, @+$0e                                     ; $6029: $20 $0c

	jr @+$0c                                         ; $602b: $18 $0a

	nop                                              ; $602d: $00
	ld [bc], a                                       ; $602e: $02
	jr jr_033_603d                                   ; $602f: $18 $0c

	nop                                              ; $6031: $00
	inc h                                            ; $6032: $24
	dec e                                            ; $6033: $1d
	inc c                                            ; $6034: $0c
	pop de                                           ; $6035: $d1
	call nz, $0c1d                                   ; $6036: $c4 $1d $0c
	pop de                                           ; $6039: $d1
	jp nz, $0c18                                     ; $603a: $c2 $18 $0c

jr_033_603d:
	ld d, $0a                                        ; $603d: $16 $0a
	nop                                              ; $603f: $00
	ld [bc], a                                       ; $6040: $02
	ld d, $0c                                        ; $6041: $16 $0c
	jp nc, $31c4                                     ; $6043: $d2 $c4 $31

	rla                                              ; $6046: $17
	nop                                              ; $6047: $00
	ld bc, $1831                                     ; $6048: $01 $31 $18
	pop de                                           ; $604b: $d1
	jp nz, $1814                                     ; $604c: $c2 $14 $18

	ld [de], a                                       ; $604f: $12
	ld a, [bc]                                       ; $6050: $0a
	nop                                              ; $6051: $00
	ld [bc], a                                       ; $6052: $02
	ld [de], a                                       ; $6053: $12
	inc c                                            ; $6054: $0c

jr_033_6055:
	nop                                              ; $6055: $00
	inc h                                            ; $6056: $24
	ld e, $0c                                        ; $6057: $1e $0c
	dec e                                            ; $6059: $1d
	inc c                                            ; $605a: $0c
	add hl, de                                       ; $605b: $19
	inc c                                            ; $605c: $0c
	dec de                                           ; $605d: $1b
	ld a, [bc]                                       ; $605e: $0a
	nop                                              ; $605f: $00
	ld [bc], a                                       ; $6060: $02
	dec de                                           ; $6061: $1b
	inc c                                            ; $6062: $0c
	nop                                              ; $6063: $00
	inc h                                            ; $6064: $24
	ld d, $0c                                        ; $6065: $16 $0c
	dec de                                           ; $6067: $1b
	rla                                              ; $6068: $17
	nop                                              ; $6069: $00
	ld bc, $0a1d                                     ; $606a: $01 $1d $0a
	nop                                              ; $606d: $00
	ld [bc], a                                       ; $606e: $02
	dec e                                            ; $606f: $1d
	inc c                                            ; $6070: $0c
	nop                                              ; $6071: $00
	inc h                                            ; $6072: $24
	jr jr_033_6081                                   ; $6073: $18 $0c

	dec e                                            ; $6075: $1d
	inc c                                            ; $6076: $0c
	jr jr_033_6085                                   ; $6077: $18 $0c

	ld e, $0a                                        ; $6079: $1e $0a
	nop                                              ; $607b: $00
	ld [bc], a                                       ; $607c: $02
	pop de                                           ; $607d: $d1
	jp nz, $0a1e                                     ; $607e: $c2 $1e $0a

jr_033_6081:
	pop de                                           ; $6081: $d1
	call nz, $0e1e                                   ; $6082: $c4 $1e $0e

jr_033_6085:
	pop de                                           ; $6085: $d1
	jp nz, $0c1e                                     ; $6086: $c2 $1e $0c

	jr nz, jr_033_6095                               ; $6089: $20 $0a

	nop                                              ; $608b: $00
	ld [bc], a                                       ; $608c: $02
	pop de                                           ; $608d: $d1
	jp nz, $0a20                                     ; $608e: $c2 $20 $0a

	pop de                                           ; $6091: $d1
	call nz, $0e20                                   ; $6092: $c4 $20 $0e

jr_033_6095:
	pop de                                           ; $6095: $d1
	jp nz, $0c20                                     ; $6096: $c2 $20 $0c

	db $fd                                           ; $6099: $fd
	ret nc                                           ; $609a: $d0

	adc h                                            ; $609b: $8c
	cp [hl]                                          ; $609c: $be
	jr @+$33                                         ; $609d: $18 $31

	ld [hl-], a                                      ; $609f: $32
	ld sp, $3132                                     ; $60a0: $31 $32 $31
	ld [hl-], a                                      ; $60a3: $32
	ld sp, $be32                                     ; $60a4: $31 $32 $be
	cp [hl]                                          ; $60a7: $be
	jr jr_033_60db                                   ; $60a8: $18 $31

	ld [hl-], a                                      ; $60aa: $32
	ld [hl-], a                                      ; $60ab: $32
	ld [hl-], a                                      ; $60ac: $32
	ld sp, $be32                                     ; $60ad: $31 $32 $be
	ld sp, $320c                                     ; $60b0: $31 $0c $32
	inc c                                            ; $60b3: $0c
	dec [hl]                                         ; $60b4: $35
	jr @-$03                                         ; $60b5: $18 $fb

	cp [hl]                                          ; $60b7: $be
	inc c                                            ; $60b8: $0c
	ld sp, $3232                                     ; $60b9: $31 $32 $32
	inc sp                                           ; $60bc: $33
	ld sp, $32be                                     ; $60bd: $31 $be $32
	dec bc                                           ; $60c0: $0b
	dec a                                            ; $60c1: $3d
	inc c                                            ; $60c2: $0c
	ld [hl-], a                                      ; $60c3: $32
	dec c                                            ; $60c4: $0d
	ei                                               ; $60c5: $fb
	ld c, $be                                        ; $60c6: $0e $be
	inc c                                            ; $60c8: $0c
	dec a                                            ; $60c9: $3d
	dec a                                            ; $60ca: $3d
	ld [hl], $31                                     ; $60cb: $36 $31
	dec a                                            ; $60cd: $3d
	dec a                                            ; $60ce: $3d
	ld [hl], $31                                     ; $60cf: $36 $31
	cp [hl]                                          ; $60d1: $be
	cp [hl]                                          ; $60d2: $be
	inc c                                            ; $60d3: $0c
	ld [hl-], a                                      ; $60d4: $32
	dec a                                            ; $60d5: $3d
	ld [hl-], a                                      ; $60d6: $32
	dec a                                            ; $60d7: $3d
	ld [hl], $36                                     ; $60d8: $36 $36
	cp [hl]                                          ; $60da: $be

jr_033_60db:
	dec [hl]                                         ; $60db: $35
	jr jr_033_60db                                   ; $60dc: $18 $fd

	db $f4                                           ; $60de: $f4
	ld h, c                                          ; $60df: $61
	db $fd                                           ; $60e0: $fd
	ret nc                                           ; $60e1: $d0

	ld h, c                                          ; $60e2: $61
	db $fd                                           ; $60e3: $fd
	and [hl]                                         ; $60e4: $a6
	ld h, c                                          ; $60e5: $61
	ei                                               ; $60e6: $fb
	ld sp, $320c                                     ; $60e7: $31 $0c $32
	inc c                                            ; $60ea: $0c
	inc sp                                           ; $60eb: $33
	inc c                                            ; $60ec: $0c
	dec sp                                           ; $60ed: $3b
	ld b, $3b                                        ; $60ee: $06 $3b
	ld b, $be                                        ; $60f0: $06 $be
	inc c                                            ; $60f2: $0c
	ld sp, $3f31                                     ; $60f3: $31 $31 $3f
	ld [hl-], a                                      ; $60f6: $32
	cp [hl]                                          ; $60f7: $be
	cp [hl]                                          ; $60f8: $be
	inc c                                            ; $60f9: $0c
	ld sp, $3332                                     ; $60fa: $31 $32 $33
	ld sp, $3732                                     ; $60fd: $31 $32 $37
	scf                                              ; $6100: $37
	ld [hl-], a                                      ; $6101: $32
	cp [hl]                                          ; $6102: $be
	ei                                               ; $6103: $fb
	inc bc                                           ; $6104: $03
	ld [hl], $0c                                     ; $6105: $36 $0c
	dec [hl]                                         ; $6107: $35
	jr jr_033_613c                                   ; $6108: $18 $32

jr_033_610a:
	inc c                                            ; $610a: $0c
	ld [hl], $0c                                     ; $610b: $36 $0c
	dec [hl]                                         ; $610d: $35
	jr jr_033_6142                                   ; $610e: $18 $32

	inc c                                            ; $6110: $0c
	ld [hl], $0c                                     ; $6111: $36 $0c
	dec [hl]                                         ; $6113: $35
	jr jr_033_6147                                   ; $6114: $18 $31

	ld b, $32                                        ; $6116: $06 $32
	ld b, $be                                        ; $6118: $06 $be
	inc c                                            ; $611a: $0c
	ld [hl], $36                                     ; $611b: $36 $36
	dec a                                            ; $611d: $3d
	ld [hl-], a                                      ; $611e: $32
	cp [hl]                                          ; $611f: $be
	ei                                               ; $6120: $fb
	cp [hl]                                          ; $6121: $be
	jr @+$0b                                         ; $6122: $18 $09

	add hl, bc                                       ; $6124: $09
	ld c, $09                                        ; $6125: $0e $09
	cp [hl]                                          ; $6127: $be
	ei                                               ; $6128: $fb
	ld [$befb], sp                                   ; $6129: $08 $fb $be
	jr @+$0b                                         ; $612c: $18 $09

	add hl, bc                                       ; $612e: $09
	ld c, $09                                        ; $612f: $0e $09
	cp [hl]                                          ; $6131: $be
	ei                                               ; $6132: $fb
	inc b                                            ; $6133: $04
	ei                                               ; $6134: $fb
	cp [hl]                                          ; $6135: $be
	jr @+$38                                         ; $6136: $18 $36

	add hl, bc                                       ; $6138: $09
	ld [hl-], a                                      ; $6139: $32
	add hl, bc                                       ; $613a: $09
	cp [hl]                                          ; $613b: $be

jr_033_613c:
	ei                                               ; $613c: $fb
	ld [bc], a                                       ; $613d: $02
	cp [hl]                                          ; $613e: $be
	jr jr_033_6177                                   ; $613f: $18 $36

	ld [hl-], a                                      ; $6141: $32

jr_033_6142:
	ld [hl], $32                                     ; $6142: $36 $32
	cp [hl]                                          ; $6144: $be
	ld [hl], $0c                                     ; $6145: $36 $0c

jr_033_6147:
	dec a                                            ; $6147: $3d
	inc c                                            ; $6148: $0c
	dec [hl]                                         ; $6149: $35
	jr jr_033_610a                                   ; $614a: $18 $be

	ld b, $31                                        ; $614c: $06 $31
	ld [hl-], a                                      ; $614e: $32
	inc sp                                           ; $614f: $33
	ld [hl-], a                                      ; $6150: $32
	ld sp, $be3d                                     ; $6151: $31 $3d $be
	inc [hl]                                         ; $6154: $34
	inc c                                            ; $6155: $0c
	db $fd                                           ; $6156: $fd
	db $f4                                           ; $6157: $f4
	ld h, c                                          ; $6158: $61
	db $fd                                           ; $6159: $fd
	ret nc                                           ; $615a: $d0

	ld h, c                                          ; $615b: $61
	ei                                               ; $615c: $fb
	cp [hl]                                          ; $615d: $be
	inc c                                            ; $615e: $0c
	ld sp, $3d32                                     ; $615f: $31 $32 $3d
	ld [hl-], a                                      ; $6162: $32
	ld sp, $3d32                                     ; $6163: $31 $32 $3d
	ld [hl-], a                                      ; $6166: $32
	cp [hl]                                          ; $6167: $be
	ei                                               ; $6168: $fb
	ld [bc], a                                       ; $6169: $02
	cp [hl]                                          ; $616a: $be
	inc c                                            ; $616b: $0c
	ld sp, $3332                                     ; $616c: $31 $32 $33
	ld sp, $3332                                     ; $616f: $31 $32 $33
	dec a                                            ; $6172: $3d
	ld [hl-], a                                      ; $6173: $32
	cp [hl]                                          ; $6174: $be
	cp [hl]                                          ; $6175: $be
	inc c                                            ; $6176: $0c

jr_033_6177:
	ld sp, $3332                                     ; $6177: $31 $32 $33
	ld [hl-], a                                      ; $617a: $32
	dec a                                            ; $617b: $3d
	dec a                                            ; $617c: $3d
	ccf                                              ; $617d: $3f
	ld [hl-], a                                      ; $617e: $32
	cp [hl]                                          ; $617f: $be
	db $fd                                           ; $6180: $fd
	and [hl]                                         ; $6181: $a6
	ld h, c                                          ; $6182: $61
	cp [hl]                                          ; $6183: $be
	inc c                                            ; $6184: $0c
	ld sp, $3432                                     ; $6185: $31 $32 $34
	inc sp                                           ; $6188: $33
	ld [hl-], a                                      ; $6189: $32
	inc [hl]                                         ; $618a: $34
	ld [hl-], a                                      ; $618b: $32
	ld sp, $3234                                     ; $618c: $31 $34 $32
	ld sp, $3334                                     ; $618f: $31 $34 $33
	ld [hl-], a                                      ; $6192: $32
	ld sp, $35be                                     ; $6193: $31 $be $35
	jr jr_033_61d7                                   ; $6196: $18 $3f

	inc c                                            ; $6198: $0c
	scf                                              ; $6199: $37
	jr jr_033_61db                                   ; $619a: $18 $3f

	ld [de], a                                       ; $619c: $12
	scf                                              ; $619d: $37
	ld [de], a                                       ; $619e: $12
	ld sp, $3b06                                     ; $619f: $31 $06 $3b
	ld b, $3f                                        ; $61a2: $06 $3f
	inc c                                            ; $61a4: $0c
	rst $38                                          ; $61a5: $ff
	ei                                               ; $61a6: $fb
	cp [hl]                                          ; $61a7: $be
	inc c                                            ; $61a8: $0c
	ld sp, $3d32                                     ; $61a9: $31 $32 $3d
	ld [hl-], a                                      ; $61ac: $32
	ld sp, $3d32                                     ; $61ad: $31 $32 $3d
	ld [hl-], a                                      ; $61b0: $32
	cp [hl]                                          ; $61b1: $be
	ei                                               ; $61b2: $fb
	ld [bc], a                                       ; $61b3: $02
	cp [hl]                                          ; $61b4: $be
	inc c                                            ; $61b5: $0c
	ld sp, $3332                                     ; $61b6: $31 $32 $33
	ld sp, $3332                                     ; $61b9: $31 $32 $33
	dec a                                            ; $61bc: $3d
	ld [hl-], a                                      ; $61bd: $32
	cp [hl]                                          ; $61be: $be
	ld sp, $320c                                     ; $61bf: $31 $0c $32
	inc c                                            ; $61c2: $0c
	inc sp                                           ; $61c3: $33
	inc c                                            ; $61c4: $0c
	dec a                                            ; $61c5: $3d
	ld b, $3d                                        ; $61c6: $06 $3d
	ld b, $37                                        ; $61c8: $06 $37
	db $10                                           ; $61ca: $10
	dec a                                            ; $61cb: $3d
	db $10                                           ; $61cc: $10
	dec a                                            ; $61cd: $3d
	db $10                                           ; $61ce: $10
	db $fd                                           ; $61cf: $fd
	ei                                               ; $61d0: $fb
	cp [hl]                                          ; $61d1: $be
	inc c                                            ; $61d2: $0c
	ld sp, $3d32                                     ; $61d3: $31 $32 $3d
	ld [hl-], a                                      ; $61d6: $32

jr_033_61d7:
	ld sp, $3d32                                     ; $61d7: $31 $32 $3d
	ld [hl-], a                                      ; $61da: $32

jr_033_61db:
	cp [hl]                                          ; $61db: $be
	ei                                               ; $61dc: $fb
	ld [bc], a                                       ; $61dd: $02
	inc [hl]                                         ; $61de: $34
	inc c                                            ; $61df: $0c
	dec a                                            ; $61e0: $3d
	inc c                                            ; $61e1: $0c
	dec a                                            ; $61e2: $3d
	jr jr_033_6219                                   ; $61e3: $18 $34

	jr jr_033_6224                                   ; $61e5: $18 $3d

	jr jr_033_621e                                   ; $61e7: $18 $35

jr_033_61e9:
	jr jr_033_6228                                   ; $61e9: $18 $3d

	jr @-$40                                         ; $61eb: $18 $be

	inc c                                            ; $61ed: $0c
	ld sp, $3d3d                                     ; $61ee: $31 $3d $3d
	ld sp, $fdbe                                     ; $61f1: $31 $be $fd
	ei                                               ; $61f4: $fb
	cp [hl]                                          ; $61f5: $be
	inc c                                            ; $61f6: $0c
	ld sp, $3d32                                     ; $61f7: $31 $32 $3d
	ld [hl-], a                                      ; $61fa: $32
	ld sp, $3d32                                     ; $61fb: $31 $32 $3d
	ld [hl-], a                                      ; $61fe: $32
	cp [hl]                                          ; $61ff: $be
	ei                                               ; $6200: $fb
	ld [$b6fd], sp                                   ; $6201: $08 $fd $b6
	add d                                            ; $6204: $82
	sub c                                            ; $6205: $91
	ld [bc], a                                       ; $6206: $02
	ld h, h                                          ; $6207: $64
	inc bc                                           ; $6208: $03
	ld a, [hl]                                       ; $6209: $7e
	inc l                                            ; $620a: $2c
	nop                                              ; $620b: $00
	and b                                            ; $620c: $a0
	dec h                                            ; $620d: $25
	ld [$1528], sp                                   ; $620e: $08 $28 $15
	cp [hl]                                          ; $6211: $be
	ld [$2525], sp                                   ; $6212: $08 $25 $25
	dec h                                            ; $6215: $25
	dec h                                            ; $6216: $25
	ld h, $27                                        ; $6217: $26 $27

jr_033_6219:
	cp [hl]                                          ; $6219: $be
	jr z, @+$1a                                      ; $621a: $28 $18

	or c                                             ; $621c: $b1
	ld [hl], c                                       ; $621d: $71

jr_033_621e:
	ld a, [bc]                                       ; $621e: $0a
	inc bc                                           ; $621f: $03
	dec [hl]                                         ; $6220: $35
	jr jr_033_61e9                                   ; $6221: $18 $c6

	ld a, [hl]                                       ; $6223: $7e

jr_033_6224:
	inc l                                            ; $6224: $2c
	nop                                              ; $6225: $00
	and a                                            ; $6226: $a7
	cp [hl]                                          ; $6227: $be

jr_033_6228:
	ld [$3e39], sp                                   ; $6228: $08 $39 $3e
	ccf                                              ; $622b: $3f
	ccf                                              ; $622c: $3f
	cp [hl]                                          ; $622d: $be
	push bc                                          ; $622e: $c5
	ld b, c                                          ; $622f: $41
	ld [$0843], sp                                   ; $6230: $08 $43 $08
	call nz, $0846                                   ; $6233: $c4 $46 $08
	ld b, a                                          ; $6236: $47
	ld [$48c3], sp                                   ; $6237: $08 $c3 $48
	ld [$0849], sp                                   ; $623a: $08 $49 $08
	jp nz, $084a                                     ; $623d: $c2 $4a $08

	pop bc                                           ; $6240: $c1
	ld c, e                                          ; $6241: $4b
	ld [$b6ff], sp                                   ; $6242: $08 $ff $b6
	add d                                            ; $6245: $82
	sub c                                            ; $6246: $91
	nop                                              ; $6247: $00
	ld h, h                                          ; $6248: $64
	inc bc                                           ; $6249: $03
	ld a, [hl]                                       ; $624a: $7e
	inc l                                            ; $624b: $2c
	nop                                              ; $624c: $00
	and b                                            ; $624d: $a0
	ld a, [hl+]                                      ; $624e: $2a
	ld [$152d], sp                                   ; $624f: $08 $2d $15
	cp [hl]                                          ; $6252: $be
	ld [$2a2a], sp                                   ; $6253: $08 $2a $2a
	ld a, [hl+]                                      ; $6256: $2a
	ld a, [hl+]                                      ; $6257: $2a
	dec hl                                           ; $6258: $2b
	inc l                                            ; $6259: $2c
	cp [hl]                                          ; $625a: $be
	dec l                                            ; $625b: $2d
	jr @-$4d                                         ; $625c: $18 $b1

	or c                                             ; $625e: $b1
	nop                                              ; $625f: $00
	nop                                              ; $6260: $00
	jr jr_033_627b                                   ; $6261: $18 $18

	ld a, [hl]                                       ; $6263: $7e
	inc l                                            ; $6264: $2c
	nop                                              ; $6265: $00
	and a                                            ; $6266: $a7
	daa                                              ; $6267: $27
	ld [$0826], sp                                   ; $6268: $08 $26 $08
	dec h                                            ; $626b: $25
	ld [$24c9], sp                                   ; $626c: $08 $c9 $24
	ld [$23c8], sp                                   ; $626f: $08 $c8 $23
	ld [$22c7], sp                                   ; $6272: $08 $c7 $22
	ld [$21c6], sp                                   ; $6275: $08 $c6 $21
	ld [$20c6], sp                                   ; $6278: $08 $c6 $20

jr_033_627b:
	ld [$1fc5], sp                                   ; $627b: $08 $c5 $1f
	ld [$1ec3], sp                                   ; $627e: $08 $c3 $1e
	ld [$1dc2], sp                                   ; $6281: $08 $c2 $1d
	ld [$b6ff], sp                                   ; $6284: $08 $ff $b6
	add d                                            ; $6287: $82
	ld hl, $0225                                     ; $6288: $21 $25 $02
	ld bc, $0812                                     ; $628b: $01 $12 $08
	dec d                                            ; $628e: $15
	dec d                                            ; $628f: $15
	cp [hl]                                          ; $6290: $be
	ld [$1212], sp                                   ; $6291: $08 $12 $12
	ld [de], a                                       ; $6294: $12
	ld [de], a                                       ; $6295: $12
	inc de                                           ; $6296: $13
	inc d                                            ; $6297: $14
	cp [hl]                                          ; $6298: $be
	dec d                                            ; $6299: $15
	jr @-$68                                         ; $629a: $18 $96

	nop                                              ; $629c: $00
	nop                                              ; $629d: $00
	ld de, $7e18                                     ; $629e: $11 $18 $7e
	inc l                                            ; $62a1: $2c
	nop                                              ; $62a2: $00
	and a                                            ; $62a3: $a7
	cp [hl]                                          ; $62a4: $be
	ld [$1f20], sp                                   ; $62a5: $08 $20 $1f
	ld e, $1d                                        ; $62a8: $1e $1d
	inc e                                            ; $62aa: $1c
	dec de                                           ; $62ab: $1b
	cp [hl]                                          ; $62ac: $be
	call nz, $081a                                   ; $62ad: $c4 $1a $08
	add hl, de                                       ; $62b0: $19
	ld [$0818], sp                                   ; $62b1: $08 $18 $08

jr_033_62b4:
	add $17                                          ; $62b4: $c6 $17
	ld [$0816], sp                                   ; $62b6: $08 $16 $08
	dec d                                            ; $62b9: $15
	ld [$d0ff], sp                                   ; $62ba: $08 $ff $d0
	add d                                            ; $62bd: $82
	scf                                              ; $62be: $37
	ld [$1835], sp                                   ; $62bf: $08 $35 $18
	rst $38                                          ; $62c2: $ff
	cp $d0                                           ; $62c3: $fe $d0
	adc h                                            ; $62c5: $8c
	db $fd                                           ; $62c6: $fd
	jp c, $fd62                                      ; $62c7: $da $62 $fd

	ld [bc], a                                       ; $62ca: $02

jr_033_62cb:
	ld h, e                                          ; $62cb: $63
	sub e                                            ; $62cc: $93
	sub [hl]                                         ; $62cd: $96
	ld b, [hl]                                       ; $62ce: $46
	inc b                                            ; $62cf: $04
	db $fd                                           ; $62d0: $fd
	jp c, Jump_033_6a62                              ; $62d1: $da $62 $6a

	db $fd                                           ; $62d4: $fd
	ld [bc], a                                       ; $62d5: $02
	ld h, e                                          ; $62d6: $63
	ld [hl], b                                       ; $62d7: $70
	cp $ff                                           ; $62d8: $fe $ff
	or l                                             ; $62da: $b5
	di                                               ; $62db: $f3
	inc bc                                           ; $62dc: $03
	ld b, [hl]                                       ; $62dd: $46
	inc b                                            ; $62de: $04
	scf                                              ; $62df: $37
	jr @-$31                                         ; $62e0: $18 $cd

	jp nc, $1837                                     ; $62e2: $d2 $37 $18

	or c                                             ; $62e5: $b1
	or e                                             ; $62e6: $b3
	ld b, [hl]                                       ; $62e7: $46
	ld b, $37                                        ; $62e8: $06 $37
	jr jr_033_62b4                                   ; $62ea: $18 $c8

jr_033_62ec:
	jp nc, $1837                                     ; $62ec: $d2 $37 $18

	or c                                             ; $62ef: $b1
	db $e3                                           ; $62f0: $e3
	ld b, [hl]                                       ; $62f1: $46
	inc b                                            ; $62f2: $04
	ld [hl], $18                                     ; $62f3: $36 $18
	set 2, d                                         ; $62f5: $cb $d2
	ld [hl], $18                                     ; $62f7: $36 $18
	rst GetHLinHL                                          ; $62f9: $cf
	db $d3                                           ; $62fa: $d3
	ld [hl-], a                                      ; $62fb: $32
	jr jr_033_62cb                                   ; $62fc: $18 $cd

	jp nc, $1832                                     ; $62fe: $d2 $32 $18

	db $fd                                           ; $6301: $fd
	or l                                             ; $6302: $b5
	di                                               ; $6303: $f3
	inc bc                                           ; $6304: $03
	ld b, [hl]                                       ; $6305: $46
	inc b                                            ; $6306: $04
	ld sp, $cd18                                     ; $6307: $31 $18 $cd
	jp nc, $1831                                     ; $630a: $d2 $31 $18

	or c                                             ; $630d: $b1
	or e                                             ; $630e: $b3
	ld b, [hl]                                       ; $630f: $46
	rlca                                             ; $6310: $07
	ld sp, $c918                                     ; $6311: $31 $18 $c9
	jp nc, $1831                                     ; $6314: $d2 $31 $18

	ret z                                            ; $6317: $c8

	jp nc, $1831                                     ; $6318: $d2 $31 $18

	jp z, $31d3                                      ; $631b: $ca $d3 $31

	jr jr_033_62ec                                   ; $631e: $18 $cc

	jp nc, $1831                                     ; $6320: $d2 $31 $18

	or c                                             ; $6323: $b1
	db $e3                                           ; $6324: $e3
	ld b, [hl]                                       ; $6325: $46
	inc b                                            ; $6326: $04
	ld sp, $fd18                                     ; $6327: $31 $18 $fd
	cp $d0                                           ; $632a: $fe $d0
	adc h                                            ; $632c: $8c
	db $fd                                           ; $632d: $fd
	ld b, e                                          ; $632e: $43
	ld h, e                                          ; $632f: $63
	sub [hl]                                         ; $6330: $96
	ld d, b                                          ; $6331: $50
	rlca                                             ; $6332: $07
	sub a                                            ; $6333: $97
	dec a                                            ; $6334: $3d
	ld hl, $fdc0                                     ; $6335: $21 $c0 $fd
	ld b, e                                          ; $6338: $43
	ld h, e                                          ; $6339: $63
	sub [hl]                                         ; $633a: $96
	ld d, b                                          ; $633b: $50
	rlca                                             ; $633c: $07
	sub a                                            ; $633d: $97
	dec a                                            ; $633e: $3d
	inc hl                                           ; $633f: $23
	ret nz                                           ; $6340: $c0

	cp $ff                                           ; $6341: $fe $ff
	ret z                                            ; $6343: $c8

	pop de                                           ; $6344: $d1
	sub d                                            ; $6345: $92
	ld a, [hl]                                       ; $6346: $7e
	inc l                                            ; $6347: $2c
	nop                                              ; $6348: $00
	and d                                            ; $6349: $a2
	sub [hl]                                         ; $634a: $96
	ld a, [bc]                                       ; $634b: $0a
	rlca                                             ; $634c: $07
	sub a                                            ; $634d: $97
	sbc l                                            ; $634e: $9d
	cp [hl]                                          ; $634f: $be
	jr jr_033_6371                                   ; $6350: $18 $1f

	ld e, $1f                                        ; $6352: $1e $1f
	ld e, $be                                        ; $6354: $1e $be
	rra                                              ; $6356: $1f
	jr nc, @+$24                                     ; $6357: $30 $22

	jr nc, @-$01                                     ; $6359: $30 $fd

	cp $d0                                           ; $635b: $fe $d0
	adc h                                            ; $635d: $8c
	db $fd                                           ; $635e: $fd
	ld h, [hl]                                       ; $635f: $66
	ld h, e                                          ; $6360: $63
	db $fd                                           ; $6361: $fd
	ld h, [hl]                                       ; $6362: $66
	ld h, e                                          ; $6363: $63
	cp $ff                                           ; $6364: $fe $ff
	jp nz, Jump_033_7fd1                             ; $6366: $c2 $d1 $7f

	ld [hl+], a                                      ; $6369: $22
	ld a, [hl]                                       ; $636a: $7e
	inc [hl]                                         ; $636b: $34
	nop                                              ; $636c: $00
	xor c                                            ; $636d: $a9
	inc de                                           ; $636e: $13
	ld d, b                                          ; $636f: $50
	ld a, [hl]                                       ; $6370: $7e

jr_033_6371:
	dec l                                            ; $6371: $2d
	nop                                              ; $6372: $00
	and a                                            ; $6373: $a7
	inc de                                           ; $6374: $13
	ld c, b                                          ; $6375: $48
	call nz, $13d1                                   ; $6376: $c4 $d1 $13
	add hl, de                                       ; $6379: $19
	add $d1                                          ; $637a: $c6 $d1
	inc de                                           ; $637c: $13
	rrca                                             ; $637d: $0f
	jp nz, Jump_033_7ed1                             ; $637e: $c2 $d1 $7e

	ld [hl-], a                                      ; $6381: $32
	nop                                              ; $6382: $00
	xor c                                            ; $6383: $a9
	dec d                                            ; $6384: $15
	ld d, b                                          ; $6385: $50
	ld a, [hl]                                       ; $6386: $7e
	dec l                                            ; $6387: $2d
	nop                                              ; $6388: $00
	and a                                            ; $6389: $a7
	dec d                                            ; $638a: $15
	ld c, b                                          ; $638b: $48
	call nz, $13d1                                   ; $638c: $c4 $d1 $13
	rlca                                             ; $638f: $07
	ld de, $1007                                     ; $6390: $11 $07 $10
	rlca                                             ; $6393: $07
	add $d1                                          ; $6394: $c6 $d1
	rrca                                             ; $6396: $0f
	rlca                                             ; $6397: $07
	ld c, $07                                        ; $6398: $0e $07
	dec c                                            ; $639a: $0d
	dec b                                            ; $639b: $05
	db $fd                                           ; $639c: $fd
	cp $d0                                           ; $639d: $fe $d0
	ld b, [hl]                                       ; $639f: $46
	ld b, l                                          ; $63a0: $45
	ret nz                                           ; $63a1: $c0

	ret nc                                           ; $63a2: $d0

	adc h                                            ; $63a3: $8c
	ld b, c                                          ; $63a4: $41
	ret nz                                           ; $63a5: $c0

	cp [hl]                                          ; $63a6: $be
	jr nc, jr_033_63ef                               ; $63a7: $30 $46

	ld b, a                                          ; $63a9: $47
	ld c, b                                          ; $63aa: $48
	ld c, c                                          ; $63ab: $49
	cp [hl]                                          ; $63ac: $be
	cp $ff                                           ; $63ad: $fe $ff
	or d                                             ; $63af: $b2
	add d                                            ; $63b0: $82
	ld [bc], a                                       ; $63b1: $02
	ld [hl-], a                                      ; $63b2: $32
	rlca                                             ; $63b3: $07
	cp $fb                                           ; $63b4: $fe $fb
	set 2, e                                         ; $63b6: $cb $d3
	inc [hl]                                         ; $63b8: $34
	inc c                                            ; $63b9: $0c
	rst GetHLinHL                                          ; $63ba: $cf
	inc h                                            ; $63bb: $24
	inc c                                            ; $63bc: $0c
	call $35d2                                       ; $63bd: $cd $d2 $35
	inc c                                            ; $63c0: $0c
	adc $7d                                          ; $63c1: $ce $7d
	ld bc, $3c26                                     ; $63c3: $01 $26 $3c
	call Call_033_7dd3                               ; $63c6: $cd $d3 $7d
	nop                                              ; $63c9: $00
	inc [hl]                                         ; $63ca: $34
	inc c                                            ; $63cb: $0c
	adc $24                                          ; $63cc: $ce $24
	inc c                                            ; $63ce: $0c
	call $35d2                                       ; $63cf: $cd $d2 $35
	inc c                                            ; $63d2: $0c
	call z, $3c26                                    ; $63d3: $cc $26 $3c
	ei                                               ; $63d6: $fb
	inc bc                                           ; $63d7: $03
	ret z                                            ; $63d8: $c8

	pop de                                           ; $63d9: $d1
	ld l, $18                                        ; $63da: $2e $18

jr_033_63dc:
	jr nc, @+$1a                                     ; $63dc: $30 $18

	rst JumpTable                                          ; $63de: $c7
	db $d3                                           ; $63df: $d3
	jr nc, jr_033_6412                               ; $63e0: $30 $30

	add $d1                                          ; $63e2: $c6 $d1
	ld l, $18                                        ; $63e4: $2e $18
	jr nc, jr_033_6400                               ; $63e6: $30 $18

	push bc                                          ; $63e8: $c5
	jp nc, $3030                                     ; $63e9: $d2 $30 $30

	cp $ff                                           ; $63ec: $fe $ff
	or d                                             ; $63ee: $b2

jr_033_63ef:
	add d                                            ; $63ef: $82
	ld [bc], a                                       ; $63f0: $02
	ld h, h                                          ; $63f1: $64
	rlca                                             ; $63f2: $07
	cp $fb                                           ; $63f3: $fe $fb
	set 2, c                                         ; $63f5: $cb $d1
	ld a, [hl]                                       ; $63f7: $7e
	dec [hl]                                         ; $63f8: $35
	nop                                              ; $63f9: $00
	xor c                                            ; $63fa: $a9
	inc h                                            ; $63fb: $24
	jr jr_033_6424                                   ; $63fc: $18 $26

	jr @+$80                                         ; $63fe: $18 $7e

jr_033_6400:
	dec [hl]                                         ; $6400: $35
	nop                                              ; $6401: $00
	xor d                                            ; $6402: $aa
	ret                                              ; $6403: $c9


	dec l                                            ; $6404: $2d
	jr nc, jr_033_6434                               ; $6405: $30 $2d

	ld h, b                                          ; $6407: $60
	ei                                               ; $6408: $fb
	ld [bc], a                                       ; $6409: $02
	bit 7, [hl]                                      ; $640a: $cb $7e
	dec [hl]                                         ; $640c: $35
	nop                                              ; $640d: $00
	xor c                                            ; $640e: $a9
	inc h                                            ; $640f: $24
	jr @+$28                                         ; $6410: $18 $26

jr_033_6412:
	jr jr_033_63dc                                   ; $6412: $18 $c8

	ld a, l                                          ; $6414: $7d
	ld bc, $357e                                     ; $6415: $01 $7e $35
	nop                                              ; $6418: $00
	xor e                                            ; $6419: $ab
	dec l                                            ; $641a: $2d
	jr nc, jr_033_6448                               ; $641b: $30 $2b

	jr jr_033_6448                                   ; $641d: $18 $29

	ld c, b                                          ; $641f: $48
	ret z                                            ; $6420: $c8

	ld a, l                                          ; $6421: $7d
	nop                                              ; $6422: $00
	ld a, [hl]                                       ; $6423: $7e

jr_033_6424:
	dec [hl]                                         ; $6424: $35
	nop                                              ; $6425: $00
	xor c                                            ; $6426: $a9
	ld h, $18                                        ; $6427: $26 $18
	jr z, jr_033_6449                                ; $6429: $28 $1e

	rst JumpTable                                          ; $642b: $c7
	db $d3                                           ; $642c: $d3
	ld a, [hl]                                       ; $642d: $7e
	nop                                              ; $642e: $00
	jr z, @+$2c                                      ; $642f: $28 $2a

	rst JumpTable                                          ; $6431: $c7
	pop de                                           ; $6432: $d1
	ld a, [hl]                                       ; $6433: $7e

jr_033_6434:
	dec [hl]                                         ; $6434: $35
	nop                                              ; $6435: $00
	xor c                                            ; $6436: $a9
	ld h, $18                                        ; $6437: $26 $18
	jr z, jr_033_6459                                ; $6439: $28 $1e

	add $d2                                          ; $643b: $c6 $d2
	ld a, [hl]                                       ; $643d: $7e
	nop                                              ; $643e: $00
	jr z, jr_033_646b                                ; $643f: $28 $2a

	cp $ff                                           ; $6441: $fe $ff
	ret nc                                           ; $6443: $d0

	add d                                            ; $6444: $82
	cp $c2                                           ; $6445: $fe $c2
	add c                                            ; $6447: $81

jr_033_6448:
	ld a, [hl]                                       ; $6448: $7e

jr_033_6449:
	inc l                                            ; $6449: $2c
	ld bc, $16a4                                     ; $644a: $01 $a4 $16
	ld h, h                                          ; $644d: $64
	call nz, $0e16                                   ; $644e: $c4 $16 $0e
	add $16                                          ; $6451: $c6 $16
	ld b, $c2                                        ; $6453: $06 $c2
	ld a, a                                          ; $6455: $7f
	inc h                                            ; $6456: $24
	ld a, [hl]                                       ; $6457: $7e
	inc l                                            ; $6458: $2c

jr_033_6459:
	ld bc, $22a1                                     ; $6459: $01 $a1 $22
	inc h                                            ; $645c: $24
	inc h                                            ; $645d: $24
	inc h                                            ; $645e: $24
	cp $ff                                           ; $645f: $fe $ff
	ret nc                                           ; $6461: $d0

	or h                                             ; $6462: $b4
	nop                                              ; $6463: $00
	ld h, b                                          ; $6464: $60
	cp $92                                           ; $6465: $fe $92
	sub [hl]                                         ; $6467: $96
	ld a, [bc]                                       ; $6468: $0a
	inc bc                                           ; $6469: $03
	ld a, [hl]                                       ; $646a: $7e

jr_033_646b:
	inc l                                            ; $646b: $2c
	nop                                              ; $646c: $00
	and b                                            ; $646d: $a0
	ei                                               ; $646e: $fb
	db $fd                                           ; $646f: $fd
	jp c, $fb64                                      ; $6470: $da $64 $fb

	inc b                                            ; $6473: $04
	or l                                             ; $6474: $b5
	pop af                                           ; $6475: $f1
	inc bc                                           ; $6476: $03
	ld h, h                                          ; $6477: $64
	inc bc                                           ; $6478: $03
	ld a, [hl]                                       ; $6479: $7e
	nop                                              ; $647a: $00
	ld d, $20                                        ; $647b: $16 $20
	ld d, $30                                        ; $647d: $16 $30
	ld d, $60                                        ; $647f: $16 $60
	dec d                                            ; $6481: $15
	db $10                                           ; $6482: $10
	sub b                                            ; $6483: $90
	sub [hl]                                         ; $6484: $96
	ld h, h                                          ; $6485: $64
	ld bc, $10be                                     ; $6486: $01 $be $10
	add hl, de                                       ; $6489: $19
	ld a, [de]                                       ; $648a: $1a
	ld a, [de]                                       ; $648b: $1a
	add hl, de                                       ; $648c: $19
	ld a, [de]                                       ; $648d: $1a
	ld a, [de]                                       ; $648e: $1a
	cp [hl]                                          ; $648f: $be
	add hl, de                                       ; $6490: $19
	inc bc                                           ; $6491: $03
	ld a, [de]                                       ; $6492: $1a
	dec c                                            ; $6493: $0d
	add hl, de                                       ; $6494: $19
	db $10                                           ; $6495: $10
	jr jr_033_64a8                                   ; $6496: $18 $10

	dec d                                            ; $6498: $15
	inc bc                                           ; $6499: $03
	ld d, $0d                                        ; $649a: $16 $0d
	inc de                                           ; $649c: $13
	db $10                                           ; $649d: $10
	ld de, $9610                                     ; $649e: $11 $10 $96
	ld a, [bc]                                       ; $64a1: $0a
	inc bc                                           ; $64a2: $03
	sub d                                            ; $64a3: $92
	ld a, [hl]                                       ; $64a4: $7e
	inc l                                            ; $64a5: $2c
	nop                                              ; $64a6: $00
	and b                                            ; $64a7: $a0

jr_033_64a8:
	ei                                               ; $64a8: $fb
	db $fd                                           ; $64a9: $fd
	jp c, $fb64                                      ; $64aa: $da $64 $fb

	inc b                                            ; $64ad: $04
	or l                                             ; $64ae: $b5
	pop af                                           ; $64af: $f1
	inc bc                                           ; $64b0: $03
	ld h, h                                          ; $64b1: $64
	inc bc                                           ; $64b2: $03
	ld a, [hl]                                       ; $64b3: $7e
	nop                                              ; $64b4: $00
	ld d, $20                                        ; $64b5: $16 $20
	ld d, $30                                        ; $64b7: $16 $30
	ld d, $30                                        ; $64b9: $16 $30
	sub b                                            ; $64bb: $90
	sub [hl]                                         ; $64bc: $96
	ld h, h                                          ; $64bd: $64
	inc bc                                           ; $64be: $03
	ld e, $03                                        ; $64bf: $1e $03
	rra                                              ; $64c1: $1f
	dec l                                            ; $64c2: $2d
	ld [hl+], a                                      ; $64c3: $22
	db $10                                           ; $64c4: $10
	rra                                              ; $64c5: $1f
	db $10                                           ; $64c6: $10
	ld e, $10                                        ; $64c7: $1e $10
	dec e                                            ; $64c9: $1d
	db $10                                           ; $64ca: $10
	add hl, de                                       ; $64cb: $19
	inc bc                                           ; $64cc: $03
	ld a, [de]                                       ; $64cd: $1a
	dec e                                            ; $64ce: $1d
	cp [hl]                                          ; $64cf: $be
	db $10                                           ; $64d0: $10
	jr jr_033_64e9                                   ; $64d1: $18 $16

	jr jr_033_64ee                                   ; $64d3: $18 $19

	cp [hl]                                          ; $64d5: $be
	ld a, [de]                                       ; $64d6: $1a

jr_033_64d7:
	jr nc, jr_033_64d7                               ; $64d7: $30 $fe

	rst $38                                          ; $64d9: $ff
	add $d1                                          ; $64da: $c6 $d1
	dec hl                                           ; $64dc: $2b
	db $10                                           ; $64dd: $10
	add $d3                                          ; $64de: $c6 $d3
	dec hl                                           ; $64e0: $2b
	db $10                                           ; $64e1: $10
	add $d2                                          ; $64e2: $c6 $d2
	dec hl                                           ; $64e4: $2b
	db $10                                           ; $64e5: $10
	rst JumpTable                                          ; $64e6: $c7
	pop de                                           ; $64e7: $d1
	ld a, [hl+]                                      ; $64e8: $2a

jr_033_64e9:
	db $10                                           ; $64e9: $10
	rst JumpTable                                          ; $64ea: $c7
	db $d3                                           ; $64eb: $d3
	ld a, [hl+]                                      ; $64ec: $2a
	db $10                                           ; $64ed: $10

jr_033_64ee:
	rst JumpTable                                          ; $64ee: $c7
	pop de                                           ; $64ef: $d1
	add hl, hl                                       ; $64f0: $29
	db $10                                           ; $64f1: $10
	db $fd                                           ; $64f2: $fd
	or [hl]                                          ; $64f3: $b6
	or h                                             ; $64f4: $b4
	pop af                                           ; $64f5: $f1
	ld bc, $0464                                     ; $64f6: $01 $64 $04
	cp $cd                                           ; $64f9: $fe $cd
	ld e, $03                                        ; $64fb: $1e $03
	rra                                              ; $64fd: $1f
	dec e                                            ; $64fe: $1d
	sub [hl]                                         ; $64ff: $96
	ld h, h                                          ; $6500: $64
	ld [bc], a                                       ; $6501: $02
	ld [hl+], a                                      ; $6502: $22
	jr nc, @-$68                                     ; $6503: $30 $96

	nop                                              ; $6505: $00
	nop                                              ; $6506: $00
	ret                                              ; $6507: $c9


	ld a, [hl]                                       ; $6508: $7e
	ld [hl], $28                                     ; $6509: $36 $28
	xor c                                            ; $650b: $a9
	ld h, $98                                        ; $650c: $26 $98
	sub [hl]                                         ; $650e: $96
	ld d, b                                          ; $650f: $50
	ld b, $7e                                        ; $6510: $06 $7e
	inc l                                            ; $6512: $2c
	nop                                              ; $6513: $00

jr_033_6514:
	and b                                            ; $6514: $a0

jr_033_6515:
	ld h, $28                                        ; $6515: $26 $28
	ld a, [hl]                                       ; $6517: $7e
	nop                                              ; $6518: $00
	dec h                                            ; $6519: $25
	db $10                                           ; $651a: $10
	jp z, $2026                                      ; $651b: $ca $26 $20

	sub [hl]                                         ; $651e: $96
	ld h, h                                          ; $651f: $64
	inc bc                                           ; $6520: $03
	add hl, hl                                       ; $6521: $29
	db $10                                           ; $6522: $10
	ret z                                            ; $6523: $c8

	add hl, hl                                       ; $6524: $29
	db $10                                           ; $6525: $10
	or c                                             ; $6526: $b1
	or c                                             ; $6527: $b1
	ld h, h                                          ; $6528: $64
	inc b                                            ; $6529: $04
	jr z, jr_033_653c                                ; $652a: $28 $10

	inc h                                            ; $652c: $24
	db $10                                           ; $652d: $10
	ld h, $05                                        ; $652e: $26 $05
	daa                                              ; $6530: $27
	dec de                                           ; $6531: $1b
	sub [hl]                                         ; $6532: $96
	ld h, h                                          ; $6533: $64
	inc bc                                           ; $6534: $03
	add hl, hl                                       ; $6535: $29
	db $10                                           ; $6536: $10
	ret z                                            ; $6537: $c8

	add hl, hl                                       ; $6538: $29
	db $10                                           ; $6539: $10
	or c                                             ; $653a: $b1
	or c                                             ; $653b: $b1

jr_033_653c:
	ld h, h                                          ; $653c: $64
	inc b                                            ; $653d: $04
	daa                                              ; $653e: $27
	db $10                                           ; $653f: $10
	ld [hl+], a                                      ; $6540: $22
	db $10                                           ; $6541: $10
	or c                                             ; $6542: $b1
	and c                                            ; $6543: $a1
	nop                                              ; $6544: $00
	nop                                              ; $6545: $00
	ld a, [hl]                                       ; $6546: $7e
	ld [hl], $14                                     ; $6547: $36 $14
	xor c                                            ; $6549: $a9
	ld h, $98                                        ; $654a: $26 $98
	sub [hl]                                         ; $654c: $96
	ld h, h                                          ; $654d: $64
	inc b                                            ; $654e: $04
	ld a, [hl]                                       ; $654f: $7e
	inc l                                            ; $6550: $2c
	ld a, [bc]                                       ; $6551: $0a
	and b                                            ; $6552: $a0
	cp l                                             ; $6553: $bd
	ld [bc], a                                       ; $6554: $02
	ld h, $28                                        ; $6555: $26 $28
	ld d, b                                          ; $6557: $50
	bit 7, [hl]                                      ; $6558: $cb $7e
	nop                                              ; $655a: $00
	rra                                              ; $655b: $1f
	db $10                                           ; $655c: $10
	dec h                                            ; $655d: $25
	dec b                                            ; $655e: $05
	ld h, $2b                                        ; $655f: $26 $2b
	dec h                                            ; $6561: $25
	jr nz, jr_033_6515                               ; $6562: $20 $b1

	and c                                            ; $6564: $a1
	nop                                              ; $6565: $00
	nop                                              ; $6566: $00
	ld a, [hl]                                       ; $6567: $7e
	ld [hl], $28                                     ; $6568: $36 $28
	xor c                                            ; $656a: $a9
	inc h                                            ; $656b: $24
	adc [hl]                                         ; $656c: $8e
	sub [hl]                                         ; $656d: $96
	ld h, h                                          ; $656e: $64
	inc b                                            ; $656f: $04
	ld a, [hl]                                       ; $6570: $7e
	inc l                                            ; $6571: $2c
	nop                                              ; $6572: $00
	and b                                            ; $6573: $a0
	inc h                                            ; $6574: $24
	ld [hl-], a                                      ; $6575: $32
	ld a, [hl]                                       ; $6576: $7e
	nop                                              ; $6577: $00
	inc hl                                           ; $6578: $23
	db $10                                           ; $6579: $10
	sla h                                            ; $657a: $cb $24
	jr nz, jr_033_6514                               ; $657c: $20 $96

	ld h, h                                          ; $657e: $64
	inc bc                                           ; $657f: $03
	dec h                                            ; $6580: $25
	db $10                                           ; $6581: $10
	ret                                              ; $6582: $c9


	dec h                                            ; $6583: $25
	db $10                                           ; $6584: $10
	or c                                             ; $6585: $b1
	or c                                             ; $6586: $b1
	ld h, h                                          ; $6587: $64
	inc b                                            ; $6588: $04
	ld h, $10                                        ; $6589: $26 $10
	jp z, $1029                                      ; $658b: $ca $29 $10

	call z, $0521                                    ; $658e: $cc $21 $05
	ld [hl+], a                                      ; $6591: $22
	dec hl                                           ; $6592: $2b
	ld hl, $b120                                     ; $6593: $21 $20 $b1
	pop hl                                           ; $6596: $e1
	ld h, h                                          ; $6597: $64
	rlca                                             ; $6598: $07
	ld a, [hl]                                       ; $6599: $7e
	ld [hl], $10                                     ; $659a: $36 $10
	xor c                                            ; $659c: $a9
	rra                                              ; $659d: $1f
	ld h, b                                          ; $659e: $60
	sub [hl]                                         ; $659f: $96
	ld h, h                                          ; $65a0: $64
	inc b                                            ; $65a1: $04
	ld a, [hl]                                       ; $65a2: $7e
	dec l                                            ; $65a3: $2d
	ld d, b                                          ; $65a4: $50
	and c                                            ; $65a5: $a1
	ld a, [de]                                       ; $65a6: $1a
	ret nc                                           ; $65a7: $d0

	cp $ff                                           ; $65a8: $fe $ff
	or [hl]                                          ; $65aa: $b6
	or h                                             ; $65ab: $b4
	pop af                                           ; $65ac: $f1
	ld [hl+], a                                      ; $65ad: $22
	nop                                              ; $65ae: $00
	nop                                              ; $65af: $00
	nop                                              ; $65b0: $00
	ld h, b                                          ; $65b1: $60
	cp $c2                                           ; $65b2: $fe $c2
	rra                                              ; $65b4: $1f
	dec hl                                           ; $65b5: $2b
	call nz, $051f                                   ; $65b6: $c4 $1f $05
	jp nz, $2b1d                                     ; $65b9: $c2 $1d $2b

	call nz, $051d                                   ; $65bc: $c4 $1d $05
	jp nz, $2b1a                                     ; $65bf: $c2 $1a $2b

	call nz, $051a                                   ; $65c2: $c4 $1a $05
	jp nz, $1019                                     ; $65c5: $c2 $19 $10

	jr @+$12                                         ; $65c8: $18 $10

	rla                                              ; $65ca: $17
	db $10                                           ; $65cb: $10
	jr @+$1f                                         ; $65cc: $18 $1d

	call nz, $0318                                   ; $65ce: $c4 $18 $03
	jp nz, $1017                                     ; $65d1: $c2 $17 $10

	jr jr_033_65ff                                   ; $65d4: $18 $29

	call nz, $0718                                   ; $65d6: $c4 $18 $07
	jp nz, $2916                                     ; $65d9: $c2 $16 $29

	call nz, $0716                                   ; $65dc: $c4 $16 $07
	jp nz, $1c18                                     ; $65df: $c2 $18 $1c

	call nz, $0418                                   ; $65e2: $c4 $18 $04
	jp nz, $101e                                     ; $65e5: $c2 $1e $10

	rra                                              ; $65e8: $1f
	ld a, [de]                                       ; $65e9: $1a
	call nz, $061f                                   ; $65ea: $c4 $1f $06
	jp nz, $101f                                     ; $65ed: $c2 $1f $10

	call nz, $101f                                   ; $65f0: $c4 $1f $10
	add $1f                                          ; $65f3: $c6 $1f
	db $10                                           ; $65f5: $10
	jp nz, Jump_033_541f                             ; $65f6: $c2 $1f $54

	call nz, $0c1f                                   ; $65f9: $c4 $1f $0c
	jp nz, $101a                                     ; $65fc: $c2 $1a $10

jr_033_65ff:
	inc de                                           ; $65ff: $13
	ld a, [de]                                       ; $6600: $1a
	call nz, $0613                                   ; $6601: $c4 $13 $06
	jp nz, $1013                                     ; $6604: $c2 $13 $10

	call nz, $1013                                   ; $6607: $c4 $13 $10
	add $13                                          ; $660a: $c6 $13
	db $10                                           ; $660c: $10
	jp nz, Jump_033_4813                             ; $660d: $c2 $13 $48

	call nz, $0813                                   ; $6610: $c4 $13 $08
	jp nz, $101a                                     ; $6613: $c2 $1a $10

	add hl, de                                       ; $6616: $19
	db $10                                           ; $6617: $10
	jr @+$2d                                         ; $6618: $18 $2b

	call nz, $0518                                   ; $661a: $c4 $18 $05
	jp nz, $2b13                                     ; $661d: $c2 $13 $2b

	call nz, $0513                                   ; $6620: $c4 $13 $05
	jp nz, $2b16                                     ; $6623: $c2 $16 $2b

	call nz, $0516                                   ; $6626: $c4 $16 $05
	jp nz, $1017                                     ; $6629: $c2 $17 $10

	jr jr_033_663e                                   ; $662c: $18 $10

	add hl, de                                       ; $662e: $19
	db $10                                           ; $662f: $10
	ld a, [de]                                       ; $6630: $1a
	dec hl                                           ; $6631: $2b
	call nz, $051a                                   ; $6632: $c4 $1a $05
	jp nz, $2b18                                     ; $6635: $c2 $18 $2b

	call nz, $0518                                   ; $6638: $c4 $18 $05
	jp nz, $2b15                                     ; $663b: $c2 $15 $2b

jr_033_663e:
	call nz, $0515                                   ; $663e: $c4 $15 $05
	jp nz, $2b14                                     ; $6641: $c2 $14 $2b

	call nz, $0514                                   ; $6644: $c4 $14 $05
	jp nz, $1a13                                     ; $6647: $c2 $13 $1a

	call nz, $0613                                   ; $664a: $c4 $13 $06
	jp nz, $1013                                     ; $664d: $c2 $13 $10

	call nz, $1013                                   ; $6650: $c4 $13 $10
	add $13                                          ; $6653: $c6 $13
	db $10                                           ; $6655: $10
	jp nz, Jump_033_4813                             ; $6656: $c2 $13 $48

	call nz, $0813                                   ; $6659: $c4 $13 $08
	jp nz, $101d                                     ; $665c: $c2 $1d $10

	ld e, $10                                        ; $665f: $1e $10
	rra                                              ; $6661: $1f
	ld a, [de]                                       ; $6662: $1a
	call nz, $061f                                   ; $6663: $c4 $1f $06
	jp nz, $101f                                     ; $6666: $c2 $1f $10

	call nz, $101f                                   ; $6669: $c4 $1f $10
	add $1f                                          ; $666c: $c6 $1f
	db $10                                           ; $666e: $10
	jp nz, Jump_033_541f                             ; $666f: $c2 $1f $54

	call nz, $0c1f                                   ; $6672: $c4 $1f $0c
	jp nz, $101a                                     ; $6675: $c2 $1a $10

	cp $ff                                           ; $6678: $fe $ff
	ret nc                                           ; $667a: $d0

	or h                                             ; $667b: $b4
	nop                                              ; $667c: $00
	ld h, b                                          ; $667d: $60
	cp $fb                                           ; $667e: $fe $fb
	db $fd                                           ; $6680: $fd
	adc $66                                          ; $6681: $ce $66
	ei                                               ; $6683: $fb
	inc bc                                           ; $6684: $03
	ld sp, $be20                                     ; $6685: $31 $20 $be
	db $10                                           ; $6688: $10
	inc sp                                           ; $6689: $33
	inc c                                            ; $668a: $0c
	inc de                                           ; $668b: $13
	ld [hl-], a                                      ; $668c: $32
	cp [hl]                                          ; $668d: $be
	ld sp, $3b20                                     ; $668e: $31 $20 $3b
	jr nc, @+$37                                     ; $6691: $30 $35

	ld b, b                                          ; $6693: $40
	ld [de], a                                       ; $6694: $12
	db $10                                           ; $6695: $10
	add hl, bc                                       ; $6696: $09
	db $10                                           ; $6697: $10
	add hl, bc                                       ; $6698: $09
	db $10                                           ; $6699: $10
	ld sp, $3b20                                     ; $669a: $31 $20 $3b
	jr nc, @+$37                                     ; $669d: $30 $35

	ld b, b                                          ; $669f: $40
	ld sp, $3f10                                     ; $66a0: $31 $10 $3f
	db $10                                           ; $66a3: $10
	add hl, bc                                       ; $66a4: $09
	ld [$0812], sp                                   ; $66a5: $08 $12 $08
	ei                                               ; $66a8: $fb
	db $fd                                           ; $66a9: $fd
	adc $66                                          ; $66aa: $ce $66
	ei                                               ; $66ac: $fb
	inc bc                                           ; $66ad: $03
	ld sp, $1310                                     ; $66ae: $31 $10 $13
	db $10                                           ; $66b1: $10
	ld [hl-], a                                      ; $66b2: $32
	db $10                                           ; $66b3: $10
	ld e, $20                                        ; $66b4: $1e $20
	add hl, bc                                       ; $66b6: $09
	db $10                                           ; $66b7: $10
	ld sp, $3b20                                     ; $66b8: $31 $20 $3b
	jr nc, @+$37                                     ; $66bb: $30 $35

	ld h, b                                          ; $66bd: $60
	ld [hl-], a                                      ; $66be: $32
	db $10                                           ; $66bf: $10
	ld sp, $3b20                                     ; $66c0: $31 $20 $3b
	jr nc, jr_033_66fa                               ; $66c3: $30 $35

	ld b, b                                          ; $66c5: $40
	ld sp, $0c10                                     ; $66c6: $31 $10 $0c
	db $10                                           ; $66c9: $10
	ld e, $10                                        ; $66ca: $1e $10
	cp $ff                                           ; $66cc: $fe $ff
	ld sp, $3320                                     ; $66ce: $31 $20 $33
	db $10                                           ; $66d1: $10
	ccf                                              ; $66d2: $3f
	jr nz, jr_033_6707                               ; $66d3: $20 $32

	db $10                                           ; $66d5: $10
	db $fd                                           ; $66d6: $fd
	or [hl]                                          ; $66d7: $b6
	add d                                            ; $66d8: $82
	ld h, e                                          ; $66d9: $63
	ld [bc], a                                       ; $66da: $02
	ld a, [bc]                                       ; $66db: $0a
	ld bc, $2b7e                                     ; $66dc: $01 $7e $2b
	nop                                              ; $66df: $00
	and b                                            ; $66e0: $a0
	dec e                                            ; $66e1: $1d
	ld a, [bc]                                       ; $66e2: $0a
	ret z                                            ; $66e3: $c8

	jr nz, jr_033_66f0                               ; $66e4: $20 $0a

	call $0a24                                       ; $66e6: $cd $24 $0a
	pop de                                           ; $66e9: $d1
	jp z, $0a27                                      ; $66ea: $ca $27 $0a

	ret z                                            ; $66ed: $c8

	ld l, $0a                                        ; $66ee: $2e $0a

jr_033_66f0:
	jp nc, $31ce                                     ; $66f0: $d2 $ce $31

	ld a, [bc]                                       ; $66f3: $0a
	inc [hl]                                         ; $66f4: $34
	ld a, [bc]                                       ; $66f5: $0a
	db $d3                                           ; $66f6: $d3
	adc $38                                          ; $66f7: $ce $38
	ld a, [bc]                                       ; $66f9: $0a

jr_033_66fa:
	jp z, $0a38                                      ; $66fa: $ca $38 $0a

	call z, $38d2                                    ; $66fd: $cc $d2 $38
	ld a, [bc]                                       ; $6700: $0a
	jr c, @+$0c                                      ; $6701: $38 $0a

	srl b                                            ; $6703: $cb $38
	ld a, [bc]                                       ; $6705: $0a
	rst JumpTable                                          ; $6706: $c7

jr_033_6707:
	pop de                                           ; $6707: $d1
	jr c, jr_033_6714                                ; $6708: $38 $0a

	jr c, @+$0c                                      ; $670a: $38 $0a

	add $38                                          ; $670c: $c6 $38
	ld a, [bc]                                       ; $670e: $0a
	db $d3                                           ; $670f: $d3
	jr c, @+$0c                                      ; $6710: $38 $0a

	jr c, jr_033_671e                                ; $6712: $38 $0a

jr_033_6714:
	push bc                                          ; $6714: $c5
	jr c, jr_033_6721                                ; $6715: $38 $0a

	pop de                                           ; $6717: $d1
	call nz, $0a38                                   ; $6718: $c4 $38 $0a
	jp $0a38                                         ; $671b: $c3 $38 $0a


jr_033_671e:
	jp nz, $0a38                                     ; $671e: $c2 $38 $0a

jr_033_6721:
	rst $38                                          ; $6721: $ff
	or h                                             ; $6722: $b4
	add d                                            ; $6723: $82
	or c                                             ; $6724: $b1
	ld [bc], a                                       ; $6725: $02
	ld a, [hl]                                       ; $6726: $7e
	inc [hl]                                         ; $6727: $34
	nop                                              ; $6728: $00
	xor d                                            ; $6729: $aa
	ld [hl+], a                                      ; $672a: $22
	ld [hl-], a                                      ; $672b: $32
	ld a, [hl]                                       ; $672c: $7e
	dec l                                            ; $672d: $2d
	nop                                              ; $672e: $00
	and d                                            ; $672f: $a2
	ld [hl+], a                                      ; $6730: $22
	ld a, b                                          ; $6731: $78
	ld a, [hl]                                       ; $6732: $7e
	dec l                                            ; $6733: $2d
	nop                                              ; $6734: $00
	and a                                            ; $6735: $a7
	sub [hl]                                         ; $6736: $96
	ld h, h                                          ; $6737: $64
	dec b                                            ; $6738: $05
	ld [hl+], a                                      ; $6739: $22
	ld [hl-], a                                      ; $673a: $32
	rst $38                                          ; $673b: $ff
	or h                                             ; $673c: $b4
	add d                                            ; $673d: $82
	pop af                                           ; $673e: $f1
	ld [hl+], a                                      ; $673f: $22
	jp nz, $347e                                     ; $6740: $c2 $7e $34

	nop                                              ; $6743: $00
	xor d                                            ; $6744: $aa
	dec de                                           ; $6745: $1b
	ld [hl-], a                                      ; $6746: $32
	ld a, [hl]                                       ; $6747: $7e
	ld sp, $a700                                     ; $6748: $31 $00 $a7
	dec de                                           ; $674b: $1b
	ld a, b                                          ; $674c: $78
	ld a, [hl]                                       ; $674d: $7e
	nop                                              ; $674e: $00
	ld a, [de]                                       ; $674f: $1a
	ld b, $19                                        ; $6750: $06 $19
	ld b, $c4                                        ; $6752: $06 $c4
	jr jr_033_675c                                   ; $6754: $18 $06

	rla                                              ; $6756: $17
	ld b, $c6                                        ; $6757: $06 $c6
	ld d, $06                                        ; $6759: $16 $06
	dec d                                            ; $675b: $15

jr_033_675c:
	ld b, $ff                                        ; $675c: $06 $ff
	or [hl]                                          ; $675e: $b6
	jp nc, $02a2                                     ; $675f: $d2 $a2 $02

	sub [hl]                                         ; $6762: $96
	dec b                                            ; $6763: $05
	ld a, [hl]                                       ; $6764: $7e
	ld [hl], $00                                     ; $6765: $36 $00
	and c                                            ; $6767: $a1
	add hl, hl                                       ; $6768: $29
	jr @+$80                                         ; $6769: $18 $7e

	dec hl                                           ; $676b: $2b
	nop                                              ; $676c: $00
	and e                                            ; $676d: $a3
	ld a, l                                          ; $676e: $7d
	inc d                                            ; $676f: $14
	inc l                                            ; $6770: $2c
	inc c                                            ; $6771: $0c
	ld a, l                                          ; $6772: $7d
	ld [hl-], a                                      ; $6773: $32
	dec hl                                           ; $6774: $2b
	inc c                                            ; $6775: $0c
	ld a, [hl]                                       ; $6776: $7e
	ld [hl], $00                                     ; $6777: $36 $00
	xor c                                            ; $6779: $a9
	add hl, hl                                       ; $677a: $29
	inc h                                            ; $677b: $24
	inc h                                            ; $677c: $24
	inc c                                            ; $677d: $0c
	ld a, [hl]                                       ; $677e: $7e
	ld [hl], $00                                     ; $677f: $36 $00
	and d                                            ; $6781: $a2
	ld a, l                                          ; $6782: $7d
	jr z, jr_033_67a5                                ; $6783: $28 $20

	jr nc, jr_033_6804                               ; $6785: $30 $7d

	ld a, [bc]                                       ; $6787: $0a
	ld a, $0a                                        ; $6788: $3e $0a
	rst $38                                          ; $678a: $ff
	or [hl]                                          ; $678b: $b6
	jp nc, $0191                                     ; $678c: $d2 $91 $01

	sub [hl]                                         ; $678f: $96
	dec b                                            ; $6790: $05
	ld a, [hl]                                       ; $6791: $7e
	ld [hl], $00                                     ; $6792: $36 $00
	and c                                            ; $6794: $a1
	ld h, $18                                        ; $6795: $26 $18
	ld a, [hl]                                       ; $6797: $7e
	inc l                                            ; $6798: $2c
	nop                                              ; $6799: $00
	and d                                            ; $679a: $a2
	ld a, [hl+]                                      ; $679b: $2a
	inc c                                            ; $679c: $0c
	ld a, l                                          ; $679d: $7d
	inc d                                            ; $679e: $14
	daa                                              ; $679f: $27
	inc c                                            ; $67a0: $0c
	ld a, [hl]                                       ; $67a1: $7e
	ld [hl], $00                                     ; $67a2: $36 $00
	xor c                                            ; $67a4: $a9

jr_033_67a5:
	ld a, l                                          ; $67a5: $7d
	nop                                              ; $67a6: $00
	ld h, $24                                        ; $67a7: $26 $24
	ld a, l                                          ; $67a9: $7d
	rrca                                             ; $67aa: $0f
	ld hl, $7e0c                                     ; $67ab: $21 $0c $7e
	ld l, $00                                        ; $67ae: $2e $00
	and b                                            ; $67b0: $a0
	sub [hl]                                         ; $67b1: $96
	ret z                                            ; $67b2: $c8

	inc bc                                           ; $67b3: $03
	dec e                                            ; $67b4: $1d
	ld [hl-], a                                      ; $67b5: $32
	rst $38                                          ; $67b6: $ff
	or h                                             ; $67b7: $b4
	jp nc, $23f1                                     ; $67b8: $d2 $f1 $23

	jp nz, $367e                                     ; $67bb: $c2 $7e $36

	nop                                              ; $67be: $00
	and e                                            ; $67bf: $a3
	ld hl, $7e18                                     ; $67c0: $21 $18 $7e
	inc l                                            ; $67c3: $2c
	nop                                              ; $67c4: $00
	and e                                            ; $67c5: $a3
	ld e, $0c                                        ; $67c6: $1e $0c
	ld a, l                                          ; $67c8: $7d
	ld e, $24                                        ; $67c9: $1e $24
	inc c                                            ; $67cb: $0c
	ld a, [hl]                                       ; $67cc: $7e
	ld [hl], $00                                     ; $67cd: $36 $00
	and b                                            ; $67cf: $a0
	ld a, l                                          ; $67d0: $7d
	nop                                              ; $67d1: $00
	inc hl                                           ; $67d2: $23
	inc h                                            ; $67d3: $24
	inc e                                            ; $67d4: $1c
	inc c                                            ; $67d5: $0c
	ld a, l                                          ; $67d6: $7d
	ld [hl-], a                                      ; $67d7: $32
	ld a, [hl]                                       ; $67d8: $7e
	ld sp, $a700                                     ; $67d9: $31 $00 $a7
	jr jr_033_680e                                   ; $67dc: $18 $30

	call nz, $2c7e                                   ; $67de: $c4 $7e $2c
	nop                                              ; $67e1: $00
	and a                                            ; $67e2: $a7
	add hl, hl                                       ; $67e3: $29
	rrca                                             ; $67e4: $0f
	rst $38                                          ; $67e5: $ff
	ret nc                                           ; $67e6: $d0

	jp nc, $1837                                     ; $67e7: $d2 $37 $18

	dec a                                            ; $67ea: $3d
	inc c                                            ; $67eb: $0c
	dec a                                            ; $67ec: $3d
	inc c                                            ; $67ed: $0c
	ld sp, $3424                                     ; $67ee: $31 $24 $34
	inc c                                            ; $67f1: $0c
	ld b, [hl]                                       ; $67f2: $46
	jr nc, jr_033_6833                               ; $67f3: $30 $3e

	ld h, h                                          ; $67f5: $64
	rst $38                                          ; $67f6: $ff
	or [hl]                                          ; $67f7: $b6
	ld l, b                                          ; $67f8: $68
	ld d, c                                          ; $67f9: $51
	ld [bc], a                                       ; $67fa: $02
	nop                                              ; $67fb: $00
	nop                                              ; $67fc: $00
	nop                                              ; $67fd: $00
	ld [$0c32], sp                                   ; $67fe: $08 $32 $0c
	ld sp, $2d0c                                     ; $6801: $31 $0c $2d

jr_033_6804:
	inc c                                            ; $6804: $0c
	cp $c3                                           ; $6805: $fe $c3
	ld a, [hl+]                                      ; $6807: $2a
	inc b                                            ; $6808: $04
	or l                                             ; $6809: $b5
	or e                                             ; $680a: $b3
	nop                                              ; $680b: $00
	rst $38                                          ; $680c: $ff
	inc bc                                           ; $680d: $03

jr_033_680e:
	ld [hl-], a                                      ; $680e: $32
	inc c                                            ; $680f: $0c
	ld sp, $2d0c                                     ; $6810: $31 $0c $2d
	inc c                                            ; $6813: $0c
	ld a, [hl+]                                      ; $6814: $2a
	inc d                                            ; $6815: $14
	or l                                             ; $6816: $b5
	ld d, c                                          ; $6817: $51
	ld [bc], a                                       ; $6818: $02
	nop                                              ; $6819: $00
	nop                                              ; $681a: $00
	ld [hl-], a                                      ; $681b: $32
	inc c                                            ; $681c: $0c
	ld sp, $2d0c                                     ; $681d: $31 $0c $2d
	inc c                                            ; $6820: $0c
	jp nz, $042d                                     ; $6821: $c2 $2d $04

	or l                                             ; $6824: $b5
	or d                                             ; $6825: $b2
	nop                                              ; $6826: $00
	rst $38                                          ; $6827: $ff
	inc bc                                           ; $6828: $03
	ld [hl-], a                                      ; $6829: $32
	inc c                                            ; $682a: $0c
	ld sp, $2d0c                                     ; $682b: $31 $0c $2d
	inc c                                            ; $682e: $0c
	jr z, jr_033_683d                                ; $682f: $28 $0c

	or l                                             ; $6831: $b5
	ld h, c                                          ; $6832: $61

jr_033_6833:
	ld bc, $05ff                                     ; $6833: $01 $ff $05
	ld hl, $280c                                     ; $6836: $21 $0c $28
	inc c                                            ; $6839: $0c
	ld a, [hl+]                                      ; $683a: $2a
	inc c                                            ; $683b: $0c
	sub [hl]                                         ; $683c: $96

jr_033_683d:
	nop                                              ; $683d: $00
	nop                                              ; $683e: $00
	ei                                               ; $683f: $fb
	rst JumpTable                                          ; $6840: $c7
	rra                                              ; $6841: $1f
	ld b, $c2                                        ; $6842: $06 $c2
	rra                                              ; $6844: $1f
	ld b, $c7                                        ; $6845: $06 $c7
	ld a, [de]                                       ; $6847: $1a
	ld b, $c2                                        ; $6848: $06 $c2
	ld a, [de]                                       ; $684a: $1a
	ld b, $fb                                        ; $684b: $06 $fb
	ld [bc], a                                       ; $684d: $02
	ei                                               ; $684e: $fb
	ret z                                            ; $684f: $c8

	rra                                              ; $6850: $1f
	ld b, $c2                                        ; $6851: $06 $c2
	rra                                              ; $6853: $1f
	ld b, $c8                                        ; $6854: $06 $c8
	ld a, [de]                                       ; $6856: $1a
	ld b, $c2                                        ; $6857: $06 $c2
	ld a, [de]                                       ; $6859: $1a
	ld b, $fb                                        ; $685a: $06 $fb
	ld [bc], a                                       ; $685c: $02
	or c                                             ; $685d: $b1
	ld [hl], c                                       ; $685e: $71
	rst $38                                          ; $685f: $ff
	inc bc                                           ; $6860: $03
	jr z, jr_033_686f                                ; $6861: $28 $0c

	sub [hl]                                         ; $6863: $96
	rst $38                                          ; $6864: $ff
	inc b                                            ; $6865: $04
	ld hl, $250c                                     ; $6866: $21 $0c $25
	inc c                                            ; $6869: $0c
	jr z, jr_033_6878                                ; $686a: $28 $0c

	sub [hl]                                         ; $686c: $96
	rst $38                                          ; $686d: $ff
	dec b                                            ; $686e: $05

jr_033_686f:
	ld a, [hl]                                       ; $686f: $7e
	ld [bc], a                                       ; $6870: $02
	nop                                              ; $6871: $00
	xor c                                            ; $6872: $a9
	dec l                                            ; $6873: $2d
	jr @+$80                                         ; $6874: $18 $7e

	nop                                              ; $6876: $00
	or l                                             ; $6877: $b5

jr_033_6878:
	ld h, c                                          ; $6878: $61
	ld [bc], a                                       ; $6879: $02
	nop                                              ; $687a: $00
	nop                                              ; $687b: $00
	ld hl, $b10c                                     ; $687c: $21 $0c $b1
	ld d, c                                          ; $687f: $51
	rst $38                                          ; $6880: $ff
	ld [bc], a                                       ; $6881: $02
	cp [hl]                                          ; $6882: $be
	inc bc                                           ; $6883: $03
	dec h                                            ; $6884: $25
	ld h, $28                                        ; $6885: $26 $28
	add hl, hl                                       ; $6887: $29
	cp [hl]                                          ; $6888: $be

jr_033_6889:
	or l                                             ; $6889: $b5
	ld d, c                                          ; $688a: $51
	ld [bc], a                                       ; $688b: $02
	rst $38                                          ; $688c: $ff
	inc b                                            ; $688d: $04
	ld a, l                                          ; $688e: $7d
	ld [bc], a                                       ; $688f: $02
	nop                                              ; $6890: $00
	ld [$0cbe], sp                                   ; $6891: $08 $be $0c
	ld a, [hl+]                                      ; $6894: $2a
	dec l                                            ; $6895: $2d
	dec hl                                           ; $6896: $2b
	ld a, [hl+]                                      ; $6897: $2a
	dec hl                                           ; $6898: $2b
	dec l                                            ; $6899: $2d
	cpl                                              ; $689a: $2f
	cp [hl]                                          ; $689b: $be
	dec hl                                           ; $689c: $2b
	inc b                                            ; $689d: $04
	or c                                             ; $689e: $b1
	and c                                            ; $689f: $a1
	nop                                              ; $68a0: $00
	nop                                              ; $68a1: $00
	sub a                                            ; $68a2: $97
	dec a                                            ; $68a3: $3d
	ld a, l                                          ; $68a4: $7d
	nop                                              ; $68a5: $00
	ld sp, $970a                                     ; $68a6: $31 $0a $97
	inc a                                            ; $68a9: $3c
	cp [hl]                                          ; $68aa: $be
	dec b                                            ; $68ab: $05
	ld [hl-], a                                      ; $68ac: $32
	ld sp, $3132                                     ; $68ad: $31 $32 $31
	ld [hl-], a                                      ; $68b0: $32
	cp [hl]                                          ; $68b1: $be
	nop                                              ; $68b2: $00
	ld bc, $052f                                     ; $68b3: $01 $2f $05
	nop                                              ; $68b6: $00
	ld bc, $0631                                     ; $68b7: $01 $31 $06
	or c                                             ; $68ba: $b1
	ld d, c                                          ; $68bb: $51
	rst $38                                          ; $68bc: $ff
	rlca                                             ; $68bd: $07
	sub a                                            ; $68be: $97
	nop                                              ; $68bf: $00
	ld [hl-], a                                      ; $68c0: $32
	jr jr_033_6889                                   ; $68c1: $18 $c6

	ld h, $18                                        ; $68c3: $26 $18
	nop                                              ; $68c5: $00
	ld [$93c4], sp                                   ; $68c6: $08 $c4 $93
	ld a, l                                          ; $68c9: $7d
	ld [bc], a                                       ; $68ca: $02
	cp [hl]                                          ; $68cb: $be
	inc c                                            ; $68cc: $0c
	ld h, $2a                                        ; $68cd: $26 $2a
	jr z, jr_033_68f7                                ; $68cf: $28 $26

	jr z, jr_033_68fd                                ; $68d1: $28 $2a

	dec hl                                           ; $68d3: $2b
	cp [hl]                                          ; $68d4: $be
	jr z, jr_033_68db                                ; $68d5: $28 $04

	or l                                             ; $68d7: $b5
	add c                                            ; $68d8: $81
	ld [bc], a                                       ; $68d9: $02
	rst $38                                          ; $68da: $ff

jr_033_68db:
	dec b                                            ; $68db: $05
	ld a, l                                          ; $68dc: $7d
	nop                                              ; $68dd: $00
	cp [hl]                                          ; $68de: $be
	inc c                                            ; $68df: $0c
	ld hl, $1f1e                                     ; $68e0: $21 $1e $1f
	inc e                                            ; $68e3: $1c
	cp [hl]                                          ; $68e4: $be
	sub [hl]                                         ; $68e5: $96
	nop                                              ; $68e6: $00
	nop                                              ; $68e7: $00
	ld a, [hl]                                       ; $68e8: $7e
	ld bc, $a90c                                     ; $68e9: $01 $0c $a9
	ld e, $24                                        ; $68ec: $1e $24
	ld a, [hl]                                       ; $68ee: $7e
	nop                                              ; $68ef: $00
	jp $061e                                         ; $68f0: $c3 $1e $06


	jp nz, $061e                                     ; $68f3: $c2 $1e $06

	or l                                             ; $68f6: $b5

jr_033_68f7:
	ld h, c                                          ; $68f7: $61
	ld [bc], a                                       ; $68f8: $02
	rst $38                                          ; $68f9: $ff
	dec b                                            ; $68fa: $05
	cp [hl]                                          ; $68fb: $be

jr_033_68fc:
	inc c                                            ; $68fc: $0c

jr_033_68fd:
	ld hl, $282a                                     ; $68fd: $21 $2a $28
	inc h                                            ; $6900: $24
	inc hl                                           ; $6901: $23
	ld a, [de]                                       ; $6902: $1a
	rra                                              ; $6903: $1f
	ld h, $be                                        ; $6904: $26 $be

jr_033_6906:
	or l                                             ; $6906: $b5
	and c                                            ; $6907: $a1
	ld [bc], a                                       ; $6908: $02
	nop                                              ; $6909: $00
	nop                                              ; $690a: $00
	sub a                                            ; $690b: $97
	inc a                                            ; $690c: $3c
	ld a, l                                          ; $690d: $7d
	nop                                              ; $690e: $00
	ld sp, $970a                                     ; $690f: $31 $0a $97
	ld c, l                                          ; $6912: $4d
	ld [hl-], a                                      ; $6913: $32
	dec b                                            ; $6914: $05
	ld sp, $3205                                     ; $6915: $31 $05 $32
	dec b                                            ; $6918: $05
	ld sp, $3204                                     ; $6919: $31 $04 $32
	inc b                                            ; $691c: $04
	ld sp, $9703                                     ; $691d: $31 $03 $97
	ld c, l                                          ; $6920: $4d
	ld [hl-], a                                      ; $6921: $32
	dec b                                            ; $6922: $05
	nop                                              ; $6923: $00
	ld bc, $017d                                     ; $6924: $01 $7d $01
	inc [hl]                                         ; $6927: $34
	dec b                                            ; $6928: $05
	ld a, l                                          ; $6929: $7d
	nop                                              ; $692a: $00
	nop                                              ; $692b: $00
	ld bc, $71b1                                     ; $692c: $01 $b1 $71
	rst $38                                          ; $692f: $ff
	rlca                                             ; $6930: $07
	sub a                                            ; $6931: $97
	nop                                              ; $6932: $00
	ld [hl-], a                                      ; $6933: $32
	jr jr_033_68fc                                   ; $6934: $18 $c6

	ld h, $18                                        ; $6936: $26 $18
	or l                                             ; $6938: $b5
	ld [hl], c                                       ; $6939: $71
	inc bc                                           ; $693a: $03
	rst $38                                          ; $693b: $ff
	dec b                                            ; $693c: $05
	cp [hl]                                          ; $693d: $be
	inc c                                            ; $693e: $0c
	inc hl                                           ; $693f: $23
	ld hl, $1e1f                                     ; $6940: $21 $1f $1e
	jr nz, jr_033_6966                               ; $6943: $20 $21

	inc hl                                           ; $6945: $23
	jr nz, jr_033_6906                               ; $6946: $20 $be

	or l                                             ; $6948: $b5
	add c                                            ; $6949: $81
	ld [bc], a                                       ; $694a: $02
	nop                                              ; $694b: $00
	nop                                              ; $694c: $00
	ld a, [hl]                                       ; $694d: $7e
	ld bc, $a900                                     ; $694e: $01 $00 $a9
	ld hl, $7e1e                                     ; $6951: $21 $1e $7e
	nop                                              ; $6954: $00
	jp $0621                                         ; $6955: $c3 $21 $06


	or c                                             ; $6958: $b1
	add c                                            ; $6959: $81
	rst $38                                          ; $695a: $ff
	inc b                                            ; $695b: $04
	rra                                              ; $695c: $1f
	inc c                                            ; $695d: $0c
	sub [hl]                                         ; $695e: $96
	nop                                              ; $695f: $00
	nop                                              ; $6960: $00
	ld e, $24                                        ; $6961: $1e $24
	jp $061e                                         ; $6963: $c3 $1e $06


jr_033_6966:
	jp nz, $061e                                     ; $6966: $c2 $1e $06

	or l                                             ; $6969: $b5
	ld [hl], c                                       ; $696a: $71
	ld [bc], a                                       ; $696b: $02
	nop                                              ; $696c: $00
	nop                                              ; $696d: $00
	ld a, [de]                                       ; $696e: $1a
	jr jr_033_698d                                   ; $696f: $18 $1c

	inc c                                            ; $6971: $0c
	ld hl, $1f0c                                     ; $6972: $21 $0c $1f
	ld [de], a                                       ; $6975: $12
	jp $061f                                         ; $6976: $c3 $1f $06


	ld a, [hl]                                       ; $6979: $7e
	ld [bc], a                                       ; $697a: $02
	nop                                              ; $697b: $00
	xor d                                            ; $697c: $aa
	or c                                             ; $697d: $b1
	ld h, c                                          ; $697e: $61
	nop                                              ; $697f: $00
	nop                                              ; $6980: $00
	ld e, $16                                        ; $6981: $1e $16
	jp $021e                                         ; $6983: $c3 $1e $02


	ld a, [hl]                                       ; $6986: $7e
	nop                                              ; $6987: $00
	or c                                             ; $6988: $b1
	ld [hl], c                                       ; $6989: $71
	rst $38                                          ; $698a: $ff
	rlca                                             ; $698b: $07
	cp [hl]                                          ; $698c: $be

jr_033_698d:
	inc c                                            ; $698d: $0c
	dec h                                            ; $698e: $25
	ld h, $28                                        ; $698f: $26 $28
	dec h                                            ; $6991: $25
	cp [hl]                                          ; $6992: $be
	sub [hl]                                         ; $6993: $96
	nop                                              ; $6994: $00
	nop                                              ; $6995: $00
	ld h, $12                                        ; $6996: $26 $12
	jp $0626                                         ; $6998: $c3 $26 $06


	rst JumpTable                                          ; $699b: $c7
	ld e, $16                                        ; $699c: $1e $16
	jp $021e                                         ; $699e: $c3 $1e $02


	sub a                                            ; $69a1: $97
	ld l, h                                          ; $69a2: $6c
	sub d                                            ; $69a3: $92
	sub [hl]                                         ; $69a4: $96
	nop                                              ; $69a5: $00
	nop                                              ; $69a6: $00
	ld a, l                                          ; $69a7: $7d
	nop                                              ; $69a8: $00
	rra                                              ; $69a9: $1f
	ld a, [bc]                                       ; $69aa: $0a
	sub a                                            ; $69ab: $97
	ld e, d                                          ; $69ac: $5a
	cp [hl]                                          ; $69ad: $be
	dec b                                            ; $69ae: $05
	ld hl, $211f                                     ; $69af: $21 $1f $21
	rra                                              ; $69b2: $1f
	ld hl, $00be                                     ; $69b3: $21 $be $00
	ld bc, $051f                                     ; $69b6: $01 $1f $05
	nop                                              ; $69b9: $00
	ld bc, $061e                                     ; $69ba: $01 $1e $06
	sub a                                            ; $69bd: $97
	nop                                              ; $69be: $00
	or c                                             ; $69bf: $b1
	add c                                            ; $69c0: $81
	inc d                                            ; $69c1: $14
	inc b                                            ; $69c2: $04
	inc e                                            ; $69c3: $1c
	inc c                                            ; $69c4: $0c
	or l                                             ; $69c5: $b5
	add c                                            ; $69c6: $81
	inc bc                                           ; $69c7: $03
	rst $38                                          ; $69c8: $ff
	inc bc                                           ; $69c9: $03
	ld a, l                                          ; $69ca: $7d
	ld bc, $0c15                                     ; $69cb: $01 $15 $0c
	rla                                              ; $69ce: $17
	inc c                                            ; $69cf: $0c
	add hl, de                                       ; $69d0: $19
	inc c                                            ; $69d1: $0c
	or c                                             ; $69d2: $b1
	sub c                                            ; $69d3: $91
	rst $38                                          ; $69d4: $ff
	inc bc                                           ; $69d5: $03
	ld a, l                                          ; $69d6: $7d
	ld [bc], a                                       ; $69d7: $02
	cp [hl]                                          ; $69d8: $be
	inc c                                            ; $69d9: $0c
	ld a, [de]                                       ; $69da: $1a
	inc e                                            ; $69db: $1c
	ld e, $1f                                        ; $69dc: $1e $1f
	cp [hl]                                          ; $69de: $be
	ld a, l                                          ; $69df: $7d
	nop                                              ; $69e0: $00
	or c                                             ; $69e1: $b1
	ld [hl], c                                       ; $69e2: $71
	nop                                              ; $69e3: $00
	nop                                              ; $69e4: $00
	ld a, [hl]                                       ; $69e5: $7e
	ld bc, $ab00                                     ; $69e6: $01 $00 $ab
	ld hl, $b50c                                     ; $69e9: $21 $0c $b5
	add c                                            ; $69ec: $81
	ld [bc], a                                       ; $69ed: $02
	rst $38                                          ; $69ee: $ff
	inc b                                            ; $69ef: $04
	ld [hl-], a                                      ; $69f0: $32
	inc c                                            ; $69f1: $0c
	ld sp, $2d0c                                     ; $69f2: $31 $0c $2d
	inc d                                            ; $69f5: $14
	cp $b6                                           ; $69f6: $fe $b6
	ld l, b                                          ; $69f8: $68
	and c                                            ; $69f9: $a1
	ld [bc], a                                       ; $69fa: $02
	rst $38                                          ; $69fb: $ff
	ld [bc], a                                       ; $69fc: $02
	ld [hl-], a                                      ; $69fd: $32
	inc c                                            ; $69fe: $0c
	ld sp, $2d0c                                     ; $69ff: $31 $0c $2d
	inc c                                            ; $6a02: $0c
	cp $b1                                           ; $6a03: $fe $b1
	ld [hl], c                                       ; $6a05: $71
	rst $38                                          ; $6a06: $ff
	ld b, $2a                                        ; $6a07: $06 $2a
	inc h                                            ; $6a09: $24
	or c                                             ; $6a0a: $b1
	ld hl, $0000                                     ; $6a0b: $21 $00 $00
	ld a, [hl+]                                      ; $6a0e: $2a
	inc c                                            ; $6a0f: $0c
	pop bc                                           ; $6a10: $c1

jr_033_6a11:
	ld a, [hl+]                                      ; $6a11: $2a
	inc c                                            ; $6a12: $0c
	or c                                             ; $6a13: $b1
	sub c                                            ; $6a14: $91
	rst $38                                          ; $6a15: $ff
	ld [bc], a                                       ; $6a16: $02
	ld [hl-], a                                      ; $6a17: $32
	inc c                                            ; $6a18: $0c
	ld sp, $2d0c                                     ; $6a19: $31 $0c $2d
	inc c                                            ; $6a1c: $0c
	or c                                             ; $6a1d: $b1
	add c                                            ; $6a1e: $81
	rst $38                                          ; $6a1f: $ff
	ld b, $28                                        ; $6a20: $06 $28
	inc h                                            ; $6a22: $24
	or c                                             ; $6a23: $b1
	ld sp, $0000                                     ; $6a24: $31 $00 $00
	jr z, jr_033_6a35                                ; $6a27: $28 $0c

	jp nz, $0c28                                     ; $6a29: $c2 $28 $0c

	or c                                             ; $6a2c: $b1
	and c                                            ; $6a2d: $a1
	rst $38                                          ; $6a2e: $ff
	ld [bc], a                                       ; $6a2f: $02
	ld [hl-], a                                      ; $6a30: $32
	inc c                                            ; $6a31: $0c
	ld sp, $2d0c                                     ; $6a32: $31 $0c $2d

jr_033_6a35:
	inc c                                            ; $6a35: $0c
	or c                                             ; $6a36: $b1
	and c                                            ; $6a37: $a1
	rst $38                                          ; $6a38: $ff
	inc b                                            ; $6a39: $04
	ld h, $24                                        ; $6a3a: $26 $24
	sub [hl]                                         ; $6a3c: $96
	rst $38                                          ; $6a3d: $ff
	ld [bc], a                                       ; $6a3e: $02
	dec h                                            ; $6a3f: $25
	inc c                                            ; $6a40: $0c

jr_033_6a41:
	sub [hl]                                         ; $6a41: $96
	rst $38                                          ; $6a42: $ff
	inc bc                                           ; $6a43: $03
	ld h, $18                                        ; $6a44: $26 $18
	ret                                              ; $6a46: $c9


	cpl                                              ; $6a47: $2f
	jr jr_033_6ac8                                   ; $6a48: $18 $7e

	ld bc, $a90c                                     ; $6a4a: $01 $0c $a9
	sub [hl]                                         ; $6a4d: $96
	rst $38                                          ; $6a4e: $ff
	inc bc                                           ; $6a4f: $03
	dec l                                            ; $6a50: $2d
	jr jr_033_6a7e                                   ; $6a51: $18 $2b

	jr @-$68                                         ; $6a53: $18 $96

	rst $38                                          ; $6a55: $ff
	inc b                                            ; $6a56: $04
	ld a, [hl+]                                      ; $6a57: $2a
	jr @+$2a                                         ; $6a58: $18 $28

	jr jr_033_6a11                                   ; $6a5a: $18 $b5

	or c                                             ; $6a5c: $b1
	inc bc                                           ; $6a5d: $03
	rst $38                                          ; $6a5e: $ff
	ld [bc], a                                       ; $6a5f: $02
	cp [hl]                                          ; $6a60: $be
	inc c                                            ; $6a61: $0c

Jump_033_6a62:
	ld a, [hl+]                                      ; $6a62: $2a
	dec l                                            ; $6a63: $2d
	dec hl                                           ; $6a64: $2b
	ld a, [hl+]                                      ; $6a65: $2a
	dec hl                                           ; $6a66: $2b
	dec l                                            ; $6a67: $2d
	cpl                                              ; $6a68: $2f
	dec hl                                           ; $6a69: $2b
	cp [hl]                                          ; $6a6a: $be
	call z, $0cbe                                    ; $6a6b: $cc $be $0c
	jr z, @+$2d                                      ; $6a6e: $28 $2b

	ld a, [hl+]                                      ; $6a70: $2a
	jr z, jr_033_6a9d                                ; $6a71: $28 $2a

	dec hl                                           ; $6a73: $2b
	dec l                                            ; $6a74: $2d
	ld a, [hl+]                                      ; $6a75: $2a
	cp [hl]                                          ; $6a76: $be
	res 7, [hl]                                      ; $6a77: $cb $be
	inc c                                            ; $6a79: $0c
	ld h, $2a                                        ; $6a7a: $26 $2a
	jr z, jr_033_6aa4                                ; $6a7c: $28 $26

jr_033_6a7e:
	jr z, jr_033_6aaa                                ; $6a7e: $28 $2a

	dec hl                                           ; $6a80: $2b

jr_033_6a81:
	jr z, jr_033_6a41                                ; $6a81: $28 $be

	res 7, [hl]                                      ; $6a83: $cb $be
	inc c                                            ; $6a85: $0c
	dec h                                            ; $6a86: $25
	jr z, jr_033_6aaf                                ; $6a87: $28 $26

	dec h                                            ; $6a89: $25
	cp [hl]                                          ; $6a8a: $be
	or c                                             ; $6a8b: $b1
	and c                                            ; $6a8c: $a1
	nop                                              ; $6a8d: $00
	nop                                              ; $6a8e: $00
	ld a, [hl]                                       ; $6a8f: $7e
	ld bc, $aa0c                                     ; $6a90: $01 $0c $aa
	ld h, $24                                        ; $6a93: $26 $24
	ld a, [hl]                                       ; $6a95: $7e
	nop                                              ; $6a96: $00
	jp $0626                                         ; $6a97: $c3 $26 $06


	jp nz, $0626                                     ; $6a9a: $c2 $26 $06

jr_033_6a9d:
	or l                                             ; $6a9d: $b5
	pop bc                                           ; $6a9e: $c1
	inc bc                                           ; $6a9f: $03
	rst $38                                          ; $6aa0: $ff
	ld [bc], a                                       ; $6aa1: $02
	cp [hl]                                          ; $6aa2: $be
	inc c                                            ; $6aa3: $0c

jr_033_6aa4:
	ld a, [hl+]                                      ; $6aa4: $2a
	dec l                                            ; $6aa5: $2d
	dec hl                                           ; $6aa6: $2b
	ld a, [hl+]                                      ; $6aa7: $2a
	dec hl                                           ; $6aa8: $2b
	dec l                                            ; $6aa9: $2d

jr_033_6aaa:
	cpl                                              ; $6aaa: $2f
	dec hl                                           ; $6aab: $2b
	cp [hl]                                          ; $6aac: $be
	cp [hl]                                          ; $6aad: $be
	inc c                                            ; $6aae: $0c

jr_033_6aaf:
	jr z, jr_033_6adc                                ; $6aaf: $28 $2b

	ld a, [hl+]                                      ; $6ab1: $2a
	jr z, jr_033_6ade                                ; $6ab2: $28 $2a

	dec hl                                           ; $6ab4: $2b
	dec l                                            ; $6ab5: $2d
	ld a, [hl+]                                      ; $6ab6: $2a

jr_033_6ab7:
	cp [hl]                                          ; $6ab7: $be
	cp [hl]                                          ; $6ab8: $be
	inc c                                            ; $6ab9: $0c
	ld h, $2a                                        ; $6aba: $26 $2a
	jr z, jr_033_6ae4                                ; $6abc: $28 $26

	jr z, jr_033_6aea                                ; $6abe: $28 $2a

	dec hl                                           ; $6ac0: $2b
	jr z, jr_033_6a81                                ; $6ac1: $28 $be

	cp [hl]                                          ; $6ac3: $be
	inc c                                            ; $6ac4: $0c
	dec h                                            ; $6ac5: $25
	jr z, jr_033_6aee                                ; $6ac6: $28 $26

jr_033_6ac8:
	dec h                                            ; $6ac8: $25
	cp [hl]                                          ; $6ac9: $be
	or c                                             ; $6aca: $b1
	and c                                            ; $6acb: $a1
	nop                                              ; $6acc: $00
	nop                                              ; $6acd: $00
	ld h, $24                                        ; $6ace: $26 $24
	jp $0626                                         ; $6ad0: $c3 $26 $06


	jp nz, $0626                                     ; $6ad3: $c2 $26 $06

	or l                                             ; $6ad6: $b5
	pop bc                                           ; $6ad7: $c1
	inc bc                                           ; $6ad8: $03
	rst $38                                          ; $6ad9: $ff
	ld [bc], a                                       ; $6ada: $02
	cp [hl]                                          ; $6adb: $be

jr_033_6adc:
	inc c                                            ; $6adc: $0c
	ld a, [hl+]                                      ; $6add: $2a

jr_033_6ade:
	dec l                                            ; $6ade: $2d
	dec hl                                           ; $6adf: $2b
	ld a, [hl+]                                      ; $6ae0: $2a
	dec hl                                           ; $6ae1: $2b
	dec l                                            ; $6ae2: $2d
	cpl                                              ; $6ae3: $2f

jr_033_6ae4:
	dec hl                                           ; $6ae4: $2b
	cp [hl]                                          ; $6ae5: $be
	cp [hl]                                          ; $6ae6: $be
	inc c                                            ; $6ae7: $0c
	jr z, @+$2d                                      ; $6ae8: $28 $2b

jr_033_6aea:
	ld a, [hl+]                                      ; $6aea: $2a
	jr z, @+$2c                                      ; $6aeb: $28 $2a

	dec hl                                           ; $6aed: $2b

jr_033_6aee:
	dec l                                            ; $6aee: $2d

jr_033_6aef:
	ld a, [hl+]                                      ; $6aef: $2a

jr_033_6af0:
	cp [hl]                                          ; $6af0: $be
	cp [hl]                                          ; $6af1: $be
	inc c                                            ; $6af2: $0c
	ld h, $2a                                        ; $6af3: $26 $2a

jr_033_6af5:
	jr z, @+$28                                      ; $6af5: $28 $26

	jr z, jr_033_6ab7                                ; $6af7: $28 $be

	sra d                                            ; $6af9: $cb $2a
	inc c                                            ; $6afb: $0c
	dec hl                                           ; $6afc: $2b
	inc c                                            ; $6afd: $0c
	dec l                                            ; $6afe: $2d
	inc c                                            ; $6aff: $0c
	cp [hl]                                          ; $6b00: $be
	inc c                                            ; $6b01: $0c
	cpl                                              ; $6b02: $2f
	ld sp, $3432                                     ; $6b03: $31 $32 $34
	cp [hl]                                          ; $6b06: $be
	or c                                             ; $6b07: $b1
	and c                                            ; $6b08: $a1
	nop                                              ; $6b09: $00
	nop                                              ; $6b0a: $00
	ld a, [hl]                                       ; $6b0b: $7e
	ld bc, $ab00                                     ; $6b0c: $01 $00 $ab
	ld [hl], $0c                                     ; $6b0f: $36 $0c
	ld a, [hl]                                       ; $6b11: $7e
	nop                                              ; $6b12: $00
	call nz, $0c36                                   ; $6b13: $c4 $36 $0c
	jp $0c36                                         ; $6b16: $c3 $36 $0c


	jp nz, $0c36                                     ; $6b19: $c2 $36 $0c

	cp $ff                                           ; $6b1c: $fe $ff
	or h                                             ; $6b1e: $b4
	ld l, b                                          ; $6b1f: $68
	ld hl, $0003                                     ; $6b20: $21 $03 $00
	inc h                                            ; $6b23: $24
	cp $c4                                           ; $6b24: $fe $c4
	ld a, [de]                                       ; $6b26: $1a
	jr nc, jr_033_6aef                               ; $6b27: $30 $c6

	ld a, [de]                                       ; $6b29: $1a
	jr nc, jr_033_6af0                               ; $6b2a: $30 $c4

	dec d                                            ; $6b2c: $15
	jr nc, jr_033_6af5                               ; $6b2d: $30 $c6

	dec d                                            ; $6b2f: $15
	jr nc, @-$3a                                     ; $6b30: $30 $c4

	inc de                                           ; $6b32: $13
	ld a, [hl+]                                      ; $6b33: $2a
	add $13                                          ; $6b34: $c6 $13
	ld b, $c4                                        ; $6b36: $06 $c4
	inc de                                           ; $6b38: $13
	ld a, [hl+]                                      ; $6b39: $2a
	add $13                                          ; $6b3a: $c6 $13
	ld b, $c4                                        ; $6b3c: $06 $c4
	dec d                                            ; $6b3e: $15
	ld d, $c6                                        ; $6b3f: $16 $c6
	dec d                                            ; $6b41: $15
	ld [bc], a                                       ; $6b42: $02
	call nz, $1614                                   ; $6b43: $c4 $14 $16
	add $14                                          ; $6b46: $c6 $14
	ld [bc], a                                       ; $6b48: $02
	call nz, $1615                                   ; $6b49: $c4 $15 $16
	add $15                                          ; $6b4c: $c6 $15
	ld [bc], a                                       ; $6b4e: $02
	call nz, $1619                                   ; $6b4f: $c4 $19 $16
	add $19                                          ; $6b52: $c6 $19
	ld [bc], a                                       ; $6b54: $02
	jp nz, $177f                                     ; $6b55: $c2 $7f $17

	ld a, [de]                                       ; $6b58: $1a
	inc h                                            ; $6b59: $24
	call nz, $0c1a                                   ; $6b5a: $c4 $1a $0c
	jp nz, $1417                                     ; $6b5d: $c2 $17 $14

	call nz, $0417                                   ; $6b60: $c4 $17 $04
	jp nz, $141a                                     ; $6b63: $c2 $1a $14

	call nz, $041a                                   ; $6b66: $c4 $1a $04
	jp nz, $2219                                     ; $6b69: $c2 $19 $22

	call nz, $0219                                   ; $6b6c: $c4 $19 $02
	jp nz, $061a                                     ; $6b6f: $c2 $1a $06

	inc e                                            ; $6b72: $1c
	ld b, $c2                                        ; $6b73: $06 $c2
	ld a, [de]                                       ; $6b75: $1a
	inc d                                            ; $6b76: $14
	call nz, $041a                                   ; $6b77: $c4 $1a $04
	jp nz, $1412                                     ; $6b7a: $c2 $12 $14

	call nz, $0412                                   ; $6b7d: $c4 $12 $04
	jp nz, $2413                                     ; $6b80: $c2 $13 $24

	call nz, $0c13                                   ; $6b83: $c4 $13 $0c
	jp nz, $2410                                     ; $6b86: $c2 $10 $24

	call nz, $0c10                                   ; $6b89: $c4 $10 $0c
	jp nz, $2215                                     ; $6b8c: $c2 $15 $22

	call nz, $0215                                   ; $6b8f: $c4 $15 $02
	jp nz, $0a15                                     ; $6b92: $c2 $15 $0a

	call nz, $0215                                   ; $6b95: $c4 $15 $02
	add a                                            ; $6b98: $87
	jp nz, $240e                                     ; $6b99: $c2 $0e $24

	add $0e                                          ; $6b9c: $c6 $0e
	inc c                                            ; $6b9e: $0c
	jp nz, $177f                                     ; $6b9f: $c2 $7f $17

	ld a, [de]                                       ; $6ba2: $1a
	inc h                                            ; $6ba3: $24
	call nz, $0c1a                                   ; $6ba4: $c4 $1a $0c
	jp nz, $1417                                     ; $6ba7: $c2 $17 $14

	call nz, $0417                                   ; $6baa: $c4 $17 $04
	jp nz, $1413                                     ; $6bad: $c2 $13 $14

	call nz, $0413                                   ; $6bb0: $c4 $13 $04
	jp nz, $2215                                     ; $6bb3: $c2 $15 $22

	call nz, $0215                                   ; $6bb6: $c4 $15 $02
	jp nz, $0615                                     ; $6bb9: $c2 $15 $06

	inc de                                           ; $6bbc: $13
	ld b, $c2                                        ; $6bbd: $06 $c2
	ld [de], a                                       ; $6bbf: $12
	inc d                                            ; $6bc0: $14
	call nz, $0412                                   ; $6bc1: $c4 $12 $04
	add a                                            ; $6bc4: $87
	jp nz, $140e                                     ; $6bc5: $c2 $0e $14

	call nz, $040e                                   ; $6bc8: $c4 $0e $04
	jp nz, $2413                                     ; $6bcb: $c2 $13 $24

	call nz, $0c13                                   ; $6bce: $c4 $13 $0c
	jp nz, $2410                                     ; $6bd1: $c2 $10 $24

	call nz, $0c10                                   ; $6bd4: $c4 $10 $0c
	jp nz, $2215                                     ; $6bd7: $c2 $15 $22

	call nz, $0215                                   ; $6bda: $c4 $15 $02
	jp nz, $0a15                                     ; $6bdd: $c2 $15 $0a

	call nz, $0215                                   ; $6be0: $c4 $15 $02
	jp nz, $240e                                     ; $6be3: $c2 $0e $24

	add $0e                                          ; $6be6: $c6 $0e
	inc c                                            ; $6be8: $0c
	jp nz, $177f                                     ; $6be9: $c2 $7f $17

	ld c, $16                                        ; $6bec: $0e $16
	call nz, $020e                                   ; $6bee: $c4 $0e $02
	jp nz, $1612                                     ; $6bf1: $c2 $12 $16

	call nz, $0212                                   ; $6bf4: $c4 $12 $02
	jp nz, $1413                                     ; $6bf7: $c2 $13 $14

	call nz, $0413                                   ; $6bfa: $c4 $13 $04
	jp nz, $141a                                     ; $6bfd: $c2 $1a $14

	call nz, $041a                                   ; $6c00: $c4 $1a $04
	jp nz, $1419                                     ; $6c03: $c2 $19 $14

	call nz, $0419                                   ; $6c06: $c4 $19 $04
	jp nz, $1415                                     ; $6c09: $c2 $15 $14

	call nz, $0415                                   ; $6c0c: $c4 $15 $04
	jp nz, $141a                                     ; $6c0f: $c2 $1a $14

	call nz, $041a                                   ; $6c12: $c4 $1a $04
	jp nz, $1412                                     ; $6c15: $c2 $12 $14

jr_033_6c18:
	call nz, $0412                                   ; $6c18: $c4 $12 $04
	jp nz, $2410                                     ; $6c1b: $c2 $10 $24

	call nz, $0c10                                   ; $6c1e: $c4 $10 $0c
	jp nz, $2413                                     ; $6c21: $c2 $13 $24

	call nz, $0c13                                   ; $6c24: $c4 $13 $0c
	jp nz, $2215                                     ; $6c27: $c2 $15 $22

	call nz, $0215                                   ; $6c2a: $c4 $15 $02
	jp nz, $0a15                                     ; $6c2d: $c2 $15 $0a

	add $15                                          ; $6c30: $c6 $15
	ld [bc], a                                       ; $6c32: $02
	jp nz, $180e                                     ; $6c33: $c2 $0e $18

	call nz, $0c0e                                   ; $6c36: $c4 $0e $0c
	add $0e                                          ; $6c39: $c6 $0e
	inc c                                            ; $6c3b: $0c
	cp $ff                                           ; $6c3c: $fe $ff
	ret nc                                           ; $6c3e: $d0

	ld l, b                                          ; $6c3f: $68
	nop                                              ; $6c40: $00
	inc h                                            ; $6c41: $24
	cp $be                                           ; $6c42: $fe $be
	inc c                                            ; $6c44: $0c
	add hl, bc                                       ; $6c45: $09
	add hl, bc                                       ; $6c46: $09
	nop                                              ; $6c47: $00
	ld [de], a                                       ; $6c48: $12
	cp [hl]                                          ; $6c49: $be
	ld c, $18                                        ; $6c4a: $0e $18
	nop                                              ; $6c4c: $00
	jr @-$40                                         ; $6c4d: $18 $be

	inc c                                            ; $6c4f: $0c
	add hl, bc                                       ; $6c50: $09
	ld [de], a                                       ; $6c51: $12
	add hl, bc                                       ; $6c52: $09
	ld [de], a                                       ; $6c53: $12
	cp [hl]                                          ; $6c54: $be
	ld c, $18                                        ; $6c55: $0e $18
	nop                                              ; $6c57: $00
	jr jr_033_6c18                                   ; $6c58: $18 $be

	inc c                                            ; $6c5a: $0c
	add hl, bc                                       ; $6c5b: $09
	ld [de], a                                       ; $6c5c: $12
	rla                                              ; $6c5d: $17
	rla                                              ; $6c5e: $17
	add hl, bc                                       ; $6c5f: $09
	ld [de], a                                       ; $6c60: $12
	rla                                              ; $6c61: $17
	cp [hl]                                          ; $6c62: $be
	ld c, $06                                        ; $6c63: $0e $06
	ld c, $05                                        ; $6c65: $0e $05
	dec c                                            ; $6c67: $0d
	ld bc, $0c0d                                     ; $6c68: $01 $0d $0c
	ld [de], a                                       ; $6c6b: $12
	inc c                                            ; $6c6c: $0c
	dec c                                            ; $6c6d: $0d
	inc c                                            ; $6c6e: $0c
	ld [de], a                                       ; $6c6f: $12
	dec bc                                           ; $6c70: $0b
	dec c                                            ; $6c71: $0d
	ld bc, $0c0d                                     ; $6c72: $01 $0d $0c
	ld [de], a                                       ; $6c75: $12
	inc c                                            ; $6c76: $0c
	jr jr_033_6c91                                   ; $6c77: $18 $18

	cp [hl]                                          ; $6c79: $be
	inc c                                            ; $6c7a: $0c
	jr jr_033_6c8f                                   ; $6c7b: $18 $12

	add hl, bc                                       ; $6c7d: $09
	ld [de], a                                       ; $6c7e: $12
	inc de                                           ; $6c7f: $13
	ld [de], a                                       ; $6c80: $12
	add hl, bc                                       ; $6c81: $09
	cp [hl]                                          ; $6c82: $be
	ld [de], a                                       ; $6c83: $12
	ld b, $12                                        ; $6c84: $06 $12
	ld b, $fb                                        ; $6c86: $06 $fb
	cp [hl]                                          ; $6c88: $be
	inc c                                            ; $6c89: $0c
	jr jr_033_6c9e                                   ; $6c8a: $18 $12

	add hl, bc                                       ; $6c8c: $09
	ld [de], a                                       ; $6c8d: $12
	inc de                                           ; $6c8e: $13

jr_033_6c8f:
	ld [de], a                                       ; $6c8f: $12
	add hl, bc                                       ; $6c90: $09

jr_033_6c91:
	ld [de], a                                       ; $6c91: $12
	cp [hl]                                          ; $6c92: $be
	ei                                               ; $6c93: $fb
	ld [bc], a                                       ; $6c94: $02
	jr jr_033_6ca3                                   ; $6c95: $18 $0c

	add hl, bc                                       ; $6c97: $09
	inc c                                            ; $6c98: $0c
	add hl, bc                                       ; $6c99: $09
	inc c                                            ; $6c9a: $0c
	ld [de], a                                       ; $6c9b: $12
	ld b, $12                                        ; $6c9c: $06 $12

jr_033_6c9e:
	ld b, $be                                        ; $6c9e: $06 $be
	inc c                                            ; $6ca0: $0c
	inc de                                           ; $6ca1: $13
	add hl, bc                                       ; $6ca2: $09

jr_033_6ca3:
	inc de                                           ; $6ca3: $13
	ld d, $be                                        ; $6ca4: $16 $be
	cp [hl]                                          ; $6ca6: $be
	inc c                                            ; $6ca7: $0c
	jr jr_033_6cbc                                   ; $6ca8: $18 $12

	ld [de], a                                       ; $6caa: $12
	add hl, bc                                       ; $6cab: $09
	inc de                                           ; $6cac: $13
	ld [de], a                                       ; $6cad: $12
	add hl, bc                                       ; $6cae: $09
	cp [hl]                                          ; $6caf: $be
	ld [de], a                                       ; $6cb0: $12
	ld b, $12                                        ; $6cb1: $06 $12
	ld b, $fb                                        ; $6cb3: $06 $fb
	cp [hl]                                          ; $6cb5: $be
	inc c                                            ; $6cb6: $0c
	jr jr_033_6ccb                                   ; $6cb7: $18 $12

	ld [de], a                                       ; $6cb9: $12
	add hl, bc                                       ; $6cba: $09
	inc de                                           ; $6cbb: $13

jr_033_6cbc:
	ld [de], a                                       ; $6cbc: $12
	add hl, bc                                       ; $6cbd: $09
	ld [de], a                                       ; $6cbe: $12
	cp [hl]                                          ; $6cbf: $be
	ei                                               ; $6cc0: $fb
	ld [bc], a                                       ; $6cc1: $02
	cp [hl]                                          ; $6cc2: $be
	inc c                                            ; $6cc3: $0c
	jr jr_033_6cd8                                   ; $6cc4: $18 $12

	ld [de], a                                       ; $6cc6: $12
	add hl, bc                                       ; $6cc7: $09
	inc de                                           ; $6cc8: $13
	inc de                                           ; $6cc9: $13
	add hl, bc                                       ; $6cca: $09

jr_033_6ccb:
	cp [hl]                                          ; $6ccb: $be
	ld [de], a                                       ; $6ccc: $12
	ld b, $12                                        ; $6ccd: $06 $12
	ld b, $be                                        ; $6ccf: $06 $be
	inc c                                            ; $6cd1: $0c
	jr jr_033_6ce6                                   ; $6cd2: $18 $12

	ld [de], a                                       ; $6cd4: $12
	add hl, bc                                       ; $6cd5: $09
	inc c                                            ; $6cd6: $0c
	ld [de], a                                       ; $6cd7: $12

jr_033_6cd8:
	add hl, bc                                       ; $6cd8: $09
	ld [de], a                                       ; $6cd9: $12
	cp [hl]                                          ; $6cda: $be
	cp [hl]                                          ; $6cdb: $be
	inc c                                            ; $6cdc: $0c
	add hl, bc                                       ; $6cdd: $09
	ld [de], a                                       ; $6cde: $12
	add hl, bc                                       ; $6cdf: $09
	add hl, bc                                       ; $6ce0: $09
	inc c                                            ; $6ce1: $0c
	ld [de], a                                       ; $6ce2: $12
	add hl, bc                                       ; $6ce3: $09
	cp [hl]                                          ; $6ce4: $be
	ld [de], a                                       ; $6ce5: $12

jr_033_6ce6:
	ld b, $12                                        ; $6ce6: $06 $12
	ld b, $be                                        ; $6ce8: $06 $be
	inc c                                            ; $6cea: $0c
	jr jr_033_6cff                                   ; $6ceb: $18 $12

	add hl, bc                                       ; $6ced: $09
	ld [de], a                                       ; $6cee: $12
	inc c                                            ; $6cef: $0c
	ld [de], a                                       ; $6cf0: $12
	add hl, bc                                       ; $6cf1: $09
	inc de                                           ; $6cf2: $13
	cp [hl]                                          ; $6cf3: $be
	cp [hl]                                          ; $6cf4: $be
	inc c                                            ; $6cf5: $0c
	inc de                                           ; $6cf6: $13
	add hl, bc                                       ; $6cf7: $09
	ld [de], a                                       ; $6cf8: $12
	ld [de], a                                       ; $6cf9: $12
	cp [hl]                                          ; $6cfa: $be
	jr jr_033_6d15                                   ; $6cfb: $18 $18

	ld c, $18                                        ; $6cfd: $0e $18

jr_033_6cff:
	cp $ff                                           ; $6cff: $fe $ff
	or [hl]                                          ; $6d01: $b6
	jp c, $02f1                                      ; $6d02: $da $f1 $02

	ld h, h                                          ; $6d05: $64
	inc b                                            ; $6d06: $04
	ld a, [hl]                                       ; $6d07: $7e
	dec [hl]                                         ; $6d08: $35
	nop                                              ; $6d09: $00
	and b                                            ; $6d0a: $a0
	inc d                                            ; $6d0b: $14
	ld h, b                                          ; $6d0c: $60
	or c                                             ; $6d0d: $b1
	ldh a, [c]                                       ; $6d0e: $f2
	ld d, b                                          ; $6d0f: $50
	ld b, $7e                                        ; $6d10: $06 $7e
	ld sp, $a032                                     ; $6d12: $31 $32 $a0

jr_033_6d15:
	dec h                                            ; $6d15: $25
	jr nc, jr_033_6d3d                               ; $6d16: $30 $25

	jr nc, jr_033_6d3f                               ; $6d18: $30 $25

	xor b                                            ; $6d1a: $a8
	ld a, [hl]                                       ; $6d1b: $7e
	dec [hl]                                         ; $6d1c: $35
	nop                                              ; $6d1d: $00
	and b                                            ; $6d1e: $a0
	or c                                             ; $6d1f: $b1
	pop bc                                           ; $6d20: $c1
	ld h, h                                          ; $6d21: $64
	inc b                                            ; $6d22: $04
	ld e, $0c                                        ; $6d23: $1e $0c
	jr nz, @+$0e                                     ; $6d25: $20 $0c

	inc d                                            ; $6d27: $14
	ld h, b                                          ; $6d28: $60
	or c                                             ; $6d29: $b1
	ldh a, [c]                                       ; $6d2a: $f2

jr_033_6d2b:
	ld d, b                                          ; $6d2b: $50
	ld b, $7e                                        ; $6d2c: $06 $7e
	ld sp, $a032                                     ; $6d2e: $31 $32 $a0
	dec h                                            ; $6d31: $25
	jr nc, jr_033_6d59                               ; $6d32: $30 $25

	jr nc, jr_033_6d5b                               ; $6d34: $30 $25

	ld h, b                                          ; $6d36: $60
	or c                                             ; $6d37: $b1
	or c                                             ; $6d38: $b1
	nop                                              ; $6d39: $00
	nop                                              ; $6d3a: $00
	ld a, [hl]                                       ; $6d3b: $7e
	nop                                              ; $6d3c: $00

jr_033_6d3d:
	ld e, $05                                        ; $6d3d: $1e $05

jr_033_6d3f:
	rra                                              ; $6d3f: $1f
	dec b                                            ; $6d40: $05
	sub [hl]                                         ; $6d41: $96
	ld h, h                                          ; $6d42: $64
	inc b                                            ; $6d43: $04
	ld a, [hl]                                       ; $6d44: $7e
	cpl                                              ; $6d45: $2f
	ld e, $a0                                        ; $6d46: $1e $a0
	jr nz, jr_033_6da0                               ; $6d48: $20 $56

	cp $b5                                           ; $6d4a: $fe $b5
	pop bc                                           ; $6d4c: $c1
	nop                                              ; $6d4d: $00
	ld h, h                                          ; $6d4e: $64
	ld bc, $2a7e                                     ; $6d4f: $01 $7e $2a
	nop                                              ; $6d52: $00
	xor e                                            ; $6d53: $ab
	ld a, l                                          ; $6d54: $7d
	ld [bc], a                                       ; $6d55: $02
	db $fd                                           ; $6d56: $fd
	dec hl                                           ; $6d57: $2b
	ld l, [hl]                                       ; $6d58: $6e

jr_033_6d59:
	or l                                             ; $6d59: $b5
	pop bc                                           ; $6d5a: $c1

jr_033_6d5b:
	nop                                              ; $6d5b: $00
	ld h, h                                          ; $6d5c: $64
	ld bc, $2a7e                                     ; $6d5d: $01 $7e $2a
	nop                                              ; $6d60: $00
	xor e                                            ; $6d61: $ab
	db $fd                                           ; $6d62: $fd
	ld l, [hl]                                       ; $6d63: $6e
	ld l, [hl]                                       ; $6d64: $6e
	set 7, l                                         ; $6d65: $cb $fd
	xor l                                            ; $6d67: $ad
	ld l, [hl]                                       ; $6d68: $6e
	inc h                                            ; $6d69: $24
	inc c                                            ; $6d6a: $0c
	dec de                                           ; $6d6b: $1b
	inc c                                            ; $6d6c: $0c
	jr nz, @+$0e                                     ; $6d6d: $20 $0c

	dec h                                            ; $6d6f: $25
	jr jr_033_6d92                                   ; $6d70: $18 $20

	inc c                                            ; $6d72: $0c
	inc h                                            ; $6d73: $24
	jr jr_033_6d2b                                   ; $6d74: $18 $b5

	pop de                                           ; $6d76: $d1
	nop                                              ; $6d77: $00
	ld h, h                                          ; $6d78: $64
	ld bc, $2a7e                                     ; $6d79: $01 $7e $2a
	nop                                              ; $6d7c: $00

jr_033_6d7d:
	xor e                                            ; $6d7d: $ab
	db $fd                                           ; $6d7e: $fd
	dec hl                                           ; $6d7f: $2b
	ld l, [hl]                                       ; $6d80: $6e
	or l                                             ; $6d81: $b5
	pop de                                           ; $6d82: $d1
	nop                                              ; $6d83: $00

jr_033_6d84:
	ld h, h                                          ; $6d84: $64
	ld bc, $2a7e                                     ; $6d85: $01 $7e $2a
	nop                                              ; $6d88: $00
	xor e                                            ; $6d89: $ab
	db $fd                                           ; $6d8a: $fd
	ld l, [hl]                                       ; $6d8b: $6e
	ld l, [hl]                                       ; $6d8c: $6e
	set 7, l                                         ; $6d8d: $cb $fd
	xor l                                            ; $6d8f: $ad
	ld l, [hl]                                       ; $6d90: $6e
	inc d                                            ; $6d91: $14

jr_033_6d92:
	jr jr_033_6daf                                   ; $6d92: $18 $1b

	inc c                                            ; $6d94: $0c
	jr nz, jr_033_6daf                               ; $6d95: $20 $18

	inc h                                            ; $6d97: $24
	inc c                                            ; $6d98: $0c
	jr nz, jr_033_6db3                               ; $6d99: $20 $18

	db $fd                                           ; $6d9b: $fd
	xor l                                            ; $6d9c: $ad
	ld l, [hl]                                       ; $6d9d: $6e
	or l                                             ; $6d9e: $b5
	ld h, d                                          ; $6d9f: $62

jr_033_6da0:
	ld [bc], a                                       ; $6da0: $02
	nop                                              ; $6da1: $00
	nop                                              ; $6da2: $00
	ld a, l                                          ; $6da3: $7d
	nop                                              ; $6da4: $00
	nop                                              ; $6da5: $00
	inc c                                            ; $6da6: $0c
	ld [hl+], a                                      ; $6da7: $22
	jr nc, jr_033_6d7d                               ; $6da8: $30 $d3

	jr nz, jr_033_6db8                               ; $6daa: $20 $0c

	or l                                             ; $6dac: $b5
	and d                                            ; $6dad: $a2
	ld [bc], a                                       ; $6dae: $02

jr_033_6daf:
	nop                                              ; $6daf: $00
	nop                                              ; $6db0: $00
	inc l                                            ; $6db1: $2c
	inc c                                            ; $6db2: $0c

jr_033_6db3:
	db $d3                                           ; $6db3: $d3
	inc sp                                           ; $6db4: $33
	inc c                                            ; $6db5: $0c
	or l                                             ; $6db6: $b5
	sub d                                            ; $6db7: $92

jr_033_6db8:
	ld [bc], a                                       ; $6db8: $02
	ret z                                            ; $6db9: $c8

	rlca                                             ; $6dba: $07
	ld a, [hl]                                       ; $6dbb: $7e
	dec l                                            ; $6dbc: $2d
	inc d                                            ; $6dbd: $14
	xor c                                            ; $6dbe: $a9
	cp [hl]                                          ; $6dbf: $be
	inc c                                            ; $6dc0: $0c
	daa                                              ; $6dc1: $27
	inc l                                            ; $6dc2: $2c
	inc sp                                           ; $6dc3: $33
	jr c, jr_033_6d84                                ; $6dc4: $38 $be

	ret z                                            ; $6dc6: $c8

	db $d3                                           ; $6dc7: $d3
	daa                                              ; $6dc8: $27
	inc c                                            ; $6dc9: $0c
	inc l                                            ; $6dca: $2c

jr_033_6dcb:
	inc c                                            ; $6dcb: $0c
	db $fd                                           ; $6dcc: $fd
	cp b                                             ; $6dcd: $b8
	ld l, [hl]                                       ; $6dce: $6e
	rst JumpTable                                          ; $6dcf: $c7
	pop de                                           ; $6dd0: $d1
	sub d                                            ; $6dd1: $92
	inc l                                            ; $6dd2: $2c
	ld c, b                                          ; $6dd3: $48
	ld sp, $350c                                     ; $6dd4: $31 $0c $35
	inc c                                            ; $6dd7: $0c
	inc l                                            ; $6dd8: $2c
	ld h, b                                          ; $6dd9: $60
	or l                                             ; $6dda: $b5
	jp nc, $c802                                     ; $6ddb: $d2 $02 $c8

	rlca                                             ; $6dde: $07
	ld a, [hl]                                       ; $6ddf: $7e
	dec l                                            ; $6de0: $2d
	inc d                                            ; $6de1: $14
	xor c                                            ; $6de2: $a9
	dec h                                            ; $6de3: $25
	inc c                                            ; $6de4: $0c
	inc l                                            ; $6de5: $2c
	inc c                                            ; $6de6: $0c
	swap c                                           ; $6de7: $cb $31
	inc c                                            ; $6de9: $0c
	jr c, @+$0e                                      ; $6dea: $38 $0c

	db $d3                                           ; $6dec: $d3
	dec h                                            ; $6ded: $25
	inc c                                            ; $6dee: $0c
	inc l                                            ; $6def: $2c
	inc c                                            ; $6df0: $0c
	db $fd                                           ; $6df1: $fd
	cp b                                             ; $6df2: $b8
	ld l, [hl]                                       ; $6df3: $6e
	add $d1                                          ; $6df4: $c6 $d1
	sub d                                            ; $6df6: $92
	ld sp, $2c48                                     ; $6df7: $31 $48 $2c
	inc c                                            ; $6dfa: $0c
	add hl, hl                                       ; $6dfb: $29
	inc c                                            ; $6dfc: $0c
	cp [hl]                                          ; $6dfd: $be
	jr @+$29                                         ; $6dfe: $18 $27

	add hl, hl                                       ; $6e00: $29
	ld a, [hl+]                                      ; $6e01: $2a
	daa                                              ; $6e02: $27
	cp [hl]                                          ; $6e03: $be
	or l                                             ; $6e04: $b5
	ld [hl], c                                       ; $6e05: $71
	ld [bc], a                                       ; $6e06: $02
	ld d, b                                          ; $6e07: $50
	dec b                                            ; $6e08: $05
	ld a, [hl]                                       ; $6e09: $7e
	ld sp, $a032                                     ; $6e0a: $31 $32 $a0
	add hl, hl                                       ; $6e0d: $29
	ld h, b                                          ; $6e0e: $60
	add hl, hl                                       ; $6e0f: $29
	jr nc, jr_033_6e39                               ; $6e10: $30 $27

	jr nc, jr_033_6e39                               ; $6e12: $30 $25

	jr nc, jr_033_6dcb                               ; $6e14: $30 $b5

	add c                                            ; $6e16: $81
	nop                                              ; $6e17: $00
	nop                                              ; $6e18: $00
	nop                                              ; $6e19: $00
	daa                                              ; $6e1a: $27
	jr nc, jr_033_6e42                               ; $6e1b: $30 $25

	ld h, b                                          ; $6e1d: $60
	call nz, $2425                                   ; $6e1e: $c4 $25 $24
	ret z                                            ; $6e21: $c8

	daa                                              ; $6e22: $27
	inc c                                            ; $6e23: $0c
	dec h                                            ; $6e24: $25
	ld h, b                                          ; $6e25: $60
	call nz, $3025                                   ; $6e26: $c4 $25 $30
	cp $ff                                           ; $6e29: $fe $ff
	ei                                               ; $6e2b: $fb
	add hl, de                                       ; $6e2c: $19
	jr @+$16                                         ; $6e2d: $18 $14

	inc c                                            ; $6e2f: $0c
	add hl, de                                       ; $6e30: $19
	jr jr_033_6e50                                   ; $6e31: $18 $1d

	inc c                                            ; $6e33: $0c
	inc d                                            ; $6e34: $14
	jr @-$03                                         ; $6e35: $18 $fb

	ld [bc], a                                       ; $6e37: $02
	ei                                               ; $6e38: $fb

jr_033_6e39:
	jr jr_033_6e53                                   ; $6e39: $18 $18

	inc d                                            ; $6e3b: $14
	inc c                                            ; $6e3c: $0c
	jr jr_033_6e57                                   ; $6e3d: $18 $18

jr_033_6e3f:
	dec de                                           ; $6e3f: $1b
	inc c                                            ; $6e40: $0c
	inc d                                            ; $6e41: $14

jr_033_6e42:
	jr jr_033_6e3f                                   ; $6e42: $18 $fb

	ld [bc], a                                       ; $6e44: $02
	dec de                                           ; $6e45: $1b
	jr jr_033_6e5c                                   ; $6e46: $18 $14

	inc c                                            ; $6e48: $0c
	rla                                              ; $6e49: $17
	jr jr_033_6e67                                   ; $6e4a: $18 $1b

	inc c                                            ; $6e4c: $0c
	inc d                                            ; $6e4d: $14
	jr @+$22                                         ; $6e4e: $18 $20

jr_033_6e50:
	jr @+$16                                         ; $6e50: $18 $14

	inc c                                            ; $6e52: $0c

jr_033_6e53:
	rla                                              ; $6e53: $17
	jr jr_033_6e71                                   ; $6e54: $18 $1b

	inc c                                            ; $6e56: $0c

jr_033_6e57:
	inc d                                            ; $6e57: $14
	jr @+$18                                         ; $6e58: $18 $16

	jr jr_033_6e6d                                   ; $6e5a: $18 $11

jr_033_6e5c:
	inc c                                            ; $6e5c: $0c
	ld a, [de]                                       ; $6e5d: $1a
	jr @+$1a                                         ; $6e5e: $18 $18

	jr jr_033_6e73                                   ; $6e60: $18 $11

	inc c                                            ; $6e62: $0c
	ld c, $18                                        ; $6e63: $0e $18
	ld d, $0c                                        ; $6e65: $16 $0c

jr_033_6e67:
	ld a, [de]                                       ; $6e67: $1a
	jr jr_033_6e87                                   ; $6e68: $18 $1d

	inc c                                            ; $6e6a: $0c
	ld d, $18                                        ; $6e6b: $16 $18

jr_033_6e6d:
	db $fd                                           ; $6e6d: $fd
	dec de                                           ; $6e6e: $1b
	jr jr_033_6e87                                   ; $6e6f: $18 $16

jr_033_6e71:
	inc c                                            ; $6e71: $0c
	dec de                                           ; $6e72: $1b

jr_033_6e73:
	jr jr_033_6e93                                   ; $6e73: $18 $1e

	inc c                                            ; $6e75: $0c
	dec de                                           ; $6e76: $1b
	jr jr_033_6e96                                   ; $6e77: $18 $1d

	jr jr_033_6e93                                   ; $6e79: $18 $18

	inc c                                            ; $6e7b: $0c
	dec e                                            ; $6e7c: $1d
	jr jr_033_6ea0                                   ; $6e7d: $18 $21

	inc c                                            ; $6e7f: $0c
	jr @+$1a                                         ; $6e80: $18 $18

	ld d, $18                                        ; $6e82: $16 $18
	ld de, $160c                                     ; $6e84: $11 $0c $16

jr_033_6e87:
	jr @+$1a                                         ; $6e87: $18 $18

	inc c                                            ; $6e89: $0c
	ld d, $18                                        ; $6e8a: $16 $18
	jr @+$0e                                         ; $6e8c: $18 $0c

	add hl, de                                       ; $6e8e: $19
	inc c                                            ; $6e8f: $0c
	ld d, $0c                                        ; $6e90: $16 $0c
	dec e                                            ; $6e92: $1d

jr_033_6e93:
	jr jr_033_6eb5                                   ; $6e93: $18 $20

	inc c                                            ; $6e95: $0c

jr_033_6e96:
	ld d, $18                                        ; $6e96: $16 $18
	dec de                                           ; $6e98: $1b
	jr jr_033_6eb1                                   ; $6e99: $18 $16

	inc c                                            ; $6e9b: $0c
	add hl, de                                       ; $6e9c: $19
	jr @+$22                                         ; $6e9d: $18 $20

	inc c                                            ; $6e9f: $0c

jr_033_6ea0:
	ld d, $18                                        ; $6ea0: $16 $18
	rra                                              ; $6ea2: $1f
	jr jr_033_6ebb                                   ; $6ea3: $18 $16

	inc c                                            ; $6ea5: $0c
	add hl, de                                       ; $6ea6: $19
	jr jr_033_6ec8                                   ; $6ea7: $18 $1f

	inc c                                            ; $6ea9: $0c
	ld d, $18                                        ; $6eaa: $16 $18
	db $fd                                           ; $6eac: $fd
	jr nz, @+$1a                                     ; $6ead: $20 $18

	dec de                                           ; $6eaf: $1b
	inc c                                            ; $6eb0: $0c

jr_033_6eb1:
	jr nz, jr_033_6ecb                               ; $6eb1: $20 $18

	dec h                                            ; $6eb3: $25
	inc c                                            ; $6eb4: $0c

jr_033_6eb5:
	jr nz, @+$1a                                     ; $6eb5: $20 $18

	db $fd                                           ; $6eb7: $fd
	rst JumpTable                                          ; $6eb8: $c7
	pop de                                           ; $6eb9: $d1
	ld a, [hl+]                                      ; $6eba: $2a

jr_033_6ebb:
	inc c                                            ; $6ebb: $0c
	inc l                                            ; $6ebc: $2c
	inc c                                            ; $6ebd: $0c
	set 2, e                                         ; $6ebe: $cb $d3
	sub e                                            ; $6ec0: $93
	inc sp                                           ; $6ec1: $33
	jr jr_033_6ef0                                   ; $6ec2: $18 $2c

	inc c                                            ; $6ec4: $0c
	inc sp                                           ; $6ec5: $33
	jr jr_033_6ef4                                   ; $6ec6: $18 $2c

jr_033_6ec8:
	inc c                                            ; $6ec8: $0c
	add $d1                                          ; $6ec9: $c6 $d1

jr_033_6ecb:
	sub d                                            ; $6ecb: $92
	inc l                                            ; $6ecc: $2c
	inc c                                            ; $6ecd: $0c
	ld l, $0c                                        ; $6ece: $2e $0c
	ld sp, $3524                                     ; $6ed0: $31 $24 $35
	inc h                                            ; $6ed3: $24
	jr c, @+$1a                                      ; $6ed4: $38 $18

	ret z                                            ; $6ed6: $c8

	jp nc, $3893                                     ; $6ed7: $d2 $93 $38

	jr jr_033_6f12                                   ; $6eda: $18 $36

	inc c                                            ; $6edc: $0c
	dec [hl]                                         ; $6edd: $35
	inc c                                            ; $6ede: $0c
	ld [hl], $18                                     ; $6edf: $36 $18
	ld sp, $2c0c                                     ; $6ee1: $31 $0c $2c
	inc c                                            ; $6ee4: $0c
	db $fd                                           ; $6ee5: $fd
	or [hl]                                          ; $6ee6: $b6
	jp c, $02f3                                      ; $6ee7: $da $f3 $02

	ld d, b                                          ; $6eea: $50
	ld b, $7e                                        ; $6eeb: $06 $7e
	ld sp, $a032                                     ; $6eed: $31 $32 $a0

jr_033_6ef0:
	ei                                               ; $6ef0: $fb

jr_033_6ef1:
	nop                                              ; $6ef1: $00
	ld h, b                                          ; $6ef2: $60
	add hl, hl                                       ; $6ef3: $29

jr_033_6ef4:
	jr nc, jr_033_6f1f                               ; $6ef4: $30 $29

	jr nc, jr_033_6f22                               ; $6ef6: $30 $2a

	ret nz                                           ; $6ef8: $c0

	ei                                               ; $6ef9: $fb
	ld [bc], a                                       ; $6efa: $02
	cp $b5                                           ; $6efb: $fe $b5
	and c                                            ; $6efd: $a1
	inc bc                                           ; $6efe: $03
	ret z                                            ; $6eff: $c8

	rlca                                             ; $6f00: $07
	ld a, [hl]                                       ; $6f01: $7e
	dec l                                            ; $6f02: $2d
	inc d                                            ; $6f03: $14
	xor c                                            ; $6f04: $a9
	db $fd                                           ; $6f05: $fd
	jp nz, $b56f                                     ; $6f06: $c2 $6f $b5

	and c                                            ; $6f09: $a1
	inc bc                                           ; $6f0a: $03
	ret z                                            ; $6f0b: $c8

	rlca                                             ; $6f0c: $07
	ld a, [hl]                                       ; $6f0d: $7e
	dec l                                            ; $6f0e: $2d
	inc d                                            ; $6f0f: $14
	xor c                                            ; $6f10: $a9
	db $fd                                           ; $6f11: $fd

jr_033_6f12:
	rst SubAFromDE                                          ; $6f12: $df
	ld l, a                                          ; $6f13: $6f
	inc l                                            ; $6f14: $2c
	jr jr_033_6f42                                   ; $6f15: $18 $2b

	jr @+$2e                                         ; $6f17: $18 $2c

	ret nz                                           ; $6f19: $c0

	or l                                             ; $6f1a: $b5
	and c                                            ; $6f1b: $a1
	inc bc                                           ; $6f1c: $03
	ret z                                            ; $6f1d: $c8

	rlca                                             ; $6f1e: $07

jr_033_6f1f:
	ld a, [hl]                                       ; $6f1f: $7e
	dec l                                            ; $6f20: $2d
	inc d                                            ; $6f21: $14

jr_033_6f22:
	xor c                                            ; $6f22: $a9
	db $fd                                           ; $6f23: $fd
	jp nz, $b56f                                     ; $6f24: $c2 $6f $b5

	and c                                            ; $6f27: $a1
	inc bc                                           ; $6f28: $03
	ret z                                            ; $6f29: $c8

	rlca                                             ; $6f2a: $07
	ld a, [hl]                                       ; $6f2b: $7e
	dec l                                            ; $6f2c: $2d
	inc d                                            ; $6f2d: $14
	xor c                                            ; $6f2e: $a9
	db $fd                                           ; $6f2f: $fd
	rst SubAFromDE                                          ; $6f30: $df
	ld l, a                                          ; $6f31: $6f
	jr nc, @+$1a                                     ; $6f32: $30 $18

	ld sp, $9618                                     ; $6f34: $31 $18 $96
	ret z                                            ; $6f37: $c8

	inc b                                            ; $6f38: $04
	inc sp                                           ; $6f39: $33
	jr nc, jr_033_6ef1                               ; $6f3a: $30 $b5

	or c                                             ; $6f3c: $b1
	ld [bc], a                                       ; $6f3d: $02
	nop                                              ; $6f3e: $00
	nop                                              ; $6f3f: $00
	ld a, [hl]                                       ; $6f40: $7e
	inc l                                            ; $6f41: $2c

jr_033_6f42:
	ld e, $a0                                        ; $6f42: $1e $a0
	jr nz, jr_033_6f5d                               ; $6f44: $20 $17

	nop                                              ; $6f46: $00
	ld bc, $0820                                     ; $6f47: $01 $20 $08
	ld [hl+], a                                      ; $6f4a: $22
	ld [$0824], sp                                   ; $6f4b: $08 $24 $08
	sub [hl]                                         ; $6f4e: $96
	ld [hl-], a                                      ; $6f4f: $32
	rlca                                             ; $6f50: $07
	dec h                                            ; $6f51: $25
	ld c, b                                          ; $6f52: $48
	inc h                                            ; $6f53: $24
	inc c                                            ; $6f54: $0c
	dec h                                            ; $6f55: $25
	inc c                                            ; $6f56: $0c
	inc h                                            ; $6f57: $24
	ld c, b                                          ; $6f58: $48
	ld [hl+], a                                      ; $6f59: $22
	inc c                                            ; $6f5a: $0c
	inc h                                            ; $6f5b: $24
	inc c                                            ; $6f5c: $0c

jr_033_6f5d:
	ld [hl+], a                                      ; $6f5d: $22
	jr nc, jr_033_6f80                               ; $6f5e: $30 $20

	inc c                                            ; $6f60: $0c
	or l                                             ; $6f61: $b5

jr_033_6f62:
	ld [hl], c                                       ; $6f62: $71
	ld [bc], a                                       ; $6f63: $02
	ld h, h                                          ; $6f64: $64
	inc bc                                           ; $6f65: $03
	inc l                                            ; $6f66: $2c
	inc c                                            ; $6f67: $0c
	inc sp                                           ; $6f68: $33
	inc c                                            ; $6f69: $0c
	add $38                                          ; $6f6a: $c6 $38
	inc c                                            ; $6f6c: $0c
	or l                                             ; $6f6d: $b5
	sub c                                            ; $6f6e: $91
	ld [bc], a                                       ; $6f6f: $02
	ret z                                            ; $6f70: $c8

	rlca                                             ; $6f71: $07
	ld a, [hl]                                       ; $6f72: $7e
	dec l                                            ; $6f73: $2d
	inc d                                            ; $6f74: $14
	xor c                                            ; $6f75: $a9
	db $fd                                           ; $6f76: $fd
	ld a, [$c96f]                                    ; $6f77: $fa $6f $c9
	add hl, hl                                       ; $6f7a: $29
	ld c, b                                          ; $6f7b: $48
	ld a, [hl+]                                      ; $6f7c: $2a
	inc c                                            ; $6f7d: $0c
	inc l                                            ; $6f7e: $2c
	inc c                                            ; $6f7f: $0c

jr_033_6f80:
	daa                                              ; $6f80: $27
	ld h, b                                          ; $6f81: $60
	or l                                             ; $6f82: $b5
	sub c                                            ; $6f83: $91
	ld [bc], a                                       ; $6f84: $02
	ret z                                            ; $6f85: $c8

	rlca                                             ; $6f86: $07
	ld a, [hl]                                       ; $6f87: $7e
	dec l                                            ; $6f88: $2d
	inc d                                            ; $6f89: $14
	xor c                                            ; $6f8a: $a9
	db $fd                                           ; $6f8b: $fd
	ld a, [$296f]                                    ; $6f8c: $fa $6f $29
	ld c, b                                          ; $6f8f: $48
	daa                                              ; $6f90: $27
	inc c                                            ; $6f91: $0c
	dec h                                            ; $6f92: $25
	inc c                                            ; $6f93: $0c
	cp [hl]                                          ; $6f94: $be
	jr jr_033_6fbb                                   ; $6f95: $18 $24

	dec h                                            ; $6f97: $25
	daa                                              ; $6f98: $27
	inc h                                            ; $6f99: $24
	cp [hl]                                          ; $6f9a: $be
	or l                                             ; $6f9b: $b5
	pop bc                                           ; $6f9c: $c1
	ld [bc], a                                       ; $6f9d: $02
	ld d, b                                          ; $6f9e: $50
	dec b                                            ; $6f9f: $05
	ld a, [hl]                                       ; $6fa0: $7e
	ld sp, $a032                                     ; $6fa1: $31 $32 $a0
	ld [hl+], a                                      ; $6fa4: $22
	ld h, b                                          ; $6fa5: $60
	jr nz, jr_033_6fd8                               ; $6fa6: $20 $30

	ld e, $30                                        ; $6fa8: $1e $30
	dec e                                            ; $6faa: $1d
	jr nc, jr_033_6f62                               ; $6fab: $30 $b5

	add c                                            ; $6fad: $81
	nop                                              ; $6fae: $00
	nop                                              ; $6faf: $00
	nop                                              ; $6fb0: $00
	inc l                                            ; $6fb1: $2c
	jr nc, jr_033_6fdd                               ; $6fb2: $30 $29

	ld h, b                                          ; $6fb4: $60
	call nz, $2429                                   ; $6fb5: $c4 $29 $24
	ret z                                            ; $6fb8: $c8

	inc l                                            ; $6fb9: $2c
	inc c                                            ; $6fba: $0c

jr_033_6fbb:
	add hl, hl                                       ; $6fbb: $29
	ld h, b                                          ; $6fbc: $60
	call nz, $3029                                   ; $6fbd: $c4 $29 $30
	cp $ff                                           ; $6fc0: $fe $ff
	inc l                                            ; $6fc2: $2c
	ld c, b                                          ; $6fc3: $48
	cp [hl]                                          ; $6fc4: $be
	jr jr_033_6ff2                                   ; $6fc5: $18 $2b

	inc l                                            ; $6fc7: $2c
	add hl, hl                                       ; $6fc8: $29
	dec h                                            ; $6fc9: $25
	add hl, hl                                       ; $6fca: $29
	cp [hl]                                          ; $6fcb: $be
	daa                                              ; $6fcc: $27
	jr nc, jr_033_6ffb                               ; $6fcd: $30 $2c

	sub b                                            ; $6fcf: $90
	inc l                                            ; $6fd0: $2c
	ld c, b                                          ; $6fd1: $48
	cp [hl]                                          ; $6fd2: $be

jr_033_6fd3:
	jr jr_033_7000                                   ; $6fd3: $18 $2b

	inc l                                            ; $6fd5: $2c
	add hl, hl                                       ; $6fd6: $29
	daa                                              ; $6fd7: $27

jr_033_6fd8:
	add hl, hl                                       ; $6fd8: $29
	cp [hl]                                          ; $6fd9: $be
	ld h, $30                                        ; $6fda: $26 $30
	inc l                                            ; $6fdc: $2c

jr_033_6fdd:
	sub b                                            ; $6fdd: $90
	db $fd                                           ; $6fde: $fd
	daa                                              ; $6fdf: $27
	ld c, b                                          ; $6fe0: $48
	cp [hl]                                          ; $6fe1: $be
	jr jr_033_700b                                   ; $6fe2: $18 $27

	add hl, hl                                       ; $6fe4: $29
	dec hl                                           ; $6fe5: $2b
	dec l                                            ; $6fe6: $2d
	jr nc, @-$40                                     ; $6fe7: $30 $be

	jr nc, @+$32                                     ; $6fe9: $30 $30

	ld sp, $2e60                                     ; $6feb: $31 $60 $2e
	jr jr_033_7020                                   ; $6fee: $18 $30

	jr jr_033_7023                                   ; $6ff0: $18 $31

jr_033_6ff2:
	ld c, b                                          ; $6ff2: $48
	ld sp, $3018                                     ; $6ff3: $31 $18 $30
	jr jr_033_7026                                   ; $6ff6: $18 $2e

	jr @-$01                                         ; $6ff8: $18 $fd

	add hl, hl                                       ; $6ffa: $29

jr_033_6ffb:
	ld c, b                                          ; $6ffb: $48
	daa                                              ; $6ffc: $27
	inc c                                            ; $6ffd: $0c
	add hl, hl                                       ; $6ffe: $29
	inc c                                            ; $6fff: $0c

jr_033_7000:
	ld a, [hl+]                                      ; $7000: $2a
	ld c, b                                          ; $7001: $48
	add hl, hl                                       ; $7002: $29
	inc c                                            ; $7003: $0c
	ld a, [hl+]                                      ; $7004: $2a
	inc c                                            ; $7005: $0c
	inc l                                            ; $7006: $2c
	inc h                                            ; $7007: $24
	ld sp, $be24                                     ; $7008: $31 $24 $be

jr_033_700b:
	jr jr_033_703d                                   ; $700b: $18 $30

	jr nc, jr_033_703d                               ; $700d: $30 $2e

	inc l                                            ; $700f: $2c
	ld a, [hl+]                                      ; $7010: $2a
	cp [hl]                                          ; $7011: $be
	db $fd                                           ; $7012: $fd
	or h                                             ; $7013: $b4
	jp c, $2221                                      ; $7014: $da $21 $22

	ei                                               ; $7017: $fb
	sub [hl]                                         ; $7018: $96
	inc b                                            ; $7019: $04
	ld bc, $2414                                     ; $701a: $01 $14 $24
	inc d                                            ; $701d: $14
	jr @-$68                                         ; $701e: $18 $96

jr_033_7020:
	nop                                              ; $7020: $00
	nop                                              ; $7021: $00

jr_033_7022:
	inc d                                            ; $7022: $14

jr_033_7023:
	inc c                                            ; $7023: $0c
	rrca                                             ; $7024: $0f
	inc c                                            ; $7025: $0c

jr_033_7026:
	ld de, $fb0c                                     ; $7026: $11 $0c $fb
	inc bc                                           ; $7029: $03
	sub [hl]                                         ; $702a: $96
	ld [bc], a                                       ; $702b: $02
	ld bc, $18be                                     ; $702c: $01 $be $18
	inc d                                            ; $702f: $14
	ld [de], a                                       ; $7030: $12
	ld de, $be12                                     ; $7031: $11 $12 $be
	ei                                               ; $7034: $fb
	sub [hl]                                         ; $7035: $96
	inc b                                            ; $7036: $04

jr_033_7037:
	ld bc, $2414                                     ; $7037: $01 $14 $24
	inc d                                            ; $703a: $14
	jr jr_033_6fd3                                   ; $703b: $18 $96

jr_033_703d:
	nop                                              ; $703d: $00
	nop                                              ; $703e: $00
	inc d                                            ; $703f: $14
	inc c                                            ; $7040: $0c
	rrca                                             ; $7041: $0f
	inc c                                            ; $7042: $0c
	ld de, $fb0c                                     ; $7043: $11 $0c $fb
	ld [bc], a                                       ; $7046: $02
	inc d                                            ; $7047: $14
	ld h, b                                          ; $7048: $60
	sub [hl]                                         ; $7049: $96
	inc b                                            ; $704a: $04
	ld bc, $0c14                                     ; $704b: $01 $14 $0c
	inc d                                            ; $704e: $14
	jr @+$16                                         ; $704f: $18 $14

	inc c                                            ; $7051: $0c
	inc d                                            ; $7052: $14
	jr jr_033_7069                                   ; $7053: $18 $14

	jr @-$49                                         ; $7055: $18 $b5

	ld hl, $0022                                     ; $7057: $21 $22 $00
	nop                                              ; $705a: $00
	add hl, de                                       ; $705b: $19
	jr c, jr_033_7022                                ; $705c: $38 $c4

	add hl, de                                       ; $705e: $19
	add hl, de                                       ; $705f: $19
	add $19                                          ; $7060: $c6 $19
	rrca                                             ; $7062: $0f
	jp nz, $3819                                     ; $7063: $c2 $19 $38

	call nz, $1919                                   ; $7066: $c4 $19 $19

jr_033_7069:
	add $19                                          ; $7069: $c6 $19
	rrca                                             ; $706b: $0f

jr_033_706c:
	jp nz, $3818                                     ; $706c: $c2 $18 $38

	call nz, $1918                                   ; $706f: $c4 $18 $19
	add $18                                          ; $7072: $c6 $18
	rrca                                             ; $7074: $0f
	jp nz, $3818                                     ; $7075: $c2 $18 $38

	call nz, $1918                                   ; $7078: $c4 $18 $19
	add $18                                          ; $707b: $c6 $18
	rrca                                             ; $707d: $0f
	jp nz, $3817                                     ; $707e: $c2 $17 $38

	jp $1917                                         ; $7081: $c3 $17 $19


	add $17                                          ; $7084: $c6 $17
	rrca                                             ; $7086: $0f
	jp nz, $3817                                     ; $7087: $c2 $17 $38

	call nz, $1917                                   ; $708a: $c4 $17 $19
	add $17                                          ; $708d: $c6 $17
	rrca                                             ; $708f: $0f
	jp nz, $5016                                     ; $7090: $c2 $16 $50

	call nz, $1516                                   ; $7093: $c4 $16 $15
	add $16                                          ; $7096: $c6 $16
	inc de                                           ; $7098: $13
	jp nz, $2e7e                                     ; $7099: $c2 $7e $2e

	dec c                                            ; $709c: $0d
	and b                                            ; $709d: $a0
	dec e                                            ; $709e: $1d
	jr nc, jr_033_7037                               ; $709f: $30 $96

	nop                                              ; $70a1: $00
	nop                                              ; $70a2: $00
	ld a, [hl]                                       ; $70a3: $7e
	cpl                                              ; $70a4: $2f
	ld [$1da0], sp                                   ; $70a5: $08 $a0 $1d
	jr jr_033_706c                                   ; $70a8: $18 $c2

	pop de                                           ; $70aa: $d1
	ld a, a                                          ; $70ab: $7f
	ld [hl+], a                                      ; $70ac: $22
	ld a, [hl]                                       ; $70ad: $7e
	nop                                              ; $70ae: $00

jr_033_70af:
	dec de                                           ; $70af: $1b
	jr c, @-$3a                                      ; $70b0: $38 $c4

	dec de                                           ; $70b2: $1b
	add hl, de                                       ; $70b3: $19
	add $1b                                          ; $70b4: $c6 $1b
	rrca                                             ; $70b6: $0f
	jp nz, $381d                                     ; $70b7: $c2 $1d $38

	call nz, $191d                                   ; $70ba: $c4 $1d $19
	add $1d                                          ; $70bd: $c6 $1d
	rrca                                             ; $70bf: $0f
	jp nz, $5016                                     ; $70c0: $c2 $16 $50

	call nz, $1516                                   ; $70c3: $c4 $16 $15
	add $16                                          ; $70c6: $c6 $16
	inc de                                           ; $70c8: $13
	jp nz, $2e7e                                     ; $70c9: $c2 $7e $2e

	dec c                                            ; $70cc: $0d
	and b                                            ; $70cd: $a0
	dec e                                            ; $70ce: $1d
	jr nc, @+$80                                     ; $70cf: $30 $7e

	nop                                              ; $70d1: $00
	dec e                                            ; $70d2: $1d
	inc c                                            ; $70d3: $0c
	inc e                                            ; $70d4: $1c
	inc c                                            ; $70d5: $0c
	dec de                                           ; $70d6: $1b
	ld e, d                                          ; $70d7: $5a
	call nz, $211b                                   ; $70d8: $c4 $1b $21
	add $1b                                          ; $70db: $c6 $1b
	dec d                                            ; $70dd: $15
	jp nz, $227f                                     ; $70de: $c2 $7f $22

	ld l, h                                          ; $70e1: $6c
	dec c                                            ; $70e2: $0d
	inc b                                            ; $70e3: $04
	ld c, $04                                        ; $70e4: $0e $04
	rrca                                             ; $70e6: $0f
	jr z, jr_033_70fd                                ; $70e7: $28 $14

	rlca                                             ; $70e9: $07
	dec d                                            ; $70ea: $15
	rlca                                             ; $70eb: $07
	ld d, $0a                                        ; $70ec: $16 $0a
	inc d                                            ; $70ee: $14
	ld c, b                                          ; $70ef: $48
	nop                                              ; $70f0: $00
	inc c                                            ; $70f1: $0c
	sub [hl]                                         ; $70f2: $96
	ld a, [bc]                                       ; $70f3: $0a
	ld bc, $1814                                     ; $70f4: $01 $14 $18
	sub [hl]                                         ; $70f7: $96
	nop                                              ; $70f8: $00
	nop                                              ; $70f9: $00
	inc d                                            ; $70fa: $14
	ld b, $15                                        ; $70fb: $06 $15

jr_033_70fd:
	ld b, $16                                        ; $70fd: $06 $16
	inc c                                            ; $70ff: $0c
	inc d                                            ; $7100: $14
	inc c                                            ; $7101: $0c
	ld [$7018], sp                                   ; $7102: $08 $18 $70
	db $fd                                           ; $7105: $fd
	db $dd                                           ; $7106: $dd
	ld [hl], c                                       ; $7107: $71
	or l                                             ; $7108: $b5

jr_033_7109:
	ld hl, $0723                                     ; $7109: $21 $23 $07
	ld bc, $a7fd                                     ; $710c: $01 $fd $a7
	ld [hl], c                                       ; $710f: $71
	inc d                                            ; $7110: $14
	inc h                                            ; $7111: $24
	dec de                                           ; $7112: $1b
	inc h                                            ; $7113: $24
	ld [hl+], a                                      ; $7114: $22
	jr @+$22                                         ; $7115: $18 $20

	jr nc, jr_033_70af                               ; $7117: $30 $96

	nop                                              ; $7119: $00
	nop                                              ; $711a: $00
	cp [hl]                                          ; $711b: $be
	inc c                                            ; $711c: $0c
	add hl, de                                       ; $711d: $19
	dec de                                           ; $711e: $1b
	add hl, de                                       ; $711f: $19
	dec de                                           ; $7120: $1b
	cp [hl]                                          ; $7121: $be
	cp $b5                                           ; $7122: $fe $b5
	ld hl, $0322                                     ; $7124: $21 $22 $03
	ld bc, $7efd                                     ; $7127: $01 $fd $7e
	ld [hl], c                                       ; $712a: $71
	jr nz, @+$1a                                     ; $712b: $20 $18

	or l                                             ; $712d: $b5
	ld hl, $0322                                     ; $712e: $21 $22 $03
	ld bc, $7efd                                     ; $7131: $01 $fd $7e
	ld [hl], c                                       ; $7134: $71
	inc d                                            ; $7135: $14
	jr @-$49                                         ; $7136: $18 $b5

	ld hl, $0029                                     ; $7138: $21 $29 $00
	nop                                              ; $713b: $00
	ld e, $3c                                        ; $713c: $1e $3c
	call nz, $181e                                   ; $713e: $c4 $1e $18
	add $1e                                          ; $7141: $c6 $1e
	inc c                                            ; $7143: $0c
	jp nz, $241d                                     ; $7144: $c2 $1d $24

	call nz, $0c1d                                   ; $7147: $c4 $1d $0c
	jp nz, $241b                                     ; $714a: $c2 $1b $24

jr_033_714d:
	call nz, $0c1b                                   ; $714d: $c4 $1b $0c
	or l                                             ; $7150: $b5
	ld hl, $0723                                     ; $7151: $21 $23 $07
	ld bc, $19fb                                     ; $7154: $01 $fb $19
	inc h                                            ; $7157: $24

jr_033_7158:
	dec e                                            ; $7158: $1d
	inc h                                            ; $7159: $24
	inc d                                            ; $715a: $14
	jr jr_033_7158                                   ; $715b: $18 $fb

	inc b                                            ; $715d: $04
	db $fd                                           ; $715e: $fd
	db $dd                                           ; $715f: $dd
	ld [hl], c                                       ; $7160: $71
	db $fd                                           ; $7161: $fd
	and a                                            ; $7162: $a7
	ld [hl], c                                       ; $7163: $71
	db $fd                                           ; $7164: $fd
	db $dd                                           ; $7165: $dd
	ld [hl], c                                       ; $7166: $71
	db $fd                                           ; $7167: $fd
	and a                                            ; $7168: $a7
	ld [hl], c                                       ; $7169: $71
	inc d                                            ; $716a: $14
	inc h                                            ; $716b: $24
	dec de                                           ; $716c: $1b
	inc h                                            ; $716d: $24
	ld [hl+], a                                      ; $716e: $22
	jr jr_033_7191                                   ; $716f: $18 $20

	jr nc, jr_033_7109                               ; $7171: $30 $96

	nop                                              ; $7173: $00
	nop                                              ; $7174: $00
	cp [hl]                                          ; $7175: $be
	inc c                                            ; $7176: $0c
	add hl, de                                       ; $7177: $19
	dec de                                           ; $7178: $1b
	add hl, de                                       ; $7179: $19
	dec de                                           ; $717a: $1b
	cp [hl]                                          ; $717b: $be
	cp $ff                                           ; $717c: $fe $ff
	add hl, de                                       ; $717e: $19
	jr nc, jr_033_7195                               ; $717f: $30 $14

	jr jr_033_719b                                   ; $7181: $18 $18

	inc c                                            ; $7183: $0c
	add hl, de                                       ; $7184: $19
	inc c                                            ; $7185: $0c
	dec de                                           ; $7186: $1b
	jr nc, jr_033_71a1                               ; $7187: $30 $18

	jr @+$1b                                         ; $7189: $18 $19

	inc c                                            ; $718b: $0c
	dec de                                           ; $718c: $1b
	inc c                                            ; $718d: $0c
	dec e                                            ; $718e: $1d
	jr nc, @+$13                                     ; $718f: $30 $11

jr_033_7191:
	jr nc, jr_033_71a5                               ; $7191: $30 $12

	jr nc, jr_033_71ae                               ; $7193: $30 $19

jr_033_7195:
	jr @+$18                                         ; $7195: $18 $16

	inc c                                            ; $7197: $0c
	inc d                                            ; $7198: $14
	inc c                                            ; $7199: $0c
	inc d                                            ; $719a: $14

jr_033_719b:
	inc h                                            ; $719b: $24
	inc d                                            ; $719c: $14
	inc c                                            ; $719d: $0c
	add hl, de                                       ; $719e: $19
	jr jr_033_71b5                                   ; $719f: $18 $14

jr_033_71a1:
	jr jr_033_71b7                                   ; $71a1: $18 $14

	jr nc, @+$1d                                     ; $71a3: $30 $1b

jr_033_71a5:
	jr @-$01                                         ; $71a5: $18 $fd

	sub [hl]                                         ; $71a7: $96
	rlca                                             ; $71a8: $07
	ld bc, $241b                                     ; $71a9: $01 $1b $24
	ld e, $24                                        ; $71ac: $1e $24

jr_033_71ae:
	ld d, $18                                        ; $71ae: $16 $18
	dec e                                            ; $71b0: $1d
	inc h                                            ; $71b1: $24
	ld hl, $1824                                     ; $71b2: $21 $24 $18

jr_033_71b5:
	jr jr_033_714d                                   ; $71b5: $18 $96

jr_033_71b7:
	nop                                              ; $71b7: $00
	nop                                              ; $71b8: $00
	ld d, $1a                                        ; $71b9: $16 $1a
	jr @+$0f                                         ; $71bb: $18 $0d

	add hl, de                                       ; $71bd: $19
	ld hl, $0796                                     ; $71be: $21 $96 $07
	ld bc, $181d                                     ; $71c1: $01 $1d $18
	ld d, $24                                        ; $71c4: $16 $24

jr_033_71c6:
	add hl, de                                       ; $71c6: $19
	inc h                                            ; $71c7: $24
	dec e                                            ; $71c8: $1d
	jr jr_033_71c6                                   ; $71c9: $18 $fb

	dec de                                           ; $71cb: $1b
	inc h                                            ; $71cc: $24
	rra                                              ; $71cd: $1f
	inc h                                            ; $71ce: $24
	ld d, $18                                        ; $71cf: $16 $18
	ei                                               ; $71d1: $fb
	ld [bc], a                                       ; $71d2: $02
	ei                                               ; $71d3: $fb
	inc d                                            ; $71d4: $14
	inc h                                            ; $71d5: $24

jr_033_71d6:
	dec de                                           ; $71d6: $1b
	inc h                                            ; $71d7: $24
	inc d                                            ; $71d8: $14
	jr jr_033_71d6                                   ; $71d9: $18 $fb

	ld [bc], a                                       ; $71db: $02
	db $fd                                           ; $71dc: $fd
	or l                                             ; $71dd: $b5
	ld hl, $0723                                     ; $71de: $21 $23 $07
	ld bc, $19fb                                     ; $71e1: $01 $fb $19
	inc h                                            ; $71e4: $24

jr_033_71e5:
	dec e                                            ; $71e5: $1d
	inc h                                            ; $71e6: $24
	inc d                                            ; $71e7: $14
	jr jr_033_71e5                                   ; $71e8: $18 $fb

	ld [bc], a                                       ; $71ea: $02
	ei                                               ; $71eb: $fb
	jr @+$26                                         ; $71ec: $18 $24

jr_033_71ee:
	dec de                                           ; $71ee: $1b
	inc h                                            ; $71ef: $24
	inc d                                            ; $71f0: $14
	jr jr_033_71ee                                   ; $71f1: $18 $fb

	ld [bc], a                                       ; $71f3: $02
	ei                                               ; $71f4: $fb
	rla                                              ; $71f5: $17
	inc h                                            ; $71f6: $24

jr_033_71f7:
	dec de                                           ; $71f7: $1b
	inc h                                            ; $71f8: $24
	inc d                                            ; $71f9: $14
	jr jr_033_71f7                                   ; $71fa: $18 $fb

	ld [bc], a                                       ; $71fc: $02
	ld d, $24                                        ; $71fd: $16 $24
	dec e                                            ; $71ff: $1d
	inc h                                            ; $7200: $24
	ld d, $18                                        ; $7201: $16 $18
	sub [hl]                                         ; $7203: $96
	nop                                              ; $7204: $00
	nop                                              ; $7205: $00
	ld d, $1a                                        ; $7206: $16 $1a
	dec de                                           ; $7208: $1b
	ld a, [bc]                                       ; $7209: $0a
	dec e                                            ; $720a: $1d
	inc h                                            ; $720b: $24
	jr nz, jr_033_7226                               ; $720c: $20 $18

	db $fd                                           ; $720e: $fd
	ret nc                                           ; $720f: $d0

	jp c, $fdfb                                      ; $7210: $da $fb $fd

	sbc b                                            ; $7213: $98
	ld [hl], d                                       ; $7214: $72
	ei                                               ; $7215: $fb
	ld b, $fd                                        ; $7216: $06 $fd
	cp c                                             ; $7218: $b9
	ld [hl], d                                       ; $7219: $72
	db $fd                                           ; $721a: $fd
	sbc b                                            ; $721b: $98
	ld [hl], d                                       ; $721c: $72
	ei                                               ; $721d: $fb
	nop                                              ; $721e: $00
	ret nz                                           ; $721f: $c0

	ei                                               ; $7220: $fb
	inc b                                            ; $7221: $04
	ld sp, $31c0                                     ; $7222: $31 $c0 $31
	ret nz                                           ; $7225: $c0

jr_033_7226:
	ld sp, $3160                                     ; $7226: $31 $60 $31
	ld h, b                                          ; $7229: $60
	ld sp, $3130                                     ; $722a: $31 $30 $31
	jr nc, jr_033_7260                               ; $722d: $30 $31

	inc h                                            ; $722f: $24
	dec c                                            ; $7230: $0d
	inc c                                            ; $7231: $0c

jr_033_7232:
	ld c, $18                                        ; $7232: $0e $18
	inc [hl]                                         ; $7234: $34
	jr jr_033_7232                                   ; $7235: $18 $fb

	db $fd                                           ; $7237: $fd
	sbc b                                            ; $7238: $98
	ld [hl], d                                       ; $7239: $72
	ei                                               ; $723a: $fb
	ld [$fdfb], sp                                   ; $723b: $08 $fb $fd
	sbc b                                            ; $723e: $98
	ld [hl], d                                       ; $723f: $72
	ei                                               ; $7240: $fb
	ld a, [bc]                                       ; $7241: $0a
	cp $fd                                           ; $7242: $fe $fd
	and e                                            ; $7244: $a3
	ld [hl], d                                       ; $7245: $72
	db $fd                                           ; $7246: $fd
	xor [hl]                                         ; $7247: $ae
	ld [hl], d                                       ; $7248: $72
	ld [hl], $18                                     ; $7249: $36 $18
	inc de                                           ; $724b: $13
	inc c                                            ; $724c: $0c
	inc de                                           ; $724d: $13
	inc c                                            ; $724e: $0c
	ccf                                              ; $724f: $3f
	jr jr_033_7286                                   ; $7250: $18 $34

	jr @-$01                                         ; $7252: $18 $fd

	xor [hl]                                         ; $7254: $ae
	ld [hl], d                                       ; $7255: $72
	db $fd                                           ; $7256: $fd
	and e                                            ; $7257: $a3
	ld [hl], d                                       ; $7258: $72
	ld [hl], $18                                     ; $7259: $36 $18
	ld c, $0c                                        ; $725b: $0e $0c
	dec c                                            ; $725d: $0d
	inc c                                            ; $725e: $0c

jr_033_725f:
	dec [hl]                                         ; $725f: $35

jr_033_7260:
	jr nc, jr_033_725f                               ; $7260: $30 $fd

	and e                                            ; $7262: $a3
	ld [hl], d                                       ; $7263: $72
	db $fd                                           ; $7264: $fd
	xor [hl]                                         ; $7265: $ae
	ld [hl], d                                       ; $7266: $72
	ld [hl], $18                                     ; $7267: $36 $18
	inc de                                           ; $7269: $13
	inc c                                            ; $726a: $0c
	inc de                                           ; $726b: $13
	inc c                                            ; $726c: $0c
	ccf                                              ; $726d: $3f
	jr @+$36                                         ; $726e: $18 $34

	jr @-$01                                         ; $7270: $18 $fd

	xor [hl]                                         ; $7272: $ae
	ld [hl], d                                       ; $7273: $72
	db $fd                                           ; $7274: $fd
	and e                                            ; $7275: $a3
	ld [hl], d                                       ; $7276: $72
	ld [hl], $18                                     ; $7277: $36 $18
	ld c, $0c                                        ; $7279: $0e $0c
	ld c, $0c                                        ; $727b: $0e $0c
	ccf                                              ; $727d: $3f
	jr @+$41                                         ; $727e: $18 $3f

	jr jr_033_72b7                                   ; $7280: $18 $35

	ld h, b                                          ; $7282: $60

jr_033_7283:
	ld sp, $3130                                     ; $7283: $31 $30 $31

jr_033_7286:
	jr nc, jr_033_7283                               ; $7286: $30 $fb

	db $fd                                           ; $7288: $fd
	sbc b                                            ; $7289: $98
	ld [hl], d                                       ; $728a: $72
	ei                                               ; $728b: $fb
	inc bc                                           ; $728c: $03
	db $fd                                           ; $728d: $fd
	cp c                                             ; $728e: $b9
	ld [hl], d                                       ; $728f: $72
	ei                                               ; $7290: $fb
	db $fd                                           ; $7291: $fd
	sbc b                                            ; $7292: $98
	ld [hl], d                                       ; $7293: $72
	ei                                               ; $7294: $fb
	ld [hl+], a                                      ; $7295: $22
	cp $ff                                           ; $7296: $fe $ff
	ld [hl], $18                                     ; $7298: $36 $18
	ld c, $0c                                        ; $729a: $0e $0c
	dec c                                            ; $729c: $0d
	inc c                                            ; $729d: $0c
	dec a                                            ; $729e: $3d
	jr jr_033_72d5                                   ; $729f: $18 $34

	jr @-$01                                         ; $72a1: $18 $fd

	ld [hl], $18                                     ; $72a3: $36 $18
	ld c, $0c                                        ; $72a5: $0e $0c
	dec c                                            ; $72a7: $0d
	inc c                                            ; $72a8: $0c
	ccf                                              ; $72a9: $3f
	jr jr_033_72e0                                   ; $72aa: $18 $34

	jr @-$01                                         ; $72ac: $18 $fd

	ld [hl], $18                                     ; $72ae: $36 $18
	ld c, $0c                                        ; $72b0: $0e $0c
	dec c                                            ; $72b2: $0d
	inc c                                            ; $72b3: $0c
	ld c, $18                                        ; $72b4: $0e $18

jr_033_72b6:
	inc [hl]                                         ; $72b6: $34

jr_033_72b7:
	jr jr_033_72b6                                   ; $72b7: $18 $fd

	ld [hl], $18                                     ; $72b9: $36 $18
	ld sp, $3208                                     ; $72bb: $31 $08 $32
	ld [$0833], sp                                   ; $72be: $08 $33 $08
	dec a                                            ; $72c1: $3d
	jr @+$36                                         ; $72c2: $18 $34

	jr @-$01                                         ; $72c4: $18 $fd

	ret nc                                           ; $72c6: $d0

jr_033_72c7:
	ld b, l                                          ; $72c7: $45
	cp $b5                                           ; $72c8: $fe $b5
	add c                                            ; $72ca: $81
	ld bc, $060c                                     ; $72cb: $01 $0c $06
	ld a, [hl]                                       ; $72ce: $7e
	nop                                              ; $72cf: $00
	ei                                               ; $72d0: $fb
	ld sp, $2c0c                                     ; $72d1: $31 $0c $2c
	inc c                                            ; $72d4: $0c

jr_033_72d5:
	ei                                               ; $72d5: $fb
	inc b                                            ; $72d6: $04
	ei                                               ; $72d7: $fb
	ld sp, $2e0c                                     ; $72d8: $31 $0c $2e
	inc c                                            ; $72db: $0c
	ei                                               ; $72dc: $fb
	inc b                                            ; $72dd: $04
	add $33                                          ; $72de: $c6 $33

jr_033_72e0:
	inc c                                            ; $72e0: $0c
	rst JumpTable                                          ; $72e1: $c7
	inc l                                            ; $72e2: $2c
	inc c                                            ; $72e3: $0c
	jr nc, jr_033_72f2                               ; $72e4: $30 $0c

	inc l                                            ; $72e6: $2c
	inc c                                            ; $72e7: $0c
	add $33                                          ; $72e8: $c6 $33
	inc c                                            ; $72ea: $0c
	rst JumpTable                                          ; $72eb: $c7
	inc l                                            ; $72ec: $2c
	inc c                                            ; $72ed: $0c
	jr nc, @+$0e                                     ; $72ee: $30 $0c

	inc l                                            ; $72f0: $2c
	inc c                                            ; $72f1: $0c

jr_033_72f2:
	or c                                             ; $72f2: $b1
	add c                                            ; $72f3: $81
	ld b, $03                                        ; $72f4: $06 $03
	cp [hl]                                          ; $72f6: $be
	ld b, $29                                        ; $72f7: $06 $29
	jr nz, jr_033_7322                               ; $72f9: $20 $27

	jr nz, jr_033_7327                               ; $72fb: $20 $2a

	jr nz, jr_033_7328                               ; $72fd: $20 $29

	jr nz, jr_033_7328                               ; $72ff: $20 $27

	jr nz, jr_033_7328                               ; $7301: $20 $25

	jr nz, @+$29                                     ; $7303: $20 $27

	jr nz, @+$26                                     ; $7305: $20 $24

	jr nz, jr_033_72c7                               ; $7307: $20 $be

	add $91                                          ; $7309: $c6 $91
	ei                                               ; $730b: $fb
	sub [hl]                                         ; $730c: $96
	ld [$7e04], sp                                   ; $730d: $08 $04 $7e
	nop                                              ; $7310: $00
	ld sp, $b108                                     ; $7311: $31 $08 $b1
	ld sp, $0000                                     ; $7314: $31 $00 $00
	dec [hl]                                         ; $7317: $35
	inc b                                            ; $7318: $04
	or c                                             ; $7319: $b1
	ld h, c                                          ; $731a: $61
	ld [$2c04], sp                                   ; $731b: $08 $04 $2c
	ld [$31b1], sp                                   ; $731e: $08 $b1 $31
	nop                                              ; $7321: $00

jr_033_7322:
	nop                                              ; $7322: $00
	jr c, jr_033_7329                                ; $7323: $38 $04

	add $fb                                          ; $7325: $c6 $fb

jr_033_7327:
	inc b                                            ; $7327: $04

jr_033_7328:
	or c                                             ; $7328: $b1

jr_033_7329:
	ld h, c                                          ; $7329: $61
	ld [$3104], sp                                   ; $732a: $08 $04 $31
	ld [$31b1], sp                                   ; $732d: $08 $b1 $31
	nop                                              ; $7330: $00
	nop                                              ; $7331: $00
	ld [hl], $04                                     ; $7332: $36 $04
	or c                                             ; $7334: $b1
	ld h, c                                          ; $7335: $61
	ld [$2e04], sp                                   ; $7336: $08 $04 $2e
	ld [$31b1], sp                                   ; $7339: $08 $b1 $31
	nop                                              ; $733c: $00
	nop                                              ; $733d: $00
	inc sp                                           ; $733e: $33
	inc b                                            ; $733f: $04
	or c                                             ; $7340: $b1
	ld h, c                                          ; $7341: $61
	ld [$3104], sp                                   ; $7342: $08 $04 $31
	ld [$31b1], sp                                   ; $7345: $08 $b1 $31
	nop                                              ; $7348: $00
	nop                                              ; $7349: $00
	ld [hl], $04                                     ; $734a: $36 $04
	or c                                             ; $734c: $b1
	ld h, c                                          ; $734d: $61
	ld [$2e04], sp                                   ; $734e: $08 $04 $2e
	ld [$31b1], sp                                   ; $7351: $08 $b1 $31
	nop                                              ; $7354: $00
	nop                                              ; $7355: $00
	ld sp, $b104                                     ; $7356: $31 $04 $b1
	ld h, c                                          ; $7359: $61
	ld [$3104], sp                                   ; $735a: $08 $04 $31
	ld [$31b1], sp                                   ; $735d: $08 $b1 $31
	nop                                              ; $7360: $00
	nop                                              ; $7361: $00
	ld [hl], $04                                     ; $7362: $36 $04
	or c                                             ; $7364: $b1
	ld h, c                                          ; $7365: $61
	ld [$2e04], sp                                   ; $7366: $08 $04 $2e
	ld [$31b1], sp                                   ; $7369: $08 $b1 $31
	nop                                              ; $736c: $00
	nop                                              ; $736d: $00
	ld [hl], $04                                     ; $736e: $36 $04
	or c                                             ; $7370: $b1
	ld h, c                                          ; $7371: $61
	ld [$3104], sp                                   ; $7372: $08 $04 $31
	ld [$31b1], sp                                   ; $7375: $08 $b1 $31
	nop                                              ; $7378: $00
	nop                                              ; $7379: $00
	ld [hl], $04                                     ; $737a: $36 $04
	or c                                             ; $737c: $b1
	ld h, c                                          ; $737d: $61
	ld [$2e04], sp                                   ; $737e: $08 $04 $2e
	ld [$31b1], sp                                   ; $7381: $08 $b1 $31
	nop                                              ; $7384: $00
	nop                                              ; $7385: $00
	inc sp                                           ; $7386: $33
	inc b                                            ; $7387: $04
	or c                                             ; $7388: $b1
	ld h, c                                          ; $7389: $61
	ld [$3004], sp                                   ; $738a: $08 $04 $30
	ld [$31b1], sp                                   ; $738d: $08 $b1 $31
	nop                                              ; $7390: $00
	nop                                              ; $7391: $00
	ld l, $04                                        ; $7392: $2e $04
	or c                                             ; $7394: $b1
	ld h, c                                          ; $7395: $61
	ld [$2c04], sp                                   ; $7396: $08 $04 $2c
	ld [$31b1], sp                                   ; $7399: $08 $b1 $31
	nop                                              ; $739c: $00
	nop                                              ; $739d: $00
	inc l                                            ; $739e: $2c
	inc b                                            ; $739f: $04
	or c                                             ; $73a0: $b1
	ld h, c                                          ; $73a1: $61
	ld [$3004], sp                                   ; $73a2: $08 $04 $30
	ld [$31b1], sp                                   ; $73a5: $08 $b1 $31
	nop                                              ; $73a8: $00
	nop                                              ; $73a9: $00
	jr nc, @+$06                                     ; $73aa: $30 $04

	or c                                             ; $73ac: $b1
	ld h, c                                          ; $73ad: $61
	ld [$2c04], sp                                   ; $73ae: $08 $04 $2c
	ld [$31b1], sp                                   ; $73b1: $08 $b1 $31
	nop                                              ; $73b4: $00
	nop                                              ; $73b5: $00
	inc l                                            ; $73b6: $2c
	inc b                                            ; $73b7: $04
	or c                                             ; $73b8: $b1
	ld h, c                                          ; $73b9: $61
	ld [$3004], sp                                   ; $73ba: $08 $04 $30
	ld [$31b1], sp                                   ; $73bd: $08 $b1 $31
	nop                                              ; $73c0: $00
	nop                                              ; $73c1: $00
	ld a, [hl+]                                      ; $73c2: $2a
	inc b                                            ; $73c3: $04
	or c                                             ; $73c4: $b1
	ld h, c                                          ; $73c5: $61
	ld [$2c04], sp                                   ; $73c6: $08 $04 $2c
	ld [$31b1], sp                                   ; $73c9: $08 $b1 $31
	nop                                              ; $73cc: $00
	nop                                              ; $73cd: $00
	ld a, [hl+]                                      ; $73ce: $2a
	inc b                                            ; $73cf: $04
	or c                                             ; $73d0: $b1
	ld h, c                                          ; $73d1: $61
	ld [$2e04], sp                                   ; $73d2: $08 $04 $2e
	ld [$31b1], sp                                   ; $73d5: $08 $b1 $31
	nop                                              ; $73d8: $00
	nop                                              ; $73d9: $00
	inc l                                            ; $73da: $2c
	inc b                                            ; $73db: $04
	or c                                             ; $73dc: $b1
	ld h, c                                          ; $73dd: $61
	ld [$3004], sp                                   ; $73de: $08 $04 $30
	ld [$31b1], sp                                   ; $73e1: $08 $b1 $31
	nop                                              ; $73e4: $00
	nop                                              ; $73e5: $00
	inc l                                            ; $73e6: $2c
	inc b                                            ; $73e7: $04
	or c                                             ; $73e8: $b1
	ld h, c                                          ; $73e9: $61
	ld [$3504], sp                                   ; $73ea: $08 $04 $35
	ld [$31b1], sp                                   ; $73ed: $08 $b1 $31
	nop                                              ; $73f0: $00
	nop                                              ; $73f1: $00
	dec [hl]                                         ; $73f2: $35
	inc b                                            ; $73f3: $04
	or c                                             ; $73f4: $b1
	ld h, c                                          ; $73f5: $61

jr_033_73f6:
	ld [$2c04], sp                                   ; $73f6: $08 $04 $2c
	ld [$31b1], sp                                   ; $73f9: $08 $b1 $31
	nop                                              ; $73fc: $00
	nop                                              ; $73fd: $00
	inc l                                            ; $73fe: $2c
	inc b                                            ; $73ff: $04
	or c                                             ; $7400: $b1
	ld h, c                                          ; $7401: $61
	ld [$3004], sp                                   ; $7402: $08 $04 $30
	ld [$31b1], sp                                   ; $7405: $08 $b1 $31
	nop                                              ; $7408: $00
	nop                                              ; $7409: $00
	jr nc, @+$06                                     ; $740a: $30 $04

	or c                                             ; $740c: $b1
	ld h, c                                          ; $740d: $61
	ld [$2a04], sp                                   ; $740e: $08 $04 $2a
	ld [$31b1], sp                                   ; $7411: $08 $b1 $31
	nop                                              ; $7414: $00
	nop                                              ; $7415: $00
	ld a, [hl+]                                      ; $7416: $2a
	inc b                                            ; $7417: $04
	sub [hl]                                         ; $7418: $96
	ld [$3104], sp                                   ; $7419: $08 $04 $31
	ld b, $b5                                        ; $741c: $06 $b5
	add c                                            ; $741e: $81
	ld [bc], a                                       ; $741f: $02
	nop                                              ; $7420: $00
	nop                                              ; $7421: $00
	sub a                                            ; $7422: $97
	ld l, d                                          ; $7423: $6a
	dec e                                            ; $7424: $1d
	ld b, $20                                        ; $7425: $06 $20
	ld b, $24                                        ; $7427: $06 $24
	ld b, $be                                        ; $7429: $06 $be
	inc b                                            ; $742b: $04
	dec h                                            ; $742c: $25
	rra                                              ; $742d: $1f
	jr nz, jr_033_7452                               ; $742e: $20 $22

	cp [hl]                                          ; $7430: $be
	sub a                                            ; $7431: $97
	ld a, d                                          ; $7432: $7a
	daa                                              ; $7433: $27
	inc b                                            ; $7434: $04
	add hl, hl                                       ; $7435: $29
	inc b                                            ; $7436: $04
	ret z                                            ; $7437: $c8

	sub d                                            ; $7438: $92
	sub a                                            ; $7439: $97
	inc a                                            ; $743a: $3c
	ld a, [hl]                                       ; $743b: $7e
	nop                                              ; $743c: $00
	ld [hl+], a                                      ; $743d: $22
	jr @-$38                                         ; $743e: $18 $c6

	jr nz, @+$1a                                     ; $7440: $20 $18

	dec e                                            ; $7442: $1d
	inc c                                            ; $7443: $0c
	or l                                             ; $7444: $b5
	ld h, c                                          ; $7445: $61
	ld [bc], a                                       ; $7446: $02
	ld b, $02                                        ; $7447: $06 $02
	sub a                                            ; $7449: $97
	nop                                              ; $744a: $00

jr_033_744b:
	cp [hl]                                          ; $744b: $be
	ld b, $35                                        ; $744c: $06 $35
	ld sp, $3135                                     ; $744e: $31 $35 $31
	dec [hl]                                         ; $7451: $35

jr_033_7452:
	ld sp, $b1be                                     ; $7452: $31 $be $b1
	add c                                            ; $7455: $81
	nop                                              ; $7456: $00
	nop                                              ; $7457: $00
	sub a                                            ; $7458: $97
	ld l, $25                                        ; $7459: $2e $25
	jr jr_033_7481                                   ; $745b: $18 $24

	jr jr_033_73f6                                   ; $745d: $18 $97

	inc l                                            ; $745f: $2c
	dec h                                            ; $7460: $25
	inc c                                            ; $7461: $0c
	sub a                                            ; $7462: $97
	inc a                                            ; $7463: $3c
	ld e, $06                                        ; $7464: $1e $06
	jr nz, jr_033_746e                               ; $7466: $20 $06

	sub a                                            ; $7468: $97
	ld c, l                                          ; $7469: $4d
	dec e                                            ; $746a: $1d
	inc c                                            ; $746b: $0c
	add hl, de                                       ; $746c: $19
	inc c                                            ; $746d: $0c

jr_033_746e:
	or l                                             ; $746e: $b5
	ld h, c                                          ; $746f: $61
	inc bc                                           ; $7470: $03
	ld b, $02                                        ; $7471: $06 $02
	sub a                                            ; $7473: $97
	nop                                              ; $7474: $00
	dec de                                           ; $7475: $1b
	ld b, $c9                                        ; $7476: $06 $c9
	cp [hl]                                          ; $7478: $be
	ld b, $1e                                        ; $7479: $06 $1e
	ld [hl+], a                                      ; $747b: $22
	dec h                                            ; $747c: $25
	inc h                                            ; $747d: $24
	jr nz, jr_033_74a2                               ; $747e: $20 $22

	inc h                                            ; $7480: $24

jr_033_7481:
	cp [hl]                                          ; $7481: $be
	or c                                             ; $7482: $b1
	add c                                            ; $7483: $81
	ld b, $02                                        ; $7484: $06 $02
	cp [hl]                                          ; $7486: $be
	ld b, $25                                        ; $7487: $06 $25
	jr nz, jr_033_74b0                               ; $7489: $20 $25

	jr nz, jr_033_744b                               ; $748b: $20 $be

	add hl, hl                                       ; $748d: $29
	ld [$91b1], sp                                   ; $748e: $08 $b1 $91
	nop                                              ; $7491: $00
	nop                                              ; $7492: $00
	sub a                                            ; $7493: $97
	inc a                                            ; $7494: $3c
	dec e                                            ; $7495: $1d
	ld b, $1e                                        ; $7496: $06 $1e
	ld b, $bd                                        ; $7498: $06 $bd
	ld [bc], a                                       ; $749a: $02
	jr nz, jr_033_74a1                               ; $749b: $20 $04

	ld bc, $027d                                     ; $749d: $01 $7d $02
	sub c                                            ; $74a0: $91

jr_033_74a1:
	sub a                                            ; $74a1: $97

jr_033_74a2:
	inc e                                            ; $74a2: $1c
	ld e, $0c                                        ; $74a3: $1e $0c
	sub a                                            ; $74a5: $97
	ld c, h                                          ; $74a6: $4c
	jr nz, @+$0e                                     ; $74a7: $20 $0c

	ld a, l                                          ; $74a9: $7d
	nop                                              ; $74aa: $00
	sub a                                            ; $74ab: $97
	ld c, l                                          ; $74ac: $4d
	daa                                              ; $74ad: $27
	inc c                                            ; $74ae: $0c
	ld a, [hl+]                                      ; $74af: $2a

jr_033_74b0:
	inc c                                            ; $74b0: $0c
	sub a                                            ; $74b1: $97
	nop                                              ; $74b2: $00
	call nz, $052a                                   ; $74b3: $c4 $2a $05

jr_033_74b6:
	sub a                                            ; $74b6: $97
	nop                                              ; $74b7: $00
	or c                                             ; $74b8: $b1
	and c                                            ; $74b9: $a1
	ld a, [bc]                                       ; $74ba: $0a
	ld [bc], a                                       ; $74bb: $02
	add hl, hl                                       ; $74bc: $29
	ld a, [bc]                                       ; $74bd: $0a
	or c                                             ; $74be: $b1
	ld hl, $0000                                     ; $74bf: $21 $00 $00
	add hl, hl                                       ; $74c2: $29
	ld [bc], a                                       ; $74c3: $02
	or c                                             ; $74c4: $b1
	and c                                            ; $74c5: $a1
	ld b, $02                                        ; $74c6: $06 $02
	add hl, hl                                       ; $74c8: $29
	ld b, $29                                        ; $74c9: $06 $29
	ld b, $b1                                        ; $74cb: $06 $b1
	ld de, $0000                                     ; $74cd: $11 $00 $00
	add hl, hl                                       ; $74d0: $29
	ld [$7dc4], sp                                   ; $74d1: $08 $c4 $7d
	ld bc, $ff96                                     ; $74d4: $01 $96 $ff
	ld [bc], a                                       ; $74d7: $02
	dec h                                            ; $74d8: $25
	inc bc                                           ; $74d9: $03
	daa                                              ; $74da: $27
	inc bc                                           ; $74db: $03
	add hl, hl                                       ; $74dc: $29
	inc bc                                           ; $74dd: $03
	ld a, [hl+]                                      ; $74de: $2a
	ld bc, $007d                                     ; $74df: $01 $7d $00
	cp $ff                                           ; $74e2: $fe $ff
	ret nc                                           ; $74e4: $d0

	ld b, l                                          ; $74e5: $45
	cp $b5                                           ; $74e6: $fe $b5
	pop de                                           ; $74e8: $d1
	ld [bc], a                                       ; $74e9: $02
	jr jr_033_74f0                                   ; $74ea: $18 $04

	sub a                                            ; $74ec: $97
	cp [hl]                                          ; $74ed: $be
	ld a, [hl]                                       ; $74ee: $7e
	nop                                              ; $74ef: $00

jr_033_74f0:
	inc l                                            ; $74f0: $2c
	jr @-$4d                                         ; $74f1: $18 $b1

	or c                                             ; $74f3: $b1
	ld [de], a                                       ; $74f4: $12
	inc b                                            ; $74f5: $04
	add hl, hl                                       ; $74f6: $29
	ld [de], a                                       ; $74f7: $12
	sub [hl]                                         ; $74f8: $96
	ld b, $03                                        ; $74f9: $06 $03
	ld a, [hl+]                                      ; $74fb: $2a
	ld b, $97                                        ; $74fc: $06 $97
	adc $96                                          ; $74fe: $ce $96
	jr @+$07                                         ; $7500: $18 $05

	inc l                                            ; $7502: $2c
	jr jr_033_74b6                                   ; $7503: $18 $b1

	ld hl, $0000                                     ; $7505: $21 $00 $00
	sub a                                            ; $7508: $97
	nop                                              ; $7509: $00
	inc l                                            ; $750a: $2c
	ld [de], a                                       ; $750b: $12
	or c                                             ; $750c: $b1
	ld hl, $0202                                     ; $750d: $21 $02 $02
	dec h                                            ; $7510: $25
	ld bc, $27c3                                     ; $7511: $01 $c3 $27
	ld [bc], a                                       ; $7514: $02
	or c                                             ; $7515: $b1
	ld b, c                                          ; $7516: $41
	inc bc                                           ; $7517: $03
	inc bc                                           ; $7518: $03
	ld a, [hl+]                                      ; $7519: $2a
	inc bc                                           ; $751a: $03
	or c                                             ; $751b: $b1
	pop de                                           ; $751c: $d1
	jr jr_033_7523                                   ; $751d: $18 $04

	sub a                                            ; $751f: $97
	cp [hl]                                          ; $7520: $be
	ld l, $18                                        ; $7521: $2e $18

jr_033_7523:
	sub [hl]                                         ; $7523: $96
	ld [de], a                                       ; $7524: $12
	inc b                                            ; $7525: $04
	ld a, [hl+]                                      ; $7526: $2a
	ld [de], a                                       ; $7527: $12
	sub [hl]                                         ; $7528: $96
	ld b, $02                                        ; $7529: $06 $02
	inc l                                            ; $752b: $2c
	ld b, $97                                        ; $752c: $06 $97
	cp [hl]                                          ; $752e: $be
	sub [hl]                                         ; $752f: $96
	jr jr_033_7537                                   ; $7530: $18 $05

	ld l, $18                                        ; $7532: $2e $18
	sub a                                            ; $7534: $97
	nop                                              ; $7535: $00
	or c                                             ; $7536: $b1

jr_033_7537:
	ld hl, $0000                                     ; $7537: $21 $00 $00
	ld l, $12                                        ; $753a: $2e $12
	sub [hl]                                         ; $753c: $96
	ld [bc], a                                       ; $753d: $02
	ld [bc], a                                       ; $753e: $02
	daa                                              ; $753f: $27
	ld bc, $2ac3                                     ; $7540: $01 $c3 $2a
	ld [bc], a                                       ; $7543: $02
	or c                                             ; $7544: $b1
	ld d, c                                          ; $7545: $51
	inc bc                                           ; $7546: $03
	ld [bc], a                                       ; $7547: $02
	inc l                                            ; $7548: $2c
	inc bc                                           ; $7549: $03
	or c                                             ; $754a: $b1
	pop de                                           ; $754b: $d1
	jr jr_033_7552                                   ; $754c: $18 $04

	sub a                                            ; $754e: $97
	cp h                                             ; $754f: $bc
	jr nc, @+$1a                                     ; $7550: $30 $18

jr_033_7552:
	sub [hl]                                         ; $7552: $96

jr_033_7553:
	ld [de], a                                       ; $7553: $12
	inc b                                            ; $7554: $04
	inc l                                            ; $7555: $2c
	ld [de], a                                       ; $7556: $12
	sub [hl]                                         ; $7557: $96
	ld b, $02                                        ; $7558: $06 $02
	ld l, $06                                        ; $755a: $2e $06
	sub [hl]                                         ; $755c: $96
	jr jr_033_7564                                   ; $755d: $18 $05

	sub a                                            ; $755f: $97
	cp h                                             ; $7560: $bc
	jr nc, jr_033_757b                               ; $7561: $30 $18

	or c                                             ; $7563: $b1

jr_033_7564:
	ld hl, $0000                                     ; $7564: $21 $00 $00
	sub a                                            ; $7567: $97
	nop                                              ; $7568: $00
	jr nc, @+$1a                                     ; $7569: $30 $18

	or c                                             ; $756b: $b1
	pop de                                           ; $756c: $d1
	inc c                                            ; $756d: $0c
	inc bc                                           ; $756e: $03
	sub a                                            ; $756f: $97
	xor h                                            ; $7570: $ac
	cp [hl]                                          ; $7571: $be
	inc c                                            ; $7572: $0c
	ld sp, $3330                                     ; $7573: $31 $30 $33
	ld sp, $2e30                                     ; $7576: $31 $30 $2e
	inc l                                            ; $7579: $2c
	ld a, [hl+]                                      ; $757a: $2a

jr_033_757b:
	cp [hl]                                          ; $757b: $be
	or l                                             ; $757c: $b5
	pop de                                           ; $757d: $d1
	ld [bc], a                                       ; $757e: $02
	jr jr_033_7585                                   ; $757f: $18 $04

	sub a                                            ; $7581: $97
	adc $7e                                          ; $7582: $ce $7e
	nop                                              ; $7584: $00

jr_033_7585:
	inc l                                            ; $7585: $2c
	jr @-$4d                                         ; $7586: $18 $b1

	pop de                                           ; $7588: $d1
	ld [de], a                                       ; $7589: $12
	inc b                                            ; $758a: $04
	add hl, hl                                       ; $758b: $29
	ld [de], a                                       ; $758c: $12
	sub [hl]                                         ; $758d: $96
	ld b, $02                                        ; $758e: $06 $02
	ld a, [hl+]                                      ; $7590: $2a
	ld b, $97                                        ; $7591: $06 $97
	adc $96                                          ; $7593: $ce $96
	jr @+$08                                         ; $7595: $18 $06

	inc l                                            ; $7597: $2c
	jr @-$67                                         ; $7598: $18 $97

	nop                                              ; $759a: $00
	or c                                             ; $759b: $b1
	ld hl, $0000                                     ; $759c: $21 $00 $00
	inc l                                            ; $759f: $2c
	jr jr_033_7553                                   ; $75a0: $18 $b1

	pop de                                           ; $75a2: $d1
	jr jr_033_75a9                                   ; $75a3: $18 $04

	sub a                                            ; $75a5: $97
	cp [hl]                                          ; $75a6: $be
	ld l, $18                                        ; $75a7: $2e $18

jr_033_75a9:
	sub [hl]                                         ; $75a9: $96
	ld [de], a                                       ; $75aa: $12
	inc b                                            ; $75ab: $04
	ld a, [hl+]                                      ; $75ac: $2a
	ld [de], a                                       ; $75ad: $12
	sub [hl]                                         ; $75ae: $96
	ld b, $02                                        ; $75af: $06 $02
	inc l                                            ; $75b1: $2c
	ld b, $97                                        ; $75b2: $06 $97
	cp [hl]                                          ; $75b4: $be
	sub [hl]                                         ; $75b5: $96
	jr jr_033_75bd                                   ; $75b6: $18 $05

	ld l, $18                                        ; $75b8: $2e $18
	sub a                                            ; $75ba: $97
	nop                                              ; $75bb: $00
	or c                                             ; $75bc: $b1

jr_033_75bd:
	ld hl, $0000                                     ; $75bd: $21 $00 $00
	ld l, $18                                        ; $75c0: $2e $18
	or c                                             ; $75c2: $b1
	pop de                                           ; $75c3: $d1
	inc c                                            ; $75c4: $0c
	inc bc                                           ; $75c5: $03
	sub a                                            ; $75c6: $97
	adc $be                                          ; $75c7: $ce $be
	inc c                                            ; $75c9: $0c
	jr nc, jr_033_75ff                               ; $75ca: $30 $33

	ld [hl], $38                                     ; $75cc: $36 $38
	ld [hl], $33                                     ; $75ce: $36 $33
	jr nc, jr_033_75fe                               ; $75d0: $30 $2c

	cp [hl]                                          ; $75d2: $be
	cp [hl]                                          ; $75d3: $be
	inc c                                            ; $75d4: $0c
	ld sp, $332c                                     ; $75d5: $31 $2c $33
	inc l                                            ; $75d8: $2c
	dec [hl]                                         ; $75d9: $35
	cp [hl]                                          ; $75da: $be
	sub a                                            ; $75db: $97
	nop                                              ; $75dc: $00
	or c                                             ; $75dd: $b1
	ld sp, $0000                                     ; $75de: $31 $00 $00
	dec [hl]                                         ; $75e1: $35
	ld [$61b5], sp                                   ; $75e2: $08 $b5 $61
	ld [bc], a                                       ; $75e5: $02
	nop                                              ; $75e6: $00
	nop                                              ; $75e7: $00
	sub a                                            ; $75e8: $97
	inc a                                            ; $75e9: $3c
	inc h                                            ; $75ea: $24
	ld b, $be                                        ; $75eb: $06 $be
	inc b                                            ; $75ed: $04
	dec h                                            ; $75ee: $25
	rra                                              ; $75ef: $1f
	jr nz, jr_033_7614                               ; $75f0: $20 $22

	cp [hl]                                          ; $75f2: $be
	sub a                                            ; $75f3: $97
	inc a                                            ; $75f4: $3c
	daa                                              ; $75f5: $27
	inc b                                            ; $75f6: $04
	add hl, hl                                       ; $75f7: $29
	ld [bc], a                                       ; $75f8: $02
	or l                                             ; $75f9: $b5
	pop bc                                           ; $75fa: $c1
	ld bc, $030c                                     ; $75fb: $01 $0c $03

jr_033_75fe:
	sub a                                            ; $75fe: $97

jr_033_75ff:
	nop                                              ; $75ff: $00
	ld a, [hl+]                                      ; $7600: $2a
	inc c                                            ; $7601: $0c
	ld a, [hl+]                                      ; $7602: $2a
	inc c                                            ; $7603: $0c
	ld a, [hl+]                                      ; $7604: $2a
	inc c                                            ; $7605: $0c
	sub [hl]                                         ; $7606: $96
	ld b, $02                                        ; $7607: $06 $02
	add hl, hl                                       ; $7609: $29
	ld b, $27                                        ; $760a: $06 $27
	ld b, $96                                        ; $760c: $06 $96
	ld a, [bc]                                       ; $760e: $0a
	ld [bc], a                                       ; $760f: $02
	add hl, hl                                       ; $7610: $29
	ld a, [bc]                                       ; $7611: $0a
	or c                                             ; $7612: $b1
	ld b, c                                          ; $7613: $41

jr_033_7614:
	nop                                              ; $7614: $00
	nop                                              ; $7615: $00
	add hl, hl                                       ; $7616: $29
	ld [bc], a                                       ; $7617: $02
	or l                                             ; $7618: $b5
	pop bc                                           ; $7619: $c1
	ld [bc], a                                       ; $761a: $02
	nop                                              ; $761b: $00
	nop                                              ; $761c: $00
	sub a                                            ; $761d: $97
	ld e, h                                          ; $761e: $5c
	cp [hl]                                          ; $761f: $be
	ld b, $20                                        ; $7620: $06 $20
	inc h                                            ; $7622: $24
	dec h                                            ; $7623: $25
	jr nz, jr_033_764a                               ; $7624: $20 $24

	dec h                                            ; $7626: $25
	cp [hl]                                          ; $7627: $be
	sub a                                            ; $7628: $97
	nop                                              ; $7629: $00
	or l                                             ; $762a: $b5
	pop bc                                           ; $762b: $c1
	ld bc, $030c                                     ; $762c: $01 $0c $03
	daa                                              ; $762f: $27
	inc c                                            ; $7630: $0c
	daa                                              ; $7631: $27
	inc c                                            ; $7632: $0c
	daa                                              ; $7633: $27
	inc c                                            ; $7634: $0c
	sub [hl]                                         ; $7635: $96
	ld b, $02                                        ; $7636: $06 $02
	dec h                                            ; $7638: $25
	ld b, $27                                        ; $7639: $06 $27
	ld b, $96                                        ; $763b: $06 $96
	ld a, [bc]                                       ; $763d: $0a
	ld [bc], a                                       ; $763e: $02
	add hl, hl                                       ; $763f: $29
	ld a, [bc]                                       ; $7640: $0a
	or c                                             ; $7641: $b1
	ld b, c                                          ; $7642: $41
	nop                                              ; $7643: $00
	nop                                              ; $7644: $00
	add hl, hl                                       ; $7645: $29
	ld [bc], a                                       ; $7646: $02
	or l                                             ; $7647: $b5
	pop bc                                           ; $7648: $c1
	ld [bc], a                                       ; $7649: $02

jr_033_764a:
	nop                                              ; $764a: $00
	nop                                              ; $764b: $00
	sub a                                            ; $764c: $97
	ld e, h                                          ; $764d: $5c
	ld e, $06                                        ; $764e: $1e $06
	rra                                              ; $7650: $1f
	ld b, $97                                        ; $7651: $06 $97
	ld e, h                                          ; $7653: $5c
	cp [hl]                                          ; $7654: $be
	ld b, $20                                        ; $7655: $06 $20
	inc h                                            ; $7657: $24
	dec h                                            ; $7658: $25
	daa                                              ; $7659: $27
	cp [hl]                                          ; $765a: $be
	sub a                                            ; $765b: $97
	nop                                              ; $765c: $00
	or l                                             ; $765d: $b5
	or c                                             ; $765e: $b1
	ld bc, $020c                                     ; $765f: $01 $0c $02
	ld a, [hl+]                                      ; $7662: $2a
	inc c                                            ; $7663: $0c
	ld a, [hl+]                                      ; $7664: $2a
	inc c                                            ; $7665: $0c
	ld a, [hl+]                                      ; $7666: $2a
	inc c                                            ; $7667: $0c
	sub [hl]                                         ; $7668: $96
	ld b, $02                                        ; $7669: $06 $02
	add hl, hl                                       ; $766b: $29
	ld b, $27                                        ; $766c: $06 $27
	ld b, $96                                        ; $766e: $06 $96
	ld b, $02                                        ; $7670: $06 $02
	add hl, hl                                       ; $7672: $29
	ld b, $92                                        ; $7673: $06 $92
	sub [hl]                                         ; $7675: $96
	nop                                              ; $7676: $00
	nop                                              ; $7677: $00
	sub a                                            ; $7678: $97
	ld e, e                                          ; $7679: $5b
	jr nz, jr_033_7682                               ; $767a: $20 $06

	ld [hl+], a                                      ; $767c: $22
	ld b, $24                                        ; $767d: $06 $24
	ld b, $97                                        ; $767f: $06 $97
	ld c, e                                          ; $7681: $4b

jr_033_7682:
	dec h                                            ; $7682: $25
	ld b, $97                                        ; $7683: $06 $97
	ld e, d                                          ; $7685: $5a
	dec e                                            ; $7686: $1d
	ld b, $1e                                        ; $7687: $06 $1e
	ld b, $20                                        ; $7689: $06 $20
	ld b, $97                                        ; $768b: $06 $97
	ld l, h                                          ; $768d: $6c
	sub c                                            ; $768e: $91
	cp [hl]                                          ; $768f: $be
	inc c                                            ; $7690: $0c
	ld e, $20                                        ; $7691: $1e $20
	inc h                                            ; $7693: $24
	daa                                              ; $7694: $27
	cp [hl]                                          ; $7695: $be
	sub a                                            ; $7696: $97
	nop                                              ; $7697: $00
	call nz, $0627                                   ; $7698: $c4 $27 $06
	sub a                                            ; $769b: $97
	nop                                              ; $769c: $00
	or c                                             ; $769d: $b1
	and c                                            ; $769e: $a1
	ld a, [bc]                                       ; $769f: $0a
	ld [bc], a                                       ; $76a0: $02
	dec h                                            ; $76a1: $25
	ld a, [bc]                                       ; $76a2: $0a
	or c                                             ; $76a3: $b1
	ld hl, $0000                                     ; $76a4: $21 $00 $00
	dec h                                            ; $76a7: $25
	ld [bc], a                                       ; $76a8: $02
	or c                                             ; $76a9: $b1
	and c                                            ; $76aa: $a1
	ld b, $02                                        ; $76ab: $06 $02
	dec h                                            ; $76ad: $25
	ld b, $25                                        ; $76ae: $06 $25
	ld b, $b1                                        ; $76b0: $06 $b1
	ld de, $0000                                     ; $76b2: $11 $00 $00
	dec h                                            ; $76b5: $25
	ld b, $b1                                        ; $76b6: $06 $b1
	add c                                            ; $76b8: $81
	rst $38                                          ; $76b9: $ff
	ld [bc], a                                       ; $76ba: $02
	cp [hl]                                          ; $76bb: $be
	inc bc                                           ; $76bc: $03
	dec h                                            ; $76bd: $25
	daa                                              ; $76be: $27
	add hl, hl                                       ; $76bf: $29
	ld a, [hl+]                                      ; $76c0: $2a
	cp [hl]                                          ; $76c1: $be
	cp $ff                                           ; $76c2: $fe $ff
	ret nc                                           ; $76c4: $d0

	ld b, l                                          ; $76c5: $45
	cp $c6                                           ; $76c6: $fe $c6
	ld a, [hl]                                       ; $76c8: $7e
	nop                                              ; $76c9: $00
	adc c                                            ; $76ca: $89
	nop                                              ; $76cb: $00
	ld [bc], a                                       ; $76cc: $02
	jr c, @+$1c                                      ; $76cd: $38 $1a

	nop                                              ; $76cf: $00
	ld b, h                                          ; $76d0: $44
	nop                                              ; $76d1: $00
	ld h, b                                          ; $76d2: $60
	nop                                              ; $76d3: $00
	ld h, b                                          ; $76d4: $60
	nop                                              ; $76d5: $00
	jr nc, jr_033_7757                               ; $76d6: $30 $7f

	rla                                              ; $76d8: $17
	jp nz, $057e                                     ; $76d9: $c2 $7e $05

	inc b                                            ; $76dc: $04
	and h                                            ; $76dd: $a4
	ld [hl+], a                                      ; $76de: $22
	inc c                                            ; $76df: $0c
	adc c                                            ; $76e0: $89
	ld a, [hl]                                       ; $76e1: $7e
	nop                                              ; $76e2: $00
	jr nz, jr_033_76eb                               ; $76e3: $20 $06

	ld a, a                                          ; $76e5: $7f
	rla                                              ; $76e6: $17
	dec de                                           ; $76e7: $1b
	ld b, $1e                                        ; $76e8: $06 $1e
	ld [de], a                                       ; $76ea: $12

jr_033_76eb:
	add $1e                                          ; $76eb: $c6 $1e
	ld b, $c2                                        ; $76ed: $06 $c2
	ld a, a                                          ; $76ef: $7f
	rla                                              ; $76f0: $17
	ld a, [hl]                                       ; $76f1: $7e
	nop                                              ; $76f2: $00
	dec e                                            ; $76f3: $1d
	inc c                                            ; $76f4: $0c
	call nz, $061d                                   ; $76f5: $c4 $1d $06
	add $1d                                          ; $76f8: $c6 $1d
	ld b, $c2                                        ; $76fa: $06 $c2
	jr nz, jr_033_770a                               ; $76fc: $20 $0c

	call nz, $0620                                   ; $76fe: $c4 $20 $06
	add $20                                          ; $7701: $c6 $20
	ld b, $c2                                        ; $7703: $06 $c2
	add hl, de                                       ; $7705: $19
	inc c                                            ; $7706: $0c
	call nz, $0619                                   ; $7707: $c4 $19 $06

jr_033_770a:
	add $19                                          ; $770a: $c6 $19
	ld b, $c2                                        ; $770c: $06 $c2
	dec e                                            ; $770e: $1d
	inc c                                            ; $770f: $0c
	call nz, $061d                                   ; $7710: $c4 $1d $06
	add $1d                                          ; $7713: $c6 $1d
	ld b, $c2                                        ; $7715: $06 $c2
	ld e, $0c                                        ; $7717: $1e $0c
	call nz, $061e                                   ; $7719: $c4 $1e $06
	add $1e                                          ; $771c: $c6 $1e
	ld b, $c2                                        ; $771e: $06 $c2
	ld [hl+], a                                      ; $7720: $22
	inc c                                            ; $7721: $0c
	call nz, $0622                                   ; $7722: $c4 $22 $06
	add $22                                          ; $7725: $c6 $22
	ld b, $c2                                        ; $7727: $06 $c2
	dec h                                            ; $7729: $25
	inc c                                            ; $772a: $0c
	call nz, $0625                                   ; $772b: $c4 $25 $06
	add $25                                          ; $772e: $c6 $25
	ld b, $c2                                        ; $7730: $06 $c2
	ld e, $0c                                        ; $7732: $1e $0c
	call nz, $061e                                   ; $7734: $c4 $1e $06
	add $1e                                          ; $7737: $c6 $1e
	ld b, $c2                                        ; $7739: $06 $c2
	jr nz, jr_033_7749                               ; $773b: $20 $0c

	call nz, $0620                                   ; $773d: $c4 $20 $06
	add $20                                          ; $7740: $c6 $20
	ld b, $c2                                        ; $7742: $06 $c2
	dec de                                           ; $7744: $1b
	inc c                                            ; $7745: $0c
	call nz, $061b                                   ; $7746: $c4 $1b $06

jr_033_7749:
	add $1b                                          ; $7749: $c6 $1b
	ld b, $c2                                        ; $774b: $06 $c2
	jr nz, jr_033_775b                               ; $774d: $20 $0c

	call nz, $0620                                   ; $774f: $c4 $20 $06
	add $20                                          ; $7752: $c6 $20
	ld b, $c2                                        ; $7754: $06 $c2
	dec de                                           ; $7756: $1b

jr_033_7757:
	inc c                                            ; $7757: $0c
	call nz, $061b                                   ; $7758: $c4 $1b $06

jr_033_775b:
	add $1b                                          ; $775b: $c6 $1b
	ld b, $c2                                        ; $775d: $06 $c2
	add hl, de                                       ; $775f: $19
	inc c                                            ; $7760: $0c
	call nz, $0619                                   ; $7761: $c4 $19 $06
	add $19                                          ; $7764: $c6 $19
	ld b, $c2                                        ; $7766: $06 $c2
	dec de                                           ; $7768: $1b
	inc c                                            ; $7769: $0c
	call nz, $061b                                   ; $776a: $c4 $1b $06
	add $1b                                          ; $776d: $c6 $1b
	ld b, $c2                                        ; $776f: $06 $c2
	dec e                                            ; $7771: $1d
	ld b, $c4                                        ; $7772: $06 $c4
	dec e                                            ; $7774: $1d
	inc bc                                           ; $7775: $03
	add $1d                                          ; $7776: $c6 $1d
	inc bc                                           ; $7778: $03
	jp nz, $0a19                                     ; $7779: $c2 $19 $0a

	add $19                                          ; $777c: $c6 $19
	ld [bc], a                                       ; $777e: $02
	jp nz, $0b1b                                     ; $777f: $c2 $1b $0b

	add $1b                                          ; $7782: $c6 $1b
	ld bc, $1dc2                                     ; $7784: $01 $c2 $1d
	dec bc                                           ; $7787: $0b
	add $1d                                          ; $7788: $c6 $1d
	ld bc, $7fc2                                     ; $778a: $01 $c2 $7f
	inc hl                                           ; $778d: $23
	ld a, h                                          ; $778e: $7c
	ld e, $0c                                        ; $778f: $1e $0c
	add $1e                                          ; $7791: $c6 $1e
	ld b, $c2                                        ; $7793: $06 $c2
	ld [hl+], a                                      ; $7795: $22
	dec b                                            ; $7796: $05
	add $22                                          ; $7797: $c6 $22
	ld bc, $20c2                                     ; $7799: $01 $c2 $20
	dec bc                                           ; $779c: $0b
	add $20                                          ; $779d: $c6 $20
	ld bc, $24c2                                     ; $779f: $01 $c2 $24
	dec b                                            ; $77a2: $05
	add $24                                          ; $77a3: $c6 $24
	ld bc, $20c2                                     ; $77a5: $01 $c2 $20
	ld b, $c6                                        ; $77a8: $06 $c6
	jr nz, @+$08                                     ; $77aa: $20 $06

	jp nz, $0625                                     ; $77ac: $c2 $25 $06

	add $25                                          ; $77af: $c6 $25
	ld b, $c2                                        ; $77b1: $06 $c2
	jr nz, jr_033_77ba                               ; $77b3: $20 $05

	add $20                                          ; $77b5: $c6 $20
	ld bc, $19c2                                     ; $77b7: $01 $c2 $19

jr_033_77ba:
	ld a, [bc]                                       ; $77ba: $0a
	add $19                                          ; $77bb: $c6 $19
	ld [bc], a                                       ; $77bd: $02
	jp nz, $0a25                                     ; $77be: $c2 $25 $0a

	add $25                                          ; $77c1: $c6 $25
	ld [bc], a                                       ; $77c3: $02
	jp nz, $0c1b                                     ; $77c4: $c2 $1b $0c

	add $1b                                          ; $77c7: $c6 $1b
	ld b, $c2                                        ; $77c9: $06 $c2
	ld [hl+], a                                      ; $77cb: $22
	dec b                                            ; $77cc: $05
	add $22                                          ; $77cd: $c6 $22
	ld bc, $20c2                                     ; $77cf: $01 $c2 $20
	dec bc                                           ; $77d2: $0b
	add $20                                          ; $77d3: $c6 $20
	ld bc, $20c2                                     ; $77d5: $01 $c2 $20
	dec bc                                           ; $77d8: $0b
	add $20                                          ; $77d9: $c6 $20
	ld bc, $25c2                                     ; $77db: $01 $c2 $25
	rrca                                             ; $77de: $0f
	add $25                                          ; $77df: $c6 $25
	inc bc                                           ; $77e1: $03
	jp nz, $0525                                     ; $77e2: $c2 $25 $05

	add $25                                          ; $77e5: $c6 $25
	ld bc, $20c2                                     ; $77e7: $01 $c2 $20
	ld a, [bc]                                       ; $77ea: $0a
	add $20                                          ; $77eb: $c6 $20
	ld [bc], a                                       ; $77ed: $02
	jp nz, $0a1d                                     ; $77ee: $c2 $1d $0a

	add $1d                                          ; $77f1: $c6 $1d
	ld [bc], a                                       ; $77f3: $02
	jp nz, $0d1e                                     ; $77f4: $c2 $1e $0d

	add $1e                                          ; $77f7: $c6 $1e
	dec b                                            ; $77f9: $05
	jp nz, $0522                                     ; $77fa: $c2 $22 $05

	add $22                                          ; $77fd: $c6 $22
	ld bc, $20c2                                     ; $77ff: $01 $c2 $20
	ld a, [bc]                                       ; $7802: $0a
	add $20                                          ; $7803: $c6 $20
	ld [bc], a                                       ; $7805: $02
	jp nz, $0524                                     ; $7806: $c2 $24 $05

	add $24                                          ; $7809: $c6 $24
	ld bc, $20c2                                     ; $780b: $01 $c2 $20
	ld b, $c6                                        ; $780e: $06 $c6
	jr nz, @+$08                                     ; $7810: $20 $06

	jp nz, $0625                                     ; $7812: $c2 $25 $06

	add $25                                          ; $7815: $c6 $25
	ld b, $c2                                        ; $7817: $06 $c2
	jr nz, jr_033_7820                               ; $7819: $20 $05

	add $20                                          ; $781b: $c6 $20
	ld bc, $19c2                                     ; $781d: $01 $c2 $19

jr_033_7820:
	ld a, [bc]                                       ; $7820: $0a
	add $19                                          ; $7821: $c6 $19
	ld [bc], a                                       ; $7823: $02
	jp nz, $0a1d                                     ; $7824: $c2 $1d $0a

	add $1d                                          ; $7827: $c6 $1d
	ld [bc], a                                       ; $7829: $02
	jp nz, $141b                                     ; $782a: $c2 $1b $14

	add $1b                                          ; $782d: $c6 $1b
	inc b                                            ; $782f: $04
	jp nz, $1420                                     ; $7830: $c2 $20 $14

	add $20                                          ; $7833: $c6 $20
	inc b                                            ; $7835: $04
	nop                                              ; $7836: $00
	ld b, $70                                        ; $7837: $06 $70
	jp nz, $0a19                                     ; $7839: $c2 $19 $0a

	add $19                                          ; $783c: $c6 $19
	ld [bc], a                                       ; $783e: $02
	jp nz, $0519                                     ; $783f: $c2 $19 $05

	add $19                                          ; $7842: $c6 $19
	ld bc, $19c2                                     ; $7844: $01 $c2 $19
	ld b, $c6                                        ; $7847: $06 $c6
	add hl, de                                       ; $7849: $19
	ld b, $00                                        ; $784a: $06 $00
	inc c                                            ; $784c: $0c
	cp $ff                                           ; $784d: $fe $ff
	ret nc                                           ; $784f: $d0

	ld b, l                                          ; $7850: $45
	cp $fb                                           ; $7851: $fe $fb
	ld c, $0c                                        ; $7853: $0e $0c
	ld [de], a                                       ; $7855: $12
	inc c                                            ; $7856: $0c
	ei                                               ; $7857: $fb
	inc c                                            ; $7858: $0c
	ld c, $0c                                        ; $7859: $0e $0c
	ld [de], a                                       ; $785b: $12
	inc c                                            ; $785c: $0c
	ld c, $0c                                        ; $785d: $0e $0c
	ld [de], a                                       ; $785f: $12
	ld b, $0e                                        ; $7860: $06 $0e
	inc bc                                           ; $7862: $03
	ld c, $03                                        ; $7863: $0e $03
	cp [hl]                                          ; $7865: $be

jr_033_7866:
	ld b, $0e                                        ; $7866: $06 $0e
	ld c, $00                                        ; $7868: $0e $00
	ld c, $00                                        ; $786a: $0e $00
	ld c, $be                                        ; $786c: $0e $be
	ld c, $0c                                        ; $786e: $0e $0c
	ei                                               ; $7870: $fb
	cp [hl]                                          ; $7871: $be
	inc c                                            ; $7872: $0c
	ld [de], a                                       ; $7873: $12
	ld [de], a                                       ; $7874: $12
	dec c                                            ; $7875: $0d
	ld [de], a                                       ; $7876: $12
	ld [de], a                                       ; $7877: $12
	ld [de], a                                       ; $7878: $12
	dec c                                            ; $7879: $0d
	rla                                              ; $787a: $17
	cp [hl]                                          ; $787b: $be
	ei                                               ; $787c: $fb
	inc bc                                           ; $787d: $03
	ld [de], a                                       ; $787e: $12
	inc c                                            ; $787f: $0c
	ld [de], a                                       ; $7880: $12
	inc c                                            ; $7881: $0c
	dec c                                            ; $7882: $0d
	inc c                                            ; $7883: $0c
	cp [hl]                                          ; $7884: $be
	ld b, $12                                        ; $7885: $06 $12
	dec c                                            ; $7887: $0d
	ld [de], a                                       ; $7888: $12
	dec c                                            ; $7889: $0d
	ld [de], a                                       ; $788a: $12
	ld [de], a                                       ; $788b: $12
	ld [de], a                                       ; $788c: $12
	rla                                              ; $788d: $17
	dec c                                            ; $788e: $0d
	ld [de], a                                       ; $788f: $12
	cp [hl]                                          ; $7890: $be
	jr @+$0e                                         ; $7891: $18 $0c

	cp [hl]                                          ; $7893: $be
	ld b, $13                                        ; $7894: $06 $13
	ld [de], a                                       ; $7896: $12
	dec c                                            ; $7897: $0d
	ld [de], a                                       ; $7898: $12
	inc c                                            ; $7899: $0c
	ld [de], a                                       ; $789a: $12
	cp [hl]                                          ; $789b: $be
	ei                                               ; $789c: $fb
	cp [hl]                                          ; $789d: $be
	ld b, $0d                                        ; $789e: $06 $0d
	ld [de], a                                       ; $78a0: $12
	inc c                                            ; $78a1: $0c
	ld [de], a                                       ; $78a2: $12
	cp [hl]                                          ; $78a3: $be
	ei                                               ; $78a4: $fb
	ld a, [bc]                                       ; $78a5: $0a
	jr jr_033_78ba                                   ; $78a6: $18 $12

	ld [de], a                                       ; $78a8: $12
	ld b, $0d                                        ; $78a9: $06 $0d
	inc c                                            ; $78ab: $0c
	ld [de], a                                       ; $78ac: $12
	ld b, $12                                        ; $78ad: $06 $12
	ld b, $12                                        ; $78af: $06 $12
	ld b, $0c                                        ; $78b1: $06 $0c

jr_033_78b3:
	inc c                                            ; $78b3: $0c
	dec c                                            ; $78b4: $0d
	ld b, $0d                                        ; $78b5: $06 $0d
	ld b, $00                                        ; $78b7: $06 $00
	ld [de], a                                       ; $78b9: $12

jr_033_78ba:
	cp $ff                                           ; $78ba: $fe $ff
	or h                                             ; $78bc: $b4
	jp nc, $02a1                                     ; $78bd: $d2 $a1 $02

	ld h, [hl]                                       ; $78c0: $66
	nop                                              ; $78c1: $00

jr_033_78c2:
	jr nc, jr_033_78c2                               ; $78c2: $30 $fe

	or c                                             ; $78c4: $b1
	and c                                            ; $78c5: $a1
	jr nc, @+$07                                     ; $78c6: $30 $05

	ld de, $cd30                                     ; $78c8: $11 $30 $cd

jr_033_78cb:
	ld [de], a                                       ; $78cb: $12
	jr nc, jr_033_78e2                               ; $78cc: $30 $14

	jr nc, jr_033_7866                               ; $78ce: $30 $96

	inc h                                            ; $78d0: $24
	dec b                                            ; $78d1: $05
	ld d, $24                                        ; $78d2: $16 $24
	sub [hl]                                         ; $78d4: $96
	inc c                                            ; $78d5: $0c
	dec b                                            ; $78d6: $05
	jr jr_033_78e5                                   ; $78d7: $18 $0c

	sub [hl]                                         ; $78d9: $96
	jr nc, jr_033_78e1                               ; $78da: $30 $05

	add hl, de                                       ; $78dc: $19
	jr nc, @+$1a                                     ; $78dd: $30 $18

	jr nc, jr_033_795e                               ; $78df: $30 $7d

jr_033_78e1:
	dec b                                            ; $78e1: $05

jr_033_78e2:
	ld d, $30                                        ; $78e2: $16 $30
	ld a, l                                          ; $78e4: $7d

jr_033_78e5:
	nop                                              ; $78e5: $00
	sub [hl]                                         ; $78e6: $96
	inc h                                            ; $78e7: $24
	dec b                                            ; $78e8: $05

jr_033_78e9:
	ld d, $24                                        ; $78e9: $16 $24
	sub [hl]                                         ; $78eb: $96
	inc c                                            ; $78ec: $0c
	dec b                                            ; $78ed: $05
	jr jr_033_78fc                                   ; $78ee: $18 $0c

	sub [hl]                                         ; $78f0: $96
	jr nc, jr_033_78f8                               ; $78f1: $30 $05

	cp [hl]                                          ; $78f3: $be
	jr nc, jr_033_790f                               ; $78f4: $30 $19

	ld d, $14                                        ; $78f6: $16 $14

jr_033_78f8:
	add hl, de                                       ; $78f8: $19
	cp [hl]                                          ; $78f9: $be
	sub [hl]                                         ; $78fa: $96
	ld c, b                                          ; $78fb: $48

jr_033_78fc:
	rlca                                             ; $78fc: $07
	ld d, $48                                        ; $78fd: $16 $48
	sub [hl]                                         ; $78ff: $96
	inc c                                            ; $7900: $0c
	dec b                                            ; $7901: $05
	jr @+$0e                                         ; $7902: $18 $0c

	ld d, $0c                                        ; $7904: $16 $0c
	sub [hl]                                         ; $7906: $96
	ld h, b                                          ; $7907: $60
	dec b                                            ; $7908: $05
	jr jr_033_796b                                   ; $7909: $18 $60

	or c                                             ; $790b: $b1
	and c                                            ; $790c: $a1
	inc h                                            ; $790d: $24

jr_033_790e:
	dec b                                            ; $790e: $05

jr_033_790f:
	ld de, $9624                                     ; $790f: $11 $24 $96
	inc c                                            ; $7912: $0c

jr_033_7913:
	dec b                                            ; $7913: $05

jr_033_7914:
	ld de, $b10c                                     ; $7914: $11 $0c $b1
	pop de                                           ; $7917: $d1
	jr nc, jr_033_791f                               ; $7918: $30 $05

	ld [de], a                                       ; $791a: $12
	jr nc, jr_033_78b3                               ; $791b: $30 $96

	jr nc, jr_033_7924                               ; $791d: $30 $05

jr_033_791f:
	inc d                                            ; $791f: $14
	jr nc, @-$68                                     ; $7920: $30 $96

	inc h                                            ; $7922: $24
	dec b                                            ; $7923: $05

jr_033_7924:
	jr jr_033_794a                                   ; $7924: $18 $24

	sub [hl]                                         ; $7926: $96
	inc c                                            ; $7927: $0c
	dec b                                            ; $7928: $05
	jr jr_033_7937                                   ; $7929: $18 $0c

	sub [hl]                                         ; $792b: $96
	jr nc, jr_033_7933                               ; $792c: $30 $05

	ld d, $30                                        ; $792e: $16 $30
	jr @+$32                                         ; $7930: $18 $30

	add hl, de                                       ; $7932: $19

jr_033_7933:
	jr nc, jr_033_78cb                               ; $7933: $30 $96

	inc h                                            ; $7935: $24
	dec b                                            ; $7936: $05

jr_033_7937:
	ld d, $24                                        ; $7937: $16 $24
	sub [hl]                                         ; $7939: $96
	inc c                                            ; $793a: $0c
	dec b                                            ; $793b: $05
	jr jr_033_794a                                   ; $793c: $18 $0c

jr_033_793e:
	sub [hl]                                         ; $793e: $96
	jr nc, @+$07                                     ; $793f: $30 $05

	add hl, de                                       ; $7941: $19
	jr nc, jr_033_790e                               ; $7942: $30 $ca

	ld [de], a                                       ; $7944: $12
	jr nc, jr_033_7914                               ; $7945: $30 $cd

	inc d                                            ; $7947: $14
	jr nc, jr_033_7914                               ; $7948: $30 $ca

jr_033_794a:
	jr @+$32                                         ; $794a: $18 $30

	or c                                             ; $794c: $b1
	pop de                                           ; $794d: $d1
	jr nc, jr_033_7955                               ; $794e: $30 $05

	inc d                                            ; $7950: $14
	jr nc, jr_033_78e9                               ; $7951: $30 $96

	db $10                                           ; $7953: $10
	dec b                                            ; $7954: $05

jr_033_7955:
	inc d                                            ; $7955: $14
	db $10                                           ; $7956: $10
	inc d                                            ; $7957: $14
	db $10                                           ; $7958: $10
	inc d                                            ; $7959: $14
	db $10                                           ; $795a: $10
	sub [hl]                                         ; $795b: $96
	jr nc, jr_033_7963                               ; $795c: $30 $05

jr_033_795e:
	inc d                                            ; $795e: $14

jr_033_795f:
	jr nc, @+$0f                                     ; $795f: $30 $0d

	ld l, $00                                        ; $7961: $2e $00

jr_033_7963:
	ld [bc], a                                       ; $7963: $02
	cp $ff                                           ; $7964: $fe $ff
	or [hl]                                          ; $7966: $b6
	jp nc, $03e1                                     ; $7967: $d2 $e1 $03

	inc h                                            ; $796a: $24

jr_033_796b:
	ld [bc], a                                       ; $796b: $02
	ld h, [hl]                                       ; $796c: $66

jr_033_796d:
	jr nz, jr_033_7993                               ; $796d: $20 $24

	jr nz, jr_033_797d                               ; $796f: $20 $0c

	cp $cb                                           ; $7971: $fe $cb
	ld a, [hl]                                       ; $7973: $7e
	ld e, $48                                        ; $7974: $1e $48
	and b                                            ; $7976: $a0
	sub [hl]                                         ; $7977: $96
	jr nc, jr_033_797f                               ; $7978: $30 $05

	add hl, hl                                       ; $797a: $29
	jr nc, jr_033_7913                               ; $797b: $30 $96

jr_033_797d:
	inc h                                            ; $797d: $24
	inc b                                            ; $797e: $04

jr_033_797f:
	add hl, hl                                       ; $797f: $29
	inc h                                            ; $7980: $24
	sub [hl]                                         ; $7981: $96

jr_033_7982:
	inc c                                            ; $7982: $0c
	ld [bc], a                                       ; $7983: $02
	add hl, hl                                       ; $7984: $29
	inc c                                            ; $7985: $0c
	or c                                             ; $7986: $b1
	add c                                            ; $7987: $81
	jr nc, jr_033_798f                               ; $7988: $30 $05

	inc l                                            ; $798a: $2c
	jr nc, jr_033_793e                               ; $798b: $30 $b1

	pop de                                           ; $798d: $d1
	inc h                                            ; $798e: $24

jr_033_798f:
	inc bc                                           ; $798f: $03

jr_033_7990:
	jr nz, jr_033_79b6                               ; $7990: $20 $24

	sub [hl]                                         ; $7992: $96

jr_033_7993:
	inc c                                            ; $7993: $0c
	ld [bc], a                                       ; $7994: $02
	jr nz, jr_033_79a3                               ; $7995: $20 $0c

	sub [hl]                                         ; $7997: $96
	sub b                                            ; $7998: $90
	rlca                                             ; $7999: $07
	add hl, hl                                       ; $799a: $29
	sub b                                            ; $799b: $90

jr_033_799c:
	or c                                             ; $799c: $b1
	and c                                            ; $799d: $a1
	inc h                                            ; $799e: $24
	dec b                                            ; $799f: $05
	daa                                              ; $79a0: $27
	inc h                                            ; $79a1: $24
	sub [hl]                                         ; $79a2: $96

jr_033_79a3:
	inc c                                            ; $79a3: $0c
	inc b                                            ; $79a4: $04
	add hl, hl                                       ; $79a5: $29
	inc c                                            ; $79a6: $0c
	or c                                             ; $79a7: $b1
	pop bc                                           ; $79a8: $c1
	jr nc, jr_033_79b1                               ; $79a9: $30 $06

	ld a, [hl+]                                      ; $79ab: $2a
	jr nc, jr_033_795f                               ; $79ac: $30 $b1

	ld [hl], c                                       ; $79ae: $71
	jr nc, jr_033_79b6                               ; $79af: $30 $05

jr_033_79b1:
	dec h                                            ; $79b1: $25
	jr nc, jr_033_794a                               ; $79b2: $30 $96

	jr nc, @+$07                                     ; $79b4: $30 $05

jr_033_79b6:
	dec h                                            ; $79b6: $25
	jr nc, jr_033_7982                               ; $79b7: $30 $c9

	add hl, hl                                       ; $79b9: $29
	jr nc, jr_033_796d                               ; $79ba: $30 $b1

	sub c                                            ; $79bc: $91
	sub b                                            ; $79bd: $90
	rlca                                             ; $79be: $07

jr_033_79bf:
	daa                                              ; $79bf: $27
	sub b                                            ; $79c0: $90
	or c                                             ; $79c1: $b1
	pop de                                           ; $79c2: $d1
	inc h                                            ; $79c3: $24
	inc bc                                           ; $79c4: $03
	jr nz, jr_033_79eb                               ; $79c5: $20 $24

	sub [hl]                                         ; $79c7: $96
	inc c                                            ; $79c8: $0c
	inc b                                            ; $79c9: $04
	jr nz, jr_033_79d8                               ; $79ca: $20 $0c

	sub [hl]                                         ; $79cc: $96
	jr nc, jr_033_79d4                               ; $79cd: $30 $05

	add hl, hl                                       ; $79cf: $29
	jr nc, @-$68                                     ; $79d0: $30 $96

	inc h                                            ; $79d2: $24
	inc b                                            ; $79d3: $04

jr_033_79d4:
	add hl, hl                                       ; $79d4: $29

jr_033_79d5:
	inc h                                            ; $79d5: $24
	sub [hl]                                         ; $79d6: $96
	inc c                                            ; $79d7: $0c

jr_033_79d8:
	ld [bc], a                                       ; $79d8: $02
	add hl, hl                                       ; $79d9: $29
	inc c                                            ; $79da: $0c
	ret z                                            ; $79db: $c8

	inc l                                            ; $79dc: $2c
	jr nc, jr_033_7990                               ; $79dd: $30 $b1

	pop de                                           ; $79df: $d1
	inc h                                            ; $79e0: $24
	inc b                                            ; $79e1: $04
	jr nz, jr_033_7a08                               ; $79e2: $20 $24

	sub [hl]                                         ; $79e4: $96
	inc c                                            ; $79e5: $0c
	inc b                                            ; $79e6: $04
	jr nz, jr_033_79f5                               ; $79e7: $20 $0c

	sub [hl]                                         ; $79e9: $96
	sub b                                            ; $79ea: $90

jr_033_79eb:
	rlca                                             ; $79eb: $07
	add hl, hl                                       ; $79ec: $29
	sub b                                            ; $79ed: $90
	or c                                             ; $79ee: $b1
	and c                                            ; $79ef: $a1
	inc h                                            ; $79f0: $24
	dec b                                            ; $79f1: $05
	daa                                              ; $79f2: $27
	inc h                                            ; $79f3: $24
	sub [hl]                                         ; $79f4: $96

jr_033_79f5:
	inc c                                            ; $79f5: $0c
	inc b                                            ; $79f6: $04
	add hl, hl                                       ; $79f7: $29
	inc c                                            ; $79f8: $0c
	or c                                             ; $79f9: $b1
	pop bc                                           ; $79fa: $c1
	jr nc, jr_033_7a03                               ; $79fb: $30 $06

	ld a, [hl+]                                      ; $79fd: $2a
	jr nc, jr_033_79b1                               ; $79fe: $30 $b1

	ld [hl], c                                       ; $7a00: $71
	jr nc, jr_033_7a09                               ; $7a01: $30 $06

jr_033_7a03:
	dec h                                            ; $7a03: $25
	jr nc, jr_033_799c                               ; $7a04: $30 $96

	jr nc, jr_033_7a0c                               ; $7a06: $30 $04

jr_033_7a08:
	dec h                                            ; $7a08: $25

jr_033_7a09:
	jr nc, jr_033_79d5                               ; $7a09: $30 $ca

	daa                                              ; $7a0b: $27

jr_033_7a0c:
	jr nc, jr_033_79bf                               ; $7a0c: $30 $b1

	ld [hl], c                                       ; $7a0e: $71
	sub b                                            ; $7a0f: $90
	rlca                                             ; $7a10: $07
	dec h                                            ; $7a11: $25
	sub b                                            ; $7a12: $90
	or c                                             ; $7a13: $b1
	pop de                                           ; $7a14: $d1
	inc h                                            ; $7a15: $24
	inc b                                            ; $7a16: $04
	jr nz, jr_033_7a3d                               ; $7a17: $20 $24

	sub [hl]                                         ; $7a19: $96
	inc c                                            ; $7a1a: $0c
	inc b                                            ; $7a1b: $04
	jr nz, @+$0e                                     ; $7a1c: $20 $0c

	cp $ff                                           ; $7a1e: $fe $ff
	or h                                             ; $7a20: $b4
	jp nc, $1821                                     ; $7a21: $d2 $21 $18

	ld h, [hl]                                       ; $7a24: $66
	nop                                              ; $7a25: $00

jr_033_7a26:
	jr nc, jr_033_7a26                               ; $7a26: $30 $fe

	dec c                                            ; $7a28: $0d
	ld l, $00                                        ; $7a29: $2e $00
	ld [bc], a                                       ; $7a2b: $02
	dec c                                            ; $7a2c: $0d
	ld c, $00                                        ; $7a2d: $0e $00
	ld [bc], a                                       ; $7a2f: $02
	dec c                                            ; $7a30: $0d
	ld c, $00                                        ; $7a31: $0e $00
	ld [bc], a                                       ; $7a33: $02
	dec c                                            ; $7a34: $0d
	ld c, $00                                        ; $7a35: $0e $00
	ld [bc], a                                       ; $7a37: $02
	inc c                                            ; $7a38: $0c
	inc c                                            ; $7a39: $0c
	ld a, a                                          ; $7a3a: $7f
	inc e                                            ; $7a3b: $1c
	nop                                              ; $7a3c: $00

jr_033_7a3d:
	inc h                                            ; $7a3d: $24
	ld [$000c], sp                                   ; $7a3e: $08 $0c $00
	jr jr_033_7a4b                                   ; $7a41: $18 $08

	ld a, [bc]                                       ; $7a43: $0a
	nop                                              ; $7a44: $00
	ld [bc], a                                       ; $7a45: $02
	ld a, a                                          ; $7a46: $7f
	jr jr_033_7a53                                   ; $7a47: $18 $0a

	ld l, $00                                        ; $7a49: $2e $00

jr_033_7a4b:
	ld [bc], a                                       ; $7a4b: $02
	ld a, [bc]                                       ; $7a4c: $0a
	ld c, $00                                        ; $7a4d: $0e $00
	ld [bc], a                                       ; $7a4f: $02
	ld a, [bc]                                       ; $7a50: $0a
	ld c, $00                                        ; $7a51: $0e $00

jr_033_7a53:
	ld [bc], a                                       ; $7a53: $02
	ld a, [bc]                                       ; $7a54: $0a
	ld c, $7f                                        ; $7a55: $0e $7f
	inc e                                            ; $7a57: $1c
	nop                                              ; $7a58: $00
	ld [bc], a                                       ; $7a59: $02
	ld [$7f0c], sp                                   ; $7a5a: $08 $0c $7f
	jr jr_033_7a5f                                   ; $7a5d: $18 $00

jr_033_7a5f:
	inc h                                            ; $7a5f: $24
	dec b                                            ; $7a60: $05
	inc c                                            ; $7a61: $0c
	nop                                              ; $7a62: $00
	jr jr_033_7a6a                                   ; $7a63: $18 $05

	ld a, [bc]                                       ; $7a65: $0a
	nop                                              ; $7a66: $00
	ld [bc], a                                       ; $7a67: $02
	ld b, $2e                                        ; $7a68: $06 $2e

jr_033_7a6a:
	nop                                              ; $7a6a: $00
	ld [bc], a                                       ; $7a6b: $02
	ld b, $0e                                        ; $7a6c: $06 $0e
	nop                                              ; $7a6e: $00
	ld [bc], a                                       ; $7a6f: $02
	ld b, $0e                                        ; $7a70: $06 $0e
	nop                                              ; $7a72: $00
	ld [bc], a                                       ; $7a73: $02
	ld b, $0e                                        ; $7a74: $06 $0e
	nop                                              ; $7a76: $00
	ld [bc], a                                       ; $7a77: $02
	dec b                                            ; $7a78: $05
	inc c                                            ; $7a79: $0c
	nop                                              ; $7a7a: $00
	inc h                                            ; $7a7b: $24
	dec c                                            ; $7a7c: $0d
	inc c                                            ; $7a7d: $0c
	nop                                              ; $7a7e: $00
	jr @+$0f                                         ; $7a7f: $18 $0d

	ld a, [bc]                                       ; $7a81: $0a
	nop                                              ; $7a82: $00
	ld [bc], a                                       ; $7a83: $02
	rrca                                             ; $7a84: $0f
	ld l, $00                                        ; $7a85: $2e $00
	ld [bc], a                                       ; $7a87: $02
	rrca                                             ; $7a88: $0f
	ld c, $00                                        ; $7a89: $0e $00
	ld [bc], a                                       ; $7a8b: $02
	rrca                                             ; $7a8c: $0f
	ld c, $00                                        ; $7a8d: $0e $00
	ld [bc], a                                       ; $7a8f: $02
	rrca                                             ; $7a90: $0f
	ld c, $00                                        ; $7a91: $0e $00
	ld [bc], a                                       ; $7a93: $02
	ld [$002e], sp                                   ; $7a94: $08 $2e $00
	ld [bc], a                                       ; $7a97: $02
	ld [$000e], sp                                   ; $7a98: $08 $0e $00
	ld [bc], a                                       ; $7a9b: $02
	ld a, [bc]                                       ; $7a9c: $0a
	ld c, $00                                        ; $7a9d: $0e $00
	ld [bc], a                                       ; $7a9f: $02
	inc c                                            ; $7aa0: $0c
	ld c, $00                                        ; $7aa1: $0e $00
	ld [bc], a                                       ; $7aa3: $02
	dec c                                            ; $7aa4: $0d
	ld l, $00                                        ; $7aa5: $2e $00
	ld [bc], a                                       ; $7aa7: $02
	dec c                                            ; $7aa8: $0d
	ld c, $00                                        ; $7aa9: $0e $00
	ld [bc], a                                       ; $7aab: $02
	dec c                                            ; $7aac: $0d
	ld c, $00                                        ; $7aad: $0e $00
	ld [bc], a                                       ; $7aaf: $02
	dec c                                            ; $7ab0: $0d
	ld c, $00                                        ; $7ab1: $0e $00
	ld [bc], a                                       ; $7ab3: $02
	inc c                                            ; $7ab4: $0c
	inc c                                            ; $7ab5: $0c
	nop                                              ; $7ab6: $00
	inc h                                            ; $7ab7: $24
	rrca                                             ; $7ab8: $0f
	inc c                                            ; $7ab9: $0c
	nop                                              ; $7aba: $00
	jr @+$11                                         ; $7abb: $18 $0f

	ld a, [bc]                                       ; $7abd: $0a
	nop                                              ; $7abe: $00
	ld [bc], a                                       ; $7abf: $02
	ld a, a                                          ; $7ac0: $7f
	inc e                                            ; $7ac1: $1c
	ld de, $002e                                     ; $7ac2: $11 $2e $00
	ld [bc], a                                       ; $7ac5: $02
	ld de, $000e                                     ; $7ac6: $11 $0e $00
	ld [bc], a                                       ; $7ac9: $02
	ld de, $000e                                     ; $7aca: $11 $0e $00
	ld [bc], a                                       ; $7acd: $02
	ld de, $000e                                     ; $7ace: $11 $0e $00
	ld [bc], a                                       ; $7ad1: $02
	inc d                                            ; $7ad2: $14
	inc c                                            ; $7ad3: $0c
	nop                                              ; $7ad4: $00
	inc h                                            ; $7ad5: $24
	ld de, $000c                                     ; $7ad6: $11 $0c $00
	jr jr_033_7aec                                   ; $7ad9: $18 $11

	ld a, [bc]                                       ; $7adb: $0a
	nop                                              ; $7adc: $00
	ld [bc], a                                       ; $7add: $02
	ld [de], a                                       ; $7ade: $12
	ld l, $7f                                        ; $7adf: $2e $7f
	jr jr_033_7ae3                                   ; $7ae1: $18 $00

jr_033_7ae3:
	ld [bc], a                                       ; $7ae3: $02
	dec c                                            ; $7ae4: $0d
	ld c, $00                                        ; $7ae5: $0e $00
	ld [bc], a                                       ; $7ae7: $02
	dec c                                            ; $7ae8: $0d
	ld c, $00                                        ; $7ae9: $0e $00
	ld [bc], a                                       ; $7aeb: $02

jr_033_7aec:
	dec c                                            ; $7aec: $0d
	ld c, $7f                                        ; $7aed: $0e $7f
	inc e                                            ; $7aef: $1c
	nop                                              ; $7af0: $00
	ld [bc], a                                       ; $7af1: $02
	ld [$7f0c], sp                                   ; $7af2: $08 $0c $7f
	jr jr_033_7af7                                   ; $7af5: $18 $00

jr_033_7af7:
	inc h                                            ; $7af7: $24
	ld a, [bc]                                       ; $7af8: $0a
	inc c                                            ; $7af9: $0c
	nop                                              ; $7afa: $00
	jr jr_033_7b09                                   ; $7afb: $18 $0c

	ld a, [bc]                                       ; $7afd: $0a
	nop                                              ; $7afe: $00
	ld [bc], a                                       ; $7aff: $02
	dec c                                            ; $7b00: $0d
	ld l, $00                                        ; $7b01: $2e $00
	ld [bc], a                                       ; $7b03: $02
	dec c                                            ; $7b04: $0d
	ld c, $00                                        ; $7b05: $0e $00
	ld [bc], a                                       ; $7b07: $02
	dec c                                            ; $7b08: $0d

jr_033_7b09:
	ld c, $00                                        ; $7b09: $0e $00
	ld [bc], a                                       ; $7b0b: $02
	dec c                                            ; $7b0c: $0d
	ld c, $00                                        ; $7b0d: $0e $00
	ld [bc], a                                       ; $7b0f: $02
	dec c                                            ; $7b10: $0d
	jr jr_033_7b13                                   ; $7b11: $18 $00

jr_033_7b13:
	jr jr_033_7b94                                   ; $7b13: $18 $7f

	inc e                                            ; $7b15: $1c
	ld [$7f30], sp                                   ; $7b16: $08 $30 $7f

jr_033_7b19:
	jr jr_033_7b19                                   ; $7b19: $18 $fe

	rst $38                                          ; $7b1b: $ff
	ret nc                                           ; $7b1c: $d0

	jp nc, $3000                                     ; $7b1d: $d2 $00 $30

	cp $fb                                           ; $7b20: $fe $fb
	db $fd                                           ; $7b22: $fd
	ld e, e                                          ; $7b23: $5b
	ld a, e                                          ; $7b24: $7b
	ei                                               ; $7b25: $fb
	inc bc                                           ; $7b26: $03
	ld hl, $2118                                     ; $7b27: $21 $18 $21
	inc c                                            ; $7b2a: $0c
	ld hl, $210c                                     ; $7b2b: $21 $0c $21
	jr jr_033_7b51                                   ; $7b2e: $18 $21

	inc c                                            ; $7b30: $0c
	ld hl, $210c                                     ; $7b31: $21 $0c $21
	jr nc, @+$23                                     ; $7b34: $30 $21

	db $10                                           ; $7b36: $10
	ld hl, $2110                                     ; $7b37: $21 $10 $21
	db $10                                           ; $7b3a: $10
	ei                                               ; $7b3b: $fb
	db $fd                                           ; $7b3c: $fd
	ld e, e                                          ; $7b3d: $5b
	ld a, e                                          ; $7b3e: $7b
	ei                                               ; $7b3f: $fb
	inc bc                                           ; $7b40: $03
	ld hl, $2118                                     ; $7b41: $21 $18 $21
	inc c                                            ; $7b44: $0c
	ld hl, $210c                                     ; $7b45: $21 $0c $21
	jr @+$23                                         ; $7b48: $18 $21

	inc c                                            ; $7b4a: $0c
	ld hl, $210c                                     ; $7b4b: $21 $0c $21
	jr jr_033_7b71                                   ; $7b4e: $18 $21

	inc c                                            ; $7b50: $0c

jr_033_7b51:
	ld hl, $210c                                     ; $7b51: $21 $0c $21
	db $10                                           ; $7b54: $10
	ld hl, $2110                                     ; $7b55: $21 $10 $21
	db $10                                           ; $7b58: $10
	cp $ff                                           ; $7b59: $fe $ff
	ld hl, $2130                                     ; $7b5b: $21 $30 $21
	db $10                                           ; $7b5e: $10
	ld hl, $2110                                     ; $7b5f: $21 $10 $21
	db $10                                           ; $7b62: $10
	ld hl, $be30                                     ; $7b63: $21 $30 $be
	inc c                                            ; $7b66: $0c
	inc hl                                           ; $7b67: $23
	ld [hl+], a                                      ; $7b68: $22
	ld hl, $be20                                     ; $7b69: $21 $20 $be
	db $fd                                           ; $7b6c: $fd
	rst $38                                          ; $7b6d: $ff
	rst $38                                          ; $7b6e: $ff
	rst $38                                          ; $7b6f: $ff
	rst $38                                          ; $7b70: $ff

jr_033_7b71:
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

jr_033_7b94:
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

Call_033_7dd3:
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

Jump_033_7e80:
	rst $38                                          ; $7e80: $ff
	rst $38                                          ; $7e81: $ff
	rst $38                                          ; $7e82: $ff
	rst $38                                          ; $7e83: $ff
	rst $38                                          ; $7e84: $ff
	rst $38                                          ; $7e85: $ff
	rst $38                                          ; $7e86: $ff

Call_033_7e87:
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

Jump_033_7ed1:
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

Call_033_7fd1:
Jump_033_7fd1:
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
